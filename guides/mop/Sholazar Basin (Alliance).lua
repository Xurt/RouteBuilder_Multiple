-- 76-78 Sholazar Basin: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Sholazar Basin.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 76-78 Sholazar Basin
--RouteBuilder:next
#next Zone Routes (Alliance)\78-80 The Storm Peaks;Zone Routes (Alliance)\73-75 Grizzly Hills: around Drakuru

step
    .goto 119,39.68,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Muzzleshot|r
    .turnin 12521 >>Turn in Where in the World is Hemet Nesingwary?
    .target Monte Muzzleshot
    .isOnQuest 12521
step
    .goto 119,39.68,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Muzzleshot|r
    .accept 12489 >>Accept Welcome to Sholazar Basin
    .target Monte Muzzleshot
    .isQuestTurnedIn 12521 --any of: Where in the World is Hemet Nesingwary?
    .xp <76,1
step
    .goto 119,27.10,58.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 12489 >>Turn in Welcome to Sholazar Basin
    .target Hemet Nesingwary
    .isOnQuest 12489
step
    .goto 119,27.25,59.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Debaar|r
    .accept 12524 >>Accept Venture Co. Misadventure
    .target Debaar
step
    .goto 119,26.86,58.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chad|r
    .accept 12624 >>Accept It Could Be Anywhere!
    .target Chad
step
    .goto 119,25.35,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weslex Quickwrench|r
    .accept 12522 >>Accept Need an Engine, Take an Engine
    .target Weslex Quickwrench
step
    #completewith Along9
    >>As you go: Kill |cRXP_ENEMY_Dreadsabers|r, |cRXP_ENEMY_Mangal Crocolisks|r, |cRXP_ENEMY_Bittertide Hydras|r and |cRXP_ENEMY_Shardhorn Rhinos|r. Loot them for |cRXP_LOOT_Golden Engagement Ring|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12624,1 --Golden Engagement Ring (1)
    .mob Dreadsaber
    .mob Mangal Crocolisk
    .mob Bittertide Hydra
    .mob Shardhorn Rhino
step
    .goto 119,38.69,56.72
    >>Pick up |cRXP_PICK_Flying Machine Engine|r from the ground
    .complete 12522,1 --Flying Machine Engine (1)
step
    #completewith Along8
    >>As you go: Kill |cRXP_ENEMY_Venture Co. Ruffians|r and |cRXP_ENEMY_Venture Co. Excavators|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12524,1 --Venture Co. Ruffian (8)
    .mob Venture Co. Ruffian
    .mob Venture Co. Excavator
step
    .goto 119,35.55,47.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Helice|r
    .accept 12688 >>Accept Engineering a Disaster
    .target Engineer Helice
step
    #label Along8
    .goto 119,37.29,50.59
    >>Escort Engineer Helice out of Swindlegrin's Dig
    .complete 12688,1 --Escort Engineer Helice out of Swindlegrin's Dig
step
    #label Along9
    #loop
    .goto 119,36.09,47.99,0
    .goto 119,36.09,47.99,40,0
    .goto 119,33.93,46.16,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Ruffians|r and |cRXP_ENEMY_Venture Co. Excavators|r
    .complete 12524,1 --Venture Co. Ruffian (8)
    .mob Venture Co. Ruffian
    .mob Venture Co. Excavator
step
    .goto 119,27.10,58.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 12688 >>Turn in Engineering a Disaster
    .target Hemet Nesingwary
step
    .goto 119,27.25,59.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Debaar|r
    .turnin 12524 >>Turn in Venture Co. Misadventure
    .accept 12525 >>Accept Wipe That Grin Off His Face
    .target Debaar
step
    .goto 119,25.35,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weslex Quickwrench|r
    .turnin 12522 >>Turn in Need an Engine, Take an Engine
    .accept 12523 >>Accept Have a Part, Give a Part
    .target Weslex Quickwrench
step
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Dreadsabers|r, |cRXP_ENEMY_Mangal Crocolisks|r, |cRXP_ENEMY_Bittertide Hydras|r and |cRXP_ENEMY_Shardhorn Rhinos|r. Loot them for |cRXP_LOOT_Golden Engagement Ring|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12624,1 --Golden Engagement Ring (1)
    .mob Dreadsaber
    .mob Mangal Crocolisk
    .mob Bittertide Hydra
    .mob Shardhorn Rhino
step
    #label Along13
    #loop
    .goto 119,33.67,46.57,0
    .goto 119,33.67,46.57,40,0
    .goto 119,36.20,48.90,40,0
    >>Kill |cRXP_ENEMY_Foreman Swindlegrin|r
    >>Kill |cRXP_ENEMY_Meatpie|r
    >>Pick up |cRXP_PICK_Venture Co. Spare Parts|r from the ground
    .complete 12525,1 --Foreman Swindlegrin slain (1)
    .complete 12525,2 --Meatpie slain (1)
    .complete 12523,1 --Venture Co. Spare Parts (7)
    .mob Foreman Swindlegrin
    .mob Meatpie
step
    .goto 119,25.35,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weslex Quickwrench|r
    .turnin 12523 >>Turn in Have a Part, Give a Part
    .target Weslex Quickwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weslex|r and the |cRXP_FRIENDLY_The Spirit of Gnomeregan|r
    .target +Weslex Quickwrench
    .goto SholazarBasin,25.35,58.48
    .fp Nesingwary Base Camp >> Get the Nesingwary Base Camp flight path
    .target +The Spirit of Gnomeregan
    .goto SholazarBasin,25.27,58.45
    .xp >77,1
step
    .goto 119,25.40,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Calvert|r
    .accept 12696 >>Accept Aerial Surveillance
    .target Professor Calvert
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weslex|r, the |cRXP_FRIENDLY_The Spirit of Gnomeregan|r, and |cRXP_FRIENDLY_Calvert|r
    .target +Weslex Quickwrench
    .goto SholazarBasin,25.35,58.48
    .fp Nesingwary Base Camp >> Get the Nesingwary Base Camp flight path
    .target +The Spirit of Gnomeregan
    .goto SholazarBasin,25.27,58.45
    .target +Professor Calvert
    .goto SholazarBasin,25.41,58.47
    .xp <77,1
step
    .goto 119,27.25,59.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Debaar|r
    .turnin 12525 >>Turn in Wipe That Grin Off His Face
    .target Debaar
step
    .goto 119,27.08,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drostan|r
    .accept 12589 >>Accept Kick, What Kick?
    .target Drostan
step
    .goto 119,26.67,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buck Cantwell|r
    .accept 12549 >>Accept Dreadsaber Mastery: Becoming a Predator
    .target Buck Cantwell
    .xp <76,1
step
    .goto 119,27.10,58.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 12520 >>Accept Rhino Mastery: The Test
    .target Hemet Nesingwary
    .xp <76,1
step
    .goto 119,27.01,60.31
    >>Interact with |cRXP_FRIENDLY_Lucky Wilhelm|r
    .complete 12589,1 --Lucky Wilhelm
    .target Lucky Wilhelm
step
    .goto 119,27.08,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drostan|r
    .turnin 12589 >>Turn in Kick, What Kick?
    .accept 12592 >>Accept The Great Hunter's Challenge
    .target Drostan
step
    .goto 119,27.10,58.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 12520 >>Accept Rhino Mastery: The Test
    .target Hemet Nesingwary
step
    .goto 119,26.67,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buck Cantwell|r
    .accept 12549 >>Accept Dreadsaber Mastery: Becoming a Predator
    .target Buck Cantwell
step
    #completewith Along22
    >>As you go: Kill |cRXP_ENEMY_Dreadsabers|r, |cRXP_ENEMY_Mangal Crocolisks|r, |cRXP_ENEMY_Shardhorn Rhinos|r and |cRXP_ENEMY_Emperor Cobras|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12592,1 --Dreadsaber (8)
    .mob Dreadsaber
    .mob Mangal Crocolisk
    .mob Shardhorn Rhino
    .mob Emperor Cobra
step
    #label Along22
    #loop
    .goto 119,29.49,41.75,0
    .goto 119,29.49,41.75,40,0
    .goto 119,32.40,39.68,40,0
    >>Kill |cRXP_ENEMY_Shardhorn Rhinos|r
    .complete 12520,1 --Shardhorn Rhino slain (15)
    .mob Shardhorn Rhino
step
    #loop
    .goto 119,21.28,66.41,0
    .goto 119,21.28,66.41,40,0
    .goto 119,21.87,71.11,40,0
    >>Kill |cRXP_ENEMY_Dreadsabers|r
    .complete 12549,1 --Dreadsaber slain (15)
    .mob Dreadsaber
step
    .goto 119,27.10,58.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 12520 >>Turn in Rhino Mastery: The Test
    .accept 12526 >>Accept Rhino Mastery: The Chase
    .target Hemet Nesingwary
step
    .goto 119,26.67,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buck Cantwell|r
    .turnin 12549 >>Turn in Dreadsaber Mastery: Becoming a Predator
    .accept 12550 >>Accept Dreadsaber Mastery: Stalking the Prey
    .target Buck Cantwell
step
    .goto 119,26.71,59.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korg the Cleaver|r
    .accept 12804 >>Accept A Steak Fit for a Hunter
    .target Korg the Cleaver
step
    .goto 119,26.78,60.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .accept 12634 >>Accept Some Make Lemonade, Some Make Liquor
    .target Grimbooze Thunderbrew
step
    #completewith Along28
    >>As you go: Kill |cRXP_ENEMY_Dreadsabers|r, |cRXP_ENEMY_Mangal Crocolisks|r, |cRXP_ENEMY_Shardhorn Rhinos|r and |cRXP_ENEMY_Emperor Cobras|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12592,1 --Dreadsaber (8)
    .mob Dreadsaber
    .mob Mangal Crocolisk
    .mob Shardhorn Rhino
    .mob Emperor Cobra
step
    #label Along28
    .goto 119,27.25,59.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Debaar|r
    .accept 12551 >>Accept Crocolisk Mastery: The Trial
    .target Debaar
step
    #completewith Along29
    >>As you go: Kill |cRXP_ENEMY_Longneck Grazers|r. Loot them for |cRXP_LOOT_Longneck Grazer Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12804,1 --Longneck Grazer Steak (5)
    .mob Longneck Grazer
step
    #label Along29
    .goto 119,25.59,66.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oracle Soo-rahm|r
    .turnin 12526 >>Turn in Rhino Mastery: The Chase
    .accept 12543 >>Accept An Offering for Soo-rahm
    .target Oracle Soo-rahm
step
    #loop
    .goto 119,25.82,71.36,0
    .goto 119,25.82,71.36,40,0
    .goto 119,21.88,65.82,40,0
    .goto 119,21.92,63.30,40,0
    >>Kill |cRXP_ENEMY_Longneck Grazers|r. Loot them for |cRXP_LOOT_Longneck Grazer Steak|r
    .complete 12804,1 --Longneck Grazer Steak (5)
    .mob Longneck Grazer
step
    #completewith Along34
    >>As you go: Kill |cRXP_ENEMY_Dreadsabers|r, |cRXP_ENEMY_Mangal Crocolisks|r, |cRXP_ENEMY_Bittertide Hydras|r and |cRXP_ENEMY_Shardhorn Rhinos|r. Loot them for |cRXP_LOOT_Golden Engagement Ring|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12624,1 --Golden Engagement Ring (1)
    .mob Dreadsaber
    .mob Mangal Crocolisk
    .mob Bittertide Hydra
    .mob Shardhorn Rhino
step
    #completewith Along33
    >>As you go: Kill |cRXP_ENEMY_Dreadsabers|r, |cRXP_ENEMY_Mangal Crocolisks|r, |cRXP_ENEMY_Shardhorn Rhinos|r and |cRXP_ENEMY_Emperor Cobras|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12592,1 --Dreadsaber (8)
    .mob Dreadsaber
    .mob Mangal Crocolisk
    .mob Shardhorn Rhino
    .mob Emperor Cobra
step
    #completewith Along31
    >>As you go: Kill |cRXP_ENEMY_Emperor Cobras|r. Loot them for |cRXP_LOOT_Intact Cobra Fang|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12543,1 --Intact Cobra Fang (5)
    .mob Emperor Cobra
step
    #label Along31
    #loop
    .goto 119,40.34,54.82,0
    .goto 119,40.34,54.82,40,0
    .goto 119,42.30,56.10,40,0
    .goto 119,44.34,57.25,40,0
    >>Kill |cRXP_ENEMY_Mangal Crocolisks|r
    .complete 12551,1 --Mangal Crocolisk slain (15)
    .mob Mangal Crocolisk
step
    #loop
    .goto 119,42.16,70.85,0
    .goto 119,42.16,70.85,40,0
    .goto 119,41.25,73.56,40,0
    .goto 119,49.23,75.01,40,0
    .goto 119,45.45,71.93,40,0
    >>Kill |cRXP_ENEMY_Emperor Cobras|r. Loot them for |cRXP_LOOT_Intact Cobra Fang|r
    .complete 12543,1 --Intact Cobra Fang (5)
    .mob Emperor Cobra
step
    #label Along33
    #loop
    .goto 119,30.94,40.68,0
    .goto 119,30.94,40.68,40,0
    .goto 119,32.58,37.39,40,0
    >>Click the |cRXP_PICK_Dreadsaber Track|r
    .complete 12550,1 --Dreadsaber Track
step
    #label Along34
    #loop
    .goto 119,41.30,55.37,0
    .goto 119,41.30,55.37,40,0
    .goto 119,42.40,59.75,40,0
    .goto 119,45.14,56.30,40,0
    >>Kill |cRXP_ENEMY_Dreadsabers|r, |cRXP_ENEMY_Mangal Crocolisks|r, |cRXP_ENEMY_Shardhorn Rhinos|r and |cRXP_ENEMY_Emperor Cobras|r
    .complete 12592,1 --Dreadsaber (8)
    .mob Dreadsaber
    .mob Mangal Crocolisk
    .mob Shardhorn Rhino
    .mob Emperor Cobra
step
    #loop
    .goto 119,60.94,76.87,0
    .goto 119,60.94,76.87,40,0
    .goto 119,59.67,82.65,40,0
    .goto 119,58.90,85.80,40,0
    >>Kill |cRXP_ENEMY_Dreadsabers|r, |cRXP_ENEMY_Mangal Crocolisks|r, |cRXP_ENEMY_Bittertide Hydras|r and |cRXP_ENEMY_Shardhorn Rhinos|r. Loot them for |cRXP_LOOT_Golden Engagement Ring|r
    .complete 12624,1 --Golden Engagement Ring (1)
    .mob Dreadsaber
    .mob Mangal Crocolisk
    .mob Bittertide Hydra
    .mob Shardhorn Rhino
step
    .goto 119,53.52,55.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loomee|r
    .target Loomee
    .home >>Set your Hearthstone to Loomee's inn
step
    .goto 119,26.86,58.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chad|r
    .turnin 12624 >>Turn in It Could Be Anywhere!
    .target Chad
step
    .goto 119,26.71,59.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korg the Cleaver|r
    .turnin 12804 >>Turn in A Steak Fit for a Hunter
    .target Korg the Cleaver
step
    .goto 119,27.08,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drostan|r
    .turnin 12592 >>Turn in The Great Hunter's Challenge
    .target Drostan
step
    .goto 119,27.25,59.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Debaar|r
    .turnin 12551 >>Turn in Crocolisk Mastery: The Trial
    .accept 12560 >>Accept Crocolisk Mastery: The Plan
    .target Debaar
step
    .goto 119,26.67,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buck Cantwell|r
    .turnin 12550 >>Turn in Dreadsaber Mastery: Stalking the Prey
    .accept 12558 >>Accept Dreadsaber Mastery: Ready to Pounce
    .target Buck Cantwell
step
    .goto 119,25.59,66.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oracle Soo-rahm|r
    .turnin 12543 >>Turn in An Offering for Soo-rahm
    .accept 12544 >>Accept The Bones of Nozronn
    .target Oracle Soo-rahm
step
    #loop
    .goto 119,45.09,72.24,0
    .goto 119,45.09,72.24,40,0
    .goto 119,47.75,70.68,40,0
    >>Pick up |cRXP_PICK_Sandfern|r from the ground
    .complete 12560,1 --Sandfern (5)
step
    .goto 119,26.21,71.46
    >>Use Soo-rahm's Incense near the Bones of Nozronn, then return to Hemet Nesingwary at Nesingwary's Base Camp with the information you learned.
    .complete 12544,1 --Voice of Nozronn
    .target Voice of Nozronn
step
    .goto 119,27.25,59.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Debaar|r
    .turnin 12560 >>Turn in Crocolisk Mastery: The Plan
    .accept 12569 >>Accept Crocolisk Mastery: The Ambush
    .target Debaar
step
    .goto 119,27.10,58.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 12544 >>Turn in The Bones of Nozronn
    .accept 12556 >>Accept Rhino Mastery: The Kill
    .target Hemet Nesingwary
step
    .goto 119,33.78,33.66
    >>Kill |cRXP_ENEMY_Shango|r and loot |cRXP_LOOT_Shango's Pelt|r
    .complete 12558,1 --Shango's Pelt (1)
    .mob Shango
step
    .goto 119,46.72,42.84
    >>Kill |cRXP_ENEMY_Farunn|r and loot |cRXP_LOOT_Farunn's Horn|r
    .complete 12556,1 --Farunn's Horn (1)
    .mob Farunn
step
    .goto SholazarBasin,49.95,61.52
    >>Train Cold Weather Flying from |cRXP_FRIENDLY_Vic|r
    .train 54197 >> Train Cold Weather Flying
    .target Pilot Vic
    .xp <77,1
step
    .goto 119,46.50,63.50
    >>Kill |cRXP_ENEMY_Bushwhacker|r and loot |cRXP_LOOT_Bushwhacker's Jaw|r
    .complete 12569,1 --Bushwhacker's Jaw (1)
    .mob Bushwhacker
step
    .goto 119,50.53,76.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Gekgek|r
    .accept 12528 >>Accept Playing Along
    .target Tracker Gekgek
step
    .goto 119,26.67,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buck Cantwell|r
    .turnin 12558 >>Turn in Dreadsaber Mastery: Ready to Pounce
    .target Buck Cantwell
step
    .goto 119,27.25,59.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Debaar|r
    .turnin 12569 >>Turn in Crocolisk Mastery: The Ambush
    .target Debaar
step
    .goto 119,27.10,58.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 12556 >>Turn in Rhino Mastery: The Kill
    .accept 12651 >>Accept Lakeside Landing
    .target Hemet Nesingwary
step
    .goto 119,50.48,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tamara Wobblesprocket|r
    .turnin 12651 >>Turn in Lakeside Landing
    .target Tamara Wobblesprocket
step
    .goto 119,49.95,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Vic|r
    .turnin 12696 >>Turn in Aerial Surveillance while you are here
    .isQuestComplete 12696
    .target Pilot Vic
step
    .goto 119,49.95,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Vic|r
    .accept 12699 >>Accept An Embarassing Incident
    .target Pilot Vic
    .xp <77,1
step
    .goto 119,49.95,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Vic|r
    .accept 12803 >>Accept Force of Nature
    .target Pilot Vic
    .xp <77,1
step
    .goto 119,27.10,58.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 12595 >>Accept In Search of Bigger Game
    .target Hemet Nesingwary
step
    .goto 119,26.78,60.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .turnin 12634 >>Turn in Some Make Lemonade, Some Make Liquor
    .target Grimbooze Thunderbrew
    .isQuestComplete 12634
step
    .goto 119,26.78,60.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .accept 12644 >>Accept Still At It
    .target Grimbooze Thunderbrew
    .isQuestTurnedIn 12634 --any of: Some Make Lemonade, Some Make Liquor
    .xp <76,1
step
    .goto 119,26.68,59.93
    >>Pick up |cRXP_PICK_Thunderbrew's Jungle Punch|r from the ground
    .complete 12644,1 --Thunderbrew's Jungle Punch (1)
    .isOnQuest 12644
step
    .goto 119,26.78,60.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .turnin 12644 >>Turn in Still At It
    .target Grimbooze Thunderbrew
    .isOnQuest 12644
step
    .goto 119,26.78,60.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .accept 12645 >>Accept The Taste Test
    .target Grimbooze Thunderbrew
    .isQuestTurnedIn 12644 --any of: Still At It
    .xp <76,1
step
    .goto 119,27.36,59.40
    >>Interact with |cRXP_FRIENDLY_Hadrius Harlowe|r
    .complete 12645,2 --Hadrius Harlowe
    .target Hadrius Harlowe
    .isOnQuest 12645
step
    .goto 119,27.10,58.64
    >>Interact with |cRXP_FRIENDLY_Hemet Nesingwary|r
    .complete 12645,1 --Hemet Nesingwary
    .target Hemet Nesingwary
    .isOnQuest 12645
step
    .goto 119,50.48,62.13
    >>Interact with |cRXP_FRIENDLY_Tamara Wobblesprocket|r
    .complete 12645,3 --Tamara Wobblesprocket
    .target Tamara Wobblesprocket
    .isOnQuest 12645
step
    .goto 119,26.78,60.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .turnin 12645 >>Turn in The Taste Test
    .target Grimbooze Thunderbrew
    .isOnQuest 12645
step
    .goto 119,42.34,28.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Drakestalker|r
    .turnin 12595 >>Turn in In Search of Bigger Game
    .accept 12603 >>Accept Sharpening Your Talons
    .accept 12605 >>Accept Securing the Bait
    .target Dorian Drakestalker
step
    .goto 119,42.07,28.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colvin Norrington|r
    .accept 12683 >>Accept Burning to Help
    .target Colvin Norrington
step
    #loop
    .goto 119,39.85,38.68,0
    .goto 119,39.85,38.68,40,0
    .goto 119,41.04,41.70,40,0
    >>Kill |cRXP_ENEMY_Bittertide Hydras|r
    .complete 12683,2 --Bittertide Hydra slain (5)
    .complete 12683,1 --Bittertide Hydra slain (5)
    .mob Bittertide Hydra
step
    #loop
    .goto 119,45.40,29.44,0
    .goto 119,45.40,29.44,40,0
    .goto 119,48.84,29.75,40,0
    .goto 119,47.63,24.05,40,0
    >>Kill |cRXP_ENEMY_Primordial Drakes|r
    >>Kill |cRXP_ENEMY_Primordial Hatchlings|r. Loot them for |cRXP_LOOT_Primordial Hatchling|r
    .complete 12603,1 --Primordial Drake slain (6)
    .complete 12605,1 --Primordial Hatchling (6)
    .mob Primordial Drake
    .mob Primordial Hatchling
step
    .goto 119,42.34,28.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Drakestalker|r
    .turnin 12603 >>Turn in Sharpening Your Talons
    .turnin 12605 >>Turn in Securing the Bait
    .target Dorian Drakestalker
step
    .goto 119,42.07,28.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colvin Norrington|r
    .turnin 12683 >>Turn in Burning to Help
    .accept 12681 >>Accept Reagent Agent
    .target Colvin Norrington
step
    .goto 119,42.11,28.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zootfizzle|r
    .accept 12607 >>Accept A Mammoth Undertaking
    .accept 12658 >>Accept My Pet Roc
    .target Zootfizzle
step
    .goto 119,42.11,28.89
    >>Bring a Shattertusk Mammoth to Zootfizzle at Dorian's Outpost.
    .complete 12607,1 --Zootfizzle
    .target Zootfizzle
step
    .goto 119,42.11,28.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zootfizzle|r
    .turnin 12607 >>Turn in A Mammoth Undertaking
    .target Zootfizzle
step
    .goto 119,42.34,28.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Drakestalker|r
    .accept 12614 >>Accept Post-partum Aggression
    .target Dorian Drakestalker
step
    .goto 119,47.08,21.32
    >>Kill |cRXP_ENEMY_Broodmother Slivina|r
    .complete 12614,1 --Broodmother Slivina slain (1)
    .mob Broodmother Slivina
step
    #loop
    .goto 119,56.17,23.80,0
    .goto 119,56.17,23.80,40,0
    .goto 119,59.28,26.47,40,0
    .goto 119,60.62,29.21,40,0
    >>Kill |cRXP_ENEMY_Goretalon Roc|r and loot |cRXP_LOOT_Twisted Roc Talon|r
    >>Pick up |cRXP_PICK_Roc Egg|r from the ground
    .complete 12681,1 --Twisted Roc Talon (1)
    .complete 12658,1 --Roc Egg (7)
    .mob Goretalon Roc
step
    .goto 119,42.34,28.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorian Drakestalker|r
    .turnin 12614 >>Turn in Post-partum Aggression
    .target Dorian Drakestalker
step
    .goto 119,42.07,28.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colvin Norrington|r
    .turnin 12681 >>Turn in Reagent Agent
    .target Colvin Norrington
step
    .goto 119,42.11,28.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zootfizzle|r
    .turnin 12658 >>Turn in My Pet Roc
    .target Zootfizzle
step
    .goto 119,49.95,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Vic|r
    .turnin 12696 >>Turn in Aerial Surveillance
    .accept 12699 >>Accept An Embarassing Incident
    .target Pilot Vic
step
    .goto 119,49.95,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Vic|r
    .accept 12803 >>Accept Force of Nature
    .target Pilot Vic
    .xp <77,1
step
    .goto 119,47.91,63.10
    >>Open the |cRXP_PICK_Raised Mud|r. Loot it for |cRXP_LOOT_Vic's Keys|r
    .complete 12699,1 --Vic's Keys (1)
step
    .goto 119,49.95,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Vic|r
    .turnin 12699 >>Turn in An Embarassing Incident
    .accept 12671 >>Accept Reconnaissance Flight
    .target Pilot Vic
step
    .goto 119,49.95,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Vic|r
    .accept 12803 >>Accept Force of Nature
    .target Pilot Vic
    .xp <77,1
step
    .goto 119,50.04,61.43
    >>Reconnaissance Flight
    .complete 12671,1 --Reconnaissance Flight
step
    .goto 119,49.95,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Vic|r
    .turnin 12671 >>Turn in Reconnaissance Flight
    .accept 12803 >>Accept Force of Nature
    .target Pilot Vic
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12803 >>Turn in Force of Nature
    .accept 12561 >>Accept An Issue of Trust
    .target Avatar of Freya
step
    #loop
    .goto 119,65.14,47.22,0
    .goto 119,65.14,47.22,40,0
    .goto 119,64.41,42.82,40,0
    >>Kill |cRXP_ENEMY_Bonescythe Ravagers|r
    .complete 12561,1 --Bonescythe Ravager slain (10)
    .mob Bonescythe Ravager
step
    #loop
    .goto 119,73.91,51.62,0
    .goto 119,73.91,51.62,40,0
    .goto 119,76.17,50.20,40,0
    >>Kill |cRXP_ENEMY_Blighted Corpses|r
    .complete 12561,2 --Blighted Corpse (6)
    .mob Blighted Corpse
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12561 >>Turn in An Issue of Trust
    .accept 12611 >>Accept Returned Sevenfold
    .target Avatar of Freya
step
    .goto 119,66.70,44.12
    >>Kill |cRXP_ENEMY_Thalgran Blightbringer|r
    .complete 12611,1 --Thalgran Blightbringer slain (1)
    .mob Thalgran Blightbringer
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12611 >>Turn in Returned Sevenfold
    .accept 12612 >>Accept The Fallen Pillar
    .accept 12805 >>Accept Salvaging Life's Strength
    .target Avatar of Freya
step
    .goto 119,65.07,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cultist Corpse|r
    .turnin 12612 >>Turn in The Fallen Pillar
    .accept 12608 >>Accept Cultist Incursion
    .target Cultist Corpse
step
    #loop
    .goto 119,70.03,59.69,0
    .goto 119,70.03,59.69,40,0
    .goto 119,73.65,55.95,40,0
    >>Kill |cRXP_ENEMY_Lifeblood Elementals|r
    .complete 12805,1 --Lifeblood Elemental slain (8)
    .mob Lifeblood Elemental
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12805 >>Turn in Salvaging Life's Strength
    .turnin 12608 >>Turn in Cultist Incursion
    .accept 12617 >>Accept Exterminate the Intruders
    .accept 12660 >>Accept Weapons of Destruction
    .target Avatar of Freya
step
    #loop
    .goto 119,55.37,43.92,0
    .goto 119,55.37,43.92,40,0
    .goto 119,55.61,39.38,40,0
    >>Kill |cRXP_ENEMY_Cultist Infiltrators|r
    >>Click the |cRXP_PICK_Unstable Explosives|r
    .complete 12617,1 --Cultist Infiltrator slain (8)
    .complete 12660,1 --Unstable Explosives
    .mob Cultist Infiltrator
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12617 >>Turn in Exterminate the Intruders
    .turnin 12660 >>Turn in Weapons of Destruction
    .accept 12620 >>Accept The Lifewarden's Wrath
    .target Avatar of Freya
step
    .goto 119,49.65,37.27
    >>Kill |cRXP_ENEMY_Freya's Horn Credit|r
    .complete 12620,1 --Freya's Horn Credit slain (1)
    .mob Freya's Horn Credit
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12620 >>Turn in The Lifewarden's Wrath
    .accept 12621 >>Accept Freya's Pact
    .target Avatar of Freya
step
    .goto 119,64.55,48.70
    >>Kill |cRXP_ENEMY_Avatar of Freya Conversation Credit|r
    .complete 12621,1 --Avatar of Freya Conversation Credit slain (1)
    .mob Avatar of Freya Conversation Credit
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12621 >>Turn in Freya's Pact
    .accept 12559 >>Accept Powering the Waygate - The Makers' Perch
    .target Avatar of Freya
step
    .goto 119,26.22,35.49
    >>Click the |cRXP_PICK_Activation Switch Gamma|r
    .complete 12559,1 --Activation Switch Gamma
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12559 >>Turn in Powering the Waygate - The Makers' Perch
    .accept 12613 >>Accept Powering the Waygate - The Makers' Overlook
    .target Avatar of Freya
step
    .goto 119,80.41,55.81
    >>Click the |cRXP_PICK_Timeworn Coffer|r
    .accept 12691 >>Accept A Timeworn Coffer
step
    .goto 119,89.07,52.90
    >>Click the |cRXP_PICK_Activation Switch Theta|r
    .complete 12613,1 --Activation Switch Theta
step
    .goto 119,82.12,53.97
    >>Kill |cRXP_ENEMY_Sholazar Guardian|r and loot |cRXP_LOOT_Huge Stone Key|r
    .complete 12691,1 --Huge Stone Key (1)
    .mob Sholazar Guardian
step
    .goto 119,80.41,55.81
    >>Click the |cRXP_PICK_Timeworn Coffer|r
    .turnin 12691 >>Turn in A Timeworn Coffer
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12613 >>Turn in Powering the Waygate - The Makers' Overlook
    .accept 12548 >>Accept The Etymidian
    .target Avatar of Freya
step
    .goto 119,54.99,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Shaman Rakjak|r
    .turnin 12528 >>Turn in Playing Along
    .accept 12529 >>Accept The Ape Hunter's Slave
    .target High-Shaman Rakjak
step
    .goto 119,55.33,69.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goregek the Gorilla Hunter|r
    .accept 12530 >>Accept Tormenting the Softknuckles
    .target Goregek the Gorilla Hunter
step
    #loop
    .goto 119,57.57,72.49,0
    .goto 119,57.57,72.49,40,0
    .goto 119,56.45,76.92,40,0
    >>Kill |cRXP_ENEMY_Hardknuckle Foragers|r
    .complete 12529,1 --Hardknuckle Forager slain (8)
    .mob Hardknuckle Forager
step
    #loop
    .goto 119,67.51,73.33,0
    .goto 119,67.51,73.33,40,0
    .goto 119,69.91,71.34,40,0
    >>Kill |cRXP_ENEMY_Hardknuckle Matriarch|r
    >>Kill |cRXP_ENEMY_Hardknuckle Chargers|r
    .complete 12530,1 --Hardknuckle Matriarch slain (1)
    .complete 12529,2 --Hardknuckle Charger slain (6)
    .mob Hardknuckle Matriarch
    .mob Hardknuckle Charger
step
    .goto 119,54.99,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Shaman Rakjak|r
    .turnin 12529 >>Turn in The Ape Hunter's Slave
    .turnin 12530 >>Turn in Tormenting the Softknuckles
    .accept 12533 >>Accept The Wasp Hunter's Apprentice
    .target High-Shaman Rakjak
step
    .goto 119,55.50,69.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Harkek|r
    .accept 12534 >>Accept The Sapphire Queen
    .target Elder Harkek
step
    #completewith Along113
    >>As you go: Kill |cRXP_ENEMY_Sapphire Hive Wasps|r. Kill |cRXP_ENEMY_Sapphire Hive Drones|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12533,1 --Sapphire Hive Wasp slain (6)
    .complete 12533,2 --Sapphire Hive Drone slain (9)
    .mob Sapphire Hive Wasp
    .mob Sapphire Hive Drone
step
    #label Along113
    .goto 119,56.97,79.62
    >>Kill |cRXP_ENEMY_Sapphire Hive Queen|r and loot |cRXP_LOOT_Stinger of the Sapphire Queen|r
    .complete 12534,1 --Stinger of the Sapphire Queen (1)
    .mob Sapphire Hive Queen
step
    #loop
    .goto 119,54.33,84.88,0
    .goto 119,54.33,84.88,40,0
    .goto 119,51.65,83.80,40,0
    .goto 119,50.79,86.90,40,0
    >>Kill |cRXP_ENEMY_Sapphire Hive Wasps|r
    >>Kill |cRXP_ENEMY_Sapphire Hive Drones|r
    .complete 12533,1 --Sapphire Hive Wasp slain (6)
    .complete 12533,2 --Sapphire Hive Drone slain (9)
    .mob Sapphire Hive Wasp
    .mob Sapphire Hive Drone
step
    .goto 119,54.99,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Shaman Rakjak|r
    .turnin 12533 >>Turn in The Wasp Hunter's Apprentice
    .turnin 12534 >>Turn in The Sapphire Queen
    .target High-Shaman Rakjak
step
    .goto 119,55.50,69.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Harkek|r
    .accept 12532 >>Accept Flown the Coop!
    .target Elder Harkek
step
    .goto 119,57.16,69.22
    >>Kill |cRXP_ENEMY_Chicken Escapees|r. Loot them for |cRXP_LOOT_Captured Chicken|r
    .complete 12532,1 --Captured Chicken (12)
    .mob Chicken Escapee
step
    .goto 119,55.50,69.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Harkek|r
    .turnin 12532 >>Turn in Flown the Coop!
    .accept 12531 >>Accept The Underground Menace
    .target Elder Harkek
step
    .goto 119,54.99,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Shaman Rakjak|r
    .accept 12535 >>Accept Mischief in the Making
    .target High-Shaman Rakjak
step
    #loop
    .goto 119,54.22,86.78,0
    .goto 119,54.22,86.78,40,0
    .goto 119,56.16,88.52,40,0
    >>Kill |cRXP_ENEMY_Serfex the Reaver|r and loot |cRXP_LOOT_Claw of Serfex|r
    >>Loot the |cRXP_PICK_Skyreach Crystal Formations|r for |cRXP_LOOT_Skyreach Crystal Cluster|r
    .complete 12531,1 --Claw of Serfex (1)
    .complete 12535,1 --Skyreach Crystal Cluster (8)
    .mob Serfex the Reaver
step
    .goto 119,54.99,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Shaman Rakjak|r
    .turnin 12531 >>Turn in The Underground Menace
    .turnin 12535 >>Turn in Mischief in the Making
    .accept 12536 >>Accept A Rough Ride
    .target High-Shaman Rakjak
step
    .goto 119,57.30,68.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captive Crocolisk|r
    .complete 12536,1 --Captive Crocolisk
    .target Captive Crocolisk
step
    .goto 119,46.25,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zepik the Gorloc Hunter|r
    .turnin 12536 >>Turn in A Rough Ride
    .accept 12537 >>Accept Lightning Definitely Strikes Twice
    .accept 12538 >>Accept The Mist Isn't Listening
    .target Zepik the Gorloc Hunter
step
    #loop
    .goto 119,45.60,36.76,0
    .goto 119,45.60,36.76,40,0
    .goto 119,44.56,33.82,40,0
    >>Click the |cRXP_PICK_Arranged Crystal Formation|r
    >>Kill |cRXP_ENEMY_Mistwhisper Oracles|r and |cRXP_ENEMY_Mistwhisper Warriors|r
    .complete 12537,1 --Arranged Crystal Formation
    .complete 12538,1 --Mistwhisper Oracle (8)
    .mob Mistwhisper Oracle
    .mob Mistwhisper Warrior
step
    .goto 119,46.25,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zepik the Gorloc Hunter|r
    .turnin 12538 >>Turn in The Mist Isn't Listening
    .turnin 12537 >>Turn in Lightning Definitely Strikes Twice
    .accept 12539 >>Accept Hoofing It
    .target Zepik the Gorloc Hunter
step
    .goto 119,54.99,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Shaman Rakjak|r
    .turnin 12539 >>Turn in Hoofing It
    .accept 12540 >>Accept Just Following Orders
    .target High-Shaman Rakjak
step
    #loop
    .goto 119,55.70,64.98,0
    .goto 119,55.70,64.98,40,0
    .goto 119,58.48,62.49,40,0
    >>Kill |cRXP_ENEMY_Ravenous Mangal Crocolisks|r
    .complete 12540,1 --Ravenous Mangal Crocolisk slain (8)
    .mob Ravenous Mangal Crocolisk
step
    #loop
    .goto 119,58.48,62.49,0
    .goto 119,58.48,62.49,40,0
    .goto 119,58.37,64.67,40,0
    .goto 119,56.64,62.44,40,0
    .goto 119,55.70,64.98,40,0
    .goto 119,55.40,62.94,40,0
    .goto 119,54.05,64.53,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Injured Rainspeaker Oracle|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12540 >>Turn in Just Following Orders
    .accept 12570 >>Accept Fortunate Misunderstandings
    .unitscan Injured Rainspeaker Oracle
step
    .goto 119,52.79,59.36
    >>Escort the Injured Rainspeaker Oracle to Rainspaker Canopy
    .complete 12570,1 --Escort the Injured Rainspeaker Oracle to Rainspaker Canopy
step
    .goto 119,54.59,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Oracle Soo-say|r
    .turnin 12570 >>Turn in Fortunate Misunderstandings
    .accept 12571 >>Accept Make the Bad Snake Go Away
    .target High-Oracle Soo-say
step
    .goto 119,54.51,56.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lafoo|r
    .accept 12572 >>Accept Gods like Shiny Things
    .target Lafoo
step
    #completewith Along132
    >>As you go: Loot the |cRXP_PICK_Shining Crystals|r for |cRXP_LOOT_Shiny Treasures|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12572,1 --Shiny Treasures (6)
step
    #label Along132
    .goto 119,57.40,52.20
    >>Kill |cRXP_ENEMY_Venomtip|r
    .complete 12571,2 --Venomtip slain (1)
    .mob Venomtip
step
    #loop
    .goto 119,43.64,67.66,0
    .goto 119,43.64,67.66,40,0
    .goto 119,45.45,71.93,40,0
    .goto 119,41.44,72.16,40,0
    >>Kill |cRXP_ENEMY_Emperor Cobras|r
    .complete 12571,1 --Emperor Cobra slain (10)
    .mob Emperor Cobra
step
    #loop
    .goto 119,50.40,58.30,0
    .goto 119,50.40,58.30,40,0
    .goto 119,50.30,53.30,40,0
    .goto 119,53.11,50.05,40,0
    >>Loot the |cRXP_PICK_Shining Crystals|r for |cRXP_LOOT_Shiny Treasures|r
    .complete 12572,1 --Shiny Treasures (6)
step
    .goto 119,54.59,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Oracle Soo-say|r
    .turnin 12571 >>Turn in Make the Bad Snake Go Away
    .turnin 12572 >>Turn in Gods like Shiny Things
    .accept 12573 >>Accept Making Peace
    .target High-Oracle Soo-say
step
    .goto 119,51.30,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaman Vekjik|r
    .complete 12573,1 --Shaman Vekjik
    .target Shaman Vekjik
step
    .goto 119,54.59,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Oracle Soo-say|r
    .turnin 12573 >>Turn in Making Peace
    .accept 12574 >>Accept Back So Soon?
    .target High-Oracle Soo-say
step
    .goto 119,42.15,38.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistcaller Soo-gan|r
    .turnin 12574 >>Turn in Back So Soon?
    .accept 12576 >>Accept Forced Hand
    .target Mistcaller Soo-gan
step
    #loop
    .goto 119,40.02,23.62,0
    .goto 119,40.02,23.62,40,0
    .goto 119,42.45,23.01,40,0
    >>Kill |cRXP_ENEMY_Frenzyheart Spearbearers|r
    >>Kill |cRXP_ENEMY_Frenzyheart Scavengers|r
    .complete 12576,1 --Frenzyheart Spearbearer slain (8)
    .complete 12576,2 --Frenzyheart Scavenger slain (6)
    .mob Frenzyheart Spearbearer
    .mob Frenzyheart Scavenger
step
    .goto 119,42.15,38.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistcaller Soo-gan|r
    .turnin 12576 >>Turn in Forced Hand
    .accept 12575 >>Accept The Lost Mistwhisper Treasure
    .target Mistcaller Soo-gan
step
    .goto 119,42.15,38.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistcaller Soo-gan|r
    .turnin 12575 >>Turn in The Lost Mistwhisper Treasure
    .target Mistcaller Soo-gan
    .isQuestComplete 12575
step
    .goto 119,41.50,19.70
    >>Kill |cRXP_ENEMY_Warlord Tartek|r
    >>Pick up |cRXP_PICK_Mistwhisper Treasure|r from the ground
    .complete 12575,1 --Warlord Tartek slain (1)
    .complete 12575,2 --Mistwhisper Treasure (1)
    .mob Warlord Tartek
step
    .goto 119,42.15,38.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistcaller Soo-gan|r
    .accept 12577 >>Accept Home Time!
    .target Mistcaller Soo-gan
    .isQuestTurnedIn 12575 --The Lost Mistwhisper Treasure
    .xp <76,1
step
    #completewith next
    .hs >>Hearth to Loomee's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 119,54.59,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Oracle Soo-say|r
    .turnin 12577 >>Turn in Home Time!
    .target High-Oracle Soo-say
    .isOnQuest 12577
step
    .goto 119,54.59,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High-Oracle Soo-say|r
    .accept 12578 >>Accept The Angry Gorloc
    .target High-Oracle Soo-say
    .isQuestTurnedIn 12577 --any of: Home Time!
    .xp <76,1
step
    .goto 119,64.57,48.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avatar of Freya|r
    .turnin 12797 >>Turn in Back Through the Waygate
    .target Avatar of Freya
    .isOnQuest 12797
step
    .goto 119,75.07,51.88
    >>Travel to Mosswalker Village.
    .complete 12578,1 --Travel to Mosswalker Village.
    .isOnQuest 12578
step
    .goto 119,74.74,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moodle|r
    .turnin 12578 >>Turn in The Angry Gorloc
    .target Moodle
    .isOnQuest 12578
step
    .goto 119,74.74,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moodle|r
    .accept 12580 >>Accept The Mosswalker Savior
    .accept 12579 >>Accept Lifeblood of the Mosswalker Shrine
    .target Moodle
    .isQuestTurnedIn 12578 --any of: The Angry Gorloc
    .xp <76,1
step
    #loop
    .goto 119,73.60,49.45,0
    .goto 119,73.60,49.45,40,0
    .goto 119,76.52,48.21,40,0
    .goto 119,75.73,49.40,40,0
    .goto 119,75.33,52.32,40,0
    .goto 119,76.93,50.54,40,0
    .goto 119,75.73,53.30,40,0
    .goto 119,77.58,51.52,40,0
    .goto 119,76.80,53.05,40,0
    >>Interact with |cRXP_FRIENDLY_Mosswalker Victim|r
    .complete 12580,1 --Mosswalker Victim
    .target Mosswalker Victim
    .isOnQuest 12580
step
    #loop
    .goto 119,69.13,55.37,0
    .goto 119,69.13,55.37,40,0
    .goto 119,68.65,60.47,40,0
    .goto 119,70.93,60.92,40,0
    >>Loot the |cRXP_PICK_Mosswalker Possesions|r for |cRXP_LOOT_Lifeblood Shard|r
    .complete 12579,1 --Lifeblood Shard (10)
    .isOnQuest 12579
step
    .goto 119,74.74,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moodle|r
    .turnin 12579 >>Turn in Lifeblood of the Mosswalker Shrine
    .target Moodle
    .isOnQuest 12579
step
    .goto 119,74.74,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moodle|r
    .turnin 12580 >>Turn in The Mosswalker Savior
    .target Moodle
    .isOnQuest 12580
step
    .goto 119,74.74,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moodle|r
    .accept 12581 >>Accept A Hero's Burden
    .target Moodle
    .isQuestTurnedIn 12579 --any of: Lifeblood of the Mosswalker Shrine
    .xp <76,1
step
    .goto 119,72.11,57.62
    >>Kill |cRXP_ENEMY_Artruis the Heartless|r
    .complete 12581,1 --Artruis the Heartless slain (1)
    .mob Artruis the Heartless
    .isOnQuest 12581
step
    .goto 119,72.10,57.44
    >>Click the |cRXP_PICK_Artruis's Phylactery|r
    .turnin 12581 >>Turn in A Hero's Burden
    .isOnQuest 12581
step << Mage wotlk
    .goto Dalaran,54.96,46.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
    .train 42985 >> Train your class spells
    .target Jessa Weaver
    .xp <77,1
step << Mage wotlk
    .goto Dalaran,54.96,46.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
    .train 42914 >> Train your class spells
    .target Jessa Weaver
    .xp <78,1
step << Mage wotlk
    .goto Dalaran,54.96,46.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
    .train 43046 >> Train your class spells
    .target Jessa Weaver
    .xp <79,1
step
    +|cRXP_WARN_End of the Sholazar Basin route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: The Etymidian
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Some Make Lemonade, Some Make Liquor
    >>|cRXP_FRIENDLY_another zone and back here|r: The Lost Mistwhisper Treasure
step
    +|cRXP_WARN_Suggested next zones at level 77|r: |cRXP_FRIENDLY_The Storm Peaks|r (about 0.9 levels of quests, starting around Ricket), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for The Storm Peaks --RouteBuilder:next
]])
