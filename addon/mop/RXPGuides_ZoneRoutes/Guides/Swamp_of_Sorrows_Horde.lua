-- 52-55 Swamp of Sorrows: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 52, 57).
-- Split into 2 guides, listed under "52 - 58 Swamp of Sorrows" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Swamp of Sorrows.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 52 - 58 Swamp of Sorrows
#subweight -52
#name 52-55 Swamp of Sorrows: around Trade Baron Silversnap
--RouteBuilder:next
#next Zone Routes (Horde)\52-54 Winterspring: around Rinno Curtainfire;Zone Routes (Horde)\55-56 Silithus;Zone Routes (Horde)\53-55 Un'Goro Crater: around Mor'vek

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .turnin 28570 >>Turn in The Bogpaddle Bullet
    .target Trade Baron Silversnap
    .isOnQuest 28570
step
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .accept 27587 >>Accept Maliciously Delicious
    .target Trade Baron Silversnap
step
    .goto 51,72.032,12.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeezie|r
    .fp >>Get the Bogpaddle Flight Path
    .target Skeezie
    .subzoneskip 5458,1
step
    .goto 51,73.64,9.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brono Goodgroove|r
    .accept 27592 >>Accept Drinks on the Rocks
    .target Brono Goodgroove
step
    #loop
    .goto 51,81.68,14.27,0
    .goto 51,81.68,14.27,40,0
    .goto 51,83.76,9.29,40,0
    .goto 51,82.58,4.22,40,0
    >>Kill |cRXP_ENEMY_Silt Crawler|r and loot |cRXP_LOOT_Stolen Silversnap Ice|r
    >>Kill |cRXP_ENEMY_Swampshore Makruras|r. Loot them for |cRXP_LOOT_Intact Swampshore Tail|r
    .complete 27592,1 --Stolen Silversnap Ice (1)
    .complete 27587,1 --Intact Swampshore Tail (6)
    .mob Silt Crawler
    .mob Swampshore Makrura
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9328 >>Turn in Hero of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9328
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9621 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9328 --any of: Hero of the Sin'dorei
    .xp <15,1
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .accept 28580 >>Accept Warchief's Command: Badlands!
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
    .accept 28577 >>Accept Warchief's Command: Eastern Plaguelands!
    .accept 28575 >>Accept Warchief's Command: Western Plaguelands!
    .accept 28581 >>Accept Warchief's Command: Searing Gorge!
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28677 >>Accept Warchief's Command: Swamp of Sorrows!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28667 >>Accept Warchief's Command: Burning Steppes!
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 110,81.16,37.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsudar the Bastion|r
    .accept 27281 >>Accept Grezz Ragefist
    .accept 28290 >>Accept Meet with Grezz Ragefist
    .target Alsudar the Bastion
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 110,84.56,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .accept 28297 >>Accept Meet with Ormak Grimshot
    .accept 27278 >>Accept Grimshot's Call
    .target Zandine
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 110,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 28298 >>Accept Meet with Gordul
    .accept 27279 >>Accept The Shattered Hand
    .target Zelanis
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 110,59.17,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inethven|r
    .accept 28300 >>Accept Meet with Ureda
    .accept 27277 >>Accept An Audience with Ureda
    .target Inethven
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 110,73.05,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zanien|r
    .accept 28299 >>Accept Meet with Zevrost
    .accept 27282 >>Accept Zevrost's Behest
    .target Zanien
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 110,71.71,55.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gez'li|r
    .accept 28301 >>Accept Meet with Kardris Dreamseeker
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Gez'li
step
    .goto 110,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Champion Bachi|r
    .accept 28303 >>Accept Meet with Master Pyreanor << BloodElf Paladin
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 28302 >>Accept Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Champion Bachi
step
    .goto 110,53.09,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldrae|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 28304 >>Accept Meet with Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 28308 >>Accept Meet with Seer Liwatha << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 28309 >>Accept Meet with Shadow-Walker Zuru << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28307 >>Accept Meet with Tyelis << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .accept 28323 >>Accept Meet with Brother Silverhallow << Goblin Priest
    .target Aldrae
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9811 >>Turn in Friend of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9811
step << Orc/Undead/Tauren/Troll/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9812 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9811 --any of: Friend of the Sin'dorei
    .xp <15,1
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Turn in Fly to Silvermoon City
    .target Sathren Azuredawn
    .isOnQuest 9133
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .accept 9134 >>Accept Skymistress Gloaming
    .target Sathren Azuredawn
    .isQuestTurnedIn 9133 --any of: Fly to Silvermoon City
    .xp <5,1
step
    #completewith next
    .zone 51 >>Leave Silvermoon City for Swamp of Sorrows
    .zoneskip 51
step
    .goto 51,73.64,9.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brono Goodgroove|r
    .turnin 27592 >>Turn in Drinks on the Rocks
    .target Brono Goodgroove
step
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .turnin 27587 >>Turn in Maliciously Delicious
    .turnin 28677 >>Turn in Warchief's Command: Swamp of Sorrows! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 27536 >>Accept Mostly Harmless
    .accept 27656 >>Accept Croc-Out
    .target Trade Baron Silversnap
step
    .goto 51,74.24,12.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pierre Fishflay|r
    .accept 27663 >>Accept Tastes Like Strider
    .target Pierre Fishflay
step
    #loop
    .goto 51,83.57,27.28,0
    .goto 51,83.57,27.28,40,0
    .goto 51,83.64,30.53,40,0
    >>Kill |cRXP_ENEMY_Swampstriders|r. Loot them for |cRXP_LOOT_Jumbo Swampstrider Drumstick|r
    .complete 27663,1 --Jumbo Swampstrider Drumstick (9)
    .mob Swampstrider
step
    #loop
    .goto 51,77.16,21.96,0
    .goto 51,77.16,21.96,40,0
    .goto 51,79.78,15.16,40,0
    >>Loot the |cRXP_PICK_Stray Land Mines|r for |cRXP_LOOT_Disarmed Land Mine|r
    .complete 27536,1 --Disarmed Land Mine (8)
step
    #loop
    .goto 51,82.26,38.42,0
    .goto 51,82.26,38.42,40,0
    .goto 51,81.85,42.86,40,0
    >>Kill |cRXP_ENEMY_Sawtooth Crocolisks|r
    .complete 27656,1 --Sawtooth Crocolisk slain (8)
    .mob Sawtooth Crocolisk
step
    .goto 51,70.40,37.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rebecca Blackman|r
    .target Rebecca Blackman
    .home >>Set your Hearthstone to Rebecca Blackman's inn
step
    .goto 51,69.90,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .accept 27840 >>Accept Draenethyst Crystals
    .target Holaaru
    .xp <52,1
step
    .goto 51,74.24,12.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pierre Fishflay|r
    .turnin 27663 >>Turn in Tastes Like Strider
    .target Pierre Fishflay
step
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .turnin 27536 >>Turn in Mostly Harmless
    .turnin 27656 >>Turn in Croc-Out
    .accept 27597 >>Accept Crazy Larry
    .target Trade Baron Silversnap
step
    .goto 51,84.03,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazy Larry|r
    .turnin 27597 >>Turn in Crazy Larry
    .accept 27598 >>Accept Kill Gil
    .accept 27599 >>Accept Can't Take It With Them
    .target Crazy Larry
step
    #loop
    .goto 51,89.56,30.16,0
    .goto 51,89.56,30.16,40,0
    .goto 51,89.20,26.82,40,0
    .goto 51,92.99,29.98,40,0
    >>Kill |cRXP_ENEMY_Gilblin Stalkers|r
    >>Kill |cRXP_ENEMY_Deceased Bogpaddle Privateers|r. Loot them for |cRXP_LOOT_Steamwheedle Ditty Bag|r
    .complete 27598,1 --Gilblin Stalker slain (7)
    .complete 27599,1 --Steamwheedle Ditty Bag (6)
    .mob Gilblin Stalker
    .mob Deceased Bogpaddle Privateer
step
    .goto 51,84.03,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazy Larry|r
    .turnin 27598 >>Turn in Kill Gil
    .turnin 27599 >>Turn in Can't Take It With Them
    .accept 27600 >>Accept In With a Bang
    .target Crazy Larry
step
    .goto 51,98.84,27.16
    >>Pick up |cRXP_PICK_Thousand-Thread-Count Fuse|r from the ground
    >>Pick up |cRXP_PICK_Extra-Pure Blasting Powder|r from the ground
    >>Pick up |cRXP_PICK_Stack of Questionable Publications|r from the ground
    .complete 27600,1 --Thousand-Thread-Count Fuse (1)
    .complete 27600,2 --Extra-Pure Blasting Powder (1)
    .complete 27600,3 --Stack of Questionable Publications (1)
step
    .goto 51,84.03,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazy Larry|r
    .turnin 27600 >>Turn in In With a Bang
    .accept 27740 >>Accept Baba Bogbrew
    .target Crazy Larry
step
    .goto 51,69.07,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baba Bogbrew|r
    .turnin 27740 >>Turn in Baba Bogbrew
    .accept 27691 >>Accept Marshfin Madness
    .target Baba Bogbrew
step
    #loop
    .goto 51,85.41,81.41,0
    .goto 51,85.41,81.41,40,0
    .goto 51,86.42,76.30,40,0
    >>Kill |cRXP_ENEMY_Marshfin Murkdwellers|r
    .complete 27691,1 --Marshfin Murkdweller slain (8)
    .mob Marshfin Murkdweller
step
    .goto 51,69.07,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baba Bogbrew|r
    .turnin 27691 >>Turn in Marshfin Madness
    .accept 27757 >>Accept The Darkest Depths
    .target Baba Bogbrew
step
    .goto 51,63.11,86.17
    >>Kill |cRXP_ENEMY_Hr'nglth the Lost|r
    .complete 27757,1 --Hr'nglth the Lost slain (1)
    .mob Hr'nglth the Lost
step
    .goto 51,69.07,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baba Bogbrew|r
    .turnin 27757 >>Turn in The Darkest Depths
    .accept 27818 >>Accept Slithering Signs
    .target Baba Bogbrew
step
    #loop
    .goto 51,79.91,75.86,0
    .goto 51,79.91,75.86,40,0
    .goto 51,83.97,74.35,40,0
    >>Kill |cRXP_ENEMY_Stagalbog Serpents|r. Loot them for |cRXP_LOOT_Intact Stagalbog Serpent Heart|r
    .complete 27818,1 --Intact Stagalbog Serpent Heart (5)
    .mob Stagalbog Serpent
step
    .goto 51,69.07,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baba Bogbrew|r
    .turnin 27818 >>Turn in Slithering Signs
    .accept 27869 >>Accept The Dragon and the Temple
    .target Baba Bogbrew
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27869 >>Turn in The Dragon and the Temple
    .accept 27694 >>Accept Pool of Tears
    .target Lord Itharius
step
    #loop
    .goto 51,69.98,59.36,0
    .goto 51,69.98,59.36,40,0
    .goto 51,67.74,60.92,40,0
    .goto 51,66.12,54.35,40,0
    >>Pick up |cRXP_PICK_Atal'ai Artifact|r from the ground
    .complete 27694,1 --Atal'ai Artifact (5)
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27694 >>Turn in Pool of Tears
    .accept 27704 >>Accept Legends of the Sunken Temple
    .target Lord Itharius
step
    .goto 51,73.80,44.20
    >>Hall of Masks found
    .complete 27704,1 --Hall of Masks found
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27704 >>Turn in Legends of the Sunken Temple
    .accept 27705 >>Accept Step One: The Priestess
    .target Lord Itharius
step
    .goto 51,74.78,49.28
    >>Kill |cRXP_ENEMY_Priestess Udum'bra|r
    .complete 27705,1 --Priestess Udum'bra slain (1)
    .mob Priestess Udum'bra
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27705 >>Turn in Step One: The Priestess
    .accept 27768 >>Accept Step Two: The Bloodletter
    .target Lord Itharius
step
    .goto 51,77.57,46.03
    >>Kill |cRXP_ENEMY_Gomora the Bloodletter|r
    .complete 27768,1 --Gomora the Bloodletter slain (1)
    .mob Gomora the Bloodletter
step
    .goto 51,77.30,46.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27768 >>Turn in Step Two: The Bloodletter
    .target ?
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .accept 27773 >>Accept Step Three: Prophet
    .target Lord Itharius
step
    .goto 51,76.62,41.53
    >>Kill |cRXP_ENEMY_Jammal'an the Prophet|r
    .complete 27773,1 --Jammal'an the Prophet slain (1)
    .mob Jammal'an the Prophet
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27773 >>Turn in Step Three: Prophet
    .accept 27914 >>Accept Blessing of the Green Dragonflight
    .turnin 27914 >>Turn in Blessing of the Green Dragonflight
    .accept 27915 >>Accept The Heart of the Temple
    .accept 27871 >>Accept To Stonard << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Lord Itharius
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,49.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .turnin 27871 >>Turn in To Stonard
    .accept 27852 >>Accept Orcs and Humans
    .accept 27853 >>Accept Lumbering Oafs
    .target Dispatch Commander Ruag
step << Horde
    .goto 51,47.774,55.219
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breyk|r
    .fp Stonard>>Get the Stonard Flight Path
    .target Breyk
    .subzoneskip 75,1
step
    #completewith next
    .hs >>Hearth to Rebecca Blackman's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 51,69.90,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .accept 27840 >>Accept Draenethyst Crystals
    .target Holaaru
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 51,68.20,35.58,0
    .goto 51,68.20,35.58,40,0
    .goto 51,66.99,38.44,40,0
    .goto 51,68.71,28.86,40,0
    .goto 51,70.99,32.30,40,0
    >>Kill |cRXP_ENEMY_Marshtide Footmans|r
    >>Kill |cRXP_ENEMY_Marshtide Peasants|r
    .complete 27852,1 --Marshtide Footman slain (8)
    .complete 27853,1 --Marshtide Peasant slain (5)
    .mob Marshtide Footman
    .mob Marshtide Peasant
step
    #loop
    .goto 51,60.76,25.77,0
    .goto 51,60.76,25.77,40,0
    .goto 51,58.14,27.90,40,0
    .goto 51,56.61,31.55,40,0
    >>Loot the |cRXP_PICK_Draenethyst Crystals|r for |cRXP_LOOT_Draenethyst Crystal|r
    .complete 27840,1 --Draenethyst Crystal (5)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,49.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .turnin 27852 >>Turn in Orcs and Humans
    .turnin 27853 >>Turn in Lumbering Oafs
    .accept 27854 >>Accept Tides of Darkness
    .accept 27855 >>Accept Reinforcements Denied
    .accept 27856 >>Accept Marking the Fallen
    .target Dispatch Commander Ruag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along58
    >>As you go: Kill |cRXP_ENEMY_Marshtide Mages|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27855,1 --Marshtide Mage slain (3)
    .mob Marshtide Mage
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along58
    #loop
    .goto 51,61.15,47.01,0
    .goto 51,61.15,47.01,40,0
    .goto 51,60.15,42.39,40,0
    >>Interact with |cRXP_FRIENDLY_Fallen Stonard Warriors|r
    .complete 27856,1 --Fallen Stonard Warrior (7)
    .target Fallen Stonard Warrior
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 51,62.48,45.93,0
    .goto 51,62.48,45.93,40,0
    .goto 51,61.83,41.68,40,0
    >>Kill |cRXP_ENEMY_Marshtide Mages|r
    .complete 27855,1 --Marshtide Mage slain (3)
    .mob Marshtide Mage
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,67.94,35.63
    >>Kill |cRXP_ENEMY_Marshtide Knights|r
    .complete 27854,1 --Marshtide Knight slain (6)
    .mob Marshtide Knight
step
    .goto 51,69.90,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .turnin 27840 >>Turn in Draenethyst Crystals
    .target Holaaru
step
    .goto 51,69.90,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .accept 27918 >>Accept The Harborage
    .target Holaaru
    .isQuestTurnedIn 27860 --The Lost Ones
    .xp <53,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,49.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .turnin 27854 >>Turn in Tides of Darkness
    .turnin 27855 >>Turn in Reinforcements Denied
    .turnin 27856 >>Turn in Marking the Fallen
    .accept 27857 >>Accept We're Under Attack!
    .target Dispatch Commander Ruag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 51,48.40,57.94,0
    .goto 51,48.40,57.94,40,0
    .goto 51,48.08,52.21,40,0
    >>Kill |cRXP_ENEMY_Marshtide Invaders|r
    .complete 27857,1 --Marshtide Invader slain (12)
    .mob Marshtide Invader
step
    .goto 51,49.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .turnin 27857 >>Turn in We're Under Attack! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 27906 >>Accept Neeka Bloodscar
    .target Dispatch Commander Ruag
step
    .goto 51,21.21,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 27906 >>Turn in Neeka Bloodscar
    .accept 27907 >>Accept Prayerblossom << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 27908 >>Accept Secrets of the Mire << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Neeka Bloodscar
step
    .goto 51,26.86,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .turnin 27918 >>Turn in The Harborage
    .target Anchorite Avuun
    .isOnQuest 27918
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along68
    >>As you go: Kill |cRXP_ENEMY_Shifting Mireglob|r and loot |cRXP_LOOT_Invigorated Silt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27908,1 --Invigorated Silt (1)
    .mob Shifting Mireglob
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along68
    .goto 51,35.82,38.20
    >>Loot the |cRXP_PICK_Prayerblooms|r for |cRXP_LOOT_Prayerblossom|r
    .complete 27907,1 --Prayerblossom (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 51,34.50,48.37,0
    .goto 51,34.50,48.37,40,0
    .goto 51,30.77,53.03,40,0
    >>Kill |cRXP_ENEMY_Shifting Mireglob|r and loot |cRXP_LOOT_Invigorated Silt|r
    .complete 27908,1 --Invigorated Silt (1)
    .mob Shifting Mireglob
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,21.21,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 27907 >>Turn in Prayerblossom
    .turnin 27908 >>Turn in Secrets of the Mire
    .accept 27909 >>Accept The Purespring
    .accept 27910 >>Accept Last Regrets
    .target Neeka Bloodscar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 51,18.90,57.00,0
    .goto 51,18.90,57.00,40,0
    .goto 51,21.12,60.64,40,0
    >>Kill |cRXP_ENEMY_Purespring Elementals|r. Loot them for |cRXP_LOOT_Purespring Mote|r
    .complete 27909,1 --Purespring Mote (8)
    .mob Purespring Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,10.40,33.79
    >>Kill |cRXP_ENEMY_Duskfang|r and loot |cRXP_LOOT_Duskfang's Hide|r
    .complete 27910,1 --Duskfang's Hide (1)
    .mob Duskfang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,21.21,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 27909 >>Turn in The Purespring
    .turnin 27910 >>Turn in Last Regrets
    .accept 27911 >>Accept With Dying Breath
    .turnin 27911 >>Turn in With Dying Breath
    .accept 27916 >>Accept Ruag's Report
    .target Neeka Bloodscar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,49.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .turnin 27916 >>Turn in Ruag's Report
    .target Dispatch Commander Ruag
step
    +|cRXP_WARN_That is all of Swamp of Sorrows for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Warchief's Command: Arathi Highlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Burning Steppes|r: Warchief's Command: Burning Steppes! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eastern Plaguelands|r: Warchief's Command: Eastern Plaguelands!, Warchief's Command: Badlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Warchief's Command: Ghostlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Warchief's Command: Northern Stranglethorn Vale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda, Meet with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call, Meet with Ormak Grimshot << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Shattered Hand, Meet with Gordul << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls, Meet with Kardris Dreamseeker << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist, Meet with Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest, Meet with Zevrost << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor, Meet with Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun, Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call, Meet with Seer Liwatha << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker, Meet with Shadow-Walker Zuru << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille, Meet with Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar, Meet with Tyelis << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow, Meet with Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_Searing Gorge|r: Warchief's Command: Searing Gorge! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Warchief's Command: The Cape of Stranglethorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Hinterlands|r: Warchief's Command: The Hinterlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Temple of Atal'Hakkar - (Dungeon/Raid)|r: The Heart of the Temple
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
    >>|cRXP_FRIENDLY_Western Plaguelands|r: Warchief's Command: Western Plaguelands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 54|r: |cRXP_FRIENDLY_Winterspring|r (about 1.2 levels of quests, starting around Rinno Curtainfire), |cRXP_FRIENDLY_Silithus|r (about 1.0 levels of quests, starting around Huum Wildmane), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.8 levels of quests, starting around Mor'vek). Completing this step loads the guide for Winterspring --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 57.|r Load its guide for level 57 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 52 - 58 Swamp of Sorrows
#subweight -52
#name 57-58 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Horde)\55-56 Silithus;Zone Routes (Horde)\53-55 Un'Goro Crater: around Mor'vek

step
    .goto 51,26.86,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .accept 27919 >>Accept Onward to the Blasted Lands
    .target Anchorite Avuun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 51,49.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .accept 28553 >>Accept Okrilla and the Blasted Lands
    .target Dispatch Commander Ruag
step
    +|cRXP_WARN_End of the Swamp of Sorrows route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blasted Lands|r: Onward to the Blasted Lands
    >>|cRXP_FRIENDLY_Blasted Lands|r: Okrilla and the Blasted Lands << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 57|r: |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Mor'vek). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
