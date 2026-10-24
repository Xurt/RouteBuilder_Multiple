-- 31-39 Desolace: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 31, 34, 37, 40).
-- Split into 4 guides, listed under "31 - 41 Desolace" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Desolace.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 31 - 41 Desolace
#subweight -31
#name 31-32 Desolace

step
    .goto 1443/1,3107.13,-1714.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roon Wildmane|r
    .accept 5763 >>Accept Hunting in Stranglethorn
    .target Roon Wildmane
step
    .xp 31 >>Grind to level 31 (Clam Bait needs it)
step
    .goto 1443/1,3215.48,-1705.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'Lahii|r
    .accept 6142 >>Accept Clam Bait
    .target Mai'Lahii
step
    #loop
    .goto 1443/1,2860.31,-573.50,0
    .goto 1443/1,2860.31,-573.50,40,0
    .goto 1443/1,2758.70,-603.18,40,0
    >>Kill |cRXP_ENEMY_Enraged Reef Crawler|r and loot |cRXP_LOOT_Soft-shelled Clam|r. It can also be picked up from |cRXP_PICK_Giant Softshell Clam|r on the ground
    .collect 15874,1,6142,1 --Soft-shelled Clam (1)
    .mob Enraged Reef Crawler
step
    #loop
    .goto 1443/1,2860.31,-573.50,0
    .goto 1443/1,2860.31,-573.50,40,0
    .goto 1443/1,2758.70,-603.18,40,0
    >>Kill |cRXP_ENEMY_Enraged Reef Crawler|r and loot |cRXP_LOOT_Soft-shelled Clam Meat|r. It can also be picked up from |cRXP_PICK_Giant Softshell Clam|r on the ground
    .complete 6142,1 --Soft-shelled Clam Meat (1)
    .mob Enraged Reef Crawler
step
    .goto 1443/1,2611.69,-459.58
    >>Click the |cRXP_PICK_Rackmore's Log|r
    .accept 6161 >>Accept Claim Rackmore's Treasure!
step
    .goto 1443/1,2485.35,-362.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .accept 5741 >>Accept Sceptre of Light
    .target Azore Aldamort
step
    .goto 1443/1,1869.87,-1178.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .turnin 1432 >>Turn in Alliance Relations
    .target Takata Steelblade
    .isOnQuest 1432
step
    .goto 1443/1,1869.87,-1178.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .accept 1433 >>Accept Alliance Relations
    .target Takata Steelblade
    .isQuestTurnedIn 1432 --any of: Alliance Relations
    .xp <30,1
step
    .goto 1443/1,1869.87,-1178.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .accept 1434 >>Accept Befouled by Satyr
    .target Takata Steelblade
    .isQuestTurnedIn 1432 --any of: Alliance Relations
    .xp <25,1
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .turnin 1433 >>Turn in Alliance Relations
    .target Maurin Bonesplitter
    .isOnQuest 1433
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .accept 1435 >>Accept The Burning of Spirits
    .target Maurin Bonesplitter
    .isQuestTurnedIn 1433 --any of: Alliance Relations
    .xp <25,1
step
    #completewith Drop635x1
    >>|cRXP_LOOT_Flayed Demon Skin|r can drop from |cRXP_ENEMY_Burning Blade Augur|r, |cRXP_ENEMY_Burning Blade Reaver|r, |cRXP_ENEMY_Burning Blade Adept|r. Use it to start the quest if you get one
    .collect 20310,1,1480 --Flayed Demon Skin (1)
    .accept 1480 >>Accept The Corrupter
    .use 20310
step
    .goto 1443/1,1752.98,-451.79
    >>Kill |cRXP_ENEMY_Burning Blade Seer|r and loot |cRXP_LOOT_Sceptre of Light|r
    .complete 5741,1 --Sceptre of Light (1)
    .mob Burning Blade Seer
step
    #completewith Drop635x1
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x1
    #loop
    .goto 1443/1,1742.19,-448.49,0
    .goto 1443/1,1742.19,-448.49,40,0
    .goto 1443/1,1839.30,-405.32,40,0
    >>Kill |cRXP_ENEMY_Burning Blade Augurs|r, |cRXP_ENEMY_Burning Blade Reavers|r, |cRXP_ENEMY_Burning Blade Adepts|r and |cRXP_ENEMY_Burning Blade Felsworns|r. Loot them for |cRXP_LOOT_Infused Burning Gem|r
    .complete 1435,1 --Infused Burning Gem (15)
    .mob Burning Blade Augur
    .mob Burning Blade Reaver
    .mob Burning Blade Adept
    .mob Burning Blade Felsworn
    .isOnQuest 1435
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .turnin 1480 >>Turn in The Corrupter
    .target Maurin Bonesplitter
    .isOnQuest 1480
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .turnin 1435 >>Turn in The Burning of Spirits
    .target Maurin Bonesplitter
    .isOnQuest 1435
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .accept 1481 >>Accept The Corrupter
    .target Maurin Bonesplitter
    .isQuestTurnedIn 1480 --any of: The Corrupter
    .xp <25,1
step
    .goto 1443/1,1742.19,-1221.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .turnin 5361 >>Turn in Family Tree
    .target Nataka Longhorn
    .isOnQuest 5361
step
    .goto 1443/1,1707.12,-1333.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 1362 >>Turn in The Kolkar of Desolace
    .target Felgur Twocuts
    .isOnQuest 1362
step
    .goto 1443/1,1702.63,-1337.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda Wildmane|r
    .accept 1367 >>Accept Magram Alliance
    .accept 1368 >>Accept Gelkis Alliance
    .target Gurda Wildmane
step
    #completewith Drop635x2
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #loop
    .goto 1443/1,926.65,-120.82,0
    .goto 1443/1,926.65,-120.82,40,0
    .goto 1443/1,984.64,-56.96,40,0
    >>Kill |cRXP_ENEMY_Hatefury Rogues|r
    .complete 1434,1 --Hatefury Rogue slain (7)
    .mob Hatefury Rogue
    .isOnQuest 1434
step
    #loop
    .goto 1443/1,959.02,-51.87,0
    .goto 1443/1,959.02,-51.87,40,0
    .goto 1443/1,986.44,11.39,40,0
    >>Kill |cRXP_ENEMY_Hatefury Betrayers|r
    .complete 1434,3 --Hatefury Betrayer slain (7)
    .mob Hatefury Betrayer
    .isOnQuest 1434
step
    #loop
    .goto 1443/1,848.42,-125.92,0
    .goto 1443/1,848.42,-125.92,40,0
    .goto 1443/1,815.15,-85.44,40,0
    .goto 1443/1,982.40,-187.67,40,0
    >>Kill |cRXP_ENEMY_Hatefury Felsworns|r
    .complete 1434,2 --Hatefury Felsworn slain (7)
    .mob Hatefury Felsworn
    .isOnQuest 1434
step
    .goto 1443/1,794.47,-263.52
    >>Kill |cRXP_ENEMY_Hatefury Shadowstalker|r and loot |cRXP_LOOT_Shadowstalker Scalp|r
    .complete 1481,1 --Shadowstalker Scalp (1)
    .mob Hatefury Shadowstalker
    .isOnQuest 1481
step
    #label Drop635x2
    #loop
    .goto 1443/1,759.40,-258.72,0
    .goto 1443/1,759.40,-258.72,40,0
    .goto 1443/1,694.66,-242.23,40,0
    >>Kill |cRXP_ENEMY_Hatefury Hellcallers|r
    .complete 1434,4 --Hatefury Hellcaller slain (7)
    .mob Hatefury Hellcaller
    .isOnQuest 1434
step
    .goto 1443/1,862.81,-1591.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warug|r
    .turnin 1367 >>Turn in Magram Alliance
    .target Warug
step
    .goto 1443/1,1869.87,-1178.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .turnin 1434 >>Turn in Befouled by Satyr
    .target Takata Steelblade
    .isOnQuest 1434
step
    .goto 1443/1,1869.87,-1178.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .accept 1436 >>Accept Alliance Relations
    .target Takata Steelblade
    .isQuestTurnedIn 1434 --Befouled by Satyr
    .isQuestTurnedIn 1435 --The Burning of Spirits
    .xp <30,1
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .turnin 1481 >>Turn in The Corrupter
    .target Maurin Bonesplitter
    .isOnQuest 1481
step
    .goto 1443/1,2604.94,-1923.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r
    .turnin 1368 >>Turn in Gelkis Alliance
    .target Uthek the Wise
step
    .goto 1443/1,3215.48,-1705.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'Lahii|r
    .turnin 6142 >>Turn in Clam Bait
    .target Mai'Lahii
step
    #completewith Drop635x3
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x3
    #loop
    .goto 1443/1,3374.63,-1872.80,0
    .goto 1443/1,3374.63,-1872.80,40,0
    .goto 1443/1,3400.70,-1917.77,40,0
    >>Kill |cRXP_ENEMY_Drysnap Crawlers|r and |cRXP_ENEMY_Drysnap Pincers|r. Loot them for |cRXP_LOOT_Rackmore's Silver Key|r
    .complete 6161,1 --Rackmore's Silver Key (1)
    .mob Drysnap Crawler
    .mob Drysnap Pincer
step
    .goto 1443/1,2485.35,-362.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 5741 >>Turn in Sceptre of Light
    .target Azore Aldamort
step
    #completewith Drop635x4
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Kolkar Centaur|r, |cRXP_ENEMY_Kolkar Scout|r, |cRXP_ENEMY_Kolkar Mauler|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x4
    #loop
    .goto 1443/1,2583.81,-274.61,0
    .goto 1443/1,2583.81,-274.61,40,0
    .goto 1443/1,2485.35,-189.47,40,0
    .goto 1443/1,2752.41,-247.03,40,0
    >>Kill |cRXP_ENEMY_Slitherblade Nagas|r, |cRXP_ENEMY_Slitherblade Sorceress|r, |cRXP_ENEMY_Slitherblade Warriors|r and |cRXP_ENEMY_Slitherblade Myrmidons|r. Loot them for |cRXP_LOOT_Rackmore's Golden Key|r
    .complete 6161,2 --Rackmore's Golden Key (1)
    .mob Slitherblade Naga
    .mob Slitherblade Sorceress
    .mob Slitherblade Warrior
    .mob Slitherblade Myrmidon
step
    .goto 1443/1,2884.58,190.96
    >>Click the |cRXP_PICK_Rackmore's Chest|r
    .turnin 6161 >>Turn in Claim Rackmore's Treasure!
step
    +|cRXP_WARN_That is all of Desolace for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Crystal in the Mountains
    >>|cRXP_FRIENDLY_Orgrimmar|r: Alliance Relations
    >>|cRXP_FRIENDLY_Stranglethorn Vale|r: Hunting in Stranglethorn
step
    +|cRXP_WARN_The rest of Desolace is planned from level 34.|r Load its guide for level 34 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 31 - 41 Desolace
#subweight -31
#name 34-35 Desolace
--RouteBuilder:next
#next Zone Routes (Horde)\35-38 Dustwallow Marsh: around Krog;Zone Routes (Horde)\33-35 Stranglethorn Vale: around Kebok

step
    .goto 1443/1,1707.12,-1333.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .accept 1365 >>Accept Khan Dez'hepah
    .target Felgur Twocuts
step
    .goto 1443/1,879.44,-1010.90
    >>Kill |cRXP_ENEMY_Khan Dez'hepah|r and loot |cRXP_LOOT_Khan Dez'hepah's Head|r
    .complete 1365,1 --Khan Dez'hepah's Head (1)
    .mob Khan Dez'hepah
step
    #loop
    .goto 1443/1,1287.21,-546.22,0
    .goto 1443/1,1287.21,-546.22,40,0
    .goto 1443/1,1228.32,-689.82,40,0
    .goto 1443/1,1184.26,-858.91,40,0
    .goto 1443/1,1183.36,-1037.28,40,0
    .goto 1443/1,1212.58,-1389.24,40,0
    .goto 1443/1,1434.68,-1487.57,40,0
    .goto 1443/1,1658.12,-1500.76,40,0
    .goto 1443/1,1858.18,-1681.53,40,0
    .goto 1443/1,2082.53,-1810.44,40,0
    .goto 1443/1,2379.25,-1893.79,40,0
    .goto 1443/1,2433.65,-1893.79,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cork Gizelton|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 5821 >>Accept Bodyguard for Hire
    .unitscan Cork Gizelton
step
    .goto 1443/1,1213.48,-1245.34
    >>Escort Gizelton Caravan past Kolkar Centaur Village
    .complete 5821,1 --Escort Gizelton Caravan past Kolkar Centaur Village
step
    .goto 1443/1,1497.17,-1402.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5821 >>Turn in Bodyguard for Hire
    .accept 5561 >>Accept Kodo Roundup
    .target Smeed Scrabblescrew
step
    #loop
    .goto 1443/1,1730.05,-1426.11,0
    .goto 1443/1,1730.05,-1426.11,40,0
    .goto 1443/1,1884.71,-1365.85,40,0
    >>Kill |cRXP_ENEMY_Aged Kodos|r, |cRXP_ENEMY_Dying Kodos|r and |cRXP_ENEMY_Ancient Kodos|r
    .complete 5561,1 --Aged Kodo (5)
    .mob Aged Kodo
    .mob Dying Kodo
    .mob Ancient Kodo
step
    .goto 1443/1,1707.12,-1333.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 1365 >>Turn in Khan Dez'hepah
    .accept 1366 >>Accept Centaur Bounty
    .target Felgur Twocuts
step
    .goto 1443/1,1497.17,-1402.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5561 >>Turn in Kodo Roundup
    .target Smeed Scrabblescrew
step
    #loop
    .goto 1443/1,1211.23,-1713.01,0
    .goto 1443/1,1211.23,-1713.01,40,0
    .goto 1443/1,1068.27,-1743.89,40,0
    .goto 1443/1,1088.50,-1855.41,40,0
    .goto 1443/1,1262.94,-1935.76,40,0
    >>Kill |cRXP_ENEMY_Kolkar Centaurs|r, |cRXP_ENEMY_Kolkar Scouts|r, |cRXP_ENEMY_Kolkar Maulers|r and |cRXP_ENEMY_Kolkar Windchasers|r. Loot them for |cRXP_LOOT_Centaur Ear|r
    .complete 1366,1 --Centaur Ear (15)
    .mob Kolkar Centaur
    .mob Kolkar Scout
    .mob Kolkar Mauler
    .mob Kolkar Windchaser
step
    .goto 1443/1,1707.12,-1333.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 1366 >>Turn in Centaur Bounty
    .target Felgur Twocuts
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .accept 1482 >>Accept The Corrupter
    .target Maurin Bonesplitter
    .isQuestTurnedIn 1481 --any of: The Corrupter
    .xp <25,1
step
    .goto 1443/1,3184.90,-1732.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drulzegar Skraghook|r
    .accept 6143 >>Accept Other Fish to Fry
    .target Drulzegar Skraghook
step
    #loop
    .goto 1443/1,2618.88,-412.52,0
    .goto 1443/1,2618.88,-412.52,40,0
    .goto 1443/1,2583.81,-274.61,40,0
    .goto 1443/1,2752.41,-247.03,40,0
    >>Kill |cRXP_ENEMY_Slitherblade Sorceress|r
    >>Kill |cRXP_ENEMY_Slitherblade Nagas|r
    .complete 6143,3 --Slitherblade Sorceress slain (5)
    .complete 6143,2 --Slitherblade Naga slain (7)
    .mob Slitherblade Sorceress
    .mob Slitherblade Naga
step
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Slitherblade Myrmidons|r. |cRXP_WARN_Anything left is finished later|r
    .complete 6143,1 --Slitherblade Myrmidon slain (7)
    .mob Slitherblade Myrmidon
step
    #label Along13
    .goto 1443/1,2751.06,-211.06
    >>Kill |cRXP_ENEMY_Slitherblade Oracle|r and loot |cRXP_LOOT_Oracle Crystal|r
    .complete 1482,1 --Oracle Crystal (1)
    .mob Slitherblade Oracle
    .isOnQuest 1482
step
    #loop
    .goto 1443/1,2770.84,-221.55,0
    .goto 1443/1,2770.84,-221.55,40,0
    .goto 1443/1,2796.02,-116.62,40,0
    >>Kill |cRXP_ENEMY_Slitherblade Myrmidons|r
    .complete 6143,1 --Slitherblade Myrmidon slain (7)
    .mob Slitherblade Myrmidon
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .turnin 1482 >>Turn in The Corrupter
    .target Maurin Bonesplitter
    .isOnQuest 1482
step
    .goto 1443/1,1884.26,-1150.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .accept 1484 >>Accept The Corrupter
    .target Maurin Bonesplitter
    .isQuestTurnedIn 1482 --any of: The Corrupter
    .xp <31,1
step
    .goto 1443/1,1869.87,-1178.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .turnin 1484 >>Turn in The Corrupter
    .target Takata Steelblade
    .isOnQuest 1484
step
    .goto 1443/1,3184.90,-1732.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drulzegar Skraghook|r
    .turnin 6143 >>Turn in Other Fish to Fry
    .target Drulzegar Skraghook
step
    +|cRXP_WARN_Suggested next zones at level 34|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.8 levels of quests, starting around Krog), |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.6 levels of quests, starting around Kebok). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Desolace is planned from level 37.|r Load its guide for level 37 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 31 - 41 Desolace
#subweight -31
#name 37-38 Desolace
--RouteBuilder:next
#next Zone Routes (Horde)\35-38 Dustwallow Marsh: around Krog;Zone Routes (Horde)\37-39 Stranglethorn Vale: around Baron Revilgaz

step
    .goto 1443/1,2485.35,-362.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .accept 6027 >>Accept Book of the Ancients
    .target Azore Aldamort
    .isQuestTurnedIn 5741 --any of: Sceptre of Light
step
    .goto 1443/1,2963.71,252.12
    >>Kill |cRXP_ENEMY_Lord Kragaru|r and loot |cRXP_LOOT_Book of the Ancients|r
    .complete 6027,1 --Book of the Ancients (1)
    .mob Lord Kragaru
    .isOnQuest 6027
step
    .goto 1443/1,2485.35,-362.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 6027 >>Turn in Book of the Ancients
    .target Azore Aldamort
    .isOnQuest 6027
step
    .goto 1443/1,3072.51,-1592.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .accept 5381 >>Accept Hand of Iruxos
    .target Taiga Wisemane
step
    .goto 1443/1,1760.62,-345.36
    >>Kill |cRXP_ENEMY_Demon Spirit|r and loot |cRXP_LOOT_Demon Box|r
    .complete 5381,1 --Demon Box (1)
    .mob Demon Spirit
step
    .goto 1443/1,1431.08,-716.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .accept 5501 >>Accept Bone Collector
    .target Bibbly F'utzbuckle
step
    #loop
    .goto 1443/1,1810.53,-1290.31,0
    .goto 1443/1,1810.53,-1290.31,40,0
    .goto 1443/1,1949.90,-1307.69,40,0
    .goto 1443/1,2101.86,-1276.82,40,0
    .goto 1443/1,1788.50,-1430.01,40,0
    >>Loot the |cRXP_PICK_Kodo Bones|r for |cRXP_LOOT_Kodo Bone|r
    .complete 5501,1 --Kodo Bone (10)
step
    .goto 1443/1,3072.51,-1592.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .turnin 5381 >>Turn in Hand of Iruxos
    .accept 5581 >>Accept Portals of the Legion
    .target Taiga Wisemane
step
    .goto 1443/1,2707.00,-1151.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melizza Brimbuzzle|r
    .accept 6132 >>Accept Get Me Out of Here!
    .target Melizza Brimbuzzle
step
    .goto 1443/1,2428.26,-1394.03
    >>Melizza Brimbuzzle escorted to safety
    .complete 6132,1 --Melizza Brimbuzzle escorted to safety
step
    .goto 1443/1,2082.98,-1401.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .turnin 6132 >>Turn in Get Me Out of Here!
    .accept 6134 >>Accept Ghost-o-plasm Round Up
    .target Hornizz Brimbuzzle
step
    #loop
    .goto 1443/1,1958.44,-1664.45,0
    .goto 1443/1,1958.44,-1664.45,40,0
    .goto 1443/1,1985.42,-1784.36,40,0
    >>Kill |cRXP_ENEMY_Demon Portal Guardians|r
    .complete 5581,1 --Portals Banished (8)
    .mob Demon Portal Guardian
step
    #loop
    .goto 1443/1,2433.65,-1893.79,0
    .goto 1443/1,2433.65,-1893.79,40,0
    .goto 1443/1,2379.25,-1893.79,40,0
    .goto 1443/1,2082.53,-1810.44,40,0
    .goto 1443/1,1858.18,-1681.53,40,0
    .goto 1443/1,1658.12,-1500.76,40,0
    .goto 1443/1,1434.68,-1487.57,40,0
    .goto 1443/1,1212.58,-1389.24,40,0
    .goto 1443/1,1183.36,-1037.28,40,0
    .goto 1443/1,1184.26,-858.91,40,0
    .goto 1443/1,1228.32,-689.82,40,0
    .goto 1443/1,1287.21,-546.22,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigger Gizelton|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 5943 >>Accept Gizelton Caravan
    .unitscan Rigger Gizelton
step
    .goto 1443/1,1729.60,-1580.20
    >>Escort Gizelton Caravan past Mannoroc Coven
    .complete 5943,1 --Escort Gizelton Caravan past Mannoroc Coven
step
    .goto 1443/1,1347.91,-2294.91
    >>Kill |cRXP_ENEMY_Magrami Spectres|r. Loot them for |cRXP_LOOT_Ghost-o-plasm|r
    .complete 6134,1 --Ghost-o-plasm (8)
    .mob Magrami Spectre
step
    .goto 1443/1,1497.17,-1402.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5943 >>Turn in Gizelton Caravan
    .target Smeed Scrabblescrew
step
    .goto 1443/1,1431.08,-716.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >>Turn in Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 1443/1,2082.98,-1401.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .turnin 6134 >>Turn in Ghost-o-plasm Round Up
    .target Hornizz Brimbuzzle
step
    .goto 1443/1,3072.51,-1592.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .turnin 5581 >>Turn in Portals of the Legion
    .target Taiga Wisemane
step
    +|cRXP_WARN_Suggested next zones at level 37|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.5 levels of quests, starting around Krog), |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.8 levels of quests, starting around Baron Revilgaz). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Desolace is planned from level 40.|r Load its guide for level 40 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 31 - 41 Desolace
#subweight -31
#name 40-41 Desolace
--RouteBuilder:next
#next Zone Routes (Horde)\37-39 Stranglethorn Vale: around Baron Revilgaz;Zone Routes (Horde)\40-41 Dustwallow Marsh: around Draz'Zilb

step
    .goto 1443/1,1742.19,-1221.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .accept 5386 >>Accept Catch of the Day
    .target Nataka Longhorn
step
    .goto 1443/1,1869.87,-1178.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .accept 1488 >>Accept The Corrupter
    .target Takata Steelblade
    .isQuestTurnedIn 1484 --any of: The Corrupter
    .xp <31,1
step
    .goto 1443/1,1672.96,-1818.54
    >>Kill |cRXP_ENEMY_Lord Azrethoc|r
    .complete 1488,1 --Lord Azrethoc slain (1)
    .mob Lord Azrethoc
    .isOnQuest 1488
step
    .goto 1443/1,1719.71,-1879.10
    >>Kill |cRXP_ENEMY_Jugkar Grim'rod|r
    .complete 1488,2 --Jugkar Grim'rod slain (1)
    .mob Jugkar Grim'rod
    .isOnQuest 1488
step
    .goto 1443/1,3224.02,-1739.99
    >>Kill |cRXP_ENEMY_Jinar'Zillens|r. Loot them for |cRXP_LOOT_Bloodbelly Fish|r
    .complete 5386,1 --Bloodbelly Fish (2)
    .mob Jinar'Zillen
step
    .goto 1443/1,1869.87,-1178.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .turnin 1488 >>Turn in The Corrupter
    .target Takata Steelblade
    .isOnQuest 1488
step
    .goto 1443/1,1742.19,-1221.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .turnin 5386 >>Turn in Catch of the Day
    .target Nataka Longhorn
step
    +|cRXP_WARN_End of the Desolace route.|r
step
    +|cRXP_WARN_Suggested next zones at level 40|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around Baron Revilgaz), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.5 levels of quests, starting around Draz'Zilb). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
]])
