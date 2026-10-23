-- 1-14 Mulgore: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 1, 12, 15).
-- Split into 4 guides, listed under "1 - 16 Mulgore" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/classic/Mulgore.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 16 Mulgore
#subweight -1
#name 1-4 Mulgore: around Grull Hawkwind
#next Zone Routes (Horde)\4-10 Mulgore: around Mull Thunderhorn

step
    .goto 1412/1,-257.79,-2912.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r
    .accept 747 >>Accept The Hunt Begins
    .target Grull Hawkwind
step
    #completewith Along3
    >>As you go: Kill |cRXP_ENEMY_Plainstriders|r. Loot them for |cRXP_LOOT_Plainstrider Meat|r. Kill |cRXP_ENEMY_Plainstriders|r. Loot them for |cRXP_LOOT_Plainstrider Feather|r. |cRXP_WARN_Anything left is finished later|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-221.83,-2877.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .accept 752 >>Accept A Humble Task
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto 1412/1,-317.90,-2852.63,30,0--c:Mulgore,46.05,75.32
    +|cRXP_WARN_Kill |cRXP_ENEMY_Plainstriders|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Harutt Thunderhorn
step << Shaman
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon]
    .target Meela Dawnstrider
step
    .goto 1412/1,-522.37,-3052.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Hawkwind|r
    .turnin 752 >>Turn in A Humble Task
    .accept 753 >>Accept A Humble Task
    .target Greatmother Hawkwind
step
    #label Along3
    .goto 1412/1,-532.14,-3060.18
    >>Pick up |cRXP_PICK_Water Pitcher|r from the ground
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto 1412/1,-566.56,-2948.53,0
    .goto 1412/1,-566.56,-2948.53,40,0
    .goto 1412/1,-599.44,-2839.27,40,0
    .goto 1412/1,-306.60,-2782.07,40,0
    .goto 1412/1,-154.53,-2894.07,40,0
    .goto 1412/1,-413.97,-2890.64,40,0
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for |cRXP_LOOT_Plainstrider Meat|r
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for |cRXP_LOOT_Plainstrider Feather|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-257.79,-2912.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 747 >>Turn in The Hunt Begins
    .accept 3091 >>Accept Simple Note << Tauren Warrior
    .accept 3092 >>Accept Etched Note << Tauren Hunter
    .accept 3093 >>Accept Rune-Inscribed Note << Tauren Shaman
    .accept 3094 >>Accept Verdant Note << Tauren Druid
    .accept 750 >>Accept The Hunt Continues
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Light Shots] |cRXP_BUY_from her|r << Hunter
    .collect 2516,1000,750,1 << Hunter
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
step << Tauren Shaman
    .goto 1412/1,-264.47,-2873.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela Dawnstrider|r
    .turnin 3093 >>Turn in Rune-Inscribed Note while you are here
    .isQuestComplete 3093
    .target Meela Dawnstrider
step << Tauren Druid
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart Mistrunner|r
    .turnin 3094 >>Turn in Verdant Note while you are here
    .isQuestComplete 3094
    .target Gart Mistrunner
step << Tauren Warrior
    .goto 1412/1,-213.10,-2880.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .turnin 3091 >>Turn in Simple Note while you are here
    .isQuestComplete 3091
    .target Harutt Thunderhorn
step << Tauren Hunter
    .goto 1412/1,-225.94,-2865.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka Farshot|r
    .turnin 3092 >>Turn in Etched Note while you are here
    .isQuestComplete 3092
    .target Lanka Farshot
step
    .goto 1412/1,-221.83,-2877.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .turnin 753 >>Turn in A Humble Task
    .accept 755 >>Accept Rites of the Earthmother
    .target Chief Hawkwind
step
    .goto 1412/1,-239.81,-2893.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave Windfeather|r
    .accept 3376 >>Accept Break Sharptusk!
    .target Brave Windfeather
    .xp <3,1
step
    #completewith Along7
    >>As you go: Kill |cRXP_ENEMY_Mountain Cougars|r. Loot them for |cRXP_LOOT_Mountain Cougar Pelt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label Along7
    .goto 1412/1,-139.12,-3430.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Graytongue|r
    .turnin 755 >>Turn in Rites of the Earthmother
    .accept 757 >>Accept Rite of Strength
    .target Seer Graytongue
step
    #loop
    .goto 1412/1,-258.31,-3417.41,0
    .goto 1412/1,-258.31,-3417.41,40,0
    .goto 1412/1,-302.49,-3342.40,40,0
    >>Kill |cRXP_ENEMY_Mountain Cougars|r. Loot them for |cRXP_LOOT_Mountain Cougar Pelt|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    .goto 1412/1,-292.73,-3285.20,40,0
    .goto 1412/1,-362.60,-3281.44,40,0
    .goto 1412/1,-452.50,-3246.84,40,0
    .goto 1412/1,-554.23,-3213.96,40,0
    .goto 1412/1,-572.72,-3139.98,40,0
    .goto 1412/1,-626.67,-3065.32,40,0
    .goto 1412/1,-616.90,-2998.53,40,0
    .goto 1412/1,-606.63,-2923.52,40,0
    .goto 1412/1,-621.01,-2847.15,40,0
    .goto 1412/1,-537.27,-2887.22,40,0
    .goto 1412/1,-461.75,-2869.75,40,0
    .goto 1412/1,-387.77,-2851.94,40,0
    .goto 1412/1,-356.43,-2951.61,40,0
    .goto 1412/1,-307.11,-3026.96,40,0
    .goto 1412/1,-265.50,-3086.55,40,0
    .goto 1412/1,-217.21,-3146.15,40,0
    .goto 1412/1,-207.45,-3221.16,40,0
    .xp 3+1150 >> Grind to 1150+/1400xp
step
    .goto 1412/1,-292.73,-3285.20,40,0
    .goto 1412/1,-362.60,-3281.44,40,0
    .goto 1412/1,-452.50,-3246.84,40,0
    .goto 1412/1,-554.23,-3213.96,40,0
    .goto 1412/1,-572.72,-3139.98,40,0
    .goto 1412/1,-626.67,-3065.32,40,0
    .goto 1412/1,-616.90,-2998.53,40,0
    .goto 1412/1,-606.63,-2923.52,40,0
    .goto 1412/1,-621.01,-2847.15,40,0
    .goto 1412/1,-537.27,-2887.22,40,0
    .goto 1412/1,-461.75,-2869.75,40,0
    .goto 1412/1,-387.77,-2851.94,40,0
    .goto 1412/1,-356.43,-2951.61,40,0
    .goto 1412/1,-307.11,-3026.96,40,0
    .goto 1412/1,-265.50,-3086.55,40,0
    .goto 1412/1,-217.21,-3146.15,40,0
    .goto 1412/1,-207.45,-3221.16,40,0
    .xp 3+1025 >> Grind to 1025+/1400xp
step
    .goto 1412/1,-257.79,-2912.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
step
    .goto 1412/1,-239.81,-2893.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave Windfeather|r
    .accept 3376 >>Accept Break Sharptusk!
    .target Brave Windfeather
step << Shaman
    .goto 1412/1,-250.09,-2882.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .accept 1519 >>Accept Call of Earth
    .target Seer Ravenfeather
step << Tauren Warrior
    .goto 1412/1,-213.10,-2880.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .turnin 3091 >>Turn in Simple Note
    .target Harutt Thunderhorn
step << Warrior
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Tauren Hunter
    .goto 1412/1,-225.94,-2865.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka Farshot|r
    .turnin 3092 >>Turn in Etched Note
    .target Lanka Farshot
step << Hunter
    .goto 1412/1,-225.94,-2865.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Lanka Farshot
step << Tauren Shaman
    .goto 1412/1,-264.47,-2873.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela Dawnstrider|r
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .target Meela Dawnstrider
step << Shaman
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .target Meela Dawnstrider
step << Tauren Druid
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart Mistrunner|r
    .turnin 3094 >>Turn in Verdant Note
    .target Gart Mistrunner
step << Druid
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 8921 >> Train |T136096:0|t[Moonfire]
    .target Gart Mistrunner
step
    #loop
    .goto 1412/1,-777.19,-3076.28,0
    .goto 1412/1,-777.19,-3076.28,40,0
    .goto 1412/1,-842.44,-3191.70,40,0
    >>Kill |cRXP_ENEMY_Bristleback Battleboars|r and |cRXP_ENEMY_Battleboars|r. Loot them for |cRXP_LOOT_Battleboar Flank|r
    >>Kill |cRXP_ENEMY_Bristleback Battleboars|r and |cRXP_ENEMY_Battleboars|r. Loot them for |cRXP_LOOT_Battleboar Snout|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Bristleback Battleboar
    .mob Battleboar
step
    #loop
    .goto 1412/1,-1230.32,-3006.75,0
    .goto 1412/1,-1230.32,-3006.75,40,0
    .goto 1412/1,-1291.97,-2963.94,40,0
    .goto 1412/1,-1223.64,-2908.80,40,0
    >>Kill |cRXP_ENEMY_Chief Sharptusk Thornmantle|r and loot |cRXP_LOOT_Chief Sharptusk Thornmantle's Head|r
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r and |cRXP_ENEMY_Bristleback Shamans|r. Loot them for |cRXP_LOOT_Bristleback Belt|r
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for |cRXP_LOOT_Ritual Salve|r << Shaman
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .complete 757,1 --Bristleback Belt (12)
    .complete 1519,1 << Shaman --Ritual Salve (2)
    .mob Chief Sharptusk Thornmantle
    .mob Bristleback Quilboar
    .mob Bristleback Shaman
step
    .goto 1412/1,-1239.06,-3015.66,40,0
    .goto 1412/1,-1256.01,-2954.35,40,0
    .goto 1412/1,-1223.13,-2882.08,40,0
    .goto 1412/1,-1171.75,-2879.34,40,0
    .goto 1412/1,-1103.43,-2914.62,40,0
    .goto 1412/1,-1122.95,-2977.98,40,0
    .goto 1412/1,-1152.23,-3065.32,40,0
    .goto 1412/1,-1076.71,-3040.66,40,0
    .goto 1412/1,-1038.69,-3079.02,40,0
    .goto 1412/1,-1087.50,-3092.38,40,0
    .goto 1412/1,-1151.20,-3082.44,40,0
    .xp 5+880 >> Grind to 880+/2800xp << !Shaman
    .xp 5 >> Grind to level 5 << Shaman
step
    .goto 1412/1,-1239.06,-3015.66,40,0
    .goto 1412/1,-1256.01,-2954.35,40,0
    .goto 1412/1,-1223.13,-2882.08,40,0
    .goto 1412/1,-1171.75,-2879.34,40,0
    .goto 1412/1,-1103.43,-2914.62,40,0
    .goto 1412/1,-1122.95,-2977.98,40,0
    .goto 1412/1,-1152.23,-3065.32,40,0
    .goto 1412/1,-1076.71,-3040.66,40,0
    .goto 1412/1,-1038.69,-3079.02,40,0
    .goto 1412/1,-1087.50,-3092.38,40,0
    .goto 1412/1,-1151.20,-3082.44,40,0
    .xp 5 >> Grind to level 5 << !Shaman
    .xp 4+700 >> Grind to 700/2100xp << Shaman
step
    .hs >> Hearth to Camp Narache
step
    .goto 1412/1,-257.79,-2912.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 780 >>Turn in The Battleboars
    .target Grull Hawkwind
step
    .goto 1412/1,-239.81,-2893.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave Windfeather|r
    .turnin 3376 >>Turn in Break Sharptusk!
    .target Brave Windfeather
step << Shaman
    .goto 1412/1,-250.09,-2882.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .turnin 1519 >>Turn in Call of Earth
    .accept 1520 >>Accept Call of Earth
    .target Seer Ravenfeather
step
    .goto 1412/1,-221.83,-2877.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .turnin 757 >>Turn in Rite of Strength
    .accept 763 >>Accept Rites of the Earthmother
    .target Chief Hawkwind
step << Shaman
    .goto 1412/1,-720.68,-3031.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 1517 >>Turn in Call of Earth
    .target Minor Manifestation of Earth
    .isOnQuest 1517
step << Shaman
    .goto 1412/1,-720.68,-3031.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
    .isQuestTurnedIn 1517 --any of: Call of Earth
    .xp <4,1
step << Shaman
    .goto 1412/1,-720.68,-3031.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 1520 >>Turn in Call of Earth
    .accept 1521 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step << Shaman
    .goto 1412/1,-250.09,-2882.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .turnin 1521 >>Turn in Call of Earth
    .target Seer Ravenfeather
step << Shaman
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    .goto 1412/1,-225.94,-2865.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    .goto 1412/1,-225.94,-2865.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Lanka Farshot
step << Druid
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[Wrath]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Train |T136006:0|t[Wrath]
    .target Gart Mistrunner
step << Warrior
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Harutt Thunderhorn
step
    .goto 1412/1,68.95,-3066.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antur Fallow|r
    .accept 1656 >>Accept A Task Unfinished
    .target Antur Fallow
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 16 Mulgore
#subweight -1
#name 4-10 Mulgore: around Mull Thunderhorn
--RouteBuilder:next
#next Zone Routes (Horde)\10-12 The Barrens: around Sergra Darkthorn;Zone Routes (Horde)\7-11 Durotar: around Master Gadrin;Zone Routes (Horde)\8-11 Tirisfal Glades: around Carendin Halgar

step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 763 >>Turn in Rites of the Earthmother
    .target Baine Bloodhoof
    .isOnQuest 763
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 745 >>Accept Sharing the Land
    .target Baine Bloodhoof
step
    .goto 1412/1,-347.19,-2365.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    .turnin 1656 >>Turn in A Task Unfinished
    .target Innkeeper Kauth
    .isOnQuest 1656
step
    .goto 1412/1,-347.19,-2365.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    .target Innkeeper Kauth
    .home >>Set your Hearthstone to Innkeeper Kauth's inn
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
step << Warrior
    .goto 1412/1,-297.87,-2279.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (7s 1c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[Ornate Blunderbuss] (4s 14c). You'll come back later if you don't have enough yet
    .target Kennah Hawkseye
step << Tauren Hunter
    .goto 1412/1,-408.84,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6067 >>Turn in The Hunter's Path
    .target Yaw Sharpmane
    .isOnQuest 6067
step << Tauren Hunter
    .goto 1412/1,-408.84,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6066 >>Turn in The Hunter's Path
    .target Yaw Sharpmane
    .isOnQuest 6066
step
    .goto 1412/1,-365.68,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r
    .accept 766 >>Accept Mazzranache
    .target Maur Raincaller
    .xp <5,1
step << Tauren
    .goto 1412/1,-445.31,-2341.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .accept 748 >>Accept Poison Water
    .target Mull Thunderhorn
step
    .goto 1412/1,-384.69,-2397.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r
    .accept 743 >>Accept Dangers of the Windfury
    .target Ruul Eagletalon
    .xp <5,1
step << Tauren
    #loop
    .goto 1412/1,-982.69,-2574.17,0
    .goto 1412/1,-982.69,-2574.17,40,0
    .goto 1412/1,-1120.89,-2612.88,40,0
    .goto 1412/1,-1223.13,-2350.52,40,0
    .goto 1412/1,-1067.46,-2352.23,40,0
    >>Kill |cRXP_ENEMY_Prairie Wolfs|r, |cRXP_ENEMY_Prairie Stalkers|r and |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |cRXP_LOOT_Prairie Wolf Paw|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob Prairie Wolf
    .mob Prairie Stalker
    .mob Prairie Wolf Alpha
step << Tauren
    #loop
    .goto 1412/1,-583.00,-2883.45,0
    .goto 1412/1,-583.00,-2883.45,40,0
    .goto 1412/1,-594.81,-2979.35,40,0
    .goto 1412/1,-445.31,-2885.16,40,0
    >>Kill |cRXP_ENEMY_Plainstriders|r, |cRXP_ENEMY_Adult Plainstriders|r, |cRXP_ENEMY_Elder Plainstriders|r and |cRXP_ENEMY_Mazzranaches|r. Loot them for |cRXP_LOOT_Plainstrider Talon|r
    .complete 748,2 --Plainstrider Talon (4)
    .mob Plainstrider
    .mob Adult Plainstrider
    .mob Elder Plainstrider
    .mob Mazzranache
step << Tauren
    #completewith next
    .hs >>Hearth to Innkeeper Kauth's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Tauren
    .goto 1412/1,-445.31,-2341.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 748 >>Turn in Poison Water
    .accept 754 >>Accept Winterhoof Cleansing
    .target Mull Thunderhorn
step
    .goto 1412/1,-384.69,-2397.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r
    .accept 743 >>Accept Dangers of the Windfury
    .target Ruul Eagletalon
    .xp <5,1
step << Tauren
    .goto 1412/1,-706.30,-2540.27
    >>Cleanse the Winterhoof Water Well
    .complete 754,1 --Cleanse the Winterhoof Water Well
step
    #loop
    .goto 1412/1,-446.85,-2732.41,0
    .goto 1412/1,-446.85,-2732.41,40,0
    .goto 1412/1,-430.41,-2742.00,40,0
    .goto 1412/1,-773.08,-2771.11,40,0
    .goto 1412/1,-681.12,-2757.41,40,0
    >>Kill |cRXP_ENEMY_Palemane Tanners|r
    >>Kill |cRXP_ENEMY_Palemane Skinners|r
    >>Kill |cRXP_ENEMY_Palemane Poachers|r
    .complete 745,1 --Palemane Tanner slain (10)
    .complete 745,2 --Palemane Skinner slain (8)
    .complete 745,3 --Palemane Poacher slain (5)
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
step
    .goto 1412/1,-399.07,-2378.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from her|r << Warrior
    .vendor >> Vendor trash
    .collect 1179,10,746,1 << Shaman/Druid
    .collect 4541,10,746,1 << Warrior
    .target Jhawna Oatwind
    .money <0.025
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 745 >>Turn in Sharing the Land while you are here
    .isQuestComplete 745
    .target Baine Bloodhoof
step << Tauren
    .goto 1412/1,-445.31,-2341.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 754 >>Turn in Winterhoof Cleansing
    .accept 756 >>Accept Thunderhorn Totem
    .target Mull Thunderhorn
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 745 >>Turn in Sharing the Land
    .target Baine Bloodhoof
step << Warrior
    .goto 1412/1,-356.43,-2357.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vira|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .money <0.01
    .target Vira Younghoof
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Train your class spells
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 284 >> Train your class spells
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Train your class spells
    .target Narm Skychaser
    .xp <8,1
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 746 >>Accept Dwarven Digging
    .target Baine Bloodhoof
    .xp <6,1
step << Tauren
    #completewith Along41
    >>As you go: Kill |cRXP_ENEMY_Flatland Cougars|r. Loot them for |cRXP_LOOT_Cougar Claws|r. |cRXP_WARN_Anything left is finished later|r
    .complete 756,2 --Cougar Claws (6)
    .mob Flatland Cougar
step << Tauren
    #label Along41
    #loop
    .goto 1412/1,-654.92,-1794.30,0
    .goto 1412/1,-654.92,-1794.30,40,0
    .goto 1412/1,-780.28,-1790.88,40,0
    >>Kill |cRXP_ENEMY_Prairie Stalkers|r. Loot them for |cRXP_LOOT_Stalker Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob Prairie Stalker
step << Tauren
    #loop
    .goto 1412/1,-895.36,-1953.91,0
    .goto 1412/1,-895.36,-1953.91,40,0
    .goto 1412/1,-965.74,-2076.18,40,0
    .goto 1412/1,-1016.60,-2142.62,40,0
    >>Kill |cRXP_ENEMY_Flatland Cougars|r. Loot them for |cRXP_LOOT_Cougar Claws|r
    .complete 756,2 --Cougar Claws (6)
    .mob Flatland Cougar
step << Tauren
    .goto 1412/1,-445.31,-2341.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 756 >>Turn in Thunderhorn Totem
    .accept 758 >>Accept Thunderhorn Cleansing
    .target Mull Thunderhorn
step
    .goto 1412/1,-347.70,-2364.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him|r << Warrior
    .vendor >> Vendor Trash << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid
    .collect 4541,10,746,1 << Warrior
    .target Innkeeper Kauth
    .money <0.025
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 746 >>Accept Dwarven Digging
    .target Baine Bloodhoof
    .xp <6,1
step << Tauren
    .goto 1412/1,-239.30,-1829.92
    >>Cleanse the Thunderhorn Water Well
    .complete 758,1 --Cleanse the Thunderhorn Water Well
step << Tauren Hunter
    #completewith next
    .zone 1456 >>Travel to Thunder Bluff
    .zoneskip 1456
step << Tauren Hunter
    .xp 10 >>Grind to level 10 (The Hunter's Path needs it)
step << Tauren Hunter
    .goto 1456/1,-93.82,-1464.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kary Thunderhorn|r
    .accept 6065 >>Accept The Hunter's Path
    .target Kary Thunderhorn
step << Tauren Hunter
    #completewith next
    .zone 1412 >>Leave Thunder Bluff for Mulgore
    .zoneskip 1412
step << Tauren
    .goto 1412/1,-445.31,-2341.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 758 >>Turn in Thunderhorn Cleansing
    .accept 759 >>Accept Wildmane Totem
    .target Mull Thunderhorn
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .trainer >> Train your class spells
    .target Krang Stonehoof
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .trainer >> Train your class spells
    .target Narm Skychaser
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 746 >>Accept Dwarven Digging
    .target Baine Bloodhoof
    .xp <6,1
step << Tauren Hunter
    .goto 1412/1,-408.84,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6065 >>Turn in The Hunter's Path
    .accept 6061 >>Accept Taming the Beast
    .target Yaw Sharpmane
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .trainer >> Train your class spells
    .target Yaw Sharpmane
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .trainer >> Train your class spells
    .target Gennia Runetotem
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 8924 >> Train your class spells
    .target Gennia Runetotem
step << Tauren Hunter
    #loop
    .goto 1412/1,-5.54,-2221.06,0
    .goto 1412/1,-5.54,-2221.06,40,0
    .goto 1412/1,53.03,-2132.69,40,0
    .goto 1412/1,34.53,-2086.80,40,0
    .goto 1412/1,20.66,-2059.40,40,0
    .goto 1412/1,-31.23,-2032.34,40,0
    >>Interact with |cRXP_FRIENDLY_Adult Plainstrider|r
    .complete 6061,1 --Adult Plainstrider
    .target Adult Plainstrider
step << Tauren Hunter
    .goto 1412/1,-408.84,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6061 >>Turn in Taming the Beast
    .accept 6087 >>Accept Taming the Beast
    .target Yaw Sharpmane
step << Tauren Hunter
    #loop
    .goto 1412/1,-281.94,-1641.89,0
    .goto 1412/1,-281.94,-1641.89,40,0
    .goto 1412/1,-253.68,-1646.68,40,0
    .goto 1412/1,-183.81,-1715.53,40,0
    .goto 1412/1,-79.01,-1571.33,40,0
    .goto 1412/1,-119.59,-1752.17,40,0
    .goto 1412/1,-62.57,-1779.23,40,0
    .goto 1412/1,17.58,-1723.75,40,0
    >>Interact with |cRXP_FRIENDLY_Prairie Stalker|r
    .complete 6087,1 --Prairie Stalker
    .target Prairie Stalker
step << Tauren Hunter
    .goto 1412/1,-408.84,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6087 >>Turn in Taming the Beast
    .accept 6088 >>Accept Taming the Beast
    .target Yaw Sharpmane
step << Tauren Hunter
    .goto 1412/1,-511.59,-1792.25
    >>Interact with |cRXP_FRIENDLY_Swoop|r
    .complete 6088,1 --Swoop
    .target Swoop
step << Tauren Hunter
    .goto 1412/1,-408.84,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw Sharpmane|r
    .turnin 6088 >>Turn in Taming the Beast
    .accept 6089 >>Accept Training the Beast
    .target Yaw Sharpmane
step << Tauren
    #loop
    .goto 1412/1,-1240.60,-2317.64,0
    .goto 1412/1,-1240.60,-2317.64,40,0
    .goto 1412/1,-1350.54,-2489.23,40,0
    .goto 1412/1,-1279.13,-2573.49,40,0
    >>Kill |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |cRXP_LOOT_Prairie Alpha Tooth|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step << Tauren
    #completewith next
    .hs >>Hearth to Innkeeper Kauth's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Tauren
    .goto 1412/1,-445.31,-2341.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 759 >>Turn in Wildmane Totem
    .accept 760 >>Accept Wildmane Cleansing
    .target Mull Thunderhorn
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 746 >>Accept Dwarven Digging
    .target Baine Bloodhoof
    .xp <6,1
step
    #completewith next
    .zone 1456 >>Travel to Thunder Bluff
    .zoneskip 1456
step << Tauren Hunter
    .goto 1456/1,-81.40,-1474.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .turnin 6089 >>Turn in Training the Beast
    .target Holt Thunderhorn
step << Hunter
    .goto 1456/1,-47.79,-1435.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Train your pet spells
    .target Hesuwa Thunderhorn
step << Druid
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
    .money <0.1154
step << Warrior/Hunter
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
step << Tauren Druid
    .xp 10 >>Grind to level 10 (Heeding the Call needs it)
step << Tauren Druid
    .goto 1456/1,38.52,-1300.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .accept 5926 >>Accept Heeding the Call
    .target Innkeeper Pala
step << Tauren Druid
    .goto 1456/1,-281.59,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 6130 >>Turn in Power over Poison
    .target Turak Runetotem
    .isOnQuest 6130
step << Tauren Druid
    .goto 1456/1,-281.59,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 5927 >>Turn in Heeding the Call
    .target Turak Runetotem
    .isOnQuest 5927
step << Tauren Druid
    .goto 1456/1,-281.59,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 5926 >>Turn in Heeding the Call
    .accept 5922 >>Accept Moonglade
    .target Turak Runetotem
step << Tauren Druid
    .goto 1456/1,-281.59,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 5932 >>Turn in Back to Thunder Bluff
    .target Turak Runetotem
    .isOnQuest 5932
step << Tauren Druid
    .goto 1456/1,-281.59,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem|r
    .accept 6002 >>Accept Body and Heart
    .target Turak Runetotem
    .isQuestTurnedIn 5932 --any of: Back to Thunder Bluff
    .xp <10,1
step << Tauren Druid
    .goto 1456/1,-281.59,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem|r
    .turnin 6002 >>Turn in Body and Heart
    .target Turak Runetotem
    .isQuestComplete 6002
step
    .goto 1456/1,52.93,-1150.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_This will unlock an easy quest. If you already have 2 professions, skip this step|r
    .train 8613 >>Train |T134366:0|t[Skinning]
    .target Mooranta
step << Tauren
    .goto 1456/1,38.94,-1238.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .target Ahanu
    .isOnQuest 6362
step << Tauren
    .goto 1456/1,38.94,-1238.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
    .isQuestTurnedIn 6362 --any of: Ride to Thunder Bluff
    .xp <10,1
step
    .goto 1456/1,122.65,-1264.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn Eagletalon|r
    .accept 744 >>Accept Preparation for Ceremony
    .target Eyahn Eagletalon
step << Tauren
    .goto 1456/1,26.10,-1196.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .target Tal
    .isOnQuest 6363
step << Tauren
    .goto 1456/1,26.10,-1196.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .accept 6364 >>Accept Return to Jahan
    .target Tal
    .isQuestTurnedIn 6363 --any of: Tal the Wind Rider Master
    .xp <10,1
step
    #completewith next
    .zone 1412 >>Leave Thunder Bluff for Mulgore
    .zoneskip 1412
step
    #loop
    .goto 1412/1,450.15,-1054.16,0
    .goto 1412/1,450.15,-1054.16,40,0
    .goto 1412/1,511.29,-983.95,40,0
    .goto 1412/1,522.08,-1176.77,40,0
    >>Kill |cRXP_ENEMY_Windfury Sorceress|r. Loot them for |cRXP_LOOT_Azure Feather|r
    >>Kill |cRXP_ENEMY_Windfury Matriarches|r. Loot them for |cRXP_LOOT_Bronze Feather|r
    .complete 744,1 --Azure Feather (6)
    .complete 744,2 --Bronze Feather (6)
    .mob Windfury Sorceress
    .mob Windfury Matriarch
step << Tauren
    .goto 1412/1,-148.36,-757.90
    >>Cleanse the Wildmane Well
    .complete 760,1 --Cleanse the Wildmane Well
step
    #completewith next
    .zone 1456 >>Travel to Thunder Bluff
    .zoneskip 1456
step
    .goto 1456/1,122.65,-1264.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn Eagletalon|r
    .turnin 744 >>Turn in Preparation for Ceremony
    .target Eyahn Eagletalon
step
    #completewith next
    .zone 1412 >>Leave Thunder Bluff for Mulgore
    .zoneskip 1412
step << Tauren
    .goto 1412/1,-445.31,-2341.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 760 >>Turn in Wildmane Cleansing
    .target Mull Thunderhorn
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Train your class spells
    .target Gennia Runetotem
    .xp <12,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Train your class spells
    .target Yaw Sharpmane
    .xp <12,1
step
    .goto 1412/1,-1103.94,-1901.50,25,0
    .goto 1412/1,-1039.72,-1911.44,25,0
    .goto 1412/1,-1008.90,-1924.11,25,0
    .goto 1412/1,-1018.14,-1946.03,25,0
    .goto 1412/1,-1041.78,-1955.96,25,0
    .goto 1412/1,-1137.85,-1942.26,25,0
    .goto 1412/1,-1131.68,-1911.44,25,0
    .xp 11+7150 >> Grind to 7150+/8700xp
step
    .goto 1412/1,-1103.94,-1901.50,25,0
    .goto 1412/1,-1039.72,-1911.44,25,0
    .goto 1412/1,-1008.90,-1924.11,25,0
    .goto 1412/1,-1018.14,-1946.03,25,0
    .goto 1412/1,-1041.78,-1955.96,25,0
    .goto 1412/1,-1137.85,-1942.26,25,0
    .goto 1412/1,-1131.68,-1911.44,25,0
    .xp 11+6375 >> Grind to 6375+/8700xp
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 5242 >> Train your class spells
    .target Krang Stonehoof
    .xp <12,1
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 746 >>Accept Dwarven Digging
    .target Baine Bloodhoof
    .xp <6,1
step
    #loop
    .goto 1412/1,-598.41,-2301.89,0
    .goto 1412/1,-598.41,-2301.89,40,0
    .goto 1412/1,-625.12,-2318.33,40,0
    .goto 1412/1,-679.58,-2337.51,40,0
    .goto 1412/1,-724.79,-2343.33,40,0
    .goto 1412/1,-796.72,-2351.55,40,0
    .goto 1412/1,-857.34,-2364.22,40,0
    .goto 1412/1,-890.73,-2369.70,40,0
    .goto 1412/1,-908.71,-2373.13,40,0
    .goto 1412/1,-931.32,-2380.66,40,0
    .goto 1412/1,-997.59,-2404.64,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 749 >>Accept The Ravaged Caravan
    .unitscan Morin Cloudstalker
step
    .goto 1412/1,-454.56,-2304.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken Windtotem|r
    .accept 761 >>Accept Swoop Hunting
    .target Harken Windtotem
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 746 >>Accept Dwarven Digging
    .target Baine Bloodhoof
    .xp <6,1
step
    .goto 1412/1,-385.72,-1524.07
    >>Kill |cRXP_ENEMY_Wiry Swoops|r, |cRXP_ENEMY_Swoops|r and |cRXP_ENEMY_Taloned Swoops|r. Loot them for |cRXP_LOOT_Trophy Swoop Quill|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #completewith next
    .hs >>Hearth to Innkeeper Kauth's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
    .target Baine Bloodhoof
step
    .goto 1412/1,-454.56,-2304.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken Windtotem|r
    .turnin 761 >>Turn in Swoop Hunting while you are here
    .isQuestComplete 761
    .target Harken Windtotem
step
    .goto 1412/1,-384.69,-2397.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r
    .accept 743 >>Accept Dangers of the Windfury
    .target Ruul Eagletalon
step
    .goto 1412/1,-405.75,-2243.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarlman Two-Moons|r
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
    .target Zarlman Two-Moons
step
    .goto 1412/1,-365.68,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r
    .accept 766 >>Accept Mazzranache
    .target Maur Raincaller
step
    #loop
    .goto 1412/1,-1052.05,-2386.48,0
    .goto 1412/1,-1052.05,-2386.48,40,0
    .goto 1412/1,-1180.49,-2316.27,40,0
    .goto 1412/1,-1150.69,-2249.48,40,0
    >>Kill |cRXP_ENEMY_Prairie Wolfs|r, |cRXP_ENEMY_Prairie Stalkers|r and |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |cRXP_LOOT_Prairie Wolf Heart|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob Prairie Wolf
    .mob Prairie Stalker
    .mob Prairie Wolf Alpha
step
    #loop
    .goto 1412/1,-965.74,-2076.18,0
    .goto 1412/1,-965.74,-2076.18,40,0
    .goto 1412/1,-895.36,-1953.91,40,0
    >>Kill |cRXP_ENEMY_Flatland Cougar|r and loot |cRXP_LOOT_Flatland Cougar Femur|r
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
step
    .goto 1412/1,-648.76,-1450.09
    >>Kill |cRXP_ENEMY_Adult Plainstriders|r, |cRXP_ENEMY_Elder Plainstriders|r and |cRXP_ENEMY_Mazzranaches|r. Loot them for |cRXP_LOOT_Plainstrider Scale|r
    .complete 766,3 --Plainstrider Scale (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
    .mob Mazzranache
step
    .goto 1412/1,-511.59,-1792.25
    >>Kill |cRXP_ENEMY_Wiry Swoops|r, |cRXP_ENEMY_Swoops|r and |cRXP_ENEMY_Taloned Swoops|r. Loot them for |cRXP_LOOT_Swoop Gizzard|r
    .complete 766,4 --Swoop Gizzard (1)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    .goto 1412/1,-1009.92,-1073.00,60,0
    .goto 1412/1,-906.66,-926.41,60,0
    .goto 1412/1,-788.50,-912.36,60,0
    .goto 1412/1,-674.44,-866.81,60,0
    .goto 1412/1,-572.21,-903.12,60,0
    .goto 1412/1,-512.61,-983.26,60,0
    .goto 1412/1,-511.59,-1084.30,60,0
    .goto 1412/1,-496.17,-1166.84,60,0
    .goto 1412/1,-506.45,-1236.71,60,0
    .goto 1412/1,-561.42,-1278.84,60,0
    .goto 1412/1,-635.91,-1302.81,60,0
    .goto 1412/1,-737.12,-1315.14,60,0
    .goto 1412/1,-836.79,-1312.40,60,0
    .goto 1412/1,-920.02,-1316.86,60,0
    .goto 1412/1,-972.42,-1249.73,60,0
    .goto 1412/1,-1063.35,-1159.31,60,0
    .goto 1412/1,-1009.92,-1073.00,60,0
    .xp 9+3020 >> Grind to 3020+/6500xp
step
    .goto 1412/1,-1009.92,-1073.00,60,0
    .goto 1412/1,-906.66,-926.41,60,0
    .goto 1412/1,-788.50,-912.36,60,0
    .goto 1412/1,-674.44,-866.81,60,0
    .goto 1412/1,-572.21,-903.12,60,0
    .goto 1412/1,-512.61,-983.26,60,0
    .goto 1412/1,-511.59,-1084.30,60,0
    .goto 1412/1,-496.17,-1166.84,60,0
    .goto 1412/1,-506.45,-1236.71,60,0
    .goto 1412/1,-561.42,-1278.84,60,0
    .goto 1412/1,-635.91,-1302.81,60,0
    .goto 1412/1,-737.12,-1315.14,60,0
    .goto 1412/1,-836.79,-1312.40,60,0
    .goto 1412/1,-920.02,-1316.86,60,0
    .goto 1412/1,-972.42,-1249.73,60,0
    .goto 1412/1,-1063.35,-1159.31,60,0
    .goto 1412/1,-1009.92,-1073.00,60,0
    .xp 9+3720 >> Grind to 3720+/6500xp
step
    .goto 1412/1,-1009.92,-1073.00,60,0
    .goto 1412/1,-906.66,-926.41,60,0
    .goto 1412/1,-788.50,-912.36,60,0
    .goto 1412/1,-674.44,-866.81,60,0
    .goto 1412/1,-572.21,-903.12,60,0
    .goto 1412/1,-512.61,-983.26,60,0
    .goto 1412/1,-511.59,-1084.30,60,0
    .goto 1412/1,-496.17,-1166.84,60,0
    .goto 1412/1,-506.45,-1236.71,60,0
    .goto 1412/1,-561.42,-1278.84,60,0
    .goto 1412/1,-635.91,-1302.81,60,0
    .goto 1412/1,-737.12,-1315.14,60,0
    .goto 1412/1,-836.79,-1312.40,60,0
    .goto 1412/1,-920.02,-1316.86,60,0
    .goto 1412/1,-972.42,-1249.73,60,0
    .goto 1412/1,-1063.35,-1159.31,60,0
    .goto 1412/1,-1009.92,-1073.00,60,0
    .xp 9+3700 >> Grind to 3700+/6500xp
step
    .goto 1412/1,-1009.92,-1073.00,60,0
    .goto 1412/1,-906.66,-926.41,60,0
    .goto 1412/1,-788.50,-912.36,60,0
    .goto 1412/1,-674.44,-866.81,60,0
    .goto 1412/1,-572.21,-903.12,60,0
    .goto 1412/1,-512.61,-983.26,60,0
    .goto 1412/1,-511.59,-1084.30,60,0
    .goto 1412/1,-496.17,-1166.84,60,0
    .goto 1412/1,-506.45,-1236.71,60,0
    .goto 1412/1,-561.42,-1278.84,60,0
    .goto 1412/1,-635.91,-1302.81,60,0
    .goto 1412/1,-737.12,-1315.14,60,0
    .goto 1412/1,-836.79,-1312.40,60,0
    .goto 1412/1,-920.02,-1316.86,60,0
    .goto 1412/1,-972.42,-1249.73,60,0
    .goto 1412/1,-1063.35,-1159.31,60,0
    .goto 1412/1,-1009.92,-1073.00,60,0
    .xp 9+4400 >> Grind to 4400+/6500xp
step
    .goto 1412/1,-1009.92,-1073.00,60,0
    .goto 1412/1,-906.66,-926.41,60,0
    .goto 1412/1,-788.50,-912.36,60,0
    .goto 1412/1,-674.44,-866.81,60,0
    .goto 1412/1,-572.21,-903.12,60,0
    .goto 1412/1,-512.61,-983.26,60,0
    .goto 1412/1,-511.59,-1084.30,60,0
    .goto 1412/1,-496.17,-1166.84,60,0
    .goto 1412/1,-506.45,-1236.71,60,0
    .goto 1412/1,-561.42,-1278.84,60,0
    .goto 1412/1,-635.91,-1302.81,60,0
    .goto 1412/1,-737.12,-1315.14,60,0
    .goto 1412/1,-836.79,-1312.40,60,0
    .goto 1412/1,-920.02,-1316.86,60,0
    .goto 1412/1,-972.42,-1249.73,60,0
    .goto 1412/1,-1063.35,-1159.31,60,0
    .goto 1412/1,-1009.92,-1073.00,60,0
    .xp 9+1280 >> Grind to 1280+/6500xp
step
    .goto 1412/1,-1009.92,-1073.00,60,0
    .goto 1412/1,-906.66,-926.41,60,0
    .goto 1412/1,-788.50,-912.36,60,0
    .goto 1412/1,-674.44,-866.81,60,0
    .goto 1412/1,-572.21,-903.12,60,0
    .goto 1412/1,-512.61,-983.26,60,0
    .goto 1412/1,-511.59,-1084.30,60,0
    .goto 1412/1,-496.17,-1166.84,60,0
    .goto 1412/1,-506.45,-1236.71,60,0
    .goto 1412/1,-561.42,-1278.84,60,0
    .goto 1412/1,-635.91,-1302.81,60,0
    .goto 1412/1,-737.12,-1315.14,60,0
    .goto 1412/1,-836.79,-1312.40,60,0
    .goto 1412/1,-920.02,-1316.86,60,0
    .goto 1412/1,-972.42,-1249.73,60,0
    .goto 1412/1,-1063.35,-1159.31,60,0
    .goto 1412/1,-1009.92,-1073.00,60,0
    .xp 9+2330 >> Grind to 2330+/6500xp
step
    .goto 1412/1,-1009.92,-1073.00,60,0
    .goto 1412/1,-906.66,-926.41,60,0
    .goto 1412/1,-788.50,-912.36,60,0
    .goto 1412/1,-674.44,-866.81,60,0
    .goto 1412/1,-572.21,-903.12,60,0
    .goto 1412/1,-512.61,-983.26,60,0
    .goto 1412/1,-511.59,-1084.30,60,0
    .goto 1412/1,-496.17,-1166.84,60,0
    .goto 1412/1,-506.45,-1236.71,60,0
    .goto 1412/1,-561.42,-1278.84,60,0
    .goto 1412/1,-635.91,-1302.81,60,0
    .goto 1412/1,-737.12,-1315.14,60,0
    .goto 1412/1,-836.79,-1312.40,60,0
    .goto 1412/1,-920.02,-1316.86,60,0
    .goto 1412/1,-972.42,-1249.73,60,0
    .goto 1412/1,-1063.35,-1159.31,60,0
    .goto 1412/1,-1009.92,-1073.00,60,0
    .xp 9+2300 >> Grind to 2300+/6500xp
step
    .goto 1412/1,-1009.92,-1073.00,60,0
    .goto 1412/1,-906.66,-926.41,60,0
    .goto 1412/1,-788.50,-912.36,60,0
    .goto 1412/1,-674.44,-866.81,60,0
    .goto 1412/1,-572.21,-903.12,60,0
    .goto 1412/1,-512.61,-983.26,60,0
    .goto 1412/1,-511.59,-1084.30,60,0
    .goto 1412/1,-496.17,-1166.84,60,0
    .goto 1412/1,-506.45,-1236.71,60,0
    .goto 1412/1,-561.42,-1278.84,60,0
    .goto 1412/1,-635.91,-1302.81,60,0
    .goto 1412/1,-737.12,-1315.14,60,0
    .goto 1412/1,-836.79,-1312.40,60,0
    .goto 1412/1,-920.02,-1316.86,60,0
    .goto 1412/1,-972.42,-1249.73,60,0
    .goto 1412/1,-1063.35,-1159.31,60,0
    .goto 1412/1,-1009.92,-1073.00,60,0
    .xp 9+3350 >> Grind to 3350+/6500xp
step
    .goto 1412/1,-347.19,-2364.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    .vendor >> Vendor trash
    .target Innkeeper Kauth
step
    .goto 1412/1,-539.33,-2550.54
    >>Pick up |cRXP_PICK_Ambercorn|r from the ground
    .complete 771,2 --Ambercorn (2)
step
    .goto 1412/1,-701.67,-2545.40
    >>Pick up |cRXP_PICK_Well Stone|r from the ground
    .complete 771,1 --Well Stone (2)
step
    .goto 1412/1,-405.75,-2243.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarlman Two-Moons|r
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
    .target Zarlman Two-Moons
step << Warrior
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
    .money <0.020
step << Warrior
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
    .money <0.010
step << Warrior/Shaman
    .goto 1456/1,26.10,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >> Get the Thunder Bluff flight path << !Tauren
    .target Tal
step
    .goto 1412/1,-365.68,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r
    .turnin 766 >>Turn in Mazzranache while you are here
    .isQuestComplete 766
    .target Maur Raincaller
step
    .goto 1412/1,367.44,-1509.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Wiserunner|r
    .turnin 772 >>Turn in Rite of Vision
    .accept 773 >>Accept Rite of Wisdom
    .target Seer Wiserunner
step
    #loop
    .goto 1412/1,414.71,-1688.81,0
    .goto 1412/1,414.71,-1688.81,40,0
    .goto 1412/1,319.15,-1712.10,40,0
    >>Kill |cRXP_ENEMY_Windfury Harpies|r and |cRXP_ENEMY_Windfury Wind Witches|r. Loot them for |cRXP_LOOT_Windfury Talon|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Harpy
    .mob Windfury Wind Witch
step
    #loop
    .goto 1412/1,313.50,-1918.63,0
    .goto 1412/1,313.50,-1918.63,40,0
    .goto 1412/1,431.15,-1945.34,40,0
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for |cRXP_LOOT_Prospector's Pick|r
    .collect 4702,1,746,1 --Prospector's Pick (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    .goto 1412/1,441.93,-1981.31
    >>Loot the |cRXP_PICK_Forges|r for |cRXP_LOOT_Broken Tools|r
    .complete 746,1 --Broken Tools (5)
step
    .goto 1412/1,-1027.39,-1150.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Raintotem|r
    .accept 833 >>Accept A Sacred Burial
    .target Lorekeeper Raintotem
step
    .goto 1412/1,-1109.08,-992.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancestral Spirit|r
    .turnin 773 >>Turn in Rite of Wisdom
    .accept 775 >>Accept Journey into Thunder Bluff
    .target Ancestral Spirit
step
    #completewith next
    .zone 1456 >>Travel to Thunder Bluff
    .zoneskip 1456
step
    .goto 1456/1,-112.71,-1209.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne Bloodhoof|r
    .turnin 775 >>Turn in Journey into Thunder Bluff
    .accept 776 >>Accept Rites of the Earthmother
    .target Cairne Bloodhoof
step
    #completewith next
    .zone 1412 >>Leave Thunder Bluff for Mulgore
    .zoneskip 1412
step
    .goto 1412/1,-674.96,-751.39
    >>Kill |cRXP_ENEMY_Arra'chea|r and loot |cRXP_LOOT_Horn of Arra'chea|r
    .complete 776,1 --Horn of Arra'chea (1)
    .mob Arra'chea
step
    #completewith next
    .zone 1456 >>Travel to Thunder Bluff
    .zoneskip 1456
step
    .goto 1456/1,-112.71,-1209.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne Bloodhoof|r
    .turnin 776 >>Turn in Rites of the Earthmother
    .target Cairne Bloodhoof
step
    #completewith next
    .zone 1412 >>Leave Thunder Bluff for Mulgore
    .zoneskip 1412
step
    #loop
    .goto 1412/1,-1076.20,-958.60,0
    .goto 1412/1,-1076.20,-958.60,40,0
    .goto 1412/1,-1126.54,-1027.44,40,0
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper slain (8)
    .mob Bristleback Interloper
step
    .goto 1412/1,-1027.39,-1150.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Raintotem|r
    .turnin 833 >>Turn in A Sacred Burial
    .target Lorekeeper Raintotem
step
    .goto 1412/1,-712.98,-1922.74
    >>Click the |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step
    .goto 1412/1,-365.68,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r
    .turnin 766 >>Turn in Mazzranache
    .target Maur Raincaller
step
    .goto 1412/1,-420.14,-1692.24
    >>Kill |cRXP_ENEMY_Ghost Howl|r and loot |cRXP_LOOT_Demon Scarred Cloak|r. Use it to start the quest
    .collect 4854,1,770 --Demon Scarred Cloak (1)
    .accept 770 >>Accept The Demon Scarred Cloak
    .use 4854
    .mob Ghost Howl
step
    #completewith next
    .hs >>Hearth to Innkeeper Kauth's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1412/1,-353.86,-2335.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn Whitecloud|r
    .turnin 770 >>Turn in The Demon Scarred Cloak
    .target Skorn Whitecloud
step
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 746 >>Turn in Dwarven Digging
    .target Baine Bloodhoof
step
    .goto 1412/1,-384.69,-2397.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r
    .turnin 743 >>Turn in Dangers of the Windfury
    .target Ruul Eagletalon
step
    .goto 1412/1,-454.56,-2304.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken Windtotem|r
    .turnin 761 >>Turn in Swoop Hunting
    .target Harken Windtotem
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 547 >> Train your class spells
    .target Narm Skychaser
    .xp <12,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Train your class spells
    .target Krang Stonehoof
    .xp <12,1
step
    #loop
    .goto 1412/1,-598.41,-2301.89,0
    .goto 1412/1,-598.41,-2301.89,40,0
    .goto 1412/1,-625.12,-2318.33,40,0
    .goto 1412/1,-679.58,-2337.51,40,0
    .goto 1412/1,-724.79,-2343.33,40,0
    .goto 1412/1,-796.72,-2351.55,40,0
    .goto 1412/1,-857.34,-2364.22,40,0
    .goto 1412/1,-890.73,-2369.70,40,0
    .goto 1412/1,-908.71,-2373.13,40,0
    .goto 1412/1,-931.32,-2380.66,40,0
    .goto 1412/1,-997.59,-2404.64,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 751 >>Turn in The Ravaged Caravan
    .accept 764 >>Accept The Venture Co.
    .unitscan Morin Cloudstalker
step
    #loop
    .goto 1412/1,-1059.24,-1930.27,0
    .goto 1412/1,-1059.24,-1930.27,40,0
    .goto 1412/1,-1114.73,-1749.09,40,0
    .goto 1412/1,-1185.11,-1781.63,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r
    >>Kill |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker slain (14)
    .complete 764,2 --Venture Co. Supervisor slain (6)
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
step << Warrior/Shaman
    .goto 1412/1,-1103.94,-1901.50,25,0
    .goto 1412/1,-1039.72,-1911.44,25,0
    .goto 1412/1,-1008.90,-1924.11,25,0
    .goto 1412/1,-1018.14,-1946.03,25,0
    .goto 1412/1,-1041.78,-1955.96,25,0
    .goto 1412/1,-1137.85,-1942.26,25,0
    .goto 1412/1,-1131.68,-1911.44,25,0
    .xp 11+7150 >> Grind to 7150+/8700xp
step << Warrior/Shaman
    .goto 1412/1,-1103.94,-1901.50,25,0
    .goto 1412/1,-1039.72,-1911.44,25,0
    .goto 1412/1,-1008.90,-1924.11,25,0
    .goto 1412/1,-1018.14,-1946.03,25,0
    .goto 1412/1,-1041.78,-1955.96,25,0
    .goto 1412/1,-1137.85,-1942.26,25,0
    .goto 1412/1,-1131.68,-1911.44,25,0
    .xp 11+6375 >> Grind to 6375+/8700xp
step
    #loop
    .goto 1412/1,-997.59,-2404.64,0
    .goto 1412/1,-997.59,-2404.64,40,0
    .goto 1412/1,-931.32,-2380.66,40,0
    .goto 1412/1,-908.71,-2373.13,40,0
    .goto 1412/1,-890.73,-2369.70,40,0
    .goto 1412/1,-857.34,-2364.22,40,0
    .goto 1412/1,-796.72,-2351.55,40,0
    .goto 1412/1,-724.79,-2343.33,40,0
    .goto 1412/1,-679.58,-2337.51,40,0
    .goto 1412/1,-625.12,-2318.33,40,0
    .goto 1412/1,-598.41,-2301.89,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 764 >>Turn in The Venture Co.
    .unitscan Morin Cloudstalker
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Train your class spells
    .target Krang Stonehoof
step
    +|cRXP_WARN_That is all of Mulgore for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Durotar|r: Call of Earth << Shaman
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade << Tauren Druid
    >>|cRXP_FRIENDLY_The Barrens|r: Return to Jahan << Tauren
step
    +|cRXP_WARN_Suggested next zones at level 9|r: |cRXP_FRIENDLY_The Barrens|r (about 3.3 levels of quests, starting around Sergra Darkthorn; 2 quests from here hand in there), |cRXP_FRIENDLY_Durotar|r (about 1.8 levels of quests, starting around Master Gadrin), |cRXP_FRIENDLY_Tirisfal Glades|r (about 1.2 levels of quests, starting around Carendin Halgar). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Mulgore is planned from level 12.|r Load its guide for level 12 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 16 Mulgore
#subweight -1
#name 12-13 Mulgore
--RouteBuilder:next
#next Zone Routes (Horde)\12-16 The Barrens: around Gazlowe;Zone Routes (Horde)\7-11 Durotar: around Master Gadrin;Zone Routes (Horde)\8-11 Tirisfal Glades: around Carendin Halgar

step << Warrior
    #completewith next
    .zone 1456 >>Travel to Thunder Bluff
    .zoneskip 1456
step << Warrior
    .goto 1456/1,-80.78,-1457.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm Ragetotem|r
    .accept 1505 >>Accept Veteran Uzzek
    .target Torm Ragetotem
step << Warrior
    #completewith next
    .zone 1412 >>Leave Thunder Bluff for Mulgore
    .zoneskip 1412
step
    .goto 1412/1,-353.86,-2335.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn Whitecloud|r
    .accept 861 >>Accept The Hunter's Way
    .target Skorn Whitecloud
step
    .goto 1412/1,-364.14,-2287.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Var'jun|r
    .accept 5661 >>Accept Touch of Weakness << Undead Priest
    .accept 5655 >>Accept Hex of Weakness << Troll Priest
    .target Var'jun
step
    #completewith next
    .zone 1456 >>Travel to Thunder Bluff
    .zoneskip 1456
step
    .goto 1456/1,-303.93,-1048.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r
    .accept 886 >>Accept The Barrens Oases
    .target Arch Druid Hamuul Runetotem
step
    #completewith next
    .zone 1412 >>Leave Thunder Bluff for Mulgore
    .zoneskip 1412
step
    #loop
    .goto 1412/1,-441.72,-966.82,0
    .goto 1412/1,-441.72,-966.82,40,0
    .goto 1412/1,-250.09,-815.78,40,0
    .goto 1412/1,-176.11,-909.62,40,0
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r. Loot them for |cRXP_LOOT_Flatland Prowler Claw|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step
    #completewith next
    .zone 1456 >>Travel to Thunder Bluff
    .zoneskip 1456
step << Shaman
    .goto 1456/1,254.06,-992.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xanis Flameweaver|r
    .accept 1523 >>Accept Call of Fire
    .target Xanis Flameweaver
step << Undead Mage/Troll Mage
    .goto 1456/1,253.85,-995.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurston Xane|r
    .accept 1883 >>Accept Speak with Un'thuwa
    .target Thurston Xane
step
    .goto 1456/1,-125.66,-1413.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 861 >>Turn in The Hunter's Way
    .accept 860 >>Accept Sergra Darkthorn
    .target Melor Stonehoof
step << Orc Hunter/Troll Hunter
    .goto 1456/1,-93.82,-1464.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kary Thunderhorn|r
    .accept 6070 >>Accept The Hunter's Path
    .target Kary Thunderhorn
step
    #completewith next
    .zone 1412 >>Leave Thunder Bluff for Mulgore
    .zoneskip 1412
step
    #loop
    .goto 1412/1,-598.41,-2301.89,0
    .goto 1412/1,-598.41,-2301.89,40,0
    .goto 1412/1,-625.12,-2318.33,40,0
    .goto 1412/1,-679.58,-2337.51,40,0
    .goto 1412/1,-724.79,-2343.33,40,0
    .goto 1412/1,-796.72,-2351.55,40,0
    .goto 1412/1,-857.34,-2364.22,40,0
    .goto 1412/1,-890.73,-2369.70,40,0
    .goto 1412/1,-908.71,-2373.13,40,0
    .goto 1412/1,-931.32,-2380.66,40,0
    .goto 1412/1,-997.59,-2404.64,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 765 >>Accept Supervisor Fizsprocket
    .unitscan Morin Cloudstalker
    .isQuestTurnedIn 751 --any of: The Ravaged Caravan
step
    .goto 1412/1,-1286.32,-1756.28
    >>Kill |cRXP_ENEMY_Supervisor Fizsprocket|r and loot |cRXP_LOOT_Fizsprocket's Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Fizsprocket
    .isOnQuest 765
step
    #loop
    .goto 1412/1,-997.59,-2404.64,0
    .goto 1412/1,-997.59,-2404.64,40,0
    .goto 1412/1,-931.32,-2380.66,40,0
    .goto 1412/1,-908.71,-2373.13,40,0
    .goto 1412/1,-890.73,-2369.70,40,0
    .goto 1412/1,-857.34,-2364.22,40,0
    .goto 1412/1,-796.72,-2351.55,40,0
    .goto 1412/1,-724.79,-2343.33,40,0
    .goto 1412/1,-679.58,-2337.51,40,0
    .goto 1412/1,-625.12,-2318.33,40,0
    .goto 1412/1,-598.41,-2301.89,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 765 >>Turn in Supervisor Fizsprocket
    .unitscan Morin Cloudstalker
    .isOnQuest 765
step
    +|cRXP_WARN_That is all of Mulgore for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Durotar|r: Speak with Un'thuwa << Undead Mage/Troll Mage
    >>|cRXP_FRIENDLY_Durotar|r: The Hunter's Path << Orc Hunter/Troll Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: Hex of Weakness << Troll Priest
    >>|cRXP_FRIENDLY_The Barrens|r: Sergra Darkthorn, The Barrens Oases
    >>|cRXP_FRIENDLY_The Barrens|r: Veteran Uzzek << Warrior
    >>|cRXP_FRIENDLY_The Barrens|r: Call of Fire << Shaman
    >>|cRXP_FRIENDLY_Undercity|r: Touch of Weakness << Undead Priest
step
    +|cRXP_WARN_Suggested next zones at level 12|r: |cRXP_FRIENDLY_The Barrens|r (about 1.6 levels of quests, starting around Gazlowe), |cRXP_FRIENDLY_Durotar|r (about 1.2 levels of quests, starting around Master Gadrin), |cRXP_FRIENDLY_Tirisfal Glades|r (about 0.8 levels of quests, starting around Carendin Halgar). Completing this step loads the guide for The Barrens --RouteBuilder:next
step << Tauren Druid
    +|cRXP_WARN_The rest of Mulgore is planned from level 15.|r Load its guide for level 15 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Tauren Druid
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 16 Mulgore
#subweight -1
#name 15-16 Mulgore
--RouteBuilder:next
#next Zone Routes (Horde)\12-16 The Barrens: around Gazlowe

step << Tauren Druid
    .goto 1456/1,-281.59,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem|r
    .accept 6126 >>Accept Lessons Anew
    .target Turak Runetotem
step
    +|cRXP_WARN_End of the Mulgore route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Moonglade|r: Lessons Anew << Tauren Druid
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_The Barrens|r (about 1.4 levels of quests, starting around Gazlowe). Completing this step loads the guide for The Barrens --RouteBuilder:next
]])
