-- 1-13 Tirisfal Glades: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 1, 13).
-- Split into 4 guides, listed under "1 - 14 Tirisfal Glades" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Tirisfal Glades.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 14 Tirisfal Glades
#subweight -1
#name 1-5 Tirisfal Glades: around Shadow Priest Sarvis
#next Zone Routes (Horde)\5-7 Tirisfal Glades: around Apothecary Johaan

step << Undead
    .goto 1420/0,1667.77,1679.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .accept 363 >>Accept Rude Awakening
    .target Undertaker Mordo
step << Priest/Mage
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 159,10,383,1
    .target Joshua Kien
step
    .goto 1420/0,1639.75,1843.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .turnin 363 >>Turn in Rude Awakening << Undead
    .accept 364 >>Accept The Mindless Ones
    .target Shadow Priest Sarvis
step << Mage
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Isabella
step << Warlock
    .goto 1420/0,1641.11,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayla|r
    .vendor >>Vendor Trash
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Maximillion
step << Warrior
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Dannal Stern
step << Warlock
    .goto 1420/0,1633.42,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venya Marthand|r
    .accept 1470 >>Accept Piercing the Veil
    .target Venya Marthand
step << Warlock
    #loop
    .goto 1420/0,1467.59,1898.05,0
    .goto 1420/0,1467.59,1898.05,40,0
    .goto 1420/0,1553.89,2015.84,40,0
    >>Kill |cRXP_ENEMY_Rattlecage Skeletons|r. Loot them for |cRXP_LOOT_Rattlecage Skull|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    .goto 1420/0,1633.42,1836.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venya Marthand|r
    .turnin 1470 >>Turn in Piercing the Veil
    .target Venya Marthand
step
    #loop
    .goto 1420/0,1590.95,1945.65,0
    .goto 1420/0,1590.95,1945.65,40,0
    .goto 1420/0,1524.97,1901.37,40,0
    >>Kill |cRXP_ENEMY_Mindless Zombies|r
    >>Kill |cRXP_ENEMY_Wretched Zombies|r
    .complete 364,1 --Mindless Zombie slain (8)
    .complete 364,2 --Wretched Zombie slain (8)
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.60,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10,383,1
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
step << Mage/Warlock/Priest
    .goto 1420/0,1576.94,1861.60,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,5,383,1
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
step
    .goto 1420/0,1639.75,1843.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .turnin 364 >>Turn in The Mindless Ones
    .accept 3095 >>Accept Simple Scroll << Undead Warrior
    .accept 3096 >>Accept Encrypted Scroll << Undead Rogue
    .accept 3097 >>Accept Hallowed Scroll << Undead Priest
    .accept 3098 >>Accept Glyphic Scroll << Undead Mage
    .accept 3099 >>Accept Tainted Scroll << Undead Warlock
    .accept 3901 >>Accept Rattling the Rattlecages << Undead
    .target Shadow Priest Sarvis
step << Undead Rogue
    .goto 1420/0,1563.38,1859.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Trias|r
    .turnin 3096 >>Turn in Encrypted Scroll while you are here
    .isQuestComplete 3096
    .target David Trias
step << Undead Warrior
    .goto 1420/0,1556.15,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal Stern|r
    .turnin 3095 >>Turn in Simple Scroll while you are here
    .isQuestComplete 3095
    .target Dannal Stern
step
    .goto 1420/0,1638.85,1847.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .accept 376 >>Accept The Damned
    .target Novice Elreth
step
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Duskbats|r and |cRXP_ENEMY_Mangy Duskbats|r. Loot them for |cRXP_LOOT_Duskbat Wing|r. |cRXP_WARN_Anything left is finished later|r
    .complete 376,2 --Duskbat Wing (6)
    .mob Duskbat
    .mob Mangy Duskbat
step << Undead Priest
    .goto 1420/0,1627.55,1848.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Duesten|r
    .turnin 3097 >>Turn in Hallowed Scroll
    .target Dark Cleric Duesten
step << Undead Mage
    .goto 1420/0,1635.68,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .turnin 3098 >>Turn in Glyphic Scroll
    .target Isabella
step << Undead Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Turn in Tainted Scroll
    .target Maximillion
step << Undead
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Rattlecage Skeletons|r. |cRXP_WARN_Anything left is finished later|r
    .complete 3901,1 --Rattlecage Skeleton slain (12)
    .mob Rattlecage Skeleton
step
    #label Along11
    #loop
    .goto 1420/0,1636.59,1965.23,0
    .goto 1420/0,1636.59,1965.23,40,0
    .goto 1420/0,1612.64,2077.30,40,0
    >>Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Ragged Scavengers|r. Loot them for |cRXP_LOOT_Scavenger Paw|r
    .complete 376,1 --Scavenger Paw (6)
    .mob Young Scavenger
    .mob Ragged Scavenger
step
    #loop
    .goto 1420/0,1751.36,1952.88,0
    .goto 1420/0,1751.36,1952.88,40,0
    .goto 1420/0,1716.57,1827.86,40,0
    .goto 1420/0,1709.34,1753.75,40,0
    >>Kill |cRXP_ENEMY_Duskbats|r and |cRXP_ENEMY_Mangy Duskbats|r. Loot them for |cRXP_LOOT_Duskbat Wing|r
    .complete 376,2 --Duskbat Wing (6)
    .mob Duskbat
    .mob Mangy Duskbat
step
    .goto 1420/0,1638.85,1847.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .turnin 376 >>Turn in The Damned while you are here
    .isQuestComplete 376
    .target Novice Elreth
step << Undead
    #loop
    .goto 1420/0,1553.89,2015.84,0
    .goto 1420/0,1553.89,2015.84,40,0
    .goto 1420/0,1467.59,1898.05,40,0
    >>Kill |cRXP_ENEMY_Rattlecage Skeletons|r
    .complete 3901,1 --Rattlecage Skeleton slain (12)
    .mob Rattlecage Skeleton
step
    .goto 1420/0,1595.47,1985.41,0
    .goto 1420/0,1627.55,2008.61,30,0
    .goto 1420/0,1584.17,2024.88,30,0
    .goto 1420/0,1575.58,2053.80,30,0
    .goto 1420/0,1529.49,2044.16,30,0
    .goto 1420/0,1512.32,2007.10,30,0
    .goto 1420/0,1499.67,1975.47,30,0
    .goto 1420/0,1487.47,1938.12,30,0
    .goto 1420/0,1541.69,1939.32,30,0
    .goto 1420/0,1595.47,1985.41,30,0
    .xp 3+940 >>Grind to 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>Grind to 980+/1400xp << !Warrior !Rogue
step
    .goto 1420/0,1595.47,1985.41,0
    .goto 1420/0,1627.55,2008.61,30,0
    .goto 1420/0,1584.17,2024.88,30,0
    .goto 1420/0,1575.58,2053.80,30,0
    .goto 1420/0,1529.49,2044.16,30,0
    .goto 1420/0,1512.32,2007.10,30,0
    .goto 1420/0,1499.67,1975.47,30,0
    .goto 1420/0,1487.47,1938.12,30,0
    .goto 1420/0,1541.69,1939.32,30,0
    .goto 1420/0,1595.47,1985.41,30,0
    .xp 3+710 >>Grind to 710+/1400xp << Warrior/Rogue
    .xp 3+770 >>Grind to 770+/1400xp << !Warrior !Rogue
step << Mage/Warlock/Priest
    .goto 1420/0,1576.04,1861.60,8,0
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Do NOT go below 1 Silver|r << Mage/Warlock/Priest
    .vendor >> Vendor Trash
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
step << Undead
    .goto 1420/0,1639.75,1843.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .turnin 3901 >>Turn in Rattling the Rattlecages
    .target Shadow Priest Sarvis
step
    .goto 1420/0,1638.85,1847.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .turnin 376 >>Turn in The Damned
    .accept 6395 >>Accept Marla's Last Wish
    .target Novice Elreth
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Train your class spells
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto 1420/0,1627.55,1848.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto 1420/0,1636.59,1839.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Maximillion
step << Mage
    .goto 1420/0,1635.23,1847.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Isabella
step
    .goto 1420/0,1604.96,1861.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .accept 3902 >>Accept Scavenging Deathknell
    .target Deathguard Saltain
step
    #completewith Along17
    >>As you go: Loot the |cRXP_PICK_Equipment Boxes|r for |cRXP_LOOT_Scavenged Goods|r. |cRXP_WARN_Anything left is finished later|r
    .complete 3902,1 --Scavenged Goods (6)
step
    #label Along17
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .accept 380 >>Accept Night Web's Hollow
    .target Executor Arren
step << Rogue/Warrior
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Undead Warrior
    .goto 1420/0,1556.15,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal Stern|r
    .turnin 3095 >>Turn in Simple Scroll
    .target Dannal Stern
step << Warrior
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.02
step << Warrior
    .goto 1420/0,1556.61,1862.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.01
step << Undead Rogue
    .goto 1420/0,1563.38,1859.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Trias|r
    .turnin 3096 >>Turn in Encrypted Scroll
    .target David Trias
step << Rogue
    .goto 1420/0,1563.38,1859.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .train 53 >> Train |T132090:0|t[Backstab]
    .money <0.04
    .target David Trias
step
    #loop
    .goto 1420/0,1506.00,1892.03,0
    .goto 1420/0,1506.00,1892.03,40,0
    .goto 1420/0,1593.21,1985.11,40,0
    >>Loot the |cRXP_PICK_Equipment Boxes|r for |cRXP_LOOT_Scavenged Goods|r
    .complete 3902,1 --Scavenged Goods (6)
step
    .goto 1420/0,1604.96,1861.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .turnin 3902 >>Turn in Scavenging Deathknell while you are here
    .isQuestComplete 3902
    .target Deathguard Saltain
step
    #loop
    .goto 1420/0,1684.94,2121.58,0
    .goto 1420/0,1684.94,2121.58,40,0
    .goto 1420/0,1789.32,2064.34,40,0
    >>Kill |cRXP_ENEMY_Young Night Web Spiders|r
    .complete 380,1 --Young Night Web Spider slain (10)
    .mob Young Night Web Spider
step
    #loop
    .goto 1420/0,1862.53,2043.86,0
    .goto 1420/0,1862.53,2043.86,40,0
    .goto 1420/0,1927.14,2038.74,40,0
    >>Kill |cRXP_ENEMY_Night Web Spiders|r
    .complete 380,2 --Night Web Spider slain (8)
    .mob Night Web Spider
step
    .goto 1420/0,1604.96,1861.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .turnin 3902 >>Turn in Scavenging Deathknell
    .target Deathguard Saltain
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .turnin 380 >>Turn in Night Web's Hollow
    .accept 381 >>Accept The Scarlet Crusade
    .target Executor Arren
step << Rogue/Warrior
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto 1420/0,1574.23,1866.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,15,383,1 << Warlock/Mage/Priest
    .vendor >> Vendor Trash
    .target Joshua Kien
    .isOnQuest 6395
step
    #loop
    .goto 1420/0,1375.86,1983.00,0
    .goto 1420/0,1375.86,1983.00,40,0
    .goto 1420/0,1327.51,1829.67,40,0
    .goto 1420/0,1342.87,1741.40,40,0
    >>Kill |cRXP_ENEMY_Scarlet Converts|r, |cRXP_ENEMY_Scarlet Initiates|r and |cRXP_ENEMY_Meven Korgals|r. Loot them for |cRXP_LOOT_Scarlet Armband|r
    >>Kill |cRXP_ENEMY_Samuel Fipps|r and loot |cRXP_LOOT_Samuel's Remains|r
    .complete 381,1 --Scarlet Armband (12)
    .collect 16333,1,6395,1 --Samuel's Remains (1)
    .mob Scarlet Convert
    .mob Scarlet Initiate
    .mob Meven Korgal
    .mob Samuel Fipps
step
    .goto 1420/0,1624.84,1876.96
    >>Click the |cRXP_PICK_Marla's Grave|r
    .complete 6395,1 --Samuel's Remains Buried
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .turnin 381 >>Turn in The Scarlet Crusade while you are here
    .isQuestComplete 381
    .target Executor Arren
step
    .goto 1420/0,1638.85,1847.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .turnin 6395 >>Turn in Marla's Last Wish
    .target Novice Elreth
step << Undead Priest
    .goto 1420/0,1627.55,1848.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Duesten|r
    .accept 5651 >>Accept In Favor of Darkness
    .target Dark Cleric Duesten
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .turnin 381 >>Turn in The Scarlet Crusade
    .accept 382 >>Accept The Red Messenger
    .target Executor Arren
step
    .goto 1420/0,1568.35,1859.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archibald|r
    .vendor >> Vendor Trash
    .target Archibald Kava
step
    .goto 1420/0,1380.83,1772.73
    >>Kill |cRXP_ENEMY_Meven Korgal|r and loot |cRXP_LOOT_Scarlet Crusade Documents|r
    .complete 382,1 --Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto 1420/0,1580.56,1848.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .turnin 382 >>Turn in The Red Messenger
    .accept 383 >>Accept Vital Intelligence
    .target Executor Arren
step
    .goto 1420/0,1338.35,1939.93,0
    .goto 1420/0,1493.34,2044.76,40,0
    .goto 1420/0,1436.41,2133.93,40,0
    .goto 1420/0,1369.08,2124.89,40,0
    .goto 1420/0,1327.05,2048.68,40,0
    .goto 1420/0,1338.35,1939.93,40,0
    .goto 1420/0,1400.71,1766.71,25,0
    .goto 1420/0,1385.80,1744.11,25,0
    .goto 1420/0,1368.17,1728.15,25,0
    .goto 1420/0,1342.42,1741.40,25,0
    .goto 1420/0,1313.95,1735.08,25,0
    .goto 1420/0,1320.28,1752.25,25,0
    .goto 1420/0,1314.85,1765.80,25,0
    .goto 1420/0,1294.07,1780.56,25,0
    .goto 1420/0,1283.67,1817.02,25,0
    .goto 1420/0,1289.55,1841.72,25,0
    .goto 1420/0,1286.84,1877.27,25,0
    .goto 1420/0,1333.38,1868.53,25,0
    .goto 1420/0,1364.56,1867.93,25,0
    .goto 1420/0,1383.54,1866.72,25,0
    .goto 1420/0,1368.17,1831.48,25,0
    .goto 1420/0,1341.06,1790.51,25,0
    .goto 1420/0,1364.56,1784.18,25,0
    .goto 1420/0,1400.71,1766.71,25,0
    .xp 5+2350 >>Grind to 2350+/2800xp
step
    .goto 1420/0,1338.35,1939.93,0
    .goto 1420/0,1493.34,2044.76,40,0
    .goto 1420/0,1436.41,2133.93,40,0
    .goto 1420/0,1369.08,2124.89,40,0
    .goto 1420/0,1327.05,2048.68,40,0
    .goto 1420/0,1338.35,1939.93,40,0
    .goto 1420/0,1400.71,1766.71,25,0
    .goto 1420/0,1385.80,1744.11,25,0
    .goto 1420/0,1368.17,1728.15,25,0
    .goto 1420/0,1342.42,1741.40,25,0
    .goto 1420/0,1313.95,1735.08,25,0
    .goto 1420/0,1320.28,1752.25,25,0
    .goto 1420/0,1314.85,1765.80,25,0
    .goto 1420/0,1294.07,1780.56,25,0
    .goto 1420/0,1283.67,1817.02,25,0
    .goto 1420/0,1289.55,1841.72,25,0
    .goto 1420/0,1286.84,1877.27,25,0
    .goto 1420/0,1333.38,1868.53,25,0
    .goto 1420/0,1364.56,1867.93,25,0
    .goto 1420/0,1383.54,1866.72,25,0
    .goto 1420/0,1368.17,1831.48,25,0
    .goto 1420/0,1341.06,1790.51,25,0
    .goto 1420/0,1364.56,1784.18,25,0
    .goto 1420/0,1400.71,1766.71,25,0
    .xp 5+2125 >>Grind to 2125+/2800xp
step
    .goto 1420/0,1305.82,2126.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calvin Montague|r
    .accept 8 >>Accept A Rogue's Deal
    .target Calvin Montague
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 14 Tirisfal Glades
#subweight -1
#name 5-7 Tirisfal Glades: around Apothecary Johaan
#next Zone Routes (Horde)\7-11 Tirisfal Glades: around Apothecary Johaan

step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 383 >>Turn in Vital Intelligence
    .target Executor Zygand
    .isOnQuest 383
step << Rogue
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
step << Warrior
    .goto 1420/0,316.66,2227.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 36c). You'll come back later if you don't have enough yet
    .target Oliver Dwor
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Cain Firesong
step << Warrior
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto 1420/0,251.59,2252.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Lang|r on the second floor
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cRXP_BUY_from her|r
    .collect 16321,1,404,1
    .vendor >>Vendor Trash
    .target Gina Lang
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto 1420/0,250.24,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Rupert Boch
step << Undead Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Beryl|r
    .turnin 5651 >>Turn in In Favor of Darkness while you are here
    .isQuestComplete 5651
    .target Dark Cleric Beryl
step
    .goto 1420/0,244.36,2269.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    .turnin 8 >>Turn in A Rogue's Deal
    .target Innkeeper Renee
    .isOnQuest 8
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .accept 358 >>Accept Graverobbers
    .target Magistrate Sevren
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .accept 427 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .xp <5,1
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .accept 404 >>Accept A Putrid Task
    .target Deathguard Dillinger
step
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Rotting Dead|r and |cRXP_ENEMY_Ravaged Corpses|r. Loot them for |cRXP_LOOT_Putrid Claw|r. |cRXP_WARN_Anything left is finished later|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    .goto 1420/0,656.47,2157.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constance Brisboise|r
    .target Constance Brisboise
    .home >>Set your Hearthstone to Constance Brisboise's inn
step
    .xp 5 >>Grind to level 5 (Gordo's Task needs it)
step
    #loop
    .goto 1420/0,496.96,2255.94,0
    .goto 1420/0,496.96,2255.94,40,0
    .goto 1420/0,620.77,2225.51,40,0
    .goto 1420/0,688.10,2174.30,40,0
    .goto 1420/0,744.13,2106.82,40,0
    .goto 1420/0,884.22,2107.72,40,0
    .goto 1420/0,987.70,2135.14,40,0
    .goto 1420/0,1087.56,2189.96,40,0
    .goto 1420/0,1175.68,2183.64,40,0
    .goto 1420/0,1189.68,2195.69,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordo|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 5481 >>Accept Gordo's Task
    .unitscan Gordo
step
    #label Along39
    #loop
    .goto 1420/0,737.81,2061.63,0
    .goto 1420/0,737.81,2061.63,40,0
    .goto 1420/0,789.32,2182.73,40,0
    .goto 1420/0,851.68,1995.05,40,0
    >>Pick up |cRXP_PICK_Gloom Weed|r from the ground
    .complete 5481,1 --Gloom Weed (3)
step
    .goto 1420/0,1184.71,2205.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .accept 365 >>Accept Fields of Grief
    .target Deathguard Simmer
step
    .goto 1420/0,1305.82,2126.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calvin Montague|r
    .accept 590 >>Accept A Rogue's Deal
    .target Calvin Montague
    .isQuestTurnedIn 8 --any of: A Rogue's Deal
step
    .goto 1420/0,1307.62,2128.21
    >>Defeat Calvin Montague
    .complete 590,1 --Defeat Calvin Montague
    .isOnQuest 590
step
    .goto 1420/0,1305.82,2126.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calvin Montague|r
    .turnin 590 >>Turn in A Rogue's Deal
    .target Calvin Montague
    .isOnQuest 590
step
    #loop
    .goto 1420/0,1378.12,2330.04,0
    .goto 1420/0,1378.12,2330.04,40,0
    .goto 1420/0,1471.20,2304.74,40,0
    >>Pick up |cRXP_PICK_Tirisfal Pumpkin|r from the ground
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    #completewith next
    .hs >>Hearth to Constance Brisboise's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    #loop
    .goto 1420/0,621.22,2120.37,0
    .goto 1420/0,621.22,2120.37,40,0
    .goto 1420/0,612.64,2207.44,40,0
    .goto 1420/0,805.59,2176.11,40,0
    >>Kill |cRXP_ENEMY_Rotting Dead|r and |cRXP_ENEMY_Ravaged Corpses|r. Loot them for |cRXP_LOOT_Putrid Claw|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    .goto 1420/0,437.76,2365.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junior Apothecary Holland|r
    .turnin 5481 >>Turn in Gordo's Task
    .accept 5482 >>Accept Doom Weed
    .target Junior Apothecary Holland
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 404 >>Turn in A Putrid Task
    .target Deathguard Dillinger
step
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .turnin 365 >>Turn in Fields of Grief
    .target Apothecary Johaan
step
    .xp 6 >>Grind to level 6 (A New Plague needs it)
step
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 367 >>Accept A New Plague
    .accept 407 >>Accept Fields of Grief
    .target Apothecary Johaan
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .accept 426 >>Accept The Mills Overrun
    .target Deathguard Dillinger
    .xp <6,1
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .accept 427 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
step
    .goto 1420/0,233.06,2292.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Scarlet Zealot|r
    .turnin 407 >>Turn in Fields of Grief
    .target Captured Scarlet Zealot
step
    #loop
    .goto 1420/0,154.89,2528.27,0
    .goto 1420/0,154.89,2528.27,40,0
    .goto 1420/0,248.88,2619.24,40,0
    .goto 1420/0,205.95,2650.57,40,0
    .goto 1420/0,17.97,2789.75,40,0
    >>Kill |cRXP_ENEMY_Decrepit Darkhounds|r, |cRXP_ENEMY_Cursed Darkhounds|r and |cRXP_ENEMY_Ravenous Darkhounds|r. Loot them for |cRXP_LOOT_Darkhound Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .mob Ravenous Darkhound
step
    #loop
    .goto 1420/0,349.20,2720.16,0
    .goto 1420/0,349.20,2720.16,40,0
    .goto 1420/0,436.41,2778.61,40,0
    .goto 1420/0,524.52,2547.85,40,0
    .goto 1420/0,381.28,2573.45,40,0
    >>Kill |cRXP_ENEMY_Rot Hide Mongrels|r
    >>Pick up |cRXP_PICK_Doom Weed|r from the ground
    >>Kill |cRXP_ENEMY_Rot Hide Gnolls|r, |cRXP_ENEMY_Rot Hide Mongrels|r and |cRXP_ENEMY_Rot Hide Graverobbers|r. Loot them for |cRXP_LOOT_Embalming Ichor|r
    >>Kill |cRXP_ENEMY_Rot Hide Graverobbers|r
    .complete 358,2 --Rot Hide Mongrel slain (5)
    .complete 5482,1 --Doom Weed (10)
    .complete 358,3 --Embalming Ichor (8)
    .complete 358,1 --Rot Hide Graverobber slain (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    .goto 1420/0,437.76,2365.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junior Apothecary Holland|r
    .turnin 5482 >>Turn in Doom Weed
    .target Junior Apothecary Holland
step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .accept 426 >>Accept The Mills Overrun
    .target Deathguard Dillinger
step
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .turnin 367 >>Turn in A New Plague
    .accept 368 >>Accept A New Plague
    .target Apothecary Johaan
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .turnin 358 >>Turn in Graverobbers
    .accept 405 >>Accept The Prodigal Lich
    .accept 359 >>Accept Forsaken Duties
    .target Magistrate Sevren
step
    .xp 7 >>Grind to level 7 (The Chill of Death needs it)
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen Dedmar|r
    .accept 375 >>Accept The Chill of Death
    .target Gretchen Dedmar
step
    .goto 1420/0,275.54,2259.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Coarse Thread|r from |cRXP_FRIENDLY_Abigail Shiel|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
step
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step << Undead Priest
    .goto 1458/0,400.60,1768.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5661 >>Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5661
step << Undead Priest
    .goto 1458/0,400.60,1768.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5663 >>Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5663
step << Undead Priest
    .goto 1458/0,400.60,1768.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >>Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    .goto 1458/0,400.60,1768.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5662 >>Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5662
step << Undead Warlock
    .goto 1458/0,57.15,1711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 10789 >>Turn in Return to Carendin Halgar
    .target Carendin Halgar
    .isOnQuest 10789
step
    .goto 1458/0,66.65,1766.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor Iceshard|r
    .turnin 405 >>Turn in The Prodigal Lich
    .accept 357 >>Accept The Lich's Identity
    .target Bethor Iceshard
step
    #completewith next
    .zone 1420 >>Leave Undercity for Tirisfal Glades
    .zoneskip 1420
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Linnea|r
    .turnin 359 >>Turn in Forsaken Duties
    .accept 360 >>Accept Return to the Magistrate
    .target Deathguard Linnea
step
    #loop
    .goto 1420/0,38.31,2195.39,0
    .goto 1420/0,38.31,2195.39,40,0
    .goto 1420/0,-86.86,2214.67,40,0
    .goto 1420/0,106.54,2326.73,40,0
    >>Kill |cRXP_ENEMY_Greater Duskbats|r and |cRXP_ENEMY_Vampiric Duskbats|r. Loot them for |cRXP_LOOT_Duskbat Pelt|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    .goto 1420/0,-37.61,2569.54
    >>Open the |cRXP_PICK_Gunther's Books|r. Loot it for |cRXP_LOOT_The Lich's Spellbook|r
    .complete 357,1 --The Lich's Spellbook (1)
step
    #completewith Drop361x1
    >>|cRXP_LOOT_A Letter to Yvette|r can drop from |cRXP_ENEMY_Rattlecage Soldier|r, |cRXP_ENEMY_Darkeye Bonecaster|r, |cRXP_ENEMY_Cracked Skull Soldier|r. Use it to start the quest if you get one
    .collect 2839,1,361 --A Letter to Yvette (1)
    .accept 361 >>Accept A Letter Undelivered
    .use 2839
step
    #label Drop361x1
    #loop
    .goto 1420/0,818.24,2809.33,0
    .goto 1420/0,818.24,2809.33,40,0
    .goto 1420/0,913.59,2786.74,40,0
    .goto 1420/0,879.25,2896.39,40,0
    >>Kill |cRXP_ENEMY_Rattlecage Soldiers|r and |cRXP_ENEMY_Cracked Skull Soldiers|r. Loot them for |cRXP_LOOT_Notched Rib|r
    >>Kill |cRXP_ENEMY_Darkeye Bonecasters|r. Loot them for |cRXP_LOOT_Blackened Skull|r
    .complete 426,1 --Notched Rib (5)
    .complete 426,2 --Blackened Skull (3)
    .mob Rattlecage Soldier
    .mob Cracked Skull Soldier
    .mob Darkeye Bonecaster
step
    #loop
    .goto 1420/0,1552.54,2384.87,0
    .goto 1420/0,1552.54,2384.87,40,0
    .goto 1420/0,1601.79,2442.71,40,0
    >>Kill |cRXP_ENEMY_Scarlet Warriors|r
    .complete 427,1 --Scarlet Warrior slain (10)
    .mob Scarlet Warrior
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 14 Tirisfal Glades
#subweight -1
#name 7-11 Tirisfal Glades: around Apothecary Johaan
--RouteBuilder:next
#next Zone Routes (Horde)\10-13 The Barrens: around Sergra Darkthorn;Zone Routes (Horde)\4-10 Durotar: around Master Gadrin;Zone Routes (Horde)\10-12 Silverpine Forest: around Apothecary Renferrel

step
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 426 >>Turn in The Mills Overrun
    .target Deathguard Dillinger
    .isOnQuest 426
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 427 >>Turn in At War With The Scarlet Crusade
    .target Executor Zygand
    .isOnQuest 427
step
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Burgess|r
    .accept 374 >>Accept Proof of Demise
    .target Deathguard Burgess
    .isQuestTurnedIn 427 --any of: At War With The Scarlet Crusade
step
    .goto 1420/0,250.69,2252.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yvette Farthing|r
    .turnin 361 >>Turn in A Letter Undelivered
    .target Yvette Farthing
    .isOnQuest 361
step
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen Dedmar|r
    .turnin 375 >>Turn in The Chill of Death
    .target Gretchen Dedmar
    .isOnQuest 375
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .accept 362 >>Accept The Haunted Mills
    .accept 354 >>Accept Deaths in the Family
    .target Coleman Farthing
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .turnin 360 >>Turn in Return to the Magistrate
    .target Magistrate Sevren
    .isOnQuest 360
step
    .goto 1420/0,288.64,2286.06
    >>Click the |cRXP_PICK_Wanted!|r
    .accept 398 >>Accept Wanted: Maggot Eye
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .accept 370 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestTurnedIn 427 --any of: At War With The Scarlet Crusade
step
    #loop
    .goto 1420/0,601.79,1824.55,0
    .goto 1420/0,601.79,1824.55,40,0
    .goto 1420/0,681.32,1785.08,40,0
    >>Kill |cRXP_ENEMY_Scarlet Zealots|r
    .complete 370,2 --Scarlet Zealot slain (3)
    .mob Scarlet Zealot
    .isOnQuest 370
step
    #loop
    .goto 1420/0,705.27,1801.35,0
    .goto 1420/0,705.27,1801.35,40,0
    .goto 1420/0,621.68,1785.69,40,0
    .goto 1420/0,827.28,1843.83,40,0
    >>Kill |cRXP_ENEMY_Scarlet Warriors|r, |cRXP_ENEMY_Scarlet Missionaries|r, |cRXP_ENEMY_Scarlet Zealots|r and |cRXP_ENEMY_Scarlet Friars|r. Loot them for |cRXP_LOOT_Scarlet Insignia Ring|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
    .mob Scarlet Friar
    .isOnQuest 374
step
    .goto 1420/0,722.44,1795.02
    >>Kill |cRXP_ENEMY_Captain Perrine|r
    .complete 370,1 --Captain Perrine slain (1)
    .mob Captain Perrine
    .isOnQuest 370
step
    #loop
    .goto 1420/0,749.56,1796.53,0
    .goto 1420/0,749.56,1796.53,40,0
    .goto 1420/0,648.34,1806.47,40,0
    >>Kill |cRXP_ENEMY_Scarlet Missionaries|r
    .complete 370,3 --Scarlet Missionary slain (3)
    .mob Scarlet Missionary
    .isOnQuest 370
step
    #loop
    .goto 1420/0,1424.66,2532.18,0
    .goto 1420/0,1424.66,2532.18,40,0
    .goto 1420/0,1387.15,2614.42,40,0
    >>Kill |cRXP_ENEMY_Vile Fin Puddlejumpers|r, |cRXP_ENEMY_Vile Fin Minor Oracles|r and |cRXP_ENEMY_Vile Fin Muckdwellers|r. Loot them for |cRXP_LOOT_Vile Fin Scale|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    .goto 1420/0,894.16,2609.00
    >>Kill |cRXP_ENEMY_Devlin Agamand|r and loot |cRXP_LOOT_Devlin's Remains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .turnin 368 >>Turn in A New Plague
    .target Apothecary Johaan
    .isOnQuest 368
step
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 369 >>Accept A New Plague
    .target Apothecary Johaan
    .isQuestTurnedIn 368 --any of: A New Plague
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 370 >>Turn in At War With The Scarlet Crusade
    .target Executor Zygand
    .isOnQuest 370
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .accept 371 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestTurnedIn 370 --any of: At War With The Scarlet Crusade
step
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Burgess|r
    .turnin 374 >>Turn in Proof of Demise
    .target Deathguard Burgess
    .isOnQuest 374
step
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
    .xp <9,1
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 362 >>Turn in The Haunted Mills
    .target Coleman Farthing
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Linnea|r
    .accept 356 >>Accept Rear Guard Patrol
    .target Deathguard Linnea
step
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step
    .goto 1458/0,66.65,1766.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor Iceshard|r
    .turnin 357 >>Turn in The Lich's Identity
    .target Bethor Iceshard
    .isOnQuest 357
step
    .goto 1458/0,66.65,1766.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor Iceshard|r
    .accept 366 >>Accept Return the Book
    .target Bethor Iceshard
    .isQuestTurnedIn 357 --any of: The Lich's Identity
step
    #completewith next
    .zone 1420 >>Leave Undercity for Tirisfal Glades
    .zoneskip 1420
step
    #loop
    .goto 1420/0,-356.18,2015.54,0
    .goto 1420/0,-356.18,2015.54,40,0
    .goto 1420/0,-434.36,2026.69,40,0
    >>Kill |cRXP_ENEMY_Bleeding Horrors|r
    >>Kill |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror slain (8)
    .complete 356,2 --Wandering Spirit slain (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
step
    #loop
    .goto 1420/0,-887.13,2120.07,0
    .goto 1420/0,-887.13,2120.07,40,0
    .goto 1420/0,-850.53,2220.39,40,0
    .goto 1420/0,-812.57,2302.03,40,0
    >>Kill |cRXP_ENEMY_Vicious Night Web Spiders|r. Loot them for |cRXP_LOOT_Vicious Night Web Spider Venom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #loop
    .goto 1420/0,-653.97,2237.86,0
    .goto 1420/0,-653.97,2237.86,40,0
    .goto 1420/0,-530.15,2143.57,40,0
    >>Kill |cRXP_ENEMY_Scarlet Friars|r
    .complete 371,2 --Scarlet Friar slain (5)
    .mob Scarlet Friar
    .isOnQuest 371
step
    .goto 1420/0,-528.35,2146.58
    >>Kill |cRXP_ENEMY_Captain Vachon|r
    .complete 371,1 --Captain Vachon slain (1)
    .mob Captain Vachon
    .isOnQuest 371
step
    .goto 1420/0,-48.45,2574.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Arcanus|r
    .turnin 366 >>Turn in Return the Book
    .target Gunther Arcanus
    .isOnQuest 366
step
    .goto 1420/0,-48.45,2574.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Arcanus|r
    .accept 409 >>Accept Proving Allegiance
    .target Gunther Arcanus
    .isQuestTurnedIn 366 --any of: Return the Book
step
    .goto 1420/0,382.63,2910.55
    >>Kill |cRXP_ENEMY_Maggot Eye|r and loot |cRXP_LOOT_Maggot Eye's Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    .goto 1420/0,921.27,2954.54
    >>Kill |cRXP_ENEMY_Gregor Agamand|r and loot |cRXP_LOOT_Gregor's Remains|r
    .complete 354,1 --Gregor's Remains (1)
    .mob Gregor Agamand
step
    .goto 1420/0,1081.23,2792.46
    >>Kill |cRXP_ENEMY_Thurman Agamand|r and loot |cRXP_LOOT_Thurman's Remains|r
    .complete 354,3 --Thurman's Remains (1)
    .mob Thurman Agamand
step
    .goto 1420/0,785.71,2742.76
    >>Kill |cRXP_ENEMY_Nissa Agamand|r and loot |cRXP_LOOT_Nissa's Remains|r
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .turnin 369 >>Turn in A New Plague
    .target Apothecary Johaan
    .isOnQuest 369
step << Undead
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 492 >>Accept A New Plague
    .target Apothecary Johaan
    .isQuestTurnedIn 369 --any of: A New Plague
step
    .xp 9 >>Grind to level 9 (Delivery to Silverpine Forest needs it)
step
    .goto 1420/0,346.94,2258.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 371 >>Turn in At War With The Scarlet Crusade
    .target Executor Zygand
    .isOnQuest 371
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 398 >>Turn in Wanted: Maggot Eye
    .target Executor Zygand
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .accept 372 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestTurnedIn 371 --any of: At War With The Scarlet Crusade
step
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 354 >>Turn in Deaths in the Family
    .accept 355 >>Accept Speak with Sevren
    .target Coleman Farthing
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .turnin 355 >>Turn in Speak with Sevren
    .target Magistrate Sevren
step << Undead
    .goto 1420/0,234.42,2289.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Mountaineer|r
    .turnin 492 >>Turn in A New Plague
    .target Captured Mountaineer
    .isOnQuest 492
step << Undead Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion Call|r
    .accept 1885 >>Accept Mennet Carkad
    .target Marion Call
    .xp <10,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain Firesong|r
    .accept 1881 >>Accept Speak with Anastasia
    .target Cain Firesong
    .xp <10,1
step << Warrior
    .goto 1420/0,238.49,2254.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil de Mon|r
    .accept 1818 >>Accept Speak with Dillinger
    .target Austil de Mon
    .xp <10,1
step << Warlock
    .goto 1420/0,248.88,2250.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ageron Kargal|r
    .accept 1478 >>Accept Halgar's Summons
    .target Ageron Kargal
    .xp <10,1
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Linnea|r
    .turnin 356 >>Turn in Rear Guard Patrol
    .target Deathguard Linnea
step
    .goto 1420/0,-46.65,2571.65
    >>Open the |cRXP_PICK_Crate of Candles|r. Loot it for |cRXP_LOOT_Candle of Beckoning|r
    .collect 3080,1,409,1 --Candle of Beckoning (1)
    .isOnQuest 409
step
    .goto 1420/0,20.68,2482.78
    >>Kill |cRXP_ENEMY_Lillith Nefara|r
    .complete 409,1 --Lillith Nefara slain (1)
    .mob Lillith Nefara
    .isOnQuest 409
step
    .goto 1420/0,-48.45,2574.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Arcanus|r
    .turnin 409 >>Turn in Proving Allegiance
    .target Gunther Arcanus
    .isOnQuest 409
step
    .goto 1420/0,-48.45,2574.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Arcanus|r
    .accept 411 >>Accept The Prodigal Lich Returns
    .target Gunther Arcanus
    .isQuestTurnedIn 409 --any of: Proving Allegiance
step
    .goto 1420/0,-557.27,3076.84
    >>Kill |cRXP_ENEMY_Scarlet Bodyguards|r
    .complete 372,2 --Scarlet Bodyguard slain (2)
    .mob Scarlet Bodyguard
    .isOnQuest 372
step
    .goto 1420/0,-559.98,3079.86
    >>Kill |cRXP_ENEMY_Captain Melrache|r
    .complete 372,1 --Captain Melrache slain (1)
    .mob Captain Melrache
    .isOnQuest 372
step << Undead Rogue
    .xp 10 >>Grind to level 10 (Mennet Carkad needs it)
step << Undead Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion Call|r
    .accept 1885 >>Accept Mennet Carkad
    .target Marion Call
step << Warrior
    .goto 1420/0,238.49,2254.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil de Mon|r
    .accept 1818 >>Accept Speak with Dillinger
    .target Austil de Mon
    .xp <10,1
step << Warlock
    .goto 1420/0,248.88,2250.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ageron Kargal|r
    .accept 1478 >>Accept Halgar's Summons
    .target Ageron Kargal
    .xp <10,1
step
    .goto 1420/0,295.42,2278.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 372 >>Turn in At War With The Scarlet Crusade
    .target Executor Zygand
    .isOnQuest 372
step << Mage
    .xp 10 >>Grind to level 10 (Speak with Anastasia needs it)
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain Firesong|r
    .accept 1881 >>Accept Speak with Anastasia
    .target Cain Firesong
step << Mage
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step << Mage
    .goto 1458/0,56.38,1813.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia Hartwell|r
    .turnin 1881 >>Turn in Speak with Anastasia
    .accept 1882 >>Accept The Balnir Farmstead
    .target Anastasia Hartwell
step
    .goto 1458/0,66.65,1766.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor Iceshard|r
    .turnin 411 >>Turn in The Prodigal Lich Returns while you are here
    .isQuestComplete 411
    .target Bethor Iceshard
step << Mage
    #completewith next
    .zone 1420 >>Leave Undercity for Tirisfal Glades
    .zoneskip 1420
step << Mage
    .goto 1420/0,-471.41,1969.45
    >>Pick up |cRXP_PICK_Balnir Snapdragons|r from the ground
    .complete 1882,1 --Balnir Snapdragons (1)
step << Mage
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step << Mage
    .goto 1458/0,56.38,1813.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia Hartwell|r
    .turnin 1882 >>Turn in The Balnir Farmstead
    .target Anastasia Hartwell
step << Mage
    #completewith next
    .zone 1420 >>Leave Undercity for Tirisfal Glades
    .zoneskip 1420
step << Warlock
    .xp 10 >>Grind to level 10 (Halgar's Summons needs it)
step << Warlock
    .goto 1420/0,248.88,2250.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ageron Kargal|r
    .accept 1478 >>Accept Halgar's Summons
    .target Ageron Kargal
step
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step << Undead Priest
    .xp 10 >>Grind to level 10 (Touch of Weakness needs it)
step << Troll Priest
    .xp 10 >>Grind to level 10 (Hex of Weakness needs it)
step
    .goto 1458/0,400.60,1768.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >>Accept Touch of Weakness << Undead Priest
    .accept 5657 >>Accept Hex of Weakness << Troll Priest
    .target Aelthalyste
step << Undead Priest
    .goto 1458/0,400.60,1768.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    >>|cRXP_WARN_The database has no objectives for Touch of Weakness. Skip this step if the quest is not finished|r
    .turnin 5658 >>Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5658
step
    .goto 1458/0,66.65,1766.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethor Iceshard|r
    .turnin 411 >>Turn in The Prodigal Lich Returns
    .target Bethor Iceshard
    .isOnQuest 411
step << Warlock
    .goto 1458/0,57.15,1711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1478 >>Turn in Halgar's Summons while you are here
    .isQuestComplete 1478
    .target Carendin Halgar
step
    #completewith next
    .zone 1420 >>Leave Undercity for Tirisfal Glades
    .zoneskip 1420
step << Warrior
    .goto 1420/0,238.49,2254.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil de Mon|r
    .accept 1818 >>Accept Speak with Dillinger
    .target Austil de Mon
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .trainer >> Train your class spells
    .target Austil de Mon
step << Warrior
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 1818 >>Turn in Speak with Dillinger
    .accept 1819 >>Accept Ulag the Cleaver
    .target Deathguard Dillinger
step << Warrior
    .goto 1420/0,346.03,2383.06
    >>Kill |cRXP_ENEMY_Ulag the Cleaver|r
    .complete 1819,1 --Ulag the Cleaver slain (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto 1420/0,403.42,2287.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 1819 >>Turn in Ulag the Cleaver
    .accept 1820 >>Accept Speak with Coleman
    .target Deathguard Dillinger
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1820 >>Turn in Speak with Coleman
    .target Coleman Farthing
step << Warrior
    .xp 10 >>Grind to level 10 (Agamand Heirlooms needs it)
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .accept 1821 >>Accept Agamand Heirlooms
    .target Coleman Farthing
step << Warrior
    .goto 1420/0,689.01,3019.91
    >>Open the |cRXP_PICK_Agamand Weapon Rack|r. Loot it for |cRXP_LOOT_Agamand Family Mace|r
    >>Open the |cRXP_PICK_Agamand Weapon Rack|r. Loot it for |cRXP_LOOT_Agamand Family Sword|r
    >>Open the |cRXP_PICK_Agamand Weapon Rack|r. Loot it for |cRXP_LOOT_Agamand Family Axe|r
    >>Open the |cRXP_PICK_Agamand Weapon Rack|r. Loot it for |cRXP_LOOT_Agamand Family Dagger|r
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 1821 >>Turn in Agamand Heirlooms
    .accept 1822 >>Accept Heirloom Weapon
    .turnin 1822 >>Turn in Heirloom Weapon
    .target Coleman Farthing
step
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step << Warlock
    .goto 1458/0,57.15,1711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1478 >>Turn in Halgar's Summons
    .target Carendin Halgar
step << Orc Warlock
    .xp 10 >>Grind to level 10 (Return to Gan'rul Bloodeye needs it)
step << BloodElf Warlock
    .xp 10 >>Grind to level 10 (Return to Talionia needs it)
step
    .goto 1458/0,57.15,1711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin Halgar|r
    .accept 10790 >>Accept Return to Gan'rul Bloodeye << Orc Warlock
    .accept 10788 >>Accept Return to Talionia << BloodElf Warlock
    .target Carendin Halgar
step << Undead Rogue
    .goto 1458/0,72.02,1435.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1885 >>Turn in Mennet Carkad
    .accept 1886 >>Accept The Deathstalkers
    .target Mennet Carkad
step << Undead Rogue
    .goto 1458/0,72.02,1435.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Turn in The Deathstalkers
    .target Mennet Carkad
    .isQuestComplete 1886
step
    #completewith next
    .zone 1420 >>Leave Undercity for Tirisfal Glades
    .zoneskip 1420
step << Undead Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Beryl|r
    .turnin 5651 >>Turn in In Favor of Darkness
    .target Dark Cleric Beryl
    .isOnQuest 5651
step << Undead Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Beryl|r
    .accept 5650 >>Accept Garments of Darkness
    .target Dark Cleric Beryl
step << Priest
    .goto 1420/0,232.16,2265.28,6,0
    .goto 1420/0,242.55,2261.66,6,0
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r upstairs
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .target Dark Cleric Beryl
    .train 2052,1
    .train 1243,1
step << Priest
    .goto 1420/0,232.16,2265.28,6,0
    .goto 1420/0,242.55,2261.66,6,0
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r upstairs
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .target Dark Cleric Beryl
    .train 1243,1
step << Priest
    .goto 1420/0,232.16,2265.28,6,0
    .goto 1420/0,242.55,2261.66,6,0
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r upstairs
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .target Dark Cleric Beryl
    .train 2052,1
step << Undead Priest
    .goto 1420/0,359.14,2436.69
    >>Interact with |cRXP_FRIENDLY_Deathguard Kel|r
    .complete 5650,1 --Deathguard Kel
    .target Deathguard Kel
step << Undead Priest
    .goto 1420/0,251.14,2265.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Beryl|r
    .turnin 5650 >>Turn in Garments of Darkness
    .target Dark Cleric Beryl
step << Undead Warlock
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step << Undead Warlock
    .goto 1458/0,57.15,1711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin Halgar|r
    .accept 1473 >>Accept Creature of the Void
    .target Carendin Halgar
step << Undead Warlock/Orc Warlock
    .goto 1458/0,20.21,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 707 >> Train your class spells
    .target Richard Kerwin
    .xp <10,1
    .xp >12,1
step << Undead Warlock/Orc Warlock
    .goto 1458/0,20.21,1776.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 705 >> Train your class spells
    .target Richard Kerwin
    .xp <12,1
step << Undead Warlock
    #completewith next
    .zone 1420 >>Leave Undercity for Tirisfal Glades
    .zoneskip 1420
step << Undead Warlock
    .goto 1420/0,726.06,1801.95
    >>Open the |cRXP_PICK_Perrine's Chest|r. Loot it for |cRXP_LOOT_Egalin's Grimoire|r
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step << Undead Warlock
    .goto 1458/0,57.15,1711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1473 >>Turn in Creature of the Void
    .accept 1471 >>Accept The Binding
    .target Carendin Halgar
step << Undead Warlock
    .goto 1458/0,43.24,1705.50
    >>Kill |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Summoned Voidwalker slain (1)
    .mob Summoned Voidwalker
step << Undead Warlock
    .goto 1458/0,57.15,1711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin Halgar|r
    .turnin 1471 >>Turn in The Binding
    .target Carendin Halgar
step << Undead Rogue
    .goto 1458/0,72.02,1435.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 1898 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isQuestTurnedIn 1886 --any of: The Deathstalkers
    .xp <10,1
step << Undead
    .goto 1458/0,283.27,1610.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordon Wendham|r
    .turnin 6323 >>Turn in Ride to the Undercity
    .target Gordon Wendham
    .isOnQuest 6323
step << Undead
    .goto 1458/0,283.27,1610.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordon Wendham|r
    .accept 6322 >>Accept Michael Garrett
    .target Gordon Wendham
    .isQuestTurnedIn 6323 --any of: Ride to the Undercity
    .xp <10,1
step << Undead
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael Garrett|r
    .turnin 6322 >>Turn in Michael Garrett
    .target Michael Garrett
    .isOnQuest 6322
step << Undead
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael Garrett|r
    .accept 6324 >>Accept Return to Podrig
    .target Michael Garrett
    .isQuestTurnedIn 6322 --any of: Michael Garrett
    .xp <10,1
step
    .goto 1458/0,404.83,1434.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Faranell|r
    .turnin 447 >>Turn in A Recipe For Death
    .target Master Apothecary Faranell
    .isQuestComplete 447
step << Undead Rogue
    .goto 1458/0,347.36,1389.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andron Gant|r
    .turnin 1898 >>Turn in The Deathstalkers
    .target Andron Gant
    .isOnQuest 1898
step << Undead Rogue
    .goto 1458/0,347.36,1389.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andron Gant|r
    .accept 1899 >>Accept The Deathstalkers
    .target Andron Gant
    .isQuestTurnedIn 1898 --any of: The Deathstalkers
    .xp <10,1
step << Undead Rogue
    .goto 1458/0,341.70,1385.32
    >>Open the |cRXP_PICK_Andron's Bookshelf|r. Loot it for |cRXP_LOOT_Andron's Ledger|r
    .complete 1899,1 --Andron's Ledger (1)
    .isOnQuest 1899
step << Undead Rogue
    .goto 1458/0,72.02,1435.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1899 >>Turn in The Deathstalkers
    .target Mennet Carkad
    .isOnQuest 1899
step << Undead Rogue
    .goto 1458/0,72.02,1435.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet Carkad|r
    .accept 1978 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isQuestTurnedIn 1899 --any of: The Deathstalkers
    .xp <10,1
step << Undead Rogue
    .goto 1458/0,333.54,1287.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Turn in The Deathstalkers
    .target Varimathras
    .isOnQuest 1978
step
    +|cRXP_WARN_That is all of Tirisfal Glades for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Orgrimmar|r: Hex of Weakness << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Return to Gan'rul Bloodeye << Orc Warlock
    >>|cRXP_FRIENDLY_Silvermoon City|r: Return to Talionia << BloodElf Warlock
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Delivery to Silverpine Forest
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Return to Podrig << Undead
    >>|cRXP_FRIENDLY_Silverpine Forest and back here|r: The Deathstalkers << Undead Rogue
step
    +|cRXP_WARN_Suggested next zones at level 10|r: |cRXP_FRIENDLY_The Barrens|r (about 2.7 levels of quests, starting around Sergra Darkthorn; 1 quest from here hands in there), |cRXP_FRIENDLY_Durotar|r (about 1.3 levels of quests, starting around Master Gadrin), |cRXP_FRIENDLY_Silverpine Forest|r (about 1.3 levels of quests, starting around Apothecary Renferrel; 3 quests from here hand in there). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Tirisfal Glades is planned from level 13.|r Load its guide for level 13 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 14 Tirisfal Glades
#subweight -1
#name 13-14 Tirisfal Glades
--RouteBuilder:next
#next Zone Routes (Horde)\13-16 The Barrens: around Gazlowe;Zone Routes (Horde)\10-12 Silverpine Forest: around Apothecary Renferrel;Zone Routes (Horde)\10-13 Ghostlands: around Arcanist Vandril

step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .accept 408 >>Accept The Family Crypt
    .target Magistrate Sevren
    .isQuestTurnedIn 355 --any of: Speak with Sevren
step
    #loop
    .goto 1420/0,619.87,2922.00,0
    .goto 1420/0,619.87,2922.00,40,0
    .goto 1420/0,716.12,2889.77,40,0
    >>Kill |cRXP_ENEMY_Rotting Ancestors|r
    .complete 408,2 --Rotting Ancestor slain (8)
    .mob Rotting Ancestor
    .isOnQuest 408
step
    #loop
    .goto 1420/0,559.77,2947.91,0
    .goto 1420/0,559.77,2947.91,40,0
    .goto 1420/0,683.13,3033.16,40,0
    >>Kill |cRXP_ENEMY_Wailing Ancestors|r
    .complete 408,1 --Wailing Ancestor slain (8)
    .mob Wailing Ancestor
    .isOnQuest 408
step
    .goto 1420/0,646.98,3043.71
    >>Kill |cRXP_ENEMY_Captain Dargol|r and loot |cRXP_LOOT_Dargol's Skull|r
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .turnin 408 >>Turn in The Family Crypt
    .target Magistrate Sevren
    .isOnQuest 408
step
    #completewith next
    .zone 1458 >>Travel to Undercity
    .zoneskip 1458
step << Undead Priest
    .goto 1458/0,400.60,1768.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5658 >>Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5658
step
    .goto 1458/0,185.70,1690.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralston Farnsley|r
    .accept 7813 >>Accept A Donation of Wool
    .target Ralston Farnsley
step
    .goto 1458/0,185.70,1690.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ralston Farnsley|r
    .turnin 7813 >>Turn in A Donation of Wool
    .target Ralston Farnsley
    .isQuestComplete 7813
step << Undead Rogue
    .goto 1458/0,72.02,1435.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet Carkad|r
    .turnin 1886 >>Turn in The Deathstalkers
    .target Mennet Carkad
    .isQuestComplete 1886
step
    +|cRXP_WARN_End of the Tirisfal Glades route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills and back here|r: A Donation of Wool
step
    +|cRXP_WARN_Suggested next zones at level 13|r: |cRXP_FRIENDLY_The Barrens|r (about 1.2 levels of quests, starting around Gazlowe), |cRXP_FRIENDLY_Silverpine Forest|r (about 0.9 levels of quests, starting around Apothecary Renferrel; 3 quests from here hand in there), |cRXP_FRIENDLY_Ghostlands|r (about 0.9 levels of quests, starting around Arcanist Vandril). Completing this step loads the guide for The Barrens --RouteBuilder:next
]])
