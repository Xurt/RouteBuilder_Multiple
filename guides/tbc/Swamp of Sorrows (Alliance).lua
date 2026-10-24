-- 35-52 Swamp of Sorrows: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 35, 39, 42, 51).
-- Split into 4 guides, listed under "35 - 52 Swamp of Sorrows" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Swamp of Sorrows.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 52 Swamp of Sorrows
#subweight -35
#name 35-36 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Alliance)\35-37 Dustwallow Marsh: around Captain Garran Vimes;Zone Routes (Alliance)\34-35 Stranglethorn Vale: around Krazek;Zone Routes (Alliance)\35-36 Badlands: around Prospector Ryedol

step
    .goto 1435/0,-2818.83,-10100.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .accept 1389 >>Accept Draenethyst Crystals
    .target Magtoor
step
    .goto 1435/0,-2813.56,-10106.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .accept 9448 >>Accept Mercy for the Cursed
    .accept 9609 >>Accept Help Watcher Biggs
    .target Anchorite Avuun
step
    .goto 1435/0,-2836.27,-10535.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .turnin 9609 >>Turn in Help Watcher Biggs
    .accept 1396 >>Accept Encroaching Wildlife
    .target Watcher Biggs
step
    #loop
    .goto 1435/0,-2822.27,-10568.15,0
    .goto 1435/0,-2822.27,-10568.15,40,0
    .goto 1435/0,-2878.93,-10476.55,40,0
    .goto 1435/0,-3069.08,-10230.66,40,0
    .goto 1435/0,-2787.41,-10271.49,40,0
    >>Kill |cRXP_ENEMY_Sorrow Spinners|r
    >>Kill |cRXP_ENEMY_Young Sawtooth Crocolisks|r
    >>Kill |cRXP_ENEMY_Swamp Jaguars|r
    .complete 1396,2 --Sorrow Spinner slain (10)
    .complete 1396,1 --Young Sawtooth Crocolisk slain (8)
    .complete 1396,3 --Swamp Jaguar slain (10)
    .mob Sorrow Spinner
    .mob Young Sawtooth Crocolisk
    .mob Swamp Jaguar
step
    .goto 1435/0,-2836.27,-10535.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .turnin 1396 >>Turn in Encroaching Wildlife
    .accept 1421 >>Accept The Lost Caravan
    .target Watcher Biggs
step
    .goto 1435/0,-3482.19,-10142.28
    >>Kill |cRXP_ENEMY_Noboru the Cudgel|r and loot |cRXP_LOOT_Noboru's Cudgel|r. Use it to start the quest
    .collect 6196,1,1392 --Noboru's Cudgel (1)
    .accept 1392 >>Accept Noboru the Cudgel
    .use 6196
    .mob Noboru the Cudgel
step
    #loop
    .goto 1435/0,-3501.22,-10063.37,0
    .goto 1435/0,-3501.22,-10063.37,40,0
    .goto 1435/0,-3603.07,-9960.00,40,0
    .goto 1435/0,-3722.34,-9932.02,40,0
    >>Loot the |cRXP_PICK_Draenethyst Crystals|r for |cRXP_LOOT_Draenethyst Crystal|r
    >>Kill |cRXP_ENEMY_Cursed Lost Ones|r
    >>Open the |cRXP_PICK_Caravan Chest|r. Loot it for |cRXP_LOOT_Wizards' Reagents|r
    .complete 1389,1 --Draenethyst Crystal (6)
    .complete 9448,1 --Cursed Lost One slain (3)
    .complete 1421,1 --Wizards' Reagents (1)
    .mob Cursed Lost One
step
    .goto 1435/0,-3724.63,-9898.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Goodward|r
    .accept 1393 >>Accept Galen's Escape
    .target Galen Goodward
step
    .goto 1435/0,-3440.44,-10072.70
    >>Escort Galen out of the Fallow Sanctuary.
    .complete 1393,1 --Escort Galen out of the Fallow Sanctuary.
step
    .goto 1435/0,-3319.56,-10228.83
    >>Click the |cRXP_PICK_Galen's Strongbox|r
    .turnin 1393 >>Turn in Galen's Escape
step
    .goto 1435/0,-2818.83,-10100.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1389 >>Turn in Draenethyst Crystals
    .turnin 1392 >>Turn in Noboru the Cudgel
    .target Magtoor
step
    .goto 1435/0,-2813.56,-10106.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .turnin 9448 >>Turn in Mercy for the Cursed
    .target Anchorite Avuun
step
    .goto 1435/0,-2836.27,-10535.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .turnin 1421 >>Turn in The Lost Caravan
    .target Watcher Biggs
step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8417 >>Turn in A Troubled Spirit
    .target Fallen Hero of the Horde
    .isOnQuest 8417
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2783 >>Turn in Petty Squabbles
    .target Fallen Hero of the Horde
    .isOnQuest 2783
step
    +|cRXP_WARN_Suggested next zones at level 35|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 2.2 levels of quests, starting around Captain Garran Vimes), |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around Krazek), |cRXP_FRIENDLY_Badlands|r (about 0.5 levels of quests, starting around Prospector Ryedol). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 39.|r Load its guide for level 39 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 52 Swamp of Sorrows
#subweight -35
#name 39-40 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Alliance)\38-40 Stranglethorn Vale: around Fleet Master Seahorn;Zone Routes (Alliance)\37-39 Dustwallow Marsh: around "Swamp Eye" Jarl;Zone Routes (Alliance)\38-39 Arathi Highlands: around Skuerto

step
    .goto 1435/0,-2836.27,-10535.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .accept 1398 >>Accept Driftwood
    .target Watcher Biggs
    .isQuestTurnedIn 1421 --any of: The Lost Caravan
step
    #loop
    .goto 1435/0,-4142.56,-10982.56,0
    .goto 1435/0,-4142.56,-10982.56,40,0
    .goto 1435/0,-4198.98,-10920.17,40,0
    .goto 1435/0,-4229.26,-10815.27,40,0
    >>Pick up |cRXP_PICK_Sundried Driftwood|r from the ground
    .complete 1398,1 --Sundried Driftwood (1)
    .isOnQuest 1398
step
    .goto 1435/0,-2836.27,-10535.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .turnin 1398 >>Turn in Driftwood
    .target Watcher Biggs
    .isOnQuest 1398
step
    .goto 1435/0,-2836.27,-10535.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Biggs|r
    .accept 1425 >>Accept Deliver the Shipment
    .target Watcher Biggs
    .isQuestTurnedIn 1398 --any of: Driftwood
step
    .goto 1435/0,-2747.50,-10357.74
    >>Click the |cRXP_PICK_A Soggy Scroll|r
    .accept 625 >>Accept Cortello's Riddle
    .isQuestTurnedIn 624 --any of: Cortello's Riddle
    .xp <37,1
step
    +|cRXP_WARN_That is all of Swamp of Sorrows for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blasted Lands|r: Deliver the Shipment
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Cortello's Riddle
step
    +|cRXP_WARN_Suggested next zones at level 39|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.8 levels of quests, starting around Fleet Master Seahorn), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.6 levels of quests, starting around "Swamp Eye" Jarl), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.6 levels of quests, starting around Skuerto). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 42.|r Load its guide for level 42 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 52 Swamp of Sorrows
#subweight -35
#name 42-43 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Alliance)\42-43 Stranglethorn Vale: around "Sea Wolf" MacKinley

step
    .goto 1435/0,-2816.31,-10116.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .accept 9610 >>Accept Pool of Tears
    .target Holaaru
step
    #loop
    .goto 1435/0,-3723.95,-10467.07,0
    .goto 1435/0,-3723.95,-10467.07,40,0
    .goto 1435/0,-3762.71,-10365.08,40,0
    .goto 1435/0,-3792.99,-10323.64,40,0
    .goto 1435/0,-3853.08,-10333.27,40,0
    >>Pick up |cRXP_PICK_Atal'ai Artifact|r from the ground
    .complete 9610,1 --Atal'ai Artifact (10)
step
    .goto 1435/0,-2816.31,-10116.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .turnin 9610 >>Turn in Pool of Tears
    .target Holaaru
step
    +|cRXP_WARN_Suggested next zones at level 42|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around "Sea Wolf" MacKinley). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step << Warrior
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 51.|r Load its guide for level 51 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Warrior
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 52 Swamp of Sorrows
#subweight -35
#name 51-52 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Alliance)\50-52 Un'Goro Crater: around Torwa Pathfinder;Zone Routes (Alliance)\50-51 Blasted Lands: around Bloodmage Drazial

step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 8423 >>Accept Warrior Kinship
    .target Fallen Hero of the Horde
step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8423 >>Turn in Warrior Kinship
    .target Fallen Hero of the Horde
    .isQuestComplete 8423
step
    .goto 1435/0,-2536.47,-10717.55
    >>Kill |cRXP_ENEMY_Itharius|r and loot |cRXP_LOOT_Oathstone of Ysera's Dragonflight|r. Use it to start the quest
    .collect 10589,1,3374 --Oathstone of Ysera's Dragonflight (1)
    .accept 3374 >>Accept The Essence of Eranikus
    .use 10589
    .mob Itharius
    .isQuestTurnedIn 3373 --any of: The Essence of Eranikus
    .xp <48,1
step
    .goto 1435/0,-2536.47,-10717.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Itharius|r
    .turnin 3374 >>Turn in The Essence of Eranikus
    .target Itharius
    .isOnQuest 3374
step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 8424 >>Accept War on the Shadowsworn
    .target Fallen Hero of the Horde
    .isQuestTurnedIn 8423 --any of: Warrior Kinship
    .xp <50,1
step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 8425 >>Accept Voodoo Feathers
    .target Fallen Hero of the Horde
    .isQuestTurnedIn 8424 --any of: War on the Shadowsworn
    .xp <50,1
step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8424 >>Turn in War on the Shadowsworn
    .target Fallen Hero of the Horde
    .isQuestComplete 8424
step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8425 >>Turn in Voodoo Feathers
    .target Fallen Hero of the Horde
    .isQuestComplete 8425
step
    +|cRXP_WARN_End of the Swamp of Sorrows route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blasted Lands and back here|r: Warrior Kinship << Warrior
step
    +|cRXP_WARN_Suggested next zones at level 51|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Torwa Pathfinder), |cRXP_FRIENDLY_Blasted Lands|r (about 0.5 levels of quests, starting around Bloodmage Drazial; 2 quests from here hand in there). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
]])
