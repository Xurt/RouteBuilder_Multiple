-- 11-18 Darkshore: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 11, 14, 17).
-- Split into 3 guides, listed under "11 - 18 Darkshore" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Darkshore.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 11 - 18 Darkshore
#subweight -11
#name 11-12 Darkshore
--RouteBuilder:next
#next Zone Routes (Horde)\10-14 Azshara: around Labor Captain Grabbit

step
    .goto 62,46.81,33.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arya Autumnlight|r
    .accept 13561 >>Accept Solace for the Highborne
    .target Arya Autumnlight
step
    #loop
    .goto 62,46.87,35.97,0
    .goto 62,46.87,35.97,40,0
    .goto 62,48.78,35.23,40,0
    >>Kill |cRXP_ENEMY_Writhing Highbornes|r
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r
    .complete 13561,2 --Writhing Highborne slain (6)
    .complete 13561,1 --Cursed Highborne slain (6)
    .mob Writhing Highborne
    .mob Cursed Highborne
step
    .goto 62,46.81,33.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arya Autumnlight|r
    .turnin 13561 >>Turn in Solace for the Highborne
    .target Arya Autumnlight
step
    .goto 62,51.80,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r
    .accept 13520 >>Accept The Boon of the Seas
    .target Serendia Oakwhisper
    .isQuestTurnedIn 13518 --The Last Wave of Survivors
    .isQuestTurnedIn 13522 --Threat from the Water
    .xp <8,1
step
    #loop
    .goto 62,52.33,16.40,0
    .goto 62,52.33,16.40,40,0
    .goto 62,50.34,17.64,40,0
    >>Loot the |cRXP_PICK_Encrusted Clams|r for |cRXP_LOOT_Encrusted Clam Muscle|r
    .complete 13520,1 --Encrusted Clam Muscle (16)
    .isOnQuest 13520
step
    .goto 62,51.80,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r
    .turnin 13520 >>Turn in The Boon of the Seas
    .target Serendia Oakwhisper
    .isOnQuest 13520
step
    .goto 62,51.01,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 13560 >>Accept An Ocean Not So Deep
    .target Gorbold Steelhand
    .isQuestTurnedIn 13566 --Ritual Materials
    .isQuestTurnedIn 13569 --The Ritual Bond
    .xp <8,1
step
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .accept 13562 >>Accept The Final Flame of Bashal'Aran
    .target Ranger Glynda Nal'Shea
    .isQuestTurnedIn 13529 --The Corruption's Source
    .isQuestTurnedIn 13554 --A Cure In The Dark
    .xp <8,1
step
    .goto 62,50.13,19.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 13570 >>Accept Remembrance of Auberdine
    .target Cerellean Whiteclaw
    .isQuestTurnedIn 13591 --any of: Disturbing Connections
    .xp <10,1
step
    .goto 62,50.13,19.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 13563 >>Accept A Love Eternal
    .target Cerellean Whiteclaw
    .isQuestTurnedIn 13529 --The Corruption's Source
    .isQuestTurnedIn 13554 --A Cure In The Dark
    .xp <8,1
step
    .goto 62,50.13,19.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 13570 >>Turn in Remembrance of Auberdine
    .target Cerellean Whiteclaw
    .isOnQuest 13570
step
    .goto 62,45.91,34.21
    >>Click the |cRXP_PICK_The Final Flame of Bashal'Aran|r
    .complete 13562,1 --The Final Flame of Bashal'Aran
    .isOnQuest 13562
step
    .goto 62,42.97,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .accept 13599 >>Accept Grimclaw's Return
    .target Keeper Karithus
    .isQuestTurnedIn 13569 --any of: The Ritual Bond
    .xp <10,1
step
    .goto 62,48.47,36.63
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r and loot |cRXP_LOOT_Anaya's Pendant|r
    .complete 13563,2 --Anaya's Pendant (1)
    .mob Anaya Dawnrunner
    .isOnQuest 13563
step
    .goto 62,48.47,36.63
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r
    .complete 13563,1 --Anaya Dawnrunner slain (1)
    .mob Anaya Dawnrunner
    .isOnQuest 13563
step
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .accept 13508 >>Accept Swift Response
    .target Lieutenant Morra Starbreeze
    .isQuestTurnedIn 13506 --any of: Reason to Worry
    .xp <10,1
step
    .goto 62,63.75,5.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 13508 >>Turn in Swift Response
    .target Alanndarian Nightsong
    .isOnQuest 13508
step
    #loop
    .goto 62,55.03,9.96,0
    .goto 62,55.03,9.96,40,0
    .goto 62,53.95,8.54,40,0
    >>Kill |cRXP_ENEMY_Greymist Tidehunters|r and |cRXP_ENEMY_Greymist Warriors|r
    .complete 13560,1 --Greymist Tidehunter (8)
    .mob Greymist Tidehunter
    .mob Greymist Warrior
    .isOnQuest 13560
step
    .goto 62,51.80,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r
    .turnin 13599 >>Turn in Grimclaw's Return
    .target Serendia Oakwhisper
    .isOnQuest 13599
step
    .goto 62,51.01,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 13560 >>Turn in An Ocean Not So Deep
    .target Gorbold Steelhand
    .isOnQuest 13560
step
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .turnin 13562 >>Turn in The Final Flame of Bashal'Aran
    .target Ranger Glynda Nal'Shea
    .isOnQuest 13562
step
    .goto 62,50.13,19.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 13563 >>Turn in A Love Eternal
    .target Cerellean Whiteclaw
    .isOnQuest 13563
step
    +|cRXP_WARN_Suggested next zones at level 11|r: |cRXP_FRIENDLY_Azshara|r (about 0.6 levels of quests, starting around Labor Captain Grabbit). Completing this step loads the guide for Azshara --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Darkshore is planned from level 14.|r Load its guide for level 14 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 11 - 18 Darkshore
#subweight -11
#name 14-15 Darkshore
--RouteBuilder:next
#next Zone Routes (Horde)\14-16 Azshara: around Assistant Greely;Zone Routes (Horde)\10-15 The Barrens: around Togrik

step
    .goto 62,47.71,88.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Aynasha|r
    .accept 5713 >>Accept One Shot.  One Kill.
    .target Sentinel Aynasha
step
    .goto 62,47.65,88.97
    >>Protect Aynasha
    .complete 5713,1 --Protect Aynasha
step
    .goto 62,38.58,42.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13605 >>Accept The Last Refugee
    .unitscan Archaeologist Hollee
step
    .goto 62,41.18,43.36
    >>Archaeologist Hollee escorted to safety.
    .complete 13605,1 --Archaeologist Hollee escorted to safety.
step
    .goto 62,42.59,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elisa Steelhand|r
    .turnin 13605 >>Turn in The Last Refugee while you are here
    .isQuestComplete 13605
    .target Elisa Steelhand
step
    .goto 62,42.68,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corvine Moonrise|r
    .accept 13573 >>Accept Malfurion's Return
    .target Corvine Moonrise
step
    .goto 62,42.59,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elisa Steelhand|r
    .turnin 13605 >>Turn in The Last Refugee
    .target Elisa Steelhand
step
    .goto 62,43.66,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 13573 >>Turn in Malfurion's Return
    .target Malfurion Stormrage
step
    .goto 62,50.31,20.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Lendra|r
    .accept 13519 >>Accept The Twilight's Hammer
    .accept 13596 >>Accept Twilight Plans
    .target Sentinel Lendra
    .isQuestTurnedIn 13591 --any of: Disturbing Connections
    .xp <13,1
step
    .goto 62,44.58,30.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Tharill|r
    .accept 13523 >>Accept Power Over the Tides
    .target Moon Priestess Tharill
step
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Tranquil Tidal Spirits|r and |cRXP_ENEMY_Enraged Tidal Spirits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13523,1 --Tranquil Tidal Spirit (6)
    .mob Tranquil Tidal Spirit
    .mob Enraged Tidal Spirit
step
    .goto 62,43.65,31.37
    >>Kill |cRXP_ENEMY_High Cultist Azerynn|r
    .complete 13519,1 --High Cultist Azerynn slain (1)
    .mob High Cultist Azerynn
    .isOnQuest 13519
step
    #loop
    .goto 62,43.10,32.49,0
    .goto 62,43.10,32.49,40,0
    .goto 62,44.64,30.83,40,0
    >>Kill |cRXP_ENEMY_Twilight Fanatics|r
    .complete 13519,2 --Twilight Fanatic slain (10)
    .mob Twilight Fanatic
    .isOnQuest 13519
step
    #label Along11
    #loop
    .goto 62,43.13,32.38,0
    .goto 62,43.13,32.38,40,0
    .goto 62,45.27,30.45,40,0
    >>Pick up |cRXP_PICK_Twilight Plans|r from the ground
    .complete 13596,1 --Twilight Plans (6)
    .isOnQuest 13596
step
    #loop
    .goto 62,43.12,29.63,0
    .goto 62,43.12,29.63,40,0
    .goto 62,44.31,28.96,40,0
    >>Kill |cRXP_ENEMY_Tranquil Tidal Spirits|r and |cRXP_ENEMY_Enraged Tidal Spirits|r
    .complete 13523,1 --Tranquil Tidal Spirit (6)
    .mob Tranquil Tidal Spirit
    .mob Enraged Tidal Spirit
step
    .goto 62,44.58,30.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Tharill|r
    .turnin 13523 >>Turn in Power Over the Tides
    .target Moon Priestess Tharill
step
    .goto 62,50.31,20.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Lendra|r
    .turnin 13596 >>Turn in Twilight Plans
    .target Sentinel Lendra
    .isOnQuest 13596
step
    .goto 62,50.31,20.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Lendra|r
    .turnin 13519 >>Turn in The Twilight's Hammer
    .target Sentinel Lendra
    .isOnQuest 13519
step
    .goto 62,50.31,20.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Lendra|r
    .accept 13601 >>Accept In Aid of the Refugees
    .target Sentinel Lendra
    .isQuestTurnedIn 13596 --any of: Twilight Plans
    .xp <13,1
step
    .goto 62,63.75,5.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 13511 >>Accept One Bitter Wish
    .target Alanndarian Nightsong
    .isQuestTurnedIn 13508 --any of: Swift Response
    .xp <10,1
step
    .goto 62,64.11,5.30
    >>Kill |cRXP_ENEMY_Rit'ko|r
    .complete 13511,1 --Rit'ko slain (1)
    .mob Rit'ko
    .isOnQuest 13511
step
    .goto 62,69.09,19.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 13514 >>Accept The Ancients' Ire
    .target Kerlonian Evershade
    .isQuestTurnedIn 13512 --Strategic Strikes
    .isQuestTurnedIn 13513 --On the Brink
    .xp <10,1
step
    #loop
    .goto 62,70.60,20.87,0
    .goto 62,70.60,20.87,40,0
    .goto 62,70.76,16.73,40,0
    >>Kill |cRXP_ENEMY_Shatterspear Priestess|r, |cRXP_ENEMY_Shatterspear Raiders|r and |cRXP_ENEMY_Shatterspear Champions|r
    .complete 13514,2 --Shatterspear Priestess (8)
    .mob Shatterspear Priestess
    .mob Shatterspear Raider
    .mob Shatterspear Champion
    .isOnQuest 13514
step
    .goto 62,70.85,16.56
    >>Kill |cRXP_ENEMY_Shatterspear Hut Fire Bunnies|r
    .complete 13514,1 --Shatterspear Hut Fire Bunny slain (8)
    .mob Shatterspear Hut Fire Bunny
    .isOnQuest 13514
step
    .goto 62,69.09,19.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .turnin 13514 >>Turn in The Ancients' Ire
    .target Kerlonian Evershade
    .isOnQuest 13514
step
    .goto 62,59.14,19.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathas Wildwood|r
    .accept 13844 >>Accept The Looting of Althalaxx
    .target Mathas Wildwood
    .isQuestTurnedIn 13509 --any of: War Supplies
    .xp <10,1
step
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .turnin 13511 >>Turn in One Bitter Wish
    .target Lieutenant Morra Starbreeze
    .isOnQuest 13511
step
    .goto 62,58.28,23.97
    >>Open the |cRXP_PICK_Charred Book|r. Loot it for |cRXP_LOOT_Narassin's Tome|r
    .complete 13844,2 --Narassin's Tome (1)
    .isOnQuest 13844
step
    .goto 62,58.23,24.02
    >>Kill |cRXP_ENEMY_Teegan Holloway|r
    .complete 13844,1 --Teegan Holloway slain (1)
    .mob Teegan Holloway
    .isOnQuest 13844
step
    .goto 62,59.14,19.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathas Wildwood|r
    .turnin 13844 >>Turn in The Looting of Althalaxx
    .target Mathas Wildwood
    .isOnQuest 13844
step
    .goto 62,42.51,45.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alinya|r
    .turnin 13601 >>Turn in In Aid of the Refugees
    .target Priestess Alinya
    .isOnQuest 13601
step
    +|cRXP_WARN_That is all of Darkshore for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: One Shot.  One Kill.
step
    +|cRXP_WARN_Suggested next zones at level 14|r: |cRXP_FRIENDLY_Azshara|r (about 0.7 levels of quests, starting around Assistant Greely), |cRXP_FRIENDLY_The Barrens|r (about 0.6 levels of quests, starting around Togrik). Completing this step loads the guide for Azshara --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Darkshore is planned from level 17.|r Load its guide for level 17 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 11 - 18 Darkshore
#subweight -11
#name 17-18 Darkshore

step
    .goto 62,37.69,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .accept 13911 >>Accept The Absent-Minded Prospector
    .target Prospector Remtravel
step
    .goto 62,37.69,82.94
    >>Prospector Remtravel Escorted
    .complete 13911,1 --Prospector Remtravel Escorted
step
    .goto 62,37.75,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13911 >>Turn in The Absent-Minded Prospector
    .accept 13912 >>Accept Swamped Secrets
    .target Jr. Archaeologist Ferd
step
    .goto 62,37.02,83.44
    >>Pick up |cRXP_PICK_Mud-Crusted Ancient Disc|r from the ground
    .complete 13912,1 --Mud-Crusted Ancient Disc (1)
step
    .goto 62,37.75,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13912 >>Turn in Swamped Secrets
    .accept 13918 >>Accept The Titans' Terminal
    .turnin 13918 >>Turn in The Titans' Terminal
    .target Jr. Archaeologist Ferd
step
    .goto 62,45.35,75.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felros|r
    .accept 13898 >>Accept The Tides Turn Against Us
    .target Felros
    .isQuestTurnedIn 13953 --any of: Naga In Our Midst
    .xp <17,1
step
    .goto 62,45.30,75.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .accept 26408 >>Accept Ashes in Ashenvale
    .target Balren of the Claw
    .isQuestTurnedIn 13897 --any of: The Battle for Darkshore
    .xp <17,1
step
    #loop
    .goto 62,34.48,82.96,0
    .goto 62,34.48,82.96,40,0
    .goto 62,31.95,83.66,40,0
    >>Kill |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --Darkscale Myrmidon slain (8)
    .mob Darkscale Myrmidon
    .isOnQuest 13898
step
    .goto 62,43.66,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .accept 13902 >>Accept Mounting the Offensive
    .target Malfurion Stormrage
    .isQuestTurnedIn 13588 --any of: The Eye of All Storms
    .xp <17,1
step
    .goto 62,45.35,75.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felros|r
    .turnin 13898 >>Turn in The Tides Turn Against Us
    .target Felros
    .isOnQuest 13898
step
    .goto 62,45.30,75.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13902 >>Turn in Mounting the Offensive
    .target Balren of the Claw
    .isOnQuest 13902
step
    +|cRXP_WARN_End of the Darkshore route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Ashes in Ashenvale
]])
