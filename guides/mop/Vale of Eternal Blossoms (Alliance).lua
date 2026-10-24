-- 90-90 Vale of Eternal Blossoms: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Vale of Eternal Blossoms.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 90-90 Vale of Eternal Blossoms

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 390,84.22,61.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Lang|r
    .accept 31386 >>Accept The Shado-Pan Offensive
    .target Lao Lang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 390,84.37,61.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riki the Shifting Shadow|r
    .accept 31390 >>Accept The Klaxxi
    .target Riki the Shifting Shadow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 390,56.83,43.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhi the Harmonious|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31512 >>Turn in A Witness to History
    .unitscan Zhi the Harmonious
    .isQuestComplete 31512
step
    #completewith next
    .zone 393 >>Travel to Shrine of Seven Stars
    .zoneskip 393
step
    .goto 393,40.28,70.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sway Dish Chef|r
    .accept 31486 >>Accept Everything I Know About Cooking
    .target Sway Dish Chef
step
    #completewith next
    .zone 390 >>Leave Shrine of Seven Stars for Vale of Eternal Blossoms
    .zoneskip 390
step
    .goto 390,14.15,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmistress Li|r
    .turnin 31895 >>Turn in Better Off Dread
    .target Bowmistress Li
    .isOnQuest 31895
step
    .goto 390,14.15,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmistress Li|r
    .turnin 31886 >>Turn in Dread Space
    .target Bowmistress Li
    .isOnQuest 31886
step
    .goto 390,14.15,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmistress Li|r
    .turnin 31847 >>Turn in Better Dead than Dread
    .target Bowmistress Li
    .isOnQuest 31847
step
    .goto 390,14.15,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmistress Li|r
    .turnin 31656 >>Turn in The Threat in the South
    .target Bowmistress Li
    .isOnQuest 31656
step
    .goto 390,14.15,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmistress Li|r
    .turnin 31000 >>Turn in Dread Space
    .target Bowmistress Li
    .isOnQuest 31000
step
    .goto 390,14.15,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmistress Li|r
    .turnin 31390 >>Turn in The Klaxxi << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 31001 >>Accept Falling Down
    .accept 31002 >>Accept Nope
    .target Bowmistress Li
step
    +|cRXP_WARN_That is all of Vale of Eternal Blossoms for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dread Wastes|r: Falling Down, Nope
    >>|cRXP_FRIENDLY_Townlong Steppes|r: The Shado-Pan Offensive << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Valley of the Four Winds|r: Everything I Know About Cooking
step
    +|cRXP_WARN_End of the Vale of Eternal Blossoms route.|r
]])
