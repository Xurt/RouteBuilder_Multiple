-- 21-28 Stonetalon Mountains: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 21, 24, 27).
-- Split into 3 guides, listed under "21 - 28 Stonetalon Mountains" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/classic/Stonetalon Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 21 - 28 Stonetalon Mountains
#subweight -21
#name 21-22 Stonetalon Mountains: around Gaxim Rustfizzle
--RouteBuilder:next
#next Zone Routes (Alliance)\20-22 Duskwood: around Elaine Carevin

step
    .goto 1442/1,365.16,878.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1483 >>Turn in Ziz Fizziks
    .target Ziz Fizziks
    .isOnQuest 1483
step
    .goto 1442/1,365.16,878.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Turn in Further Instructions
    .target Ziz Fizziks
    .isOnQuest 1095
step
    .goto 1442/1,320.72,739.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .turnin 1070 >>Turn in On Guard in Stonetalon
    .target Kaela Shadowspear
    .isOnQuest 1070
step
    .goto 1442/1,320.72,739.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .accept 1085 >>Accept On Guard in Stonetalon
    .target Kaela Shadowspear
step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1085 >>Turn in On Guard in Stonetalon
    .accept 1071 >>Accept A Gnome's Respite
    .target Gaxim Rustfizzle
step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1074 >>Turn in Ineptitude + Chemicals = Fun
    .target Gaxim Rustfizzle
    .isOnQuest 1074
step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1077 >>Turn in Special Delivery for Gaxim
    .target Gaxim Rustfizzle
    .isOnQuest 1077
step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .accept 1079 >>Accept Covert Ops - Alpha
    .accept 1080 >>Accept Covert Ops - Beta
    .target Gaxim Rustfizzle
    .isQuestTurnedIn 1074 --Ineptitude + Chemicals = Fun
    .isQuestTurnedIn 1077 --Special Delivery for Gaxim
    .xp <17,1
step
    .goto 1442/1,365.16,878.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1093 >>Accept Super Reaper 6000
    .target Ziz Fizziks
step
    #completewith Along10
    >>As you go: Kill |cRXP_ENEMY_Venture Co. Loggers|r. Kill |cRXP_ENEMY_Venture Co. Deforesters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1071,1 --Venture Co. Logger slain (10)
    .complete 1071,2 --Venture Co. Deforester slain (10)
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
step
    .goto 1442/1,10.63,1234.49
    >>Kill |cRXP_ENEMY_Venture Co. Operator|r and loot |cRXP_LOOT_Super Reaper 6000 Blueprints|r
    .complete 1093,1 --Super Reaper 6000 Blueprints (1)
    .mob Venture Co. Operator
step
    #label Along10
    .goto 1442/1,18.44,1245.23
    >>Pick up |cRXP_PICK_Venture Co. Engineering Plans|r from the ground
    .complete 1079,1 --Venture Co. Engineering Plans (1)
    .isOnQuest 1079
step
    #loop
    .goto 1442/1,8.18,1252.07,0
    .goto 1442/1,8.18,1252.07,40,0
    .goto 1442/1,-38.21,1118.57,40,0
    .goto 1442/1,18.93,1406.74,40,0
    .goto 1442/1,111.22,1434.42,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    >>Kill |cRXP_ENEMY_Venture Co. Deforesters|r
    .complete 1071,1 --Venture Co. Logger slain (10)
    .complete 1071,2 --Venture Co. Deforester slain (10)
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
step
    .goto 1442/1,-390.30,985.71
    >>Open the |cRXP_PICK_Venture Co. Documents|r. Loot it for |cRXP_LOOT_Venture Co. Letters|r
    .complete 1080,1 --Venture Co. Letters (1)
    .isOnQuest 1080
step
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piznik|r
    .accept 1090 >>Accept Gerenzo's Orders
    .target Piznik
step
    .goto 1442/1,-263.82,962.92
    >>Get the mysterious ore from Piznik after he finishes mining it.
    .complete 1090,1 --Piznik
    .target Piznik
step
    .goto 1442/1,-263.82,962.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >>Turn in Gerenzo's Orders
    .accept 1092 >>Accept Gerenzo's Orders
    .target Piznik
step
    .goto 1442/1,365.16,878.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1092 >>Turn in Gerenzo's Orders
    .turnin 1093 >>Turn in Super Reaper 6000
    .accept 1094 >>Accept Further Instructions
    .target Ziz Fizziks
step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1071 >>Turn in A Gnome's Respite
    .accept 1072 >>Accept An Old Colleague
    .accept 1075 >>Accept A Scroll from Mauren
    .target Gaxim Rustfizzle
step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1080 >>Turn in Covert Ops - Beta
    .target Gaxim Rustfizzle
    .isOnQuest 1080
step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .turnin 1079 >>Turn in Covert Ops - Alpha
    .target Gaxim Rustfizzle
    .isOnQuest 1079
step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .accept 1091 >>Accept Kaela's Update
    .target Gaxim Rustfizzle
    .isQuestTurnedIn 1079 --Covert Ops - Alpha
    .isQuestTurnedIn 1080 --Covert Ops - Beta
    .xp <17,1
step
    .goto 1442/1,320.72,739.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .turnin 1091 >>Turn in Kaela's Update
    .target Kaela Shadowspear
    .isOnQuest 1091
step
    .goto 1442/1,1434.12,2652.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .turnin 1056 >>Turn in Journey to Stonetalon Peak
    .target Keeper Albagorm
    .isOnQuest 1056
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
    .target Teloren
    .goto 1442/1,1466.44,2682.84
    .fp Stonetalon >> Get the Stonetalon Flight Path
    .fly Ashenvale >> Fly to Ashenvale
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
    .target Teloren
    .goto 1442/1,1466.44,2682.84
    .fp Stonetalon >> Get the Stonetalon Flight Path
    .fly Darkshore >> Fly to Darkshore
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
    .target Teloren
    .goto 1442/1,1466.44,2682.84
    .fp Stonetalon >> Get the Stonetalon Flight Path
step << Warlock
    .goto 1442/1,1507.61,2677.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illyanie|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Illyanie
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teloren|r
    .target Teloren
    .goto 1442/1,1466.44,2682.84
    .fp Stonetalon >> Get the Stonetalon Flight Path
    .fly Ashenvale >> Fly to Ashenvale
step
    +|cRXP_WARN_That is all of Stonetalon Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ironforge|r: An Old Colleague
    >>|cRXP_FRIENDLY_Stormwind City|r: A Scroll from Mauren
    >>|cRXP_FRIENDLY_The Barrens|r: Further Instructions
step
    +|cRXP_WARN_Suggested next zones at level 21|r: |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Elaine Carevin). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Stonetalon Mountains is planned from level 24.|r Load its guide for level 24 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 21 - 28 Stonetalon Mountains
#subweight -21
#name 24-25 Stonetalon Mountains

step
    .goto 1442/1,1434.12,2652.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .accept 1057 >>Accept Reclaiming the Charred Vale
    .target Keeper Albagorm
step
    #loop
    .goto 1442/1,1715.40,949.24,0
    .goto 1442/1,1715.40,949.24,40,0
    .goto 1442/1,1781.81,901.70,40,0
    >>Kill |cRXP_ENEMY_Bloodfury Harpies|r
    >>Kill |cRXP_ENEMY_Bloodfury Ambushers|r
    .complete 1057,1 --Bloodfury Harpy slain (7)
    .complete 1057,2 --Bloodfury Ambusher slain (7)
    .mob Bloodfury Harpy
    .mob Bloodfury Ambusher
step
    #completewith Along2
    >>As you go: Kill |cRXP_ENEMY_Bloodfury Roguefeathers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1057,4 --Bloodfury Roguefeather slain (7)
    .mob Bloodfury Roguefeather
step
    #label Along2
    #loop
    .goto 1442/1,1777.90,719.02,0
    .goto 1442/1,1777.90,719.02,40,0
    .goto 1442/1,1774.97,648.04,40,0
    >>Kill |cRXP_ENEMY_Bloodfury Slayers|r
    .complete 1057,3 --Bloodfury Slayer slain (7)
    .mob Bloodfury Slayer
step
    #loop
    .goto 1442/1,1520.55,714.14,0
    .goto 1442/1,1520.55,714.14,40,0
    .goto 1442/1,1510.78,639.90,40,0
    >>Kill |cRXP_ENEMY_Bloodfury Roguefeathers|r
    .complete 1057,4 --Bloodfury Roguefeather slain (7)
    .mob Bloodfury Roguefeather
step
    .goto 1442/1,320.72,739.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .accept 1084 >>Accept Wounded Ancients
    .target Kaela Shadowspear
    .isQuestTurnedIn 1091 --any of: Kaela's Update
    .xp <22,1
step
    .goto 1442/1,320.72,739.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .accept 1083 >>Accept Enraged Spirits
    .target Kaela Shadowspear
    .isQuestTurnedIn 1091 --any of: Kaela's Update
    .xp <20,1
step
    #loop
    .goto 1442/1,1578.17,716.09,0
    .goto 1442/1,1578.17,716.09,40,0
    .goto 1442/1,1647.52,546.44,40,0
    >>Kill |cRXP_ENEMY_Charred Ancients|r, |cRXP_ENEMY_Blackened Ancients|r and |cRXP_ENEMY_Vengeful Ancients|r. Loot them for |cRXP_LOOT_Corroded Shrapnel|r
    .complete 1084,1 --Corroded Shrapnel (1)
    .mob Charred Ancient
    .mob Blackened Ancient
    .mob Vengeful Ancient
    .isOnQuest 1084
step
    #loop
    .goto 1442/1,1622.61,478.39,0
    .goto 1442/1,1622.61,478.39,40,0
    .goto 1442/1,1726.14,512.90,40,0
    >>Kill |cRXP_ENEMY_Rogue Flame Spirits|r, |cRXP_ENEMY_Burning Ravagers|r and |cRXP_ENEMY_Burning Destroyers|r. Loot them for |cRXP_LOOT_Smoldering Embers|r
    .complete 1083,1 --Smoldering Embers (8)
    .mob Rogue Flame Spirit
    .mob Burning Ravager
    .mob Burning Destroyer
    .isOnQuest 1083
step
    .goto 1442/1,320.72,739.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .turnin 1083 >>Turn in Enraged Spirits
    .target Kaela Shadowspear
    .isOnQuest 1083
step
    .goto 1442/1,320.72,739.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .turnin 1084 >>Turn in Wounded Ancients
    .target Kaela Shadowspear
    .isOnQuest 1084
step
    .goto 1442/1,320.72,739.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaela Shadowspear|r
    .accept 1082 >>Accept Update for Sentinel Thenysil
    .target Kaela Shadowspear
    .isQuestTurnedIn 1083 --Enraged Spirits
    .isQuestTurnedIn 1084 --Wounded Ancients
    .xp <17,1
step
    .goto 1442/1,1434.12,2652.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Albagorm|r
    .turnin 1057 >>Turn in Reclaiming the Charred Vale
    .accept 1059 >>Accept Reclaiming the Charred Vale
    .target Keeper Albagorm
step
    +|cRXP_WARN_That is all of Stonetalon Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Update for Sentinel Thenysil
    >>|cRXP_FRIENDLY_Feralas|r: Reclaiming the Charred Vale
step
    +|cRXP_WARN_The rest of Stonetalon Mountains is planned from level 27.|r Load its guide for level 27 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 21 - 28 Stonetalon Mountains
#subweight -21
#name 27-28 Stonetalon Mountains

step
    .goto 1442/1,339.27,730.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaxim Rustfizzle|r
    .accept 2931 >>Accept Castpipe's Task
    .target Gaxim Rustfizzle
step
    .goto 1442/1,365.16,878.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .accept 1096 >>Accept Gerenzo Wrenchwhistle
    .target Ziz Fizziks
    .isQuestTurnedIn 1095 --any of: Further Instructions
    .xp <16,1
step
    .goto 1442/1,96.57,1606.03
    >>Kill |cRXP_ENEMY_Gerenzo Wrenchwhistle|r and loot |cRXP_LOOT_Gerenzo's Mechanical Arm|r
    .complete 1096,1 --Gerenzo's Mechanical Arm (1)
    .mob Gerenzo Wrenchwhistle
    .isOnQuest 1096
step
    .goto 1442/1,365.16,878.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1096 >>Turn in Gerenzo Wrenchwhistle
    .target Ziz Fizziks
    .isOnQuest 1096
step
    +|cRXP_WARN_End of the Stonetalon Mountains route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ironforge|r: Castpipe's Task
]])
