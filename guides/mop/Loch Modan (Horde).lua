-- 19-20 Loch Modan: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Loch Modan.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 19-20 Loch Modan
--RouteBuilder:next
#next Zone Routes (Horde)\20-22 Hillsbrad Foothills: around High Executor Darthalia

step
    .goto 48,35.06,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .accept 13636 >>Accept Stormpike's Orders
    .target Mountaineer Kadrell
step
    .goto 48,37.27,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .accept 13661 >>Accept Heartfelt Appreciation
    .target Torren Squarejaw
    .isQuestTurnedIn 13655 --Explorers' League Document (2 of 6)
    .isQuestTurnedIn 13656 --Explorers' League Document (1 of 6)
    .isQuestTurnedIn 13657 --Explorers' League Document (3 of 6)
    .isQuestTurnedIn 13658 --Explorers' League Document (4 of 6)
    .isQuestTurnedIn 13659 --Explorers' League Document (6 of 6)
    .isQuestTurnedIn 13660 --Explorers' League Document (5 of 6)
    .xp <8,1
step
    .goto 48,37.27,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torren Squarejaw|r
    .turnin 13661 >>Turn in Heartfelt Appreciation
    .target Torren Squarejaw
    .isOnQuest 13661
step
    .goto 48,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .accept 13639 >>Accept Resupplying the Excavation
    .target Jern Hornhelm
    .isQuestTurnedIn 26868 --any of: Axis of Awful
    .xp <14,1
step
    .goto 48,25.40,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Dorli|r
    .accept 26846 >>Accept A Nasty Exploit
    .target Scout Dorli
    .isQuestTurnedIn 26844 --any of: Kobold and Kobolder
    .xp <11,1
step
    .goto 48,25.45,17.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 13636 >>Turn in Stormpike's Orders
    .accept 26137 >>Accept Checking on the Boys
    .target Mountaineer Stormpike
step
    #loop
    .goto 48,35.73,19.42,0
    .goto 48,35.73,19.42,40,0
    .goto 48,35.51,24.10,40,0
    .goto 48,34.81,26.30,40,0
    >>Kill |cRXP_ENEMY_Tunnel Rat Geomancers|r
    .complete 26846,1 --Tunnel Rat Geomancer slain (5)
    .mob Tunnel Rat Geomancer
    .isOnQuest 26846
step
    .goto 48,25.40,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Dorli|r
    .turnin 26846 >>Turn in A Nasty Exploit
    .target Scout Dorli
    .isOnQuest 26846
step
    .goto 48,14.01,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 13635 >>Accept South Gate Status Report
    .target Pilot Hammerfoot
    .isQuestTurnedIn 26855 --any of: A Pilot's Revenge
    .xp <10,1
step
    .goto 48,23.38,75.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 13635 >>Turn in South Gate Status Report
    .target Captain Rugelfuss
    .isOnQuest 13635
step
    .goto 48,23.38,75.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .accept 26176 >>Accept Onward to Thelsamar
    .target Captain Rugelfuss
    .isQuestTurnedIn 26148 --any of: A Decisive Strike
    .xp <10,1
step
    .goto 48,35.06,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    .turnin 26176 >>Turn in Onward to Thelsamar
    .target Mountaineer Kadrell
    .isOnQuest 26176
step
    .goto 48,56.36,65.98
    >>Locate Huldar, Miran, and Saean.
    .complete 13639,1 --Huldar
    .target Huldar
    .isOnQuest 13639
step
    .goto 48,56.36,65.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huldar|r
    .turnin 13639 >>Turn in Resupplying the Excavation
    .target Huldar
    .isOnQuest 13639
step
    .goto 48,64.90,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magmar Fellhew|r
    .accept 13647 >>Accept Joining the Hunt
    .target Magmar Fellhew
    .isQuestTurnedIn 309 --Protecting the Shipment
    .isQuestTurnedIn 13650 --Keep Your Hands Off The Goods!
    .isQuestTurnedIn 26961 --Gathering Idols
    .xp <12,1
step
    .goto 48,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marek Ironheart|r
    .turnin 13647 >>Turn in Joining the Hunt
    .target Marek Ironheart
    .isOnQuest 13647
step
    +|cRXP_WARN_End of the Loch Modan route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Wetlands|r: Checking on the Boys
step
    +|cRXP_WARN_Suggested next zones at level 19|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.8 levels of quests, starting around High Executor Darthalia). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
]])
