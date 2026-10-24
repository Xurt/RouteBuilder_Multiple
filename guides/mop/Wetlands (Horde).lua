-- 20-25 Wetlands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 20, 24).
-- Split into 2 guides, listed under "20 - 25 Wetlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Wetlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 20 - 25 Wetlands
#subweight -20
#name 20-21 Wetlands
--RouteBuilder:next
#next Zone Routes (Horde)\20-22 Hillsbrad Foothills: around High Executor Darthalia

step
    .goto 56,49.95,79.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Rharen|r
    .turnin 26137 >>Turn in Checking on the Boys
    .target Mountaineer Rharen
    .isOnQuest 26137
step
    .goto 56,49.95,79.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Rharen|r
    .accept 25395 >>Accept The Stolen Keg
    .target Mountaineer Rharen
step
    .goto 56,49.91,79.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Grugelm|r
    .accept 25211 >>Accept Cleaning Hovel
    .target Mountaineer Grugelm
step
    #loop
    .goto 56,49.13,79.03,0
    .goto 56,49.13,79.03,40,0
    .goto 56,47.63,75.44,40,0
    >>Pick up |cRXP_PICK_Mountaineer's Ale|r from the ground
    >>Kill |cRXP_ENEMY_Dragonmaw Grunts|r and |cRXP_ENEMY_Dragonmaw Scouts|r
    .complete 25395,1 --Mountaineer's Ale (1)
    .complete 25211,1 --Dragonmaw Grunt (8)
    .mob Dragonmaw Grunt
    .mob Dragonmaw Scout
step
    .goto 56,49.91,79.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Grugelm|r
    .turnin 25211 >>Turn in Cleaning Hovel
    .target Mountaineer Grugelm
step
    .goto 56,49.95,79.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Rharen|r
    .turnin 25395 >>Turn in The Stolen Keg
    .accept 25770 >>Accept Keg Run
    .target Mountaineer Rharen
step
    .goto 56,57.51,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forba Slabchisel|r
    .accept 25777 >>Accept Onwards to Menethil
    .target Forba Slabchisel
    .isQuestTurnedIn 25733 --Get Out Of Here, Stalkers
    .isQuestTurnedIn 25734 --Down In Thelgen Rock
    .isQuestTurnedIn 25735 --Incendicite Ore
    .xp <18,1
step
    .goto 56,57.51,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forba Slabchisel|r
    .turnin 25770 >>Turn in Keg Run
    .target Forba Slabchisel
step
    .xp 20 >>Grind to level 20 (A Mother's Worries needs it)
step
    .goto 56,11.86,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derina Rumdnul|r
    .accept 25820 >>Accept A Mother's Worries
    .target Derina Rumdnul
step
    .goto 56,10.52,55.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 25777 >>Turn in Onwards to Menethil
    .target Captain Stoutfist
    .isOnQuest 25777
step
    #loop
    .goto 56,14.31,53.36,0
    .goto 56,14.31,53.36,40,0
    .goto 56,15.96,50.63,40,0
    .goto 56,17.55,53.45,40,0
    >>Kill |cRXP_ENEMY_Ocean Shredfins|r and |cRXP_ENEMY_Harbor Shredfins|r
    .complete 25820,1 --Ocean Shredfin (10)
    .mob Ocean Shredfin
    .mob Harbor Shredfin
step
    .goto 56,11.86,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derina Rumdnul|r
    .turnin 25820 >>Turn in A Mother's Worries
    .target Derina Rumdnul
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 1.2 levels of quests, starting around High Executor Darthalia). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Wetlands is planned from level 24.|r Load its guide for level 24 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 20 - 25 Wetlands
#subweight -20
#name 24-25 Wetlands
--RouteBuilder:next
#next Zone Routes (Horde)\25-30 Northern Stranglethorn;Zone Routes (Horde)\22-27 Hillsbrad Foothills: around Serge Hinott

step
    .goto 56,49.80,18.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .accept 26327 >>Accept Anvilmar the Hero
    .target Longbraid the Grim
step
    .goto 56,49.44,17.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thargas Anvilmar|r
    .accept 26139 >>Accept Into Arathi
    .target Thargas Anvilmar
    .isQuestTurnedIn 26128 --any of: The Battle of Thandol Span
    .xp <23,1
step
    .goto 56,49.44,17.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thargas Anvilmar|r
    .turnin 26327 >>Turn in Anvilmar the Hero
    .target Thargas Anvilmar
step
    +|cRXP_WARN_End of the Wetlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Into Arathi
step
    +|cRXP_WARN_Suggested next zones at level 24|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.5 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.8 levels of quests, starting around Serge Hinott). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
