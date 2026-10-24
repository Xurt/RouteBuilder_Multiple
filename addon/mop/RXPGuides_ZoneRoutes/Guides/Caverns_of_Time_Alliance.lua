-- 68-70 Caverns of Time: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Caverns of Time.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 68-70 Caverns of Time
--RouteBuilder:next
#next Zone Routes (Alliance)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Alliance)\65-68 Nagrand

step
    .goto 75,41.55,38.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andormu|r
    .accept 10296 >>Accept The Black Morass
    .target Andormu
step << Human Priest/Human Shaman/Human Mage/Human Warlock/Human Druid/Dwarf Priest/Dwarf Shaman/Dwarf Mage/Dwarf Warlock/Dwarf Druid/NightElf Priest/NightElf Shaman/NightElf Mage/NightElf Warlock/NightElf Druid/Gnome Priest/Gnome Shaman/Gnome Mage/Gnome Warlock/Gnome Druid/Draenei Priest/Draenei Shaman/Draenei Mage/Draenei Warlock/Draenei Druid/Worgen Priest/Worgen Shaman/Worgen Mage/Worgen Warlock/Worgen Druid/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Druid
    .goto 75,41.77,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 29132 >>Turn in A Legendary Engagement
    .target Anachronos
    .isOnQuest 29132
step
    .goto 75,41.77,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anachronos|r
    .turnin 8802 >>Turn in The Savior of Kalimdor
    .target Anachronos
    .isOnQuest 8802
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
step
    +|cRXP_WARN_End of the Caverns of Time route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Old Hillsbrad Foothills|r: Old Hillsbrad
    >>|cRXP_FRIENDLY_The Black Morass|r: The Black Morass
step
    +|cRXP_WARN_Suggested next zones at level 68|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.4 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Nagrand|r (about 0.6 levels of quests, starting around Hemet Nesingwary). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
