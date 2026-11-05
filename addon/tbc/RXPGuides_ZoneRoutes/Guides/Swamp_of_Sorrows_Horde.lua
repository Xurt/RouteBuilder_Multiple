-- 35-57 Swamp of Sorrows: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 8 parts (from level 35, 38, 41, 44, 47, 50, 53, 56).
-- Split into 8 guides, listed under "35 - 57 Swamp of Sorrows" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Swamp of Sorrows.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 57 Swamp of Sorrows
#subweight -35
#name 35-36 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Horde)\35-38 Dustwallow Marsh: around Krog;Zone Routes (Horde)\33-35 Stranglethorn Vale: around Kebok;Zone Routes (Horde)\35-36 Arathi Highlands: around Tor'gan

step
    .goto 1435/0,-2818.83,-10100.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .accept 1389 >>Accept Draenethyst Crystals
    .target Magtoor
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
    .goto 1435/0,-3539.76,-10002.21,40,0
    .goto 1435/0,-3646.88,-9964.13,40,0
    >>Loot the |cRXP_PICK_Draenethyst Crystals|r for |cRXP_LOOT_Draenethyst Crystal|r
    .complete 1389,1 --Draenethyst Crystal (6)
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
    .goto 1435/0,-3322.31,-10458.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1444 >>Turn in Return to Fel'Zerul
    .target Fel'zerul
    .isOnQuest 1444
step
    .goto 1435/0,-3317.95,-10464.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helgrum the Swift|r
    .turnin 1420 >>Turn in Report to Helgrum
    .target Helgrum the Swift
    .isOnQuest 1420
step
    .goto 1435/0,-3317.95,-10464.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helgrum the Swift|r
    .accept 1418 >>Accept Neeka Bloodscar
    .target Helgrum the Swift
step
    .goto 1435/0,-3238.82,-10422.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Infiltrator Marksen|r
    .turnin 1391 >>Turn in Nothing But The Truth
    .target Infiltrator Marksen
    .isOnQuest 1391
step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8417 >>Turn in A Troubled Spirit
    .target Fallen Hero of the Horde
    .isOnQuest 8417
step
    .goto 1435/0,-2818.83,-10100.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1392 >>Turn in Noboru the Cudgel
    .turnin 1389 >>Turn in Draenethyst Crystals
    .target Magtoor
step
    +|cRXP_WARN_That is all of Swamp of Sorrows for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Badlands|r: Neeka Bloodscar
step
    +|cRXP_WARN_Suggested next zones at level 35|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.4 levels of quests, starting around Krog), |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around Kebok), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.5 levels of quests, starting around Tor'gan). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 38.|r Load its guide for level 38 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 57 Swamp of Sorrows
#subweight -35
#name 38-39 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Horde)\35-38 Dustwallow Marsh: around Krog;Zone Routes (Horde)\37-39 Stranglethorn Vale: around Baron Revilgaz;Zone Routes (Horde)\38-39 Arathi Highlands: around Zengu

step
    .goto 1435/0,-3248.22,-10495.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dar|r
    .accept 698 >>Accept Lack of Surplus
    .target Dar
step
    .goto 1435/0,-3319.56,-10461.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cersei Dusksinger|r
    .accept 9440 >>Accept Little Morsels
    .target Cersei Dusksinger
step
    #loop
    .goto 1435/0,-3509.02,-10484.35,0
    .goto 1435/0,-3509.02,-10484.35,40,0
    .goto 1435/0,-3520.26,-10355.14,40,0
    .goto 1435/0,-3589.53,-10156.96,40,0
    .goto 1435/0,-3450.07,-10269.05,40,0
    >>Kill |cRXP_ENEMY_Sawtooth Crocolisks|r and |cRXP_ENEMY_Sawtooth Snappers|r. Loot them for |cRXP_LOOT_Unprepared Sawtooth Flank|r
    .complete 698,1 --Unprepared Sawtooth Flank (8)
    .mob Sawtooth Crocolisk
    .mob Sawtooth Snapper
step
    #loop
    .goto 1435/0,-3665.69,-9983.25,0
    .goto 1435/0,-3665.69,-9983.25,40,0
    .goto 1435/0,-3610.41,-9960.00,40,0
    >>Kill |cRXP_ENEMY_Captured Jaguar|r
    >>Kill |cRXP_ENEMY_Captured Tarantula|r
    >>Kill |cRXP_ENEMY_Captured Crocolisk|r
    .complete 9440,2 --Captured Jaguar Fed (1)
    .complete 9440,3 --Captured Tarantula Fed (1)
    .complete 9440,1 --Captured Crocolisk Fed (1)
    .mob Captured Jaguar
    .mob Captured Tarantula
    .mob Captured Crocolisk
step
    .goto 1435/0,-2747.50,-10357.74
    >>Click the |cRXP_PICK_A Soggy Scroll|r
    .accept 625 >>Accept Cortello's Riddle
    .isQuestTurnedIn 624 --any of: Cortello's Riddle
    .xp <37,1
step
    .goto 1435/0,-3319.56,-10461.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cersei Dusksinger|r
    .turnin 9440 >>Turn in Little Morsels
    .target Cersei Dusksinger
step
    .goto 1435/0,-4088.19,-10859.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
    .turnin 698 >>Turn in Lack of Surplus
    .target Tok'Kar
step
    +|cRXP_WARN_That is all of Swamp of Sorrows for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Cortello's Riddle
step
    +|cRXP_WARN_Suggested next zones at level 38|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.2 levels of quests, starting around Krog; 1 quest from here hands in there), |cRXP_FRIENDLY_Stranglethorn Vale|r (about 1.0 levels of quests, starting around Baron Revilgaz), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.6 levels of quests, starting around Zengu). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 41.|r Load its guide for level 41 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 57 Swamp of Sorrows
#subweight -35
#name 41-42 Swamp of Sorrows: around Tok'Kar
--RouteBuilder:next
#next Zone Routes (Horde)\41-43 Stranglethorn Vale: around "Sea Wolf" MacKinley;Zone Routes (Horde)\42-43 Feralas: around Hadoken Swiftstrider

step
    .goto 1435/0,-4088.19,-10859.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
    .accept 699 >>Accept Lack of Surplus
    .target Tok'Kar
    .isQuestTurnedIn 698 --any of: Lack of Surplus
step
    #loop
    .goto 1435/0,-4117.10,-11142.97,0
    .goto 1435/0,-4117.10,-11142.97,40,0
    .goto 1435/0,-4015.25,-11149.85,40,0
    >>Kill |cRXP_ENEMY_Sawtooth Snappers|r. Loot them for |cRXP_LOOT_Sawtooth Snapper Claw|r
    .complete 699,1 --Sawtooth Snapper Claw (6)
    .mob Sawtooth Snapper
    .isOnQuest 699
step
    .goto 1435/0,-4088.19,-10859.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
    .turnin 699 >>Turn in Lack of Surplus
    .target Tok'Kar
    .isOnQuest 699
step
    .goto 1435/0,-4088.19,-10859.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
    .accept 1422 >>Accept Threat From the Sea
    .target Tok'Kar
    .isQuestTurnedIn 699 --any of: Lack of Surplus
step
    .goto 1435/0,-4144.16,-10850.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
    .turnin 1422 >>Turn in Threat From the Sea
    .target Katar
    .isOnQuest 1422
step
    .goto 1435/0,-4144.16,-10850.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
    .accept 1426 >>Accept Threat From the Sea
    .target Katar
    .isQuestTurnedIn 1422 --any of: Threat From the Sea
step
    #loop
    .goto 1435/0,-4193.94,-10920.17,0
    .goto 1435/0,-4193.94,-10920.17,40,0
    .goto 1435/0,-4142.56,-10974.76,40,0
    >>Kill |cRXP_ENEMY_Marsh Murlocs|r
    .complete 1426,1 --Marsh Murloc slain (10)
    .mob Marsh Murloc
    .isOnQuest 1426
step
    #loop
    .goto 1435/0,-4186.37,-10954.27,0
    .goto 1435/0,-4186.37,-10954.27,40,0
    .goto 1435/0,-4125.58,-11005.34,40,0
    >>Kill |cRXP_ENEMY_Marsh Inkspewers|r
    .complete 1426,2 --Marsh Inkspewer slain (10)
    .mob Marsh Inkspewer
    .isOnQuest 1426
step
    #loop
    .goto 1435/0,-3665.00,-10992.65,0
    .goto 1435/0,-3665.00,-10992.65,40,0
    .goto 1435/0,-3645.04,-10883.31,40,0
    >>Kill |cRXP_ENEMY_Marsh Flesheaters|r
    .complete 1426,3 --Marsh Flesheater slain (10)
    .mob Marsh Flesheater
    .isOnQuest 1426
step
    .goto 1435/0,-3248.22,-10495.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dar|r
    .accept 1430 >>Accept Fresh Meat
    .target Dar
step
    .goto 1435/0,-3322.31,-10458.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
    .accept 1424 >>Accept Pool of Tears
    .target Fel'zerul
step
    #loop
    .goto 1435/0,-3836.57,-10528.39,0
    .goto 1435/0,-3836.57,-10528.39,40,0
    .goto 1435/0,-3922.13,-10549.34,40,0
    .goto 1435/0,-3938.18,-10447.81,40,0
    >>Pick up |cRXP_PICK_Atal'ai Artifact|r from the ground
    .complete 1424,1 --Atal'ai Artifact (10)
step
    .goto 1435/0,-4144.16,-10850.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
    .turnin 1426 >>Turn in Threat From the Sea
    .target Katar
    .isOnQuest 1426
step
    .goto 1435/0,-4144.16,-10850.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
    .accept 1427 >>Accept Threat From the Sea
    .target Katar
    .isQuestTurnedIn 1426 --any of: Threat From the Sea
step
    .goto 1435/0,-4088.19,-10859.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
    .turnin 1427 >>Turn in Threat From the Sea
    .target Tok'Kar
    .isOnQuest 1427
step
    #loop
    .goto 1435/0,-4305.64,-10945.09,0
    .goto 1435/0,-4305.64,-10945.09,40,0
    .goto 1435/0,-4250.59,-11052.13,40,0
    .goto 1435/0,-4388.22,-11046.02,40,0
    >>Kill |cRXP_ENEMY_Monstrous Crawlers|r. Loot them for |cRXP_LOOT_Monstrous Crawler Leg|r
    .complete 1430,1 --Monstrous Crawler Leg (10)
    .mob Monstrous Crawler
step
    .goto 1435/0,-3322.31,-10458.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1424 >>Turn in Pool of Tears
    .accept 1429 >>Accept The Atal'ai Exile
    .target Fel'zerul
step
    .goto 1435/0,-3248.22,-10495.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dar|r
    .turnin 1430 >>Turn in Fresh Meat
    .target Dar
step
    +|cRXP_WARN_That is all of Swamp of Sorrows for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Hinterlands|r: The Atal'ai Exile
step
    +|cRXP_WARN_Suggested next zones at level 41|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 1.0 levels of quests, starting around "Sea Wolf" MacKinley), |cRXP_FRIENDLY_Feralas|r (about 0.5 levels of quests, starting around Hadoken Swiftstrider). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 44.|r Load its guide for level 44 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 57 Swamp of Sorrows
#subweight -35
#name 44-45 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Horde)\41-43 Stranglethorn Vale: around "Sea Wolf" MacKinley

step
    .goto 1435/0,-4144.16,-10850.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
    .accept 1428 >>Accept Continued Threat
    .target Katar
    .isQuestTurnedIn 1427 --any of: Threat From the Sea
step
    .goto 1435/0,-3697.80,-10853.65
    >>Kill |cRXP_ENEMY_Marsh Inkspewers|r
    .complete 1428,1 --Marsh Inkspewer slain (10)
    .mob Marsh Inkspewer
    .isOnQuest 1428
step
    #loop
    .goto 1435/0,-3671.42,-10850.59,0
    .goto 1435/0,-3671.42,-10850.59,40,0
    .goto 1435/0,-3644.81,-10955.49,40,0
    >>Kill |cRXP_ENEMY_Marsh Oracles|r
    .complete 1428,3 --Marsh Oracle slain (10)
    .mob Marsh Oracle
    .isOnQuest 1428
step
    #loop
    .goto 1435/0,-3645.04,-10883.31,0
    .goto 1435/0,-3645.04,-10883.31,40,0
    .goto 1435/0,-3665.00,-10992.65,40,0
    >>Kill |cRXP_ENEMY_Marsh Flesheaters|r
    .complete 1428,2 --Marsh Flesheater slain (10)
    .mob Marsh Flesheater
    .isOnQuest 1428
step
    .goto 1435/0,-4144.16,-10850.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
    .turnin 1428 >>Turn in Continued Threat
    .target Katar
    .isOnQuest 1428
step
    .goto 1435/0,-3322.31,-10458.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
    .accept 1445 >>Accept The Temple of Atal'Hakkar
    .target Fel'zerul
    .isQuestTurnedIn 1444 --any of: Return to Fel'Zerul
    .xp <38,1
step
    #loop
    .goto 1435/0,-3965.48,-10361.26,0
    .goto 1435/0,-3965.48,-10361.26,40,0
    .goto 1435/0,-4016.63,-10251.46,40,0
    >>Kill |cRXP_ENEMY_Cursed Atal'ais|r, |cRXP_ENEMY_Enthralled Atal'ais|r, |cRXP_ENEMY_Mummified Atal'ais|r and |cRXP_ENEMY_Atal'ai Priests|r. Loot them for |cRXP_LOOT_Fetish of Hakkar|r
    .complete 1445,1 --Fetish of Hakkar (20)
    .mob Cursed Atal'ai
    .mob Enthralled Atal'ai
    .mob Mummified Atal'ai
    .mob Atal'ai Priest
    .isOnQuest 1445
step
    .goto 1435/0,-3322.31,-10458.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1445 >>Turn in The Temple of Atal'Hakkar
    .target Fel'zerul
    .isOnQuest 1445
step
    +|cRXP_WARN_Suggested next zones at level 44|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.9 levels of quests, starting around "Sea Wolf" MacKinley). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 47.|r Load its guide for level 47 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 57 Swamp of Sorrows
#subweight -35
#name 47-48 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Horde)\46-48 The Hinterlands: around Huntsman Markhor

step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 2784 >>Accept Fall From Grace
    .target Fallen Hero of the Horde
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .complete 2784,1 --Fallen Hero of the Horde
    .target Fallen Hero of the Horde
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2784 >>Turn in Fall From Grace
    .accept 2621 >>Accept The Disgraced One
    .target Fallen Hero of the Horde
step
    .goto 1435/0,-3319.10,-10460.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .turnin 2621 >>Turn in The Disgraced One
    .target Dispatch Commander Ruag
step
    +|cRXP_WARN_Suggested next zones at level 47|r: |cRXP_FRIENDLY_The Hinterlands|r (about 1.0 levels of quests, starting around Huntsman Markhor). Completing this step loads the guide for The Hinterlands --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 50.|r Load its guide for level 50 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 57 Swamp of Sorrows
#subweight -35
#name 50-51 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Horde)\50-52 Un'Goro Crater: around Torwa Pathfinder;Zone Routes (Horde)\50-51 Blasted Lands: around Bloodmage Drazial

step
    .goto 1435/0,-3319.10,-10460.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .accept 2622 >>Accept The Missing Orders
    .target Dispatch Commander Ruag
    .isQuestTurnedIn 2621 --any of: The Disgraced One
step
    .goto 1435/0,-3254.42,-10498.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bengor|r
    .turnin 2622 >>Turn in The Missing Orders
    .target Bengor
    .isOnQuest 2622
step
    .goto 1435/0,-3254.42,-10498.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bengor|r
    .accept 2623 >>Accept The Swamp Talker
    .target Bengor
    .isQuestTurnedIn 2622 --any of: The Missing Orders
step
    #loop
    .goto 1435/0,-3663.39,-10856.40,0
    .goto 1435/0,-3663.39,-10856.40,40,0
    .goto 1435/0,-3755.14,-10789.12,40,0
    .goto 1435/0,-3667.98,-10994.02,40,0
    >>Kill |cRXP_ENEMY_Swamp Talker|r and loot |cRXP_LOOT_Warchief's Orders|r
    .complete 2623,1 --Warchief's Orders (1)
    .mob Swamp Talker
    .isOnQuest 2623
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2623 >>Turn in The Swamp Talker
    .target Fallen Hero of the Horde
    .isOnQuest 2623
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
step
    +|cRXP_WARN_Suggested next zones at level 50|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Torwa Pathfinder), |cRXP_FRIENDLY_Blasted Lands|r (about 0.5 levels of quests, starting around Bloodmage Drazial; 1 quest from here hands in there). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
step << Warrior
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 53.|r Load its guide for level 53 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Warrior
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 57 Swamp of Sorrows
#subweight -35
#name 53-54 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Horde)\50-52 Un'Goro Crater: around Torwa Pathfinder

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
    .accept 8423 >>Accept Warrior Kinship
    .target Fallen Hero of the Horde
step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8423 >>Turn in Warrior Kinship
    .target Fallen Hero of the Horde
    .isQuestComplete 8423
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
    .goto 1435/0,-2536.47,-10717.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Itharius|r
    .accept 3512 >>Accept In Eranikus' Own Words
    .target Itharius
    .isQuestTurnedIn 3374 --any of: The Essence of Eranikus
    .xp <52,1
step
    +|cRXP_WARN_That is all of Swamp of Sorrows for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Winterspring|r: In Eranikus' Own Words
    >>|cRXP_FRIENDLY_Blasted Lands and back here|r: Warrior Kinship << Warrior
step
    +|cRXP_WARN_Suggested next zones at level 53|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.6 levels of quests, starting around Torwa Pathfinder). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 56.|r Load its guide for level 56 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 57 Swamp of Sorrows
#subweight -35
#name 56-57 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Horde)\55-56 Eastern Plaguelands: around Tirion Fordring

step << Warrior
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 8423 >>Turn in Warrior Kinship
    .target Fallen Hero of the Horde
    .isQuestComplete 8423
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 2801 >>Accept A Tale of Sorrow
    .target Fallen Hero of the Horde
    .isQuestTurnedIn 2623,2783 --any of: The Swamp Talker, Petty Squabbles
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .complete 2801,1 --Fallen Hero of the Horde
    .target Fallen Hero of the Horde
    .isOnQuest 2801
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2801 >>Turn in A Tale of Sorrow
    .target Fallen Hero of the Horde
    .isOnQuest 2801
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 2681 >>Accept The Stones That Bind Us
    .target Fallen Hero of the Horde
    .isQuestTurnedIn 2801 --any of: A Tale of Sorrow
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .turnin 2681 >>Turn in The Stones That Bind Us
    .target Fallen Hero of the Horde
    .isQuestComplete 2681
step
    .goto 1435/0,-3009.44,-10632.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Hero of the Horde|r
    .accept 2702 >>Accept Heroes of Old
    .target Fallen Hero of the Horde
    .isQuestTurnedIn 2681 --any of: The Stones That Bind Us
    .xp <52,1
step
    .goto 1435/0,-2991.09,-10629.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Thund Splithoof|r
    .turnin 2702 >>Turn in Heroes of Old
    .target Corporal Thund Splithoof
    .isOnQuest 2702
step
    .goto 1435/0,-2991.09,-10629.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Thund Splithoof|r
    .accept 2701 >>Accept Heroes of Old
    .target Corporal Thund Splithoof
    .isQuestTurnedIn 2702 --any of: Heroes of Old
    .xp <45,1
step
    .goto 1435/0,-2985.82,-10633.45
    >>Click the |cRXP_PICK_Spectral Lockbox|r
    .turnin 2701 >>Turn in Heroes of Old
    .isOnQuest 2701
step
    +|cRXP_WARN_End of the Swamp of Sorrows route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blasted Lands and back here|r: The Stones That Bind Us
step
    +|cRXP_WARN_Suggested next zones at level 56|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 0.6 levels of quests, starting around Tirion Fordring). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
]])
