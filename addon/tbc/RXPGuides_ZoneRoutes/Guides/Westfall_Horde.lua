-- 16-20 Westfall: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 16, 19).
-- Split into 2 guides, listed under "16 - 20 Westfall" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Westfall.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 16 - 20 Westfall
#subweight -16
#name 16-17 Westfall
--RouteBuilder:next
#next Zone Routes (Horde)\15-18 Ghostlands: around Eralan;Zone Routes (Horde)\13-16 The Barrens: around Gazlowe

step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 103 >>Accept Keeper of the Flame
    .accept 152 >>Accept The Coast Isn't Clear
    .target Captain Grayson
step
    #completewith Drop136x1
    >>|cRXP_LOOT_Captain Sander's Treasure Map|r can drop from |cRXP_ENEMY_Murloc Coastrunner|r, |cRXP_ENEMY_Murloc Tidehunter|r, |cRXP_ENEMY_Murloc Warrior|r. Use it to start the quest if you get one
    .collect 1357,1,136 --Captain Sander's Treasure Map (1)
    .accept 136 >>Accept Captain Sander's Hidden Treasure
    .use 1357
step
    #label Drop136x1
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
    .goto 1436/0,1755.62,-10597.93,0
    .goto 1436/0,1755.62,-10597.93,40,0
    .goto 1436/0,1779.42,-10501.33,40,0
    .goto 1436/0,1646.77,-10615.43,40,0
    >>Kill |cRXP_ENEMY_Harvest Golems|r, |cRXP_ENEMY_Harvest Watchers|r, |cRXP_ENEMY_Harvest Reapers|r and |cRXP_ENEMY_Rusty Harvest Golems|r. Loot them for |cRXP_LOOT_Flask of Oil|r
    .complete 103,1 --Flask of Oil (5)
    .mob Harvest Golem
    .mob Harvest Watcher
    .mob Harvest Reaper
    .mob Rusty Harvest Golem
step
    #completewith Drop136x2
    >>|cRXP_LOOT_Captain Sander's Treasure Map|r can drop from |cRXP_ENEMY_Murloc Coastrunner|r, |cRXP_ENEMY_Murloc Tidehunter|r, |cRXP_ENEMY_Murloc Warrior|r. Use it to start the quest if you get one
    .collect 1357,1,136 --Captain Sander's Treasure Map (1)
    .accept 136 >>Accept Captain Sander's Hidden Treasure
    .use 1357
step
    #loop
    .goto 1436/0,1527.77,-9665.53,0
    .goto 1436/0,1527.77,-9665.53,40,0
    .goto 1436/0,1460.22,-9604.17,40,0
    >>Kill |cRXP_ENEMY_Murloc Coastrunners|r
    .complete 152,1 --Murloc Coastrunner slain (7)
    .mob Murloc Coastrunner
step
    #label Drop136x2
    #loop
    .goto 1436/0,1988.72,-10036.30,0
    .goto 1436/0,1988.72,-10036.30,40,0
    .goto 1436/0,2021.97,-10179.57,40,0
    >>Kill |cRXP_ENEMY_Murloc Warriors|r
    .complete 152,2 --Murloc Warrior slain (7)
    .mob Murloc Warrior
step
    .goto 1436/0,2109.82,-10514.17
    >>Click the |cRXP_PICK_Captain's Footlocker|r
    .turnin 136 >>Turn in Captain Sander's Hidden Treasure
    .isOnQuest 136
step
    .goto 1436/0,2109.82,-10514.17
    >>Click the |cRXP_PICK_Captain's Footlocker|r
    .accept 138 >>Accept Captain Sander's Hidden Treasure
    .isQuestTurnedIn 136 --any of: Captain Sander's Hidden Treasure
    .xp <14,1
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 152 >>Turn in The Coast Isn't Clear
    .turnin 103 >>Turn in Keeper of the Flame
    .target Captain Grayson
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
    +|cRXP_WARN_Suggested next zones at level 16|r: |cRXP_FRIENDLY_Ghostlands|r (about 1.3 levels of quests, starting around Eralan), |cRXP_FRIENDLY_The Barrens|r (about 1.0 levels of quests, starting around Gazlowe). Completing this step loads the guide for Ghostlands --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Westfall is planned from level 19.|r Load its guide for level 19 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 16 - 20 Westfall
#subweight -16
#name 19-20 Westfall
--RouteBuilder:next
#next Zone Routes (Horde)\15-18 Ghostlands: around Eralan;Zone Routes (Horde)\18-20 The Barrens: around Tonga Runetotem

step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >>Accept The Coastal Menace
    .target Captain Grayson
step
    .goto 1436/0,1992.22,-11172.17
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r and loot |cRXP_LOOT_Scale of Old Murk-Eye|r
    .complete 104,1 --Scale of Old Murk-Eye (1)
    .mob Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 104 >>Turn in The Coastal Menace
    .target Captain Grayson
step
    +|cRXP_WARN_End of the Westfall route.|r
step
    +|cRXP_WARN_Suggested next zones at level 19|r: |cRXP_FRIENDLY_Ghostlands|r (about 1.0 levels of quests, starting around Eralan), |cRXP_FRIENDLY_The Barrens|r (about 0.9 levels of quests, starting around Tonga Runetotem). Completing this step loads the guide for Ghostlands --RouteBuilder:next
]])
