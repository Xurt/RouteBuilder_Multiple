-- 26-31 Arathi Highlands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Arathi Highlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 26-31 Arathi Highlands
--RouteBuilder:next
#next Zone Routes (Alliance)\30-33 Desolace: around Cenarion Researcher Korrah;Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\30-32 Southern Barrens: around Thomas Paxton

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 26 >>Grind to level 26 (Quae and Kinelory needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,39.93,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Amaren|r
    .accept 26113 >>Accept Quae and Kinelory
    .target Commander Amaren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 28573 >>Turn in Hero's Call: Arathi Highlands!
    .target Captain Nials
    .isOnQuest 28573
step
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 26139 >>Turn in Into Arathi
    .target Captain Nials
    .isOnQuest 26139
step
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 26093 >>Accept Northfold Manor
    .target Captain Nials
step
    .goto 14,40.01,49.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emily Jackson|r
    .target Emily Jackson
    .home >>Set your Hearthstone to Emily Jackson's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 26035 >>Accept Worth Its Weight in Gold
    .target Skuerto
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 26336 >>Accept Shakes O'Breen
    .target Skuerto
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.18,49.08
    >>Click the |cRXP_PICK_Wanted Board|r
    .accept 26024 >>Accept Wanted!  Marez Cowl
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.18,49.08
    >>Click the |cRXP_PICK_Wanted Board|r
    .accept 26079 >>Accept Wanted!  Otto and Falconcrest
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,54.82,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 26113 >>Turn in Quae and Kinelory
    .accept 26110 >>Accept Just Like Old Times
    .target Quae
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,51.03,64.80
    >>Kill |cRXP_ENEMY_Forsaken Courier|r and loot |cRXP_LOOT_Sealed Folder|r
    .complete 26110,1 --Sealed Folder (1)
    .mob Forsaken Courier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 14,57.85,69.86,0
    .goto 14,57.85,69.86,40,0
    .goto 14,59.19,75.24,40,0
    .goto 14,62.28,83.13,40,0
    .goto 14,64.61,68.42,40,0
    .goto 14,61.15,65.72,40,0
    >>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r. Loot them for |cRXP_LOOT_Witherbark Medicine Pouch|r
    >>Kill |cRXP_ENEMY_Witherbark Shadow Hunters|r, |cRXP_ENEMY_Witherbark Headhunters|r, |cRXP_ENEMY_Witherbark Witch Doctors|r and |cRXP_ENEMY_Witherbark Shadowcasters|r. Loot them for |cRXP_LOOT_Witherbark Tusk|r
    .complete 26035,2 --Witherbark Medicine Pouch (4)
    .complete 26035,1 --Witherbark Tusk (10)
    .mob Witherbark Witch Doctor
    .mob Witherbark Shadow Hunter
    .mob Witherbark Headhunter
    .mob Witherbark Shadowcaster
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,54.82,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 26110 >>Turn in Just Like Old Times
    .accept 26114 >>Accept Quae Trusts You
    .target Quae
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,54.88,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kinelory|r
    .turnin 26114 >>Turn in Quae Trusts You
    .accept 26116 >>Accept Kinelory Strikes
    .target Kinelory
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,54.85,55.55
    >>Protect Kinelory
    .complete 26116,1 --Protect Kinelory
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,54.82,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quae|r
    .turnin 26116 >>Turn in Kinelory Strikes
    .accept 26117 >>Accept For Southshore
    .target Quae
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Emily Jackson's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,39.93,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Amaren|r
    .turnin 26117 >>Turn in For Southshore
    .target Commander Amaren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.18,49.08
    >>Click the |cRXP_PICK_Wanted Board|r
    .accept 26079 >>Accept Wanted!  Otto and Falconcrest
    .accept 26024 >>Accept Wanted!  Marez Cowl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 26035 >>Turn in Worth Its Weight in Gold
    .accept 26336 >>Accept Shakes O'Breen
    .accept 26036 >>Accept Wand over Fist
    .target Skuerto
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .accept 26341 >>Accept The Stone Shards
    .target Skuerto
    .xp <27,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,49.20,84.38
    >>Kill |cRXP_ENEMY_Kor'gresh Coldrage|r and loot |cRXP_LOOT_Trelane's Wand of Invocation|r
    .complete 26036,1 --Trelane's Wand of Invocation (1)
    .mob Kor'gresh Coldrage
step
    .goto 14,27.58,83.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Phizzlethorpe|r
    .accept 26050 >>Accept Goggle Boggle
    .target Professor Phizzlethorpe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,25.93,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 26336 >>Turn in Shakes O'Breen while you are here
    .isQuestComplete 26336
    .target Shakes O'Breen
step
    .goto 14,29.47,82.07
    >>Defend Professor Phizzlethorpe
    .complete 26050,1 --Defend Professor Phizzlethorpe
step
    .goto 14,27.56,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 26050 >>Turn in Goggle Boggle while you are here
    .isQuestComplete 26050
    .target Doctor Draxlegauge
step
    .goto 14,27.72,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
    .accept 26055 >>Accept Drowned Sorrows
    .target Captain Steelgut
step
    .goto 14,27.56,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 26050 >>Turn in Goggle Boggle
    .accept 26051 >>Accept Sunken Treasure
    .target Doctor Draxlegauge
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,25.93,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 26336 >>Turn in Shakes O'Breen
    .target Shakes O'Breen
step
    #loop
    .goto 14,16.77,89.22,0
    .goto 14,16.77,89.22,40,0
    .goto 14,16.42,93.54,40,0
    .goto 14,14.29,93.01,40,0
    >>Kill |cRXP_ENEMY_Daggerspine Raiders|r
    >>Loot the |cRXP_PICK_Calcified Elven Gems|r for |cRXP_LOOT_Elven Gem|r
    >>Kill |cRXP_ENEMY_Daggerspine Sorceress|r
    .complete 26055,1 --Daggerspine Raider slain (10)
    .complete 26051,1 --Elven Gem (10)
    .complete 26055,2 --Daggerspine Sorceress slain (3)
    .mob Daggerspine Raider
    .mob Daggerspine Sorceress
step
    .goto 14,27.72,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
    .turnin 26055 >>Turn in Drowned Sorrows
    .target Captain Steelgut
step
    .goto 14,27.56,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 26051 >>Turn in Sunken Treasure
    .accept 26052 >>Accept Speak to Shakes
    .target Doctor Draxlegauge
step
    .goto 14,25.93,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 26052 >>Turn in Speak to Shakes
    .accept 26628 >>Accept Death From Below
    .target Shakes O'Breen
step
    .goto 14,24.76,86.20
    >>Defend Shakes O'Breen
    .complete 26628,1 --Defend Shakes O'Breen
step
    .goto 14,25.93,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 26628 >>Turn in Death From Below
    .target Shakes O'Breen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,19.46,67.62
    >>Kill |cRXP_ENEMY_Lord Falconcrest|r and loot |cRXP_LOOT_Falconcrest's Head|r
    >>Kill |cRXP_ENEMY_Otto|r and loot |cRXP_LOOT_Otto's Head|r
    .complete 26079,2 --Falconcrest's Head (1)
    .complete 26079,1 --Otto's Head (1)
    .mob Lord Falconcrest
    .mob Otto
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,23.11,64.82
    >>Kill |cRXP_ENEMY_Marez Cowl|r and loot |cRXP_LOOT_Marez's Head|r
    .complete 26024,1 --Marez's Head (1)
    .mob Marez Cowl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 26024 >>Turn in Wanted!  Marez Cowl
    .turnin 26079 >>Turn in Wanted!  Otto and Falconcrest
    .target Captain Nials
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 26036 >>Turn in Wand over Fist
    .accept 26341 >>Accept The Stone Shards
    .accept 26037 >>Accept Trelane's Defenses
    .target Skuerto
step
    .goto 14,57.22,34.55
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .turnin 26341 >>Turn in The Stone Shards << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26039 >>Accept The Princess Trapped
step
    #loop
    .goto 14,77.67,37.62,0
    .goto 14,77.67,37.62,40,0
    .goto 14,79.24,34.38,40,0
    >>Kill |cRXP_ENEMY_Drywhisker Kobolds|r, |cRXP_ENEMY_Drywhisker Surveyors|r and |cRXP_ENEMY_Drywhisker Diggers|r. Loot them for |cRXP_LOOT_Mote of Myzrael|r
    .complete 26039,1 --Mote of Myzrael (12)
    .mob Drywhisker Kobold
    .mob Drywhisker Surveyor
    .mob Drywhisker Digger
step
    .goto 14,79.80,31.68
    >>Click the |cRXP_PICK_Iridescent Shards|r
    .turnin 26039 >>Turn in The Princess Trapped
    .accept 26041 >>Accept Stones of Binding
step
    .goto 14,61.57,30.40
    >>Open the |cRXP_PICK_Stone of East Binding|r. Loot it for |cRXP_LOOT_Cresting Key|r
    .complete 26041,2 --Cresting Key (1)
step
    .goto 14,46.39,52.15
    >>Open the |cRXP_PICK_Stone of Outer Binding|r. Loot it for |cRXP_LOOT_Thundering Key|r
    .complete 26041,3 --Thundering Key (1)
step
    #loop
    .goto 14,27.05,31.32,0
    .goto 14,27.05,31.32,40,0
    .goto 14,24.65,29.41,40,0
    .goto 14,25.91,25.72,40,0
    >>Kill |cRXP_ENEMY_Syndicate Highwaymans|r, |cRXP_ENEMY_Syndicate Pathstalkers|r and |cRXP_ENEMY_Syndicate Mercenaries|r
    .complete 26093,1 --Syndicate Highwayman (8)
    .mob Syndicate Highwayman
    .mob Syndicate Pathstalker
    .mob Syndicate Mercenary
step
    .goto 14,18.87,30.80
    >>Open the |cRXP_PICK_Stone of West Binding|r. Loot it for |cRXP_LOOT_Burning Key|r
    .complete 26041,1 --Burning Key (1)
step
    .goto 14,13.77,33.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genavie Callow|r
    .accept 26428 >>Accept To Steal From Thieves
    .target Genavie Callow
step
    .goto 14,13.36,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Alina|r
    .accept 26084 >>Accept Hammerfall
    .target Dark Ranger Alina
    .isQuestTurnedIn 26081 --any of: Alina's Reward
    .xp <25,1
step
    .goto 14,13.36,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Alina|r
    .accept 26023 >>Accept The Forsaken Trollbane
    .target Dark Ranger Alina
    .isQuestTurnedIn 26022 --any of: First Blood
    .xp <25,1
step
    .goto 14,12.93,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Trollbane|r
    .turnin 26023 >>Turn in The Forsaken Trollbane
    .target Galen Trollbane
    .isOnQuest 26023
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 14,12.91,67.77,0
    .goto 14,12.91,67.77,40,0
    .goto 14,14.20,69.43,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Shaman|r and loot |cRXP_LOOT_Azure Agate|r
    .complete 26037,1 --Azure Agate (1)
    .mob Boulderfist Shaman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,13.07,69.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Kryten|r
    .turnin 26037 >>Turn in Trelane's Defenses
    .accept 26038 >>Accept Attack on the Tower
    .target Apprentice Kryten
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,11.33,70.17
    >>Open the |cRXP_PICK_Trelane's Lockbox|r. Loot it for |cRXP_LOOT_Trelane's Ember Agate|r
    >>Open the |cRXP_PICK_Trelane's Footlocker|r. Loot it for |cRXP_LOOT_Trelane's Phylactery|r
    >>Open the |cRXP_PICK_Trelane's Chest|r. Loot it for |cRXP_LOOT_Trelane's Orb|r
    .complete 26038,3 --Trelane's Ember Agate (1)
    .complete 26038,1 --Trelane's Phylactery (1)
    .complete 26038,2 --Trelane's Orb (1)
step
    .goto 14,30.02,59.03
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .turnin 26041 >>Turn in Stones of Binding
    .accept 26042 >>Accept Breaking the Keystone
step
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 26093 >>Turn in Northfold Manor
    .accept 26095 >>Accept Stromgarde Badges << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Captain Nials
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 26038 >>Turn in Attack on the Tower
    .target Skuerto
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 26542 >>Accept Hero's Call: The Hinterlands!
    .target Captain Nials
    .xp <29,1
step
    .goto 14,48.94,39.50
    >>Kill |cRXP_ENEMY_Marcel Dabyrie|r and loot |cRXP_LOOT_Marcel's Head|r
    >>Kill |cRXP_ENEMY_Fardel Dabyrie|r and loot |cRXP_LOOT_Fardel's Head|r
    >>Kill |cRXP_ENEMY_Kenata Dabyrie|r and loot |cRXP_LOOT_Kenata's Head|r
    .complete 26428,2 --Marcel's Head (1)
    .complete 26428,3 --Fardel's Head (1)
    .complete 26428,1 --Kenata's Head (1)
    .mob Marcel Dabyrie
    .mob Fardel Dabyrie
    .mob Kenata Dabyrie
step
    .goto 14,43.67,67.08
    >>Kill |cRXP_ENEMY_Fozruk|r and loot |cRXP_LOOT_Rod of Order|r
    .complete 26042,1 --Rod of Order (1)
    .mob Fozruk
step
    .goto 14,29.86,59.77
    >>Click the |cRXP_PICK_Keystone|r
    .turnin 26042 >>Turn in Breaking the Keystone
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,30.02,59.03
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .accept 26346 >>Accept Myzrael's Tale
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 14,22.73,63.34,0
    .goto 14,22.73,63.34,40,0
    .goto 14,19.98,66.32,40,0
    >>Kill |cRXP_ENEMY_Syndicate Prowlers|r, |cRXP_ENEMY_Syndicate Conjurors|r, |cRXP_ENEMY_Syndicate Magus|r and |cRXP_ENEMY_Syndicate Thiefs|r. Loot them for |cRXP_LOOT_Stromgarde Badge|r
    .complete 26095,1 --Stromgarde Badge (7)
    .mob Syndicate Prowler
    .mob Syndicate Conjuror
    .mob Syndicate Magus
    .mob Syndicate Thief
step
    .goto 14,13.77,33.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genavie Callow|r
    .turnin 26428 >>Turn in To Steal From Thieves
    .target Genavie Callow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Emily Jackson's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 26095 >>Turn in Stromgarde Badges
    .target Captain Nials
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 29 >>Grind to level 29 (Hero's Call: The Hinterlands! needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 26542 >>Accept Hero's Call: The Hinterlands!
    .target Captain Nials
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,40.34,49.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skuerto|r
    .turnin 26346 >>Turn in Myzrael's Tale
    .accept 26049 >>Accept The Princess Unleashed
    .target Skuerto
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,57.30,34.58
    >>Kill |cRXP_ENEMY_Myzrael|r and loot |cRXP_LOOT_Eldritch Shackles|r
    .complete 26049,1 --Eldritch Shackles (1)
    .mob Myzrael
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 14,57.22,34.55
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .turnin 26049 >>Turn in The Princess Unleashed
step
    .goto 14,67.71,34.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
    .turnin 26084 >>Turn in Hammerfall
    .target Gor'mul
    .isOnQuest 26084
step
    .goto 14,68.98,34.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .accept 26429 >>Accept Crush the Witherbark
    .accept 26430 >>Accept Revantusk Village
    .target Drum Fel
step
    #loop
    .goto 14,64.19,60.92,0
    .goto 14,64.19,60.92,40,0
    .goto 14,66.75,62.34,40,0
    .goto 14,61.90,63.77,40,0
    >>Kill |cRXP_ENEMY_Witherbark Axe Throwers|r
    .complete 26429,1 --Witherbark Axe Thrower slain (10)
    .mob Witherbark Axe Thrower
step
    #loop
    .goto 14,68.33,67.24,0
    .goto 14,68.33,67.24,40,0
    .goto 14,70.64,69.64,40,0
    .goto 14,67.93,76.49,40,0
    .goto 14,61.10,71.12,40,0
    >>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r
    >>Kill |cRXP_ENEMY_Witherbark Headhunters|r
    .complete 26429,3 --Witherbark Witch Doctor (8)
    .complete 26429,2 --Witherbark Headhunter slain (10)
    .mob Witherbark Witch Doctor
    .mob Witherbark Headhunter
step
    .goto 14,68.98,34.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 26429 >>Turn in Crush the Witherbark
    .target Drum Fel
step
    +|cRXP_WARN_End of the Arathi Highlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Hinterlands|r: Hero's Call: The Hinterlands! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_The Hinterlands|r: Revantusk Village
step
    +|cRXP_WARN_Suggested next zones at level 29|r: |cRXP_FRIENDLY_Desolace|r (about 2.2 levels of quests, starting around Cenarion Researcher Korrah), |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.1 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Southern Barrens|r (about 0.7 levels of quests, starting around Thomas Paxton). Completing this step loads the guide for Desolace --RouteBuilder:next
]])
