-- 35-41 Dustwallow Marsh: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 35, 83).
-- Split into 3 guides, listed under "35 - 84 Dustwallow Marsh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Dustwallow Marsh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 84 Dustwallow Marsh
#subweight -35
#name 35-37 Dustwallow Marsh: around "Swamp Eye" Jarl
#next Zone Routes (Horde)\37-40 Dustwallow Marsh: around Tabetha

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.21,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 1201 >>Accept Theramore Spies
    .target Nazeer Bloodpike
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .accept 27253 >>Accept Inspecting the Ruins
    .target Krog
    .xp <35,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 70,38.04,33.98,0
    .goto 70,38.04,33.98,40,0
    .goto 70,37.04,38.47,40,0
    >>Kill |cRXP_ENEMY_Theramore Infiltrators|r
    .complete 1201,1 --Theramore Infiltrator slain (9)
    .mob Theramore Infiltrator
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 27182 >>Accept The Hermit of Witch Hill
    .target Draz'Zilb
step
    .goto 70,36.89,32.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Little" Logok|r
    .target "Little" Logok
    .home >>Set your Hearthstone to "Little" Logok's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.47,31.53
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 27229 >>Accept SMASH BROODQUEEN
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .accept 26682 >>Accept A Shambling Threat
    .accept 25051 >>Accept Darkmist Extermination
    .target Krog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 26701 >>Turn in Flight to Brackenwall
    .target Krog
    .isOnQuest 26701
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.86,31.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balandar Brightstar|r
    .accept 9437 >>Accept Twilight of the Dawn Runner
    .target Balandar Brightstar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.21,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1201 >>Turn in Theramore Spies
    .accept 1202 >>Accept The Theramore Docks
    .target Nazeer Bloodpike
step
    .goto 70,35.49,30.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alto Stonespire|r
    .turnin 25292 >>Turn in Next of Kin
    .target Alto Stonespire
    .isOnQuest 25292
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .accept 27253 >>Accept Inspecting the Ruins
    .target Krog
    .xp <35,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 70,38.54,22.75,0
    .goto 70,38.54,22.75,40,0
    .goto 70,42.13,18.39,40,0
    .goto 70,39.00,13.38,40,0
    >>Kill |cRXP_ENEMY_Withervine Ragers|r and |cRXP_ENEMY_Withervine Creepers|r
    .complete 26682,1 --Withervine Rager (8)
    .mob Withervine Rager
    .mob Withervine Creeper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Darkmist Broodqueen|r and loot |cRXP_LOOT_Broodqueen Pedipalp|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27229,1 --Broodqueen Pedipalp (1)
    .mob Darkmist Broodqueen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along11
    .goto 70,30.63,21.04
    >>Click the |cRXP_PICK_Darkmist Egg|r
    .complete 25051,1 --Darkmist Egg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,29.63,48.62
    >>Click the |cRXP_PICK_Black Shield|r
    .accept 27254 >>Accept The Black Shield
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,29.83,48.24
    >>Click the |cRXP_PICK_Theramore Guard Badge|r
    .accept 27260 >>Accept Lieutenant Paval Reethe
    .xp <35,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,29.70,47.64
    >>Click the |cRXP_PICK_Suspicious Hoofprint|r
    .accept 27259 >>Accept Suspicious Hoofprints
    .xp <35,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,71.53,51.19
    >>Open the |cRXP_PICK_Captain's Footlocker|r. Loot it for |cRXP_LOOT_Captain's Documents|r
    .complete 1202,1 --Captain's Documents (1)
step
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 26687 >>Turn in Reinforcements From Theramore
    .target Captain Garran Vimes
    .isOnQuest 26687
step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27182 >>Turn in The Hermit of Witch Hill << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 27183 >>Accept Marsh Frog Legs
    .target "Swamp Eye" Jarl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,55.44,25.92
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 27244 >>Accept The Lost Report
step
    #loop
    .goto 70,55.93,25.41,0
    .goto 70,55.93,25.41,40,0
    .goto 70,54.48,22.04,40,0
    >>Kill |cRXP_ENEMY_Giant Marsh Frogs|r. Loot them for |cRXP_LOOT_Marsh Frog Leg|r
    .complete 27183,1 --Marsh Frog Leg (10)
    .mob Giant Marsh Frog
step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27183 >>Turn in Marsh Frog Legs while you are here
    .isQuestComplete 27183
    .target "Swamp Eye" Jarl
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .accept 27188 >>Accept What's Haunting Witch Hill?
    .target Mordant Grimsby
step
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Risen Spirits|r, |cRXP_ENEMY_Risen Husks|r and |cRXP_ENEMY_Restless Apparitions|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27188,1 --Risen Spirit (8)
    .mob Risen Spirit
    .mob Risen Husk
    .mob Restless Apparition
step
    #label Along19
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27183 >>Turn in Marsh Frog Legs
    .accept 27184 >>Accept Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    #loop
    .goto 70,56.28,22.42,0
    .goto 70,56.28,22.42,40,0
    .goto 70,54.16,21.75,40,0
    .goto 70,52.82,23.75,40,0
    >>Kill |cRXP_ENEMY_Risen Spirits|r, |cRXP_ENEMY_Risen Husks|r and |cRXP_ENEMY_Restless Apparitions|r
    .complete 27188,1 --Risen Spirit (8)
    .mob Risen Spirit
    .mob Risen Husk
    .mob Restless Apparition
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
    .accept 28548 >>Accept Warchief's Command: Desolace!
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28510 >>Accept Warchief's Command: Feralas!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 70 >>Leave Thunder Bluff for Dustwallow Marsh
    .zoneskip 70
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to "Little" Logok's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 26682 >>Turn in A Shambling Threat
    .turnin 27254 >>Turn in The Black Shield
    .turnin 25051 >>Turn in Darkmist Extermination
    .turnin 28554 >>Turn in Warchief's Command: Dustwallow Marsh!
    .target Krog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 35 >>Grind to level 35 (The Black Shield needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .accept 27255 >>Accept The Black Shield
    .accept 27253 >>Accept Inspecting the Ruins
    .target Krog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.53,30.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Do'gol|r
    .turnin 27255 >>Turn in The Black Shield
    .accept 27256 >>Accept The Black Shield
    .target Do'gol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.21,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1202 >>Turn in The Theramore Docks
    .turnin 27244 >>Turn in The Lost Report
    .target Nazeer Bloodpike
step
    #loop
    .goto 70,34.32,21.75,0
    .goto 70,34.32,21.75,40,0
    .goto 70,31.29,21.38,40,0
    >>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Recluses|r, |cRXP_ENEMY_Darkmist Silkspinners|r and |cRXP_ENEMY_Darkmist Widows|r. Loot them for |cRXP_LOOT_Unpopped Darkmist Eye|r
    >>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Recluses|r, |cRXP_ENEMY_Darkmist Silkspinners|r and |cRXP_ENEMY_Darkmist Widows|r. Loot them for |cRXP_LOOT_Acidic Venom Sac|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Darkmist Broodqueen|r and loot |cRXP_LOOT_Broodqueen Pedipalp|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 27184,1 --Unpopped Darkmist Eye (20)
    .complete 27256,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Acidic Venom Sac (5)
    .complete 27229,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Broodqueen Pedipalp (1)
    .mob Darkmist Spider
    .mob Darkmist Recluse
    .mob Darkmist Silkspinner
    .mob Darkmist Widow
    .mob Darkmist Broodqueen << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,46.88,17.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
    .accept 1270 >>Accept Stinky's Escape
    .target "Stinky" Ignatz
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 27188 >>Turn in What's Haunting Witch Hill?
    .accept 27189 >>Accept The Witch's Bane
    .target Mordant Grimsby
step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27184 >>Turn in Jarl Needs Eyes while you are here
    .isQuestComplete 27184
    .target "Swamp Eye" Jarl
step
    #loop
    .goto 70,55.00,25.70,0
    .goto 70,55.00,25.70,40,0
    .goto 70,57.24,26.22,40,0
    .goto 70,57.16,21.94,40,0
    >>Pick up |cRXP_PICK_Witchbane|r from the ground
    .complete 27189,1 --Witchbane (9)
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 27189 >>Turn in The Witch's Bane
    .accept 27190 >>Accept Cleansing Witch Hill
    .target Mordant Grimsby
step
    #completewith Along30
    >>As you go: Kill |cRXP_ENEMY_Zelfrax|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27190,1 --Zelfrax slain (1)
    .mob Zelfrax
step
    #label Along30
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27184 >>Turn in Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    .goto 70,55.18,26.69
    >>Kill |cRXP_ENEMY_Zelfrax|r
    .complete 27190,1 --Zelfrax slain (1)
    .mob Zelfrax
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 27190 >>Turn in Cleansing Witch Hill while you are here
    .isQuestComplete 27190
    .target Mordant Grimsby
step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .accept 27191 >>Accept Hungry as an Ogre!
    .accept 27186 >>Accept Jarl Needs a Blade
    .target "Swamp Eye" Jarl
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 27190 >>Turn in Cleansing Witch Hill
    .target Mordant Grimsby
step
    #loop
    .goto 70,54.57,15.53,0
    .goto 70,54.57,15.53,40,0
    .goto 70,58.06,15.91,40,0
    >>Kill |cRXP_ENEMY_Razorspine|r and loot |cRXP_LOOT_Razorspine's Sword|r
    >>Kill |cRXP_ENEMY_Mirefin Murlocs|r, |cRXP_ENEMY_Mirefin Warriors|r, |cRXP_ENEMY_Mirefin Muckdwellers|r and |cRXP_ENEMY_Mirefin Coastrunners|r. Loot them for |cRXP_LOOT_Mirefin Head|r
    .complete 27186,1 --Razorspine's Sword (1)
    .complete 27191,1 --Mirefin Head (8)
    .mob Razorspine
    .mob Mirefin Murloc
    .mob Mirefin Warrior
    .mob Mirefin Muckdweller
    .mob Mirefin Coastrunner
step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27191 >>Turn in Hungry as an Ogre!
    .turnin 27186 >>Turn in Jarl Needs a Blade
    .target "Swamp Eye" Jarl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,48.87,24.58
    >>Help Stinky find Bogbean Leaves
    .complete 1270,1 --Help Stinky find Bogbean Leaves
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along37
    >>As you go: Open the |cRXP_PICK_Warped Crates|r. Loot it for |cRXP_LOOT_Dawn Runner Cargo|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9437,2 --Dawn Runner Cargo (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along37
    .goto 70,46.63,24.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithania|r
    .complete 9437,1 --Ithania
    .target Ithania
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,46.61,24.59
    >>Open the |cRXP_PICK_Warped Crates|r. Loot it for |cRXP_LOOT_Dawn Runner Cargo|r
    .complete 9437,2 --Dawn Runner Cargo (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.53,30.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Do'gol|r
    .turnin 27256 >>Turn in The Black Shield
    .accept 27257 >>Accept The Black Shield
    .target Do'gol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.86,31.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balandar Brightstar|r
    .turnin 9437 >>Turn in Twilight of the Dawn Runner
    .target Balandar Brightstar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 27257 >>Turn in The Black Shield
    .turnin 27229 >>Turn in SMASH BROODQUEEN
    .target Krog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.21,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 11213 >>Accept Check Up on Tabetha
    .target Nazeer Bloodpike
    .xp <37,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 27414 >>Accept Identifying the Brood
    .target Draz'Zilb
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27424 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
    .xp <37,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,29.83,48.24
    >>Click the |cRXP_PICK_Theramore Guard Badge|r
    .accept 27260 >>Accept Lieutenant Paval Reethe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,29.79,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inspector Tarem|r
    .turnin 27253 >>Turn in Inspecting the Ruins
    .target Inspector Tarem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,29.70,47.64
    >>Click the |cRXP_PICK_Suspicious Hoofprint|r
    .accept 27259 >>Accept Suspicious Hoofprints
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 27260 >>Turn in Lieutenant Paval Reethe
    .turnin 27259 >>Turn in Suspicious Hoofprints
    .accept 27306 >>Accept Talk to Ogron
    .target Krog
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27424 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
    .xp <37,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.21,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 11213 >>Accept Check Up on Tabetha
    .target Nazeer Bloodpike
    .xp <37,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,40.96,36.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogron|r
    .turnin 27306 >>Turn in Talk to Ogron
    .accept 27261 >>Accept Questioning Reethe
    .target Ogron
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,42.65,38.07
    >>Go with Ogron to speak with Reethe.
    .complete 27261,1 --Paval Reethe
    .target Paval Reethe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 27261 >>Turn in Questioning Reethe
    .accept 27258 >>Accept The Black Shield
    .target Krog
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27424 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
    .xp <37,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.21,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 11213 >>Accept Check Up on Tabetha
    .target Nazeer Bloodpike
    .xp <37,1
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
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
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .turnin 27258 >>Turn in The Black Shield
    .accept 27292 >>Accept Return to Krog
    .target Mosarn
step
    #completewith next
    .zone 70 >>Leave Thunder Bluff for Dustwallow Marsh
    .zoneskip 70
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to "Little" Logok's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 27292 >>Turn in Return to Krog
    .accept 27293 >>Accept The Grimtotem Plot
    .accept 27294 >>Accept More than Coincidence
    .target Krog
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27424 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
    .xp <37,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.21,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 11213 >>Accept Check Up on Tabetha
    .target Nazeer Bloodpike
    .xp <37,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 70,43.16,15.71,0
    .goto 70,43.16,15.71,40,0
    .goto 70,42.06,11.01,40,0
    >>Pick up |cRXP_PICK_Blackhoof Armaments|r from the ground
    >>Kill |cRXP_ENEMY_Grimtotem Elder|r and loot |cRXP_LOOT_Grimtotem Note|r
    .complete 27294,1 --Blackhoof Armaments (7)
    .collect 33050,1,27293,1 --Grimtotem Note (1)
    .mob Grimtotem Elder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 27294 >>Turn in More than Coincidence
    .target Krog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 37 >>Grind to level 37 (Check Up on Tabetha needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,35.21,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 11213 >>Accept Check Up on Tabetha
    .target Nazeer Bloodpike
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27424 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
    .xp <37,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 11213 >>Turn in Check Up on Tabetha
    .target Tabetha
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 84 Dustwallow Marsh
#subweight -35
#name 37-40 Dustwallow Marsh: around Tabetha
--RouteBuilder:next
#next Zone Routes (Horde)\40-42 Eastern Plaguelands: around Chromie;Zone Routes (Horde)\35-39 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah

step
    .goto 70,46.10,57.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .accept 27346 >>Accept The Zeppelin Crash
    .accept 27340 >>Accept Direhorn Raiders
    .target Apprentice Morlann
step
    .goto 70,46.05,57.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .accept 27336 >>Accept The Grimtotem Weapon
    .accept 27339 >>Accept The Reagent Thief
    .target Apprentice Garion
step
    #completewith Along63
    >>As you go: Kill |cRXP_ENEMY_Mottled Drywallow Crocolisks|r and |cRXP_ENEMY_Drywallow Daggermaws|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27336,1 --Mottled Drywallow Crocolisk (10)
    .mob Mottled Drywallow Crocolisk
    .mob Drywallow Daggermaw
step
    #loop
    .goto 70,46.21,50.14,0
    .goto 70,46.21,50.14,40,0
    .goto 70,46.43,46.59,40,0
    .goto 70,49.63,51.04,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Earthbinders|r and |cRXP_ENEMY_Grimtotem Destroyers|r
    .complete 27340,1 --Grimtotem Earthbinder (8)
    .mob Grimtotem Earthbinder
    .mob Grimtotem Destroyer
step
    .goto 70,53.57,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 27346 >>Turn in The Zeppelin Crash
    .accept 27347 >>Accept Corrosion Prevention
    .accept 27348 >>Accept Secure the Cargo!
    .target Moxie Steelgrille
step
    #label Along63
    #loop
    .goto 70,52.82,57.79,0
    .goto 70,52.82,57.79,40,0
    .goto 70,53.98,53.69,40,0
    .goto 70,48.28,58.98,40,0
    >>Kill |cRXP_ENEMY_Acidic Swamp Oozes|r and |cRXP_ENEMY_Bubbling Swamp Oozes|r
    >>Pick up |cRXP_PICK_Zeppelin Cargo|r from the ground
    .complete 27347,1 --Acidic Swamp Ooze (10)
    .complete 27348,1 --Zeppelin Cargo (1)
    .mob Acidic Swamp Ooze
    .mob Bubbling Swamp Ooze
step
    .goto 70,53.57,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 27348 >>Turn in Secure the Cargo!
    .turnin 27347 >>Turn in Corrosion Prevention
    .accept 11208 >>Accept Delivery for Drazzit
    .target Moxie Steelgrille
step
    #completewith Along67
    >>As you go: Kill |cRXP_ENEMY_Noxious Shredders|r and |cRXP_ENEMY_Darkfang Creepers|r. Loot them for |cRXP_LOOT_Marsh Venom|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27339,1 --Marsh Venom (1)
    .mob Noxious Shredder
    .mob Darkfang Creeper
step
    #loop
    .goto 70,49.85,57.80,0
    .goto 70,49.85,57.80,40,0
    .goto 70,46.97,54.67,40,0
    .goto 70,48.40,50.04,40,0
    >>Kill |cRXP_ENEMY_Mottled Drywallow Crocolisks|r and |cRXP_ENEMY_Drywallow Daggermaws|r
    .complete 27336,1 --Mottled Drywallow Crocolisk (10)
    .mob Mottled Drywallow Crocolisk
    .mob Drywallow Daggermaw
step
    .goto 70,46.05,57.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .turnin 27336 >>Turn in The Grimtotem Weapon
    .target Apprentice Garion
step
    #label Along67
    .goto 70,46.10,57.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .turnin 27340 >>Turn in Direhorn Raiders
    .target Apprentice Morlann
step
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 11211 >>Accept Help for Mudsprocket
    .target Tabetha
    .xp <38,1
step
    #loop
    .goto 70,42.16,63.26,0
    .goto 70,42.16,63.26,40,0
    .goto 70,39.84,60.21,40,0
    >>Kill |cRXP_ENEMY_Noxious Shredders|r and |cRXP_ENEMY_Darkfang Creepers|r. Loot them for |cRXP_LOOT_Marsh Venom|r
    .complete 27339,1 --Marsh Venom (1)
    .mob Noxious Shredder
    .mob Darkfang Creeper
step
    .goto 70,42.33,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11208 >>Turn in Delivery for Drazzit
    .target Drazzit Dripvalve
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 27407 >>Accept Bloodfen Feathers
    .target Brogg
step
    .goto 70,41.75,73.13
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 27412 >>Accept WANTED: Goreclaw the Ravenous
step
    .goto 70,41.54,72.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .accept 27413 >>Accept Catch a Dragon by the Tail
    .target Gizzix Grimegurgle
step
    #completewith Along73
    >>As you go: Kill |cRXP_ENEMY_Goreclaw the Ravenous|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27412,1 --Goreclaw the Ravenous slain (1)
    .mob Goreclaw the Ravenous
step
    #label Along73
    #loop
    .goto 70,37.66,68.51,0
    .goto 70,37.66,68.51,40,0
    .goto 70,34.32,68.23,40,0
    .goto 70,32.35,65.34,40,0
    >>Kill |cRXP_ENEMY_Bloodfen Razormaws|r, |cRXP_ENEMY_Bloodfen Lashtails|r and |cRXP_ENEMY_Goreclaw the Ravenous|r. Loot them for |cRXP_LOOT_Bloodfen Feather|r
    .complete 27407,1 --Bloodfen Feather (5)
    .mob Bloodfen Razormaw
    .mob Bloodfen Lashtail
    .mob Goreclaw the Ravenous
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 27407 >>Turn in Bloodfen Feathers
    .accept 27408 >>Accept Banner of the Stonemaul
    .accept 27409 >>Accept The Essence of Enmity
    .target Brogg
step
    #loop
    .goto 70,37.43,68.51,0
    .goto 70,37.43,68.51,40,0
    .goto 70,38.99,65.82,40,0
    >>Open the |cRXP_PICK_Stonemaul Clan Banner|r. Loot it for |cRXP_LOOT_Stonemaul Banner|r
    >>Kill |cRXP_ENEMY_Firemane Scalebanes|r, |cRXP_ENEMY_Firemane Scouts|r and |cRXP_ENEMY_Firemane Ash Tails|r. Loot them for |cRXP_LOOT_Black Dragonkin Essence|r
    .complete 27408,1 --Stonemaul Banner (1)
    .complete 27409,1 --Black Dragonkin Essence (10)
    .mob Firemane Scalebane
    .mob Firemane Scout
    .mob Firemane Ash Tail
step
    .goto 70,32.35,65.34
    >>Kill |cRXP_ENEMY_Goreclaw the Ravenous|r
    .complete 27412,1 --Goreclaw the Ravenous slain (1)
    .mob Goreclaw the Ravenous
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 27409 >>Turn in The Essence of Enmity
    .turnin 27408 >>Turn in Banner of the Stonemaul
    .accept 27410 >>Accept Spirits of Stonemaul Hold
    .target Brogg
step
    .goto 70,42.33,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 27412 >>Turn in WANTED: Goreclaw the Ravenous
    .target Drazzit Dripvalve
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 70,43.08,69.23,0
    .goto 70,43.08,69.23,40,0
    .goto 70,45.95,67.21,40,0
    .goto 70,49.11,68.06,40,0
    >>Kill |cRXP_ENEMY_Searing Hatchlings|r and |cRXP_ENEMY_Searing Whelps|r. Loot them for |cRXP_LOOT_Searing Heart|r
    .complete 27414,2 --Searing Heart (7)
    .mob Searing Hatchling
    .mob Searing Whelp
    .isOnQuest 27414
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 70,45.95,67.21,0
    .goto 70,45.95,67.21,40,0
    .goto 70,43.08,69.23,40,0
    .goto 70,49.11,68.06,40,0
    >>Kill |cRXP_ENEMY_Searing Hatchlings|r and |cRXP_ENEMY_Searing Whelps|r. Loot them for |cRXP_LOOT_Searing Tongue|r
    .complete 27414,1 --Searing Tongue (7)
    .mob Searing Hatchling
    .mob Searing Whelp
    .isOnQuest 27414
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to "Little" Logok's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 27414 >>Turn in Identifying the Brood
    .target Draz'Zilb
    .isOnQuest 27414
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 27416 >>Accept The Brood of Onyxia
    .target Draz'Zilb
    .isQuestTurnedIn 27414 --any of: Identifying the Brood
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .turnin 27416 >>Turn in The Brood of Onyxia
    .target Overlord Mok'Morokk
    .isOnQuest 27416
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27417 >>Accept The Brood of Onyxia
    .target Overlord Mok'Morokk
    .isQuestTurnedIn 27416 --any of: The Brood of Onyxia
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27424 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.37,31.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharg|r
    .accept 1168 >>Accept Army of the Black Dragon
    .target Tharg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 27417 >>Turn in The Brood of Onyxia
    .target Draz'Zilb
    .isOnQuest 27417
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 27415 >>Accept The Brood of Onyxia
    .target Draz'Zilb
    .isQuestTurnedIn 27416 --any of: The Brood of Onyxia
step
    .xp 38 >>Grind to level 38 (Help for Mudsprocket needs it)
step
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 11211 >>Accept Help for Mudsprocket
    .target Tabetha
step
    .goto 70,46.05,57.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .turnin 27339 >>Turn in The Reagent Thief
    .target Apprentice Garion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Firemane Ash Tails|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1168,2 --Firemane Ash Tail slain (10)
    .mob Firemane Ash Tail
step
    #label Along91
    #loop
    .goto 70,44.03,65.30,0
    .goto 70,44.03,65.30,40,0
    .goto 70,44.53,66.04,40,0
    .goto 70,38.96,67.08,40,0
    >>Kill |cRXP_ENEMY_Firemane Scouts|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Pick up |cRXP_PICK_Mok'Morokk's Snuff|r from the ground
    .complete 1168,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Firemane Scout slain (10)
    .complete 27424,1 --Mok'Morokk's Snuff (1)
    .mob Firemane Scout << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along92
    >>As you go: Kill |cRXP_ENEMY_Firemane Scalebanes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1168,3 --Firemane Scalebane slain (5)
    .mob Firemane Scalebane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along92
    .goto 70,48.38,75.96
    >>Click the |cRXP_PICK_Egg of Onyxia|r
    .complete 27415,1 --Egg of Onyxia
    .isOnQuest 27415
step
    #loop
    .goto 70,43.29,75.99,0
    .goto 70,43.29,75.99,40,0
    .goto 70,46.11,81.55,40,0
    .goto 70,47.95,79.70,40,0
    >>Pick up |cRXP_PICK_Wyrmtail|r from the ground
    .complete 27413,1 --Wyrmtail (8)
step
    .goto 70,42.33,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11211 >>Turn in Help for Mudsprocket
    .target Drazzit Dripvalve
step
    .goto 70,41.54,72.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .turnin 27413 >>Turn in Catch a Dragon by the Tail
    .target Gizzix Grimegurgle
step
    #loop
    .goto 70,43.13,65.89,0
    .goto 70,43.13,65.89,40,0
    .goto 70,39.36,65.32,40,0
    .goto 70,37.43,68.51,40,0
    >>Pick up |cRXP_PICK_Mok'Morokk's Strongbox|r from the ground
    >>Kill |cRXP_ENEMY_Firemane Scalebanes|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Pick up |cRXP_PICK_Mok'Morokk's Grog|r from the ground
    >>Kill |cRXP_ENEMY_Firemane Ash Tails|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 27424,3 --Mok'Morokk's Strongbox (1)
    .complete 1168,3 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Firemane Scalebane slain (5)
    .complete 27424,2 --Mok'Morokk's Grog (1)
    .complete 1168,2 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Firemane Ash Tail slain (10)
    .mob Firemane Scalebane << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Firemane Ash Tail << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 27415 >>Turn in The Brood of Onyxia
    .target Draz'Zilb
    .isOnQuest 27415
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .turnin 27424 >>Turn in Overlord Mok'Morokk's Concern while you are here
    .isQuestComplete 27424
    .target Overlord Mok'Morokk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.37,31.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharg|r
    .turnin 1168 >>Turn in Army of the Black Dragon
    .target Tharg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27418 >>Accept Challenge Overlord Mok'Morokk
    .target Overlord Mok'Morokk
    .isQuestTurnedIn 27415 --any of: The Brood of Onyxia
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.29,31.41
    >>Kill |cRXP_ENEMY_Overlord Mok'Morokk|r
    .complete 27418,1 --Overlord Mok'Morokk slain (1)
    .mob Overlord Mok'Morokk
    .isOnQuest 27418
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 27418 >>Turn in Challenge Overlord Mok'Morokk while you are here
    .isQuestComplete 27418
    .target Draz'Zilb
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .turnin 27424 >>Turn in Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 27418 >>Turn in Challenge Overlord Mok'Morokk
    .target Draz'Zilb
    .isOnQuest 27418
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 27293 >>Turn in The Grimtotem Plot
    .target Krog
    .isQuestComplete 27293
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .accept 27295 >>Accept Seek Out Tabetha
    .target Krog
    .isQuestTurnedIn 27293 --The Grimtotem Plot
    .xp <36,1
    .isQuestTurnedIn 27294 --More than Coincidence
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 27295 >>Turn in Seek Out Tabetha
    .target Tabetha
    .isOnQuest 27295
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 27296 >>Accept Raze Direhorn Post!
    .target Tabetha
    .isQuestTurnedIn 27295 --any of: Seek Out Tabetha
    .xp <36,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,47.53,47.65
    >>Use Tabetha's Torch to burn he North Tent, East Tent, and the Northeast Tent at Direhorn Post.
    .complete 27296,3 --East Tent
    .target East Tent
    .isOnQuest 27296
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,47.25,46.54
    >>Use Tabetha's Torch to burn he North Tent, East Tent, and the Northeast Tent at Direhorn Post.
    .complete 27296,2 --Northeast Tent
    .target Northeast Tent
    .isOnQuest 27296
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,46.60,45.93
    >>Use Tabetha's Torch to burn he North Tent, East Tent, and the Northeast Tent at Direhorn Post.
    .complete 27296,1 --North Tent
    .target North Tent
    .isOnQuest 27296
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 27296 >>Turn in Raze Direhorn Post!
    .target Tabetha
    .isOnQuest 27296
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 27297 >>Accept Justice Dispensed
    .target Tabetha
    .isQuestTurnedIn 27296 --any of: Raze Direhorn Post!
    .xp <36,1
step
    #loop
    .goto 70,44.20,66.20,0
    .goto 70,44.20,66.20,40,0
    .goto 70,42.40,67.20,40,0
    .goto 70,46.00,67.20,40,0
    >>Kill |cRXP_ENEMY_Stonemaul Spirits|r
    .complete 27410,1 --Stonemaul Spirit slain (10)
    .mob Stonemaul Spirit
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 27410 >>Turn in Spirits of Stonemaul Hold
    .accept 27411 >>Accept Challenge to the Black Flight
    .target Brogg
step
    .goto 70,52.20,76.20
    >>Kill |cRXP_ENEMY_Smolderwing|r
    .complete 27411,1 --Smolderwing slain (1)
    .mob Smolderwing
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
    .xp 39 >>Grind to level 39 (Warchief's Command: Thousand Needles! needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28504 >>Accept Warchief's Command: Thousand Needles!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1205 >>Accept Deadmire
    .target Melor Stonehoof
step
    #completewith next
    .zone 70 >>Leave Thunder Bluff for Dustwallow Marsh
    .zoneskip 70
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 27411 >>Turn in Challenge to the Black Flight
    .target Brogg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,41.87,73.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
    .turnin 28504 >>Turn in Warchief's Command: Thousand Needles!
    .target Nyse
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,50.20,52.70
    >>Kill |cRXP_ENEMY_Deadmire|r and loot |cRXP_LOOT_Deadmire's Tooth|r
    .complete 1205,1 --Deadmire's Tooth (1)
    .mob Deadmire
step << Tauren Druid/Troll Druid
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Tauren Druid/Troll Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade
    .target Sheal Runetotem
step << Tauren Druid/Troll Druid
    #completewith next
    .zone 70 >>Leave Thunder Bluff for Dustwallow Marsh
    .zoneskip 70
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to "Little" Logok's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 27297 >>Turn in Justice Dispensed
    .target Krog
    .isOnQuest 27297
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
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
    +|cRXP_WARN_That is all of Dustwallow Marsh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Desolace|r: Warchief's Command: Desolace! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale!, Stinky's Escape << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Grimtotem Plot << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 39|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 2.8 levels of quests, starting around Chromie), |cRXP_FRIENDLY_Western Plaguelands|r (about 1.3 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Desolace|r (about 0.7 levels of quests, starting around Cenarion Researcher Korrah). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Dustwallow Marsh is planned from level 83.|r Load its guide for level 83 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 84 Dustwallow Marsh
#subweight -35
#name 83-84 Dustwallow Marsh
--RouteBuilder:next
#next Zone Routes (Horde)\82-83 Deepholm

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,41.87,73.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyse|r
    .accept 25478 >>Accept To the Summit
    .target Nyse
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,42.82,72.43
    >>Kill |cRXP_ENEMY_Dyslix Silvergrub|r and |cRXP_ENEMY_Shyn|r
    .complete 25478,1 --Dyslix Silvergrub (1)
    .mob Dyslix Silvergrub
    .mob Shyn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 70,42.30,13.89,0
    .goto 70,42.30,13.89,40,0
    .goto 70,42.06,11.01,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Elder|r and loot |cRXP_LOOT_Grimtotem Note|r
    .collect 33050,1,27293,1 --Grimtotem Note (1)
    .mob Grimtotem Elder
    .isOnQuest 27293
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 70,36.42,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 27293 >>Turn in The Grimtotem Plot
    .target Krog
    .isQuestComplete 27293
step
    +|cRXP_WARN_End of the Dustwallow Marsh route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Thousand Needles|r: To the Summit << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 83|r: |cRXP_FRIENDLY_Deepholm|r (about 0.8 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
