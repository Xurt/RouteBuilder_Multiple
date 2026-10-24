using System.Text.RegularExpressions;

namespace RouteBuilder;

/// <summary>
/// A training, vendor or flight-path step from a RestedXP guide, with the quest steps around it in that guide,
/// so it can be put next to the same quest step in a RouteBuilder guide.
/// </summary>
public sealed class RxpService
{
    public string Id = "";                     // what it does, for not placing the same step twice
    public string Guide = "", Faction = "", Tag = "";
    public int Map = -1;                       // the map ID of its .goto, -1 = none
    public int MinLevel = 1, MaxLevel = 99;    // the level range in its guide's name ("12-17 The Barrens")
    public List<string> Lines = new();         // the lines kept, as written in the guide
    public List<(string Key, bool After)> Anchors = new();   // nearest first: quest steps to stand after (or before)
}

public static class RxpServices
{
    static readonly HashSet<string> Service = new() { "train", "trainer", "vendor", "fp" };
    static readonly string[] HordeRaces = { "Orc", "Undead", "Scourge", "Tauren", "Troll", "BloodElf", "Goblin" }, AllianceRaces = { "Human", "Dwarf", "NightElf", "Gnome", "Draenei", "Worgen" };
    static readonly HashSet<string> Classes = new[] { "Warrior", "Paladin", "Hunter", "Rogue", "Priest", "Shaman", "Mage", "Warlock", "Druid", "DeathKnight", "DK", "Monk" }.ToHashSet(StringComparer.OrdinalIgnoreCase);
    static readonly HashSet<string> RaceNames = HordeRaces.Concat(AllianceRaces).Append("Skyborne").Append("Pandaren").ToHashSet(StringComparer.OrdinalIgnoreCase);

    /// <summary>
    /// The RestedXP guide files the game being planned loads: those its Guides folder lists for that game
    /// (GuideList-classic.xml, say, which also takes in files from subfolders), else every .lua file in the folder.
    /// </summary>
    public static List<string> GuideFiles(string dir)
    {
        var g = Games.Current;
        string list = Path.Combine(dir, g.GuideList);
        if (!g.IsForever && File.Exists(list))
        {
            var o = new List<string>();
            foreach (Match m in Regex.Matches(File.ReadAllText(list), "file=\"([^\"]+)\""))
            {
                string rel = m.Groups[1].Value.Replace('\\', '/');
                if (rel.StartsWith("Guides/", StringComparison.OrdinalIgnoreCase)) rel = rel[7..];
                string f = Path.Combine(dir, rel.Replace('/', Path.DirectorySeparatorChar));
                if (File.Exists(f) && !o.Contains(f)) o.Add(f);
            }
            return o;
        }
        return Directory.EnumerateFiles(dir, "*.lua", SearchOption.AllDirectories).OrderBy(f => f, StringComparer.OrdinalIgnoreCase).ToList();
    }

    static readonly string[] GameTags = { "classic", "tbc", "wotlk", "cata", "mop" };
    static readonly Regex NotLeveling = new(@"Dungeon|Profession|Farming|Reputation|Attunement|Dail(y|ies)|Preparation|Rune|Endgame|Boost|Survival|Talent|Gold|Mining|Herbalism|Skinning|Cooking|Fishing|PvP|Battleground|Molten|Tol Barad|Argent", RegexOptions.IgnoreCase);

    /// <summary>
    /// Why a RestedXP guide is not one to follow when planning this game, from the lines above its first step, or null
    /// when it is. RestedXP's Guides folder serves every game at once: a guide says which games it is for (#classic, #tbc,
    /// #mop), whether it is for the 2x experience rate (#xprate >1.99), for Season of Discovery (#season 2) or for
    /// hardcore only, and its group says whether it levels at all (dungeon, profession and reputation guides do not).
    /// Forever's guide folder is taken as it is.
    /// </summary>
    public static string? NotFor(string header, string? groupArg = null)
    {
        var g = Games.Current;
        if (g.IsForever) return null;
        var lines = header.Split('\n').Select(l => Regex.Replace(l, "--.*$", "").Trim()).Where(l => l.StartsWith('#')).ToList();
        var tags = lines.Select(l => Regex.Match(l, @"^#(\w+)\s*$")).Where(x => x.Success).Select(x => x.Groups[1].Value.ToLowerInvariant()).ToList();
        string mine = g.HeaderTag.TrimStart('#');
        if (tags.Any(GameTags.Contains) && !tags.Contains(mine)) return "made for another game";
        if (lines.Any(l => Regex.IsMatch(l, @"^#xprate\s*>")) && !lines.Any(l => Regex.IsMatch(l, @"^#xprate\s*<"))) return "for a boosted experience rate";
        var season = lines.Select(l => Regex.Match(l, @"^#season\s+([\d,\s]+)$")).FirstOrDefault(x => x.Success);
        if (season != null && !season.Groups[1].Value.Split(',', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries).Contains("0")) return "for Season of Discovery";
        if (tags.Contains("hardcore") && !tags.Contains("softcore")) return "a hardcore-only route";
        string group = GroupOf(header, groupArg);
        if (NotLeveling.IsMatch(group)) return "not a leveling guide";
        if (g.OwnGroups != null && !Regex.IsMatch(group, g.OwnGroups, RegexOptions.IgnoreCase)) return "an older game's route";
        string name = lines.Select(l => Regex.Match(l, @"^#name\s+(.*)$")).FirstOrDefault(x => x.Success)?.Groups[1].Value ?? "";
        if (NotLeveling.IsMatch(name)) return "not a leveling guide";
        return null;
    }

    /// <summary>One RegisterGuide block: the file it is in, the group given before the text (if any) and its text.</summary>
    public sealed record Block(string File, string? GroupArg, string Body);

    static readonly Regex BlockRx = new(@"RegisterGuide\(\s*(?:""([^""]*)""\s*,\s*)?\[\[(.*?)\]\]", RegexOptions.Singleline | RegexOptions.Compiled);
    static readonly Regex IncludeRx = new(@"^#include\s+(.+?)(?:@([^-\s]+)-(\S+))?\s*$", RegexOptions.Compiled);

    /// <summary>
    /// Every guide in the files, with "#include Group\Name" steps replaced by the steps of the guide they name (from the
    /// step with "#label a" to the one with "#label b" for "Group\Name@a-b"). The Mists guides are mostly such shells around
    /// shared bodies kept in an internal group (RXP-Pandaria, RXPGuides); the bodies, which hold both factions' steps,
    /// are passed over as guides of their own by NotFor, so their steps are read once, in the shell's order.
    /// </summary>
    public static List<Block> Blocks(IEnumerable<string> files, IEnumerable<string>? alsoForIncludes = null)
    {
        static List<Block> Load(IEnumerable<string> fs)
        {
            var r = new List<Block>();
            foreach (var f in fs)
            {
                string text;
                try { text = File.ReadAllText(f); } catch (IOException) { continue; }
                foreach (Match m in BlockRx.Matches(text)) r.Add(new Block(f, m.Groups[1].Success ? m.Groups[1].Value : null, m.Groups[2].Value));
            }
            return r;
        }
        var fileList = files.Select(Path.GetFullPath).Distinct().ToList();
        var all = Load(fileList);
        var byName = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
        // guides that are only included, from other files (a guide file named on its own whose shells point elsewhere)
        var pool = alsoForIncludes == null ? all : all.Concat(Load(alsoForIncludes.Select(Path.GetFullPath).Except(fileList))).ToList();
        foreach (var b in pool)
        {
            string h = HeaderOf(b.Body);
            string? name = h.Split('\n').Select(l => Regex.Match(Regex.Replace(l, "--.*$", "").Trim(), @"^#name\s+(.*)$")).FirstOrDefault(x => x.Success)?.Groups[1].Value.Trim();
            if (name == null) continue;
            foreach (var grp in new[] { GroupOf(h, b.GroupArg), b.GroupArg }.Concat(AllGroups(h)).Where(x => !string.IsNullOrEmpty(x)).Distinct())
                byName.TryAdd(grp + "\\" + name, b.Body);
        }
        return all.Select(b => b.Body.Contains("#include") ? b with { Body = Expand(b.Body, byName, 0) } : b).ToList();
    }

    static IEnumerable<string> AllGroups(string header) =>
        header.Split('\n').Select(l => Regex.Match(Regex.Replace(l, "--.*$", "").Trim(), @"^#group\s+(.*?)(?:\s*<<.*)?$")).Where(m => m.Success).Select(m => m.Groups[1].Value.Trim());

    static string Expand(string body, Dictionary<string, string> byName, int depth)
    {
        var o = new List<string>();
        foreach (var raw in body.Split('\n'))
        {
            string l = Regex.Replace(raw, "--.*$", "").Trim();
            var m = IncludeRx.Match(l);
            int stepAt = o.FindLastIndex(x => Regex.IsMatch(x, @"^\s*step\b"));
            if (!m.Success || depth > 5 || stepAt < 0 || !byName.TryGetValue(m.Groups[1].Value.Trim(), out var inner)) { o.Add(raw); continue; }
            string outer = o[stepAt].Contains("<<") ? o[stepAt][(o[stepAt].IndexOf("<<", StringComparison.Ordinal) + 2)..].Trim() : "";
            o.RemoveRange(stepAt, o.Count - stepAt);
            var steps = Steps(Expand(inner, byName, depth + 1));
            if (m.Groups[2].Success)
            {
                int a = steps.FindIndex(st => HasLabel(st, m.Groups[2].Value)), b = steps.FindIndex(st => HasLabel(st, m.Groups[3].Value));
                if (a >= 0) steps = steps.Skip(a).Take((b >= a ? b : steps.Count - 1) - a + 1).ToList();
            }
            foreach (var st in steps)
            {
                if (outer.Length > 0)
                {
                    string head = st[0], tag = head.Contains("<<") ? head[(head.IndexOf("<<", StringComparison.Ordinal) + 2)..].Trim() : "";
                    st[0] = "step << " + AndTags(outer, tag);
                }
                o.AddRange(st);
            }
        }
        return string.Join("\n", o);
    }

    static bool HasLabel(List<string> step, string label) => step.Any(x => Regex.IsMatch(x, @"^\s*#label\s+" + Regex.Escape(label) + @"\s*$"));

    /// <summary>A guide's text cut into steps (each from its "step" line), without the lines above the first.</summary>
    static List<List<string>> Steps(string body)
    {
        var r = new List<List<string>>();
        foreach (var raw in body.Split('\n'))
        {
            if (Regex.IsMatch(raw, @"^\s*step\b")) r.Add(new List<string> { raw.Trim() });
            else if (r.Count > 0) r[^1].Add(raw);
        }
        return r;
    }

    // "a" and "b" both, faction words kept: "Alliance" and "Warrior/Rogue" is "Alliance Warrior/Alliance Rogue"
    static string AndTags(string a, string b)
    {
        var A = a.Split('/', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries);
        var B = b.Split('/', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries);
        if (B.Length == 0) return a; if (A.Length == 0) return b;
        return string.Join("/", A.SelectMany(x => B.Select(y => x + " " + y)));
    }

    /// <summary>A guide's group for this game: a "#group X &lt;&lt; mop" line names the group it has in that game only.</summary>
    public static string GroupOf(string header, string? groupArg = null)
    {
        string mine = Games.Current.HeaderTag.TrimStart('#');
        foreach (var raw in header.Split('\n'))
        {
            var m = Regex.Match(Regex.Replace(raw, "--.*$", "").Trim(), @"^#group\s+(.*?)(?:\s*<<\s*(.*))?$");
            if (!m.Success) continue;
            if (!m.Groups[2].Success || m.Groups[2].Value.Split(new[] { '/', ' ' }, StringSplitOptions.RemoveEmptyEntries).Contains(mine, StringComparer.OrdinalIgnoreCase)) return m.Groups[1].Value.Trim();
        }
        return groupArg ?? "";     // RXPGuides.RegisterGuide("Group", [[ ... ]]) names it before the text
    }

    /// <summary>The faction a guide's "&lt;&lt; ..." line is for: named, or known from the races it names (null: either).</summary>
    public static string? SideOf(string tag)
    {
        if (Regex.IsMatch(tag, @"\bHorde\b")) return "Horde";
        if (Regex.IsMatch(tag, @"\bAlliance\b")) return "Alliance";
        var words = Regex.Matches(tag, @"(?<![!\w])[A-Za-z]+").Select(x => x.Value).ToList();
        bool h = words.Any(w => HordeRaces.Contains(w, StringComparer.OrdinalIgnoreCase)), a = words.Any(w => AllianceRaces.Contains(w, StringComparer.OrdinalIgnoreCase));
        return h && !a ? "Horde" : a && !h ? "Alliance" : null;
    }

    /// <summary>A guide's "&lt;&lt; ..." line names a race or class it is only for ("Human Mage"), not just a faction or an exception ("!Hunter").</summary>
    public static bool ForSome(string tag) =>
        Regex.Matches(tag, @"(?<![!\w])[A-Za-z]+").Any(x => Classes.Contains(x.Value) || RaceNames.Contains(x.Value));

    /// <summary>
    /// Both of two RestedXP tags ("/" = or, space = and): a step tagged "Warrior/Rogue" in a guide for "Human" is for
    /// "Human Warrior/Human Rogue". Faction words are dropped (the faction is a guide's own).
    /// </summary>
    public static string BothTags(string a, string b)
    {
        static List<string> Alts(string t) => t.Split('/').Select(x => string.Join(" ", x.Split(' ', StringSplitOptions.RemoveEmptyEntries).Where(w => w is not ("Horde" or "Alliance")))).Where(x => x.Length > 0).ToList();
        var A = Alts(a); var B = Alts(b);
        if (A.Count == 0) return string.Join("/", B);
        if (B.Count == 0) return string.Join("/", A);
        return string.Join("/", A.SelectMany(x => B.Select(y => x + " " + y)));
    }
    // the lines worth carrying over with it: where, who, what, and the conditions RestedXP puts on it
    static readonly HashSet<string> Keep = new()
    {
        "goto", "train", "trainer", "vendor", "fp", "fly", "target", "money", "xp", "collect", "buy", "zoneskip", "subzoneskip",
        "isQuestTurnedIn", "isOnQuest", "isQuestComplete", "skipgossip", "istrained",
    };
    static readonly Regex Cmd = new(@"^\.(\w+)\s*(\d+)?(?:\s*,\s*(\d+))?", RegexOptions.Compiled);
    const int Reach = 8;                       // how many quest steps either side to look for one this guide also has

    static readonly Regex UiMapGoto = new(@"^\.goto\s+(\d+)\s*,\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)(.*)$", RegexOptions.Compiled);
    static readonly Regex NamedGoto = new(@"^\.goto\s+([A-Za-z][^,]*?)\s*,\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)(.*)$", RegexOptions.Compiled);

    /// <summary>
    /// Older RestedXP guides name the zone and give map percent (".goto Ashenvale,37.36,51.79"); Forever's give the map
    /// ID and world coordinates (".goto 1440/1,..."). Rewrites the first kind into the second, which is what RouteBuilder
    /// works in. Lines it cannot place (an unknown zone name) are returned unchanged.
    /// </summary>
    public static string NormalizeGoto(string line, GameData data)
    {
        // ".goto 1411,43.29,68.85": the map ID with map percent (no "/continent"), as newer guides write it
        var u = UiMapGoto.Match(line);
        if (u.Success && data.Areas.Values.Where(x => x.UiMap == int.Parse(u.Groups[1].Value) && x.HasBounds).OrderBy(x => data.Parent(x.Id) == x.Id ? 0 : 1).FirstOrDefault() is { } ua)
        {
            var w0 = ua.ToWorld(new Pt(double.Parse(u.Groups[2].Value, System.Globalization.CultureInfo.InvariantCulture), double.Parse(u.Groups[3].Value, System.Globalization.CultureInfo.InvariantCulture)));
            return string.Create(System.Globalization.CultureInfo.InvariantCulture, $".goto {ua.UiMap}/{ua.Continent},{w0.X:0.00},{w0.Y:0.00}{u.Groups[4].Value}");
        }
        var m = NamedGoto.Match(line);
        if (!m.Success || data.FindArea(m.Groups[1].Value.Trim()) is not { } a) return line;
        var pct = new Pt(double.Parse(m.Groups[2].Value, System.Globalization.CultureInfo.InvariantCulture), double.Parse(m.Groups[3].Value, System.Globalization.CultureInfo.InvariantCulture));
        if (!a.HasBounds) return string.Create(System.Globalization.CultureInfo.InvariantCulture, $".goto {a.UiMap},{pct.X:0.00},{pct.Y:0.00}{m.Groups[4].Value}");
        var w = a.ToWorld(pct);
        return string.Create(System.Globalization.CultureInfo.InvariantCulture, $".goto {a.UiMap}/{a.Continent},{w.X:0.00},{w.Y:0.00}{m.Groups[4].Value}");
    }

    /// <summary>
    /// RestedXP's "#season" names the classic seasons a step is for (0 = normal, 1 = Mastery, 2 = Discovery). Forever plays
    /// as season 0, so a step for other seasons only (Season of Discovery runes) is not for us.
    /// </summary>
    public static bool OtherSeason(IEnumerable<string> lines)
    {
        foreach (var l in lines)
        {
            var m = Regex.Match(l, @"^#season\s+([\d,\s]+)");
            if (m.Success) return !m.Groups[1].Value.Split(',', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries).Contains("0");
        }
        return false;
    }

    /// <summary>
    /// RestedXP guides hold two routes in one file: steps marked "#softcore" only show in softcore mode, where the route
    /// dies on purpose to skip a walk (".deathskip"), and "#hardcore" ones only in hardcore mode. RouteBuilder plans walking,
    /// which is the hardcore route, so softcore-only steps are left out (and hardcore-only ones kept).
    /// </summary>
    public static bool SoftcoreOnly(IEnumerable<string> lines) => lines.Any(l => l.Trim() == "#softcore");

    static readonly Regex AnyGoto = new(@"^\.goto\s+(\d+)", RegexOptions.Compiled);
    /// <summary>The map of a step's first .goto, or -1.</summary>
    public static int MapOf(IEnumerable<string> lines) => lines.Select(l => AnyGoto.Match(l)).FirstOrDefault(g => g.Success) is { } g ? int.Parse(g.Groups[1].Value) : -1;

    /// <summary>
    /// The lines worth carrying over from one RestedXP step, if it is a training, vendor or flight-path step (null if not,
    /// or if it is RestedXP's hardcore-mode version of one), and the map ID of its first .goto (-1 = none).
    /// </summary>
    public static List<string>? ServiceLines(IEnumerable<(string Text, string Tag)> lines, out int map)
    {
        map = -1;
        var all = lines.ToList();
        if (!all.Any(x => Cmd.Match(x.Text) is { Success: true } c && Service.Contains(c.Groups[1].Value))) return null;
        if (SoftcoreOnly(all.Select(x => x.Text))) return null;             // the walking (hardcore) version of the step is used
        var kept = new List<string>();
        foreach (var (t, lt) in all)
        {
            bool isText = t.StartsWith(">>") || t.StartsWith('+');
            var c = Cmd.Match(t);
            if (!isText && !(c.Success && Keep.Contains(c.Groups[1].Value))) continue;
            if (c.Success && c.Groups[1].Value == "goto" && map < 0 && Regex.Match(t, @"^\.goto\s+(\d+)") is { Success: true } g) map = int.Parse(g.Groups[1].Value);
            kept.Add(lt.Length > 0 ? $"{t} << {lt}" : t);
        }
        return kept;
    }

    /// <summary>What a service step does, ignoring where it is and how it is worded: the same step from two places is placed once.</summary>
    public static string IdOf(string tag, IEnumerable<string> lines) =>
        tag + "|" + string.Join("|", lines.Where(x => !x.StartsWith(".goto") && !x.StartsWith(">>")).Select(x => Regex.Replace(x.Trim(), @"\s+", " ")));

    /// <summary>The lines of a guide above its first step.</summary>
    public static string HeaderOf(string body) { int i = Regex.Match(body, @"(^|\n)\s*step\b").Index; return i > 0 ? body[..i] : body; }

    /// <summary>Every service step in the RestedXP guide files' text, by guide.</summary>
    public static List<RxpService> Read(IEnumerable<Block> blocks, GameData? data = null)
    {
        var all = new List<RxpService>();
        foreach (var block in blocks)
        {
            if (NotFor(HeaderOf(block.Body), block.GroupArg) != null) continue;
            string name = Path.GetFileNameWithoutExtension(block.File), faction = "", guideTag = "";
            var steps = new List<(string Tag, bool Along, List<(string Text, string Tag)> Lines)>();
            foreach (var raw in block.Body.Split('\n'))
            {
                string l = Regex.Replace(raw, "--.*$", "").Trim();
                if (l.Length == 0) continue;
                string tag = ""; int ti = l.LastIndexOf("<<", StringComparison.Ordinal);
                if (ti >= 0) { tag = l[(ti + 2)..].Trim(); l = l[..ti].TrimEnd(); }
                if (steps.Count == 0 && l.Length == 0) { faction = SideOf(tag) ?? faction; guideTag = tag; continue; }
                if (data != null) l = NormalizeGoto(l, data);
                if (l.StartsWith("#name ")) { name = l[6..].Trim(); continue; }
                if (l == "step") { steps.Add((tag, false, new())); continue; }
                if (steps.Count == 0) continue;
                if (l.StartsWith("#completewith")) { var s = steps[^1]; steps[^1] = (s.Tag, true, s.Lines); continue; }
                steps[^1].Lines.Add((l, tag));
            }

            // the quest steps of the guide in order: (step number, key)
            var actions = new List<(int Step, string Key)>();
            for (int i = 0; i < steps.Count; i++)
            {
                if (steps[i].Along || OtherSeason(steps[i].Lines.Select(x => x.Text)) || SoftcoreOnly(steps[i].Lines.Select(x => x.Text))) continue;
                foreach (var (t, _) in steps[i].Lines)
                {
                    var c = Cmd.Match(t); if (!c.Success || !c.Groups[2].Success) continue;
                    string? key = c.Groups[1].Value switch
                    {
                        "accept" => "accept:" + c.Groups[2].Value,
                        "turnin" => "turnin:" + c.Groups[2].Value,
                        "complete" when c.Groups[3].Success => $"obj:{c.Groups[2].Value}:{c.Groups[3].Value}",
                        _ => null,
                    };
                    if (key != null) actions.Add((i, key));
                }
            }

            int lastMap = -1;
            for (int i = 0; i < steps.Count; i++)
            {
                var (tag, along, lines) = steps[i];
                int here = MapOf(lines.Select(x => x.Text));
                if (here >= 0) lastMap = here;
                if (along || OtherSeason(lines.Select(x => x.Text)) || ServiceLines(lines, out int map) is not { } kept) continue;
                // a step with no .goto of its own is done where the guide last sent you
                // a guide only for some characters ("<< Human Mage") makes its steps theirs
                if (ForSome(guideTag)) tag = BothTags(guideTag, tag);
                var svc = new RxpService { Guide = name, Faction = faction, Tag = tag, Map = map >= 0 ? map : lastMap, Lines = kept };
                if (Regex.Match(name, @"^(\d+)\s*-\s*(\d+)") is { Success: true } rg) { svc.MinLevel = int.Parse(rg.Groups[1].Value); svc.MaxLevel = int.Parse(rg.Groups[2].Value); }
                // quest steps in the same step first (a class quest handed in at the trainer), then before it, then after it
                foreach (var a in actions.Where(a => a.Step == i)) svc.Anchors.Add((a.Key, true));
                foreach (var a in actions.Where(a => a.Step < i).Reverse().Take(Reach)) svc.Anchors.Add((a.Key, true));
                foreach (var a in actions.Where(a => a.Step > i).Take(Reach)) svc.Anchors.Add((a.Key, false));
                svc.Id = IdOf(tag, kept);
                if (svc.Anchors.Count > 0) all.Add(svc);
            }
        }
        return all;
    }
}
