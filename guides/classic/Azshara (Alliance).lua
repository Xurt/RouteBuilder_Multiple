-- 47-57 Azshara: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 47, 50, 53, 56).
-- Split into 4 guides, listed under "47 - 57 Azshara" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/classic/Azshara.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 47 - 57 Azshara
#subweight -47
#name 47-48 Azshara

step
    .goto 1447/1,-3880.51,2718.83
    .fp Azshara>> Get the Azshara flight path
step
    .goto 1447/1,-3853.64,2698.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
    .accept 5535 >>Accept Spiritual Unrest
    .accept 5536 >>Accept A Land Filled with Hatred
    .target Loh'atu
step
    #loop
    .goto 1447/1,-4279.08,3239.88,0
    .goto 1447/1,-4279.08,3239.88,40,0
    .goto 1447/1,-4321.17,3287.56,40,0
    >>Kill |cRXP_ENEMY_Haldarr Satyrs|r
    >>Kill |cRXP_ENEMY_Haldarr Tricksters|r
    >>Kill |cRXP_ENEMY_Haldarr Felsworns|r
    .complete 5536,1 --Haldarr Satyr slain (6)
    .complete 5536,2 --Haldarr Trickster slain (2)
    .complete 5536,3 --Haldarr Felsworn slain (2)
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
step
    #loop
    .goto 1447/1,-4153.83,3054.59,0
    .goto 1447/1,-4153.83,3054.59,40,0
    .goto 1447/1,-4152.82,2950.78,40,0
    >>Kill |cRXP_ENEMY_Highborne Apparitions|r
    >>Kill |cRXP_ENEMY_Highborne Lichlings|r
    .complete 5535,1 --Highborne Apparition slain (6)
    .complete 5535,2 --Highborne Lichling slain (6)
    .mob Highborne Apparition
    .mob Highborne Lichling
step
    .goto 1447/1,-3853.64,2698.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
    .turnin 5535 >>Turn in Spiritual Unrest
    .turnin 5536 >>Turn in A Land Filled with Hatred
    .target Loh'atu
step << Rogue
    #loop
    .goto 1447/1,-5484.42,4450.03,0
    .goto 1447/1,-5484.42,4450.03,40,0
    .goto 1447/1,-5583.81,4598.47,40,0
    .goto 1447/1,-5512.31,4646.82,40,0
    >>Kill |cRXP_ENEMY_Timbermaw Shaman|r and loot |cRXP_LOOT_Sealed Azure Bag|r
    .complete 8234,1 --Sealed Azure Bag (1)
    .mob Timbermaw Shaman
    .isOnQuest 8234
step << Rogue
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8234 >>Turn in Sealed Azure Bag
    .target Archmage Xylem
    .isOnQuest 8234
step << Priest
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8254 >>Turn in Cenarion Aid
    .target Ogtinc
    .isOnQuest 8254
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8151 >>Turn in The Hunter's Charm
    .target Ogtinc
    .isOnQuest 8151
step << Mage
    .goto 1447/1,-4702.49,3648.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
    .turnin 8250 >>Turn in Magecraft
    .target Sanath Lim-yo
    .isOnQuest 8250
step
    .goto 1447/1,-5283.10,3642.59
    >>Open the |cRXP_PICK_Rune of Jin'yael|r. Loot it for |cRXP_LOOT_Rubbing: Rune of Jin'yael|r
    .complete 3449,2 --Rubbing: Rune of Jin'yael (1)
    .isOnQuest 3449
step
    .goto 1447/1,-5148.73,3543.86
    >>Open the |cRXP_PICK_Rune of Beth'Amara|r. Loot it for |cRXP_LOOT_Rubbing: Rune of Beth'Amara|r
    .complete 3449,1 --Rubbing: Rune of Beth'Amara (1)
    .isOnQuest 3449
step
    .goto 1447/1,-5272.96,3465.75
    >>Open the |cRXP_PICK_Rune of Markri|r. Loot it for |cRXP_LOOT_Rubbing: Rune of Markri|r
    .complete 3449,3 --Rubbing: Rune of Markri (1)
    .isOnQuest 3449
step
    .goto 1447/1,-5426.10,3172.59
    >>Open the |cRXP_PICK_Rune of Sael'hai|r. Loot it for |cRXP_LOOT_Rubbing: Rune of Sael'hai|r
    .complete 3449,4 --Rubbing: Rune of Sael'hai (1)
    .isOnQuest 3449
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .complete 2744,1 --Loramus Thalipedes
    .target Loramus Thalipedes
    .isOnQuest 2744
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 2744 >>Turn in The Demon Hunter
    .target Loramus Thalipedes
    .isOnQuest 2744
step
    .goto 1447/1,-7222.70,2251.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r
    .turnin 3449 >>Turn in Arcane Runes
    .target Pilot Xiggs Fuselighter
    .isOnQuest 3449
step
    .goto 1447/1,-7222.70,2251.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Xiggs Fuselighter|r
    .accept 3461 >>Accept Return to Tymor
    .target Pilot Xiggs Fuselighter
    .isQuestTurnedIn 3449 --any of: Arcane Runes
    .xp <45,1
step
    +|cRXP_WARN_That is all of Azshara for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ironforge|r: Return to Tymor
step
    +|cRXP_WARN_The rest of Azshara is planned from level 50.|r Load its guide for level 50 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 47 - 57 Azshara
#subweight -47
#name 50-51 Azshara

step
    .goto 1447/1,-5987.44,4603.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
    .accept 3601 >>Accept Kim'jael Indeed!
    .target Kim'jael
step
    #loop
    .goto 1447/1,-6243.52,4496.35,0
    .goto 1447/1,-6243.52,4496.35,40,0
    .goto 1447/1,-6167.46,4381.39,40,0
    >>Open the |cRXP_PICK_Kim'jael's Equipment|r. Loot it for |cRXP_LOOT_Kim'Jael's Compass|r
    >>Open the |cRXP_PICK_Kim'jael's Equipment|r. Loot it for |cRXP_LOOT_Kim'Jael's Scope|r
    >>Open the |cRXP_PICK_Kim'jael's Equipment|r. Loot it for |cRXP_LOOT_Kim'Jael's Stuffed Chicken|r
    >>Open the |cRXP_PICK_Kim'jael's Equipment|r. Loot it for |cRXP_LOOT_Kim'Jael's Wizzlegoober|r
    .complete 3601,1 --Kim'Jael's Compass (1)
    .complete 3601,2 --Kim'Jael's Scope (1)
    .complete 3601,3 --Kim'Jael's Stuffed Chicken (1)
    .complete 3601,4 --Kim'Jael's Wizzlegoober (1)
step
    .goto 1447/1,-5987.44,4603.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 3601 >>Turn in Kim'jael Indeed!
    .accept 5534 >>Accept Kim'jael's "Missing" Equipment
    .target Kim'jael
step
    #loop
    .goto 1447/1,-5724.77,3653.07,0
    .goto 1447/1,-5724.77,3653.07,40,0
    .goto 1447/1,-5579.75,3596.27,40,0
    .goto 1447/1,-5611.69,3480.29,40,0
    .goto 1447/1,-5748.10,3413.68,40,0
    >>Kill |cRXP_ENEMY_Spitelash Sirens|r, |cRXP_ENEMY_Spitelash Myrmidons|r, |cRXP_ENEMY_Spitelash Battlemasters|r and |cRXP_ENEMY_Spitelash Enchantress|r. Loot them for |cRXP_LOOT_Some Rune|r
    .complete 5534,1 --Some Rune (1)
    .mob Spitelash Siren
    .mob Spitelash Myrmidon
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
step
    .goto 1447/1,-5987.44,4603.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
    .turnin 5534 >>Turn in Kim'jael's "Missing" Equipment
    .target Kim'jael
step
    .goto 1447/1,-6144.64,4382.74
    .xp 53.5 >> Grind |cRXP_ENEMY_Blood Elves|r until you are 50% into level 53
step
    .goto 1447/1,-6144.64,4382.74
    .xp 54+20000 >> Grind |cRXP_ENEMY_Blood Elves|r until you are 20,000XP into level 54
step << Mage
    +|cRXP_WARN_The rest of Azshara is planned from level 53.|r Load its guide for level 53 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage
#version 1
#group Zone Routes (Alliance)
#subgroup 47 - 57 Azshara
#subweight -47
#name 53-54 Azshara

step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 8251 >>Accept Magic Dust
    .target Archmage Xylem
step << Mage
    #loop
    .goto 1447/1,-6127.40,4334.73,0
    .goto 1447/1,-6127.40,4334.73,40,0
    .goto 1447/1,-6251.13,4378.69,40,0
    >>Kill |cRXP_ENEMY_Blood Elf Surveyors|r and |cRXP_ENEMY_Blood Elf Reclaimers|r. Loot them for |cRXP_LOOT_Glittering Dust|r
    .complete 8251,1 --Glittering Dust (10)
    .mob Blood Elf Surveyor
    .mob Blood Elf Reclaimer
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8251 >>Turn in Magic Dust
    .accept 8252 >>Accept The Siren's Coral
    .target Archmage Xylem
step << Mage
    #loop
    .goto 1447/1,-5514.84,3589.84,0
    .goto 1447/1,-5514.84,3589.84,40,0
    .goto 1447/1,-5715.65,3650.70,40,0
    .goto 1447/1,-5790.70,3521.54,40,0
    >>Kill |cRXP_ENEMY_Spitelash Sirens|r. Loot them for |cRXP_LOOT_Enchanted Coral|r
    .complete 8252,1 --Enchanted Coral (6)
    .mob Spitelash Siren
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8252 >>Turn in The Siren's Coral
    .accept 8253 >>Accept Destroy Morphaz
    .target Archmage Xylem
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8253 >>Turn in Destroy Morphaz
    .target Archmage Xylem
    .isQuestComplete 8253
step << Rogue
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 8235 >>Accept Encoded Fragments
    .target Archmage Xylem
    .isQuestTurnedIn 8234 --any of: Sealed Azure Bag
    .xp <50,1
step << Rogue
    #loop
    .goto 1447/1,-6914.39,4345.21,0
    .goto 1447/1,-6914.39,4345.21,40,0
    .goto 1447/1,-6906.79,4519.35,40,0
    >>Kill |cRXP_ENEMY_Forest Oozes|r. Loot them for |cRXP_LOOT_Encoded Fragment|r
    .complete 8235,1 --Encoded Fragment (10)
    .mob Forest Ooze
    .isOnQuest 8235
step << Rogue
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8235 >>Turn in Encoded Fragments
    .target Archmage Xylem
    .isOnQuest 8235
step << Rogue
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 8236 >>Accept The Azure Key
    .target Archmage Xylem
    .isQuestTurnedIn 8235 --any of: Encoded Fragments
    .xp <50,1
step << Priest
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8255 >>Accept Of Coursers We Know
    .target Ogtinc
    .isQuestTurnedIn 8254 --any of: Cenarion Aid
    .xp <50,1
step << Priest
    #loop
    .goto 1447/1,-5746.07,4454.09,0
    .goto 1447/1,-5746.07,4454.09,40,0
    .goto 1447/1,-5824.67,4447.33,40,0
    .goto 1447/1,-5954.48,4517.99,40,0
    >>Kill |cRXP_ENEMY_Mosshoof Coursers|r. Loot them for |cRXP_LOOT_Healthy Courser Gland|r
    .complete 8255,1 --Healthy Courser Gland (4)
    .mob Mosshoof Courser
    .isOnQuest 8255
step << Priest
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8255 >>Turn in Of Coursers We Know
    .target Ogtinc
    .isOnQuest 8255
step << Priest
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8256 >>Accept The Ichor of Undeath
    .target Ogtinc
    .isQuestTurnedIn 8255 --any of: Of Coursers We Know
    .xp <50,1
step << Priest
    #loop
    .goto 1447/1,-4153.83,3054.59,0
    .goto 1447/1,-4153.83,3054.59,40,0
    .goto 1447/1,-4153.32,3023.82,40,0
    >>Kill |cRXP_ENEMY_Highborne Apparitions|r, |cRXP_ENEMY_Highborne Lichlings|r and |cRXP_ENEMY_Lingering Highbornes|r. Loot them for |cRXP_LOOT_Ichor of Undeath|r
    .complete 8256,1 --Ichor of Undeath (1)
    .mob Highborne Apparition
    .mob Highborne Lichling
    .mob Lingering Highborne
    .isOnQuest 8256
step << Priest
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8256 >>Turn in The Ichor of Undeath
    .target Ogtinc
    .isOnQuest 8256
step << Priest
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8257 >>Accept Blood of Morphaz
    .target Ogtinc
    .isQuestTurnedIn 8256 --any of: The Ichor of Undeath
    .xp <50,1
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8153 >>Accept Courser Antlers
    .target Ogtinc
    .isQuestTurnedIn 8151 --any of: The Hunter's Charm
    .xp <50,1
step << Hunter
    #loop
    .goto 1447/1,-5746.07,4454.09,0
    .goto 1447/1,-5746.07,4454.09,40,0
    .goto 1447/1,-5824.67,4447.33,40,0
    .goto 1447/1,-5954.48,4517.99,40,0
    >>Kill |cRXP_ENEMY_Mosshoof Courser|r and loot |cRXP_LOOT_Perfect Courser Antler|r
    .complete 8153,1 --Perfect Courser Antler (1)
    .mob Mosshoof Courser
    .isOnQuest 8153
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8153 >>Turn in Courser Antlers
    .target Ogtinc
    .isOnQuest 8153
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8231 >>Accept Wavethrashing
    .target Ogtinc
    .isQuestTurnedIn 8153 --any of: Courser Antlers
    .xp <50,1
step << Hunter
    #loop
    .goto 1447/1,-7545.20,4941.66,0
    .goto 1447/1,-7545.20,4941.66,40,0
    .goto 1447/1,-7653.72,4915.29,40,0
    .goto 1447/1,-7749.05,4811.49,40,0
    >>Kill |cRXP_ENEMY_Young Wavethrashers|r, |cRXP_ENEMY_Wavethrashers|r and |cRXP_ENEMY_Great Wavethrashers|r. Loot them for |cRXP_LOOT_Wavethrasher Scales|r
    .complete 8231,1 --Wavethrasher Scales (6)
    .mob Young Wavethrasher
    .mob Wavethrasher
    .mob Great Wavethrasher
    .isOnQuest 8231
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8231 >>Turn in Wavethrashing
    .target Ogtinc
    .isOnQuest 8231
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8232 >>Accept The Green Drake
    .target Ogtinc
    .isQuestTurnedIn 8231 --any of: Wavethrashing
    .xp <50,1
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8232 >>Turn in The Green Drake
    .target Ogtinc
    .isQuestComplete 8232
step
    +|cRXP_WARN_That is all of Azshara for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Alterac Mountains|r: The Azure Key << Rogue
    >>|cRXP_FRIENDLY_Felwood|r: Blood of Morphaz << Priest
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Destroy Morphaz << Mage
step
    +|cRXP_WARN_The rest of Azshara is planned from level 56.|r Load its guide for level 56 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 47 - 57 Azshara
#subweight -47
#name 56-57 Azshara

step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .accept 6805 >>Accept Stormers and Rumblers
    .accept 6804 >>Accept Poisoned Water
    .target Duke Hydraxis
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6804 >>Turn in Poisoned Water
    .target Duke Hydraxis
    .isQuestComplete 6804
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6805 >>Turn in Stormers and Rumblers
    .target Duke Hydraxis
    .isQuestComplete 6805
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .accept 3141 >>Accept Loramus
    .target Loramus Thalipedes
    .isQuestTurnedIn 2744 --any of: The Demon Hunter
    .xp <45,1
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .complete 3141,1 --Loramus Thalipedes (10)
    .target Loramus Thalipedes
    .isOnQuest 3141
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 3141 >>Turn in Loramus
    .target Loramus Thalipedes
    .isOnQuest 3141
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .accept 3508 >>Accept Breaking the Ward
    .target Loramus Thalipedes
    .isQuestTurnedIn 3141 --any of: Loramus
    .xp <45,1
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 3508 >>Turn in Breaking the Ward
    .target Loramus Thalipedes
    .isOnQuest 3508
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .accept 3509 >>Accept The Name of the Beast
    .target Loramus Thalipedes
    .isQuestTurnedIn 3508 --any of: Breaking the Ward
    .xp <45,1
step
    .goto 1447/1,-7188.22,3894.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Arkkoroc|r
    .turnin 3509 >>Turn in The Name of the Beast
    .target Lord Arkkoroc
    .isOnQuest 3509
step
    .goto 1447/1,-7188.22,3894.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Arkkoroc|r
    .accept 3510 >>Accept The Name of the Beast
    .target Lord Arkkoroc
    .isQuestTurnedIn 3509 --any of: The Name of the Beast
    .xp <45,1
step
    .goto 1447/1,-6153.77,3827.20
    >>Kill |cRXP_ENEMY_Hetaeras|r. Loot them for |cRXP_LOOT_Hetaera's Bruised Head|r
    .complete 3510,3 --Hetaera's Bruised Head (10)
    .mob Hetaera
    .isOnQuest 3510
step
    .goto 1447/1,-6153.77,3827.20
    >>Kill |cRXP_ENEMY_Hetaeras|r. Loot them for |cRXP_LOOT_Hetaera's Bloodied Head|r
    .complete 3510,2 --Hetaera's Bloodied Head (10)
    .mob Hetaera
    .isOnQuest 3510
step
    .goto 1447/1,-6153.77,3827.20
    >>Kill |cRXP_ENEMY_Hetaeras|r. Loot them for |cRXP_LOOT_Hetaera's Beaten Head|r
    .complete 3510,1 --Hetaera's Beaten Head (10)
    .mob Hetaera
    .isOnQuest 3510
step
    .goto 1447/1,-7188.22,3894.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Arkkoroc|r
    .turnin 3510 >>Turn in The Name of the Beast
    .target Lord Arkkoroc
    .isOnQuest 3510
step
    .goto 1447/1,-7188.22,3894.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Arkkoroc|r
    .accept 3511 >>Accept The Name of the Beast
    .target Lord Arkkoroc
    .isQuestTurnedIn 3510 --any of: The Name of the Beast
    .xp <45,1
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 3511 >>Turn in The Name of the Beast
    .target Loramus Thalipedes
    .isOnQuest 3511
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .accept 3602 >>Accept Azsharite
    .target Loramus Thalipedes
    .isQuestTurnedIn 3511 --any of: The Name of the Beast
    .xp <45,1
step
    #loop
    .goto 1447/1,-6335.81,2678.59,0
    .goto 1447/1,-6335.81,2678.59,40,0
    .goto 1447/1,-6459.54,2438.53,40,0
    .goto 1447/1,-6452.95,2365.15,40,0
    .goto 1447/1,-6287.13,2287.05,40,0
    .goto 1447/1,-5932.68,2455.09,40,0
    .goto 1447/1,-5963.61,2477.75,40,0
    >>Loot the |cRXP_PICK_Azsharite Formations|r for |cRXP_LOOT_Crystallized Azsharite|r
    .complete 3602,1 --Crystallized Azsharite (20)
    .isOnQuest 3602
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .turnin 3602 >>Turn in Azsharite
    .target Loramus Thalipedes
    .isOnQuest 3602
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .accept 3621 >>Accept The Formation of Felbane
    .target Loramus Thalipedes
    .isQuestTurnedIn 3602 --any of: Azsharite
    .xp <45,1
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8253 >>Turn in Destroy Morphaz
    .target Archmage Xylem
    .isQuestComplete 8253
step
    +|cRXP_WARN_That is all of Azshara for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stranglethorn Vale|r: The Formation of Felbane
    >>|cRXP_FRIENDLY_Eastern Plaguelands and back here|r: Poisoned Water
    >>|cRXP_FRIENDLY_Silithus and back here|r: Stormers and Rumblers
step
    +|cRXP_WARN_End of the Azshara route.|r
]])
