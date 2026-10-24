-- 44-48 The Hinterlands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 44, 47).
-- Split into 2 guides, listed under "44 - 48 The Hinterlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/The Hinterlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 44 - 48 The Hinterlands
#subweight -44
#name 44-45 The Hinterlands: around Ambassador Rualeth
--RouteBuilder:next
#next Zone Routes (Alliance)\42-43 Stranglethorn Vale: around "Sea Wolf" MacKinley

step
    .goto 1425/0,-2029.69,266.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falstad Wildhammer|r
    .turnin 1449 >>Turn in To The Hinterlands
    .target Falstad Wildhammer
    .isOnQuest 1449
step
    .goto 1425/0,-2029.69,266.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falstad Wildhammer|r
    .accept 1450 >>Accept Gryphon Master Talonaxe
    .target Falstad Wildhammer
    .isQuestTurnedIn 1449 --any of: To The Hinterlands
    .xp <38,1
step
    .goto 1425/0,-1950.38,325.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2993 >>Turn in Return to the Hinterlands
    .target Gryphon Master Talonaxe
    .isOnQuest 2993
step
    .goto 1425/0,-1950.38,325.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 1450 >>Turn in Gryphon Master Talonaxe
    .target Gryphon Master Talonaxe
    .isOnQuest 1450
step
    .goto 1425/0,-1950.38,325.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 1451 >>Accept Rhapsody Shindigger
    .target Gryphon Master Talonaxe
    .isQuestTurnedIn 1450 --any of: Gryphon Master Talonaxe
    .xp <38,1
step
    .goto 1425/0,-1950.38,325.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 2988 >>Accept Witherbark Cages
    .target Gryphon Master Talonaxe
step
    .goto 1425/0,-2120.16,347.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnar Beastamer|r
    .turnin 3843 >>Turn in The Newest Member of the Family
    .target Agnar Beastamer
    .isOnQuest 3843
step
    .goto 1425/0,-2145.96,322.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .accept 2880 >>Accept Troll Necklace Bounty
    .target Fraggar Thundermantle
step
    .goto 1425/0,-2156.74,254.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Rualeth|r
    .accept 9469 >>Accept Featherbeard's Endorsement
    .accept 9470 >>Accept A Gesture of Goodwill
    .accept 9471 >>Accept Preying on the Predators
    .target Ambassador Rualeth
step
    .goto 1425/0,-2092.44,48.58
    >>Click the |cRXP_PICK_Featherbeard's Journal|r
    .turnin 9469 >>Turn in Featherbeard's Endorsement
    .accept 9476 >>Accept In Pursuit of Featherbeard
step
    #completewith Drop485x1
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step
    #label Drop485x1
    #loop
    .goto 1425/0,-2279.55,211.31,0
    .goto 1425/0,-2279.55,211.31,40,0
    .goto 1425/0,-2442.02,153.56,40,0
    .goto 1425/0,-2381.96,43.71,40,0
    >>Kill |cRXP_ENEMY_Mangy Silvermanes|r
    .complete 9471,1 --Mangy Silvermane slain (10)
    .mob Mangy Silvermane
step
    .goto 1425/0,-2612.19,219.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .accept 1469 >>Accept Rhapsody's Tale
    .target Rhapsody Shindigger
    .isQuestTurnedIn 1452 --any of: Rhapsody's Kalimdor Kocktail
    .xp <38,1
step
    .goto 1425/0,-2612.19,219.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .turnin 1451 >>Turn in Rhapsody Shindigger
    .target Rhapsody Shindigger
    .isOnQuest 1451
step
    .goto 1425/0,-2612.19,219.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .accept 1452 >>Accept Rhapsody's Kalimdor Kocktail
    .target Rhapsody Shindigger
    .isQuestTurnedIn 1451 --any of: Rhapsody Shindigger
    .xp <38,1
step
    .goto 1425/0,-2612.19,219.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhapsody Shindigger|r
    .turnin 1452 >>Turn in Rhapsody's Kalimdor Kocktail
    .target Rhapsody Shindigger
    .isQuestComplete 1452
step
    #completewith Along17
    >>As you go: Kill |cRXP_ENEMY_Vilebranch Axe Throwers|r, |cRXP_ENEMY_Vilebranch Witch Doctors|r, |cRXP_ENEMY_Vilebranch Headhunters|r and |cRXP_ENEMY_Vilebranch Shadowcasters|r. Loot them for |cRXP_LOOT_Troll Tribal Necklace|r. |cRXP_WARN_Anything left is finished later|r
    .complete 2880,1 --Troll Tribal Necklace (5)
    .mob Vilebranch Axe Thrower
    .mob Vilebranch Witch Doctor
    .mob Vilebranch Headhunter
    .mob Vilebranch Shadowcaster
step
    .goto 1425/0,-2471.28,-42.79
    >>Click the |cRXP_PICK_First Witherbark Cage|r
    >>Click the |cRXP_PICK_Second Witherbark Cage|r
    .complete 2988,1 --Check First Cage
    .complete 2988,2 --Check Second Cage
step
    #completewith Drop485x2
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step
    #label Drop485x2
    .goto 1425/0,-2523.26,-216.55
    >>Kill |cRXP_ENEMY_Witch Doctor Mai'jin|r
    >>Kill |cRXP_ENEMY_Tcha'kaz|r
    .complete 9470,1 --Witch Doctor Mai'jin slain (1)
    .complete 9470,2 --Tcha'kaz slain (1)
    .mob Witch Doctor Mai'jin
    .mob Tcha'kaz
step
    #label Along17
    .goto 1425/0,-2806.62,-4.29
    >>Click the |cRXP_PICK_Third Witherbark Cage|r
    .complete 2988,3 --Check Third Cage
step
    #completewith Drop485x3
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step
    #label Drop485x3
    #loop
    .goto 1425/0,-2988.34,115.83,0
    .goto 1425/0,-2988.34,115.83,40,0
    .goto 1425/0,-2969.47,205.66,40,0
    .goto 1425/0,-2921.35,336.05,40,0
    >>Kill |cRXP_ENEMY_Silvermane Wolfs|r
    .complete 9471,2 --Silvermane Wolf slain (8)
    .mob Silvermane Wolf
step
    .goto 1425/0,-3005.28,-369.78
    >>Click the |cRXP_PICK_Featherbeard's Remains|r
    .turnin 9476 >>Turn in In Pursuit of Featherbeard
    .accept 9475 >>Accept Reclaiming the Eggs
step
    #loop
    .goto 1425/0,-2954.07,-389.29,0
    .goto 1425/0,-2954.07,-389.29,40,0
    .goto 1425/0,-2872.07,-458.33,40,0
    .goto 1425/0,-2819.32,-307.93,40,0
    >>Pick up |cRXP_PICK_Gryphon Egg|r from the ground
    .complete 9475,1 --Gryphon Egg (5)
step
    #completewith Drop485x4
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step
    #label Drop485x4
    #loop
    .goto 1425/0,-2521.33,-48.95,0
    .goto 1425/0,-2521.33,-48.95,40,0
    .goto 1425/0,-2451.26,23.17,40,0
    >>Kill |cRXP_ENEMY_Vilebranch Axe Throwers|r, |cRXP_ENEMY_Vilebranch Witch Doctors|r, |cRXP_ENEMY_Vilebranch Headhunters|r and |cRXP_ENEMY_Vilebranch Shadowcasters|r. Loot them for |cRXP_LOOT_Troll Tribal Necklace|r
    .complete 2880,1 --Troll Tribal Necklace (5)
    .mob Vilebranch Axe Thrower
    .mob Vilebranch Witch Doctor
    .mob Vilebranch Headhunter
    .mob Vilebranch Shadowcaster
step
    .goto 1425/0,-2145.96,322.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .turnin 2880 >>Turn in Troll Necklace Bounty
    .target Fraggar Thundermantle
step
    .goto 1425/0,-2156.74,254.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Rualeth|r
    .turnin 9470 >>Turn in A Gesture of Goodwill
    .turnin 9471 >>Turn in Preying on the Predators
    .turnin 9475 >>Turn in Reclaiming the Eggs
    .target Ambassador Rualeth
step
    .goto 1425/0,-1950.38,325.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2988 >>Turn in Witherbark Cages
    .target Gryphon Master Talonaxe
step
    .goto 1425/0,-3474.98,500.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .turnin 485 >>Turn in Find OOX-09/HL!
    .target Homing Robot OOX-09/HL
    .isOnQuest 485
step
    .goto 1425/0,-4685.42,264.95
    >>Click the |cRXP_PICK_Cortello's Treasure|r
    .turnin 626 >>Turn in Cortello's Riddle
    .isOnQuest 626
step
    +|cRXP_WARN_That is all of The Hinterlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: Rhapsody's Tale
step
    +|cRXP_WARN_Suggested next zones at level 44|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around "Sea Wolf" MacKinley). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of The Hinterlands is planned from level 47.|r Load its guide for level 47 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 44 - 48 The Hinterlands
#subweight -44
#name 47-48 The Hinterlands
--RouteBuilder:next
#next Zone Routes (Alliance)\46-47 Searing Gorge: around Hansel Heavyhands

step
    .goto 1425/0,-2145.96,322.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .accept 2877 >>Accept Skulk Rock Clean-up
    .target Fraggar Thundermantle
step
    .goto 1425/0,-2120.16,347.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnar Beastamer|r
    .accept 4297 >>Accept Food for Baby
    .target Agnar Beastamer
    .isQuestTurnedIn 3843 --any of: The Newest Member of the Family
    .xp <40,1
step
    .goto 1425/0,-1950.38,325.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 2989 >>Accept The Altar of Zul
    .target Gryphon Master Talonaxe
    .isQuestTurnedIn 2988 --any of: Witherbark Cages
step
    .goto 1425/0,-3456.11,-289.45
    >>Search the Altar of Zul
    .complete 2989,1 --Search the Altar of Zul
    .isOnQuest 2989
step
    #loop
    .goto 1425/0,-3431.09,233.38,0
    .goto 1425/0,-3431.09,233.38,40,0
    .goto 1425/0,-3337.15,361.97,40,0
    .goto 1425/0,-3348.31,451.29,40,0
    >>Kill |cRXP_ENEMY_Green Sludges|r
    >>Kill |cRXP_ENEMY_Jade Oozes|r
    .complete 2877,1 --Green Sludge slain (10)
    .complete 2877,2 --Jade Ooze slain (10)
    .mob Green Sludge
    .mob Jade Ooze
step
    .goto 1425/0,-3474.98,500.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .accept 836 >>Accept Rescue OOX-09/HL!
    .target Homing Robot OOX-09/HL
    .isQuestTurnedIn 485 --any of: Find OOX-09/HL!
    .xp <43,1
step
    .goto 1425/0,-4621.89,-108.24
    >>Escort OOX-09/HL to the shoreline beyond Overlook Cliff
    .complete 836,1 --Escort OOX-09/HL to the shoreline beyond Overlook Cliff
    .isOnQuest 836
step
    #loop
    .goto 1425/0,-4517.56,94.53,0
    .goto 1425/0,-4517.56,94.53,40,0
    .goto 1425/0,-4405.52,26.77,40,0
    .goto 1425/0,-4331.60,-61.27,40,0
    .goto 1425/0,-4274.24,1.87,40,0
    >>Kill |cRXP_ENEMY_Silvermane Stalkers|r. Loot them for |cRXP_LOOT_Silvermane Stalker Flank|r
    .complete 4297,1 --Silvermane Stalker Flank (5)
    .mob Silvermane Stalker
    .isOnQuest 4297
step
    .goto 1425/0,-2145.96,322.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .turnin 2877 >>Turn in Skulk Rock Clean-up
    .target Fraggar Thundermantle
step
    .goto 1425/0,-2120.16,347.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnar Beastamer|r
    .turnin 4297 >>Turn in Food for Baby
    .target Agnar Beastamer
    .isOnQuest 4297
step
    .goto 1425/0,-2120.16,347.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnar Beastamer|r
    .accept 4298 >>Accept Becoming a Parent
    .target Agnar Beastamer
    .isQuestTurnedIn 4297 --any of: Food for Baby
    .xp <40,1
step
    .goto 1425/0,-2120.16,347.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnar Beastamer|r
    .turnin 4298 >>Turn in Becoming a Parent
    .target Agnar Beastamer
    .isOnQuest 4298
step
    .goto 1425/0,-1950.38,325.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2989 >>Turn in The Altar of Zul
    .target Gryphon Master Talonaxe
    .isOnQuest 2989
step
    .goto 1425/0,-1950.38,325.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 2990 >>Accept Thadius Grimshade
    .target Gryphon Master Talonaxe
    .isQuestTurnedIn 2989 --any of: The Altar of Zul
step
    +|cRXP_WARN_End of the The Hinterlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blasted Lands|r: Thadius Grimshade
    >>|cRXP_FRIENDLY_Stranglethorn Vale|r: Rescue OOX-09/HL!
step
    +|cRXP_WARN_Suggested next zones at level 47|r: |cRXP_FRIENDLY_Searing Gorge|r (about 0.5 levels of quests, starting around Hansel Heavyhands). Completing this step loads the guide for Searing Gorge --RouteBuilder:next
]])
