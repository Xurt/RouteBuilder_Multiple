-- 68-70 Caverns of Time: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Caverns of Time.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 68-70 Caverns of Time
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\65-67 Nagrand: around Hemet Nesingwary

step
    #completewith next
    .zone 74 >>Travel to Caverns of Time - Timeless Tunnel
    .zoneskip 74
step
    .goto 74,55.26,27.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steward of Time|r
    .accept 10279 >>Accept To The Master's Lair
    .target Steward of Time
step
    #completewith next
    .zone 75 >>Leave Caverns of Time - Timeless Tunnel for Caverns of Time
    .zoneskip 75
step
    .goto 75,41.55,38.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andormu|r
    .turnin 10279 >>Turn in To The Master's Lair
    .accept 10277 >>Accept The Caverns of Time
    .accept 10296 >>Accept The Black Morass
    .target Andormu
step
    .goto 75,44.31,38.73
    >>Caverns of Time Explained
    .complete 10277,1 --Caverns of Time Explained
step
    .goto 75,41.55,38.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andormu|r
    .turnin 10277 >>Turn in The Caverns of Time
    .accept 10282 >>Accept Old Hillsbrad
    .target Andormu
step << Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Druid/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Druid/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Druid/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Druid/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Druid/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Druid/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Druid
    .goto 75,41.77,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 29129 >>Turn in A Legendary Engagement
    .target Anachronos
    .isOnQuest 29129
step
    .goto 75,41.77,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 8802 >>Turn in The Savior of Kalimdor
    .target Anachronos
    .isOnQuest 8802
step
    +|cRXP_WARN_End of the Caverns of Time route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Old Hillsbrad Foothills|r: Old Hillsbrad
    >>|cRXP_FRIENDLY_The Black Morass|r: The Black Morass
step
    +|cRXP_WARN_Suggested next zones at level 68|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.4 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Nagrand|r (about 0.5 levels of quests, starting around Hemet Nesingwary). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
