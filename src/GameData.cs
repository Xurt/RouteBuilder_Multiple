using System.Diagnostics;
using System.Globalization;
using System.IO.Compression;
using System.Runtime.InteropServices;
using System.Text.Json;
using System.Text.RegularExpressions;

namespace RouteBuilder;

public sealed class QuestRow
{
    public int Id; public string Name = "";
    public List<int> StartNpcs = new(), StartObjects = new(), StartItems = new(), EndNpcs = new(), EndObjects = new();
    public int ReqLevel = 1, Level = 1; public long Races; public int Classes;
    public bool LevelUnknown;                       // no level in the database: GameData guesses one from the zone
    public List<string> Text = new();
    public string? TriggerText; public Dictionary<int, List<Pt>> TriggerPoints = new();   // percent coordinates by area
    public List<(int id, string? text)> KillNpcs = new(), UseObjects = new(), NeedItems = new();
    public List<(List<int> ids, string? text)> KillCredits = new();
    public Dictionary<int, int> ObjectiveIcon = new();   // NPC/object ID -> Questie icon type, when the objective is not a plain kill or pickup
    public bool HasOtherObjectives;                 // reputation or spell objectives, which are not modelled
    public int SourceItem; public List<int> RequiredSourceItems = new();
    public List<int> PreGroup = new(), PreSingle = new(), Exclusive = new();
    public int ZoneOrSort, NextInChain, Flags, SpecialFlags, Parent, BreadcrumbFor;
    public bool NeedsSkill, NeedsReputation;
    public bool Repeatable => (SpecialFlags & 1) != 0;
    /// <summary>
    /// A quest players never see: the game's own bookkeeping ("tracking" quests, flag 1024), test and unused entries
    /// ("FLAG - ...", "BETA ...", "[DNT] ..."). Later games' data has hundreds of these.
    /// </summary>
    public bool Removed;                            // on Questie's blacklist for this game: not in the game
    public bool Hidden => hidden ??= Removed || (Flags & 1024) != 0 || HiddenName.IsMatch(Name) || TestName.IsMatch(Name) || Text.Any(TestText.IsMatch);
    bool? hidden;
    // developers' test entries left in the data: "... Test Case", "... COPY", "Kill 5 Test Kobolds."
    static readonly System.Text.RegularExpressions.Regex TestName = new(@"\bTest Case\b|\bCOPY\s*$"), TestText = new(@"\bTest (?:Kobold|Mob|NPC|Creature)s?\b");
    static readonly System.Text.RegularExpressions.Regex HiddenName = new(@"^\s*(?:\[?DNT\]?|DND|FLAG\b|BETA\b|Tracking Event|zzOLD|zz |<UNUSED>|UNUSED\b|\[DEPRECATED\]|DEPRECATED\b|<TXT>|<NYI>|\[NYI\]|<?TEST\b>?|\[TEMP\]|\[PH\])", System.Text.RegularExpressions.RegexOptions.IgnoreCase);
    // SpecialFlags 2 is "completed by exploring or by a scripted event" (escorts, "reach this spot", wells to cleanse), not a
    // holiday: those are told apart by their quest-log category (zoneOrSort below 0), which the zone filter already leaves out
    public bool ScriptedOrExplore => (SpecialFlags & 2) != 0;
    // Party-accept plus scripted: escorts, and scenes that play out at the quest giver ("listen to his story", a duel). The same
    // two flags are on quests that send you off with something to use somewhere (a totem for a well, a fogger to place) or a
    // place to find (an object): those are not done on the spot.
    public bool Escort => (Flags & 2) != 0 && ScriptedOrExplore && SourceItem == 0 && UseObjects.Count == 0;

    // The database has no time-limit field, but the quest text says so: "within 15 minutes", "before the time limit is up",
    // "before the incense burns to ash in ten minutes". Minutes of the limit, 0 when the text gives none, null when not timed.
    static readonly string Num = "(\\d+|one|two|three|four|five|six|seven|eight|nine|ten|twelve|fifteen|twenty|thirty|an?)";
    static readonly System.Text.RegularExpressions.Regex[] TimedRx =
    {
        new($@"\b(?:within|in under|in)\s+{Num}\s+(minutes?|hours?)\b", System.Text.RegularExpressions.RegexOptions.IgnoreCase),
        new($@"\b{Num}\s+(minutes?|hours?)\s+(?:before|to)\b", System.Text.RegularExpressions.RegexOptions.IgnoreCase),
        new(@"\btime limit\b|\btimer\b|\bbefore (?:the|it|they|its)\b[^.!]{0,40}\b(?:runs? out|expires?|burns?|gets? cold|is up)\b", System.Text.RegularExpressions.RegexOptions.IgnoreCase),
    };
    public double? TimeLimit
    {
        get
        {
            string all = string.Join(" ", Text);
            double? found = null;
            foreach (var rx in TimedRx)
                foreach (System.Text.RegularExpressions.Match m in rx.Matches(all))
                {
                    if (m.Groups.Count < 3 || !m.Groups[1].Success) { found ??= 0; continue; }
                    string w = m.Groups[1].Value.ToLowerInvariant();
                    double n = double.TryParse(w, out double d) ? d : Array.IndexOf(new[] { "a", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten" }, w) is int k && k >= 0 ? Math.Max(1, k)
                             : w switch { "an" => 1, "twelve" => 12, "fifteen" => 15, "twenty" => 20, "thirty" => 30, _ => 0 };
                    double minutes = m.Groups[2].Value.StartsWith("hour", StringComparison.OrdinalIgnoreCase) ? n * 60 : n;
                    found = found is > 0 ? Math.Min(found.Value, minutes) : minutes;
                }
            return found;
        }
    }
    /// <summary>A limit short enough to plan around (under an hour): do it straight after the pickup.</summary>
    public bool TimedShort => TimeLimit is { } t && t < 60;
    public bool HasObjectives => KillNpcs.Count + UseObjects.Count + NeedItems.Count + KillCredits.Count > 0 || TriggerText != null || HasOtherObjectives;
}

public sealed class NpcRow
{
    public int Id; public string Name = ""; public double MinLevel, MaxLevel; public int Rank, Flags;
    public Dictionary<int, List<Pt>> Spawns = new();      // percent coordinates by area
    public Dictionary<int, List<Pt>> Waypoints = new();
    /// <summary>Average level, or null when the database has none (it uses 9999 for "unknown").</summary>
    public double? Level => MinLevel > Game.MaxLevel + 3 || MaxLevel > Game.MaxLevel + 3 ? null : MinLevel > 0 && MaxLevel > 0 ? (MinLevel + MaxLevel) / 2 : MinLevel > 0 ? MinLevel : MaxLevel > 0 ? MaxLevel : null;
    public bool Innkeeper => (Flags & 128) != 0;
}

public sealed class ObjectRow { public int Id; public string Name = ""; public Dictionary<int, List<Pt>> Spawns = new(); }

public sealed class ItemRow { public int Id; public string Name = ""; public List<int> NpcDrops = new(), ObjectDrops = new(), Vendors = new(); }

/// <summary>A zone or city: its map IDs and, when known, the world rectangle its map covers.</summary>
public sealed class AreaInfo
{
    public int Id, UiMap, Continent; public string Name = "";
    public double Left, Right, Top, Bottom; public bool HasBounds;

    /// <summary>Map percent to world yards.</summary>
    public Pt ToWorld(Pt pct) => new(Left - pct.X / 100.0 * (Left - Right), Top - pct.Y / 100.0 * (Top - Bottom));
    public Pt ToPercent(Pt w) => new((Left - w.X) / (Left - Right) * 100.0, (Top - w.Y) / (Top - Bottom) * 100.0);
}

/// <summary>Everything read from a QuestieDB checkout after the export for the game being planned has been run.</summary>
public sealed class GameData
{
    public readonly Dictionary<int, QuestRow> Quests = new();
    public readonly Dictionary<int, NpcRow> Npcs = new();
    public readonly Dictionary<int, ObjectRow> Objects = new();
    public readonly Dictionary<int, ItemRow> Items = new();
    public readonly Dictionary<int, AreaInfo> Areas = new();
    public readonly Dictionary<int, int> ParentArea = new();
    public readonly Dictionary<int, int> QuestXp = new();
    public readonly Dictionary<int, Dictionary<int, double>> DropRates = new();   // item -> npc -> percent
    public readonly HashSet<int> Instances = new();
    public readonly Dictionary<int, int> TypicalXp = new();                        // by quest level
    public string Version = "unknown";

    public const string ExportDir = "src/corrections/Forever/combined";
    /// <summary>Where RouteBuilder's own export of another game's data goes, inside the QuestieDB folder.</summary>
    public static string FlavorDir(GameProfile g) => Path.Combine(".routebuilder", g.Flavor);
    /// <summary>The exported quest, NPC, object and item files of the game being planned.</summary>
    static string DataFile(string repo, GameProfile g, string type) =>
        g.IsForever ? Path.Combine(repo, ExportDir, $"forever{type}DB.lua") : Path.Combine(repo, FlavorDir(g), $"{g.Flavor}{type}DB.lua");

    public int Parent(int area) => ParentArea.TryGetValue(area, out var p) ? p : area;
    public string AreaName(int area) => Areas.TryGetValue(area, out var a) ? a.Name : $"area {area}";
    public string NpcName(int id) => Npcs.TryGetValue(id, out var n) ? n.Name : $"NPC {id}";
    public string ObjectName(int id) => Objects.TryGetValue(id, out var o) ? o.Name : $"object {id}";
    public string ItemName(int id) => Items.TryGetValue(id, out var i) ? i.Name : $"item {id}";

    public AreaInfo? FindArea(string nameOrId)
    {
        if (int.TryParse(nameOrId, out int id)) return Areas.GetValueOrDefault(id);
        var exact = Areas.Values.Where(a => a.Name.Equals(nameOrId, StringComparison.OrdinalIgnoreCase)).ToList();
        if (exact.Count > 0) return exact.OrderByDescending(a => a.HasBounds).First();
        var part = Areas.Values.Where(a => a.Name.Contains(nameOrId, StringComparison.OrdinalIgnoreCase) && Parent(a.Id) == a.Id).ToList();
        return part.Count == 1 ? part[0] : null;
    }

    // ------------------------------------------------------------------ loading
    public static GameData Load(string repo)
    {
        var d = new GameData(); var g = Games.Current;
        if (!File.Exists(DataFile(repo, g, "Quest")))
            throw new InvalidOperationException($"No exported {g.Label} data in {Path.GetDirectoryName(DataFile(repo, g, "Quest"))}. Run 'RouteBuilder update{(g.IsForever ? "" : " --game " + g.Key)}' first.");

        foreach (var (id, r) in Lua.ReadEntities(DataFile(repo, g, "Npc")))
        {
            var n = new NpcRow { Id = id, Name = Lua.Text(r[1]) ?? "", MinLevel = Lua.Dbl(r[4]), MaxLevel = Lua.Dbl(r[5]), Rank = (int)Lua.Num(r[6]), Flags = (int)Lua.Num(r[15]) };
            ReadPoints(Lua.Tab(r[7]), n.Spawns); ReadPoints(Lua.Tab(r[8]), n.Waypoints);
            d.Npcs[id] = n;
        }
        foreach (var (id, r) in Lua.ReadEntities(DataFile(repo, g, "Object")))
        {
            var o = new ObjectRow { Id = id, Name = Lua.Text(r[1]) ?? "" };
            ReadPoints(Lua.Tab(r[4]), o.Spawns);
            d.Objects[id] = o;
        }
        foreach (var (id, r) in Lua.ReadEntities(DataFile(repo, g, "Item")))
            d.Items[id] = new ItemRow { Id = id, Name = Lua.Text(r[1]) ?? "", NpcDrops = Lua.Ids(r[2]), ObjectDrops = Lua.Ids(r[3]), Vendors = Lua.Ids(r[14]) };
        foreach (var (id, r) in Lua.ReadEntities(DataFile(repo, g, "Quest")))
            d.Quests[id] = ReadQuest(id, r);

        d.LoadAreas(repo); d.LoadSupport(repo);
        string removed = Path.Combine(repo, FlavorDir(g), "blacklist.txt");
        if (!g.IsForever && File.Exists(removed))
            foreach (var line in File.ReadLines(removed))
                if (int.TryParse(line.Trim(), out int qid) && d.Quests.TryGetValue(qid, out var rq)) rq.Removed = true;
        if (!g.IsForever && !g.ClassicMaps) d.SplitOwnMaps();
        d.GuessUnknownLevels();
        d.Version = ReadVersion(repo);
        Game.Learn(d);                       // race/class combinations the quest data has class quests for
        return d;
    }

    static void ReadPoints(LuaTable? t, Dictionary<int, List<Pt>> into)
    {
        if (t == null) return;
        foreach (var (area, v) in t.Int)
        {
            if (v is not LuaTable list) continue;
            var pts = new List<Pt>();
            void Add(LuaTable p) { if (p[1] is double x && p[2] is double y && x >= 0 && y >= 0) pts.Add(new Pt(x, y)); }
            foreach (var e in list.Values)
            {
                if (e is not LuaTable et) continue;
                if (et[1] is LuaTable) { foreach (var pp in et.Values) if (pp is LuaTable pt) Add(pt); }   // a path of points
                else Add(et);
            }
            if (pts.Count > 0) into[(int)area] = pts;
        }
    }

    // From Cataclysm on, the starting areas (Valley of Trials, Northshire, Coldridge Valley...) are maps of their own, and
    // their NPCs' positions are on those maps. Without world-map sizes they cannot be put on the parent zone's map, so
    // a part of a zone with a map of its own and at least five quests of its own is planned as a zone of its own,
    // which is also how RestedXP splits them ("1-6 Valley of Trials", then "6-10 Durotar").
    void SplitOwnMaps()
    {
        // quests filed under the zone whose givers all stand on such a part's map belong to that part (Northshire's
        // quests are filed under Elwynn Forest, but Marshal McBride is on Northshire's map)
        bool OwnMap(int child) => ParentArea.TryGetValue(child, out var par) && Areas.TryGetValue(child, out var c) && Areas.TryGetValue(par, out var p) && c.UiMap != p.UiMap;
        foreach (var q in Quests.Values.Where(q => q.ZoneOrSort > 0 && !ParentArea.ContainsKey(q.ZoneOrSort)))
        {
            var keys = q.StartNpcs.SelectMany(n => Npcs.TryGetValue(n, out var r) ? r.Spawns.Keys : Enumerable.Empty<int>())
                .Concat(q.StartObjects.SelectMany(o => Objects.TryGetValue(o, out var r) ? r.Spawns.Keys : Enumerable.Empty<int>())).Distinct().ToList();
            if (keys.Count == 1 && keys[0] != q.ZoneOrSort && OwnMap(keys[0]) && ParentArea[keys[0]] == q.ZoneOrSort) q.ZoneOrSort = keys[0];
        }
        var own = Quests.Values.Where(q => q.ZoneOrSort > 0 && !q.Hidden && !q.Repeatable).GroupBy(q => q.ZoneOrSort).ToDictionary(g => g.Key, g => g.Count());
        foreach (var (child, parent) in ParentArea.ToList())
            if (Areas.TryGetValue(child, out var c) && Areas.TryGetValue(parent, out var p) && c.UiMap != p.UiMap && own.GetValueOrDefault(child) >= 5)
                ParentArea.Remove(child);
    }

    // Quests the database gives no level at all (often notes started from an item, or entries Blizzard reused) would
    // read as level 1 and drag a zone's range down to 1: they get the lowest level of the zone's other quests instead.
    void GuessUnknownLevels()
    {
        var low = Quests.Values.Where(q => !q.LevelUnknown && !q.Hidden && q.ZoneOrSort > 0).GroupBy(q => Parent(q.ZoneOrSort))
            .ToDictionary(g => g.Key, g => (Level: g.Min(q => q.Level), Req: g.Min(q => q.ReqLevel)));
        foreach (var q in Quests.Values.Where(q => q.LevelUnknown && q.ZoneOrSort > 0))
            if (low.TryGetValue(Parent(q.ZoneOrSort), out var l)) { q.Level = l.Level; q.ReqLevel = l.Req; }
    }

    static QuestRow ReadQuest(int id, LuaTable r)
    {
        var q = new QuestRow { Id = id, Name = Lua.Text(r[1]) ?? $"Quest {id}" };
        if (Lua.Tab(r[2]) is { } st) { q.StartNpcs = Lua.Ids(st[1]); q.StartObjects = Lua.Ids(st[2]); q.StartItems = Lua.Ids(st[3]); }
        if (Lua.Tab(r[3]) is { } en) { q.EndNpcs = Lua.Ids(en[1]); q.EndObjects = Lua.Ids(en[2]); }
        q.ReqLevel = Math.Max(1, (int)Lua.Num(r[4], 1)); q.Level = (int)Lua.Num(r[5], q.ReqLevel);
        if (q.Level < 1) { q.Level = q.ReqLevel; q.LevelUnknown = q.ReqLevel <= 1; }
        q.Races = Lua.Num(r[6]); q.Classes = (int)Lua.Num(r[7]);
        if (Lua.Tab(r[8]) is { } tx) foreach (var s in tx.Values) if (s is string str && str.Length > 0) q.Text.Add(str);
        if (Lua.Tab(r[9]) is { } tr)
        {
            q.TriggerText = Lua.Text(tr[1]) ?? "Reach the marked spot";
            ReadPoints(Lua.Tab(tr[2]), q.TriggerPoints);
        }
        if (Lua.Tab(r[10]) is { } ob)
        {
            static IEnumerable<(int, string?)> Rows(object? g)
            {
                if (g is not LuaTable t) yield break;
                foreach (var e in t.Values) if (e is LuaTable et && et[1] is double d) yield return ((int)d, Lua.Text(et[2]));
            }
            q.KillNpcs = Rows(ob[1]).ToList(); q.UseObjects = Rows(ob[2]).ToList(); q.NeedItems = Rows(ob[3]).ToList();
            foreach (var grp in new[] { ob[1], ob[2] })
                if (grp is LuaTable gt)
                    foreach (var e in gt.Values) if (e is LuaTable et && et[1] is double eid && et[3] is double icon) q.ObjectiveIcon[(int)eid] = (int)icon;
            if (ob[5] is LuaTable kc)
                foreach (var e in kc.Values)
                    if (e is LuaTable et && et[1] is LuaTable ids) q.KillCredits.Add((Lua.Ids(ids), Lua.Text(et[3])));
            q.HasOtherObjectives = (ob[4] is LuaTable rep && rep.Count > 0) || (ob[6] is LuaTable sp && sp.Count > 0);
        }
        q.SourceItem = (int)Lua.Num(r[11]);
        q.PreGroup = Lua.Ids(r[12]); q.PreSingle = Lua.Ids(r[13]); q.Exclusive = Lua.Ids(r[16]);
        q.ZoneOrSort = (int)Lua.Num(r[17]);
        q.NeedsSkill = r[18] is LuaTable sk && sk.Count > 0;
        q.NeedsReputation = r[19] is LuaTable mr && mr.Count > 0;
        q.RequiredSourceItems = Lua.Ids(r[21]);
        q.NextInChain = (int)Lua.Num(r[22]); q.Flags = (int)Lua.Num(r[23]); q.SpecialFlags = (int)Lua.Num(r[24]);
        q.Parent = (int)Lua.Num(r[25]); q.BreadcrumbFor = (int)Lua.Num(r[27]);
        return q;
    }

    void LoadAreas(string repo)
    {
        var g = Games.Current;
        string zones = g.IsForever ? Path.Combine(repo, "support", "Forever", "Zones") : Path.Combine(repo, g.ZoneSupport.Replace('/', Path.DirectorySeparatorChar));
        // sub-zones and dungeons: the game's own file where it has one, else the shared one
        string Shared(string file) => File.Exists(Path.Combine(zones, file)) ? Path.Combine(zones, file) : Path.Combine(repo, "support", "Zones", file);
        // world rectangles for the zones that have them. Forever's conversion file has them for Forever's maps ("target")
        // and for the Classic maps it was made from ("source"), so it serves Classic Era too
        string side = g.IsForever ? "target" : "source";
        if (g.IsForever || g.ClassicMaps)
        using (var doc = JsonDocument.Parse(File.ReadAllText(Path.Combine(repo, "data", "Forever", "conversion.json"))))
            foreach (var t in doc.RootElement.GetProperty("geometry").GetProperty("transforms").EnumerateArray())
            {
                if (!t.TryGetProperty(side + "_bounds", out var b) || b.ValueKind != JsonValueKind.Object) continue;
                var a = new AreaInfo
                {
                    Id = t.GetProperty("area_id").GetInt32(), UiMap = t.GetProperty("ui_map_id").GetInt32(), Continent = t.GetProperty("map_id").GetInt32(),
                    Name = t.GetProperty(side + "_name").GetString() ?? "", HasBounds = true,
                    Left = b.GetProperty("left").GetDouble(), Right = b.GetProperty("right").GetDouble(), Top = b.GetProperty("top").GetDouble(), Bottom = b.GetProperty("bottom").GetDouble(),
                };
                Areas[a.Id] = a;
            }
        // every other area: name and map only. Coordinates stay as map percent on a nominal-size map.
        var rx = new Regex(@"\[(\d+)\]\s*=\s*(\d+),\s*--\s*(.+)$");
        foreach (var line in File.ReadLines(Path.Combine(zones, "areaIdToUiMapId.lua")))
        {
            var m = rx.Match(line);
            if (!m.Success) continue;
            int id = int.Parse(m.Groups[1].Value), ui = int.Parse(m.Groups[2].Value);
            string name = m.Groups[3].Value.Split("->")[0].Trim();
            if (Areas.ContainsKey(id) || ui == 0) continue;
            Areas[id] = new AreaInfo { Id = id, UiMap = ui, Continent = -id, Name = name, Left = 0, Right = -4000, Top = 0, Bottom = -2667, HasBounds = false };
        }
        var rp = new Regex(@"\[(\d+)\]\s*=\s*(\d+),");
        foreach (var line in File.ReadLines(Shared("subZoneToParentZone.lua")))
        {
            var m = rp.Match(line);
            if (m.Success) ParentArea[int.Parse(m.Groups[1].Value)] = int.Parse(m.Groups[2].Value);
        }
        var rd = new Regex(@"^\s*\[(\d+)\]\s*=\s*\{""");
        foreach (var line in File.ReadLines(Shared("dungeons.lua")))
        {
            var m = rd.Match(line);
            if (m.Success) Instances.Add(int.Parse(m.Groups[1].Value));
        }
    }

    void LoadSupport(string repo)
    {
        var rx = new Regex(@"\[(\d+)\] = \{(-?\d+), (\d+)\}");
        var byLevel = new Dictionary<int, List<int>>();
        var g = Games.Current;
        string F(string rel) => Path.Combine(repo, rel.Replace('/', Path.DirectorySeparatorChar));
        string xpFile = g.IsForever ? F("support/Forever/QuestXP/xpDB-classic.lua") : F(g.QuestXpFile);
        string dropFile = g.IsForever ? F("support/Forever/DropTables/classicItemDrops.lua") : F(g.DropFile);
        foreach (Match m in rx.Matches(File.ReadAllText(xpFile)))
        {
            int id = int.Parse(m.Groups[1].Value), lvl = int.Parse(m.Groups[2].Value), xp = int.Parse(m.Groups[3].Value);
            QuestXp[id] = xp;
            if (lvl > 0 && xp > 0) { if (!byLevel.TryGetValue(lvl, out var l)) byLevel[lvl] = l = new(); l.Add(xp); }
        }
        // "typical" pay for a quest of each level: the 65th percentile of real quests, never decreasing with level
        int last = 80;
        for (int lvl = 1; lvl <= Game.MaxLevel; lvl++)
        {
            if (byLevel.TryGetValue(lvl, out var l) && l.Count >= 5) { l.Sort(); last = Math.Max(last, l[(int)(l.Count * 0.65)]); }
            TypicalXp[lvl] = last;
        }
        int cur = 0; var item = new Regex(@"^\s*\[(\d+)\] = \{"); var rate = new Regex(@"^\s*\[(\d+)\] = ([\d.]+),");
        foreach (var line in File.ReadLines(dropFile))
        {
            var m = item.Match(line);
            if (m.Success) { cur = int.Parse(m.Groups[1].Value); DropRates[cur] = new(); continue; }
            m = rate.Match(line);
            if (m.Success && cur != 0) DropRates[cur][int.Parse(m.Groups[1].Value)] = double.Parse(m.Groups[2].Value, CultureInfo.InvariantCulture);
        }
    }

    static string ReadVersion(string repo)
    {
        string stamp = Path.Combine(repo, ".routebuilder-version");
        if (File.Exists(stamp)) return File.ReadAllText(stamp).Trim();
        return "local copy, " + File.GetLastWriteTime(DataFile(repo, Games.Current, "Quest")).ToString("yyyy-MM-dd");
    }
}

/// <summary>Fetches QuestieDB and runs its own export script, which merges the base data with all correction layers.</summary>
public static class Updater
{
    const string RepoUrl = "https://github.com/Questie/QuestieDB";
    const string Branch = "master";

    public static void Update(string repo, string? luaPath, bool skipDownload)
    {
        if (!skipDownload)
        {
            try { Download(repo); }
            catch (Exception e) when (e is HttpRequestException or IOException or TaskCanceledException or InvalidDataException or UnauthorizedAccessException)
            {
                if (!Directory.Exists(Path.Combine(repo, "tools"))) throw new InvalidOperationException("Could not download QuestieDB: " + e.Message);
                Console.WriteLine($"Could not download a newer QuestieDB ({e.Message}); using the copy already here.");
            }
        }
        if (!skipDownload) DownloadBlacklist(repo);
        Export(repo, luaPath);
    }

    const string BlacklistUrl = "https://raw.githubusercontent.com/Questie/Questie/master/Database/Corrections/QuestieQuestBlacklist.lua";
    static string BlacklistFile(string repo) => Path.Combine(repo, ".routebuilder", "QuestieQuestBlacklist.lua");

    /// <summary>
    /// Questie's list of quests that are in the data but not in the game (removed, duplicates, test entries). It lives in the
    /// Questie addon, not in QuestieDB, so it is fetched on its own. Without it the build still works, with those quests in.
    /// </summary>
    static void DownloadBlacklist(string repo)
    {
        if (Games.Current.QuestieExpansion == null) return;
        try
        {
            using var http = new HttpClient { Timeout = TimeSpan.FromMinutes(2) };
            string text = http.GetStringAsync(BlacklistUrl).GetAwaiter().GetResult();
            Directory.CreateDirectory(Path.GetDirectoryName(BlacklistFile(repo))!);
            File.WriteAllText(BlacklistFile(repo), text);
        }
        catch (Exception e) when (e is HttpRequestException or IOException or TaskCanceledException or UnauthorizedAccessException)
        {
            Console.WriteLine($"Could not download Questie's quest blacklist ({e.Message}){(File.Exists(BlacklistFile(repo)) ? "; using the copy already here" : "; quests Blizzard removed may show up in routes")}.");
        }
    }

    static void Download(string repo)
    {
        string version;
        string? gitError = null;
        if (Directory.Exists(Path.Combine(repo, ".git")) && Refresh(repo, out gitError))
            version = "commit " + Capture("git", "log -1 \"--format=%h, %cs\"", repo);
        else if (Clone(repo, ref gitError))
            version = "commit " + Capture("git", "log -1 \"--format=%h, %cs\"", repo);
        else
        {
            Console.WriteLine(gitError == null ? "git not available; downloading the zip instead..." : $"git failed ({gitError}); downloading the zip instead...");
            string zip = Path.Combine(Path.GetTempPath(), "questiedb.zip");
            using (var http = new HttpClient { Timeout = TimeSpan.FromMinutes(20) })
            using (var s = http.GetStreamAsync($"{RepoUrl}/archive/refs/heads/{Branch}.zip").GetAwaiter().GetResult())
            using (var f = File.Create(zip)) s.CopyTo(f);
            string tmp = repo + ".unzip";
            if (Directory.Exists(tmp)) Wipe(tmp);
            ZipFile.ExtractToDirectory(zip, tmp);
            if (Directory.Exists(repo)) Wipe(repo);
            Directory.Move(Directory.GetDirectories(tmp)[0], repo);
            Wipe(tmp); File.Delete(zip);
            version = "zip download, " + DateTime.Now.ToString("yyyy-MM-dd");
        }
        File.WriteAllText(Path.Combine(repo, ".routebuilder-version"), version);
        Console.WriteLine("QuestieDB: " + version);
    }

    /// <summary>
    /// Brings a shallow clone up to date. "git pull --depth 1" cannot do that once QuestieDB has new commits: the new tip's
    /// history is cut off, so git sees two unrelated branches and refuses to fast-forward. Fetching the tip and moving the
    /// folder onto it always works. The export's output is in QuestieDB's .gitignore, so nothing of ours is lost.
    /// </summary>
    static bool Refresh(string repo, out string? error)
    {
        error = null;
        foreach (var args in new[] { $"fetch --depth 1 origin {Branch}", "reset --hard FETCH_HEAD" })
        {
            var (rc, err) = Git(args, repo);
            if (rc != 0) { error = rc == -1 ? null : err; return false; }
        }
        return true;
    }

    /// <summary>
    /// A fresh clone. A folder that is already there without git (left by an earlier zip download) is replaced, so the
    /// next update can use git again instead of downloading the whole zip every time.
    /// </summary>
    static bool Clone(string repo, ref string? error)
    {
        string target = Directory.Exists(repo) ? repo + ".clone" : repo;
        if (Directory.Exists(target) && target != repo) Wipe(target);
        var (rc, err) = Git($"clone --depth 1 --branch {Branch} {RepoUrl}.git \"{target}\"", null);
        if (rc != 0)
        {
            if (rc != -1) error ??= err;
            if (Directory.Exists(target)) try { Wipe(target); } catch (Exception e) when (e is IOException or UnauthorizedAccessException) { }
            return false;
        }
        if (target != repo)
        {
            Wipe(repo);
            Directory.Move(target, repo);
        }
        return true;
    }

    /// <summary>Deletes a folder, including git's read-only object files (which Directory.Delete refuses on Windows).</summary>
    static void Wipe(string dir)
    {
        foreach (var f in Directory.EnumerateFiles(dir, "*", SearchOption.AllDirectories))
            if (File.GetAttributes(f).HasFlag(FileAttributes.ReadOnly)) File.SetAttributes(f, FileAttributes.Normal);
        Directory.Delete(dir, true);
    }

    /// <summary>Runs git quietly. Returns its exit code (-1 when git could not be started) and the last line it printed as an error.</summary>
    static (int Code, string Error) Git(string args, string? dir)
    {
        try
        {
            var psi = new ProcessStartInfo("git", args) { UseShellExecute = false, RedirectStandardOutput = true, RedirectStandardError = true };
            if (dir != null) psi.WorkingDirectory = dir;
            using var p = Process.Start(psi)!;
            var err = new List<string>();
            p.OutputDataReceived += (_, _) => { };
            p.ErrorDataReceived += (_, e) => { if (!string.IsNullOrWhiteSpace(e.Data)) lock (err) err.Add(e.Data.Trim()); };
            p.BeginOutputReadLine(); p.BeginErrorReadLine();
            p.WaitForExit();
            string last = err.LastOrDefault(l => l.StartsWith("fatal:") || l.StartsWith("error:")) ?? err.LastOrDefault() ?? "";
            return (p.ExitCode, last.Length > 0 ? last : $"exit code {p.ExitCode}");
        }
        catch (Exception) { return (-1, ""); }
    }

    /// <summary>
    /// Runs the export for the game being planned with the Lua 5.1 interpreter QuestieDB ships: QuestieDB's own
    /// export-forever.lua for Forever, RouteBuilder's tools/export-flavor.lua for the other games.
    /// </summary>
    public static void Export(string repo, string? luaPath)
    {
        string lua = luaPath ?? FindLua(Path.GetFullPath(repo));
        var g = Games.Current;
        Console.WriteLine($"Running the {g.Label} export of QuestieDB with {lua} ...");
        int rc;
        if (g.IsForever) rc = Run(lua, "tools/export-forever.lua --include-authored", repo, quiet: false);
        else
        {
            string script = new[] { Path.Combine(AppContext.BaseDirectory, "tools", "export-flavor.lua"), Path.Combine("tools", "export-flavor.lua") }
                .Select(Path.GetFullPath).FirstOrDefault(File.Exists) ?? throw new InvalidOperationException("tools/export-flavor.lua is missing from RouteBuilder.");
            string outDir = Path.Combine(Path.GetFullPath(repo), GameData.FlavorDir(g));
            Directory.CreateDirectory(outDir);
            rc = Run(lua, $"\"{script}\" {g.Flavor} \"{outDir}\"", repo, quiet: false);
            string bl = Path.GetFullPath(BlacklistFile(repo)), blOut = Path.Combine(outDir, "blacklist.txt");
            string? blScript = new[] { Path.Combine(AppContext.BaseDirectory, "tools", "questie-blacklist.lua"), Path.Combine("tools", "questie-blacklist.lua") }
                .Select(Path.GetFullPath).FirstOrDefault(File.Exists);
            if (rc == 0 && File.Exists(bl) && blScript != null && g.QuestieExpansion != null
                && Run(lua, $"\"{blScript}\" \"{bl}\" {g.QuestieExpansion} \"{blOut}\"", repo, quiet: false) != 0)
                Console.WriteLine("Questie's quest blacklist could not be read; quests Blizzard removed may show up in routes.");
        }
        if (rc != 0) throw new InvalidOperationException("QuestieDB export failed. If no Lua 5.1 interpreter was found, install one and pass --lua <path>.");
    }

    static string FindLua(string repo)
    {
        if (RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
        {
            string exe = Path.Combine(repo, "tools", "lua-binary", "lua.exe");
            if (File.Exists(exe)) return exe;
        }
        else if (RuntimeInformation.IsOSPlatform(OSPlatform.Linux) && RuntimeInformation.OSArchitecture == Architecture.X64)
        {
            string bin = Path.Combine(repo, "tools", "lua-binary", "linux-x64", "lua");
            if (File.Exists(bin))
            {
                File.SetUnixFileMode(bin, File.GetUnixFileMode(bin) | UnixFileMode.UserExecute);
                return bin;
            }
        }
        foreach (var name in new[] { "lua5.1", "luajit", "lua" })
            if (Run(name, "-v", null, quiet: true) == 0) return name;
        throw new InvalidOperationException("No Lua 5.1 interpreter found. Pass --lua <path>.");
    }

    static int Run(string file, string args, string? dir, bool quiet)
    {
        try
        {
            var psi = new ProcessStartInfo(file, args) { UseShellExecute = false, RedirectStandardOutput = true, RedirectStandardError = true };
            if (dir != null) psi.WorkingDirectory = dir;
            using var p = Process.Start(psi)!;
            p.OutputDataReceived += (_, e) => { if (!quiet && e.Data != null) Console.WriteLine("  " + e.Data); };
            p.ErrorDataReceived += (_, e) => { if (!quiet && e.Data != null) Console.WriteLine("  " + e.Data); };
            p.BeginOutputReadLine(); p.BeginErrorReadLine();
            p.WaitForExit();
            return p.ExitCode;
        }
        catch (Exception) { return -1; }
    }

    static string Capture(string file, string args, string dir)
    {
        try
        {
            var psi = new ProcessStartInfo(file, args) { UseShellExecute = false, RedirectStandardOutput = true, WorkingDirectory = dir };
            using var p = Process.Start(psi)!;
            string s = p.StandardOutput.ReadToEnd().Trim(); p.WaitForExit();
            return s;
        }
        catch (Exception) { return "unknown"; }
    }
}
