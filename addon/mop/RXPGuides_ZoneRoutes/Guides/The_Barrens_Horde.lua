-- 10-19 The Barrens: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 2 guides, listed under "10 - 20 The Barrens" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/The Barrens.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 20 The Barrens
#subweight -10
#name 10-15 The Barrens: around Togrik
#next Zone Routes (Horde)\15-20 The Barrens: around Sergra Darkthorn

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,66.62,45.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorak|r
    .accept 13878 >>Accept Through Fire and Flames
    .target Dorak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,66.76,47.26
    >>Break the chains to free the wolves from the burning stables.
    .complete 13878,1 --Trapped Wolf
    .target Trapped Wolf
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,66.62,45.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorak|r
    .turnin 13878 >>Turn in Through Fire and Flames
    .target Dorak
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
    #completewith next
    .zone 10 >>Leave Thunder Bluff for The Barrens
    .zoneskip 10
step
    .goto 10,56.24,39.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kerntis|r
    .target Innkeeper Kerntis
    .home >>Set your Hearthstone to Innkeeper Kerntis's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.58,40.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Togrik|r
    .accept 13961 >>Accept Drag it Out of Them
    .target Togrik
    .xp <10,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,55.17,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Accept Consumed by Hatred
    .target Mankrik
    .xp <10,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 10 >>Grind to level 10 (The Zhevra needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.99,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .accept 845 >>Accept The Zhevra
    .target Sergra Darkthorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.99,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .accept 903 >>Accept Hunting the Huntress
    .target Sergra Darkthorn
    .xp <10,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.49,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
    .xp <10,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28496 >>Accept Warchief's Command: Azshara!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 10 >>Leave Thunder Bluff for The Barrens
    .zoneskip 10
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Innkeeper Kerntis's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,55.17,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Accept Consumed by Hatred
    .target Mankrik
step
    .goto 10,54.03,41.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Una Wolfclaw|r
    .accept 13973 >>Accept The Grol'dom Militia
    .target Una Wolfclaw
    .xp <10,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.58,40.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Togrik|r
    .accept 13961 >>Accept Drag it Out of Them
    .target Togrik
    .xp <10,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,60.67,40.77,0
    .goto 10,60.67,40.77,40,0
    .goto 10,62.73,43.61,40,0
    .goto 10,64.81,46.58,40,0
    >>Kill |cRXP_ENEMY_Zhevra Runners|r, |cRXP_ENEMY_Zhevra Chargers|r and |cRXP_ENEMY_Grazing Zhevras|r. Loot them for |cRXP_LOOT_Zhevra Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .mob Zhevra Charger
    .mob Grazing Zhevra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.47,38.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halga Bloodeye|r
    .accept 844 >>Accept Plainstrider Menace
    .target Halga Bloodeye
step
    .goto 10,67.66,39.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 26642 >>Turn in Preserving the Barrens
    .target Kargal Battlescar
    .isOnQuest 26642
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.66,39.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 840 >>Turn in Conscript of the Horde
    .target Kargal Battlescar
    .isOnQuest 840
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.66,39.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 28494 >>Turn in Warchief's Command: Northern Barrens!
    .accept 871 >>Accept In Defense of Far Watch
    .target Kargal Battlescar
step
    .goto 10,67.81,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 25264 >>Turn in Ak'Zeloth
    .target Ak'Zeloth
    .isOnQuest 25264
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,65.31,42.48,0
    .goto 10,65.31,42.48,40,0
    .goto 10,62.34,44.12,40,0
    .goto 10,59.95,51.14,40,0
    .goto 10,60.99,41.61,40,0
    .goto 10,68.34,33.99,40,0
    >>Kill |cRXP_ENEMY_Greater Plainstriders|r, |cRXP_ENEMY_Ornery Plainstriders|r and |cRXP_ENEMY_Fleeting Plainstriders|r. Loot them for |cRXP_LOOT_Plainstrider Beak|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Ornery Plainstrider
    .mob Fleeting Plainstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,62.26,49.29,0
    .goto 10,62.26,49.29,40,0
    .goto 10,64.36,54.28,40,0
    .goto 10,67.88,52.55,40,0
    .goto 10,67.14,49.98,40,0
    >>Kill |cRXP_ENEMY_Razormane Hunters|r
    >>Kill |cRXP_ENEMY_Razormane Plunderers|r
    >>Kill |cRXP_ENEMY_Razormane Hunters|r, |cRXP_ENEMY_Razormane Defenders|r, |cRXP_ENEMY_Razormane Plunderers|r and |cRXP_ENEMY_Razormane Thornweavers|r. Loot them for |cRXP_LOOT_Quilboar Tusk|r
    .complete 871,2 --Razormane Hunter slain (3)
    .complete 871,1 --Razormane Plunderer slain (8)
    .complete 899,1 --Quilboar Tusk (30)
    .mob Razormane Hunter
    .mob Razormane Plunderer
    .mob Razormane Defender
    .mob Razormane Thornweaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.66,39.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 871 >>Turn in In Defense of Far Watch
    .accept 872 >>Accept The Far Watch Offensive
    .target Kargal Battlescar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.47,38.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halga Bloodeye|r
    .turnin 844 >>Turn in Plainstrider Menace
    .accept 5041 >>Accept Supplies for the Crossroads
    .target Halga Bloodeye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,65.00,53.19,0
    .goto 10,65.00,53.19,40,0
    .goto 10,63.87,55.36,40,0
    >>Kill |cRXP_ENEMY_Razormane Defenders|r
    >>Kill |cRXP_ENEMY_Razormane Thornweavers|r
    >>Pick up |cRXP_PICK_Crossroads Supply Crate|r from the ground
    >>Kill |cRXP_ENEMY_Kreenig Snarlsnout|r and loot |cRXP_LOOT_Kreenig Snarlsnout's Tusk|r
    .complete 872,2 --Razormane Defender slain (5)
    .complete 872,1 --Razormane Thornweaver slain (5)
    .complete 5041,1 --Crossroads Supply Crate (5)
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Razormane Defender
    .mob Razormane Thornweaver
    .mob Kreenig Snarlsnout
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.66,39.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 872 >>Turn in The Far Watch Offensive
    .target Kargal Battlescar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.47,38.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halga Bloodeye|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .accept 13949 >>Accept Crossroads Caravan Pickup
    .target Halga Bloodeye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.54,38.95
    >>Speak with Halga Bloodeye at Far Watch Post to escort the next Crossroads Caravan to Grol'dom Farm.
    .complete 13949,1 --Lead Caravan Kodo
    .target Lead Caravan Kodo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.58,40.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Togrik|r
    .accept 13961 >>Accept Drag it Out of Them
    .target Togrik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.55,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal Fiss|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13949 >>Turn in Crossroads Caravan Pickup
    .unitscan Kranal Fiss
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,55.17,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Turn in Consumed by Hatred
    .target Mankrik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along29
    >>As you go: Kill |cRXP_ENEMY_Razormane Pillagers|r and |cRXP_ENEMY_Hogtied Razormanes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13961,1 --Razormane Pillager (8)
    .mob Razormane Pillager
    .mob Hogtied Razormane
step
    .goto 10,54.03,41.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Una Wolfclaw|r
    .accept 13973 >>Accept The Grol'dom Militia
    .target Una Wolfclaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along29
    .goto 10,54.62,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocco Whipshank|r
    .accept 13975 >>Accept Crossroads Caravan Delivery
    .target Rocco Whipshank
step
    .goto 10,56.58,43.88
    >>Kill |cRXP_ENEMY_Razormane Pillagers|r and |cRXP_ENEMY_Hogtied Razormanes|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Razormane Pillagers|r
    .complete 13961,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Razormane Pillager (8)
    .complete 13973,1 --Razormane Pillager slain (6)
    .mob Razormane Pillager
    .mob Hogtied Razormane << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.58,40.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Togrik|r
    .turnin 13961 >>Turn in Drag it Out of Them
    .accept 13963 >>Accept By Hook Or By Crook
    .target Togrik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.61,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Razormane|r
    .complete 13963,1 --Captured Razormane
    .target Captured Razormane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.58,40.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Togrik|r
    .turnin 13963 >>Turn in By Hook Or By Crook
    .accept 13968 >>Accept The Tortusk Takedown
    .target Togrik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.55,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal Fiss|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13969 >>Accept Grol'dom's Missing Kodo
    .unitscan Kranal Fiss
step
    .goto 10,54.03,41.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Una Wolfclaw|r
    .turnin 13973 >>Turn in The Grol'dom Militia
    .target Una Wolfclaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,58.01,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grol'dom Kodo|r
    .turnin 13969 >>Turn in Grol'dom's Missing Kodo
    .accept 13970 >>Accept Animal Services
    .target Grol'dom Kodo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,58.81,49.86
    >>Kill |cRXP_ENEMY_Tortusk|r
    >>Open the |cRXP_PICK_Stolen Grain Sack|r. Loot it for |cRXP_LOOT_Stolen Grain|r
    .complete 13968,1 --Tortusk slain (1)
    .complete 13970,1 --Stolen Grain (1)
    .mob Tortusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,58.01,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grol'dom Kodo|r
    .turnin 13970 >>Turn in Animal Services
    .accept 13971 >>Accept The Kodo's Return
    .target Grol'dom Kodo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.99,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 845 >>Turn in The Zhevra
    .accept 903 >>Accept Hunting the Huntress
    .target Sergra Darkthorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.49,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,48.59,58.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .target Apothecary Helbrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,45.21,53.85,0
    .goto 10,45.21,53.85,40,0
    .goto 10,42.36,50.57,40,0
    .goto 10,46.49,46.47,40,0
    >>Kill |cRXP_ENEMY_Savannah Huntress|r. Loot them for |cRXP_LOOT_Huntress Claws|r
    .complete 903,1 --Huntress Claws (5)
    .mob Savannah Huntress
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along45
    >>As you go: Loot the |cRXP_PICK_Laden Mushrooms|r for |cRXP_LOOT_Fungal Spores|r. |cRXP_WARN_Anything left is finished later|r
    .complete 848,1 --Fungal Spores (5)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,37.34,44.90
    >>Explore the waters of the Forgotten Pools
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    .goto 10,37.53,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ta'jari|r
    .accept 13992 >>Accept A Little Diversion
    .target Ta'jari
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along45
    .goto 10,38.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telar Highstrider|r
    .accept 850 >>Accept Kolkar Leaders
    .target Telar Highstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.49,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 13988 >>Accept A Growing Problem
    .target Tonga Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.99,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 903 >>Turn in Hunting the Huntress
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
step
    #loop
    .goto 10,52.27,70.27,0
    .goto 10,52.27,70.27,40,0
    .goto 10,54.73,71.03,40,0
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r, |cRXP_ENEMY_Kolkar Stormers|r and |cRXP_ENEMY_Kolkar Counters|r
    .complete 13992,1 --Kolkar Wrangler (8)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .mob Kolkar Counter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,60.89,85.89
    >>Click the |cRXP_PICK_Thunderhead Summit|r
    .complete 13988,1 --Thunderhead Summit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,60.61,85.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jerrik Highmountain|r
    .turnin 13988 >>Turn in A Growing Problem
    .accept 877 >>Accept The Stagnant Oasis
    .accept 880 >>Accept Altered Beings
    .target Jerrik Highmountain
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Innkeeper Kerntis's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.58,40.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Togrik|r
    .turnin 13968 >>Turn in The Tortusk Takedown
    .target Togrik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,54.59,41.77
    >>Talk to Rocco Whipshank at Grol'dom Farm and escort his caravan all the way to Crossroads.
    .complete 13975,1 --Head Caravan Kodo
    .target Head Caravan Kodo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,44.82,47.71
    >>Kill |cRXP_ENEMY_Echeyakee|r
    .complete 881,1 --Echeyakee slain (1)
    .mob Echeyakee
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,37.73,45.61,0
    .goto 10,37.73,45.61,40,0
    .goto 10,36.43,46.68,40,0
    >>Loot the |cRXP_PICK_Laden Mushrooms|r for |cRXP_LOOT_Fungal Spores|r
    .complete 848,1 --Fungal Spores (5)
step
    .goto 10,37.53,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ta'jari|r
    .turnin 13992 >>Turn in A Little Diversion
    .target Ta'jari
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,33.35,46.70
    >>Kill |cRXP_ENEMY_Barak Kodobane|r and loot |cRXP_LOOT_Kodobane's Head|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,30.58,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 875 >>Accept Harpy Lieutenants
    .target Darsok Swiftdagger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,38.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telar Highstrider|r
    .turnin 850 >>Turn in Kolkar Leaders
    .target Telar Highstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,39.60,75.03,0
    .goto 10,39.60,75.03,40,0
    .goto 10,42.17,76.33,40,0
    >>Kill |cRXP_ENEMY_Oasis Snapjaws|r. Loot them for |cRXP_LOOT_Altered Snapjaw Shell|r
    .complete 880,1 --Altered Snapjaw Shell (6)
    .mob Oasis Snapjaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,48.69,59.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 13975 >>Turn in Crossroads Caravan Delivery
    .target Thork
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,48.59,58.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 848 >>Turn in Fungal Spores
    .accept 13998 >>Accept In Fungus We Trust
    .target Apothecary Helbrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.49,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 880 >>Turn in Altered Beings
    .target Tonga Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.99,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept Into the Raptor's Den
    .target Sergra Darkthorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along65
    >>As you go: Click the |cRXP_PICK_Sunscale Nest|r. |cRXP_WARN_Anything left is finished later|r
    .complete 905,2 --Sunscale Nest
    .complete 905,3 --Sunscale Nest
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,48.06,73.68,0
    .goto 10,48.06,73.68,40,0
    .goto 10,49.64,74.92,40,0
    >>Kill |cRXP_ENEMY_Sunscale Lashtails|r, |cRXP_ENEMY_Sunscale Screechers|r and |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for |cRXP_LOOT_Sunscale Feather|r
    .collect 5165,1,905,1 --Sunscale Feather (1)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along65
    .goto 10,48.57,74.83
    >>Click the |cRXP_PICK_Sunscale Nest|r
    .complete 905,1 --Sunscale Nest
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,48.57,74.83
    >>Click the |cRXP_PICK_Sunscale Nest|r
    .complete 905,2 --Sunscale Nest
    .complete 905,3 --Sunscale Nest
step
    .goto 10,55.03,78.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorgal Angerscar|r
    .accept 13995 >>Accept King of Centaur Mountain
    .target Gorgal Angerscar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,55.20,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoe|r
    .accept 14072 >>Accept Flushing Out Verog
    .target Shoe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,55.94,80.55
    >>Click the |cRXP_PICK_Bubbling Fissure|r
    .complete 877,1 --Bubbling Fissure
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,55.10,80.40
    >>Fungal Culture Planted
    .complete 13998,1 --Fungal Culture Planted
step
    #loop
    .goto 10,54.20,78.49,0
    .goto 10,54.20,78.49,40,0
    .goto 10,52.30,77.29,40,0
    >>Pick up |cRXP_PICK_Centaur Intelligence|r from the ground << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Click the |cRXP_PICK_Horde Banner|r
    >>Kill |cRXP_ENEMY_Kurak|r
    .complete 14072,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Centaur Intelligence (1)
    .complete 13995,2 --Horde Banner
    .complete 13995,1 --Kurak slain (1)
    .mob Kurak
step
    .goto 10,55.20,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoe|r
    .turnin 14072 >>Turn in Flushing Out Verog << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 13995 >>Turn in King of Centaur Mountain
    .target Shoe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.99,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .turnin 905 >>Turn in Into the Raptor's Den
    .target Sergra Darkthorn
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 20 The Barrens
#subweight -10
#name 15-20 The Barrens: around Sergra Darkthorn
--RouteBuilder:next
#next Zone Routes (Horde)\20-22 Hillsbrad Foothills: around High Executor Darthalia

step
    .goto 10,49.99,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .accept 13991 >>Accept The Purloined Payroll
    .target Sergra Darkthorn
    .isQuestTurnedIn 905 --any of: Into the Raptor's Den
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,49.49,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga Runetotem|r
    .turnin 877 >>Turn in The Stagnant Oasis
    .target Tonga Runetotem
    .isOnQuest 877
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,48.59,58.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .turnin 13998 >>Turn in In Fungus We Trust
    .target Apothecary Helbrim
    .isOnQuest 13998
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,48.59,58.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Helbrim|r
    .accept 13999 >>Accept Who's Shroomin' Who?
    .target Apothecary Helbrim
    .isQuestTurnedIn 13998 --any of: In Fungus We Trust
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,37.84,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
    .isQuestTurnedIn 14072 --any of: Flushing Out Verog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 15 >>Grind to level 15 (Centaur Bracers needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,37.84,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 855 >>Accept Centaur Bracers
    .target Regthar Deathgate
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,51.00,78.80
    >>Kill |cRXP_ENEMY_Verog the Dervish|r and loot |cRXP_LOOT_Verog's Head|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
    .isOnQuest 851
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,55.20,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoe|r
    .turnin 851 >>Turn in Verog the Dervish
    .target Shoe
    .isOnQuest 851
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.02,74.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sashya|r
    .turnin 13999 >>Turn in Who's Shroomin' Who?
    .target Sashya
    .isOnQuest 13999
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.72,74.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Thalo'thas Brightsun|r
    .accept 891 >>Accept A Captain's Vengeance
    .target Captain Thalo'thas Brightsun
step
    .goto 10,66.86,72.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 13991 >>Turn in The Purloined Payroll
    .target Gazrog
    .isOnQuest 13991
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,66.86,72.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .accept 14066 >>Accept Investigate the Wreckage
    .target Gazrog
step
    .goto 10,67.86,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept It's Gotta be the Horn
    .target Mebok Mizzyrix
step
    .goto 10,68.26,71.24
    >>Click the |cRXP_PICK_WANTED|r
    .accept 895 >>Accept WANTED: Cap'n Garvey
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,68.41,69.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 14045 >>Accept Find Baron Longshore
    .accept 14034 >>Accept Club Foote
    .target Gazlowe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,69.59,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .accept 14052 >>Accept Take it up with Tony
    .accept 887 >>Accept Southsea Freebooters
    .target Wharfmaster Dizzywig
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,68.75,77.51,0
    .goto 10,68.75,77.51,40,0
    .goto 10,70.14,82.31,40,0
    .goto 10,70.94,84.72,40,0
    >>Kill |cRXP_ENEMY_Theramore Marines|r, |cRXP_ENEMY_Theramore Preservers|r, |cRXP_ENEMY_Theramore Commandos|r and |cRXP_ENEMY_Theramore Sharpshooters|r. Loot them for |cRXP_LOOT_Theramore Medal|r
    >>Kill |cRXP_ENEMY_Lieutenant Pyre|r
    >>Kill |cRXP_ENEMY_Lieutenant Buckland|r
    .complete 891,3 --Theramore Medal (10)
    .complete 891,2 --Lieutenant Pyre slain (1)
    .complete 891,1 --Lieutenant Buckland slain (1)
    .mob Theramore Marine
    .mob Theramore Preserver
    .mob Theramore Commando
    .mob Theramore Sharpshooter
    .mob Lieutenant Pyre
    .mob Lieutenant Buckland
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,69.91,85.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Longshore|r
    .turnin 14045 >>Turn in Find Baron Longshore
    .accept 14046 >>Accept The Baron's Demands
    .target Baron Longshore
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,69.91,85.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Longshore|r
    .complete 14046,1 --Baron Longshore
    .target Baron Longshore
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,69.91,85.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Longshore|r
    .turnin 14046 >>Turn in The Baron's Demands
    .accept 14049 >>Accept A Most Unusual Map
    .target Baron Longshore
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along96
    >>As you go: Kill |cRXP_ENEMY_Chief Engineer Foote|r and loot |cRXP_LOOT_Ship Schematics|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14034,1 --Ship Schematics (1)
    .mob Chief Engineer Foote
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,67.72,74.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Thalo'thas Brightsun|r
    .turnin 891 >>Turn in A Captain's Vengeance
    .target Captain Thalo'thas Brightsun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,59.20,67.50
    >>Caravan Scene Searched
    .complete 14066,1 --Caravan Scene Searched
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along96
    .goto 10,66.86,72.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 14066 >>Turn in Investigate the Wreckage
    .accept 869 >>Accept To Track a Thief
    .target Gazrog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,63.50,61.50
    >>Source of Tracks Discovered
    .complete 869,1 --Source of Tracks Discovered
step
    .goto 10,62.37,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kala'ma|r
    .accept 14068 >>Accept Waptor Twapping
    .target Kala'ma
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along99
    >>As you go: Kill |cRXP_ENEMY_Chief Engineer Foote|r and loot |cRXP_LOOT_Ship Schematics|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14034,1 --Ship Schematics (1)
    .mob Chief Engineer Foote
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along99
    .goto 10,66.86,72.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Turn in To Track a Thief
    .accept 14067 >>Accept The Stolen Silver
    .target Gazrog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,66.06,65.92
    >>Kill |cRXP_ENEMY_Sunscale Scytheclaws|r
    .complete 14067,2 --Sunscale Scytheclaw slain (4)
    .mob Sunscale Scytheclaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,64.03,58.13,0
    .goto 10,64.03,58.13,40,0
    .goto 10,62.20,58.32,40,0
    >>Open the |cRXP_PICK_Stolen Silver Lockbox|r. Loot it for |cRXP_LOOT_Stolen Silver|r
    >>Kill |cRXP_ENEMY_Sunscale Ravagers|r
    .complete 14067,3 --Stolen Silver (1)
    .complete 14067,1 --Sunscale Ravager slain (8)
    .mob Sunscale Ravager
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,43.33,75.72,0
    .goto 10,43.33,75.72,40,0
    .goto 10,40.37,72.29,40,0
    .goto 10,38.53,71.19,40,0
    >>Kill |cRXP_ENEMY_Kolkar Marauders|r, |cRXP_ENEMY_Hezrul Bloodmarks|r, |cRXP_ENEMY_Warlord Krom'zars|r and |cRXP_ENEMY_Kolkar Stormseers|r. Loot them for |cRXP_LOOT_Centaur Bracers|r
    .complete 855,1 --Centaur Bracers (10)
    .mob Kolkar Marauder
    .mob Hezrul Bloodmark
    .mob Warlord Krom'zar
    .mob Kolkar Stormseer
step
    #loop
    .goto 10,59.58,82.98,0
    .goto 10,59.58,82.98,40,0
    .goto 10,63.01,85.91,40,0
    >>Loot the |cRXP_PICK_Woaded Waptor Twaps|r for |cRXP_LOOT_Wittle Waptor|r
    .complete 14068,1 --Wittle Waptor (5)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along106
    >>As you go: Kill |cRXP_ENEMY_Southsea Cutthroats|r, |cRXP_ENEMY_Southsea Privateers|r and |cRXP_ENEMY_Southsea Quest Counters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 887,1 --Southsea Cutthroat (8)
    .mob Southsea Cutthroat
    .mob Southsea Privateer
    .mob Southsea Quest Counter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,77.24,91.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Two-Tusk|r
    .turnin 14052 >>Turn in Take it up with Tony
    .accept 14056 >>Accept Glomp is Sitting On It
    .target Tony Two-Tusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,76.90,90.77
    >>Kill |cRXP_ENEMY_Glomp|r and loot |cRXP_LOOT_Glomp's Booty|r
    .complete 14056,1 --Glomp's Booty (1)
    .mob Glomp
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along106
    .goto 10,77.24,91.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Two-Tusk|r
    .turnin 14056 >>Turn in Glomp is Sitting On It
    .accept 14057 >>Accept Guns. We Need Guns.
    .target Tony Two-Tusk
step
    #loop
    .goto 10,77.14,90.11,0
    .goto 10,77.14,90.11,40,0
    .goto 10,79.73,91.00,40,0
    >>Kill |cRXP_ENEMY_Southsea Cutthroats|r, |cRXP_ENEMY_Southsea Privateers|r and |cRXP_ENEMY_Southsea Quest Counters|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Loot the |cRXP_PICK_Southsea Gun Racks|r for |cRXP_LOOT_Heavy Dwarven Rifle|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Cap'n Garvey|r and loot |cRXP_LOOT_Cap'n Garvey's Head|r
    .complete 887,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Southsea Cutthroat (8)
    .complete 14057,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Heavy Dwarven Rifle (6)
    .complete 895,1 --Cap'n Garvey's Head (1)
    .mob Southsea Cutthroat << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Southsea Privateer << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Southsea Quest Counter << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Cap'n Garvey
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,77.24,91.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Two-Tusk|r
    .turnin 14057 >>Turn in Guns. We Need Guns.
    .accept 14063 >>Accept Mutiny, Mon!
    .target Tony Two-Tusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,79.81,90.11
    >>Kill |cRXP_ENEMY_Alicia Cuthbert|r
    .complete 14063,1 --Alicia Cuthbert slain (1)
    .mob Alicia Cuthbert
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,66.98,74.70
    >>Kill |cRXP_ENEMY_Chief Engineer Foote|r and loot |cRXP_LOOT_Ship Schematics|r
    .complete 14034,1 --Ship Schematics (1)
    .mob Chief Engineer Foote
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,66.86,72.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 14067 >>Turn in The Stolen Silver
    .target Gazrog
step
    .goto 10,68.41,69.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 14034 >>Turn in Club Foote << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 895 >>Turn in WANTED: Cap'n Garvey
    .accept 14038 >>Accept Love it or Limpet << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Gazlowe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,69.59,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Dizzywig|r
    .turnin 887 >>Turn in Southsea Freebooters
    .turnin 14063 >>Turn in Mutiny, Mon!
    .target Wharfmaster Dizzywig
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,72.62,85.41
    >>Click the |cRXP_PICK_Thinnest Part of the Hull|r
    .complete 14038,1 --Thinnest Part of the Hull
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,68.41,69.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 14038 >>Turn in Love it or Limpet
    .accept 14042 >>Accept Ammo Kerblammo
    .target Gazlowe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,69.37,81.63
    >>Open the |cRXP_PICK_Hanging Pirate Head|r. Loot it for |cRXP_LOOT_Tattooed Pirate Head|r
    >>Click the |cRXP_PICK_Theramore Ammunition Stockpile|r
    .complete 14049,1 --Tattooed Pirate Head (1)
    .complete 14042,1 --Theramore Ammunition Stockpile
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,68.41,69.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 14049 >>Turn in A Most Unusual Map
    .turnin 14042 >>Turn in Ammo Kerblammo
    .accept 14050 >>Accept Gazlowe's Fortune
    .target Gazlowe
step
    .goto 10,65.88,61.52
    >>Kill |cRXP_ENEMY_King Reaperclaw|r and loot |cRXP_LOOT_King Reaperclaw's Horn|r
    .complete 865,1 --King Reaperclaw's Horn (1)
    .mob King Reaperclaw
step
    .goto 10,62.37,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kala'ma|r
    .turnin 14068 >>Turn in Waptor Twapping
    .target Kala'ma
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,66.26,77.58
    >>Open the |cRXP_PICK_Curious Pirate Landmark|r. Loot it for |cRXP_LOOT_Gazlowe's Treasure Chest|r
    .complete 14050,1 --Gazlowe's Treasure Chest (1)
step
    .goto 10,67.86,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Turn in It's Gotta be the Horn
    .target Mebok Mizzyrix
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,68.41,69.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 14050 >>Turn in Gazlowe's Fortune
    .accept 26769 >>Accept Raging River Ride
    .target Gazlowe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Innkeeper Kerntis's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,56.55,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal Fiss|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13971 >>Turn in The Kodo's Return
    .unitscan Kranal Fiss
    .isOnQuest 13971
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.29,17.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 29086 >>Accept Competition Schmompetition
    .accept 29021 >>Accept Samophlange
    .target Sputtervalve
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.50,16.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nozzlepot|r
    .accept 29088 >>Accept Hyena Extermination
    .accept 29087 >>Accept Sludge Investigation
    .target Nozzlepot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,65.38,18.86
    >>Kill |cRXP_ENEMY_Hecklefang Hyenas|r
    .complete 29088,1 --Hecklefang Hyena slain (6)
    .mob Hecklefang Hyena
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.50,16.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nozzlepot|r
    .turnin 29088 >>Turn in Hyena Extermination
    .target Nozzlepot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along132
    >>As you go: Kill |cRXP_ENEMY_Venture Co. Mercenaries|r, |cRXP_ENEMY_Venture Co. Drudgers|r and |cRXP_ENEMY_Venture Co. Peons|r. Loot them for |cRXP_LOOT_Sputtervalve's Blueprints|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29086,1 --Sputtervalve's Blueprints (6)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Venture Co. Peon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,50.28,25.71
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 29021 >>Turn in Samophlange
    .accept 29022 >>Accept Samophlange
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,50.10,25.30
    >>Click the |cRXP_PICK_Main Control Valve|r
    >>Click the |cRXP_PICK_Regulator Valve|r
    >>Click the |cRXP_PICK_Fuel Control Valve|r
    .complete 29022,1 --Main Control Valve
    .complete 29022,3 --Regulator Valve
    .complete 29022,2 --Fuel Control Valve
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,50.28,25.71
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 29022 >>Turn in Samophlange
    .accept 29023 >>Accept Samophlange
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,51.06,23.49
    >>Kill |cRXP_ENEMY_Tinkerer Sniggles|r and loot |cRXP_LOOT_Console Key|r
    .complete 29023,1 --Console Key (1)
    .mob Tinkerer Sniggles
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along132
    .goto 10,50.28,25.71
    >>Click the |cRXP_PICK_Control Console|r
    .turnin 29023 >>Turn in Samophlange
    .accept 29024 >>Accept Samophlange
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.29,17.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 29024 >>Turn in Samophlange
    .accept 14003 >>Accept Samophlange Repair
    .target Sputtervalve
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.67,16.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Blusterpipe|r
    .turnin 14003 >>Turn in Samophlange Repair
    .accept 29026 >>Accept Wenikee Boltbucket
    .target Brak Blusterpipe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along136
    >>As you go: Kill |cRXP_ENEMY_Venture Co. Mercenaries|r, |cRXP_ENEMY_Venture Co. Drudgers|r and |cRXP_ENEMY_Venture Co. Peons|r. Loot them for |cRXP_LOOT_Sputtervalve's Blueprints|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29086,1 --Sputtervalve's Blueprints (6)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Venture Co. Peon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,57.54,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    .accept 858 >>Accept Ignition
    .target Wizzlecrank's Shredder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along136
    >>As you go: Kill |cRXP_ENEMY_Supervisor Lugwizzle|r and loot |cRXP_LOOT_Ignition Key|r. |cRXP_WARN_Anything left is finished later|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along136
    #loop
    .goto 10,58.21,18.21,0
    .goto 10,58.21,18.21,40,0
    .goto 10,57.18,20.28,40,0
    >>Interact with |cRXP_FRIENDLY_Muddy Tracks|r
    .complete 29087,1 --Muddy Tracks (5)
    .target Muddy Tracks
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,56.79,18.74,0
    .goto 10,56.79,18.74,40,0
    .goto 10,59.46,19.03,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Mercenaries|r, |cRXP_ENEMY_Venture Co. Drudgers|r and |cRXP_ENEMY_Venture Co. Peons|r. Loot them for |cRXP_LOOT_Sputtervalve's Blueprints|r
    >>Kill |cRXP_ENEMY_Supervisor Lugwizzle|r and loot |cRXP_LOOT_Ignition Key|r
    .complete 29086,1 --Sputtervalve's Blueprints (6)
    .complete 858,1 --Ignition Key (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Venture Co. Peon
    .mob Supervisor Lugwizzle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,57.54,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    .turnin 858 >>Turn in Ignition
    .accept 863 >>Accept The Escape
    .target Wizzlecrank's Shredder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,54.75,20.76
    >>Escort Wizzlecrank out of the Venture Co. drill site
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,44.38,24.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wenikee Boltbucket|r
    .turnin 29026 >>Turn in Wenikee Boltbucket
    .accept 29027 >>Accept Nugget Slugs
    .target Wenikee Boltbucket
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,44.34,25.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogor|r
    .accept 29090 >>Accept A Burning Threat
    .target Brogor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along142
    >>As you go: Kill |cRXP_ENEMY_Burning Blade Acolytes|r and |cRXP_ENEMY_Burning Blade Bruisers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29090,1 --Burning Blade Acolyte (8)
    .mob Burning Blade Acolyte
    .mob Burning Blade Bruiser
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along142
    #loop
    .goto 10,42.48,31.92,0
    .goto 10,42.48,31.92,40,0
    .goto 10,40.75,33.22,40,0
    >>Loot the |cRXP_PICK_Tool Buckets|r for |cRXP_LOOT_Nugget Slug|r
    .complete 29027,1 --Nugget Slug (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,27.96,32.70,0
    .goto 10,27.96,32.70,40,0
    .goto 10,25.42,32.69,40,0
    .goto 10,26.50,28.52,40,0
    >>Kill |cRXP_ENEMY_Witchwing Slayers|r
    .complete 875,1 --Witchwing Slayer slain (6)
    .mob Witchwing Slayer
    .isOnQuest 875
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,30.58,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 867 >>Accept Harpy Raiders
    .target Darsok Swiftdagger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,30.58,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 875 >>Turn in Harpy Lieutenants
    .target Darsok Swiftdagger
    .isOnQuest 875
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,30.58,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 876 >>Accept Serena Bloodfeather
    .target Darsok Swiftdagger
    .isQuestTurnedIn 875 --any of: Harpy Lieutenants
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,29.36,37.88,0
    .goto 10,29.36,37.88,40,0
    .goto 10,28.85,33.56,40,0
    .goto 10,30.87,30.95,40,0
    >>Kill |cRXP_ENEMY_Witchwing Harpies|r, |cRXP_ENEMY_Witchwing Roguefeathers|r, |cRXP_ENEMY_Witchwing Slayers|r and |cRXP_ENEMY_Witchwing Ambushers|r. Loot them for |cRXP_LOOT_Witchwing Talon|r
    .complete 867,1 --Witchwing Talon (6)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,44.38,24.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wenikee Boltbucket|r
    .turnin 29027 >>Turn in Nugget Slugs
    .accept 14004 >>Accept Return to Samophlanger
    .target Wenikee Boltbucket
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.29,17.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >>Turn in The Escape
    .turnin 14004 >>Turn in Return to Samophlanger
    .turnin 29086 >>Turn in Competition Schmompetition
    .accept 14006 >>Accept Read the Manual
    .target Sputtervalve
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.67,16.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Blusterpipe|r
    .accept 29015 >>Accept Miner's Fortune
    .target Brak Blusterpipe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.50,16.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nozzlepot|r
    .turnin 29087 >>Turn in Sludge Investigation
    .accept 29089 >>Accept Sludge Beast!
    .target Nozzlepot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,64.07,11.27,0
    .goto 10,64.07,11.27,40,0
    .goto 10,67.04,12.66,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Enforcers|r, |cRXP_ENEMY_Venture Co. Overseers|r and |cRXP_ENEMY_Boss Copperplugs|r. Loot them for |cRXP_LOOT_Cats Eye Emerald|r
    >>Kill |cRXP_ENEMY_Venture Co. Enforcers|r, |cRXP_ENEMY_Venture Co. Overseers|r and |cRXP_ENEMY_Boss Copperplugs|r. Loot them for |cRXP_LOOT_Samophlange Manual Page|r
    .complete 29015,1 --Cats Eye Emerald (1)
    .collect 11148,1,14006,1 --Samophlange Manual Page (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
    .mob Boss Copperplug
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.67,16.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brak Blusterpipe|r
    .turnin 29015 >>Turn in Miner's Fortune
    .target Brak Blusterpipe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.29,17.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .accept 29094 >>Accept The Short Way Home
    .target Sputtervalve
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.15,17.43
    >>Kill |cRXP_ENEMY_Silver Bullet X-831|r
    .complete 29094,1 --Silver Bullet X-831 slain (1)
    .mob Silver Bullet X-831
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,58.22,19.51
    >>Kill |cRXP_ENEMY_Sludge Beast|r
    .complete 29089,1 --Sludge Beast slain (1)
    .mob Sludge Beast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 10,42.38,32.26,0
    .goto 10,42.38,32.26,40,0
    .goto 10,41.88,38.28,40,0
    >>Kill |cRXP_ENEMY_Burning Blade Acolytes|r and |cRXP_ENEMY_Burning Blade Bruisers|r
    .complete 29090,1 --Burning Blade Acolyte (8)
    .mob Burning Blade Acolyte
    .mob Burning Blade Bruiser
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,26.94,26.62
    >>Kill |cRXP_ENEMY_Serena Bloodfeather|r and loot |cRXP_LOOT_Serena's Head|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
    .isOnQuest 876
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,30.58,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 29094 >>Turn in The Short Way Home
    .turnin 867 >>Turn in Harpy Raiders
    .target Darsok Swiftdagger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,30.58,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .turnin 876 >>Turn in Serena Bloodfeather
    .target Darsok Swiftdagger
    .isOnQuest 876
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,30.58,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok Swiftdagger|r
    .accept 29095 >>Accept Report to Thork
    .target Darsok Swiftdagger
    .isQuestTurnedIn 876 --any of: Serena Bloodfeather
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,37.84,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,37.84,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .accept 852 >>Accept Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestTurnedIn 851 --any of: Verog the Dervish
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,39.24,70.23
    >>Kill |cRXP_ENEMY_Hezrul Bloodmark|r and loot |cRXP_LOOT_Hezrul's Head|r
    .complete 852,1 --Hezrul's Head (1)
    .mob Hezrul Bloodmark
    .isOnQuest 852
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,48.69,59.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 29095 >>Turn in Report to Thork
    .target Thork
    .isOnQuest 29095
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,48.69,59.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 29109 >>Accept Mor'shan Caravan Pick-Up
    .target Thork
    .isQuestTurnedIn 29095 --any of: Report to Thork
step
    .goto 10,48.69,59.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 14073 >>Accept Deathgate's Reinforcements
    .target Thork
    .isQuestTurnedIn 851 --any of: Verog the Dervish
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,50.16,57.20
    >>Speak to Rocco Whipshank and ride north with the Mor'shan Caravan.
    .complete 29109,2 --Chief Caravan Kodo
    .target Chief Caravan Kodo
    .isOnQuest 29109
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,50.33,57.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocco Whipshank|r
    .complete 29109,1 --Rocco Whipshank
    .target Rocco Whipshank
    .isOnQuest 29109
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,72.99,65.56
    >>Kill |cRXP_ENEMY_Riverboat|r
    .complete 26769,1 --Riverboat slain (1)
    .mob Riverboat
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,47.53,39.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nagala Whipshank|r
    .turnin 29109 >>Turn in Mor'shan Caravan Pick-Up
    .target Nagala Whipshank
    .isOnQuest 29109
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,47.53,39.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nagala Whipshank|r
    .accept 29110 >>Accept Mor'shan Caravan Rescue
    .target Nagala Whipshank
    .isQuestTurnedIn 29109 --any of: Mor'shan Caravan Pick-Up
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,37.84,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .target Regthar Deathgate
    .isOnQuest 852
step
    .goto 10,37.84,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 14073 >>Turn in Deathgate's Reinforcements
    .target Regthar Deathgate
    .isOnQuest 14073
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,41.07,39.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balgor Whipshank|r
    .turnin 29110 >>Turn in Mor'shan Caravan Rescue
    .target Balgor Whipshank
    .isOnQuest 29110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,41.07,39.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balgor Whipshank|r
    .accept 29112 >>Accept Demon Seed
    .target Balgor Whipshank
    .isQuestTurnedIn 29110 --any of: Mor'shan Caravan Rescue
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,42.48,38.80
    >>Open the |cRXP_PICK_The Demon Seed|r. Loot it for |cRXP_LOOT_Demon Seed|r
    .complete 29112,1 --Demon Seed (1)
    .isOnQuest 29112
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,47.53,39.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nagala Whipshank|r
    .turnin 29112 >>Turn in Demon Seed
    .target Nagala Whipshank
    .isOnQuest 29112
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,47.53,39.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nagala Whipshank|r
    .accept 29111 >>Accept Mor'shan Caravan Delivery
    .target Nagala Whipshank
    .isQuestTurnedIn 29112 --any of: Demon Seed
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,47.53,39.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nagala Whipshank|r
    .complete 29111,1 --Nagala Whipshank
    .target Nagala Whipshank
    .isOnQuest 29111
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,47.81,39.53
    >>Defend the Mor'shan Caravan.
    .complete 29111,2 --Master Caravan Kodo
    .target Master Caravan Kodo
    .isOnQuest 29111
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,44.34,25.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogor|r
    .turnin 29090 >>Turn in A Burning Threat
    .target Brogor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,42.35,15.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 29111 >>Turn in Mor'shan Caravan Delivery
    .target Kadrak
    .isOnQuest 29111
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.50,16.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nozzlepot|r
    .turnin 26769 >>Turn in Raging River Ride
    .turnin 29089 >>Turn in Sludge Beast!
    .target Nozzlepot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 10,62.29,17.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 14006 >>Turn in Read the Manual
    .target Sputtervalve
    .isQuestComplete 14006
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
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
    +|cRXP_WARN_End of the The Barrens route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Mulgore|r: Return to Varg << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: Walk With The Earth Mother << Tauren
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Read the Manual << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 1.2 levels of quests, starting around High Executor Darthalia). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
]])
