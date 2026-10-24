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
    /// <summary>The classes, with QuestieDB's class bits; named the way RestedXP's tags name them.</summary>
    public (string Name, int Bit)[] Classes = Games.ClassicClasses;
    /// <summary>Experience from one level to the next, from level 1 (index 1) up to the level cap.</summary>
    public int[] XpNext = Games.ClassicXp;
    /// <summary>QuestieDB's support folder for the game's maps (areaIdToUiMapId.lua), and its quest-experience and drop files.</summary>
    public string ZoneSupport = "support/Zones", QuestXpFile = "support/QuestXP/xpDB-classic.lua", DropFile = "support/DropTables/classicItemDrops.lua";
    /// <summary>The world rectangles of the Classic maps (from QuestieDB's Forever conversion file) apply to this game's old world.</summary>
    public bool ClassicMaps = true;
    /// <summary>
    /// When the game's RestedXP list also takes in an older game's guides, the groups of the ones made for this game: the
    /// others are passed over (TBC loads the Classic 1-22 route beside its own 1-70 one).
    /// </summary>
    public string? OwnGroups;
    /// <summary>The game's name in Questie's quest blacklist (Era, Tbc, MoP): which removed quests to leave out. None for Forever.</summary>
    public string? QuestieExpansion;
    /// <summary>Race bits of a race that starts without a faction (Mists: Pandaren). A zone whose quests are only for it is
    /// built once, for that race, since its players are neither Horde nor Alliance there.</summary>
    public long NeutralBits; public string? NeutralRace;
    /// <summary>Quests with no objectives that are handed in where they are given are real in this game (from Cataclysm
    /// on: a scene to watch, "Don't Go Into the Light!"), not a gap in the data to warn about.</summary>
    public bool TalkQuests;
    /// <summary>Capital cities planned as part of a zone, beyond Classic's six: zone area ID -> city area IDs.</summary>
    public Dictionary<int, int[]> MoreCities = new();
    public bool IsForever => Key == "forever";

    /// <summary>Forever keeps the folders it always had (zones, locks, guides); every other game has a subfolder of its own.</summary>
    public string Folder(string root) => IsForever ? root : Path.Combine(root, Key);
}

public static class Games
{
    internal static readonly (string Name, int Bit)[] ClassicClasses =
    {
        ("Warrior", 1), ("Paladin", 2), ("Hunter", 4), ("Rogue", 8), ("Priest", 16), ("Shaman", 64), ("Mage", 128), ("Warlock", 256), ("Druid", 1024),
    };
    static readonly (string Name, int Bit)[] MistsClasses =
    {
        ("Warrior", 1), ("Paladin", 2), ("Hunter", 4), ("Rogue", 8), ("Priest", 16), ("DeathKnight", 32), ("Shaman", 64), ("Mage", 128), ("Warlock", 256), ("Monk", 512), ("Druid", 1024),
    };
    internal static readonly int[] ClassicXp =
    {
        0, 400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 7600, 8800, 10100, 11400, 12900, 14400, 16000, 17700, 19400, 21300,
        23200, 25200, 27300, 29400, 31700, 34000, 36400, 38900, 41400, 44300, 47400, 50800, 54500, 58600, 62800, 67100, 71600, 76100, 80800, 85700,
        90700, 95800, 101000, 106300, 111800, 117500, 123200, 129100, 135100, 141200, 147500, 153900, 160400, 167100, 173900, 180800, 187900, 195000, 202300, 209800,
        217400,
    };
    // from warcraft.wiki.gg "Experience to level": The Burning Crusade after patch 2.3, and Mists of Pandaria (5.x);
    // the wiki's 21,120 for level 28 in Mists is taken as the 27,120 its neighbours point to
    static readonly int[] TbcXp =
    {
        0, 400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 7600, 8700, 9800, 11000, 12300, 13600, 15000, 16400, 17800, 19300,
        20800, 22400, 24000, 25500, 27200, 28900, 30500, 32200, 33900, 36300, 38800, 41600, 44600, 48000, 51400, 55000, 58700, 62400, 66200, 70200,
        74300, 78500, 82800, 87100, 91600, 96300, 101000, 105800, 110700, 115700, 120900, 126100, 131500, 137000, 142500, 148200, 154000, 159900, 165800, 172000,
        494000, 574700, 614400, 650300, 682300, 710200, 734100, 753700, 768900, 779700,
        800000,
    };
    static readonly int[] MistsXp =
    {
        0, 400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 6080, 6960, 7840, 8800, 9840, 10800, 12000, 13120, 14240, 15400,
        16640, 17920, 19200, 20400, 21760, 23120, 24400, 25760, 27120, 29040, 31040, 33280, 35680, 38400, 41120, 44000, 46960, 49920, 52960, 56160,
        74300, 78500, 82800, 87100, 91600, 96300, 101000, 105800, 110700, 115700, 120900, 126100, 131500, 137000, 142500, 148200, 154000, 159900, 165800, 172000,
        290000, 317000, 349000, 386000, 428000, 475000, 527000, 585000, 648000, 717000, 812700, 821000, 830000, 838000, 847000, 855300, 865000, 873000, 882000, 891000,
        1686300, 2121500, 2642640, 3434200, 4582500, 13000000, 15080000, 18980000, 22880000, 27560000,
        28000000,
    };

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
        Key = "classic", QuestieExpansion = "Era", Label = "Classic Era", Flavor = "Vanilla", MaxLevel = 60, HeaderTag = "#classic", GuideList = "GuideList-classic.xml",
        Interface = "11508, 11509",
        Horde = ClassicHorde, Alliance = ClassicAlliance, Combos = ClassicCombos.ToHashSet(),
    };

    static readonly (string, long)[] TbcHorde = ClassicHorde.Append(("BloodElf", 512)).ToArray();
    static readonly (string, long)[] TbcAlliance = ClassicAlliance.Append(("Draenei", 1024)).ToArray();
    static readonly (string, string)[] TbcAdds =
    {
        ("BloodElf", "Paladin"), ("BloodElf", "Hunter"), ("BloodElf", "Rogue"), ("BloodElf", "Priest"), ("BloodElf", "Mage"), ("BloodElf", "Warlock"),
        ("Draenei", "Warrior"), ("Draenei", "Paladin"), ("Draenei", "Hunter"), ("Draenei", "Priest"), ("Draenei", "Shaman"), ("Draenei", "Mage"),
    };
    // Silvermoon with Eversong Woods, the Exodar with Azuremyst Isle, Shattrath with Terokkar Forest
    static readonly Dictionary<int, int[]> TbcCities = new() { [3430] = new[] { 3487 }, [3524] = new[] { 3557 }, [3519] = new[] { 3703 } };

    public static readonly GameProfile Tbc = new()
    {
        Key = "tbc", QuestieExpansion = "Tbc", Label = "The Burning Crusade", Flavor = "TBC", MaxLevel = 70, HeaderTag = "#tbc", GuideList = "GuideList-tbc.xml",
        Interface = "20505, 20506", Horde = TbcHorde, Alliance = TbcAlliance, Combos = ClassicCombos.Concat(TbcAdds).ToHashSet(),
        XpNext = TbcXp, QuestXpFile = "support/QuestXP/xpDB-tbc.lua", DropFile = "support/DropTables/tbcItemDrops.lua",
        OwnGroups = "TBC", MoreCities = TbcCities,
    };

    // Mists: the Cataclysm-era world. Its maps have other numbers and shapes than Classic's, so none of Classic's map
    // sizes apply; zones are planned on map percent until map sizes for it are added
    static readonly Dictionary<string, string[]> MistsClassesOf = new()
    {
        ["Human"] = new[] { "Warrior", "Paladin", "Hunter", "Rogue", "Priest", "DeathKnight", "Mage", "Warlock", "Monk" },
        ["Dwarf"] = new[] { "Warrior", "Paladin", "Hunter", "Rogue", "Priest", "DeathKnight", "Shaman", "Mage", "Warlock", "Monk" },
        ["NightElf"] = new[] { "Warrior", "Hunter", "Rogue", "Priest", "DeathKnight", "Mage", "Monk", "Druid" },
        ["Gnome"] = new[] { "Warrior", "Rogue", "Priest", "DeathKnight", "Mage", "Warlock", "Monk" },
        ["Draenei"] = new[] { "Warrior", "Paladin", "Hunter", "Priest", "DeathKnight", "Shaman", "Mage", "Monk" },
        ["Worgen"] = new[] { "Warrior", "Hunter", "Rogue", "Priest", "DeathKnight", "Mage", "Warlock", "Druid" },
        ["Pandaren"] = new[] { "Warrior", "Hunter", "Rogue", "Priest", "Shaman", "Mage", "Monk" },
        ["Orc"] = new[] { "Warrior", "Hunter", "Rogue", "DeathKnight", "Shaman", "Mage", "Warlock", "Monk" },
        ["Undead"] = new[] { "Warrior", "Hunter", "Rogue", "Priest", "DeathKnight", "Mage", "Warlock", "Monk" },
        ["Tauren"] = new[] { "Warrior", "Paladin", "Hunter", "Priest", "DeathKnight", "Shaman", "Monk", "Druid" },
        ["Troll"] = new[] { "Warrior", "Hunter", "Rogue", "Priest", "DeathKnight", "Shaman", "Mage", "Warlock", "Monk", "Druid" },
        ["BloodElf"] = new[] { "Warrior", "Paladin", "Hunter", "Rogue", "Priest", "DeathKnight", "Mage", "Warlock", "Monk" },
        ["Goblin"] = new[] { "Warrior", "Hunter", "Rogue", "Priest", "DeathKnight", "Shaman", "Mage", "Warlock" },
    };

    public static readonly GameProfile Mists = new()
    {
        Key = "mop", QuestieExpansion = "MoP", NeutralBits = 8388608 | 16777216 | 33554432, NeutralRace = "Pandaren", TalkQuests = true, Label = "Mists of Pandaria", Flavor = "Mists", MaxLevel = 90, HeaderTag = "#mop", GuideList = "GuideList-mop.xml",
        Interface = "50503, 50504",
        // a Pandaren counts for both sides: the neutral bit (the Wandering Isle) plus the side's own
        Horde = TbcHorde.Append(("Goblin", 256)).Append(("Pandaren", 8388608 | 33554432)).ToArray(),
        Alliance = TbcAlliance.Append(("Worgen", 2097152)).Append(("Pandaren", 8388608 | 16777216)).ToArray(),
        Combos = MistsClassesOf.SelectMany(kv => kv.Value.Select(c => (kv.Key, c))).ToHashSet(),
        Classes = MistsClasses, XpNext = MistsXp, ClassicMaps = false,
        ZoneSupport = "support/Zones/MoP", QuestXpFile = "support/QuestXP/xpDB-mop.lua", DropFile = "support/DropTables/mopItemDrops.lua",
        OwnGroups = "MoP|Starting Zone|Death Knight", MoreCities = TbcCities,
    };

    public static readonly GameProfile[] All = { Forever, Classic, Tbc, Mists };

    /// <summary>The game this run plans for (set once from --game, before anything else reads game data).</summary>
    public static GameProfile Current { get; private set; } = Forever;

    public static GameProfile Use(string? key)
    {
        if (string.IsNullOrWhiteSpace(key)) return Current = Forever;
        string k = key.Trim().ToLowerInvariant() switch { "era" or "vanilla" or "classic-era" => "classic", "bc" or "tbc-anniversary" => "tbc", "mists" or "pandaria" => "mop", var x => x };
        var g = All.FirstOrDefault(x => x.Key == k);
        if (g == null) throw new InvalidOperationException($"--game must be one of: {string.Join(", ", All.Select(x => x.Key))}.");
        return Current = g;
    }
}
