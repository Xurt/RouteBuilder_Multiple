-- 45-52 Searing Gorge: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 45, 48, 51).
-- Split into 3 guides, listed under "45 - 52 Searing Gorge" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Searing Gorge.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 45 - 52 Searing Gorge
#subweight -45
#name 45-46 Searing Gorge: around Kalaran Windblade

step
    .goto 1427/0,-1786.39,-7024.78
    >>Click the |cRXP_PICK_Wooden Outhouse|r
    .accept 4449 >>Accept Caught!
step
    #loop
    .goto 1427/0,-1748.69,-6998.30,0
    .goto 1427/0,-1748.69,-6998.30,40,0
    .goto 1427/0,-1723.25,-7026.27,40,0
    .goto 1427/0,-1412.88,-6918.87,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Geologists|r
    >>Open the |cRXP_PICK_Solid Chest|r. Loot it for |cRXP_LOOT_Silk Cloth|r
    .complete 4449,1 --Dark Iron Geologist slain (8)
    .complete 4449,2 --Silk Cloth (1)
    .mob Dark Iron Geologist
step
    .goto 1427/0,-1786.39,-7024.78
    >>Click the |cRXP_PICK_Wooden Outhouse|r
    .turnin 4449 >>Turn in Caught! while you are here
    .isQuestComplete 4449
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3441 >>Accept Divine Retribution
    .target Kalaran Windblade
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .complete 3441,1 --Kalaran Windblade (10)
    .target Kalaran Windblade
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3441 >>Turn in Divine Retribution
    .accept 3442 >>Accept The Flawless Flame
    .target Kalaran Windblade
step
    .goto 1427/0,-1100.28,-6559.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grisha|r
    .fp Thorium >>Get the Searing Gorge Flight Path
    .target Grisha
step
    .goto 1427/0,-1162.98,-6493.74
    >>Click the |cRXP_PICK_Wanted/Missing/Lost & Found|r
    .accept 7728 >>Accept STOLEN: Smithing Tuyere and Lookout's Spyglass
    .accept 7729 >>Accept JOB OPPORTUNITY: Culling the Competition
step
    #completewith Along6
    >>As you go: Kill |cRXP_ENEMY_Dark Iron Slavers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 7729,2 --Dark Iron Slaver slain (15)
    .mob Dark Iron Slaver
step
    #label Along6
    #loop
    .goto 1427/0,-1337.91,-6811.17,0
    .goto 1427/0,-1337.91,-6811.17,40,0
    .goto 1427/0,-1394.59,-6835.42,40,0
    .goto 1427/0,-1208.50,-6971.38,40,0
    .goto 1427/0,-993.41,-6988.04,40,0
    >>Kill |cRXP_ENEMY_Blazing Elementals|r, |cRXP_ENEMY_Inferno Elementals|r and |cRXP_ENEMY_Magma Elementals|r. Loot them for |cRXP_LOOT_Heart of Flame|r
    .complete 3442,1 --Heart of Flame (4)
    .mob Blazing Elemental
    .mob Inferno Elemental
    .mob Magma Elemental
step
    #loop
    .goto 1427/0,-1079.53,-6812.66,0
    .goto 1427/0,-1079.53,-6812.66,40,0
    .goto 1427/0,-1109.21,-6708.54,40,0
    >>Kill |cRXP_ENEMY_Tempered War Golems|r, |cRXP_ENEMY_Heavy War Golems|r and |cRXP_ENEMY_Magma Elementals|r. Loot them for |cRXP_LOOT_Golem Oil|r
    .complete 3442,2 --Golem Oil (1)
    .mob Tempered War Golem
    .mob Heavy War Golem
    .mob Magma Elemental
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3442 >>Turn in The Flawless Flame
    .accept 3443 >>Accept Forging the Shaft
    .target Kalaran Windblade
step
    #completewith Drop4451x1
    >>|cRXP_LOOT_Grimesilt Outhouse Key|r can drop from |cRXP_ENEMY_Dark Iron Steamsmith|r, |cRXP_ENEMY_Dark Iron Slaver|r, |cRXP_ENEMY_Dark Iron Taskmaster|r. Use it to start the quest if you get one
    .collect 11818,1,4451 --Grimesilt Outhouse Key (1)
    .accept 4451 >>Accept The Key to Freedom
    .use 11818
step
    #label Drop4451x1
    #loop
    .goto 1427/0,-1196.23,-6663.17,0
    .goto 1427/0,-1196.23,-6663.17,40,0
    .goto 1427/0,-1131.08,-6722.96,40,0
    .goto 1427/0,-1385.44,-6746.02,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Geologists|r, |cRXP_ENEMY_Dark Iron Steamsmiths|r, |cRXP_ENEMY_Slave Workers|r and |cRXP_ENEMY_Dark Iron Slavers|r. Loot them for |cRXP_LOOT_Thorium Plated Dagger|r
    .complete 3443,1 --Thorium Plated Dagger (8)
    .mob Dark Iron Geologist
    .mob Dark Iron Steamsmith
    .mob Slave Worker
    .mob Dark Iron Slaver
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3443 >>Turn in Forging the Shaft
    .accept 3452 >>Accept The Flame's Casing
    .target Kalaran Windblade
step
    #loop
    .goto 1427/0,-962.17,-6477.97,0
    .goto 1427/0,-962.17,-6477.97,40,0
    .goto 1427/0,-873.81,-6490.32,40,0
    >>Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for |cRXP_LOOT_Symbol of Ragnaros|r
    .complete 3452,1 --Symbol of Ragnaros (1)
    .mob Twilight Dark Shaman
    .mob Twilight Fire Guard
    .mob Twilight Geomancer
    .mob Twilight Idolater
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3452 >>Turn in The Flame's Casing
    .target Kalaran Windblade
step
    #completewith Drop4451x2
    >>|cRXP_LOOT_Grimesilt Outhouse Key|r can drop from |cRXP_ENEMY_Dark Iron Steamsmith|r, |cRXP_ENEMY_Dark Iron Slaver|r, |cRXP_ENEMY_Dark Iron Taskmaster|r. Use it to start the quest if you get one
    .collect 11818,1,4451 --Grimesilt Outhouse Key (1)
    .accept 4451 >>Accept The Key to Freedom
    .use 11818
step
    #completewith Drop4451x2
    >>As you go: Kill |cRXP_ENEMY_Dark Iron Slavers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 7729,2 --Dark Iron Slaver slain (15)
    .mob Dark Iron Slaver
step
    #label Drop4451x2
    #loop
    .goto 1427/0,-1228.36,-6836.01,0
    .goto 1427/0,-1228.36,-6836.01,40,0
    .goto 1427/0,-1174.14,-6863.98,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Steamsmith|r and loot |cRXP_LOOT_Smithing Tuyere|r
    .complete 7728,1 --Smithing Tuyere (1)
    .mob Dark Iron Steamsmith
step
    .goto 1427/0,-1786.39,-7024.78
    >>Click the |cRXP_PICK_Wooden Outhouse|r
    .turnin 4449 >>Turn in Caught!
    .accept 4450 >>Accept Ledger from Tanaris
step
    .goto 1427/0,-1784.39,-7025.08
    >>Pick up |cRXP_PICK_Goodsteel Ledger|r from the ground
    .complete 4450,1 --Goodsteel Ledger (1)
step
    .goto 1427/0,-1248.89,-7215.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Graw Cornerstone|r
    .target Graw Cornerstone
    .home >>Set your Hearthstone to Graw Cornerstone's inn
step
    #completewith Drop4451x3
    >>|cRXP_LOOT_Grimesilt Outhouse Key|r can drop from |cRXP_ENEMY_Dark Iron Steamsmith|r, |cRXP_ENEMY_Dark Iron Slaver|r, |cRXP_ENEMY_Dark Iron Taskmaster|r. Use it to start the quest if you get one
    .collect 11818,1,4451 --Grimesilt Outhouse Key (1)
    .accept 4451 >>Accept The Key to Freedom
    .use 11818
step
    .goto 1427/0,-1063.47,-6896.41
    >>Kill |cRXP_ENEMY_Dark Iron Lookout|r and loot |cRXP_LOOT_Lookout's Spyglass|r
    .complete 7728,2 --Lookout's Spyglass (1)
    .mob Dark Iron Lookout
step
    #label Drop4451x3
    #loop
    .goto 1427/0,-1345.50,-6682.65,0
    .goto 1427/0,-1345.50,-6682.65,40,0
    .goto 1427/0,-1284.36,-6564.25,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r
    >>Kill |cRXP_ENEMY_Dark Iron Slavers|r
    .complete 7729,1 --Dark Iron Taskmaster slain (15)
    .complete 7729,2 --Dark Iron Slaver slain (15)
    .mob Dark Iron Taskmaster
    .mob Dark Iron Slaver
step
    #loop
    .goto 1427/0,-1700.04,-6860.11,0
    .goto 1427/0,-1700.04,-6860.11,40,0
    .goto 1427/0,-1808.93,-6888.08,40,0
    >>Kill |cRXP_ENEMY_Glassweb Spider|r and loot |cRXP_LOOT_Solid Crystal Leg Shaft|r
    .complete 4450,2 --Solid Crystal Leg Shaft (1)
    .mob Glassweb Spider
step
    .goto 1427/0,-1786.39,-7024.78
    >>Click the |cRXP_PICK_Wooden Outhouse|r
    .turnin 4451 >>Turn in The Key to Freedom
    .isOnQuest 4451
step
    .goto 1427/0,-1192.43,-6509.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r
    .turnin 7728 >>Turn in STOLEN: Smithing Tuyere and Lookout's Spyglass
    .turnin 7729 >>Turn in JOB OPPORTUNITY: Culling the Competition
    .target Taskmaster Scrange
step
    +|cRXP_WARN_That is all of Searing Gorge for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Tanaris|r: Ledger from Tanaris
step
    +|cRXP_WARN_The rest of Searing Gorge is planned from level 48.|r Load its guide for level 48 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 45 - 52 Searing Gorge
#subweight -45
#name 48-49 Searing Gorge: around Hansel Heavyhands
--RouteBuilder:next
#next Zone Routes (Horde)\46-48 The Hinterlands: around Huntsman Markhor

step
    .goto 1427/0,-1162.98,-6493.74
    >>Click the |cRXP_PICK_Wanted/Missing/Lost & Found|r
    .accept 7701 >>Accept WANTED: Overseer Maltorius
step
    .goto 1427/0,-1183.73,-6513.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .accept 7723 >>Accept Curse These Fat Fingers
    .accept 7724 >>Accept Fiery Menace!
    .accept 7727 >>Accept Incendosaurs? Whateverosaur is More Like It
    .target Hansel Heavyhands
step
    .goto 1427/0,-1188.64,-6524.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .accept 7722 >>Accept What the Flux?
    .target Master Smith Burninate
step
    #loop
    .goto 1427/0,-1015.05,-6707.20,0
    .goto 1427/0,-1015.05,-6707.20,40,0
    .goto 1427/0,-929.15,-6822.18,40,0
    .goto 1427/0,-982.47,-6940.73,40,0
    >>Kill |cRXP_ENEMY_Greater Lava Spiders|r
    .complete 7724,1 --Greater Lava Spider slain (20)
    .mob Greater Lava Spider
step
    #loop
    .goto 1427/0,-1317.38,-6469.64,0
    .goto 1427/0,-1317.38,-6469.64,40,0
    .goto 1427/0,-1448.36,-6486.45,40,0
    .goto 1427/0,-1466.21,-6601.44,40,0
    >>Kill |cRXP_ENEMY_Incendosaurs|r
    .complete 7727,1 --Incendosaur slain (20)
    .mob Incendosaur
step
    .goto 1427/0,-1225.46,-6631.63
    >>Pick up |cRXP_PICK_Secret Plans: Fiery Flux|r from the ground
    >>Kill |cRXP_ENEMY_Overseer Maltorius|r and loot |cRXP_LOOT_Head of Overseer Maltorius|r
    .complete 7722,1 --Secret Plans: Fiery Flux (1)
    .complete 7701,1 --Head of Overseer Maltorius (1)
    .mob Overseer Maltorius
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3453 >>Accept The Torch of Retribution
    .target Kalaran Windblade
    .isQuestTurnedIn 3452 --any of: The Flame's Casing
step
    .goto 1427/0,-1194.44,-6679.98
    >>Wait for Kalaran Windblade to complete the Torch of Retribution.
    .complete 3453,1 --Kalaran Windblade
    .target Kalaran Windblade
    .isOnQuest 3453
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .turnin 3453 >>Turn in The Torch of Retribution
    .target Kalaran Windblade
    .isOnQuest 3453
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3454 >>Accept The Torch of Retribution
    .target Kalaran Windblade
    .isQuestTurnedIn 3453 --any of: The Torch of Retribution
step
    .goto 1427/0,-1194.44,-6681.17
    >>Click the |cRXP_PICK_Torch of Retribution|r
    .turnin 3454 >>Turn in The Torch of Retribution
    .isOnQuest 3454
step
    .goto 1427/0,-1194.44,-6679.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalaran Windblade|r
    .accept 3462 >>Accept Squire Maltrake
    .target Kalaran Windblade
    .isQuestTurnedIn 3454 --any of: The Torch of Retribution
step
    .goto 1427/0,-1196.90,-6680.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
    .turnin 3462 >>Turn in Squire Maltrake
    .target Squire Maltrake
    .isOnQuest 3462
step
    #loop
    .goto 1427/0,-1153.61,-6771.61,0
    .goto 1427/0,-1153.61,-6771.61,40,0
    .goto 1427/0,-1048.07,-6782.32,40,0
    .goto 1427/0,-1386.33,-6687.26,40,0
    .goto 1427/0,-1288.16,-6754.80,40,0
    >>Kill |cRXP_ENEMY_Heavy War Golems|r
    .complete 7723,1 --Heavy War Golem slain (20)
    .mob Heavy War Golem
step
    .goto 1427/0,-1164.99,-6495.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
    .turnin 7701 >>Turn in WANTED: Overseer Maltorius
    .target Lookout Captain Lolo Longstriker
step
    .goto 1427/0,-1183.73,-6513.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r
    .turnin 7723 >>Turn in Curse These Fat Fingers
    .turnin 7724 >>Turn in Fiery Menace!
    .turnin 7727 >>Turn in Incendosaurs? Whateverosaur is More Like It
    .target Hansel Heavyhands
step
    .goto 1427/0,-1188.64,-6524.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .turnin 7722 >>Turn in What the Flux?
    .target Master Smith Burninate
step
    +|cRXP_WARN_Suggested next zones at level 48|r: |cRXP_FRIENDLY_The Hinterlands|r (about 1.0 levels of quests, starting around Huntsman Markhor). Completing this step loads the guide for The Hinterlands --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Searing Gorge is planned from level 51.|r Load its guide for level 51 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 45 - 52 Searing Gorge
#subweight -45
#name 51-52 Searing Gorge
--RouteBuilder:next
#next Zone Routes (Horde)\50-52 Un'Goro Crater: around Torwa Pathfinder

step
    .goto 1427/0,-1196.90,-6680.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
    .accept 3463 >>Accept Set Them Ablaze!
    .target Squire Maltrake
    .isQuestTurnedIn 3462 --any of: Squire Maltrake
step
    .goto 1427/0,-1065.92,-6910.39
    >>Click the |cRXP_PICK_Sentry Brazier|r
    .complete 3463,4 --Northern Tower Ablaze
    .isOnQuest 3463
step
    .goto 1427/0,-1118.80,-7002.61
    >>Click the |cRXP_PICK_Sentry Brazier|r
    .complete 3463,1 --Western Tower Ablaze
    .isOnQuest 3463
step
    .goto 1427/0,-1305.34,-7006.04
    >>Click the |cRXP_PICK_Sentry Brazier|r
    .complete 3463,2 --Southern Tower Ablaze
    .isOnQuest 3463
step
    .goto 1427/0,-1440.10,-6914.26
    >>Click the |cRXP_PICK_Sentry Brazier|r
    .complete 3463,3 --Eastern Tower Ablaze
    .isOnQuest 3463
step
    .goto 1427/0,-1196.90,-6680.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Maltrake|r
    .turnin 3463 >>Turn in Set Them Ablaze!
    .target Squire Maltrake
    .isOnQuest 3463
step
    .goto 1427/0,-1189.76,-6679.98
    >>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r
    .accept 3481 >>Accept Trinkets...
    .isQuestTurnedIn 3463 --any of: Set Them Ablaze!
step
    .goto 1427/0,-1189.76,-6679.98
    >>Click the |cRXP_PICK_Hoard of the Black Dragonflight|r
    .turnin 3481 >>Turn in Trinkets...
    .isOnQuest 3481
step
    +|cRXP_WARN_End of the Searing Gorge route.|r
step
    +|cRXP_WARN_Suggested next zones at level 51|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Torwa Pathfinder). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
]])
