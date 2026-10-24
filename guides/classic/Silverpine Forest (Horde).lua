-- 10-22 Silverpine Forest: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 10, 14, 17, 20).
-- Split into 4 guides, listed under "10 - 21 Silverpine Forest" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/classic/Silverpine Forest.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 21 Silverpine Forest
#subweight -10
#name 10-12 Silverpine Forest: around Dalar Dawnweaver
--RouteBuilder:next
#next Zone Routes (Horde)\10-12 The Barrens: around Sergra Darkthorn;Zone Routes (Horde)\8-11 Tirisfal Glades: around Carendin Halgar;Zone Routes (Horde)\4-10 Durotar: around Master Gadrin

step
    .xp 10 >>Grind to level 10 (Lost Deathstalkers needs it)
step
    .goto 1421/0,1626.36,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .accept 428 >>Accept Lost Deathstalkers
    .target High Executor Hadrec
step << Undead
    .goto 1421/0,1626.36,499.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Podrig|r
    .turnin 6324 >>Turn in Return to Podrig
    .target Deathguard Podrig
    .isOnQuest 6324
step
    .goto 1421/0,1594.02,471.91
    >>Click the |cRXP_PICK_Yuriv's Tombstone|r
    .turnin 264 >>Turn in Until Death Do Us Part
    .isOnQuest 264
step
    .goto 1421/0,1647.78,490.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mura Runetotem|r
    .turnin 3301 >>Turn in Mura Runetotem
    .target Mura Runetotem
    .isOnQuest 3301
step
    .goto 1421/0,1636.44,510.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Bates|r
    .target Innkeeper Bates
    .home >>Set your Hearthstone to Innkeeper Bates's inn
step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .turnin 446 >>Turn in Thule Ravenclaw
    .target Apothecary Renferrel
    .isOnQuest 446
step << Undead
    .goto 1421/0,1626.36,499.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Podrig|r
    .accept 6321 >>Accept Supplying the Sepulcher
    .target Deathguard Podrig
    .xp <10,1
step
    .goto 1421/0,1204.68,1290.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 428 >>Turn in Lost Deathstalkers
    .target Rane Yorick
step
    .goto 1421/0,1204.68,1290.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .accept 429 >>Accept Wild Hearts
    .target Rane Yorick
    .xp <10,1
step
    .goto 1421/0,1090.44,1409.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Erland|r
    .accept 435 >>Accept Escorting Erland
    .target Deathstalker Erland
step
    .goto 1421/0,1166.46,1292.03
    >>Erland must reach Rane Yorick
    .complete 435,1 --Erland must reach Rane Yorick
step
    .goto 1421/0,1204.68,1290.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Turn in Escorting Erland
    .accept 429 >>Accept Wild Hearts
    .target Rane Yorick
step
    .goto 1421/0,1204.68,1290.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .accept 449 >>Accept The Deathstalkers' Report
    .target Rane Yorick
    .xp <10,1
step
    #loop
    .goto 1421/0,1126.56,1312.47,0
    .goto 1421/0,1126.56,1312.47,40,0
    .goto 1421/0,1019.88,1390.59,40,0
    .goto 1421/0,949.74,1416.35,40,0
    >>Kill |cRXP_ENEMY_Worgs|r, |cRXP_ENEMY_Mottled Worgs|r, |cRXP_ENEMY_Bloodsnout Worgs|r and |cRXP_ENEMY_Gorefangs|r. Loot them for |cRXP_LOOT_Discolored Worg Heart|r
    .complete 429,1 --Discolored Worg Heart (6)
    .mob Worg
    .mob Mottled Worg
    .mob Bloodsnout Worg
    .mob Gorefang
step
    .goto 1421/0,1204.68,1290.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .accept 449 >>Accept The Deathstalkers' Report
    .target Rane Yorick
step
    #completewith next
    .hs >>Hearth to Innkeeper Bates's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1421/0,1593.60,551.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .accept 421 >>Accept Prove Your Worth
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwyn|r
    .vendor >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him if they're up|r
    .collect 4605,20,421,1
    .target Gwyn Farrow
    .money <0.05
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him if they're up|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .accept 477 >>Accept Border Crossings
    .target Shadow Priest Allister
step << Undead
    .goto 1421/0,1626.36,499.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Podrig|r
    .accept 6321 >>Accept Supplying the Sepulcher
    .target Deathguard Podrig
step
    .goto 1421/0,1626.36,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .turnin 449 >>Turn in The Deathstalkers' Report
    .accept 3221 >>Accept Speak with Renferrel
    .target High Executor Hadrec
step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .turnin 445 >>Turn in Delivery to Silverpine Forest
    .target Apothecary Renferrel
    .isOnQuest 445
step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .turnin 429 >>Turn in Wild Hearts
    .turnin 3221 >>Turn in Speak with Renferrel
    .accept 1359 >>Accept Zinge's Delivery
    .accept 447 >>Accept A Recipe For Death
    .accept 430 >>Accept Return to Quinn
    .target Apothecary Renferrel
step
    #loop
    .goto 1421/0,1287.42,460.15,0
    .goto 1421/0,1287.42,460.15,40,0
    .goto 1421/0,1275.24,362.99,40,0
    >>Kill |cRXP_ENEMY_Moonrage Whitescalps|r
    .complete 421,1 --Moonrage Whitescalp slain (5)
    .mob Moonrage Whitescalp
step
    .goto 1421/0,1593.60,551.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 421 >>Turn in Prove Your Worth
    .accept 422 >>Accept Arugal's Folly
    .target Dalar Dawnweaver
step
    .goto 1421/0,1231.14,866.43
    >>Open the |cRXP_PICK_Dusty Spellbooks|r. Loot it for |cRXP_LOOT_Remedy of Arugal|r
    .complete 422,1 --Remedy of Arugal (1)
step
    .goto 1421/0,1205.94,1314.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quinn Yorick|r
    .turnin 430 >>Turn in Return to Quinn
    .target Quinn Yorick
step
    .goto 1421/0,1204.68,1290.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .accept 425 >>Accept Ivar the Foul
    .target Rane Yorick
step
    .goto 1421/0,1286.16,1277.47
    >>Kill |cRXP_ENEMY_Ivar the Foul|r and loot |cRXP_LOOT_Ivar's Head|r
    .complete 425,1 --Ivar's Head (1)
    .mob Ivar the Foul
step
    .goto 1421/0,1204.68,1290.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Turn in Ivar the Foul
    .target Rane Yorick
step
    .goto 1421/0,2064.00,1167.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Killian|r
    .vendor >> Vendor trash
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
    .goto 1421/0,1942.20,1282.79,0
    .goto 1421/0,1942.20,1282.79,40,0
    .goto 1421/0,1979.16,1214.19,40,0
    .goto 1421/0,1969.92,1397.03,40,0
    >>Kill |cRXP_ENEMY_Moss Stalkers|r, |cRXP_ENEMY_Mist Creepers|r and |cRXP_ENEMY_Krethis Shadowspinners|r. Loot them for |cRXP_LOOT_Skittering Blood|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .mob Mist Creeper
    .mob Krethis Shadowspinner
step
    #loop
    .goto 1421/0,1665.84,1158.75,0
    .goto 1421/0,1665.84,1158.75,40,0
    .goto 1421/0,1682.22,1058.23,40,0
    >>Kill |cRXP_ENEMY_Ferocious Grizzled Bears|r, |cRXP_ENEMY_Giant Grizzled Bears|r and |cRXP_ENEMY_Old Vicejaws|r. Loot them for |cRXP_LOOT_Grizzled Bear Heart|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .mob Old Vicejaw
step
    .goto 1421/0,1593.60,551.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 422 >>Turn in Arugal's Folly
    .accept 423 >>Accept Arugal's Folly
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto 1421/0,1599.90,552.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwyn|r
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r
    .vendor >> Vendor trash
    .collect 4605,20,423,1
    .target Gwyn Farrow
step
    .goto 1421/0,1602.84,549.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him if they're up|r
    .collect 1179,20,423,1 << Warlock/Priest/Shaman/Druid
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto 1421/0,1568.40,567.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrea|r
    .vendor >> Buy |T132491:0|t[|cRXP_FRIENDLY_Wise Man's Belt|r] from her if it's up
    .target Andrea Boynton
    .money <0.1400
step << Rogue
    .goto 1421/0,1576.38,571.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexandre|r
    .vendor >> Buy |T132539:0|t[|cRXP_FRIENDLY_Agile Boots|r] from her if it's up
    .target Alexandre Lefevre
    .money <0.2633
step
    #loop
    .goto 1421/0,1147.98,286.27,0
    .goto 1421/0,1147.98,286.27,40,0
    .goto 1421/0,1077.00,366.07,40,0
    .goto 1421/0,988.38,483.11,40,0
    >>Kill |cRXP_ENEMY_Moonrage Gluttons|r. Loot them for |cRXP_LOOT_Glutton Shackle|r
    >>Kill |cRXP_ENEMY_Moonrage Darksouls|r. Loot them for |cRXP_LOOT_Darksoul Shackle|r
    .complete 423,1 --Glutton Shackle (6)
    .complete 423,2 --Darksoul Shackle (3)
    .mob Moonrage Glutton
    .mob Moonrage Darksoul
step
    .goto 1421/0,1354.62,-22.57
    >>Click the |cRXP_PICK_Dalaran Crate|r
    .turnin 477 >>Turn in Border Crossings
    .accept 478 >>Accept Maps and Runes
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .turnin 478 >>Turn in Maps and Runes
    .accept 481 >>Accept Dalar's Analysis
    .target Shadow Priest Allister
step
    .goto 1421/0,1593.60,551.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 423 >>Turn in Arugal's Folly
    .turnin 481 >>Turn in Dalar's Analysis
    .accept 482 >>Accept Dalaran's Intentions
    .target Dalar Dawnweaver
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .turnin 482 >>Turn in Dalaran's Intentions
    .target Shadow Priest Allister
step << Undead
    .goto 1421/0,1533.96,473.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos Razok|r
    .turnin 6321 >>Turn in Supplying the Sepulcher
    .accept 6323 >>Accept Ride to the Undercity
    .target Karos Razok
step
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >> Get the Sepulcher flight path << !Undead
    .fly Undercity >> Fly to the Undercity << !Undead
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .hs >> Hearth to the Undercity
    .zoneskip Undercity
step
    .goto 1421/0,1644.84,-382.37
    >>Open the |cRXP_PICK_Berard's Bookshelf|r. Loot it for |cRXP_LOOT_Berard's Journal|r
    .complete 450,1 --Berard's Journal (1)
    .isOnQuest 450
step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .accept 448 >>Accept Report to Hadrec
    .target Apothecary Renferrel
    .isQuestTurnedIn 446 --any of: Thule Ravenclaw
    .xp <10,1
step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .turnin 450 >>Turn in A Recipe For Death
    .target Apothecary Renferrel
    .isOnQuest 450
step
    .goto 1421/0,1626.36,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .turnin 448 >>Turn in Report to Hadrec
    .target High Executor Hadrec
    .isOnQuest 448
step
    +|cRXP_WARN_That is all of Silverpine Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Undercity|r: Ride to the Undercity << Undead
    >>|cRXP_FRIENDLY_Undercity|r: A Recipe For Death, Zinge's Delivery
step
    +|cRXP_WARN_Suggested next zones at level 11|r: |cRXP_FRIENDLY_The Barrens|r (about 2.4 levels of quests, starting around Sergra Darkthorn), |cRXP_FRIENDLY_Tirisfal Glades|r (about 1.2 levels of quests, starting around Carendin Halgar; 1 quest from here hands in there), |cRXP_FRIENDLY_Durotar|r (about 1.2 levels of quests, starting around Master Gadrin). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Silverpine Forest is planned from level 14.|r Load its guide for level 14 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 21 Silverpine Forest
#subweight -10
#name 14-15 Silverpine Forest: around High Executor Hadrec
--RouteBuilder:next
#next Zone Routes (Horde)\12-16 The Barrens: around Gazlowe

step
    .goto 1421/0,1626.36,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .accept 437 >>Accept The Dead Fields
    .target High Executor Hadrec
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .accept 479 >>Accept Ambermill Investigations
    .target Shadow Priest Allister
    .isQuestTurnedIn 482 --any of: Dalaran's Intentions
step
    .goto 1421/0,1593.60,551.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .accept 424 >>Accept Arugal's Folly
    .target Dalar Dawnweaver
    .isQuestTurnedIn 423 --any of: Arugal's Folly
step
    #completewith Along3
    >>As you go: Kill |cRXP_ENEMY_Nightlash|r and loot |cRXP_LOOT_Essence of Nightlash|r. |cRXP_WARN_Anything left is finished later|r
    .complete 437,2 --Essence of Nightlash (1)
    .mob Nightlash
step
    #label Along3
    .goto 1421/0,1521.78,1071.11
    >>Enter the Dead Fields
    .complete 437,1 --Enter the Dead Fields
step
    .goto 1421/0,1560.00,1078.67
    >>Kill |cRXP_ENEMY_Nightlash|r and loot |cRXP_LOOT_Essence of Nightlash|r
    .complete 437,2 --Essence of Nightlash (1)
    .mob Nightlash
step
    .goto 1421/0,1626.36,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .turnin 437 >>Turn in The Dead Fields
    .accept 438 >>Accept The Decrepit Ferry
    .target High Executor Hadrec
step
    .goto 1421/0,989.64,410.59
    >>Kill |cRXP_ENEMY_Grimson the Pale|r and loot |cRXP_LOOT_Head of Grimson|r
    .complete 424,1 --Head of Grimson (1)
    .mob Grimson the Pale
    .isOnQuest 424
step
    .goto 1421/0,995.52,689.47
    >>Click the |cRXP_PICK_Corpse Laden Boat|r
    .turnin 438 >>Turn in The Decrepit Ferry
    .accept 439 >>Accept Rot Hide Clues
step
    .goto 1421/0,1593.60,551.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 424 >>Turn in Arugal's Folly
    .target Dalar Dawnweaver
    .isOnQuest 424
step
    .goto 1421/0,1593.60,551.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .accept 99 >>Accept Arugal's Folly
    .target Dalar Dawnweaver
    .isQuestTurnedIn 424 --any of: Arugal's Folly
step
    .goto 1421/0,1626.36,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .turnin 439 >>Turn in Rot Hide Clues
    .accept 440 >>Accept The Engraved Ring
    .target High Executor Hadrec
step
    #loop
    .goto 1421/0,1576.38,-370.89,0
    .goto 1421/0,1576.38,-370.89,40,0
    .goto 1421/0,1491.96,-377.61,40,0
    >>Kill |cRXP_ENEMY_Pyrewood Watchers|r, |cRXP_ENEMY_Moonrage Watchers|r, |cRXP_ENEMY_Moonrage Sentries|r and |cRXP_ENEMY_Pyrewood Sentries|r. Loot them for |cRXP_LOOT_Pyrewood Shackle|r
    .complete 99,1 --Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Moonrage Watcher
    .mob Moonrage Sentry
    .mob Pyrewood Sentry
    .isOnQuest 99
step
    .goto 1421/0,1497.00,-416.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Faerleia|r
    .accept 452 >>Accept Pyrewood Ambush
    .target Deathstalker Faerleia
step
    .goto 1421/0,1497.00,-406.17
    >>Kill |cRXP_ENEMY_Councilman Smithers|r, |cRXP_ENEMY_Councilman Thatchers|r, |cRXP_ENEMY_Councilman Hendricks|r and |cRXP_ENEMY_Councilman Wilhelms|r
    .complete 452,1 --Councilman Smithers (8)
    .mob Councilman Smithers
    .mob Councilman Thatcher
    .mob Councilman Hendricks
    .mob Councilman Wilhelm
step
    .goto 1421/0,1497.00,-416.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Faerleia|r
    .turnin 452 >>Turn in Pyrewood Ambush
    .target Deathstalker Faerleia
step
    #loop
    .goto 1421/0,961.92,-171.25,0
    .goto 1421/0,961.92,-171.25,40,0
    .goto 1421/0,974.10,-80.53,40,0
    >>Kill |cRXP_ENEMY_Dalaran Protectors|r, |cRXP_ENEMY_Dalaran Mages|r and |cRXP_ENEMY_Dalaran Conjurors|r. Loot them for |cRXP_LOOT_Dalaran Pendant|r
    .complete 479,1 --Dalaran Pendant (8)
    .mob Dalaran Protector
    .mob Dalaran Mage
    .mob Dalaran Conjuror
    .isOnQuest 479
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .turnin 479 >>Turn in Ambermill Investigations
    .target Shadow Priest Allister
    .isOnQuest 479
step
    .goto 1421/0,1593.60,551.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 99 >>Turn in Arugal's Folly
    .target Dalar Dawnweaver
    .isOnQuest 99
step
    +|cRXP_WARN_That is all of Silverpine Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Tirisfal Glades|r: The Engraved Ring
step
    +|cRXP_WARN_Suggested next zones at level 14|r: |cRXP_FRIENDLY_The Barrens|r (about 1.3 levels of quests, starting around Gazlowe). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Silverpine Forest is planned from level 17.|r Load its guide for level 17 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 21 Silverpine Forest
#subweight -10
#name 17-18 Silverpine Forest
--RouteBuilder:next
#next Zone Routes (Horde)\12-16 The Barrens: around Gazlowe

step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .accept 451 >>Accept A Recipe For Death
    .target Apothecary Renferrel
    .isQuestTurnedIn 450 --any of: A Recipe For Death
    .xp <9,1
step
    .goto 1421/0,1626.36,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Hadrec|r
    .accept 443 >>Accept Rot Hide Ichor
    .target High Executor Hadrec
    .isQuestTurnedIn 439 --any of: Rot Hide Clues
step
    #loop
    .goto 1421/0,1089.18,896.67,0
    .goto 1421/0,1089.18,896.67,40,0
    .goto 1421/0,1031.22,1037.51,40,0
    >>Kill |cRXP_ENEMY_Vile Fin Shredders|r, |cRXP_ENEMY_Vile Fin Tidehunters|r, |cRXP_ENEMY_Vile Fin Oracles|r and |cRXP_ENEMY_Vile Fin Lakestalkers|r. Loot them for |cRXP_LOOT_Hardened Tumor|r
    .complete 451,3 --Hardened Tumor (1)
    .mob Vile Fin Shredder
    .mob Vile Fin Tidehunter
    .mob Vile Fin Oracle
    .mob Vile Fin Lakestalker
    .isOnQuest 451
step
    #completewith Drop460x1
    >>|cRXP_LOOT_A Talking Head|r can drop from |cRXP_ENEMY_Rot Hide Brute|r, |cRXP_ENEMY_Rot Hide Plague Weaver|r, |cRXP_ENEMY_Rot Hide Savage|r. Use it to start the quest if you get one
    .collect 3317,1,460 --A Talking Head (1)
    .accept 460 >>Accept Resting in Pieces
    .use 3317
step
    #label Drop460x1
    #loop
    .goto 1421/0,675.90,996.63,0
    .goto 1421/0,675.90,996.63,40,0
    .goto 1421/0,614.16,951.27,40,0
    >>Kill |cRXP_ENEMY_Rot Hide Brutes|r, |cRXP_ENEMY_Rot Hide Plague Weavers|r, |cRXP_ENEMY_Rot Hide Savages|r and |cRXP_ENEMY_Raging Rot Hides|r. Loot them for |cRXP_LOOT_Rot Hide Ichor|r
    .complete 443,1 --Rot Hide Ichor (1)
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
    .isOnQuest 443
step
    .goto 1421/0,599.46,970.87
    >>Click the |cRXP_PICK_Shallow Grave|r
    .turnin 460 >>Turn in Resting in Pieces
    .isOnQuest 460
step
    .goto 1421/0,599.46,970.87
    >>Click the |cRXP_PICK_Shallow Grave|r
    .accept 461 >>Accept The Hidden Niche
    .isQuestTurnedIn 460 --any of: Resting in Pieces
    .xp <12,1
step
    .goto 1421/0,704.88,971.99
    >>Click the |cRXP_PICK_Dusty Shelf|r
    .turnin 461 >>Turn in The Hidden Niche
    .isOnQuest 461
step
    .goto 1421/0,704.88,971.99
    >>Click the |cRXP_PICK_Dusty Shelf|r
    .accept 491 >>Accept Wand to Bethor
    .isQuestTurnedIn 461 --any of: The Hidden Niche
    .xp <12,1
step
    #loop
    .goto 1421/0,292.02,1087.91,0
    .goto 1421/0,292.02,1087.91,40,0
    .goto 1421/0,193.32,960.23,40,0
    .goto 1421/0,198.36,890.79,40,0
    >>Kill |cRXP_ENEMY_Lake Creepers|r and |cRXP_ENEMY_Elder Lake Creepers|r. Loot them for |cRXP_LOOT_Lake Creeper Moss|r
    .complete 451,2 --Lake Creeper Moss (1)
    .mob Lake Creeper
    .mob Elder Lake Creeper
    .isOnQuest 451
step
    #loop
    .goto 1421/0,486.48,679.11,0
    .goto 1421/0,486.48,679.11,40,0
    .goto 1421/0,520.92,594.27,40,0
    >>Kill |cRXP_ENEMY_Lake Skulkers|r and |cRXP_ENEMY_Elder Lake Skulkers|r. Loot them for |cRXP_LOOT_Lake Skulker Moss|r
    .complete 451,1 --Lake Skulker Moss (1)
    .mob Lake Skulker
    .mob Elder Lake Skulker
    .isOnQuest 451
step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .turnin 443 >>Turn in Rot Hide Ichor
    .target Apothecary Renferrel
    .isOnQuest 443
step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .accept 444 >>Accept Rot Hide Origins
    .target Apothecary Renferrel
    .isQuestTurnedIn 443 --any of: Rot Hide Ichor
step
    +|cRXP_WARN_That is all of Silverpine Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Undercity|r: Rot Hide Origins, A Recipe For Death, Wand to Bethor
step
    +|cRXP_WARN_Suggested next zones at level 17|r: |cRXP_FRIENDLY_The Barrens|r (about 1.0 levels of quests, starting around Gazlowe). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Silverpine Forest is planned from level 20.|r Load its guide for level 20 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 21 Silverpine Forest
#subweight -10
#name 20-21 Silverpine Forest
--RouteBuilder:next
#next Zone Routes (Horde)\18-20 The Barrens: around Tonga Runetotem

step
    .goto 1421/0,1652.40,522.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renferrel|r
    .accept 493 >>Accept Journey to Hillsbrad Foothills
    .target Apothecary Renferrel
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .accept 516 >>Accept Beren's Peril
    .target Shadow Priest Allister
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .accept 480 >>Accept The Weaver
    .target Shadow Priest Allister
    .isQuestTurnedIn 479 --any of: Ambermill Investigations
step
    #loop
    .goto 1421/0,1037.52,-316.01,0
    .goto 1421/0,1037.52,-316.01,40,0
    .goto 1421/0,929.58,-351.85,40,0
    >>Kill |cRXP_ENEMY_Ravenclaw Guardians|r
    >>Kill |cRXP_ENEMY_Ravenclaw Drudgers|r
    .complete 516,2 --Ravenclaw Guardian slain (6)
    .complete 516,1 --Ravenclaw Drudger slain (6)
    .mob Ravenclaw Guardian
    .mob Ravenclaw Drudger
step
    .goto 1421/0,787.20,-132.89
    >>Kill |cRXP_ENEMY_Archmage Ataeric|r and loot |cRXP_LOOT_Ataeric's Staff|r
    .complete 480,1 --Ataeric's Staff (1)
    .mob Archmage Ataeric
    .isOnQuest 480
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .turnin 516 >>Turn in Beren's Peril
    .target Shadow Priest Allister
step
    .goto 1421/0,1602.84,520.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Allister|r
    .turnin 480 >>Turn in The Weaver
    .target Shadow Priest Allister
    .isOnQuest 480
step
    +|cRXP_WARN_End of the Silverpine Forest route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Journey to Hillsbrad Foothills
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_The Barrens|r (about 0.8 levels of quests, starting around Tonga Runetotem). Completing this step loads the guide for The Barrens --RouteBuilder:next
]])
