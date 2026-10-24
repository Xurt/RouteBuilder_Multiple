-- 65-70 Blade's Edge Mountains: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 65, 68).
-- Split into 2 guides, listed under "65 - 69 Blade's Edge Mountains" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Blade's Edge Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 65 - 69 Blade's Edge Mountains
#subweight -65
#name 65-66 Blade's Edge Mountains: around Rina Moonspring
--RouteBuilder:next
#next Zone Routes (Alliance)\62-64 Terokkar Forest: around Jenai Starwhisper;Zone Routes (Alliance)\65-66 Nagrand: around Huntress Bintook

step
    .goto 1949,32.20,91.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Moonwhisper|r
    .accept 10927 >>Accept Killing the Crawlers
    .target Sentinel Moonwhisper
step
    #loop
    .goto 1949,36.44,84.77,0
    .goto 1949,36.44,84.77,40,0
    .goto 1949,37.45,80.78,40,0
    >>Kill |cRXP_ENEMY_Cavern Crawlers|r
    .complete 10927,1 --Cavern Crawler slain (6)
    .mob Cavern Crawler
step
    .goto 1949,35.97,67.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kialon Nightblade|r
    .turnin 9794 >>Turn in No Time for Curiosity
    .target Kialon Nightblade
    .isOnQuest 9794
step
    .goto 1949,36.21,67.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
    .accept 10455 >>Accept The Encroaching Wilderness
    .target Rina Moonspring
step
    .goto 1949,36.61,67.29
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10690 >>Accept The Den Mother
step
    .goto 1949,36.22,66.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
    .turnin 10927 >>Turn in Killing the Crawlers
    .accept 10502 >>Accept The Bloodmaul Ogres
    .target Commander Skyshadow
step
    .goto 1949,37.07,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daranelle|r
    .accept 10555 >>Accept Malaise
    .target Daranelle
    .xp <65,1
step
    .goto 1949,37.41,65.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Stouthammer|r
    .accept 10510 >>Accept Into the Draenethyst Mine
    .target Bronwyn Stouthammer
    .xp <65,1
step
    .goto 1949,37.40,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgrim Stouthammer|r
    .accept 10511 >>Accept Strange Brew
    .target Borgrim Stouthammer
    .xp <65,1
step
    .goto 1949,52.90,53.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pol Snowhoof|r
    .target Pol Snowhoof
    .home >>Set your Hearthstone to Pol Snowhoof's inn
step
    .goto 1949,37.82,61.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amerun Leafshade|r
    .fp Sylvanaar >> Get the Sylvanaar flight path
    .target Amerun Leafshade
    .zoneskip Blade's Edge Mountains,1
step
    .goto 1949,37.40,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgrim Stouthammer|r
    .accept 10511 >>Accept Strange Brew
    .target Borgrim Stouthammer
step
    .goto 1949,37.41,65.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Stouthammer|r
    .accept 10510 >>Accept Into the Draenethyst Mine
    .target Bronwyn Stouthammer
step
    .goto 1949,37.07,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daranelle|r
    .accept 10555 >>Accept Malaise
    .target Daranelle
step
    #loop
    .goto 1949,35.68,73.91,0
    .goto 1949,35.68,73.91,40,0
    .goto 1949,34.62,77.36,40,0
    >>Kill |cRXP_ENEMY_Lashh'an Talonites|r, |cRXP_ENEMY_Lashh'an Wing Guards|r, |cRXP_ENEMY_Lashh'an Windwalkers|r and |cRXP_ENEMY_Lashh'an Matriarches|r. Loot them for |cRXP_LOOT_Plucked Lashh'an Feather|r
    .complete 10555,1 --Plucked Lashh'an Feather (18)
    .mob Lashh'an Talonite
    .mob Lashh'an Wing Guard
    .mob Lashh'an Windwalker
    .mob Lashh'an Matriarch
step
    .goto 1949,34.44,77.71
    >>Click the |cRXP_PICK_Lashh'an Tome|r
    .turnin 10555 >>Turn in Malaise
    .accept 10556 >>Accept Scratches
step
    .goto 1949,34.44,77.71
    >>Use the Fistful of Feathers on the Lashh'an Spell Circle, then return to Daranelle at Sylvanaar before the kaliri spirit fades.
    .complete 10556,1 --Have Daranelle analyze the Kaliri aura (1)
step
    #loop
    .goto 1949,35.32,71.38,0
    .goto 1949,35.32,71.38,40,0
    .goto 1949,39.40,70.47,40,0
    .goto 1949,41.11,68.66,40,0
    >>Kill |cRXP_ENEMY_Grovestalker Lynxes|r
    .complete 10455,1 --Grovestalker Lynx slain (12)
    .mob Grovestalker Lynx
step
    .goto 1949,37.07,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daranelle|r
    .turnin 10556 >>Turn in Scratches
    .target Daranelle
step
    .goto 1949,36.21,67.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
    .turnin 10455 >>Turn in The Encroaching Wilderness
    .accept 10456 >>Accept Marauding Wolves
    .target Rina Moonspring
step
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Thunderlord Dire Wolfs|r. Loot them for |cRXP_LOOT_Thunderlord Dire Wolf Tail|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10456,1 --Thunderlord Dire Wolf Tail (4)
    .mob Thunderlord Dire Wolf
step
    #label Along16
    .goto 1949,51.62,74.98
    >>Kill |cRXP_ENEMY_Rema|r
    .complete 10690,1 --Rema slain (1)
    .mob Rema
step
    #loop
    .goto 1949,49.28,68.81,0
    .goto 1949,49.28,68.81,40,0
    .goto 1949,51.15,65.26,40,0
    .goto 1949,49.92,60.37,40,0
    >>Kill |cRXP_ENEMY_Thunderlord Dire Wolfs|r. Loot them for |cRXP_LOOT_Thunderlord Dire Wolf Tail|r
    .complete 10456,1 --Thunderlord Dire Wolf Tail (4)
    .mob Thunderlord Dire Wolf
step
    .goto 1949,61.16,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rip Pedalslam|r
    .fp Toshley's Station >> Get the Toshley's Station flight path
    .target Rip Pedalslam
step
    .goto 1949,36.22,66.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
    .turnin 10690 >>Turn in The Den Mother
    .target Commander Skyshadow
step
    .goto 1949,36.21,67.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
    .turnin 10456 >>Turn in Marauding Wolves
    .accept 10457 >>Accept Protecting Our Own
    .target Rina Moonspring
step
    #loop
    .goto 1949,40.55,66.51,0
    .goto 1949,40.55,66.51,40,0
    .goto 1949,40.57,68.08,40,0
    >>Click the |cRXP_PICK_Grove Seedling|r
    .complete 10457,1 --Living Grove Defenders summoned
step
    .goto 1949,36.21,67.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
    .turnin 10457 >>Turn in Protecting Our Own
    .accept 10506 >>Accept A Dire Situation
    .target Rina Moonspring
step
    #completewith Along22
    >>As you go: Kill |cRXP_ENEMY_Bloodmaul Skirmishers|r, |cRXP_ENEMY_Bloodmaul Geomancers|r, |cRXP_ENEMY_Bloodmaul Lookouts|r and |cRXP_ENEMY_Bloodmaul Brewmasters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10502,1 --Bloodmaul Ogres killed (8)
    .mob Bloodmaul Skirmisher
    .mob Bloodmaul Geomancer
    .mob Bloodmaul Lookout
    .mob Bloodmaul Brewmaster
step
    #label Along22
    #loop
    .goto 1949,39.79,84.05,0
    .goto 1949,39.79,84.05,40,0
    .goto 1949,41.67,84.53,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Drudgers|r. Loot them for |cRXP_LOOT_Draenethyst Mine Crystal|r. It can also be picked up from |cRXP_PICK_Draenethyst Mine Crystal|r on the ground
    .complete 10510,1 --Draenethyst Mine Crystal (5)
    .mob Bloodmaul Drudger
step
    #loop
    .goto 1949,43.42,77.59,0
    .goto 1949,43.42,77.59,40,0
    .goto 1949,46.96,78.41,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Skirmishers|r, |cRXP_ENEMY_Bloodmaul Geomancers|r, |cRXP_ENEMY_Bloodmaul Lookouts|r and |cRXP_ENEMY_Bloodmaul Brewmasters|r
    >>Kill |cRXP_ENEMY_Bloodmaul Brewmasters|r. Loot them for |cRXP_LOOT_Bloodmaul Brutebane Brew|r. It can also be picked up from |cRXP_PICK_Bloodmaul Brew Keg|r on the ground
    .complete 10502,1 --Bloodmaul Ogres killed (8)
    .complete 10511,1 --Bloodmaul Brutebane Brew (11)
    .mob Bloodmaul Skirmisher
    .mob Bloodmaul Geomancer
    .mob Bloodmaul Lookout
    .mob Bloodmaul Brewmaster
step
    #loop
    .goto 1949,46.09,79.74,0
    .goto 1949,46.09,79.74,40,0
    .goto 1949,45.14,76.42,40,0
    .goto 1949,46.29,76.99,40,0
    .goto 1949,46.89,75.26,40,0
    .goto 1949,47.46,73.96,40,0
    >>Interact with |cRXP_FRIENDLY_Bloodmaul Dire Wolf|r
    .complete 10506,1 --Bloodmaul Dire Wolf
    .target Bloodmaul Dire Wolf
step
    .goto 1949,36.21,67.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rina Moonspring|r
    .turnin 10506 >>Turn in A Dire Situation
    .target Rina Moonspring
step
    .goto 1949,36.22,66.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
    .turnin 10502 >>Turn in The Bloodmaul Ogres
    .accept 10504 >>Accept The Bladespire Ogres
    .target Commander Skyshadow
step
    .goto 1949,37.41,65.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Stouthammer|r
    .turnin 10510 >>Turn in Into the Draenethyst Mine
    .target Bronwyn Stouthammer
step
    .goto 1949,37.40,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgrim Stouthammer|r
    .turnin 10511 >>Turn in Strange Brew
    .accept 10512 >>Accept Getting the Bladespire Tanked
    .target Borgrim Stouthammer
step
    #completewith Along34
    >>As you go: Kill |cRXP_ENEMY_Bladespire Shamans|r, |cRXP_ENEMY_Bladespire Cooks|r, |cRXP_ENEMY_Korgaahs|r and |cRXP_ENEMY_Mugdorgs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10512,1 --Bladespire Shaman (8)
    .complete 10504,1 --Bladespire Ogres killed (8)
    .mob Bladespire Shaman
    .mob Bladespire Cook
    .mob Korgaah
    .mob Mugdorg
step
    .goto 1949,44.01,51.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
    .accept 10516 >>Accept The Trappings of a Vindicator
    .target Vindicator Vuuleen
step
    .goto 1949,38.34,52.38
    >>Kill |cRXP_ENEMY_Droggam|r and loot |cRXP_LOOT_Vindicator Vuuleen's Blade|r
    .complete 10516,1 --Vindicator Vuuleen's Blade (1)
    .mob Droggam
step
    .goto 1949,42.66,59.69
    >>Kill |cRXP_ENEMY_Mugdorg|r and loot |cRXP_LOOT_Vindicator Vuuleen's Shield|r
    .complete 10516,2 --Vindicator Vuuleen's Shield (1)
    .mob Mugdorg
step
    .goto 1949,44.01,51.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
    .turnin 10516 >>Turn in The Trappings of a Vindicator
    .accept 10517 >>Accept Gorr'Dim, Your Time Has Come...
    .target Vindicator Vuuleen
step
    .goto 1949,38.94,48.67
    >>Kill |cRXP_ENEMY_Gorr'Dim|r
    .complete 10517,1 --Gorr'Dim slain (1)
    .mob Gorr'Dim
step
    #label Along34
    .goto 1949,44.01,51.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vuuleen|r
    .turnin 10517 >>Turn in Gorr'Dim, Your Time Has Come...
    .accept 10518 >>Accept Planting the Banner
    .target Vindicator Vuuleen
step
    #loop
    .goto 1949,43.49,48.19,0
    .goto 1949,43.49,48.19,40,0
    .goto 1949,39.43,48.82,40,0
    .goto 1949,38.78,52.26,40,0
    >>Kill |cRXP_ENEMY_Bladespire Champion|r and loot |cRXP_LOOT_Bladespire Clan Banner|r
    >>Kill |cRXP_ENEMY_Bladespire Shamans|r, |cRXP_ENEMY_Bladespire Cooks|r, |cRXP_ENEMY_Korgaahs|r and |cRXP_ENEMY_Mugdorgs|r
    .complete 10518,1 --Bladespire Clan Banner (1)
    .complete 10512,1 --Bladespire Shaman (8)
    .complete 10504,1 --Bladespire Ogres killed (8)
    .mob Bladespire Champion
    .mob Bladespire Shaman
    .mob Bladespire Cook
    .mob Korgaah
    .mob Mugdorg
step
    .goto 1949,36.22,66.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
    .turnin 10504 >>Turn in The Bladespire Ogres
    .target Commander Skyshadow
step
    .goto 1949,37.40,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgrim Stouthammer|r
    .turnin 10512 >>Turn in Getting the Bladespire Tanked
    .target Borgrim Stouthammer
step
    .goto 1949,36.22,66.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
    .turnin 10518 >>Turn in Planting the Banner
    .target Commander Skyshadow
    .isQuestComplete 10518
step
    .goto 1949,36.22,66.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
    .accept 10580 >>Accept Where Did Those Darn Gnomes Go?
    .target Commander Skyshadow
    .isQuestTurnedIn 10518 --any of: Planting the Banner
    .xp <65,1
step
    .goto 1949,60.15,68.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r
    .accept 10632 >>Accept Cutting Your Teeth
    .target Razak Ironsides
    .isQuestTurnedIn 10584 --any of: Picking Up Some Power Converters
    .xp <65,1
step
    .goto 1949,60.53,68.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
    .accept 10657 >>Accept Ride the Lightning
    .target Toshley
    .isQuestTurnedIn 10584 --any of: Picking Up Some Power Converters
    .xp <65,1
step
    .goto 1949,60.23,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r
    .accept 10608 >>Accept Crystal Clear
    .target Nickwinkle the Metro-Gnome
step
    .goto 1949,55.11,72.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_R-3D0|r
    .turnin 10580 >>Turn in Where Did Those Darn Gnomes Go?
    .target R-3D0
    .isOnQuest 10580
step
    .goto 1949,55.11,72.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_R-3D0|r
    .accept 10581 >>Accept Follow the Breadcrumbs
    .target R-3D0
    .isQuestTurnedIn 10580 --any of: Where Did Those Darn Gnomes Go?
    .xp <65,1
step
    .goto 1949,60.53,68.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
    .turnin 10581 >>Turn in Follow the Breadcrumbs
    .target Toshley
    .isOnQuest 10581
step
    .goto 1949,60.98,68.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizit "Doc" Clocktock|r
    .accept 10609 >>Accept What Came First, the Drake or the Egg?
    .target Fizit "Doc" Clocktock
step
    .goto 1949,60.40,68.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy Dina|r
    .accept 10620 >>Accept Ridgespine Menace
    .target Dizzy Dina
    .isQuestTurnedIn 10584 --any of: Picking Up Some Power Converters
    .xp <65,1
step
    .goto 1949,66.90,56.92
    >>Kill |cRXP_ENEMY_Daggermaw Lashtail|r and loot |cRXP_LOOT_Extra Sharp Daggermaw Tooth|r
    .complete 10632,1 --Extra Sharp Daggermaw Tooth (1)
    .mob Daggermaw Lashtail
    .isOnQuest 10632
step
    .goto 1949,65.69,49.49
    >>Kill |cRXP_ENEMY_Ridgespine Stalkers|r
    .complete 10620,1 --Ridgespine Stalker slain (10)
    .mob Ridgespine Stalker
    .isOnQuest 10620
step
    #loop
    .goto 1949,68.05,65.99,0
    .goto 1949,68.05,65.99,40,0
    .goto 1949,67.45,66.63,40,0
    .goto 1949,68.77,67.14,40,0
    .goto 1949,68.58,68.78,40,0
    .goto 1949,68.11,69.79,40,0
    .goto 1949,67.98,71.41,40,0
    .goto 1949,68.62,72.33,40,0
    .goto 1949,68.13,73.87,40,0
    .goto 1949,69.19,73.78,40,0
    >>Interact with |cRXP_FRIENDLY_Scalewing Serpent|r
    .complete 10657,1 --Scalewing Serpent
    .target Scalewing Serpent
    .isOnQuest 10657
step
    #loop
    .goto 1949,67.27,75.44,0
    .goto 1949,67.27,75.44,40,0
    .goto 1949,65.07,76.65,40,0
    >>Kill |cRXP_ENEMY_Crystal Flayers|r
    >>Kill |cRXP_ENEMY_Nether Whelps|r. Loot them for |cRXP_LOOT_Proto-Nether Drake Essence|r
    >>Kill |cRXP_ENEMY_Nether Whelps|r. Loot them for |cRXP_LOOT_Adolescent Nether Drake Essence|r
    >>Kill |cRXP_ENEMY_Nether Whelps|r. Loot them for |cRXP_LOOT_Mature Nether Drake Essence|r
    .complete 10608,1 --Crystal Flayer slain (10)
    .complete 10609,1 --Proto-Nether Drake Essence (3)
    .complete 10609,2 --Adolescent Nether Drake Essence (3)
    .complete 10609,3 --Mature Nether Drake Essence (3)
    .mob Crystal Flayer
    .mob Nether Whelp
step
    .goto 1949,60.15,68.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razak Ironsides|r
    .turnin 10632 >>Turn in Cutting Your Teeth
    .target Razak Ironsides
    .isOnQuest 10632
step
    .goto 1949,60.98,68.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizit "Doc" Clocktock|r
    .turnin 10609 >>Turn in What Came First, the Drake or the Egg? while you are here
    .isQuestComplete 10609
    .target Fizit "Doc" Clocktock
step
    .goto 1949,60.23,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r
    .turnin 10608 >>Turn in Crystal Clear
    .accept 10594 >>Accept Gauging the Resonant Frequency
    .target Nickwinkle the Metro-Gnome
step
    .goto 1949,60.40,68.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy Dina|r
    .turnin 10620 >>Turn in Ridgespine Menace
    .target Dizzy Dina
    .isOnQuest 10620
step
    .goto 1949,60.40,68.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy Dina|r
    .accept 10671 >>Accept More than a Pound of Flesh
    .target Dizzy Dina
    .isQuestTurnedIn 10620 --any of: Ridgespine Menace
    .xp <65,1
step
    .goto 1949,59.77,73.83
    >>Singing crystal resonant frequency gauged
    .complete 10594,1 --Singing crystal resonant frequency gauged
step
    .goto 1949,60.23,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nickwinkle the Metro-Gnome|r
    .turnin 10594 >>Turn in Gauging the Resonant Frequency
    .target Nickwinkle the Metro-Gnome
step
    .goto 1949,60.98,68.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizit "Doc" Clocktock|r
    .turnin 10609 >>Turn in What Came First, the Drake or the Egg?
    .target Fizit "Doc" Clocktock
step
    .goto 1949,65.18,50.51
    >>Kill |cRXP_ENEMY_Scalewing Serpents|r. Loot them for |cRXP_LOOT_Scalewing Lightning Gland|r
    .complete 10657,2 --Scalewing Lightning Gland (5)
    .mob Scalewing Serpent
    .isOnQuest 10657
step
    #loop
    .goto 1949,65.82,45.13,0
    .goto 1949,65.82,45.13,40,0
    .goto 1949,67.03,42.08,40,0
    >>Kill |cRXP_ENEMY_Fiendling Flesh Beasts|r. Loot them for |cRXP_LOOT_Ether-Energized Flesh|r
    .complete 10671,1 --Ether-Energized Flesh (5)
    .mob Fiendling Flesh Beast
    .isOnQuest 10671
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10682 >>Accept A Time for Negotiation...
    .target Tree Warden Chawn
step
    .goto 1949,60.36,34.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Nuaar|r
    .complete 10682,1 --Overseer Nuaar
    .target Overseer Nuaar
step
    .goto 1949,61.68,39.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fhyn Leafshadow|r
    .fp Evergrove >> Get the Evergrove flight path
    .target Fhyn Leafshadow
    .subzoneskip 3951,1
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10682 >>Turn in A Time for Negotiation... while you are here
    .isQuestComplete 10682
    .target Tree Warden Chawn
step
    .goto 1949,61.25,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r
    .accept 10770 >>Accept Little Embers
    .accept 10771 >>Accept From the Ashes
    .target Mosswood the Ancient
step
    .goto 1949,61.99,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r
    .accept 10795 >>Accept A Date with Dorgok
    .target Commander Haephus Stonewall
step
    .goto 1949,61.99,37.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r
    .accept 10796 >>Accept Crush the Bloodmaul Camp!
    .target Lieutenant Fairweather
step
    .goto 1949,62.56,38.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faradrella|r
    .accept 10753 >>Accept Culling the Wild
    .target Faradrella
step
    #completewith Drop10810x1
    >>|cRXP_LOOT_Damaged Mask|r can drop from |cRXP_ENEMY_Fel Corrupter|r. Use it to start the quest if you get one
    .collect 31384,1,10810 --Damaged Mask (1)
    .accept 10810 >>Accept Damaged Mask
    .use 31384
step
    #loop
    .goto 1949,71.27,28.35,0
    .goto 1949,71.27,28.35,40,0
    .goto 1949,73.09,28.98,40,0
    >>Kill |cRXP_ENEMY_Fel Corrupters|r
    >>Kill |cRXP_ENEMY_Felsworn Scalewings|r
    .complete 10753,3 --Fel Corrupter slain (2)
    .complete 10753,1 --Felsworn Scalewing slain (4)
    .mob Fel Corrupter
    .mob Felsworn Scalewing
step
    #label Drop10810x1
    #loop
    .goto 1949,74.00,29.80,0
    .goto 1949,74.00,29.80,40,0
    .goto 1949,72.39,33.75,40,0
    >>Kill |cRXP_ENEMY_Felsworn Daggermaws|r
    .complete 10753,2 --Felsworn Daggermaw slain (4)
    .mob Felsworn Daggermaw
step
    #loop
    .goto 1949,71.66,22.35,0
    .goto 1949,71.66,22.35,40,0
    .goto 1949,71.59,18.47,40,0
    >>Click the |cRXP_PICK_Fertile Volcanic Soil|r
    >>Kill |cRXP_ENEMY_Scorch Imps|r
    .complete 10771,1 --Southern Volcanic Soil
    .complete 10771,2 --Central Volcanic Soil
    .complete 10771,3 --Northern Volcanic Soil
    .complete 10770,1 --Scorch Imp slain (8)
    .mob Scorch Imp
step
    .goto 1949,62.56,38.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faradrella|r
    .turnin 10753 >>Turn in Culling the Wild
    .target Faradrella
step
    .goto 1949,61.25,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r
    .turnin 10770 >>Turn in Little Embers
    .turnin 10771 >>Turn in From the Ashes
    .target Mosswood the Ancient
step
    .goto 1949,62.65,40.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
    .turnin 10810 >>Turn in Damaged Mask
    .target O'Mally Zapnabber
    .isOnQuest 10810
step
    .goto 1949,62.65,40.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
    .accept 10812 >>Accept Mystery Mask
    .target O'Mally Zapnabber
    .isQuestTurnedIn 10810 --any of: Damaged Mask
    .xp <65,1
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10812 >>Turn in Mystery Mask
    .target Wildlord Antelarion
    .isOnQuest 10812
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .accept 10819 >>Accept Felsworn Gas Mask
    .target Wildlord Antelarion
    .isQuestTurnedIn 10812 --any of: Mystery Mask
    .xp <65,1
step
    .goto 1949,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .turnin 10819 >>Turn in Felsworn Gas Mask
    .isOnQuest 10819
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10682 >>Turn in A Time for Negotiation...
    .accept 10713 >>Accept ...and a Time for Action
    .target Tree Warden Chawn
step
    .goto 1949,61.94,39.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
    .accept 10717 >>Accept Poaching from Poachers
    .target Samia Inkling
step
    #completewith Drop10719x1
    >>|cRXP_LOOT_Meeting Note|r can drop from |cRXP_ENEMY_Wyrmcult Poacher|r, |cRXP_ENEMY_Wyrmcult Hewer|r. Use it to start the quest if you get one
    .collect 31120,1,10719 --Meeting Note (1)
    .accept 10719 >>Accept Did You Get The Note?
    .use 31120
step
    #label Drop10719x1
    #loop
    .goto 1949,59.71,37.36,0
    .goto 1949,59.71,37.36,40,0
    .goto 1949,58.25,38.50,40,0
    .goto 1949,61.41,33.81,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Poachers|r. Loot them for |cRXP_LOOT_Wyrmcult Net|r
    >>Kill |cRXP_ENEMY_Wyrmcult Hewers|r
    .complete 10717,1 --Wyrmcult Net (5)
    .complete 10713,1 --Wyrmcult Hewer slain (10)
    .mob Wyrmcult Poacher
    .mob Wyrmcult Hewer
step
    #completewith Along81
    >>As you go: Kill |cRXP_ENEMY_Bloodmaul Maulers|r. Kill |cRXP_ENEMY_Bloodmaul Warlocks|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10796,1 --Bloodmaul Mauler slain (10)
    .complete 10796,2 --Bloodmaul Warlock slain (5)
    .mob Bloodmaul Mauler
    .mob Bloodmaul Warlock
step
    .goto 1949,55.14,24.04
    >>Kill |cRXP_ENEMY_Dorgok|r
    .complete 10795,1 --Dorgok slain (1)
    .mob Dorgok
step
    #label Along81
    .goto 1949,55.14,24.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorgok|r
    .accept 10797 >>Accept Favor of the Gronn
    .target Dorgok
step
    #loop
    .goto 1949,55.62,25.68,0
    .goto 1949,55.62,25.68,40,0
    .goto 1949,56.93,28.33,40,0
    .goto 1949,54.87,31.71,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Maulers|r
    >>Kill |cRXP_ENEMY_Bloodmaul Warlocks|r
    .complete 10796,1 --Bloodmaul Mauler slain (10)
    .complete 10796,2 --Bloodmaul Warlock slain (5)
    .mob Bloodmaul Mauler
    .mob Bloodmaul Warlock
step
    .goto 1949,61.99,37.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r
    .turnin 10796 >>Turn in Crush the Bloodmaul Camp!
    .target Lieutenant Fairweather
step
    .goto 1949,61.99,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r
    .turnin 10795 >>Turn in A Date with Dorgok
    .turnin 10797 >>Turn in Favor of the Gronn
    .accept 10798 >>Accept Pay the Baron a Visit
    .target Commander Haephus Stonewall
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10713 >>Turn in ...and a Time for Action
    .target Tree Warden Chawn
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10719 >>Turn in Did You Get The Note?
    .target Tree Warden Chawn
    .isOnQuest 10719
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10894 >>Accept Wyrmskull Watcher
    .target Tree Warden Chawn
    .isQuestTurnedIn 10719 --any of: Did You Get The Note?
    .xp <65,1
step
    .goto 1949,61.94,39.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
    .turnin 10717 >>Turn in Poaching from Poachers
    .accept 10747 >>Accept Whelps of the Wyrmcult
    .target Samia Inkling
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10798 >>Turn in Pay the Baron a Visit
    .accept 10799 >>Accept Into the Churning Gulch
    .target Baron Sablemane
step
    #loop
    .goto 1949,48.29,43.71,0
    .goto 1949,48.29,43.71,40,0
    .goto 1949,45.13,45.18,40,0
    >>Kill |cRXP_ENEMY_Greater Crust Bursters|r and |cRXP_ENEMY_Young Crust Bursters|r. Loot them for |cRXP_LOOT_Crust Burster Venom Gland|r
    .complete 10799,1 --Crust Burster Venom Gland (7)
    .mob Greater Crust Burster
    .mob Young Crust Burster
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10799 >>Turn in Into the Churning Gulch
    .accept 10800 >>Accept Goodnight, Gronn
    .target Baron Sablemane
step
    .goto 1949,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 10983 >>Turn in Mog'dorg the Wizened
    .target Mog'dorg the Wizened
    .isOnQuest 10983
step
    .goto 1949,60.89,47.78
    >>Pick up |cRXP_PICK_Grulloc's Sack|r from the ground
    .complete 10800,1 --Grulloc's Sack (1)
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10800 >>Turn in Goodnight, Gronn
    .accept 10801 >>Accept It's a Trap!
    .target Baron Sablemane
step
    .goto 1949,61.99,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r
    .turnin 10801 >>Turn in It's a Trap!
    .accept 10802 >>Accept Gorgrom the Dragon-Eater
    .target Commander Haephus Stonewall
step
    .goto 1949,61.99,37.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r
    .accept 10803 >>Accept Slaughter at Boulder'mok
    .target Lieutenant Fairweather
step
    #loop
    .goto 1949,31.51,22.08,0
    .goto 1949,31.51,22.08,40,0
    .goto 1949,29.91,22.95,40,0
    >>Kill |cRXP_ENEMY_Boulder'mok Brutes|r, |cRXP_ENEMY_Boulder'mok Shamans|r and |cRXP_ENEMY_Boulder'mok Chieftains|r. Loot them for |cRXP_LOOT_Grisly Totem|r
    .collect 31754,1,10802,1 --Grisly Totem (1)
    .mob Boulder'mok Brute
    .mob Boulder'mok Shaman
    .mob Boulder'mok Chieftain
step
    .goto 1949,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .turnin 10894 >>Turn in Wyrmskull Watcher
    .target Watcher Moonshade
    .isOnQuest 10894
step
    .goto 1949,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .accept 10893 >>Accept Longtail is the Lynchpin
    .target Watcher Moonshade
    .isQuestTurnedIn 10894 --any of: Wyrmskull Watcher
    .xp <65,1
step
    .goto 1949,45.19,32.49
    >>Kill |cRXP_ENEMY_Draaca Longtail|r
    .complete 10893,1 --Draaca Longtail slain (1)
    .mob Draaca Longtail
    .isOnQuest 10893
step
    .goto 1949,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .turnin 10893 >>Turn in Longtail is the Lynchpin
    .target Watcher Moonshade
    .isOnQuest 10893
step
    .goto 1949,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .accept 10722 >>Accept Meeting at the Blackwing Coven
    .target Watcher Moonshade
    .isQuestTurnedIn 10893 --any of: Longtail is the Lynchpin
    .xp <65,1
step
    #completewith Drop10719x2
    >>|cRXP_LOOT_Meeting Note|r can drop from |cRXP_ENEMY_Wyrmcult Poacher|r, |cRXP_ENEMY_Wyrmcult Hewer|r. Use it to start the quest if you get one
    .collect 31120,1,10719 --Meeting Note (1)
    .accept 10719 >>Accept Did You Get The Note?
    .use 31120
step
    #label Drop10719x2
    #loop
    .goto 1949,47.63,34.26,0
    .goto 1949,47.63,34.26,40,0
    .goto 1949,45.68,32.90,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Zealots|r, |cRXP_ENEMY_Wyrmcult Acolytes|r, |cRXP_ENEMY_Wyrmcult Blesseds|r and |cRXP_ENEMY_Wyrmcult Scouts|r. Loot them for |cRXP_LOOT_Costume Scraps|r
    .collect 31121,1,10722,1 --Costume Scraps (1)
    .mob Wyrmcult Zealot
    .mob Wyrmcult Acolyte
    .mob Wyrmcult Blessed
    .mob Wyrmcult Scout
    .isOnQuest 10722
step
    .goto 1949,30.65,22.10
    >>Interact with |cRXP_FRIENDLY_Gorgrom the Dragon-Eater|r
    .complete 10802,1 --Gorgrom the Dragon-Eater
    .target Gorgrom the Dragon-Eater
step
    #loop
    .goto 1949,31.51,22.08,0
    .goto 1949,31.51,22.08,40,0
    .goto 1949,29.91,22.95,40,0
    >>Kill |cRXP_ENEMY_Boulder'mok Brutes|r
    >>Kill |cRXP_ENEMY_Boulder'mok Shamans|r
    .complete 10803,1 --Boulder'mok Brute slain (5)
    .complete 10803,2 --Boulder'mok Shaman slain (3)
    .mob Boulder'mok Brute
    .mob Boulder'mok Shaman
step
    #completewith Drop10719x3
    >>|cRXP_LOOT_Meeting Note|r can drop from |cRXP_ENEMY_Wyrmcult Poacher|r, |cRXP_ENEMY_Wyrmcult Hewer|r. Use it to start the quest if you get one
    .collect 31120,1,10719 --Meeting Note (1)
    .accept 10719 >>Accept Did You Get The Note?
    .use 31120
step
    #label Drop10719x3
    .goto 1949,32.65,37.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kolphis Darkscale|r
    .complete 10722,1 --Kolphis Darkscale
    .target Kolphis Darkscale
    .isOnQuest 10722
step
    #loop
    .goto 1949,32.72,35.44,0
    .goto 1949,32.72,35.44,40,0
    .goto 1949,34.05,33.93,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Blackwhelps|r. Loot them for |cRXP_LOOT_Wyrmcult Blackwhelp|r
    .complete 10747,1 --Wyrmcult Blackwhelp (10)
    .mob Wyrmcult Blackwhelp
step
    .goto 1949,61.99,37.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fairweather|r
    .turnin 10803 >>Turn in Slaughter at Boulder'mok
    .target Lieutenant Fairweather
step
    .goto 1949,61.99,37.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Haephus Stonewall|r
    .turnin 10802 >>Turn in Gorgrom the Dragon-Eater
    .accept 10818 >>Accept Baron Sablemane Has Requested Your Presence
    .target Commander Haephus Stonewall
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10722 >>Turn in Meeting at the Blackwing Coven
    .target Tree Warden Chawn
    .isOnQuest 10722
step
    .goto 1949,61.94,39.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
    .turnin 10747 >>Turn in Whelps of the Wyrmcult
    .target Samia Inkling
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10818 >>Turn in Baron Sablemane Has Requested Your Presence
    .accept 10805 >>Accept Massacre at Gruul's Lair
    .target Baron Sablemane
step
    #loop
    .goto 1949,64.44,22.70,0
    .goto 1949,64.44,22.70,40,0
    .goto 1949,65.77,24.48,40,0
    .goto 1949,65.89,20.51,40,0
    >>Kill |cRXP_ENEMY_Bladespire Battlemages|r
    >>Kill |cRXP_ENEMY_Bladespire Enforcers|r
    >>Kill |cRXP_ENEMY_Fingrom|r
    >>Kill |cRXP_ENEMY_Bladespire Ravagers|r
    .complete 10805,2 --Bladespire Battlemage slain (5)
    .complete 10805,1 --Bladespire Enforcer slain (10)
    .complete 10805,4 --Fingrom slain (1)
    .complete 10805,3 --Bladespire Ravager slain (5)
    .mob Bladespire Battlemage
    .mob Bladespire Enforcer
    .mob Fingrom
    .mob Bladespire Ravager
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10805 >>Turn in Massacre at Gruul's Lair
    .target Baron Sablemane
step
    .goto 1949,60.40,68.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy Dina|r
    .turnin 10671 >>Turn in More than a Pound of Flesh
    .target Dizzy Dina
    .isOnQuest 10671
step
    .goto 1949,60.53,68.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
    .turnin 10657 >>Turn in Ride the Lightning
    .target Toshley
    .isOnQuest 10657
step
    .goto 1949,60.53,68.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
    .accept 10674 >>Accept Trapping the Light Fantastic
    .target Toshley
    .isQuestTurnedIn 10657 --any of: Ride the Lightning
    .xp <65,1
step
    .goto 1949,66.85,42.00
    >>Toshley would like you to use the Light Trap to catch 15 Razaani Light Orbs. Return to him at Toshley's Station in the Blade's Edge Mountains after you have done so.
    .complete 10674,1 --Razaani Light Orb (15)
    .target Razaani Light Orb
    .isOnQuest 10674
step
    .goto 1949,60.53,68.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
    .turnin 10674 >>Turn in Trapping the Light Fantastic
    .target Toshley
    .isOnQuest 10674
step
    .goto 1949,60.53,68.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
    .accept 10675 >>Accept Show Them Gnome Mercy!
    .target Toshley
    .isQuestTurnedIn 10674 --any of: Trapping the Light Fantastic
    .xp <65,1
step
    .goto 1949,66.39,44.08
    >>Pick up |cRXP_PICK_Collection of Souls|r from the ground
    .complete 10675,1 --Collection of Souls (1)
    .isOnQuest 10675
step
    .goto 1949,60.53,68.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshley|r
    .turnin 10675 >>Turn in Show Them Gnome Mercy!
    .target Toshley
    .isOnQuest 10675
step
    +|cRXP_WARN_That is all of Blade's Edge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Planting the Banner
step
    +|cRXP_WARN_Suggested next zones at level 65|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.7 levels of quests, starting around Jenai Starwhisper), |cRXP_FRIENDLY_Nagrand|r (about 0.6 levels of quests, starting around Huntress Bintook). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Blade's Edge Mountains is planned from level 68.|r Load its guide for level 68 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 65 - 69 Blade's Edge Mountains
#subweight -65
#name 68-69 Blade's Edge Mountains
--RouteBuilder:next
#next Zone Routes (Alliance)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Alliance)\69-70 Shadowmoon Valley;Zone Routes (Alliance)\65-66 Nagrand: around Huntress Bintook

step
    .goto 1949,41.29,46.71
    >>Kill |cRXP_ENEMY_Bladespire Champion|r and loot |cRXP_LOOT_Bladespire Clan Banner|r
    .complete 10518,1 --Bladespire Clan Banner (1)
    .mob Bladespire Champion
    .isOnQuest 10518
step
    .goto 1949,36.22,66.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Skyshadow|r
    .turnin 10518 >>Turn in Planting the Banner
    .target Commander Skyshadow
    .isQuestComplete 10518
step
    .goto 1949,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .accept 10567 >>Accept Creating the Pendant
    .target Timeon
step
    #loop
    .goto 1949,65.07,33.80,0
    .goto 1949,65.07,33.80,40,0
    .goto 1949,64.67,30.92,40,0
    >>Kill |cRXP_ENEMY_Ruuan'ok Cloudgazers|r, |cRXP_ENEMY_Ruuan'ok Skyfuries|r, |cRXP_ENEMY_Ruuan'ok Ravenguards|r and |cRXP_ENEMY_Ruuan'ok Matriarches|r. Loot them for |cRXP_LOOT_Ruuan'ok Claw|r
    .collect 30704,1,10567,1 --Ruuan'ok Claw (1)
    .mob Ruuan'ok Cloudgazer
    .mob Ruuan'ok Skyfury
    .mob Ruuan'ok Ravenguard
    .mob Ruuan'ok Matriarch
step
    .goto 1949,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .accept 10820 >>Accept Deceive thy Enemy
    .isQuestTurnedIn 10819 --any of: Felsworn Gas Mask
    .xp <65,1
step
    .goto 1949,74.77,40.47
    >>Kill |cRXP_ENEMY_Doomforge Attendants|r
    .complete 10820,1 --Doomforge Attendant slain (4)
    .mob Doomforge Attendant
    .isOnQuest 10820
step
    .goto 1949,75.48,40.00
    >>Kill |cRXP_ENEMY_Doomforge Engineers|r
    .complete 10820,2 --Doomforge Engineer slain (4)
    .mob Doomforge Engineer
    .isOnQuest 10820
step
    .goto 1949,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .turnin 10820 >>Turn in Deceive thy Enemy
    .isOnQuest 10820
step
    .goto 1949,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .accept 10821 >>Accept You're Fired!
    .isQuestTurnedIn 10820 --any of: Deceive thy Enemy
    .xp <65,1
step
    #loop
    .goto 1949,74.01,38.54,0
    .goto 1949,74.01,38.54,40,0
    .goto 1949,72.91,41.97,40,0
    >>Kill |cRXP_ENEMY_Anger Guard|r and loot |cRXP_LOOT_Camp Anger Key|r
    .collect 31536,1,10821,1 --Camp Anger Key (1)
    .mob Anger Guard
    .isOnQuest 10821
step
    .goto 1949,73.27,40.03
    >>Kill Doomcryer and report back to Wildlord Antelarion in Evergrove.
    .complete 10821,1 --Doomcryer (1)
    .isOnQuest 10821
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10821 >>Turn in You're Fired!
    .target Wildlord Antelarion
    .isOnQuest 10821
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .accept 10910 >>Accept Death's Door
    .target Wildlord Antelarion
    .isQuestTurnedIn 10821 --any of: You're Fired!
    .xp <65,1
step
    .goto 1949,64.47,33.14
    >>Kill |cRXP_ENEMY_Harbinger of the Raven|r and loot |cRXP_LOOT_Harbinger's Pendant|r
    .complete 10567,1 --Harbinger's Pendant (1)
    .mob Harbinger of the Raven
step
    .goto 1949,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .turnin 10567 >>Turn in Creating the Pendant
    .accept 10607 >>Accept Whispers of the Raven God
    .target Timeon
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .accept 10806 >>Accept Showdown
    .target Baron Sablemane
    .isQuestTurnedIn 10805 --any of: Massacre at Gruul's Lair
step
    .goto 1949,40.17,23.03
    >>Click the |cRXP_PICK_The Fourth Prophecy|r
    >>Click the |cRXP_PICK_The Third Prophecy|r
    .complete 10607,4 --The Fourth Prophecy
    .complete 10607,3 --The Third Prophecy
step
    .goto 1949,39.02,17.25
    >>Click the |cRXP_PICK_The First Prophecy|r
    .complete 10607,1 --The First Prophecy
step
    .goto 1949,42.47,21.64
    >>Click the |cRXP_PICK_The Second Prophecy|r
    .complete 10607,2 --The Second Prophecy
step
    .goto 1949,63.79,19.43
    >>Kill |cRXP_ENEMY_Goc|r
    .complete 10806,1 --Goc slain (1)
    .mob Goc
    .isOnQuest 10806
step
    .goto 1949,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .turnin 10607 >>Turn in Whispers of the Raven God
    .target Timeon
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10806 >>Turn in Showdown
    .target Baron Sablemane
    .isOnQuest 10806
step
    .goto 1949,60.78,69.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bossi Pentapiston|r
    .accept 11040 >>Accept Parts for the Rocket-Chief
    .target Bossi Pentapiston
step
    .goto 1949,61.15,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rip Pedalslam|r
    .accept 11043 >>Accept Building a Better Gryphon
    .target Rip Pedalslam
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10748 >>Accept Maxnar Must Die!
    .target Tree Warden Chawn
    .isQuestTurnedIn 10722 --any of: Meeting at the Blackwing Coven
    .xp <65,1
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10829 >>Accept Treebole Must Know
    .target Tree Warden Chawn
    .isQuestTurnedIn 10825 --any of: The Truth Unorbed
    .xp <66,1
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10910 >>Turn in Death's Door
    .unitscan Evergrove Druid
    .isOnQuest 10910
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10904 >>Accept Harvesting the Fel Ammunition
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10910 --any of: Death's Door
    .xp <65,1
step
    #loop
    .goto 1949,63.21,64.91,0
    .goto 1949,63.21,64.91,40,0
    .goto 1949,61.92,61.06,40,0
    .goto 1949,59.47,60.29,40,0
    >>Kill |cRXP_ENEMY_Deathforge Over-Smiths|r, |cRXP_ENEMY_Deathforge Technicians|r, |cRXP_ENEMY_Death's Watches|r and |cRXP_ENEMY_Death's Mights|r. Loot them for |cRXP_LOOT_Fel Cannonball|r
    .complete 10904,1 --Fel Cannonball (5)
    .mob Deathforge Over-Smith
    .mob Deathforge Technician
    .mob Death's Watch
    .mob Death's Might
    .isOnQuest 10904
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10904 >>Turn in Harvesting the Fel Ammunition
    .unitscan Evergrove Druid
    .isOnQuest 10904
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10911 >>Accept Fire At Will!
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10904 --any of: Harvesting the Fel Ammunition
    .xp <65,1
step
    .goto 1949,65.08,67.18
    >>Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use them to destroy both the South Warp-Gate and the North Warp-Gate. Then, use the Druid Signal to call out to an Evergrove Druid to report your success.
    .complete 10911,1 --Death's Door South Warp-Gate
    .target Death's Door South Warp-Gate
    .isOnQuest 10911
step
    .goto 1949,62.08,61.38
    >>Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use them to destroy both the South Warp-Gate and the North Warp-Gate. Then, use the Druid Signal to call out to an Evergrove Druid to report your success.
    .complete 10911,2 --Death's Door North Warp-Gate
    .target Death's Door North Warp-Gate
    .isOnQuest 10911
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10911 >>Turn in Fire At Will!
    .unitscan Evergrove Druid
    .isOnQuest 10911
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10912 >>Accept The Hound-Master
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10911 --any of: Fire At Will!
    .xp <65,1
step
    .goto 1949,63.04,60.41
    >>Kill |cRXP_ENEMY_Baelmon the Hound-Master|r
    .complete 10912,1 --Baelmon the Hound-Master slain (1)
    .mob Baelmon the Hound-Master
    .isOnQuest 10912
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10912 >>Turn in The Hound-Master
    .target Wildlord Antelarion
    .isOnQuest 10912
step
    .goto 1949,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .turnin 10829 >>Turn in Treebole Must Know
    .target Treebole
    .isOnQuest 10829
step
    .goto 1949,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .accept 10830 >>Accept Exorcising the Trees
    .target Treebole
    .isQuestTurnedIn 10829 --any of: Treebole Must Know
    .xp <66,1
step
    .goto 1949,39.41,27.43
    >>Pick up |cRXP_PICK_Grishnath Orb|r from the ground
    .collect 31495,1,10830,1 --Grishnath Orb (1)
    .isOnQuest 10830
step
    #loop
    .goto 1949,33.99,24.25,0
    .goto 1949,33.99,24.25,40,0
    .goto 1949,35.78,18.49,40,0
    >>Kill |cRXP_ENEMY_Dire Raven|r and loot |cRXP_LOOT_Dire Pinfeather|r
    .collect 31517,1,10830,1 --Dire Pinfeather (1)
    .mob Dire Raven
    .isOnQuest 10830
step
    #loop
    .goto 1949,34.30,17.66,0
    .goto 1949,34.30,17.66,40,0
    .goto 1949,33.77,22.92,40,0
    >>Kill |cRXP_ENEMY_Koi-Koi Spirits|r
    .complete 10830,1 --Leafbeard Exorcised (5)
    .mob Koi-Koi Spirit
    .isOnQuest 10830
step
    .goto 1949,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .turnin 10830 >>Turn in Exorcising the Trees
    .target Treebole
    .isOnQuest 10830
step
    .goto 1949,33.90,35.32
    >>Kill |cRXP_ENEMY_Maxnar the Ashmaw|r
    .complete 10748,1 --Maxnar the Ashmaw slain (1)
    .mob Maxnar the Ashmaw
    .isOnQuest 10748
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10748 >>Turn in Maxnar Must Die!
    .target Tree Warden Chawn
    .isOnQuest 10748
step
    +|cRXP_WARN_That is all of Blade's Edge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Netherstorm|r: Parts for the Rocket-Chief
    >>|cRXP_FRIENDLY_Shadowmoon Valley|r: Building a Better Gryphon
step
    +|cRXP_WARN_End of the Blade's Edge Mountains route.|r
step
    +|cRXP_WARN_Suggested next zones at level 68|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.3 levels of quests, starting around Image of Archmage Vargoth; 1 quest from here hands in there), |cRXP_FRIENDLY_Shadowmoon Valley|r (about 0.7 levels of quests, starting around Wing Commander Nuainn; 1 quest from here hands in there), |cRXP_FRIENDLY_Nagrand|r (about 0.6 levels of quests, starting around Huntress Bintook). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
