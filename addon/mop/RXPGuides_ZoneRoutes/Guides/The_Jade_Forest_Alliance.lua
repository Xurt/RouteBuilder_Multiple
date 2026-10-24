-- 86-90 The Jade Forest: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 86, 89).
-- Split into 2 guides, listed under "86 - 90 The Jade Forest" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/The Jade Forest.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 86 - 90 The Jade Forest
#subweight -86
#name 86-87 The Jade Forest: around Shao the Defiant
--RouteBuilder:next
#next Zone Routes (Alliance)\87-88 Kun-Lai Summit: around Smokey Sootassle

step
    .goto 371,48.32,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Misteye|r
    .accept 29576 >>Accept An Air of Worry
    .target Old Man Misteye
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,57.55,45.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r
    .turnin 31373 >>Turn in The Order of the Cloud Serpent
    .target Instructor Skythorn
    .isOnQuest 31373
step
    .goto 371,56.26,57.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
    .turnin 31441 >>Turn in Corruption Runs Deep
    .target Hisek the Swarmkeeper
    .isQuestComplete 31441
step
    .goto 371,54.85,62.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pan the Kind Hand|r
    .target Pan the Kind Hand
    .home >>Set your Hearthstone to Pan the Kind Hand's inn
step
    .goto 371,43.49,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .turnin 29576 >>Turn in An Air of Worry
    .target Shao the Defiant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,42.04,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .complete 29548,1 --Sky Admiral Rogers
    .target Sky Admiral Rogers
    .isOnQuest 29548
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,42.04,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29548 >>Turn in The Mission
    .unitscan Sky Admiral Rogers
    .isOnQuest 29548
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,42.04,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31732 >>Accept Unleash Hell
    .unitscan Sky Admiral Rogers
    .isQuestTurnedIn 29548 --any of: The Mission
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,43.60,92.00,0
    .goto 371,43.60,92.00,40,0
    .goto 371,45.20,89.80,40,0
    >>Kill |cRXP_ENEMY_Garrosh'ar Shredders|r
    .complete 31732,2 --Garrosh'ar Shredder slain (8)
    .mob Garrosh'ar Shredder
    .isOnQuest 31732
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,42.80,92.20,0
    .goto 371,42.80,92.20,40,0
    .goto 371,44.60,95.00,40,0
    >>Kill |cRXP_ENEMY_Garrosh'ar Grunts|r
    .complete 31732,1 --Garrosh'ar Grunt slain (8)
    .mob Garrosh'ar Grunt
    .isOnQuest 31732
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,44.13,99.38
    >>Kill |cRXP_ENEMY_Ship 1 Kill Credit|r
    .complete 31732,3 --Ship 1 Kill Credit slain (1)
    .mob Ship 1 Kill Credit
    .isOnQuest 31732
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,42.04,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31733 >>Accept Touching Ground
    .unitscan Sky Admiral Rogers
    .isQuestTurnedIn 31732 --any of: Unleash Hell
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,42.31,92.81
    >>Click the |cRXP_PICK_Skyfire Parachute|r
    .complete 31733,1 --Skyfire Parachute
    .isOnQuest 31733
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.39,79.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31733 >>Turn in Touching Ground
    .unitscan Sully "The Pickle" McLeary
    .isOnQuest 31733
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.39,79.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30069 >>Accept No Plan Survives Contact with the Enemy
    .accept 31734 >>Accept Welcome Wagons
    .unitscan Sully "The Pickle" McLeary
    .isQuestTurnedIn 31733 --any of: Touching Ground
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,43.62,90.68
    >>Use Sully's Flaregun to destroy 5 Horde War Wagons.
    .complete 31734,1 --Horde War Wagon (5)
    .isOnQuest 31734
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,43.80,92.00,0
    .goto 371,43.80,92.00,40,0
    .goto 371,44.80,93.80,40,0
    >>Kill |cRXP_ENEMY_Garrosh'ar Grunts|r
    .complete 30069,1 --Garrosh'ar Grunt slain (6)
    .mob Garrosh'ar Grunt
    .isOnQuest 30069
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,44.56,93.20,0
    .goto 371,44.56,93.20,40,0
    .goto 371,46.20,93.63,40,0
    >>Kill |cRXP_ENEMY_Garrosh'ar Gear-Greasers|r
    .complete 30069,2 --Garrosh'ar Gear-Greaser slain (6)
    .mob Garrosh'ar Gear-Greaser
    .isOnQuest 30069
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,46.47,96.30,0
    .goto 371,46.47,96.30,40,0
    .goto 371,45.17,94.98,40,0
    .goto 371,46.20,84.81,40,0
    .goto 371,41.46,79.15,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30069 >>Turn in No Plan Survives Contact with the Enemy
    .unitscan Rell Nightwind
    .isOnQuest 30069
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,46.47,96.30,0
    .goto 371,46.47,96.30,40,0
    .goto 371,45.17,94.98,40,0
    .goto 371,46.20,84.81,40,0
    .goto 371,41.46,79.15,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31734 >>Turn in Welcome Wagons
    .unitscan Rell Nightwind
    .isOnQuest 31734
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,46.47,96.30,0
    .goto 371,46.47,96.30,40,0
    .goto 371,45.17,94.98,40,0
    .goto 371,46.20,84.81,40,0
    .goto 371,41.46,79.15,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31735 >>Accept The Right Tool For The Job
    .unitscan Rell Nightwind
    .isQuestTurnedIn 30069 --No Plan Survives Contact with the Enemy
    .isQuestTurnedIn 31734 --Welcome Wagons
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.03,96.11
    >>Click the |cRXP_PICK_Powder Keg|r
    .complete 31735,1 --Powder Keg
    .isOnQuest 31735
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.03,96.11
    >>Click the |cRXP_PICK_Powder Keg|r
    .complete 31735,2 --Powder Keg
    .isOnQuest 31735
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.40,96.40
    >>Kill |cRXP_ENEMY_Ga'trul|r
    .complete 31735,3 --Ga'trul (1)
    .mob Ga'trul
    .isOnQuest 31735
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,46.47,96.30,0
    .goto 371,46.47,96.30,40,0
    .goto 371,45.17,94.98,40,0
    .goto 371,46.20,84.81,40,0
    .goto 371,41.46,79.15,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31735 >>Turn in The Right Tool For The Job
    .unitscan Rell Nightwind
    .isOnQuest 31735
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,46.47,96.30,0
    .goto 371,46.47,96.30,40,0
    .goto 371,45.17,94.98,40,0
    .goto 371,46.20,84.81,40,0
    .goto 371,41.46,79.15,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31736 >>Accept Envoy of the Alliance
    .accept 31737 >>Accept The Cost of War
    .unitscan Rell Nightwind
    .isQuestTurnedIn 31735 --any of: The Right Tool For The Job
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,44.78,94.83,0
    .goto 371,44.78,94.83,40,0
    .goto 371,44.40,93.06,40,0
    >>Kill |cRXP_ENEMY_Sha Haunts|r
    .complete 31737,1 --Sha Haunt slain (15)
    .mob Sha Haunt
    .isOnQuest 31737
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,45.03,92.97
    >>Kill |cRXP_ENEMY_Sha Harbingers|r
    .complete 31737,2 --Sha Harbinger slain (5)
    .mob Sha Harbinger
    .isOnQuest 31737
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.25,84.72
    >>Find and meet with the leader of Paw'don Village.
    .complete 31736,1 --Sunke Khang
    .target Sunke Khang
    .isOnQuest 31736
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.25,84.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 31737 >>Turn in The Cost of War
    .target Taran Zhu
    .isOnQuest 31737
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.25,84.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunke Khang|r
    .turnin 31736 >>Turn in Envoy of the Alliance
    .target Sunke Khang
    .isOnQuest 31736
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.25,84.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunke Khang|r
    .accept 31738 >>Accept Pillaging Peons
    .target Sunke Khang
    .isQuestTurnedIn 31736 --Envoy of the Alliance
    .isQuestTurnedIn 31737 --The Cost of War
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.22,84.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teng Applebloom|r
    .accept 31739 >>Accept Priorities!
    .target Teng Applebloom
    .isQuestTurnedIn 31736 --Envoy of the Alliance
    .isQuestTurnedIn 31737 --The Cost of War
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.13,84.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .accept 29552 >>Accept Critical Condition
    .target Mishka
    .isQuestTurnedIn 31736 --Envoy of the Alliance
    .isQuestTurnedIn 31737 --The Cost of War
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,41.46,88.19,0
    .goto 371,41.46,88.19,40,0
    .goto 371,40.44,84.32,40,0
    >>Kill |cRXP_ENEMY_Twinspire Taskmasters|r and |cRXP_ENEMY_Twinspire Peons|r
    .complete 31738,1 --Twinspire Taskmaster (12)
    .mob Twinspire Taskmaster
    .mob Twinspire Peon
    .isOnQuest 31738
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,41.05,86.28,0
    .goto 371,41.05,86.28,40,0
    .goto 371,41.22,89.89,40,0
    >>Click the |cRXP_PICK_Applebloom Cider|r
    .complete 31739,1 --Applebloom Cider
    .isOnQuest 31739
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.60,87.03
    >>Interact with |cRXP_FRIENDLY_Wounded Pilots|r
    .complete 29552,1 --Wounded Pilot (6)
    .target Wounded Pilot
    .isOnQuest 29552
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,39.55,90.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Applebloom|r
    .turnin 31739 >>Turn in Priorities!
    .target Lin Applebloom
    .isOnQuest 31739
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,39.55,90.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Applebloom|r
    .accept 31740 >>Accept Koukou's Rampage
    .target Lin Applebloom
    .isQuestTurnedIn 31739 --any of: Priorities!
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,39.37,90.02
    >>Kill |cRXP_ENEMY_Koukou|r
    .complete 31740,1 --Koukou slain (1)
    .mob Koukou
    .isOnQuest 31740
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.13,84.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .turnin 29552 >>Turn in Critical Condition
    .target Mishka
    .isOnQuest 29552
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.25,84.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunke Khang|r
    .turnin 31738 >>Turn in Pillaging Peons
    .target Sunke Khang
    .isOnQuest 31738
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.25,84.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunke Khang|r
    .turnin 31740 >>Turn in Koukou's Rampage
    .target Sunke Khang
    .isOnQuest 31740
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.25,84.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunke Khang|r
    .accept 31741 >>Accept Twinspire Keep
    .accept 31744 >>Accept Unfair Trade
    .target Sunke Khang
    .isQuestTurnedIn 29552 --Critical Condition
    .isQuestTurnedIn 31738 --Pillaging Peons
    .isQuestTurnedIn 31740 --Koukou's Rampage
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,41.46,79.15,0
    .goto 371,41.46,79.15,40,0
    .goto 371,46.20,84.81,40,0
    .goto 371,45.17,94.98,40,0
    .goto 371,46.47,96.30,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31742 >>Accept Fractured Forces
    .accept 31743 >>Accept Smoke Before Fire
    .unitscan Rell Nightwind
    .isQuestTurnedIn 29552 --Critical Condition
    .isQuestTurnedIn 31738 --Pillaging Peons
    .isQuestTurnedIn 31740 --Koukou's Rampage
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,43.30,81.19
    >>Kill |cRXP_ENEMY_Wild Imps|r
    .complete 31743,4 --Wild Imp (8)
    .mob Wild Imp
    .isOnQuest 31743
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,40.88,82.43
    >>Click the |cRXP_PICK_Twinspire Munitions|r
    .complete 31743,1 --Twinspire Munitions
    .isOnQuest 31743
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,40.10,81.60
    >>Kill |cRXP_ENEMY_Xhu'daggab|r
    .complete 31743,3 --Xhu'daggab (1)
    .mob Xhu'daggab
    .isOnQuest 31743
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.39,81.58
    >>Kill |cRXP_ENEMY_Twinspire Demolishers|r
    .complete 31743,2 --Twinspire Demolisher (8)
    .mob Twinspire Demolisher
    .isOnQuest 31743
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,40.51,81.68,0
    .goto 371,40.51,81.68,40,0
    .goto 371,42.64,80.97,40,0
    >>Kill |cRXP_ENEMY_Gatrul'lon Flamecallers|r, |cRXP_ENEMY_Twinspire Grunts|r, |cRXP_ENEMY_Felstorm Warlocks|r and |cRXP_ENEMY_Felstorm Summoners|r
    .complete 31741,1 --Gatrul'lon Flamecaller (8)
    .mob Gatrul'lon Flamecaller
    .mob Twinspire Grunt
    .mob Felstorm Warlock
    .mob Felstorm Summoner
    .isOnQuest 31741
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,42.40,81.61,0
    .goto 371,42.40,81.61,40,0
    .goto 371,39.85,81.41,40,0
    >>Free 8 Captive Pandaren Cubs from Twinspire Keep by slaying the demonic eyeballs that watch over them.
    .complete 31744,1 --Captive Pandaren Cub (8)
    .target Captive Pandaren Cub
    .isOnQuest 31744
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.10,80.35
    >>Kill |cRXP_ENEMY_Dalgan|r
    .complete 31742,1 --Dalgan slain (1)
    .mob Dalgan
    .isOnQuest 31742
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.81,80.26
    >>Kill |cRXP_ENEMY_Bellandra Felstorm|r
    .complete 31742,2 --Bellandra Felstorm slain (1)
    .mob Bellandra Felstorm
    .isOnQuest 31742
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.39,79.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31741 >>Turn in Twinspire Keep
    .unitscan Sully "The Pickle" McLeary
    .isOnQuest 31741
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.39,79.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31742 >>Turn in Fractured Forces
    .unitscan Sully "The Pickle" McLeary
    .isOnQuest 31742
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.39,79.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31743 >>Turn in Smoke Before Fire
    .unitscan Sully "The Pickle" McLeary
    .isOnQuest 31743
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.39,79.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31744 >>Turn in Unfair Trade
    .unitscan Sully "The Pickle" McLeary
    .isOnQuest 31744
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.39,79.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30070 >>Accept The Fall of Ga'trul
    .unitscan Sully "The Pickle" McLeary
    .isQuestTurnedIn 31741 --Twinspire Keep
    .isQuestTurnedIn 31742 --Fractured Forces
    .isQuestTurnedIn 31743 --Smoke Before Fire
    .isQuestTurnedIn 31744 --Unfair Trade
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.42,77.56
    >>Kill |cRXP_ENEMY_Ga'trul|r
    .complete 30070,1 --Ga'trul slain (1)
    .mob Ga'trul
    .isOnQuest 30070
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,41.46,79.15,0
    .goto 371,41.46,79.15,40,0
    .goto 371,46.20,84.81,40,0
    .goto 371,45.17,94.98,40,0
    .goto 371,46.47,96.30,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30070 >>Turn in The Fall of Ga'trul
    .unitscan Rell Nightwind
    .isOnQuest 30070
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,41.46,79.15,0
    .goto 371,41.46,79.15,40,0
    .goto 371,46.20,84.81,40,0
    .goto 371,45.17,94.98,40,0
    .goto 371,46.47,96.30,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31745 >>Accept Onward and Inward
    .unitscan Rell Nightwind
    .isQuestTurnedIn 30070 --any of: The Fall of Ga'trul
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,41.51,79.75
    >>Kill |cRXP_ENEMY_Rell's Gyrocopter|r
    .complete 31745,1 --Rell's Gyrocopter slain (1)
    .mob Rell's Gyrocopter
    .isOnQuest 31745
step
    .goto 371,43.49,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .accept 29578 >>Accept Defiance
    .accept 29579 >>Accept Rally the Survivors
    .target Shao the Defiant
step
    #completewith Along64
    >>As you go: Kill |cRXP_ENEMY_Gormali Incinerators|r. Kill |cRXP_ENEMY_Gormali Raiders|r. Kill |cRXP_ENEMY_Nectarbreeze Farmers|r and |cRXP_ENEMY_Rally Survivor Kill Credits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29578,1 --Gormali Incinerator slain (8)
    .complete 29578,2 --Gormali Raider (8)
    .complete 29579,1 --Nectarbreeze Farmer (5)
    .mob Gormali Incinerator
    .mob Gormali Raider
    .mob Nectarbreeze Farmer
    .mob Rally Survivor Kill Credit
step
    .goto 371,43.25,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r
    .accept 29580 >>Accept Orchard-Supplied Hardware
    .accept 29585 >>Accept Spitfire
    .target Gentle Mother Hanae
step
    #completewith Along64
    >>As you go: Pick up |cRXP_PICK_Orchard Tool|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 29580,1 --Orchard Tool (6)
step
    #label Along64
    #loop
    .goto 371,44.46,75.54,0
    .goto 371,44.46,75.54,40,0
    .goto 371,44.44,72.40,40,0
    >>Interact with |cRXP_FRIENDLY_Orchard Fires|r
    .complete 29585,1 --Orchard Fire (12)
    .target Orchard Fire
step
    .goto 371,43.25,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r
    .turnin 29585 >>Turn in Spitfire while you are here
    .isQuestComplete 29585
    .target Gentle Mother Hanae
step
    #loop
    .goto 371,43.99,72.22,0
    .goto 371,43.99,72.22,40,0
    .goto 371,43.74,75.01,40,0
    >>Pick up |cRXP_PICK_Orchard Tool|r from the ground
    >>Kill |cRXP_ENEMY_Gormali Incinerators|r
    >>Kill |cRXP_ENEMY_Gormali Raiders|r
    >>Kill |cRXP_ENEMY_Nectarbreeze Farmers|r and |cRXP_ENEMY_Rally Survivor Kill Credits|r
    .complete 29580,1 --Orchard Tool (6)
    .complete 29578,1 --Gormali Incinerator slain (8)
    .complete 29578,2 --Gormali Raider (8)
    .complete 29579,1 --Nectarbreeze Farmer (5)
    .mob Gormali Incinerator
    .mob Gormali Raider
    .mob Nectarbreeze Farmer
    .mob Rally Survivor Kill Credit
step
    .goto 371,43.25,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r
    .turnin 29580 >>Turn in Orchard-Supplied Hardware while you are here
    .isQuestComplete 29580
    .target Gentle Mother Hanae
step
    .goto 371,43.49,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .turnin 29578 >>Turn in Defiance
    .turnin 29579 >>Turn in Rally the Survivors
    .target Shao the Defiant
step
    .goto 371,43.25,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r
    .turnin 29580 >>Turn in Orchard-Supplied Hardware
    .turnin 29585 >>Turn in Spitfire
    .target Gentle Mother Hanae
step
    .goto 371,43.21,75.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Traumatized Nectarbreeze Farmer|r
    .accept 29586 >>Accept The Splintered Path
    .target Traumatized Nectarbreeze Farmer
step
    .goto 371,41.00,73.97
    >>Follow the path of fallen trees from the northwest corner of Nectarbreeze Orchard and find the mogu raiders camp.
    .complete 29586,1 --Shao the Defiant
    .target Shao the Defiant
step
    .goto 371,41.00,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .turnin 29586 >>Turn in The Splintered Path
    .accept 29587 >>Accept Unbound
    .accept 29670 >>Accept Maul Gormal
    .target Shao the Defiant
step
    #loop
    .goto 371,39.84,74.74,0
    .goto 371,39.84,74.74,40,0
    .goto 371,38.00,76.80,40,0
    >>Kill |cRXP_ENEMY_Subjugator Gormal|r
    >>Kill |cRXP_ENEMY_Captured Nectarbreeze Farmers|r
    .complete 29670,1 --Subjugator Gormal slain (1)
    .complete 29587,1 --Captured Nectarbreeze Farmer (10)
    .mob Subjugator Gormal
    .mob Captured Nectarbreeze Farmer
step
    .goto 371,41.00,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .turnin 29587 >>Turn in Unbound
    .turnin 29670 >>Turn in Maul Gormal
    .target Shao the Defiant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,42.04,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31745 >>Turn in Onward and Inward
    .unitscan Sky Admiral Rogers
    .isOnQuest 31745
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,42.04,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29555 >>Accept The White Pawn
    .accept 29556 >>Accept Hozen Aren't Your Friends, Hozen Are Your Enemies
    .unitscan Sky Admiral Rogers
    .isQuestTurnedIn 31745 --any of: Onward and Inward
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,42.04,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31732 >>Turn in Unleash Hell
    .unitscan Sky Admiral Rogers
    .isQuestComplete 31732
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,50.19,90.78
    >>Kill |cRXP_ENEMY_Hozen Diver|r and loot |cRXP_LOOT_Encoded Captain's Log|r
    .complete 29555,1 --Encoded Captain's Log (1)
    .mob Hozen Diver
    .isOnQuest 29555
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,49.97,90.17
    >>Kill |cRXP_ENEMY_Hozen Ravagers|r, |cRXP_ENEMY_Hozen Scavengers|r and |cRXP_ENEMY_Hozen Divers|r
    .complete 29556,1 --Hozen Ravager (8)
    .mob Hozen Ravager
    .mob Hozen Scavenger
    .mob Hozen Diver
    .isOnQuest 29556
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,49.99,90.27
    >>Kill |cRXP_ENEMY_Fine Leather Journals|r, |cRXP_ENEMY_Alliance Banners|r and |cRXP_ENEMY_Alliance Bodyguards|r
    .complete 29555,2 --Fine Leather Journal (8)
    .mob Fine Leather Journal
    .mob Alliance Banner
    .mob Alliance Bodyguard
    .isOnQuest 29555
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,50.41,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nodd Codejack|r
    .turnin 29555 >>Turn in The White Pawn
    .target Nodd Codejack
    .isOnQuest 29555
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,50.41,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nodd Codejack|r
    .turnin 29556 >>Turn in Hozen Aren't Your Friends, Hozen Are Your Enemies
    .target Nodd Codejack
    .isOnQuest 29556
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,50.41,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nodd Codejack|r
    .accept 29553 >>Accept The Missing Admiral
    .target Nodd Codejack
    .isQuestTurnedIn 29555 --The White Pawn
    .isQuestTurnedIn 29556 --Hozen Aren't Your Friends, Hozen Are Your Enemies
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.22,82.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .turnin 29553 >>Turn in The Missing Admiral
    .target Admiral Taylor
    .isOnQuest 29553
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.20,82.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .accept 29558 >>Accept The Path of War
    .accept 29559 >>Accept Freeing Our Brothers
    .accept 29560 >>Accept Ancient Power
    .target Bold Karasshi
    .isQuestTurnedIn 29553 --any of: The Missing Admiral
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,54.77,83.42,0
    .goto 371,54.77,83.42,40,0
    .goto 371,54.76,80.12,40,0
    >>Kill |cRXP_ENEMY_Slingtail Treeleapers|r and |cRXP_ENEMY_Slingtail Mudseers|r
    .complete 29558,1 --Slingtail Treeleaper (12)
    .mob Slingtail Treeleaper
    .mob Slingtail Mudseer
    .isOnQuest 29558
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,55.00,80.59
    >>Kill |cRXP_ENEMY_Alliance Prisoners|r and |cRXP_ENEMY_Jinyu Prisoners|r
    .complete 29559,1 --Alliance Prisoner (6)
    .mob Alliance Prisoner
    .mob Jinyu Prisoner
    .isOnQuest 29559
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,55.02,79.59
    >>Loot the |cRXP_PICK_Hozen Skulls|r for |cRXP_LOOT_Ancient Hozen Skull|r
    .complete 29560,1 --Ancient Hozen Skull (8)
    .isOnQuest 29560
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.20,82.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .turnin 29558 >>Turn in The Path of War
    .target Bold Karasshi
    .isOnQuest 29558
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.20,82.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .turnin 29559 >>Turn in Freeing Our Brothers
    .target Bold Karasshi
    .isOnQuest 29559
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.20,82.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .turnin 29560 >>Turn in Ancient Power
    .target Bold Karasshi
    .isOnQuest 29560
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.20,82.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .accept 29759 >>Accept Kung Din
    .target Bold Karasshi
    .isQuestTurnedIn 29558 --The Path of War
    .isQuestTurnedIn 29559 --Freeing Our Brothers
    .isQuestTurnedIn 29560 --Ancient Power
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.65,80.10
    >>Kill |cRXP_ENEMY_Kung Din|r and loot |cRXP_LOOT_Slingtail Key|r
    .complete 29759,1 --Slingtail Key (1)
    .mob Kung Din
    .isOnQuest 29759
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.20,82.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .turnin 29759 >>Turn in Kung Din
    .target Bold Karasshi
    .isOnQuest 29759
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.20,82.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .accept 29562 >>Accept Jailbreak
    .target Bold Karasshi
    .isQuestTurnedIn 29759 --any of: Kung Din
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,55.72,82.11,0
    .goto 371,55.72,82.11,40,0
    .goto 371,56.21,79.05,40,0
    >>Kill |cRXP_ENEMY_Slingtail Fishrippers|r
    .complete 29562,1 --Slingtail Fishripper slain (10)
    .mob Slingtail Fishripper
    .isOnQuest 29562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.98,81.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .turnin 29562 >>Turn in Jailbreak
    .target Bold Karasshi
    .isOnQuest 29562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.93,81.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r
    .accept 29883 >>Accept The Pearlfin Situation
    .accept 29885 >>Accept Road Rations
    .target Rell Nightwind
    .isQuestTurnedIn 29562 --any of: Jailbreak
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.76,81.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlkeeper Fujin|r
    .complete 29883,1 --Pearlkeeper Fujin
    .target Pearlkeeper Fujin
    .isOnQuest 29883
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.89,81.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
    .complete 29883,4 --Elder Lusshan
    .target Elder Lusshan
    .isOnQuest 29883
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.79,84.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Sharpfin|r
    .complete 29883,3 --Instructor Sharpfin
    .target Instructor Sharpfin
    .isOnQuest 29883
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,59.92,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ot-Temmdo|r
    .complete 29883,2 --Ot-Temmdo
    .target Ot-Temmdo
    .isOnQuest 29883
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,60.02,81.04,0
    .goto 371,60.02,81.04,40,0
    .goto 371,57.77,84.47,40,0
    .goto 371,56.49,78.63,40,0
    >>Kill |cRXP_ENEMY_Pearly Tortoises|r. Loot them for |cRXP_LOOT_Tortoise Flank|r
    .complete 29885,1 --Tortoise Flank (6)
    .mob Pearly Tortoise
    .isOnQuest 29885
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.93,81.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r
    .turnin 29883 >>Turn in The Pearlfin Situation
    .target Rell Nightwind
    .isOnQuest 29883
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.93,81.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r
    .turnin 29885 >>Turn in Road Rations
    .target Rell Nightwind
    .isOnQuest 29885
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.98,81.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .accept 29762 >>Accept Family Heirlooms
    .target Bold Karasshi
    .isQuestTurnedIn 29883 --The Pearlfin Situation
    .isQuestTurnedIn 29885 --Road Rations
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.76,81.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlkeeper Fujin|r
    .accept 29887 >>Accept The Elder's Instruments
    .target Pearlkeeper Fujin
    .isQuestTurnedIn 29883 --The Pearlfin Situation
    .isQuestTurnedIn 29885 --Road Rations
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,65.81,87.54,0
    .goto 371,65.81,87.54,40,0
    .goto 371,67.65,87.82,40,0
    >>Kill |cRXP_ENEMY_Pearlfin Villagers|r. Loot them for |cRXP_LOOT_Glassfin Heirloom|r
    .complete 29762,1 --Glassfin Heirloom (8)
    .mob Pearlfin Villager
    .isOnQuest 29762
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,68.02,87.51,0
    .goto 371,68.02,87.51,40,0
    .goto 371,66.22,87.02,40,0
    >>Kill |cRXP_ENEMY_Slingtail Stickypaw|r and loot |cRXP_LOOT_Jade Crown|r
    .complete 29887,3 --Jade Crown (1)
    .mob Slingtail Stickypaw
    .isOnQuest 29887
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,66.22,87.02,0
    .goto 371,66.22,87.02,40,0
    .goto 371,68.02,87.51,40,0
    >>Kill |cRXP_ENEMY_Slingtail Stickypaw|r and loot |cRXP_LOOT_Rosewood Beads|r
    .complete 29887,4 --Rosewood Beads (1)
    .mob Slingtail Stickypaw
    .isOnQuest 29887
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,66.22,87.02,0
    .goto 371,66.22,87.02,40,0
    .goto 371,68.02,87.51,40,0
    >>Kill |cRXP_ENEMY_Slingtail Stickypaw|r and loot |cRXP_LOOT_Ceremonial Robes|r
    .complete 29887,2 --Ceremonial Robes (1)
    .mob Slingtail Stickypaw
    .isOnQuest 29887
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,66.22,87.02,0
    .goto 371,66.22,87.02,40,0
    .goto 371,68.02,87.51,40,0
    >>Kill |cRXP_ENEMY_Slingtail Stickypaw|r and loot |cRXP_LOOT_Waterspeaker's Staff|r
    .complete 29887,1 --Waterspeaker's Staff (1)
    .mob Slingtail Stickypaw
    .isOnQuest 29887
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.98,81.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .turnin 29762 >>Turn in Family Heirlooms
    .target Bold Karasshi
    .isOnQuest 29762
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.76,81.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlkeeper Fujin|r
    .turnin 29887 >>Turn in The Elder's Instruments
    .target Pearlkeeper Fujin
    .isOnQuest 29887
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.76,81.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlkeeper Fujin|r
    .accept 29894 >>Accept Spirits of the Water
    .target Pearlkeeper Fujin
    .isQuestTurnedIn 29762 --Family Heirlooms
    .isQuestTurnedIn 29887 --The Elder's Instruments
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.89,81.48
    >>Kill |cRXP_ENEMY_Elder Lusshans|r
    .complete 29894,1 --Elder Lusshan (8)
    .mob Elder Lusshan
    .isOnQuest 29894
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.63,83.15
    >>Kill |cRXP_ENEMY_Rassharom|r
    .complete 29894,2 --Rassharom (1)
    .mob Rassharom
    .isOnQuest 29894
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.98,81.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .turnin 29894 >>Turn in Spirits of the Water
    .target Bold Karasshi
    .isOnQuest 29894
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.98,81.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r
    .accept 29733 >>Accept SI:7 Report: Lost in the Woods
    .target Rell Nightwind
    .isQuestTurnedIn 29894 --any of: Spirits of the Water
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,49.80,70.80
    >>Kill |cRXP_ENEMY_General Rik-Rik|r
    .complete 29733,1 --General Rik-Rik slain (1)
    .mob General Rik-Rik
    .isOnQuest 29733
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.98,81.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r
    .turnin 29733 >>Turn in SI:7 Report: Lost in the Woods
    .target Rell Nightwind
    .isOnQuest 29733
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.87,81.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
    .accept 29725 >>Accept SI:7 Report: Fire From the Sky
    .target Sully "The Pickle" McLeary
    .isQuestTurnedIn 29733 --any of: SI:7 Report: Lost in the Woods
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Pan the Kind Hand's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,50.93,63.06
    >>Listen to Sully's report.
    .complete 29725,4 --Sully Return Credit
    .target Sully Return Credit
    .isOnQuest 29725
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,49.32,61.74
    >>Listen to Sully's report.
    .complete 29725,1 --Sully SE Credit
    .target Sully SE Credit
    .isOnQuest 29725
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,47.85,58.36
    >>Listen to Sully's report.
    .complete 29725,3 --Sully N Credit
    .target Sully N Credit
    .isOnQuest 29725
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.28,61.86
    >>Listen to Sully's report.
    .complete 29725,2 --Sully SW Credit
    .target Sully SW Credit
    .isOnQuest 29725
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.87,81.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
    .turnin 29725 >>Turn in SI:7 Report: Fire From the Sky
    .target Sully "The Pickle" McLeary
    .isOnQuest 29725
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,59.07,81.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Little Lu|r
    .accept 29726 >>Accept SI:7 Report: Hostile Natives
    .target Little Lu
    .isQuestTurnedIn 29725 --any of: SI:7 Report: Fire From the Sky
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,38.93,46.00
    >>Interact with |cRXP_FRIENDLY_Lifelike Jade Statue|r
    .complete 29726,1 --Lifelike Jade Statue
    .target Lifelike Jade Statue
    .isOnQuest 29726
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,59.07,81.89
    >>Interact with |cRXP_FRIENDLY_Suspicious Jade Statue|r
    .complete 29726,2 --Suspicious Jade Statue
    .isOnQuest 29726
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,39.24,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Widow Greenpaw|r
    .complete 29726,3 --Widow Greenpaw
    .target Widow Greenpaw
    .isOnQuest 29726
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,38.30,45.40
    >>Click the |cRXP_PICK_STAY OUT - NO VISITORS|r
    .complete 29726,4 --STAY OUT - NO VISITORS
    .isOnQuest 29726
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,59.07,81.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Little Lu|r
    .turnin 29726 >>Turn in SI:7 Report: Hostile Natives
    .target Little Lu
    .isOnQuest 29726
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.93,81.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amber Kearnen|r
    .accept 29727 >>Accept SI:7 Report: Take No Prisoners
    .target Amber Kearnen
    .isQuestTurnedIn 29726 --any of: SI:7 Report: Hostile Natives
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,28.20,51.00
    >>Listen to Amber Kearnen's report.
    .complete 29727,1 --Sully "The Pickle" McLeary
    .target Sully "The Pickle" McLeary
    .isOnQuest 29727
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.93,81.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amber Kearnen|r
    .turnin 29727 >>Turn in SI:7 Report: Take No Prisoners
    .target Amber Kearnen
    .isOnQuest 29727
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.98,81.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
    .accept 29888 >>Accept Seek Out the Lorewalker
    .target Bold Karasshi
    .isQuestTurnedIn 29727 --any of: SI:7 Report: Take No Prisoners
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.88,81.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .accept 29903 >>Accept A Perfect Match
    .target Admiral Taylor
    .isQuestTurnedIn 29727 --any of: SI:7 Report: Take No Prisoners
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,59.09,84.21,0
    .goto 371,59.09,84.21,40,0
    .goto 371,59.99,86.94,40,0
    >>Kill |cRXP_ENEMY_Pearlfin Aqualytes|r
    .complete 29903,1 --Pearlfin Aqualyte (8)
    .mob Pearlfin Aqualyte
    .isOnQuest 29903
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.88,81.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .turnin 29903 >>Turn in A Perfect Match
    .target Admiral Taylor
    .isOnQuest 29903
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.88,81.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .accept 29904 >>Accept Bigger Fish to Fry
    .target Admiral Taylor
    .isQuestTurnedIn 29903 --any of: A Perfect Match
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,58.71,75.75,0
    .goto 371,58.71,75.75,40,0
    .goto 371,60.55,73.60,40,0
    .goto 371,61.71,71.14,40,0
    >>Kill |cRXP_ENEMY_Stoneskin Basilisks|r, |cRXP_ENEMY_Wild Prowlers|r and |cRXP_ENEMY_Wild Stalkers|r
    .complete 29904,1 --Stoneskin Basilisk (8)
    .mob Stoneskin Basilisk
    .mob Wild Prowler
    .mob Wild Stalker
    .isOnQuest 29904
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.88,81.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .turnin 29904 >>Turn in Bigger Fish to Fry
    .target Admiral Taylor
    .isOnQuest 29904
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.88,81.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .accept 29905 >>Accept Let Them Burn
    .accept 29906 >>Accept Carp Diem
    .target Admiral Taylor
    .isQuestTurnedIn 29904 --any of: Bigger Fish to Fry
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.60,80.20
    >>Kill |cRXP_ENEMY_Chief Gukgut|r
    .complete 29906,1 --Chief Gukgut slain (1)
    .mob Chief Gukgut
    .isOnQuest 29906
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,55.00,80.40
    >>Kill |cRXP_ENEMY_Slingtail Recruits|r and |cRXP_ENEMY_Grookin Reinforcements|r
    .complete 29905,1 --Slingtail Recruit (8)
    .mob Slingtail Recruit
    .mob Grookin Reinforcement
    .isOnQuest 29905
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.89,81.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
    .turnin 29905 >>Turn in Let Them Burn
    .target Elder Lusshan
    .isOnQuest 29905
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.89,81.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
    .turnin 29906 >>Turn in Carp Diem
    .target Elder Lusshan
    .isOnQuest 29906
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.71,91.51
    >>Click the |cRXP_PICK_Mouthwatering Brew|r
    .turnin 29888 >>Turn in Seek Out the Lorewalker
    .isOnQuest 29888
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.71,91.51
    >>Click the |cRXP_PICK_Mouthwatering Brew|r
    .accept 29889 >>Accept Borrowed Brew
    .isQuestTurnedIn 29888 --any of: Seek Out the Lorewalker
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.71,91.51
    >>Click the |cRXP_PICK_Mouthwatering Brew|r
    .complete 29889,1 --Mouthwatering Brew
    .isOnQuest 29889
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.77,90.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 29889 >>Turn in Borrowed Brew
    .target Lorewalker Cho
    .isOnQuest 29889
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.77,90.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31130 >>Accept A Visit with Lorewalker Cho
    .target Lorewalker Cho
    .isQuestTurnedIn 29889 --any of: Borrowed Brew
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.71,90.95
    >>Click the |cRXP_PICK_Shapeless Tree|r
    .complete 31130,1 --Shapeless Tree
    .isOnQuest 31130
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.09,90.65
    >>Click the |cRXP_PICK_Cho's "Art"|r
    .complete 31130,2 --Cho's "Art"
    .isOnQuest 31130
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.03,91.34
    >>Click the |cRXP_PICK_Bird Feed|r
    .complete 31130,3 --Bird Feed
    .isOnQuest 31130
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.80,90.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31130 >>Turn in A Visit with Lorewalker Cho
    .target Lorewalker Cho
    .isOnQuest 31130
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.80,90.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 29891 >>Accept Potency
    .accept 29892 >>Accept Body
    .accept 29893 >>Accept Hue
    .target Lorewalker Cho
    .isQuestTurnedIn 31130 --any of: A Visit with Lorewalker Cho
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,56.22,88.91,0
    .goto 371,56.22,88.91,40,0
    .goto 371,57.30,92.45,40,0
    .goto 371,58.76,90.44,40,0
    >>Kill |cRXP_ENEMY_Mist Creepers|r
    .complete 29891,1 --Mist Creeper slain (8)
    .mob Mist Creeper
    .isOnQuest 29891
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.20,90.00
    >>Kill |cRXP_ENEMY_Mist Horror|r and loot |cRXP_LOOT_Mist Horror Heart|r
    .complete 29891,2 --Mist Horror Heart (1)
    .mob Mist Horror
    .isOnQuest 29891
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,59.17,90.23,0
    .goto 371,59.17,90.23,40,0
    .goto 371,61.45,89.75,40,0
    >>Kill |cRXP_ENEMY_Bog Crocolisks|r. Loot them for |cRXP_LOOT_Pristine Crocolisk Eye|r
    .complete 29892,1 --Pristine Crocolisk Eye (5)
    .mob Bog Crocolisk
    .isOnQuest 29892
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,58.32,89.84,0
    .goto 371,58.32,89.84,40,0
    .goto 371,55.95,91.81,40,0
    .goto 371,55.69,85.35,40,0
    >>Kill |cRXP_ENEMY_Glittering Amberflies|r. Loot them for |cRXP_LOOT_Amberfly Wing|r
    .complete 29893,1 --Amberfly Wing (8)
    .mob Glittering Amberfly
    .isOnQuest 29893
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.80,90.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 29891 >>Turn in Potency
    .target Lorewalker Cho
    .isOnQuest 29891
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.80,90.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 29892 >>Turn in Body
    .target Lorewalker Cho
    .isOnQuest 29892
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.80,90.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 29893 >>Turn in Hue
    .target Lorewalker Cho
    .isOnQuest 29893
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,53.80,90.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 29890 >>Accept Finding Your Center
    .target Lorewalker Cho
    .isQuestTurnedIn 29891 --Potency
    .isQuestTurnedIn 29892 --Body
    .isQuestTurnedIn 29893 --Hue
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.68,92.06
    >>Click the |cRXP_PICK_Potent Dream Brew|r
    .complete 29890,1 --Potent Dream Brew
    .isOnQuest 29890
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,65.91,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 29890 >>Turn in Finding Your Center
    .target Anduin Wrynn
    .isOnQuest 29890
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,65.91,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .accept 29898 >>Accept Sacred Waters
    .target Anduin Wrynn
    .isQuestTurnedIn 29890 --any of: Finding Your Center
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,66.00,79.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Whitepaw|r
    .accept 29899 >>Accept Rest in Peace
    .target Ren Whitepaw
    .isQuestTurnedIn 29890 --any of: Finding Your Center
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,66.00,79.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lina Whitepaw|r
    .accept 29900 >>Accept An Ancient Legend
    .target Lina Whitepaw
    .isQuestTurnedIn 29890 --any of: Finding Your Center
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,66.84,82.08
    >>Click the |cRXP_PICK_Restorative Body|r
    .complete 29898,1 --Restorative Body
    .isOnQuest 29898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,67.27,81.61
    >>Click the |cRXP_PICK_Restorative Mind|r
    .complete 29898,2 --Restorative Mind
    .isOnQuest 29898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,68.04,81.86
    >>Click the |cRXP_PICK_Restorative Spirit|r
    .complete 29898,3 --Restorative Spirit
    .isOnQuest 29898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,66.43,80.00
    >>Click the |cRXP_PICK_Restorative Heart|r
    .complete 29898,4 --Restorative Heart
    .isOnQuest 29898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,66.62,80.44
    >>Kill |cRXP_ENEMY_Shade of Ling Heartfist|r
    .complete 29900,1 --Shade of Ling Heartfist slain (1)
    .mob Shade of Ling Heartfist
    .isOnQuest 29900
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,65.29,81.80,0
    .goto 371,65.29,81.80,40,0
    .goto 371,66.90,82.97,40,0
    >>Kill |cRXP_ENEMY_Tortured Spirits|r
    .complete 29899,1 --Tortured Spirit slain (6)
    .mob Tortured Spirit
    .isOnQuest 29899
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,66.00,79.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lina Whitepaw|r
    .turnin 29898 >>Turn in Sacred Waters
    .target Lina Whitepaw
    .isOnQuest 29898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,66.00,79.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Whitepaw|r
    .turnin 29899 >>Turn in Rest in Peace
    .target Ren Whitepaw
    .isOnQuest 29899
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,65.90,79.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 29901 >>Accept Anduin's Decision
    .target !
    .isQuestTurnedIn 29898 --Sacred Waters
    .isQuestTurnedIn 29899 --Rest in Peace
    .isQuestTurnedIn 29900 --An Ancient Legend
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,65.91,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .complete 29901,1 --Anduin Wrynn
    .target Anduin Wrynn
    .isOnQuest 29901
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,66.00,79.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Whitepaw|r
    .turnin 29900 >>Turn in An Ancient Legend
    .target Ren Whitepaw
    .isQuestComplete 29900
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.88,81.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .turnin 29901 >>Turn in Anduin's Decision
    .target Admiral Taylor
    .isOnQuest 29901
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.89,81.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
    .accept 29922 >>Accept In Search of Wisdom
    .target Elder Lusshan
    .isQuestTurnedIn 29901 --Anduin's Decision
    .isQuestTurnedIn 29905 --Let Them Burn
    .isQuestTurnedIn 29906 --Carp Diem
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.00,82.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ut-Nam|r
    .complete 29922,1 --Ut-Nam
    .target Ut-Nam
    .isOnQuest 29922
step << Alliance
    .goto 371,47.047,46.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keg Runner Lee|r
    .fp Dawn's Blossom >> Get the Dawn's Blossom flight path
    .target Keg Runner Lee
    .zoneskip 371,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.82,46.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 29922 >>Turn in In Search of Wisdom
    .target Lorewalker Cho
    .isOnQuest 29922
step << Horde
    .goto 371,47.047,46.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keg Runner Lee|r
    .fp Dawn's Blossom >> Get the Dawn's Blossom flight path
    .target Keg Runner Lee
    .subzoneskip 5930,1
step
    .goto 371,47.16,46.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
    .accept 31230 >>Accept Welcome to Dawn's Blossom
    .target Toya
    .isQuestTurnedIn 29922,30015 --any of: In Search of Wisdom, Dawn's Blossom
    .xp <85,1
step
    .goto 371,47.14,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai Wanderbrew|r
    .complete 31230,3 --Kai Wanderbrew
    .target Kai Wanderbrew
    .isOnQuest 31230
step
    .goto 371,48.49,44.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Windfur|r
    .complete 31230,1 --Master Windfur
    .target Master Windfur
    .isOnQuest 31230
step
    .goto 371,45.72,43.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peiji Goldendraft|r
    .complete 31230,2 --Peiji Goldendraft
    .target Peiji Goldendraft
    .isOnQuest 31230
step
    .goto 371,47.16,46.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
    .turnin 31230 >>Turn in Welcome to Dawn's Blossom
    .target Toya
    .isOnQuest 31230
step
    .goto 371,46.65,46.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .accept 29716 >>Accept The Double Hozen Dare
    .target An Windfur
    .isQuestTurnedIn 31230 --any of: Welcome to Dawn's Blossom
    .xp <85,1
step
    .goto 371,46.46,45.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzu the Ironbelly|r
    .accept 29865 >>Accept The Silkwood Road
    .target Tzu the Ironbelly
    .isQuestTurnedIn 31230 --any of: Welcome to Dawn's Blossom
    .xp <85,1
step
    .goto 371,46.63,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
    .accept 29866 >>Accept The Threads that Stick
    .target Lo Wanderbrew
    .isQuestTurnedIn 31230 --any of: Welcome to Dawn's Blossom
    .xp <85,1
step
    #loop
    .goto 371,44.90,48.08,0
    .goto 371,44.90,48.08,40,0
    .goto 371,43.34,48.88,40,0
    >>Loot the |cRXP_PICK_Silk Patches|r for |cRXP_LOOT_Pristine Silk Strand|r
    .complete 29866,1 --Pristine Silk Strand (7)
    .isOnQuest 29866
step
    #loop
    .goto 371,44.00,49.20,0
    .goto 371,44.00,49.20,40,0
    .goto 371,42.20,50.00,40,0
    >>Kill |cRXP_ENEMY_Silkwood Stalkers|r
    .complete 29865,1 --Silkwood Stalker slain (8)
    .mob Silkwood Stalker
    .isOnQuest 29865
step
    .goto 371,39.47,47.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .accept 29717 >>Accept Down Kitty!
    .target An Windfur
    .isQuestTurnedIn 31230 --any of: Welcome to Dawn's Blossom
    .xp <85,1
step
    #loop
    .goto 371,37.34,44.65,0
    .goto 371,37.34,44.65,40,0
    .goto 371,38.15,43.34,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scared Pandaren Cub|r
    .complete 29716,1 --Scared Pandaren Cub (6)
    .target Scared Pandaren Cub
    .isOnQuest 29716
step
    #loop
    .goto 371,38.19,43.27,0
    .goto 371,38.19,43.27,40,0
    .goto 371,36.61,44.63,40,0
    >>Kill |cRXP_ENEMY_Jade Guardians|r
    .complete 29717,1 --Jade Guardian slain (8)
    .mob Jade Guardian
    .isOnQuest 29717
step
    .goto 371,46.65,46.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .turnin 29716 >>Turn in The Double Hozen Dare
    .target An Windfur
    .isOnQuest 29716
step
    .goto 371,46.65,46.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .turnin 29717 >>Turn in Down Kitty!
    .target An Windfur
    .isOnQuest 29717
step
    .goto 371,46.65,46.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .accept 29723 >>Accept The Jade Witch
    .target An Windfur
    .isQuestTurnedIn 29716 --any of: The Double Hozen Dare
    .xp <85,1
step
    .goto 371,39.34,46.22
    >>Kill |cRXP_ENEMY_Widow Greenpaw|r
    .complete 29723,1 --Widow Greenpaw slain (1)
    .mob Widow Greenpaw
    .isOnQuest 29723
step
    .goto 371,47.77,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .turnin 29723 >>Turn in The Jade Witch
    .target An Windfur
    .isOnQuest 29723
step
    .goto 371,46.63,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
    .turnin 29866 >>Turn in The Threads that Stick
    .target Lo Wanderbrew
    .isOnQuest 29866
step
    .goto 371,46.46,45.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzu the Ironbelly|r
    .turnin 29865 >>Turn in The Silkwood Road
    .target Tzu the Ironbelly
    .isOnQuest 29865
step
    .goto 371,47.14,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai Wanderbrew|r
    .accept 29993 >>Accept Find the Boy
    .target Kai Wanderbrew
    .isQuestTurnedIn 29866 --any of: The Threads that Stick
    .xp <85,1
step
    .goto 371,47.16,46.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
    .accept 29925 >>Accept All We Can Spare
    .target Toya
    .isQuestTurnedIn 29723 --any of: The Jade Witch
    .xp <85,1
step
    .goto 371,49.65,45.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Yufi|r
    .accept 29617 >>Accept Tian Monastery
    .target Apprentice Yufi
step
    .goto 371,50.91,27.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 29925 >>Turn in All We Can Spare
    .target Lorewalker Cho
    .isOnQuest 29925
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .accept 29928 >>Accept I Have No Jade And I Must Scream
    .target Foreman Mann
    .isQuestTurnedIn 29925 --any of: All We Can Spare
    .xp <85,1
step
    .goto 371,48.23,31.50
    >>Kill |cRXP_ENEMY_Puckish Sprites|r. Loot them for |cRXP_LOOT_Chunk of Jade|r. It can also be picked up from |cRXP_PICK_Chunk of Jade|r on the ground
    .complete 29928,1 --Chunk of Jade (15)
    .mob Puckish Sprite
    .isOnQuest 29928
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .turnin 29928 >>Turn in I Have No Jade And I Must Scream
    .target Foreman Mann
    .isOnQuest 29928
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .accept 29926 >>Accept Calamity Jade
    .accept 29927 >>Accept Mann's Man
    .target Foreman Mann
    .isQuestTurnedIn 29928 --any of: I Have No Jade And I Must Scream
    .xp <85,1
step
    #completewith next
    .zone 372 >>Travel to Greenstone Quarry
    .zoneskip 372
step
    .goto 372,60.90,36.40
    >>Locate Hao Mann at the Greenstone Quarry.
    .complete 29927,1 --Hao Mann
    .target Hao Mann
    .isOnQuest 29927
step
    .goto 372,60.90,36.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
    .turnin 29927 >>Turn in Mann's Man
    .target Hao Mann
    .isOnQuest 29927
step
    .goto 372,60.90,36.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
    .accept 29929 >>Accept Trapped!
    .target Hao Mann
    .isQuestTurnedIn 29927 --any of: Mann's Man
    .xp <85,1
step
    #completewith next
    .zone 371 >>Leave Greenstone Quarry for The Jade Forest
    .zoneskip 371
step
    .goto 371,30.40,7.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellie Honeypaw|r
    .accept 31772 >>Accept Priorities!
    .target Ellie Honeypaw
    .isQuestTurnedIn 31769 --any of: The Final Blow!
    .xp <85,1
step
    #loop
    .goto 371,30.47,11.13,0
    .goto 371,30.47,11.13,40,0
    .goto 371,31.80,13.48,40,0
    >>Click the |cRXP_PICK_Barrel of Honeybrew|r
    .complete 31772,1 --Barrel of Honeybrew
    .isOnQuest 31772
step
    .goto 371,29.38,13.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellie Honeypaw|r
    .turnin 31772 >>Turn in Priorities!
    .target Ellie Honeypaw
    .isOnQuest 31772
step
    .goto 371,30.89,17.52
    >>Click the |cRXP_PICK_Ancient Statue|r
    .accept 29743 >>Accept Monstrosity
    .isQuestTurnedIn 31774 --any of: Seeking Zin'jun
    .xp <85,1
step
    .goto 371,29.20,19.09
    >>Click the |cRXP_PICK_Ancient Statue Torso|r
    .complete 29743,1 --Ancient Statue Torso
    .isOnQuest 29743
step
    .goto 371,30.12,21.39
    >>Click the |cRXP_PICK_Ancient Statue Arm|r
    .complete 29743,2 --Ancient Statue Arm
    .isOnQuest 29743
step
    .goto 371,29.97,22.48
    >>Click the |cRXP_PICK_Ancient Statue Head|r
    .complete 29743,4 --Ancient Statue Head
    .isOnQuest 29743
step
    .goto 371,28.48,22.13
    >>Click the |cRXP_PICK_Ancient Statue Shoulder|r
    .complete 29743,3 --Ancient Statue Shoulder
    .isOnQuest 29743
step
    .goto 371,29.38,21.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 29743 >>Turn in Monstrosity
    .target ?
    .isOnQuest 29743
step
    #completewith next
    .zone 373 >>Travel to Greenstone Quarry Lower Quarry(fake ID cave in The Jade Forest)
    .zoneskip 373
step
    #loop
    .goto 373,52.99,32.97,0
    .goto 373,52.99,32.97,40,0
    .goto 373,53.03,43.78,40,0
    .goto 373,63.18,61.09,40,0
    .goto 373,67.39,45.10,40,0
    .goto 373,62.58,36.13,40,0
    >>Interact with |cRXP_FRIENDLY_Greenstone Miners|r
    .complete 29929,1 --Greenstone Miner (8)
    .target Greenstone Miner
    .isOnQuest 29929
step
    .goto 373,49.41,64.86
    >>Kill |cRXP_ENEMY_Greenstone Nibblers|r
    .complete 29926,1 --Greenstone Nibbler slain (12)
    .mob Greenstone Nibbler
    .isOnQuest 29926
step
    .goto 373,59.29,56.09
    >>Kill |cRXP_ENEMY_Greenstone Gorgers|r
    .complete 29926,2 --Greenstone Gorger slain (6)
    .mob Greenstone Gorger
    .isOnQuest 29926
step
    #completewith next
    .zone 371 >>Leave Greenstone Quarry Lower Quarry(fake ID cave in The Jade Forest) for The Jade Forest
    .zoneskip 371
step
    .goto 371,46.30,29.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
    .turnin 29929 >>Turn in Trapped!
    .target Hao Mann
    .isOnQuest 29929
step
    .goto 371,46.30,29.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
    .accept 29930 >>Accept What's Mined Is Yours
    .target Hao Mann
    .isQuestTurnedIn 29929 --any of: Trapped!
    .xp <85,1
step
    .goto 371,46.27,29.47
    >>Kill |cRXP_ENEMY_Jade Cart|r
    .complete 29930,1 --Jade Cart slain (1)
    .mob Jade Cart
    .isOnQuest 29930
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .turnin 29926 >>Turn in Calamity Jade
    .target Foreman Mann
    .isOnQuest 29926
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .turnin 29930 >>Turn in What's Mined Is Yours
    .target Foreman Mann
    .isOnQuest 29930
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .accept 29931 >>Accept The Serpent's Heart
    .target Foreman Mann
    .isQuestTurnedIn 29930 --any of: What's Mined Is Yours
    .xp <85,1
step
    .goto 371,48.93,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outcast Sprite|r
    .accept 29745 >>Accept The Sprites' Plight
    .target Outcast Sprite
step
    #completewith Along235
    >>As you go: Kill |cRXP_ENEMY_Stonebound Destroyers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29745,1 --Stonebound Destroyer slain (10)
    .mob Stonebound Destroyer
step
    #label Along235
    .goto 371,46.95,20.53
    >>Slay 10 Stonebound Destroyer the Woods of the Lost and discover their source.
    .complete 29745,2 --Mogu Ruins Discovery Kill Credit
    .target Mogu Ruins Discovery Kill Credit
step
    #loop
    .goto 371,48.18,21.30,0
    .goto 371,48.18,21.30,40,0
    .goto 371,49.28,23.04,40,0
    >>Kill |cRXP_ENEMY_Stonebound Destroyers|r
    .complete 29745,1 --Stonebound Destroyer slain (10)
    .mob Stonebound Destroyer
step
    .goto 371,49.04,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .turnin 29745 >>Turn in The Sprites' Plight
    .target !
step
    .goto 371,48.57,20.62
    >>Click the |cRXP_PICK_Shattered Destroyer|r
    .accept 29747 >>Accept Break the Cycle
    .accept 29748 >>Accept Simulacrumble
step
    #loop
    .goto 371,48.35,19.03,0
    .goto 371,48.35,19.03,40,0
    .goto 371,46.97,16.44,40,0
    >>Kill |cRXP_ENEMY_Shan'ze Spiritbinders|r
    >>Click the |cRXP_PICK_Vacant Destroyer|r
    .complete 29747,1 --Shan'ze Spiritbinder slain (8)
    .complete 29748,1 --Vacant Destroyer
    .mob Shan'ze Spiritbinder
step
    .goto 371,47.73,16.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 29747 >>Turn in Break the Cycle
    .turnin 29748 >>Turn in Simulacrumble
    .target ?
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
    .turnin 29617 >>Turn in Tian Monastery
    .accept 29618 >>Accept The High Elder
    .target Lin Tenderpaw
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r
    .turnin 29618 >>Turn in The High Elder
    .target High Elder Cloudfall
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
    .accept 29619 >>Accept A Courteous Guest
    .target Lin Tenderpaw
step
    .goto 371,45.66,27.44
    >>Kill |cRXP_ENEMY_Greenwood Thiefs|r. Loot them for |cRXP_LOOT_Ripe Orange|r. It can also be picked up from |cRXP_PICK_Ripe Orange|r on the ground
    .complete 29619,1 --Ripe Orange (8)
    .mob Greenwood Thief
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
    .turnin 29619 >>Turn in A Courteous Guest
    .accept 29620 >>Accept The Great Banquet
    .target Lin Tenderpaw
step
    .isOnQuest 29620
    .goto 371,43.575,24.532
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Studious Chu|r
    .fp Tian Monastery >> Get the Tian Monastery flight path
    .target Studious Chu
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r
    .complete 29620,1 --High Elder Cloudfall
    .target High Elder Cloudfall
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r
    .turnin 29620 >>Turn in The Great Banquet
    .target High Elder Cloudfall
step
    .goto 371,43.13,23.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao|r
    .accept 29622 >>Accept Your Training Starts Now
    .accept 29626 >>Accept Groundskeeper Wu
    .target Xiao
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29626 >>Turn in Groundskeeper Wu while you are here
    .isQuestComplete 29626
    .target Groundskeeper Wu
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r
    .accept 29632 >>Accept Becoming Battle-Ready
    .target Master Stone Fist
step
    .goto 371,43.70,24.97
    >>Kill |cRXP_ENEMY_Tian Pupils|r
    .complete 29632,1 --Tian Pupil slain (8)
    .mob Tian Pupil
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r
    .turnin 29632 >>Turn in Becoming Battle-Ready
    .accept 29633 >>Accept Zhi-Zhi, the Dextrous
    .accept 29634 >>Accept Husshun, the Wizened
    .target Master Stone Fist
step
    .goto 371,43.06,26.00
    >>Kill |cRXP_ENEMY_Zhi-Zhi|r
    >>Kill |cRXP_ENEMY_Husshun|r
    .complete 29633,1 --Zhi-Zhi slain (1)
    .complete 29634,1 --Husshun slain (1)
    .mob Zhi-Zhi
    .mob Husshun
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .turnin 29622 >>Turn in Your Training Starts Now while you are here
    .isQuestComplete 29622
    .target Instructor Xann
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r
    .turnin 29633 >>Turn in Zhi-Zhi, the Dextrous
    .turnin 29634 >>Turn in Husshun, the Wizened
    .accept 29635 >>Accept Xiao, the Eater
    .target Master Stone Fist
step
    .goto 371,43.13,23.63
    >>Kill |cRXP_ENEMY_Xiao|r
    .complete 29635,1 --Xiao slain (1)
    .mob Xiao
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r
    .turnin 29635 >>Turn in Xiao, the Eater
    .accept 29636 >>Accept A Test of Endurance
    .target Master Stone Fist
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .turnin 29622 >>Turn in Your Training Starts Now
    .target Instructor Xann
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29626 >>Turn in Groundskeeper Wu
    .accept 29627 >>Accept A Proper Weapon
    .target Groundskeeper Wu
step
    #completewith Along259
    >>As you go: Pick up |cRXP_PICK_Rattan Switch|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 29627,1 --Rattan Switch (6)
step
    .goto 371,41.40,24.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Black Walnut Extract|r from |cRXP_FRIENDLY_June Whiteblossom|r
    .complete 29627,2 --Black Walnut Extract (1)
    .target June Whiteblossom
step
    #label Along259
    .goto 371,41.78,24.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Triple-Bittered Ale|r from |cRXP_FRIENDLY_Brewmaster Lei Kanglei|r
    .complete 29627,3 --Triple-Bittered Ale (3)
    .target Brewmaster Lei Kanglei
step
    #loop
    .goto 371,42.39,24.71,0
    .goto 371,42.39,24.71,40,0
    .goto 371,40.56,24.80,40,0
    >>Pick up |cRXP_PICK_Rattan Switch|r from the ground
    .complete 29627,1 --Rattan Switch (6)
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .turnin 29636 >>Turn in A Test of Endurance while you are here
    .isQuestComplete 29636
    .target Instructor Myang
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29627 >>Turn in A Proper Weapon
    .accept 29629 >>Accept A Steady Hand
    .accept 29630 >>Accept And a Heavy Fist
    .accept 29628 >>Accept A Strong Back
    .target Groundskeeper Wu
step
    #completewith Along263
    >>As you go: Kill |cRXP_ENEMY_Greenwood Tricksters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29630,1 --Greenwood Trickster slain (10)
    .mob Greenwood Trickster
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .turnin 29636 >>Turn in A Test of Endurance
    .target Instructor Myang
step
    #label Along263
    .goto 371,38.01,23.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Shan Long|r
    .accept 29631 >>Accept Burning Bright
    .target Guard Shan Long
step
    #loop
    .goto 371,35.00,21.40,0
    .goto 371,35.00,21.40,40,0
    .goto 371,37.60,18.20,40,0
    >>Open the |cRXP_PICK_Blushleaf Cluster|r. Loot it for |cRXP_LOOT_Blushleaf Extract|r
    >>Kill |cRXP_ENEMY_Greenwood Tricksters|r
    >>Kill |cRXP_ENEMY_Waxwood Matriarches|r and |cRXP_ENEMY_Waxwood Hunters|r
    .complete 29629,1 --Blushleaf Extract (1)
    .complete 29630,1 --Greenwood Trickster slain (10)
    .complete 29631,1 --Waxwood Matriarch (8)
    .mob Greenwood Trickster
    .mob Waxwood Matriarch
    .mob Waxwood Hunter
step
    .goto 371,41.62,23.70
    >>Obtain a Boiling Cauldron from Mother Wu in the Waxwood Forest, then return to Groundskeeper Wu in the Tian Monastery.
    .complete 29628,1 --Groundskeeper Wu
    .target Groundskeeper Wu
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29629 >>Turn in A Steady Hand while you are here
    .isQuestComplete 29629
    .target Groundskeeper Wu
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29630 >>Turn in And a Heavy Fist while you are here
    .isQuestComplete 29630
    .target Groundskeeper Wu
step
    .goto 371,37.74,17.57
    >>Click the |cRXP_PICK_Boiling Cauldron|r
    .complete 29628,2 --Boiling Cauldron
step
    .goto 371,38.01,23.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Shan Long|r
    .turnin 29631 >>Turn in Burning Bright
    .target Guard Shan Long
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29629 >>Turn in A Steady Hand
    .turnin 29630 >>Turn in And a Heavy Fist
    .turnin 29628 >>Turn in A Strong Back
    .target Groundskeeper Wu
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .accept 29637 >>Accept The Rumpus
    .target Instructor Myang
step
    .goto 371,39.00,23.18
    >>Survive the Melee
    .complete 29637,1 --Survive the Melee
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .turnin 29637 >>Turn in The Rumpus
    .target Instructor Myang
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .accept 29623 >>Accept Perfection
    .target Instructor Xann
step
    .goto 371,41.36,27.57
    >>Survive the Melee
    .complete 29623,1 --Survive the Melee
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .turnin 29623 >>Turn in Perfection
    .accept 29624 >>Accept Attention
    .target Instructor Xann
step
    .goto 371,41.00,27.00
    >>Kill |cRXP_ENEMY_Training Bags|r
    .complete 29624,1 --Training Bag (2)
    .mob Training Bag
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .turnin 29624 >>Turn in Attention
    .accept 29639 >>Accept Flying Colors
    .target Instructor Xann
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r
    .turnin 29639 >>Turn in Flying Colors
    .target High Elder Cloudfall
step
    .goto 371,54.92,45.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Wei|r
    .turnin 29993 >>Turn in Find the Boy
    .target Inkmaster Wei
    .isOnQuest 29993
step
    .goto 371,54.92,45.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Wei|r
    .accept 29995 >>Accept Shrine of the Dawn
    .target Inkmaster Wei
    .isQuestTurnedIn 29993 --any of: Find the Boy
    .xp <85,1
step
    .goto 371,54.89,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Glenzu|r
    .accept 29881 >>Accept The Perfect Color
    .target Inkmaster Glenzu
step
    .goto 371,55.31,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r
    .accept 29882 >>Accept Quill of Stingers
    .target Inkmaster Jo Po
step
    #loop
    .goto 371,55.98,43.07,0
    .goto 371,55.98,43.07,40,0
    .goto 371,52.91,45.46,40,0
    >>Loot the |cRXP_PICK_Freshly Fallen Petals|r for |cRXP_LOOT_Freshly Fallen Petal|r
    >>Kill |cRXP_ENEMY_Orchard Wasps|r. Loot them for |cRXP_LOOT_Wasp Stinger|r
    .complete 29881,1 --Freshly Fallen Petal (8)
    .complete 29882,1 --Wasp Stinger (6)
    .mob Orchard Wasp
step
    .goto 371,55.31,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r
    .turnin 29882 >>Turn in Quill of Stingers while you are here
    .isQuestComplete 29882
    .target Inkmaster Jo Po
step
    .goto 371,54.89,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Glenzu|r
    .turnin 29881 >>Turn in The Perfect Color
    .target Inkmaster Glenzu
step
    .goto 371,55.31,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r
    .turnin 29882 >>Turn in Quill of Stingers
    .target Inkmaster Jo Po
step
    .goto 371,52.57,38.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syra Goldendraft|r
    .turnin 29995 >>Turn in Shrine of the Dawn
    .target Syra Goldendraft
    .isOnQuest 29995
step
    .goto 371,52.57,38.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syra Goldendraft|r
    .accept 29920 >>Accept Getting Permission
    .target Syra Goldendraft
    .isQuestTurnedIn 29995 --any of: Shrine of the Dawn
    .xp <85,1
step
    .goto 371,54.09,38.46
    >>Kill |cRXP_ENEMY_Pandriarch Bramblestaff|r
    .complete 29920,2 --Pandriarch Bramblestaff slain (1)
    .mob Pandriarch Bramblestaff
    .isOnQuest 29920
step
    .goto 371,53.59,36.73
    >>Kill |cRXP_ENEMY_Pandriarch Goldendraft|r
    .complete 29920,3 --Pandriarch Goldendraft slain (1)
    .mob Pandriarch Goldendraft
    .isOnQuest 29920
step
    .goto 371,52.54,35.57
    >>Kill |cRXP_ENEMY_Pandriarch Windfur|r
    .complete 29920,1 --Pandriarch Windfur slain (1)
    .mob Pandriarch Windfur
    .isOnQuest 29920
step
    .goto 371,52.59,38.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
    .turnin 29920 >>Turn in Getting Permission
    .target Lo Wanderbrew
    .isOnQuest 29920
step
    .goto 371,48.31,61.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
    .turnin 29931 >>Turn in The Serpent's Heart
    .target Foreman Raike
    .isOnQuest 29931
step
    .goto 371,48.31,61.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
    .accept 30495 >>Accept Love's Labor
    .target Foreman Raike
    .isQuestTurnedIn 29931 --any of: The Serpent's Heart
    .xp <85,1
step
    .goto 371,48.18,60.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitemaster Shoku|r
    .complete 30495,3 --Kitemaster Shoku
    .target Kitemaster Shoku
    .isOnQuest 30495
step
    .goto 371,47.58,60.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Emi|r
    .complete 30495,4 --Taskmaster Emi
    .target Taskmaster Emi
    .isOnQuest 30495
step
    .goto 371,46.94,60.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Sawa|r
    .complete 30495,2 --Surveyor Sawa
    .target Surveyor Sawa
    .isOnQuest 30495
step
    .goto 371,46.40,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Dinh|r
    .complete 30495,1 --Historian Dinh
    .target Historian Dinh
    .isOnQuest 30495
step
    .goto 371,48.31,61.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
    .turnin 30495 >>Turn in Love's Labor
    .target Foreman Raike
    .isOnQuest 30495
step
    .goto 371,48.31,61.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
    .accept 29932 >>Accept The Temple of the Jade Serpent
    .target Foreman Raike
    .isQuestTurnedIn 30495 --any of: Love's Labor
    .xp <85,1
step
    .goto 371,55.84,57.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
    .complete 29932,1 --Elder Sage Wind-Yi
    .target Elder Sage Wind-Yi
    .isOnQuest 29932
step
    .goto 371,58.13,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
    .turnin 29932 >>Turn in The Temple of the Jade Serpent
    .target Elder Sage Rain-Zhu
    .isOnQuest 29932
step
    .goto 371,58.13,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
    .accept 29997 >>Accept The Scryer's Dilemma
    .accept 29998 >>Accept The Librarian's Quandary
    .target Elder Sage Rain-Zhu
    .isQuestTurnedIn 29932 --any of: The Temple of the Jade Serpent
    .xp <85,1
step
    .goto 371,58.03,59.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .accept 29999 >>Accept The Rider's Bind
    .accept 30005 >>Accept Lighting Up the Sky
    .target Fei
    .isQuestTurnedIn 29932 --any of: The Temple of the Jade Serpent
    .xp <85,1
step
    .goto 371,58.20,61.20
    >>Interact with |cRXP_FRIENDLY_Playful Crimson Serpents|r
    .complete 29999,2 --Playful Crimson Serpent (4)
    .target Playful Crimson Serpent
    .isOnQuest 29999
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .turnin 29998 >>Turn in The Librarian's Quandary
    .target Lorewalker Stonestep
    .isOnQuest 29998
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .accept 30001 >>Accept Moth-Ridden
    .accept 30002 >>Accept Pages of History
    .target Lorewalker Stonestep
    .isQuestTurnedIn 29998 --any of: The Librarian's Quandary
    .xp <85,1
step
    .goto 371,56.00,60.20
    >>Interact with |cRXP_FRIENDLY_Playful Gold Serpents|r
    .complete 29999,4 --Playful Gold Serpent (4)
    .target Playful Gold Serpent
    .isOnQuest 29999
step
    .goto 371,56.31,60.10
    >>Kill |cRXP_ENEMY_Bookworms|r
    .complete 30002,1 --Bookworm slain (12)
    .mob Bookworm
    .isOnQuest 30002
step
    .goto 371,56.60,60.60
    >>Kill |cRXP_ENEMY_Dappled Moths|r
    .complete 30001,1 --Dappled Moth slain (8)
    .mob Dappled Moth
    .isOnQuest 30001
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .turnin 30001 >>Turn in Moth-Ridden
    .target Lorewalker Stonestep
    .isOnQuest 30001
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .turnin 30002 >>Turn in Pages of History
    .target Lorewalker Stonestep
    .isOnQuest 30002
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .accept 30004 >>Accept Everything In Its Place
    .target Lorewalker Stonestep
    .isQuestTurnedIn 30001 --Moth-Ridden
    .isQuestTurnedIn 30002 --Pages of History
    .xp <85,1
step
    .goto 371,56.40,58.40
    >>Interact with |cRXP_FRIENDLY_Playful Emerald Serpents|r
    .complete 29999,3 --Playful Emerald Serpent (4)
    .target Playful Emerald Serpent
    .isOnQuest 29999
step
    .goto 371,56.80,55.60
    >>Kill |cRXP_ENEMY_Water Fiend|r and loot |cRXP_LOOT_Scryer's Staff|r
    .complete 29997,1 --Scryer's Staff (1)
    .mob Water Fiend
    .isOnQuest 29997
step
    .goto 371,57.57,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Mari|r
    .turnin 29997 >>Turn in The Scryer's Dilemma
    .target Wise Mari
    .isOnQuest 29997
step
    .goto 371,57.57,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Mari|r
    .accept 30011 >>Accept A New Vision
    .target Wise Mari
    .isQuestTurnedIn 29997 --any of: The Scryer's Dilemma
    .xp <85,1
step
    .goto 371,59.20,56.80
    >>Interact with |cRXP_FRIENDLY_Playful Azure Serpents|r
    .complete 29999,1 --Playful Azure Serpent (4)
    .target Playful Azure Serpent
    .isOnQuest 29999
step
    #loop
    .goto 371,58.30,58.20,0
    .goto 371,58.30,58.20,40,0
    .goto 371,57.50,61.40,40,0
    >>Click the |cRXP_PICK_Firework Launcher|r
    .complete 30005,1 --Firework Launcher
    .isOnQuest 30005
step
    .goto 371,58.13,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
    .turnin 30004 >>Turn in Everything In Its Place
    .target Elder Sage Rain-Zhu
    .isOnQuest 30004
step
    .goto 371,58.13,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
    .turnin 30011 >>Turn in A New Vision
    .target Elder Sage Rain-Zhu
    .isOnQuest 30011
step
    .goto 371,58.03,59.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .turnin 29999 >>Turn in The Rider's Bind
    .target Fei
    .isOnQuest 29999
step
    .goto 371,58.03,59.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .turnin 30005 >>Turn in Lighting Up the Sky
    .target Fei
    .isOnQuest 30005
step
    .goto 371,58.03,59.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .accept 30000 >>Accept The Jade Serpent
    .target Fei
    .isQuestTurnedIn 29999 --The Rider's Bind
    .isQuestTurnedIn 30004 --Everything In Its Place
    .isQuestTurnedIn 30005 --Lighting Up the Sky
    .isQuestTurnedIn 30011 --A New Vision
    .xp <85,1
step
    .goto 371,58.03,59.01
    >>Listen to the Jade Serpent.
    .complete 30000,1 --Kill Credit: Jade Serpent (1)
    .isOnQuest 30000
step
    .goto 371,55.84,57.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
    .turnin 30000 >>Turn in The Jade Serpent
    .target Elder Sage Wind-Yi
    .isOnQuest 30000
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,55.84,57.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
    .accept 30498 >>Accept Get Back Here!
    .target Elder Sage Wind-Yi
    .isQuestTurnedIn 30000 --any of: The Jade Serpent
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.55,82.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
    .accept 30565 >>Accept An Unexpected Advantage
    .target Sully "The Pickle" McLeary
    .isQuestTurnedIn 30000 --any of: The Jade Serpent
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.07,80.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .turnin 30498 >>Turn in Get Back Here!
    .target Admiral Taylor
    .isOnQuest 30498
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.07,80.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .accept 30568 >>Accept Helping the Cause
    .target Admiral Taylor
    .isQuestTurnedIn 30000 --any of: The Jade Serpent
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,54.40,80.40
    >>Kill |cRXP_ENEMY_Hozen Brawler|r
    .complete 30568,2 --Hozen Brawler slain (1)
    .mob Hozen Brawler
    .isOnQuest 30568
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,59.13,84.57
    >>Kill |cRXP_ENEMY_Pearlfin Recruits|r
    .complete 30568,1 --Pearlfin Recruit slain (8)
    .mob Pearlfin Recruit
    .isOnQuest 30568
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,60.29,87.43
    >>Check in with Bold Karasshi, Amber Kearnen, and Mishka.
    .complete 30568,3 --Wounded Pearlfin
    .target Wounded Pearlfin
    .isOnQuest 30568
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,64.20,79.40,0
    .goto 371,64.20,79.40,40,0
    .goto 371,62.80,76.60,40,0
    >>Kill |cRXP_ENEMY_Slingtail Ambusher|r and loot |cRXP_LOOT_Rusty Locking Bolt|r
    .complete 30565,2 --Rusty Locking Bolt (1)
    .mob Slingtail Ambusher
    .isOnQuest 30565
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 371,62.80,76.60,0
    .goto 371,62.80,76.60,40,0
    .goto 371,64.20,79.40,40,0
    >>Kill |cRXP_ENEMY_Slingtail Ambusher|r and loot |cRXP_LOOT_Water-Damaged Gear|r
    .complete 30565,1 --Water-Damaged Gear (1)
    .mob Slingtail Ambusher
    .isOnQuest 30565
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.07,80.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
    .turnin 30568 >>Turn in Helping the Cause
    .target Admiral Taylor
    .isOnQuest 30568
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.55,82.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
    .turnin 30565 >>Turn in An Unexpected Advantage
    .target Sully "The Pickle" McLeary
    .isOnQuest 30565
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,58.85,81.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31362 >>Accept Last Piece of the Puzzle
    .target Lorewalker Cho
    .isQuestTurnedIn 30565 --An Unexpected Advantage
    .isQuestTurnedIn 30568 --Helping the Cause
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,44.49,66.91
    >>Click the |cRXP_PICK_Cho Family Shrine|r
    .complete 31362,1 --Cho Family Shrine
    .isOnQuest 31362
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,44.78,67.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31362 >>Turn in Last Piece of the Puzzle
    .target Lorewalker Cho
    .isOnQuest 31362
step
    .goto 371,44.78,67.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31303 >>Accept The Seal is Broken
    .target Lorewalker Cho
    .isQuestTurnedIn 30485,31362 --any of: Last Piece of the Puzzle, Last Piece of the Puzzle
    .xp <85,1
step
    #loop
    .goto 371,46.58,58.95,0
    .goto 371,46.58,58.95,40,0
    .goto 371,46.93,62.54,40,0
    .goto 371,48.37,62.03,40,0
    .goto 371,48.67,58.91,40,0
    .goto 371,49.36,60.79,40,0
    >>Seal 12 Sha Fissures to banish the Sha of Doubt.
    .complete 31303,1 --Sha of Doubt Portal
    .target Sha of Doubt Portal
    .isOnQuest 31303
step
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31303 >>Turn in The Seal is Broken
    .target Lorewalker Cho
    .isOnQuest 31303
step
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31319 >>Accept Emergency Response << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 30500 >>Accept Residual Fallout
    .accept 30502 >>Accept Jaded Heart
    .target Lorewalker Cho
    .isQuestTurnedIn 31303 --any of: The Seal is Broken
    .xp <85,1
step
    .goto 371,47.35,59.73
    >>Pick up |cRXP_PICK_Celestial Jade|r from the ground
    .collect 80074,1,30502,1 --Celestial Jade (1)
    .isOnQuest 30502
step
    #loop
    .goto 371,47.87,58.20,0
    .goto 371,47.87,58.20,40,0
    .goto 371,47.02,62.54,40,0
    >>Kill |cRXP_ENEMY_Sha Remnants|r
    .complete 30502,1 --Sha Remnant (6)
    .mob Sha Remnant
    .isOnQuest 30502
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,47.40,59.20
    >>Interact with |cRXP_FRIENDLY_Sully|r
    .complete 31319,3 --Sully
    .target Sully
    .isOnQuest 31319
step
    #loop
    .goto 371,48.51,61.09,0
    .goto 371,48.51,61.09,40,0
    .goto 371,46.44,60.01,40,0
    >>Kill |cRXP_ENEMY_Sha Echos|r
    .complete 30500,1 --Sha Echo slain (10)
    .mob Sha Echo
    .isOnQuest 30500
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,46.40,61.60
    >>Interact with |cRXP_FRIENDLY_Mishka|r
    .complete 31319,2 --Mishka
    .target Mishka
    .isOnQuest 31319
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,47.60,62.00
    >>Interact with |cRXP_FRIENDLY_Admiral Taylor|r
    .complete 31319,1 --Admiral Taylor
    .target Admiral Taylor
    .isOnQuest 31319
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31319 >>Turn in Emergency Response
    .target Lorewalker Cho
    .isOnQuest 31319
step
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30500 >>Turn in Residual Fallout
    .target Lorewalker Cho
    .isOnQuest 30500
step
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30502 >>Turn in Jaded Heart
    .target Lorewalker Cho
    .isOnQuest 30502
step
    .goto 371,49.30,61.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .accept 30648 >>Accept Moving On
    .target Fei
    .isQuestTurnedIn 30504,31319 --any of: Emergency Response, Emergency Response
    .xp <85,1
step
    .goto 371,49.30,61.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .complete 30648,1 --Fei
    .target Fei
    .isOnQuest 30648
step
    .goto 371,28.19,38.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeek Jeek|r
    .accept 31241 >>Accept Wicked Wikkets
    .target Jeek Jeek
    .isQuestTurnedIn 29879 --any of: Swallowed Whole
    .xp <85,1
step
    #loop
    .goto 371,30.69,41.41,0
    .goto 371,30.69,41.41,40,0
    .goto 371,32.58,40.47,40,0
    >>Kill |cRXP_ENEMY_Battleworn Paratroopers|r. Loot them for |cRXP_LOOT_Alliance Service Medallion|r
    .complete 31241,1 --Alliance Service Medallion (6)
    .mob Battleworn Paratrooper
    .isOnQuest 31241
step
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .turnin 31241 >>Turn in Wicked Wikkets
    .target Chief Kah Kah
    .isOnQuest 31241
step
    .goto 371,22.90,30.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Empty Package|r
    .accept 31112 >>Accept They're So Thorny!
    .target Empty Package
    .isQuestTurnedIn 29821 --any of: Missed Me By... That Much!
    .xp <85,1
step
    #loop
    .goto 371,24.63,27.61,0
    .goto 371,24.63,27.61,40,0
    .goto 371,25.82,25.84,40,0
    >>Kill |cRXP_ENEMY_Water Sprites|r. Loot them for |cRXP_LOOT_Emergency Supplies|r
    .complete 31112,1 --Emergency Supplies (5)
    .mob Water Sprite
    .isOnQuest 31112
step
    .goto 371,28.11,24.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31112 >>Turn in They're So Thorny!
    .unitscan Rivett Clutchpop
    .isOnQuest 31112
step
    +|cRXP_WARN_That is all of The Jade Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Valley of the Four Winds|r: Moving On
step
    +|cRXP_WARN_Suggested next zones at level 86|r: |cRXP_FRIENDLY_Kun-Lai Summit|r (about 0.6 levels of quests, starting around Smokey Sootassle). Completing this step loads the guide for Kun-Lai Summit --RouteBuilder:next
step
    +|cRXP_WARN_The rest of The Jade Forest is planned from level 89.|r Load its guide for level 89 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 86 - 90 The Jade Forest
#subweight -86
#name 89-90 The Jade Forest: around Pei-Zhi

step
    .goto 371,44.20,14.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29749 >>Accept An Urgent Plea
    .target Pei-Zhi
    .isQuestTurnedIn 29747 --Break the Cycle
    .isQuestTurnedIn 29748 --Simulacrumble
step
    .goto 371,44.20,14.94
    >>Kill |cRXP_ENEMY_Pei-Zhi|r
    .complete 29749,1 --Pei-Zhi slain (1)
    .mob Pei-Zhi
    .isOnQuest 29749
step
    .goto 371,44.23,14.90
    >>Pick up |cRXP_PICK_Staff of Pei-Zhi|r from the ground
    .complete 29749,2 --Staff of Pei-Zhi (1)
    .isOnQuest 29749
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29749 >>Turn in An Urgent Plea
    .target Pei-Zhi
    .isOnQuest 29749
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29750 >>Accept Vessels of the Spirit
    .accept 29751 >>Accept Ritual Artifacts
    .accept 29752 >>Accept The Wayward Dead
    .target Pei-Zhi
    .isQuestTurnedIn 29749 --any of: An Urgent Plea
step
    .goto 371,42.68,15.75
    >>Pick up |cRXP_PICK_Jade Cong|r from the ground
    .complete 29751,1 --Jade Cong (1)
    .isOnQuest 29751
step
    .goto 371,42.27,17.09
    >>Pick up |cRXP_PICK_Pungent Ritual Candle|r from the ground
    .complete 29751,3 --Pungent Ritual Candle (1)
    .isOnQuest 29751
step
    .goto 371,41.63,14.30
    >>Pick up |cRXP_PICK_Chipped Ritual Bowl|r from the ground
    .complete 29751,2 --Chipped Ritual Bowl (1)
    .isOnQuest 29751
step
    .goto 371,41.41,16.05
    >>Interact with |cRXP_FRIENDLY_Wayward Ancestors|r
    .complete 29752,1 --Wayward Ancestor (10)
    .target Wayward Ancestor
    .isOnQuest 29752
step
    #loop
    .goto 371,42.23,16.89,0
    .goto 371,42.23,16.89,40,0
    .goto 371,41.03,13.99,40,0
    >>Kill |cRXP_ENEMY_Shan'ze Spiritclaws|r. Loot them for |cRXP_LOOT_Spirit Bottle|r
    .complete 29750,1 --Spirit Bottle (8)
    .mob Shan'ze Spiritclaw
    .isOnQuest 29750
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29750 >>Turn in Vessels of the Spirit
    .target Pei-Zhi
    .isOnQuest 29750
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29751 >>Turn in Ritual Artifacts
    .target Pei-Zhi
    .isOnQuest 29751
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29752 >>Turn in The Wayward Dead
    .target Pei-Zhi
    .isOnQuest 29752
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29753 >>Accept Back to Nature
    .target Pei-Zhi
    .isQuestTurnedIn 29750 --any of: Vessels of the Spirit
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29756 >>Accept A Humble Offering
    .target Pei-Zhi
    .isQuestTurnedIn 29750 --Vessels of the Spirit
    .isQuestTurnedIn 29751 --Ritual Artifacts
    .isQuestTurnedIn 29752 --The Wayward Dead
step
    .goto 371,44.24,15.02
    >>Throw Spirit Bottles on the ground in Tideview Thicket to release 8 Beast Spirits.
    .complete 29753,1 --Peaceful Beast Spirit (8)
    .isOnQuest 29753
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29753 >>Turn in Back to Nature while you are here
    .isQuestComplete 29753
    .target Pei-Zhi
step
    .goto 371,38.72,11.52
    >>Pick up |cRXP_PICK_Tidemist Cap|r from the ground
    .complete 29756,1 --Tidemist Cap (10)
    .isOnQuest 29756
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29753 >>Turn in Back to Nature
    .target Pei-Zhi
    .isOnQuest 29753
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29756 >>Turn in A Humble Offering
    .target Pei-Zhi
    .isOnQuest 29756
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29754 >>Accept To Bridge Earth and Sky
    .target Pei-Zhi
    .isQuestTurnedIn 29753 --Back to Nature
    .isQuestTurnedIn 29756 --A Humble Offering
step
    .goto 371,43.83,12.53
    >>Protect Pei-Zhi during his ritual at the Terrace of Ten Thunders.
    .complete 29754,1 --Pei-Zhi
    .target Pei-Zhi
    .isOnQuest 29754
step
    .goto 371,43.77,12.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 29754 >>Turn in To Bridge Earth and Sky
    .target ?
    .isOnQuest 29754
step
    .goto 371,43.85,12.47
    >>Click the |cRXP_PICK_The Tan-Chao|r
    .accept 29755 >>Accept Pei-Back
    .isQuestTurnedIn 29754 --any of: To Bridge Earth and Sky
step
    .goto 371,42.48,10.31
    >>Kill |cRXP_ENEMY_Shan Jitong|r
    .complete 29755,1 --Shan Jitong slain (1)
    .mob Shan Jitong
    .isOnQuest 29755
step
    .goto 371,43.83,12.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29755 >>Turn in Pei-Back
    .target Pei-Zhi
    .isOnQuest 29755
step
    .goto 371,41.78,24.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Lei Kanglei|r
    .target Brewmaster Lei Kanglei
    .home >>Set your Hearthstone to Brewmaster Lei Kanglei's inn
step
    .goto 371,48.16,34.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Graceful Swan|r
    .accept 31279 >>Accept Everything I Know About Cooking
    .target Graceful Swan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,45.72,43.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peiji Goldendraft|r
    .accept 31392 >>Accept Temple of the White Tiger
    .target Peiji Goldendraft
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 371,45.72,43.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Grummle|r
    .accept 31254 >>Accept The Road to Kun-Lai
    .target Messenger Grummle
step
    .goto 371,45.78,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolo|r
    .accept 32018 >>Accept His Name Was... Stormstout
    .target Bolo
step
    +|cRXP_WARN_That is all of The Jade Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Kun-Lai Summit|r: The Road to Kun-Lai, Temple of the White Tiger << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Valley of the Four Winds|r: His Name Was... Stormstout, Everything I Know About Cooking
step
    +|cRXP_WARN_End of the The Jade Forest route.|r
]])
