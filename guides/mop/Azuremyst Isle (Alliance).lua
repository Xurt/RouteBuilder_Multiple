-- 1-12 Azuremyst Isle: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 1, 11).
-- Split into 2 guides, listed under "1 - 12 Azuremyst Isle" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Azuremyst Isle.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 12 Azuremyst Isle
#subweight -1
#name 1-9 Azuremyst Isle

step << Draenei
    .xp 5 >>Grind to level 5 (The Prophecy of Velen needs it)
step << Draenei
    .goto 97,48.39,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .accept 9505 >>Accept The Prophecy of Velen
    .target Daedal
step << Draenei
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9505 >>Turn in The Prophecy of Velen
    .target Admiral Odesyus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 6 >>Grind to level 6 (A Cry For Help needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,13.62,73.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magwin|r
    .accept 9528 >>Accept A Cry For Help
    .target Magwin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,16.38,94.14
    >>Magwin Escorted to Safety
    .complete 9528,1 --Magwin Escorted to Safety
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,16.60,94.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 9528 >>Turn in A Cry For Help
    .target Cowlen
step << Draenei
    .goto 97,84.19,43.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >>Accept You Survived!
    .target Megelon
step << cata Priest/Shaman
    .goto 97,79.10,46.50
    .xp 4-470 >>Grind until you are 470xp away from level 4 (930/1400)
step
    .goto 97,80.25,48.46,10,0
    .goto 97,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .train 2061 >> Train |T135907:0|t[Flash Heal] << cata Priest
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain] << cata Priest
    .target Zalduun
step << Mage
    .goto 97,79.58,48.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
    .train 5143 >> Train |T136096:0|t[Arcane Missiles] << cata
    .target Valaatu
step << Paladin
    .goto 97,79.70,48.24,7,0
    .goto 97,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_may patrol slightly|r
    .train 20154 >> Train |T135960:0|t[Seal of Righteousness] << cata
    .train 20271 >> Train |T135959:0|t[Judgement] << cata
    .target Aurelon
step << Warrior
    .goto 97,79.59,49.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .train 100 >> Train |T132337:0|t[Charge] << cata
    .target Kore
step << Shaman
    .goto 97,79.28,49.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .train 8075 >> Train |T136023:0|t[Strength of Earth Totem] << cata
    .train 73899 >> Train |T460956:0|t[Primal Strike] << cata
    .target Firmanvaar
step << Hunter
    .goto 97,79.89,49.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
    .train 56641 >> Train |T132213:0|t[Steady Shot] << cata
    .target Keilnei
step << Mage cata
    .goto 97,79.58,48.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
    .train 2136 >> Train |T135807:0|t[Fire Blast]
    .target Valaatu
step << Priest cata
    .goto 97,80.25,48.46,10,0
    .goto 97,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .train 17 >> Train |T135940:0|t[Power Word: Shield]
    .target Zalduun
step << Paladin cata
    .goto 97,79.70,48.24,7,0
    .goto 97,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_may patrol slightly|r
    .train 465 >> Train |T135893:0|t[Devotion Aura]
    .target Aurelon
step << Warrior cata
    .goto 97,79.59,49.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .train 34428 >> Train |T132342:0|t[Victory Rush]
    .target Kore
step << Shaman cata
    .goto 97,79.28,49.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .train 8042 >> |T136026:0|t[Earth Shock]
    .target Firmanvaar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,64.49,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >>Accept Word from Azure Watch
    .target Aeun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,61.05,54.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >>Accept Red Snapper - Very Tasty!
    .target Diktynna
step << Draenei
    #loop
    .goto 97,40.27,71.21,0
    .goto 97,40.27,71.21,40,0
    .goto 97,56.83,59.81,40,0
    .goto 97,42.86,57.14,40,0
    .goto 97,55.20,47.40,40,0
    .goto 97,53.60,42.60,40,0
    .goto 97,58.60,41.60,40,0
    .goto 97,39.60,37.80,40,0
    .goto 97,46.60,31.90,40,0
    .goto 97,55.20,28.60,40,0
    .goto 97,37.84,18.12,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draenei Youngling|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9612 >>Accept A Hearty Thanks!
    .unitscan Draenei Youngling
step
    .goto 97,48.96,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Dulvi
step << Draenei
    .goto 97,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >>Turn in A Hearty Thanks! while you are here
    .isQuestComplete 9612
    .target Exarch Menelaous
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,48.37,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9314 >>Turn in Word from Azure Watch while you are here
    .isQuestComplete 9314
    .target Caregiver Chellan
step << Draenei
    .goto 97,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .accept 9463 >>Accept Medicinal Purpose
    .target Anchorite Fateema
step << Draenei
    .goto 97,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >>Turn in A Hearty Thanks!
    .target Exarch Menelaous
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9455 >>Turn in Strange Findings
    .target Exarch Menelaous
    .isOnQuest 9455
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .accept 9456 >>Accept Nightstalker Clean Up, Isle 2...
    .target Exarch Menelaous
    .isQuestTurnedIn 9455 --any of: Strange Findings
    .xp <5,1
step << Shaman cata
    .goto 97,48.05,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Train |T136052:0|t[Healing Wave]
    .target Tuluun
    .xp <7,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,48.71,50.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Dyvuun|r
    .turnin 9313 >>Turn in Travel to Azure Watch
    .target Technician Dyvuun
    .isOnQuest 9313
step
    .goto 97,48.37,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9314 >>Turn in Word from Azure Watch << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 9603 >>Accept Beds, Bandages, and Beyond << Draenei
    .target Caregiver Chellan
step
    .goto 97,49.58,53.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nabek|r
    .target Nabek
    .home >>Set your Hearthstone to Nabek's inn
step << Draenei
    .goto 97,49.71,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r
    .turnin 9603 >>Turn in Beds, Bandages, and Beyond
    .target Zaldaan
step << Paladin cata
    .goto 97,48.36,49.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Train |T135920:0|t[Holy Light]
    .target Tullas
    .xp <7,1
step << Priest cata
    .goto 97,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .train 588 >> Train |T135926:0|t[Inner Fire]
    .target Guvan
    .xp <7,1
step << Warrior cata
    .goto 97,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Ruada
    .xp <7,1
step << Hunter cata
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .train 2973 >> Train |T132223:0|t[Raptor Strike]
    .target Acteon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >>Accept A Small Start
    .target Admiral Odesyus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.69,70.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >>Accept Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
step << Warrior/Rogue/Paladin
    .goto 97,46.36,71.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blacksmith Calypso|r
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_which increase your melee damage by 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Blacksmith Calypso
    .train 2575,3
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,58.60,66.38
    >>Pick up |cRXP_PICK_Nautical Map|r from the ground
    >>Pick up |cRXP_PICK_Nautical Compass|r from the ground
    .complete 9506,2 --Nautical Map (1)
    .complete 9506,1 --Nautical Compass (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,56.75,70.48,0
    .goto 97,56.75,70.48,40,0
    .goto 97,54.52,70.61,40,0
    .goto 97,51.14,70.27,40,0
    >>Kill |cRXP_ENEMY_Skittering Crawlers|r and |cRXP_ENEMY_Barbed Crawlers|r. Loot them for |cRXP_LOOT_Skittering Crawler Meat|r
    .complete 9512,1 --Skittering Crawler Meat (6)
    .mob Skittering Crawler
    .mob Barbed Crawler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.69,70.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >>Turn in Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9506 >>Turn in A Small Start
    .accept 9530 >>Accept I've Got a Plant
    .target Admiral Odesyus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9513 >>Accept Reclaiming the Ruins
    .target Priestess Kyleen Il'dinare
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.24,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >>Accept Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,45.93,65.66
    >>Pick up |cRXP_PICK_Hollowed Out Tree|r from the ground
    .complete 9530,1 --Hollowed Out Tree (1)
step
    #loop
    .goto 97,50.20,60.10,0
    .goto 97,50.20,60.10,40,0
    .goto 97,51.10,64.70,40,0
    .goto 97,53.81,66.98,40,0
    >>Pick up |cRXP_PICK_Pile of Leaves|r from the ground << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Root Trappers|r. Loot them for |cRXP_LOOT_Root Trapper Vine|r << Draenei
    .complete 9530,2 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Pile of Leaves (5)
    .complete 9463,1 << Draenei --Root Trapper Vine (6)
    .mob Root Trapper << Draenei
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9530 >>Turn in I've Got a Plant
    .accept 9531 >>Accept Tree's Company
    .target Admiral Odesyus
step
    .xp 8-950 >> Grind until you are 950xp away from level 8 (3550/4500)
    >>|cRXP_WARN_Try to finish near Azure Watch|r
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .accept 9454 >>Accept The Great Moongraze Hunt
    .target Acteon
step << Draenei
    .goto 97,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .turnin 9463 >>Turn in Medicinal Purpose while you are here
    .isQuestComplete 9463
    .target Anchorite Fateema
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,52.13,58.00,0
    .goto 97,52.13,58.00,40,0
    .goto 97,49.73,63.17,40,0
    >>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Bucks|r. Loot them for |cRXP_LOOT_Moongraze Stag Tenderloin|r
    .complete 9454,1 --Moongraze Stag Tenderloin (6)
    .mob Moongraze Stag
    .mob Moongraze Buck
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 9454 >>Turn in The Great Moongraze Hunt
    .accept 10324 >>Accept The Great Moongraze Hunt
    .target Acteon
step << Hunter cata
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .train 5116 >> Train |T135860:0|t[Concussive Shot]
    .train 82243 >> Train |T132269:0|t[Parry]
    .target Acteon
step << Draenei
    .goto 97,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .turnin 9463 >>Turn in Medicinal Purpose
    .target Anchorite Fateema
step << Draenei
    .goto 97,48.39,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .accept 9473 >>Accept An Alternative Alternative
    .target Daedal
step << Shaman cata
    .train 331,1
    .goto 97,48.05,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .train 331 >> Train |T136052:0|t[Healing Wave]
    .train 324 >> Train |T136051:0|t[Lightning Shield]
    .target Tuluun
step << Shaman cata
    .goto 97,48.05,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .train 324 >> Train |T136051:0|t[Lightning Shield]
    .target Tuluun
step << Paladin cata
    .goto 97,48.36,49.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .train 635 >> Train |T135920:0|t[Holy Light]
    .target Tullas
step << Priest cata
    .goto 97,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .trainer >> Train your class spells
    .target Guvan
step << Mage cata
    .goto 97,49.87,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .trainer >> Train your class spells
    .target Semid
step << Warrior cata
    .goto 97,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Ruada
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,48.96,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >>Accept The Missing Fisherman
    .target Dulvi
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.38,50.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cryptographer Aurren|r
    .accept 9538 >>Accept Learning the Language
    .target Cryptographer Aurren
step << Draenei
    .goto 97,49.71,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r
    .accept 9604 >>Accept On the Wings of a Hippogryph
    .target Zaldaan
    .xp <5,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.29,51.07
    >>Stillpine Furbolg Language Primer Read
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.44,50.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Akida|r
    .turnin 9538 >>Turn in Learning the Language
    .accept 9539 >>Accept Totem of Coo
    .target Totem of Akida
step << Draenei
    .goto 97,49.71,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r
    .accept 9604 >>Accept On the Wings of a Hippogryph
    .target Zaldaan
    .xp <5,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,55.23,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Coo|r
    .turnin 9539 >>Turn in Totem of Coo
    .accept 9540 >>Accept Totem of Tikti
    .target Totem of Coo
step << Draenei
    #loop
    .goto 97,50.17,36.42,0
    .goto 97,50.17,36.42,40,0
    .goto 97,48.11,34.49,40,0
    .goto 97,51.52,32.04,40,0
    >>Loot the |cRXP_PICK_Azure Snapdragons|r for |cRXP_LOOT_Azure Snapdragon Bulb|r
    .complete 9473,1 --Azure Snapdragon Bulb (5)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,64.47,39.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Tikti|r
    .turnin 9540 >>Turn in Totem of Tikti
    .accept 9541 >>Accept Totem of Yor
    .target Totem of Tikti
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,63.12,64.86,0
    .goto 97,63.12,64.86,40,0
    .goto 97,62.93,68.84,40,0
    >>Kill |cRXP_ENEMY_Angry Murlocs|r. Loot them for |cRXP_LOOT_Red Snapper|r. It can also be picked up from |cRXP_PICK_School of Red Snapper|r on the ground
    .complete 9452,1 --Red Snapper (10)
    .mob Angry Murloc
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,63.12,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Yor|r
    .turnin 9541 >>Turn in Totem of Yor while you are here
    .isQuestComplete 9541
    .target Totem of Yor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,61.05,54.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >>Turn in Red Snapper - Very Tasty!
    .accept 9453 >>Accept Find Acteon!
    .target Diktynna
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,63.12,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Yor|r
    .turnin 9541 >>Turn in Totem of Yor
    .accept 9542 >>Accept Totem of Vark
    .target Totem of Yor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,28.11,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Vark|r
    .turnin 9542 >>Turn in Totem of Vark
    .accept 9544 >>Accept The Prophecy of Akida
    .target Totem of Vark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,27.50,62.23,0
    .goto 97,27.50,62.23,40,0
    .goto 97,27.06,67.14,40,0
    >>Kill |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r and |cRXP_ENEMY_Bristlelimb Ursas|r. Loot them for |cRXP_LOOT_Bristlelimb Key|r
    .collect 23801,1,9544,1 --Bristlelimb Key (1)
    .mob Bristlelimb Furbolg
    .mob Bristlelimb Windcaller
    .mob Bristlelimb Ursa
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,25.04,66.59,0
    .goto 97,25.04,66.59,40,0
    .goto 97,27.35,62.20,40,0
    >>Free 8 Stillpine Captives from cages found in Bristlelimb Village. Return to Arugoo of the Stillpine at Azure Watch when you have completed this task.
    .complete 9544,1 --Stillpine Captive (8)
    .target Stillpine Captive
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop9455x1
    >>|cRXP_LOOT_Faintly Glowing Crystal|r can drop from |cRXP_ENEMY_Infected Nightstalker Runt|r. Use it to start the quest if you get one
    .collect 23678,1,9455 --Faintly Glowing Crystal (1)
    .accept 9455 >>Accept Strange Findings
    .use 23678
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop9455x1
    #loop
    .goto 97,31.01,61.21,0
    .goto 97,31.01,61.21,40,0
    .goto 97,34.00,57.47,40,0
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r
    .complete 9456,1 --Infected Nightstalker Runt slain (8)
    .mob Infected Nightstalker Runt
    .isOnQuest 9456
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,25.72,71.19,0
    .goto 97,25.72,71.19,40,0
    .goto 97,26.76,73.47,40,0
    >>Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for |cRXP_LOOT_Moongraze Buck Hide|r
    .complete 10324,1 --Moongraze Buck Hide (6)
    .mob Moongraze Buck
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop9514x1
    >>|cRXP_LOOT_Rune Covered Tablet|r can drop from |cRXP_ENEMY_Wrathscale Naga|r, |cRXP_ENEMY_Wrathscale Myrmidon|r, |cRXP_ENEMY_Wrathscale Siren|r. Use it to start the quest if you get one
    .collect 23759,1,9514 --Rune Covered Tablet (1)
    .accept 9514 >>Accept Rune Covered Tablet
    .use 23759
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop9514x1
    #loop
    .goto 97,28.80,79.56,0
    .goto 97,28.80,79.56,40,0
    .goto 97,31.48,77.48,40,0
    .goto 97,33.98,79.42,40,0
    .goto 97,31.67,80.08,40,0
    >>Kill |cRXP_ENEMY_Wrathscale Myrmidons|r
    >>Kill |cRXP_ENEMY_Wrathscale Nagas|r
    >>Kill |cRXP_ENEMY_Wrathscale Sirens|r
    >>Pick up |cRXP_PICK_Ancient Relic|r from the ground
    .complete 9513,1 --Wrathscale Myrmidon slain (5)
    .complete 9513,2 --Wrathscale Naga slain (5)
    .complete 9513,3 --Wrathscale Siren slain (5)
    .complete 9523,1 --Ancient Relic (8)
    .mob Wrathscale Myrmidon
    .mob Wrathscale Naga
    .mob Wrathscale Siren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,18.48,84.35
    >>Click the |cRXP_PICK_Naga Flag|r
    .complete 9531,1 --Naga Flag
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,16.60,94.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >>Turn in The Missing Fisherman
    .accept 9527 >>Accept All That Remains
    .target Cowlen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,13.72,89.56,0
    .goto 97,13.72,89.56,40,0
    .goto 97,11.97,86.70,40,0
    .goto 97,9.37,82.56,40,0
    >>Kill |cRXP_ENEMY_Deranged Owlbeasts|r, |cRXP_ENEMY_Aberrant Owlbeasts|r and |cRXP_ENEMY_Raving Owlbeasts|r. Loot them for |cRXP_LOOT_Remains of Cowlen's Family|r
    .complete 9527,1 --Remains of Cowlen's Family (1)
    .mob Deranged Owlbeast
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,16.60,94.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >>Turn in All That Remains
    .target Cowlen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.24,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .turnin 9523 >>Turn in Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >>Turn in Tree's Company
    .accept 9537 >>Accept Show Gnomercy
    .target Admiral Odesyus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9513 >>Turn in Reclaiming the Ruins
    .target Priestess Kyleen Il'dinare
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9514 >>Turn in Rune Covered Tablet
    .target Priestess Kyleen Il'dinare
    .isOnQuest 9514
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.81,69.90
    >>Kill |cRXP_ENEMY_Engineer "Spark" Overgrind|r and loot |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Traitor's Communication (1)
    .mob Engineer "Spark" Overgrind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9537 >>Turn in Show Gnomercy
    .accept 9602 >>Accept Deliver Them From Evil...
    .target Admiral Odesyus
step
    .goto 97,49.90,51.90
    .xp 9+2430 >> Grind until 2430+/6500xp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >>Turn in Find Acteon! while you are here
    .isQuestComplete 9453
    .target Acteon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 10324 >>Turn in The Great Moongraze Hunt while you are here
    .isQuestComplete 10324
    .target Acteon
step << Draenei
    .goto 97,48.39,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >>Turn in An Alternative Alternative while you are here
    .isQuestComplete 9473
    .target Daedal
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.37,51.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .turnin 9544 >>Turn in The Prophecy of Akida
    .target Arugoo of the Stillpine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 7 >>Grind to level 7 (Stillpine Hold needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.37,51.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .accept 9559 >>Accept Stillpine Hold
    .target Arugoo of the Stillpine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >>Turn in Find Acteon!
    .turnin 10324 >>Turn in The Great Moongraze Hunt
    .target Acteon
step << Draenei
    .goto 97,48.39,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >>Turn in An Alternative Alternative
    .target Daedal
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9456 >>Turn in Nightstalker Clean Up, Isle 2...
    .target Exarch Menelaous
    .isOnQuest 9456
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9602 >>Turn in Deliver Them From Evil...
    .target Exarch Menelaous
step << Shaman cata
    .goto 97,48.05,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Train your class spells
    .target Tuluun
step << Paladin cata
    .goto 97,48.36,49.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .trainer >> Train your class spells
    .target Tullas
step << Warrior cata
    .goto 97,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .trainer >> Train your class spells
    .target Ruada
step << Hunter cata
    .goto 97,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .trainer >> Train your class spells
    .target Acteon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,44.76,23.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .accept 9560 >>Accept Beasts of the Apocalypse!
    .target Moordo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,44.62,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurf|r
    .accept 9562 >>Accept Murlocs... Why Here? Why Now?
    .target Gurf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.69,20.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .turnin 9559 >>Turn in Stillpine Hold
    .target High Chief Stillpine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,54.44,18.07,0
    .goto 97,54.44,18.07,40,0
    .goto 97,55.21,21.87,40,0
    >>Kill |cRXP_ENEMY_Ravager Specimens|r. Loot them for |cRXP_LOOT_Ravager Hide|r
    .complete 9560,1 --Ravager Hide (8)
    .mob Ravager Specimen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,44.76,23.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .turnin 9560 >>Turn in Beasts of the Apocalypse!
    .target Moordo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.69,20.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9565 >>Accept Search Stillpine Hold
    .target High Chief Stillpine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,50.58,11.57
    >>Click the |cRXP_PICK_Blood Crystal|r
    .turnin 9565 >>Turn in Search Stillpine Hold
    .accept 9566 >>Accept Blood Crystals
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.69,20.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .turnin 9566 >>Turn in Blood Crystals
    .target High Chief Stillpine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along72
    >>As you go: Kill |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r, |cRXP_ENEMY_Siltfin Hunters|r and |cRXP_ENEMY_Murgurgulas|r. Loot them for |cRXP_LOOT_Stillpine Grain|r. It can also be picked up from |cRXP_PICK_Stillpine Grain|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9562,1 --Stillpine Grain (1)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
    .mob Murgurgula
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along72
    .goto 97,35.01,21.98
    >>Kill |cRXP_ENEMY_Murgurgula|r and loot |cRXP_LOOT_Gurf's Dignity|r. Use it to start the quest
    .collect 23850,1,9564 --Gurf's Dignity (1)
    .accept 9564 >>Accept Gurf's Dignity
    .use 23850
    .mob Murgurgula
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,34.18,21.32,0
    .goto 97,34.18,21.32,40,0
    .goto 97,32.87,26.47,40,0
    >>Kill |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r, |cRXP_ENEMY_Siltfin Hunters|r and |cRXP_ENEMY_Murgurgulas|r. Loot them for |cRXP_LOOT_Stillpine Grain|r. It can also be picked up from |cRXP_PICK_Stillpine Grain|r on the ground
    .complete 9562,1 --Stillpine Grain (1)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
    .mob Murgurgula
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,44.62,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurf|r
    .turnin 9562 >>Turn in Murlocs... Why Here? Why Now?
    .turnin 9564 >>Turn in Gurf's Dignity
    .target Gurf
step << Draenei
    #completewith next
    .hs >>Hearth to Nabek's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Draenei
    .goto 97,49.71,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldaan|r
    .accept 9604 >>Accept On the Wings of a Hippogryph
    .target Zaldaan
step << Draenei
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .accept 9605 >>Accept Hippogryph Master Stephanos
    .target Nurguni
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
    .accept 9606 >>Accept Return to Caregiver Chellan
    .target Stephanos
step << Draenei
    #completewith next
    .zone 97 >>Leave The Exodar for Azuremyst Isle
    .zoneskip 97
step << Draenei
    .goto 97,48.37,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9606 >>Turn in Return to Caregiver Chellan
    .target Caregiver Chellan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9515 >>Accept Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
    .isQuestTurnedIn 9514 --any of: Rune Covered Tablet
    .xp <6,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,24.79,74.04
    >>Kill |cRXP_ENEMY_Warlord Sriss'tiz|r
    .complete 9515,1 --Warlord Sriss'tiz slain (1)
    .mob Warlord Sriss'tiz
    .isOnQuest 9515
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9515 >>Turn in Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
    .isOnQuest 9515
step
    +|cRXP_WARN_That is all of Azuremyst Isle for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ammen Vale|r: You Survived! << Draenei
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren/Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    +|cRXP_WARN_The rest of Azuremyst Isle is planned from level 11.|r Load its guide for level 11 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren/Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 12 Azuremyst Isle
#subweight -1
#name 11-12 Azuremyst Isle
--RouteBuilder:next
#next Zone Routes (Alliance)\10-13 Darkshore: around Ranger Glynda Nal'Shea;Zone Routes (Alliance)\11-15 Loch Modan: around Captain Rugelfuss

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.97,22.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .accept 9570 >>Accept The Kurken is Lurkin'
    .target Kurz the Revelator
    .isQuestTurnedIn 9565,9573 --any of: Search Stillpine Hold, Chieftain Oomooroo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.90,21.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .accept 9573 >>Accept Chieftain Oomooroo
    .target Stillpine the Younger
    .isQuestTurnedIn 9560,9562 --any of: Beasts of the Apocalypse!, Murlocs... Why Here? Why Now?
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.40,14.12
    >>Kill |cRXP_ENEMY_Chieftain Oomooroo|r
    .complete 9573,1 --Chieftain Oomooroo slain (1)
    .mob Chieftain Oomooroo
    .isOnQuest 9573
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 97,47.89,15.34,0
    .goto 97,47.89,15.34,40,0
    .goto 97,48.10,12.28,40,0
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r
    .complete 9573,2 --Crazed Wildkin slain (9)
    .mob Crazed Wildkin
    .isOnQuest 9573
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,49.95,12.81
    >>Kill |cRXP_ENEMY_The Kurken|r and loot |cRXP_LOOT_The Kurken's Hide|r
    .complete 9570,1 --The Kurken's Hide (1)
    .mob The Kurken
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.97,22.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .turnin 9570 >>Turn in The Kurken is Lurkin'
    .accept 9571 >>Accept The Kurken's Hide
    .target Kurz the Revelator
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.90,21.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .turnin 9573 >>Turn in Chieftain Oomooroo
    .target Stillpine the Younger
    .isOnQuest 9573
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,46.69,20.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >>Accept Warn Your People
    .target High Chief Stillpine
    .isQuestTurnedIn 9566 --Blood Crystals
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,44.76,23.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .turnin 9571 >>Turn in The Kurken's Hide
    .target Moordo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .accept 9623 >>Accept Coming of Age
    .target Exarch Menelaous
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 97,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9622 >>Turn in Warn Your People
    .target Exarch Menelaous
    .isOnQuest 9622
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 97,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .accept 9582 >>Accept Strength of One
    .target Ruada
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 97,54.03,9.95
    >>Kill |cRXP_ENEMY_Death Ravager|r
    .complete 9582,1 --Death Ravager slain (1)
    .mob Death Ravager
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 97,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >>Turn in Strength of One
    .accept 10350 >>Accept Behomat
    .target Ruada
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >>Turn in Coming of Age
    .accept 9625 >>Accept Elekks Are Serious Business
    .target Torallius the Pack Handler
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
step
    +|cRXP_WARN_End of the Azuremyst Isle route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 11|r: |cRXP_FRIENDLY_Darkshore|r (about 1.0 levels of quests, starting around Ranger Glynda Nal'Shea), |cRXP_FRIENDLY_Loch Modan|r (about 0.7 levels of quests, starting around Captain Rugelfuss). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
