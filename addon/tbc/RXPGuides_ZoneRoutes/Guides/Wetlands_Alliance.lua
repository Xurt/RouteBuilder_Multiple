-- 20-31 Wetlands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 20, 23, 26, 29).
-- Split into 4 guides, listed under "20 - 30 Wetlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Wetlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 30 Wetlands
#subweight -20
#name 20-21 Wetlands: around Karl Boran
--RouteBuilder:next
#next Zone Routes (Alliance)\17-19 Darkshore: around Terenthis;Zone Routes (Alliance)\20-21 Duskwood: around Elaine Carevin

step
    .goto 1437/0,-801.47,-3745.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Red Jack Flint|r
    .accept 1132 >>Accept Fiora Longears
    .target Red Jack Flint
step
    .goto 1437/0,-718.35,-3701.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step
    .goto 1437/0,-733.65,-3762.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >>Accept Claws from the Deep
    .target Karl Boran
step << Draenei/NightElf
    .goto 1437/0,-782.03,-3793.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .goto 1437/0,-840.34,-3791.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 463 >>Accept The Greenwarden
    .target First Mate Fitzsimmons
step
    .goto 1437/0,-827.94,-3822.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mikhail|r
    .turnin 1248 >>Turn in The Missing Diplomat
    .target Mikhail
    .isOnQuest 1248
step << Warlock
    .goto 1437/0,-718.35,-3701.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Warlock Draenei/Warlock NightElf
    .goto 1437/0,-782.03,-3793.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
    .zoneskip Wetlands,1
step << Draenei
    .goto 1437/0,-782.03,-3793.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .goto 1437/0,-837.86,-3813.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
    .turnin 942 >>Turn in The Absent Minded Prospector
    .target Archaeologist Flagongut
    .isOnQuest 942
step << Hunter
    .goto 1437/0,-849.15,-3755.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >> |cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
    .collect 2515,1800
    .target Edwina Monzor
    .zoneskip Wetlands,1
step
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437/0,-834.60,-3711.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
    .target Neal Allen
step << Warlock
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437/0,-834.60,-3711.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
    .target Neal Allen
step
    #loop
    .goto 1437/0,-1020.65,-3245.73,0
    .goto 1437/0,-1020.65,-3245.73,40,0
    .goto 1437/0,-1159.60,-3257.86,40,0
    >>Kill |cRXP_ENEMY_Bluegill Murlocs|r
    >>Kill |cRXP_ENEMY_Gobbler|r and loot |cRXP_LOOT_Gobbler's Head|r
    .complete 279,1 --Bluegill Murloc slain (12)
    .complete 279,2 --Gobbler's Head (1)
    .mob Bluegill Murloc
    .mob Gobbler
step
    .goto 1437/0,-1481.33,-2857.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Fradd Swiftgear|r doesn't have one|r
    .target Fradd Swiftgear
step
    .goto 1437/0,-2453.98,-3233.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >>Accept Daily Delivery
    .target Einar Stonegrip
step
    .goto 1437/0,-2720.72,-3261.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 463 >>Turn in The Greenwarden
    .accept 276 >>Accept Tramping Paws
    .target Rethiel the Greenwarden
step
    #loop
    .goto 1437/0,-2969.26,-4049.45,0
    .goto 1437/0,-2969.26,-4049.45,40,0
    .goto 1437/0,-2934.52,-4150.88,40,0
    >>Kill |cRXP_ENEMY_Mosshide Gnolls|r
    >>Kill |cRXP_ENEMY_Mosshide Mongrels|r
    .complete 276,1 --Mosshide Gnoll slain (15)
    .complete 276,2 --Mosshide Mongrel slain (10)
    .mob Mosshide Gnoll
    .mob Mosshide Mongrel
step
    .goto 1437/0,-2720.72,-3261.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 276 >>Turn in Tramping Paws
    .accept 277 >>Accept Fire Taboo
    .target Rethiel the Greenwarden
step
    .goto 1437/0,-743.16,-3684.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 469 >>Turn in Daily Delivery
    .target James Halloran
step
    .goto 1437/0,-733.65,-3762.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >>Turn in Claws from the Deep
    .accept 281 >>Accept Reclaiming Goods
    .target Karl Boran
step
    .goto 1437/0,-827.11,-3817.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 270 >>Turn in The Doomed Fleet
    .target Glorin Steelbrow
    .isOnQuest 270
step
    .goto 1437/0,-827.11,-3817.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .accept 321 >>Accept Lightforge Iron
    .target Glorin Steelbrow
    .isQuestTurnedIn 270 --any of: The Doomed Fleet
    .xp <20,1
step
    .goto 1437/0,-948.69,-3288.45
    >>Click the |cRXP_PICK_Damaged Crate|r
    .turnin 281 >>Turn in Reclaiming Goods
    .accept 284 >>Accept The Search Continues
step
    .goto 1437/0,-952.00,-3201.36
    >>Click the |cRXP_PICK_Sealed Barrel|r
    .turnin 284 >>Turn in The Search Continues
    .accept 285 >>Accept Search More Hovels
step
    .goto 1437/0,-966.06,-3107.37
    >>Click the |cRXP_PICK_Half-buried Barrel|r
    .turnin 285 >>Turn in Search More Hovels
    .accept 286 >>Accept Return the Statuette
step
    #loop
    .goto 1437/0,-1954.42,-2967.35,0
    .goto 1437/0,-1954.42,-2967.35,40,0
    .goto 1437/0,-2019.35,-3083.94,40,0
    >>Kill |cRXP_ENEMY_Mosshide Mistweavers|r, |cRXP_ENEMY_Mosshide Fenrunners|r, |cRXP_ENEMY_Mosshide Trappers|r and |cRXP_ENEMY_Mosshide Brutes|r. Loot them for |cRXP_LOOT_Crude Flint|r
    .complete 277,1 --Crude Flint (9)
    .mob Mosshide Mistweaver
    .mob Mosshide Fenrunner
    .mob Mosshide Trapper
    .mob Mosshide Brute
step
    .goto 1437/0,-2459.36,-2648.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .turnin 161 >>Turn in A Dark Threat Looms
    .target Ashlan Stonesmirk
    .isOnQuest 161
step
    .goto 1437/0,-2459.36,-2648.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .accept 274 >>Accept A Dark Threat Looms
    .target Ashlan Stonesmirk
    .isQuestTurnedIn 161 --any of: A Dark Threat Looms
    .xp <16,1
step
    .goto 1437/0,-2720.72,-3261.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 277 >>Turn in Fire Taboo
    .target Rethiel the Greenwarden
step
    .goto 1437/0,-2601.62,-4087.21
    >>Traverse Dun Algaz
    .complete 455,3 --Traverse Dun Algaz
    .isOnQuest 455
step
    #loop
    .goto 1437/0,-2372.93,-4249.28,0
    .goto 1437/0,-2372.93,-4249.28,40,0
    .goto 1437/0,-2442.40,-4325.91,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Scouts|r
    .complete 455,1 --Dragonmaw Scout slain (8)
    .mob Dragonmaw Scout
    .isOnQuest 455
step
    #loop
    .goto 1437/0,-2358.46,-4231.09,0
    .goto 1437/0,-2358.46,-4231.09,40,0
    .goto 1437/0,-2519.32,-4310.75,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Grunts|r
    .complete 455,2 --Dragonmaw Grunt slain (6)
    .mob Dragonmaw Grunt
    .isOnQuest 455
step
    .goto 1437/0,-807.26,-3716.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valstag Ironjaw|r
    .turnin 455 >>Turn in The Algaz Gauntlet
    .target Valstag Ironjaw
    .isOnQuest 455
step
    .goto 1437/0,-733.65,-3762.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >>Turn in Return the Statuette
    .target Karl Boran
step
    .goto 1437/0,-890.38,-3917.15
    >>Click the |cRXP_PICK_Waterlogged Chest|r
    .turnin 321 >>Turn in Lightforge Iron
    .isOnQuest 321
step
    .goto 1437/0,-910.65,-3944.99,0
    .goto 1437/0,-811.40,-4104.85,0
    .goto 1437/0,-687.33,-4148.95,0
    .goto 1437/0,-910.65,-3944.99,60,0
    .goto 1437/0,-811.40,-4104.85,60,0
    .goto 1437/0,-687.33,-4148.95,60,0
    .xp 30-6600 >> Grind until you are 6600xp away from level 30 (29700/36300)
step
    +|cRXP_WARN_That is all of Wetlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darkshore|r: Fiora Longears
    >>|cRXP_FRIENDLY_Loch Modan|r: A Dark Threat Looms
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_Darkshore|r (about 0.7 levels of quests, starting around Terenthis), |cRXP_FRIENDLY_Duskwood|r (about 0.7 levels of quests, starting around Elaine Carevin). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Wetlands is planned from level 23.|r Load its guide for level 23 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 30 Wetlands
#subweight -20
#name 23-24 Wetlands
--RouteBuilder:next
#next Zone Routes (Alliance)\20-21 Duskwood: around Elaine Carevin

step
    .goto 1437/0,-837.86,-3813.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
    .accept 943 >>Accept The Absent Minded Prospector
    .target Archaeologist Flagongut
    .isQuestTurnedIn 942 --any of: The Absent Minded Prospector
    .xp <15,1
step
    .goto 1437/0,-877.56,-3746.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .accept 470 >>Accept Digging Through the Ooze
    .target Sida
step
    .goto 1437/0,-807.26,-3716.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valstag Ironjaw|r
    .accept 473 >>Accept Report to Captain Stoutfist
    .target Valstag Ironjaw
    .isQuestTurnedIn 455 --any of: The Algaz Gauntlet
    .xp <23,1
step
    .goto 1437/0,-797.34,-3732.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 473 >>Turn in Report to Captain Stoutfist
    .target Captain Stoutfist
    .isOnQuest 473
step
    .goto 1437/0,-797.34,-3732.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .accept 464 >>Accept War Banners
    .target Captain Stoutfist
step
    .goto 1437/0,-865.16,-3585.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .accept 305 >>Accept In Search of The Excavation Team
    .target Tarrel Rockweaver
step
    .goto 1437/0,-1968.49,-3550.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 294 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
step
    .goto 1437/0,-1998.67,-3590.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .turnin 305 >>Turn in In Search of The Excavation Team
    .accept 306 >>Accept In Search of The Excavation Team
    .target Merrin Rockweaver
step
    .goto 1437/0,-1996.61,-3586.95
    >>Pick up |cRXP_PICK_Flagongut's Fossil|r from the ground
    .complete 943,2 --Flagongut's Fossil (1)
    .isOnQuest 943
step
    #loop
    .goto 1437/0,-1405.66,-3437.01,0
    .goto 1437/0,-1405.66,-3437.01,40,0
    .goto 1437/0,-1355.20,-3558.29,40,0
    .goto 1437/0,-1342.38,-3679.01,40,0
    >>Kill |cRXP_ENEMY_Mottled Raptors|r
    >>Kill |cRXP_ENEMY_Mottled Screechers|r
    .complete 294,1 --Mottled Raptor slain (10)
    .complete 294,2 --Mottled Screecher slain (10)
    .mob Mottled Raptor
    .mob Mottled Screecher
step
    #loop
    .goto 1437/0,-1456.52,-3494.34,0
    .goto 1437/0,-1456.52,-3494.34,40,0
    .goto 1437/0,-1355.20,-3558.29,40,0
    >>Kill |cRXP_ENEMY_Mottled Raptors|r, |cRXP_ENEMY_Mottled Screechers|r, |cRXP_ENEMY_Mottled Scytheclaws|r and |cRXP_ENEMY_Mottled Razormaws|r. Loot them for |cRXP_LOOT_Stone of Relu|r
    .complete 943,1 --Stone of Relu (1)
    .mob Mottled Raptor
    .mob Mottled Screecher
    .mob Mottled Scytheclaw
    .mob Mottled Razormaw
    .isOnQuest 943
step
    .goto 1437/0,-1968.49,-3550.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 294 >>Turn in Ormer's Revenge
    .target Ormer Ironbraid
step
    #loop
    .goto 1437/0,-1982.55,-3423.23,0
    .goto 1437/0,-1982.55,-3423.23,40,0
    .goto 1437/0,-2108.68,-3404.22,40,0
    .goto 1437/0,-2121.08,-3267.78,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Raiders|r, |cRXP_ENEMY_Dragonmaw Swamprunners|r, |cRXP_ENEMY_Dragonmaw Centurions|r and |cRXP_ENEMY_Dragonmaw Battlemasters|r. Loot them for |cRXP_LOOT_Dragonmaw War Banner|r
    .complete 464,1 --Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Centurion
    .mob Dragonmaw Battlemaster
step
    .goto 1437/0,-865.16,-3585.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >>Turn in In Search of The Excavation Team
    .target Tarrel Rockweaver
step
    .goto 1437/0,-797.34,-3732.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 464 >>Turn in War Banners
    .accept 465 >>Accept Nek'rosh's Gambit
    .target Captain Stoutfist
step
    .goto 1437/0,-837.86,-3813.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Flagongut|r
    .turnin 943 >>Turn in The Absent Minded Prospector
    .target Archaeologist Flagongut
    .isOnQuest 943
step
    .goto 1437/0,-743.16,-3684.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .accept 471 >>Accept Apprentice's Duties
    .target James Halloran
    .isQuestTurnedIn 484 --any of: Young Crocolisk Skins
    .xp <18,1
step
    #loop
    .goto 1437/0,-1091.78,-2888.25,0
    .goto 1437/0,-1091.78,-2888.25,40,0
    .goto 1437/0,-1184.41,-2780.48,40,0
    >>Kill |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Loot them for |cRXP_LOOT_Giant Crocolisk Skin|r
    .complete 471,1 --Giant Crocolisk Skin (6)
    .mob Giant Wetlands Crocolisk
    .isOnQuest 471
step
    #loop
    .goto 1437/0,-2181.46,-2918.29,0
    .goto 1437/0,-2181.46,-2918.29,40,0
    .goto 1437/0,-2218.68,-2848.83,40,0
    .goto 1437/0,-2351.84,-2849.11,40,0
    >>Kill |cRXP_ENEMY_Crimson Oozes|r, |cRXP_ENEMY_Black Oozes|r and |cRXP_ENEMY_Monstrous Oozes|r. Loot them for |cRXP_LOOT_Sida's Bag|r
    .complete 470,1 --Sida's Bag (1)
    .mob Crimson Ooze
    .mob Black Ooze
    .mob Monstrous Ooze
step
    .goto 1437/0,-877.56,-3746.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sida|r
    .turnin 470 >>Turn in Digging Through the Ooze
    .target Sida
step
    .goto 1437/0,-2720.72,-3261.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 275 >>Accept Blisters on The Land
    .target Rethiel the Greenwarden
    .isQuestTurnedIn 277 --any of: Fire Taboo
step
    .goto 1437/0,-743.16,-3684.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 471 >>Turn in Apprentice's Duties
    .target James Halloran
    .isOnQuest 471
step
    #loop
    .goto 1437/0,-1512.35,-3226.99,0
    .goto 1437/0,-1512.35,-3226.99,40,0
    .goto 1437/0,-1521.86,-3171.04,40,0
    .goto 1437/0,-1364.71,-3029.92,40,0
    >>Kill |cRXP_ENEMY_Fen Creepers|r
    .complete 275,1 --Fen Creeper slain (12)
    .mob Fen Creeper
    .isOnQuest 275
step
    .goto 1437/0,-2352.25,-3443.63
    >>Click the |cRXP_PICK_Dragonmaw Catapult|r
    .turnin 465 >>Turn in Nek'rosh's Gambit
step
    .goto 1437/0,-2720.72,-3261.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 275 >>Turn in Blisters on The Land
    .target Rethiel the Greenwarden
    .isOnQuest 275
step
    +|cRXP_WARN_Suggested next zones at level 23|r: |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Elaine Carevin). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Wetlands is planned from level 26.|r Load its guide for level 26 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 30 Wetlands
#subweight -20
#name 26-27 Wetlands
--RouteBuilder:next
#next Zone Routes (Alliance)\24-25 Duskwood: around Clerk Daltry

step
    .goto 1437/0,-840.34,-3791.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 288 >>Accept The Third Fleet
    .target First Mate Fitzsimmons
step
    .goto 1437/0,-832.07,-3827.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Flagon of Mead|r from |cRXP_FRIENDLY_Innkeeper Helbrek|r
    .complete 288,1 --Flagon of Mead (1)
    .target Innkeeper Helbrek
step
    .goto 1437/0,-840.34,-3791.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >>Turn in The Third Fleet while you are here
    .isQuestComplete 288
    .target First Mate Fitzsimmons
step
    .goto 1437/0,-827.11,-3817.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .accept 526 >>Accept Lightforge Ingots
    .target Glorin Steelbrow
step
    .goto 1437/0,-840.34,-3791.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 288 >>Turn in The Third Fleet
    .target First Mate Fitzsimmons
step
    .goto 1437/0,-1968.49,-3550.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 295 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
    .isQuestTurnedIn 294 --any of: Ormer's Revenge
step
    #loop
    .goto 1437/0,-1849.39,-3511.98,0
    .goto 1437/0,-1849.39,-3511.98,40,0
    .goto 1437/0,-1746.83,-3554.16,40,0
    >>Kill |cRXP_ENEMY_Mottled Scytheclaws|r
    .complete 295,1 --Mottled Scytheclaw slain (10)
    .mob Mottled Scytheclaw
    .isOnQuest 295
step
    #loop
    .goto 1437/0,-1789.42,-3478.36,0
    .goto 1437/0,-1789.42,-3478.36,40,0
    .goto 1437/0,-1823.75,-3445.83,40,0
    >>Kill |cRXP_ENEMY_Mottled Razormaws|r
    .complete 295,2 --Mottled Razormaw slain (10)
    .mob Mottled Razormaw
    .isOnQuest 295
step
    .goto 1437/0,-1968.49,-3550.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 295 >>Turn in Ormer's Revenge
    .target Ormer Ironbraid
    .isOnQuest 295
step
    .goto 1437/0,-838.28,-3688.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlo Barnaby|r
    .accept 472 >>Accept Fall of Dun Modr
    .target Harlo Barnaby
step
    .goto 1437/0,-1994.54,-3591.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 299 >>Accept Uncovering the Past
    .target Prospector Whelgar
step
    #loop
    .goto 1437/0,-1803.90,-3548.09,0
    .goto 1437/0,-1803.90,-3548.09,40,0
    .goto 1437/0,-1832.84,-3443.35,40,0
    >>Open the |cRXP_PICK_Ancient Relic|r. Loot it for |cRXP_LOOT_Ados Fragment|r
    >>Open the |cRXP_PICK_Ancient Relic|r. Loot it for |cRXP_LOOT_Modr Fragment|r
    >>Open the |cRXP_PICK_Ancient Relic|r. Loot it for |cRXP_LOOT_Golm Fragment|r
    >>Open the |cRXP_PICK_Loose Soil|r. Loot it for |cRXP_LOOT_Neru Fragment|r
    .complete 299,1 --Ados Fragment (1)
    .complete 299,2 --Modr Fragment (1)
    .complete 299,3 --Golm Fragment (1)
    .complete 299,4 --Neru Fragment (1)
step
    .goto 1437/0,-1994.54,-3591.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Turn in Uncovering the Past
    .target Prospector Whelgar
step
    .goto 1437/0,-2352.25,-3443.63
    >>Click the |cRXP_PICK_Dragonmaw Catapult|r
    .accept 474 >>Accept Defeat Nek'rosh
    .isQuestTurnedIn 465 --any of: Nek'rosh's Gambit
step
    .goto 1437/0,-2602.44,-3654.76
    >>Kill |cRXP_ENEMY_Chieftain Nek'rosh|r and loot |cRXP_LOOT_Nek'rosh's Head|r
    .complete 474,1 --Nek'rosh's Head (1)
    .mob Chieftain Nek'rosh
    .isOnQuest 474
step
    .goto 1437/0,-2449.02,-2651.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 472 >>Turn in Fall of Dun Modr
    .target Longbraid the Grim
step
    .goto 1437/0,-797.34,-3732.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 474 >>Turn in Defeat Nek'rosh
    .target Captain Stoutfist
    .isOnQuest 474
step
    #loop
    .goto 1437/0,-901.13,-3945.27,0
    .goto 1437/0,-901.13,-3945.27,40,0
    .goto 1437/0,-783.27,-4018.31,40,0
    .goto 1437/0,-783.27,-4118.64,40,0
    >>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Lightforge Ingot|r
    .complete 526,1 --Lightforge Ingot (5)
    .mob Bluegill Raider
step
    .goto 1437/0,-827.11,-3817.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 526 >>Turn in Lightforge Ingots
    .target Glorin Steelbrow
step
    .goto 1437/0,-890.38,-3917.15
    >>Click the |cRXP_PICK_Waterlogged Chest|r
    .accept 324 >>Accept The Lost Ingots
    .isQuestTurnedIn 321 --any of: Lightforge Iron
    .xp <25,1
step
    #loop
    .goto 1437/0,-901.13,-3945.27,0
    .goto 1437/0,-901.13,-3945.27,40,0
    .goto 1437/0,-783.27,-4018.31,40,0
    .goto 1437/0,-783.27,-4118.64,40,0
    >>Kill |cRXP_ENEMY_Bluegill Raiders|r. Loot them for |cRXP_LOOT_Lightforge Ingot|r
    .complete 324,1 --Lightforge Ingot (5)
    .mob Bluegill Raider
    .isOnQuest 324
step
    .goto 1437/0,-827.11,-3817.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 324 >>Turn in The Lost Ingots
    .target Glorin Steelbrow
    .isOnQuest 324
step
    .goto 1437/0,-827.11,-3817.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .accept 322 >>Accept Blessed Arm
    .target Glorin Steelbrow
    .isQuestTurnedIn 324 --any of: The Lost Ingots
    .xp <20,1
step
    +|cRXP_WARN_That is all of Wetlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: Blessed Arm
step
    +|cRXP_WARN_Suggested next zones at level 26|r: |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Clerk Daltry). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Wetlands is planned from level 29.|r Load its guide for level 29 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 30 Wetlands
#subweight -20
#name 29-30 Wetlands: around Rhag Garmason
--RouteBuilder:next
#next Zone Routes (Alliance)\30-32 Stranglethorn Vale: around Krazek;Zone Routes (Alliance)\28-29 Duskwood: around Sirra Von'Indi;Zone Routes (Alliance)\27-29 Ashenvale: around Sentinel Melyria Frostshadow

step
    .goto 1437/0,-1968.49,-3550.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 296 >>Accept Ormer's Revenge
    .target Ormer Ironbraid
    .isQuestTurnedIn 295 --any of: Ormer's Revenge
step
    .goto 1437/0,-1765.02,-3567.66
    >>Kill |cRXP_ENEMY_Sarltooth|r and loot |cRXP_LOOT_Sarltooth's Talon|r
    .complete 296,1 --Sarltooth's Talon (1)
    .mob Sarltooth
    .isOnQuest 296
step
    .goto 1437/0,-1968.49,-3550.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 296 >>Turn in Ormer's Revenge
    .target Ormer Ironbraid
    .isOnQuest 296
step
    .goto 1437/0,-840.34,-3791.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 289 >>Accept The Cursed Crew
    .target First Mate Fitzsimmons
    .isQuestTurnedIn 288 --any of: The Third Fleet
step
    .goto 1437/0,-968.13,-2979.75
    >>Kill |cRXP_ENEMY_Cursed Sailors|r
    .complete 289,1 --Cursed Sailor slain (13)
    .mob Cursed Sailor
    .isOnQuest 289
step
    .goto 1437/0,-991.29,-2812.45
    >>Kill |cRXP_ENEMY_Cursed Marines|r
    .complete 289,2 --Cursed Marine slain (5)
    .mob Cursed Marine
    .isOnQuest 289
step
    .goto 1437/0,-959.86,-2979.75
    >>Kill |cRXP_ENEMY_First Mate Snellig|r and loot |cRXP_LOOT_Snellig's Snuffbox|r
    .complete 289,3 --Snellig's Snuffbox (1)
    .mob First Mate Snellig
    .isOnQuest 289
step
    .goto 1437/0,-840.34,-3791.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 289 >>Turn in The Cursed Crew
    .target First Mate Fitzsimmons
    .isOnQuest 289
step
    .goto 1437/0,-840.34,-3791.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 290 >>Accept Lifting the Curse
    .target First Mate Fitzsimmons
    .isQuestTurnedIn 289 --any of: The Cursed Crew
step
    .goto 1437/0,-1028.51,-2798.67
    >>Kill |cRXP_ENEMY_Captain Halyndor|r and loot |cRXP_LOOT_Intrepid Strongbox Key|r
    .complete 290,1 --Intrepid Strongbox Key (1)
    .mob Captain Halyndor
    .isOnQuest 290
step
    .goto 1437/0,-984.26,-2810.52
    >>Click the |cRXP_PICK_Intrepid's Locked Strongbox|r
    .turnin 290 >>Turn in Lifting the Curse
    .isOnQuest 290
step
    .goto 1437/0,-984.26,-2810.52
    >>Click the |cRXP_PICK_Intrepid's Locked Strongbox|r
    .accept 292 >>Accept The Eye of Paleth
    .isQuestTurnedIn 290 --any of: Lifting the Curse
step
    .goto 1437/0,-1481.33,-2857.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
    .target Fradd Swiftgear
    .home >>Set your Hearthstone to Fradd Swiftgear's inn
step
    .goto 1437/0,-2453.16,-2650.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Accept The Thandol Span
    .target Rhag Garmason
step
    .goto 1437/0,-2449.02,-2651.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .accept 304 >>Accept A Grim Task
    .target Longbraid the Grim
step
    .goto 1437/0,-2443.64,-2650.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r
    .accept 303 >>Accept The Dark Iron War
    .target Motley Garmason
step
    #completewith Along17
    >>As you go: Kill |cRXP_ENEMY_Dark Iron Tunnelers|r. Kill |cRXP_ENEMY_Dark Iron Saboteurs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 303,2 --Dark Iron Tunneler slain (5)
    .complete 303,3 --Dark Iron Saboteur slain (5)
    .mob Dark Iron Tunneler
    .mob Dark Iron Saboteur
step
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Dark Iron Demolitionists|r. |cRXP_WARN_Anything left is finished later|r
    .complete 303,4 --Dark Iron Demolitionist slain (5)
    .mob Dark Iron Demolitionist
step
    #label Along16
    .goto 1437/0,-2937.00,-2969.28
    >>Kill |cRXP_ENEMY_Balgaras the Foul|r and loot |cRXP_LOOT_Ear of Balgaras|r
    .complete 304,1 --Ear of Balgaras (1)
    .mob Balgaras the Foul
step
    #label Along17
    .goto 1437/0,-2375.00,-2605.73
    >>Kill |cRXP_ENEMY_Dark Iron Dwarfs|r
    .complete 303,1 --Dark Iron Dwarf slain (15)
    .mob Dark Iron Dwarf
step
    .goto 1437/0,-2449.02,-2651.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 304 >>Turn in A Grim Task while you are here
    .isQuestComplete 304
    .target Longbraid the Grim
step
    #loop
    .goto 1437/0,-2875.38,-2827.06,0
    .goto 1437/0,-2875.38,-2827.06,40,0
    .goto 1437/0,-2951.89,-2880.53,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Tunnelers|r
    >>Kill |cRXP_ENEMY_Dark Iron Saboteurs|r
    >>Kill |cRXP_ENEMY_Dark Iron Demolitionists|r
    .complete 303,2 --Dark Iron Tunneler slain (5)
    .complete 303,3 --Dark Iron Saboteur slain (5)
    .complete 303,4 --Dark Iron Demolitionist slain (5)
    .mob Dark Iron Tunneler
    .mob Dark Iron Saboteur
    .mob Dark Iron Demolitionist
step
    .goto 1437/0,-2449.02,-2651.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 304 >>Turn in A Grim Task
    .target Longbraid the Grim
step
    .goto 1437/0,-2443.64,-2650.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motley Garmason|r
    .turnin 303 >>Turn in The Dark Iron War
    .target Motley Garmason
step
    .goto 1437/0,-2510.22,-2367.04
    >>Click the |cRXP_PICK_Ebenezer Rustlocke's Corpse|r
    .turnin 631 >>Turn in The Thandol Span
    .accept 632 >>Accept The Thandol Span
step
    .goto 1437/0,-2453.16,-2650.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Turn in The Thandol Span
    .accept 633 >>Accept The Thandol Span
    .target Rhag Garmason
step
    .goto 1437/0,-2453.16,-2650.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Turn in The Thandol Span
    .target Rhag Garmason
    .isQuestComplete 633
step
    .goto 1437/0,-2453.16,-2650.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 634 >>Accept Plea To The Alliance
    .target Rhag Garmason
    .isQuestTurnedIn 633 --any of: The Thandol Span
    .xp <28,1
step
    .goto 1437/0,-827.11,-3817.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 292 >>Turn in The Eye of Paleth
    .target Glorin Steelbrow
    .isOnQuest 292
step
    .goto 1437/0,-827.11,-3817.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .accept 293 >>Accept Cleansing the Eye
    .target Glorin Steelbrow
    .isQuestTurnedIn 292 --any of: The Eye of Paleth
step
    +|cRXP_WARN_End of the Wetlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Plea To The Alliance
    >>|cRXP_FRIENDLY_Stormwind City|r: Cleansing the Eye
    >>|cRXP_FRIENDLY_Arathi Highlands and back here|r: The Thandol Span
step
    +|cRXP_WARN_Suggested next zones at level 29|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.8 levels of quests, starting around Krazek), |cRXP_FRIENDLY_Duskwood|r (about 0.7 levels of quests, starting around Sirra Von'Indi), |cRXP_FRIENDLY_Ashenvale|r (about 0.6 levels of quests, starting around Sentinel Melyria Frostshadow). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
]])
