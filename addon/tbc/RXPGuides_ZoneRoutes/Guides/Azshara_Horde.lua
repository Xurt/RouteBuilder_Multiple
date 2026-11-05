-- 47-60 Azshara: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 47, 50, 56, 61).
-- Split into 4 guides, listed under "47 - 62 Azshara" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Azshara.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 47 - 62 Azshara
#subweight -47
#name 47-48 Azshara
--RouteBuilder:next
#next Zone Routes (Horde)\46-48 The Hinterlands: around Huntsman Markhor

step
    .goto 1447/1,-3853.64,2698.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
    .accept 5536 >>Accept A Land Filled with Hatred
    .accept 5535 >>Accept Spiritual Unrest
    .target Loh'atu
step
    #loop
    .goto 1447/1,-4012.86,2897.02,0
    .goto 1447/1,-4012.86,2897.02,40,0
    .goto 1447/1,-4152.82,2950.78,40,0
    .goto 1447/1,-4153.83,3054.59,40,0
    >>Kill |cRXP_ENEMY_Highborne Apparitions|r
    >>Kill |cRXP_ENEMY_Highborne Lichlings|r
    .complete 5535,1 --Highborne Apparition slain (6)
    .complete 5535,2 --Highborne Lichling slain (6)
    .mob Highborne Apparition
    .mob Highborne Lichling
step
    #loop
    .goto 1447/1,-4279.08,3239.88,0
    .goto 1447/1,-4279.08,3239.88,40,0
    .goto 1447/1,-4321.17,3287.56,40,0
    >>Kill |cRXP_ENEMY_Haldarr Tricksters|r
    >>Kill |cRXP_ENEMY_Haldarr Felsworns|r
    >>Kill |cRXP_ENEMY_Haldarr Satyrs|r
    .complete 5536,2 --Haldarr Trickster slain (2)
    .complete 5536,3 --Haldarr Felsworn slain (2)
    .complete 5536,1 --Haldarr Satyr slain (6)
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
    .mob Haldarr Satyr
step
    .goto 1447/1,-3853.64,2698.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loh'atu|r
    .turnin 5536 >>Turn in A Land Filled with Hatred
    .turnin 5535 >>Turn in Spiritual Unrest
    .target Loh'atu
step
    .goto 1447/1,-4392.67,3661.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kroum|r
    .fp Azshara >>Get the Azshara Flight Path
    .target Kroum
step
    .goto 1447/1,-4405.85,3601.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 3504 >>Turn in Betrayed
    .target Ag'tor Bloodfist
    .isOnQuest 3504
step
    .goto 1447/1,-4421.06,3603.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3562 >>Turn in Magatha's Payment to Jediga
    .target Jediga
    .isOnQuest 3562
step
    .goto 1447/1,-4421.06,3603.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3563 >>Turn in Jes'rimon's Payment to Jediga
    .target Jediga
    .isOnQuest 3563
step
    .goto 1447/1,-4421.06,3603.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3564 >>Turn in Andron's Payment to Jediga
    .target Jediga
    .isOnQuest 3564
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .turnin 8151 >>Turn in The Hunter's Charm
    .target Ogtinc
    .isOnQuest 8151
step << Rogue
    #loop
    .goto 1447/1,-5377.42,4605.91,0
    .goto 1447/1,-5377.42,4605.91,40,0
    .goto 1447/1,-5379.96,4683.34,40,0
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
step << Mage
    .goto 1447/1,-4702.49,3648.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath Lim-yo|r
    .turnin 8250 >>Turn in Magecraft
    .target Sanath Lim-yo
    .isOnQuest 8250
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
    +|cRXP_WARN_Suggested next zones at level 47|r: |cRXP_FRIENDLY_The Hinterlands|r (about 0.8 levels of quests, starting around Huntsman Markhor). Completing this step loads the guide for The Hinterlands --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Azshara is planned from level 50.|r Load its guide for level 50 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 47 - 62 Azshara
#subweight -47
#name 50-51 Azshara: around Jediga
--RouteBuilder:next
#next Zone Routes (Horde)\50-52 Un'Goro Crater: around Torwa Pathfinder

step
    .goto 1447/1,-4405.85,3601.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .accept 3505 >>Accept Betrayed
    .target Ag'tor Bloodfist
    .isQuestTurnedIn 3504 --any of: Betrayed
    .xp <44,1
step
    .goto 1447/1,-4421.06,3603.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
    .accept 3517 >>Accept Stealing Knowledge
    .target Jediga
step
    .goto 1447/1,-4403.82,3614.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gruul Darkblade|r
    .target Gruul Darkblade
    .home >>Set your Hearthstone to Gruul Darkblade's inn
step << Mage
    .xp 50 >>Grind to level 50 (Magic Dust needs it)
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 8251 >>Accept Magic Dust
    .target Archmage Xylem
step << Rogue
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 8235 >>Accept Encoded Fragments
    .target Archmage Xylem
    .isQuestTurnedIn 8234 --any of: Sealed Azure Bag
    .xp <50,1
step << Rogue
    #loop
    .goto 1447/1,-5824.67,4447.33,0
    .goto 1447/1,-5824.67,4447.33,40,0
    .goto 1447/1,-5913.41,4366.85,40,0
    .goto 1447/1,-5968.17,4474.04,40,0
    >>Kill |cRXP_ENEMY_Thunderhead Hippogryphs|r, |cRXP_ENEMY_Thunderhead Stagwings|r, |cRXP_ENEMY_Thunderhead Skystormers|r and |cRXP_ENEMY_Thunderhead Patriarches|r. Loot them for |cRXP_LOOT_Encoded Fragment|r
    .complete 8235,1 --Encoded Fragment (10)
    .mob Thunderhead Hippogryph
    .mob Thunderhead Stagwing
    .mob Thunderhead Skystormer
    .mob Thunderhead Patriarch
    .isOnQuest 8235
step
    .goto 1447/1,-5987.44,4603.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim'jael|r
    .accept 3601 >>Accept Kim'jael Indeed!
    .target Kim'jael
step << Mage
    #loop
    .goto 1447/1,-6127.40,4334.73,0
    .goto 1447/1,-6127.40,4334.73,40,0
    .goto 1447/1,-6251.13,4378.69,40,0
    >>Kill |cRXP_ENEMY_Blood Elf Surveyors|r and |cRXP_ENEMY_Blood Elf Reclaimers|r. Loot them for |cRXP_LOOT_Glittering Dust|r
    .complete 8251,1 --Glittering Dust (10)
    .mob Blood Elf Surveyor
    .mob Blood Elf Reclaimer
step
    #loop
    .goto 1447/1,-6127.40,4334.73,0
    .goto 1447/1,-6127.40,4334.73,40,0
    .goto 1447/1,-6258.73,4356.37,40,0
    >>Kill |cRXP_ENEMY_Blood Elf Reclaimers|r
    .complete 3505,1 --Blood Elf Reclaimer slain (10)
    .mob Blood Elf Reclaimer
    .isOnQuest 3505
step
    #loop
    .goto 1447/1,-6124.86,4330.33,0
    .goto 1447/1,-6124.86,4330.33,40,0
    .goto 1447/1,-6256.20,4380.72,40,0
    >>Kill |cRXP_ENEMY_Blood Elf Surveyors|r
    .complete 3505,2 --Blood Elf Surveyor slain (10)
    .mob Blood Elf Surveyor
    .isOnQuest 3505
step
    .goto 1447/1,-6283.58,4286.38
    >>Find Magus Rimtori's camp
    .complete 3505,3 --Find Magus Rimtori's camp
    .isOnQuest 3505
step
    .goto 1447/1,-6294.74,4283.34
    >>Click the |cRXP_PICK_Kaldorei Tome of Summoning|r
    .turnin 3505 >>Turn in Betrayed
    .isOnQuest 3505
step
    #loop
    .goto 1447/1,-6167.46,4381.39,0
    .goto 1447/1,-6167.46,4381.39,40,0
    .goto 1447/1,-6243.52,4496.35,40,0
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
step << Hunter
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8153 >>Accept Courser Antlers
    .target Ogtinc
    .isQuestTurnedIn 8151 --any of: The Hunter's Charm
    .xp <50,1
step << Priest
    .goto 1447/1,-5427.12,3900.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogtinc|r
    .accept 8255 >>Accept Of Coursers We Know
    .target Ogtinc
    .isQuestTurnedIn 8254 --any of: Cenarion Aid
    .xp <50,1
step
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Spitelash Sirens|r, |cRXP_ENEMY_Spitelash Myrmidons|r, |cRXP_ENEMY_Spitelash Battlemasters|r and |cRXP_ENEMY_Spitelash Enchantress|r. Loot them for |cRXP_LOOT_Some Rune|r. |cRXP_WARN_Anything left is finished later|r
    .complete 5534,1 --Some Rune (1)
    .mob Spitelash Siren
    .mob Spitelash Myrmidon
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
step
    #label Along16
    #loop
    .goto 1447/1,-5274.99,3431.26,0
    .goto 1447/1,-5274.99,3431.26,40,0
    .goto 1447/1,-5153.29,3498.89,40,0
    .goto 1447/1,-5097.51,3346.73,40,0
    >>Pick up |cRXP_PICK_Tablet of Beth'Amara|r from the ground
    >>Pick up |cRXP_PICK_Tablet of Jin'yael|r from the ground
    >>Pick up |cRXP_PICK_Tablet of Markri|r from the ground
    >>Pick up |cRXP_PICK_Tablet of Sael'hai|r from the ground
    .complete 3517,1 --Tablet of Beth'Amara (1)
    .complete 3517,2 --Tablet of Jin'yael (1)
    .complete 3517,3 --Tablet of Markri (1)
    .complete 3517,4 --Tablet of Sael'hai (1)
step
    #loop
    .goto 1447/1,-5579.75,3596.27,0
    .goto 1447/1,-5579.75,3596.27,40,0
    .goto 1447/1,-5611.69,3480.29,40,0
    .goto 1447/1,-5748.10,3413.68,40,0
    .goto 1447/1,-5724.77,3653.07,40,0
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
    #completewith next
    .hs >>Hearth to Gruul Darkblade's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1447/1,-4421.06,3603.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3517 >>Turn in Stealing Knowledge
    .accept 3518 >>Accept Delivery to Magatha
    .accept 3541 >>Accept Delivery to Jes'rimon
    .accept 3542 >>Accept Delivery to Andron Gant
    .accept 3561 >>Accept Delivery to Archmage Xylem
    .target Jediga
step
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8251 >>Turn in Magic Dust << Mage
    .turnin 3561 >>Turn in Delivery to Archmage Xylem
    .accept 8252 >>Accept The Siren's Coral << Mage
    .accept 3565 >>Accept Xylem's Payment to Jediga
    .target Archmage Xylem
step << Mage
    #loop
    .goto 1447/1,-5155.32,3686.21,0
    .goto 1447/1,-5155.32,3686.21,40,0
    .goto 1447/1,-5249.64,3723.74,40,0
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
step
    .goto 1447/1,-4421.06,3603.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r
    .turnin 3565 >>Turn in Xylem's Payment to Jediga
    .target Jediga
step << Hunter
    #loop
    .goto 1447/1,-5091.43,3084.68,0
    .goto 1447/1,-5091.43,3084.68,40,0
    .goto 1447/1,-5170.03,2951.46,40,0
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
    .goto 1447/1,-7513.26,4912.25,0
    .goto 1447/1,-7513.26,4912.25,40,0
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
step << Priest
    #loop
    .goto 1447/1,-5091.43,3084.68,0
    .goto 1447/1,-5091.43,3084.68,40,0
    .goto 1447/1,-5170.03,2951.46,40,0
    .goto 1447/1,-5335.84,2976.14,40,0
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
    .goto 1447/1,-5273.98,3639.88,0
    .goto 1447/1,-5273.98,3639.88,40,0
    .goto 1447/1,-5118.30,3719.68,40,0
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
step
    +|cRXP_WARN_That is all of Azshara for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Alterac Mountains|r: The Azure Key << Rogue
    >>|cRXP_FRIENDLY_Felwood|r: Blood of Morphaz << Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Delivery to Jes'rimon
    >>|cRXP_FRIENDLY_Thunder Bluff|r: Delivery to Magatha
    >>|cRXP_FRIENDLY_Undercity|r: Delivery to Andron Gant
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Destroy Morphaz << Mage
step
    +|cRXP_WARN_Suggested next zones at level 50|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.9 levels of quests, starting around Torwa Pathfinder). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Azshara is planned from level 56.|r Load its guide for level 56 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 47 - 62 Azshara
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
    .goto 1447/1,-6294.74,4283.34
    >>Click the |cRXP_PICK_Kaldorei Tome of Summoning|r
    .accept 3506 >>Accept Betrayed
    .isQuestTurnedIn 3505 --any of: Betrayed
    .xp <44,1
step
    .goto 1447/1,-6294.74,4280.97
    >>Kill |cRXP_ENEMY_Magus Rimtori|r and loot |cRXP_LOOT_Head of Magus Rimtori|r
    .complete 3506,1 --Head of Magus Rimtori (1)
    .mob Magus Rimtori
    .isOnQuest 3506
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8253 >>Turn in Destroy Morphaz
    .target Archmage Xylem
    .isQuestComplete 8253
step
    .goto 1447/1,-4405.85,3601.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 3506 >>Turn in Betrayed
    .target Ag'tor Bloodfist
    .isOnQuest 3506
step
    .goto 1447/1,-4405.85,3601.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .accept 3507 >>Accept Betrayed
    .target Ag'tor Bloodfist
    .isQuestTurnedIn 3506 --any of: Betrayed
    .xp <44,1
step
    +|cRXP_WARN_That is all of Azshara for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Orgrimmar|r: Betrayed
    >>|cRXP_FRIENDLY_Eastern Plaguelands and back here|r: Poisoned Water
    >>|cRXP_FRIENDLY_Silithus and back here|r: Stormers and Rumblers
step << Mage
    +|cRXP_WARN_The rest of Azshara is planned from level 61.|r Load its guide for level 61 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Mage
#version 1
#group Zone Routes (Horde)
#subgroup 47 - 62 Azshara
#subweight -47
#name 61-62 Azshara
--RouteBuilder:next
#next Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel;Zone Routes (Horde)\62-64 Terokkar Forest: around Tooki

step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 8253 >>Turn in Destroy Morphaz
    .target Archmage Xylem
    .isQuestComplete 8253
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .accept 9362 >>Accept Warlord Krellian
    .target Archmage Xylem
step << Mage
    .goto 1447/1,-5357.14,3547.91
    >>Kill |cRXP_ENEMY_Warlord Krellian|r and loot |cRXP_LOOT_Prismatic Shell|r
    .complete 9362,1 --Prismatic Shell (1)
    .mob Warlord Krellian
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 9362 >>Turn in Warlord Krellian
    .accept 9364 >>Accept Fragmented Magic
    .target Archmage Xylem
step << Mage
    .goto 1447/1,-4795.29,3532.36
    >>Kill |cRXP_ENEMY_Polymorph Clones|r
    .complete 9364,1 --Polymorph Clone slain (50)
    .mob Polymorph Clone
step << Mage
    .goto 1447/1,-4760.30,3982.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Xylem|r
    .turnin 9364 >>Turn in Fragmented Magic
    .target Archmage Xylem
step
    .goto 1447/1,-6361.16,3098.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loramus Thalipedes|r
    .accept 3141 >>Accept Loramus
    .target Loramus Thalipedes
    .isQuestTurnedIn 2744 --any of: The Demon Hunter
    .xp <56,1
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
    .xp <56,1
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
    .xp <56,1
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .accept 6822 >>Accept The Molten Core
    .target Duke Hydraxis
    .isQuestTurnedIn 6821 --any of: Eye of the Emberseer
    .xp <58,1
step
    .goto 1447/1,-7297.24,2849.69
    >>Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara.
    .complete 6822,3 --Ancient Core Hound (1)
    .isOnQuest 6822
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6804 >>Turn in Poisoned Water
    .target Duke Hydraxis
    .isQuestComplete 6804
step
    .goto 1447/1,-7297.24,2849.69
    >>Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara.
    .complete 6822,2 --Firelord (1)
    .isOnQuest 6822
step
    .goto 1447/1,-7297.24,2849.69
    >>Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara.
    .complete 6822,1 --Molten Giant (1)
    .isOnQuest 6822
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6805 >>Turn in Stormers and Rumblers
    .target Duke Hydraxis
    .isQuestComplete 6805
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .accept 7486 >>Accept A Hero's Reward
    .target Duke Hydraxis
    .isQuestTurnedIn 6824 --any of: Hands of the Enemy
    .xp <60,1
step
    .goto 1447/1,-7297.24,2849.69
    >>Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara.
    .complete 6822,4 --Lava Surger (1)
    .isOnQuest 6822
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6822 >>Turn in The Molten Core
    .target Duke Hydraxis
    .isOnQuest 6822
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .accept 6823 >>Accept Agent of Hydraxis
    .target Duke Hydraxis
    .isQuestTurnedIn 6822 --any of: The Molten Core
    .xp <60,1
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6823 >>Turn in Agent of Hydraxis
    .target Duke Hydraxis
    .isOnQuest 6823
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .accept 6821 >>Accept Eye of the Emberseer
    .target Duke Hydraxis
    .isQuestTurnedIn 6804 --Poisoned Water
    .isQuestTurnedIn 6805 --Stormers and Rumblers
    .xp <58,1
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .accept 6824 >>Accept Hands of the Enemy
    .target Duke Hydraxis
    .isQuestTurnedIn 6823 --any of: Agent of Hydraxis
    .xp <60,1
step
    .goto 1447/1,-7295.21,2810.12
    >>Click the |cRXP_PICK_Hydraxis' Coffer|r
    .turnin 7486 >>Turn in A Hero's Reward
    .isOnQuest 7486
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6821 >>Turn in Eye of the Emberseer
    .target Duke Hydraxis
    .isQuestComplete 6821
step
    .goto 1447/1,-7297.24,2849.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Hydraxis|r
    .turnin 6824 >>Turn in Hands of the Enemy
    .target Duke Hydraxis
    .isQuestComplete 6824
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
    .goto 1447/1,-5680.66,2910.21,0
    .goto 1447/1,-5680.66,2910.21,40,0
    .goto 1447/1,-5596.48,2992.71,40,0
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
step
    +|cRXP_WARN_End of the Azshara route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stranglethorn Vale|r: The Formation of Felbane
step
    +|cRXP_WARN_Suggested next zones at level 61|r: |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.9 levels of quests, starting around Nazgrel), |cRXP_FRIENDLY_Terokkar Forest|r (about 0.6 levels of quests, starting around Tooki). Completing this step loads the guide for Hellfire Peninsula --RouteBuilder:next
]])
