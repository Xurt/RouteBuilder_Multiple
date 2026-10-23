namespace RouteBuilder;

/// <summary>
/// One version of the game RouteBuilder can plan for: where its data comes from in QuestieDB, its level cap, its races
/// and race/class combinations, what RestedXP calls it, and where its zone files, locks and guides live.
/// </summary>
public sealed class GameProfile
{
    public string Key = "", Label = "";
    /// <summary>QuestieDB's name for the flavor ("Vanilla", "TBC", "Mists"); Forever has its own export.</summary>
    public string Flavor = "";
    public int MaxLevel = 60;
    /// <summary>The header tag RestedXP loads a guide by in that game ("#classic", "#tbc", "#mop").</summary>
    public string HeaderTag = "#classic";
    /// <summary>RestedXP's list of the guide files it loads in that game, in its Guides folder.</summary>
    public string GuideList = "";
    /// <summary>The addon .toc interface number(s).</summary>
    public string Interface = "";
    public (string Name, long Bit)[] Horde = Array.Empty<(string, long)>(), Alliance = Array.Empty<(string, long)>();
    public HashSet<(string Race, string Class)> Combos = new();
    public bool IsForever => Key == "forever";

    /// <summary>Forever keeps the folders it always had (zones, locks, guides); every other game has a subfolder of its own.</summary>
    public string Folder(string root) => IsForever ? root : Path.Combine(root, Key);
}

public static class Games
{
    static readonly HashSet<(string, string)> ClassicCombos = new()
    {
        ("Human", "Warrior"), ("Human", "Paladin"), ("Human", "Rogue"), ("Human", "Priest"), ("Human", "Mage"), ("Human", "Warlock"),
        ("Dwarf", "Warrior"), ("Dwarf", "Paladin"), ("Dwarf", "Hunter"), ("Dwarf", "Rogue"), ("Dwarf", "Priest"),
        ("Gnome", "Warrior"), ("Gnome", "Rogue"), ("Gnome", "Mage"), ("Gnome", "Warlock"),
        ("NightElf", "Warrior"), ("NightElf", "Hunter"), ("NightElf", "Rogue"), ("NightElf", "Priest"), ("NightElf", "Druid"),
        ("Orc", "Warrior"), ("Orc", "Hunter"), ("Orc", "Rogue"), ("Orc", "Shaman"), ("Orc", "Warlock"),
        ("Troll", "Warrior"), ("Troll", "Hunter"), ("Troll", "Rogue"), ("Troll", "Priest"), ("Troll", "Shaman"), ("Troll", "Mage"),
        ("Tauren", "Warrior"), ("Tauren", "Hunter"), ("Tauren", "Shaman"), ("Tauren", "Druid"),
        ("Undead", "Warrior"), ("Undead", "Rogue"), ("Undead", "Priest"), ("Undead", "Mage"), ("Undead", "Warlock"),
    };
    static readonly (string, long)[] ClassicHorde = { ("Orc", 2), ("Undead", 16), ("Tauren", 32), ("Troll", 128) };
    static readonly (string, long)[] ClassicAlliance = { ("Human", 1), ("Dwarf", 4), ("NightElf", 8), ("Gnome", 64) };

    public static readonly GameProfile Forever = new()
    {
        Key = "forever", Label = "WoW Forever", Flavor = "Forever", MaxLevel = 60, HeaderTag = "#classic", GuideList = "GuideList-forever.xml",
        Interface = "11509, 38002, 50504, 120100, 120005, 120007, 16001",
        Horde = ClassicHorde.Append(("Skyborne", 1L << 33)).ToArray(), Alliance = ClassicAlliance.Append(("Skyborne", 1L << 32)).ToArray(),
        // Forever's additions are the ones its quest data has class quests for; any more it turns up are learned when it loads
        Combos = ClassicCombos.Concat(new[]
        {
            ("Undead", "Paladin"), ("Gnome", "Priest"), ("Orc", "Mage"), ("Troll", "Warlock"), ("Dwarf", "Shaman"),
            ("Skyborne", "Druid"), ("Skyborne", "Hunter"), ("Skyborne", "Shaman"), ("Skyborne", "Warrior"), ("Skyborne", "Mage"),
        }).ToHashSet(),
    };

    public static readonly GameProfile Classic = new()
    {
        Key = "classic", Label = "Classic Era", Flavor = "Vanilla", MaxLevel = 60, HeaderTag = "#classic", GuideList = "GuideList-classic.xml",
        Interface = "11508, 11509",
        Horde = ClassicHorde, Alliance = ClassicAlliance, Combos = ClassicCombos.ToHashSet(),
    };

    public static readonly GameProfile[] All = { Forever, Classic };

    /// <summary>The game this run plans for (set once from --game, before anything else reads game data).</summary>
    public static GameProfile Current { get; private set; } = Forever;

    public static GameProfile Use(string? key)
    {
        if (string.IsNullOrWhiteSpace(key)) return Current = Forever;
        string k = key.Trim().ToLowerInvariant() switch { "era" or "vanilla" or "classic-era" => "classic", var x => x };
        var g = All.FirstOrDefault(x => x.Key == k);
        if (g == null)
        {
            string later = k is "tbc" or "mop" or "mists" ? $" {key} is planned but not built yet." : "";
            throw new InvalidOperationException($"--game must be one of: {string.Join(", ", All.Select(x => x.Key))}.{later}");
        }
        return Current = g;
    }
}
