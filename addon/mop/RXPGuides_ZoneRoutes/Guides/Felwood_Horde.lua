-- 46-51 Felwood: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 46, 53).
-- Split into 3 guides, listed under "46 - 54 Felwood" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Felwood.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 46 - 54 Felwood
#subweight -46
#name 46-48 Felwood: around Totem of Ruumbo
#next Zone Routes (Horde)\48-50 Felwood: around Feronas Sindweller

step
    .goto 77,51.41,80.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
    .accept 28100 >>Accept A Talking Totem
    .target Grazle
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28536 >>Turn in The Curse of Zin-Malor
    .target Kelek Skykeeper
    .isOnQuest 28536
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28472 >>Turn in Words of the High Chief
    .target Kelek Skykeeper
    .isOnQuest 28472
step
    .goto 77,50.91,80.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .accept 28148 >>Accept Culling the Corrupted
    .target Taronn Redfeather
step
    #completewith Along8
    >>As you go: Kill |cRXP_ENEMY_Angerclaw Bears|r and |cRXP_ENEMY_Felpaw Wolfs|r. Loot them for |cRXP_LOOT_Corrupted Pelt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28148,1 --Corrupted Pelt (10)
    .mob Angerclaw Bear
    .mob Felpaw Wolf
step
    .goto 77,51.13,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenell Leafrunner|r
    .accept 27997 >>Accept The Corruption of the Jadefire
    .target Tenell Leafrunner
step
    .goto 77,51.49,83.76
    >>Click the |cRXP_PICK_Totem of Ruumbo|r
    .turnin 28100 >>Turn in A Talking Totem
    .accept 27989 >>Accept Ruumbo Demands Honey
    .accept 27994 >>Accept Ruumbo Demands Justice
step
    #completewith Along7
    >>As you go: Loot the |cRXP_PICK_Felwood Bee Hives|r for |cRXP_LOOT_Deadwood Honey Glob|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27989,1 --Deadwood Honey Glob (10)
step
    #loop
    .goto 77,48.95,90.24,0
    .goto 77,48.95,90.24,40,0
    .goto 77,46.54,88.64,40,0
    >>Kill |cRXP_ENEMY_Deadwood Warriors|r, |cRXP_ENEMY_Deadwood Gardeners|r, |cRXP_ENEMY_Deadwood Pathfinders|r and |cRXP_ENEMY_Deadwood Kill Credits|r
    .complete 27994,1 --Deadwood Warrior (8)
    .mob Deadwood Warrior
    .mob Deadwood Gardener
    .mob Deadwood Pathfinder
    .mob Deadwood Kill Credit
step
    #label Along7
    .goto 77,51.49,83.76
    >>Click the |cRXP_PICK_Totem of Ruumbo|r
    .turnin 27994 >>Turn in Ruumbo Demands Justice
step
    #label Along8
    #loop
    .goto 77,50.76,85.02,0
    .goto 77,50.76,85.02,40,0
    .goto 77,48.73,86.30,40,0
    .goto 77,48.35,91.20,40,0
    >>Loot the |cRXP_PICK_Felwood Bee Hives|r for |cRXP_LOOT_Deadwood Honey Glob|r
    .complete 27989,1 --Deadwood Honey Glob (10)
step
    #loop
    .goto 77,43.52,85.91,0
    .goto 77,43.52,85.91,40,0
    .goto 77,42.45,83.24,40,0
    >>Kill |cRXP_ENEMY_Jadefire Felsworns|r and |cRXP_ENEMY_Jadefire Satyrs|r
    .complete 27997,1 --Jadefire Felsworn (8)
    .mob Jadefire Felsworn
    .mob Jadefire Satyr
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .accept 28000 >>Accept Do the Imp-Possible
    .target Arcanist Delaris
step
    #loop
    .goto 77,47.62,75.76,0
    .goto 77,47.62,75.76,40,0
    .goto 77,48.88,80.50,40,0
    .goto 77,52.00,81.67,40,0
    >>Kill |cRXP_ENEMY_Angerclaw Bears|r and |cRXP_ENEMY_Felpaw Wolfs|r. Loot them for |cRXP_LOOT_Corrupted Pelt|r
    .complete 28148,1 --Corrupted Pelt (10)
    .mob Angerclaw Bear
    .mob Felpaw Wolf
step
    .goto 77,48.00,73.05
    >>Interact with |cRXP_FRIENDLY_Impsy|r
    .complete 28000,1 --Impsy
    .target Impsy
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .turnin 28000 >>Turn in Do the Imp-Possible
    .target Arcanist Delaris
step
    .goto 77,41.88,71.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .accept 28049 >>Accept See the Invisible
    .target Impsy
step
    .goto 77,44.01,30.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moahi|r
    .target Moahi
    .home >>Set your Hearthstone to Moahi's inn
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .accept 28360 >>Accept Running Their Course
    .target Tender Puregrove
    .xp <46,1
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .accept 28361 >>Accept Squirrely Clean
    .target Tender Puregrove
    .xp <46,1
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .accept 28341 >>Accept Collecting Corruption
    .target Elessa Starbreeze
    .xp <46,1
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .accept 28342 >>Accept Fel To Pieces
    .target Elessa Starbreeze
    .xp <46,1
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .accept 28358 >>Accept Hunting the Damned
    .target Hurak Wildhorn
    .xp <46,1
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .accept 28359 >>Accept The Core of Kroshius
    .target Hurak Wildhorn
    .xp <46,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28542 >>Accept Warchief's Command: Felwood!
    .accept 28504 >>Accept Warchief's Command: Thousand Needles!
    .accept 28509 >>Accept Warchief's Command: Tanaris!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28510 >>Accept Warchief's Command: Feralas!
    .accept 28548 >>Accept Warchief's Command: Desolace!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .turnin 27258 >>Turn in The Black Shield
    .target Mosarn
    .isOnQuest 27258
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .accept 27292 >>Accept Return to Krog
    .target Mosarn
    .isQuestTurnedIn 27258 --any of: The Black Shield
    .xp <34,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 77 >>Leave Thunder Bluff for Felwood
    .zoneskip 77
step
    #completewith next
    .hs >>Hearth to Moahi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .xp 46 >>Grind to level 46 (Collecting Corruption needs it)
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .accept 28341 >>Accept Collecting Corruption
    .target Elessa Starbreeze
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .accept 28342 >>Accept Fel To Pieces
    .target Elessa Starbreeze
    .xp <46,1
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .accept 28358 >>Accept Hunting the Damned
    .target Hurak Wildhorn
    .xp <46,1
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .accept 28359 >>Accept The Core of Kroshius
    .target Hurak Wildhorn
    .xp <46,1
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .accept 28360 >>Accept Running Their Course
    .target Tender Puregrove
    .xp <46,1
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .accept 28361 >>Accept Squirrely Clean
    .target Tender Puregrove
    .xp <46,1
step
    .goto 77,43.97,61.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .accept 28116 >>Accept Crying Violet
    .target Greta Mosshoof
step
    .goto 77,44.10,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .accept 28121 >>Accept Forces of Jaedenar
    .target Jessir Moonbow
step
    #loop
    .goto 77,41.75,66.20,0
    .goto 77,41.75,66.20,40,0
    .goto 77,40.39,71.47,40,0
    >>Kill |cRXP_ENEMY_Cursed Ooze|r and loot |cRXP_LOOT_Cursed Ooze|r
    .complete 28049,1 --Cursed Ooze (1)
    .mob Cursed Ooze
step
    .goto 77,41.88,71.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    .turnin 28049 >>Turn in See the Invisible
    .accept 28044 >>Accept Touch the Untouchable
    .target Impsy
step
    .goto 77,42.26,79.95
    >>Kill |cRXP_ENEMY_Vorlus|r and loot |cRXP_LOOT_Claw of Tichondrius|r
    .complete 28044,1 --Claw of Tichondrius (1)
    .mob Vorlus
step
    .goto 77,51.49,83.76
    >>Click the |cRXP_PICK_Totem of Ruumbo|r
    .turnin 27989 >>Turn in Ruumbo Demands Honey
    .accept 27995 >>Accept Dance for Ruumbo!
step
    .goto 77,51.13,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenell Leafrunner|r
    .turnin 27997 >>Turn in The Corruption of the Jadefire while you are here
    .isQuestComplete 27997
    .target Tenell Leafrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,51.13,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenell Leafrunner|r
    .turnin 28542 >>Turn in Warchief's Command: Felwood! while you are here
    .isQuestComplete 28542
    .target Tenell Leafrunner
step
    .goto 77,51.50,83.70
    >>Ruumbo's Secret Discovered
    .complete 27995,1 --Ruumbo's Secret Discovered
step
    .goto 77,51.41,80.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazle|r
    .turnin 27995 >>Turn in Dance for Ruumbo!
    .target Grazle
step
    .goto 77,50.91,80.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taronn Redfeather|r
    .turnin 28148 >>Turn in Culling the Corrupted
    .target Taronn Redfeather
step
    .goto 77,51.13,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenell Leafrunner|r
    .turnin 27997 >>Turn in The Corruption of the Jadefire
    .turnin 28542 >>Turn in Warchief's Command: Felwood! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 28150 >>Accept An Arcane Ally
    .target Tenell Leafrunner
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .turnin 28044 >>Turn in Touch the Untouchable
    .turnin 28150 >>Turn in An Arcane Ally
    .accept 28113 >>Accept Break the Unbreakable
    .target Arcanist Delaris
step
    .goto 77,42.02,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .accept 28102 >>Accept Fight the Power
    .target Eridan Bluewind
step
    .goto 77,38.19,66.69
    >>Kill |cRXP_ENEMY_Jadefire Shadowstalkers|r and |cRXP_ENEMY_Jadefire Rogues|r
    .complete 28102,1 --Jadefire Shadowstalker (8)
    .mob Jadefire Shadowstalker
    .mob Jadefire Rogue
step
    .goto 77,33.42,65.72
    >>Kill |cRXP_ENEMY_Xavathras|r
    .complete 28113,1 --Xavathras slain (1)
    .mob Xavathras
step
    #loop
    .goto 77,36.74,60.30,0
    .goto 77,36.74,60.30,40,0
    .goto 77,39.52,58.80,40,0
    .goto 77,38.39,53.92,40,0
    >>Kill |cRXP_ENEMY_Jaedenar Cultists|r, |cRXP_ENEMY_Jaedenar Guardians|r, |cRXP_ENEMY_Jaedenar Adepts|r and |cRXP_ENEMY_Jaedenar Hounds|r
    >>Pick up |cRXP_PICK_Crying Violet|r from the ground
    .complete 28121,1 --Jaedenar Cultist (8)
    .complete 28116,1 --Crying Violet (8)
    .mob Jaedenar Cultist
    .mob Jaedenar Guardian
    .mob Jaedenar Adept
    .mob Jaedenar Hound
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28121 >>Turn in Forces of Jaedenar
    .turnin 28116 >>Turn in Crying Violet
    .accept 28119 >>Accept Purity From Corruption
    .target Andalar Shadevale
step
    .goto 77,35.94,59.29
    >>Open the |cRXP_PICK_Corrupt Jaedenar Moonwell|r. Loot it for |cRXP_LOOT_Corrupt Moonwell Water|r
    .complete 28119,1 --Corrupt Moonwell Water (1)
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28119 >>Turn in Purity From Corruption
    .accept 28129 >>Accept The Demon Prince
    .target Andalar Shadevale
step
    .goto 77,37.00,55.47
    >>Kill |cRXP_ENEMY_Prince Xavalis|r
    .complete 28129,1 --Prince Xavalis slain (1)
    .mob Prince Xavalis
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28129 >>Turn in The Demon Prince
    .accept 28126 >>Accept Dousing the Flames of Protection
    .accept 28131 >>Accept Twin Temptresses
    .target Andalar Shadevale
step
    .goto 77,37.15,54.88
    >>Click the |cRXP_PICK_Brazier of Pain|r
    >>Click the |cRXP_PICK_Brazier of Hatred|r
    >>Click the |cRXP_PICK_Brazier of Suffering|r
    >>Click the |cRXP_PICK_Brazier of Malice|r
    .complete 28126,1 --Brazier of Pain
    .complete 28126,4 --Brazier of Hatred
    .complete 28126,3 --Brazier of Suffering
    .complete 28126,2 --Brazier of Malice
step
    .goto 77,38.93,50.41
    >>Kill |cRXP_ENEMY_Moora|r
    >>Kill |cRXP_ENEMY_Salia|r
    .complete 28131,1 --Moora slain (1)
    .complete 28131,2 --Salia slain (1)
    .mob Moora
    .mob Salia
step
    .goto 77,43.97,61.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 28126 >>Turn in Dousing the Flames of Protection
    .target Greta Mosshoof
step
    .goto 77,44.10,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .accept 28128 >>Accept The Inner Circle
    .target Jessir Moonbow
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28131 >>Turn in Twin Temptresses
    .accept 28153 >>Accept Shadow Lord Fel'dan
    .target Andalar Shadevale
step
    #loop
    .goto 77,38.32,52.57,0
    .goto 77,38.32,52.57,40,0
    .goto 77,40.59,48.14,40,0
    >>Kill |cRXP_ENEMY_Jaedenar Enforcers|r, |cRXP_ENEMY_Jaedenar Darkweavers|r, |cRXP_ENEMY_Jaedenar Hunters|r and |cRXP_ENEMY_Jaedenar Legionnaires|r
    >>Kill |cRXP_ENEMY_Shadow Lord Fel'dan|r
    .complete 28128,1 --Jaedenar Enforcer (8)
    .complete 28153,1 --Shadow Lord Fel'dan slain (1)
    .mob Jaedenar Enforcer
    .mob Jaedenar Darkweaver
    .mob Jaedenar Hunter
    .mob Jaedenar Legionnaire
    .mob Shadow Lord Fel'dan
step
    .goto 77,41.26,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altsoba Ragetotem|r
    .accept 28190 >>Accept The Tainted Ooze
    .target Altsoba Ragetotem
step
    #completewith Along47
    >>As you go: Kill |cRXP_ENEMY_Tainted Oozes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28190,1 --Tainted Ooze slain (8)
    .mob Tainted Ooze
step
    #label Along47
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .accept 28207 >>Accept A Slimy Situation
    .target Kelnir Leafsong
step
    #loop
    .goto 77,42.33,49.20,0
    .goto 77,42.33,49.20,40,0
    .goto 77,43.91,48.39,40,0
    .goto 77,39.87,48.48,40,0
    >>Kill |cRXP_ENEMY_Tainted Oozes|r
    >>Pick up |cRXP_PICK_Emerald Shimmercap|r from the ground
    .complete 28190,1 --Tainted Ooze slain (8)
    .complete 28207,1 --Emerald Shimmercap (7)
    .mob Tainted Ooze
step
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .turnin 28207 >>Turn in A Slimy Situation while you are here
    .isQuestComplete 28207
    .target Kelnir Leafsong
step
    .goto 77,41.26,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altsoba Ragetotem|r
    .turnin 28190 >>Turn in The Tainted Ooze
    .target Altsoba Ragetotem
step
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .turnin 28207 >>Turn in A Slimy Situation
    .accept 28208 >>Accept Winna's Kitten
    .target Kelnir Leafsong
step
    .goto 77,44.10,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessir Moonbow|r
    .turnin 28128 >>Turn in The Inner Circle
    .target Jessir Moonbow
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .turnin 28113 >>Turn in Break the Unbreakable
    .accept 28288 >>Accept Open Their Eyes
    .target Arcanist Delaris
step
    .goto 77,42.02,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eridan Bluewind|r
    .turnin 28102 >>Turn in Fight the Power
    .accept 28152 >>Accept Jaedenar Awaits
    .target Eridan Bluewind
step
    #loop
    .goto 77,41.59,77.68,0
    .goto 77,41.59,77.68,40,0
    .goto 77,42.42,79.74,40,0
    >>Interact with |cRXP_FRIENDLY_Jadefire Imps|r
    .complete 28288,1 --Jadefire Imp (20)
    .target Jadefire Imp
step
    .goto 77,41.90,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Delaris|r
    .turnin 28288 >>Turn in Open Their Eyes
    .target Arcanist Delaris
step
    .goto 77,36.35,58.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andalar Shadevale|r
    .turnin 28153 >>Turn in Shadow Lord Fel'dan
    .accept 28155 >>Accept Lord Banehollow
    .target Andalar Shadevale
step
    .goto 77,38.69,53.82
    >>Kill |cRXP_ENEMY_Winna's Kitten|r and loot |cRXP_LOOT_Kitty's Eartag|r
    .complete 28208,1 --Kitty's Eartag (1)
    .mob Winna's Kitten
step
    #completewith next
    .hs >>Hearth to Moahi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .accept 28358 >>Accept Hunting the Damned
    .accept 28359 >>Accept The Core of Kroshius
    .target Hurak Wildhorn
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .accept 28342 >>Accept Fel To Pieces
    .target Elessa Starbreeze
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .accept 28361 >>Accept Squirrely Clean
    .accept 28360 >>Accept Running Their Course
    .target Tender Puregrove
step
    #loop
    .goto 77,42.03,37.88,0
    .goto 77,42.03,37.88,40,0
    .goto 77,41.38,42.53,40,0
    >>Kill |cRXP_ENEMY_Infernal Sentries|r
    >>Kill |cRXP_ENEMY_Infernal Sentry|r and loot |cRXP_LOOT_Infernal Debris|r. It can also be picked up from |cRXP_PICK_Infernal Debris|r on the ground
    >>Kill |cRXP_ENEMY_Entropic Horrors|r. Loot them for |cRXP_LOOT_Entropic Essence|r
    .complete 28358,1 --Infernal Sentry slain (6)
    .complete 28342,1 --Infernal Debris (1)
    .complete 28341,1 --Entropic Essence (8)
    .mob Infernal Sentry
    .mob Entropic Horror
step
    .goto 77,38.40,47.91
    >>Kill |cRXP_ENEMY_Lord Banehollow|r
    .complete 28155,1 --Lord Banehollow slain (1)
    .mob Lord Banehollow
step
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .turnin 28208 >>Turn in Winna's Kitten
    .accept 28213 >>Accept Hazzard Disposal
    .target Kelnir Leafsong
step
    .goto 77,41.26,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altsoba Ragetotem|r
    .accept 28214 >>Accept Cleanup at Bloodvenom Post
    .target Altsoba Ragetotem
step
    .goto 77,44.11,61.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farlus Wildheart|r
    .turnin 28155 >>Turn in Lord Banehollow
    .accept 28305 >>Accept The Fate of Bloodvenom Post
    .target Farlus Wildheart
step
    .goto 77,43.97,61.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greta Mosshoof|r
    .turnin 28152 >>Turn in Jaedenar Awaits
    .target Greta Mosshoof
step
    #loop
    .goto 77,39.75,50.70,0
    .goto 77,39.75,50.70,40,0
    .goto 77,35.84,50.61,40,0
    >>Kill |cRXP_ENEMY_Winna Hazzard|r
    >>Kill |cRXP_ENEMY_Bloodvenom Slimeslaves|r
    .complete 28213,1 --Winna Hazzard slain (1)
    .complete 28214,1 --Bloodvenom Slimeslave slain (6)
    .mob Winna Hazzard
    .mob Bloodvenom Slimeslave
step
    .goto 77,41.26,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altsoba Ragetotem|r
    .turnin 28214 >>Turn in Cleanup at Bloodvenom Post
    .target Altsoba Ragetotem
step
    .goto 77,41.27,49.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelnir Leafsong|r
    .turnin 28213 >>Turn in Hazzard Disposal
    .turnin 28305 >>Turn in The Fate of Bloodvenom Post
    .accept 28306 >>Accept Whisperwind Grove
    .target Kelnir Leafsong
step
    .goto 77,47.89,39.83
    >>Kill |cRXP_ENEMY_Kroshius|r and loot |cRXP_LOOT_Kroshius' Infernal Core|r
    .complete 28359,1 --Kroshius' Infernal Core (1)
    .mob Kroshius
step
    #loop
    .goto 77,46.97,33.25,0
    .goto 77,46.97,33.25,40,0
    .goto 77,43.56,35.12,40,0
    >>Kill |cRXP_ENEMY_Felrot Coursers|r
    .complete 28360,1 --Felrot Courser slain (8)
    .mob Felrot Courser
step
    #loop
    .goto 77,44.30,33.62,0
    .goto 77,44.30,33.62,40,0
    .goto 77,41.38,34.92,40,0
    >>Interact with |cRXP_FRIENDLY_Tainted Squirrels|r
    .complete 28361,1 --Tainted Squirrel (6)
    .target Tainted Squirrel
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .turnin 28360 >>Turn in Running Their Course
    .turnin 28306 >>Turn in Whisperwind Grove
    .turnin 28361 >>Turn in Squirrely Clean
    .accept 28374 >>Accept Weeding the Lawn
    .target Tender Puregrove
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .turnin 28341 >>Turn in Collecting Corruption while you are here
    .isQuestComplete 28341
    .target Elessa Starbreeze
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .turnin 28342 >>Turn in Fel To Pieces while you are here
    .isQuestComplete 28342
    .target Elessa Starbreeze
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .turnin 28358 >>Turn in Hunting the Damned while you are here
    .isQuestComplete 28358
    .target Hurak Wildhorn
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .turnin 28359 >>Turn in The Core of Kroshius while you are here
    .isQuestComplete 28359
    .target Hurak Wildhorn
step
    #loop
    .goto 77,44.73,31.10,0
    .goto 77,44.73,31.10,40,0
    .goto 77,44.20,26.01,40,0
    >>Interact with |cRXP_FRIENDLY_Whisperwind Lashers|r
    .complete 28374,1 --Whisperwind Lasher (7)
    .target Whisperwind Lasher
step
    .goto 77,43.34,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tender Puregrove|r
    .turnin 28374 >>Turn in Weeding the Lawn
    .target Tender Puregrove
step
    .goto 77,43.45,28.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Selura|r
    .accept 28217 >>Accept Wanted: The Demon Hunter
    .target Huntress Selura
step
    .goto 77,43.93,28.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isural Forestsworn|r
    .accept 28229 >>Accept Nature and Nurture
    .target Isural Forestsworn
step
    .goto 77,43.94,27.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elessa Starbreeze|r
    .turnin 28341 >>Turn in Collecting Corruption
    .turnin 28342 >>Turn in Fel To Pieces
    .target Elessa Starbreeze
step
    .goto 77,44.01,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurak Wildhorn|r
    .turnin 28358 >>Turn in Hunting the Damned
    .turnin 28359 >>Turn in The Core of Kroshius
    .target Hurak Wildhorn
step
    .goto 77,48.66,25.16
    >>Fill the vial at the moonwell in Whisperwind Grove and pour it on the ground between the dead ancient protectors in Irontree Woods.
    .complete 28229,1 --Irontree Woods Island
    .target Irontree Woods Island
step
    .goto 77,48.66,25.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28229 >>Turn in Nature and Nurture
    .target ?
step
    .goto 77,48.70,25.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seedling Protector|r
    .accept 28219 >>Accept Buzzers for Baby
    .accept 28220 >>Accept Seeking Soil
    .target Seedling Protector
step
    #loop
    .goto 77,48.29,29.18,0
    .goto 77,48.29,29.18,40,0
    .goto 77,50.00,30.20,40,0
    >>Kill |cRXP_ENEMY_Ironwood Buzzers|r
    >>Click the |cRXP_PICK_Felwood Rich Soil|r
    .complete 28219,1 --Ironwood Buzzer slain (10)
    .complete 28220,1 --Felwood Rich Soil
    .mob Ironwood Buzzer
step
    .goto 77,48.70,25.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seedling Protector|r
    .turnin 28219 >>Turn in Buzzers for Baby
    .turnin 28220 >>Turn in Seeking Soil
    .target Seedling Protector
step
    .goto 77,48.34,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapling Protector|r
    .accept 28221 >>Accept These Roots Were Made For Stompin'
    .accept 28222 >>Accept Singin' in the Sun
    .target Sapling Protector
step
    .goto 77,49.80,22.06
    >>Kill |cRXP_ENEMY_Irontree Stompers|r
    .complete 28221,1 --Irontree Stomper slain (10)
    .mob Irontree Stomper
step
    #loop
    .goto 77,51.24,20.31,0
    .goto 77,51.24,20.31,40,0
    .goto 77,51.59,21.49,40,0
    .goto 77,52.25,23.49,40,0
    .goto 77,52.16,24.86,40,0
    .goto 77,50.98,25.39,40,0
    .goto 77,52.30,26.30,40,0
    >>Guide the Sapling Protector to 5 shafts of sunlight in Irontree Woods.
    .complete 28222,1 --Sunbeam Credit
    .target Sunbeam Credit
step
    .goto 77,48.34,28.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapling Protector|r
    .turnin 28221 >>Turn in These Roots Were Made For Stompin'
    .turnin 28222 >>Turn in Singin' in the Sun
    .target Sapling Protector
step
    .goto 77,45.57,20.13
    >>Kill |cRXP_ENEMY_Feronas Sindweller|r
    .complete 28217,1 --Feronas Sindweller slain (1)
    .mob Feronas Sindweller
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 46 - 54 Felwood
#subweight -46
#name 48-50 Felwood: around Feronas Sindweller
--RouteBuilder:next
#next Zone Routes (Horde)\50-52 Winterspring: around Donova Snowden;Zone Routes (Horde)\51-53 Un'Goro Crater: around Mor'vek;Zone Routes (Horde)\47-49 Searing Gorge: around Jack Rockleg

step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28217 >>Turn in Wanted: The Demon Hunter
    .target Feronas Sindweller
    .isOnQuest 28217
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28218 >>Accept A Destiny of Flame and Sorrow
    .target Feronas Sindweller
    .isQuestTurnedIn 28217 --any of: Wanted: The Demon Hunter
step
    .goto 77,45.27,19.63
    >>Kill |cRXP_ENEMY_Arthas|r
    .complete 28218,1 --Arthas slain (1)
    .mob Arthas
    .isOnQuest 28218
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28218 >>Turn in A Destiny of Flame and Sorrow
    .target Feronas Sindweller
    .isOnQuest 28218
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28256 >>Accept The Skull of Gul'dan
    .target Feronas Sindweller
    .isQuestTurnedIn 28218 --any of: A Destiny of Flame and Sorrow
step
    .goto 77,45.07,19.60
    >>Relive Illidan's battle for the Skull of Gul'dan.
    .complete 28256,1 --Skull of Gul'dan
    .target Skull of Gul'dan
    .isOnQuest 28256
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28256 >>Turn in The Skull of Gul'dan
    .target Feronas Sindweller
    .isOnQuest 28256
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28257 >>Accept The Fall of Tichondrius
    .target Feronas Sindweller
    .isQuestTurnedIn 28256 --any of: The Skull of Gul'dan
step
    .goto 77,45.13,19.70
    >>Kill |cRXP_ENEMY_Tichondrius|r
    .complete 28257,1 --Tichondrius slain (1)
    .mob Tichondrius
    .isOnQuest 28257
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28257 >>Turn in The Fall of Tichondrius
    .target Feronas Sindweller
    .isOnQuest 28257
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28261 >>Accept Deceivers In Our Midst
    .target Feronas Sindweller
    .isQuestTurnedIn 28257 --any of: The Fall of Tichondrius
step
    #loop
    .goto 77,42.43,20.22,0
    .goto 77,42.43,20.22,40,0
    .goto 77,43.24,16.89,40,0
    >>Kill |cRXP_ENEMY_Jadefire Shifters|r
    .complete 28261,1 --Jadefire Shifter slain (12)
    .mob Jadefire Shifter
    .isOnQuest 28261
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .turnin 28261 >>Turn in Deceivers In Our Midst
    .target Feronas Sindweller
    .isOnQuest 28261
step
    .goto 77,45.57,20.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feronas Sindweller|r
    .accept 28264 >>Accept Navarax's Gambit
    .target Feronas Sindweller
    .isQuestTurnedIn 28261 --any of: Deceivers In Our Midst
step
    .goto 77,49.48,21.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flourishing Protector|r
    .accept 28224 >>Accept The Last Protector
    .target Flourishing Protector
    .isQuestTurnedIn 28221 --These Roots Were Made For Stompin'
    .isQuestTurnedIn 28222 --Singin' in the Sun
step
    .goto 77,53.19,24.04
    >>Kill |cRXP_ENEMY_Withered Protector|r
    .complete 28224,1 --Withered Protector slain (1)
    .mob Withered Protector
    .isOnQuest 28224
step
    .goto 77,56.76,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alton Redding|r
    .accept 28387 >>Accept Burnout
    .target Alton Redding
    .isQuestTurnedIn 28385 --Oil and Irony
    .isQuestTurnedIn 28386 --Borrowed Bombs
    .xp <47,1
step
    #loop
    .goto 77,54.73,17.81,0
    .goto 77,54.73,17.81,40,0
    .goto 77,55.84,16.33,40,0
    .goto 77,54.64,15.46,40,0
    .goto 77,52.80,14.58,40,0
    .goto 77,56.17,13.92,40,0
    .goto 77,53.93,13.49,40,0
    .goto 77,55.43,11.98,40,0
    >>Use the Stolen Irontree Explosives to ignite 7 Oil Geysers in Irontree Clearing.
    .complete 28387,1 --Oil Gusher
    .target Oil Gusher
    .isOnQuest 28387
step
    .goto 77,56.76,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alton Redding|r
    .turnin 28387 >>Turn in Burnout
    .target Alton Redding
    .isOnQuest 28387
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,56.33,8.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Drilldozer|r
    .accept 28333 >>Accept It's Time to Oil Up
    .accept 28334 >>Accept A Flare Fight
    .target Darla Drilldozer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along110
    >>As you go: Kill |cRXP_ENEMY_Talonbranch Prowlers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28334,1 --Talonbranch Prowler slain (8)
    .mob Talonbranch Prowler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along110
    #loop
    .goto 77,51.73,15.09,0
    .goto 77,51.73,15.09,40,0
    .goto 77,50.81,17.67,40,0
    >>Interact with |cRXP_FRIENDLY_Irontree Shredders|r
    .complete 28333,1 --Irontree Shredder (7)
    .target Irontree Shredder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 77,50.64,14.74,0
    .goto 77,50.64,14.74,40,0
    .goto 77,53.54,17.71,40,0
    >>Kill |cRXP_ENEMY_Talonbranch Prowlers|r
    .complete 28334,1 --Talonbranch Prowler slain (8)
    .mob Talonbranch Prowler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,56.33,8.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Drilldozer|r
    .turnin 28333 >>Turn in It's Time to Oil Up
    .turnin 28334 >>Turn in A Flare Fight
    .accept 28357 >>Accept Take it to the Tree
    .accept 28370 >>Accept Wisp-napping
    .target Darla Drilldozer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 77,62.99,19.62,0
    .goto 77,62.99,19.62,40,0
    .goto 77,63.74,21.70,40,0
    >>Kill |cRXP_ENEMY_Talonbranch Wisps|r
    >>Kill |cRXP_ENEMY_Talonbranch Defenders|r
    .complete 28370,1 --Talonbranch Wisp slain (5)
    .complete 28357,1 --Talonbranch Defender slain (8)
    .mob Talonbranch Wisp
    .mob Talonbranch Defender
step
    #completewith next
    .hs >>Hearth to Moahi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 77,44.76,29.18
    >>Kill |cRXP_ENEMY_Arch Druid Navarax|r
    .complete 28264,1 --Arch Druid Navarax slain (1)
    .mob Arch Druid Navarax
    .isOnQuest 28264
step
    .goto 77,43.45,28.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Selura|r
    .turnin 28264 >>Turn in Navarax's Gambit
    .target Huntress Selura
    .isOnQuest 28264
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,44.23,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fez Hobnob|r
    .accept 28372 >>Accept Back to Business
    .target Fez Hobnob
    .isQuestTurnedIn 28264 --any of: Navarax's Gambit
step
    .goto 77,49.48,21.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flourishing Protector|r
    .turnin 28224 >>Turn in The Last Protector
    .target Flourishing Protector
    .isOnQuest 28224
step
    .goto 77,49.48,21.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flourishing Protector|r
    .accept 28228 >>Accept Rejoining the Forest
    .target Flourishing Protector
    .isQuestTurnedIn 28224 --any of: The Last Protector
step
    .goto 77,48.70,25.20
    >>Protector brought to hill
    .complete 28228,1 --Protector brought to hill
    .isOnQuest 28228
step
    .goto 77,48.66,25.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28228 >>Turn in Rejoining the Forest
    .target ?
    .isOnQuest 28228
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,56.33,8.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Drilldozer|r
    .turnin 28372 >>Turn in Back to Business
    .target Darla Drilldozer
    .isOnQuest 28372
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,56.33,8.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Drilldozer|r
    .turnin 28357 >>Turn in Take it to the Tree
    .turnin 28370 >>Turn in Wisp-napping
    .accept 28339 >>Accept Is Your Oil Running?
    .accept 28336 >>Accept Slap and Cap
    .target Darla Drilldozer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along123
    >>As you go: Kill |cRXP_ENEMY_Oily Sludges|r. Loot them for |cRXP_LOOT_Crude Tarball|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28339,1 --Crude Tarball (10)
    .mob Oily Sludge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along123
    #loop
    .goto 77,55.25,13.77,0
    .goto 77,55.25,13.77,40,0
    .goto 77,54.17,18.02,40,0
    >>Interact with |cRXP_FRIENDLY_Panicking Workers|r
    .complete 28336,1 --Panicking Worker (7)
    .target Panicking Worker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 77,55.85,14.56,0
    .goto 77,55.85,14.56,40,0
    .goto 77,53.79,17.28,40,0
    >>Kill |cRXP_ENEMY_Oily Sludges|r. Loot them for |cRXP_LOOT_Crude Tarball|r
    .complete 28339,1 --Crude Tarball (10)
    .mob Oily Sludge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,56.33,8.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Drilldozer|r
    .turnin 28339 >>Turn in Is Your Oil Running?
    .turnin 28336 >>Turn in Slap and Cap
    .accept 28380 >>Accept Pikwik in Peril
    .target Darla Drilldozer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,54.68,18.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Pikwik|r
    .turnin 28380 >>Turn in Pikwik in Peril
    .accept 28340 >>Accept A Bomb Deal
    .accept 28335 >>Accept Turn It Off! Turn It Off!
    .target Foreman Pikwik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 77,57.61,22.07,0
    .goto 77,57.61,22.07,40,0
    .goto 77,59.58,21.34,40,0
    >>Loot the |cRXP_PICK_Irontree Explosives|r for |cRXP_LOOT_Irontree Explosives|r
    .complete 28340,1 --Irontree Explosives (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,60.49,22.38
    >>Click the |cRXP_PICK_Master Control Pump|r
    .turnin 28335 >>Turn in Turn It Off! Turn It Off!
    .accept 28368 >>Accept Fire in the Hole!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,55.69,22.32
    >>Kill |cRXP_ENEMY_Grolvitar the Everburning|r
    .complete 28368,1 --Grolvitar the Everburning slain (1)
    .mob Grolvitar the Everburning
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 77,54.68,18.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Pikwik|r
    .turnin 28340 >>Turn in A Bomb Deal
    .target Foreman Pikwik
step
    .goto 77,56.33,8.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Drilldozer|r
    .turnin 28368 >>Turn in Fire in the Hole! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 28373 >>Accept Timbermaw Hold
    .target Darla Drilldozer
step
    .goto 77,59.68,8.12
    >>Click the |cRXP_PICK_Deadwood Cauldron|r
    .accept 28467 >>Accept Mystery Goo
    .isQuestTurnedIn 28464 --any of: Falling to Corruption
    .xp <49,1
step
    .goto 77,59.73,8.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winterfall Runner|r
    .accept 28656 >>Accept Strange Life Forces
    .target Winterfall Runner
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 28373 >>Turn in Timbermaw Hold
    .accept 28338 >>Accept Deadwood of the North
    .accept 28366 >>Accept Disarming Bears
    .target Nafien
step
    #completewith Along135
    >>As you go: Kill |cRXP_ENEMY_Deadwood Avengers|r, |cRXP_ENEMY_Deadwood Shamans|r and |cRXP_ENEMY_Deadwood Den Watchers|r. Loot the |cRXP_PICK_Deadwood Weapon Piles|r for |cRXP_LOOT_Deadwood Weapons|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28338,1 --Deadwood Avenger (8)
    .complete 28366,1 --Deadwood Weapons (7)
    .mob Deadwood Avenger
    .mob Deadwood Shaman
    .mob Deadwood Den Watcher
step
    #label Along135
    .goto 77,64.09,10.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ferli|r
    .accept 28362 >>Accept Stupid Drizle!
    .target Ferli
step
    #loop
    .goto 77,62.24,9.93,0
    .goto 77,62.24,9.93,40,0
    .goto 77,61.92,13.83,40,0
    >>Kill |cRXP_ENEMY_Deadwood Avengers|r, |cRXP_ENEMY_Deadwood Shamans|r and |cRXP_ENEMY_Deadwood Den Watchers|r
    >>Loot the |cRXP_PICK_Deadwood Weapon Piles|r for |cRXP_LOOT_Deadwood Weapons|r
    .complete 28338,1 --Deadwood Avenger (8)
    .complete 28366,1 --Deadwood Weapons (7)
    .mob Deadwood Avenger
    .mob Deadwood Shaman
    .mob Deadwood Den Watcher
step
    .goto 77,60.57,9.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizle|r
    .turnin 28362 >>Turn in Stupid Drizle!
    .accept 28364 >>Accept The Chieftain's Key
    .target Drizle
step
    .goto 77,62.09,9.92
    >>Kill |cRXP_ENEMY_Chieftain Bloodmaw|r and loot |cRXP_LOOT_Drizle's Key|r
    .complete 28364,1 --Drizle's Key (1)
    .mob Chieftain Bloodmaw
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 28338 >>Turn in Deadwood of the North while you are here
    .isQuestComplete 28338
    .target Nafien
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 28366 >>Turn in Disarming Bears while you are here
    .isQuestComplete 28366
    .target Nafien
step
    .goto 77,60.57,9.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizle|r
    .turnin 28364 >>Turn in The Chieftain's Key
    .target Drizle
step
    .goto 77,64.01,10.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nafien|r
    .turnin 28338 >>Turn in Deadwood of the North
    .turnin 28366 >>Turn in Disarming Bears
    .accept 28521 >>Accept Speak to Salfa
    .target Nafien
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 88,22.76,14.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Archmage Shymm
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 88,25.24,13.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delano Morisett|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Delano Morisett
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 88,21.99,18.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kador Cloudsong|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Kador Cloudsong
step
    .goto 88,24.56,22.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai Cross|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Malakai Cross
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,34.40,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .accept 2965 >>Accept Portents of Uldum
    .target Sage Truthseeker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28545 >>Accept Warchief's Command: Winterspring!
    .accept 28526 >>Accept Warchief's Command: Un'Goro Crater!
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 88,56.99,89.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sark Ragetotem|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Sark Ragetotem
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 88,57.30,89.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .accept 27278 >>Accept Grimshot's Call
    .target Holt Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1205 >>Accept Deadmire
    .target Melor Stonehoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
    .isQuestComplete 1205
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,75.65,31.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 2965 >>Turn in Portents of Uldum
    .target Nara Wildmane
step << Tauren Druid/Troll Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade
    .target Sheal Runetotem
step
    #completewith next
    .zone 77 >>Leave Thunder Bluff for Felwood
    .zoneskip 77
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .accept 28848 >>Accept Trailing the Spiritspeaker
    .target Kelek Skykeeper
    .isQuestTurnedIn 28537 --any of: In Pursuit of Shades
    .xp <49,1
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .accept 28479 >>Accept The Ruins of Kel'Theril
    .target Kelek Skykeeper
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .accept 28537 >>Accept In Pursuit of Shades
    .target Kelek Skykeeper
    .isQuestTurnedIn 28536 --any of: The Curse of Zin-Malor
    .xp <49,1
step
    .goto 77,51.28,80.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28537 >>Turn in In Pursuit of Shades
    .target Kelek Skykeeper
    .isQuestComplete 28537
step << Tauren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .target Ahanu
    .isOnQuest 6362
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
    .isQuestTurnedIn 6362 --any of: Ride to Thunder Bluff
    .xp <5,1
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .target Tal
    .isOnQuest 6363
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .accept 6364 >>Accept Return to Varg
    .target Tal
    .isQuestTurnedIn 6363 --any of: Tal the Wind Rider Master
    .xp <5,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24550 >>Turn in Journey into Thunder Bluff
    .target Baine Bloodhoof
    .isOnQuest 24550
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 24540 >>Accept War Dance
    .target Baine Bloodhoof
    .isQuestTurnedIn 24550 --any of: Journey into Thunder Bluff
    .xp <8,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 26397 >>Accept Walk With The Earth Mother
    .target Baine Bloodhoof
    .isQuestTurnedIn 24540 --any of: War Dance
    .xp <10,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24540 >>Turn in War Dance
    .target Baine Bloodhoof
    .isQuestComplete 24540
step
    +|cRXP_WARN_That is all of Felwood for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Desolace|r: Warchief's Command: Desolace! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Warchief's Command: Dustwallow Marsh!, Return to Krog, Warchief's Command: Thousand Needles! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Warchief's Command: Feralas! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: A Journey to Moonglade << Tauren Druid/Troll Druid
    >>|cRXP_FRIENDLY_Mulgore|r: Return to Varg << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: Walk With The Earth Mother << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Southern Barrens|r: Warchief's Command: Southern Barrens! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Tanaris|r: Warchief's Command: Tanaris! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Warchief's Command: Un'Goro Crater! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Winterspring|r: Mystery Goo, Speak to Salfa, The Ruins of Kel'Theril, Strange Life Forces, Trailing the Spiritspeaker
    >>|cRXP_FRIENDLY_Winterspring|r: Warchief's Command: Winterspring! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh and back here|r: Deadmire << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 50|r: |cRXP_FRIENDLY_Winterspring|r (about 2.5 levels of quests, starting around Donova Snowden; 2 quests from here hand in there), |cRXP_FRIENDLY_Un'Goro Crater|r (about 2.0 levels of quests, starting around Mor'vek), |cRXP_FRIENDLY_Searing Gorge|r (about 0.7 levels of quests, starting around Jack Rockleg). Completing this step loads the guide for Winterspring --RouteBuilder:next
step << Druid/Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior/Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter/Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock/Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage/Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman/Tauren Paladin/BloodElf Paladin/Undead Priest/BloodElf Priest/Tauren Priest/Troll Priest/Goblin Priest
    +|cRXP_WARN_The rest of Felwood is planned from level 53.|r Load its guide for level 53 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Druid/Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior/Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter/Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock/Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage/Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman/Tauren Paladin/BloodElf Paladin/Undead Priest/BloodElf Priest/Tauren Priest/Troll Priest/Goblin Priest
#version 1
#group Zone Routes (Horde)
#subgroup 46 - 54 Felwood
#subweight -46
#name 53-54 Felwood
--RouteBuilder:next
#next Zone Routes (Horde)\52-54 Winterspring: around Rinno Curtainfire;Zone Routes (Horde)\52-55 Swamp of Sorrows: around Trade Baron Silversnap;Zone Routes (Horde)\53-55 Un'Goro Crater: around Mor'vek

step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 88,56.99,89.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sark Ragetotem|r
    .accept 28290 >>Accept Meet with Grezz Ragefist
    .target Sark Ragetotem
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 88,57.30,89.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .accept 28297 >>Accept Meet with Ormak Grimshot
    .target Holt Thunderhorn
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 88,22.76,14.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
    .accept 28300 >>Accept Meet with Ureda
    .target Archmage Shymm
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 88,25.24,13.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delano Morisett|r
    .accept 28299 >>Accept Meet with Zevrost
    .target Delano Morisett
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 88,21.99,18.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kador Cloudsong|r
    .accept 28301 >>Accept Meet with Kardris Dreamseeker
    .target Kador Cloudsong
step << Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 28289 >>Accept Moonglade Calls
    .target Sheal Runetotem
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 28303 >>Accept Meet with Master Pyreanor << BloodElf Paladin
    .accept 28302 >>Accept Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
step
    .goto 88,24.56,22.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai Cross|r
    .accept 28304 >>Accept Meet with Dark Cleric Cecille << Undead Priest
    .accept 28308 >>Accept Meet with Seer Liwatha << Tauren Priest
    .accept 28309 >>Accept Meet with Shadow-Walker Zuru << Troll Priest
    .accept 28307 >>Accept Meet with Tyelis << BloodElf Priest
    .accept 28323 >>Accept Meet with Brother Silverhallow << Goblin Priest
    .target Malakai Cross
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
    .isQuestComplete 1205
step
    +|cRXP_WARN_End of the Felwood route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade Calls << Druid
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Ormak Grimshot << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Zevrost << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Kardris Dreamseeker << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Tyelis << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Seer Liwatha << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Shadow-Walker Zuru << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Meet with Brother Silverhallow << Goblin Priest
step
    +|cRXP_WARN_Suggested next zones at level 53|r: |cRXP_FRIENDLY_Winterspring|r (about 1.3 levels of quests, starting around Rinno Curtainfire), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.9 levels of quests, starting around Trade Baron Silversnap), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.9 levels of quests, starting around Mor'vek). Completing this step loads the guide for Winterspring --RouteBuilder:next
]])
