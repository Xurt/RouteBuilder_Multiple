-- 10-20 Azshara: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 4 guides, listed under "10 - 24 Azshara" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Azshara.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 24 Azshara
#subweight -10
#name 10-14 Azshara: around Labor Captain Grabbit
#next Zone Routes (Horde)\14-16 Azshara: around Assistant Greely

step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
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
    .accept 26397 >>Accept Walk With The Earth Mother
    .target Baine Bloodhoof
    .isQuestTurnedIn 24540 --any of: War Dance
    .xp <10,1
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
    .turnin 24540 >>Turn in War Dance
    .target Baine Bloodhoof
    .isQuestComplete 24540
step
    #completewith next
    .zone 76 >>Leave Thunder Bluff for Azshara
    .zoneskip 76
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 25648 >>Turn in Beyond Durotar
    .target Ag'tor Bloodfist
    .isOnQuest 25648
step
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .accept 14118 >>Accept Venison for the Troops
    .accept 14117 >>Accept The Eyes of Ashenvale
    .target Ag'tor Bloodfist
step << Goblin
    .goto 76,27.00,77.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Labor Captain Grabbit|r
    .turnin 25275 >>Turn in Report to the Labor Captain
    .target Labor Captain Grabbit
    .isOnQuest 25275
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.00,77.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Labor Captain Grabbit|r
    .turnin 28496 >>Turn in Warchief's Command: Azshara!
    .accept 14129 >>Accept Runaway Shredder!
    .target Labor Captain Grabbit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop14127x1
    >>|cRXP_LOOT_Scout's Orders|r can drop from |cRXP_ENEMY_Talrendis Scout|r. Use it to start the quest if you get one
    .collect 47039,1,14127 --Scout's Orders (1)
    .accept 14127 >>Accept Return of the Highborne?
    .use 47039
step
    #label Drop14127x1
    #loop
    .goto 76,28.83,74.34,0
    .goto 76,28.83,74.34,40,0
    .goto 76,30.58,77.16,40,0
    .goto 76,33.06,76.43,40,0
    .goto 76,28.55,69.80,40,0
    >>Kill |cRXP_ENEMY_Talrendis Scouts|r
    >>Kill |cRXP_ENEMY_Weakened Mosshoof Stags|r. Loot them for |cRXP_LOOT_Slab of Venison|r
    >>Kill |cRXP_ENEMY_Runaway Shredder|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 14117,1 --Talrendis Scout slain (8)
    .complete 14118,1 --Slab of Venison (15)
    .complete 14129,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Runaway Shredder slain (1)
    .mob Talrendis Scout
    .mob Weakened Mosshoof Stag
    .mob Runaway Shredder << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 14118 >>Turn in Venison for the Troops
    .target Ag'tor Bloodfist
step
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 14117 >>Turn in The Eyes of Ashenvale while you are here
    .isQuestComplete 14117
    .target Ag'tor Bloodfist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.00,77.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Labor Captain Grabbit|r
    .turnin 14129 >>Turn in Runaway Shredder!
    .accept 14134 >>Accept The Captain's Logs
    .target Labor Captain Grabbit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,27.93,72.86,0
    .goto 76,27.93,72.86,40,0
    .goto 76,29.84,75.01,40,0
    >>Loot the |cRXP_PICK_Azshara Lumber Piles|r for |cRXP_LOOT_Azshara Lumber|r
    .complete 14134,1 --Azshara Lumber (6)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.00,77.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Labor Captain Grabbit|r
    .turnin 14134 >>Turn in The Captain's Logs
    .accept 14135 >>Accept Up a Tree
    .target Labor Captain Grabbit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,30.45,79.46,0
    .goto 76,30.45,79.46,40,0
    .goto 76,32.40,77.91,40,0
    .goto 76,34.44,80.10,40,0
    >>Kill |cRXP_ENEMY_Talrendis Snipers|r
    .complete 14135,1 --Talrendis Sniper slain (9)
    .mob Talrendis Sniper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.00,77.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Labor Captain Grabbit|r
    .turnin 14135 >>Turn in Up a Tree
    .accept 14146 >>Accept Defend the Gates!
    .target Labor Captain Grabbit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,26.24,75.17
    >>Kill |cRXP_ENEMY_Talrendis Raiders|r
    .complete 14146,1 --Talrendis Raider slain (20)
    .mob Talrendis Raider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,26.80,77.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 14146 >>Turn in Defend the Gates!
    .target ?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.00,77.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Labor Captain Grabbit|r
    .accept 14155 >>Accept Arborcide
    .target Labor Captain Grabbit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,21.40,75.94
    >>Kill |cRXP_ENEMY_Talrendis Ancient|r
    .complete 14155,1 --Talrendis Ancient slain (1)
    .mob Talrendis Ancient
step
    .goto 76,27.00,77.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Labor Captain Grabbit|r
    .turnin 14155 >>Turn in Arborcide << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 14162 >>Accept Report to Horzak
    .target Labor Captain Grabbit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 14127 >>Turn in Return of the Highborne?
    .target Ag'tor Bloodfist
    .isOnQuest 14127
step
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .accept 14128 >>Accept Return of the Highborne?
    .target Ag'tor Bloodfist
    .isQuestTurnedIn 14127 --any of: Return of the Highborne?
    .xp <8,1
step
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 14117 >>Turn in The Eyes of Ashenvale
    .target Ag'tor Bloodfist
step
    .goto 76,29.46,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beezle Spinspark|r
    .target Beezle Spinspark
    .home >>Set your Hearthstone to Beezle Spinspark's inn
step
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea Skyreaver|r
    .turnin 14128 >>Turn in Return of the Highborne?
    .target Malynea Skyreaver
    .isOnQuest 14128
step
    .goto 76,29.15,66.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horzak Zignibble|r
    .turnin 14162 >>Turn in Report to Horzak
    .accept 14161 >>Accept Basilisk Bashin' << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 14165 >>Accept Stone Cold << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Horzak Zignibble
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.25,66.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Fisk|r
    .accept 14197 >>Accept A Quota to Meet
    .target Foreman Fisk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Greystone Basilisks|r. Loot the |cRXP_PICK_Iron Stockpiles|r for |cRXP_LOOT_Mountainfoot Iron|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14161,1 --Greystone Basilisk slain (10)
    .complete 14197,1 --Mountainfoot Iron (20)
    .mob Greystone Basilisk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,26.63,70.12,0
    .goto 76,26.63,70.12,40,0
    .goto 76,25.92,68.76,40,0
    .goto 76,25.21,71.29,40,0
    .goto 76,25.00,66.90,40,0
    .goto 76,24.74,69.94,40,0
    .goto 76,24.60,72.10,40,0
    .goto 76,23.73,67.58,40,0
    .goto 76,23.02,68.02,40,0
    .goto 76,22.94,69.34,40,0
    .goto 76,21.16,71.18,40,0
    >>Interact with |cRXP_FRIENDLY_Mountainfoot Miner|r
    .complete 14165,1 --Mountainfoot Miner
    .target Mountainfoot Miner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.15,66.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horzak Zignibble|r
    .turnin 14165 >>Turn in Stone Cold
    .accept 14190 >>Accept The Perfect Prism
    .target Horzak Zignibble
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,21.76,69.35,0
    .goto 76,21.76,69.35,40,0
    .goto 76,19.66,69.16,40,0
    >>Kill |cRXP_ENEMY_Talrendis Saboteur|r and loot |cRXP_LOOT_Crystal Pendant|r
    .complete 14190,1 --Crystal Pendant (1)
    .mob Talrendis Saboteur
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,20.26,70.41
    >>Click the |cRXP_PICK_Headquarters Radio|r
    .turnin 14190 >>Turn in The Perfect Prism
    .accept 14192 >>Accept Prismbreak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,20.03,69.98
    >>Click the |cRXP_PICK_Weapons Cabinet|r
    .turnin 14192 >>Turn in Prismbreak
    .accept 14194 >>Accept Refleshification
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along37
    #loop
    .goto 76,23.02,68.02,0
    .goto 76,23.02,68.02,40,0
    .goto 76,24.89,71.13,40,0
    >>Interact with |cRXP_FRIENDLY_Mountainfoot Miners|r
    .complete 14194,1 --Mountainfoot Miner (8)
    .target Mountainfoot Miner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,22.80,69.96,0
    .goto 76,22.80,69.96,40,0
    .goto 76,20.14,69.51,40,0
    .goto 76,24.62,65.81,40,0
    >>Kill |cRXP_ENEMY_Greystone Basilisks|r
    >>Loot the |cRXP_PICK_Iron Stockpiles|r for |cRXP_LOOT_Mountainfoot Iron|r
    .complete 14161,1 --Greystone Basilisk slain (10)
    .complete 14197,1 --Mountainfoot Iron (20)
    .mob Greystone Basilisk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.25,66.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Fisk|r
    .turnin 14197 >>Turn in A Quota to Meet
    .target Foreman Fisk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.15,66.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horzak Zignibble|r
    .turnin 14161 >>Turn in Basilisk Bashin'
    .turnin 14194 >>Turn in Refleshification
    .target Horzak Zignibble
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.52,66.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Worcester|r
    .accept 14468 >>Accept Another Warm Body
    .target Private Worcester
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.46,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Molotov|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14468 >>Turn in Another Warm Body
    .accept 14469 >>Accept Hand-me-downs
    .unitscan Commander Molotov
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix Grindlock|r
    .accept 14470 >>Accept Military Breakthrough
    .target Glix Grindlock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.11,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiz "The Eye" Salvoblast|r
    .accept 14471 >>Accept First Degree Mortar
    .target Xiz "The Eye" Salvoblast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,29.20,54.36,0
    .goto 76,29.20,54.36,40,0
    .goto 76,28.25,53.13,40,0
    >>Kill |cRXP_ENEMY_Warlord Krellian|r
    >>Pick up |cRXP_PICK_SFG|r from the ground
    >>Kill |cRXP_ENEMY_Dead Soldiers|r and |cRXP_ENEMY_Sergeant Dynamos|r. Loot them for |cRXP_LOOT_Military Supplies|r
    .complete 14470,1 --Warlord Krellian slain (1)
    .complete 14470,2 --SFG (1)
    .complete 14469,1 --Military Supplies (12)
    .mob Warlord Krellian
    .mob Dead Soldier
    .mob Sergeant Dynamo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix Grindlock|r
    .turnin 14470 >>Turn in Military Breakthrough
    .target Glix Grindlock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.46,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Molotov|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14469 >>Turn in Hand-me-downs
    .unitscan Commander Molotov
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,32.01,55.22,0
    .goto 76,32.01,55.22,40,0
    .goto 76,33.60,57.65,40,0
    >>Kill |cRXP_ENEMY_Spitelash Screamers|r and |cRXP_ENEMY_Spitelash Myrmidons|r
    .complete 14471,1 --Spitelash Screamer (60)
    .mob Spitelash Screamer
    .mob Spitelash Myrmidon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.11,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiz "The Eye" Salvoblast|r
    .turnin 14471 >>Turn in First Degree Mortar
    .target Xiz "The Eye" Salvoblast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix Grindlock|r
    .accept 14472 >>Accept In The Face!
    .target Glix Grindlock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,32.79,58.81
    >>Kill |cRXP_ENEMY_Enslaved Son of Arkkoroc|r
    .complete 14472,1 --Enslaved Son of Arkkoroc slain (1)
    .mob Enslaved Son of Arkkoroc
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glix Grindlock|r
    .turnin 14472 >>Turn in In The Face!
    .target Glix Grindlock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.46,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Molotov|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 24452 >>Accept Profitability Scouting
    .unitscan Commander Molotov
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,31.88,50.09
    >>Click the |cRXP_PICK_Heart of Arkkoroc|r
    .complete 24452,1 --Heart of Arkkoroc
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.46,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Molotov|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24452 >>Turn in Profitability Scouting
    .accept 24453 >>Accept Private Chat
    .unitscan Commander Molotov
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.52,66.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Worcester|r
    .turnin 24453 >>Turn in Private Chat
    .target Private Worcester
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.72,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer Clubnik|r
    .accept 14202 >>Accept Survey the Lakeshore
    .target Custer Clubnik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea Skyreaver|r
    .accept 14201 >>Accept A Thousand Stories in the Sand
    .target Malynea Skyreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,35.42,72.52,0
    .goto 76,35.42,72.52,40,0
    .goto 76,36.49,76.64,40,0
    >>Kill |cRXP_ENEMY_Survey Equipment|r and |cRXP_ENEMY_North Survey Marker Kill Credit|r
    >>Kill |cRXP_ENEMY_Survey Equipment|r and |cRXP_ENEMY_East Survey Marker Kill Credit|r
    >>Kill |cRXP_ENEMY_Survey Equipment|r and |cRXP_ENEMY_West Survey Marker Kill Credit|r
    >>Loot the |cRXP_PICK_Ancient Debris Piles|r for |cRXP_LOOT_Recovered Artifacts|r
    .complete 14202,2 --Survey Equipment (1)
    .complete 14202,3 --Survey Equipment (1)
    .complete 14202,1 --Survey Equipment (1)
    .complete 14201,1 --Recovered Artifacts (5)
    .mob Survey Equipment
    .mob North Survey Marker Kill Credit
    .mob East Survey Marker Kill Credit
    .mob West Survey Marker Kill Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.72,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer Clubnik|r
    .turnin 14202 >>Turn in Survey the Lakeshore
    .accept 14209 >>Accept Gunk in the Trunk
    .target Custer Clubnik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along61
    >>As you go: Kill |cRXP_ENEMY_Ectoplasmic Exhaust|r and loot |cRXP_LOOT_Ectosplatter Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14209,1 --Ectosplatter Sample (1)
    .mob Ectoplasmic Exhaust
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along61
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea Skyreaver|r
    .turnin 14201 >>Turn in A Thousand Stories in the Sand
    .accept 14215 >>Accept Memories of the Dead
    .target Malynea Skyreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,30.10,67.46
    >>Kill |cRXP_ENEMY_Ectoplasmic Exhaust|r and loot |cRXP_LOOT_Ectosplatter Sample|r
    .complete 14209,1 --Ectosplatter Sample (1)
    .mob Ectoplasmic Exhaust
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.72,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer Clubnik|r
    .turnin 14209 >>Turn in Gunk in the Trunk
    .accept 14423 >>Accept Dozercism
    .target Custer Clubnik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,30.10,67.23
    >>Kill |cRXP_ENEMY_Clubnik's Dozer|r
    .complete 14423,1 --Clubnik's Dozer slain (1)
    .mob Clubnik's Dozer
step
    .goto 76,29.72,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer Clubnik|r
    .turnin 14423 >>Turn in Dozercism << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 14424 >>Accept Need More Science
    .target Custer Clubnik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,37.52,74.52
    >>Interact with |cRXP_FRIENDLY_Archmage Selwyn|r
    .complete 14215,1 --Archmage Selwyn
    .target Archmage Selwyn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea Skyreaver|r
    .turnin 14215 >>Turn in Memories of the Dead
    .accept 14216 >>Accept Mystery of the Sarcen Stone
    .target Malynea Skyreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,35.57,75.31
    >>Open the |cRXP_PICK_Ancient Stone Cask|r. Loot it for |cRXP_LOOT_Sarcen Stone|r
    .complete 14216,1 --Sarcen Stone (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea Skyreaver|r
    .turnin 14216 >>Turn in Mystery of the Sarcen Stone
    .target Malynea Skyreaver
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 24 Azshara
#subweight -10
#name 14-16 Azshara: around Assistant Greely
#next Zone Routes (Horde)\16-18 Azshara: around Wrenchmen Recruitment Poster

step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 14424 >>Turn in Need More Science
    .target Assistant Greely
    .isOnQuest 14424
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .accept 14308 >>Accept When Science Attacks
    .target Assistant Greely
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,52.22,74.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bombardier Captain Smooks|r
    .accept 14258 >>Accept Mortar the Point
    .target Bombardier Captain Smooks
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along88
    >>As you go: Pick up |cRXP_PICK_Goblin Mortar Shell|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twistex Happytongs|r
    .accept 14322 >>Accept Bad Science! Bad!
    .target Twistex Happytongs
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,42.23,76.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subject Nine|r
    .accept 14408 >>Accept Nine's Plan
    .target Subject Nine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,43.54,75.88,0
    .goto 76,43.54,75.88,40,0
    .goto 76,46.48,76.24,40,0
    >>Use the Fireliminator X-21 to extinguish 8 fires and to rescue 6 Research Interns from the inferno at the Secret Lab.
    .complete 14308,1 --Secret Lab Fires (8)
    .target Secret Lab Fires
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_Mutant Goblin|r and loot |cRXP_LOOT_Secret Rocket Plans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along76
    #loop
    .goto 76,43.45,76.54,0
    .goto 76,43.45,76.54,40,0
    .goto 76,46.20,76.87,40,0
    >>Interact with |cRXP_FRIENDLY_Research Interns|r
    .complete 14308,2 --Research Intern (6)
    .target Research Intern
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,43.83,77.36
    >>Click the |cRXP_PICK_Secret Lab Squawkbox|r
    .turnin 14308 >>Turn in When Science Attacks
    .accept 14310 >>Accept Segmentation Fault: Core Dumped
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,43.96,77.04
    >>Activate the Reactor Control Console and escort the Azsharite Core back to the Southern Rocketway Terminus. Use the Fireliminator X-21 on the Core if it starts to overheat.
    .complete 14310,1 --Azsharite Core
    .target Azsharite Core
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 14310 >>Turn in Segmentation Fault: Core Dumped
    .accept 14370 >>Accept Mysterious Azsharite
    .accept 14371 >>Accept A Gigantic Snack
    .target Assistant Greely
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along81
    >>As you go: Kill |cRXP_ENEMY_Mistwing Cliffdwellers|r. Loot them for |cRXP_LOOT_Mutilated Mistwing Carcass|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob Mistwing Cliffdweller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along80
    >>As you go: Kill |cRXP_ENEMY_Mutant Goblin|r and loot |cRXP_LOOT_Secret Rocket Plans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along80
    .goto 76,45.93,76.09
    >>Interact with |cRXP_FRIENDLY_Buzzer|r
    .complete 14408,1 --Buzzer
    .target Buzzer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along81
    .goto 76,45.96,76.39
    >>Kill |cRXP_ENEMY_Mutant Goblin|r and loot |cRXP_LOOT_Secret Rocket Plans|r
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
step
    #loop
    .goto 76,45.31,74.96,0
    .goto 76,45.31,74.96,40,0
    .goto 76,45.09,79.10,40,0
    .goto 76,42.81,80.27,40,0
    .goto 76,39.08,79.85,40,0
    >>Loot the |cRXP_PICK_Azsharite Formations|r for |cRXP_LOOT_Azsharite Sample|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Mistwing Cliffdwellers|r. Loot them for |cRXP_LOOT_Mutilated Mistwing Carcass|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Static-Charged Hippogryphs|r
    .complete 14370,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Azsharite Sample (5)
    .complete 14371,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Mutilated Mistwing Carcass (8)
    .complete 14322,1 --Static-Charged Hippogryph slain (8)
    .mob Mistwing Cliffdweller << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Static-Charged Hippogryph
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,42.23,76.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subject Nine|r
    .turnin 14408 >>Turn in Nine's Plan
    .accept 14422 >>Accept Raptor Raptor Rocket
    .target Subject Nine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,44.33,75.83
    >>Release five Experimental Raptors from their cages in the Secret Lab and deliver them to the rocket beside Subject Nine.
    .complete 14422,1 --Experimental Raptor (5)
    .target Experimental Raptor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,42.23,76.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subject Nine|r
    .turnin 14422 >>Turn in Raptor Raptor Rocket while you are here
    .isQuestComplete 14422
    .target Subject Nine
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twistex Happytongs|r
    .turnin 14322 >>Turn in Bad Science! Bad!
    .accept 14442 >>Accept My Favorite Subject
    .target Twistex Happytongs
step
    .goto 76,42.23,76.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subject Nine|r
    .turnin 14422 >>Turn in Raptor Raptor Rocket << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 14442 >>Turn in My Favorite Subject
    .target Subject Nine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 14370 >>Turn in Mysterious Azsharite
    .turnin 14371 >>Turn in A Gigantic Snack
    .accept 14377 >>Accept Befriending Giants
    .target Assistant Greely
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along88
    .goto 76,47.75,75.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gormungan|r
    .complete 14377,1 --Gormungan
    .target Gormungan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 14377 >>Turn in Befriending Giants
    .accept 14385 >>Accept Azsharite Experiment Number One
    .target Assistant Greely
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .accept 14383 >>Accept The Terrible Tinkers of the Ruined Reaches
    .target Hobart Grapplehammer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,43.46,82.54,0
    .goto 76,43.46,82.54,40,0
    .goto 76,39.89,84.76,40,0
    >>Pick up |cRXP_PICK_Giant-Sized Laxative|r from the ground
    >>Kill |cRXP_ENEMY_Bingham Gadgetspring|r
    >>Kill |cRXP_ENEMY_Netgun Gnomes|r
    >>Kill |cRXP_ENEMY_Zapper Gnomes|r
    .complete 14385,2 --Giant-Sized Laxative (1)
    .complete 14383,1 --Bingham Gadgetspring slain (1)
    .complete 14383,2 --Netgun Gnome slain (4)
    .complete 14383,3 --Zapper Gnome slain (6)
    .mob Bingham Gadgetspring
    .mob Netgun Gnome
    .mob Zapper Gnome
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along94
    >>As you go: Pick up |cRXP_PICK_Goblin Mortar Shell|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 14258,1 --Goblin Mortar Shell (5)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.75,75.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gormungan|r
    .complete 14385,1 --Gormungan
    .target Gormungan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 14385 >>Turn in Azsharite Experiment Number One
    .accept 14388 >>Accept Azsharite Experiment Number Two
    .target Assistant Greely
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 14383 >>Turn in The Terrible Tinkers of the Ruined Reaches while you are here
    .isQuestComplete 14383
    .target Hobart Grapplehammer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along94
    .goto 76,47.75,75.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gormungan|r
    .complete 14388,1 --Gormungan
    .target Gormungan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,46.55,76.07,0
    .goto 76,46.55,76.07,40,0
    .goto 76,43.48,75.90,40,0
    >>Pick up |cRXP_PICK_Goblin Mortar Shell|r from the ground
    .complete 14258,1 --Goblin Mortar Shell (5)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 14388 >>Turn in Azsharite Experiment Number Two
    .target Assistant Greely
step
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .turnin 14383 >>Turn in The Terrible Tinkers of the Ruined Reaches << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 24458 >>Accept A Hello to Arms
    .target Hobart Grapplehammer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,52.22,74.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bombardier Captain Smooks|r
    .turnin 14258 >>Turn in Mortar the Point
    .target Bombardier Captain Smooks
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.68,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torg Twocrush|r
    .accept 14262 >>Accept To Gut a Fish
    .accept 14267 >>Accept Investigating the Sea Shrine
    .target Torg Twocrush
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along102
    >>As you go: Kill |cRXP_ENEMY_Spitelash Stormfuries|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14262,1 --Spitelash Stormfury slain (6)
    .mob Spitelash Stormfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,58.98,71.81
    >>Click the |cRXP_PICK_Naga Power Stone|r
    .turnin 14267 >>Turn in Investigating the Sea Shrine
    .accept 14270 >>Accept The Keystone Shard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,57.52,70.95
    >>Pick up |cRXP_PICK_Keystone Shard|r from the ground
    .complete 14270,1 --Keystone Shard (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along102
    .goto 76,58.98,71.81
    >>Click the |cRXP_PICK_Naga Power Stone|r
    .turnin 14270 >>Turn in The Keystone Shard
    .accept 14271 >>Accept Report to Twocrush
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,60.00,76.65,0
    .goto 76,60.00,76.65,40,0
    .goto 76,61.26,77.71,40,0
    >>Kill |cRXP_ENEMY_Spitelash Stormfuries|r
    .complete 14262,1 --Spitelash Stormfury slain (6)
    .mob Spitelash Stormfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,57.63,75.95,0
    .goto 76,57.63,75.95,40,0
    .goto 76,55.25,76.36,40,0
    >>Kill |cRXP_ENEMY_Spitelash Seacallers|r
    .complete 14262,2 --Spitelash Seacaller slain (6)
    .mob Spitelash Seacaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.68,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14262 >>Turn in To Gut a Fish
    .turnin 14271 >>Turn in Report to Twocrush
    .accept 14295 >>Accept Sisters of the Sea
    .target Torg Twocrush
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,62.81,76.27
    >>Kill |cRXP_ENEMY_Lady Silisthra|r
    >>Kill |cRXP_ENEMY_Lady Vesthra|r
    .complete 14295,1 --Lady Silisthra slain (1)
    .complete 14295,2 --Lady Vesthra slain (1)
    .mob Lady Silisthra
    .mob Lady Vesthra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,50.68,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torg Twocrush|r
    .turnin 14295 >>Turn in Sisters of the Sea
    .target Torg Twocrush
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .trainer >> Train your class spells
    .target Maxx Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >> Train your class spells
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >> Train your class spells
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >> Train your class spells
    .target Sister Goldskimmer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,56.98,50.09
    >>Click the |cRXP_PICK_Wrenchmen Recruitment Poster|r
    .accept 14478 >>Accept Operation Fishgut
    .isQuestTurnedIn 24452 --any of: Profitability Scouting
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stinky Shapshiv|r
    .trainer >> Train your class spells
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >> Train your class spells
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r upstairs
    .trainer >> Train your class spells
    .target Warrior-Matic NX-01
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,59.33,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teemo|r
    .accept 14407 >>Accept Azshara Blues
    .target Teemo
step
    .goto 76,60.55,50.88
    >>Deliver the Armed Azsharite Core to Bleenik Fizzlefuse at Bilgewater Harbor. Speak with Friz Groundspin for a free airlift.
    .complete 24458,1 --Bleenik Fizzlefuse
    .target Bleenik Fizzlefuse
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 24 Azshara
#subweight -10
#name 16-18 Azshara: around Wrenchmen Recruitment Poster
#next Zone Routes (Horde)\18-24 Azshara: around Haggrum Bloodfist

step
    .goto 76,60.55,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bleenik Fizzlefuse|r
    .turnin 24458 >>Turn in A Hello to Arms
    .target Bleenik Fizzlefuse
    .isOnQuest 24458
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.46,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Molotov|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14478 >>Turn in Operation Fishgut
    .unitscan Commander Molotov
    .isOnQuest 14478
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,29.46,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Molotov|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 24455 >>Accept Rapid Deployment
    .unitscan Commander Molotov
    .isQuestTurnedIn 14478 --any of: Operation Fishgut
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,58.10,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Desoto|r
    .turnin 24455 >>Turn in Rapid Deployment
    .target Captain Desoto
    .isOnQuest 24455
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,58.10,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Desoto|r
    .accept 14479 >>Accept There Are Many Like It
    .target Captain Desoto
    .isQuestTurnedIn 24455 --any of: Rapid Deployment
step
    .goto 76,39.14,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruckus|r
    .accept 24437 >>Accept First Come, First Served
    .target Ruckus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,41.50,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Drex|r
    .turnin 14479 >>Turn in There Are Many Like It
    .target Lieutenant Drex
    .isOnQuest 14479
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,41.50,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Drex|r
    .accept 24435 >>Accept Mop Up
    .target Lieutenant Drex
    .isQuestTurnedIn 14479 --any of: There Are Many Like It
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,41.39,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hort|r
    .accept 24436 >>Accept Halo Drops
    .target Sergeant Hort
    .isQuestTurnedIn 14479 --any of: There Are Many Like It
step
    .goto 76,43.87,59.92
    >>Plant Ruckus' Territorial Claim Flag next to the prime real estate locations along the Shattered Strand.
    .complete 24437,1 --Real Estate Bunny (Pagoda)
    .target Real Estate Bunny (Pagoda)
step
    .goto 76,43.60,43.43
    >>Plant Ruckus' Territorial Claim Flag next to the prime real estate locations along the Shattered Strand.
    .complete 24437,2 --Real Estate Bunny (Tower)
    .target Real Estate Bunny (Tower)
step
    .goto 76,45.46,38.51
    >>Plant Ruckus' Territorial Claim Flag next to the prime real estate locations along the Shattered Strand.
    .complete 24437,3 --Real Estate Bunny (Vista)
    .target Real Estate Bunny (Vista)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,40.44,46.94,0
    .goto 76,40.44,46.94,40,0
    .goto 76,39.56,50.76,40,0
    .goto 76,38.80,54.05,40,0
    >>Kill |cRXP_ENEMY_Spitelash Sirens|r and |cRXP_ENEMY_Spitelash Warriors|r
    .complete 24435,1 --Spitelash Siren (12)
    .mob Spitelash Siren
    .mob Spitelash Warrior
    .isOnQuest 24435
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,40.56,44.36,0
    .goto 76,40.56,44.36,40,0
    .goto 76,43.73,42.15,40,0
    .goto 76,45.25,38.66,40,0
    >>Interact with |cRXP_FRIENDLY_Wounded Soldiers|r
    .complete 24436,1 --Wounded Soldier (8)
    .target Wounded Soldier
    .isOnQuest 24436
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,41.39,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hort|r
    .turnin 24436 >>Turn in Halo Drops
    .target Sergeant Hort
    .isOnQuest 24436
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,41.50,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Drex|r
    .turnin 24435 >>Turn in Mop Up
    .target Lieutenant Drex
    .isOnQuest 24435
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,41.50,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Drex|r
    .accept 24448 >>Accept Field Promotion
    .target Lieutenant Drex
    .isQuestTurnedIn 24435 --Mop Up
    .isQuestTurnedIn 24436 --Halo Drops
step
    .goto 76,39.14,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruckus|r
    .turnin 24437 >>Turn in First Come, First Served
    .target Ruckus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.31,44.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tork|r
    .turnin 24448 >>Turn in Field Promotion
    .target Captain Tork
    .isOnQuest 24448
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.31,44.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tork|r
    .accept 14487 >>Accept Still Beating Heart
    .target Captain Tork
    .isQuestTurnedIn 24448 --any of: Field Promotion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.46,44.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Zelks|r
    .accept 14480 >>Accept Extermination
    .accept 14484 >>Accept Head of the Snake
    .accept 14485 >>Accept Ticker Required
    .target Sergeant Zelks
    .isQuestTurnedIn 24448 --any of: Field Promotion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora Halotrix|r
    .accept 14486 >>Accept Handling the Goods
    .target Tora Halotrix
    .isQuestTurnedIn 24448 --any of: Field Promotion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,31.88,50.09
    >>Pick up |cRXP_PICK_Heart of Arkkoroc|r from the ground
    .complete 14487,1 --Heart of Arkkoroc (1)
    .isOnQuest 14487
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,35.99,49.85
    >>Kill |cRXP_ENEMY_Lord Kassarus|r
    .complete 14484,1 --Lord Kassarus slain (1)
    .mob Lord Kassarus
    .isOnQuest 14484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,35.41,49.89,0
    .goto 76,35.41,49.89,40,0
    .goto 76,32.28,52.46,40,0
    >>Click the |cRXP_PICK_Spitelash Runestone|r
    .complete 14485,1 --Spitelash Runestone
    .isOnQuest 14485
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,35.08,49.93,0
    .goto 76,35.08,49.93,40,0
    .goto 76,36.02,50.58,40,0
    .goto 76,32.59,46.37,40,0
    >>Pick up |cRXP_PICK_Highborne Tablet|r from the ground
    .complete 14486,1 --Highborne Tablet (12)
    .isOnQuest 14486
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,35.78,48.61,0
    .goto 76,35.78,48.61,40,0
    .goto 76,32.22,47.71,40,0
    .goto 76,30.35,51.02,40,0
    >>Kill |cRXP_ENEMY_Spitelash Serpent Guards|r, |cRXP_ENEMY_Spitelash Enchantress|r, |cRXP_ENEMY_High Priestess Siltheras|r and |cRXP_ENEMY_Spitelash Battlemasters|r
    .complete 14480,1 --Spitelash Serpent Guard (30)
    .mob Spitelash Serpent Guard
    .mob Spitelash Enchantress
    .mob High Priestess Silthera
    .mob Spitelash Battlemaster
    .isOnQuest 14480
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.46,44.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Zelks|r
    .turnin 14480 >>Turn in Extermination
    .target Sergeant Zelks
    .isOnQuest 14480
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.46,44.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Zelks|r
    .turnin 14484 >>Turn in Head of the Snake
    .target Sergeant Zelks
    .isOnQuest 14484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.46,44.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Zelks|r
    .turnin 14485 >>Turn in Ticker Required
    .target Sergeant Zelks
    .isOnQuest 14485
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora Halotrix|r
    .turnin 14486 >>Turn in Handling the Goods
    .target Tora Halotrix
    .isOnQuest 14486
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.31,44.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tork|r
    .turnin 14487 >>Turn in Still Beating Heart
    .target Captain Tork
    .isOnQuest 14487
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,34.31,44.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tork|r
    .accept 24449 >>Accept Shore Leave
    .target Captain Tork
    .isQuestTurnedIn 14480 --Extermination
    .isQuestTurnedIn 14484 --Head of the Snake
    .isQuestTurnedIn 14485 --Ticker Required
    .isQuestTurnedIn 14486 --Handling the Goods
    .isQuestTurnedIn 14487 --Still Beating Heart
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,60.61,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Bedlam|r
    .turnin 24449 >>Turn in Shore Leave
    .target Uncle Bedlam
    .isOnQuest 24449
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalec|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14407 >>Turn in Azshara Blues
    .unitscan Kalec
    .isOnQuest 14407
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalec|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14130 >>Accept Friends Come In All Colors
    .unitscan Kalec
    .isQuestTurnedIn 14407 --any of: Azshara Blues
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14130 >>Turn in Friends Come In All Colors
    .target Ergll
    .isOnQuest 14130
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .accept 14131 >>Accept A Little Pick-me-up
    .accept 14132 >>Accept That's Just Rude!
    .accept 14323 >>Accept Absorbent
    .target Ergll
    .isQuestTurnedIn 14130 --any of: Friends Come In All Colors
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,75.78,35.39,0
    .goto 76,75.78,35.39,40,0
    .goto 76,77.29,39.26,40,0
    >>Kill |cRXP_ENEMY_Vile Splashes|r. Loot them for |cRXP_LOOT_Simmering Water Droplet|r
    .complete 14323,1 --Simmering Water Droplet (20)
    .mob Vile Splash
    .isOnQuest 14323
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14323 >>Turn in Absorbent
    .target Ergll
    .isOnQuest 14323
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,71.72,34.77,0
    .goto 76,71.72,34.77,40,0
    .goto 76,69.96,31.64,40,0
    >>Loot the |cRXP_PICK_Kawphi Plants|r for |cRXP_LOOT_Kawphi Bean|r
    .complete 14131,1 --Kawphi Bean (10)
    .isOnQuest 14131
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Turn in A Little Pick-me-up while you are here
    .isQuestComplete 14131
    .target Ergll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,73.37,36.26,0
    .goto 76,73.37,36.26,40,0
    .goto 76,73.54,34.07,40,0
    .goto 76,74.99,32.86,40,0
    >>Kill |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Makrinni Scrabbler slain (10)
    .mob Makrinni Scrabbler
    .isOnQuest 14132
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Turn in A Little Pick-me-up
    .target Ergll
    .isOnQuest 14131
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14132 >>Turn in That's Just Rude!
    .target Ergll
    .isOnQuest 14132
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .accept 14324 >>Accept Full of Hot Water
    .target Ergll
    .isQuestTurnedIn 14323 --any of: Absorbent
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,81.09,30.69
    >>Kill |cRXP_ENEMY_Scalding Water Lord|r and loot |cRXP_LOOT_Globe of Boiling Water|r
    .complete 14324,1 --Globe of Boiling Water (1)
    .mob Scalding Water Lord
    .isOnQuest 14324
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .turnin 14324 >>Turn in Full of Hot Water
    .target Ergll
    .isOnQuest 14324
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ergll|r
    .accept 14345 >>Accept Wash Out
    .target Ergll
    .isQuestTurnedIn 14131 --A Little Pick-me-up
    .isQuestTurnedIn 14132 --That's Just Rude!
    .isQuestTurnedIn 14324 --Full of Hot Water
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,53.26,49.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorata Firespinner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14345 >>Turn in Wash Out
    .unitscan Sorata Firespinner
    .isOnQuest 14345
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,53.26,49.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorata Firespinner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14340 >>Accept Dressed to Impress
    .unitscan Sorata Firespinner
    .isQuestTurnedIn 14345 --any of: Wash Out
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,42.61,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorel Sunsworn|r
    .accept 14428 >>Accept Amberwind's Journal
    .target Andorel Sunsworn
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 24 Azshara
#subweight -10
#name 18-24 Azshara: around Haggrum Bloodfist
--RouteBuilder:next
#next Zone Routes (Horde)\22-27 Hillsbrad Foothills: around Serge Hinott

step
    .goto 76,42.41,23.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .accept 14431 >>Accept The Blackmaw Scar
    .target Haggrum Bloodfist
step
    #loop
    .goto 76,38.26,27.33,0
    .goto 76,38.26,27.33,40,0
    .goto 76,37.39,32.77,40,0
    >>Kill |cRXP_ENEMY_Talrendis Biologist|r and loot |cRXP_LOOT_Blackmaw Intelligence|r
    >>Kill |cRXP_ENEMY_Talrendis Biologists|r
    .complete 14431,2 --Blackmaw Intelligence (1)
    .complete 14431,1 --Talrendis Biologist slain (8)
    .mob Talrendis Biologist
step
    .goto 76,42.41,23.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14431 >>Turn in The Blackmaw Scar
    .accept 14432 >>Accept A Pale Brew
    .accept 14433 >>Accept Diplomacy by Another Means
    .target Haggrum Bloodfist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,49.79,28.48
    >>Kill |cRXP_ENEMY_Lorekeeper Amberwind|r and loot |cRXP_LOOT_Amberwind's Journal|r
    .complete 14428,1 --Amberwind's Journal (1)
    .mob Lorekeeper Amberwind
    .isOnQuest 14428
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,49.52,28.80
    >>Click the |cRXP_PICK_Upper Scrying Stone|r
    .turnin 14428 >>Turn in Amberwind's Journal
    .isOnQuest 14428
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,49.52,28.80
    >>Click the |cRXP_PICK_Upper Scrying Stone|r
    .accept 14429 >>Accept Arcane De-Construction
    .isQuestTurnedIn 14428 --any of: Amberwind's Journal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,49.08,26.55,0
    .goto 76,49.08,26.55,40,0
    .goto 76,51.96,26.89,40,0
    >>Kill |cRXP_ENEMY_Apprentice Investigators|r and |cRXP_ENEMY_Apprentice Illuminators|r. Loot them for |cRXP_LOOT_Attuned Runestone|r
    .complete 14429,1 --Attuned Runestone (10)
    .mob Apprentice Investigator
    .mob Apprentice Illuminator
    .isOnQuest 14429
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,53.00,29.03
    >>Click the |cRXP_PICK_Lower Scrying Stone|r
    .turnin 14429 >>Turn in Arcane De-Construction
    .isOnQuest 14429
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,53.00,29.03
    >>Click the |cRXP_PICK_Lower Scrying Stone|r
    .accept 14430 >>Accept Hacking the Construct
    .isQuestTurnedIn 14429 --any of: Arcane De-Construction
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,52.99,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcane Construct|r
    .complete 14430,1 --Arcane Construct
    .target Arcane Construct
    .isOnQuest 14430
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.23,20.85
    >>Put on your new wizard hat and then speak to the Image of Archmage Xylem just northeast of the Northern Rocketway Exchange.
    .complete 14340,1 --Image of Archmage Xylem
    .target Image of Archmage Xylem
    .isOnQuest 14340
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14340 >>Turn in Dressed to Impress
    .target Image of Archmage Xylem
    .isOnQuest 14340
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.29,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharkul Ironskull|r
    .accept 14250 >>Accept Renewable Resource
    .target Tharkul Ironskull
    .isQuestTurnedIn 14340 --any of: Dressed to Impress
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.15,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Will Robotronic|r
    .accept 14249 >>Accept Shear Will
    .target Will Robotronic
    .isQuestTurnedIn 14340 --any of: Dressed to Impress
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.01,21.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarla Whistlebreak|r
    .accept 14263 >>Accept Waste of Thyme
    .target Quarla Whistlebreak
    .isQuestTurnedIn 14340 --any of: Dressed to Impress
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,49.10,18.80,0
    .goto 76,49.10,18.80,40,0
    .goto 76,47.40,16.70,40,0
    >>Loot the |cRXP_PICK_Animate Besalt Chunks|r for |cRXP_LOOT_Animate Basalt|r
    .complete 14250,1 --Animate Basalt (5)
    .isOnQuest 14250
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,49.28,17.17,0
    .goto 76,49.28,17.17,40,0
    .goto 76,51.43,19.47,40,0
    .goto 76,50.20,23.34,40,0
    >>Pick up |cRXP_PICK_Living Ire Thyme|r from the ground
    .complete 14263,1 --Living Ire Thyme (8)
    .isOnQuest 14263
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,50.52,18.69,0
    .goto 76,50.52,18.69,40,0
    .goto 76,49.11,21.78,40,0
    .goto 76,47.78,14.31,40,0
    >>Kill |cRXP_ENEMY_Thunderhead Hippogryphs|r and |cRXP_ENEMY_Thunderhead Stagwings|r. Loot them for |cRXP_LOOT_Pristine Thunderhead Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
    .mob Thunderhead Stagwing
    .isOnQuest 14249
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.01,21.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quarla Whistlebreak|r
    .turnin 14263 >>Turn in Waste of Thyme
    .target Quarla Whistlebreak
    .isOnQuest 14263
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.15,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Will Robotronic|r
    .turnin 14249 >>Turn in Shear Will
    .target Will Robotronic
    .isOnQuest 14249
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.29,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharkul Ironskull|r
    .turnin 14250 >>Turn in Renewable Resource
    .target Tharkul Ironskull
    .isOnQuest 14250
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.24,21.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teresa Spireleaf|r
    .accept 14230 >>Accept Manual Labor
    .target Teresa Spireleaf
    .isQuestTurnedIn 14249 --Shear Will
    .isQuestTurnedIn 14250 --Renewable Resource
    .isQuestTurnedIn 14263 --Waste of Thyme
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .accept 14226 >>Accept Trouble Under Foot
    .target Image of Archmage Xylem
    .isQuestTurnedIn 14249 --Shear Will
    .isQuestTurnedIn 14250 --Renewable Resource
    .isQuestTurnedIn 14263 --Waste of Thyme
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.25,25.20
    >>Open the |cRXP_PICK_Stolen Manual|r. Loot it for |cRXP_LOOT_Abjurer's Manual|r
    .complete 14230,1 --Abjurer's Manual (1)
    .isOnQuest 14230
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,54.85,23.72,0
    .goto 76,54.85,23.72,40,0
    .goto 76,53.09,21.94,40,0
    >>Kill |cRXP_ENEMY_Polymorphed Cockroaches|r
    .complete 14226,1 --Polymorphed Cockroach slain (12)
    .mob Polymorphed Cockroach
    .isOnQuest 14226
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.24,21.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teresa Spireleaf|r
    .turnin 14230 >>Turn in Manual Labor
    .target Teresa Spireleaf
    .isOnQuest 14230
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14226 >>Turn in Trouble Under Foot
    .target Image of Archmage Xylem
    .isOnQuest 14226
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .accept 14413 >>Accept The Pinnacle of Learning
    .target Image of Archmage Xylem
    .isQuestTurnedIn 14226 --Trouble Under Foot
    .isQuestTurnedIn 14230 --Manual Labor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.71,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14413 >>Turn in The Pinnacle of Learning
    .target Image of Archmage Xylem
    .isOnQuest 14413
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.71,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .accept 14296 >>Accept Watch Your Step
    .target Image of Archmage Xylem
    .isQuestTurnedIn 14413 --any of: The Pinnacle of Learning
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,56.28,13.52,0
    .goto 76,56.28,13.52,40,0
    .goto 76,55.50,10.53,40,0
    >>Click the |cRXP_PICK_Energy Conduit|r
    .complete 14296,1 --Energy Conduit
    .isOnQuest 14296
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14296 >>Turn in Watch Your Step
    .target Image of Archmage Xylem
    .isOnQuest 14296
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .accept 24478 >>Accept The Trial of Frost
    .accept 14300 >>Accept The Trial of Fire
    .accept 24479 >>Accept The Trial of Shadow
    .target Image of Archmage Xylem
    .isQuestTurnedIn 14296 --any of: Watch Your Step
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,61.81,20.46
    >>Frost Trial Completed
    .complete 24478,1 --Frost Trial Completed
    .isOnQuest 24478
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,33.43,23.39
    >>Fire Trial Completed
    .complete 14300,1 --Fire Trial Completed
    .isOnQuest 14300
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,31.02,27.82
    >>Shadow Trial Completed
    .complete 24479,1 --Shadow Trial Completed
    .isOnQuest 24479
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.71,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 24478 >>Turn in The Trial of Frost
    .target Image of Archmage Xylem
    .isOnQuest 24478
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.71,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 14300 >>Turn in The Trial of Fire
    .target Image of Archmage Xylem
    .isOnQuest 14300
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.71,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .turnin 24479 >>Turn in The Trial of Shadow
    .target Image of Archmage Xylem
    .isOnQuest 24479
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Xylem|r
    .accept 14299 >>Accept Xylem's Asylum
    .target Image of Archmage Xylem
    .isQuestTurnedIn 14300 --The Trial of Fire
    .isQuestTurnedIn 24478 --The Trial of Frost
    .isQuestTurnedIn 24479 --The Trial of Shadow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,25.59,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joanna|r
    .turnin 14299 >>Turn in Xylem's Asylum
    .target Joanna
    .isOnQuest 14299
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,25.59,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joanna|r
    .accept 14389 >>Accept Wasn't It Obvious?
    .target Joanna
    .isQuestTurnedIn 14299 --any of: Xylem's Asylum
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.70,40.40
    >>Find Anara, and hopefully, Azuregos
    .complete 14389,1 --Find Anara, and hopefully, Azuregos
    .isOnQuest 14389
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.91,39.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Azuregos|r
    .turnin 14389 >>Turn in Wasn't It Obvious?
    .target Spirit of Azuregos
    .isOnQuest 14389
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.91,39.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Azuregos|r
    .accept 14390 >>Accept Easy is Boring
    .target Spirit of Azuregos
    .isQuestTurnedIn 14389 --any of: Wasn't It Obvious?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.91,39.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Azuregos|r
    .complete 14390,1 --Spirit of Azuregos
    .target Spirit of Azuregos
    .isOnQuest 14390
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.91,39.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Azuregos|r
    .turnin 14390 >>Turn in Easy is Boring
    .target Spirit of Azuregos
    .isOnQuest 14390
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,27.91,39.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Azuregos|r
    .accept 14391 >>Accept Turning the Tables
    .target Spirit of Azuregos
    .isQuestTurnedIn 14390 --any of: Easy is Boring
step
    #loop
    .goto 76,30.95,36.25,0
    .goto 76,30.95,36.25,40,0
    .goto 76,30.30,39.33,40,0
    >>Open the |cRXP_PICK_Important Documents|r. Loot it for |cRXP_LOOT_Blackmaw Meeting Agenda|r
    >>Kill |cRXP_ENEMY_Talrendis Ambassador|r and loot |cRXP_LOOT_Ambassador's Robes|r
    >>Kill |cRXP_ENEMY_Blackmaw Shamans|r, |cRXP_ENEMY_Blackmaw Warriors|r and |cRXP_ENEMY_Blackmaw Pathfinders|r. Loot them for |cRXP_LOOT_Briaroot Brew|r. It can also be picked up from |cRXP_PICK_Briaroot Brew|r on the ground
    .complete 14433,1 --Blackmaw Meeting Agenda (1)
    .complete 14433,2 --Ambassador's Robes (1)
    .complete 14432,1 --Briaroot Brew (10)
    .mob Talrendis Ambassador
    .mob Blackmaw Shaman
    .mob Blackmaw Warrior
    .mob Blackmaw Pathfinder
step
    .goto 76,42.41,23.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14432 >>Turn in A Pale Brew
    .turnin 14433 >>Turn in Diplomacy by Another Means
    .accept 14435 >>Accept The Blackmaw Doublecross
    .target Haggrum Bloodfist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,42.61,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorel Sunsworn|r
    .turnin 14430 >>Turn in Hacking the Construct
    .target Andorel Sunsworn
    .isOnQuest 14430
step
    #loop
    .goto 76,33.58,31.72,0
    .goto 76,33.58,31.72,40,0
    .goto 76,31.49,30.43,40,0
    >>Kill |cRXP_ENEMY_Ungarl|r
    >>Kill |cRXP_ENEMY_Blackmaw Warriors|r
    >>Kill |cRXP_ENEMY_Blackmaw Shamans|r
    .complete 14435,1 --Ungarl slain (1)
    .complete 14435,2 --Blackmaw Warrior slain (4)
    .complete 14435,3 --Blackmaw Shaman slain (4)
    .mob Ungarl
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    .goto 76,42.41,23.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14435 >>Turn in The Blackmaw Doublecross
    .target Haggrum Bloodfist
step
    .goto 76,66.50,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Blitz Blastospazz|r
    .fp >>Get the Bitter Reaches Flight Path
    .target Blitz Blastospazz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalec|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14391 >>Turn in Turning the Tables
    .unitscan Kalec
    .isOnQuest 14391
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalec|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 24467 >>Accept Fade to Black
    .unitscan Kalec
    .isQuestTurnedIn 14391 --any of: Turning the Tables
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,66.34,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jellix Fuselighter|r
    .accept 14297 >>Accept Pro-liberation
    .target Jellix Fuselighter
    .isQuestTurnedIn 14391 --any of: Turning the Tables
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,66.54,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feno Blastnoggin|r
    .accept 14261 >>Accept Ice Cold
    .target Feno Blastnoggin
    .isQuestTurnedIn 14391 --any of: Turning the Tables
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,71.59,16.68
    >>Kill |cRXP_ENEMY_Twilight Lord Katrana|r
    .complete 24467,1 --Twilight Lord Katrana slain (1)
    .mob Twilight Lord Katrana
    .isOnQuest 24467
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,71.85,16.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malicion|r
    .complete 24467,2 --Malicion
    .target Malicion
    .isOnQuest 24467
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalec|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24467 >>Turn in Fade to Black
    .unitscan Kalec
    .isOnQuest 24467
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,65.46,17.38,0
    .goto 76,65.46,17.38,40,0
    .goto 76,68.17,16.70,40,0
    .goto 76,66.88,13.48,40,0
    >>Kill |cRXP_ENEMY_Twilight Dragon Hunters|r, |cRXP_ENEMY_Twilight Desecrators|r and |cRXP_ENEMY_Sable Drakonids|r. Loot them for |cRXP_LOOT_Ironwrought Key|r
    .collect 49533,1,14297,1 --Ironwrought Key (1)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
    .isOnQuest 14297
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,67.76,15.76,0
    .goto 76,67.76,15.76,40,0
    .goto 76,70.54,14.12,40,0
    .goto 76,64.28,14.98,40,0
    >>Use Ironwrought Keys from cultists and dragonkin to free 4 Goblin Workers in Sable Ridge.
    .complete 14297,1 --Bilgewater Laborer (4)
    .target Bilgewater Laborer
    .isOnQuest 14297
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,68.97,13.92,0
    .goto 76,68.97,13.92,40,0
    .goto 76,70.27,19.58,40,0
    >>Kill |cRXP_ENEMY_Sable Drakes|r
    .complete 14261,1 --Sable Drake slain (8)
    .mob Sable Drake
    .isOnQuest 14261
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,66.54,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feno Blastnoggin|r
    .turnin 14261 >>Turn in Ice Cold
    .target Feno Blastnoggin
    .isOnQuest 14261
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,66.34,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jellix Fuselighter|r
    .turnin 14297 >>Turn in Pro-liberation
    .target Jellix Fuselighter
    .isOnQuest 14297
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,67.07,20.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azuregos|r
    .accept 14392 >>Accept Farewell, Minnow
    .target Azuregos
    .isQuestTurnedIn 14261 --Ice Cold
    .isQuestTurnedIn 14297 --Pro-liberation
    .isQuestTurnedIn 24467 --Fade to Black
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Max Avalanche|r
    .trainer >> Train your class spells
    .target Max Avalanche
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,53.26,49.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorata Firespinner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14392 >>Turn in Farewell, Minnow
    .unitscan Sorata Firespinner
    .isOnQuest 14392
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,52.98,49.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurlorn|r
    .accept 24497 >>Accept Airborne Again
    .target Gurlorn
    .isQuestTurnedIn 14392 --Farewell, Minnow
    .isQuestTurnedIn 24449 --Shore Leave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.01,64.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .turnin 24497 >>Turn in Airborne Again
    .target Chawg
    .isOnQuest 24497
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.01,64.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .accept 14462 >>Accept Where's My Head?
    .accept 24433 >>Accept Let Them Feast on Fear
    .target Chawg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along233
    >>As you go: Kill |cRXP_ENEMY_Talrendis Defenders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24433,1 --Talrendis Defender slain (12)
    .mob Talrendis Defender
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,13.85,64.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andorel Sunsworn|r
    .accept 24434 >>Accept Commando Drop
    .target Andorel Sunsworn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along233
    .goto 76,14.35,65.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .accept 14475 >>Accept Grounded!
    .target Kroum
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.46,75.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bombardier Captain Smooks|r
    .turnin 14475 >>Turn in Grounded!
    .accept 14476 >>Accept Rigged to Blow
    .target Bombardier Captain Smooks
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,15.56,74.46
    >>Click the |cRXP_PICK_Detonator Charge 1|r
    >>Click the |cRXP_PICK_Detonator Charge 2|r
    >>Click the |cRXP_PICK_Detonator Charge 3|r
    .complete 14476,1 --Detonator Charge 1
    .complete 14476,2 --Detonator Charge 2
    .complete 14476,3 --Detonator Charge 3
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.46,75.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bombardier Captain Smooks|r
    .turnin 14476 >>Turn in Rigged to Blow
    .accept 14477 >>Accept Push the Button!
    .target Bombardier Captain Smooks
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.41,75.74
    >>Click the |cRXP_PICK_Goblin Detonator|r
    .complete 14477,1 --Goblin Detonator
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along238
    >>As you go: Kill |cRXP_ENEMY_Talrendis Defenders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24433,1 --Talrendis Defender slain (12)
    .mob Talrendis Defender
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along238
    .goto 76,12.52,67.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .turnin 14462 >>Turn in Where's My Head?
    .accept 14464 >>Accept Lightning Strike Assassination
    .target Slinky Sharpshiv
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,13.22,69.57,0
    .goto 76,13.22,69.57,40,0
    .goto 76,10.63,70.85,40,0
    >>Kill |cRXP_ENEMY_Captain Grunwald|r and loot |cRXP_LOOT_Grunwald's Head|r
    >>Kill |cRXP_ENEMY_Talrendis Sentinels|r
    >>Kill |cRXP_ENEMY_Talrendis Defenders|r
    >>Kill |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 14464,1 --Grunwald's Head (1)
    .complete 24433,2 --Talrendis Sentinel slain (6)
    .complete 24433,1 --Talrendis Defender slain (12)
    .complete 24434,1 --Talrendis Lorekeeper slain (5)
    .mob Captain Grunwald
    .mob Talrendis Sentinel
    .mob Talrendis Defender
    .mob Talrendis Lorekeeper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,10.55,69.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper's Summoning Stone|r
    .turnin 24434 >>Turn in Commando Drop
    .target Lorekeeper's Summoning Stone
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.35,65.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .turnin 14477 >>Turn in Push the Button!
    .target Kroum
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.01,64.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .turnin 14464 >>Turn in Lightning Strike Assassination while you are here
    .isQuestComplete 14464
    .target Chawg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.01,64.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .turnin 24433 >>Turn in Let Them Feast on Fear while you are here
    .isQuestComplete 24433
    .target Chawg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.47,65.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Bombardier Hackel|r
    .accept 24430 >>Accept Blacken the Skies
    .target Jr. Bombardier Hackel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along243
    >>As you go: Kill |cRXP_ENEMY_Talrendis Glaive Throwers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24430,1 --Talrendis Glaive Thrower slain (6)
    .mob Talrendis Glaive Thrower
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along243
    .goto 76,9.29,72.55
    >>Mount a Grounded Wind Rider and fly over Talrendis Point. Destroy 6 Talrendis Glaive Throwers and bomb the Command Center.
    .complete 24430,2 --Talrendis Command Center Kill Credit
    .target Talrendis Command Center Kill Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 76,12.40,72.83,0
    .goto 76,12.40,72.83,40,0
    .goto 76,11.66,67.03,40,0
    >>Kill |cRXP_ENEMY_Talrendis Glaive Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower slain (6)
    .mob Talrendis Glaive Thrower
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.47,65.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Bombardier Hackel|r
    .turnin 24430 >>Turn in Blacken the Skies
    .target Jr. Bombardier Hackel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.01,64.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .turnin 24433 >>Turn in Let Them Feast on Fear
    .turnin 14464 >>Turn in Lightning Strike Assassination
    .accept 24439 >>Accept The Conquest of Azshara
    .target Chawg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,9.15,72.82
    >>Kill |cRXP_ENEMY_Commander Jarrodenus|r and loot |cRXP_LOOT_The Head of Jarrodenus|r
    .complete 24439,1 --The Head of Jarrodenus (1)
    .mob Commander Jarrodenus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 76,14.01,64.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .turnin 24439 >>Turn in The Conquest of Azshara
    .target Chawg
step
    .goto 76,14.35,65.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .accept 24463 >>Accept Probing into Ashenvale
    .target Kroum
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
step << Tauren Druid/Troll Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade
    .target Sheal Runetotem
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
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
step
    +|cRXP_WARN_End of the Azshara route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Probing into Ashenvale
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
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 23|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.9 levels of quests, starting around Serge Hinott). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
]])
