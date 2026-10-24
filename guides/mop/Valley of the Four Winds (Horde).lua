-- 87-90 Valley of the Four Winds: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 87, 90).
-- Split into 2 guides, listed under "87 - 91 Valley of the Four Winds" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Valley of the Four Winds.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 87 - 91 Valley of the Four Winds
#subweight -87
#name 87-88 Valley of the Four Winds: around Farmer Yoon
--RouteBuilder:next
#next Zone Routes (Horde)\87-88 Kun-Lai Summit: around Smokey Sootassle

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 376,52.02,48.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 31374 >>Turn in The Tillers
    .target Farmer Yoon
    .isOnQuest 31374
step
    .goto 376,52.02,48.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .accept 30252 >>Accept A Helping Hand
    .target Farmer Yoon
step
    .goto 376,51.92,49.18
    >>Interact with |cRXP_FRIENDLY_Unbudging Rocks|r
    .complete 30252,1 --Unbudging Rock (8)
    .target Unbudging Rock
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30252 >>Turn in A Helping Hand
    .accept 30535 >>Accept Learn and Grow I: Seeds
    .target Farmer Yoon
step
    .goto 376,52.61,51.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Mei Ironpaw|r
    .accept 31474 >>Accept The Soup of Contemplation
    .target Mei Mei Ironpaw
    .isQuestTurnedIn 31472 --any of: Way of the Pot
    .xp <85,1
step
    .goto 376,52.54,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Ironpaw|r
    .accept 31476 >>Accept The Spirit of Cooking
    .target Yan Ironpaw
    .isQuestTurnedIn 31475 --any of: Way of the Steamer
    .xp <85,1
step
    .goto 376,52.89,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Packet of Green Cabbage Seeds|r from |cRXP_FRIENDLY_Merchant Greenfield|r
    .complete 30535,1 --Packet of Green Cabbage Seeds (1)
    .target Merchant Greenfield
step
    .goto 376,84.496,21.056
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princeton|r
    .fp Pang's Stead >> Get the Pang's Stead flight path
    .target Princeton
    .zoneskip 376,1
step
    .goto 376,53.53,51.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nam Ironpaw|r
    .target Nam Ironpaw
    .home >>Set your Hearthstone to Nam Ironpaw's inn
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 31472 >>Accept Way of the Pot
    .accept 31475 >>Accept Way of the Steamer
    .accept 31470 >>Accept Way of the Wok
    .target Sungshin Ironpaw
    .isQuestTurnedIn 31302 --any of: Ready for Greatness
    .xp <85,1
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30535 >>Turn in Learn and Grow I: Seeds
    .accept 30254 >>Accept Learn and Grow II: Tilling and Planting
    .target Farmer Yoon
step
    .goto 376,52.01,48.44
    >>Interact with |cRXP_FRIENDLY_Untilled Soil|r
    .complete 30254,1 --Untilled Soil
    .target Untilled Soil
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Ripe Juicycrunch Carrots|r, |cRXP_ENEMY_Plump Juicycrunch Carrots|r and |cRXP_ENEMY_Bursting Juicycrunch Carrots|r. Loot them for |cRXP_LOOT_Juicycrunch Carrot|r
    .complete 31470,1 --Juicycrunch Carrot (5)
    .mob Ripe Juicycrunch Carrot
    .mob Plump Juicycrunch Carrot
    .mob Bursting Juicycrunch Carrot
    .isOnQuest 31470
step
    .goto 376,51.86,47.86
    >>Interact with |cRXP_FRIENDLY_Tilled Soil|r
    .complete 30254,2 --Tilled Soil
    .target Tilled Soil
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30254 >>Turn in Learn and Grow II: Tilling and Planting
    .accept 30255 >>Accept Learn and Grow III: Tending Crops
    .target Farmer Yoon
step
    .goto 376,52.01,48.44
    >>Interact with |cRXP_FRIENDLY_Parched EZ-Gro Green Cabbages|r
    .complete 30255,1 --Parched EZ-Gro Green Cabbage (2)
    .target Parched EZ-Gro Green Cabbage
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30255 >>Turn in Learn and Grow III: Tending Crops
    .accept 30256 >>Accept Learn and Grow IV: Harvesting
    .target Farmer Yoon
step
    .goto 376,52.01,48.44
    >>Kill |cRXP_ENEMY_Ripe EZ-Gro Green Cabbages|r. Loot them for |cRXP_LOOT_EZ-Gro Green Cabbage|r
    .complete 30256,1 --EZ-Gro Green Cabbage (2)
    .mob Ripe EZ-Gro Green Cabbage
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30256 >>Turn in Learn and Grow IV: Harvesting
    .accept 30257 >>Accept Learn and Grow V: Halfhill Market
    .target Farmer Yoon
step
    .goto 376,52.82,47.98
    >>Open the |cRXP_PICK_Dark Soil|r. Loot it for |cRXP_LOOT_Marsh Lily|r
    .complete 30257,1 --Marsh Lily (1)
step
    .goto 376,52.23,48.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Mudclaw|r
    .turnin 30257 >>Turn in Learn and Grow V: Halfhill Market
    .accept 31945 >>Accept Learn and Grow VI: Gina's Vote
    .target Gina Mudclaw
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Bursting Scallions|r, |cRXP_ENEMY_Plump Scallions|r and |cRXP_ENEMY_Ripe Scallions|r
    >>Kill |cRXP_ENEMY_Tilled Soils|r
    >>Kill |cRXP_ENEMY_Bursting Scallions|r, |cRXP_ENEMY_Plump Scallions|r and |cRXP_ENEMY_Ripe Scallions|r. Loot them for |cRXP_LOOT_Scallions|r
    .complete 31945,2 --Bursting Scallions (1)
    .complete 31945,3 --Tilled Soil (8)
    .complete 31945,1 --Scallions (1)
    .mob Bursting Scallions
    .mob Plump Scallions
    .mob Ripe Scallions
    .mob Tilled Soil
step
    .goto 376,52.23,48.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gina Mudclaw|r
    .turnin 31945 >>Turn in Learn and Grow VI: Gina's Vote
    .target Gina Mudclaw
step
    .goto 376,52.68,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthea Ironpaw|r
    .turnin 31470 >>Turn in Way of the Wok
    .target Anthea Ironpaw
    .isOnQuest 31470
step
    .goto 376,52.68,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthea Ironpaw|r
    .accept 31471 >>Accept Agile as a Tiger
    .target Anthea Ironpaw
    .isQuestTurnedIn 31470 --any of: Way of the Wok
    .xp <85,1
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 31478 >>Accept Way of the Oven
    .accept 31311 >>Accept Way of the Grill
    .target Sungshin Ironpaw
    .isQuestTurnedIn 31302 --any of: Ready for Greatness
    .xp <85,1
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 32018 >>Turn in His Name Was... Stormstout
    .unitscan Chen Stormstout
    .isOnQuest 32018
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 32019 >>Turn in They Call Him... Stormstout
    .unitscan Chen Stormstout
    .isOnQuest 32019
step
    .goto 376,58.92,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ben of the Booming Voice|r
    .accept 32685 >>Accept No Fishing Pole Necessary!
    .target Ben of the Booming Voice
step
    .goto 376,58.92,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ben of the Booming Voice|r
    .turnin 32685 >>Turn in No Fishing Pole Necessary!
    .target Ben of the Booming Voice
    .isQuestComplete 32685
step
    #loop
    .goto 376,58.12,43.33,0
    .goto 376,58.12,43.33,40,0
    .goto 376,59.40,40.24,40,0
    .goto 376,58.63,37.77,40,0
    .goto 376,57.63,29.89,40,0
    >>Kill |cRXP_ENEMY_Thieving Plainshawks|r, |cRXP_ENEMY_Glade Hunters|r, |cRXP_ENEMY_Glade Sprinters|r and |cRXP_ENEMY_Glade Singers|r. Loot them for |cRXP_LOOT_Wildfowl Breast|r
    .complete 31478,1 --Wildfowl Breast (5)
    .mob Thieving Plainshawk
    .mob Glade Hunter
    .mob Glade Sprinter
    .mob Glade Singer
    .isOnQuest 31478
step
    .goto 376,53.40,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jian Ironpaw|r
    .turnin 31478 >>Turn in Way of the Oven
    .target Jian Ironpaw
    .isOnQuest 31478
step
    .goto 376,53.40,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jian Ironpaw|r
    .accept 31477 >>Accept Endurance
    .target Jian Ironpaw
    .isQuestTurnedIn 31478 --any of: Way of the Oven
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .turnin 30241 >>Turn in Warn Stoneplow
    .target Loon Mai
    .isOnQuest 30241
step
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .turnin 30376 >>Turn in Hope Springs Eternal
    .target Loon Mai
    .isOnQuest 30376
step
    #loop
    .goto 376,13.35,70.27,0
    .goto 376,13.35,70.27,40,0
    .goto 376,10.98,72.33,40,0
    >>Kill |cRXP_ENEMY_Gorge Stalkers|r and |cRXP_ENEMY_Bloodthirsty Prowlers|r. Loot them for |cRXP_LOOT_Raw Tiger Steak|r
    .complete 31311,1 --Raw Tiger Steak (5)
    .mob Gorge Stalker
    .mob Bloodthirsty Prowler
    .isOnQuest 31311
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 391 >>Travel to Shrine of Two Moons
    .zoneskip 391
    .isQuestComplete 31511
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 391,68.46,47.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madam Vee Luo|r
    .turnin 31511 >>Turn in A Witness to History
    .target Madam Vee Luo
    .isQuestComplete 31511
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 376 >>Leave Shrine of Two Moons for Valley of the Four Winds
    .zoneskip 376
step
    #completewith next
    .hs >>Hearth to Nam Ironpaw's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 376,52.97,51.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kol Ironpaw|r
    .turnin 31311 >>Turn in Way of the Grill
    .target Kol Ironpaw
    .isOnQuest 31311
step
    .goto 376,52.97,51.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kol Ironpaw|r
    .accept 31467 >>Accept Strong as a Tiger
    .target Kol Ironpaw
    .isQuestTurnedIn 31311 --any of: Way of the Grill
    .xp <85,1
step
    .goto 376,52.97,51.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kol Ironpaw|r
    .turnin 31467 >>Turn in Strong as a Tiger
    .target Kol Ironpaw
    .isQuestComplete 31467
step
    .goto 376,52.68,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthea Ironpaw|r
    .turnin 31471 >>Turn in Agile as a Tiger
    .target Anthea Ironpaw
    .isQuestComplete 31471
step
    .goto 376,52.61,51.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Mei Ironpaw|r
    .turnin 31472 >>Turn in Way of the Pot
    .target Mei Mei Ironpaw
    .isQuestComplete 31472
step
    .goto 376,52.61,51.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Mei Ironpaw|r
    .turnin 31474 >>Turn in The Soup of Contemplation
    .target Mei Mei Ironpaw
    .isQuestComplete 31474
step
    .goto 376,52.54,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Ironpaw|r
    .turnin 31475 >>Turn in Way of the Steamer
    .target Yan Ironpaw
    .isQuestComplete 31475
step
    .goto 376,52.54,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Ironpaw|r
    .turnin 31476 >>Turn in The Spirit of Cooking
    .target Yan Ironpaw
    .isQuestComplete 31476
step
    .goto 376,53.40,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jian Ironpaw|r
    .turnin 31477 >>Turn in Endurance
    .target Jian Ironpaw
    .isQuestComplete 31477
step
    .goto 376,86.04,21.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 30648 >>Turn in Moving On
    .target ?
    .isQuestComplete 30648
step
    #completewith next
    .zone 448 >>Travel to Greenstone Village
    .zoneskip 448
    .isOnQuest 31613
step
    .goto 448,45.12,70.26
    >>Kill |cRXP_ENEMY_Vengeful Hui|r
    .complete 31613,1 --Vengeful Hui slain (1)
    .mob Vengeful Hui
    .isOnQuest 31613
step
    .goto 448,52.35,68.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Tzu|r
    .turnin 31613 >>Turn in Volatile Greenstone Brew
    .target Brewmaster Tzu
    .isOnQuest 31613
step
    +|cRXP_WARN_That is all of Valley of the Four Winds for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: No Fishing Pole Necessary!
step
    +|cRXP_WARN_Suggested next zones at level 87|r: |cRXP_FRIENDLY_Kun-Lai Summit|r (about 0.5 levels of quests, starting around Smokey Sootassle). Completing this step loads the guide for Kun-Lai Summit --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Valley of the Four Winds is planned from level 90.|r Load its guide for level 90 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 87 - 91 Valley of the Four Winds
#subweight -87
#name 90-91 Valley of the Four Winds: around Xiao

step
    .goto 376,58.92,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ben of the Booming Voice|r
    .turnin 32685 >>Turn in No Fishing Pole Necessary!
    .target Ben of the Booming Voice
    .isQuestComplete 32685
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30653 >>Accept It Does You No Good In The Keg
    .unitscan Mudmug
    .isQuestTurnedIn 30241,30376 --any of: Warn Stoneplow, Hope Springs Eternal
    .xp <86,1
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29907 >>Accept Chen and Li Li
    .unitscan Chen Stormstout
step
    #completewith next
    .zone 391 >>Travel to Shrine of Two Moons
    .zoneskip 391
step
    .goto 391,67.19,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mifan|r
    .accept 31279 >>Accept Everything I Know About Cooking
    .target Mifan
step
    #completewith next
    .zone 376 >>Leave Shrine of Two Moons for Valley of the Four Winds
    .zoneskip 376
step
    .goto 376,53.53,51.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nam Ironpaw|r
    .accept 31536 >>Accept Preserving Freshness
    .target Nam Ironpaw
    .isQuestTurnedIn 31467 --Strong as a Tiger
    .isQuestTurnedIn 31471 --Agile as a Tiger
    .isQuestTurnedIn 31474 --The Soup of Contemplation
    .isQuestTurnedIn 31476 --The Spirit of Cooking
    .isQuestTurnedIn 31477 --Endurance
    .isQuestTurnedIn 31480 --Have a Drink
    .xp <85,1
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .turnin 31279 >>Turn in Everything I Know About Cooking while you are here
    .isQuestComplete 31279
    .target Sungshin Ironpaw
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 32684 >>Accept You Want Fish?
    .target Sungshin Ironpaw
    .xp <90,1
step
    .goto 376,52.98,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Empty Raw Tiger Steak Container|r from |cRXP_FRIENDLY_Merchant Cheng|r
    .complete 31536,1 --Empty Raw Tiger Steak Container (1)
    .target Merchant Cheng
    .isOnQuest 31536
step
    .goto 376,53.53,51.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nam Ironpaw|r
    .turnin 31536 >>Turn in Preserving Freshness
    .target Nam Ironpaw
    .isOnQuest 31536
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 31281 >>Accept So You Want to Be a Chef...
    .target Sungshin Ironpaw
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 31479 >>Accept Way of the Brew
    .target Sungshin Ironpaw
    .isQuestTurnedIn 31302 --any of: Ready for Greatness
    .xp <85,1
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 32684 >>Accept You Want Fish?
    .target Sungshin Ironpaw
    .xp <90,1
step
    .goto 376,56.40,47.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trader Jambeezi|r
    .target Trader Jambeezi
    .home >>Set your Hearthstone to Trader Jambeezi's inn
step
    .goto 376,83.83,21.56
    >>Kill |cRXP_ENEMY_Li Li|r and |cRXP_ENEMY_Chen Stormstout|r
    .complete 29907,1 --Li Li (1)
    .mob Li Li
    .mob Chen Stormstout
step
    .goto 376,83.70,21.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
    .turnin 29907 >>Turn in Chen and Li Li
    .accept 29908 >>Accept A Seemingly Endless Nuisance
    .target Pang Thunderfoot
step
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Snagtooth Troublemakers|r, |cRXP_ENEMY_Snagtooth Tool-Grabbers|r and |cRXP_ENEMY_Snagtooth Virmens|r. Kill |cRXP_ENEMY_Snagtooth Pesterlings|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29908,1 --Snagtooth Troublemaker (8)
    .complete 29908,2 --Snagtooth Pesterling (18)
    .mob Snagtooth Troublemaker
    .mob Snagtooth Tool-Grabber
    .mob Snagtooth Virmen
    .mob Snagtooth Pesterling
step
    #label Along12
    .goto 376,82.70,21.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muno the Farmhand|r
    .accept 29877 >>Accept A Poor Grasp of the Basics
    .target Muno the Farmhand
step
    #loop
    .goto 376,81.27,19.84,0
    .goto 376,81.27,19.84,40,0
    .goto 376,78.93,23.10,40,0
    .goto 376,84.17,26.44,40,0
    >>Kill |cRXP_ENEMY_Barrow Bushes|r, |cRXP_ENEMY_Rake Trees|r, |cRXP_ENEMY_Hoe Trees|r and |cRXP_ENEMY_Plow Plants|r
    >>Kill |cRXP_ENEMY_Snagtooth Troublemakers|r, |cRXP_ENEMY_Snagtooth Tool-Grabbers|r and |cRXP_ENEMY_Snagtooth Virmens|r
    >>Kill |cRXP_ENEMY_Snagtooth Pesterlings|r
    .complete 29877,1 --Barrow Bush (8)
    .complete 29908,1 --Snagtooth Troublemaker (8)
    .complete 29908,2 --Snagtooth Pesterling (18)
    .mob Barrow Bush
    .mob Rake Tree
    .mob Hoe Tree
    .mob Plow Plant
    .mob Snagtooth Troublemaker
    .mob Snagtooth Tool-Grabber
    .mob Snagtooth Virmen
    .mob Snagtooth Pesterling
step
    .goto 376,82.70,21.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muno the Farmhand|r
    .turnin 29877 >>Turn in A Poor Grasp of the Basics
    .target Muno the Farmhand
step
    .goto 376,83.70,21.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
    .turnin 29908 >>Turn in A Seemingly Endless Nuisance
    .accept 29909 >>Accept Low Turnip Turnout
    .target Pang Thunderfoot
step
    .goto 376,81.59,25.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ang Thunderfoot|r
    .turnin 29909 >>Turn in Low Turnip Turnout
    .accept 29940 >>Accept Taking a Crop
    .target Ang Thunderfoot
step
    .goto 376,82.45,25.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ana Thunderfoot|r
    .accept 29910 >>Accept Rampaging Rodents
    .target Ana Thunderfoot
step
    .goto 376,82.41,25.93
    >>Click the |cRXP_PICK_Marmot Hole|r
    .complete 29910,2 --Marmot Hole
step
    .goto 376,82.60,25.60
    >>Interact with |cRXP_FRIENDLY_Plump Marmots|r
    .complete 29910,1 --Plump Marmot (6)
    .target Plump Marmot
step
    .goto 376,82.45,25.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ana Thunderfoot|r
    .turnin 29910 >>Turn in Rampaging Rodents
    .target Ana Thunderfoot
step
    #loop
    .goto 376,85.09,27.14,0
    .goto 376,85.09,27.14,40,0
    .goto 376,85.64,33.64,40,0
    >>Pick up |cRXP_PICK_Stolen Turnip|r from the ground
    >>Pick up |cRXP_PICK_Stolen Watermelon|r from the ground
    .complete 29940,1 --Stolen Turnip (5)
    .complete 29940,2 --Stolen Watermelon (5)
step
    .goto 376,84.08,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao|r
    .accept 30086 >>Accept The Search for the Hidden Master
    .turnin 30086 >>Turn in The Search for the Hidden Master
    .accept 29873 >>Accept Ken-Ken
    .accept 29875 >>Accept Kang Bramblestaff << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 29871 >>Accept Clever Ashyo
    .accept 29872 >>Accept Lin Tenderpaw
    .target Xiao
step
    .goto 376,81.59,25.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ang Thunderfoot|r
    .turnin 29940 >>Turn in Taking a Crop
    .accept 29911 >>Accept Practically Perfect Produce
    .target Ang Thunderfoot
step
    .goto 376,83.70,21.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
    .turnin 29911 >>Turn in Practically Perfect Produce
    .accept 29912 >>Accept The Fabulous Miss Fanny
    .target Pang Thunderfoot
step
    .goto 376,84.18,22.07
    >>Pick up |cRXP_PICK_Ang's Giant Pink Turnip|r from the ground
    >>Pick up |cRXP_PICK_Ang's Summer Watermelon|r from the ground
    >>Pick up |cRXP_PICK_Pang's Extra-Spicy Tofu|r from the ground
    .collect 75259,1,29912,1 --Ang's Giant Pink Turnip (1)
    .collect 75258,1,29912,1 --Ang's Summer Watermelon (1)
    .collect 75256,1,29912,1 --Pang's Extra-Spicy Tofu (1)
step
    .goto 376,83.00,21.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miss Fanny|r
    .complete 29912,1 --Miss Fanny
    .target Miss Fanny
step
    .goto 376,83.00,21.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miss Fanny|r
    .complete 29912,2 --Miss Fanny
    .target Miss Fanny
step
    .goto 376,83.00,21.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miss Fanny|r
    .complete 29912,3 --Miss Fanny
    .target Miss Fanny
step
    .goto 376,75.22,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liang Thunderfoot|r
    .turnin 29912 >>Turn in The Fabulous Miss Fanny
    .accept 29913 >>Accept The Meat They'll Eat
    .accept 29914 >>Accept Back to the Sty
    .target Liang Thunderfoot
step
    .goto 376,70.40,24.00
    >>Kill |cRXP_ENEMY_Jian|r and loot |cRXP_LOOT_Jian|r
    .complete 29914,1 --Jian (1)
    .mob Jian
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kim of the Mountain Winds|r
    >>|cRXP_WARN_This NPC might have phasing issues, if you don't see her there, go up the first flight of stairs to the left and then come back|r
    .target Kim of the Mountain Winds
    .goto 376,70.814,24.151
    .fp Grassy>>Get the Grassy Cline Flight Path
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 376,70.02,23.57,0
    .goto 376,70.02,23.57,40,0
    .goto 376,55.32,50.15,40,0
    .goto 376,18.47,56.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Grummle|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31255 >>Accept The Road to Kun-Lai
    .unitscan Messenger Grummle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 376,70.05,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highroad Grummle|r
    .complete 31255,1 --Highroad Grummle
    .target Highroad Grummle
step
    #loop
    .goto 376,70.40,28.20,0
    .goto 376,70.40,28.20,40,0
    .goto 376,71.07,31.46,40,0
    .goto 376,67.00,29.20,40,0
    >>Kill |cRXP_ENEMY_Smelly|r and loot |cRXP_LOOT_Smelly|r
    >>Kill |cRXP_ENEMY_Ling|r and loot |cRXP_LOOT_Ling|r
    >>Kill |cRXP_ENEMY_Wyrmhorn Turtles|r. Loot them for |cRXP_LOOT_Turtle Meat Scrap|r
    >>Kill |cRXP_ENEMY_Adolescent Mushans|r. Loot them for |cRXP_LOOT_Mushan Shoulder Steak|r
    .complete 29914,3 --Smelly (1)
    .complete 29914,2 --Ling (1)
    .complete 29913,2 --Turtle Meat Scrap (80)
    .complete 29913,1 --Mushan Shoulder Steak (4)
    .mob Smelly
    .mob Ling
    .mob Wyrmhorn Turtle
    .mob Adolescent Mushan
step
    .goto 376,75.22,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liang Thunderfoot|r
    .turnin 29913 >>Turn in The Meat They'll Eat
    .turnin 29914 >>Turn in Back to the Sty
    .accept 29915 >>Accept A Neighbor's Duty
    .target Liang Thunderfoot
step
    .goto 376,78.12,32.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis the Shepherd Boy|r
    .turnin 29915 >>Turn in A Neighbor's Duty
    .accept 29916 >>Accept Piercing Talons and Slavering Jaws
    .accept 29917 >>Accept Lupello
    .target Francis the Shepherd Boy
step
    .goto 376,82.24,38.83
    >>Kill |cRXP_ENEMY_Lupello|r
    .complete 29917,1 --Lupello slain (1)
    .mob Lupello
step
    #loop
    .goto 376,81.68,33.38,0
    .goto 376,81.68,33.38,40,0
    .goto 376,78.97,32.48,40,0
    .goto 376,76.98,38.30,40,0
    >>Kill |cRXP_ENEMY_Thieving Plainshawks|r
    >>Kill |cRXP_ENEMY_Lupellos|r and |cRXP_ENEMY_Thieving Wolfs|r
    .complete 29916,1 --Thieving Plainshawk slain (5)
    .complete 29916,2 --Lupello (8)
    .mob Thieving Plainshawk
    .mob Lupello
    .mob Thieving Wolf
step
    .goto 376,78.12,32.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis the Shepherd Boy|r
    .turnin 29916 >>Turn in Piercing Talons and Slavering Jaws
    .turnin 29917 >>Turn in Lupello
    .target Francis the Shepherd Boy
step
    .goto 376,78.19,32.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shang Thunderfoot|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29918 >>Accept A Lesson in Bravery
    .unitscan Shang Thunderfoot
step
    #loop
    .goto 376,79.09,28.03,0
    .goto 376,79.09,28.03,40,0
    .goto 376,83.37,31.06,40,0
    .goto 376,83.04,22.48,40,0
    >>Kill |cRXP_ENEMY_Great White Plainshawks|r
    .complete 29918,1 --Great White Plainshawk slain (8)
    .mob Great White Plainshawk
step
    .goto 376,78.19,32.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shang Thunderfoot|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29918 >>Turn in A Lesson in Bravery
    .unitscan Shang Thunderfoot
step
    #loop
    .goto 376,85.93,22.11,0
    .goto 376,85.93,22.11,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,32.26,68.56,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29919 >>Accept Great Minds Drink Alike
    .unitscan Chen Stormstout
step
    .goto 376,68.88,43.31
    >>Kill |cRXP_ENEMY_Li Li|r and |cRXP_ENEMY_Chen Stormstout|r
    .complete 29919,1 --Li Li (1)
    .mob Li Li
    .mob Chen Stormstout
step
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29919 >>Turn in Great Minds Drink Alike
    .unitscan Mudmug
step
    #loop
    .goto 376,85.93,22.11,0
    .goto 376,85.93,22.11,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,32.26,68.56,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29944 >>Accept Leaders Among Breeders
    .unitscan Chen Stormstout
step
    #loop
    .goto 376,68.88,43.31,0
    .goto 376,68.88,43.31,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,32.27,68.45,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29945 >>Accept Yellow and Red Make Orange
    .unitscan Li Li
step
    #completewith Along48
    >>As you go: Kill |cRXP_ENEMY_Mushan Nomads|r, |cRXP_ENEMY_Longfang Howlers|r, |cRXP_ENEMY_Tawnyhide Fawns|r and |cRXP_ENEMY_Tawnyhide Does|r. Loot them for |cRXP_LOOT_Vial of Animal Blood|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29945,2 --Vial of Animal Blood (1)
    .mob Mushan Nomad
    .mob Longfang Howler
    .mob Tawnyhide Fawn
    .mob Tawnyhide Doe
step
    #completewith Along47
    >>As you go: Pick up |cRXP_PICK_Meadow Marigold|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 29945,1 --Meadow Marigold (10)
step
    #label Along47
    .goto 376,68.67,36.82
    >>Kill |cRXP_ENEMY_Aiyu the Skillet|r
    >>Kill |cRXP_ENEMY_Jinanya the Clawblade|r
    .complete 29944,1 --Aiyu the Skillet slain (1)
    .complete 29944,2 --Jinanya the Clawblade slain (1)
    .mob Aiyu the Skillet
    .mob Jinanya the Clawblade
step
    #label Along48
    .goto 376,64.58,40.91
    >>Kill |cRXP_ENEMY_Frenzyhop|r
    .complete 29944,3 --Frenzyhop slain (1)
    .mob Frenzyhop
step
    #loop
    .goto 376,65.71,42.75,0
    .goto 376,65.71,42.75,40,0
    .goto 376,70.35,48.44,40,0
    .goto 376,72.58,44.77,40,0
    >>Pick up |cRXP_PICK_Meadow Marigold|r from the ground
    >>Kill |cRXP_ENEMY_Mushan Nomads|r, |cRXP_ENEMY_Longfang Howlers|r, |cRXP_ENEMY_Tawnyhide Fawns|r and |cRXP_ENEMY_Tawnyhide Does|r. Loot them for |cRXP_LOOT_Vial of Animal Blood|r
    .complete 29945,1 --Meadow Marigold (10)
    .complete 29945,2 --Vial of Animal Blood (1)
    .mob Mushan Nomad
    .mob Longfang Howler
    .mob Tawnyhide Fawn
    .mob Tawnyhide Doe
step
    #loop
    .goto 376,68.88,43.31,0
    .goto 376,68.88,43.31,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,32.27,68.45,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29945 >>Turn in Yellow and Red Make Orange
    .accept 29947 >>Accept Crouching Carrot, Hidden Turnip
    .unitscan Li Li
step
    #loop
    .goto 376,85.93,22.11,0
    .goto 376,85.93,22.11,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,32.26,68.56,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29944 >>Turn in Leaders Among Breeders
    .accept 29946 >>Accept The Warren-Mother
    .unitscan Chen Stormstout
step
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29948 >>Accept Thieves to the Core
    .unitscan Mudmug
step
    .goto 376,68.67,35.93
    >>Kill |cRXP_ENEMY_Chufa|r
    >>Pick up |cRXP_PICK_Stolen Sack of Hops|r from the ground
    .complete 29946,1 --Chufa slain (1)
    .complete 29948,1 --Stolen Sack of Hops (1)
    .mob Chufa
step
    #loop
    .goto 376,68.97,36.40,0
    .goto 376,68.97,36.40,40,0
    .goto 376,69.02,33.59,40,0
    >>Toss Orange-Colored Turnips in front of 12 Twitchheel Hoarders.
    .complete 29947,1 --Twitchheel Hoarder (12)
    .target Twitchheel Hoarder
step
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29948 >>Turn in Thieves to the Core
    .unitscan Mudmug
step
    #loop
    .goto 376,68.88,43.31,0
    .goto 376,68.88,43.31,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,32.27,68.45,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29947 >>Turn in Crouching Carrot, Hidden Turnip
    .unitscan Li Li
step
    #loop
    .goto 376,85.93,22.11,0
    .goto 376,85.93,22.11,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,32.26,68.56,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29946 >>Turn in The Warren-Mother
    .accept 29949 >>Accept Legacy
    .unitscan Chen Stormstout
step
    #loop
    .goto 376,68.88,43.31,0
    .goto 376,68.88,43.31,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,32.27,68.45,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29949 >>Turn in Legacy
    .accept 29950 >>Accept Li Li's Day Off
    .unitscan Li Li
step
    .goto 376,61.42,35.43
    >>Bring Li Li to the Silken Fields, New Cifera, and Huangtze Falls.
    .complete 29950,2 --Water Village Exploration Credit
    .target Water Village Exploration Credit
step
    .goto 376,59.25,27.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clever Ashyo|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29871 >>Turn in Clever Ashyo
    .accept 29577 >>Accept Ashyo's Vision
    .unitscan Clever Ashyo
step
    .goto 376,60.60,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan|r
    .accept 29757 >>Accept Bottletoads
    .target Yan
step
    .goto 376,60.97,32.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gladecaster Lang|r
    .accept 30267 >>Accept Watery Woes
    .target Gladecaster Lang
step
    .goto 376,59.82,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhang Yue|r
    .accept 29600 >>Accept Snap Judgment
    .target Zhang Yue
step
    .goto 376,59.25,27.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clever Ashyo|r
    .complete 29577,1 --Clever Ashyo
    .target Clever Ashyo
step
    .goto 376,59.82,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhang Yue|r
    .turnin 29577 >>Turn in Ashyo's Vision while you are here
    .isQuestComplete 29577
    .target Zhang Yue
step
    #loop
    .goto 376,62.60,27.16,0
    .goto 376,62.60,27.16,40,0
    .goto 376,64.36,26.11,40,0
    >>Click the |cRXP_PICK_Gurgling Toadspawn|r
    >>Kill |cRXP_ENEMY_Razorback Snappers|r
    .complete 29757,1 --Gurgling Toadspawn
    .complete 29600,1 --Razorback Snapper slain (16)
    .mob Razorback Snapper
step
    .goto 376,59.82,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhang Yue|r
    .turnin 29577 >>Turn in Ashyo's Vision
    .turnin 29600 >>Turn in Snap Judgment
    .accept 29581 >>Accept The Golden Dream
    .target Zhang Yue
step
    #completewith Along67
    >>As you go: Open the |cRXP_PICK_Dreamleaf Bush|r. Loot it for |cRXP_LOOT_Sprig of Dreamleaf|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29581,1 --Sprig of Dreamleaf (1)
step
    #label Along67
    .goto 376,65.35,25.73
    >>Kill |cRXP_ENEMY_Krosh|r and loot |cRXP_LOOT_Krosh's Back|r. Use it to start the quest
    .collect 83767,1,29758 --Krosh's Back (1)
    .accept 29758 >>Accept Guess Whose Back
    .use 83767
    .mob Krosh
step
    .goto 376,65.32,26.27
    >>Open the |cRXP_PICK_Dreamleaf Bush|r. Loot it for |cRXP_LOOT_Sprig of Dreamleaf|r
    .complete 29581,1 --Sprig of Dreamleaf (1)
step
    .goto 376,60.60,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan|r
    .turnin 29581 >>Turn in The Golden Dream
    .turnin 29757 >>Turn in Bottletoads
    .turnin 29758 >>Turn in Guess Whose Back
    .target Yan
step
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29951 >>Accept Muddy Water
    .unitscan Mudmug
step
    .goto 376,74.85,42.36
    >>Bring Li Li to the Silken Fields, New Cifera, and Huangtze Falls.
    .complete 29950,3 --Waterfall Exploration Credit
    .target Waterfall Exploration Credit
step
    .goto 376,63.55,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Journeyman Chu|r
    .accept 30059 >>Accept The Moth Rebellion
    .target Journeyman Chu
step
    .goto 376,62.06,59.32
    >>Bring Li Li to the Silken Fields, New Cifera, and Huangtze Falls.
    .complete 29950,1 --Silk Farm Exploration Credit
    .target Silk Farm Exploration Credit
step
    #completewith Along74
    >>As you go: Kill |cRXP_ENEMY_Mutated Silkmoths|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30059,1 --Mutated Silkmoth slain (6)
    .mob Mutated Silkmoth
step
    #label Along74
    .goto 376,62.67,59.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silkmaster Tsai|r
    .accept 30072 >>Accept Where Silk Comes From
    .target Silkmaster Tsai
step
    .goto 376,62.02,56.72
    >>Kill |cRXP_ENEMY_Hungry Silkworms|r
    >>Open the |cRXP_PICK_Mulberry Barrel|r. Loot it for |cRXP_LOOT_Mulberry Leaves|r
    .complete 30072,1 --Hungry Silkworm slain (5)
    .complete 30072,2 --Mulberry Leaves (1)
    .mob Hungry Silkworm
step
    .goto 376,62.37,62.49
    >>Loot the |cRXP_PICK_Silk Cocoon Buckets|r for |cRXP_LOOT_Raw Silk|r
    .complete 30072,3 --Raw Silk (5)
step
    .goto 376,62.67,59.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silkmaster Tsai|r
    .turnin 30072 >>Turn in Where Silk Comes From while you are here
    .isQuestComplete 30072
    .target Silkmaster Tsai
step
    #loop
    .goto 376,63.78,61.60,0
    .goto 376,63.78,61.60,40,0
    .goto 376,64.12,54.57,40,0
    .goto 376,66.67,54.38,40,0
    >>Kill |cRXP_ENEMY_Mutated Silkmoths|r
    >>Kill |cRXP_ENEMY_Tiny Mutated Silkmoths|r
    .complete 30059,1 --Mutated Silkmoth slain (6)
    .complete 30059,2 --Tiny Mutated Silkmoth slain (8)
    .mob Mutated Silkmoth
    .mob Tiny Mutated Silkmoth
step
    .goto 376,63.55,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Journeyman Chu|r
    .turnin 30059 >>Turn in The Moth Rebellion
    .target Journeyman Chu
step
    .goto 376,63.63,58.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Goh|r
    .accept 30058 >>Accept Mothallus!
    .target Master Goh
step
    .goto 376,64.60,57.60
    >>Kill |cRXP_ENEMY_Mothran|r
    .complete 30058,1 --Mothran slain (1)
    .mob Mothran
step
    .goto 376,63.63,58.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Goh|r
    .turnin 30058 >>Turn in Mothallus!
    .target Master Goh
step
    .goto 376,62.67,59.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silkmaster Tsai|r
    .turnin 30072 >>Turn in Where Silk Comes From
    .target Silkmaster Tsai
step
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29951 >>Turn in Muddy Water
    .unitscan Mudmug
step
    #loop
    .goto 376,68.88,43.31,0
    .goto 376,68.88,43.31,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,32.27,68.45,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29950 >>Turn in Li Li's Day Off
    .unitscan Li Li
step
    #loop
    .goto 376,85.93,22.11,0
    .goto 376,85.93,22.11,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,32.26,68.56,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29952 >>Accept Broken Dreams
    .unitscan Chen Stormstout
step
    .goto 376,34.20,70.60
    >>Speak with Chen Stormstout and listen to his story.
    .complete 29952,1 --Uncle Gao
    .target Uncle Gao
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Trader Jambeezi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 376,56.03,51.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hopsmaster Chang|r
    .accept 31393 >>Accept Temple of the White Tiger
    .target Hopsmaster Chang
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29952 >>Turn in Broken Dreams
    .accept 30046 >>Accept Chen's Resolution
    .turnin 30046 >>Turn in Chen's Resolution
    .accept 30048 >>Accept Li Li and the Grain
    .accept 30049 >>Accept Doesn't Hold Water
    .accept 30053 >>Accept Hop Hunting
    .unitscan Chen Stormstout
step
    .goto 376,55.14,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonecarver Mac|r
    .accept 32045 >>Accept Children of the Water
    .target Stonecarver Mac
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .turnin 31279 >>Turn in Everything I Know About Cooking
    .target Sungshin Ironpaw
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 32684 >>Accept You Want Fish?
    .target Sungshin Ironpaw
    .xp <90,1
step
    #loop
    .goto 376,68.88,43.31,0
    .goto 376,68.88,43.31,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,32.27,68.45,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30048 >>Turn in Li Li and the Grain
    .accept 30031 >>Accept Taste Test
    .unitscan Li Li
step
    #completewith Along93
    >>As you go: Click the |cRXP_PICK_Light Grain|r. Click the |cRXP_PICK_Fresh Grain|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30031,2 --Light Grain
    .complete 30031,4 --Fresh Grain
step
    .goto 376,52.73,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainlord Kai|r
    .accept 30029 >>Accept Wee Little Shenanigans
    .target Grainlord Kai
step
    #completewith Along93
    >>As you go: Kill |cRXP_ENEMY_Maizerly Thiefs|r, |cRXP_ENEMY_Granary Vandals|r and |cRXP_ENEMY_Tricky Maizers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30029,1 --Maizerly Thief (8)
    .mob Maizerly Thief
    .mob Granary Vandal
    .mob Tricky Maizer
step
    #label Along93
    .goto 376,52.60,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainer Pan|r
    .accept 30030 >>Accept Out of Sprite
    .target Grainer Pan
step
    #loop
    .goto 376,53.76,63.38,0
    .goto 376,53.76,63.38,40,0
    .goto 376,52.55,65.35,40,0
    .goto 376,51.28,62.43,40,0
    >>Click the |cRXP_PICK_Light Grain|r
    >>Click the |cRXP_PICK_Fresh Grain|r
    >>Kill |cRXP_ENEMY_Cornan|r
    >>Click the |cRXP_PICK_Malted Grain|r
    >>Click the |cRXP_PICK_Aged Grain|r
    >>Kill |cRXP_ENEMY_Maizerly Thiefs|r, |cRXP_ENEMY_Granary Vandals|r and |cRXP_ENEMY_Tricky Maizers|r
    .complete 30031,2 --Light Grain
    .complete 30031,4 --Fresh Grain
    .complete 30030,1 --Cornan slain (1)
    .complete 30031,3 --Malted Grain
    .complete 30031,1 --Aged Grain
    .complete 30029,1 --Maizerly Thief (8)
    .mob Cornan
    .mob Maizerly Thief
    .mob Granary Vandal
    .mob Tricky Maizer
step
    .goto 376,52.73,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainlord Kai|r
    .turnin 30029 >>Turn in Wee Little Shenanigans while you are here
    .isQuestComplete 30029
    .target Grainlord Kai
step
    .goto 376,52.60,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainer Pan|r
    .turnin 30030 >>Turn in Out of Sprite while you are here
    .isQuestComplete 30030
    .target Grainer Pan
step
    #loop
    .goto 376,68.88,43.31,0
    .goto 376,68.88,43.31,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,32.27,68.45,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30031 >>Turn in Taste Test
    .unitscan Li Li
step
    .goto 376,52.60,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainer Pan|r
    .turnin 30030 >>Turn in Out of Sprite
    .target Grainer Pan
step
    .goto 376,52.73,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainlord Kai|r
    .turnin 30029 >>Turn in Wee Little Shenanigans
    .accept 30028 >>Accept Grain Recovery
    .accept 30032 >>Accept The Quest for Better Barley
    .target Grainlord Kai
step
    #loop
    .goto 376,53.07,64.61,0
    .goto 376,53.07,64.61,40,0
    .goto 376,55.75,64.64,40,0
    .goto 376,55.90,70.13,40,0
    >>Loot the |cRXP_PICK_Stolen Malt Sacks|r for |cRXP_LOOT_Sack of Grain|r
    .complete 30028,1 --Sack of Grain (8)
step
    #loop
    .goto 376,53.60,74.52,0
    .goto 376,53.60,74.52,40,0
    .goto 376,51.25,77.50,40,0
    >>Click the |cRXP_PICK_Rappelling Rope|r
    >>Pick up |cRXP_PICK_Malted Cave Barley|r from the ground
    .complete 30032,1 --Rappelling Rope
    .complete 30032,2 --Malted Cave Barley (1)
step
    .goto 376,52.73,62.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainlord Kai|r
    .turnin 30028 >>Turn in Grain Recovery
    .target Grainlord Kai
step
    #loop
    .goto 376,32.27,68.45,0
    .goto 376,32.27,68.45,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,68.88,43.31,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30032 >>Turn in The Quest for Better Barley
    .accept 30047 >>Accept The Chen Taste Test
    .unitscan Li Li
step
    .goto 376,38.58,51.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r
    .complete 30053,2 --Gai Lan
    .target Gai Lan
step
    .goto 376,44.26,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Den Mudclaw|r
    .accept 30056 >>Accept The Farmer's Daughter
    .target Den Mudclaw
step
    .goto 376,44.26,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Den Mudclaw|r
    .complete 30053,3 --Den Mudclaw
    .target Den Mudclaw
step
    .goto 376,44.16,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mung-Mung|r
    .accept 30054 >>Accept Enough is Ookin' Enough
    .target Mung-Mung
step
    #completewith Along109
    >>As you go: Kill |cRXP_ENEMY_Springtail Gnashers|r, |cRXP_ENEMY_Springtail Leapers|r and |cRXP_ENEMY_Springtail Diggers|r. Loot them for |cRXP_LOOT_Virmen Tooth|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30054,1 --Virmen Tooth (1)
    .mob Springtail Gnasher
    .mob Springtail Leaper
    .mob Springtail Digger
step
    .goto 376,41.33,38.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mina Mudclaw|r
    .turnin 30056 >>Turn in The Farmer's Daughter
    .accept 30057 >>Accept Seeing Orange
    .target Mina Mudclaw
step
    .goto 376,44.26,34.21
    >>Bring Mina Mudclaw back home to her father.
    .complete 30057,1 --Den Mudclaw
    .target Den Mudclaw
step
    .goto 376,44.26,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Den Mudclaw|r
    .turnin 30057 >>Turn in Seeing Orange
    .target Den Mudclaw
step
    #label Along109
    .goto 376,44.16,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mung-Mung|r
    .accept 30259 >>Accept Mung-Mung's Vote II: Rotten to the Core
    .target Mung-Mung
    .isQuestTurnedIn 30258 --any of: Mung-Mung's Vote I: A Hozen's Problem
    .xp <90,1
step
    #loop
    .goto 376,42.40,33.80,0
    .goto 376,42.40,33.80,40,0
    .goto 376,43.80,37.00,40,0
    .goto 376,44.40,41.40,40,0
    >>Kill |cRXP_ENEMY_Springtail Gnashers|r, |cRXP_ENEMY_Springtail Leapers|r and |cRXP_ENEMY_Springtail Diggers|r. Loot them for |cRXP_LOOT_Virmen Tooth|r
    .complete 30054,1 --Virmen Tooth (1)
    .mob Springtail Gnasher
    .mob Springtail Leaper
    .mob Springtail Digger
step
    #loop
    .goto 376,43.40,38.50,0
    .goto 376,43.40,38.50,40,0
    .goto 376,44.20,40.10,40,0
    >>Pick up |cRXP_PICK_Partially Chewed Carrot|r from the ground
    .complete 30259,1 --Partially Chewed Carrot (10)
    .isOnQuest 30259
step
    .goto 376,44.16,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mung-Mung|r
    .turnin 30054 >>Turn in Enough is Ookin' Enough
    .target Mung-Mung
step
    .goto 376,44.16,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mung-Mung|r
    .turnin 30259 >>Turn in Mung-Mung's Vote II: Rotten to the Core
    .target Mung-Mung
    .isOnQuest 30259
step
    .goto 376,48.31,33.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gardener Fran|r
    .complete 30053,1 --Gardener Fran
    .target Gardener Fran
step
    #loop
    .goto 376,48.31,33.48,0
    .goto 376,48.31,33.48,40,0
    .goto 376,44.26,34.21,40,0
    .goto 376,38.58,51.72,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30053 >>Turn in Hop Hunting
    .unitscan ?
step
    .goto 376,48.31,33.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gardener Fran|r
    .accept 30050 >>Accept Gardener Fran and the Watering Can
    .target Gardener Fran
step
    .goto 376,48.31,33.48
    >>Listen to Gardener Fran's orders and water 60 of her vegetables.
    .complete 30050,1 --Watering Can Credit (1)
step
    .goto 376,48.31,33.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gardener Fran|r
    .turnin 30050 >>Turn in Gardener Fran and the Watering Can
    .target Gardener Fran
step
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30049 >>Turn in Doesn't Hold Water
    .accept 30051 >>Accept The Great Water Hunt
    .unitscan Mudmug
step
    .goto 376,56.06,33.83
    >>Kill |cRXP_ENEMY_Kracor|r
    .complete 32045,1 --Kracor slain (1)
    .mob Kracor
step
    #loop
    .goto 376,57.01,29.10,0
    .goto 376,57.01,29.10,40,0
    .goto 376,57.18,26.22,40,0
    >>Kill |cRXP_ENEMY_Glade Hunters|r and |cRXP_ENEMY_Glade Sprinters|r. Loot them for |cRXP_LOOT_Spindly Bloodfeather|r
    .complete 30267,2 --Spindly Bloodfeather (5)
    .mob Glade Hunter
    .mob Glade Sprinter
step
    #completewith Along122
    >>As you go: Kill |cRXP_ENEMY_Thundergill|r. |cRXP_WARN_Anything left is finished later|r
    .complete 32045,2 --Thundergill slain (1)
    .mob Thundergill
step
    #label Along122
    .goto 376,57.20,26.60
    >>Kill |cRXP_ENEMY_Manglemaw's Mother|r and loot |cRXP_LOOT_Enormous Crocolisk Tail|r. Use it to start the quest
    .collect 79238,1,30275 --Enormous Crocolisk Tail (1)
    .accept 30275 >>Accept A Crocolisk Tale
    .use 79238
    .mob Manglemaw's Mother
step
    .goto 376,55.95,25.38
    >>Kill |cRXP_ENEMY_Thundergill|r
    .complete 32045,2 --Thundergill slain (1)
    .mob Thundergill
step
    .goto 376,51.44,26.76
    >>Kill |cRXP_ENEMY_Succula|r
    .complete 32045,3 --Succula slain (1)
    .mob Succula
step
    #loop
    .goto 376,51.62,26.96,0
    .goto 376,51.62,26.96,40,0
    .goto 376,53.11,31.12,40,0
    .goto 376,53.20,26.33,40,0
    .goto 376,54.45,29.32,40,0
    .goto 376,54.53,26.75,40,0
    .goto 376,55.16,26.82,40,0
    .goto 376,55.64,28.14,40,0
    >>Guide Mudmug to Swirling Pools within the Gilded Fan, and help him collect 30 pawfuls of Gladewater.
    .complete 30051,1 --Swirling Pool
    .target Swirling Pool
step
    #loop
    .goto 376,59.40,37.30,0
    .goto 376,59.40,37.30,40,0
    .goto 376,58.33,40.26,40,0
    >>Kill |cRXP_ENEMY_Glade Glimmers|r. Loot them for |cRXP_LOOT_Glade Glimmer|r
    .complete 30267,1 --Glade Glimmer (18)
    .mob Glade Glimmer
step
    .goto 376,60.60,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan|r
    .turnin 30275 >>Turn in A Crocolisk Tale
    .target Yan
step
    .goto 376,60.97,32.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gladecaster Lang|r
    .turnin 30267 >>Turn in Watery Woes
    .target Gladecaster Lang
step
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30051 >>Turn in The Great Water Hunt
    .accept 30172 >>Accept Barreling Along
    .unitscan Mudmug
step
    #loop
    .goto 376,85.93,22.11,0
    .goto 376,85.93,22.11,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,32.26,68.56,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30047 >>Turn in The Chen Taste Test
    .unitscan Chen Stormstout
step
    #completewith next
    .hs >>Hearth to Trader Jambeezi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 376,53.59,51.24
    >>Learn the recipe for Sliced Peaches from the Guide to the Ways and make 5 of them for her.
    .complete 31281,1 --Sliced Peaches (1)
step
    .goto 376,55.92,49.33
    >>Lead Mudmug back to Halfhill
    .complete 30172,1 --Lead Mudmug back to Halfhill
step
    .goto 376,55.14,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonecarver Mac|r
    .turnin 32045 >>Turn in Children of the Water while you are here
    .isQuestComplete 32045
    .target Stonecarver Mac
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30172 >>Turn in Barreling Along
    .unitscan Chen Stormstout
step
    .goto 376,55.14,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonecarver Mac|r
    .turnin 32045 >>Turn in Children of the Water
    .target Stonecarver Mac
step
    .goto 376,52.23,48.70
    >>Kill |cRXP_ENEMY_Gina Mudclaw|r and loot |cRXP_LOOT_"Jinyu Princess" Irrigation System|r. Use it to start the quest
    .collect 89812,1,31936 --"Jinyu Princess" Irrigation System (1)
    .accept 31936 >>Accept The "Jinyu Princess" Irrigation System
    .use 89812
    .mob Gina Mudclaw
    .isQuestTurnedIn 30516 --any of: Growing the Farm I: A Little Problem
    .xp <90,1
step
    .goto 376,52.23,48.70
    >>Kill |cRXP_ENEMY_Gina Mudclaw|r and loot |cRXP_LOOT_"Earth-Slasher" Master Plow|r. Use it to start the quest
    .collect 89814,1,31938 --"Earth-Slasher" Master Plow (1)
    .accept 31938 >>Accept The "Earth-Slasher" Master Plow
    .use 89814
    .mob Gina Mudclaw
    .isQuestTurnedIn 30529 --any of: Growing the Farm III: The Mossy Boulder
    .xp <90,1
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 31938 >>Turn in The "Earth-Slasher" Master Plow
    .target Farmer Yoon
    .isOnQuest 31938
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 31936 >>Turn in The "Jinyu Princess" Irrigation System
    .target Farmer Yoon
    .isOnQuest 31936
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 32684 >>Accept You Want Fish?
    .target Sungshin Ironpaw
    .xp <90,1
step
    .goto 376,16.20,82.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tani|r
    .accept 30183 >>Accept Stalker Mastery
    .target Tani
step
    .goto 376,16.07,82.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30181 >>Accept Mushan Mastery
    .unitscan Hemet Nesingwary Jr.
step
    #loop
    .goto 376,10.98,72.33,0
    .goto 376,10.98,72.33,40,0
    .goto 376,13.35,70.27,40,0
    >>Kill |cRXP_ENEMY_Gorge Stalkers|r
    .complete 30183,1 --Gorge Stalker slain (15)
    .mob Gorge Stalker
step
    .goto 376,26.88,78.23
    >>Kill |cRXP_ENEMY_Young Dustback Mushans|r and |cRXP_ENEMY_Dustback Mushans|r
    .complete 30181,1 --Young Dustback Mushan (15)
    .mob Young Dustback Mushan
    .mob Dustback Mushan
step
    .goto 376,16.20,82.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tani|r
    .turnin 30183 >>Turn in Stalker Mastery
    .accept 30182 >>Accept Fox Mastery
    .target Tani
step
    .goto 376,16.07,82.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30181 >>Turn in Mushan Mastery
    .unitscan Hemet Nesingwary Jr.
step
    .goto 376,16.01,82.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30184 >>Accept Mushan Mastery: Darkhide
    .unitscan Hemet Nesingwary
step
    .goto 376,15.89,82.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matt "Lucky" Gotcher|r
    .accept 32038 >>Accept Stag Mastery
    .target Matt "Lucky" Gotcher
step
    #loop
    .goto 376,22.09,80.02,0
    .goto 376,22.09,80.02,40,0
    .goto 376,22.05,76.65,40,0
    .goto 376,28.48,81.61,40,0
    >>Kill |cRXP_ENEMY_Darkhide|r and loot |cRXP_LOOT_Darkhide's Head|r
    >>Kill |cRXP_ENEMY_Sly Pups|r and |cRXP_ENEMY_Sly Foxes|r
    >>Kill |cRXP_ENEMY_Wilderland Does|r and |cRXP_ENEMY_Wilderland Stags|r
    .complete 30184,1 --Darkhide's Head (1)
    .complete 30182,1 --Sly Pup (8)
    .complete 32038,1 --Wilderland Doe (8)
    .mob Darkhide
    .mob Sly Pup
    .mob Sly Fox
    .mob Wilderland Doe
    .mob Wilderland Stag
step
    .goto 376,15.89,82.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matt "Lucky" Gotcher|r
    .turnin 32038 >>Turn in Stag Mastery
    .target Matt "Lucky" Gotcher
step
    .goto 376,16.01,82.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30184 >>Turn in Mushan Mastery: Darkhide
    .unitscan Hemet Nesingwary
step
    .goto 376,16.20,82.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tani|r
    .turnin 30182 >>Turn in Fox Mastery
    .target Tani
step
    .goto 376,16.07,82.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30185 >>Accept Tortoise Mastery
    .unitscan Hemet Nesingwary Jr.
step
    .goto 376,19.44,76.75
    >>Kill |cRXP_ENEMY_Bulgeback Tortoises|r. Loot them for |cRXP_LOOT_Intact Tortoise Shell|r
    .complete 30185,1 --Intact Tortoise Shell (5)
    .mob Bulgeback Tortoise
step
    .goto 376,16.07,82.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30185 >>Turn in Tortoise Mastery
    .accept 30186 >>Accept Parental Mastery
    .unitscan Hemet Nesingwary Jr.
step
    .goto 376,24.54,74.63
    >>Kill |cRXP_ENEMY_Hemet Nesingwary Jr.|r and |cRXP_ENEMY_Torjar's Bane|r
    .complete 30186,1 --Hemet Nesingwary Jr. (1)
    .mob Hemet Nesingwary Jr.
    .mob Torjar's Bane
step
    .goto 376,16.01,82.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30186 >>Turn in Parental Mastery
    .unitscan Hemet Nesingwary
step
    .goto 376,18.06,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29872 >>Turn in Lin Tenderpaw
    .accept 29981 >>Accept Stemming the Swarm
    .unitscan Lin Tenderpaw
step
    .goto 376,17.96,56.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
    .accept 30623 >>Accept The Mantidote
    .target Mei Barrelbottom
    .isQuestTurnedIn 30241,30360,30376 --any of: Warn Stoneplow, Warn Stoneplow, Hope Springs Eternal
    .xp <86,1
step
    .goto 376,17.96,56.45
    >>Use Ken-Ken's Mask on 5 Ik'thik Wing Commanders, then defeat the Manifestations of Fear that come out.
    .complete 30623,1 --Manifestation of Fear (1)
    .isOnQuest 30623
step
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .accept 30622 >>Accept The Swarm Begins
    .target Loon Mai
    .isQuestTurnedIn 30241,30360,30376 --any of: Warn Stoneplow, Warn Stoneplow, Hope Springs Eternal
    .xp <86,1
step
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .accept 29982 >>Accept Evacuation Orders
    .target Loon Mai
step
    .goto 376,17.90,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 30623 >>Turn in The Mantidote
    .target ?
    .isOnQuest 30623
step
    #completewith Along167
    >>As you go: Kill |cRXP_ENEMY_Ik'thik Wingblades|r and |cRXP_ENEMY_Ik'thik Swiftclaws|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29981,1 --Ik'thik Wingblade (8)
    .mob Ik'thik Wingblade
    .mob Ik'thik Swiftclaw
step
    .goto 376,15.48,54.91
    >>Kill |cRXP_ENEMY_Ying Greentill|r and |cRXP_ENEMY_Haiyun Greentill|r
    >>Kill |cRXP_ENEMY_Mia Marlfur|r and |cRXP_ENEMY_Zhang Marlfur|r
    .complete 29982,3 --Ying Greentill (1)
    .complete 29982,4 --Mia Marlfur (1)
    .mob Ying Greentill
    .mob Haiyun Greentill
    .mob Mia Marlfur
    .mob Zhang Marlfur
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 376,15.20,55.40
    >>Kill |cRXP_ENEMY_Koro Mistwalkers|r, |cRXP_ENEMY_Crane Wing Monks|r and |cRXP_ENEMY_Crane Wing Acolytes|r
    .complete 30653,2 --Koro Mistwalker (8)
    .mob Koro Mistwalker
    .mob Crane Wing Monk
    .mob Crane Wing Acolyte
    .isOnQuest 30653
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 376,13.00,55.80
    >>Kill |cRXP_ENEMY_Sunwalker Dezcos|r and |cRXP_ENEMY_Thunder Cleft Braves|r
    .complete 30653,4 --Sunwalker Dezco (8)
    .mob Sunwalker Dezco
    .mob Thunder Cleft Brave
    .isOnQuest 30653
step
    .goto 376,12.84,55.73
    >>Kill |cRXP_ENEMY_Shu-Li Spadepaw|r and |cRXP_ENEMY_Feng Spadepaw|r
    .complete 29982,2 --Shu-Li Spadepaw (1)
    .mob Shu-Li Spadepaw
    .mob Feng Spadepaw
step
    #loop
    .goto 376,13.00,54.20,0
    .goto 376,13.00,54.20,40,0
    .goto 376,9.40,55.80,40,0
    >>Kill |cRXP_ENEMY_Ik'thik Warriors|r and |cRXP_ENEMY_Ik'thik Infestors|r
    .complete 30622,1 --Ik'thik Warrior (15)
    .mob Ik'thik Warrior
    .mob Ik'thik Infestor
    .isOnQuest 30622
step
    #label Along167
    .goto 376,7.14,54.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei Blacksoil|r
    .complete 29982,1 --Wei Blacksoil
    .target Wei Blacksoil
step
    #loop
    .goto 376,9.98,56.06,0
    .goto 376,9.98,56.06,40,0
    .goto 376,9.29,59.17,40,0
    .goto 376,12.85,59.31,40,0
    >>Kill |cRXP_ENEMY_Ik'thik Wingblades|r and |cRXP_ENEMY_Ik'thik Swiftclaws|r
    .complete 29981,1 --Ik'thik Wingblade (8)
    .mob Ik'thik Wingblade
    .mob Ik'thik Swiftclaw
step
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .turnin 29981 >>Turn in Stemming the Swarm
    .turnin 29982 >>Turn in Evacuation Orders
    .accept 29983 >>Accept The Hidden Master
    .target Loon Mai
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .turnin 29983 >>Turn in The Hidden Master
    .accept 29984 >>Accept Unyielding Fists: Trial of Bamboo
    .target Master Bruised Paw
step
    .goto 376,18.36,32.18
    >>Interact with |cRXP_FRIENDLY_Stack of Bamboo Reeds|r
    .complete 29984,1 --Stack of Bamboo Reeds
    .target Stack of Bamboo Reeds
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .turnin 29984 >>Turn in Unyielding Fists: Trial of Bamboo
    .accept 29985 >>Accept They Will Be Mist
    .accept 29986 >>Accept Fog Wards
    .target Master Bruised Paw
step
    .goto 376,18.06,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29992 >>Accept Tenderpaw By Name, Tender Paw By Reputation
    .unitscan Lin Tenderpaw
step
    #completewith Along175
    >>As you go: Kill |cRXP_ENEMY_Mist Incarnations|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29985,1 --Mist Incarnation slain (12)
    .mob Mist Incarnation
step
    #completewith Along174
    >>As you go: Open the |cRXP_PICK_Jademoon|r. Loot it for |cRXP_LOOT_Jademoon Leaf|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29992,1 --Jademoon Leaf (1)
step
    #label Along174
    .goto 376,16.01,32.11
    >>Click the |cRXP_PICK_Northern Fog Ward|r
    >>Click the |cRXP_PICK_Western Fog Ward|r
    .complete 29986,1 --Northern Fog Ward
    .complete 29986,2 --Western Fog Ward
step
    #label Along175
    .goto 376,18.10,41.46
    >>Click the |cRXP_PICK_Southern Fog Ward|r
    .complete 29986,3 --Southern Fog Ward
step
    #loop
    .goto 376,19.20,39.06,0
    .goto 376,19.20,39.06,40,0
    .goto 376,17.67,34.85,40,0
    .goto 376,17.15,29.72,40,0
    >>Open the |cRXP_PICK_Jademoon|r. Loot it for |cRXP_LOOT_Jademoon Leaf|r
    >>Kill |cRXP_ENEMY_Mist Incarnations|r
    .complete 29992,1 --Jademoon Leaf (1)
    .complete 29985,1 --Mist Incarnation slain (12)
    .mob Mist Incarnation
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .turnin 29985 >>Turn in They Will Be Mist while you are here
    .isQuestComplete 29985
    .target Master Bruised Paw
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .turnin 29986 >>Turn in Fog Wards while you are here
    .isQuestComplete 29986
    .target Master Bruised Paw
step
    .goto 376,18.06,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29992 >>Turn in Tenderpaw By Name, Tender Paw By Reputation
    .unitscan Lin Tenderpaw
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .turnin 29985 >>Turn in They Will Be Mist
    .turnin 29986 >>Turn in Fog Wards
    .accept 29987 >>Accept Unyielding Fists: Trial of Wood
    .target Master Bruised Paw
step
    .goto 376,18.25,32.22
    >>Interact with |cRXP_FRIENDLY_Stack of Wooden Planks|r
    .complete 29987,1 --Stack of Wooden Planks
    .target Stack of Wooden Planks
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .turnin 29987 >>Turn in Unyielding Fists: Trial of Wood
    .target Master Bruised Paw
step
    .goto 376,38.58,51.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r
    .accept 30052 >>Accept Weed War
    .target Gai Lan
step
    .goto 376,38.61,51.28
    >>Kill |cRXP_ENEMY_Ugly Weeds|r, |cRXP_ENEMY_Tiny Weeds|r and |cRXP_ENEMY_Nasty Weeds|r
    .complete 30052,1 --Ugly Weed (100)
    .mob Ugly Weed
    .mob Tiny Weed
    .mob Nasty Weed
step
    .goto 376,38.58,51.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r
    .turnin 30052 >>Turn in Weed War
    .target Gai Lan
step
    .goto 376,52.02,49.05
    >>Click the |cRXP_PICK_Tillers Shrine|r
    .accept 30534 >>Accept A Second Hand
    .isQuestTurnedIn 30529 --any of: Growing the Farm III: The Mossy Boulder
    .xp <90,1
step
    #loop
    .goto 376,52.23,48.70,0
    .goto 376,52.23,48.70,40,0
    .goto 376,53.06,51.86,40,0
    >>Kill |cRXP_ENEMY_Farmer Fungs|r, |cRXP_ENEMY_Haohan Mudclaws|r, |cRXP_ENEMY_Ellas|r and |cRXP_ENEMY_Fish Fellreeds|r
    .complete 30534,1 --Farmer Fung (8)
    .mob Farmer Fung
    .mob Haohan Mudclaw
    .mob Ella
    .mob Fish Fellreed
    .isOnQuest 30534
step
    .goto 376,52.02,49.05
    >>Click the |cRXP_PICK_Tillers Shrine|r
    .turnin 30534 >>Turn in A Second Hand
    .isOnQuest 30534
step
    .goto 376,54.67,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nana Mudclaw|r
    .accept 31948 >>Accept Nana's Vote II: The Sacred Springs
    .target Nana Mudclaw
    .isQuestTurnedIn 30519 --any of: Nana's Vote I: Nana's Secret Recipe
    .xp <90,1
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30055 >>Accept Stormstout's Hops
    .turnin 30055 >>Turn in Stormstout's Hops
    .unitscan Chen Stormstout
step
    #completewith next
    .hs >>Hearth to Trader Jambeezi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .xp 90 >>Grind to level 90 (You Want Fish? needs it)
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .accept 32684 >>Accept You Want Fish?
    .target Sungshin Ironpaw
step
    .goto 376,53.59,51.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sungshin Ironpaw|r
    .turnin 31281 >>Turn in So You Want to Be a Chef...
    .target Sungshin Ironpaw
    .isQuestComplete 31281
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30073 >>Accept The Emperor
    .unitscan Chen Stormstout
step
    .goto 376,58.92,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ben of the Booming Voice|r
    .turnin 32684 >>Turn in You Want Fish?
    .target Ben of the Booming Voice
step
    .goto 376,85.93,22.11
    >>Stand by and help Chen Stormstout with his brew.
    .complete 30073,1 --The Emperor Credit (1)
step
    #loop
    .goto 376,85.93,22.11,0
    .goto 376,85.93,22.11,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,32.26,68.56,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30073 >>Turn in The Emperor
    .accept 30074 >>Accept Knocking on the Door
    .turnin 30074 >>Turn in Knocking on the Door
    .accept 30075 >>Accept Clear the Way
    .unitscan Chen Stormstout
step
    #completewith Along197
    >>As you go: Kill |cRXP_ENEMY_Mischievous Virmens|r and |cRXP_ENEMY_Ale-Addled Hozens|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30075,1 --Mischievous Virmen (8)
    .mob Mischievous Virmen
    .mob Ale-Addled Hozen
step
    #loop
    .goto 376,68.71,43.12,0
    .goto 376,68.71,43.12,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,18.08,55.67,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30076 >>Accept The Fanciest Water
    .unitscan Mudmug
step
    #loop
    .goto 376,32.27,68.45,0
    .goto 376,32.27,68.45,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,68.88,43.31,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30077 >>Accept Barrels, Man
    .unitscan Li Li
step
    #completewith Along197
    >>As you go: Kill |cRXP_ENEMY_Curious Water Sprites|r. Loot them for |cRXP_LOOT_Spritewater Essence|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30076,1 --Spritewater Essence (3)
    .mob Curious Water Sprite
step
    #label Along197
    #loop
    .goto 376,32.97,67.94,0
    .goto 376,32.97,67.94,40,0
    .goto 376,36.88,65.73,40,0
    >>Interact with |cRXP_FRIENDLY_Barreled Pandarens|r
    .complete 30077,1 --Barreled Pandaren (7)
    .target Barreled Pandaren
step
    #loop
    .goto 376,37.00,65.00,0
    .goto 376,37.00,65.00,40,0
    .goto 376,35.60,67.60,40,0
    .goto 376,33.40,67.40,40,0
    >>Kill |cRXP_ENEMY_Curious Water Sprites|r. Loot them for |cRXP_LOOT_Spritewater Essence|r
    >>Kill |cRXP_ENEMY_Mischievous Virmens|r and |cRXP_ENEMY_Ale-Addled Hozens|r
    .complete 30076,1 --Spritewater Essence (3)
    .complete 30075,1 --Mischievous Virmen (8)
    .mob Curious Water Sprite
    .mob Mischievous Virmen
    .mob Ale-Addled Hozen
step
    #loop
    .goto 376,18.08,55.67,0
    .goto 376,18.08,55.67,40,0
    .goto 376,32.13,68.43,40,0
    .goto 376,36.00,69.10,40,0
    .goto 376,54.28,38.74,40,0
    .goto 376,68.71,43.12,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30076 >>Turn in The Fanciest Water
    .unitscan Mudmug
step
    #loop
    .goto 376,32.27,68.45,0
    .goto 376,32.27,68.45,40,0
    .goto 376,36.13,69.06,40,0
    .goto 376,52.69,62.83,40,0
    .goto 376,68.88,43.31,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30077 >>Turn in Barrels, Man
    .unitscan Li Li
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30075 >>Turn in Clear the Way
    .accept 30078 >>Accept Cleaning House
    .unitscan Chen Stormstout
step
    .goto 376,34.55,70.47
    >>Kill |cRXP_ENEMY_Eddy|r
    >>Kill |cRXP_ENEMY_Jooga|r
    .complete 30078,1 --Eddy slain (1)
    .complete 30078,2 --Jooga slain (1)
    .mob Eddy
    .mob Jooga
step
    .goto 376,38.77,69.65
    >>Kill |cRXP_ENEMY_Fizzy Yellow Alemental|r
    .complete 30078,3 --Fizzy Yellow Alemental slain (1)
    .mob Fizzy Yellow Alemental
step
    #loop
    .goto 376,32.26,68.56,0
    .goto 376,32.26,68.56,40,0
    .goto 376,36.04,68.98,40,0
    .goto 376,55.89,49.44,40,0
    .goto 376,68.88,43.14,40,0
    .goto 376,75.28,35.50,40,0
    .goto 376,83.64,21.45,40,0
    .goto 376,85.93,22.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30078 >>Turn in Cleaning House
    .unitscan Chen Stormstout
step
    .goto 376,36.20,68.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emmi|r
    .accept 30117 >>Accept Stoneplow Thirsts
    .target Emmi
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .accept 29988 >>Accept A Taste For Eggs
    .target Master Bruised Paw
step
    #loop
    .goto 376,26.40,41.67,0
    .goto 376,26.40,41.67,40,0
    .goto 376,25.67,45.80,40,0
    >>Pick up |cRXP_PICK_Hornbill Strider Egg|r from the ground
    >>Pick up |cRXP_PICK_Whitefisher Crane Egg|r from the ground
    >>Pick up |cRXP_PICK_Emperor Tern Egg|r from the ground
    .complete 29988,3 --Hornbill Strider Egg (1)
    .complete 29988,2 --Whitefisher Crane Egg (4)
    .complete 29988,1 --Emperor Tern Egg (10)
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .turnin 29988 >>Turn in A Taste For Eggs
    .accept 29989 >>Accept Unyielding Fists: Trial of Stone
    .target Master Bruised Paw
step
    .goto 376,18.15,32.18
    >>Interact with |cRXP_FRIENDLY_Stack of Stone Blocks|r
    .complete 29989,1 --Stack of Stone Blocks
    .target Stack of Stone Blocks
step
    .goto 376,18.30,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .turnin 29989 >>Turn in Unyielding Fists: Trial of Stone
    .target Master Bruised Paw
step
    .goto 376,18.06,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29990 >>Accept Training and Discipline
    .unitscan Lin Tenderpaw
step
    .goto 376,11.58,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Captain Oakenshield|r
    .turnin 30622 >>Turn in The Swarm Begins
    .target Guard Captain Oakenshield
    .isOnQuest 30622
step
    .goto 376,11.58,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Captain Oakenshield|r
    .accept 30625 >>Accept Students No More
    .target Guard Captain Oakenshield
    .isQuestTurnedIn 30622 --The Swarm Begins
    .isQuestTurnedIn 30623 --The Mantidote
    .isQuestTurnedIn 30624 --It Does You No Good In The Keg
    .xp <86,1
step
    .goto 376,8.80,51.20
    >>Kill |cRXP_ENEMY_Ik'thik Incubator|r
    .complete 30625,2 --Ik'thik Incubator slain (1)
    .mob Ik'thik Incubator
    .isOnQuest 30625
step
    .goto 376,9.00,54.40
    >>Kill |cRXP_ENEMY_Ik'thik Bloodrager|r
    .complete 30625,1 --Ik'thik Bloodrager slain (1)
    .mob Ik'thik Bloodrager
    .isOnQuest 30625
step
    .goto 376,9.60,58.00
    >>Kill |cRXP_ENEMY_Ik'thik Fearmonger|r
    .complete 30625,4 --Ik'thik Fearmonger slain (1)
    .mob Ik'thik Fearmonger
    .isOnQuest 30625
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 376,9.60,54.40
    >>Kill |cRXP_ENEMY_Fo Sho Knucklebumps|r, |cRXP_ENEMY_Ko-Yan Nas|r and |cRXP_ENEMY_Jooru Elderblades|r
    .complete 30653,3 --Fo Sho Knucklebump (8)
    .mob Fo Sho Knucklebump
    .mob Ko-Yan Na
    .mob Jooru Elderblade
    .isOnQuest 30653
step
    .goto 376,9.60,53.80
    >>Kill |cRXP_ENEMY_Ik'thik Tendon-Slicer|r
    .complete 30625,3 --Ik'thik Tendon-Slicer slain (1)
    .mob Ik'thik Tendon-Slicer
    .isOnQuest 30625
step
    .goto 376,11.58,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Captain Oakenshield|r
    .turnin 30625 >>Turn in Students No More
    .target Guard Captain Oakenshield
    .isOnQuest 30625
step
    .goto 376,11.58,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Captain Oakenshield|r
    .accept 30626 >>Accept Retreat!
    .target Guard Captain Oakenshield
    .isQuestTurnedIn 30625 --any of: Students No More
    .xp <86,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 376,17.40,50.20
    >>Kill |cRXP_ENEMY_Yi-Mo Longbrows|r and |cRXP_ENEMY_Warden of Zhus|r
    .complete 30653,1 --Yi-Mo Longbrow (8)
    .mob Yi-Mo Longbrow
    .mob Warden of Zhu
    .isOnQuest 30653
step
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .turnin 30626 >>Turn in Retreat!
    .target Loon Mai
    .isOnQuest 30626
step
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .turnin 30117 >>Turn in Stoneplow Thirsts
    .turnin 29990 >>Turn in Training and Discipline
    .target Loon Mai
step
    .goto 376,17.91,55.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
    .accept 30627 >>Accept The Savior of Stoneplow
    .target Master Bruised Paw
    .isQuestTurnedIn 30626 --any of: Retreat!
    .xp <86,1
step
    .goto 376,6.68,54.99
    >>Kill |cRXP_ENEMY_Ik'thik Colossus|r
    .complete 30627,1 --Ik'thik Colossus (1)
    .mob Ik'thik Colossus
    .isOnQuest 30627
step
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .turnin 30627 >>Turn in The Savior of Stoneplow
    .target Loon Mai
    .isOnQuest 30627
step
    .goto 376,17.83,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
    .accept 30628 >>Accept The Gratitude of Stoneplow
    .target Loon Mai
    .isQuestTurnedIn 30627 --any of: The Savior of Stoneplow
    .xp <86,1
step
    .goto 376,19.85,55.94
    >>Click the |cRXP_PICK_The Commander's Cache|r
    .turnin 30628 >>Turn in The Gratitude of Stoneplow
    .isOnQuest 30628
step
    #completewith next
    .hs >>Hearth to Trader Jambeezi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    #loop
    .goto 376,52.76,51.85,0
    .goto 376,52.76,51.85,40,0
    .goto 376,52.53,49.06,40,0
    .goto 376,41.73,30.02,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fish Fellreed|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31313 >>Accept Just A Folk Story
    .unitscan Fish Fellreed
    .isQuestTurnedIn 31312 --any of: The Old Map
    .xp <90,1
step
    #loop
    .goto 376,52.99,51.72,0
    .goto 376,52.99,51.72,40,0
    .goto 376,52.23,48.70,40,0
    .goto 376,44.64,34.07,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haohan Mudclaw|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30522 >>Accept Haohan's Vote II: The Real Culprits
    .unitscan Haohan Mudclaw
    .isQuestTurnedIn 30521 --any of: Haohan's Vote I: Bungalow Break-In
    .xp <90,1
step
    .goto 376,54.80,46.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Whitewhiskers|r
    .complete 31313,4 --Old Man Whitewhiskers
    .target Old Man Whitewhiskers
    .isOnQuest 31313
step
    .goto 376,55.14,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonecarver Mac|r
    .complete 31313,2 --Stonecarver Mac
    .target Stonecarver Mac
    .isOnQuest 31313
step
    .goto 376,56.22,45.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Min|r
    .complete 31313,3 --Mama Min
    .target Mama Min
    .isOnQuest 31313
step
    .goto 376,54.41,44.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainsorter Pei|r
    .complete 31313,1 --Grainsorter Pei
    .target Grainsorter Pei
    .isOnQuest 31313
step
    .goto 376,39.24,45.28
    >>Interact with |cRXP_FRIENDLY_Suspicious Footprints|r
    .complete 30522,1 --Suspicious Footprint (8)
    .target Suspicious Footprint
    .isOnQuest 30522
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30522 >>Turn in Haohan's Vote II: The Real Culprits
    .target Farmer Yoon
    .isOnQuest 30522
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .accept 30525 >>Accept Haohan's Vote III: Pure Poison
    .target Farmer Yoon
    .isQuestTurnedIn 30522 --any of: Haohan's Vote II: The Real Culprits
    .xp <90,1
step
    #loop
    .goto 376,52.76,51.85,0
    .goto 376,52.76,51.85,40,0
    .goto 376,52.53,49.06,40,0
    .goto 376,41.73,30.02,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fish Fellreed|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30524 >>Accept Growing the Farm II: Knock on Wood
    .unitscan Fish Fellreed
    .isQuestTurnedIn 30523 --any of: Growing the Farm II: The Broken Wagon
    .xp <90,1
step
    #loop
    .goto 376,52.76,51.85,0
    .goto 376,52.76,51.85,40,0
    .goto 376,52.53,49.06,40,0
    .goto 376,41.73,30.02,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fish Fellreed|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31313 >>Turn in Just A Folk Story
    .unitscan Fish Fellreed
    .isOnQuest 31313
step
    #loop
    .goto 376,52.90,51.69,0
    .goto 376,52.90,51.69,40,0
    .goto 376,52.14,47.97,40,0
    .goto 376,48.28,33.85,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Fung|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30518 >>Accept Farmer Fung's Vote II: On the Loose
    .unitscan Farmer Fung
    .isQuestTurnedIn 30517 --any of: Farmer Fung's Vote I: Yak Attack
    .xp <90,1
step
    #loop
    .goto 376,50.89,43.05,0
    .goto 376,50.89,43.05,40,0
    .goto 376,51.57,38.57,40,0
    >>Kill |cRXP_ENEMY_Escaped Shagskins|r
    .complete 30518,1 --Escaped Shagskin slain (5)
    .mob Escaped Shagskin
    .isOnQuest 30518
step
    #loop
    .goto 376,46.27,26.77,0
    .goto 376,46.27,26.77,40,0
    .goto 376,44.18,28.08,40,0
    .goto 376,41.15,28.82,40,0
    >>Loot the |cRXP_PICK_Boat Planks|r for |cRXP_LOOT_Waxed Plank|r
    .complete 30524,1 --Waxed Plank (100)
    .isOnQuest 30524
step
    .goto 376,38.70,17.88
    >>Pick up |cRXP_PICK_Ghostcap|r from the ground
    .complete 30525,3 --Ghostcap (1)
    .isOnQuest 30525
step
    .goto 376,44.36,19.67
    >>Pick up |cRXP_PICK_Bloodbloom|r from the ground
    .complete 30525,1 --Bloodbloom (1)
    .isOnQuest 30525
step
    .goto 376,48.41,18.39
    >>Pick up |cRXP_PICK_Cave Lily|r from the ground
    .complete 30525,2 --Cave Lily (1)
    .isOnQuest 30525
step
    .goto 376,47.14,20.31
    >>Pick up |cRXP_PICK_Violet Lichen|r from the ground
    .complete 30525,4 --Violet Lichen (1)
    .isOnQuest 30525
step
    .goto 376,44.16,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mung-Mung|r
    .accept 31946 >>Accept Mung-Mung's Vote III: The Great Carrot Caper
    .target Mung-Mung
    .isQuestTurnedIn 30259 --any of: Mung-Mung's Vote II: Rotten to the Core
    .xp <90,1
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Tilled Soils|r
    .complete 31946,3 --Tilled Soil (8)
    .mob Tilled Soil
    .isOnQuest 31946
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Ripe Juicycrunch Carrots|r, |cRXP_ENEMY_Plump Juicycrunch Carrots|r and |cRXP_ENEMY_Bursting Juicycrunch Carrots|r. Loot them for |cRXP_LOOT_Juicycrunch Carrot|r
    .complete 31946,1 --Juicycrunch Carrot (2)
    .mob Ripe Juicycrunch Carrot
    .mob Plump Juicycrunch Carrot
    .mob Bursting Juicycrunch Carrot
    .isOnQuest 31946
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Ripe Juicycrunch Carrots|r, |cRXP_ENEMY_Plump Juicycrunch Carrots|r and |cRXP_ENEMY_Bursting Juicycrunch Carrots|r
    .complete 31946,2 --Ripe Juicycrunch Carrot (2)
    .mob Ripe Juicycrunch Carrot
    .mob Plump Juicycrunch Carrot
    .mob Bursting Juicycrunch Carrot
    .isOnQuest 31946
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30525 >>Turn in Haohan's Vote III: Pure Poison
    .target Farmer Yoon
    .isOnQuest 30525
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .accept 30527 >>Accept Haohan's Vote IV: Melons For Felons
    .target Farmer Yoon
    .isQuestTurnedIn 30525 --any of: Haohan's Vote III: Pure Poison
    .xp <90,1
step
    #loop
    .goto 376,52.90,51.69,0
    .goto 376,52.90,51.69,40,0
    .goto 376,52.14,47.97,40,0
    .goto 376,48.28,33.85,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Fung|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30518 >>Turn in Farmer Fung's Vote II: On the Loose
    .unitscan Farmer Fung
    .isOnQuest 30518
step
    #loop
    .goto 376,52.90,51.69,0
    .goto 376,52.90,51.69,40,0
    .goto 376,52.14,47.97,40,0
    .goto 376,48.28,33.85,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Fung|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31947 >>Accept Farmer Fung's Vote III: Crazy For Cabbage
    .unitscan Farmer Fung
    .isQuestTurnedIn 30518 --any of: Farmer Fung's Vote II: On the Loose
    .xp <90,1
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Bursting Striped Melons|r, |cRXP_ENEMY_Plump Striped Melons|r and |cRXP_ENEMY_Ripe Striped Melons|r. Loot them for |cRXP_LOOT_Striped Melon|r
    .complete 30527,1 --Striped Melon (4)
    .mob Bursting Striped Melon
    .mob Plump Striped Melon
    .mob Ripe Striped Melon
    .isOnQuest 30527
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Ripe Green Cabbages|r, |cRXP_ENEMY_Bursting Green Cabbages|r and |cRXP_ENEMY_Plump Green Cabbages|r
    .complete 31947,2 --Ripe Green Cabbage (3)
    .mob Ripe Green Cabbage
    .mob Bursting Green Cabbage
    .mob Plump Green Cabbage
    .isOnQuest 31947
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Ripe Green Cabbages|r, |cRXP_ENEMY_Plump Green Cabbages|r and |cRXP_ENEMY_Bursting Green Cabbages|r. Loot them for |cRXP_LOOT_Green Cabbage|r
    .complete 31947,1 --Green Cabbage (3)
    .mob Ripe Green Cabbage
    .mob Plump Green Cabbage
    .mob Bursting Green Cabbage
    .isOnQuest 31947
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Tilled Soils|r
    .complete 31947,3 --Tilled Soil (8)
    .mob Tilled Soil
    .isOnQuest 31947
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Tilled Soils|r
    .complete 30527,3 --Tilled Soil (8)
    .mob Tilled Soil
    .isOnQuest 30527
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Bursting Striped Melons|r, |cRXP_ENEMY_Plump Striped Melons|r and |cRXP_ENEMY_Ripe Striped Melons|r
    .complete 30527,2 --Bursting Striped Melon (4)
    .mob Bursting Striped Melon
    .mob Plump Striped Melon
    .mob Ripe Striped Melon
    .isOnQuest 30527
step
    #loop
    .goto 376,52.90,51.69,0
    .goto 376,52.90,51.69,40,0
    .goto 376,52.14,47.97,40,0
    .goto 376,48.28,33.85,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Fung|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31947 >>Turn in Farmer Fung's Vote III: Crazy For Cabbage
    .unitscan Farmer Fung
    .isOnQuest 31947
step
    #loop
    .goto 376,52.76,51.85,0
    .goto 376,52.76,51.85,40,0
    .goto 376,52.53,49.06,40,0
    .goto 376,41.73,30.02,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fish Fellreed|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31314 >>Accept Old Man Thistle's Treasure
    .unitscan Fish Fellreed
    .isQuestTurnedIn 31313 --any of: Just A Folk Story
    .xp <90,1
step
    #loop
    .goto 376,52.76,51.85,0
    .goto 376,52.76,51.85,40,0
    .goto 376,52.53,49.06,40,0
    .goto 376,41.73,30.02,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fish Fellreed|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30524 >>Turn in Growing the Farm II: Knock on Wood
    .unitscan Fish Fellreed
    .isOnQuest 30524
step
    .goto 376,52.23,48.70
    >>Kill |cRXP_ENEMY_Gina Mudclaw|r and loot |cRXP_LOOT_"Thunder King" Pest Repellers|r. Use it to start the quest
    .collect 89813,1,31937 --"Thunder King" Pest Repellers (1)
    .accept 31937 >>Accept "Thunder King" Pest Repellers
    .use 89813
    .mob Gina Mudclaw
    .isQuestTurnedIn 30524 --any of: Growing the Farm II: Knock on Wood
    .xp <90,1
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30527 >>Turn in Haohan's Vote IV: Melons For Felons
    .target Farmer Yoon
    .isOnQuest 30527
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .accept 30528 >>Accept Haohan's Vote V: Chief Yip-Yip
    .target Farmer Yoon
    .isQuestTurnedIn 30527 --any of: Haohan's Vote IV: Melons For Felons
    .xp <90,1
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 31937 >>Turn in "Thunder King" Pest Repellers
    .target Farmer Yoon
    .isOnQuest 31937
step
    .goto 376,44.16,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mung-Mung|r
    .turnin 31946 >>Turn in Mung-Mung's Vote III: The Great Carrot Caper
    .target Mung-Mung
    .isOnQuest 31946
step
    .goto 376,37.05,23.86
    >>Find the cave entrance and recover Old Man Thistle's hidden treasure.
    .complete 31314,1 --Kill Credit: Find Cave Entrance
    .target Kill Credit: Find Cave Entrance
    .isOnQuest 31314
step
    .goto 376,32.32,20.56
    >>Kill |cRXP_ENEMY_Chief Yip-Yip|r
    .complete 30528,1 --Chief Yip-Yip slain (1)
    .mob Chief Yip-Yip
    .isOnQuest 30528
step
    #completewith next
    .zone 391 >>Travel to Shrine of Two Moons
    .zoneskip 391
    .isOnQuest 31479
step
    .goto 391,26.41,65.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Ginseng|r from |cRXP_FRIENDLY_Stephen Wong|r
    .complete 31479,1 --Ginseng (1)
    .target Stephen Wong
    .isOnQuest 31479
step
    #completewith next
    .zone 376 >>Leave Shrine of Two Moons for Valley of the Four Winds
    .zoneskip 376
step
    .goto 376,56.71,21.87
    >>Open the |cRXP_PICK_Golden Falls|r. Loot it for |cRXP_LOOT_Thousand-Year Water|r
    .complete 31948,1 --Thousand-Year Water (1)
    .isOnQuest 31948
step
    #completewith next
    .zone 377 >>Travel to Cavern of Endless Echoes
    .zoneskip 377
step
    .goto 377,31.36,52.86
    >>Click the |cRXP_PICK_Hidden Treasure|r
    .complete 31314,2 --Hidden Treasure
    .isOnQuest 31314
step
    .goto 377,31.36,52.86
    >>Click the |cRXP_PICK_Hidden Treasure|r
    .turnin 31314 >>Turn in Old Man Thistle's Treasure
    .isOnQuest 31314
step
    .goto 377,31.36,52.86
    >>Click the |cRXP_PICK_Hidden Treasure|r
    .accept 31315 >>Accept The Heartland Legacy
    .isQuestTurnedIn 31314 --any of: Old Man Thistle's Treasure
    .xp <90,1
step
    #completewith next
    .zone 376 >>Leave Cavern of Endless Echoes for Valley of the Four Winds
    .zoneskip 376
step
    #completewith next
    .hs >>Hearth to Trader Jambeezi's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 376,54.67,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nana Mudclaw|r
    .turnin 31948 >>Turn in Nana's Vote II: The Sacred Springs
    .target Nana Mudclaw
    .isOnQuest 31948
step
    .goto 376,54.67,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nana Mudclaw|r
    .accept 31949 >>Accept Nana's Vote III: Witchberry Julep
    .target Nana Mudclaw
    .isQuestTurnedIn 31948 --any of: Nana's Vote II: The Sacred Springs
    .xp <90,1
step
    .goto 376,53.88,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seedkeeper Shing Sing|r
    .turnin 31315 >>Turn in The Heartland Legacy
    .target Seedkeeper Shing Sing
    .isOnQuest 31315
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Bursting Witchberries|r, |cRXP_ENEMY_Plump Witchberries|r and |cRXP_ENEMY_Ripe Witchberries|r
    .complete 31949,2 --Bursting Witchberries (3)
    .mob Bursting Witchberries
    .mob Plump Witchberries
    .mob Ripe Witchberries
    .isOnQuest 31949
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Bursting Witchberries|r, |cRXP_ENEMY_Plump Witchberries|r and |cRXP_ENEMY_Ripe Witchberries|r. Loot them for |cRXP_LOOT_Witchberries|r
    .complete 31949,1 --Witchberries (3)
    .mob Bursting Witchberries
    .mob Plump Witchberries
    .mob Ripe Witchberries
    .isOnQuest 31949
step
    .goto 376,51.86,47.86
    >>Kill |cRXP_ENEMY_Tilled Soils|r
    .complete 31949,3 --Tilled Soil (8)
    .mob Tilled Soil
    .isOnQuest 31949
step
    .goto 376,52.25,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Yoon|r
    .turnin 30528 >>Turn in Haohan's Vote V: Chief Yip-Yip
    .target Farmer Yoon
    .isOnQuest 30528
step
    .goto 376,53.17,52.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bobo Ironpaw|r
    .turnin 31479 >>Turn in Way of the Brew
    .target Bobo Ironpaw
    .isOnQuest 31479
step
    .goto 376,53.17,52.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bobo Ironpaw|r
    .accept 31480 >>Accept Have a Drink
    .target Bobo Ironpaw
    .isQuestTurnedIn 31479 --any of: Way of the Brew
    .xp <85,1
step
    .goto 376,53.17,52.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bobo Ironpaw|r
    .turnin 31480 >>Turn in Have a Drink
    .target Bobo Ironpaw
    .isQuestComplete 31480
step
    .goto 376,54.67,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nana Mudclaw|r
    .turnin 31949 >>Turn in Nana's Vote III: Witchberry Julep
    .target Nana Mudclaw
    .isOnQuest 31949
step
    +|cRXP_WARN_End of the Valley of the Four Winds route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Krasarang Wilds|r: Ken-Ken
    >>|cRXP_FRIENDLY_Krasarang Wilds|r: Kang Bramblestaff << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Kun-Lai Summit|r: The Road to Kun-Lai, Temple of the White Tiger << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_another zone|r: It Does You No Good In The Keg << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: So You Want to Be a Chef...
]])
