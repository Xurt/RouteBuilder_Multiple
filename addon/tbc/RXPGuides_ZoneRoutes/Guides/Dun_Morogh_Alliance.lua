-- 1-30 Dun Morogh: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 8 parts (from level 1, 11, 14, 17, 21, 24, 27, 30).
-- Split into 9 guides, listed under "1 - 31 Dun Morogh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Dun Morogh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 1-4 Dun Morogh: around Sten Stoutarm
#next Zone Routes (Alliance)\4-9 Dun Morogh: around Alamar Grimm

step
    .goto 1426/0,328.03,-6214.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >>Accept Dwarven Outfitters
    .target Sten Stoutarm
step << Warrior/Warlock
    .goto 1426/0,384.08,-6104.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r inside
    .vendor >> Vendor Trash
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
step << Warrior
    .goto 1426/0,382.16,-6084.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r inside
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Thran Khorman
step << Human Warlock/Gnome Warlock
    .goto 1426/0,391.07,-6048.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .accept 1599 >>Accept Beginnings
    .target Alamar Grimm
step << Warlock
    .goto 1426/0,391.07,-6048.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r inside
    .train 348 >> Train |T135817:0|t[Immolate]
    .target Alamar Grimm
step << Warrior/Warlock
    .hs >> Hearth to Coldridge Valley
    .subzoneskip 77,1
step
    #loop
    .goto 1426/0,341.33,-6315.61,0
    .goto 1426/0,341.33,-6315.61,40,0
    .goto 1426/0,420.62,-6338.60,40,0
    .goto 1426/0,497.94,-6202.01,40,0
    >>Kill |cRXP_ENEMY_Ragged Timber Wolfs|r and |cRXP_ENEMY_Ragged Young Wolfs|r. Loot them for |cRXP_LOOT_Tough Wolf Meat|r
    .complete 179,1 --Tough Wolf Meat (8)
    .mob Ragged Timber Wolf
    .mob Ragged Young Wolf
step
    .goto 1426/0,347.78,-6283.31,0
    .goto 1426/0,417.32,-6342.47,0
    .goto 1426/0,395.65,-6257.07,0
    .goto 1426/0,347.78,-6283.31,60,0
    .goto 1426/0,371.17,-6326.71,60,0
    .goto 1426/0,395.60,-6365.23,60,0
    .goto 1426/0,417.32,-6342.47,60,0
    .goto 1426/0,444.65,-6317.62,60,0
    .goto 1426/0,433.28,-6277.96,60,0
    .goto 1426/0,395.65,-6257.07,60,0
    .xp 2 >> Grind to level 2
step
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >>|cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 600|r |T132384:0|t[Light Shots] |cRXP_BUY_from him|r << Hunter
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r << Priest/Mage/Warlock
    >>|cRXP_WARN_Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r << Priest/Mage/Warlock
    .collect 159,15 << Priest/Mage/Warlock
    .collect 2516,600 << Hunter
    .target Adlin Pridedrift
step
    .goto 1426/0,328.03,-6214.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >>Turn in Dwarven Outfitters
    .accept 233 >>Accept Coldridge Valley Mail Delivery
    .accept 3106 >>Accept Simple Rune << Dwarf Warrior
    .accept 3107 >>Accept Consecrated Rune << Dwarf Paladin
    .accept 3108 >>Accept Etched Rune << Dwarf Hunter
    .accept 3109 >>Accept Encrypted Rune << Dwarf Rogue
    .accept 3110 >>Accept Hallowed Rune << Dwarf Priest
    .accept 3112 >>Accept Simple Memorandum << Gnome Warrior
    .accept 3113 >>Accept Encrypted Memorandum << Gnome Rogue
    .accept 3114 >>Accept Glyphic Memorandum << Gnome Mage
    .accept 3115 >>Accept Tainted Memorandum << Gnome Warlock
    .target Sten Stoutarm
step
    .goto 1426/0,338.87,-6216.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >>Accept A New Threat
    .target Balir Frosthammer
step << Human Warlock/Gnome Warlock
    #loop
    .goto 1426/0,304.39,-6532.31,0
    .goto 1426/0,304.39,-6532.31,40,0
    .goto 1426/0,389.10,-6606.85,40,0
    >>Kill |cRXP_ENEMY_Frostmane Novices|r. Loot them for |cRXP_LOOT_Feather Charm|r
    .complete 1599,1 --Feather Charm (3)
    .mob Frostmane Novice
step
    .goto 1426/0,391.07,-6048.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .turnin 1599 >>Turn in Beginnings << Human Warlock/Gnome Warlock
    .turnin 3115 >>Turn in Tainted Memorandum << Gnome Warlock
    .target Alamar Grimm
step << Gnome Mage
    .goto 1426/0,388.12,-6056.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >>Turn in Glyphic Memorandum while you are here
    .isQuestComplete 3114
    .target Marryk Nurribit
step << Dwarf Priest
    .goto 1426/0,393.53,-6056.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >>Turn in Hallowed Rune while you are here
    .isQuestComplete 3110
    .target Branstock Khalder
step << Dwarf Warrior
    .goto 1426/0,382.21,-6084.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Turn in Simple Rune while you are here
    .isQuestComplete 3106
    .target Thran Khorman
step << Gnome Warrior
    .goto 1426/0,382.21,-6084.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3112 >>Turn in Simple Memorandum while you are here
    .isQuestComplete 3112
    .target Thran Khorman
step << Dwarf Rogue
    .goto 1426/0,404.86,-6093.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3109 >>Turn in Encrypted Rune while you are here
    .isQuestComplete 3109
    .target Solm Hargrin
step << Gnome Rogue
    .goto 1426/0,404.86,-6093.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >>Turn in Encrypted Memorandum while you are here
    .isQuestComplete 3113
    .target Solm Hargrin
step << Dwarf Hunter
    .goto 1426/0,364.97,-6091.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Turn in Etched Rune while you are here
    .isQuestComplete 3108
    .target Thorgas Grimson
step << Dwarf Paladin
    .goto 1426/0,382.21,-6120.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 3107 >>Turn in Consecrated Rune while you are here
    .isQuestComplete 3107
    .target Bromos Grummner
step
    #completewith Along9
    >>As you go: Kill |cRXP_ENEMY_Burly Rockjaw Troggs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 170,2 --Burly Rockjaw Trogg slain (6)
    .mob Burly Rockjaw Trogg
step
    .goto 1426/0,689.03,-6222.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >>Turn in Coldridge Valley Mail Delivery
    .accept 183 >>Accept The Boar Hunter
    .accept 234 >>Accept Coldridge Valley Mail Delivery
    .target Talin Keeneye
step
    #loop
    .goto 1426/0,717.60,-6251.59,0
    .goto 1426/0,717.60,-6251.59,40,0
    .goto 1426/0,719.57,-6152.43,40,0
    .goto 1426/0,798.37,-6314.63,40,0
    >>Kill |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Small Crag Boar slain (12)
    .mob Small Crag Boar
step
    #label Along9
    .goto 1426/0,689.03,-6222.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >>Turn in The Boar Hunter
    .target Talin Keeneye
step
    #loop
    .goto 1426/0,375.80,-6408.86,0
    .goto 1426/0,375.80,-6408.86,40,0
    .goto 1426/0,290.60,-6343.85,40,0
    .goto 1426/0,235.44,-6364.21,40,0
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r
    >>Kill |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Rockjaw Trogg slain (6)
    .complete 170,2 --Burly Rockjaw Trogg slain (6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Warlock
    .goto 1426/0,640.03,-6256.25,0
    .goto 1426/0,515.82,-6322.15,0
    .goto 1426/0,480.61,-6328.06,0
    .goto 1426/0,478.05,-6265.15,0
    .goto 1426/0,640.03,-6256.25,50,0
    .goto 1426/0,605.80,-6287.25,50,0
    .goto 1426/0,588.46,-6311.28,50,0
    .goto 1426/0,515.82,-6322.15,50,0
    .goto 1426/0,480.61,-6328.06,50,0
    .goto 1426/0,478.05,-6265.15,50,0
    .xp 3+1130 >> Grind to 1130+/1400xp
step
    .goto 1426/0,566.89,-6362.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >>Turn in Coldridge Valley Mail Delivery
    .accept 182 >>Accept The Troll Cave
    .target Grelin Whitebeard
step << Hunter
    .goto 1426/0,528.43,-6444.55,0
    .goto 1426/0,634.07,-6512.19,0
    .goto 1426/0,784.04,-6367.10,0
    .xp 4 >> Grind to level 4
step
    .goto 1426/0,571.82,-6371.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >>Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step
    .goto 1426/0,385.16,-6056.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >>Turn in Scalding Mornbrew Delivery
    .accept 3365 >>Accept Bring Back the Mug
    .target Durnan Furcutter
step
    .goto 1426/0,396.00,-6097.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r
    .accept 3361 >>Accept A Refugee's Quandary
    .target Felix Whindlebolt
step << Dwarf Paladin
    .goto 1426/0,382.21,-6120.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 3107 >>Turn in Consecrated Rune
    .target Bromos Grummner
step << Paladin
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r inside
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Bromos Grummner
step << Warlock
    .goto 1426/0,391.07,-6048.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Alamar Grimm
step << Dwarf Hunter
    .goto 1426/0,364.97,-6091.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Turn in Etched Rune
    .target Thorgas Grimson
step << Hunter
    .goto 1426/0,365.21,-6091.86
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
step
    .goto 1426/0,338.87,-6216.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >>Turn in A New Threat
    .target Balir Frosthammer
step
    #completewith Along18
    >>As you go: Pick up |cRXP_PICK_Felix's Box|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 3361,1 --Felix's Box (1)
step
    #completewith Along18
    >>As you go: Pick up |cRXP_PICK_Felix's Chest|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 3361,2 --Felix's Chest (1)
step
    #label Along18
    #loop
    .goto 1426/0,676.72,-6502.44,0
    .goto 1426/0,676.72,-6502.44,40,0
    .goto 1426/0,766.36,-6386.86,40,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Frostmane Troll Whelp slain (14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,566.89,-6362.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >>Turn in The Troll Cave
    .accept 218 >>Accept The Stolen Journal
    .target Grelin Whitebeard
step
    .goto 1426/0,571.82,-6371.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >>Turn in Bring Back the Mug
    .target Nori Pridedrift
step
    .goto 1426/0,773.74,-6374.71
    >>Pick up |cRXP_PICK_Felix's Box|r from the ground
    .complete 3361,1 --Felix's Box (1)
step
    .goto 1426/0,680.17,-6503.75
    >>Pick up |cRXP_PICK_Felix's Chest|r from the ground
    .complete 3361,2 --Felix's Chest (1)
step
    .goto 1426/0,505.33,-6480.11
    >>Pick up |cRXP_PICK_Felix's Bucket of Bolts|r from the ground
    .complete 3361,3 --Felix's Bucket of Bolts (1)
step
    .goto 1426/0,300.94,-6508.67
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r and loot |cRXP_LOOT_Grelin Whitebeard's Journal|r
    .complete 218,1 --Grelin Whitebeard's Journal (1)
    .mob Grik'nir the Cold
step
    .goto 1426/0,566.89,-6362.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >>Turn in The Stolen Journal
    .accept 282 >>Accept Senir's Observations
    .target Grelin Whitebeard
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 4-9 Dun Morogh: around Alamar Grimm
--RouteBuilder:next
#next Zone Routes (Alliance)\5-10 Elwynn Forest: around Marshal Dughan;Zone Routes (Alliance)\5-10 Azuremyst Isle: around Daedal;Zone Routes (Alliance)\8-11 Teldrassil: around Mathrengyl Bearwalker

step
    .goto 1426/0,396.00,-6097.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r
    .turnin 3361 >>Turn in A Refugee's Quandary
    .target Felix Whindlebolt
    .isOnQuest 3361
step << Dwarf Warrior
    .goto 1426/0,382.21,-6084.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Turn in Simple Rune
    .target Thran Khorman
    .isOnQuest 3106
step << Dwarf Rogue
    .goto 1426/0,404.86,-6093.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3109 >>Turn in Encrypted Rune
    .target Solm Hargrin
    .isOnQuest 3109
step << Rogue
    .goto 1426/0,404.91,-6093.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .train 1784 >>Train |T132320:0|t[Stealth]
    .target Solm Hargrin
step << Dwarf Priest
    .goto 1426/0,393.53,-6056.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >>Turn in Hallowed Rune
    .target Branstock Khalder
    .isOnQuest 3110
step << Dwarf Priest
    .goto 1426/0,393.53,-6056.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >>Accept In Favor of the Light
    .target Branstock Khalder
step << Priest
    .goto 1426/0,393.53,-6056.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Train|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_and|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_as you'll need them for a class quest soon|r << Dwarf
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 2052 >> Train |T135929:0|t[Lesser Heal] (Rank 2) << Dwarf
    .trainer >> Train your class spells
    .target Branstock Khalder
step << Gnome Warrior
    .goto 1426/0,382.21,-6084.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3112 >>Turn in Simple Memorandum
    .target Thran Khorman
    .isOnQuest 3112
step << Warrior
    .goto 1426/0,382.11,-6084.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Thran Khorman
step << Gnome Rogue
    .goto 1426/0,404.86,-6093.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >>Turn in Encrypted Memorandum
    .target Solm Hargrin
    .isOnQuest 3113
step << Gnome Mage
    .goto 1426/0,388.12,-6056.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >>Turn in Glyphic Memorandum
    .target Marryk Nurribit
    .isOnQuest 3114
step << Mage
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Marryk Nurribit
step
    .goto 1426/0,153.19,-6235.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .turnin 282 >>Turn in Senir's Observations
    .target Mountaineer Thalos
    .isOnQuest 282
step
    .goto 1426/0,153.19,-6235.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .accept 420 >>Accept Senir's Observations
    .target Mountaineer Thalos
    .isQuestTurnedIn 282 --any of: Senir's Observations
step
    .goto 1426/0,134.97,-6248.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 2160 >>Accept Supplies to Tannok
    .target Hands Springsprocket
step
    .goto 1426/0,-331.23,-5725.04,60,0
    .goto 1426/0,-362.40,-5601.62,60,0
    .goto 1426/0,-102.76,-5865.50,60,0
    .goto 1426/0,-499.17,-5644.37
    .xp 5+2145 >> Travel to Kharanos. Grind to 2145+/2800xp killing |cRXP_ENEMY_Crag Boars|r en-route << Priest
    .xp 5+2415 >> Travel to Kharanos. Grind to 2415+/2800xp killing |cRXP_ENEMY_Crag Boars|r en-route << !Priest
step
    .goto 1426/0,-499.37,-5644.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >>Turn in Senir's Observations
    .target Senir Whitebeard
    .isOnQuest 420
step
    .goto 1426/0,-576.69,-5748.58
    .xp 5+2690 >> Grind to 2690+/2800xp << !Warlock !Priest
    .xp 5+2350 >> Grind to 2350+/2800xp << Priest
    .xp 6 << Warlock
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt (Rank 2)]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Gimrizz Shadowcog
step << Warlock
    .goto 1426/0,-524.88,-5638.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_BUY_if you can afford it. If not you can buy it later|r
    .train 20397,1
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto 1426/0,-523.50,-5590.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >>Turn in Supplies to Tannok
    .target Tannok Frosthammer
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r inside in the backroom
    .trainer >> Train your class spells
    .target Hogral Bakkan
    .xp <6,1
step << Mage
    .goto 1426/0,-537.19,-5586.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r inside upstairs
    .trainer >> Train your class spells
    .target Magis Sparkmantle
step << Paladin
    .goto 1426/0,-542.07,-5586.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r inside upstairs
    .trainer >> Train your class spells
    .target Azar Stronghammer
step << Dwarf Priest
    .goto 1426/0,-529.41,-5590.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .turnin 5626 >>Turn in In Favor of the Light
    .accept 5625 >>Accept Garments of the Light
    .target Maxan Anvol
step << Dwarf Priest
    .goto 1426/0,-454.06,-5668.80
    >>Interact with |cRXP_FRIENDLY_Mountaineer Dolf|r
    .complete 5625,1 --Mountaineer Dolf
    .target Mountaineer Dolf
step << Dwarf Priest
    .goto 1426/0,-529.41,-5590.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .turnin 5625 >>Turn in Garments of the Light
    .target Maxan Anvol
step << Priest
    .goto 1426/0,-529.51,-5590.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r inside
    .trainer >> Train your class spells
    .target Maxan Anvol
step << Dwarf Hunter
    .goto 1426/0,-454.06,-5618.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6076 >>Turn in The Hunter's Path
    .target Grif Wildheart
    .isOnQuest 6076
step
    .goto 1426/0,-201.41,-6015.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .target Hegnar Rumbleshot
    .home >>Set your Hearthstone to Hegnar Rumbleshot's inn
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .vendor >> |cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford|r << Priest/Mage/Warlock
    .target Innkeeper Belm
step << Warrior
    .goto 1426/0,-530.40,-5605.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r inside
    .trainer >> Train your class spells
    .target Granis Swiftaxe
step << Warrior/Rogue/Paladin
    .goto 1426/0,-431.11,-5582.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire|r
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_which increase your melee damage by 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Tognus Flintfire
step
    .goto 1426/0,-464.40,-5573.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >>Accept Tools for Steelgrill
    .target Tharek Blackstone
step
    .goto 1426/0,-632.34,-5466.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 317 >>Accept Stocking Jetsteam
    .target Pilot Bellowfiz
step
    #completewith Along48
    >>As you go: Kill |cRXP_ENEMY_Crag Boars|r, |cRXP_ENEMY_Large Crag Boars|r, |cRXP_ENEMY_Elder Crag Boars|r and |cRXP_ENEMY_Scarred Crag Boars|r. Loot them for |cRXP_LOOT_Chunk of Boar Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    .goto 1426/0,-641.70,-5473.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >>Accept The Grizzled Den
    .target Pilot Stonegear
step
    .goto 1426/0,-682.09,-5488.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >>Turn in Tools for Steelgrill
    .target Beldin Steelgrill
step
    #label Along48
    .goto 1426/0,-664.36,-5499.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >>Accept Ammo for Rumbleshot
    .target Loslor Rudge
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r and |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_WARN_If you can't afford it, skip this step|r
    .goto 1426/0,-682.23,-5488.94
    .target +Beldin Steelgrill
    .collect 2901,1
    .goto 1426/0,-664.55,-5499.71
    .target +Loslor Rudge
    .train 2018,3
step << Warrior/Paladin/Rogue
    .goto 1426/0,-660.91,-5528.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yarr Hammerstone|r inside downstairs
    >>|cRXP_WARN_If you can't afford it, skip this step|r
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Yarr Hammerstone
    .train 2018,3
step
    #loop
    .goto 1426/0,-585.06,-5535.49,0
    .goto 1426/0,-585.06,-5535.49,40,0
    .goto 1426/0,-566.84,-5428.46,40,0
    .goto 1426/0,-709.17,-5593.94,40,0
    >>Kill |cRXP_ENEMY_Young Black Bears|r and |cRXP_ENEMY_Ice Claw Bears|r. Loot them for |cRXP_LOOT_Thick Bear Fur|r
    >>Kill |cRXP_ENEMY_Crag Boars|r, |cRXP_ENEMY_Large Crag Boars|r, |cRXP_ENEMY_Elder Crag Boars|r and |cRXP_ENEMY_Scarred Crag Boars|r. Loot them for |cRXP_LOOT_Chunk of Boar Meat|r
    .complete 317,2 --Thick Bear Fur (2)
    .complete 317,1 --Chunk of Boar Meat (4)
    .mob Young Black Bear
    .mob Ice Claw Bear
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    .goto 1426/0,-632.34,-5466.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >>Turn in Stocking Jetsteam
    .accept 318 >>Accept Evershine
    .target Pilot Bellowfiz
step << Hunter
    .goto 1426/0,-454.06,-5618.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Grif Wildheart
step
    #loop
    .goto 1426/0,-303.35,-5516.45,0
    .goto 1426/0,-303.35,-5516.45,40,0
    .goto 1426/0,-289.07,-5639.58,40,0
    >>Kill |cRXP_ENEMY_Young Wendigos|r, |cRXP_ENEMY_Wendigos|r, |cRXP_ENEMY_Edan the Howlers|r and |cRXP_ENEMY_Old Icebeards|r. Loot them for |cRXP_LOOT_Wendigo Mane|r
    .complete 313,1 --Wendigo Mane (8)
    .mob Young Wendigo
    .mob Wendigo
    .mob Edan the Howler
    .mob Old Icebeard
step
    .goto 1426/0,-314.78,-5674.87,0
    .goto 1426/0,-262.38,-5651.82,0
    .goto 1426/0,-222.09,-5483.52,0
    .goto 1426/0,-314.78,-5674.87,40,0
    .goto 1426/0,-261.54,-5690.04,40,0
    .goto 1426/0,-262.38,-5651.82,40,0
    .goto 1426/0,-275.13,-5626.25,40,0
    .goto 1426/0,-222.09,-5483.52,40,0
    >>Kill |cRXP_ENEMY_Wendigos|r and |cRXP_ENEMY_Young Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    >>|cRXP_WARN_Remember to keep an eye out for|r |T134566:0|t[Copper Veins] |cRXP_WARN_which yield|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_so you can craft|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Remember to keep an eye out for|r |T134566:0|t[Copper Veins] |cRXP_WARN_which yield|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_so you can craft|r |T135255:0|t[Rough Weightstones] << Paladin
    .train 2018,3 << Warrior/Paladin/Rogue
step << Warrior/Paladin/Rogue
    .goto 1426/0,-314.78,-5674.87,0
    .goto 1426/0,-262.38,-5651.82,0
    .goto 1426/0,-222.09,-5483.52,0
    .goto 1426/0,-314.78,-5674.87,40,0
    .goto 1426/0,-261.54,-5690.04,40,0
    .goto 1426/0,-262.38,-5651.82,40,0
    .goto 1426/0,-275.13,-5626.25,40,0
    .goto 1426/0,-222.09,-5483.52,40,0
    >>Kill |cRXP_ENEMY_Wendigos|r and |cRXP_ENEMY_Young Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    .train 2018,1 << Warrior/Paladin/Rogue
step
    .goto 1426/0,-371.32,-5746.94
    >>Open the |cRXP_PICK_Ammo Crate|r. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Rumbleshot's Ammo (1)
step
    .goto 1426/0,-201.41,-6015.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >>Turn in Ammo for Rumbleshot
    .target Hegnar Rumbleshot
step
    .goto 1426/0,-641.70,-5473.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >>Turn in The Grizzled Den
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    .goto 1426/0,-664.55,-5499.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from him|r
    .collect 2901,1
    .target Loslor Rudge
    .train 2018,3
step << !Warrior !Paladin !Rogue
    .goto 1426/0,-112.46,-5910.52,0
    .goto 1426/0,-107.98,-5857.06,0
    .goto 1426/0,17.41,-5857.46,0
    .goto 1426/0,-112.46,-5910.52,45,0
    .goto 1426/0,-107.98,-5857.06,45,0
    .goto 1426/0,17.41,-5857.46,45,0
    .xp 7 >> Grind to level 7
step << Warrior/Paladin/Rogue
    .goto 1426/0,-587.67,-5751.47,60,0
    .goto 1426/0,-477.45,-5840.42,60,0
    .goto 1426/0,-350.34,-6020.97,60,0
    .goto 1426/0,-400.82,-6033.74,60,0
    .goto 1426/0,-420.47,-6001.47,60,0
    .goto 1426/0,-468.88,-5989.88,60,0
    .goto 1426/0,-545.02,-5979.70,60,0
    .goto 1426/0,-635.00,-5924.90,60,0
    .goto 1426/0,-618.85,-5841.90,60,0
    .goto 1426/0,-631.01,-5809.49,60,0
    .xp 7 >> Grind to Level 7
step << Warrior/Rogue
    .goto 1426/0,-507.74,-5587.70,20,0
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .vendor 1247 > |cRXP_BUY_Buy up to 15|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if you can afford|r
    .target Innkeeper Belm
    .xp >10,1
step << Hunter Hunter
    .goto 1426/0,-454.06,-5618.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Train your class spells
    .target Grif Wildheart
step << Hunter
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
    .money <0.0100
step
    .goto 1426/0,315.23,-5378.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 318 >>Turn in Evershine
    .accept 319 >>Accept A Favor for Evershine
    .accept 315 >>Accept The Perfect Stout
    .target Rejold Barleybrew
step
    .goto 1426/0,315.23,-5371.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .accept 310 >>Accept Bitter Rivals
    .target Marleth Barleybrew
step
    #loop
    .goto 1426/0,214.76,-5423.20,0
    .goto 1426/0,214.76,-5423.20,40,0
    .goto 1426/0,478.24,-5417.29,40,0
    .goto 1426/0,420.62,-5292.20,40,0
    .goto 1426/0,265.48,-5175.97,40,0
    .goto 1426/0,82.77,-5050.22,40,0
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r
    >>Kill |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2 --Elder Crag Boar slain (8)
    .complete 319,1 --Ice Claw Bear slain (6)
    .complete 319,3 --Snow Leopard slain (8)
    .mob Elder Crag Boar
    .mob Ice Claw Bear
    .mob Snow Leopard
step
    .goto 1426/0,315.23,-5378.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 319 >>Turn in A Favor for Evershine
    .accept 320 >>Accept Return to Bellowfiz
    .target Rejold Barleybrew
step
    .goto 1426/0,264.89,-5163.79,0
    .goto 1426/0,429.19,-5372.61,0
    .goto 1426/0,352.02,-5522.10,0
    .goto 1426/0,241.30,-5414.90,0
    .goto 1426/0,264.89,-5163.79,60,0
    .goto 1426/0,322.17,-5143.17,60,0
    .goto 1426/0,364.08,-5205.45,60,0
    .goto 1426/0,356.00,-5288.10,60,0
    .goto 1426/0,408.41,-5336.23,60,0
    .goto 1426/0,429.19,-5372.61,60,0
    .goto 1426/0,507.10,-5403.31,60,0
    .goto 1426/0,444.65,-5441.82,60,0
    .goto 1426/0,422.10,-5461.85,60,0
    .goto 1426/0,429.29,-5499.12,60,0
    .goto 1426/0,352.02,-5522.10,60,0
    .goto 1426/0,402.79,-5599.16,60,0
    .goto 1426/0,440.32,-5640.53,60,0
    .goto 1426/0,483.71,-5708.46,60,0
    .goto 1426/0,359.35,-5658.26,60,0
    .goto 1426/0,237.56,-5511.85,60,0
    .goto 1426/0,135.86,-5458.11,60,0
    .goto 1426/0,241.30,-5414.90,60,0
    .xp 7+3735 >>Grind to 3735+/4500xp
step
    .goto 1426/0,264.89,-5163.79,0
    .goto 1426/0,429.19,-5372.61,0
    .goto 1426/0,352.02,-5522.10,0
    .goto 1426/0,241.30,-5414.90,0
    .goto 1426/0,264.89,-5163.79,60,0
    .goto 1426/0,322.17,-5143.17,60,0
    .goto 1426/0,364.08,-5205.45,60,0
    .goto 1426/0,356.00,-5288.10,60,0
    .goto 1426/0,408.41,-5336.23,60,0
    .goto 1426/0,429.19,-5372.61,60,0
    .goto 1426/0,507.10,-5403.31,60,0
    .goto 1426/0,444.65,-5441.82,60,0
    .goto 1426/0,422.10,-5461.85,60,0
    .goto 1426/0,429.29,-5499.12,60,0
    .goto 1426/0,352.02,-5522.10,60,0
    .goto 1426/0,402.79,-5599.16,60,0
    .goto 1426/0,440.32,-5640.53,60,0
    .goto 1426/0,483.71,-5708.46,60,0
    .goto 1426/0,359.35,-5658.26,60,0
    .goto 1426/0,237.56,-5511.85,60,0
    .goto 1426/0,135.86,-5458.11,60,0
    .goto 1426/0,241.30,-5414.90,60,0
    .xp 7+4360 >>Grind to 4360+/4500xp
step
    .goto 1426/0,-548.13,-5607.40
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >>Turn in Bitter Rivals
    .accept 311 >>Accept Return to Marleth
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .train 980 >> |T136139:0|t[Curse of Agony]
    .train 5782 >> |T136183:0|t[Fear]
    .goto 1426/0,-528.77,-5640.00
    .target +Gimrizz Shadowcog
    .xp <8,1
step << Warlock
    .goto 1426/0,-524.88,-5638.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_BUY_and|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_BUY_from her if you can afford it. If not, you can buy it later|r
    .collect 16302,1
    .collect 16321,1
    .target Dannie Fizzwizzle
    .money <0.0300
    .train 20270,1
    .train 20397,1
step << Warlock
    .goto 1426/0,-524.88,-5638.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_BUY_from her if you can afford it. If not you can buy it later|r
    .collect 16302,1
    .target Dannie Fizzwizzle
    .money <0.0100
    .train 20270,1
step << Warlock
    .goto 1426/0,-524.88,-5638.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_BUY_from her if you can afford it. If not you can buy it later|r
    .collect 16321,1
    .target Dannie Fizzwizzle
    .money <0.0100
    .train 20397,1
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r inside in the backroom
    .trainer >> Train your class spells
    .target Hogral Bakkan
step << Mage
    .goto 1426/0,-537.19,-5586.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r inside upstairs
    .train 118 >> Train |T136071:0|t[Polymorph]
    .target Magis Sparkmantle
step << Warrior/Rogue/Paladin
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .vendor 1247 >> |cRXP_BUY_Buy up to 20|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if you can afford it|r << Warrior/Rogue
    .vendor 1247 >> |cRXP_BUY_Buy 5|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if you can afford it|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .vendor 1247 >> |cRXP_BUY_Buy up to 20|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him if you can afford it|r
    .target Innkeeper Belm
step
    .goto 1426/0,-632.34,-5466.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >>Turn in Return to Bellowfiz
    .target Pilot Bellowfiz
step << Hunter Hunter
    .goto 1426/0,-454.06,-5618.53
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Train your class spells
step
    .goto 1426/0,-456.03,-5498.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >>Accept Operation Recombobulation
    .target Razzle Sprysprocket
step
    #loop
    .goto 1426/0,-289.07,-5052.19,0
    .goto 1426/0,-289.07,-5052.19,40,0
    .goto 1426/0,-204.85,-5023.29,40,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for |cRXP_LOOT_Shimmerweed|r. It can also be picked up from |cRXP_PICK_Shimmerweed Basket|r on the ground
    .complete 315,1 --Shimmerweed (6)
    .mob Frostmane Seer
step
    .goto 1426/0,315.23,-5378.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 315 >>Turn in The Perfect Stout
    .target Rejold Barleybrew
step
    .goto 1426/0,315.23,-5371.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 311 >>Turn in Return to Marleth while you are here
    .isQuestComplete 311
    .target Marleth Barleybrew
step
    .xp 8 >>Grind to level 8 (Rejold's New Brew needs it)
step
    .goto 1426/0,-632.34,-5466.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .accept 415 >>Accept Rejold's New Brew
    .target Pilot Bellowfiz
step
    .goto 1426/0,315.23,-5378.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 415 >>Turn in Rejold's New Brew
    .accept 413 >>Accept Shimmer Stout
    .target Rejold Barleybrew
step
    .goto 1426/0,315.23,-5371.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .turnin 311 >>Turn in Return to Marleth
    .target Marleth Barleybrew
step
    #loop
    .goto 1426/0,580.68,-5294.83,0
    .goto 1426/0,580.68,-5294.83,40,0
    .goto 1426/0,576.25,-5192.71,40,0
    >>Kill |cRXP_ENEMY_Leper Gnomes|r and |cRXP_ENEMY_Gibblewilts|r. Loot them for |cRXP_LOOT_Gyromechanic Gear|r
    >>Kill |cRXP_ENEMY_Leper Gnomes|r and |cRXP_ENEMY_Gibblewilts|r. Loot them for |cRXP_LOOT_Restabilization Cog|r
    .complete 412,2 --Gyromechanic Gear (8)
    .complete 412,1 --Restabilization Cog (8)
    .mob Leper Gnome
    .mob Gibblewilt
step
    .goto 1426/0,-499.37,-5644.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .accept 291 >>Accept The Reports
    .target Senir Whitebeard
    .isQuestTurnedIn 287 --any of: Frostmane Hold
    .xp <7,1
step
    .goto 1426/0,-521.53,-5604.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Thamner Pol
step
    .goto 1426/0,-456.03,-5498.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >>Turn in Operation Recombobulation
    .target Razzle Sprysprocket
step << Warrior
    .goto 1455/0,-1205.65,-5042.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r or |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> If you are in a party or have someone to help you kill |cRXP_ENEMY_Vagash|r now, train 2h Maces from |cRXP_FRIENDLY_Buliwyf Stonehand|r, otherwise train Thrown from |cRXP_FRIENDLY_Bixi Wobblebonk|r. If you aren't sure which to train, just train Thrown
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior/Paladin
    .train 199,3
step
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
    .money <0.0100
step << Paladin
    .goto 1426/0,-783.05,-5089.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1653 >>Turn in The Test of Righteousness
    .target Jordan Stilwell
    .isOnQuest 1653
step << Warrior
    .money <0.06
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    >>|cRXP_WARN_If you don't have enough money it's not a big deal|r
    .train 6546 >> Train |T132155:0|t[Rend (Rank 2)]
    .train 2687 >> Train |T132277:0|t[Bloodrage]
    .target Bilban Tosslespanner
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
step
    .goto 1455/0,-1188.54,-4761.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Train |T133971:0|t[Cooking]
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geofram Bouldertoe|r downstairs in the building
    .goto 1455/0,-1123.14,-4724.88,15,0
    .goto 1455/0,-1105.74,-4718.03,12,0
    .goto 1455/0,-1108.11,-4708.00
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Geofram Bouldertoe
    .train 2018,3
step << Warrior/Paladin/Rogue
    .train 2575,3
step
    .goto 1455/0,-976.28,-4910.33,0
    .goto 1455/0,-917.57,-4967.58,-1
    .goto 1455/0,-904.92,-4962.83,-1
    .goto 1455/0,-901.76,-4948.06,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for faster turn ins in Darkshore shortly:|r
    >>|T133912:0|t[Darkshore Grouper]
    .collect 12238,6,1141,1
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1
    .train 3102,1
step
    .goto 1426/0,-1579.91,-5714.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >>Accept The Public Servant
    .target Senator Mehr Stonehallow
step
    .goto 1426/0,-1600.11,-5726.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 432 >>Accept Those Blasted Troggs!
    .target Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dank Drizzlecut|r
    .goto 1426/0,-1612.12,-5697.89
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Dank Drizzlecut
    .train 2018,3
step
    #loop
    .goto 1426/0,-1643.45,-5776.49,0
    .goto 1426/0,-1643.45,-5776.49,40,0
    .goto 1426/0,-1524.75,-5830.99,40,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Rockjaw Skullthumper slain (6)
    .mob Rockjaw Skullthumper
step
    #loop
    .goto 1426/0,-1674.97,-5692.77,0
    .goto 1426/0,-1674.97,-5692.77,40,0
    .goto 1426/0,-1728.65,-5560.45,40,0
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 433,1 --Rockjaw Bonesnapper slain (10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1600.11,-5726.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >>Turn in Those Blasted Troggs!
    .target Foreman Stonebrow
step
    .goto 1426/0,-1579.91,-5714.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >>Turn in The Public Servant
    .target Senator Mehr Stonehallow
step
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    .goto 1426/0,-1649.01,-5749.57,0
    .goto 1426/0,-1573.17,-5793.63,0
    .goto 1426/0,-1594.10,-5825.97,0
    .goto 1426/0,-1649.01,-5749.57,45,0
    .goto 1426/0,-1607.15,-5789.36,45,0
    .goto 1426/0,-1573.17,-5793.63,45,0
    .goto 1426/0,-1531.50,-5849.02,45,0
    .goto 1426/0,-1594.10,-5825.97,45,0
    .goto 1426/0,-1668.81,-5828.04,45,0
    .xp 10 >> Grind to level 10
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r inside in the backroom
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Hogral Bakkan
step << !Warrior !Rogue !Paladin
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Buy up to 20|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .target Kazan Mogosh
    .xp >15,1
step
    .goto 1426/0,-2329.50,-5163.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >>Accept The Lost Pilot
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2121.66,-5064.66
    >>Click the |cRXP_PICK_A Dwarven Corpse|r
    .turnin 419 >>Turn in The Lost Pilot
step
    .goto 1426/0,-2447.21,-5479.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .turnin 413 >>Turn in Shimmer Stout
    .accept 414 >>Accept Stout to Kadrell
    .target Mountaineer Barleybrew
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step
    .goto 1455/0,-1283.47,-4842.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .turnin 1072 >>Turn in An Old Colleague
    .target Lomac Gearstrip
    .isOnQuest 1072
step
    .goto 1455/0,-1263.47,-4834.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2923 >>Turn in Tinkmaster Overspark
    .target Tinkmaster Overspark
    .isOnQuest 2923
step
    .goto 1455/0,-1265.68,-4823.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mechanic Castpipe|r
    .turnin 2931 >>Turn in Castpipe's Task
    .target Master Mechanic Castpipe
    .isOnQuest 2931
step << Dwarf Warrior/Gnome Warrior
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 1704 >>Turn in Klockmort Spannerspan
    .target Klockmort Spannerspan
    .isOnQuest 1704
step
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 2925 >>Turn in Klockmort's Essentials
    .target Klockmort Spannerspan
    .isOnQuest 2925
step
    .goto 1455/0,-1303.71,-4631.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >>Turn in Report to Ironforge
    .target Prospector Stormpike
    .isOnQuest 301
step << Dwarf/Gnome
    .goto 1455/0,-1120.92,-4708.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >>Turn in Ride to Ironforge
    .target Golnir Bouldertoe
    .isOnQuest 6391
step << Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .trainer >> Train your class spells
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step << Mage
    .goto 1455/0,-928.48,-4614.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step << Warlock
    .goto 1455/0,-1300.16,-4618.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .turnin 1758 >>Turn in Tome of the Cabal
    .target Krom Stoutarm
    .isOnQuest 1758
step << Hunter Hunter
    .goto 1455/0,-1273.83,-5022.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .trainer >> Train your pet spells
    .target Belia Thundergranite
step << Hunter
    .goto 1455/0,-976.28,-4910.33,0
    .goto 1455/0,-917.57,-4967.58,-1
    .goto 1455/0,-904.92,-4962.83,-1
    .goto 1455/0,-901.76,-4948.06,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy the following items for a faster turn ins at Darkshore shortly|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133912:0|t[Darkshore Grouper]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1
    .target Auctioneer Jaxon
    .train 2550,1
    .train 3102,1
step
    .goto 1455/0,-1026.28,-4872.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >>Turn in The Reports
    .target Senator Barin Redstone
    .isOnQuest 291
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r and |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Train Thrown
    .goto 1455/0,-1205.65,-5042.12
    .target +Bixi Wobblebonk
    .train 199 >> Train 2h Maces
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Warrior skip
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Train your class spells
    .target Bilban Tosslespanner
step << Priest/Paladin
    .goto 1455/0,-976.28,-4910.33,0
    .goto 1455/0,-917.57,-4967.58,-1
    .goto 1455/0,-904.92,-4962.83,-1
    .goto 1455/0,-901.76,-4948.06,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy the following items for a faster turn ins at Darkshore shortly|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|T133912:0|t[Darkshore Grouper]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1
    .target Auctioneer Jaxon
    .train 2550,1
    .train 3102,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,73.33,52.43,20,0
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
    .goto StormwindClassic,78.554,45.771
    .trainer >> Train your class spells
    .target Ilsa Corbin
step << Rogue/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train 1h Swords << Rogue
    .trainer >>Train 2h Swords << Warrior
    .target Woo Ping
    .money <0.1000 << Warrior
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 3000 >>Turn in Tome of Divinity
    .target Tiza Battleforge
    .isOnQuest 3000
step << Dwarf Priest
    .goto 1455/0,-909.11,-4612.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
    .turnin 5647 >>Turn in A Lack of Fear
    .target High Priest Rohan
    .isOnQuest 5647
step << Dwarf Priest
    .goto 1455/0,-909.11,-4612.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
    .turnin 5645 >>Turn in A Lack of Fear
    .target High Priest Rohan
    .isOnQuest 5645
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Loch Modan|r: Stout to Kadrell
step
    +|cRXP_WARN_Suggested next zones at level 8|r: |cRXP_FRIENDLY_Elwynn Forest|r (about 2.4 levels of quests, starting around Marshal Dughan), |cRXP_FRIENDLY_Azuremyst Isle|r (about 2.0 levels of quests, starting around Daedal), |cRXP_FRIENDLY_Teldrassil|r (about 1.4 levels of quests, starting around Mathrengyl Bearwalker). Completing this step loads the guide for Elwynn Forest --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 11.|r Load its guide for level 11 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 11-12 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver;Zone Routes (Alliance)\5-10 Elwynn Forest: around Marshal Dughan;Zone Routes (Alliance)\5-10 Azuremyst Isle: around Daedal

step << Dwarf Hunter
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Dwarf Hunter
    .goto 1455/0,-1274.07,-5010.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
    .accept 6074 >>Accept The Hunter's Path
    .target Olmin Burningbeard
step << Dwarf Hunter
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step
    .goto 1426/0,-531.38,-5601.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .target Innkeeper Belm
    .home >>Set your Hearthstone to Innkeeper Belm's inn
step << Dwarf Hunter
    .goto 1426/0,-454.06,-5618.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6074 >>Turn in The Hunter's Path while you are here
    .isQuestComplete 6074
    .target Grif Wildheart
step << Warrior
    .goto 1426/0,-530.40,-5605.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r
    .accept 1679 >>Accept Muren Stormpike
    .target Granis Swiftaxe
step << Mage
    .goto 1426/0,-537.29,-5587.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r
    .accept 1879 >>Accept Speak with Bink
    .target Magis Sparkmantle
step << Mage
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Mage
    .goto 1455/0,-929.04,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bink|r
    .turnin 1879 >>Turn in Speak with Bink
    .accept 1880 >>Accept Mage-tastic Gizmonitor
    .target Bink
step << Mage
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Mage
    .goto 1426/0,436.87,-5072.87
    >>Open the |cRXP_PICK_Bink's Toolbox|r. Loot it for |cRXP_LOOT_Mage-tastic Gizmonitor|r
    .complete 1880,1 --Mage-tastic Gizmonitor (1)
step << Human Priest/Dwarf Priest
    .goto 1426/0,-529.41,-5590.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .accept 5637 >>Accept Desperate Prayer
    .target Maxan Anvol
step << Dwarf Hunter
    .goto 1426/0,-454.06,-5618.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6074 >>Turn in The Hunter's Path
    .accept 6064 >>Accept Taming the Beast
    .target Grif Wildheart
step << Dwarf Hunter
    #loop
    .goto 1426/0,-76.31,-5550.93,0
    .goto 1426/0,-76.31,-5550.93,40,0
    .goto 1426/0,-19.18,-5553.22,40,0
    .goto 1426/0,9.88,-5657.31,40,0
    .goto 1426/0,46.81,-5673.39,40,0
    .goto 1426/0,111.33,-5703.60,40,0
    >>Interact with |cRXP_FRIENDLY_Large Crag Boar|r
    .complete 6064,1 --Large Crag Boar
    .target Large Crag Boar
step << NightElf Priest
    .goto 1426/0,-529.41,-5590.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .accept 5630 >>Accept Returning Home
    .target Maxan Anvol
step << Dwarf Hunter
    .goto 1426/0,-454.06,-5618.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Turn in Taming the Beast while you are here
    .isQuestComplete 6064
    .target Grif Wildheart
step
    .goto 1426/0,99.51,-5572.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >>Accept Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    .goto 1426/0,-94.53,-5647.78
    >>Open the |cRXP_PICK_MacGrann's Meat Locker|r. Loot it for |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto 1426/0,99.51,-5572.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Turn in Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Mage
    .goto 1455/0,-929.04,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bink|r
    .turnin 1880 >>Turn in Mage-tastic Gizmonitor
    .target Bink
step << Warlock
    .goto 1455/0,-1090.17,-4618.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lago Blackwrench|r
    .accept 1715 >>Accept The Slaughtered Lamb
    .target Lago Blackwrench
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Dwarf Hunter
    #completewith next
    .hs >>Hearth to Innkeeper Belm's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Dwarf Hunter
    .goto 1426/0,-454.06,-5618.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Turn in Taming the Beast
    .accept 6084 >>Accept Taming the Beast
    .target Grif Wildheart
step << Dwarf Hunter
    #loop
    .goto 1426/0,-1108.10,-5802.43,0
    .goto 1426/0,-1108.10,-5802.43,40,0
    .goto 1426/0,-1126.32,-5711.48,40,0
    .goto 1426/0,-1130.26,-5880.57,40,0
    .goto 1426/0,-1150.95,-5782.07,40,0
    .goto 1426/0,-1155.87,-5808.67,40,0
    .goto 1426/0,-1213.99,-5834.61,40,0
    .goto 1426/0,-1268.16,-5734.79,40,0
    .goto 1426/0,-1283.92,-5819.50,40,0
    .goto 1426/0,-1298.20,-5759.42,40,0
    .goto 1426/0,-1329.23,-5854.31,40,0
    >>Interact with |cRXP_FRIENDLY_Snow Leopard|r
    .complete 6084,1 --Snow Leopard
    .target Snow Leopard
step << Dwarf Hunter
    .goto 1426/0,-454.06,-5618.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Turn in Taming the Beast
    .accept 6085 >>Accept Taming the Beast
    .target Grif Wildheart
step << Dwarf Hunter
    #loop
    .goto 1426/0,-27.06,-5319.45,0
    .goto 1426/0,-27.06,-5319.45,40,0
    .goto 1426/0,-95.03,-5303.69,40,0
    .goto 1426/0,-75.33,-5285.96,40,0
    .goto 1426/0,-56.12,-5242.62,40,0
    .goto 1426/0,-114.23,-5199.94,40,0
    >>Interact with |cRXP_FRIENDLY_Ice Claw Bear|r
    .complete 6085,1 --Ice Claw Bear
    .target Ice Claw Bear
step << Dwarf Hunter
    .goto 1426/0,-454.06,-5618.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Turn in Taming the Beast
    .accept 6086 >>Accept Training the Beast
    .target Grif Wildheart
step
    .goto 1426/0,-1304.61,-5513.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >>Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto 1426/0,-1281.95,-5389.06
    >>Kill |cRXP_ENEMY_Vagash|r and loot |cRXP_LOOT_Fang of Vagash|r
    .complete 314,1 --Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >>Turn in Protecting the Herd
    .target Rudra Amberstill
step << Rogue
    #completewith next
    .hs >>Hearth to Innkeeper Belm's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Rogue
    .goto 1426/0,-540.25,-5604.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r
    .accept 2218 >>Accept Road to Salvation
    .target Hogral Bakkan
step << Rogue
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Rogue
    .goto 1455/0,-1124.40,-4647.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .turnin 2218 >>Turn in Road to Salvation
    .accept 2238 >>Accept Simple Subterfugin'
    .target Hulfdan Blackbeard
step << Rogue
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Rogue
    .goto 1426/0,562.95,-5336.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onin MacHammar|r
    .turnin 2238 >>Turn in Simple Subterfugin'
    .accept 2239 >>Accept Onin's Report
    .target Onin MacHammar
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Rogue
    .goto 1455/0,-1124.40,-4647.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .turnin 2239 >>Turn in Onin's Report
    .target Hulfdan Blackbeard
step << Dwarf Hunter
    .goto 1455/0,-1273.83,-5022.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .turnin 6086 >>Turn in Training the Beast
    .target Belia Thundergranite
step << Warrior
    .goto 1455/0,-1273.12,-5045.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muren Stormpike|r
    .turnin 1679 >>Turn in Muren Stormpike while you are here
    .isQuestComplete 1679
    .target Muren Stormpike
step << NightElf Hunter
    .goto 1455/0,-1274.07,-5010.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
    .accept 6721 >>Accept The Hunter's Path
    .target Olmin Burningbeard
step << Draenei Shaman
    .goto 1455/0,-1151.99,-4721.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Javad|r
    .accept 9462 >>Accept Call of Fire
    .target Farseer Javad
step
    .goto 1455/0,-1303.71,-4631.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .accept 302 >>Accept Powder to Ironband
    .target Prospector Stormpike
    .isQuestTurnedIn 301 --any of: Report to Ironforge
    .xp <10,1
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step
    .goto 1426/0,-2121.66,-5064.66
    >>Click the |cRXP_PICK_A Dwarven Corpse|r
    .accept 417 >>Accept A Pilot's Revenge
    .isQuestTurnedIn 419 --any of: The Lost Pilot
step
    .goto 1426/0,-2054.68,-5116.87
    >>Kill |cRXP_ENEMY_Mangeclaw|r and loot |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Mangy Claw (1)
    .mob Mangeclaw
    .isOnQuest 417
step
    .goto 1426/0,-2329.50,-5163.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >>Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
    .isOnQuest 417
step << Warrior
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Warrior
    .goto 1455/0,-1273.12,-5045.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muren Stormpike|r
    .turnin 1679 >>Turn in Muren Stormpike
    .accept 1678 >>Accept Vejrek
    .target Muren Stormpike
step << Warrior
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Warrior
    .goto 1426/0,431.46,-5780.10
    >>Kill |cRXP_ENEMY_Vejrek|r and loot |cRXP_LOOT_Vejrek's Head|r
    .complete 1678,1 --Vejrek's Head (1)
    .mob Vejrek
step << Warrior
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Warrior
    .goto 1455/0,-1273.12,-5045.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muren Stormpike|r
    .turnin 1678 >>Turn in Vejrek
    .accept 1680 >>Accept Tormus Deepforge
    .target Muren Stormpike
step << Warrior
    .goto 1455/0,-1098.15,-4793.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tormus Deepforge|r
    .turnin 1680 >>Turn in Tormus Deepforge
    .accept 1681 >>Accept Ironband's Compound
    .target Tormus Deepforge
step << Warrior
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Warrior
    .goto 1426/0,-2037.45,-5918.00
    >>Open the |cRXP_PICK_Ironband's Strongbox|r. Loot it for |cRXP_LOOT_Umbral Ore|r
    .complete 1681,1 --Umbral Ore (1)
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Warrior
    .goto 1455/0,-1098.15,-4793.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tormus Deepforge|r
    .turnin 1681 >>Turn in Ironband's Compound
    .accept 1682 >>Accept Grey Iron Weapons
    .turnin 1682 >>Turn in Grey Iron Weapons
    .target Tormus Deepforge
step << Dwarf/Gnome
    .goto 1455/0,-1120.92,-4708.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .accept 6388 >>Accept Gryth Thurden
    .target Golnir Bouldertoe
    .isQuestTurnedIn 6391 --any of: Ride to Ironforge
    .xp <10,1
step << Warlock Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .train 6222 >>Train |T136118:0|t[Corruption (Rank 2)]
    .train 689 >>Train |T136169:0|t[Drain Life]
    .target Briarthorn
step << Warlock Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Consume Shadows (Rank 1)] |cRXP_BUY_and|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)] |cRXP_BUY_if you can afford it|r
    .target Jubahl Corpseseeker
step << Dwarf/Gnome
    .goto 1455/0,-1152.39,-4821.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Turn in Gryth Thurden
    .target Gryth Thurden
    .isOnQuest 6388
step << Dwarf/Gnome
    .goto 1455/0,-1152.39,-4821.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .accept 6392 >>Accept Return to Brock
    .target Gryth Thurden
    .isQuestTurnedIn 6388 --any of: Gryth Thurden
    .xp <10,1
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Call of Fire << Draenei Shaman
    >>|cRXP_FRIENDLY_Darnassus|r: Returning Home << NightElf Priest
    >>|cRXP_FRIENDLY_Loch Modan|r: Return to Brock << Dwarf/Gnome
    >>|cRXP_FRIENDLY_Loch Modan|r: Powder to Ironband
    >>|cRXP_FRIENDLY_Stormwind City|r: The Slaughtered Lamb << Warlock
    >>|cRXP_FRIENDLY_Stormwind City|r: Desperate Prayer << Human Priest/Dwarf Priest
    >>|cRXP_FRIENDLY_Teldrassil|r: The Hunter's Path << NightElf Hunter
step
    +|cRXP_WARN_Suggested next zones at level 11|r: |cRXP_FRIENDLY_Darkshore|r (about 2.1 levels of quests, starting around Thundris Windweaver), |cRXP_FRIENDLY_Elwynn Forest|r (about 1.6 levels of quests, starting around Marshal Dughan), |cRXP_FRIENDLY_Azuremyst Isle|r (about 1.3 levels of quests, starting around Daedal). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 14.|r Load its guide for level 14 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 14-15 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver;Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\10-13 Westfall: around Farmer Saldean

step << Human Paladin
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Human Paladin
    .goto 1455/0,-896.46,-4601.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 3681 >>Accept Tome of Divinity
    .target Brandur Ironhammer
step << Human Paladin
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Dwarf Paladin
    .goto 1426/0,-542.22,-5586.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r
    .accept 2997 >>Accept Tome of Divinity
    .target Azar Stronghammer
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 2997 >>Turn in Tome of Divinity
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .accept 1647 >>Accept The Tome of Divinity
    .target Tiza Battleforge
    .isQuestTurnedIn 1646 --any of: The Tome of Divinity
    .xp <12,1
step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .accept 7802 >>Accept A Donation of Wool
    .target Mistina Steelshield
step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .turnin 7802 >>Turn in A Donation of Wool
    .target Mistina Steelshield
    .isQuestComplete 7802
step << Dwarf Paladin
    #loop
    .goto 1455/0,-887.92,-4859.85,0
    .goto 1455/0,-887.92,-4859.85,40,0
    .goto 1455/0,-898.12,-4895.62,40,0
    .goto 1455/0,-934.97,-4951.86,40,0
    .goto 1455/0,-1008.65,-5002.56,40,0
    .goto 1455/0,-1052.93,-5012.96,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John Turner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 1647 >>Turn in The Tome of Divinity
    .unitscan John Turner
    .isOnQuest 1647
step << Dwarf Paladin
    #loop
    .goto 1455/0,-1052.93,-5012.96,0
    .goto 1455/0,-1052.93,-5012.96,40,0
    .goto 1455/0,-1008.65,-5002.56,40,0
    .goto 1455/0,-934.97,-4951.86,40,0
    .goto 1455/0,-898.12,-4895.62,40,0
    .goto 1455/0,-887.92,-4859.85,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John Turner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 1648 >>Accept The Tome of Divinity
    .unitscan John Turner
    .isQuestTurnedIn 1647 --any of: The Tome of Divinity
    .xp <12,1
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Dwarf Paladin
    #loop
    .goto 1426/0,-1749.33,-5513.17,0
    .goto 1426/0,-1749.33,-5513.17,40,0
    .goto 1426/0,-1793.17,-5632.35,40,0
    >>Loot the |cRXP_PICK_Battered Chests|r for |cRXP_LOOT_Linen Cloth|r
    .complete 1648,1 --Linen Cloth (10)
    .isOnQuest 1648
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Dwarf Paladin
    #loop
    .goto 1455/0,-1052.93,-5012.96,0
    .goto 1455/0,-1052.93,-5012.96,40,0
    .goto 1455/0,-1008.65,-5002.56,40,0
    .goto 1455/0,-934.97,-4951.86,40,0
    .goto 1455/0,-898.12,-4895.62,40,0
    .goto 1455/0,-887.92,-4859.85,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John Turner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 1648 >>Turn in The Tome of Divinity
    .unitscan John Turner
    .isOnQuest 1648
step << Dwarf Paladin
    #loop
    .goto 1455/0,-1052.93,-5012.96,0
    .goto 1455/0,-1052.93,-5012.96,40,0
    .goto 1455/0,-1008.65,-5002.56,40,0
    .goto 1455/0,-934.97,-4951.86,40,0
    .goto 1455/0,-898.12,-4895.62,40,0
    .goto 1455/0,-887.92,-4859.85,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John Turner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 1778 >>Accept The Tome of Divinity
    .unitscan John Turner
    .isQuestTurnedIn 1648 --any of: The Tome of Divinity
    .xp <12,1
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1778 >>Turn in The Tome of Divinity
    .target Tiza Battleforge
    .isOnQuest 1778
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .accept 1779 >>Accept The Tome of Divinity
    .target Tiza Battleforge
    .isQuestTurnedIn 1778 --any of: The Tome of Divinity
    .xp <12,1
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1779 >>Turn in The Tome of Divinity
    .target Muiredon Battleforge
    .isOnQuest 1779
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .accept 1783 >>Accept The Tome of Divinity
    .target Muiredon Battleforge
    .isQuestTurnedIn 1779 --any of: The Tome of Divinity
    .xp <12,1
step
    .goto 1455/0,-1260.55,-4835.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r
    .accept 2039 >>Accept Find Bingles
    .target Gnoarn
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .accept 7807 >>Accept A Donation of Wool
    .target Bubulo Acerbus
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .turnin 7807 >>Turn in A Donation of Wool
    .target Bubulo Acerbus
    .isQuestComplete 7807
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Dwarf Paladin
    .goto 1426/0,-2055.18,-5784.37
    >>Kill |cRXP_ENEMY_Narm Faulk|r
    .complete 1783,1 --Narm Faulk slain (1)
    .mob Narm Faulk
    .isOnQuest 1783
step << Dwarf Paladin
    .goto 1426/0,-2055.18,-5784.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Turn in The Tome of Divinity
    .target Narm Faulk
    .isOnQuest 1783
step << Dwarf Paladin
    .goto 1426/0,-2055.18,-5784.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm Faulk|r
    .accept 1784 >>Accept The Tome of Divinity
    .target Narm Faulk
    .isQuestTurnedIn 1783 --any of: The Tome of Divinity
    .xp <12,1
step << Dwarf Paladin
    .goto 1426/0,-2007.90,-5890.09
    >>Kill |cRXP_ENEMY_Dark Iron Spy|r and loot |cRXP_LOOT_Dark Iron Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
    .isOnQuest 1784
step << Dwarf Paladin
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Turn in The Tome of Divinity
    .target Muiredon Battleforge
    .isOnQuest 1784
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .accept 1785 >>Accept The Tome of Divinity
    .target Muiredon Battleforge
    .isQuestTurnedIn 1784 --any of: The Tome of Divinity
    .xp <12,1
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Turn in The Tome of Divinity
    .target Tiza Battleforge
    .isOnQuest 1785
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Loch Modan|r: Find Bingles
    >>|cRXP_FRIENDLY_Stormwind City|r: Tome of Divinity << Human Paladin
    >>|cRXP_FRIENDLY_Hillsbrad Foothills and back here|r: A Donation of Wool, A Donation of Wool
step
    +|cRXP_WARN_Suggested next zones at level 14|r: |cRXP_FRIENDLY_Darkshore|r (about 1.8 levels of quests, starting around Thundris Windweaver), |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.6 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Westfall|r (about 0.9 levels of quests, starting around Farmer Saldean). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 17.|r Load its guide for level 17 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 17-18 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\17-19 Darkshore: around Terenthis;Zone Routes (Alliance)\14-15 Loch Modan

step << Rogue
    .goto 1426/0,-540.25,-5604.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r
    .accept 2299 >>Accept To Hulfdan!
    .target Hogral Bakkan
step << Mage
    .goto 1426/0,-537.29,-5587.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r
    .accept 1919 >>Accept Report to Jennea
    .target Magis Sparkmantle
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .turnin 7802 >>Turn in A Donation of Wool
    .target Mistina Steelshield
    .isQuestComplete 7802
step
    .goto 1455/0,-1260.55,-4835.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r
    .accept 2041 >>Accept Speak with Shoni
    .target Gnoarn
step << Rogue
    .goto 1455/0,-1124.40,-4647.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r
    .turnin 2299 >>Turn in To Hulfdan!
    .accept 2298 >>Accept Kingly Shakedown
    .target Hulfdan Blackbeard
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .turnin 7807 >>Turn in A Donation of Wool
    .target Bubulo Acerbus
    .isQuestComplete 7807
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: Report to Jennea << Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: Speak with Shoni
    >>|cRXP_FRIENDLY_Stormwind City|r: Kingly Shakedown << Rogue
step
    +|cRXP_WARN_Suggested next zones at level 17|r: |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.6 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Darkshore|r (about 0.9 levels of quests, starting around Terenthis), |cRXP_FRIENDLY_Loch Modan|r (about 0.5 levels of quests). Completing this step loads the guide for Bloodmyst Isle --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 21.|r Load its guide for level 21 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 21-22 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\20-21 Duskwood: around Elaine Carevin

step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Warlock
    .goto 1455/0,-1090.17,-4618.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lago Blackwrench|r
    .accept 1717 >>Accept Gakin's Summons
    .target Lago Blackwrench
step
    .goto 1455/0,-909.11,-4612.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
    .accept 5677 >>Accept Arcane Feedback << Human Priest
    .accept 5641 >>Accept A Lack of Fear << Dwarf Priest
    .accept 5675 >>Accept Elune's Grace << NightElf Priest
    .target High Priest Rohan
step << Dwarf Priest
    .goto 1455/0,-909.11,-4612.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
    >>|cRXP_WARN_The database has no objectives for A Lack of Fear. Skip this step if the quest is not finished|r
    .turnin 5641 >>Turn in A Lack of Fear
    .target High Priest Rohan
    .isOnQuest 5641
step << Draenei Shaman
    .goto 1455/0,-1151.99,-4721.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Javad|r
    .accept 9502 >>Accept Call of Water
    .target Farseer Javad
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Paladin
    .goto 1426/0,-783.05,-5089.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .accept 1806 >>Accept The Test of Righteousness
    .target Jordan Stilwell
    .isQuestTurnedIn 1654 --any of: The Test of Righteousness
    .xp <20,1
step << Paladin
    .goto 1426/0,-783.05,-5089.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1806 >>Turn in The Test of Righteousness
    .target Jordan Stilwell
    .isOnQuest 1806
step << Paladin
    .goto 1426/0,-783.05,-5089.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .accept 1654 >>Accept The Test of Righteousness
    .target Jordan Stilwell
    .isQuestTurnedIn 1653 --any of: The Test of Righteousness
    .xp <20,1
step << Paladin
    .goto 1426/0,-783.05,-5089.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1654 >>Turn in The Test of Righteousness
    .target Jordan Stilwell
    .isQuestComplete 1654
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .turnin 7802 >>Turn in A Donation of Wool
    .target Mistina Steelshield
    .isQuestComplete 7802
step << Warrior
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 1708 >>Accept Iron Coral
    .target Klockmort Spannerspan
    .isQuestTurnedIn 1782 --any of: Furen's Armor
    .xp <20,1
step << Warrior
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 1709 >>Accept Klockmort's Creation
    .target Klockmort Spannerspan
    .isQuestTurnedIn 1708 --any of: Iron Coral
    .xp <20,1
step << Warrior
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 1709 >>Turn in Klockmort's Creation
    .target Klockmort Spannerspan
    .isOnQuest 1709
step
    .goto 1455/0,-1260.55,-4835.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r
    .accept 2927 >>Accept The Day After
    .target Gnoarn
step << Warrior
    .goto 1455/0,-1269.72,-5047.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelv Sternhammer|r
    .accept 1698 >>Accept Yorus Barleybrew
    .target Kelv Sternhammer
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .turnin 7807 >>Turn in A Donation of Wool
    .target Bubulo Acerbus
    .isQuestComplete 7807
step
    .goto 1455/0,-1283.47,-4842.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .accept 1074 >>Accept Ineptitude + Chemicals = Fun
    .target Lomac Gearstrip
    .isQuestTurnedIn 1073 --any of: Ineptitude + Chemicals = Fun
    .xp <18,1
step
    .goto 1455/0,-1283.47,-4842.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .accept 1073 >>Accept Ineptitude + Chemicals = Fun
    .target Lomac Gearstrip
    .isQuestTurnedIn 1072 --any of: An Old Colleague
    .xp <18,1
step
    .goto 1455/0,-1283.47,-4842.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lomac Gearstrip|r
    .turnin 1073 >>Turn in Ineptitude + Chemicals = Fun
    .target Lomac Gearstrip
    .isQuestComplete 1073
step << Warrior
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 1708 >>Turn in Iron Coral
    .target Klockmort Spannerspan
    .isQuestComplete 1708
step
    .goto 1455/0,-1288.61,-5065.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
    .accept 467 >>Accept Stonegear's Search
    .target Pilot Longbeard
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step
    .goto 1426/0,-641.70,-5473.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 467 >>Turn in Stonegear's Search
    .accept 466 >>Accept Search for Incendicite
    .target Pilot Stonegear
step
    .goto 1426/0,-641.70,-5473.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 466 >>Turn in Search for Incendicite
    .target Pilot Stonegear
    .isQuestComplete 466
step
    .goto 1426/0,-458.00,-5498.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2927 >>Turn in The Day After
    .target Ozzie Togglevolt
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darnassus|r: Elune's Grace << NightElf Priest
    >>|cRXP_FRIENDLY_Redridge Mountains|r: Yorus Barleybrew << Warrior
    >>|cRXP_FRIENDLY_Stonetalon Mountains|r: Ineptitude + Chemicals = Fun
    >>|cRXP_FRIENDLY_Stormwind City|r: Gakin's Summons << Warlock
    >>|cRXP_FRIENDLY_Stormwind City|r: Arcane Feedback << Human Priest
    >>|cRXP_FRIENDLY_The Exodar|r: Call of Water << Draenei Shaman
    >>|cRXP_FRIENDLY_Wetlands and back here|r: Search for Incendicite
step
    +|cRXP_WARN_Suggested next zones at level 21|r: |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Elaine Carevin). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 24.|r Load its guide for level 24 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 24-25 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\24-25 Duskwood: around Clerk Daltry

step
    .goto 1426/0,-458.00,-5498.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2926 >>Accept Gnogaine
    .target Ozzie Togglevolt
step
    .goto 1426/0,-641.70,-5473.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 466 >>Turn in Search for Incendicite
    .target Pilot Stonegear
    .isQuestComplete 466
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .turnin 7807 >>Turn in A Donation of Wool
    .target Bubulo Acerbus
    .isQuestComplete 7807
step << skip
    .goto 1455/0,-1198.56,-5040.13
    .train 197 >> Train 2H Axes << !Rogue
    .train 266 >> Train Guns << Hunter/Warrior/Rogue
    .train 199 >> Train 2H Maces << Warrior/Shaman
    .train 54 >> Train Maces << Rogue/Shaman
    .train 44 >> Train Axes << Shaman
step
    .goto 1455/0,-1263.47,-4834.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .accept 2922 >>Accept Save Techbot's Brain!
    .target Tinkmaster Overspark
step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .turnin 7802 >>Turn in A Donation of Wool
    .target Mistina Steelshield
    .isQuestComplete 7802
step << Dwarf Priest
    .goto 1455/0,-909.11,-4612.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
    .turnin 5641 >>Turn in A Lack of Fear
    .target High Priest Rohan
    .isOnQuest 5641
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step
    #loop
    .goto 1426/0,714.15,-4998.01,0
    .goto 1426/0,714.15,-4998.01,40,0
    .goto 1426/0,827.92,-4925.45,40,0
    >>Kill |cRXP_ENEMY_Irradiated Invader|r and loot |cRXP_LOOT_Full Leaden Collection Phial|r
    >>Kill |cRXP_ENEMY_Techbot|r and loot |cRXP_LOOT_Techbot's Memory Core|r
    .complete 2926,1 --Full Leaden Collection Phial (1)
    .complete 2922,1 --Techbot's Memory Core (1)
    .mob Irradiated Invader
    .mob Techbot
step
    .goto 1426/0,-458.00,-5498.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2926 >>Turn in Gnogaine
    .accept 2962 >>Accept The Only Cure is More Green Glow
    .target Ozzie Togglevolt
step
    .goto 1426/0,-458.00,-5498.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2962 >>Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step << Gnome !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Binjy Featherwhistle|r and |cRXP_FRIENDLY_Milli Featherwhistle|r
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto 1426/0,-618.46,-5457.22
    .vendor >>|cRXP_BUY_Buy a|r |T132247:0|t[|cFF0070FFMechanostrider|r]
    .goto 1426/0,-617.22,-5451.64
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r and |cRXP_FRIENDLY_Ultham Ironhorn|r
    .vendor >>|cRXP_BUY_Buy a|r |T132248:0|t[|cFF0070FFRam|r]
    .goto 1426/0,-1323.67,-5537.04
    .train 33388 >>Train |T136103:0|t[Apprentice Riding]
    .goto 1426/0,-1347.16,-5521.87
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .zoneskip Dun Morogh,1
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step
    .goto 1455/0,-1263.47,-4834.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 2922 >>Turn in Save Techbot's Brain!
    .target Tinkmaster Overspark
step << Rogue
    .goto 1455/0,-1124.40,-4647.54
    >>Kill |cRXP_ENEMY_Hulfdan Blackbeard|r and loot |cRXP_LOOT_Elegant Letter|r. Use it to start the quest
    .collect 17126,1,6681 --Elegant Letter (1)
    .accept 6681 >>Accept The Manor, Ravenholdt
    .use 17126
    .mob Hulfdan Blackbeard
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Alterac Mountains|r: The Manor, Ravenholdt << Rogue
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Only Cure is More Green Glow
step
    +|cRXP_WARN_Suggested next zones at level 24|r: |cRXP_FRIENDLY_Duskwood|r (about 0.7 levels of quests, starting around Clerk Daltry). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 27.|r Load its guide for level 27 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 27-28 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\27-29 Ashenvale: around Sentinel Melyria Frostshadow;Zone Routes (Alliance)\24-25 Duskwood: around Clerk Daltry

step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .turnin 7802 >>Turn in A Donation of Wool
    .target Mistina Steelshield
    .isQuestComplete 7802
step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .accept 7803 >>Accept A Donation of Silk
    .target Mistina Steelshield
step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .turnin 7803 >>Turn in A Donation of Silk
    .target Mistina Steelshield
    .isQuestComplete 7803
step << Dwarf Priest
    .goto 1455/0,-909.11,-4612.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
    .turnin 5641 >>Turn in A Lack of Fear
    .target High Priest Rohan
    .isOnQuest 5641
step
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 2924 >>Accept Essential Artificials
    .target Klockmort Spannerspan
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .turnin 7807 >>Turn in A Donation of Wool
    .target Bubulo Acerbus
    .isQuestComplete 7807
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .accept 7808 >>Accept A Donation of Silk
    .target Bubulo Acerbus
step
    .goto 1455/0,-1265.68,-4823.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mechanic Castpipe|r
    .accept 2930 >>Accept Data Rescue
    .target Master Mechanic Castpipe
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .turnin 7808 >>Turn in A Donation of Silk
    .target Bubulo Acerbus
    .isQuestComplete 7808
step
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 2924 >>Turn in Essential Artificials
    .target Klockmort Spannerspan
    .isQuestComplete 2924
step
    .goto 1455/0,-1265.68,-4823.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mechanic Castpipe|r
    .turnin 2930 >>Turn in Data Rescue
    .target Master Mechanic Castpipe
    .isQuestComplete 2930
step << Mage
    .goto 1455/0,-929.04,-4613.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bink|r
    .accept 1939 >>Accept High Sorcerer Andromath
    .target Bink
step
    .goto 1455/0,-1215.64,-4924.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
    .accept 683 >>Accept Sara Balloo's Plea
    .target Sara Balloo
    .isQuestTurnedIn 637 --any of: Sully Balloo's Letter
    .xp <25,1
step
    .goto 1455/0,-1022.65,-4865.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >>Turn in Sara Balloo's Plea
    .target King Magni Bronzebeard
    .isOnQuest 683
step
    .goto 1455/0,-1022.65,-4865.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .accept 686 >>Accept A King's Tribute
    .target King Magni Bronzebeard
    .isQuestTurnedIn 683 --any of: Sara Balloo's Plea
    .xp <26,1
step
    .goto 1455/0,-1022.25,-5033.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >>Turn in A King's Tribute
    .target Grand Mason Marblesten
    .isOnQuest 686
step
    .goto 1455/0,-1022.25,-5033.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .accept 700 >>Accept A King's Tribute
    .target Grand Mason Marblesten
    .isQuestTurnedIn 689 --any of: A King's Tribute
    .xp <25,1
step
    .goto 1455/0,-1022.25,-5033.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .accept 689 >>Accept A King's Tribute
    .target Grand Mason Marblesten
    .isQuestTurnedIn 686 --any of: A King's Tribute
    .xp <25,1
step
    .goto 1455/0,-1022.25,-5033.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 689 >>Turn in A King's Tribute
    .target Grand Mason Marblesten
    .isQuestComplete 689
step
    .goto 1455/0,-1022.65,-4865.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 700 >>Turn in A King's Tribute
    .target King Magni Bronzebeard
    .isOnQuest 700
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step
    .goto 1426/0,-641.70,-5473.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 466 >>Turn in Search for Incendicite
    .target Pilot Stonegear
    .isQuestComplete 466
step
    .goto 1426/0,-458.00,-5498.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2962 >>Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step
    .goto 1426/0,692.48,-5160.54
    >>Kill |cRXP_ENEMY_Caverndeep Invaders|r, |cRXP_ENEMY_Caverndeep Looters|r, |cRXP_ENEMY_Caverndeep Pillagers|r and |cRXP_ENEMY_Irradiated Invaders|r. Loot them for |cRXP_LOOT_White Punch Card|r
    .collect 9279,1,2930,1 --White Punch Card (1)
    .mob Caverndeep Invader
    .mob Caverndeep Looter
    .mob Caverndeep Pillager
    .mob Irradiated Invader
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: High Sorcerer Andromath << Mage
    >>|cRXP_FRIENDLY_Hillsbrad Foothills and back here|r: A Donation of Silk, A Donation of Silk
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Essential Artificials, Data Rescue
step
    +|cRXP_WARN_Suggested next zones at level 27|r: |cRXP_FRIENDLY_Ashenvale|r (about 0.7 levels of quests, starting around Sentinel Melyria Frostshadow), |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Clerk Daltry). Completing this step loads the guide for Ashenvale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 30.|r Load its guide for level 30 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 31 Dun Morogh
#subweight -1
#name 30-31 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\30-32 Stranglethorn Vale: around Krazek;Zone Routes (Alliance)\28-29 Duskwood: around Sirra Von'Indi;Zone Routes (Alliance)\27-29 Ashenvale: around Sentinel Melyria Frostshadow

step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .turnin 7803 >>Turn in A Donation of Silk
    .target Mistina Steelshield
    .isQuestComplete 7803
step
    .goto 1455/0,-1055.30,-4735.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistina Steelshield|r
    .turnin 7802 >>Turn in A Donation of Wool
    .target Mistina Steelshield
    .isQuestComplete 7802
step
    .goto 1455/0,-1250.58,-4812.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin 2924 >>Turn in Essential Artificials
    .target Klockmort Spannerspan
    .isQuestComplete 2924
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .turnin 7807 >>Turn in A Donation of Wool
    .target Bubulo Acerbus
    .isQuestComplete 7807
step
    .goto 1455/0,-1299.37,-4823.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bubulo Acerbus|r
    .turnin 7808 >>Turn in A Donation of Silk
    .target Bubulo Acerbus
    .isQuestComplete 7808
step
    .goto 1455/0,-1288.61,-5065.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
    .accept 1179 >>Accept The Brassbolts Brothers
    .target Pilot Longbeard
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step
    .goto 1426/0,-641.70,-5473.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 466 >>Turn in Search for Incendicite
    .target Pilot Stonegear
    .isQuestComplete 466
step
    .goto 1426/0,-458.00,-5498.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2962 >>Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step
    .goto 1426/0,692.48,-5160.54
    >>Kill |cRXP_ENEMY_Caverndeep Invaders|r, |cRXP_ENEMY_Caverndeep Looters|r, |cRXP_ENEMY_Caverndeep Pillagers|r and |cRXP_ENEMY_Irradiated Invaders|r. Loot them for |cRXP_LOOT_White Punch Card|r
    .collect 9279,1,2930,1 --White Punch Card (1)
    .mob Caverndeep Invader
    .mob Caverndeep Looter
    .mob Caverndeep Pillager
    .mob Irradiated Invader
    .isOnQuest 2930
step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Dwarf Priest
    .goto 1455/0,-909.11,-4612.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Rohan|r
    .turnin 5641 >>Turn in A Lack of Fear
    .target High Priest Rohan
    .isOnQuest 5641
step
    .goto 1455/0,-1265.68,-4823.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mechanic Castpipe|r
    .turnin 2930 >>Turn in Data Rescue
    .target Master Mechanic Castpipe
    .isQuestComplete 2930
step
    +|cRXP_WARN_End of the Dun Morogh route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Thousand Needles|r: The Brassbolts Brothers
step
    +|cRXP_WARN_Suggested next zones at level 30|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around Krazek), |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Sirra Von'Indi), |cRXP_FRIENDLY_Ashenvale|r (about 0.6 levels of quests, starting around Sentinel Melyria Frostshadow). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
]])
