-- 31-42 Arathi Highlands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 31, 34, 37, 40).
-- Split into 4 guides, listed under "31 - 41 Arathi Highlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/classic/Arathi Highlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 31 - 41 Arathi Highlands
#subweight -31
#name 31-32 Arathi Highlands

step
    .goto 1417/0,-2423.31,-2356.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foggy MacKreel|r
    .accept 647 >>Accept MacKreel's Moonshine
    .target Foggy MacKreel
step << Mage
    .goto 1417/0,-2536.35,-1262.29,0,0
    >>Talk to |cRXP_FRIENDLY_Drovnar|r
    .vendor 2812 >> |cRXP_BUY_Buy|r |T134832:0|t[Greater Healing Potions] |cRXP_BUY_and|r |T134852:0|t[Mana Potions] |cRXP_BUY_from him (if they're up)|r
    .target Drovnar Strongbrew
step
    .goto 1417/0,-2028.75,-2086.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 670 >>Turn in Sunken Treasure
    .target Shakes O'Breen
    .isOnQuest 670
step
    .goto 1417/0,-2516.55,-1274.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 634 >>Turn in Plea To The Alliance
    .target Captain Nials
    .isOnQuest 634
step
    .goto 1417/0,-2546.07,-1261.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 690 >>Turn in Malin's Request
    .target Skuerto
    .isOnQuest 690
step << Hunter
    .goto 1417/0,-2364.27,-1280.53,0
    .goto 1417/0,-2371.47,-1539.73,0
    .goto 1417/0,-2630.67,-1338.13,0
    .goto 1417/0,-2364.27,-1280.53,40,0
    .goto 1417/0,-2371.47,-1539.73,40,0
    .goto 1417/0,-2630.67,-1338.13,40,0
    .goto 1417/0,-2594.67,-1539.73
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find a |cRXP_ENEMY_Plains Creeper|r. Some of their locations are marked on your map|r
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Plains Creeper|r to tame it|r
    .train 17265 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 5)]
step << Mage
    .goto 1417/0,-2514.03,-1239.49
    >>Talk to |cRXP_FRIENDLY_Cedrik|r
    .fp Refuge Pointe >> Get the Refuge Pointe flight path
    .target Cedrik Prose
step << Mage
    .goto 1417/0,-2512.95,-1239.73
    .fp Refuge Pointe >> Get the Refuge Pointe flight path
step
    .goto 1417/0,-2516.55,-1274.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 681 >>Accept Northfold Manor
    .target Captain Nials
step
    .goto 1417/0,-3033.15,-1425.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 659 >>Turn in Hints of a New Plague?
    .target Quae
    .isOnQuest 659
step
    #completewith Drop635x1
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Witherbark Troll|r, |cRXP_ENEMY_Witherbark Shadowcaster|r, |cRXP_ENEMY_Witherbark Axe Thrower|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x1
    #loop
    .goto 1417/0,-2083.11,-871.81,0
    .goto 1417/0,-2083.11,-871.81,40,0
    .goto 1417/0,-1990.59,-744.85,40,0
    >>Kill |cRXP_ENEMY_Syndicate Highwaymans|r
    >>Kill |cRXP_ENEMY_Syndicate Mercenaries|r
    .complete 681,1 --Syndicate Highwayman slain (8)
    .complete 681,2 --Syndicate Mercenary slain (6)
    .mob Syndicate Highwayman
    .mob Syndicate Mercenary
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Targot Jinglepocket|r
    .goto 1417/0,-2537.07,-1227.73
    .vendor >> |cRXP_BUY_Buy up to a stack of|r |T133969:0|t[Wild Hog Shank] |cRXP_BUY_to serve as pet food|r
    .target Targot Jinglepocket
step
    .goto 1417/0,-2516.55,-1274.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 681 >>Turn in Northfold Manor
    .target Captain Nials
step
    .goto 1417/0,-3116.67,-942.85
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .turnin 635 >>Turn in Crystal in the Mountains
    .isOnQuest 635
step
    +|cRXP_WARN_That is all of Arathi Highlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: MacKreel's Moonshine
step
    +|cRXP_WARN_The rest of Arathi Highlands is planned from level 34.|r Load its guide for level 34 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 31 - 41 Arathi Highlands
#subweight -31
#name 34-35 Arathi Highlands

step
    .goto 1417/0,-3033.15,-1425.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .accept 658 >>Accept Hints of a New Plague?
    .target Quae
    .isQuestTurnedIn 659 --any of: Hints of a New Plague?
    .xp <30,1
step
    .goto 1417/0,-2529.87,-1279.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .accept 691 >>Accept Worth Its Weight in Gold
    .target Apprentice Kryten
step
    .goto 1417/0,-2516.55,-1274.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 682 >>Accept Stromgarde Badges
    .target Captain Nials
    .isQuestTurnedIn 681 --any of: Northfold Manor
step
    .goto 1417/0,-3116.67,-942.85
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .accept 642 >>Accept The Princess Trapped
step
    #loop
    .goto 1417/0,-3815.43,-1025.65,0
    .goto 1417/0,-3815.43,-1025.65,40,0
    .goto 1417/0,-3934.23,-882.61,40,0
    >>Kill |cRXP_ENEMY_Drywhisker Kobolds|r, |cRXP_ENEMY_Drywhisker Surveyors|r and |cRXP_ENEMY_Drywhisker Diggers|r. Loot them for |cRXP_LOOT_Mote of Myzrael|r
    .complete 642,1 --Mote of Myzrael (12)
    .mob Drywhisker Kobold
    .mob Drywhisker Surveyor
    .mob Drywhisker Digger
step
    .goto 1417/0,-3901.83,-876.13
    >>Click the |cRXP_PICK_Iridescent Shards|r
    .turnin 642 >>Turn in The Princess Trapped
step
    #loop
    .goto 1417/0,-3196.95,-1852.69,0
    .goto 1417/0,-3196.95,-1852.69,40,0
    .goto 1417/0,-3350.31,-2021.65,40,0
    .goto 1417/0,-3297.75,-2065.57,40,0
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r, |cRXP_ENEMY_Witherbark Shadowcasters|r, |cRXP_ENEMY_Witherbark Axe Throwers|r and |cRXP_ENEMY_Witherbark Witch Doctors|r. Loot them for |cRXP_LOOT_Witherbark Tusk|r
    >>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r. Loot them for |cRXP_LOOT_Witherbark Medicine Pouch|r
    >>Kill |cRXP_ENEMY_Witherbark Shadow Hunter|r and loot |cRXP_LOOT_Shadow Hunter Knife|r
    .complete 691,1 --Witherbark Tusk (10)
    .complete 691,2 --Witherbark Medicine Pouch (4)
    .complete 691,3 --Shadow Hunter Knife (1)
    .mob Witherbark Troll
    .mob Witherbark Shadowcaster
    .mob Witherbark Axe Thrower
    .mob Witherbark Witch Doctor
    .mob Witherbark Shadow Hunter
step
    #loop
    .goto 1417/0,-1919.67,-1645.81,0
    .goto 1417/0,-1919.67,-1645.81,40,0
    .goto 1417/0,-1803.39,-1663.57,40,0
    >>Kill |cRXP_ENEMY_Syndicate Prowlers|r, |cRXP_ENEMY_Syndicate Conjurors|r and |cRXP_ENEMY_Syndicate Magus|r. Loot them for |cRXP_LOOT_Stromgarde Badge|r
    .complete 682,1 --Stromgarde Badge (7)
    .mob Syndicate Prowler
    .mob Syndicate Conjuror
    .mob Syndicate Magus
    .isOnQuest 682
step
    .goto 1417/0,-2516.55,-1274.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 682 >>Turn in Stromgarde Badges
    .target Captain Nials
    .isOnQuest 682
step
    .goto 1417/0,-2529.87,-1279.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .turnin 691 >>Turn in Worth Its Weight in Gold
    .target Apprentice Kryten
step
    .goto 1417/0,-2755.59,-1610.05
    >>Kill |cRXP_ENEMY_Forsaken Courier|r and loot |cRXP_LOOT_Sealed Folder|r
    .complete 658,1 --Sealed Folder (1)
    .mob Forsaken Courier
    .isOnQuest 658
step
    .goto 1417/0,-3033.15,-1425.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 658 >>Turn in Hints of a New Plague?
    .target Quae
    .isOnQuest 658
step
    .goto 1417/0,-3033.15,-1425.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .accept 657 >>Accept Hints of a New Plague?
    .target Quae
    .isQuestTurnedIn 658 --any of: Hints of a New Plague?
    .xp <30,1
step
    .goto 1417/0,-3035.31,-1427.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kinelory|r
    .turnin 657 >>Turn in Hints of a New Plague?
    .target Kinelory
    .isOnQuest 657
step
    .goto 1417/0,-3035.31,-1427.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kinelory|r
    .accept 660 >>Accept Hints of a New Plague?
    .target Kinelory
    .isQuestTurnedIn 657 --any of: Hints of a New Plague?
    .xp <30,1
step
    .goto 1417/0,-3030.27,-1425.25
    >>Protect Kinelory
    .complete 660,1 --Protect Kinelory
    .isOnQuest 660
step
    .goto 1417/0,-3033.15,-1425.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 660 >>Turn in Hints of a New Plague?
    .target Quae
    .isOnQuest 660
step
    .goto 1417/0,-3033.15,-1425.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .accept 661 >>Accept Hints of a New Plague?
    .target Quae
    .isQuestTurnedIn 660 --any of: Hints of a New Plague?
    .xp <30,1
step << Mage
    .trainer >> Train your class spells
    >>Bank your cloth too if needed
step << Mage
    .vendor >> Buy up to 140 level 35 water
step << Mage
    .vendor >> Buy level 35 drink if needed
step
    +|cRXP_WARN_That is all of Arathi Highlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Hints of a New Plague?
step
    +|cRXP_WARN_The rest of Arathi Highlands is planned from level 37.|r Load its guide for level 37 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 31 - 41 Arathi Highlands
#subweight -31
#name 37-38 Arathi Highlands: around Skuerto

step
    .goto 1417/0,-3901.83,-876.13
    >>Click the |cRXP_PICK_Iridescent Shards|r
    .accept 651 >>Accept Stones of Binding
    .isQuestTurnedIn 642 --any of: The Princess Trapped
step
    .goto 1417/0,-3524.91,-912.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Adegwa|r
    .target Innkeeper Adegwa
    .home >>Set your Hearthstone to Innkeeper Adegwa's inn
step
    .goto 1417/0,-3267.87,-846.61
    >>Open the |cRXP_PICK_Stone of East Binding|r. Loot it for |cRXP_LOOT_Cresting Key|r
    .complete 651,2 --Cresting Key (1)
    .isOnQuest 651
step
    .goto 1417/0,-2740.11,-1350.85
    >>Open the |cRXP_PICK_Stone of Outer Binding|r. Loot it for |cRXP_LOOT_Thundering Key|r
    .complete 651,3 --Thundering Key (1)
    .isOnQuest 651
step
    .goto 1417/0,-2546.07,-1261.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 693 >>Accept Wand over Fist
    .target Skuerto
    .isQuestTurnedIn 691 --any of: Worth Its Weight in Gold
step
    .goto 1417/0,-2837.67,-2098.21
    >>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r and loot |cRXP_LOOT_Trelane's Wand of Invocation|r
    .complete 693,1 --Trelane's Wand of Invocation (1)
    .mob Kor'gresh Coldrage
    .isOnQuest 693
step
    .goto 1417/0,-2546.07,-1261.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 693 >>Turn in Wand over Fist
    .target Skuerto
    .isOnQuest 693
step
    .goto 1417/0,-1783.23,-855.97
    >>Open the |cRXP_PICK_Stone of West Binding|r. Loot it for |cRXP_LOOT_Burning Key|r
    .complete 651,1 --Burning Key (1)
    .isOnQuest 651
step
    .goto 1417/0,-2546.07,-1261.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 694 >>Accept Trelane's Defenses
    .target Skuerto
    .isQuestTurnedIn 693 --any of: Wand over Fist
step
    .goto 1417/0,-2170.95,-1510.45
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .turnin 651 >>Turn in Stones of Binding
    .isOnQuest 651
step
    #loop
    .goto 1417/0,-1619.79,-1751.89,0
    .goto 1417/0,-1619.79,-1751.89,40,0
    .goto 1417/0,-1518.27,-1774.45,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Shaman|r and loot |cRXP_LOOT_Azure Agate|r
    .complete 694,1 --Azure Agate (1)
    .mob Boulderfist Shaman
    .isOnQuest 694
step
    .goto 1417/0,-2010.75,-2117.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo the Lookout|r
    .accept 663 >>Accept Land Ho!
    .target Lolo the Lookout
step
    .goto 1417/0,-2028.75,-2086.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 663 >>Turn in Land Ho!
    .target Shakes O'Breen
step
    .goto 1417/0,-2047.47,-2088.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Nilzlix|r
    .accept 662 >>Accept Deep Sea Salvage
    .target First Mate Nilzlix
step
    .goto 1417/0,-2090.67,-2072.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
    .accept 664 >>Accept Drowned Sorrows
    .target Captain Steelgut
step
    .goto 1417/0,-2085.99,-2066.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Phizzlethorpe|r
    .accept 665 >>Accept Sunken Treasure
    .target Professor Phizzlethorpe
step
    .goto 1417/0,-2085.99,-2067.73
    >>Defend Professor Phizzlethorpe
    .complete 665,1 --Defend Professor Phizzlethorpe
step
    .goto 1417/0,-2085.63,-2064.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 665 >>Turn in Sunken Treasure
    .accept 666 >>Accept Sunken Treasure
    .target Doctor Draxlegauge
step
    #loop
    .goto 1417/0,-1710.15,-2170.45,0
    .goto 1417/0,-1710.15,-2170.45,40,0
    .goto 1417/0,-1730.67,-2269.33,40,0
    .goto 1417/0,-1603.23,-2187.97,40,0
    >>Pick up |cRXP_PICK_Maiden's Folly Log|r from the ground
    >>Pick up |cRXP_PICK_Maiden's Folly Charts|r from the ground
    >>Pick up |cRXP_PICK_Spirit of Silverpine Charts|r from the ground
    >>Pick up |cRXP_PICK_Spirit of Silverpine Log|r from the ground
    >>Kill |cRXP_ENEMY_Daggerspine Raiders|r
    >>Kill |cRXP_ENEMY_Daggerspine Sorceress|r
    >>Loot the |cRXP_PICK_Calcified Elven Gems|r for |cRXP_LOOT_Elven Gem|r
    .complete 662,2 --Maiden's Folly Log (1)
    .complete 662,1 --Maiden's Folly Charts (1)
    .complete 662,3 --Spirit of Silverpine Charts (1)
    .complete 662,4 --Spirit of Silverpine Log (1)
    .complete 664,1 --Daggerspine Raider slain (10)
    .complete 664,2 --Daggerspine Sorceress slain (3)
    .complete 666,1 --Elven Gem (10)
    .mob Daggerspine Raider
    .mob Daggerspine Sorceress
step
    .goto 1417/0,-2047.47,-2088.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Nilzlix|r
    .turnin 662 >>Turn in Deep Sea Salvage
    .target First Mate Nilzlix
step
    .goto 1417/0,-2090.67,-2072.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
    .turnin 664 >>Turn in Drowned Sorrows
    .target Captain Steelgut
step
    .goto 1417/0,-2085.63,-2064.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 666 >>Turn in Sunken Treasure
    .accept 668 >>Accept Sunken Treasure
    .target Doctor Draxlegauge
step
    .goto 1417/0,-2028.75,-2086.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 668 >>Turn in Sunken Treasure
    .accept 669 >>Accept Sunken Treasure
    .target Shakes O'Breen
step
    .goto 1417/0,-2529.87,-1279.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .turnin 694 >>Turn in Trelane's Defenses
    .target Apprentice Kryten
    .isOnQuest 694
step
    .goto 1417/0,-2529.87,-1279.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .accept 695 >>Accept An Apprentice's Enchantment
    .target Apprentice Kryten
    .isQuestTurnedIn 694 --any of: Trelane's Defenses
step
    .goto 1417/0,-2546.07,-1261.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 695 >>Turn in An Apprentice's Enchantment
    .target Skuerto
    .isOnQuest 695
step
    .goto 1417/0,-2546.07,-1261.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 696 >>Accept Attack on the Tower
    .target Skuerto
    .isQuestTurnedIn 695 --any of: An Apprentice's Enchantment
step
    .goto 1417/0,-1515.75,-1762.21
    >>Open the |cRXP_PICK_Trelane's Lockbox|r. Loot it for |cRXP_LOOT_Trelane's Ember Agate|r
    .complete 696,3 --Trelane's Ember Agate (1)
    .isOnQuest 696
step
    .goto 1417/0,-1521.15,-1768.69
    >>Open the |cRXP_PICK_Trelane's Footlocker|r. Loot it for |cRXP_LOOT_Trelane's Phylactery|r
    .complete 696,1 --Trelane's Phylactery (1)
    .isOnQuest 696
step
    .goto 1417/0,-1520.79,-1792.93
    >>Open the |cRXP_PICK_Trelane's Chest|r. Loot it for |cRXP_LOOT_Trelane's Orb|r
    .complete 696,2 --Trelane's Orb (1)
    .isOnQuest 696
step
    .goto 1417/0,-2546.07,-1261.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 696 >>Turn in Attack on the Tower
    .target Skuerto
    .isOnQuest 696
step
    .goto 1417/0,-2546.07,-1261.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 697 >>Accept Malin's Request
    .target Skuerto
    .isQuestTurnedIn 696 --any of: Attack on the Tower
step
    +|cRXP_WARN_That is all of Arathi Highlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: Malin's Request
    >>|cRXP_FRIENDLY_Stranglethorn Vale|r: Sunken Treasure
step
    +|cRXP_WARN_The rest of Arathi Highlands is planned from level 40.|r Load its guide for level 40 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 31 - 41 Arathi Highlands
#subweight -31
#name 40-41 Arathi Highlands

step
    .goto 1417/0,-2524.11,-1279.57
    >>Click the |cRXP_PICK_Wanted Board|r
    .accept 684 >>Accept Wanted!  Marez Cowl
    .accept 685 >>Accept Wanted!  Otto and Falconcrest
step
    .goto 1417/0,-2170.95,-1510.45
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .accept 652 >>Accept Breaking the Keystone
    .isQuestTurnedIn 651 --any of: Stones of Binding
step
    .goto 1417/0,-3167.07,-853.33
    >>Kill |cRXP_ENEMY_Fozruk|r and loot |cRXP_LOOT_Rod of Order|r
    .complete 652,1 --Rod of Order (1)
    .mob Fozruk
    .isOnQuest 652
step
    .goto 1417/0,-3550.11,-988.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaruk|r
    .accept 687 >>Accept Theldurin the Lost
    .target Zaruk
    .isQuestTurnedIn 653,688 --any of: Myzrael's Allies, Myzrael's Allies
    .xp <30,1
step
    .goto 1417/0,-2165.55,-1527.49
    >>Click the |cRXP_PICK_Keystone|r
    .turnin 652 >>Turn in Breaking the Keystone
    .isOnQuest 652
step
    .goto 1417/0,-2165.55,-1527.49
    >>Click the |cRXP_PICK_Keystone|r
    .accept 653 >>Accept Myzrael's Allies
    .isQuestTurnedIn 652 --any of: Breaking the Keystone
step
    #loop
    .goto 1417/0,-1932.99,-1644.61,0
    .goto 1417/0,-1932.99,-1644.61,40,0
    .goto 1417/0,-1810.59,-1706.53,40,0
    >>Kill |cRXP_ENEMY_Otto|r and loot |cRXP_LOOT_Otto's Head|r
    >>Kill |cRXP_ENEMY_Lord Falconcrest|r and loot |cRXP_LOOT_Falconcrest's Head|r
    >>Kill |cRXP_ENEMY_Marez Cowl|r and loot |cRXP_LOOT_Marez's Head|r
    .complete 685,1 --Otto's Head (1)
    .complete 685,2 --Falconcrest's Head (1)
    .complete 684,1 --Marez's Head (1)
    .mob Otto
    .mob Lord Falconcrest
    .mob Marez Cowl
step
    .goto 1417/0,-2516.55,-1274.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 684 >>Turn in Wanted!  Marez Cowl
    .turnin 685 >>Turn in Wanted!  Otto and Falconcrest
    .target Captain Nials
step
    +|cRXP_WARN_End of the Arathi Highlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Badlands|r: Theldurin the Lost
    >>|cRXP_FRIENDLY_Ironforge|r: Myzrael's Allies
]])
