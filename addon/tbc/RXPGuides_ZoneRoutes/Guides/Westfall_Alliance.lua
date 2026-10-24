-- 10-44 Westfall: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 4 parts (from level 10, 15, 18, 41).
-- Split into 4 guides, listed under "10 - 42 Westfall" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Westfall.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 42 Westfall
#subweight -10
#name 10-13 Westfall: around Farmer Saldean
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver;Zone Routes (Alliance)\10-12 Bloodmyst Isle: around Morae;Zone Routes (Alliance)\8-11 Teldrassil: around Mathrengyl Bearwalker

step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >>Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
    .isOnQuest 132
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 143 >>Turn in Messenger to Westfall
    .target Gryan Stoutmantle
    .isOnQuest 143
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >>Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
    .isOnQuest 141
step << Human
    .goto 1436/0,1021.67,-10500.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .turnin 6285 >>Turn in Return to Lewis
    .target Quartermaster Lewis
    .isOnQuest 6285
step << Human
    .goto 1436/0,1021.67,-10500.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >>Accept A Swift Message
    .target Quartermaster Lewis
    .xp <10,1
step
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 109 >>Accept Report to Gryan Stoutmantle
    .target Farmer Saldean
step
    .goto 1436/0,1041.97,-10112.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .accept 22 >>Accept Goretusk Liver Pie
    .target Salma Saldean
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >>Accept Westfall Stew
    .target Verna Furlbrow
step
    .goto 1436/0,918.42,-9851.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >>Accept The Forgotten Heirloom
    .target Farmer Furlbrow
step
    .goto 1436/0,1041.97,-10112.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >>Turn in Westfall Stew
    .accept 38 >>Accept Westfall Stew
    .target Salma Saldean
step
    .goto 1436/0,1021.67,-10500.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .target Quartermaster Lewis
    .home >>Set your Hearthstone to Quartermaster Lewis's inn
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >>Turn in Report to Gryan Stoutmantle
    .accept 12 >>Accept The People's Militia
    .target Gryan Stoutmantle
step << Human
    .goto 1436/0,1021.67,-10500.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >>Accept A Swift Message
    .target Quartermaster Lewis
    .xp <10,1
step
    #loop
    .goto 1436/0,1451.12,-9998.27,0
    .goto 1436/0,1451.12,-9998.27,40,0
    .goto 1436/0,1415.77,-9878.33,40,0
    .goto 1436/0,1290.12,-9849.87,40,0
    >>Kill |cRXP_ENEMY_Defias Smugglers|r
    >>Open the |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
    .complete 12,2 --Defias Smuggler slain (15)
    .complete 64,1 --Furlbrow's Pocket Watch (1)
    .mob Defias Smuggler
step
    #completewith Drop136x1
    >>|cRXP_LOOT_Captain Sander's Treasure Map|r can drop from |cRXP_ENEMY_Murloc Coastrunner|r, |cRXP_ENEMY_Murloc Tidehunter|r, |cRXP_ENEMY_Murloc Warrior|r. Use it to start the quest if you get one
    .collect 1357,1,136 --Captain Sander's Treasure Map (1)
    .accept 136 >>Accept Captain Sander's Hidden Treasure
    .use 1357
step
    #label Drop136x1
    #loop
    .goto 1436/0,1007.32,-9862.70,0
    .goto 1436/0,1007.32,-9862.70,40,0
    .goto 1436/0,977.92,-9788.27,40,0
    >>Kill |cRXP_ENEMY_Harvest Golems|r, |cRXP_ENEMY_Harvest Watchers|r, |cRXP_ENEMY_Harvest Reapers|r and |cRXP_ENEMY_Rusty Harvest Golems|r. Loot them for |cRXP_LOOT_Okra|r
    .complete 38,4 --Okra (3)
    .mob Harvest Golem
    .mob Harvest Watcher
    .mob Harvest Reaper
    .mob Rusty Harvest Golem
step
    .goto 1436/0,918.42,-9851.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .turnin 64 >>Turn in The Forgotten Heirloom
    .target Farmer Furlbrow
step
    #completewith Drop136x2
    >>|cRXP_LOOT_Captain Sander's Treasure Map|r can drop from |cRXP_ENEMY_Murloc Coastrunner|r, |cRXP_ENEMY_Murloc Tidehunter|r, |cRXP_ENEMY_Murloc Warrior|r. Use it to start the quest if you get one
    .collect 1357,1,136 --Captain Sander's Treasure Map (1)
    .accept 136 >>Accept Captain Sander's Hidden Treasure
    .use 1357
step
    #label Drop136x2
    #loop
    .goto 1436/0,849.47,-10049.60,0
    .goto 1436/0,849.47,-10049.60,40,0
    .goto 1436/0,907.57,-10153.67,40,0
    .goto 1436/0,925.42,-10392.13,40,0
    >>Kill |cRXP_ENEMY_Greater Fleshrippers|r, |cRXP_ENEMY_Young Fleshrippers|r, |cRXP_ENEMY_Vultros|r and |cRXP_ENEMY_Fleshrippers|r. Loot them for |cRXP_LOOT_Stringy Vulture Meat|r
    >>Kill |cRXP_ENEMY_Goretusks|r, |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Goretusk Liver|r
    .complete 38,1 --Stringy Vulture Meat (3)
    .complete 22,1 --Goretusk Liver (8)
    .mob Greater Fleshripper
    .mob Young Fleshripper
    .mob Vultros
    .mob Fleshripper
    .mob Goretusk
    .mob Young Goretusk
    .mob Great Goretusk
step
    .goto 1436/0,1041.97,-10112.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 22 >>Turn in Goretusk Liver Pie
    .target Salma Saldean
step
    #loop
    .goto 1436/0,1243.22,-10501.80,0
    .goto 1436/0,1243.22,-10501.80,40,0
    .goto 1436/0,1330.72,-10490.13,40,0
    >>Kill |cRXP_ENEMY_Defias Trappers|r
    .complete 12,1 --Defias Trapper slain (15)
    .mob Defias Trapper
step
    .goto 1436/0,1041.97,-10511.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >>Accept Patrolling Westfall
    .target Captain Danuvin
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 12 >>Turn in The People's Militia
    .accept 13 >>Accept The People's Militia
    .target Gryan Stoutmantle
step
    #completewith Drop136x3
    >>|cRXP_LOOT_Captain Sander's Treasure Map|r can drop from |cRXP_ENEMY_Murloc Coastrunner|r, |cRXP_ENEMY_Murloc Tidehunter|r, |cRXP_ENEMY_Murloc Warrior|r. Use it to start the quest if you get one
    .collect 1357,1,136 --Captain Sander's Treasure Map (1)
    .accept 136 >>Accept Captain Sander's Hidden Treasure
    .use 1357
step
    #loop
    .goto 1436/0,1163.07,-10477.30,0
    .goto 1436/0,1163.07,-10477.30,40,0
    .goto 1436/0,1120.37,-10384.67,40,0
    >>Kill |cRXP_ENEMY_Goretusks|r and |cRXP_ENEMY_Young Goretusks|r. Loot them for |cRXP_LOOT_Goretusk Snout|r
    .complete 38,3 --Goretusk Snout (3)
    .mob Goretusk
    .mob Young Goretusk
step
    #label Drop136x3
    #loop
    .goto 1436/0,1024.47,-9702.40,0
    .goto 1436/0,1024.47,-9702.40,40,0
    .goto 1436/0,1066.47,-9608.83,40,0
    >>Kill |cRXP_ENEMY_Murloc Tidehunters|r, |cRXP_ENEMY_Murloc Oracles|r, |cRXP_ENEMY_Murloc Minor Oracles|r and |cRXP_ENEMY_Murloc Netters|r. Loot them for |cRXP_LOOT_Murloc Eye|r
    >>Kill |cRXP_ENEMY_Riverpaw Taskmasters|r, |cRXP_ENEMY_Riverpaw Gnolls|r, |cRXP_ENEMY_Riverpaw Mongrels|r and |cRXP_ENEMY_Riverpaw Brutes|r. Loot them for |cRXP_LOOT_Gnoll Paw|r
    .complete 38,2 --Murloc Eye (3)
    .complete 102,1 --Gnoll Paw (8)
    .mob Murloc Tidehunter
    .mob Murloc Oracle
    .mob Murloc Minor Oracle
    .mob Murloc Netter
    .mob Riverpaw Taskmaster
    .mob Riverpaw Gnoll
    .mob Riverpaw Mongrel
    .mob Riverpaw Brute
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 151 >>Accept Poor Old Blanchy
    .target Verna Furlbrow
step
    .goto 1436/0,1041.97,-10112.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 38 >>Turn in Westfall Stew
    .target Salma Saldean
step
    .goto 1436/0,1041.97,-10511.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .turnin 102 >>Turn in Patrolling Westfall
    .target Captain Danuvin
step
    .goto 1436/0,1127.37,-10636.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .accept 153 >>Accept Red Leather Bandanas
    .target Scout Galiaan
step
    #loop
    .goto 1436/0,1217.67,-10491.77,0
    .goto 1436/0,1217.67,-10491.77,40,0
    .goto 1436/0,1328.62,-10487.57,40,0
    .goto 1436/0,1402.82,-10311.40,40,0
    >>Kill |cRXP_ENEMY_Defias Smugglers|r, |cRXP_ENEMY_Defias Pathstalkers|r, |cRXP_ENEMY_Defias Highwaymans|r and |cRXP_ENEMY_Defias Knuckledusters|r. Loot them for |cRXP_LOOT_Red Leather Bandana|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Smuggler
    .mob Defias Pathstalker
    .mob Defias Highwayman
    .mob Defias Knuckleduster
step
    .goto 1436/0,1127.37,-10636.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .turnin 153 >>Turn in Red Leather Bandanas
    .target Scout Galiaan
step
    #loop
    .goto 1436/0,1447.27,-11003.70,0
    .goto 1436/0,1447.27,-11003.70,40,0
    .goto 1436/0,1526.37,-11013.97,40,0
    >>Kill |cRXP_ENEMY_Defias Pillagers|r
    >>Kill |cRXP_ENEMY_Defias Looters|r
    .complete 13,1 --Defias Pillager slain (15)
    .complete 13,2 --Defias Looter slain (15)
    .mob Defias Pillager
    .mob Defias Looter
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 103 >>Accept Keeper of the Flame
    .target Captain Grayson
step
    #completewith next
    .hs >>Hearth to Quartermaster Lewis's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 13 >>Turn in The People's Militia
    .target Gryan Stoutmantle
step
    #loop
    .goto 1436/0,1038.47,-10219.00,0
    .goto 1436/0,1038.47,-10219.00,40,0
    .goto 1436/0,1192.47,-10179.10,40,0
    .goto 1436/0,1303.07,-10197.30,40,0
    >>Kill |cRXP_ENEMY_Harvest Golems|r, |cRXP_ENEMY_Harvest Watchers|r, |cRXP_ENEMY_Harvest Reapers|r and |cRXP_ENEMY_Rusty Harvest Golems|r. Loot them for |cRXP_LOOT_Flask of Oil|r
    >>Loot the |cRXP_PICK_Sack of Oats|r for |cRXP_LOOT_Handful of Oats|r
    .complete 103,1 --Flask of Oil (5)
    .complete 151,1 --Handful of Oats (8)
    .mob Harvest Golem
    .mob Harvest Watcher
    .mob Harvest Reaper
    .mob Rusty Harvest Golem
step
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >>Accept The Killing Fields
    .target Farmer Saldean
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 151 >>Turn in Poor Old Blanchy
    .target Verna Furlbrow
step
    .goto 1436/0,2109.82,-10514.17
    >>Click the |cRXP_PICK_Captain's Footlocker|r
    .turnin 136 >>Turn in Captain Sander's Hidden Treasure
    .isOnQuest 136
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 103 >>Turn in Keeper of the Flame
    .target Captain Grayson
step
    #loop
    .goto 1436/0,1620.52,-10648.33,0
    .goto 1436/0,1620.52,-10648.33,40,0
    .goto 1436/0,1706.27,-10550.80,40,0
    >>Kill |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher slain (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .turnin 9 >>Turn in The Killing Fields
    .target Farmer Saldean
step << Human
    .goto 1436/0,1021.67,-10500.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >>Accept A Swift Message
    .target Quartermaster Lewis
step << Human
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Turn in A Swift Message
    .accept 6281 >>Accept Continue to Stormwind
    .target Thor
step
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train 1h Swords and Staves << Warlock/Mage
    .trainer >>Train 1h Swords << Rogue
    .trainer >>Train Staves << Priest
    .trainer >>Train 2h Swords << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << NightElf/Draenei
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << !Human
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Train your class spells
    .target Ursula Deline
    .xp <22,1
step << Rogue
    .goto 1436/0,619.52,-11035.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .turnin 2360 >>Turn in Mathias and the Defias
    .target Agent Kearnen
    .isOnQuest 2360
step << !Dwarf Rogue
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .train 7934,3
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
step
    .goto 1436/0,1563.82,-10957.03
    >>Click the |cRXP_PICK_Old Footlocker|r
    .turnin 67 >>Turn in The Legend of Stalvan
    .isOnQuest 67
step << Paladin
    .goto 1436/0,1557.52,-11482.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1650 >>Turn in The Tome of Valor
    .target Daphne Stilwell
    .isOnQuest 1650
step
    +|cRXP_WARN_That is all of Westfall for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: Continue to Stormwind << Human
step
    +|cRXP_WARN_Suggested next zones at level 12|r: |cRXP_FRIENDLY_Darkshore|r (about 2.2 levels of quests, starting around Thundris Windweaver), |cRXP_FRIENDLY_Bloodmyst Isle|r (about 0.9 levels of quests, starting around Morae), |cRXP_FRIENDLY_Teldrassil|r (about 0.8 levels of quests, starting around Mathrengyl Bearwalker). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Westfall is planned from level 15.|r Load its guide for level 15 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 42 Westfall
#subweight -10
#name 15-16 Westfall
--RouteBuilder:next
#next Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver;Zone Routes (Alliance)\14-15 Loch Modan

step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 142 >>Accept The Defias Brotherhood
    .target Gryan Stoutmantle
    .isQuestTurnedIn 141 --any of: The Defias Brotherhood
    .xp <14,1
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >>Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 14 >>Accept The People's Militia
    .target Gryan Stoutmantle
    .isQuestTurnedIn 13 --any of: The People's Militia
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 144 >>Accept Messenger to Westfall
    .target Gryan Stoutmantle
    .isQuestTurnedIn 143 --any of: Messenger to Westfall
    .xp <14,1
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 135 >>Accept The Defias Brotherhood
    .target Gryan Stoutmantle
    .isQuestTurnedIn 132 --any of: The Defias Brotherhood
    .xp <14,1
step
    .goto 1436/0,1438.17,-11017.70
    >>Kill |cRXP_ENEMY_Defias Messenger|r and loot |cRXP_LOOT_A Mysterious Message|r
    .complete 142,1 --A Mysterious Message (1)
    .mob Defias Messenger
    .isOnQuest 142
step
    .goto 1436/0,1713.62,-11157.70
    >>Kill |cRXP_ENEMY_Defias Knuckledusters|r
    .complete 14,3 --Defias Knuckleduster slain (5)
    .mob Defias Knuckleduster
    .isOnQuest 14
step
    .goto 1436/0,1722.02,-11155.13
    >>Kill |cRXP_ENEMY_Defias Pathstalkers|r
    .complete 14,2 --Defias Pathstalker slain (5)
    .mob Defias Pathstalker
    .isOnQuest 14
step
    #loop
    .goto 1436/0,1685.97,-11296.30,0
    .goto 1436/0,1685.97,-11296.30,40,0
    .goto 1436/0,1544.92,-11279.03,40,0
    >>Kill |cRXP_ENEMY_Defias Highwaymans|r
    .complete 14,1 --Defias Highwayman slain (8)
    .mob Defias Highwayman
    .isOnQuest 14
step
    .goto 1436/0,2109.82,-10514.17
    >>Click the |cRXP_PICK_Captain's Footlocker|r
    .accept 138 >>Accept Captain Sander's Hidden Treasure
    .isQuestTurnedIn 136 --any of: Captain Sander's Hidden Treasure
    .xp <14,1
step
    .goto 1436/0,1598.47,-10515.10
    >>Click the |cRXP_PICK_Broken Barrel|r
    .turnin 138 >>Turn in Captain Sander's Hidden Treasure
    .isOnQuest 138
step
    .goto 1436/0,1598.47,-10515.10
    >>Click the |cRXP_PICK_Broken Barrel|r
    .accept 139 >>Accept Captain Sander's Hidden Treasure
    .isQuestTurnedIn 138 --any of: Captain Sander's Hidden Treasure
    .xp <14,1
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 14 >>Turn in The People's Militia
    .target Gryan Stoutmantle
    .isOnQuest 14
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >>Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
    .isOnQuest 142
step
    .goto 1436/0,1067.87,-10508.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Defias Traitor|r
    .accept 155 >>Accept The Defias Brotherhood
    .target The Defias Traitor
    .isQuestTurnedIn 142 --any of: The Defias Brotherhood
    .xp <14,1
step
    .goto 1436/0,1527.42,-11069.03
    >>Escort The Defias Traitor to discover where VanCleef is hiding
    .complete 155,1 --Escort The Defias Traitor to discover where VanCleef is hiding
    .isOnQuest 155
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >>Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
    .isOnQuest 155
step
    .goto 1436/0,1594.62,-9797.37
    >>Click the |cRXP_PICK_Old Jug|r
    .turnin 139 >>Turn in Captain Sander's Hidden Treasure
    .isOnQuest 139
step
    .goto 1436/0,1594.62,-9797.37
    >>Click the |cRXP_PICK_Old Jug|r
    .accept 140 >>Accept Captain Sander's Hidden Treasure
    .isQuestTurnedIn 139 --any of: Captain Sander's Hidden Treasure
    .xp <14,1
step
    .goto 1436/0,2107.72,-9794.57
    >>Click the |cRXP_PICK_Locked Chest|r
    .turnin 140 >>Turn in Captain Sander's Hidden Treasure
    .isOnQuest 140
step
    +|cRXP_WARN_That is all of Westfall for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Redridge Mountains|r: Messenger to Westfall, The Defias Brotherhood
    >>|cRXP_FRIENDLY_Stormwind City|r: The Defias Brotherhood
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.9 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Darkshore|r (about 1.7 levels of quests, starting around Thundris Windweaver), |cRXP_FRIENDLY_Loch Modan|r (about 0.6 levels of quests). Completing this step loads the guide for Bloodmyst Isle --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Westfall is planned from level 18.|r Load its guide for level 18 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 42 Westfall
#subweight -10
#name 18-19 Westfall
--RouteBuilder:next
#next Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\17-19 Darkshore: around Terenthis

step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 152 >>Accept The Coast Isn't Clear
    .accept 104 >>Accept The Coastal Menace
    .target Captain Grayson
step
    #loop
    .goto 1436/0,2076.92,-11107.30,0
    .goto 1436/0,2076.92,-11107.30,40,0
    .goto 1436/0,2047.52,-11033.80,40,0
    >>Kill |cRXP_ENEMY_Murloc Oracles|r
    >>Kill |cRXP_ENEMY_Murloc Tidehunters|r
    .complete 152,4 --Murloc Oracle slain (7)
    .complete 152,3 --Murloc Tidehunter slain (7)
    .mob Murloc Oracle
    .mob Murloc Tidehunter
step
    #loop
    .goto 1436/0,2021.97,-10179.57,0
    .goto 1436/0,2021.97,-10179.57,40,0
    .goto 1436/0,1988.72,-10036.30,40,0
    >>Kill |cRXP_ENEMY_Murloc Warriors|r
    .complete 152,2 --Murloc Warrior slain (7)
    .mob Murloc Warrior
step
    #loop
    .goto 1436/0,1527.77,-9665.53,0
    .goto 1436/0,1527.77,-9665.53,40,0
    .goto 1436/0,1460.22,-9604.17,40,0
    >>Kill |cRXP_ENEMY_Murloc Coastrunners|r
    .complete 152,1 --Murloc Coastrunner slain (7)
    .mob Murloc Coastrunner
step
    .goto 1436/0,1992.22,-11172.17
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r and loot |cRXP_LOOT_Scale of Old Murk-Eye|r
    .complete 104,1 --Scale of Old Murk-Eye (1)
    .mob Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 104 >>Turn in The Coastal Menace
    .turnin 152 >>Turn in The Coast Isn't Clear
    .target Captain Grayson
step
    +|cRXP_WARN_Suggested next zones at level 18|r: |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.5 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Darkshore|r (about 0.8 levels of quests, starting around Terenthis). Completing this step loads the guide for Bloodmyst Isle --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Westfall is planned from level 41.|r Load its guide for level 41 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 42 Westfall
#subweight -10
#name 41-42 Westfall
--RouteBuilder:next
#next Zone Routes (Alliance)\38-40 Stranglethorn Vale: around Fleet Master Seahorn

step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .accept 53 >>Accept Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestTurnedIn 51 --any of: Sweet Amber
    .xp <40,1
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .accept 51 >>Accept Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestTurnedIn 50 --any of: Sweet Amber
    .xp <40,1
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .accept 50 >>Accept Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestTurnedIn 49 --any of: Sweet Amber
    .xp <40,1
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .accept 48 >>Accept Sweet Amber
    .target Grimbooze Thunderbrew
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .turnin 48 >>Turn in Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestComplete 48
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .accept 49 >>Accept Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestTurnedIn 48 --any of: Sweet Amber
    .xp <40,1
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .turnin 49 >>Turn in Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestComplete 49
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .turnin 50 >>Turn in Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestComplete 50
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .turnin 51 >>Turn in Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestComplete 51
step
    .goto 1436/0,1454.97,-11272.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimbooze Thunderbrew|r
    .turnin 53 >>Turn in Sweet Amber
    .target Grimbooze Thunderbrew
    .isQuestComplete 53
step << Rogue
    .goto 1436/0,619.52,-11035.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .accept 2359 >>Accept Klaven's Tower
    .target Agent Kearnen
    .isQuestTurnedIn 2360 --any of: Mathias and the Defias
    .xp <20,1
step << Rogue
    .goto 1436/0,585.22,-11126.43
    >>Kill |cRXP_ENEMY_Malformed Defias Drone|r and loot |cRXP_LOOT_Defias Tower Key|r
    .complete 2359,2 --Defias Tower Key (1)
    .mob Malformed Defias Drone
    .isOnQuest 2359
step << Rogue
    .goto 1436/0,552.32,-11125.03
    >>Open the |cRXP_PICK_Duskwood Chest|r. Loot it for |cRXP_LOOT_Klaven Mortwake's Journal|r
    .complete 2359,1 --Klaven Mortwake's Journal (1)
    .isOnQuest 2359
step
    .goto 1436/0,1563.82,-10957.03
    >>Click the |cRXP_PICK_Old Footlocker|r
    .accept 68 >>Accept The Legend of Stalvan
    .isQuestTurnedIn 67 --any of: The Legend of Stalvan
    .xp <22,1
step << Paladin
    .goto 1436/0,1557.52,-11482.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .accept 1651 >>Accept The Tome of Valor
    .target Daphne Stilwell
    .isQuestTurnedIn 1650 --any of: The Tome of Valor
    .xp <20,1
step << Paladin
    .goto 1436/0,1541.42,-11463.60
    >>Protect Daphne Stilwell
    .complete 1651,1 --Protect Daphne Stilwell
    .isOnQuest 1651
step << Paladin
    .goto 1436/0,1557.52,-11482.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1651 >>Turn in The Tome of Valor
    .target Daphne Stilwell
    .isOnQuest 1651
step << Paladin
    .goto 1436/0,1557.52,-11482.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .accept 1652 >>Accept The Tome of Valor
    .target Daphne Stilwell
    .isQuestTurnedIn 1651 --any of: The Tome of Valor
    .xp <20,1
step
    +|cRXP_WARN_End of the Westfall route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Duskwood|r: The Legend of Stalvan
    >>|cRXP_FRIENDLY_Stormwind City|r: The Tome of Valor << Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Klaven's Tower << Rogue
    >>|cRXP_FRIENDLY_Stranglethorn Vale and back here|r: Sweet Amber
step
    +|cRXP_WARN_Suggested next zones at level 41|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around Fleet Master Seahorn). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
]])
