-- 85-85 Twilight Highlands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 85, 88).
-- Split into 2 guides, listed under "85 - 89 Twilight Highlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Twilight Highlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 85 - 89 Twilight Highlands
#subweight -85
#name 85-86 Twilight Highlands: around Gurgthock

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.50,49.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Stonefist|r
    .turnin 26388 >>Turn in Twilight Skies
    .target Admiral Stonefist
    .isQuestComplete 26388
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.50,49.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Stonefist|r
    .accept 26539 >>Accept Stalled Negotiations
    .target Admiral Stonefist
    .isQuestTurnedIn 26388 --any of: Twilight Skies
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.59,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Krogg|r
    .accept 26538 >>Accept Emergency Aid
    .target Warlord Krogg
    .isQuestTurnedIn 26388 --any of: Twilight Skies
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.84,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ornak|r
    .turnin 26539 >>Turn in Stalled Negotiations
    .target Ornak
    .isOnQuest 26539
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.84,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ornak|r
    .accept 26549 >>Accept Madness
    .target Ornak
    .isQuestTurnedIn 26539 --any of: Stalled Negotiations
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.53,49.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregor|r
    .complete 26538,1 --Gregor
    .target Gregor
    .isOnQuest 26538
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.53,49.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregor|r
    .turnin 26538 >>Turn in Emergency Aid
    .target Gregor
    .isOnQuest 26538
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.53,49.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregor|r
    .accept 26540 >>Accept Dangerous Compassion
    .target Gregor
    .isQuestTurnedIn 26538 --any of: Emergency Aid
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,75.50,55.25
    >>Negotiations Concluded
    .complete 26549,1 --Negotiations Concluded
    .isOnQuest 26549
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.57,49.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26549 >>Turn in Madness
    .unitscan Zaela
    .isOnQuest 26549
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.57,49.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26608 >>Accept Negotiations Terminated
    .unitscan Zaela
    .isQuestTurnedIn 26549 --any of: Madness
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.50,49.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Stonefist|r
    .turnin 26608 >>Turn in Negotiations Terminated
    .target Admiral Stonefist
    .isOnQuest 26608
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.59,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Krogg|r
    .turnin 26540 >>Turn in Dangerous Compassion
    .target Warlord Krogg
    .isOnQuest 26540
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.59,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Krogg|r
    .accept 26619 >>Accept You Say You Want a Revolution
    .target Warlord Krogg
    .isQuestTurnedIn 26540 --Dangerous Compassion
    .isQuestTurnedIn 26608 --Negotiations Terminated
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.59,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .turnin 26619 >>Turn in You Say You Want a Revolution
    .target Zaela
    .isOnQuest 26619
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.59,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .accept 26621 >>Accept Insurrection
    .target Zaela
    .isQuestTurnedIn 26619 --any of: You Say You Want a Revolution
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,76.98,51.75,0
    .goto 241,76.98,51.75,40,0
    .goto 241,74.59,51.97,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Workers|r and |cRXP_ENEMY_Dragonmaw Merchants|r
    .complete 26621,3 --Dragonmaw Worker (3)
    .mob Dragonmaw Worker
    .mob Dragonmaw Merchant
    .isOnQuest 26621
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,74.10,50.58,0
    .goto 241,74.10,50.58,40,0
    .goto 241,76.88,50.77,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Warlocks|r
    .complete 26621,2 --Dragonmaw Warlock slain (4)
    .mob Dragonmaw Warlock
    .isOnQuest 26621
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,74.43,51.97,0
    .goto 241,74.43,51.97,40,0
    .goto 241,77.57,52.05,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Enforcers|r
    .complete 26621,1 --Dragonmaw Enforcer slain (10)
    .mob Dragonmaw Enforcer
    .isOnQuest 26621
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.59,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .turnin 26621 >>Turn in Insurrection
    .target Zaela
    .isOnQuest 26621
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,76.59,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .accept 26622 >>Accept Death to Mor'ghor
    .target Zaela
    .isQuestTurnedIn 26621 --any of: Insurrection
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,75.48,55.64
    >>Kill |cRXP_ENEMY_Warchief Mor'ghor|r
    .complete 26622,1 --Warchief Mor'ghor slain (1)
    .mob Warchief Mor'ghor
    .isOnQuest 26622
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,74.79,53.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .turnin 26622 >>Turn in Death to Mor'ghor
    .target Garrosh Hellscream
    .isOnQuest 26622
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,74.79,53.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .accept 26786 >>Accept Securing the Beach Head
    .target Garrosh Hellscream
    .isQuestTurnedIn 26622 --any of: Death to Mor'ghor
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,73.80,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artesh|r
    .turnin 26786 >>Turn in Securing the Beach Head
    .target Artesh
    .isOnQuest 26786
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,73.80,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artesh|r
    .accept 26784 >>Accept Muddied Waters
    .target Artesh
    .isQuestTurnedIn 26786 --any of: Securing the Beach Head
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,74.27,53.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ornak|r
    .accept 26788 >>Accept Cementing Our Victory
    .target Ornak
    .isQuestTurnedIn 26622 --any of: Death to Mor'ghor
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,68.88,49.67,0
    .goto 241,68.88,49.67,40,0
    .goto 241,67.43,46.89,40,0
    .goto 241,66.67,45.23,40,0
    >>Pick up |cRXP_PICK_Verrall River Muck|r from the ground
    .complete 26788,1 --Verrall River Muck (1)
    .isOnQuest 26788
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,67.31,45.52,0
    .goto 241,67.31,45.52,40,0
    .goto 241,68.17,48.68,40,0
    >>Kill |cRXP_ENEMY_Muddied Water Elementals|r. Loot them for |cRXP_LOOT_Whirlpool Core|r
    .complete 26784,1 --Whirlpool Core (5)
    .mob Muddied Water Elemental
    .isOnQuest 26784
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,74.27,53.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ornak|r
    .turnin 26788 >>Turn in Cementing Our Victory
    .target Ornak
    .isOnQuest 26788
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,73.80,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artesh|r
    .turnin 26784 >>Turn in Muddied Waters
    .target Artesh
    .isOnQuest 26784
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,73.80,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Artesh|r
    .accept 26798 >>Accept The Warchief Will be Pleased
    .target Artesh
    .isQuestTurnedIn 26784 --Muddied Waters
    .isQuestTurnedIn 26788 --Cementing Our Victory
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,75.30,54.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .turnin 26840 >>Turn in Return to the Highlands
    .target Zaela
    .isOnQuest 26840
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,75.30,54.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .accept 27583 >>Accept The Northern Flank
    .accept 27607 >>Accept The Southern Flank
    .target Zaela
    .isQuestTurnedIn 26840 --any of: Return to the Highlands
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.24,62.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok'tar|r
    .turnin 27607 >>Turn in The Southern Flank
    .target Rok'tar
    .isOnQuest 27607
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.24,62.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok'tar|r
    .accept 27611 >>Accept Blood on the Sand
    .accept 27610 >>Accept Scouting the Shore
    .target Rok'tar
    .isQuestTurnedIn 27607 --any of: The Southern Flank
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.50,65.20
    >>Beach Head Control Point Scouted
    .complete 27610,1 --Beach Head Control Point Scouted
    .isOnQuest 27610
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,77.19,67.07,0
    .goto 241,77.19,67.07,40,0
    .goto 241,76.47,63.04,40,0
    >>Kill |cRXP_ENEMY_Highbank Marines|r
    .complete 27611,1 --Highbank Marine slain (12)
    .mob Highbank Marine
    .isOnQuest 27611
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.24,62.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok'tar|r
    .turnin 27610 >>Turn in Scouting the Shore
    .target Rok'tar
    .isOnQuest 27610
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.24,62.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok'tar|r
    .turnin 27611 >>Turn in Blood on the Sand
    .target Rok'tar
    .isOnQuest 27611
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.46,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Juice Gnugat|r
    .accept 27622 >>Accept Mo' Better Shredder
    .target Juice Gnugat
    .isQuestTurnedIn 27610 --Scouting the Shore
    .isQuestTurnedIn 27611 --Blood on the Sand
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,70.92,63.76,0
    .goto 241,70.92,63.76,40,0
    .goto 241,69.19,63.29,40,0
    .goto 241,68.31,61.64,40,0
    .goto 241,67.24,59.54,40,0
    >>Locate a Salvageable Shredder on the Twilight Shores, and use it to summon a Bilgewater Salvage Expert. Defend the shredder until it is operational again.
    .complete 27622,1 --Salvageable Shredder
    .target Salvageable Shredder
    .isOnQuest 27622
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,67.24,59.54,0
    .goto 241,67.24,59.54,40,0
    .goto 241,68.31,61.64,40,0
    .goto 241,69.19,63.29,40,0
    .goto 241,70.92,63.76,40,0
    >>Locate a Salvageable Shredder on the Twilight Shores, and use it to summon a Bilgewater Salvage Expert. Defend the shredder until it is operational again.
    .complete 27622,2 --Salvageable Shredder
    .target Salvageable Shredder
    .isOnQuest 27622
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.46,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Juice Gnugat|r
    .turnin 27622 >>Turn in Mo' Better Shredder
    .target Juice Gnugat
    .isOnQuest 27622
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,78.46,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Juice Gnugat|r
    .accept 28583 >>Accept Krazzworks
    .target Juice Gnugat
    .isQuestTurnedIn 27622 --any of: Mo' Better Shredder
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,70.24,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gralok|r
    .turnin 27583 >>Turn in The Northern Flank
    .target Gralok
    .isOnQuest 27583
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,70.24,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gralok|r
    .accept 27584 >>Accept Blood in the Surf
    .target Gralok
    .isQuestTurnedIn 27583 --any of: The Northern Flank
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,70.31,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fergus Gearchum|r
    .accept 27586 >>Accept Shells on the Sea Shore
    .target Fergus Gearchum
    .isQuestTurnedIn 27583 --any of: The Northern Flank
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,71.67,42.50,0
    .goto 241,71.67,42.50,40,0
    .goto 241,71.09,39.61,40,0
    .goto 241,73.33,45.71,40,0
    >>Pick up |cRXP_PICK_Unexploded Mortar Shell|r from the ground
    .complete 27586,1 --Unexploded Mortar Shell (8)
    .isOnQuest 27586
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,72.62,41.93,0
    .goto 241,72.62,41.93,40,0
    .goto 241,71.59,45.04,40,0
    .goto 241,69.72,40.66,40,0
    >>Kill |cRXP_ENEMY_Blackscale Raiders|r, |cRXP_ENEMY_Blackscale Mistress|r and |cRXP_ENEMY_Blackscale Naga Quest Tracker Hordes|r
    .complete 27584,1 --Blackscale Raider (15)
    .mob Blackscale Raider
    .mob Blackscale Mistress
    .mob Blackscale Naga Quest Tracker Horde
    .isOnQuest 27584
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,70.24,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gralok|r
    .turnin 27584 >>Turn in Blood in the Surf
    .target Gralok
    .isOnQuest 27584
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,70.31,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fergus Gearchum|r
    .turnin 27586 >>Turn in Shells on the Sea Shore
    .target Fergus Gearchum
    .isOnQuest 27586
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,70.31,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fergus Gearchum|r
    .accept 27606 >>Accept Blast Him!
    .target Fergus Gearchum
    .isQuestTurnedIn 27584 --Blood in the Surf
    .isQuestTurnedIn 27586 --Shells on the Sea Shore
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,72.35,40.99
    >>Kill |cRXP_ENEMY_Fathom-Lord Heth'Jatar|r
    .complete 27606,1 --Fathom-Lord Heth'Jatar slain (1)
    .mob Fathom-Lord Heth'Jatar
    .isOnQuest 27606
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,70.31,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fergus Gearchum|r
    .turnin 27606 >>Turn in Blast Him!
    .target Fergus Gearchum
    .isOnQuest 27606
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,70.24,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gralok|r
    .accept 27690 >>Accept Narkrall, the Drake-Tamer
    .target Gralok
    .isQuestTurnedIn 27606 --any of: Blast Him!
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.63,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Krazz|r
    .turnin 28583 >>Turn in Krazzworks
    .target Captain Krazz
    .isOnQuest 28583
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.63,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Krazz|r
    .accept 28588 >>Accept Wildhammer Infestation
    .target Captain Krazz
    .isQuestTurnedIn 28583 --any of: Krazzworks
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.68,16.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brett the Bomber|r
    .accept 28584 >>Accept Quality Construction
    .target Brett the Bomber
    .isQuestTurnedIn 28583 --any of: Krazzworks
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.66,16.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flashbang Rothman|r
    .accept 28586 >>Accept Pool Pony Rescue
    .target Flashbang Rothman
    .isQuestTurnedIn 28583 --any of: Krazzworks
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,76.71,17.47,0
    .goto 241,76.71,17.47,40,0
    .goto 241,75.17,16.60,40,0
    >>Click the |cRXP_PICK_Faulty Valve|r
    .complete 28584,1 --Faulty Valve
    .isOnQuest 28584
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,75.19,16.70,0
    .goto 241,75.19,16.70,40,0
    .goto 241,77.29,17.20,40,0
    >>Kill |cRXP_ENEMY_Wildhammer Raiders|r
    .complete 28588,1 --Wildhammer Raider (10)
    .mob Wildhammer Raider
    .isOnQuest 28588
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,75.44,18.16,0
    .goto 241,75.44,18.16,40,0
    .goto 241,73.98,18.98,40,0
    .goto 241,80.72,13.43,40,0
    >>Interact with |cRXP_FRIENDLY_Krazzworks Laborers|r
    .complete 28586,1 --Krazzworks Laborer (10)
    .target Krazzworks Laborer
    .isOnQuest 28586
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.66,16.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flashbang Rothman|r
    .turnin 28586 >>Turn in Pool Pony Rescue
    .target Flashbang Rothman
    .isOnQuest 28586
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.68,16.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brett the Bomber|r
    .turnin 28584 >>Turn in Quality Construction
    .target Brett the Bomber
    .isOnQuest 28584
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.63,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Krazz|r
    .turnin 28588 >>Turn in Wildhammer Infestation
    .target Captain Krazz
    .isOnQuest 28588
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.63,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Krazz|r
    .accept 28589 >>Accept Everything But the Kitchen Sink
    .target Captain Krazz
    .isQuestTurnedIn 28584 --Quality Construction
    .isQuestTurnedIn 28586 --Pool Pony Rescue
    .isQuestTurnedIn 28588 --Wildhammer Infestation
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,76.43,17.96,0
    .goto 241,76.43,17.96,40,0
    .goto 241,74.09,17.15,40,0
    >>Kill |cRXP_ENEMY_Krazz Cannons|r
    .complete 28589,1 --Krazz Cannon slain (8)
    .mob Krazz Cannon
    .isOnQuest 28589
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,75.34,18.75,0
    .goto 241,75.34,18.75,40,0
    .goto 241,76.63,14.58,40,0
    >>Kill |cRXP_ENEMY_Wildhammer Stormtalons|r
    .complete 28589,2 --Wildhammer Stormtalon slain (15)
    .mob Wildhammer Stormtalon
    .isOnQuest 28589
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.63,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Krazz|r
    .turnin 28589 >>Turn in Everything But the Kitchen Sink
    .target Captain Krazz
    .isOnQuest 28589
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.63,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Krazz|r
    .accept 28590 >>Accept Reprisal
    .target Captain Krazz
    .isQuestTurnedIn 28589 --any of: Everything But the Kitchen Sink
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,81.82,70.57,0
    .goto 241,81.82,70.57,40,0
    .goto 241,79.59,70.56,40,0
    .goto 241,83.45,73.12,40,0
    .goto 241,83.79,75.67,40,0
    .goto 241,83.08,78.11,40,0
    .goto 241,81.33,80.21,40,0
    .goto 241,80.19,80.70,40,0
    .goto 241,78.49,80.22,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28590 >>Turn in Reprisal
    .unitscan Patch
    .isOnQuest 28590
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,78.49,80.22,0
    .goto 241,78.49,80.22,40,0
    .goto 241,80.19,80.70,40,0
    .goto 241,81.33,80.21,40,0
    .goto 241,83.08,78.11,40,0
    .goto 241,83.79,75.67,40,0
    .goto 241,83.45,73.12,40,0
    .goto 241,79.59,70.56,40,0
    .goto 241,81.82,70.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28591 >>Accept Off The Wall
    .unitscan Patch
    .isQuestTurnedIn 28590 --any of: Reprisal
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,79.75,78.53,0
    .goto 241,79.75,78.53,40,0
    .goto 241,79.47,73.40,40,0
    >>Kill |cRXP_ENEMY_Highbank Cannon Bunnies|r and |cRXP_ENEMY_Highbank Cannons|r
    .complete 28591,3 --Highbank Cannon Bunny (8)
    .mob Highbank Cannon Bunny
    .mob Highbank Cannon
    .isOnQuest 28591
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,78.28,76.59,0
    .goto 241,78.28,76.59,40,0
    .goto 241,81.68,72.94,40,0
    >>Kill |cRXP_ENEMY_Highbank Marksmans|r
    .complete 28591,1 --Highbank Marksman slain (80)
    .mob Highbank Marksman
    .isOnQuest 28591
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,79.53,73.27,0
    .goto 241,79.53,73.27,40,0
    .goto 241,79.69,78.36,40,0
    >>Kill |cRXP_ENEMY_Highbank Cannoneers|r
    .complete 28591,2 --Highbank Cannoneer slain (12)
    .mob Highbank Cannoneer
    .isOnQuest 28591
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,78.49,80.22,0
    .goto 241,78.49,80.22,40,0
    .goto 241,80.19,80.70,40,0
    .goto 241,81.33,80.21,40,0
    .goto 241,83.08,78.11,40,0
    .goto 241,83.79,75.67,40,0
    .goto 241,83.45,73.12,40,0
    .goto 241,79.59,70.56,40,0
    .goto 241,81.82,70.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28591 >>Turn in Off The Wall
    .unitscan Patch
    .isOnQuest 28591
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.12,80.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .accept 28593 >>Accept Of Utmost Importance
    .accept 28594 >>Accept Highbank, Crybank
    .target Patch
    .isQuestTurnedIn 28591 --any of: Off The Wall
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,81.85,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ticker|r
    .accept 28592 >>Accept Parting Packages
    .target Ticker
    .isQuestTurnedIn 28591 --any of: Off The Wall
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.03,73.32
    >>Set bombs on the boat, in the keep entrance, and in one of the northern towers.
    .complete 28592,3 --Highbank Tower Bomb Controller
    .target Highbank Tower Bomb Controller
    .isOnQuest 28592
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,81.56,78.78
    >>Set bombs on the boat, in the keep entrance, and in one of the northern towers.
    .complete 28592,1 --Highbank Boat Bomb Controller
    .target Highbank Boat Bomb Controller
    .isOnQuest 28592
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,79.80,77.39
    >>Set bombs on the boat, in the keep entrance, and in one of the northern towers.
    .complete 28592,2 --Highbank Keep Bomb Controller
    .target Highbank Keep Bomb Controller
    .isOnQuest 28592
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,79.51,77.65
    >>Pick up |cRXP_PICK_Induction Samophlange|r from the ground
    .complete 28593,1 --Induction Samophlange (1)
    .isOnQuest 28593
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,80.99,78.07,0
    .goto 241,80.99,78.07,40,0
    .goto 241,80.34,75.57,40,0
    >>Kill |cRXP_ENEMY_Highbank Marksmans|r, |cRXP_ENEMY_Tidebreaker Sailors|r and |cRXP_ENEMY_Highbank Prison Guards|r
    .complete 28594,1 --Highbank Marksman (8)
    .mob Highbank Marksman
    .mob Tidebreaker Sailor
    .mob Highbank Prison Guard
    .isOnQuest 28594
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,81.85,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ticker|r
    .turnin 28592 >>Turn in Parting Packages
    .target Ticker
    .isOnQuest 28592
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.12,80.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .turnin 28593 >>Turn in Of Utmost Importance
    .target Patch
    .isOnQuest 28593
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.12,80.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .turnin 28594 >>Turn in Highbank, Crybank
    .target Patch
    .isOnQuest 28594
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,82.12,80.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .accept 28595 >>Accept Krazz Works!
    .target Patch
    .isQuestTurnedIn 28592 --Parting Packages
    .isQuestTurnedIn 28593 --Of Utmost Importance
    .isQuestTurnedIn 28594 --Highbank, Crybank
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,77.63,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Krazz|r
    .turnin 28595 >>Turn in Krazz Works!
    .target Captain Krazz
    .isOnQuest 28595
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.82,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narkrall Rakeclaw|r
    .turnin 27690 >>Turn in Narkrall, the Drake-Tamer
    .target Narkrall Rakeclaw
    .isOnQuest 27690
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.82,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narkrall Rakeclaw|r
    .accept 27751 >>Accept Crushing the Wildhammer
    .accept 27929 >>Accept Drag 'em Down
    .target Narkrall Rakeclaw
    .isQuestTurnedIn 27690 --any of: Narkrall, the Drake-Tamer
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,55.14,43.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harkkan|r
    .accept 27747 >>Accept Total War
    .target Harkkan
    .isQuestTurnedIn 27690 --any of: Narkrall, the Drake-Tamer
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.83,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Griff|r
    .accept 27750 >>Accept War Forage
    .target Griff
    .isQuestTurnedIn 27690 --any of: Narkrall, the Drake-Tamer
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,50.94,40.69,0
    .goto 241,50.94,40.69,40,0
    .goto 241,50.27,43.29,40,0
    .goto 241,51.82,38.16,40,0
    >>Kill |cRXP_ENEMY_Thundermar Gryphon Riders|r
    .complete 27929,1 --Thundermar Gryphon Rider slain (4)
    .mob Thundermar Gryphon Rider
    .isOnQuest 27929
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,48.80,36.73
    >>Click the |cRXP_PICK_Thundermar Ale Keg|r
    .complete 27747,1 --Thundermar Ale Keg
    .isOnQuest 27747
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,48.42,37.24,0
    .goto 241,48.42,37.24,40,0
    .goto 241,50.76,33.56,40,0
    >>Pick up |cRXP_PICK_Wildhammer Food Stores|r from the ground
    .complete 27750,1 --Wildhammer Food Stores (10)
    .isOnQuest 27750
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,52.08,42.86,0
    .goto 241,52.08,42.86,40,0
    .goto 241,53.59,39.81,40,0
    >>Kill |cRXP_ENEMY_Wildhammer Warbrands|r, |cRXP_ENEMY_Gunwald Greybeards|r, |cRXP_ENEMY_Cliff Thundermars|r and |cRXP_ENEMY_Dillan MacHurleys|r. Loot them for |cRXP_LOOT_Wildhammer Insignia|r
    .complete 27751,1 --Wildhammer Insignia (8)
    .mob Wildhammer Warbrand
    .mob Gunwald Greybeard
    .mob Cliff Thundermar
    .mob Dillan MacHurley
    .isOnQuest 27751
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.83,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Griff|r
    .turnin 27750 >>Turn in War Forage
    .target Griff
    .isOnQuest 27750
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.82,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narkrall Rakeclaw|r
    .turnin 27751 >>Turn in Crushing the Wildhammer
    .target Narkrall Rakeclaw
    .isOnQuest 27751
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.82,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narkrall Rakeclaw|r
    .turnin 27929 >>Turn in Drag 'em Down
    .target Narkrall Rakeclaw
    .isOnQuest 27929
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.82,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narkrall Rakeclaw|r
    .accept 28041 >>Accept Bait and Throttle
    .target Narkrall Rakeclaw
    .isQuestTurnedIn 27751 --Crushing the Wildhammer
    .isQuestTurnedIn 27929 --Drag 'em Down
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,55.14,43.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harkkan|r
    .turnin 27747 >>Turn in Total War
    .target Harkkan
    .isOnQuest 27747
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,55.14,43.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harkkan|r
    .accept 28038 >>Accept Blood in the Highlands
    .target Harkkan
    .isQuestTurnedIn 27751 --Crushing the Wildhammer
    .isQuestTurnedIn 27929 --Drag 'em Down
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.20,42.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mallia|r
    .accept 27945 >>Accept Paint it Black
    .target Mallia
    .isQuestTurnedIn 27751 --Crushing the Wildhammer
    .isQuestTurnedIn 27929 --Drag 'em Down
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,61.43,43.69
    >>Kill |cRXP_ENEMY_Untamed Gryphon|r and loot |cRXP_LOOT_Fresh Gryphon Carcass|r
    .complete 28041,1 --Fresh Gryphon Carcass (1)
    .mob Untamed Gryphon
    .isOnQuest 28041
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.82,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narkrall Rakeclaw|r
    .turnin 28041 >>Turn in Bait and Throttle
    .target Narkrall Rakeclaw
    .isOnQuest 28041
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.82,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narkrall Rakeclaw|r
    .accept 28043 >>Accept How to Maim Your Dragon
    .target Narkrall Rakeclaw
    .isQuestTurnedIn 28041 --any of: Bait and Throttle
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 28038 >>Turn in Blood in the Highlands
    .target Wodin the Troll-Servant
    .isOnQuest 28038
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27863 >>Accept The Crucible of Carnage: The Bloodeye Bruiser!
    .target Gurgthock
step
    .goto 241,52.25,56.31
    >>Kill |cRXP_ENEMY_Hurp'derp|r
    .complete 27863,1 --Hurp'derp slain (1)
    .mob Hurp'derp
step
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27863 >>Turn in The Crucible of Carnage: The Bloodeye Bruiser!
    .target Wodin the Troll-Servant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27865 >>Accept The Crucible of Carnage: The Wayward Wildhammer!
    .target Gurgthock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,51.16,59.15
    >>Kill |cRXP_ENEMY_Sully Kneecapper|r
    .complete 27865,1 --Sully Kneecapper slain (1)
    .mob Sully Kneecapper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27865 >>Turn in The Crucible of Carnage: The Wayward Wildhammer!
    .target Wodin the Troll-Servant
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27866 >>Accept The Crucible of Carnage: Calder's Creation!
    .target Gurgthock
step
    .goto 241,50.44,57.19
    >>Kill |cRXP_ENEMY_Cadaver Collage|r
    .complete 27866,1 --Cadaver Collage slain (1)
    .mob Cadaver Collage
step
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27866 >>Turn in The Crucible of Carnage: Calder's Creation!
    .target Wodin the Troll-Servant
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27867 >>Accept The Crucible of Carnage: The Earl of Evisceration!
    .target Gurgthock
step
    .goto 241,52.46,56.06
    >>Kill |cRXP_ENEMY_Lord Geoffery Tulvan|r
    .complete 27867,1 --Lord Geoffery Tulvan slain (1)
    .mob Lord Geoffery Tulvan
step
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27867 >>Turn in The Crucible of Carnage: The Earl of Evisceration!
    .target Wodin the Troll-Servant
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27868 >>Accept The Crucible of Carnage: The Twilight Terror!
    .target Gurgthock
step
    .goto 241,52.23,56.23
    >>Kill |cRXP_ENEMY_Emberscar the Devourer|r
    .complete 27868,1 --Emberscar the Devourer slain (1)
    .mob Emberscar the Devourer
step
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27868 >>Turn in The Crucible of Carnage: The Twilight Terror!
    .target Wodin the Troll-Servant
step
    .goto 241,55.85,43.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naka Scaleblade|r
    .target Naka Scaleblade
    .home >>Set your Hearthstone to Naka Scaleblade's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,47.91,59.48,0
    .goto 241,47.91,59.48,40,0
    .goto 241,47.18,60.64,40,0
    .goto 241,47.66,61.35,40,0
    .goto 241,47.89,61.89,40,0
    .goto 241,49.55,63.06,40,0
    .goto 241,49.94,64.40,40,0
    >>Interact with |cRXP_FRIENDLY_Baited Black Drake|r
    .complete 28043,1 --Baited Black Drake
    .target Baited Black Drake
    .isOnQuest 28043
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.35,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .turnin 28043 >>Turn in How to Maim Your Dragon
    .target Zaela
    .isOnQuest 28043
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.35,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .accept 28123 >>Accept The Demon Chain
    .target Zaela
    .isQuestTurnedIn 28043 --any of: How to Maim Your Dragon
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,57.93,33.50
    >>Click the |cRXP_PICK_Eye of Twilight|r
    .accept 27951 >>Accept We All Must Sacrifice
    .isQuestTurnedIn 27947 --any of: A Vision of Twilight
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,56.44,29.93,0
    .goto 241,56.44,29.93,40,0
    .goto 241,60.34,31.07,40,0
    >>Kill |cRXP_ENEMY_Obsidian Stoneslave|r and loot |cRXP_LOOT_Black Diamond Heart|r
    .complete 27945,1 --Black Diamond Heart (1)
    .mob Obsidian Stoneslave
    .isOnQuest 27945
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,55.19,28.21,0
    .goto 241,55.19,28.21,40,0
    .goto 241,52.72,28.17,40,0
    >>Kill |cRXP_ENEMY_Shaman of the Blacks|r
    .complete 27951,1 --Shaman of the Black slain (10)
    .mob Shaman of the Black
    .isOnQuest 27951
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,57.93,33.50
    >>Click the |cRXP_PICK_Eye of Twilight|r
    .turnin 27951 >>Turn in We All Must Sacrifice
    .isOnQuest 27951
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,57.93,33.50
    >>Click the |cRXP_PICK_Eye of Twilight|r
    .accept 27954 >>Accept The Eyes Have It
    .isQuestTurnedIn 27951 --any of: We All Must Sacrifice
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.30,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27954 >>Turn in The Eyes Have It
    .target Garona Halforcen
    .isOnQuest 27954
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.30,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .accept 27955 >>Accept Eye Spy
    .target Garona Halforcen
    .isQuestTurnedIn 27954 --any of: The Eyes Have It
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.20,42.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mallia|r
    .turnin 27945 >>Turn in Paint it Black
    .target Mallia
    .isOnQuest 27945
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.20,42.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mallia|r
    .accept 27375 >>Accept The Weeping Wound
    .target Mallia
    .isQuestTurnedIn 27945 --any of: Paint it Black
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.29,42.77
    >>Peer into the Eye of Twilight for Garona.
    .complete 27955,1 --Eye of Twilight
    .target Eye of Twilight
    .isOnQuest 27955
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,53.30,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27955 >>Turn in Eye Spy
    .target Garona Halforcen
    .isOnQuest 27955
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,49.09,28.22
    >>Pick up |cRXP_PICK_The Demon Chain|r from the ground
    .complete 28123,1 --The Demon Chain (1)
    .isOnQuest 28123
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.35,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .turnin 28123 >>Turn in The Demon Chain
    .target Zaela
    .isOnQuest 28123
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,54.35,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .accept 28133 >>Accept Fury Unbound
    .target Zaela
    .isQuestTurnedIn 28123 --any of: The Demon Chain
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 27375 >>Turn in The Weeping Wound
    .target Earthcaller Torunscar
    .isOnQuest 27375
step
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .accept 27299 >>Accept Torn Ground
    .target Earthcaller Torunscar
step
    #loop
    .goto 241,45.68,11.27,0
    .goto 241,45.68,11.27,40,0
    .goto 241,42.18,12.93,40,0
    >>Kill |cRXP_ENEMY_Tentacle of Iso'raths|r
    .complete 27299,1 --Tentacle of Iso'rath slain (3)
    .mob Tentacle of Iso'rath
step
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 27299 >>Turn in Torn Ground
    .accept 27300 >>Accept Pushing Back
    .target Earthcaller Torunscar
step
    .goto 241,43.99,11.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .accept 27301 >>Accept Unbroken
    .target Earthmender Duarn
step
    .goto 241,44.41,11.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27302 >>Accept Simple Solutions
    .target Initiate Goldmine
step
    #completewith Along147
    >>As you go: Kill |cRXP_ENEMY_Twilight Captivator|r and loot |cRXP_LOOT_Pyreburn Oil|r. It can also be picked up from |cRXP_PICK_Barrel of Pyreburn Oil|r on the ground. Kill |cRXP_ENEMY_Twilight Captivators|r, |cRXP_ENEMY_Omak'Tuls|r and |cRXP_ENEMY_Twilight Bonebreakers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27302,1 --Pyreburn Oil (1)
    .complete 27300,1 --Twilight Captivator (8)
    .mob Twilight Captivator
    .mob Omak'Tul
    .mob Twilight Bonebreaker
step
    #label Along147
    .goto 241,44.21,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27301 >>Turn in Unbroken
    .accept 27303 >>Accept Mercy for the Bound
    .target Earthcaller Yevaa
step
    #loop
    .goto 241,43.98,15.32,0
    .goto 241,43.98,15.32,40,0
    .goto 241,42.06,15.58,40,0
    .goto 241,40.44,18.45,40,0
    >>Kill |cRXP_ENEMY_Bound Fleshburners|r. Loot them for |cRXP_LOOT_Fleshburner Heart|r
    >>Kill |cRXP_ENEMY_Twilight Captivator|r and loot |cRXP_LOOT_Pyreburn Oil|r. It can also be picked up from |cRXP_PICK_Barrel of Pyreburn Oil|r on the ground
    >>Kill |cRXP_ENEMY_Twilight Captivators|r, |cRXP_ENEMY_Omak'Tuls|r and |cRXP_ENEMY_Twilight Bonebreakers|r
    .complete 27303,1 --Fleshburner Heart (5)
    .complete 27302,1 --Pyreburn Oil (1)
    .complete 27300,1 --Twilight Captivator (8)
    .mob Bound Fleshburner
    .mob Twilight Captivator
    .mob Omak'Tul
    .mob Twilight Bonebreaker
step
    .goto 241,43.82,11.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27303 >>Turn in Mercy for the Bound
    .target Earthcaller Yevaa
step
    .goto 241,44.41,11.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27302 >>Turn in Simple Solutions
    .target Initiate Goldmine
step
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 27300 >>Turn in Pushing Back
    .accept 27376 >>Accept The Maw of Iso'rath
    .target Earthcaller Torunscar
step
    .goto 241,44.52,10.64
    >>Kill |cRXP_ENEMY_Earthen Ring Gryphons|r
    .complete 27376,1 --Earthen Ring Gryphon slain (8)
    .mob Earthen Ring Gryphon
step
    .goto 241,48.40,14.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27376 >>Turn in The Maw of Iso'rath
    .accept 27377 >>Accept Devoured
    .target Earthcaller Yevaa
step
    .goto 241,48.27,14.49
    >>Defend yourself and Earthcaller Yevaa from Iso'rath's bodily defenses.
    .complete 27377,1 --Iso'rath Nightmare Credit
    .target Iso'rath Nightmare Credit
step
    #completewith next
    .zone 276 >>Travel to The Maelstrom
    .zoneskip 276
step
    .goto 276,33.37,50.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 27203 >>Turn in The Maelstrom
    .target Thrall
    .isOnQuest 27203
step
    .goto 276,33.37,50.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 27123 >>Accept Deepholm, Realm of Earth
    .target Thrall
    .isQuestTurnedIn 27203 --any of: The Maelstrom
    .xp <81,1
step
    .goto 276,33.35,50.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 27377 >>Turn in Devoured
    .accept 27378 >>Accept The Worldbreaker
    .target Thrall
step
    .goto 276,33.35,50.39
    >>Defeat Deathwing, the Aspect of Death.
    .complete 27378,1 --Thrall
    .target Thrall
step
    #completewith next
    .zone 241 >>Leave The Maelstrom for Twilight Highlands
    .zoneskip 241
step
    .goto 241,48.70,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27378 >>Turn in The Worldbreaker
    .accept 27379 >>Accept The Terrors of Iso'rath
    .target Earthcaller Yevaa
step
    .goto 241,49.62,15.69
    >>Rescue Hargoth Dimblaze, Earthmender Duarn, Stormcaller Jalara, and Stormcaller Mylra.
    .complete 27379,2 --Tentacle of Iso'rath
    .target Tentacle of Iso'rath
step
    .goto 241,49.08,13.10
    >>Rescue Hargoth Dimblaze, Earthmender Duarn, Stormcaller Jalara, and Stormcaller Mylra.
    .complete 27379,3 --Tentacle of Iso'rath
    .target Tentacle of Iso'rath
step
    .goto 241,47.08,13.29
    >>Rescue Hargoth Dimblaze, Earthmender Duarn, Stormcaller Jalara, and Stormcaller Mylra.
    .complete 27379,1 --Tentacle of Iso'rath
    .target Tentacle of Iso'rath
step
    .goto 241,47.34,15.84
    >>Rescue Hargoth Dimblaze, Earthmender Duarn, Stormcaller Jalara, and Stormcaller Mylra.
    .complete 27379,4 --Tentacle of Iso'rath
    .target Tentacle of Iso'rath
step
    .goto 241,48.70,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27379 >>Turn in The Terrors of Iso'rath
    .target Earthcaller Yevaa
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.58,37.47
    >>Kill |cRXP_ENEMY_Torth|r
    .complete 28133,1 --Torth slain (1)
    .mob Torth
    .isOnQuest 28133
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.42,38.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaela|r
    .turnin 28133 >>Turn in Fury Unbound
    .target Zaela
    .isOnQuest 28133
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.39,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buunu|r
    .accept 28149 >>Accept Whispers in the Wind
    .target Buunu
    .isQuestTurnedIn 28133 --any of: Fury Unbound
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.73,37.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rotgrum|r
    .accept 28147 >>Accept Purple is Your Color
    .target Rotgrum
    .isQuestTurnedIn 28133 --any of: Fury Unbound
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,39.39,47.34
    >>Open the |cRXP_PICK_Windspeaker Pylon|r. Loot it for |cRXP_LOOT_Windspeaker Charm|r
    .complete 28149,1 --Windspeaker Charm (1)
    .isOnQuest 28149
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,39.24,47.36,0
    .goto 241,39.24,47.36,40,0
    .goto 241,41.18,46.30,40,0
    >>Kill |cRXP_ENEMY_Storm Vortexes|r. Loot them for |cRXP_LOOT_Breath of the Vortex|r
    .complete 28149,2 --Breath of the Vortex (5)
    .mob Storm Vortex
    .isOnQuest 28149
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,39.56,47.64
    >>Kill |cRXP_ENEMY_Twilight Windwarpers|r. Loot them for |cRXP_LOOT_Twilight Garment Scrap|r
    .complete 28147,1 --Twilight Garment Scrap (8)
    .mob Twilight Windwarper
    .isOnQuest 28147
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.73,37.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rotgrum|r
    .turnin 28147 >>Turn in Purple is Your Color
    .target Rotgrum
    .isOnQuest 28147
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.73,37.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rotgrum|r
    .accept 28151 >>Accept Dressed to Kill
    .target Rotgrum
    .isQuestTurnedIn 28147 --any of: Purple is Your Color
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.39,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buunu|r
    .turnin 28149 >>Turn in Whispers in the Wind
    .target Buunu
    .isOnQuest 28149
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.39,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buunu|r
    .accept 28166 >>Accept Thog's Nightlight
    .target Buunu
    .isQuestTurnedIn 28149 --any of: Whispers in the Wind
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,40.62,32.91
    >>Pick up |cRXP_PICK_The Light of Souls|r from the ground
    .complete 28166,1 --The Light of Souls (1)
    .isOnQuest 28166
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,40.73,30.62,0
    .goto 241,40.73,30.62,40,0
    .goto 241,40.33,26.75,40,0
    >>Kill |cRXP_ENEMY_Glopgut Hurlers|r, |cRXP_ENEMY_Thogs|r and |cRXP_ENEMY_Brogg Glopguts|r
    .complete 28151,1 --Glopgut Hurler (8)
    .mob Glopgut Hurler
    .mob Thog
    .mob Brogg Glopgut
    .isOnQuest 28151
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.73,37.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rotgrum|r
    .turnin 28151 >>Turn in Dressed to Kill
    .target Rotgrum
    .isOnQuest 28151
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.39,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buunu|r
    .turnin 28166 >>Turn in Thog's Nightlight
    .target Buunu
    .isOnQuest 28166
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.39,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buunu|r
    .accept 28170 >>Accept Night Terrors
    .target Buunu
    .isQuestTurnedIn 28166 --any of: Thog's Nightlight
    .xp <84,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,34.18,35.74
    >>Kill |cRXP_ENEMY_Shrine 1 Cleansed|r
    .complete 28170,1 --Shrine 1 Cleansed slain (1)
    .mob Shrine 1 Cleansed
    .isOnQuest 28170
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,33.59,37.76
    >>Kill |cRXP_ENEMY_Shrine 2 Cleansed|r
    .complete 28170,2 --Shrine 2 Cleansed slain (1)
    .mob Shrine 2 Cleansed
    .isOnQuest 28170
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,34.33,37.75
    >>Kill |cRXP_ENEMY_Shrine 3 Cleansed|r
    .complete 28170,3 --Shrine 3 Cleansed slain (1)
    .mob Shrine 3 Cleansed
    .isOnQuest 28170
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.39,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buunu|r
    .turnin 28170 >>Turn in Night Terrors
    .target Buunu
    .isOnQuest 28170
step
    +|cRXP_WARN_That is all of Twilight Highlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Deepholm|r: Deepholm, Realm of Earth
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Warchief Will be Pleased << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_The rest of Twilight Highlands is planned from level 88.|r Load its guide for level 88 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 85 - 89 Twilight Highlands
#subweight -85
#name 88-89 Twilight Highlands: around Calen

step
    .goto 241,48.70,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .accept 27380 >>Accept Nightmare
    .target Earthcaller Yevaa
    .isQuestTurnedIn 27379 --any of: The Terrors of Iso'rath
step
    .goto 241,48.34,14.46
    >>Kill |cRXP_ENEMY_Brain of Iso'rath|r
    .complete 27380,1 --Brain of Iso'rath slain (1)
    .mob Brain of Iso'rath
    .isOnQuest 27380
step
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 27380 >>Turn in Nightmare
    .target Earthcaller Torunscar
    .isOnQuest 27380
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,44.08,10.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golluck Rockfist|r
    .accept 27486 >>Accept Warm Welcome
    .target Golluck Rockfist
    .isQuestTurnedIn 27380 --any of: Nightmare
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.60,21.01
    >>Meet with Lirastrasza at Vermillion Redoubt.
    .complete 27486,1 --Lirastrasza
    .target Lirastrasza
    .isOnQuest 27486
step << Rogue
    .goto 241,28.97,25.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corastrasza|r
    .accept 29934 >>Accept To Ravenholdt
    .target Corastrasza
    .isQuestTurnedIn 29802 --any of: A Hidden Message
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 27486 >>Turn in Warm Welcome
    .target Calen
    .isOnQuest 27486
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 27504 >>Accept Even Dragons Bleed
    .target Calen
    .isQuestTurnedIn 27485,27486 --any of: Warm Welcome, Warm Welcome
step << Rogue
    .goto 241,29.54,26.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mostrasz|r
    .complete 29934,1 --Mostrasz
    .target Mostrasz
    .isOnQuest 29934
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .turnin 27504 >>Turn in Even Dragons Bleed
    .target Velastrasza
    .isOnQuest 27504
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .accept 27505 >>Accept Draconic Mending
    .target Velastrasza
    .isQuestTurnedIn 27504 --any of: Even Dragons Bleed
step
    .goto 241,29.79,31.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
    .accept 27506 >>Accept Life from Death
    .target Baleflame
    .isQuestTurnedIn 27504 --any of: Even Dragons Bleed
step
    #loop
    .goto 241,29.77,33.18,0
    .goto 241,29.77,33.18,40,0
    .goto 241,28.23,30.61,40,0
    >>Kill |cRXP_ENEMY_Vermillion Menders|r
    .complete 27505,1 --Vermillion Mender slain (5)
    .mob Vermillion Mender
    .isOnQuest 27505
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .turnin 27505 >>Turn in Draconic Mending while you are here
    .isQuestComplete 27505
    .target Velastrasza
step
    #loop
    .goto 241,27.96,32.00,0
    .goto 241,27.96,32.00,40,0
    .goto 241,29.66,32.73,40,0
    >>Kill |cRXP_ENEMY_Vermillion Menders|r and |cRXP_ENEMY_Twilight Wyrmkillers|r
    .complete 27506,1 --Vermillion Mender (8)
    .mob Vermillion Mender
    .mob Twilight Wyrmkiller
    .isOnQuest 27506
step
    .goto 241,29.79,31.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
    .turnin 27506 >>Turn in Life from Death
    .target Baleflame
    .isOnQuest 27506
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .turnin 27505 >>Turn in Draconic Mending
    .target Velastrasza
    .isOnQuest 27505
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .accept 27564 >>Accept In Defense of the Redoubt
    .target Velastrasza
    .isQuestTurnedIn 27505 --Draconic Mending
    .isQuestTurnedIn 27506 --Life from Death
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 27564 >>Turn in In Defense of the Redoubt
    .target Calen
    .isOnQuest 27564
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 27507 >>Accept Encroaching Twilight
    .accept 27509 >>Accept Breach in the Defenses
    .target Calen
    .isQuestTurnedIn 27564 --any of: In Defense of the Redoubt
step
    .goto 241,29.30,25.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .accept 27508 >>Accept Far from the Nest
    .target Lirastrasza
    .isQuestTurnedIn 27564 --any of: In Defense of the Redoubt
step
    .goto 241,17.91,16.90
    >>Click the |cRXP_PICK_Twilight Portal|r
    .complete 27509,1 --Twilight Portal
    .isOnQuest 27509
step
    #loop
    .goto 241,19.73,15.92,0
    .goto 241,19.73,15.92,40,0
    .goto 241,21.74,17.61,40,0
    .goto 241,24.06,17.88,40,0
    >>Kill |cRXP_ENEMY_Vermillion Eggs|r. Loot them for |cRXP_LOOT_Vermillion Egg|r
    .complete 27508,1 --Vermillion Egg (6)
    .mob Vermillion Egg
    .isOnQuest 27508
step
    #loop
    .goto 241,20.81,15.69,0
    .goto 241,20.81,15.69,40,0
    .goto 241,18.95,17.15,40,0
    >>Kill |cRXP_ENEMY_Twilight Flamequenchers|r and |cRXP_ENEMY_Twilight Abductors|r
    .complete 27507,1 --Twilight Flamequencher (8)
    .mob Twilight Flamequencher
    .mob Twilight Abductor
    .isOnQuest 27507
step
    .goto 241,29.30,25.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 27508 >>Turn in Far from the Nest
    .target Lirastrasza
    .isOnQuest 27508
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 27507 >>Turn in Encroaching Twilight
    .target Calen
    .isOnQuest 27507
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 27509 >>Turn in Breach in the Defenses
    .target Calen
    .isOnQuest 27509
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 27576 >>Accept Patchwork Command
    .target Calen
    .isQuestTurnedIn 27507 --Encroaching Twilight
    .isQuestTurnedIn 27508 --Far from the Nest
    .isQuestTurnedIn 27509 --Breach in the Defenses
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.32,36.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .turnin 27576 >>Turn in Patchwork Command
    .target Patch
    .isOnQuest 27576
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.32,36.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .accept 28091 >>Accept Easy Pickings
    .accept 28090 >>Accept Precious Goods
    .target Patch
    .isQuestTurnedIn 27576 --any of: Patchwork Command
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,25.49,37.80
    >>Kill |cRXP_ENEMY_Twilight Spearwarders|r
    .complete 28091,1 --Twilight Spearwarder (8)
    .mob Twilight Spearwarder
    .isOnQuest 28091
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.32,36.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .turnin 28091 >>Turn in Easy Pickings while you are here
    .isQuestComplete 28091
    .target Patch
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,25.49,37.80
    >>Kill |cRXP_ENEMY_Twilight Spearwarder|r and loot |cRXP_LOOT_Twilight Caravan Cargo Key|r
    .complete 28090,1 --Twilight Caravan Cargo Key (1)
    .mob Twilight Spearwarder
    .isOnQuest 28090
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,25.54,37.94
    >>Open the |cRXP_PICK_Twilight Caravan Chest|r. Loot it for |cRXP_LOOT_Twilight's Hammer Gatestone|r
    .complete 28090,2 --Twilight's Hammer Gatestone (1)
    .isOnQuest 28090
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.32,36.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .turnin 28090 >>Turn in Precious Goods while you are here
    .isQuestComplete 28090
    .target Patch
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.32,36.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .turnin 28091 >>Turn in Easy Pickings
    .target Patch
    .isOnQuest 28091
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.32,36.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .turnin 28090 >>Turn in Precious Goods
    .target Patch
    .isOnQuest 28090
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.32,36.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r
    .accept 28097 >>Accept The Gates of Grim Batol
    .target Patch
    .isQuestTurnedIn 28090 --Precious Goods
    .isQuestTurnedIn 28091 --Easy Pickings
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.63,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Krogg|r
    .turnin 28097 >>Turn in The Gates of Grim Batol
    .target Warlord Krogg
    .isOnQuest 28097
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.63,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Krogg|r
    .accept 28092 >>Accept If The Key Fits
    .target Warlord Krogg
    .isQuestTurnedIn 28097 --any of: The Gates of Grim Batol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.58,41.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28094 >>Accept Paving the Way
    .unitscan Patch
    .isQuestTurnedIn 28097 --any of: The Gates of Grim Batol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,30.06,45.03,0
    .goto 241,30.06,45.03,40,0
    .goto 241,30.78,47.50,40,0
    >>Kill |cRXP_ENEMY_Twilight Guardsmans|r, |cRXP_ENEMY_Twilight Stalkers|r, |cRXP_ENEMY_Twilight Earthbinders|r and |cRXP_ENEMY_Twilight Shadowmenders|r
    .complete 28094,1 --Twilight Guardsman (8)
    .mob Twilight Guardsman
    .mob Twilight Stalker
    .mob Twilight Earthbinder
    .mob Twilight Shadowmender
    .isOnQuest 28094
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.38,51.86
    >>Kill |cRXP_ENEMY_Dragonmaw Gate Controllers|r
    .complete 28092,1 --Dragonmaw Gate Controller slain (8)
    .mob Dragonmaw Gate Controller
    .isOnQuest 28092
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.58,41.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28094 >>Turn in Paving the Way
    .unitscan Patch
    .isOnQuest 28094
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.58,41.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28092 >>Turn in If The Key Fits
    .unitscan Patch
    .isOnQuest 28092
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,29.58,41.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patch|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28093 >>Accept Pressing Forward
    .unitscan Patch
    .isQuestTurnedIn 28092 --any of: If The Key Fits
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,22.79,56.42
    >>Bring the Gob Squad past the northern Dragonmaw Gate to the entrance of Grim Batol.
    .complete 28093,1 --Grim Batol Credit
    .target Grim Batol Credit
    .isOnQuest 28093
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,22.12,56.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 28093 >>Turn in Pressing Forward
    .target Calen
    .isOnQuest 28093
step
    .goto 241,21.77,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .accept 28712 >>Accept Enter the Dragon Queen
    .target Alexstrasza the Life-Binder
    .isQuestTurnedIn 28093,28109 --any of: Pressing Forward, Pressing Forward
step
    .goto 241,14.86,16.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28712 >>Turn in Enter the Dragon Queen
    .target Lirastrasza
    .isOnQuest 28712
step
    .goto 241,14.14,15.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 28758 >>Accept Battle of Life and Death
    .target Calen
    .isQuestTurnedIn 28712 --any of: Enter the Dragon Queen
step
    #loop
    .goto 241,20.92,46.91,0
    .goto 241,20.92,46.91,40,0
    .goto 241,19.25,51.68,40,0
    >>Kill |cRXP_ENEMY_Twilight Shadowdrakes|r
    .complete 28758,1 --Twilight Shadowdrake slain (8)
    .mob Twilight Shadowdrake
    .isOnQuest 28758
step
    .goto 241,22.12,56.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 28758 >>Turn in Battle of Life and Death
    .target Calen
    .isOnQuest 28758
step
    .goto 241,22.12,56.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 28171 >>Accept And the Sky Streaked Red
    .target Calen
    .isQuestTurnedIn 28758 --any of: Battle of Life and Death
step
    .goto 241,22.12,56.57
    >>Kill |cRXP_ENEMY_Calen|r
    .complete 28171,1 --Calen slain (1)
    .mob Calen
    .isOnQuest 28171
step
    .goto 241,43.23,57.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nicole Gillet|r
    .target Nicole Gillet
    .home >>Set your Hearthstone to Nicole Gillet's inn
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28171 >>Turn in And the Sky Streaked Red
    .target Lirastrasza
    .isOnQuest 28171
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .accept 28173 >>Accept Blackout
    .accept 28191 >>Accept A Fitting End
    .target Lirastrasza
    .isQuestTurnedIn 28171 --any of: And the Sky Streaked Red
step
    .goto 241,59.02,69.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .accept 28175 >>Accept Shining Through the Dark
    .target Velastrasza
    .isQuestTurnedIn 28171 --any of: And the Sky Streaked Red
step
    .goto 241,64.07,78.04
    >>Use Alexstrasza's Tear within the hollow beneath the Obsidian Tree.
    .complete 28175,1 --Obsidian Flower Bunny
    .target Obsidian Flower Bunny
    .isOnQuest 28175
step
    #loop
    .goto 241,65.14,79.54,0
    .goto 241,65.14,79.54,40,0
    .goto 241,66.36,74.90,40,0
    .goto 241,65.13,68.64,40,0
    .goto 241,64.41,73.79,40,0
    >>Kill |cRXP_ENEMY_Obsidian Pyrewings|r
    .complete 28173,1 --Obsidian Pyrewing slain (8)
    .mob Obsidian Pyrewing
    .isOnQuest 28173
step
    #loop
    .goto 241,64.38,71.33,0
    .goto 241,64.38,71.33,40,0
    .goto 241,62.87,70.17,40,0
    .goto 241,63.07,76.71,40,0
    >>Kill |cRXP_ENEMY_Obsidian Viletongues|r and |cRXP_ENEMY_Obsidian Charscales|r
    .complete 28191,1 --Obsidian Viletongue (8)
    .mob Obsidian Viletongue
    .mob Obsidian Charscale
    .isOnQuest 28191
step
    .goto 241,59.02,69.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .turnin 28175 >>Turn in Shining Through the Dark
    .target Velastrasza
    .isOnQuest 28175
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28173 >>Turn in Blackout
    .target Lirastrasza
    .isOnQuest 28173
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28191 >>Turn in A Fitting End
    .target Lirastrasza
    .isOnQuest 28191
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .accept 28176 >>Accept Following the Young Home
    .target Lirastrasza
    .isQuestTurnedIn 28173 --Blackout
    .isQuestTurnedIn 28175 --Shining Through the Dark
    .isQuestTurnedIn 28191 --A Fitting End
step
    .goto 241,60.94,81.97
    >>Use the Mother's Flame on Obsidian Eggs to release whelps. Follow those hatchlings to the lair of their mother.
    .complete 28176,1 --Obsidian Hatchling Controller
    .target Obsidian Hatchling Controller
    .isOnQuest 28176
step
    .goto 241,49.82,85.49
    >>Use the Mother's Flame on Obsidian Eggs to release whelps. Follow those hatchlings to the lair of their mother.
    .complete 28176,2 --Obsidian Lair Pathing Credit
    .target Obsidian Lair Pathing Credit
    .isOnQuest 28176
step
    .goto 241,44.91,90.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
    .turnin 28176 >>Turn in Following the Young Home
    .target Baleflame
    .isOnQuest 28176
step
    .goto 241,44.91,90.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
    .accept 28247 >>Accept Last of Her Kind
    .target Baleflame
    .isQuestTurnedIn 28176 --any of: Following the Young Home
step
    .goto 241,45.15,91.73
    >>Kill |cRXP_ENEMY_Obsidia|r
    .complete 28247,1 --Obsidia slain (1)
    .mob Obsidia
    .isOnQuest 28247
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28247 >>Turn in Last of Her Kind
    .target Lirastrasza
    .isOnQuest 28247
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .accept 28249 >>Accept Crushblow
    .target Lirastrasza
    .isQuestTurnedIn 28247 --any of: Last of Her Kind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.27,75.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Zaela|r
    .turnin 28249 >>Turn in Crushblow
    .target Warlord Zaela
    .isOnQuest 28249
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.27,75.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Zaela|r
    .accept 27493 >>Accept Ogres & Ettins
    .target Warlord Zaela
    .isQuestTurnedIn 28249 --any of: Crushblow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.32,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Cozwynn|r
    .accept 27491 >>Accept Kor'kron Drop
    .accept 27497 >>Accept Call in the Artillery
    .target Lady Cozwynn
    .isQuestTurnedIn 28249 --any of: Crushblow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.75,76.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jon-Jon Jellyneck|r
    .complete 27491,1 --Jon-Jon Jellyneck
    .target Jon-Jon Jellyneck
    .isOnQuest 27491
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,43.24,72.75,0
    .goto 241,43.24,72.75,40,0
    .goto 241,41.04,69.44,40,0
    >>Kill |cRXP_ENEMY_Bloodeye Magelords|r, |cRXP_ENEMY_Twilight Ettins|r and |cRXP_ENEMY_Bloodeye Brutes|r
    .complete 27493,1 --Bloodeye Magelord (8)
    .mob Bloodeye Magelord
    .mob Twilight Ettin
    .mob Bloodeye Brute
    .isOnQuest 27493
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,41.03,64.17
    >>Use the Artillery Flare to target the Northern, Northeastern, Southwestern, and Southern buildings at the Twilight Gate.
    .complete 27497,2 --"Call in the Artillery" Northeastern Building Bunny
    .target "Call in the Artillery" Northeastern Building Bunny
    .isOnQuest 27497
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,39.21,62.05
    >>Use the Artillery Flare to target the Northern, Northeastern, Southwestern, and Southern buildings at the Twilight Gate.
    .complete 27497,1 --"Call in the Artillery" Northern Building Bunny
    .target "Call in the Artillery" Northern Building Bunny
    .isOnQuest 27497
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,39.17,64.50
    >>Get a Crushblow Wind Rider squad from Jon-Jon Jellyneck and then escort them to the drop off point in the Twilight Gate.
    .complete 27491,2 --"SI:7/Kor'kron Drop" Area Trigger Kill Credit
    .target "SI:7/Kor'kron Drop" Area Trigger Kill Credit
    .isOnQuest 27491
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,39.67,69.28
    >>Use the Artillery Flare to target the Northern, Northeastern, Southwestern, and Southern buildings at the Twilight Gate.
    .complete 27497,3 --"Call in the Artillery" Southwestern Building Bunny
    .target "Call in the Artillery" Southwestern Building Bunny
    .isOnQuest 27497
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,41.51,72.60
    >>Use the Artillery Flare to target the Northern, Northeastern, Southwestern, and Southern buildings at the Twilight Gate.
    .complete 27497,4 --"Call in the Artillery" Southern Building Bunny
    .target "Call in the Artillery" Southern Building Bunny
    .isOnQuest 27497
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.32,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Cozwynn|r
    .turnin 27491 >>Turn in Kor'kron Drop
    .target Lady Cozwynn
    .isOnQuest 27491
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.32,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Cozwynn|r
    .turnin 27497 >>Turn in Call in the Artillery
    .target Lady Cozwynn
    .isOnQuest 27497
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.27,75.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Zaela|r
    .turnin 27493 >>Turn in Ogres & Ettins
    .target Warlord Zaela
    .isOnQuest 27493
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.27,75.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Zaela|r
    .accept 27495 >>Accept Move the Mountain
    .target Warlord Zaela
    .isQuestTurnedIn 27491 --Kor'kron Drop
    .isQuestTurnedIn 27493 --Ogres & Ettins
    .isQuestTurnedIn 27497 --Call in the Artillery
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,38.06,66.20
    >>Click the |cRXP_PICK_Hidden Explosives|r
    .complete 27495,1 --Hidden Explosives
    .isOnQuest 27495
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.95,66.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27495 >>Turn in Move the Mountain
    .target ?
    .isOnQuest 27495
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.95,66.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27499 >>Accept Signal the Attack
    .target !
    .isQuestTurnedIn 27495 --any of: Move the Mountain
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,42.33,68.80
    >>Signal the Attack
    .complete 27499,1 --Signal the Attack
    .isOnQuest 27499
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,40.62,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27499 >>Turn in Signal the Attack
    .unitscan ?
    .isOnQuest 27499
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,40.62,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27501 >>Accept Four Heads are Better than None
    .unitscan !
    .isQuestTurnedIn 27499,27590 --any of: Signal the Attack, Signal the Attack
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,38.71,70.28
    >>Kill |cRXP_ENEMY_Beeble'phods|r. Loot them for |cRXP_LOOT_Beeble's Head|r
    .complete 27501,3 --Beeble's Head (4)
    .mob Beeble'phod
    .isOnQuest 27501
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,38.71,70.28
    >>Kill |cRXP_ENEMY_Beeble'phods|r. Loot them for |cRXP_LOOT_Phod's Head|r
    .complete 27501,2 --Phod's Head (4)
    .mob Beeble'phod
    .isOnQuest 27501
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.64,71.32
    >>Kill |cRXP_ENEMY_Za'broxes|r. Loot them for |cRXP_LOOT_Brox's Head|r
    .complete 27501,4 --Brox's Head (4)
    .mob Za'brox
    .isOnQuest 27501
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.64,71.32
    >>Kill |cRXP_ENEMY_Za'broxes|r. Loot them for |cRXP_LOOT_Za's Head|r
    .complete 27501,1 --Za's Head (4)
    .mob Za'brox
    .isOnQuest 27501
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.32,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Cozwynn|r
    .turnin 27501 >>Turn in Four Heads are Better than None
    .target Lady Cozwynn
    .isOnQuest 27501
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.32,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Cozwynn|r
    .accept 27503 >>Accept Up to the Citadel
    .target Lady Cozwynn
    .isQuestTurnedIn 27501,27609 --any of: Four Heads are Better than None, Four Heads are Better than None
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,38.93,64.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Squad Commander|r
    .complete 27503,1 --Kor'kron Squad Commander
    .target Kor'kron Squad Commander
    .isOnQuest 27503
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.65,65.93
    >>Speak with the Kor'kron Squad Commander and then escort the Kor'kron squad.
    .complete 27503,2 --"Up to the Citadel" Kill Credit
    .target "Up to the Citadel" Kill Credit
    .isOnQuest 27503
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.63,65.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27503 >>Turn in Up to the Citadel
    .target ?
    .isOnQuest 27503
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.63,65.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27638 >>Accept Just You and Garona
    .target !
    .isQuestTurnedIn 27503 --any of: Up to the Citadel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27638 >>Turn in Just You and Garona
    .target Garona Halforcen
    .isOnQuest 27638
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .accept 27653 >>Accept Dark Assassins
    .accept 27655 >>Accept Bring the Hammer Down
    .accept 27658 >>Accept Help from the Earthcaller
    .target Garona Halforcen
    .isQuestTurnedIn 27638,27639 --any of: Just You and Garona, Just You and Garona
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.48,88.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27658 >>Turn in Help from the Earthcaller
    .target Earthcaller Yevaa
    .isOnQuest 27658
step
    .goto 241,37.48,88.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .accept 27659 >>Accept Portal Overload
    .accept 27660 >>Accept Spirit of the Loch
    .target Earthcaller Yevaa
    .isQuestTurnedIn 27657,27658 --any of: Help from the Earthcaller, Help from the Earthcaller
step
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27662 >>Accept Unbinding
    .target Initiate Goldmine
    .isQuestTurnedIn 27657,27658 --any of: Help from the Earthcaller, Help from the Earthcaller
step
    .goto 241,38.10,80.26
    >>Kill |cRXP_ENEMY_Apexar|r and |cRXP_ENEMY_Debilitated Apexar|r
    .complete 27659,1 --Apexar (1)
    .mob Apexar
    .mob Debilitated Apexar
    .isOnQuest 27659
step
    .goto 241,44.48,81.50
    >>Kill |cRXP_ENEMY_Aetharon|r and |cRXP_ENEMY_Debilitated Aetharon|r
    .complete 27659,2 --Aetharon (1)
    .mob Aetharon
    .mob Debilitated Aetharon
    .isOnQuest 27659
step
    .goto 241,32.91,62.18
    >>Kill |cRXP_ENEMY_Edemantus|r and |cRXP_ENEMY_Debilitated Edemantus|r
    .complete 27659,3 --Edemantus (1)
    .mob Edemantus
    .mob Debilitated Edemantus
    .isOnQuest 27659
step
    .goto 241,27.64,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Countess Verrall|r
    .turnin 27660 >>Turn in Spirit of the Loch
    .target Countess Verrall
    .isOnQuest 27660
step
    .goto 241,27.64,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Countess Verrall|r
    .accept 27661 >>Accept Fire the Cannon
    .target Countess Verrall
    .isQuestTurnedIn 27660 --any of: Spirit of the Loch
step
    .goto 241,40.87,79.08
    >>Kill |cRXP_ENEMY_Lord Cannon|r
    .complete 27661,1 --Lord Cannon slain (1)
    .mob Lord Cannon
    .isOnQuest 27661
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,32.98,66.85,0
    .goto 241,32.98,66.85,40,0
    .goto 241,30.85,69.07,40,0
    .goto 241,35.45,63.28,40,0
    >>Kill |cRXP_ENEMY_Twilight Vindicators|r, |cRXP_ENEMY_Corrupted Elementalists|r and |cRXP_ENEMY_Citadel Veterans|r
    .complete 27655,1 --Twilight Vindicator (8)
    .mob Twilight Vindicator
    .mob Corrupted Elementalist
    .mob Citadel Veteran
    .isOnQuest 27655
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 241,31.55,68.30,0
    .goto 241,31.55,68.30,40,0
    .goto 241,34.91,67.32,40,0
    >>Kill |cRXP_ENEMY_Dark Assassins|r. Loot them for |cRXP_LOOT_Dark Assassin's Pendant|r
    .complete 27653,1 --Dark Assassin's Pendant (5)
    .mob Dark Assassin
    .isOnQuest 27653
step
    .goto 241,27.64,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Countess Verrall|r
    .turnin 27661 >>Turn in Fire the Cannon
    .target Countess Verrall
    .isOnQuest 27661
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,27.64,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Countess Verrall|r
    .accept 27798 >>Accept Water of Life
    .target Countess Verrall
    .isQuestTurnedIn 27661 --any of: Fire the Cannon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,35.09,61.10
    >>Use the Water of Life to extract information from the Corpse of Forgemaster Finlay.
    .complete 27798,1 --Corpse of Forgemaster Finlay
    .target Corpse of Forgemaster Finlay
    .isOnQuest 27798
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27653 >>Turn in Dark Assassins
    .target Garona Halforcen
    .isOnQuest 27653
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27655 >>Turn in Bring the Hammer Down
    .target Garona Halforcen
    .isOnQuest 27655
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27798 >>Turn in Water of Life
    .target Garona Halforcen
    .isOnQuest 27798
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .accept 27689 >>Accept Distract Them for Me
    .accept 27696 >>Accept The Elementium Axe
    .target Garona Halforcen
    .isQuestTurnedIn 27653 --Dark Assassins
    .isQuestTurnedIn 27655 --Bring the Hammer Down
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.54,70.60
    >>Kill |cRXP_ENEMY_Master Klem|r
    .complete 27689,2 --Master Klem slain (1)
    .mob Master Klem
    .isOnQuest 27689
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,40.16,84.01
    >>Kill |cRXP_ENEMY_Blindeye the Guardian|r and loot |cRXP_LOOT_The Elementium Axe|r
    .complete 27696,1 --The Elementium Axe (1)
    .mob Blindeye the Guardian
    .isOnQuest 27696
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,43.35,88.50
    >>Kill |cRXP_ENEMY_Dame Alys Finnsson|r
    .complete 27689,1 --Dame Alys Finnsson slain (1)
    .mob Dame Alys Finnsson
    .isOnQuest 27689
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,42.25,83.73
    >>Kill |cRXP_ENEMY_Mia the Rose|r
    .complete 27689,3 --Mia the Rose slain (1)
    .mob Mia the Rose
    .isOnQuest 27689
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27689 >>Turn in Distract Them for Me
    .target Garona Halforcen
    .isOnQuest 27689
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27696 >>Turn in The Elementium Axe
    .target Garona Halforcen
    .isOnQuest 27696
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .accept 27701 >>Accept Dragon, Unchained
    .target Garona Halforcen
    .isQuestTurnedIn 27689 --Distract Them for Me
    .isQuestTurnedIn 27696 --The Elementium Axe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,32.25,68.77
    >>Use the Elementium Axe to break the chains enslaving Lirastrasza.
    .complete 27701,1 --Lirastrasza
    .target Lirastrasza
    .isOnQuest 27701
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27701 >>Turn in Dragon, Unchained
    .target Garona Halforcen
    .isOnQuest 27701
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .accept 27703 >>Accept Coup de Grace
    .target Garona Halforcen
    .isQuestTurnedIn 27701 --any of: Dragon, Unchained
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,32.61,72.20
    >>Kill |cRXP_ENEMY_Twilight Skyterrors|r
    .complete 27703,1 --Twilight Skyterror slain (5)
    .mob Twilight Skyterror
    .isOnQuest 27703
step
    #loop
    .goto 241,37.40,73.86,0
    .goto 241,37.40,73.86,40,0
    .goto 241,38.56,78.38,40,0
    >>Kill |cRXP_ENEMY_Freed Tempests|r, |cRXP_ENEMY_Freed Infernos|r, |cRXP_ENEMY_Freed Waterspouts|r and |cRXP_ENEMY_Enslaved Tempests|r
    .complete 27662,1 --Freed Tempest (8)
    .mob Freed Tempest
    .mob Freed Inferno
    .mob Freed Waterspout
    .mob Enslaved Tempest
    .isOnQuest 27662
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27703 >>Turn in Coup de Grace
    .target Garona Halforcen
    .isOnQuest 27703
step
    .goto 241,37.48,88.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27659 >>Turn in Portal Overload
    .target Earthcaller Yevaa
    .isOnQuest 27659
step
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27662 >>Turn in Unbinding
    .target Initiate Goldmine
    .isOnQuest 27662
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 28885 >>Accept Mr. Goldmine's Wild Ride
    .target Initiate Goldmine
    .isQuestTurnedIn 27659 --Portal Overload
    .isQuestTurnedIn 27703 --Coup de Grace
    .isQuestTurnedIn 27798 --Water of Life
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .complete 28885,1 --Initiate Goldmine
    .target Initiate Goldmine
    .isOnQuest 28885
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,38.35,93.88
    >>Ride the mine cart with Initiate Goldmine to the end of the line.
    .complete 28885,2 --"Mr. Goldmine's Wild Ride" Kill Credit
    .target "Mr. Goldmine's Wild Ride" Kill Credit
    .isOnQuest 28885
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 28885 >>Turn in Mr. Goldmine's Wild Ride
    .target Initiate Goldmine
    .isOnQuest 28885
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27742 >>Accept A Little on the Side
    .accept 27743 >>Accept While We're Here
    .target Initiate Goldmine
    .isQuestTurnedIn 27720,28885 --any of: Mr. Goldmine's Wild Ride, Mr. Goldmine's Wild Ride
step
    .goto 241,37.42,93.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twilight Rune of Earth|r
    .accept 27744 >>Accept Rune Ruination
    .target Twilight Rune of Earth
    .isQuestTurnedIn 27720,28885 --any of: Mr. Goldmine's Wild Ride, Mr. Goldmine's Wild Ride
step
    .goto 241,37.42,93.24
    >>Kill |cRXP_ENEMY_Twilight Rune of Earth|r
    .complete 27744,1 --Twilight Rune of Earth slain (1)
    .mob Twilight Rune of Earth
    .isOnQuest 27744
step
    .goto 241,35.15,90.37
    >>Click the |cRXP_PICK_Twilight Rune of Water|r
    .complete 27744,2 --Twilight Rune of Water
    .isOnQuest 27744
step
    .goto 241,33.48,88.38
    >>Click the |cRXP_PICK_Twilight Rune of Air|r
    .complete 27744,3 --Twilight Rune of Air
    .isOnQuest 27744
step
    .goto 241,34.34,86.61
    >>Click the |cRXP_PICK_Twilight Rune of Fire|r
    .complete 27744,4 --Twilight Rune of Fire
    .isOnQuest 27744
step
    #loop
    .goto 241,34.17,85.77,0
    .goto 241,34.17,85.77,40,0
    .goto 241,33.84,88.67,40,0
    >>Kill |cRXP_ENEMY_Elementium Spinners|r. Loot them for |cRXP_LOOT_Elementium Shard|r. It can also be picked up from |cRXP_PICK_Elementium Shard|r on the ground
    .complete 27742,1 --Elementium Shard (6)
    .mob Elementium Spinner
    .isOnQuest 27742
step
    .goto 241,33.27,87.51
    >>Kill |cRXP_ENEMY_Twilight Miners|r and |cRXP_ENEMY_Depths Overseers|r
    .complete 27743,1 --Twilight Miner (8)
    .mob Twilight Miner
    .mob Depths Overseer
    .isOnQuest 27743
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27742 >>Turn in A Little on the Side
    .target Initiate Goldmine
    .isOnQuest 27742
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27743 >>Turn in While We're Here
    .target Initiate Goldmine
    .isOnQuest 27743
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27744 >>Turn in Rune Ruination
    .target Initiate Goldmine
    .isOnQuest 27744
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27745 >>Accept A Fiery Reunion
    .target Initiate Goldmine
    .isQuestTurnedIn 27742 --A Little on the Side
    .isQuestTurnedIn 27743 --While We're Here
    .isQuestTurnedIn 27744 --Rune Ruination
step
    .goto 241,36.40,83.76
    >>Kill |cRXP_ENEMY_Magmatooth|r and loot |cRXP_LOOT_Fire Portal Controller|r
    .complete 27745,2 --Fire Portal Controller (1)
    .mob Magmatooth
    .isOnQuest 27745
step
    .goto 241,36.40,83.76
    >>Click the |cRXP_PICK_Fire Portal|r
    .complete 27745,1 --Fire Portal
    .isOnQuest 27745
step
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27745 >>Turn in A Fiery Reunion
    .target Initiate Goldmine
    .isOnQuest 27745
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27783 >>Accept Garona Needs You
    .target Initiate Goldmine
    .isQuestTurnedIn 27745 --any of: A Fiery Reunion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .accept 27712 >>Accept Back to the Elementium Depths
    .target Garona Halforcen
    .isQuestTurnedIn 27659 --Portal Overload
    .isQuestTurnedIn 27703 --Coup de Grace
    .isQuestTurnedIn 27798 --Water of Life
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 27783 >>Turn in Garona Needs You
    .target Garona Halforcen
    .isOnQuest 27783
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garona Halforcen|r
    .accept 27786 >>Accept The Hammer of Twilight
    .target Garona Halforcen
    .isQuestTurnedIn 27783 --any of: Garona Needs You
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27712 >>Turn in Back to the Elementium Depths
    .target Initiate Goldmine
    .isOnQuest 27712
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.39,87.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Hammer of Twilight|r
    .turnin 27786 >>Turn in The Hammer of Twilight
    .target The Hammer of Twilight
    .isOnQuest 27786
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.39,87.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Hammer of Twilight|r
    .accept 27788 >>Accept Skullcrusher the Mountain
    .target The Hammer of Twilight
    .isQuestTurnedIn 27786 --any of: The Hammer of Twilight
step << Cata
    >>Congratulations on finishing the RestedXP 80-85 leveling guide! Thank you for using RestedXP.
    >>Remember to also visit your class trainer!
    .train 80353 >> Train |T458224:0|t[Time Warp] << Mage
    .train 77801 >> Train |T463284:0|t[Demon Soul] << Warlock
    .train 73325 >> Train |T463835:0|t[Leap of Faith] << Priest
    .train 51753 >> Train |T132171:0|t[Camouflage] << Hunter
    .train 76577 >> Train |T458733:0|t[Smoke Bomb] << Rogue
    .train 6544 >> Train |T236171:0|t[Heroic Leap] << Warrior
    .train 86150 >> Train |T135919:0|t[Guardian of Ancient Kings] << Paladin
    .train 79206 >> Train |T451170:0|t[Spiritwalker's Grace] << Shaman
    .train 88747 >> Train |T464341:0|t[Wild Mushroom] << Druid
    .train 88751 >> Train |T464342:0|t[Wild Mushroom: Detonate] << Druid
    .train 73975 >> Train |T132481:0|t[Necrotic Strike] << DK
    .train 77606 >> Train |T135888:0|t[Dark Simulacrum] << DK
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.39,87.97
    >>Survive and then slay Skullcrusher the Mountain.
    .complete 27788,1 --"Skullcrusher the Mountain" Kill Credit (1)
    .isOnQuest 27788
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.39,87.97
    >>Kill |cRXP_ENEMY_Skullcrusher the Mountain|r
    .complete 27788,2 --Skullcrusher the Mountain slain (1)
    .mob Skullcrusher the Mountain
    .isOnQuest 27788
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 241,45.27,75.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Zaela|r
    .turnin 27788 >>Turn in Skullcrusher the Mountain
    .target Warlord Zaela
    .isOnQuest 27788
step
    +|cRXP_WARN_End of the Twilight Highlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: To Ravenholdt << Rogue
]])
