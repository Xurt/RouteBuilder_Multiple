-- 87-90 Kun-Lai Summit: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 87, 90).
-- Split into 2 guides, listed under "87 - 91 Kun-Lai Summit" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Kun-Lai Summit.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 87 - 91 Kun-Lai Summit
#subweight -87
#name 87-88 Kun-Lai Summit: around Smokey Sootassle

step
    .goto 379,64.24,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Goldendraft|r
    .accept 31279 >>Accept Everything I Know About Cooking
    .target Li Goldendraft
step
    .goto 379,64.71,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
    .accept 30808 >>Accept A Grummle's Luck
    .target Lucky Eightcoins
    .xp <87,1
step
    .goto 379,64.88,60.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey Sootassle|r
    .accept 30616 >>Accept Traffic Issues
    .target Smokey Sootassle
    .xp <87,1
step
    .goto 379,65.49,60.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slimy Inkstain|r
    .accept 30614 >>Accept Oil Stop
    .target Slimy Inkstain
    .xp <87,1
step
    .goto 379,72.66,93.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Boof|r
    .accept 31285 >>Accept The Spring Drifter
    .target Brewmaster Boof
step
    .goto 379,71.57,92.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cheng|r
    .accept 30460 >>Accept Hit Medicine
    .target Apothecary Cheng
step
    .goto 379,72.28,91.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r
    .accept 30457 >>Accept Call Out Their Leader
    .target Mayor Bramblestaff
step
    #completewith Along5
    >>As you go: Kill |cRXP_ENEMY_Bataari Yaungols|r and |cRXP_ENEMY_Bataari Flamecallers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30457,2 --Bataari Yaungol (8)
    .mob Bataari Yaungol
    .mob Bataari Flamecaller
step
    .goto 379,70.75,90.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
    .accept 30459 >>Accept All of the Arrows
    .target Commander Hsieh
step
    #completewith Along5
    >>As you go: Pick up |cRXP_PICK_Arrow for Commander Hsieh|r from the ground. Kill |cRXP_ENEMY_Bataari Fire-Warrior|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30459,1 --Arrow for Commander Hsieh (1)
    .complete 30457,1 --Bataari Fire-Warrior slain (1)
    .mob Bataari Fire-Warrior
step
    #label Along5
    #loop
    .goto 379,69.97,89.76,0
    .goto 379,69.97,89.76,40,0
    .goto 379,67.74,88.96,40,0
    >>Interact with |cRXP_FRIENDLY_Injured Binan Warriors|r
    .complete 30460,1 --Injured Binan Warrior (8)
    .target Injured Binan Warrior
step
    #loop
    .goto 379,67.94,89.11,0
    .goto 379,67.94,89.11,40,0
    .goto 379,70.16,90.02,40,0
    >>Pick up |cRXP_PICK_Arrow for Commander Hsieh|r from the ground
    >>Kill |cRXP_ENEMY_Bataari Fire-Warrior|r
    >>Kill |cRXP_ENEMY_Bataari Yaungols|r and |cRXP_ENEMY_Bataari Flamecallers|r
    .complete 30459,1 --Arrow for Commander Hsieh (1)
    .complete 30457,1 --Bataari Fire-Warrior slain (1)
    .complete 30457,2 --Bataari Yaungol (8)
    .mob Bataari Fire-Warrior
    .mob Bataari Yaungol
    .mob Bataari Flamecaller
step
    .goto 379,70.75,90.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
    .turnin 30459 >>Turn in All of the Arrows
    .target Commander Hsieh
step
    .goto 379,72.28,91.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r
    .turnin 30457 >>Turn in Call Out Their Leader
    .target Mayor Bramblestaff
step
    .goto 379,71.57,92.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cheng|r
    .turnin 30460 >>Turn in Hit Medicine
    .target Apothecary Cheng
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,70.75,90.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
    .accept 30509 >>Accept General Nazgrim has Awakened
    .target Commander Hsieh
    .xp <87,1
step
    .goto 379,72.66,93.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Boof|r
    .turnin 31285 >>Turn in The Spring Drifter
    .target Brewmaster Boof
    .isQuestComplete 31285
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jo the Wind Watcher|r
    .target Jo the Wind Watcher
    .goto 379,72.536,94.156
    .fp Binan>>Get the Binan Village Flight Path
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,72.66,93.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Boof|r
    .complete 31255,2 --Brewmaster Boof
    .target Brewmaster Boof
    .isOnQuest 31255
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,72.28,91.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r
    .turnin 31255 >>Turn in The Road to Kun-Lai
    .target Mayor Bramblestaff
    .isQuestComplete 31255
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 87 >>Grind to level 87 (General Nazgrim has Awakened needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,70.75,90.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
    .accept 30509 >>Accept General Nazgrim has Awakened
    .target Commander Hsieh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,63.00,80.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 30509 >>Turn in General Nazgrim has Awakened
    .accept 30513 >>Accept Eastwind Rest
    .target General Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,61.49,80.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r
    .complete 30513,1 --Farmhand Ko
    .target Farmhand Ko
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,61.42,80.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
    .complete 30513,2 --Elder Shiao
    .target Elder Shiao
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,61.42,80.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
    .turnin 30513 >>Turn in Eastwind Rest
    .accept 30515 >>Accept Challenge Accepted
    .target Elder Shiao
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,58.24,84.39
    >>Kill |cRXP_ENEMY_Ur-Bataar|r
    .complete 30515,1 --Ur-Bataar slain (1)
    .mob Ur-Bataar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,61.42,80.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
    .turnin 30515 >>Turn in Challenge Accepted
    .accept 30620 >>Accept Mogu?! Oh No-gu!
    .target Elder Shiao
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,63.00,80.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 31256 >>Accept Round 'Em Up
    .target General Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along26
    >>As you go: Kill |cRXP_ENEMY_Wild Plains Yaks|r and |cRXP_ENEMY_Captured Yaks|r. |cRXP_WARN_Anything left is finished later|r
    .complete 31256,1 --Wild Plains Yak (3)
    .mob Wild Plains Yak
    .mob Captured Yak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,62.70,80.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .accept 30594 >>Accept Deanimate the Reanimated
    .target Shademaster Kiryn
step << Horde
    .isOnQuest 30619,30583,31256,30594,31251,30570
    .goto 379,62.44,80.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soaring Paw|r
    .fp >>Get the Eastwind Rest Flight Path
    .target Soaring Paw
    .subzoneskip 6094,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,62.79,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .accept 31251 >>Accept Best Meals Anywhere!
    .target Rivett Clutchpop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 379,62.54,79.44,0
    .goto 379,62.54,79.44,40,0
    .goto 379,61.49,80.42,40,0
    .goto 379,63.67,86.65,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30570 >>Accept Trouble on the Farmstead
    .unitscan Farmhand Ko
step
    .goto 379,59.60,78.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bao Jian|r
    .accept 30595 >>Accept Profiting off of the Past
    .target Bao Jian
step
    #loop
    .goto 379,59.04,74.73,0
    .goto 379,59.04,74.73,40,0
    .goto 379,57.08,76.44,40,0
    >>Kill |cRXP_ENEMY_Mogujia Soul-Caller|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Terracotta Warriors|r and |cRXP_ENEMY_Terracotta Guardians|r. Loot them for |cRXP_LOOT_Mogu Relic|r. It can also be picked up from |cRXP_PICK_Mogu Relic|r on the ground
    >>Kill |cRXP_ENEMY_Terracotta Guardians|r and |cRXP_ENEMY_Terracotta Warriors|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 30620,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Mogujia Soul-Caller slain (1)
    .complete 30595,1 --Mogu Relic (12)
    .complete 30594,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Terracotta Guardian (8)
    .mob Mogujia Soul-Caller << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Terracotta Warrior
    .mob Terracotta Guardian
step
    #label Along26
    .goto 379,59.60,78.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bao Jian|r
    .turnin 30595 >>Turn in Profiting off of the Past
    .target Bao Jian
step
    .goto 379,54.17,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
    .accept 30583 >>Accept Blue Dwarf Needs Food Badly
    .target Sully "The Pickle" McLeary
    .isQuestTurnedIn 30514 --any of: Challenge Accepted
    .xp <87,1
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabo the Flyer|r
    .target Tabo the Flyer
    .goto 379,54.001,84.195
    .fp Westwind Rest>>Get the Westwind Rest Flight Path
step
    .goto 379,60.24,85.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Chow|r
    .turnin 30570 >>Turn in Trouble on the Farmstead << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 30571 >>Accept Farmhand Freedom
    .target Farmer Chow
step
    .goto 379,60.17,85.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uyen Chow|r
    .accept 30581 >>Accept ... and the Pot, Too!
    .target Uyen Chow
step
    .goto 379,58.85,89.57
    >>Pick up |cRXP_PICK_Cast Iron Pot|r from the ground
    >>Kill |cRXP_ENEMY_Wascally Wirmens|r. Loot them for |cRXP_LOOT_Root Vegetable|r. It can also be picked up from |cRXP_PICK_Root Vegetable|r on the ground
    .complete 30581,2 --Cast Iron Pot (1)
    .complete 30581,1 --Root Vegetable (12)
    .mob Wascally Wirmen
step
    .goto 379,60.17,85.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uyen Chow|r
    .turnin 30581 >>Turn in ... and the Pot, Too! while you are here
    .isQuestComplete 30581
    .target Uyen Chow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along31
    >>As you go: Kill |cRXP_ENEMY_Highlands Mushans|r, |cRXP_ENEMY_Highlands Calfs|r, |cRXP_ENEMY_Summit Bonestrippers|r and |cRXP_ENEMY_Northwind Hawks|r. Loot them for |cRXP_LOOT_Kun-Lai Meaty Bits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 31251,1 --Kun-Lai Meaty Bits (160)
    .mob Highlands Mushan
    .mob Highlands Calf
    .mob Summit Bonestripper
    .mob Northwind Hawk
step
    #label Along31
    .goto 379,61.35,87.88
    >>Free 12 Farmstead Slaves by killing Ordo Overseers.
    .complete 30571,1 --Farmstead Slave (12)
    .target Farmstead Slave
step
    .goto 379,60.24,85.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Chow|r
    .turnin 30571 >>Turn in Farmhand Freedom while you are here
    .isQuestComplete 30571
    .target Farmer Chow
step
    .goto 379,60.17,85.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uyen Chow|r
    .turnin 30581 >>Turn in ... and the Pot, Too!
    .target Uyen Chow
step
    .goto 379,60.24,85.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Chow|r
    .turnin 30571 >>Turn in Farmhand Freedom
    .accept 31253 >>Accept Back to Eastwind Rest << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Farmer Chow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 379,61.61,90.11,0
    .goto 379,61.61,90.11,40,0
    .goto 379,63.76,88.79,40,0
    .goto 379,67.10,87.65,40,0
    >>Kill |cRXP_ENEMY_Highlands Mushans|r, |cRXP_ENEMY_Highlands Calfs|r, |cRXP_ENEMY_Summit Bonestrippers|r and |cRXP_ENEMY_Northwind Hawks|r. Loot them for |cRXP_LOOT_Kun-Lai Meaty Bits|r
    .complete 31251,1 --Kun-Lai Meaty Bits (160)
    .mob Highlands Mushan
    .mob Highlands Calf
    .mob Summit Bonestripper
    .mob Northwind Hawk
step
    #loop
    .goto 379,61.61,90.11,0
    .goto 379,61.61,90.11,40,0
    .goto 379,63.76,88.79,40,0
    .goto 379,67.10,87.65,40,0
    >>Kill |cRXP_ENEMY_Highlands Mushans|r, |cRXP_ENEMY_Highlands Calfs|r, |cRXP_ENEMY_Summit Bonestrippers|r and |cRXP_ENEMY_Northwind Hawks|r. Loot them for |cRXP_LOOT_Kun-Lai Meaty Bits|r
    .complete 30583,1 --Kun-Lai Meaty Bits (160)
    .mob Highlands Mushan
    .mob Highlands Calf
    .mob Summit Bonestripper
    .mob Northwind Hawk
    .isOnQuest 30583
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,61.00,81.40
    >>Kill |cRXP_ENEMY_Wild Plains Yaks|r and |cRXP_ENEMY_Captured Yaks|r
    .complete 31256,1 --Wild Plains Yak (3)
    .mob Wild Plains Yak
    .mob Captured Yak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,61.42,80.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
    .turnin 30620 >>Turn in Mogu?! Oh No-gu! while you are here
    .isQuestComplete 30620
    .target Elder Shiao
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,62.70,80.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .turnin 30594 >>Turn in Deanimate the Reanimated while you are here
    .isQuestComplete 30594
    .target Shademaster Kiryn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,62.79,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .turnin 31251 >>Turn in Best Meals Anywhere! while you are here
    .isQuestComplete 31251
    .target Rivett Clutchpop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,63.00,80.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31256 >>Turn in Round 'Em Up while you are here
    .isQuestComplete 31256
    .target General Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 379,62.54,79.44,0
    .goto 379,62.54,79.44,40,0
    .goto 379,61.49,80.42,40,0
    .goto 379,63.67,86.65,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31253 >>Turn in Back to Eastwind Rest
    .unitscan Farmhand Ko
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,61.42,80.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
    .turnin 30620 >>Turn in Mogu?! Oh No-gu!
    .accept 30655 >>Accept Pandaren Prisoners
    .target Elder Shiao
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,62.79,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .turnin 31251 >>Turn in Best Meals Anywhere!
    .accept 30656 >>Accept Barrels of Fun
    .target Rivett Clutchpop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,63.00,80.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31256 >>Turn in Round 'Em Up
    .accept 30657 >>Accept In Tents Channeling
    .target General Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,62.70,80.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .turnin 30594 >>Turn in Deanimate the Reanimated
    .target Shademaster Kiryn
step
    .goto 379,54.17,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
    .turnin 30583 >>Turn in Blue Dwarf Needs Food Badly
    .target Sully "The Pickle" McLeary
    .isOnQuest 30583
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along47
    >>As you go: Kill |cRXP_ENEMY_Pao-kun the Pyromancer|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30657,4 --Pao-kun the Pyromancer slain (1)
    .mob Pao-kun the Pyromancer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along44
    >>As you go: Pick up |cRXP_PICK_Explosives Barrel|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .collect 80528,1,30656,1 --Explosives Barrel (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,50.45,78.60
    >>Kill |cRXP_ENEMY_Musaan the Blazecaster|r
    >>Kill |cRXP_ENEMY_Harala the Firespeaker|r
    .complete 30657,1 --Musaan the Blazecaster slain (1)
    .complete 30657,3 --Harala the Firespeaker slain (1)
    .mob Musaan the Blazecaster
    .mob Harala the Firespeaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along44
    #loop
    .goto 379,49.60,78.80,0
    .goto 379,49.60,78.80,40,0
    .goto 379,48.00,80.40,40,0
    >>Interact with |cRXP_FRIENDLY_Pandaren Prisoners|r
    .complete 30655,1 --Pandaren Prisoner (8)
    .target Pandaren Prisoner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,49.61,78.99
    >>Pick up |cRXP_PICK_Explosives Barrel|r from the ground
    .collect 80528,1,30656,1 --Explosives Barrel (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,50.95,79.41
    >>Interact with |cRXP_FRIENDLY_Eastern Oil Rig|r
    .complete 30656,1 --Eastern Oil Rig
    .target Eastern Oil Rig
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along47
    .goto 379,49.65,81.06
    >>Interact with |cRXP_FRIENDLY_Southern Oil Rig|r
    .complete 30656,2 --Southern Oil Rig
    .target Southern Oil Rig
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,49.13,80.31
    >>Kill |cRXP_ENEMY_Pao-kun the Pyromancer|r
    >>Kill |cRXP_ENEMY_Akonu the Embercaller|r
    .complete 30657,4 --Pao-kun the Pyromancer slain (1)
    .complete 30657,2 --Akonu the Embercaller slain (1)
    .mob Pao-kun the Pyromancer
    .mob Akonu the Embercaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,47.87,81.52
    >>Interact with |cRXP_FRIENDLY_Western Oil Rig|r
    .complete 30656,3 --Western Oil Rig
    .target Western Oil Rig
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,44.48,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
    .turnin 31453 >>Turn in The Shado-Pan
    .target Shado-Master Chong
    .isOnQuest 31453
step
    .goto 379,44.48,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
    .accept 30665 >>Accept The Defense of Shado-Pan Fallback
    .accept 30670 >>Accept Turnabout
    .target Shado-Master Chong
step
    #completewith Along56
    >>As you go: Kill |cRXP_ENEMY_Blind Rages|r. Loot them for |cRXP_LOOT_Blind Rage Essence|r. Kill |cRXP_ENEMY_Sha-Infested Yaungols|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30670,1 --Blind Rage Essence (5)
    .complete 30665,1 --Sha-Infested Yaungol (15)
    .mob Blind Rage
    .mob Sha-Infested Yaungol
step
    .goto 379,42.94,88.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sya Zhong|r
    .accept 30682 >>Accept Holed Up
    .target Sya Zhong
step
    .goto 379,42.94,88.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sya Zhong|r
    .complete 30682,4 --Sya Zhong
    .target Sya Zhong
step
    .goto 379,41.04,86.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ya Firebough|r
    .complete 30682,2 --Ya Firebough
    .target Ya Firebough
step
    .goto 379,42.84,85.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Lady Fung|r
    .complete 30682,3 --Old Lady Fung
    .target Old Lady Fung
step
    #label Along56
    .goto 379,43.88,86.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin Warmkeg|r
    .complete 30682,1 --Jin Warmkeg
    .target Jin Warmkeg
step
    #loop
    .goto 379,44.60,87.40,0
    .goto 379,44.60,87.40,40,0
    .goto 379,41.96,87.42,40,0
    >>Kill |cRXP_ENEMY_Blind Rages|r. Loot them for |cRXP_LOOT_Blind Rage Essence|r
    >>Kill |cRXP_ENEMY_Sha-Infested Yaungols|r
    .complete 30670,1 --Blind Rage Essence (5)
    .complete 30665,1 --Sha-Infested Yaungol (15)
    .mob Blind Rage
    .mob Sha-Infested Yaungol
step
    .goto 379,44.48,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
    .turnin 30665 >>Turn in The Defense of Shado-Pan Fallback
    .turnin 30670 >>Turn in Turnabout
    .turnin 30682 >>Turn in Holed Up
    .accept 30690 >>Accept Unmasking the Yaungol
    .target Shado-Master Chong
step
    .goto 379,45.78,86.45
    >>Kill |cRXP_ENEMY_Malevolent Fury|r
    .complete 30690,2 --Malevolent Fury slain (1)
    .mob Malevolent Fury
step
    .goto 379,45.78,86.45
    >>Interact with |cRXP_FRIENDLY_Kobai|r
    .complete 30690,1 --Kobai
    .target Kobai
step
    .goto 379,44.48,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
    .turnin 30690 >>Turn in Unmasking the Yaungol
    .accept 30699 >>Accept To Winter's Blossom
    .target Shado-Master Chong
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Ni|r
    .target Kite Master Ni
    .goto 379/870,2091.700,1882.000
    .fp Shado-Pan Fallback >>Get the Shado-Pan Fallback Flight Path
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 379,63.67,86.65,0
    .goto 379,63.67,86.65,40,0
    .goto 379,61.49,80.42,40,0
    .goto 379,62.54,79.44,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31393 >>Accept Temple of the White Tiger
    .unitscan Farmhand Ko
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,63.00,80.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 30655 >>Turn in Pandaren Prisoners
    .target General Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,62.79,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .turnin 30656 >>Turn in Barrels of Fun
    .target Rivett Clutchpop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,61.42,80.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
    .accept 31451 >>Accept The Missing Merchant
    .target Elder Shiao
    .isQuestTurnedIn 30661 --The Ordo Warbringer
    .xp <87,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 379,62.54,79.44,0
    .goto 379,62.54,79.44,40,0
    .goto 379,61.49,80.42,40,0
    .goto 379,63.67,86.65,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31457 >>Accept Muskpaw Ranch
    .unitscan Farmhand Ko
    .isQuestTurnedIn 30661 --any of: The Ordo Warbringer
    .xp <87,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,62.70,80.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .accept 31459 >>Accept Cho's Missive
    .target Shademaster Kiryn
    .isQuestTurnedIn 30661 --The Ordo Warbringer
    .xp <87,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,74.97,88.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Shi|r
    .turnin 31451 >>Turn in The Missing Merchant
    .target Merchant Shi
    .isOnQuest 31451
step
    .goto 379,74.97,88.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Shi|r
    .accept 30467 >>Accept My Son...
    .accept 30469 >>Accept Repossession
    .target Merchant Shi
step
    .goto 379,74.79,88.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swordmistress Mei|r
    .accept 30468 >>Accept Enraged Vengeance
    .target Swordmistress Mei
step
    .goto 379,75.20,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
    .accept 30496 >>Accept The Waterspeaker's Staff
    .accept 30967 >>Accept Free the Dissenters
    .target Waterspeaker Gorai
step
    #completewith Along74
    >>As you go: Loot the |cRXP_PICK_Untainted Supplies|r for |cRXP_LOOT_Stolen Supplies|r. Kill |cRXP_ENEMY_Enraged Spearmans|r, |cRXP_ENEMY_Orachis|r, |cRXP_ENEMY_Enraged Tideweavers|r and |cRXP_ENEMY_Enraged Enforcers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30469,1 --Stolen Supplies (8)
    .complete 30468,1 --Enraged Spearman (8)
    .mob Enraged Spearman
    .mob Orachi
    .mob Enraged Tideweaver
    .mob Enraged Enforcer
step
    .goto 379,74.74,79.73
    >>Kill |cRXP_ENEMY_Orachi|r and loot |cRXP_LOOT_Stolen Inkgill Ritual Staff|r
    .complete 30496,1 --Stolen Inkgill Ritual Staff (1)
    .mob Orachi
step
    .goto 379,74.68,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu-Peng|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30467 >>Turn in My Son...
    .accept 30834 >>Accept Father and Child Reunion
    .unitscan Wu-Peng
step
    #label Along74
    #loop
    .goto 379,74.39,78.89,0
    .goto 379,74.39,78.89,40,0
    .goto 379,73.06,77.30,40,0
    .goto 379,74.39,83.51,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter|r
    .complete 30967,1 --Inkgill Dissenter (6)
    .target Inkgill Dissenter
step
    #loop
    .goto 379,73.86,77.74,0
    .goto 379,73.86,77.74,40,0
    .goto 379,74.45,84.08,40,0
    .goto 379,72.46,85.37,40,0
    >>Loot the |cRXP_PICK_Untainted Supplies|r for |cRXP_LOOT_Stolen Supplies|r
    >>Kill |cRXP_ENEMY_Enraged Spearmans|r, |cRXP_ENEMY_Orachis|r, |cRXP_ENEMY_Enraged Tideweavers|r and |cRXP_ENEMY_Enraged Enforcers|r
    .complete 30469,1 --Stolen Supplies (8)
    .complete 30468,1 --Enraged Spearman (8)
    .mob Enraged Spearman
    .mob Orachi
    .mob Enraged Tideweaver
    .mob Enraged Enforcer
step
    .goto 379,75.20,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
    .turnin 30496 >>Turn in The Waterspeaker's Staff
    .turnin 30967 >>Turn in Free the Dissenters
    .target Waterspeaker Gorai
step
    .goto 379,74.97,88.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Shi|r
    .turnin 30469 >>Turn in Repossession while you are here
    .isQuestComplete 30469
    .target Merchant Shi
step
    .goto 379,74.79,88.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swordmistress Mei|r
    .turnin 30468 >>Turn in Enraged Vengeance
    .target Swordmistress Mei
step
    .goto 379,75.20,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
    .accept 30480 >>Accept The Ritual
    .target Waterspeaker Gorai
    .xp <87,1
step
    .goto 379,74.92,88.72
    >>Reunite Wu-Peng and Merchant Shi
    .complete 30834,1 --Reunite Wu-Peng and Merchant Shi
step
    .goto 379,74.97,88.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Shi|r
    .turnin 30469 >>Turn in Repossession
    .turnin 30834 >>Turn in Father and Child Reunion
    .target Merchant Shi
step
    .goto 379,75.20,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
    .accept 30480 >>Accept The Ritual
    .target Waterspeaker Gorai
step
    #completewith Along81
    >>As you go: Kill |cRXP_ENEMY_Dead Inkgill Spearmans|r and |cRXP_ENEMY_Dead Inkgill Priests|r. Kill |cRXP_ENEMY_Explosive Hatred|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30480,2 --Dead Inkgill Spearman (8)
    .complete 30480,3 --Explosive Hatred (1)
    .mob Dead Inkgill Spearman
    .mob Dead Inkgill Priest
    .mob Explosive Hatred
step
    #label Along81
    .goto 379,75.20,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
    .complete 30480,1 --Waterspeaker Gorai
    .target Waterspeaker Gorai
step
    .goto 379,74.79,88.52
    >>Kill |cRXP_ENEMY_Dead Inkgill Spearmans|r and |cRXP_ENEMY_Dead Inkgill Priests|r
    >>Kill |cRXP_ENEMY_Explosive Hatred|r
    .complete 30480,2 --Dead Inkgill Spearman (8)
    .complete 30480,3 --Explosive Hatred (1)
    .mob Dead Inkgill Spearman
    .mob Dead Inkgill Priest
    .mob Explosive Hatred
step
    .goto 379,75.20,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
    .turnin 30480 >>Turn in The Ritual
    .accept 30828 >>Accept Cleansing the Mere
    .target Waterspeaker Gorai
step
    #loop
    .goto 379,71.60,85.40,0
    .goto 379,71.60,85.40,40,0
    .goto 379,69.40,85.00,40,0
    >>Kill |cRXP_ENEMY_Boiling Rages|r
    .complete 30828,1 --Boiling Rage slain (8)
    .mob Boiling Rage
step
    .goto 379,71.59,82.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
    .turnin 30828 >>Turn in Cleansing the Mere
    .accept 30855 >>Accept The Fall of Shai Hu
    .target Waterspeaker Gorai
step
    .goto 379,71.24,82.53
    >>Kill |cRXP_ENEMY_Shai Hu|r
    .complete 30855,1 --Shai Hu slain (1)
    .mob Shai Hu
step
    .goto 379,75.20,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
    .turnin 30855 >>Turn in The Fall of Shai Hu
    .target Waterspeaker Gorai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,71.24,69.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
    .turnin 31457 >>Turn in Muskpaw Ranch
    .target Lao Muskpaw
    .isOnQuest 31457
step
    .goto 379,71.24,69.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
    .accept 30488 >>Accept The Missing Muskpaw
    .accept 30489 >>Accept Fresh Needle Scent
    .target Lao Muskpaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,68.73,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
    .turnin 31393 >>Turn in Temple of the White Tiger
    .accept 31395 >>Accept A Celestial Experience
    .target Sunwalker Dezco
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Spirit of Anger|r. Kill |cRXP_ENEMY_Spirit of Violence|r. Kill |cRXP_ENEMY_Spirit of Hatred|r. |cRXP_WARN_Anything left is finished later|r
    .complete 31395,3 --Spirit of Anger slain (1)
    .complete 31395,2 --Spirit of Violence slain (1)
    .complete 31395,4 --Spirit of Hatred slain (1)
    .mob Spirit of Anger
    .mob Spirit of Violence
    .mob Spirit of Hatred
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along91
    .goto 379,68.80,42.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .complete 31395,1 --Xuen
    .target Xuen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,68.80,44.00
    >>Kill |cRXP_ENEMY_Spirit of Anger|r
    >>Kill |cRXP_ENEMY_Spirit of Violence|r
    >>Kill |cRXP_ENEMY_Spirit of Hatred|r
    .complete 31395,3 --Spirit of Anger slain (1)
    .complete 31395,2 --Spirit of Violence slain (1)
    .complete 31395,4 --Spirit of Hatred slain (1)
    .mob Spirit of Anger
    .mob Spirit of Violence
    .mob Spirit of Hatred
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,68.73,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
    .turnin 31395 >>Turn in A Celestial Experience
    .accept 31511 >>Accept A Witness to History
    .target Sunwalker Dezco
step
    #completewith next
    .zone 381 >>Travel to Pranksters' Hollow
    .zoneskip 381
step
    .goto 381,64.53,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
    .turnin 30488 >>Turn in The Missing Muskpaw
    .accept 30491 >>Accept At the Yak Wash
    .target Muskpaw Jr.
step
    #completewith next
    .zone 379 >>Leave Pranksters' Hollow for Kun-Lai Summit
    .zoneskip 379
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,56.18,91.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
    .complete 31511,1 --Sunwalker Dezco
    .target Sunwalker Dezco
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,63.00,80.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 31453 >>Accept The Shado-Pan
    .target General Nazgrim
    .isQuestTurnedIn 30661 --The Ordo Warbringer
    .xp <87,1
step
    .goto 379,70.39,70.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 30587 >>Accept Yakity Yak
    .target !
step
    #completewith Drop30582x1
    >>|cRXP_LOOT_Muskpaw's Keepsake|r can drop from |cRXP_ENEMY_Burilgi Despoiler|r, |cRXP_ENEMY_Burilgi Despoiler|r, |cRXP_ENEMY_The Fearmaster|r. Use it to start the quest if you get one
    .collect 80241,1,30582 --Muskpaw's Keepsake (1)
    .accept 30582 >>Accept The Late Mrs. Muskpaw
    .use 80241
step
    #completewith Drop30582x1
    >>As you go: Kill |cRXP_ENEMY_Tuffis|r and |cRXP_ENEMY_Escaped Yaks|r. Kill |cRXP_ENEMY_Needle Sprites|r. Loot them for |cRXP_LOOT_Pungent Sprite Needles|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30491,1 --Tuffi (8)
    .complete 30489,1 --Pungent Sprite Needles (100)
    .mob Tuffi
    .mob Escaped Yak
    .mob Needle Sprite
step
    #label Drop30582x1
    #loop
    .goto 379,70.44,74.21,0
    .goto 379,70.44,74.21,40,0
    .goto 379,66.58,69.91,40,0
    >>Kill |cRXP_ENEMY_Burilgi Despoilers|r
    .complete 30587,1 --Burilgi Despoiler (9)
    .mob Burilgi Despoiler
step
    .goto 379,71.24,69.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
    .turnin 30582 >>Turn in The Late Mrs. Muskpaw
    .target Lao Muskpaw
    .isOnQuest 30582
step
    .goto 379,71.24,69.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
    .turnin 30587 >>Turn in Yakity Yak while you are here
    .isQuestComplete 30587
    .target Lao Muskpaw
step
    .goto 379,71.24,69.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
    .accept 30804 >>Accept The Fearmaster
    .target Lao Muskpaw
    .isQuestTurnedIn 30582 --any of: The Late Mrs. Muskpaw
    .xp <87,1
step
    #completewith Drop30582x2
    >>|cRXP_LOOT_Muskpaw's Keepsake|r can drop from |cRXP_ENEMY_Burilgi Despoiler|r, |cRXP_ENEMY_Burilgi Despoiler|r, |cRXP_ENEMY_The Fearmaster|r. Use it to start the quest if you get one
    .collect 80241,1,30582 --Muskpaw's Keepsake (1)
    .accept 30582 >>Accept The Late Mrs. Muskpaw
    .use 80241
step
    #label Drop30582x2
    .goto 379,67.80,73.80
    >>Kill |cRXP_ENEMY_The Fearmaster|r
    .complete 30804,1 --The Fearmaster slain (1)
    .mob The Fearmaster
    .isOnQuest 30804
step
    #loop
    .goto 379,66.64,71.00,0
    .goto 379,66.64,71.00,40,0
    .goto 379,71.77,74.68,40,0
    .goto 379,72.35,71.98,40,0
    >>Kill |cRXP_ENEMY_Tuffis|r and |cRXP_ENEMY_Escaped Yaks|r
    >>Kill |cRXP_ENEMY_Needle Sprites|r. Loot them for |cRXP_LOOT_Pungent Sprite Needles|r
    .complete 30491,1 --Tuffi (8)
    .complete 30489,1 --Pungent Sprite Needles (100)
    .mob Tuffi
    .mob Escaped Yak
    .mob Needle Sprite
step
    .goto 379,71.24,69.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
    .turnin 30489 >>Turn in Fresh Needle Scent
    .turnin 30587 >>Turn in Yakity Yak
    .target Lao Muskpaw
step
    .goto 379,71.39,69.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
    .turnin 30491 >>Turn in At the Yak Wash
    .target Muskpaw Jr.
step
    .xp 87 >>Grind to level 87 (Back in Yak needs it)
step
    .goto 379,71.39,69.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
    .accept 30492 >>Accept Back in Yak
    .target Muskpaw Jr.
step
    .goto 379,65.38,61.45
    >>Bring Yak Herd to Lucky Eightcoins
    .complete 30492,1 --Bring Yak Herd to Lucky Eightcoins
step
    .goto 379,64.71,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
    .turnin 30492 >>Turn in Back in Yak while you are here
    .isQuestComplete 30492
    .target Lucky Eightcoins
step
    .goto 379,71.24,69.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
    .turnin 30804 >>Turn in The Fearmaster
    .target Lao Muskpaw
    .isOnQuest 30804
step
    .goto 379,65.49,60.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slimy Inkstain|r
    .accept 30614 >>Accept Oil Stop
    .target Slimy Inkstain
step
    .goto 379,64.88,60.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey Sootassle|r
    .accept 30616 >>Accept Traffic Issues
    .target Smokey Sootassle
step
    .goto 379,64.71,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
    .turnin 30492 >>Turn in Back in Yak
    .accept 30808 >>Accept A Grummle's Luck
    .target Lucky Eightcoins
step
    #loop
    .goto 379,62.78,67.23,0
    .goto 379,62.78,67.23,40,0
    .goto 379,62.61,68.30,40,0
    >>Open the |cRXP_PICK_Yaungol Oil Derrick|r. Loot it for |cRXP_LOOT_Filled Oil Vial|r
    >>Loot the |cRXP_PICK_Stolen Bag of Luckydos|r for |cRXP_LOOT_Stolen Luckydos|r
    >>Kill |cRXP_ENEMY_Ruqin Infantries|r, |cRXP_ENEMY_Ruqin Elders|r and |cRXP_ENEMY_Ruqin Outriders|r
    .complete 30614,1 --Filled Oil Vial (1)
    .complete 30808,1 --Stolen Luckydos (8)
    .complete 30616,1 --Ruqin Infantry (8)
    .mob Ruqin Infantry
    .mob Ruqin Elder
    .mob Ruqin Outrider
step
    .goto 379,64.71,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
    .turnin 30808 >>Turn in A Grummle's Luck
    .target Lucky Eightcoins
step
    .goto 379,65.49,60.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slimy Inkstain|r
    .turnin 30614 >>Turn in Oil Stop
    .target Slimy Inkstain
step
    .goto 379,64.88,60.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey Sootassle|r
    .turnin 30616 >>Turn in Traffic Issues
    .accept 30617 >>Accept Roadside Assistance
    .target Smokey Sootassle
step << skip
    .goto 379,66.290,50.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Greenfeather|r
    .target Big Greenfeather
    .fp Temple of the White Tiger>>Get the Temple of the White Tiger Flight Path
step
    #loop
    .goto 379,63.72,58.93,0
    .goto 379,63.72,58.93,40,0
    .goto 379,62.04,64.89,40,0
    >>Click the |cRXP_PICK_Lucky Burlap Incense|r
    .complete 30617,1 --Lucky Burlap Incense
step
    .goto 379,58.09,61.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Lintpocket|r
    .turnin 30617 >>Turn in Roadside Assistance
    .accept 30592 >>Accept The Burlap Trail: To Burlap Waystation
    .target Brother Lintpocket
step
    .goto 379,57.43,61.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironshaper Shou|r
    .target Ironshaper Shou
    .home >>Set your Hearthstone to Ironshaper Shou's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 379,57.34,61.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31459 >>Turn in Cho's Missive
    .target Lorewalker Cho
    .isOnQuest 31459
step
    .goto 379,57.34,61.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 30999 >>Accept Path Less Traveled
    .target Lorewalker Cho
step
    .goto 379,57.22,61.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Cloverleaf|r
    .turnin 30999 >>Turn in Path Less Traveled
    .accept 30601 >>Accept Instant Courage
    .target Uncle Cloverleaf
step
    .goto 379,57.72,61.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Sal|r
    .accept 30618 >>Accept Resupplying One Keg
    .target Big Sal
step
    .goto 379,57.32,60.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji-Lu the Lucky|r
    .accept 30621 >>Accept They Stole My Luck!
    .target Ji-Lu the Lucky
step
    .isOnQuest 30592,30601,30618
    .goto 379,57.726,59.692
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Little Cleankite|r
    .fp One Keg >> Get the One Keg flight path
    .target Little Cleankite
step
    #completewith next
    .zone 380 >>Travel to Howlingwind Cavern
    .zoneskip 380
step
    .goto 380,57.46,49.27
    >>Kill |cRXP_ENEMY_Hiding Guides|r
    .complete 30601,1 --Hiding Guide (3)
    .mob Hiding Guide
step
    .goto 380,45.23,61.90
    >>Pick up |cRXP_PICK_Stolen Supplies|r from the ground
    .complete 30618,1 --Stolen Supplies (8)
step
    #loop
    .goto 380,53.43,53.09,0
    .goto 380,53.43,53.09,40,0
    .goto 380,54.69,54.64,40,0
    .goto 380,59.22,50.51,40,0
    >>Kill |cRXP_ENEMY_Mischievous Snow Sprites|r and |cRXP_ENEMY_Suspicious Snow Piles|r. Loot them for |cRXP_LOOT_Lucky "Gold" Coin|r
    >>Kill |cRXP_ENEMY_Mischievous Snow Sprites|r and |cRXP_ENEMY_Suspicious Snow Piles|r. Loot them for |cRXP_LOOT_Lucky Virmen's Foot|r
    >>Kill |cRXP_ENEMY_Mischievous Snow Sprites|r and |cRXP_ENEMY_Suspicious Snow Piles|r. Loot them for |cRXP_LOOT_Lucky Yak Shoe|r
    >>Kill |cRXP_ENEMY_Mischievous Snow Sprites|r and |cRXP_ENEMY_Suspicious Snow Piles|r. Loot them for |cRXP_LOOT_Lucky Four Winds Clover|r
    .complete 30621,4 --Lucky "Gold" Coin (1)
    .complete 30621,1 --Lucky Virmen's Foot (1)
    .complete 30621,2 --Lucky Yak Shoe (1)
    .complete 30621,3 --Lucky Four Winds Clover (4)
    .mob Mischievous Snow Sprite
    .mob Suspicious Snow Pile
step
    #completewith next
    .zone 379 >>Leave Howlingwind Cavern for Kun-Lai Summit
    .zoneskip 379
step
    #completewith next
    .hs >>Hearth to Ironshaper Shou's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 379,57.32,60.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji-Lu the Lucky|r
    .turnin 30621 >>Turn in They Stole My Luck!
    .target Ji-Lu the Lucky
step
    .goto 379,57.72,61.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Sal|r
    .turnin 30618 >>Turn in Resupplying One Keg
    .target Big Sal
step
    .goto 379,57.22,61.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Cloverleaf|r
    .turnin 30601 >>Turn in Instant Courage
    .accept 30487 >>Accept Comin' Round the Mountain
    .target Uncle Cloverleaf
step
    .goto 379,57.30,61.60
    >>Kill |cRXP_ENEMY_Ji-Lu's Cart|r
    .complete 30487,1 --Ji-Lu's Cart slain (1)
    .mob Ji-Lu's Cart
step
    .goto 379,48.10,48.95
    >>Escort the cart and guides safely up Neverest Mountain.
    .complete 30487,2 --Neverrest Caravan Delivery Credit
    .target Neverrest Caravan Delivery Credit
step
    .goto 379,48.14,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Bluestring|r
    .turnin 30487 >>Turn in Comin' Round the Mountain
    .accept 30683 >>Accept One Traveler's Misfortune
    .target Lucky Bluestring
step
    .goto 379,50.06,49.23
    >>Click the |cRXP_PICK_Abandoned Wreckage|r
    >>Kill |cRXP_ENEMY_General Sho Lien|r
    .complete 30683,1 --Abandoned Wreckage
    .complete 30683,2 --General Sho Lien (1)
    .mob General Sho Lien
step
    .goto 379,48.14,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Bluestring|r
    .turnin 30683 >>Turn in One Traveler's Misfortune
    .accept 30684 >>Accept Seeker's Folly
    .target Lucky Bluestring
step
    .goto 379,42.67,50.06
    >>Click the |cRXP_PICK_Shrine of the Seeker's Body|r
    >>Click the |cRXP_PICK_Shrine of the Seeker's Breath|r
    >>Click the |cRXP_PICK_Shrine of the Seeker's Heart|r
    .complete 30684,1 --Shrine of the Seeker's Body
    .complete 30684,2 --Shrine of the Seeker's Breath
    .complete 30684,3 --Shrine of the Seeker's Heart
step
    .goto 379,43.79,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30684 >>Turn in Seeker's Folly
    .accept 30829 >>Accept The Tongue of Ba-Shon
    .target Lorewalker Cho
step
    .goto 379,43.60,51.20
    >>Kill |cRXP_ENEMY_Reclaimer Zuan|r
    .complete 30829,1 --Reclaimer Zuan slain (1)
    .mob Reclaimer Zuan
step
    .goto 379,43.79,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30829 >>Turn in The Tongue of Ba-Shon
    .accept 30795 >>Accept Staying Connected
    .target Lorewalker Cho
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .accept 31835 >>Accept Continue Your Training: Master Kistane
    .accept 31833 >>Accept Continue Your Training: Master Woo
    .accept 31836 >>Accept Continue Your Training: Master Yoon
    .accept 31838 >>Accept Continue Your Training: Master Tsang
    .accept 31837 >>Accept Continue Your Training: Master Cheng
    .accept 31839 >>Accept Continue Your Training: Master Hsu
    .target Master Hight
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .accept 31834 >>Accept Begin Your Training: Master Cheng
    .target Master Hight
    .isQuestTurnedIn 31856 --any of: The Peak of Serenity - Begin Your Training
    .xp <20,1
step << Monk
    #completewith Along139
    >>As you go: Kill |cRXP_ENEMY_Master Cheng|r. Kill |cRXP_ENEMY_Master Hsu|r. Kill |cRXP_ENEMY_Master Tsang|r. Kill |cRXP_ENEMY_Master Woo|r. Kill |cRXP_ENEMY_Master Yoon|r. Kill |cRXP_ENEMY_Master Kistane|r. |cRXP_WARN_Anything left is finished later|r
    .complete 31837,1 --Master Cheng slain (1)
    .complete 31839,1 --Master Hsu slain (1)
    .complete 31838,1 --Master Tsang slain (1)
    .complete 31833,1 --Master Woo slain (1)
    .complete 31836,1 --Master Yoon slain (1)
    .complete 31835,1 --Master Kistane slain (1)
    .mob Master Cheng
    .mob Master Hsu
    .mob Master Tsang
    .mob Master Woo
    .mob Master Yoon
    .mob Master Kistane
step << Monk
    #label Along139
    .goto 379,48.12,40.35
    >>Kill |cRXP_ENEMY_Master Cheng|r
    .complete 31834,1 --Master Cheng slain (1)
    .mob Master Cheng
    .isOnQuest 31834
step << Monk
    .goto 379,48.12,40.35
    >>Kill |cRXP_ENEMY_Master Cheng|r
    >>Kill |cRXP_ENEMY_Master Hsu|r
    >>Kill |cRXP_ENEMY_Master Tsang|r
    >>Kill |cRXP_ENEMY_Master Woo|r
    >>Kill |cRXP_ENEMY_Master Yoon|r
    >>Kill |cRXP_ENEMY_Master Kistane|r
    .complete 31837,1 --Master Cheng slain (1)
    .complete 31839,1 --Master Hsu slain (1)
    .complete 31838,1 --Master Tsang slain (1)
    .complete 31833,1 --Master Woo slain (1)
    .complete 31836,1 --Master Yoon slain (1)
    .complete 31835,1 --Master Kistane slain (1)
    .mob Master Cheng
    .mob Master Hsu
    .mob Master Tsang
    .mob Master Woo
    .mob Master Yoon
    .mob Master Kistane
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .turnin 31833 >>Turn in Continue Your Training: Master Woo while you are here
    .isQuestComplete 31833
    .target Master Hight
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .turnin 31835 >>Turn in Continue Your Training: Master Kistane while you are here
    .isQuestComplete 31835
    .target Master Hight
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .turnin 31836 >>Turn in Continue Your Training: Master Yoon while you are here
    .isQuestComplete 31836
    .target Master Hight
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .turnin 31837 >>Turn in Continue Your Training: Master Cheng while you are here
    .isQuestComplete 31837
    .target Master Hight
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .turnin 31838 >>Turn in Continue Your Training: Master Tsang while you are here
    .isQuestComplete 31838
    .target Master Hight
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .turnin 31839 >>Turn in Continue Your Training: Master Hsu while you are here
    .isQuestComplete 31839
    .target Master Hight
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .turnin 31834 >>Turn in Begin Your Training: Master Cheng
    .target Master Hight
    .isOnQuest 31834
step << Monk
    .goto 379,48.59,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
    .turnin 31837 >>Turn in Continue Your Training: Master Cheng
    .turnin 31836 >>Turn in Continue Your Training: Master Yoon
    .turnin 31835 >>Turn in Continue Your Training: Master Kistane
    .turnin 31838 >>Turn in Continue Your Training: Master Tsang
    .turnin 31833 >>Turn in Continue Your Training: Master Woo
    .turnin 31839 >>Turn in Continue Your Training: Master Hsu
    .target Master Hight
step
    .goto 379,57.11,47.89
    >>Click the |cRXP_PICK_Curious Text|r
    .accept 30797 >>Accept It Was Almost Alive
step
    .goto 379,57.11,47.89
    >>Click the |cRXP_PICK_Curious Text|r
    .complete 30797,1 --Curious Text
step
    .goto 379,57.97,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
    .turnin 30797 >>Turn in It Was Almost Alive while you are here
    .isQuestComplete 30797
    .target Image of Lorewalker Cho
step
    .goto 379,57.97,49.04
    >>Use the Tongue of Ba-Shon in the Valley of Emperors.
    .complete 30795,1 --Cho Summon Bunny
    .target Cho Summon Bunny
step
    .goto 379,57.97,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
    .turnin 30795 >>Turn in Staying Connected
    .turnin 30797 >>Turn in It Was Almost Alive
    .accept 30796 >>Accept An End to Everything
    .accept 30799 >>Accept The Tomb of Shadows
    .target Image of Lorewalker Cho
step
    #loop
    .goto 379,56.66,48.25,0
    .goto 379,56.66,48.25,40,0
    .goto 379,57.13,43.50,40,0
    >>Kill |cRXP_ENEMY_Tormented Spirits|r
    >>Open the |cRXP_PICK_Qiang Dynasty Tablet|r. Loot it for |cRXP_LOOT_Qiang Dynasty Rubbing|r
    >>Open the |cRXP_PICK_Shen Dynasty Tablet|r. Loot it for |cRXP_LOOT_Shen Dynasty Rubbing|r
    >>Open the |cRXP_PICK_Wai Dynasty Tablet|r. Loot it for |cRXP_LOOT_Wai Dynasty Rubbing|r
    .complete 30796,1 --Tormented Spirit slain (5)
    .complete 30799,3 --Qiang Dynasty Rubbing (1)
    .complete 30799,1 --Shen Dynasty Rubbing (1)
    .complete 30799,2 --Wai Dynasty Rubbing (1)
    .mob Tormented Spirit
step
    .goto 379,57.97,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
    .turnin 30796 >>Turn in An End to Everything
    .turnin 30799 >>Turn in The Tomb of Shadows
    .accept 30798 >>Accept Breaking the Emperor's Shield
    .target Image of Lorewalker Cho
step
    .goto 379,53.00,51.20
    >>Kill |cRXP_ENEMY_Nakk'rakas|r
    .complete 30798,1 --Nakk'rakas slain (1)
    .mob Nakk'rakas
step
    .goto 379,57.97,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
    .turnin 30798 >>Turn in Breaking the Emperor's Shield
    .accept 30800 >>Accept Stealing Their Thunder King
    .target Image of Lorewalker Cho
step
    #completewith next
    .zone 385 >>Travel to Tomb of Conquerors
    .zoneskip 385
step
    .goto 385,34.13,61.49
    >>Click the |cRXP_PICK_Top Fragment of Lei Shen's Tablet|r
    .complete 30800,1 --Top Fragment of Lei Shen's Tablet
step
    .goto 385,58.42,72.66
    >>Open the |cRXP_PICK_King's Coffer|r. Loot it for |cRXP_LOOT_Bottom Fragment of Lei Shen's Tablet|r
    .complete 30800,2 --Bottom Fragment of Lei Shen's Tablet (1)
step
    #completewith next
    .zone 379 >>Leave Tomb of Conquerors for Kun-Lai Summit
    .zoneskip 379
step
    .goto 379,57.97,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
    .turnin 30800 >>Turn in Stealing Their Thunder King
    .accept 30801 >>Accept Lessons from History
    .target Image of Lorewalker Cho
step
    #completewith next
    .zone 385 >>Travel to Tomb of Conquerors
    .zoneskip 385
step
    .goto 385,34.13,61.49
    >>Click the |cRXP_PICK_Tablet of Thunder|r
    .complete 30801,1 --Tablet of Thunder
step
    #completewith next
    .zone 379 >>Leave Tomb of Conquerors for Kun-Lai Summit
    .zoneskip 379
step
    .goto 379,57.97,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
    .turnin 30801 >>Turn in Lessons from History
    .accept 30802 >>Accept Chasing the Storm
    .target Image of Lorewalker Cho
step
    #completewith next
    .zone 385 >>Travel to Tomb of Conquerors
    .zoneskip 385
step
    #loop
    .goto 385,66.93,77.92,0
    .goto 385,66.93,77.92,40,0
    .goto 385,70.97,74.41,40,0
    >>Kill |cRXP_ENEMY_Zandalari Warrior|r and loot |cRXP_LOOT_Blood-Revealed Map|r
    .complete 30802,1 --Blood-Revealed Map (1)
    .mob Zandalari Warrior
step
    #completewith next
    .zone 379 >>Leave Tomb of Conquerors for Kun-Lai Summit
    .zoneskip 379
step
    .goto 379,57.97,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
    .turnin 30802 >>Turn in Chasing the Storm
    .accept 30935 >>Accept Fisherman's Tale
    .target Image of Lorewalker Cho
step
    .goto 379,53.00,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishi|r
    .complete 30935,1 --Mishi
    .target Mishi
step
    .goto 379,63.32,40.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shin Whispercloud|r
    .complete 30935,2 --Shin Whispercloud
    .target Shin Whispercloud
step
    .goto 379,62.32,29.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30935 >>Turn in Fisherman's Tale
    .accept 30944 >>Accept It Takes A Village
    .target Lorewalker Cho
step
    .xp 88.3,1,end1
step
    #completewith Along164
    >>As you go: Kill |cRXP_ENEMY_Exhausted Defenders|r and |cRXP_ENEMY_Zouchin Villagers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30944,1 --Exhausted Defender (8)
    .mob Exhausted Defender
    .mob Zouchin Villager
step
    .goto 379,63.33,30.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelbender Doshu|r
    .accept 30945 >>Accept What's Yours Is Mine
    .target Steelbender Doshu
step
    .goto 379,63.73,30.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shomi|r
    .accept 30942 >>Accept Make A Fighter Out of Me
    .target Shomi
step
    #completewith Along164
    >>As you go: Kill |cRXP_ENEMY_Amani Skirmishers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30942,1 --Amani Skirmisher slain (4)
    .mob Amani Skirmisher
step
    .goto 379,63.17,29.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Hai|r
    .accept 30816 >>Accept Checking In
    .target Li Hai
step
    #label Along164
    .goto 379,63.45,28.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shu|r
    .accept 30943 >>Accept Handle With Care
    .target Elder Shu
step
    #loop
    .goto 379,64.00,28.40,0
    .goto 379,64.00,28.40,40,0
    .goto 379,62.80,31.60,40,0
    >>Kill |cRXP_ENEMY_Amani Skirmishers|r
    >>Kill |cRXP_ENEMY_Exhausted Defenders|r and |cRXP_ENEMY_Zouchin Villagers|r
    .complete 30942,1 --Amani Skirmisher slain (4)
    .complete 30944,1 --Exhausted Defender (8)
    .mob Amani Skirmisher
    .mob Exhausted Defender
    .mob Zouchin Villager
step
    .goto 379,62.32,29.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30944 >>Turn in It Takes A Village while you are here
    .isQuestComplete 30944
    .target Lorewalker Cho
step
    .goto 379,60.60,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
    .turnin 30816 >>Turn in Checking In
    .accept 30794 >>Accept Emergency Care
    .target Sage Liao
step
    .goto 379,61.01,21.52
    >>Open the |cRXP_PICK_Sage Liao's Belongings|r. Loot it for |cRXP_LOOT_Pandaren Healing Draught|r
    .collect 81177,1,30794,1 --Pandaren Healing Draught (1)
step
    .goto 379,60.60,21.40
    >>Interact with |cRXP_FRIENDLY_Sage Liao|r
    .complete 30794,1 --Sage Liao
    .target Sage Liao
step
    .goto 379,60.60,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
    .turnin 30794 >>Turn in Emergency Care
    .accept 30805 >>Accept Justice
    .accept 30806 >>Accept The Scent of Life
    .accept 30807 >>Accept By the Falls, For the Fallen
    .target Sage Liao
step
    #loop
    .goto 379,59.03,27.20,0
    .goto 379,59.03,27.20,40,0
    .goto 379,60.11,31.09,40,0
    >>Pick up |cRXP_PICK_Waterfall-Polished Stone|r from the ground
    .complete 30807,1 --Waterfall-Polished Stone (3)
step
    #loop
    .goto 379,60.59,22.24,0
    .goto 379,60.59,22.24,40,0
    .goto 379,59.45,19.59,40,0
    .goto 379,63.61,20.89,40,0
    >>Kill |cRXP_ENEMY_Captain Ripflesh|r
    >>Kill |cRXP_ENEMY_Blackmane Trackers|r, |cRXP_ENEMY_Blackmane Pillagers|r and |cRXP_ENEMY_Blackmane Brigands|r
    >>Kill |cRXP_ENEMY_Blackmane Trackers|r, |cRXP_ENEMY_Blackmane Brigands|r and |cRXP_ENEMY_Blackmane Pillagers|r. Loot them for |cRXP_LOOT_Stolen Pandaren Spices|r. It can also be picked up from |cRXP_PICK_Blackmane Booty Barrel|r on the ground
    >>Kill |cRXP_ENEMY_Azure Prickly Crawler|r and loot |cRXP_LOOT_Opalescent Blue Crab Shell|r
    .complete 30805,1 --Captain Ripflesh slain (1)
    .complete 30805,2 --Blackmane Tracker (8)
    .complete 30806,2 --Stolen Pandaren Spices (8)
    .complete 30806,1 --Opalescent Blue Crab Shell (1)
    .mob Captain Ripflesh
    .mob Blackmane Tracker
    .mob Blackmane Pillager
    .mob Blackmane Brigand
    .mob Azure Prickly Crawler
step
    .goto 379,60.60,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
    .turnin 30805 >>Turn in Justice
    .turnin 30806 >>Turn in The Scent of Life
    .turnin 30807 >>Turn in By the Falls, For the Fallen
    .accept 30819 >>Accept Preparing the Remains
    .target Sage Liao
step
    #loop
    .goto 379,68.87,27.77,0
    .goto 379,68.87,27.77,40,0
    .goto 379,71.35,26.84,40,0
    .goto 379,72.27,31.08,40,0
    >>Loot the |cRXP_PICK_Volatile Blooms|r for |cRXP_LOOT_Handful of Volatile Blooms|r
    >>Kill |cRXP_ENEMY_Amani Skullbreaker|r and loot |cRXP_LOOT_Blood-Stained Blade|r
    >>Kill |cRXP_ENEMY_Gurubashi Hexxers|r
    >>Kill |cRXP_ENEMY_Drakkari Frostweavers|r
    .complete 30943,1 --Handful of Volatile Blooms (50)
    .complete 30945,1 --Blood-Stained Blade (1)
    .complete 30942,2 --Gurubashi Hexxer slain (4)
    .complete 30942,3 --Drakkari Frostweaver slain (3)
    .mob Amani Skullbreaker
    .mob Gurubashi Hexxer
    .mob Drakkari Frostweaver
step
    .goto 379,63.73,30.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shomi|r
    .turnin 30942 >>Turn in Make A Fighter Out of Me
    .target Shomi
step
    .goto 379,63.33,30.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelbender Doshu|r
    .turnin 30945 >>Turn in What's Yours Is Mine while you are here
    .isQuestComplete 30945
    .target Steelbender Doshu
step
    .goto 379,63.17,29.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Hai|r
    .turnin 30819 >>Turn in Preparing the Remains
    .accept 30820 >>Accept A Funeral
    .target Li Hai
step
    .goto 379,63.45,28.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shu|r
    .turnin 30943 >>Turn in Handle With Care
    .target Elder Shu
step
    .goto 379,66.95,33.33
    >>Click the |cRXP_PICK_Incense of Life|r
    .complete 30820,1 --Incense of Life
step
    .goto 379,67.00,33.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
    .turnin 30820 >>Turn in A Funeral
    .target Sage Liao
step
    .goto 379,63.33,30.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelbender Doshu|r
    .turnin 30945 >>Turn in What's Yours Is Mine
    .target Steelbender Doshu
step
    .goto 379,62.32,29.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30944 >>Turn in It Takes A Village
    .accept 31011 >>Accept Enemies At Our Door
    .target Lorewalker Cho
step
    #loop
    .goto 379,62.40,29.40,0
    .goto 379,62.40,29.40,40,0
    .goto 379,64.40,29.00,40,0
    >>Kill |cRXP_ENEMY_Gurubashi Bloodriders|r
    >>Kill |cRXP_ENEMY_Amani Behemoths|r
    >>Kill |cRXP_ENEMY_Amani Berserkers|r
    .complete 31011,3 --Gurubashi Bloodrider slain (3)
    .complete 31011,2 --Amani Behemoth slain (5)
    .complete 31011,1 --Amani Berserker slain (8)
    .mob Gurubashi Bloodrider
    .mob Amani Behemoth
    .mob Amani Berserker
step
    .goto 379,62.20,29.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31011 >>Turn in Enemies At Our Door
    .accept 30946 >>Accept Revelations
    .target Lorewalker Cho
step
    .goto 379,62.48,28.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandalari Prisoner|r
    .complete 30946,1 --Zandalari Prisoner
    .target Zandalari Prisoner
step
    .goto 379,62.32,29.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30946 >>Turn in Revelations
    .accept 31228 >>Accept Prophet Khar'zul
    .target Lorewalker Cho
step
    .goto 379,62.30,29.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishi|r
    .complete 31228,1 --Mishi
    .target Mishi
step
    #loop
    .goto 379,75.98,16.64,0
    .goto 379,75.98,16.64,40,0
    .goto 379,75.73,12.94,40,0
    .goto 379,74.57,10.36,40,0
    >>Kill |cRXP_ENEMY_Prophet Khar'zul|r
    >>Kill |cRXP_ENEMY_Gurubashi Witch Doctors|r, |cRXP_ENEMY_Amani Outriders|r, |cRXP_ENEMY_Gurubashi Headsplitters|r and |cRXP_ENEMY_Gurubashi Worshippers|r
    .complete 31228,2 --Prophet Khar'zul slain (1)
    .complete 31228,3 --Gurubashi Witch Doctor (8)
    .mob Prophet Khar'zul
    .mob Gurubashi Witch Doctor
    .mob Amani Outrider
    .mob Gurubashi Headsplitter
    .mob Gurubashi Worshipper
step
    .goto 379,62.32,29.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31228 >>Turn in Prophet Khar'zul
    .target Lorewalker Cho
step
    .goto 379,52.95,66.57
    >>Escort grummles to the Burlap Waystation
    .complete 30592,1 --Escort grummles to the Burlap Waystation
step
    .goto 379,51.66,67.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Trailscenter|r
    .turnin 30592 >>Turn in The Burlap Trail: To Burlap Waystation
    .target Brother Trailscenter
step
    .goto 379,58.09,61.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Lintpocket|r
    .accept 30602 >>Accept The Rabbitsfoot
    .target Brother Lintpocket
step
    .goto 379,49.10,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
    .complete 30602,1 --Brother Rabbitsfoot
    .target Brother Rabbitsfoot
step
    .goto 379,51.97,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30603 >>Accept The Broketooth Ravage
    .unitscan Brother Rabbitsfoot
step
    .goto 379,48.01,73.28
    >>Kill |cRXP_ENEMY_Mo Mo|r and loot |cRXP_LOOT_Rabbitsfoot's Luckydo|r
    .complete 30603,1 --Rabbitsfoot's Luckydo (1)
    .mob Mo Mo
step
    .goto 379,51.97,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30602 >>Turn in The Rabbitsfoot
    .turnin 30603 >>Turn in The Broketooth Ravage
    .accept 30599 >>Accept A Monkey Idol
    .accept 30600 >>Accept No Pack Left Behind
    .accept 30604 >>Accept Breaking Broketooth
    .unitscan Brother Rabbitsfoot
step
    #completewith Along196
    >>As you go: Kill |cRXP_ENEMY_Dead Packers|r. Loot them for |cRXP_LOOT_Grummlepack|r. Kill |cRXP_ENEMY_Broketooth Chargers|r. Kill |cRXP_ENEMY_Broketooth Tossers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30600,1 --Grummlepack (8)
    .complete 30604,1 --Broketooth Charger slain (8)
    .complete 30604,2 --Broketooth Tosser slain (6)
    .mob Dead Packer
    .mob Broketooth Charger
    .mob Broketooth Tosser
step
    .goto 379,56.42,70.84
    >>Kill |cRXP_ENEMY_Tak Tak|r and loot |cRXP_LOOT_Corpse of Tak Tak|r
    >>Click the |cRXP_PICK_Tak Tak's Altar|r
    .collect 80430,1,30599,1 --Corpse of Tak Tak (1)
    .complete 30599,3 --Tak Tak's Altar
    .mob Tak Tak
step
    #label Along196
    .goto 379,52.27,71.44
    >>Kill |cRXP_ENEMY_Hateful Ko Ko|r and loot |cRXP_LOOT_Corpse of Ko Ko|r
    >>Click the |cRXP_PICK_Ko Ko's Altar|r
    .collect 80429,1,30599,1 --Corpse of Ko Ko (1)
    .complete 30599,2 --Ko Ko's Altar
    .mob Hateful Ko Ko
step
    #completewith next
    .zone 384 >>Travel to The Deeper - Lower Deep (fake ID cave in Kun-Lai Summit)
    .zoneskip 384
step
    .goto 384,46.20,38.57
    >>Kill |cRXP_ENEMY_Dak Dak|r and loot |cRXP_LOOT_Corpse of Dak Dak|r
    .collect 80428,1,30599,1 --Corpse of Dak Dak (1)
    .mob Dak Dak
step
    .goto 384,49.66,39.68
    >>Click the |cRXP_PICK_Dak Dak's Altar|r
    .complete 30599,1 --Dak Dak's Altar
step
    #completewith next
    .zone 379 >>Leave The Deeper - Lower Deep (fake ID cave in Kun-Lai Summit) for Kun-Lai Summit
    .zoneskip 379
step
    #loop
    .goto 379,55.15,68.88,0
    .goto 379,55.15,68.88,40,0
    .goto 379,52.41,70.71,40,0
    >>Kill |cRXP_ENEMY_Dead Packers|r. Loot them for |cRXP_LOOT_Grummlepack|r
    >>Kill |cRXP_ENEMY_Broketooth Chargers|r
    >>Kill |cRXP_ENEMY_Broketooth Tossers|r
    .complete 30600,1 --Grummlepack (8)
    .complete 30604,1 --Broketooth Charger slain (8)
    .complete 30604,2 --Broketooth Tosser slain (6)
    .mob Dead Packer
    .mob Broketooth Charger
    .mob Broketooth Tosser
step
    .goto 379,51.97,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30599 >>Turn in A Monkey Idol
    .turnin 30600 >>Turn in No Pack Left Behind
    .turnin 30604 >>Turn in Breaking Broketooth
    .accept 30605 >>Accept Lucky Yakshoe
    .unitscan Brother Rabbitsfoot
step
    .goto 379,50.53,64.19
    >>Interact with |cRXP_FRIENDLY_Mok Mok|r
    .complete 30605,1 --Mok Mok
    .target Mok Mok
step
    #loop
    .goto 379,52.02,67.18,0
    .goto 379,52.02,67.18,40,0
    .goto 379,50.60,64.08,40,0
    .goto 379,45.94,64.05,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Yakshoe|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30605 >>Turn in Lucky Yakshoe
    .accept 30606 >>Accept Thumping Knucklethump
    .accept 30607 >>Accept Hozen Love Their Keys
    .accept 30608 >>Accept The Snackrifice
    .unitscan Brother Yakshoe
step
    #completewith Along203
    >>As you go: Kill |cRXP_ENEMY_Knucklethump Jibstabbers|r and |cRXP_ENEMY_Knucklethump Smashers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30606,1 --Knucklethump Jibstabber (8)
    .mob Knucklethump Jibstabber
    .mob Knucklethump Smasher
step
    #label Along203
    .goto 379,50.80,62.80
    >>Kill |cRXP_ENEMY_Prisoner Bindings|r and |cRXP_ENEMY_Imprisoned Grummles|r
    .complete 30608,1 --Prisoner Bindings (8)
    .mob Prisoner Bindings
    .mob Imprisoned Grummle
step
    #completewith next
    .zone 382 >>Travel to Knucklethump Hole
    .zoneskip 382
step
    .goto 382,38.57,24.60
    >>Get the Yeti Shackle Key from Cho Cho the Wicked and release Old Poot Poot.
    .complete 30607,1 --Old Poot Poot
    .target Old Poot Poot
step
    .goto 382,36.11,14.74
    >>Kill |cRXP_ENEMY_Cho Cho the Wicked|r and loot |cRXP_LOOT_Yeti Shackle Key|r
    .complete 30607,2 --Yeti Shackle Key (1)
    .mob Cho Cho the Wicked
step
    #completewith next
    .zone 379 >>Leave Knucklethump Hole for Kun-Lai Summit
    .zoneskip 379
step
    .goto 379,50.82,63.46
    >>Kill |cRXP_ENEMY_Knucklethump Jibstabbers|r and |cRXP_ENEMY_Knucklethump Smashers|r
    .complete 30606,1 --Knucklethump Jibstabber (8)
    .mob Knucklethump Jibstabber
    .mob Knucklethump Smasher
step
    #loop
    .goto 379,52.02,67.18,0
    .goto 379,52.02,67.18,40,0
    .goto 379,50.60,64.08,40,0
    .goto 379,45.94,64.05,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Yakshoe|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30607 >>Turn in Hozen Love Their Keys
    .turnin 30608 >>Turn in The Snackrifice
    .accept 30610 >>Accept Grummle! Grummle! Grummle!
    .unitscan Brother Yakshoe
step
    .goto 379,51.97,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30606 >>Turn in Thumping Knucklethump
    .accept 30611 >>Accept Unleash The Yeti!
    .unitscan Brother Rabbitsfoot
step
    .goto 379,46.32,63.89
    >>Click the |cRXP_PICK_Grummle Gear|r
    >>Kill |cRXP_ENEMY_Cagemasters|r
    .complete 30610,1 --Grummle Gear
    .complete 30611,1 --Cagemaster slain (4)
    .mob Cagemaster
step
    #loop
    .goto 379,45.94,64.05,0
    .goto 379,45.94,64.05,40,0
    .goto 379,50.60,64.08,40,0
    .goto 379,52.02,67.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Yakshoe|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30610 >>Turn in Grummle! Grummle! Grummle!
    .unitscan Brother Yakshoe
step
    .goto 379,51.97,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30611 >>Turn in Unleash The Yeti!
    .accept 30612 >>Accept The Leader Hozen
    .unitscan Brother Rabbitsfoot
step
    .goto 379,46.19,63.36
    >>Kill |cRXP_ENEMY_Chomp Chomp|r
    >>Kill |cRXP_ENEMY_The Ook of Dook|r
    .complete 30612,1 --Chomp Chomp (1)
    .complete 30612,2 --The Ook of Dook (1)
    .mob Chomp Chomp
    .mob The Ook of Dook
step
    .goto 379,51.97,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30612 >>Turn in The Leader Hozen
    .unitscan Brother Rabbitsfoot
step
    .goto 379,51.66,67.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Trailscenter|r
    .accept 30692 >>Accept The Burlap Trail: To Kota Basecamp
    .target Brother Trailscenter
step
    .goto 379,43.74,68.93
    >>Escort grummies to Kota Basecamp
    .complete 30692,1 --Escort grummies to Kota Basecamp
step
    .goto 379,42.45,68.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Oilyak|r
    .turnin 30692 >>Turn in The Burlap Trail: To Kota Basecamp
    .target Brother Oilyak
step
    .goto 379,42.42,69.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Keenbean|r
    .accept 30744 >>Accept Kota Blend
    .accept 30745 >>Accept Trouble Brewing
    .target Uncle Keenbean
step
    .goto 379,42.32,69.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cousin Gootfur|r
    .accept 30742 >>Accept Shut it Down
    .accept 30743 >>Accept Gourmet Kafa
    .target Cousin Gootfur
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Eastwind|r
    .target Uncle Eastwind
    .goto 379,42.808,69.604
    .fp Kota Basecamp>>Get the Kota Basecamp Flight Path
step
    #completewith Along221
    >>As you go: Click the |cRXP_PICK_Kafa'goot "Deposit"|r. Kill |cRXP_ENEMY_Kafa-Crazed Mountain Goats|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30743,1 --Kafa'goot "Deposit"
    .complete 30742,1 --Kafa-Crazed Mountain Goat slain (12)
    .mob Kafa-Crazed Mountain Goat
step
    #completewith Along219
    >>As you go: Kill |cRXP_ENEMY_Kafa-Crazed Yetis|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30745,1 --Kafa-Crazed Yeti slain (5)
    .mob Kafa-Crazed Yeti
step
    #label Along219
    #loop
    .goto 379,38.41,73.96,0
    .goto 379,38.41,73.96,40,0
    .goto 379,39.78,78.24,40,0
    >>Loot the |cRXP_PICK_Kafa'kota Bushes|r for |cRXP_LOOT_Kafa'kota Berry|r
    .complete 30744,1 --Kafa'kota Berry (100)
step
    .goto 379,42.42,69.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Keenbean|r
    .accept 30746 >>Accept A Fair Trade
    .target Uncle Keenbean
    .isQuestTurnedIn 30744,30825 --any of: Kota Blend, Kota Blend
    .xp <87,1
step
    #label Along221
    .goto 379,36.93,76.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nephew Burrberry|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30746 >>Turn in A Fair Trade
    .unitscan Nephew Burrberry
    .isOnQuest 30746
step
    #loop
    .goto 379,38.52,74.40,0
    .goto 379,38.52,74.40,40,0
    .goto 379,39.62,77.28,40,0
    .goto 379,40.76,72.36,40,0
    >>Kill |cRXP_ENEMY_Kafa-Crazed Yetis|r
    >>Click the |cRXP_PICK_Kafa'goot "Deposit"|r
    >>Kill |cRXP_ENEMY_Kafa-Crazed Mountain Goats|r
    .complete 30745,1 --Kafa-Crazed Yeti slain (5)
    .complete 30743,1 --Kafa'goot "Deposit"
    .complete 30742,1 --Kafa-Crazed Mountain Goat slain (12)
    .mob Kafa-Crazed Yeti
    .mob Kafa-Crazed Mountain Goat
step
    .goto 379,42.32,69.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cousin Gootfur|r
    .turnin 30742 >>Turn in Shut it Down
    .turnin 30743 >>Turn in Gourmet Kafa
    .target Cousin Gootfur
step
    .goto 379,42.42,69.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Keenbean|r
    .turnin 30745 >>Turn in Trouble Brewing
    .target Uncle Keenbean
step
    .goto 379,36.93,76.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nephew Burrberry|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30747 >>Accept The Burlap Grind
    .unitscan Nephew Burrberry
    .isQuestTurnedIn 30746 --any of: A Fair Trade
    .xp <87,1
step
    #loop
    .goto 379,50.20,66.60,0
    .goto 379,50.20,66.60,40,0
    .goto 379,51.00,63.20,40,0
    .goto 379,53.00,68.60,40,0
    >>Kill |cRXP_ENEMY_Broketooth Leapers|r, |cRXP_ENEMY_Broketooth Ravagers|r, |cRXP_ENEMY_Broketooth Chargers|r and |cRXP_ENEMY_Broketooth Tossers|r
    .complete 30747,1 --Broketooth Leaper (8)
    .mob Broketooth Leaper
    .mob Broketooth Ravager
    .mob Broketooth Charger
    .mob Broketooth Tosser
    .isOnQuest 30747
step
    .goto 379,36.93,76.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nephew Burrberry|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30747 >>Turn in The Burlap Grind
    .unitscan Nephew Burrberry
    .isOnQuest 30747
step
    .goto 379,34.96,59.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r
    .turnin 30699 >>Turn in To Winter's Blossom
    .accept 30723 >>Accept Honor, Even in Death
    .target Lin Silentstrike
step
    #loop
    .goto 379,31.29,61.50,0
    .goto 379,31.29,61.50,40,0
    .goto 379,35.12,59.66,40,0
    .goto 379,35.32,49.55,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30715 >>Accept A Line Unbroken
    .unitscan Ban Bearheart
step
    #completewith Along232
    >>As you go: Kill |cRXP_ENEMY_Kun-Lai Corpsepickers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30723,1 --Kun-Lai Corpsepicker slain (8)
    .mob Kun-Lai Corpsepicker
step
    .goto 379,30.40,60.00
    >>Interact with |cRXP_FRIENDLY_Shado-Master Zhiyao|r
    .complete 30715,1 --Shado-Master Zhiyao
    .target Shado-Master Zhiyao
step
    .goto 379,30.20,62.60
    >>Interact with |cRXP_FRIENDLY_Liu of the Thousand Blows|r
    .complete 30715,2 --Liu of the Thousand Blows
    .target Liu of the Thousand Blows
step
    #label Along232
    .goto 379,30.00,64.40
    >>Interact with |cRXP_FRIENDLY_Shiya Boldblade|r
    .complete 30715,3 --Shiya Boldblade
    .target Shiya Boldblade
step
    #loop
    .goto 379,30.63,62.85,0
    .goto 379,30.63,62.85,40,0
    .goto 379,30.77,61.29,40,0
    >>Kill |cRXP_ENEMY_Kun-Lai Corpsepickers|r
    .complete 30723,1 --Kun-Lai Corpsepicker slain (8)
    .mob Kun-Lai Corpsepicker
step
    #loop
    .goto 379,31.29,61.50,0
    .goto 379,31.29,61.50,40,0
    .goto 379,35.12,59.66,40,0
    .goto 379,35.32,49.55,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30715 >>Turn in A Line Unbroken
    .unitscan Ban Bearheart
step
    .goto 379,34.96,59.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r
    .turnin 30723 >>Turn in Honor, Even in Death
    .accept 30724 >>Accept To the Wall!
    .target Lin Silentstrike
step
    .goto 379,34.54,59.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Len|r
    .complete 30724,1 --Kite Master Len
    .target Kite Master Len
step
    .goto 379,31.27,61.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r
    .turnin 30724 >>Turn in To the Wall!
    .accept 30750 >>Accept Off the Wall!
    .target Suna Silentstrike
step
    #completewith Along238
    >>As you go: Kill |cRXP_ENEMY_Osul Fire-Warriors|r and |cRXP_ENEMY_Osul Veteran Archers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30750,1 --Osul Fire-Warrior (8)
    .mob Osul Fire-Warrior
    .mob Osul Veteran Archer
step
    #label Along238
    .goto 379,29.24,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
    .accept 30751 >>Accept A Terrible Sacrifice
    .target Lao-Chin the Iron Belly
step
    .goto 379,27.65,60.96
    >>Pick up |cRXP_PICK_Yaungol Oil Barrel|r from the ground
    >>Kill |cRXP_ENEMY_Osul Fire-Warriors|r and |cRXP_ENEMY_Osul Veteran Archers|r
    .complete 30751,1 --Yaungol Oil Barrel (6)
    .complete 30750,1 --Osul Fire-Warrior (8)
    .mob Osul Fire-Warrior
    .mob Osul Veteran Archer
step
    .goto 379,29.24,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
    .turnin 30751 >>Turn in A Terrible Sacrifice
    .target Lao-Chin the Iron Belly
step
    .goto 379,31.27,61.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r
    .turnin 30750 >>Turn in Off the Wall!
    .accept 30994 >>Accept Lao-Chin's Gambit
    .target Suna Silentstrike
step
    .goto 379,29.30,62.28
    >>Kill |cRXP_ENEMY_Suna Silentstrike|r
    .complete 30994,1 --Suna Silentstrike slain (1)
    .mob Suna Silentstrike
step
    .goto 379,29.24,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
    .turnin 30994 >>Turn in Lao-Chin's Gambit
    .accept 30991 >>Accept Do a Barrel Roll!
    .target Lao-Chin the Iron Belly
step
    #loop
    .goto 379,30.40,63.40,0
    .goto 379,30.40,63.40,40,0
    .goto 379,30.83,61.23,40,0
    >>Kill |cRXP_ENEMY_Osul Invaders|r
    >>Kill |cRXP_ENEMY_Osul Treelaunchers|r
    .complete 30991,1 --Osul Invader slain (50)
    .complete 30991,2 --Osul Treelauncher slain (4)
    .mob Osul Invader
    .mob Osul Treelauncher
step
    .goto 379,29.24,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
    .turnin 30991 >>Turn in Do a Barrel Roll!
    .accept 30992 >>Accept Finish This!
    .target Lao-Chin the Iron Belly
step
    #loop
    .goto 379,31.29,61.50,0
    .goto 379,31.29,61.50,40,0
    .goto 379,35.12,59.66,40,0
    .goto 379,35.32,49.55,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30992 >>Turn in Finish This!
    .unitscan Ban Bearheart
    .isQuestComplete 30992
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 391 >>Travel to Shrine of Two Moons
    .zoneskip 391
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 391,68.46,47.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madam Vee Luo|r
    .turnin 31511 >>Turn in A Witness to History
    .target Madam Vee Luo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 379 >>Leave Shrine of Two Moons for Kun-Lai Summit
    .zoneskip 379
step
    #loop
    .goto 379,31.29,61.50,0
    .goto 379,31.29,61.50,40,0
    .goto 379,35.12,59.66,40,0
    .goto 379,35.32,49.55,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30993 >>Accept Where are My Reinforcements?
    .unitscan Ban Bearheart
    .isQuestTurnedIn 30992 --any of: Finish This!
    .xp <87,1
step
    .goto 379,31.29,61.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .complete 30993,1 --Ban Bearheart
    .target Ban Bearheart
    .isOnQuest 30993
step
    .goto 379,34.06,58.64
    >>Speak with Ban Bearheart outside the Shado-Pan Monastery in Kun-Lai Summit.
    .complete 30993,2 --Ban's Balloon
    .target Ban's Balloon
    .isOnQuest 30993
step
    #loop
    .goto 379,31.29,61.50,0
    .goto 379,31.29,61.50,40,0
    .goto 379,35.12,59.66,40,0
    .goto 379,35.32,49.55,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30993 >>Turn in Where are My Reinforcements?
    .unitscan Ban Bearheart
    .isOnQuest 30993
step
    #loop
    .goto 379,35.32,49.55,0
    .goto 379,35.32,49.55,40,0
    .goto 379,35.12,59.66,40,0
    .goto 379,31.29,61.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30752 >>Accept Unbelievable!
    .unitscan Ban Bearheart
    .isQuestTurnedIn 30993 --any of: Where are My Reinforcements?
    .xp <87,1
step
    .goto 379,36.69,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Pan Sentinel|r
    .complete 30752,1 --Shado-Pan Sentinel
    .target Shado-Pan Sentinel
    .isOnQuest 30752
step
    .goto 379,36.69,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .turnin 30752 >>Turn in Unbelievable!
    .target Ban Bearheart
    .isOnQuest 30752
step
    +|cRXP_WARN_That is all of Kun-Lai Summit for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Valley of the Four Winds|r: Everything I Know About Cooking
    >>|cRXP_FRIENDLY_another zone|r: In Tents Channeling << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_another zone|r: Kota Blend
    >>|cRXP_FRIENDLY_The Veiled Stair and back here|r: The Spring Drifter
    >>|cRXP_FRIENDLY_Dread Wastes and back here|r: Finish This!
step
    +|cRXP_WARN_The rest of Kun-Lai Summit is planned from level 90.|r Load its guide for level 90 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 87 - 91 Kun-Lai Summit
#subweight -87
#name 90-91 Kun-Lai Summit

step
    .goto 379,34.54,59.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite Master Len|r
    .accept 31847 >>Accept Better Dead than Dread
    .target Kite Master Len
step
    .goto 379,72.66,93.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Boof|r
    .turnin 31285 >>Turn in The Spring Drifter
    .target Brewmaster Boof
    .isQuestComplete 31285
step
    #loop
    .goto 379,31.29,61.50,0
    .goto 379,31.29,61.50,40,0
    .goto 379,35.12,59.66,40,0
    .goto 379,35.32,49.55,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30992 >>Turn in Finish This!
    .unitscan Ban Bearheart
    .isQuestComplete 30992
step
    .goto 379,31.27,61.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r
    .accept 30768 >>Accept My Husband...
    .target Suna Silentstrike
    .isQuestTurnedIn 30992 --any of: Finish This!
    .xp <88,1
step
    +|cRXP_WARN_That is all of Kun-Lai Summit for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Townlong Steppes|r: My Husband...
    >>|cRXP_FRIENDLY_Vale of Eternal Blossoms|r: Better Dead than Dread
step
    +|cRXP_WARN_End of the Kun-Lai Summit route.|r
]])
