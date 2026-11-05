-- 18-32 Ashenvale: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 5 parts (from level 18, 21, 24, 27, 31).
-- Split into 5 guides, listed under "18 - 32 Ashenvale" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Ashenvale.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 18 - 32 Ashenvale
#subweight -18
#name 18-19 Ashenvale: around Shindrell Swiftfire
--RouteBuilder:next
#next Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\17-19 Darkshore: around Terenthis

step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >>Turn in The Tower of Althalaxx
    .target Delgren the Purifier
    .isOnQuest 967
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 981 >>Turn in The Tower of Althalaxx
    .target Delgren the Purifier
    .isOnQuest 981
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 970 >>Accept The Tower of Althalaxx
    .target Delgren the Purifier
    .isQuestTurnedIn 967 --any of: The Tower of Althalaxx
    .xp <13,1
step
    .goto 1440/1,156.26,3254.19
    >>Escort Kerlonian Evershade to Maestra's Post
    .complete 5321,2 --Escort Kerlonian Evershade to Maestra's Post
    .isOnQuest 5321
step
    .goto 1440/1,166.07,3261.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Onaeya|r
    .turnin 5713 >>Turn in One Shot.  One Kill.
    .target Sentinel Onaeya
    .isQuestComplete 5713
step
    .goto 1440/1,128.01,3305.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liladris Moonriver|r
    .turnin 5321 >>Turn in The Sleeper Has Awakened
    .target Liladris Moonriver
    .isQuestComplete 5321
step
    #loop
    .goto 1440/1,-76.13,3457.91,0
    .goto 1440/1,-76.13,3457.91,40,0
    .goto 1440/1,-114.19,3514.41,40,0
    >>Kill |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Enforcers|r, |cRXP_ENEMY_Dark Strand Adepts|r and |cRXP_ENEMY_Dark Strand Excavators|r. Loot them for |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1 --Glowing Soul Gem (1)
    .mob Dark Strand Cultist
    .mob Dark Strand Enforcer
    .mob Dark Strand Adept
    .mob Dark Strand Excavator
    .isOnQuest 970
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 970 >>Turn in The Tower of Althalaxx
    .target Delgren the Purifier
    .isOnQuest 970
step
    .goto 1440/1,-283.73,2827.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Get the Astranaar Flight Path
    .target Daelyshia
step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1133 >>Turn in Journey to Astranaar
    .target Shindrell Swiftfire
    .isOnQuest 1133
step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 1008 >>Accept The Zoram Strand
    .target Shindrell Swiftfire
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 990 >>Turn in Trek to Ashenvale
    .target Raene Wolfrunner
    .isOnQuest 990
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 991 >>Accept Raene's Cleansing
    .target Raene Wolfrunner
step
    .goto 1440/1,-311.99,2759.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 1070 >>Accept On Guard in Stonetalon
    .target Sentinel Thenysil
step
    .goto 1440/1,-311.99,2759.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .turnin 1082 >>Turn in Update for Sentinel Thenysil
    .target Sentinel Thenysil
    .isOnQuest 1082
step
    .goto 1440/1,-362.74,2785.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >>Accept Journey to Stonetalon Peak
    .target Faldreas Goeth'Shael
    .xp <18,1
step
    .goto 1440/1,394.43,2677.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Turn in Therylune's Escape
    .target Therysil
    .isQuestComplete 945
step
    .goto 1440/1,528.79,3045.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
    .turnin 991 >>Turn in Raene's Cleansing
    .accept 1023 >>Accept Raene's Cleansing
    .target Teronis' Corpse
step
    #loop
    .goto 1440/1,484.39,3015.88,0
    .goto 1440/1,484.39,3015.88,40,0
    .goto 1440/1,584.15,3050.85,40,0
    >>Kill |cRXP_ENEMY_Saltspittle Puddlejumpers|r, |cRXP_ENEMY_Saltspittle Warriors|r, |cRXP_ENEMY_Saltspittle Muckdwellers|r and |cRXP_ENEMY_Saltspittle Oracles|r. Loot them for |cRXP_LOOT_Glowing Gem|r
    .complete 1023,1 --Glowing Gem (1)
    .mob Saltspittle Puddlejumper
    .mob Saltspittle Warrior
    .mob Saltspittle Muckdweller
    .mob Saltspittle Oracle
step
    #loop
    .goto 1440/1,960.71,3520.94,0
    .goto 1440/1,960.71,3520.94,40,0
    .goto 1440/1,1055.29,3548.62,40,0
    .goto 1440/1,1185.04,3554.39,40,0
    >>Kill |cRXP_ENEMY_Wrathtail Myrmidons|r, |cRXP_ENEMY_Wrathtail Razortails|r, |cRXP_ENEMY_Wrathtail Wave Riders|r and |cRXP_ENEMY_Wrathtail Sea Witches|r. Loot them for |cRXP_LOOT_Wrathtail Head|r
    .complete 1008,1 --Wrathtail Head (20)
    .mob Wrathtail Myrmidon
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sea Witch
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1023 >>Turn in Raene's Cleansing
    .target Raene Wolfrunner
step
    .xp 18 >>Grind to level 18 (Raene's Cleansing needs it)
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1024 >>Accept Raene's Cleansing
    .target Raene Wolfrunner
step
    .goto 1440/1,-362.74,2785.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >>Accept Journey to Stonetalon Peak
    .target Faldreas Goeth'Shael
step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1008 >>Turn in The Zoram Strand
    .accept 1134 >>Accept Pridewings of Stonetalon
    .target Shindrell Swiftfire
step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >>Turn in Pridewings of Stonetalon
    .target Shindrell Swiftfire
    .isQuestComplete 1134
step
    .goto 1440/1,-311.99,2759.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
    .accept 1081 >>Accept Reception from Tyrande
    .target Sentinel Thenysil
    .isQuestTurnedIn 1082 --any of: Update for Sentinel Thenysil
    .xp <18,1
step
    .goto 1440/1,-1387.47,2896.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 1024 >>Turn in Raene's Cleansing
    .target Shael'dryn
step << Draenei
    .goto 1440/1,-311.99,2762.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Palanaar|r
    .turnin 9432 >>Turn in Travel to Astranaar
    .target Vindicator Palanaar
    .isOnQuest 9432
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 10752 >>Turn in Onward to Ashenvale
    .target Raene Wolfrunner
    .isOnQuest 10752
step
    +|cRXP_WARN_That is all of Ashenvale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darnassus|r: Reception from Tyrande
    >>|cRXP_FRIENDLY_Stonetalon Mountains|r: Journey to Stonetalon Peak, On Guard in Stonetalon
    >>|cRXP_FRIENDLY_Stonetalon Mountains and back here|r: Pridewings of Stonetalon
step
    +|cRXP_WARN_Suggested next zones at level 18|r: |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.5 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Darkshore|r (about 1.0 levels of quests, starting around Terenthis). Completing this step loads the guide for Bloodmyst Isle --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Ashenvale is planned from level 21.|r Load its guide for level 21 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 18 - 32 Ashenvale
#subweight -18
#name 21-22 Ashenvale
--RouteBuilder:next
#next Zone Routes (Alliance)\20-21 Duskwood: around Elaine Carevin

step
    .goto 1440/1,175.29,3189.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >>Accept Bathran's Hair
    .target Orendil Broadleaf
step
    #loop
    .goto 1440/1,-36.92,3722.36,0
    .goto 1440/1,-36.92,3722.36,40,0
    .goto 1440/1,-164.94,3801.15,40,0
    .goto 1440/1,-252.59,3853.43,40,0
    >>Loot the |cRXP_PICK_Plant Bundles|r for |cRXP_LOOT_Bathran's Hair|r
    .complete 1010,1 --Bathran's Hair (5)
step
    .goto 1440/1,175.29,3189.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >>Turn in Bathran's Hair
    .accept 1020 >>Accept Orendil's Cure
    .target Orendil Broadleaf
step << Warlock
    .goto 1440/1,-283.73,2827.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Get the Astranaar Flight Path
    .target Daelyshia
step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >>Turn in Pridewings of Stonetalon
    .target Shindrell Swiftfire
    .isQuestComplete 1134
step
    .goto 1440/1,-455.00,2682.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1020 >>Turn in Orendil's Cure
    .accept 1033 >>Accept Elune's Tear
    .target Pelturas Whitemoon
step
    .goto 1440/1,-959.59,2894.03
    >>Pick up |cRXP_PICK_Elune's Tear|r from the ground
    .complete 1033,1 --Elune's Tear (1)
step
    .goto 1440/1,-455.00,2682.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1033 >>Turn in Elune's Tear
    .accept 1034 >>Accept The Ruins of Stardust
    .target Pelturas Whitemoon
step
    .goto 1440/1,-222.03,2059.94
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r for |cRXP_LOOT_Handful of Stardust|r
    .complete 1034,1 --Handful of Stardust (5)
step
    .goto 1440/1,847.11,3470.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .accept 1007 >>Accept The Ancient Statuette
    .target Talen
step
    .goto 1440/1,881.13,3879.57
    >>Pick up |cRXP_PICK_Ancient Statuette|r from the ground
    .complete 1007,1 --Ancient Statuette (1)
step
    .goto 1440/1,847.11,3470.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .turnin 1007 >>Turn in The Ancient Statuette
    .accept 1009 >>Accept Ruuzel
    .target Talen
step
    .goto 1440/1,1295.76,4189.37
    >>Kill |cRXP_ENEMY_Ruuzel|r and loot |cRXP_LOOT_Ring of Zoram|r
    .complete 1009,1 --Ring of Zoram (1)
    .mob Ruuzel
step
    .goto 1440/1,847.11,3470.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .turnin 1009 >>Turn in Ruuzel
    .target Talen
step
    .goto 1440/1,-455.00,2682.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1034 >>Turn in The Ruins of Stardust
    .target Pelturas Whitemoon
step
    .goto 1440/1,-1171.80,2089.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .accept 1016 >>Accept Elemental Bracers
    .turnin 1016 >>Turn in Elemental Bracers
    .accept 1017 >>Accept Mage Summoner
    .target Sentinel Velene Starstrike
step
    .goto 1440/1,-1171.80,2089.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1017 >>Turn in Mage Summoner
    .target Sentinel Velene Starstrike
    .isQuestComplete 1017
step
    .xp 21 >>Grind to level 21 (Report from the Northern Front needs it)
step
    .goto 1440/1,-3259.33,2967.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r
    .accept 9521 >>Accept Report from the Northern Front
    .target Sentinel Luciel Starwhisper
step
    .goto 1440/1,-1866.68,1448.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Farsong|r
    .turnin 9521 >>Turn in Report from the Northern Front
    .target Sentinel Farsong
step
    +|cRXP_WARN_That is all of Ashenvale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Barrens and back here|r: Mage Summoner
step
    +|cRXP_WARN_Suggested next zones at level 21|r: |cRXP_FRIENDLY_Duskwood|r (about 0.5 levels of quests, starting around Elaine Carevin). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Ashenvale is planned from level 24.|r Load its guide for level 24 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 18 - 32 Ashenvale
#subweight -18
#name 24-25 Ashenvale
--RouteBuilder:next
#next Zone Routes (Alliance)\24-25 Duskwood: around Clerk Daltry

step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >>Turn in Pridewings of Stonetalon
    .target Shindrell Swiftfire
    .isQuestComplete 1134
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 973 >>Accept The Tower of Althalaxx
    .target Delgren the Purifier
    .isQuestTurnedIn 970 --any of: The Tower of Althalaxx
    .xp <13,1
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1054 >>Accept Culling the Threat
    .target Raene Wolfrunner
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1025 >>Accept An Aggressive Defense
    .target Raene Wolfrunner
    .isQuestTurnedIn 1023 --any of: Raene's Cleansing
step
    .goto 1440/1,-584.18,3277.25
    >>Kill |cRXP_ENEMY_Dal Bloodclaw|r and loot |cRXP_LOOT_Dal Bloodclaw's Skull|r
    .complete 1054,1 --Dal Bloodclaw's Skull (1)
    .mob Dal Bloodclaw
step
    .goto 1440/1,-1451.48,2309.01
    >>Kill |cRXP_ENEMY_Foulweald Ursas|r
    .complete 1025,2 --Foulweald Ursa slain (2)
    .mob Foulweald Ursa
    .isOnQuest 1025
step
    .goto 1440/1,-1453.79,2293.25
    >>Kill |cRXP_ENEMY_Foulweald Den Watcher|r
    .complete 1025,1 --Foulweald Den Watcher slain (1)
    .mob Foulweald Den Watcher
    .isOnQuest 1025
step
    #loop
    .goto 1440/1,-1421.50,2215.99,0
    .goto 1440/1,-1421.50,2215.99,40,0
    .goto 1440/1,-1544.90,2288.64,40,0
    >>Kill |cRXP_ENEMY_Foulweald Warriors|r
    .complete 1025,4 --Foulweald Warrior slain (12)
    .mob Foulweald Warrior
    .isOnQuest 1025
step
    .goto 1440/1,-1412.85,2205.61
    >>Kill |cRXP_ENEMY_Foulweald Totemics|r
    .complete 1025,3 --Foulweald Totemic slain (10)
    .mob Foulweald Totemic
    .isOnQuest 1025
step
    .goto 1440/1,-1171.80,2089.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1017 >>Turn in Mage Summoner
    .target Sentinel Velene Starstrike
    .isQuestComplete 1017
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1025 >>Turn in An Aggressive Defense
    .target Raene Wolfrunner
    .isOnQuest 1025
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1054 >>Turn in Culling the Threat
    .target Raene Wolfrunner
step
    .goto 1440/1,-311.99,2762.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Palanaar|r
    .accept 9533 >>Accept A Helping Hand
    .target Vindicator Palanaar
step
    .xp 24 >>Grind to level 24 (Kayneth Stillwind needs it)
step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .accept 4581 >>Accept Kayneth Stillwind
    .target Shindrell Swiftfire
step
    .goto 1440/1,-1387.47,2896.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .accept 1026 >>Accept Raene's Cleansing
    .target Shael'dryn
    .isQuestTurnedIn 1024 --any of: Raene's Cleansing
step
    .goto 1440/1,-1453.79,3349.13
    >>Kill |cRXP_ENEMY_Withered Ancients|r and |cRXP_ENEMY_Crazed Ancients|r. Loot them for |cRXP_LOOT_Wooden Key|r
    .collect 5475,1,1026,1 --Wooden Key (1)
    .mob Withered Ancient
    .mob Crazed Ancient
    .isOnQuest 1026
step
    .goto 1440/1,-1438.22,3312.23
    >>Open the |cRXP_PICK_Worn Chest|r. Loot it for |cRXP_LOOT_Iron Shaft|r
    .complete 1026,1 --Iron Shaft (1)
    .isOnQuest 1026
step
    .goto 1440/1,-1387.47,2896.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 1026 >>Turn in Raene's Cleansing
    .target Shael'dryn
    .isOnQuest 1026
step
    .goto 1440/1,-3307.77,2950.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Architect Nemos|r
    .turnin 9533 >>Turn in A Helping Hand
    .target Architect Nemos
step
    .goto 1440/1,-3215.51,2954.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .turnin 4581 >>Turn in Kayneth Stillwind
    .accept 9519 >>Accept The Lost Chalice
    .target Kayneth Stillwind
step
    .goto 1440/1,-2994.07,2793.32
    >>Pick up |cRXP_PICK_Chalice of Elune|r from the ground
    .complete 9519,1 --Chalice of Elune (1)
step
    .goto 1440/1,-3215.51,2954.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .turnin 9519 >>Turn in The Lost Chalice
    .target Kayneth Stillwind
step
    .goto 1440/1,242.19,2340.14
    >>Kill |cRXP_ENEMY_Ilkrud Magthrull|r and loot |cRXP_LOOT_Ilkrud Magthrull's Tome|r
    .complete 973,1 --Ilkrud Magthrull's Tome (1)
    .mob Ilkrud Magthrull
    .isOnQuest 973
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 973 >>Turn in The Tower of Althalaxx
    .target Delgren the Purifier
    .isOnQuest 973
step
    .goto 1440/1,188.56,3178.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feero Ironhand|r
    .accept 976 >>Accept Supplies to Auberdine
    .target Feero Ironhand
    .isQuestTurnedIn 973 --any of: The Tower of Althalaxx
    .xp <19,1
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 976 >>Turn in Supplies to Auberdine
    .target Delgren the Purifier
    .isQuestComplete 976
step
    +|cRXP_WARN_Suggested next zones at level 24|r: |cRXP_FRIENDLY_Duskwood|r (about 0.5 levels of quests, starting around Clerk Daltry). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Ashenvale is planned from level 27.|r Load its guide for level 27 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 18 - 32 Ashenvale
#subweight -18
#name 27-29 Ashenvale: around Sentinel Melyria Frostshadow
--RouteBuilder:next
#next Zone Routes (Alliance)\28-29 Duskwood: around Sirra Von'Indi

step
    .goto 1440/1,-1387.47,2896.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .accept 1027 >>Accept Raene's Cleansing
    .target Shael'dryn
    .isQuestTurnedIn 1026 --any of: Raene's Cleansing
step
    #loop
    .goto 1440/1,-2367.23,1844.69,0
    .goto 1440/1,-2367.23,1844.69,40,0
    .goto 1440/1,-2488.33,1718.61,40,0
    .goto 1440/1,-2600.78,1705.93,40,0
    >>Open the |cRXP_PICK_Rusty Chest|r. Loot it for |cRXP_LOOT_Iron Pommel|r
    .complete 1027,1 --Iron Pommel (1)
    .isOnQuest 1027
step
    .goto 1440/1,-1387.47,2896.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 1027 >>Turn in Raene's Cleansing
    .target Shael'dryn
    .isOnQuest 1027
step
    .goto 1440/1,-1387.47,2896.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .accept 1028 >>Accept Raene's Cleansing
    .target Shael'dryn
    .isQuestTurnedIn 1027 --any of: Raene's Cleansing
step
    .goto 1440/1,-1549.52,2781.79
    >>Click the |cRXP_PICK_Hidden Shrine|r
    .turnin 1028 >>Turn in Raene's Cleansing
    .isOnQuest 1028
step
    .goto 1440/1,-1549.52,2781.79
    >>Click the |cRXP_PICK_Hidden Shrine|r
    .accept 1055 >>Accept Raene's Cleansing
    .isQuestTurnedIn 1028 --any of: Raene's Cleansing
step
    .goto 1440/1,-1387.47,2896.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .turnin 1055 >>Turn in Raene's Cleansing
    .target Shael'dryn
    .isOnQuest 1055
step
    .goto 1440/1,-1387.47,2896.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shael'dryn|r
    .accept 1029 >>Accept Raene's Cleansing
    .target Shael'dryn
    .isQuestTurnedIn 1055 --any of: Raene's Cleansing
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 1140 >>Accept The Tower of Althalaxx
    .target Delgren the Purifier
    .isQuestTurnedIn 973 --any of: The Tower of Althalaxx
    .xp <20,1
step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >>Turn in Pridewings of Stonetalon
    .target Shindrell Swiftfire
    .isQuestComplete 1134
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1029 >>Turn in Raene's Cleansing
    .target Raene Wolfrunner
    .isOnQuest 1029
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .accept 1030 >>Accept Raene's Cleansing
    .target Raene Wolfrunner
    .isQuestTurnedIn 1029 --any of: Raene's Cleansing
step
    .goto 1440/1,-455.00,2682.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .accept 1035 >>Accept Fallen Sky Lake
    .target Pelturas Whitemoon
    .isQuestTurnedIn 1034 --any of: The Ruins of Stardust
step
    .goto 1440/1,-2141.75,2481.98
    >>Click the |cRXP_PICK_Circle of Imprisonment|r
    .complete 1140,1 --Free the Highborne soul in Night Run
    .isOnQuest 1140
step
    .goto 1440/1,-3005.60,2806.01
    >>Click the |cRXP_PICK_Circle of Imprisonment|r
    .complete 1140,2 --Free the Highborne soul in Satyrnaar
    .isOnQuest 1140
step
    .goto 1440/1,-3215.51,2954.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .accept 1011 >>Accept Forsaken Diseases
    .target Kayneth Stillwind
step
    .goto 1440/1,-3154.38,2919.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .accept 9526 >>Accept Reclaiming Felfire Hill
    .target Gnarl
    .xp <27,1
step
    .goto 1440/1,-3259.33,2967.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r
    .accept 9518 >>Accept Agents of Destruction
    .target Sentinel Luciel Starwhisper
step
    .goto 1440/1,-3261.06,2977.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
    .accept 1022 >>Accept The Howling Vale
    .target Sentinel Melyria Frostshadow
step
    .goto 1440/1,-3286.44,2995.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .accept 9516 >>Accept Destroy the Legion
    .target Vindicator Vedaar
step
    .goto 1440/1,-3322.77,3001.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .accept 1021 >>Accept Vile Satyr! Dryads in Danger!
    .target Illiyana
step
    .goto 1440/1,-3307.77,2950.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Architect Nemos|r
    .accept 9517 >>Accept A Shameful Waste
    .target Architect Nemos
step
    #loop
    .goto 1440/1,-3442.14,2750.27,0
    .goto 1440/1,-3442.14,2750.27,40,0
    .goto 1440/1,-3451.36,2641.88,40,0
    .goto 1440/1,-3345.26,2425.09,40,0
    .goto 1440/1,-3285.28,2565.00,40,0
    >>Kill |cRXP_ENEMY_Horde Scouts|r
    >>Open the |cRXP_PICK_Lumber Pile|r. Loot it for |cRXP_LOOT_Warsong Lumber|r
    .complete 9518,4 --Horde Scout slain (10)
    .complete 9517,1 --Warsong Lumber (1)
    .mob Horde Scout
step
    #loop
    .goto 1440/1,-2984.26,2766.42,0
    .goto 1440/1,-2984.26,2766.42,40,0
    .goto 1440/1,-2958.31,2699.15,40,0
    >>Loot the |cRXP_PICK_Tainted Woods|r for |cRXP_LOOT_Satyrnaar Fel Wood|r
    .complete 9517,2 --Satyrnaar Fel Wood (5)
step
    .goto 1440/1,-3154.38,2919.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .turnin 9517 >>Turn in A Shameful Waste
    .target Gnarl
step
    .goto 1440/1,-3154.38,2919.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .accept 9526 >>Accept Reclaiming Felfire Hill
    .target Gnarl
    .xp <27,1
step
    .goto 1440/1,-2817.03,2950.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anilia|r
    .turnin 1021 >>Turn in Vile Satyr! Dryads in Danger!
    .target Anilia
step
    .goto 1440/1,-2642.88,1908.11
    >>Pick up |cRXP_PICK_Bottle of Disease|r from the ground
    .complete 1011,1 --Bottle of Disease (1)
step
    .goto 1440/1,-2144.06,1514.51
    >>Kill |cRXP_ENEMY_Shadethicket Oracle|r and loot |cRXP_LOOT_Fallen Moonstone|r
    .complete 1035,1 --Fallen Moonstone (1)
    .mob Shadethicket Oracle
    .isOnQuest 1035
step
    .goto 1440/1,-1231.77,1787.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .turnin 1030 >>Turn in Raene's Cleansing
    .target Krolg
    .isOnQuest 1030
step
    .goto 1440/1,-1231.77,1787.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .accept 1045 >>Accept Raene's Cleansing
    .target Krolg
    .isQuestTurnedIn 1030 --any of: Raene's Cleansing
step
    #loop
    .goto 1440/1,-1493.00,1751.67,0
    .goto 1440/1,-1493.00,1751.67,40,0
    .goto 1440/1,-1463.59,1643.27,40,0
    >>Kill |cRXP_ENEMY_Bloodtooth Guards|r
    .complete 1045,2 --Bloodtooth Guard slain (4)
    .mob Bloodtooth Guard
    .isOnQuest 1045
step
    .goto 1440/1,-1457.25,1612.52
    >>Kill |cRXP_ENEMY_Ran Bloodtooths|r
    .complete 1045,1 --Ran Bloodtooth slain (4)
    .mob Ran Bloodtooth
    .isOnQuest 1045
step
    .goto 1440/1,-1231.77,1787.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .turnin 1045 >>Turn in Raene's Cleansing
    .target Krolg
    .isOnQuest 1045
step
    .goto 1440/1,-1231.77,1787.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krolg|r
    .accept 1046 >>Accept Raene's Cleansing
    .target Krolg
    .isQuestTurnedIn 1045 --any of: Raene's Cleansing
step
    .goto 1440/1,-1171.80,2089.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1017 >>Turn in Mage Summoner
    .target Sentinel Velene Starstrike
    .isQuestComplete 1017
step
    .goto 1440/1,-455.00,2682.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
    .turnin 1035 >>Turn in Fallen Sky Lake
    .target Pelturas Whitemoon
    .isOnQuest 1035
step
    .goto 1440/1,-1211.59,3168.86
    >>Click the |cRXP_PICK_Tome of Mel'Thandris|r
    .complete 1022,1 --View the Tome of Mel'Thandris
step
    .xp 27 >>Grind to level 27 (Reclaiming Felfire Hill needs it)
step
    .goto 1440/1,-3154.38,2919.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .accept 9526 >>Accept Reclaiming Felfire Hill
    .target Gnarl
step
    .goto 1440/1,-3215.51,2954.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .turnin 1011 >>Turn in Forsaken Diseases
    .target Kayneth Stillwind
step
    .goto 1440/1,-3261.06,2977.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Melyria Frostshadow|r
    .turnin 1022 >>Turn in The Howling Vale
    .accept 1037 >>Accept Velinde Starsong
    .target Sentinel Melyria Frostshadow
step
    #loop
    .goto 1440/1,-3150.92,2442.77,0
    .goto 1440/1,-3150.92,2442.77,40,0
    .goto 1440/1,-3145.73,2347.83,40,0
    >>Kill |cRXP_ENEMY_Horde Deforesters|r
    >>Kill |cRXP_ENEMY_Warsong Shredders|r
    .complete 9518,3 --Horde Deforester slain (5)
    .complete 9518,2 --Warsong Shredder slain (2)
    .mob Horde Deforester
    .mob Warsong Shredder
step
    #completewith Drop9520x1
    >>|cRXP_LOOT_Diabolical Plans|r can drop from |cRXP_ENEMY_Searing Infernal|r, |cRXP_ENEMY_Roaming Felguard|r, |cRXP_ENEMY_Mannoroc Lasher|r. Use it to start the quest if you get one
    .collect 23777,1,9520 --Diabolical Plans (1)
    .accept 9520 >>Accept Diabolical Plans
    .use 23777
step
    #loop
    .goto 1440/1,-3118.05,2050.71,0
    .goto 1440/1,-3118.05,2050.71,40,0
    .goto 1440/1,-3089.79,1941.55,40,0
    .goto 1440/1,-2998.10,2012.66,40,0
    >>Kill |cRXP_ENEMY_Roaming Felguards|r
    >>Kill |cRXP_ENEMY_Searing Infernals|r
    >>Click the |cRXP_PICK_Fertile Dirt Mound|r
    .complete 9516,2 --Roaming Felguard slain (6)
    .complete 9516,3 --Searing Infernal slain (6)
    .complete 9526,1 --Tree Seedling Planted
    .mob Roaming Felguard
    .mob Searing Infernal
step
    #label Drop9520x1
    .goto 1440/1,-3447.33,1712.84
    >>Kill |cRXP_ENEMY_Mannoroc Lashers|r
    .complete 9516,1 --Mannoroc Lasher slain (6)
    .mob Mannoroc Lasher
step
    .goto 1440/1,-3421.95,2383.96
    >>Kill |cRXP_ENEMY_Overseer Gorthak|r
    .complete 9518,1 --Overseer Gorthak slain (1)
    .mob Overseer Gorthak
step
    .goto 1440/1,-3286.44,2995.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .turnin 9516 >>Turn in Destroy the Legion
    .target Vindicator Vedaar
step
    .goto 1440/1,-3286.44,2995.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .turnin 9520 >>Turn in Diabolical Plans
    .target Vindicator Vedaar
    .isOnQuest 9520
step
    .goto 1440/1,-3259.33,2967.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Luciel Starwhisper|r
    .turnin 9518 >>Turn in Agents of Destruction
    .target Sentinel Luciel Starwhisper
step
    .goto 1440/1,-3154.38,2919.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnarl|r
    .turnin 9526 >>Turn in Reclaiming Felfire Hill
    .target Gnarl
step
    .goto 1440/1,-2566.76,2341.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kaylisk|r
    .target Innkeeper Kaylisk
    .home >>Set your Hearthstone to Innkeeper Kaylisk's inn
step
    .goto 1440/1,-1457.25,1612.52
    >>Kill |cRXP_ENEMY_Ran Bloodtooth|r and loot |cRXP_LOOT_Ran Bloodtooth's Skull|r
    .complete 1046,1 --Ran Bloodtooth's Skull (1)
    .mob Ran Bloodtooth
    .isOnQuest 1046
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1046 >>Turn in Raene's Cleansing
    .target Raene Wolfrunner
    .isQuestComplete 1046
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 1140 >>Turn in The Tower of Althalaxx
    .target Delgren the Purifier
    .isOnQuest 1140
step
    .goto 1440/1,189.13,3185.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 1167 >>Accept The Tower of Althalaxx
    .target Delgren the Purifier
    .isQuestTurnedIn 1140 --any of: The Tower of Althalaxx
    .xp <23,1
step
    +|cRXP_WARN_That is all of Ashenvale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darkshore|r: The Tower of Althalaxx
    >>|cRXP_FRIENDLY_Darnassus|r: Velinde Starsong
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Raene's Cleansing
step
    +|cRXP_WARN_Suggested next zones at level 28|r: |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Sirra Von'Indi). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Ashenvale is planned from level 31.|r Load its guide for level 31 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 18 - 32 Ashenvale
#subweight -18
#name 31-32 Ashenvale
--RouteBuilder:next
#next Zone Routes (Alliance)\30-32 Stranglethorn Vale: around Krazek;Zone Routes (Alliance)\31-32 Desolace: around Kreldig Ungor

step
    .goto 1440/1,-3215.51,2954.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .accept 1012 >>Accept Insane Druids
    .target Kayneth Stillwind
    .isQuestTurnedIn 1011 --any of: Forsaken Diseases
step
    .goto 1440/1,-3286.44,2995.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .accept 9522 >>Accept Never Again!
    .target Vindicator Vedaar
    .isQuestTurnedIn 9520 --any of: Diabolical Plans
    .xp <27,1
step
    .goto 1440/1,-2795.69,1876.97
    >>Kill |cRXP_ENEMY_Uthil Mooncall|r
    .complete 1012,2 --Uthil Mooncall slain (1)
    .mob Uthil Mooncall
    .isOnQuest 1012
step
    .goto 1440/1,-2750.71,1828.93
    >>Kill |cRXP_ENEMY_Taneel Darkwood|r
    .complete 1012,1 --Taneel Darkwood slain (1)
    .mob Taneel Darkwood
    .isOnQuest 1012
step
    .goto 1440/1,-2627.88,1820.85
    >>Kill |cRXP_ENEMY_Mavoris Cloudsbreak|r
    .complete 1012,3 --Mavoris Cloudsbreak slain (1)
    .mob Mavoris Cloudsbreak
    .isOnQuest 1012
step
    #loop
    .goto 1440/1,-2844.13,1505.67,0
    .goto 1440/1,-2844.13,1505.67,40,0
    .goto 1440/1,-2852.78,1418.41,40,0
    >>Kill |cRXP_ENEMY_Diathorus the Seekers|r
    .complete 9522,2 --Diathorus the Seeker slain (8)
    .mob Diathorus the Seeker
    .isOnQuest 9522
step
    .goto 1440/1,-3477.89,1723.61
    >>Kill |cRXP_ENEMY_Gorgannon|r
    .complete 9522,1 --Gorgannon slain (1)
    .mob Gorgannon
    .isOnQuest 9522
step
    .goto 1440/1,-2817.03,2950.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anilia|r
    .accept 1031 >>Accept The Branch of Cenarius
    .target Anilia
    .isQuestTurnedIn 1021 --any of: Vile Satyr! Dryads in Danger!
step
    .goto 1440/1,-2797.42,3042.40
    >>Kill |cRXP_ENEMY_Geltharis|r and loot |cRXP_LOOT_Branch of Cenarius|r
    .complete 1031,1 --Branch of Cenarius (1)
    .mob Geltharis
    .isOnQuest 1031
step
    .goto 1440/1,-3286.44,2995.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Vedaar|r
    .turnin 9522 >>Turn in Never Again!
    .target Vindicator Vedaar
    .isOnQuest 9522
step
    .goto 1440/1,-3322.77,3001.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .turnin 1031 >>Turn in The Branch of Cenarius
    .target Illiyana
    .isOnQuest 1031
step
    .goto 1440/1,-3322.77,3001.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .accept 1032 >>Accept Satyr Slaying!
    .target Illiyana
    .isQuestTurnedIn 1031 --any of: The Branch of Cenarius
step
    .goto 1440/1,-3215.51,2954.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayneth Stillwind|r
    .turnin 1012 >>Turn in Insane Druids
    .target Kayneth Stillwind
    .isOnQuest 1012
step
    #loop
    .goto 1440/1,-2989.45,2779.10,0
    .goto 1440/1,-2989.45,2779.10,40,0
    .goto 1440/1,-3021.17,2668.79,40,0
    .goto 1440/1,-2872.39,2852.90,40,0
    >>Kill |cRXP_ENEMY_Xavian Rogues|r, |cRXP_ENEMY_Xavian Betrayers|r, |cRXP_ENEMY_Xavian Felsworns|r and |cRXP_ENEMY_Xavian Hellcallers|r. Loot them for |cRXP_LOOT_Satyr Horns|r
    .complete 1032,1 --Satyr Horns (16)
    .mob Xavian Rogue
    .mob Xavian Betrayer
    .mob Xavian Felsworn
    .mob Xavian Hellcaller
    .isOnQuest 1032
step
    .goto 1440/1,-3322.77,3001.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illiyana|r
    .turnin 1032 >>Turn in Satyr Slaying!
    .target Illiyana
    .isOnQuest 1032
step
    .goto 1440/1,-1457.25,1612.52
    >>Kill |cRXP_ENEMY_Ran Bloodtooth|r and loot |cRXP_LOOT_Ran Bloodtooth's Skull|r
    .complete 1046,1 --Ran Bloodtooth's Skull (1)
    .mob Ran Bloodtooth
    .isOnQuest 1046
step
    .goto 1440/1,-1171.80,2089.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Velene Starstrike|r
    .turnin 1017 >>Turn in Mage Summoner
    .target Sentinel Velene Starstrike
    .isQuestComplete 1017
step
    .goto 1440/1,-411.75,2767.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
    .turnin 1046 >>Turn in Raene's Cleansing
    .target Raene Wolfrunner
    .isQuestComplete 1046
step
    .goto 1440/1,-299.30,2795.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
    .turnin 1134 >>Turn in Pridewings of Stonetalon
    .target Shindrell Swiftfire
    .isQuestComplete 1134
step
    +|cRXP_WARN_End of the Ashenvale route.|r
step
    +|cRXP_WARN_Suggested next zones at level 31|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.5 levels of quests, starting around Krazek), |cRXP_FRIENDLY_Desolace|r (about 0.5 levels of quests, starting around Kreldig Ungor). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
]])
