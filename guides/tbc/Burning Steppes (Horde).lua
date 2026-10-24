-- 51-60 Burning Steppes: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 51, 59, 62).
-- Split into 3 guides, listed under "51 - 63 Burning Steppes" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Burning Steppes.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 51 - 63 Burning Steppes
#subweight -51
#name 51-52 Burning Steppes
--RouteBuilder:next
#next Zone Routes (Horde)\50-52 Un'Goro Crater: around Torwa Pathfinder

step
    .goto 1428/0,-2177.65,-7499.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4810 >>Turn in Return to Tinkee
    .target Tinkee Steamboil
    .isOnQuest 4810
step
    .goto 1428/0,-2190.84,-7504.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
    .fp Flame Crest >>Get the Burning Steppes Flight Path
    .target Vahgruk
step
    .goto 1428/0,-2177.65,-7499.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 4726 >>Accept Broodling Essence
    .target Tinkee Steamboil
step
    .goto 1428/0,-2175.02,-7497.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .accept 4296 >>Accept Tablet of the Seven
    .target Maxwort Uberglint
step
    .goto 1428/0,-1851.93,-7826.92
    >>Open the |cRXP_PICK_Tablet of the Seven|r. Loot it for |cRXP_LOOT_Tablet Transcript|r
    .complete 4296,1 --Tablet Transcript (1)
step
    .goto 1428/0,-2608.54,-7917.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'ni Proudtusk|r
    .turnin 3821 >>Turn in Dreadmaul Rock
    .target Sha'ni Proudtusk
    .isOnQuest 3821
step
    #loop
    .goto 1428/0,-2752.65,-7653.18,0
    .goto 1428/0,-2752.65,-7653.18,40,0
    .goto 1428/0,-2812.70,-7627.61,40,0
    .goto 1428/0,-2918.44,-7913.98,40,0
    .goto 1428/0,-2919.61,-7956.34,40,0
    >>Pick up |cRXP_PICK_Broodling Essence|r from the ground
    .complete 4726,1 --Broodling Essence (8)
step
    .goto 1428/0,-2177.65,-7499.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .turnin 4726 >>Turn in Broodling Essence
    .accept 4808 >>Accept Felnok Steelspring
    .target Tinkee Steamboil
step
    .goto 1428/0,-2175.02,-7497.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxwort Uberglint|r
    .turnin 4296 >>Turn in Tablet of the Seven
    .target Maxwort Uberglint
step
    .goto 1428/0,-2542.04,-7777.53
    .xp 52 >> Grind mobs in the area to level 52
step << Warlock
    .goto 1428/0,-638.38,-7648.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'zul Bloodbringer|r
    .turnin 7562 >>Turn in Mor'zul Bloodbringer
    .target Mor'zul Bloodbringer
    .isOnQuest 7562
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 7625 >>Turn in Xorothian Stardust
    .target Gorzeeki Wildeyes
    .isQuestComplete 7625
step
    +|cRXP_WARN_That is all of Burning Steppes for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Winterspring|r: Felnok Steelspring
step
    +|cRXP_WARN_Suggested next zones at level 51|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Torwa Pathfinder). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    +|cRXP_WARN_The rest of Burning Steppes is planned from level 59.|r Load its guide for level 59 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Orc Warlock/Undead Warlock/BloodElf Warlock
#version 1
#group Zone Routes (Horde)
#subgroup 51 - 63 Burning Steppes
#subweight -51
#name 59-60 Burning Steppes
--RouteBuilder:next
#next Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel

step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .accept 7623 >>Accept Lord Banehollow
    .target Gorzeeki Wildeyes
step
    .goto 1428/0,-2177.65,-7499.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkee Steamboil|r
    .accept 5522 >>Accept Leonid Barthalomew
    .target Tinkee Steamboil
    .isQuestTurnedIn 4735 --any of: Egg Collection
    .xp <58,1
step
    .goto 1428/0,-2608.54,-7917.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'ni Proudtusk|r
    .accept 3822 >>Accept Krom'Grul
    .target Sha'ni Proudtusk
    .isQuestTurnedIn 3821 --any of: Dreadmaul Rock
    .xp <48,1
step
    .goto 1428/0,-2600.04,-7957.12
    >>Kill |cRXP_ENEMY_Krom'Grul|r and loot |cRXP_LOOT_Sha'ni's Nose-Ring|r
    .complete 3822,1 --Sha'ni's Nose-Ring (1)
    .mob Krom'Grul
    .isOnQuest 3822
step
    .goto 1428/0,-3052.01,-7647.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .accept 4022 >>Accept A Taste of Flame
    .target Cyrus Therepentous
    .isQuestTurnedIn 3481 --any of: Trinkets...
    .xp <52,1
step
    .goto 1428/0,-3052.01,-7647.33
    >>Kill |cRXP_ENEMY_Cyrus Therepentous|r
    .complete 4022,2 --Cyrus Therepentous (1)
    .mob Cyrus Therepentous
    .isOnQuest 4022
step
    .goto 1428/0,-3031.80,-7652.01
    >>Kill |cRXP_ENEMY_Frenzied Black Drake|r and loot |cRXP_LOOT_Black Dragonflight Molt|r
    .complete 4022,1 --Black Dragonflight Molt (1)
    .mob Frenzied Black Drake
    .isOnQuest 4022
step
    .goto 1428/0,-3052.01,-7647.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Therepentous|r
    .turnin 4022 >>Turn in A Taste of Flame
    .target Cyrus Therepentous
    .isOnQuest 4022
step
    +|cRXP_WARN_That is all of Burning Steppes for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Badlands|r: Krom'Grul
    >>|cRXP_FRIENDLY_Eastern Plaguelands|r: Leonid Barthalomew
    >>|cRXP_FRIENDLY_Felwood|r: Lord Banehollow << Orc Warlock/Undead Warlock/BloodElf Warlock
step
    +|cRXP_WARN_Suggested next zones at level 59|r: |cRXP_FRIENDLY_Hellfire Peninsula|r (about 1.5 levels of quests, starting around Nazgrel). Completing this step loads the guide for Hellfire Peninsula --RouteBuilder:next
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    +|cRXP_WARN_The rest of Burning Steppes is planned from level 62.|r Load its guide for level 62 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Orc Warlock/Undead Warlock/BloodElf Warlock
#version 1
#group Zone Routes (Horde)
#subgroup 51 - 63 Burning Steppes
#subweight -51
#name 62-63 Burning Steppes
--RouteBuilder:next
#next Zone Routes (Horde)\62-64 Terokkar Forest: around Tooki;Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel

step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-638.38,-7648.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'zul Bloodbringer|r
    .accept 7563 >>Accept Rage of Blood
    .target Mor'zul Bloodbringer
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-638.38,-7648.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'zul Bloodbringer|r
    .turnin 7563 >>Turn in Rage of Blood
    .target Mor'zul Bloodbringer
    .isQuestComplete 7563
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-638.38,-7648.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'zul Bloodbringer|r
    .accept 7564 >>Accept Wildeyes
    .target Mor'zul Bloodbringer
    .isQuestTurnedIn 7563 --any of: Rage of Blood
    .xp <60,1
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .accept 7629 >>Accept Imp Delivery
    .target Gorzeeki Wildeyes
    .isQuestTurnedIn 7625 --any of: Xorothian Stardust
    .xp <60,1
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>Bring the Imp in a Jar to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes.
    .complete 7629,1 --J'eevee
    .isOnQuest 7629
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 7629 >>Turn in Imp Delivery
    .target Gorzeeki Wildeyes
    .isOnQuest 7629
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 7564 >>Turn in Wildeyes
    .target Gorzeeki Wildeyes
    .isOnQuest 7564
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-638.38,-7648.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'zul Bloodbringer|r
    .accept 7631 >>Accept Dreadsteed of Xoroth
    .target Mor'zul Bloodbringer
    .isQuestTurnedIn 7629 --Imp Delivery
    .isQuestTurnedIn 7630 --Arcanite
    .xp <60,1
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-638.38,-7648.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'zul Bloodbringer|r
    .accept 7628 >>Accept Doomsday Candle
    .accept 7626 >>Accept Bell of Dethmoora
    .accept 7627 >>Accept Wheel of the Black March
    .target Mor'zul Bloodbringer
    .isQuestTurnedIn 7564 --any of: Wildeyes
    .xp <60,1
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-638.38,-7648.89
    >>Read Mor'zul's Instructions. Summon a Xorothian Dreadsteed, defeat it, then bind its spirit to you.
    .complete 7631,1 --Xorothian Dreadsteed (1)
    .isOnQuest 7631
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    #loop
    .goto 1428/0,-894.68,-7937.60,0
    .goto 1428/0,-894.68,-7937.60,40,0
    .goto 1428/0,-952.38,-7959.86,40,0
    >>Kill |cRXP_ENEMY_Black Dragonspawns|r, |cRXP_ENEMY_Black Wyrmkins|r, |cRXP_ENEMY_Flamescale Dragonspawns|r and |cRXP_ENEMY_Flamescale Wyrmkins|r. Loot them for |cRXP_LOOT_Black Dragonscale|r
    .complete 7628,1 --Black Dragonscale (3)
    .mob Black Dragonspawn
    .mob Black Wyrmkin
    .mob Flamescale Dragonspawn
    .mob Flamescale Wyrmkin
    .isOnQuest 7628
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 7628 >>Turn in Doomsday Candle
    .target Gorzeeki Wildeyes
    .isOnQuest 7628
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .accept 7630 >>Accept Arcanite
    .target Gorzeeki Wildeyes
    .isQuestTurnedIn 7626 --Bell of Dethmoora
    .isQuestTurnedIn 7627 --Wheel of the Black March
    .isQuestTurnedIn 7628 --Doomsday Candle
    .xp <60,1
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 7626 >>Turn in Bell of Dethmoora
    .target Gorzeeki Wildeyes
    .isQuestComplete 7626
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 7627 >>Turn in Wheel of the Black March
    .target Gorzeeki Wildeyes
    .isQuestComplete 7627
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 7630 >>Turn in Arcanite
    .target Gorzeeki Wildeyes
    .isQuestComplete 7630
step << Orc Warlock/Undead Warlock/BloodElf Warlock
    #loop
    .goto 1428/0,-1512.44,-7761.33,0
    .goto 1428/0,-1512.44,-7761.33,40,0
    .goto 1428/0,-1636.05,-7800.96,40,0
    .goto 1428/0,-1675.01,-7886.07,40,0
    >>Loot the |cRXP_PICK_Dark Iron Deposits|r for |cRXP_LOOT_Dark Iron Ore|r
    .complete 7627,2 --Dark Iron Ore (25)
    .isOnQuest 7627
step
    +|cRXP_WARN_End of the Burning Steppes route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_another zone|r: Dreadsteed of Xoroth << Orc Warlock/Undead Warlock/BloodElf Warlock
    >>|cRXP_FRIENDLY_Winterspring and back here|r: Rage of Blood << Orc Warlock/Undead Warlock/BloodElf Warlock
step
    +|cRXP_WARN_Suggested next zones at level 62|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.9 levels of quests, starting around Tooki), |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.8 levels of quests, starting around Nazgrel). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
]])
