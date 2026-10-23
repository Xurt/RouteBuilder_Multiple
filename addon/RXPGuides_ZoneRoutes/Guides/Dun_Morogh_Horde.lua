-- 25-30 Dun Morogh: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Forever data (commit 1f53833, 2026-10-22; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 25, 31).
-- Split into 2 guides, listed under "25 - 32 Dun Morogh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/Dun Morogh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 25 - 32 Dun Morogh
#subweight -25
#name 25-26 Dun Morogh

step
    #completewith next
    .zone 1455 >>Travel to Ironforge
    .zoneskip 1455
step << Rogue
    .goto 1455/0,-1124.40,-4647.54
    >>Kill |cRXP_ENEMY_Hulfdan Blackbeard|r and loot |cRXP_LOOT_Elegant Letter|r. Use it to start the quest
    .collect 17126,1,6681 --Elegant Letter (1)
    .accept 6681 >>Accept The Manor, Ravenholdt
    .use 17126
    .mob Hulfdan Blackbeard
step
    .goto 1455/0,-1314.47,-4624.11
    >>Click the |cRXP_PICK_Library Book|r
    .accept 79091 >>Accept Archmage Antonidas: The Unabridged Autobiography
step
    .goto 1455/0,-1314.47,-4624.11
    >>Open the |cRXP_PICK_Library Book|r. Loot it for |cRXP_LOOT_Archmage Antonidas: The Unabridged Autobiography|r
    .complete 79091,1 --Archmage Antonidas: The Unabridged Autobiography (1)
step
    #completewith next
    .zone 1426 >>Leave Ironforge for Dun Morogh
    .zoneskip 1426
step << Shaman
    .goto 1426/0,578.71,-5908.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 1517 >>Turn in Call of Earth
    .target Minor Manifestation of Earth
    .isOnQuest 1517
step << Shaman
    .goto 1426/0,578.71,-5908.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
    .isQuestTurnedIn 1517 --any of: Call of Earth
    .xp <4,1
step << Shaman
    .goto 1426/0,578.71,-5908.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .turnin 1520 >>Turn in Call of Earth
    .target Minor Manifestation of Earth
    .isOnQuest 1520
step << Shaman
    .goto 1426/0,578.71,-5908.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .accept 1521 >>Accept Call of Earth
    .target Minor Manifestation of Earth
    .isQuestTurnedIn 1520 --any of: Call of Earth
    .xp <4,1
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Alterac Mountains|r: The Manor, Ravenholdt << Rogue
    >>|cRXP_FRIENDLY_Durotar|r: Call of Earth << Shaman
    >>|cRXP_FRIENDLY_Mulgore|r: Call of Earth << Shaman
    >>|cRXP_FRIENDLY_Undercity|r: Archmage Antonidas: The Unabridged Autobiography
step << Warrior
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 31.|r Load its guide for level 31 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior
#version 1
#group Zone Routes (Horde)
#subgroup 25 - 32 Dun Morogh
#subweight -25
#name 31-32 Dun Morogh

step << Warrior
    .goto 1455/0,-1269.72,-5047.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelv Sternhammer|r
    .accept 1718 >>Accept The Islander
    .target Kelv Sternhammer
step
    +|cRXP_WARN_End of the Dun Morogh route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Barrens|r: The Islander << Warrior
]])
