-- 10-22 Darkshore: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 10, 17, 21).
-- Split into 3 guides, listed under "10 - 22 Darkshore" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Darkshore.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 22 Darkshore
#subweight -10
#name 10-15 Darkshore: around Thundris Windweaver
--RouteBuilder:next
#next Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\10-13 Westfall: around Farmer Saldean;Zone Routes (Alliance)\14-15 The Barrens: around Gazlowe

step << NightElf
    .goto 1439/1,533.23,6399.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >>Turn in Flight to Auberdine
    .target Laird
    .isOnQuest 6342
step
    .goto 1439/1,520.13,6406.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >>Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
    .goto 1439/1,515.55,6406.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shaussiy|r
    .target Innkeeper Shaussiy
    .home >>Set your Hearthstone to Innkeeper Shaussiy's inn
step
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r, |cRXP_ENEMY_Tide Crawlers|r, |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for |cRXP_LOOT_Crawler Leg|r. |cRXP_WARN_Anything left is finished later|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Tide Crawler
    .mob Encrusted Tide Crawler
    .mob Young Reef Crawler
step
    .goto 1439/1,489.35,6506.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 730 >>Turn in Trouble In Darkshore?
    .target Archaeologist Hollee
    .isOnQuest 730
step
    #label Along4
    .goto 1439/1,491.97,6580.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 958 >>Accept Tools of the Highborne
    .accept 954 >>Accept Bashal'Aran
    .target Thundris Windweaver
step
    .goto 1439/1,41.33,6745.18
    >>Find the source of the strange blue aura in the ruins of Bashal'Aran.
    .complete 954,1 --Find the source of the strange blue aura in the ruins of Bashal'Aran.
step
    .goto 1439/1,48.53,6748.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >>Turn in Bashal'Aran
    .accept 955 >>Accept Bashal'Aran
    .target Asterion
step
    #loop
    .goto 1439/1,14.47,6647.36,0
    .goto 1439/1,14.47,6647.36,40,0
    .goto 1439/1,-101.46,6643.43,40,0
    .goto 1439/1,-166.31,6714.17,40,0
    >>Kill |cRXP_ENEMY_Vile Sprites|r and |cRXP_ENEMY_Wild Grells|r. Loot them for |cRXP_LOOT_Grell Earring|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >>Turn in Bashal'Aran
    .accept 956 >>Accept Bashal'Aran
    .target Asterion
step
    #loop
    .goto 1439/1,-35.96,6739.50,0
    .goto 1439/1,-35.96,6739.50,40,0
    .goto 1439/1,-168.27,6732.51,40,0
    >>Kill |cRXP_ENEMY_Deth'ryll Satyr|r and loot |cRXP_LOOT_Ancient Moonstone Seal|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    .goto 1439/1,48.53,6748.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >>Turn in Bashal'Aran
    .accept 957 >>Accept Bashal'Aran
    .target Asterion
step << NightElf
    #completewith next
    .hs >>Hearth to Innkeeper Shaussiy's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << NightElf
    .goto 1439/1,533.23,6399.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    .accept 6343 >>Accept Return to Nessa
    .target Laird
    .isQuestTurnedIn 6342 --any of: Flight to Auberdine
    .xp <10,1
step
    #completewith next
    .hs >>Hearth to Innkeeper Shaussiy's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .xp 10 >>Grind to level 10 (The Family and the Fishing Pole needs it)
step
    .goto 1439/1,577.12,6371.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >>Accept The Family and the Fishing Pole
    .target Gubber Blump
step << Warrior
    .xp 10 >>Grind to level 10 (Elanaria needs it)
step << Warrior
    .goto 1439/1,383.89,6431.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r
    .accept 1684 >>Accept Elanaria
    .target Sentinel Elissa Starbreeze
step
    .goto 1439/1,302.02,5725.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >>Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #loop
    .goto 1439/1,179.53,5626.87,0
    .goto 1439/1,179.53,5626.87,40,0
    .goto 1439/1,104.21,5673.60,40,0
    .goto 1439/1,114.03,5781.89,40,0
    >>Click the |cRXP_PICK_The Lay of Ameth'Aran|r
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for |cRXP_LOOT_Highborne Relic|r
    >>Click the |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,1 --Read the Lay of Ameth'Aran
    .complete 958,1 --Highborne Relic (7)
    .complete 953,2 --Read the Fall of Ameth'Aran
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto 1439/1,302.02,5725.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >>Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    .goto 1439/1,166.43,5633.86
    >>Click the |cRXP_PICK_Ancient Flame|r
    .complete 957,1 --Destroy the seal at the ancient flame
step
    .goto 1439/1,48.53,6748.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >>Turn in Bashal'Aran
    .target Asterion
step
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r, |cRXP_ENEMY_Tide Crawlers|r, |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for |cRXP_LOOT_Crawler Leg|r. |cRXP_WARN_Anything left is finished later|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Tide Crawler
    .mob Encrusted Tide Crawler
    .mob Young Reef Crawler
step
    #label Along19
    .goto 1439/1,491.97,6580.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >>Turn in Tools of the Highborne
    .target Thundris Windweaver
step
    .xp 11 >>Grind to level 11 (Washed Ashore needs it)
step
    .goto 1439/1,543.06,6342.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step << Warlock
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #loop
    .goto 1439/1,607.25,6233.84,0
    .goto 1439/1,607.25,6233.84,40,0
    .goto 1439/1,583.67,6146.07,40,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r, |cRXP_ENEMY_Tide Crawlers|r, |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for |cRXP_LOOT_Crawler Leg|r
    >>Open the |cRXP_PICK_Beached Sea Creature|r. Loot it for |cRXP_LOOT_Sea Creature Bones|r
    .complete 983,1 --Crawler Leg (6)
    .complete 3524,1 --Sea Creature Bones (1)
    .mob Pygmy Tide Crawler
    .mob Tide Crawler
    .mob Encrusted Tide Crawler
    .mob Young Reef Crawler
step
    .goto 1439/1,541.75,6313.31
    >>Click the |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Turn in Buzzbox 827
    .accept 1001 >>Accept Buzzbox 411
step
    .goto 1439/1,543.06,6342.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Turn in Washed Ashore
    .accept 4681 >>Accept Washed Ashore
    .turnin 4681 >>Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,497.21,6427.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >>Accept Cave Mushrooms
    .target Barithras Moonshade
step
    .goto 1439/1,397.65,6437.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >>Accept Plagued Lands
    .target Tharnariun Treetender
step
    .goto 1439/1,431.05,6453.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >>Turn in The Corruption Abroad
    .target Gershala Nightwhisper
    .isOnQuest 3765
step
    .goto 1439/1,383.89,6431.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r
    .accept 965 >>Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto 1439/1,362.93,6434.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Accept How Big a Threat?
    .target Terenthis
step
    .goto 1439/1,445.46,6535.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >>Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    .goto 1439/1,491.97,6580.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 9633 >>Turn in The Way to Auberdine
    .target Thundris Windweaver
    .isOnQuest 9633
step
    .goto 1439/1,436.95,7075.73
    >>Pick up |cRXP_PICK_Silver Dawning's Lockbox|r from the ground
    >>Pick up |cRXP_PICK_Mist Veil's Lockbox|r from the ground
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto 1439/1,47.22,7433.80
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >>Accept Beached Sea Turtle
step
    .goto 1439/1,-537.04,7543.84
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >>Accept Beached Sea Turtle
step
    .goto 1439/1,-658.87,7246.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >>Turn in The Tower of Althalaxx
    .accept 966 >>Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto 1439/1,-710.61,7169.18,0
    .goto 1439/1,-710.61,7169.18,40,0
    .goto 1439/1,-787.90,7177.91,40,0
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for |cRXP_LOOT_Worn Parchment|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439/1,-658.87,7246.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >>Turn in The Tower of Althalaxx
    .accept 967 >>Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step << Druid
    .goto 1439/1,-655.59,6878.80
    >>Open the |cRXP_PICK_Cliffspring Falls Cave Mouth|r. Loot it for |cRXP_LOOT_Filled Cliffspring Falls Sampler|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
    #loop
    .goto 1439/1,-766.29,6829.89,0
    .goto 1439/1,-766.29,6829.89,40,0
    .goto 1439/1,-694.24,6792.77,40,0
    >>Pick up |cRXP_PICK_Scaber Stalk|r from the ground
    >>Pick up |cRXP_PICK_Death Cap|r from the ground
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto 1439/1,445.46,6535.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >>Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step << Druid
    .goto 1439/1,472.97,6557.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >>Turn in The Principal Source
    .target Alanndarian Nightsong
    .isOnQuest 6122
step
    .goto 1439/1,497.21,6427.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >>Turn in Cave Mushrooms
    .accept 948 >>Accept Onu
    .target Barithras Moonshade
step
    .goto 1439/1,472.32,6437.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >>Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    .goto 1439/1,543.06,6342.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >>Turn in Beached Sea Turtle
    .turnin 4727 >>Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    #loop
    .goto 1439/1,714.67,5759.18,0
    .goto 1439/1,714.67,5759.18,40,0
    .goto 1439/1,851.56,5713.77,40,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r and |cRXP_ENEMY_Elder Darkshore Threshers|r. Loot them for |cRXP_LOOT_Thresher Eye|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .mob Elder Darkshore Thresher
step
    .goto 1439/1,89.14,5002.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 952 >>Turn in Grove of the Ancients
    .target Onu
    .isOnQuest 952
step
    .goto 1439/1,89.14,5002.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >>Turn in Onu
    .accept 944 >>Accept The Master's Glaive
    .target Onu
step
    .goto 1439/1,324.94,4909.43
    >>Find a corrupt furbolg camp
    .complete 984,1 --Find a corrupt furbolg camp
step
    .goto 1439/1,421.23,4558.35
    >>Enter the Master's Glaive
    .complete 944,1 --Enter the Master's Glaive
step
    .goto 1439/1,413.37,4569.27
    >>Click the |cRXP_PICK_Scrying Bowl|r
    .turnin 944 >>Turn in The Master's Glaive
    .accept 949 >>Accept The Twilight Camp
step
    .goto 1439/1,417.30,4575.82
    >>Click the |cRXP_PICK_Twilight Tome|r
    .turnin 949 >>Turn in The Twilight Camp
step
    #completewith next
    .hs >>Hearth to Innkeeper Shaussiy's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .xp 12 >>Grind to level 12 (The Red Crystal needs it)
step
    .goto 1439/1,472.32,6437.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >>Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,362.93,6434.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Turn in How Big a Threat?
    .accept 4761 >>Accept Thundris Windweaver
    .accept 985 >>Accept How Big a Threat?
    .target Terenthis
step
    .goto 1439/1,491.97,6580.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >>Turn in Thundris Windweaver
    .accept 4762 >>Accept The Cliffspring River
    .target Thundris Windweaver
step
    .goto 1439/1,193.29,7083.59
    >>Click the |cRXP_PICK_Buzzbox 411|r
    .turnin 1001 >>Turn in Buzzbox 411
    .accept 1002 >>Accept Buzzbox 323
step
    .goto 1439/1,195.25,6956.52
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >>Accept Beached Sea Creature
step
    #loop
    .goto 1439/1,349.18,6684.48,0
    .goto 1439/1,349.18,6684.48,40,0
    .goto 1439/1,339.35,6568.33,40,0
    >>Kill |cRXP_ENEMY_Moonstalkers|r, |cRXP_ENEMY_Moonstalker Runts|r, |cRXP_ENEMY_Moonstalker Matriarches|r and |cRXP_ENEMY_Moonstalker Sires|r. Loot them for |cRXP_LOOT_Moonstalker Fang|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
    .mob Moonstalker Runt
    .mob Moonstalker Matriarch
    .mob Moonstalker Sire
step
    .goto 1439/1,-417.83,7260.44
    >>Click the |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>Turn in Buzzbox 323
step
    .goto 1439/1,-388.35,7214.16
    >>Open the |cRXP_PICK_Cliffspring River Waterfall|r. Loot it for |cRXP_LOOT_Cliffspring River Sample|r
    .complete 4762,1 --Cliffspring River Sample (1)
step
    .goto 1439/1,-157.79,6207.64
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    .complete 4811,1 --Mysterious Red Crystal
step
    .goto 1439/1,-152.55,6207.64
    >>Locate the large, red crystal on Darkshore's eastern mountain range
    .complete 4811,2 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #loop
    .goto 1439/1,346.56,5973.59,0
    .goto 1439/1,346.56,5973.59,40,0
    .goto 1439/1,338.04,5881.89,40,0
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r
    >>Kill |cRXP_ENEMY_Blackwood Windtalkers|r
    .complete 985,1 --Blackwood Pathfinder slain (8)
    .complete 985,2 --Blackwood Windtalker slain (5)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step
    #loop
    .goto 1439/1,-281.59,6785.79,0
    .goto 1439/1,-281.59,6785.79,40,0
    .goto 1439/1,-241.63,6795.83,40,0
    .goto 1439/1,-292.72,6873.12,40,0
    .goto 1439/1,-195.78,6823.78,40,0
    .goto 1439/1,-230.50,6873.56,40,0
    .goto 1439/1,-120.46,6830.33,40,0
    .goto 1439/1,-175.48,6890.15,40,0
    .goto 1439/1,-146.00,6919.41,40,0
    .goto 1439/1,-146.00,6970.06,40,0
    >>Interact with |cRXP_FRIENDLY_Rabid Thistle Bear|r
    .complete 2118,1 --Rabid Thistle Bear
    .target Rabid Thistle Bear
step
    .goto 1439/1,583.01,5238.24
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >>Accept Beached Sea Creature
step
    .goto 1439/1,512.27,5618.14
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >>Accept Beached Sea Turtle
step
    .goto 1439/1,543.06,6342.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >>Turn in Beached Sea Creature
    .turnin 4728 >>Turn in Beached Sea Creature
    .turnin 4722 >>Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,600.70,6424.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >>Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    .goto 1439/1,491.97,6580.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >>Turn in The Cliffspring River
    .target Thundris Windweaver
step
    .goto 1439/1,472.32,6437.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >>Turn in The Red Crystal
    .accept 4812 >>Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,397.65,6437.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >>Turn in Plagued Lands while you are here
    .isQuestComplete 2118
    .target Tharnariun Treetender
step
    .goto 1439/1,467.08,6410.69
    >>Open the |cRXP_PICK_Auberdine Moonwell|r. Loot it for |cRXP_LOOT_Moonwell Water Tube|r
    .complete 4812,1 --Moonwell Water Tube (1)
step
    .goto 1439/1,397.65,6437.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >>Turn in Plagued Lands
    .accept 2138 >>Accept Cleansing of the Infected
    .target Tharnariun Treetender
step
    .goto 1439/1,362.93,6434.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Turn in How Big a Threat?
    .target Terenthis
step
    .goto 1439/1,-157.79,6207.64
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    .turnin 4812 >>Turn in As Water Cascades
    .accept 4813 >>Accept The Fragments Within
step
    #loop
    .goto 1439/1,-241.63,6795.83,0
    .goto 1439/1,-241.63,6795.83,40,0
    .goto 1439/1,-175.48,6890.15,40,0
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 --Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439/1,-417.83,7260.44
    >>Click the |cRXP_PICK_Buzzbox 323|r
    .accept 1003 >>Accept Buzzbox 525
step
    #completewith next
    .hs >>Hearth to Innkeeper Shaussiy's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1439/1,472.32,6437.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >>Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,397.65,6437.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >>Turn in Cleansing of the Infected
    .target Tharnariun Treetender
step
    .goto 1439/1,800.47,4805.50
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >>Accept Beached Sea Creature
step
    #loop
    .goto 1439/1,474.28,4847.86,0
    .goto 1439/1,474.28,4847.86,40,0
    .goto 1439/1,450.05,4750.48,40,0
    .goto 1439/1,293.50,4790.66,40,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Den Mothers|r. Loot them for |cRXP_LOOT_Grizzled Scalp|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .mob Den Mother
step
    .goto 1439/1,230.62,4815.55
    >>Click the |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>Turn in Buzzbox 525
step
    .goto 1439/1,417.30,4575.82
    >>Click the |cRXP_PICK_Twilight Tome|r
    .accept 950 >>Accept Return to Onu
step
    .goto 1439/1,-67.40,4390.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Aynasha|r
    .accept 5713 >>Accept One Shot.  One Kill.
    .target Sentinel Aynasha
step
    .goto 1439/1,-62.82,4384.99
    >>Protect Aynasha
    .complete 5713,1 --Protect Aynasha
step
    .goto 1439/1,89.14,5002.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Turn in Return to Onu
    .target Onu
step
    .goto 1439/1,203.11,5681.46
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r and loot |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .mob Anaya Dawnrunner
step
    .goto 1439/1,543.06,6342.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,600.70,6424.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >>Turn in For Love Eternal
    .target Cerellean Whiteclaw
step
    .goto 1439/1,577.12,6371.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1141 >>Turn in The Family and the Fishing Pole
    .target Gubber Blump
    .isQuestComplete 1141
step
    .goto 1439/1,729.73,6483.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
    .turnin 1132 >>Turn in Fiora Longears
    .target Fiora Longears
    .isOnQuest 1132
step
    .goto 1439/1,857.46,6311.13
    >>Open the |cRXP_PICK_Skeletal Sea Turtle|r. Loot it for |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    +|cRXP_WARN_That is all of Darkshore for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: One Shot.  One Kill., The Tower of Althalaxx
    >>|cRXP_FRIENDLY_Darnassus|r: Elanaria << Warrior
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nessa << NightElf
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Family and the Fishing Pole
step
    +|cRXP_WARN_Suggested next zones at level 14|r: |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.6 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Westfall|r (about 0.7 levels of quests, starting around Farmer Saldean), |cRXP_FRIENDLY_The Barrens|r (about 0.7 levels of quests, starting around Gazlowe). Completing this step loads the guide for Bloodmyst Isle --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Darkshore is planned from level 17.|r Load its guide for level 17 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 22 Darkshore
#subweight -10
#name 17-19 Darkshore: around Terenthis
--RouteBuilder:next
#next Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\18-19 Ashenvale: around Shindrell Swiftfire

step
    .goto 1439/1,577.12,6371.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1141 >>Turn in The Family and the Fishing Pole
    .target Gubber Blump
    .isQuestComplete 1141
step
    .goto 1439/1,577.12,6371.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Accept Fruit of the Sea
    .target Gubber Blump
step
    .goto 1439/1,503.76,6402.39
    >>Click the |cRXP_PICK_WANTED: Murkdeep!|r
    .accept 4740 >>Accept WANTED: Murkdeep!
step
    .goto 1439/1,397.65,6437.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >>Accept Tharnariun's Hope
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138 --any of: Cleansing of the Infected
step
    .goto 1439/1,362.93,6434.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 986 >>Accept A Lost Master
    .target Terenthis
    .isQuestTurnedIn 985 --any of: How Big a Threat?
step << Druid
    .goto 1439/1,472.97,6557.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6123 >>Accept Gathering the Cure
    .target Alanndarian Nightsong
    .isQuestTurnedIn 6122 --any of: The Principal Source
    .xp <14,1
step
    .goto 1439/1,491.97,6580.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 10752 >>Accept Onward to Ashenvale
    .target Thundris Windweaver
step
    .goto 1439/1,491.97,6580.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .accept 4763 >>Accept The Blackwood Corrupted
    .target Thundris Windweaver
    .isQuestTurnedIn 4762 --any of: The Cliffspring River
step
    .goto 1439/1,489.35,6506.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >>Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439/1,467.08,6410.69
    >>Open the |cRXP_PICK_Auberdine Moonwell|r. Loot it for |cRXP_LOOT_Filled Cleansing Bowl|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .isOnQuest 4763
step
    .goto 1439/1,-376.56,6807.62
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for |cRXP_LOOT_Blackwood Grain Sample|r
    .collect 12342,1,4763,1 --Blackwood Grain Sample (1)
    .isOnQuest 4763
step
    .goto 1439/1,-453.20,6870.50
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for |cRXP_LOOT_Blackwood Nut Sample|r
    .collect 12343,1,4763,1 --Blackwood Nut Sample (1)
    .isOnQuest 4763
step
    .goto 1439/1,-769.56,7744.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >>Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #loop
    .goto 1439/1,-745.98,7699.73,0
    .goto 1439/1,-745.98,7699.73,40,0
    .goto 1439/1,-679.17,7784.01,40,0
    >>Kill |cRXP_ENEMY_Greymist Raiders|r, |cRXP_ENEMY_Greymist Coastrunners|r, |cRXP_ENEMY_Greymist Seers|r and |cRXP_ENEMY_Greymist Netters|r. Loot them for |cRXP_LOOT_Middle of Gelkak's Key|r
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Raging Reef Crawlers|r. Loot them for |cRXP_LOOT_Bottom of Gelkak's Key|r
    .complete 2098,2 --Middle of Gelkak's Key (1)
    .complete 2098,3 --Bottom of Gelkak's Key (1)
    .mob Greymist Raider
    .mob Greymist Coastrunner
    .mob Greymist Seer
    .mob Greymist Netter
    .mob Encrusted Tide Crawler
    .mob Raging Reef Crawler
step
    .goto 1439/1,-916.28,7752.13
    >>Kill |cRXP_ENEMY_Giant Foreststrider|r and loot |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 --Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #loop
    .goto 1439/1,-1048.59,7747.76,0
    .goto 1439/1,-1048.59,7747.76,40,0
    .goto 1439/1,-1051.21,7815.01,40,0
    >>Kill |cRXP_ENEMY_Moonstalker Matriarches|r and |cRXP_ENEMY_Moonstalker Sires|r. Loot them for |cRXP_LOOT_Fine Moonstalker Pelt|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Matriarch
    .mob Moonstalker Sire
    .isOnQuest 986
step
    .goto 1439/1,-769.56,7744.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >>Turn in Gyromast's Retrieval
    .accept 2078 >>Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
    .goto 1439/1,-713.89,7534.67
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r
    .complete 2078,1 --Gelkak's First Mate (1)
    .mob The Threshwackonator 4100
step
    .goto 1439/1,-769.56,7744.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >>Turn in Gyromast's Revenge
    .target Gelkak Gyromast
step
    .goto 1439/1,-520.66,6873.99
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot it for |cRXP_LOOT_Blackwood Fruit Sample|r
    .collect 12341,1,4763,1 --Blackwood Fruit Sample (1)
    .isOnQuest 4763
step
    .goto 1439/1,-495.77,6875.30
    >>Open the |cRXP_PICK_Xabraxxis' Demon Bag|r. Loot it for |cRXP_LOOT_Talisman of Corruption|r
    .complete 4763,1 --Talisman of Corruption (1)
    .isOnQuest 4763
step
    .goto 1439/1,-430.27,6662.65
    >>Kill |cRXP_ENEMY_Den Mother|r
    .complete 2139,1 --Den Mother slain (1)
    .mob Den Mother
    .isOnQuest 2139
step
    .goto 1439/1,397.65,6437.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >>Turn in Tharnariun's Hope
    .target Tharnariun Treetender
    .isOnQuest 2139
step
    .goto 1439/1,362.93,6434.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Turn in A Lost Master
    .target Terenthis
    .isOnQuest 986
step
    .goto 1439/1,362.93,6434.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >>Accept A Lost Master
    .target Terenthis
    .isQuestTurnedIn 986 --any of: A Lost Master
step
    .goto 1439/1,491.97,6580.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >>Turn in The Blackwood Corrupted
    .target Thundris Windweaver
    .isOnQuest 4763
step
    .goto 1439/1,520.13,5872.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heldan Galesong|r
    .target Heldan Galesong
    .home >>Set your Hearthstone to Heldan Galesong's inn
step << Druid
    .goto 1439/1,343.28,5189.77
    >>Pick up |cRXP_PICK_Earthroot|r from the ground
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step
    .goto 1439/1,554.85,4992.40
    >>Kill |cRXP_ENEMY_Murkdeep|r
    .complete 4740,1 --Murkdeep slain (1)
    .mob Murkdeep
step
    .goto 1439/1,410.75,4519.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therylune|r
    .accept 945 >>Accept Therylune's Escape
    .target Therylune
step
    .goto 1439/1,288.26,4530.84
    >>Escort Therylune away from the Master's Glaive
    .complete 945,1 --Escort Therylune away from the Master's Glaive
step
    .goto 1439/1,601.35,4678.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >>Turn in The Absent Minded Prospector
    .accept 731 >>Accept The Absent Minded Prospector
    .target Prospector Remtravel
step
    .goto 1439/1,605.28,4664.02
    >>Escort Prospector Remtravel
    .complete 731,1 --Escort Prospector Remtravel
step
    #loop
    .goto 1439/1,583.01,5050.04,0
    .goto 1439/1,583.01,5050.04,40,0
    .goto 1439/1,637.38,5173.61,40,0
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto 1439/1,472.32,6437.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >>Turn in WANTED: Murkdeep!
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,489.35,6506.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >>Turn in The Absent Minded Prospector
    .accept 741 >>Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439/1,577.12,6371.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Turn in Fruit of the Sea
    .target Gubber Blump
step
    .goto 1439/1,867.28,4679.31
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >>Accept Beached Sea Turtle
    .isQuestTurnedIn 4681 --any of: Washed Ashore
step
    .goto 1439/1,896.10,4595.47
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >>Accept Beached Sea Turtle
    .isQuestTurnedIn 4681 --any of: Washed Ashore
step
    .goto 1439/1,894.14,4515.12
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >>Accept Beached Sea Creature
    .isQuestTurnedIn 4681 --any of: Washed Ashore
step
    .goto 1439/1,-6.49,4608.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >>Turn in A Lost Master
    .target Volcor
    .isOnQuest 993
step
    .goto 1439/1,33.47,4995.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 5321 >>Accept The Sleeper Has Awakened
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.13
    >>Open the |cRXP_PICK_Kerlonian's Chest|r. Loot it for |cRXP_LOOT_Horn of Awakening|r
    .complete 5321,1 --Horn of Awakening (1)
step
    .goto 1439/1,89.14,5002.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .accept 951 >>Accept Mathystra Relics
    .target Onu
    .isQuestTurnedIn 950 --any of: Return to Onu
step
    .goto 1439/1,543.06,6342.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4733 >>Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4733
step
    .goto 1439/1,543.06,6342.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4731 >>Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4731
step
    .goto 1439/1,543.06,6342.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4732 >>Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4732
step
    .xp 18 >>Grind to level 18 (Journey to Astranaar needs it)
step
    .goto 1439/1,729.73,6483.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Longears|r
    .accept 1133 >>Accept Journey to Astranaar
    .target Fiora Longears
step << Druid
    .goto 1439/1,72.77,6139.96
    >>Loot the |cRXP_PICK_Lunar Fungal Blooms|r for |cRXP_LOOT_Lunar Fungus|r
    .complete 6123,2 --Lunar Fungus (12)
    .isOnQuest 6123
step
    #loop
    .goto 1439/1,-892.05,7274.42,0
    .goto 1439/1,-892.05,7274.42,40,0
    .goto 1439/1,-985.06,7284.46,40,0
    .goto 1439/1,-865.19,7430.31,40,0
    >>Pick up |cRXP_PICK_Mathystra Relic|r from the ground
    .complete 951,1 --Mathystra Relic (6)
    .isOnQuest 951
step << Druid
    .goto 1439/1,472.97,6557.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >>Turn in Gathering the Cure
    .target Alanndarian Nightsong
    .isOnQuest 6123
step << Druid
    .goto 1439/1,472.97,6557.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6124 >>Accept Curing the Sick
    .target Alanndarian Nightsong
    .isQuestTurnedIn 6123 --any of: Gathering the Cure
    .xp <14,1
step << Druid
    #loop
    .goto 1439/1,200.49,6667.89,0
    .goto 1439/1,200.49,6667.89,40,0
    .goto 1439/1,74.73,6526.41,40,0
    .goto 1439/1,-71.33,6526.41,40,0
    .goto 1439/1,-147.97,6531.21,40,0
    .goto 1439/1,227.35,6032.97,40,0
    .goto 1439/1,299.40,6049.57,40,0
    >>Interact with |cRXP_FRIENDLY_Sickly Deers|r
    .complete 6124,1 --Sickly Deer (10)
    .target Sickly Deer
    .isOnQuest 6124
step
    .goto 1439/1,89.14,5002.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 951 >>Turn in Mathystra Relics
    .target Onu
    .isOnQuest 951
step
    +|cRXP_WARN_That is all of Darkshore for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Therylune's Escape, Journey to Astranaar, The Sleeper Has Awakened, Onward to Ashenvale
    >>|cRXP_FRIENDLY_Darnassus|r: The Absent Minded Prospector
    >>|cRXP_FRIENDLY_Moonglade|r: Curing the Sick << Druid
step
    +|cRXP_WARN_Suggested next zones at level 18|r: |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.5 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Ashenvale|r (about 0.8 levels of quests, starting around Shindrell Swiftfire; 8 quests from here hand in there). Completing this step loads the guide for Bloodmyst Isle --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Darkshore is planned from level 21.|r Load its guide for level 21 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 22 Darkshore
#subweight -10
#name 21-22 Darkshore
--RouteBuilder:next
#next Zone Routes (Alliance)\21-22 Ashenvale;Zone Routes (Alliance)\20-21 Duskwood: around Elaine Carevin

step
    .goto 1439/1,-6.49,4608.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .accept 994 >>Accept Escape Through Force
    .target Volcor
    .isQuestTurnedIn 993 --any of: A Lost Master
step
    .goto 1439/1,195.91,4763.15
    >>Help Volcor to the road
    .complete 994,1 --Help Volcor to the road
    .isOnQuest 994
step
    .goto 1439/1,577.12,6371.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1141 >>Turn in The Family and the Fishing Pole
    .target Gubber Blump
    .isQuestComplete 1141
step
    .goto 1439/1,362.93,6434.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >>Turn in Escape Through Force
    .target Terenthis
    .isOnQuest 994
step
    .goto 1439/1,368.83,6435.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Selarin|r
    .accept 990 >>Accept Trek to Ashenvale
    .target Sentinel Selarin
    .isQuestTurnedIn 994,995 --any of: Escape Through Force, Escape Through Stealth
step
    +|cRXP_WARN_End of the Darkshore route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Trek to Ashenvale
step
    +|cRXP_WARN_Suggested next zones at level 21|r: |cRXP_FRIENDLY_Ashenvale|r (about 0.6 levels of quests), |cRXP_FRIENDLY_Duskwood|r (about 0.5 levels of quests, starting around Elaine Carevin). Completing this step loads the guide for Ashenvale --RouteBuilder:next
]])
