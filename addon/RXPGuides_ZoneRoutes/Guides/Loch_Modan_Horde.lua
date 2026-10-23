-- 20-32 Loch Modan: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Forever data (commit 1f53833, 2026-10-22; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/Loch Modan.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#name 20-32 Loch Modan

step
    .goto 1432/0,-2975.72,-5387.06
    >>Click the |cRXP_PICK_Gnomish Tome|r
    .accept 79093 >>Accept Rumi of Gnomeregan: The Collected Works
step
    .goto 1432/0,-2975.72,-5387.06
    >>Open the |cRXP_PICK_Gnomish Tome|r. Loot it for |cRXP_LOOT_Rumi of Gnomeregan: The Collected Works|r
    .complete 79093,1 --Rumi of Gnomeregan: The Collected Works (1)
step
    .goto 1432/0,-3357.47,-4724.25
    >>Click the |cRXP_PICK_Carved Figurine|r
    .turnin 79974 >>Turn in Wet Job
    .isOnQuest 79974
step
    .goto 1432/0,-3357.47,-4724.25
    >>Click the |cRXP_PICK_Carved Figurine|r
    .accept 79975 >>Accept Eagle's Fist
step << Shaman
    .goto 1432/0,-2875.31,-5672.56
    >>Kill |cRXP_ENEMY_Minor Manifestation of Fire|r and loot |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
    .isOnQuest 1526
step << Shaman
    .goto 1432/0,-2870.62,-5674.40
    >>Click the |cRXP_PICK_Brazier of the Dormant Flame|r
    .turnin 1526 >>Turn in Call of Fire
    .isOnQuest 1526
step << Shaman
    .goto 1432/0,-2870.62,-5674.40
    >>Click the |cRXP_PICK_Brazier of the Dormant Flame|r
    .accept 1527 >>Accept Call of Fire
    .isQuestTurnedIn 1526 --any of: Call of Fire
    .xp <10,1
step
    +|cRXP_WARN_End of the Loch Modan route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Eagle's Fist
    >>|cRXP_FRIENDLY_The Barrens|r: Call of Fire << Shaman
    >>|cRXP_FRIENDLY_Undercity|r: Rumi of Gnomeregan: The Collected Works
]])
