-- 15-15 Redridge Mountains: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Forever data (commit 1f53833, 2026-10-22; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/Redridge Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#name 15-15 Redridge Mountains
--RouteBuilder:next
#next Zone Routes (Horde)\14-16 The Barrens: around Regthar Deathgate;Zone Routes (Horde)\12-15 Zephras Isle: around Valennia Stormfist;Zone Routes (Horde)\10-13 Tirisfal Glades: around Bethor Iceshard

step
    .goto 1433/0,-2207.24,-9351.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Accept Hilary's Necklace
    .target Shawn
step
    #loop
    .goto 1433/0,-2211.58,-9352.82,0
    .goto 1433/0,-2211.58,-9352.82,40,0
    .goto 1433/0,-2369.62,-9361.22,40,0
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto 1433/0,-2205.51,-9351.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Turn in Hilary's Necklace
    .target Hilary
step
    +|cRXP_WARN_End of the Redridge Mountains route.|r
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_The Barrens|r (about 1.6 levels of quests, starting around Regthar Deathgate), |cRXP_FRIENDLY_Zephras Isle|r (about 1.0 levels of quests, starting around Valennia Stormfist), |cRXP_FRIENDLY_Tirisfal Glades|r (about 0.7 levels of quests, starting around Bethor Iceshard). Completing this step loads the guide for The Barrens --RouteBuilder:next
]])
