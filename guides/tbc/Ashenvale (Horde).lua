-- 19-30 Ashenvale: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 5 parts (from level 19, 22, 25, 28, 32).
-- Split into 5 guides, listed under "19 - 33 Ashenvale" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Ashenvale.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 19 - 33 Ashenvale
#subweight -19
#name 19-20 Ashenvale
--RouteBuilder:next
#next Zone Routes (Horde)\18-20 The Barrens: around Tonga Runetotem;Zone Routes (Horde)\15-18 Ghostlands: around Eralan

step
    .goto 1440/1,994.16,3373.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Get the Zoram'gar Outpost flight path
    .target Andruk
step
    .goto 1440/1,1025.88,3331.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .accept 6442 >>Accept Naga at the Zoram Strand
    .target Marukai
step
    #loop
    .goto 1440/1,1073.74,3573.99,0
    .goto 1440/1,1073.74,3573.99,40,0
    .goto 1440/1,1097.96,3688.53,40,0
    .goto 1440/1,1152.17,3685.46,40,0
    >>Kill |cRXP_ENEMY_Wrathtail Myrmidons|r, |cRXP_ENEMY_Wrathtail Razortails|r, |cRXP_ENEMY_Wrathtail Wave Riders|r and |cRXP_ENEMY_Wrathtail Sea Witches|r. Loot them for |cRXP_LOOT_Wrathtail Head|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Myrmidon
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sea Witch
step
    .goto 1440/1,1025.88,3331.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Turn in Naga at the Zoram Strand
    .target Marukai
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 6382 >>Turn in The Ashenvale Hunt
    .target Senani Thunderheart
    .isOnQuest 6382
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 742 >>Turn in The Ashenvale Hunt
    .target Senani Thunderheart
    .isOnQuest 742
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 235 >>Turn in The Ashenvale Hunt
    .target Senani Thunderheart
    .isOnQuest 235
step
    .goto 1440/1,-2520.05,2305.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Get the Splintertree Post flight path
    .target Vhulgra
    .subzoneskip 431,1
step << BloodElf
    .goto 1440/1,-2413.36,2071.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Sunsworn|r
    .turnin 9428 >>Turn in Report to Splintertree Post
    .target Advisor Sunsworn
    .isOnQuest 9428
step << Hunter
    .goto 1440/1,-2066.21,2187.93,0
    .goto 1440/1,-2285.92,2195.62,0
    .goto 1440/1,-2285.92,2195.62,50,0
    .goto 1440/1,-2255.36,2346.29,50,0
    .goto 1440/1,-2141.75,2258.66,50,0
    .goto 1440/1,-2066.21,2187.93,50,0
    .train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .train 17264 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ghostpaw Alpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
    .xp <27,1
step << Hunter
    .goto 1440/1,-2066.21,2187.93,0
    .goto 1440/1,-2255.36,2346.29,50,0
    .goto 1440/1,-2141.75,2258.66,50,0
    .goto 1440/1,-2066.21,2187.93,50,0
    .train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .xp >27,1
step << Hunter
    .goto 1440/1,-2531.58,2327.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Qeeju|r
    .target Qeeju
    .zoneskip Ashenvale,1
    .train 16830,3
step
    +|cRXP_WARN_Suggested next zones at level 19|r: |cRXP_FRIENDLY_The Barrens|r (about 1.2 levels of quests, starting around Tonga Runetotem), |cRXP_FRIENDLY_Ghostlands|r (about 1.0 levels of quests, starting around Eralan). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Ashenvale is planned from level 22.|r Load its guide for level 22 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 19 - 33 Ashenvale
#subweight -19
#name 22-23 Ashenvale

step
    .goto 1440/1,1013.77,3345.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >>Accept Between a Rock and a Thistlefur
    .target Karang Amakkar
step
    .goto 1440/1,1028.18,3333.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >>Accept Troll Charm
    .target Mitsuwa
step
    .goto 1440/1,1004.54,3341.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muglash|r
    .accept 6641 >>Accept Vorsha the Lasher
    .target Muglash
step
    .goto 1440/1,1146.98,3612.81
    >>Defeat Vorsha the Lasher
    .complete 6641,1 --Defeat Vorsha the Lasher
step
    .goto 1440/1,995.31,3357.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >>Turn in Vorsha the Lasher
    .target Warsong Runner
step
    .goto 1440/1,-592.83,2166.41
    >>Kill |cRXP_ENEMY_Ursangous|r and loot |cRXP_LOOT_Ursangous's Paw|r. Use it to start the quest
    .collect 16303,1,23 --Ursangous's Paw (1)
    .accept 23 >>Accept Ursangous's Paw
    .use 16303
    .mob Ursangous
    .isQuestTurnedIn 6383 --any of: The Ashenvale Hunt
    .xp <20,1
step
    .goto 1440/1,-2400.68,2054.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >>Accept Ashenvale Outrunners
    .target Kuray'bin
step
    #loop
    .goto 1440/1,-2502.17,1975.37,0
    .goto 1440/1,-2502.17,1975.37,40,0
    .goto 1440/1,-2666.52,1965.76,40,0
    .goto 1440/1,-2686.13,1863.14,40,0
    >>Kill |cRXP_ENEMY_Ashenvale Outrunners|r
    .complete 6503,1 --Ashenvale Outrunner slain (9)
    .mob Ashenvale Outrunner
step
    .goto 1440/1,-2623.85,1979.99
    >>Kill |cRXP_ENEMY_Sharptalon|r and loot |cRXP_LOOT_Sharptalon's Claw|r. Use it to start the quest
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>Accept Sharptalon's Claw
    .use 16305
    .mob Sharptalon
    .isQuestTurnedIn 6383 --any of: The Ashenvale Hunt
    .xp <20,1
step
    .goto 1440/1,-2240.94,1778.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r
    .accept 6544 >>Accept Torek's Assault
    .target Torek
step
    .goto 1440/1,-2028.15,1776.65
    >>Take Silverwing Outpost.
    .complete 6544,1 --Take Silverwing Outpost.
step
    #loop
    .goto 1440/1,-693.74,3336.44,0
    .goto 1440/1,-693.74,3336.44,40,0
    .goto 1440/1,-636.08,3432.54,40,0
    >>Loot the |cRXP_PICK_Troll Chests|r for |cRXP_LOOT_Troll Charm|r
    .complete 6462,1 --Troll Charm (8)
step
    .goto 1440/1,-694.90,3347.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Snowhoof|r
    .accept 6482 >>Accept Freedom to Ruul
    .target Ruul Snowhoof
step
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Thistlefur Avengers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 216,1 --Thistlefur Avenger slain (8)
    .mob Thistlefur Avenger
step
    #label Along13
    .goto 1440/1,-521.90,3238.43
    >>Escort Ruul from the Thistlefurs.
    .complete 6482,1 --Escort Ruul from the Thistlefurs.
step
    #loop
    .goto 1440/1,-254.32,3179.62,0
    .goto 1440/1,-254.32,3179.62,40,0
    .goto 1440/1,-178.78,3029.71,40,0
    .goto 1440/1,-121.69,2984.74,40,0
    >>Kill |cRXP_ENEMY_Thistlefur Shamans|r
    .complete 216,2 --Thistlefur Shaman slain (8)
    .mob Thistlefur Shaman
step
    #loop
    .goto 1440/1,-457.89,3355.66,0
    .goto 1440/1,-457.89,3355.66,40,0
    .goto 1440/1,-363.31,3442.53,40,0
    >>Kill |cRXP_ENEMY_Thistlefur Avengers|r
    .complete 216,1 --Thistlefur Avenger slain (8)
    .mob Thistlefur Avenger
step
    .goto 1440/1,-1615.83,2518.49
    >>Kill |cRXP_ENEMY_Shadumbra|r and loot |cRXP_LOOT_Shadumbra's Head|r. Use it to start the quest
    .collect 16304,1,24 --Shadumbra's Head (1)
    .accept 24 >>Accept Shadumbra's Head
    .use 16304
    .mob Shadumbra
    .isQuestTurnedIn 6383 --any of: The Ashenvale Hunt
    .xp <20,1
step
    .goto 1440/1,-2400.68,2054.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >>Turn in Ashenvale Outrunners
    .target Kuray'bin
step
    .goto 1440/1,-2511.40,2271.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ertog Ragetusk|r
    .turnin 6544 >>Turn in Torek's Assault
    .target Ertog Ragetusk
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .accept 6383 >>Accept The Ashenvale Hunt
    .target Senani Thunderheart
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 2 >>Turn in Sharptalon's Claw
    .target Senani Thunderheart
    .isOnQuest 2
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 24 >>Turn in Shadumbra's Head
    .target Senani Thunderheart
    .isOnQuest 24
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 23 >>Turn in Ursangous's Paw
    .target Senani Thunderheart
    .isOnQuest 23
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .accept 247 >>Accept The Hunt Completed
    .target Senani Thunderheart
    .isQuestTurnedIn 2 --Sharptalon's Claw
    .isQuestTurnedIn 23 --Ursangous's Paw
    .isQuestTurnedIn 24 --Shadumbra's Head
    .xp <20,1
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 247 >>Turn in The Hunt Completed
    .target Senani Thunderheart
    .isOnQuest 247
step
    .goto 1440/1,-2573.68,2331.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yama Snowhoof|r
    .turnin 6482 >>Turn in Freedom to Ruul
    .target Yama Snowhoof
step << Hunter
    .goto 1440/1,-2066.21,2187.93,0
    .goto 1440/1,-2255.36,2346.29,50,0
    .goto 1440/1,-2141.75,2258.66,50,0
    .goto 1440/1,-2066.21,2187.93,50,0
    .train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .xp >26,1
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    >>|cRXP_WARN_The database has no objectives for The Ashenvale Hunt. Skip this step if the quest is not finished|r
    .turnin 6383 >>Turn in The Ashenvale Hunt
    .target Senani Thunderheart
    .isOnQuest 6383
step
    .goto 1440/1,1013.77,3345.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 216 >>Turn in Between a Rock and a Thistlefur
    .target Karang Amakkar
step
    .goto 1440/1,1028.18,3333.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >>Turn in Troll Charm
    .target Mitsuwa
step
    +|cRXP_WARN_The rest of Ashenvale is planned from level 25.|r Load its guide for level 25 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 19 - 33 Ashenvale
#subweight -19
#name 25-26 Ashenvale

step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 6383 >>Turn in The Ashenvale Hunt
    .target Senani Thunderheart
    .isOnQuest 6383
step
    .goto 1440/1,-2548.30,2366.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 25 >>Accept Stonetalon Standstill
    .target Mastok Wrilehiss
step
    .goto 1440/1,-2513.13,2309.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Accept Satyr Horns
    .target Pixel
step
    .goto 1440/1,-2337.24,1937.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda Ragescar|r
    .accept 6504 >>Accept The Lost Pages
    .target Gurda Ragescar
step
    .goto 1440/1,-2337.24,1937.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda Ragescar|r
    .turnin 6504 >>Turn in The Lost Pages
    .target Gurda Ragescar
    .isQuestComplete 6504
step
    #loop
    .goto 1440/1,-2151.56,2516.96,0
    .goto 1440/1,-2151.56,2516.96,40,0
    .goto 1440/1,-2124.45,2652.64,40,0
    >>Kill |cRXP_ENEMY_Xavian Rogues|r, |cRXP_ENEMY_Xavian Betrayers|r, |cRXP_ENEMY_Xavian Felsworns|r and |cRXP_ENEMY_Xavian Hellcallers|r. Loot them for |cRXP_LOOT_Satyr Horns|r
    .complete 6441,1 --Satyr Horns (16)
    .mob Xavian Rogue
    .mob Xavian Betrayer
    .mob Xavian Felsworn
    .mob Xavian Hellcaller
step
    #completewith Along6
    >>As you go: Kill |cRXP_ENEMY_Befouled Water Elementals|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25,1 --Befouled Water Elemental slain (12)
    .mob Befouled Water Elemental
step
    #label Along6
    .goto 1440/1,-1121.05,1999.20
    >>Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
step
    #loop
    .goto 1440/1,-1201.79,1971.14,0
    .goto 1440/1,-1201.79,1971.14,40,0
    .goto 1440/1,-1234.66,1903.88,40,0
    >>Kill |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 25,1 --Befouled Water Elemental slain (12)
    .mob Befouled Water Elemental
step
    .goto 1440/1,-952.67,1982.29
    >>Kill |cRXP_ENEMY_Tideress|r and loot |cRXP_LOOT_Befouled Water Globe|r. Use it to start the quest
    .collect 16408,1,1918 --Befouled Water Globe (1)
    .accept 1918 >>Accept The Befouled Element
    .use 16408
    .mob Tideress
step
    .goto 1440/1,1013.77,3345.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 6621 >>Accept King of the Foulweald
    .target Karang Amakkar
    .isQuestTurnedIn 216 --any of: Between a Rock and a Thistlefur
step
    .goto 1440/1,-1558.17,2232.14
    >>Kill |cRXP_ENEMY_Chief Murgut|r and loot |cRXP_LOOT_Murgut's Totem|r. It can also be picked up from |cRXP_PICK_Murgut's Totem Basket|r on the ground
    .complete 6621,1 --Murgut's Totem (1)
    .mob Chief Murgut
    .isOnQuest 6621
step
    .goto 1440/1,-2513.13,2309.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >>Turn in Satyr Horns
    .target Pixel
step
    .goto 1440/1,-2548.30,2366.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .turnin 25 >>Turn in Stonetalon Standstill
    .turnin 1918 >>Turn in The Befouled Element
    .accept 824 >>Accept Je'neu of the Earthen Ring
    .target Mastok Wrilehiss
step
    .goto 1440/1,1013.77,3345.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 6621 >>Turn in King of the Foulweald
    .target Karang Amakkar
    .isOnQuest 6621
step
    .goto 1440/1,1033.37,3354.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >>Turn in Je'neu of the Earthen Ring
    .target Je'neu Sancrea
step
    +|cRXP_WARN_That is all of Ashenvale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Lost Pages
step
    +|cRXP_WARN_The rest of Ashenvale is planned from level 28.|r Load its guide for level 28 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 19 - 33 Ashenvale
#subweight -19
#name 28-29 Ashenvale

step
    .goto 1440/1,-2522.93,2351.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .accept 9534 >>Accept Destroy the Legion
    .target Valusha
step
    #completewith Drop9535x1
    >>|cRXP_LOOT_Diabolical Plans|r can drop from |cRXP_ENEMY_Searing Infernal|r, |cRXP_ENEMY_Roaming Felguard|r, |cRXP_ENEMY_Mannoroc Lasher|r. Use it to start the quest if you get one
    .collect 23797,1,9535 --Diabolical Plans (1)
    .accept 9535 >>Accept Diabolical Plans
    .use 23797
step
    #label Drop9535x1
    #loop
    .goto 1440/1,-2899.49,1579.85,0
    .goto 1440/1,-2899.49,1579.85,40,0
    .goto 1440/1,-2862.59,1544.87,40,0
    .goto 1440/1,-2817.61,1443.01,40,0
    >>Kill |cRXP_ENEMY_Searing Infernals|r
    >>Kill |cRXP_ENEMY_Mannoroc Lashers|r
    >>Kill |cRXP_ENEMY_Roaming Felguards|r
    .complete 9534,3 --Searing Infernal slain (6)
    .complete 9534,1 --Mannoroc Lasher slain (6)
    .complete 9534,2 --Roaming Felguard slain (6)
    .mob Searing Infernal
    .mob Mannoroc Lasher
    .mob Roaming Felguard
step
    .goto 1440/1,-2522.93,2351.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 9535 >>Turn in Diabolical Plans
    .target Valusha
    .isOnQuest 9535
step
    .goto 1440/1,-2522.93,2351.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 9534 >>Turn in Destroy the Legion
    .target Valusha
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 6383 >>Turn in The Ashenvale Hunt
    .target Senani Thunderheart
    .isOnQuest 6383
step
    .goto 1440/1,-2337.24,1937.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda Ragescar|r
    .turnin 6504 >>Turn in The Lost Pages
    .target Gurda Ragescar
    .isQuestComplete 6504
step
    +|cRXP_WARN_The rest of Ashenvale is planned from level 32.|r Load its guide for level 32 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 19 - 33 Ashenvale
#subweight -19
#name 32-33 Ashenvale

step
    .goto 1440/1,-2417.40,2073.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locke Okarr|r
    .accept 6571 >>Accept Warsong Supplies
    .target Locke Okarr
step
    .goto 1440/1,-2417.40,2073.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locke Okarr|r
    .turnin 6571 >>Turn in Warsong Supplies
    .target Locke Okarr
    .isQuestComplete 6571
step
    .goto 1440/1,-2513.13,2309.78
    >>Kill |cRXP_ENEMY_Pixel|r and loot |cRXP_LOOT_Warsong Saw Blades|r
    .complete 6571,1 --Warsong Saw Blades (1)
    .mob Pixel
step
    .goto 1440/1,-2522.93,2351.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .accept 9536 >>Accept Never Again!
    .target Valusha
    .isQuestTurnedIn 9535 --any of: Diabolical Plans
    .xp <27,1
step
    .goto 1440/1,-2155.02,2476.60
    >>Pick up |cRXP_PICK_Warsong Oil|r from the ground
    .complete 6571,3 --Warsong Oil (1)
step
    #loop
    .goto 1440/1,-1512.03,2282.49,0
    .goto 1440/1,-1512.03,2282.49,40,0
    .goto 1440/1,-1431.88,2281.72,40,0
    >>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Pathfinders|r, |cRXP_ENEMY_Foulweald Den Watchers|r and |cRXP_ENEMY_Foulweald Shamans|r. Loot them for |cRXP_LOOT_Logging Rope|r
    .complete 6571,4 --Logging Rope (1)
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
    .mob Foulweald Den Watcher
    .mob Foulweald Shaman
step
    #loop
    .goto 1440/1,-2844.13,1505.67,0
    .goto 1440/1,-2844.13,1505.67,40,0
    .goto 1440/1,-2852.78,1418.41,40,0
    >>Kill |cRXP_ENEMY_Diathorus the Seekers|r
    .complete 9536,2 --Diathorus the Seeker slain (8)
    .mob Diathorus the Seeker
    .isOnQuest 9536
step
    .goto 1440/1,-3477.89,1723.61
    >>Kill |cRXP_ENEMY_Gorgannon|r
    .complete 9536,1 --Gorgannon slain (1)
    .mob Gorgannon
    .isOnQuest 9536
step
    .goto 1440/1,-2554.65,2310.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 6383 >>Turn in The Ashenvale Hunt
    .target Senani Thunderheart
    .isOnQuest 6383
step
    .goto 1440/1,-2522.93,2351.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 9536 >>Turn in Never Again!
    .target Valusha
    .isOnQuest 9536
step
    .goto 1440/1,-2337.24,1937.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda Ragescar|r
    .turnin 6504 >>Turn in The Lost Pages
    .target Gurda Ragescar
    .isQuestComplete 6504
step
    +|cRXP_WARN_End of the Ashenvale route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stranglethorn Vale and back here|r: Warsong Supplies
]])
