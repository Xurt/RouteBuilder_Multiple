-- 74-78 Zul'Drak: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 74, 77, 80).
-- Split into 3 guides, listed under "74 - 81 Zul'Drak" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Zul'Drak.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 74 - 81 Zul'Drak
#subweight -74
#name 74-75 Zul'Drak: around Crusader Lord Lantinga
--RouteBuilder:next
#next Zone Routes (Alliance)\71-74 Borean Tundra: around Elder Atkanok;Zone Routes (Alliance)\72-74 Dragonblight: around Aurastrasza;Zone Routes (Alliance)\70-73 Howling Fjord: around Lurielle

step
    .goto 121,32.03,74.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Riannah|r
    .turnin 12789 >>Turn in Into the Breach!
    .target Sergeant Riannah
    .isOnQuest 12789
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 121,32.03,74.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Riannah|r
    .turnin 12770 >>Turn in Reallocating Resources
    .target Sergeant Riannah
    .isOnQuest 12770
step
    .goto ZulDrak,32.18,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danica|r
    .fp Light's Breach >>Get the Light's Breach Flight Path
    .target Danica Saint
step
    .goto 121,32.02,75.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaman Moky|r
    .accept 12859 >>Accept This Just In: Fire Still Hot!
    .target Elder Shaman Moky
step
    .goto 121,32.15,75.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Lord Lantinga|r
    .accept 12902 >>Accept In Search Of Answers
    .target Crusader Lord Lantinga
step
    .goto 121,32.18,75.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rageclaw|r
    .accept 12861 >>Accept Trolls Is Gone Crazy!
    .target Chief Rageclaw
step
    .goto 121,32.27,75.68
    >>Click the |cRXP_PICK_Wanted!|r
    .accept 12857 >>Accept Wanted: Ragemane's Flipper
step
    #completewith Along7
    >>As you go: Kill |cRXP_ENEMY_Hut Fires|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12859,1 --Hut Fire slain (15)
    .mob Hut Fire
step
    #loop
    .goto 121,34.78,74.97,0
    .goto 121,34.78,74.97,40,0
    .goto 121,36.00,80.87,40,0
    .goto 121,33.19,80.82,40,0
    >>Kill |cRXP_ENEMY_Drakuru Blood Drinkers|r, |cRXP_ENEMY_Drakuru Berserkers|r and |cRXP_ENEMY_Drakuru Prophets|r. Loot them for |cRXP_LOOT_Drakuru "Lock Opener"|r
    .collect 41161,1,12861,1 --Drakuru "Lock Opener" (1)
    .mob Drakuru Blood Drinker
    .mob Drakuru Berserker
    .mob Drakuru Prophet
step
    #label Along7
    .goto 121,34.94,83.90
    >>Click the |cRXP_PICK_Orders From Drakuru|r
    .turnin 12902 >>Turn in In Search Of Answers
    .accept 12883 >>Accept Orders From Drakuru
step
    .goto 121,38.62,84.43
    >>Kill |cRXP_ENEMY_Ragemane|r and loot |cRXP_LOOT_Ragemane's Flipper|r
    .complete 12857,1 --Ragemane's Flipper (1)
    .mob Ragemane
step
    #loop
    .goto 121,34.54,83.85,0
    .goto 121,34.54,83.85,40,0
    .goto 121,34.40,81.69,40,0
    >>Kill |cRXP_ENEMY_Hut Fires|r
    .complete 12859,1 --Hut Fire slain (15)
    .mob Hut Fire
step
    #loop
    .goto 121,35.24,84.32,0
    .goto 121,35.24,84.32,40,0
    .goto 121,34.33,81.20,40,0
    >>Kill |cRXP_ENEMY_Captured Rageclaws|r
    .complete 12861,1 --Captured Rageclaw slain (8)
    .mob Captured Rageclaw
step
    .goto 121,32.15,75.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Lord Lantinga|r
    .turnin 12883 >>Turn in Orders From Drakuru
    .accept 12884 >>Accept The Ebon Watch
    .accept 12894 >>Accept Crusader Forward Camp
    .target Crusader Lord Lantinga
step
    .goto 121,32.18,75.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rageclaw|r
    .turnin 12861 >>Turn in Trolls Is Gone Crazy!
    .turnin 12857 >>Turn in Wanted: Ragemane's Flipper
    .target Chief Rageclaw
step
    .goto 121,32.02,75.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaman Moky|r
    .turnin 12859 >>Turn in This Just In: Fire Still Hot!
    .target Elder Shaman Moky
step
    .goto 121,25.28,63.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader MacKellar|r
    .turnin 12894 >>Turn in Crusader Forward Camp
    .target Crusader MacKellar
step
    .goto 121,25.23,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Reed|r
    .accept 12901 >>Accept Making Something Out Of Nothing
    .target Engineer Reed
step
    #completewith Along17
    >>As you go: Pick up |cRXP_PICK_Scourge Scrap Metal|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12901,1 --Scourge Scrap Metal (1)
step
    .goto 121,19.91,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gymer|r
    .accept 12912 >>Accept A Great Storm Approaches
    .target Gymer
step
    #label Along17
    .goto 121,17.64,57.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerk|r
    .accept 12904 >>Accept Light Won't Grant Me Vengeance
    .target Gerk
step
    #loop
    .goto 121,18.34,57.86,0
    .goto 121,18.34,57.86,40,0
    .goto 121,16.66,58.63,40,0
    .goto 121,18.74,61.86,40,0
    >>Pick up |cRXP_PICK_Scourge Scrap Metal|r from the ground
    >>Kill |cRXP_ENEMY_Vargul Deathwakers|r, |cRXP_ENEMY_Vargul Runelords|r, |cRXP_ENEMY_Vargul Slayers|r and |cRXP_ENEMY_SCOURGE PROXY (PHASED)s|r
    .complete 12901,1 --Scourge Scrap Metal (1)
    .complete 12904,1 --Vargul Deathwaker (8)
    .mob Vargul Deathwaker
    .mob Vargul Runelord
    .mob Vargul Slayer
    .mob SCOURGE PROXY (PHASED)
step
    .goto 121,17.64,57.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerk|r
    .turnin 12904 >>Turn in Light Won't Grant Me Vengeance
    .target Gerk
step
    .goto 121,25.23,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Reed|r
    .turnin 12912 >>Turn in A Great Storm Approaches
    .turnin 12901 >>Turn in Making Something Out Of Nothing
    .accept 12914 >>Accept Gymer's Salvation
    .target Engineer Reed
step
    .goto 121,39.42,66.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Falstaav|r
    .accept 12740 >>Accept Parachutes for the Argent Crusade
    .target Commander Falstaav
step
    .goto 121,40.27,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Kunz|r
    .accept 12792 >>Accept First Things First
    .target Commander Kunz
    .xp <74,1
step
    .goto 121,40.63,66.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Teronus III|r
    .accept 12796 >>Accept The Magical Kingdom of Dalaran
    .target Magister Teronus III
    .xp <74,1
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .accept 12565 >>Accept The Blessing of Zim'Abwa
    .target Hexxer Ubungo
    .xp <74,1
step
    #loop
    .goto 121,38.00,67.19,0
    .goto 121,38.00,67.19,40,0
    .goto 121,36.01,64.72,40,0
    >>Kill |cRXP_ENEMY_Argent Shieldmans|r and |cRXP_ENEMY_Argent Crusaders|r
    .complete 12740,1 --Argent Shieldman (8)
    .mob Argent Shieldman
    .mob Argent Crusader
step
    .goto 121,39.42,66.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Falstaav|r
    .turnin 12740 >>Turn in Parachutes for the Argent Crusade
    .target Commander Falstaav
step
    .goto 121,40.27,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Kunz|r
    .accept 12505 >>Accept New Orders for Sergeant Stackhammer
    .target Commander Kunz
step
    .goto 121,40.29,65.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fala Softhoof|r
    .target Fala Softhoof
    .home >>Set your Hearthstone to Fala Softhoof's inn
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .accept 12506 >>Accept Trouble at the Altar of Sseratus
    .target Hexxer Ubungo
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .accept 12565 >>Accept The Blessing of Zim'Abwa
    .target Hexxer Ubungo
    .xp <74,1
step
    .goto 121,40.27,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Kunz|r
    .accept 12792 >>Accept First Things First
    .target Commander Kunz
    .xp <74,1
step
    .goto 121,40.27,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Kunz|r
    .accept 12596 >>Accept Pa'Troll
    .target Commander Kunz
    .xp <74,1
step
    .goto 121,40.63,66.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Teronus III|r
    .accept 12796 >>Accept The Magical Kingdom of Dalaran
    .target Magister Teronus III
    .xp <74,1
step
    .goto 121,40.42,48.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Stackhammer|r
    .turnin 12505 >>Turn in New Orders for Sergeant Stackhammer
    .accept 12504 >>Accept Argent Crusade, We Are Leaving!
    .target Sergeant Stackhammer
step
    #completewith Along28
    >>As you go: Kill |cRXP_ENEMY_Argent Soldiers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12504,1 --Argent Soldier slain (8)
    .mob Argent Soldier
step
    #label Along28
    .goto 121,40.36,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Maga|r
    .accept 12508 >>Accept Mopping Up
    .target Corporal Maga
step
    #completewith Drop12507x1
    >>|cRXP_LOOT_Strange Mojo|r can drop from |cRXP_ENEMY_Drakkari Snake Handler|r, |cRXP_ENEMY_Priest of Sseratus|r, |cRXP_ENEMY_Champion of Sseratus|r. Use it to start the quest if you get one
    .collect 38321,1,12507 --Strange Mojo (1)
    .accept 12507 >>Accept Strange Mojo
    .use 38321
step
    #completewith Drop12507x1
    >>|cRXP_LOOT_Unliving Choker|r can drop from |cRXP_ENEMY_Withered Troll|r. Use it to start the quest if you get one
    .collect 38660,1,12631 --Unliving Choker (1)
    .accept 12631 >>Accept An Invitation, of Sorts...
    .use 38660
step
    #label Drop12507x1
    #loop
    .goto 121,38.24,50.42,0
    .goto 121,38.24,50.42,40,0
    .goto 121,38.17,41.67,40,0
    .goto 121,42.61,36.81,40,0
    .goto 121,42.08,42.74,40,0
    .goto 121,45.69,46.76,40,0
    >>Kill |cRXP_ENEMY_Crazed Water Spirits|r, |cRXP_ENEMY_Carrion Eaters|r, |cRXP_ENEMY_Rotting Abominations|r and |cRXP_ENEMY_Rampaging Geists|r. Loot them for |cRXP_LOOT_Drakkari Offerings|r
    >>Kill |cRXP_ENEMY_Argent Soldiers|r
    >>Kill |cRXP_ENEMY_Drakkari Snake Handlers|r, |cRXP_ENEMY_Priest of Sseratus|r and |cRXP_ENEMY_Champion of Sseratus|r
    .complete 12565,1 --Drakkari Offerings (10)
    .complete 12504,1 --Argent Soldier slain (8)
    .complete 12508,1 --Drakkari Snake Handler (8)
    .mob Crazed Water Spirit
    .mob Carrion Eater
    .mob Rotting Abomination
    .mob Rampaging Geist
    .mob Argent Soldier
    .mob Drakkari Snake Handler
    .mob Priest of Sseratus
    .mob Champion of Sseratus
step
    .goto 121,40.32,39.46
    >>Main building at the Altar of Sseratus investigated.
    .complete 12506,1 --Main building at the Altar of Sseratus investigated.
step
    .goto 121,40.42,48.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Stackhammer|r
    .turnin 12504 >>Turn in Argent Crusade, We Are Leaving!
    .target Sergeant Stackhammer
step
    .goto 121,40.36,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Maga|r
    .turnin 12508 >>Turn in Mopping Up
    .target Corporal Maga
step
    #completewith Drop12507x2
    >>|cRXP_LOOT_Strange Mojo|r can drop from |cRXP_ENEMY_Drakkari Snake Handler|r, |cRXP_ENEMY_Priest of Sseratus|r, |cRXP_ENEMY_Champion of Sseratus|r. Use it to start the quest if you get one
    .collect 38321,1,12507 --Strange Mojo (1)
    .accept 12507 >>Accept Strange Mojo
    .use 38321
step
    #completewith Drop12507x2
    >>|cRXP_LOOT_Unliving Choker|r can drop from |cRXP_ENEMY_Withered Troll|r. Use it to start the quest if you get one
    .collect 38660,1,12631 --Unliving Choker (1)
    .accept 12631 >>Accept An Invitation, of Sorts...
    .use 38660
step
    #label Drop12507x2
    #loop
    .goto 121,38.24,50.42,0
    .goto 121,38.24,50.42,40,0
    .goto 121,38.17,41.67,40,0
    .goto 121,44.44,37.61,40,0
    .goto 121,42.62,43.51,40,0
    .goto 121,45.75,48.42,40,0
    >>Kill |cRXP_ENEMY_Crazed Water Spirits|r, |cRXP_ENEMY_Carrion Eaters|r, |cRXP_ENEMY_Rotting Abominations|r and |cRXP_ENEMY_Rampaging Geists|r. Loot them for |cRXP_LOOT_Drakkari Offerings|r
    .complete 12615,1 --Drakkari Offerings (10)
    .mob Crazed Water Spirit
    .mob Carrion Eater
    .mob Rotting Abomination
    .mob Rampaging Geist
    .isOnQuest 12615
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .turnin 12506 >>Turn in Trouble at the Altar of Sseratus
    .accept 12565 >>Accept The Blessing of Zim'Abwa
    .target Hexxer Ubungo
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .turnin 12507 >>Turn in Strange Mojo
    .target Hexxer Ubungo
    .isOnQuest 12507
step
    .goto 121,36.69,72.81
    >>Click the |cRXP_PICK_Zim'Abwa|r
    .turnin 12565 >>Turn in The Blessing of Zim'Abwa
step
    .goto 121,40.63,66.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Teronus III|r
    .accept 12796 >>Accept The Magical Kingdom of Dalaran
    .target Magister Teronus III
step
    #loop
    .goto 121,16.30,74.84,0
    .goto 121,16.30,74.84,40,0
    .goto 121,15.65,71.69,40,0
    .goto 121,12.24,73.51,40,0
    >>Kill |cRXP_ENEMY_Icetouched Earthragers|r. Loot them for |cRXP_LOOT_Diatomaceous Earth|r
    .complete 12914,2 --Diatomaceous Earth (6)
    .mob Icetouched Earthrager
step
    .goto ZulDrak,14.00,73.58,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baneflight|r
    .fp Ebon Watch >>Get the Ebon Watch Flight Path
    .target Baneflight
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12884 >>Turn in The Ebon Watch
    .accept 12630 >>Accept Kickin' Nass and Takin' Manes
    .target Stefan Vadu
step
    #loop
    .goto 121,17.88,75.40,0
    .goto 121,17.88,75.40,40,0
    .goto 121,18.46,74.82,40,0
    .goto 121,19.03,73.44,40,0
    .goto 121,18.44,71.57,40,0
    .goto 121,18.38,70.04,40,0
    .goto 121,19.61,69.20,40,0
    .goto 121,21.76,68.57,40,0
    >>Interact with |cRXP_FRIENDLY_Withered Troll|r
    .complete 12630,1 --Withered Troll
    .target Withered Troll
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12630 >>Turn in Kickin' Nass and Takin' Manes
    .target Stefan Vadu
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12631 >>Turn in An Invitation, of Sorts...
    .target Stefan Vadu
    .isOnQuest 12631
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .accept 12637 >>Accept Near Miss
    .target Stefan Vadu
    .isQuestTurnedIn 12631 --any of: An Invitation, of Sorts...
    .xp <74,1
step
    .goto 121,14.28,74.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodrose Datura|r
    .accept 12795 >>Accept Taking a Stand
    .target Bloodrose Datura
step
    .goto 121,14.28,74.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodrose Datura|r
    .complete 12637,1 --Bloodrose Datura
    .target Bloodrose Datura
    .isOnQuest 12637
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12637 >>Turn in Near Miss
    .target Stefan Vadu
    .isOnQuest 12637
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .accept 12629 >>Accept You Can Run, But You Can't Hide
    .target Stefan Vadu
    .isQuestTurnedIn 12637 --any of: Near Miss
    .xp <74,1
step
    #loop
    .goto 121,23.76,77.08,0
    .goto 121,23.76,77.08,40,0
    .goto 121,24.09,79.76,40,0
    >>Kill |cRXP_ENEMY_Putrid Abominations|r. Loot them for |cRXP_LOOT_Putrid Abomination Guts|r
    .complete 12629,1 --Putrid Abomination Guts (5)
    .mob Putrid Abomination
    .isOnQuest 12629
step
    #loop
    .goto 121,22.78,73.65,0
    .goto 121,22.78,73.65,40,0
    .goto 121,19.73,76.82,40,0
    .goto 121,19.53,80.08,40,0
    >>Kill |cRXP_ENEMY_Gooey Ghoul Drools|r. Loot them for |cRXP_LOOT_Gooey Ghoul Drool|r
    .complete 12629,2 --Gooey Ghoul Drool (5)
    .mob Gooey Ghoul Drool
    .isOnQuest 12629
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12629 >>Turn in You Can Run, But You Can't Hide
    .target Stefan Vadu
    .isOnQuest 12629
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .accept 12648 >>Accept Dressing Down
    .target Stefan Vadu
    .isQuestTurnedIn 12629 --any of: You Can Run, But You Can't Hide
    .xp <74,1
step << Human/Dwarf/NightElf/Gnome/Draenei
    .goto 121,19.86,75.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gristlegut|r
    .accept 12652 >>Accept Feedin' Da Goolz
    .target Gristlegut
    .isQuestTurnedIn 12629,12643 --any of: You Can Run, But You Can't Hide, Silver Lining
    .xp <74,1
step
    .goto 121,19.86,75.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Bitter Plasma|r from |cRXP_FRIENDLY_Gristlegut|r
    .complete 12648,1 --Bitter Plasma (1)
    .target Gristlegut
    .isOnQuest 12648
step << Human/Dwarf/NightElf/Gnome/Draenei
    #loop
    .goto 121,19.37,78.10,0
    .goto 121,19.37,78.10,40,0
    .goto 121,23.18,75.73,40,0
    .goto 121,21.53,72.42,40,0
    >>Kill |cRXP_ENEMY_Decaying Ghouls|r
    .complete 12652,1 --Decaying Ghoul slain (10)
    .mob Decaying Ghoul
    .isOnQuest 12652
step << Human/Dwarf/NightElf/Gnome/Draenei
    .goto 121,19.86,75.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gristlegut|r
    .turnin 12652 >>Turn in Feedin' Da Goolz
    .target Gristlegut
    .isOnQuest 12652
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12648 >>Turn in Dressing Down
    .target Stefan Vadu
    .isOnQuest 12648
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .accept 12661 >>Accept Infiltrating Voltarus
    .target Stefan Vadu
    .isQuestTurnedIn 12648,12649 --any of: Dressing Down, Suit Up!
    .xp <74,1
step
    #loop
    .goto 121,27.01,62.04,0
    .goto 121,27.01,62.04,40,0
    .goto 121,27.12,55.88,40,0
    .goto 121,24.81,56.20,40,0
    >>Kill |cRXP_ENEMY_Banshee Soulclaimers|r. Loot them for |cRXP_LOOT_Banshee Essence|r
    .complete 12914,1 --Banshee Essence (6)
    .mob Banshee Soulclaimer
step
    .goto 121,25.23,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Reed|r
    .turnin 12914 >>Turn in Gymer's Salvation
    .accept 12916 >>Accept Our Only Hope
    .target Engineer Reed
step
    .goto 121,19.94,56.12
    >>Click the |cRXP_PICK_Scourge Enclosure|r
    .complete 12916,1 --Scourge Enclosure
step
    .goto 121,19.91,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gymer|r
    .turnin 12916 >>Turn in Our Only Hope
    .target Gymer
step
    .goto 121,27.07,46.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Drakuru|r
    .complete 12661,1 --Overlord Drakuru
    .target Overlord Drakuru
    .isOnQuest 12661
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12661 >>Turn in Infiltrating Voltarus
    .target Stefan Vadu
    .isOnQuest 12661
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .accept 12669 >>Accept So Far, So Bad
    .target Stefan Vadu
    .isQuestTurnedIn 12661 --any of: Infiltrating Voltarus
    .xp <74,1
step
    .goto 121,31.15,44.31
    >>Interact with |cRXP_FRIENDLY_Blight Cauldron Bunny 00|r
    .complete 12669,2 --Blight Cauldron Bunny 00
    .target Blight Cauldron Bunny 00
    .isOnQuest 12669
step
    .goto 121,27.07,46.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Drakuru|r
    .complete 12669,1 --Overlord Drakuru
    .target Overlord Drakuru
    .isOnQuest 12669
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12669 >>Turn in So Far, So Bad
    .target Stefan Vadu
    .isOnQuest 12669
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .accept 12677 >>Accept Hazardous Materials
    .target Stefan Vadu
    .isQuestTurnedIn 12669 --any of: So Far, So Bad
    .xp <74,1
step
    .goto 121,27.07,46.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Drakuru|r
    .complete 12677,1 --Overlord Drakuru
    .target Overlord Drakuru
    .isOnQuest 12677
step
    #loop
    .goto 121,28.80,46.93,0
    .goto 121,28.80,46.93,40,0
    .goto 121,28.90,43.32,40,0
    >>Pick up |cRXP_PICK_Harvested Blight Crystal|r from the ground
    .complete 12677,2 --Harvested Blight Crystal (5)
    .isOnQuest 12677
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12677 >>Turn in Hazardous Materials
    .target Stefan Vadu
    .isOnQuest 12677
step
    .goto 121,27.07,46.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Drakuru|r
    .accept 12710 >>Accept Disclosure
    .target Overlord Drakuru
    .isQuestTurnedIn 12690 --any of: Fuel for the Fire
    .xp <74,1
step
    .goto 121,27.21,42.32
    >>Drakuru in Voltarus wants you to take the teleporter to his upper chamber.
    .complete 12710,1 --Malmortis
    .target Malmortis
    .isOnQuest 12710
step
    .goto 121,27.07,46.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Drakuru|r
    .turnin 12710 >>Turn in Disclosure
    .target Overlord Drakuru
    .isOnQuest 12710
step
    #completewith next
    .hs >>Hearth to Fala Softhoof's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 121,39.42,66.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Falstaav|r
    .turnin 12795 >>Turn in Taking a Stand
    .accept 12503 >>Accept Defend the Stand
    .target Commander Falstaav
step
    #loop
    .goto 121,37.47,67.92,0
    .goto 121,37.47,67.92,40,0
    .goto 121,36.07,65.72,40,0
    >>Kill |cRXP_ENEMY_Rotting Abominations|r, |cRXP_ENEMY_Rampaging Geists|r, |cRXP_ENEMY_Sky Terrors|r and |cRXP_ENEMY_Flying Fiends|r
    .complete 12503,1 --Rotting Abomination (8)
    .mob Rotting Abomination
    .mob Rampaging Geist
    .mob Sky Terror
    .mob Flying Fiend
step
    .goto 121,39.42,66.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Falstaav|r
    .turnin 12503 >>Turn in Defend the Stand
    .target Commander Falstaav
step
    .goto 121,40.27,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Kunz|r
    .accept 12792 >>Accept First Things First
    .target Commander Kunz
step
    .goto 121,32.03,74.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Riannah|r
    .turnin 12792 >>Turn in First Things First
    .target Sergeant Riannah
step
    .goto 121,40.27,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Kunz|r
    .accept 12596 >>Accept Pa'Troll
    .target Commander Kunz
step
    .goto 121,58.68,72.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Rogers|r
    .accept 12512 >>Accept Leave No One Behind
    .target Dr. Rogers
step
    .goto 121,49.45,74.71
    >>Kill |cRXP_ENEMY_Crusader Josephine|r
    .complete 12512,3 --Crusader Josephine (1)
    .mob Crusader Josephine
step
    .goto 121,53.58,75.00
    >>Kill |cRXP_ENEMY_Crusader Lamoof|r
    .complete 12512,2 --Crusader Lamoof (1)
    .mob Crusader Lamoof
step
    .goto 121,50.67,69.86
    >>Kill |cRXP_ENEMY_Crusader Jonathan|r
    .complete 12512,1 --Crusader Jonathan (1)
    .mob Crusader Jonathan
step
    .goto 121,58.08,72.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rupert|r
    .accept 12606 >>Accept Cocooned!
    .target Captain Rupert
    .isQuestTurnedIn 12598 --any of: Throwing Down
    .xp <74,1
step
    .goto 121,58.68,72.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Rogers|r
    .turnin 12512 >>Turn in Leave No One Behind
    .target Dr. Rogers
step
    .goto 121,58.08,72.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rupert|r
    .complete 12596,2 --Captain Rupert
    .target Captain Rupert
step
    .goto 121,58.26,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Specialist Cogwheel|r
    .accept 12553 >>Accept Skimmer Spinnerets
    .target Specialist Cogwheel
    .isQuestTurnedIn 12598 --any of: Throwing Down
    .xp <74,1
step
    .goto 121,58.06,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Moonshard|r
    .accept 12552 >>Accept Death to the Necromagi
    .target Sergeant Moonshard
    .isQuestTurnedIn 12598 --any of: Throwing Down
    .xp <74,1
step
    #loop
    .goto 121,54.96,69.33,0
    .goto 121,54.96,69.33,40,0
    .goto 121,54.17,66.06,40,0
    >>Kill |cRXP_ENEMY_Captive Footmans|r and |cRXP_ENEMY_Nerubian Cocoons|r
    .complete 12606,1 --Captive Footman (8)
    .mob Captive Footman
    .mob Nerubian Cocoon
    .isOnQuest 12606
step
    #loop
    .goto 121,56.33,79.06,0
    .goto 121,56.33,79.06,40,0
    .goto 121,58.46,82.76,40,0
    .goto 121,55.31,85.87,40,0
    >>Kill |cRXP_ENEMY_Hath'ar Skimmers|r. Loot them for |cRXP_LOOT_Intact Skimmer Spinneret|r
    .complete 12553,1 --Intact Skimmer Spinneret (5)
    .mob Hath'ar Skimmer
    .isOnQuest 12553
step
    #loop
    .goto 121,60.43,78.34,0
    .goto 121,60.43,78.34,40,0
    .goto 121,63.98,77.85,40,0
    >>Kill |cRXP_ENEMY_Hath'ar Necromagus|r
    .complete 12552,1 --Hath'ar Necromagus slain (8)
    .mob Hath'ar Necromagus
    .isOnQuest 12552
step
    .goto 121,58.26,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Specialist Cogwheel|r
    .turnin 12553 >>Turn in Skimmer Spinnerets
    .target Specialist Cogwheel
    .isOnQuest 12553
step
    .goto 121,58.26,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Specialist Cogwheel|r
    .accept 12583 >>Accept Crashed Sprayer
    .target Specialist Cogwheel
    .isQuestTurnedIn 12553 --any of: Skimmer Spinnerets
    .xp <74,1
step
    .goto 121,58.06,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Moonshard|r
    .turnin 12552 >>Turn in Death to the Necromagi
    .target Sergeant Moonshard
    .isOnQuest 12552
step
    .goto 121,58.06,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Moonshard|r
    .accept 12554 >>Accept Malas the Corrupter
    .target Sergeant Moonshard
    .isQuestTurnedIn 12552 --any of: Death to the Necromagi
    .xp <74,1
step
    .goto 121,58.08,72.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rupert|r
    .turnin 12606 >>Turn in Cocooned!
    .target Captain Rupert
    .isOnQuest 12606
step
    .goto 121,58.08,72.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rupert|r
    .accept 12584 >>Accept Pure Evil
    .target Captain Rupert
    .isQuestTurnedIn 12552 --any of: Death to the Necromagi
    .xp <74,1
step
    .goto 121,48.79,75.55
    >>Open the |cRXP_PICK_Crashed Plague Sprayer|r. Loot it for |cRXP_LOOT_Plague Sprayer Parts|r
    .complete 12583,1 --Plague Sprayer Parts (1)
    .isOnQuest 12583
step
    .goto 121,58.26,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Specialist Cogwheel|r
    .turnin 12583 >>Turn in Crashed Sprayer
    .target Specialist Cogwheel
    .isOnQuest 12583
step
    .goto 121,58.26,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Specialist Cogwheel|r
    .accept 12555 >>Accept A Tangled Skein
    .target Specialist Cogwheel
    .isQuestTurnedIn 12583 --any of: Crashed Sprayer
    .xp <74,1
step
    #loop
    .goto 121,58.30,75.41,0
    .goto 121,58.30,75.41,40,0
    .goto 121,57.39,82.13,40,0
    >>Interact with |cRXP_FRIENDLY_Plague Sprayers|r
    .complete 12555,1 --Plague Sprayer (5)
    .target Plague Sprayer
    .isOnQuest 12555
step
    .goto 121,61.26,78.18
    >>Pick up |cRXP_PICK_Chunk of Saronite|r from the ground
    .complete 12584,1 --Chunk of Saronite (10)
    .isOnQuest 12584
step
    .goto 121,61.01,77.98
    >>Kill |cRXP_ENEMY_Malas the Corrupter|r and loot |cRXP_LOOT_Head of the Corrupter|r
    .complete 12554,1 --Head of the Corrupter (1)
    .mob Malas the Corrupter
    .isOnQuest 12554
step
    .goto 121,58.06,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Moonshard|r
    .turnin 12554 >>Turn in Malas the Corrupter
    .target Sergeant Moonshard
    .isOnQuest 12554
step
    .goto 121,58.26,72.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Specialist Cogwheel|r
    .turnin 12555 >>Turn in A Tangled Skein
    .target Specialist Cogwheel
    .isOnQuest 12555
step
    .goto 121,48.43,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .turnin 12974 >>Turn in The Champion's Call!
    .target Gurgthock
    .isOnQuest 12974
step
    .goto 121,35.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Arnath|r
    .accept 12799 >>Accept Siphoning the Spirits
    .target Captain Arnath
step
    .goto 121,35.02,52.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Finklestein|r
    .complete 12596,4 --Alchemist Finklestein
    .target Alchemist Finklestein
step
    #loop
    .goto 121,35.85,60.57,0
    .goto 121,35.85,60.57,40,0
    .goto 121,39.08,61.02,40,0
    >>Kill |cRXP_ENEMY_Lost Drakkari Spirits|r. Loot them for |cRXP_LOOT_Ancient Ectoplasm|r
    .complete 12799,1 --Ancient Ectoplasm (5)
    .mob Lost Drakkari Spirit
step
    .goto 121,35.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Arnath|r
    .turnin 12799 >>Turn in Siphoning the Spirits
    .accept 12609 >>Accept Stocking the Shelves
    .accept 12610 >>Accept Clipping Their Wings
    .target Captain Arnath
step
    #completewith Along112
    >>As you go: Kill |cRXP_ENEMY_Zul'Drak Bats|r. Loot them for |cRXP_LOOT_Unblemished Bat Wing|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12610,1 --Unblemished Bat Wing (7)
    .mob Zul'Drak Bat
step
    #label Along112
    #loop
    .goto 121,34.94,55.27,0
    .goto 121,34.94,55.27,40,0
    .goto 121,38.12,56.92,40,0
    .goto 121,38.24,50.42,40,0
    >>Kill |cRXP_ENEMY_Trapdoor Crawler|r and loot |cRXP_LOOT_Fresh Spider Ichor|r
    .complete 12609,1 --Fresh Spider Ichor (1)
    .mob Trapdoor Crawler
step
    .goto 121,35.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Arnath|r
    .turnin 12609 >>Turn in Stocking the Shelves while you are here
    .isQuestComplete 12609
    .target Captain Arnath
step
    #loop
    .goto 121,44.14,49.27,0
    .goto 121,44.14,49.27,40,0
    .goto 121,45.26,43.44,40,0
    .goto 121,43.73,39.55,40,0
    >>Kill |cRXP_ENEMY_Zul'Drak Bats|r. Loot them for |cRXP_LOOT_Unblemished Bat Wing|r
    .complete 12610,1 --Unblemished Bat Wing (7)
    .mob Zul'Drak Bat
step
    .goto 121,35.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Arnath|r
    .turnin 12609 >>Turn in Stocking the Shelves
    .turnin 12610 >>Turn in Clipping Their Wings
    .target Captain Arnath
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .accept 12510 >>Accept Precious Elemental Fluids
    .target Hexxer Ubungo
    .isQuestTurnedIn 12507 --any of: Strange Mojo
    .xp <74,1
step
    .goto 121,40.98,66.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 12584 >>Turn in Pure Evil
    .target Eitrigg
    .isOnQuest 12584
step
    .goto 121,40.18,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sub-Lieutenant Jax|r
    .accept 12562 >>Accept The Drakkari Do Not Need Water Elementals!
    .target Sub-Lieutenant Jax
    .isQuestTurnedIn 12507 --any of: Strange Mojo
    .xp <74,1
step
    #loop
    .goto 121,41.01,73.71,0
    .goto 121,41.01,73.71,40,0
    .goto 121,41.48,77.65,40,0
    .goto 121,43.80,80.39,40,0
    >>Kill |cRXP_ENEMY_Crazed Water Spirit|r and loot |cRXP_LOOT_Water Elemental Link|r
    .collect 38323,1,12510,1 --Water Elemental Link (1)
    .mob Crazed Water Spirit
    .isOnQuest 12510
step
    .goto 121,44.57,79.00
    >>Kill |cRXP_ENEMY_Watery Lords|r. Loot them for |cRXP_LOOT_Precious Elemental Fluids|r
    .complete 12510,1 --Precious Elemental Fluids (3)
    .mob Watery Lord
    .isOnQuest 12510
step
    #loop
    .goto 121,43.08,78.81,0
    .goto 121,43.08,78.81,40,0
    .goto 121,43.18,74.88,40,0
    .goto 121,40.30,75.21,40,0
    >>Kill |cRXP_ENEMY_Drakkari Water Binders|r
    .complete 12562,1 --Drakkari Water Binder slain (10)
    .mob Drakkari Water Binder
    .isOnQuest 12562
step
    .goto 121,48.80,78.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Brandon|r
    .complete 12596,1 --Captain Brandon
    .target Captain Brandon
step
    .goto 121,40.18,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sub-Lieutenant Jax|r
    .turnin 12562 >>Turn in The Drakkari Do Not Need Water Elementals!
    .target Sub-Lieutenant Jax
    .isOnQuest 12562
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .turnin 12510 >>Turn in Precious Elemental Fluids
    .target Hexxer Ubungo
    .isOnQuest 12510
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .accept 12514 >>Accept Mushroom Mixer
    .target Hexxer Ubungo
    .isQuestTurnedIn 12510 --any of: Precious Elemental Fluids
    .xp <74,1
step
    .goto 121,41.33,65.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Pestlepot|r
    .accept 12527 >>Accept Gluttonous Lurkers
    .target Apprentice Pestlepot
    .isQuestTurnedIn 12510 --any of: Precious Elemental Fluids
    .xp <74,1
step
    #loop
    .goto 121,42.53,66.93,0
    .goto 121,42.53,66.93,40,0
    .goto 121,43.85,61.43,40,0
    .goto 121,41.15,60.90,40,0
    >>Kill |cRXP_ENEMY_Zul'Drak Rat|r and loot |cRXP_LOOT_Zul'Drak Rat|r
    .collect 38380,1,12527,1 --Zul'Drak Rat (1)
    .mob Zul'Drak Rat
    .isOnQuest 12527
step
    #loop
    .goto 121,42.62,57.98,0
    .goto 121,42.62,57.98,40,0
    .goto 121,43.60,52.29,40,0
    >>Kill |cRXP_ENEMY_Gorged Lurking Basilisks|r. Loot them for |cRXP_LOOT_Basilisk Crystals|r
    .complete 12527,1 --Basilisk Crystals (5)
    .mob Gorged Lurking Basilisk
    .isOnQuest 12527
step
    #loop
    .goto 121,41.88,63.31,0
    .goto 121,41.88,63.31,40,0
    .goto 121,43.09,65.36,40,0
    .goto 121,46.12,63.58,40,0
    .goto 121,48.98,62.64,40,0
    >>Pick up |cRXP_PICK_Muddlecap Fungus|r from the ground
    .complete 12514,1 --Muddlecap Fungus (10)
    .isOnQuest 12514
step
    .goto 121,48.15,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grondel|r
    .complete 12596,3 --Captain Grondel
    .target Captain Grondel
step
    .goto 121,40.27,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Kunz|r
    .turnin 12596 >>Turn in Pa'Troll
    .target Commander Kunz
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .turnin 12514 >>Turn in Mushroom Mixer
    .target Hexxer Ubungo
    .isOnQuest 12514
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .accept 12516 >>Accept Too Much of a Good Thing
    .target Hexxer Ubungo
    .isQuestTurnedIn 12514 --any of: Mushroom Mixer
    .xp <74,1
step
    .goto 121,35.02,52.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Finklestein|r
    .turnin 12527 >>Turn in Gluttonous Lurkers
    .target Alchemist Finklestein
    .isOnQuest 12527
step
    .goto 121,40.46,42.53
    >>Kill |cRXP_ENEMY_Prophet of Sseratus|r
    .complete 12516,1 --Prophet of Sseratus slain (1)
    .mob Prophet of Sseratus
    .isOnQuest 12516
step
    #completewith next
    .hs >>Hearth to Fala Softhoof's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .turnin 12516 >>Turn in Too Much of a Good Thing
    .target Hexxer Ubungo
    .isOnQuest 12516
step
    .goto 121,40.53,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexxer Ubungo|r
    .accept 12623 >>Accept To the Witch Doctor
    .target Hexxer Ubungo
    .isQuestTurnedIn 12516 --any of: Too Much of a Good Thing
    .xp <74,1
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .turnin 12623 >>Turn in To the Witch Doctor
    .target Witch Doctor Khufu
    .isOnQuest 12623
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .accept 12627 >>Accept Breaking Through Jin'Alai
    .target Witch Doctor Khufu
    .isQuestTurnedIn 12623 --any of: To the Witch Doctor
    .xp <74,1
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .accept 12615 >>Accept The Blessing of Zim'Torga
    .target Witch Doctor Khufu
    .isQuestTurnedIn 12516 --any of: Too Much of a Good Thing
    .xp <74,1
step
    .goto 121,59.15,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalper Ahunae|r
    .accept 12622 >>Accept The Leaders at Jin'Alai
    .target Scalper Ahunae
    .isQuestTurnedIn 12623 --any of: To the Witch Doctor
    .xp <74,1
step
    .goto 121,59.54,57.20
    >>Click the |cRXP_PICK_Zim'Torga|r
    .turnin 12615 >>Turn in The Blessing of Zim'Torga
    .isOnQuest 12615
step
    .goto 121,57.61,61.73
    >>Click the |cRXP_PICK_Purple Cauldron|r
    .complete 12627,3 --Purple Cauldron
    .isOnQuest 12627
step
    .goto 121,58.78,62.71
    >>Click the |cRXP_PICK_Red Cauldron|r
    .complete 12627,4 --Red Cauldron
    .isOnQuest 12627
step
    .goto 121,55.68,64.32
    >>Click the |cRXP_PICK_Green Cauldron|r
    .complete 12627,2 --Green Cauldron
    .isOnQuest 12627
step
    .goto 121,57.21,65.35
    >>Click the |cRXP_PICK_Blue Cauldron|r
    .complete 12627,1 --Blue Cauldron
    .isOnQuest 12627
step
    .goto 121,58.02,61.98
    >>Pick up |cRXP_PICK_Treasure of Gawanil|r from the ground
    .complete 12622,2 --Treasure of Gawanil (1)
    .isOnQuest 12622
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .turnin 12627 >>Turn in Breaking Through Jin'Alai
    .target Witch Doctor Khufu
    .isOnQuest 12627
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .accept 12628 >>Accept To Speak With Har'koa
    .target Witch Doctor Khufu
    .isQuestTurnedIn 12627 --any of: Breaking Through Jin'Alai
    .xp <74,1
step
    .goto 121,59.98,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chronicler To'kini|r
    .accept 12635 >>Accept Relics of the Snow Leopard Goddess
    .target Chronicler To'kini
    .isQuestTurnedIn 12627 --any of: Breaking Through Jin'Alai
    .xp <74,1
step
    .goto 121,59.40,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Element-Tamer Dagoda|r
    .accept 12639 >>Accept The Frozen Earth
    .target Element-Tamer Dagoda
    .isQuestTurnedIn 12622 --any of: The Leaders at Jin'Alai
    .xp <74,1
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12628 >>Turn in To Speak With Har'koa
    .unitscan Har'koa
    .isOnQuest 12628
step
    #loop
    .goto 121,63.66,69.52,0
    .goto 121,63.66,69.52,40,0
    .goto 121,65.35,68.72,40,0
    .goto 121,61.03,70.70,40,0
    >>Pick up |cRXP_PICK_Har'koan Relic|r from the ground
    .complete 12635,1 --Har'koan Relic (10)
    .isOnQuest 12635
step
    .goto 121,59.98,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chronicler To'kini|r
    .turnin 12635 >>Turn in Relics of the Snow Leopard Goddess
    .target Chronicler To'kini
    .isOnQuest 12635
step
    .goto 121,59.98,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chronicler To'kini|r
    .accept 12650 >>Accept Plundering Their Own
    .accept 13549 >>Accept Tails Up
    .target Chronicler To'kini
    .isQuestTurnedIn 12635 --any of: Relics of the Snow Leopard Goddess
    .xp <74,1
step
    #loop
    .goto 121,55.00,51.60,0
    .goto 121,55.00,51.60,40,0
    .goto 121,53.20,50.60,40,0
    .goto 121,52.40,55.60,40,0
    >>Kill |cRXP_ENEMY_Frozen Earths|r. Loot them for |cRXP_LOOT_Essence of the Frozen Earth|r
    .complete 12639,1 --Essence of the Frozen Earth (7)
    .mob Frozen Earth
    .isOnQuest 12639
step
    #loop
    .goto 121,53.85,38.02,0
    .goto 121,53.85,38.02,40,0
    .goto 121,50.73,37.76,40,0
    >>Kill |cRXP_ENEMY_Priest of Rhunoks|r, |cRXP_ENEMY_Drakkari Bear Trappers|r and |cRXP_ENEMY_Rhunok's Tormentors|r. Loot them for |cRXP_LOOT_Rhunokian Artifact|r
    .complete 12650,1 --Rhunokian Artifact (7)
    .mob Priest of Rhunok
    .mob Drakkari Bear Trapper
    .mob Rhunok's Tormentor
    .isOnQuest 12650
step
    .goto 121,59.98,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chronicler To'kini|r
    .turnin 12650 >>Turn in Plundering Their Own
    .target Chronicler To'kini
    .isOnQuest 12650
step
    .goto 121,59.40,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Element-Tamer Dagoda|r
    .turnin 12639 >>Turn in The Frozen Earth
    .target Element-Tamer Dagoda
    .isOnQuest 12639
step
    #loop
    .goto 121,62.95,61.58,0
    .goto 121,62.95,61.58,40,0
    .goto 121,61.67,60.94,40,0
    .goto 121,61.68,61.95,40,0
    .goto 121,60.19,64.78,40,0
    .goto 121,59.02,64.65,40,0
    .goto 121,58.91,67.95,40,0
    >>Interact with |cRXP_FRIENDLY_Frost Leopard|r
    .complete 13549,1 --Frost Leopard
    .target Frost Leopard
    .isOnQuest 13549
step
    #loop
    .goto 121,75.15,65.60,0
    .goto 121,75.15,65.60,40,0
    .goto 121,76.73,64.87,40,0
    .goto 121,77.27,65.09,40,0
    .goto 121,77.09,67.06,40,0
    .goto 121,78.01,70.73,40,0
    >>Interact with |cRXP_FRIENDLY_Icepaw Bear|r
    .complete 13549,2 --Icepaw Bear
    .target Icepaw Bear
    .isOnQuest 13549
step
    .goto 121,59.98,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chronicler To'kini|r
    .turnin 13549 >>Turn in Tails Up
    .target Chronicler To'kini
    .isOnQuest 13549
step
    .goto 121,59.15,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalper Ahunae|r
    .turnin 12622 >>Turn in The Leaders at Jin'Alai
    .target Scalper Ahunae
    .isQuestComplete 12622
step
    .goto 121,69.99,20.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ha'wana|r
    .accept 13556 >>Accept Eggs for Dubra'Jin
    .target Ha'wana
step
    #loop
    .goto 121,73.17,18.49,0
    .goto 121,73.17,18.49,40,0
    .goto 121,76.20,17.17,40,0
    .goto 121,74.02,21.70,40,0
    .goto 121,71.87,26.88,40,0
    >>Kill |cRXP_ENEMY_Gundrak Raptors|r. Loot them for |cRXP_LOOT_Gundrak Raptor Egg|r. It can also be picked up from |cRXP_PICK_Gundrak Raptor Egg|r on the ground
    .complete 13556,1 --Gundrak Raptor Egg (12)
    .mob Gundrak Raptor
step
    .goto 121,69.99,20.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ha'wana|r
    .turnin 13556 >>Turn in Eggs for Dubra'Jin
    .target Ha'wana
step
    +|cRXP_WARN_That is all of Zul'Drak for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: The Magical Kingdom of Dalaran
step
    +|cRXP_WARN_Suggested next zones at level 74|r: |cRXP_FRIENDLY_Borean Tundra|r (about 0.8 levels of quests, starting around Elder Atkanok), |cRXP_FRIENDLY_Dragonblight|r (about 0.7 levels of quests, starting around Aurastrasza), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle). Completing this step loads the guide for Borean Tundra --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Zul'Drak is planned from level 77.|r Load its guide for level 77 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 74 - 81 Zul'Drak
#subweight -74
#name 77-78 Zul'Drak: around Gurgthock
--RouteBuilder:next
#next Zone Routes (Alliance)\76-78 Sholazar Basin;Zone Routes (Alliance)\78-80 The Storm Peaks;Zone Routes (Alliance)\73-75 Grizzly Hills: around Drakuru

step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .accept 12676 >>Accept Sabotage
    .target Stefan Vadu
    .isQuestTurnedIn 12677 --any of: Hazardous Materials
    .xp <74,1
step
    .goto 121,31.05,42.96
    >>Click the |cRXP_PICK_Scourgewagon|r
    .complete 12676,1 --Scourgewagon
    .isOnQuest 12676
step
    .goto 121,27.07,46.16
    >>Kill |cRXP_ENEMY_Overlord Drakuru|r
    .complete 12676,2 --Overlord Drakuru (1)
    .mob Overlord Drakuru
    .isOnQuest 12676
step
    .goto 121,27.07,46.16
    >>Learn Drakuru's secret
    .complete 12676,3 --Learn Drakuru's secret
    .isOnQuest 12676
step
    .goto 121,14.06,73.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stefan Vadu|r
    .turnin 12676 >>Turn in Sabotage
    .target Stefan Vadu
    .isOnQuest 12676
step
    .goto 121,48.43,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 12932 >>Accept The Amphitheater of Anguish: Yggdras!
    .target Gurgthock
step
    .goto 121,47.09,57.27
    >>Kill |cRXP_ENEMY_Yggdras|r
    .complete 12932,1 --Yggdras slain (1)
    .mob Yggdras
step
    .goto 121,48.47,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 12932 >>Turn in The Amphitheater of Anguish: Yggdras!
    .target Wodin the Troll-Servant
step
    .goto 121,48.43,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 12933 >>Accept The Amphitheater of Anguish: Magnataur!
    .target Gurgthock
step
    .goto 121,47.72,56.13
    >>Kill |cRXP_ENEMY_Stinkbeard|r
    .complete 12933,1 --Stinkbeard slain (1)
    .mob Stinkbeard
step
    .goto 121,48.47,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 12933 >>Turn in The Amphitheater of Anguish: Magnataur!
    .target Wodin the Troll-Servant
step
    .goto 121,48.43,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 12934 >>Accept The Amphitheater of Anguish: From Beyond!
    .target Gurgthock
step
    .goto 121,47.85,56.82
    >>Kill |cRXP_ENEMY_Duke Singens|r, |cRXP_ENEMY_Gargoral the Water Lords|r, |cRXP_ENEMY_Erathius, King of Dirts|r and |cRXP_ENEMY_Az'Barin, Prince of the Gusts|r
    .complete 12934,1 --Duke Singen (8)
    .mob Duke Singen
    .mob Gargoral the Water Lord
    .mob Erathius, King of Dirt
    .mob Az'Barin, Prince of the Gust
step
    .goto 121,48.47,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 12934 >>Turn in The Amphitheater of Anguish: From Beyond!
    .target Wodin the Troll-Servant
step
    .goto 121,48.43,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 12935 >>Accept The Amphitheater of Anguish: Tuskarrmageddon!
    .target Gurgthock
step
    .goto 121,47.80,56.77
    >>Kill |cRXP_ENEMY_Orinoko Tuskbreaker|r
    .complete 12935,1 --Orinoko Tuskbreaker slain (1)
    .mob Orinoko Tuskbreaker
step
    .goto 121,48.47,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 12935 >>Turn in The Amphitheater of Anguish: Tuskarrmageddon!
    .target Wodin the Troll-Servant
step
    .goto 121,48.43,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 12936 >>Accept The Amphitheater of Anguish: Korrak the Bloodrager!
    .target Gurgthock
step
    .goto 121,47.96,57.20
    >>Kill |cRXP_ENEMY_Korrak the Bloodrager|r
    .complete 12936,1 --Korrak the Bloodrager slain (1)
    .mob Korrak the Bloodrager
step
    .goto 121,48.47,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 12936 >>Turn in The Amphitheater of Anguish: Korrak the Bloodrager!
    .target Wodin the Troll-Servant
step
    .goto 121,48.43,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 12948 >>Accept The Champion of Anguish
    .target Gurgthock
step
    .goto 121,47.80,56.78
    >>Kill |cRXP_ENEMY_Vladof the Butcher|r
    .complete 12948,1 --Vladof the Butcher slain (1)
    .mob Vladof the Butcher
step
    .goto 121,48.47,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 12948 >>Turn in The Champion of Anguish
    .target Wodin the Troll-Servant
step
    .goto 121,59.15,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalper Ahunae|r
    .accept 12640 >>Accept Sealing the Rifts
    .target Scalper Ahunae
    .isQuestTurnedIn 12622 --any of: The Leaders at Jin'Alai
    .xp <74,1
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12632 >>Accept But First My Offspring
    .unitscan Har'koa
    .isQuestTurnedIn 12628 --any of: To Speak With Har'koa
    .xp <74,1
step
    #loop
    .goto 121,61.43,68.62,0
    .goto 121,61.43,68.62,40,0
    .goto 121,61.57,72.84,40,0
    .goto 121,63.43,76.81,40,0
    >>Kill |cRXP_ENEMY_Cursed Offspring of Har'koas|r
    .complete 12632,1 --Cursed Offspring of Har'koa slain (8)
    .mob Cursed Offspring of Har'koa
    .isOnQuest 12632
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12632 >>Turn in But First My Offspring
    .unitscan Har'koa
    .isOnQuest 12632
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12642 >>Accept Spirit of Rhunok
    .unitscan Har'koa
    .isQuestTurnedIn 12632 --any of: But First My Offspring
    .xp <74,1
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .accept 12655 >>Accept The Blessing of Zim'Rhuk
    .target Witch Doctor Khufu
    .isQuestTurnedIn 12632 --any of: But First My Offspring
    .xp <74,1
step
    #loop
    .goto 121,49.60,64.20,0
    .goto 121,49.60,64.20,40,0
    .goto 121,43.00,65.20,40,0
    .goto 121,41.53,61.04,40,0
    .goto 121,42.40,56.71,40,0
    .goto 121,44.40,55.60,40,0
    >>Kill |cRXP_ENEMY_Crazed Water Spirits|r, |cRXP_ENEMY_Carrion Eaters|r, |cRXP_ENEMY_Rotting Abominations|r and |cRXP_ENEMY_Rampaging Geists|r. Loot them for |cRXP_LOOT_Drakkari Offerings|r
    .complete 12655,1 --Drakkari Offerings (10)
    .mob Crazed Water Spirit
    .mob Carrion Eater
    .mob Rotting Abomination
    .mob Rampaging Geist
    .isOnQuest 12655
step
    .goto 121,59.56,44.13
    >>Click the |cRXP_PICK_Zim'Rhuk|r
    .turnin 12655 >>Turn in The Blessing of Zim'Rhuk
    .isOnQuest 12655
step
    .goto 121,53.38,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Rhunok|r
    .turnin 12642 >>Turn in Spirit of Rhunok
    .target Spirit of Rhunok
    .isOnQuest 12642
step
    .goto 121,53.38,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Rhunok|r
    .accept 12646 >>Accept My Prophet, My Enemy
    .target Spirit of Rhunok
    .isQuestTurnedIn 12642 --any of: Spirit of Rhunok
    .xp <74,1
step
    .goto 121,54.10,48.09
    >>Kill |cRXP_ENEMY_Prophet of Rhunok|r and loot |cRXP_LOOT_Arctic Bear God Mojo|r
    .complete 12646,1 --Arctic Bear God Mojo (1)
    .mob Prophet of Rhunok
    .isOnQuest 12646
step
    #loop
    .goto 121,56.40,50.20,0
    .goto 121,56.40,50.20,40,0
    .goto 121,53.80,52.40,40,0
    >>Kill |cRXP_ENEMY_Elemental Rifts|r
    .complete 12640,1 --Elemental Rift slain (7)
    .mob Elemental Rift
    .isOnQuest 12640
step
    .goto 121,53.38,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Rhunok|r
    .turnin 12646 >>Turn in My Prophet, My Enemy
    .target Spirit of Rhunok
    .isOnQuest 12646
step
    .goto 121,53.38,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Rhunok|r
    .accept 12647 >>Accept An End to the Suffering
    .target Spirit of Rhunok
    .isQuestTurnedIn 12646 --any of: My Prophet, My Enemy
    .xp <74,1
step
    .goto 121,53.38,35.79
    >>Kill |cRXP_ENEMY_Rhunok's Tormentor|r and loot |cRXP_LOOT_Tormentor's Incense|r
    .collect 38696,1,12647,1 --Tormentor's Incense (1)
    .mob Rhunok's Tormentor
    .isOnQuest 12647
step
    .goto 121,53.48,34.44
    >>Kill |cRXP_ENEMY_Rhunok|r
    .complete 12647,1 --Rhunok slain (1)
    .mob Rhunok
    .isOnQuest 12647
step
    .goto 121,53.38,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Rhunok|r
    .turnin 12647 >>Turn in An End to the Suffering
    .target Spirit of Rhunok
    .isOnQuest 12647
step
    .goto 121,53.38,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Rhunok|r
    .accept 12653 >>Accept Back to Har'koa
    .target Spirit of Rhunok
    .isQuestTurnedIn 12647 --any of: An End to the Suffering
    .xp <74,1
step
    .goto 121,59.15,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalper Ahunae|r
    .turnin 12640 >>Turn in Sealing the Rifts
    .target Scalper Ahunae
    .isOnQuest 12640
step
    .goto 121,59.15,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalper Ahunae|r
    .accept 12659 >>Accept Scalps!
    .target Scalper Ahunae
    .isQuestTurnedIn 12640 --any of: Sealing the Rifts
    .xp <74,1
step
    .goto 121,59.40,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Element-Tamer Dagoda|r
    .accept 12662 >>Accept Bringing Down Heb'Jin
    .target Element-Tamer Dagoda
    .isQuestTurnedIn 12640 --any of: Sealing the Rifts
    .xp <74,1
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12653 >>Turn in Back to Har'koa
    .unitscan Har'koa
    .isOnQuest 12653
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12665 >>Accept I Sense a Disturbance
    .unitscan Har'koa
    .isQuestTurnedIn 12653 --any of: Back to Har'koa
    .xp <74,1
step
    .goto 121,76.01,58.62
    >>Har'koa has asked you to determine what has happened to Quetz'lun. Speak to her to be able to ride one of her children stealthily into the Altar of Quetz'lun.
    .complete 12665,1 --Prophet of Quetz'lun
    .target Prophet of Quetz'lun
    .isOnQuest 12665
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12666 >>Accept Preparations for the Underworld
    .unitscan Har'koa
    .isQuestTurnedIn 12665 --any of: I Sense a Disturbance
    .xp <74,1
step
    #loop
    .goto 121,62.20,68.20,0
    .goto 121,62.20,68.20,40,0
    .goto 121,63.80,69.80,40,0
    .goto 121,63.40,72.20,40,0
    >>Kill |cRXP_ENEMY_Claw of Har'koas|r and |cRXP_ENEMY_Har'koan Subduers|r. Loot them for |cRXP_LOOT_Sacred Adornment|r
    .complete 12666,1 --Sacred Adornment (8)
    .mob Claw of Har'koa
    .mob Har'koan Subduer
    .isOnQuest 12666
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12666 >>Turn in Preparations for the Underworld
    .unitscan Har'koa
    .isOnQuest 12666
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12667 >>Accept Seek the Wind Serpent Goddess
    .unitscan Har'koa
    .isQuestTurnedIn 12666 --any of: Preparations for the Underworld
    .xp <74,1
step
    .goto 121,75.39,58.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quetz'lun's Spirit|r
    .turnin 12667 >>Turn in Seek the Wind Serpent Goddess
    .target Quetz'lun's Spirit
    .isOnQuest 12667
step
    .goto 121,75.39,58.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quetz'lun's Spirit|r
    .accept 12672 >>Accept Setting the Stage
    .target Quetz'lun's Spirit
    .isQuestTurnedIn 12667 --any of: Seek the Wind Serpent Goddess
    .xp <74,1
step
    #loop
    .goto 121,76.02,56.13,0
    .goto 121,76.02,56.13,40,0
    .goto 121,72.75,58.08,40,0
    .goto 121,73.84,61.03,40,0
    >>Pick up |cRXP_PICK_Underworld Power Fragment|r from the ground
    .complete 12672,1 --Underworld Power Fragment (10)
    .isOnQuest 12672
step
    .goto 121,75.39,58.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quetz'lun's Spirit|r
    .turnin 12672 >>Turn in Setting the Stage
    .target Quetz'lun's Spirit
    .isOnQuest 12672
step
    .goto 121,75.39,58.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quetz'lun's Spirit|r
    .accept 12668 >>Accept Foundation for Revenge
    .target Quetz'lun's Spirit
    .isQuestTurnedIn 12672 --any of: Setting the Stage
    .xp <74,1
step
    #loop
    .goto 121,72.66,56.79,0
    .goto 121,72.66,56.79,40,0
    .goto 121,70.41,60.29,40,0
    >>Kill |cRXP_ENEMY_Quetz'lun Worshippers|r and |cRXP_ENEMY_Serpent-Touched Berserkers|r
    .complete 12668,1 --Quetz'lun Worshipper (8)
    .mob Quetz'lun Worshipper
    .mob Serpent-Touched Berserker
    .isOnQuest 12668
step
    .goto 121,75.39,58.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quetz'lun's Spirit|r
    .turnin 12668 >>Turn in Foundation for Revenge
    .target Quetz'lun's Spirit
    .isOnQuest 12668
step
    .goto 121,75.39,58.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quetz'lun's Spirit|r
    .accept 12674 >>Accept Hell Hath a Fury
    .target Quetz'lun's Spirit
    .isQuestTurnedIn 12668 --any of: Foundation for Revenge
    .xp <74,1
step
    .goto 121,73.55,60.78
    >>Interact with |cRXP_FRIENDLY_High Priestess Tua-Tua|r
    .complete 12674,2 --High Priestess Tua-Tua
    .target High Priestess Tua-Tua
    .isOnQuest 12674
step
    .goto 121,74.53,57.40
    >>Interact with |cRXP_FRIENDLY_High Priest Mu'funu|r
    .complete 12674,1 --High Priest Mu'funu
    .target High Priest Mu'funu
    .isOnQuest 12674
step
    .goto 121,76.22,54.87
    >>Interact with |cRXP_FRIENDLY_High Priest Hawinni|r
    .complete 12674,3 --High Priest Hawinni
    .target High Priest Hawinni
    .isOnQuest 12674
step
    .goto 121,75.39,58.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quetz'lun's Spirit|r
    .turnin 12674 >>Turn in Hell Hath a Fury
    .target Quetz'lun's Spirit
    .isOnQuest 12674
step
    .goto 121,75.39,58.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quetz'lun's Spirit|r
    .accept 12675 >>Accept One Last Thing
    .target Quetz'lun's Spirit
    .isQuestTurnedIn 12674 --any of: Hell Hath a Fury
    .xp <74,1
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12675 >>Turn in One Last Thing
    .unitscan Har'koa
    .isOnQuest 12675
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12684 >>Accept Blood of a Dead God
    .unitscan Har'koa
    .isQuestTurnedIn 12675 --any of: One Last Thing
    .xp <74,1
step
    .goto 121,65.64,50.46
    >>Kill |cRXP_ENEMY_Heb'Jin|r
    .complete 12662,1 --Heb'Jin slain (1)
    .mob Heb'Jin
    .isOnQuest 12662
step
    #loop
    .goto 121,62.95,51.31,0
    .goto 121,62.95,51.31,40,0
    .goto 121,64.65,54.35,40,0
    >>Kill |cRXP_ENEMY_Heb'Drakkar Strikers|r and |cRXP_ENEMY_Heb'Drakkar Headhunters|r
    .complete 12659,1 --Heb'Drakkar Striker (8)
    .mob Heb'Drakkar Striker
    .mob Heb'Drakkar Headhunter
    .isOnQuest 12659
step
    #loop
    .goto 121,74.36,46.75,0
    .goto 121,74.36,46.75,40,0
    .goto 121,75.18,49.32,40,0
    .goto 121,77.23,51.18,40,0
    >>Kill |cRXP_ENEMY_Blood of Mam'toths|r. Loot them for |cRXP_LOOT_Blood of Mam'toth|r
    .complete 12684,1 --Blood of Mam'toth (7)
    .mob Blood of Mam'toth
    .isOnQuest 12684
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12684 >>Turn in Blood of a Dead God
    .unitscan Har'koa
    .isOnQuest 12684
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12685 >>Accept You Reap What You Sow
    .unitscan Har'koa
    .isQuestTurnedIn 12684 --any of: Blood of a Dead God
    .xp <74,1
step
    .goto 121,76.01,58.62
    >>Kill |cRXP_ENEMY_Prophet of Quetz'lun|r
    .complete 12685,1 --Prophet of Quetz'lun slain (1)
    .mob Prophet of Quetz'lun
    .isOnQuest 12685
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .turnin 12685 >>Turn in You Reap What You Sow
    .target Witch Doctor Khufu
    .isOnQuest 12685
step
    .goto 121,59.98,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chronicler To'kini|r
    .accept 12709 >>Accept Hexed Caches
    .target Chronicler To'kini
    .isQuestTurnedIn 12685 --any of: You Reap What You Sow
    .xp <74,1
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12712 >>Accept The Key of Warlord Zol'Maz
    .unitscan Har'koa
    .isQuestTurnedIn 12685 --any of: You Reap What You Sow
    .xp <74,1
step
    .goto 121,59.40,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Element-Tamer Dagoda|r
    .turnin 12662 >>Turn in Bringing Down Heb'Jin
    .target Element-Tamer Dagoda
    .isOnQuest 12662
step
    .goto 121,59.40,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Element-Tamer Dagoda|r
    .accept 12708 >>Accept Enchanted Tiki Warriors
    .target Element-Tamer Dagoda
    .isQuestTurnedIn 12685 --any of: You Reap What You Sow
    .xp <74,1
step
    .goto 121,59.15,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalper Ahunae|r
    .turnin 12659 >>Turn in Scalps!
    .target Scalper Ahunae
    .isOnQuest 12659
step
    .goto 121,59.15,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalper Ahunae|r
    .accept 12707 >>Accept Wooly Justice
    .target Scalper Ahunae
    .isQuestTurnedIn 12685 --any of: You Reap What You Sow
    .xp <74,1
step
    #loop
    .goto 121,71.87,43.33,0
    .goto 121,71.87,43.33,40,0
    .goto 121,74.96,42.95,40,0
    >>Scalper Ahunae at Zim'Torga wants you to use the Medallion of Mam'toth to calm and ride an Enraged Mammoth. You are then to trample 12 Mam'toth Disciples to death.
    .complete 12707,1 --Mam'toth Disciple (12)
    .target Mam'toth Disciple
    .isOnQuest 12707
step
    .goto 121,68.20,35.37
    >>Kill |cRXP_ENEMY_Drek'Maz|r and loot |cRXP_LOOT_Drek'Maz's Tiki|r
    .collect 39315,1,12712,1 --Drek'Maz's Tiki (1)
    .mob Drek'Maz
    .isOnQuest 12712
step
    .goto 121,67.94,32.71
    >>Kill |cRXP_ENEMY_Yara|r and loot |cRXP_LOOT_Yara's Sword|r
    .collect 39313,1,12712,1 --Yara's Sword (1)
    .mob Yara
    .isOnQuest 12712
step
    #loop
    .goto 121,69.08,34.99,0
    .goto 121,69.08,34.99,40,0
    .goto 121,65.89,34.57,40,0
    .goto 121,66.26,38.00,40,0
    >>Kill |cRXP_ENEMY_Enchanted Tiki Warrior|r and loot |cRXP_LOOT_Tiki Hex Remover|r
    .collect 39305,1,12709,1 --Tiki Hex Remover (1)
    .mob Enchanted Tiki Warrior
    .isOnQuest 12709
step
    .goto 121,63.82,37.09
    >>Kill |cRXP_ENEMY_Tiri|r and loot |cRXP_LOOT_Tiri's Magical Incantation|r
    .collect 39316,1,12712,1 --Tiri's Magical Incantation (1)
    .mob Tiri
    .isOnQuest 12712
step
    .goto 121,66.16,32.79
    >>Kill |cRXP_ENEMY_Warlord Zol'Maz|r and loot |cRXP_LOOT_Key of Warlord Zol'Maz|r
    .complete 12712,1 --Key of Warlord Zol'Maz (1)
    .mob Warlord Zol'Maz
    .isOnQuest 12712
step
    #loop
    .goto 121,67.27,36.56,0
    .goto 121,67.27,36.56,40,0
    .goto 121,65.30,37.02,40,0
    >>Pick up |cRXP_PICK_Zol'Maz Stronghold Cache|r from the ground
    .complete 12709,1 --Zol'Maz Stronghold Cache (12)
    .isOnQuest 12709
step
    #loop
    .goto 121,65.89,34.57,0
    .goto 121,65.89,34.57,40,0
    .goto 121,66.26,38.00,40,0
    .goto 121,69.08,34.99,40,0
    >>Kill |cRXP_ENEMY_Enchanted Tiki Warriors|r
    .complete 12708,1 --Enchanted Tiki Warrior slain (12)
    .mob Enchanted Tiki Warrior
    .isOnQuest 12708
step
    .goto 121,59.98,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chronicler To'kini|r
    .turnin 12709 >>Turn in Hexed Caches
    .target Chronicler To'kini
    .isOnQuest 12709
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12712 >>Turn in The Key of Warlord Zol'Maz
    .unitscan Har'koa
    .isOnQuest 12712
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12721 >>Accept Rampage
    .unitscan Har'koa
    .isQuestTurnedIn 12712 --any of: The Key of Warlord Zol'Maz
    .xp <74,1
step
    .goto 121,59.40,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Element-Tamer Dagoda|r
    .turnin 12708 >>Turn in Enchanted Tiki Warriors
    .target Element-Tamer Dagoda
    .isOnQuest 12708
step
    .goto 121,59.15,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalper Ahunae|r
    .turnin 12707 >>Turn in Wooly Justice
    .target Scalper Ahunae
    .isOnQuest 12707
step
    .goto 121,78.61,25.21
    >>Har'koa at Zim'Torga has asked you to free Akali and then to inform Witch Doctor Khufu at Zim'Torga.
    .complete 12721,1 --Akali
    .target Akali
    .isOnQuest 12721
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .turnin 12721 >>Turn in Rampage
    .target Witch Doctor Khufu
    .isOnQuest 12721
step
    .goto 121,59.50,58.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Khufu|r
    .accept 12729 >>Accept The Gods Have Spoken
    .target Witch Doctor Khufu
    .isQuestTurnedIn 12721 --any of: Rampage
    .xp <74,1
step
    #loop
    .goto 121,62.80,44.20,0
    .goto 121,62.80,44.20,40,0
    .goto 121,59.99,42.94,40,0
    >>Kill |cRXP_ENEMY_Guardian of Zim'Rhuk|r and loot |cRXP_LOOT_Unblemished Heart of the Guardian|r
    .complete 12729,1 --Unblemished Heart of the Guardian (1)
    .mob Guardian of Zim'Rhuk
    .isOnQuest 12729
step
    #loop
    .goto 121,75.00,62.41,0
    .goto 121,75.00,62.41,40,0
    .goto 121,76.45,62.45,40,0
    >>Kill |cRXP_ENEMY_Altar Warden|r and loot |cRXP_LOOT_Gusty Essence of the Warden|r
    .complete 12729,2 --Gusty Essence of the Warden (1)
    .mob Altar Warden
    .isOnQuest 12729
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12729 >>Turn in The Gods Have Spoken
    .unitscan Har'koa
    .isOnQuest 12729
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12730 >>Accept Convocation at Zol'Heb
    .unitscan Har'koa
    .isQuestTurnedIn 12729 --any of: The Gods Have Spoken
    .xp <74,1
step
    .goto 121,77.50,36.30
    >>Kill |cRXP_ENEMY_Prophet of Akali|r
    .complete 12730,1 --Prophet of Akali slain (1)
    .mob Prophet of Akali
    .isOnQuest 12730
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12730 >>Turn in Convocation at Zol'Heb
    .unitscan Har'koa
    .isOnQuest 12730
step
    .goto 121,76.02,20.79,0
    .goto ZulDrak,68.00,33.67,50,0
    .goto ZulDrak,63.78,33.81,50,0
    .goto ZulDrak,63.72,38.24,50,0
    .goto ZulDrak,67.38,38.75,50,0
    .goto ZulDrak,69.52,35.43,50,0
    .goto ZulDrak,68.00,33.67,50,0
    .xp 76 >> Grind |cRXP_ENEMY_Zol'Maz|r to level 76. Alternatively, do Gundrak and its quests
step
    .goto 121,63.72,70.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Har'koa|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12665 >>Turn in I Sense a Disturbance
    .unitscan Har'koa
    .isQuestComplete 12665
step
    +|cRXP_WARN_Suggested next zones at level 77|r: |cRXP_FRIENDLY_Sholazar Basin|r (about 1.1 levels of quests, starting around Debaar), |cRXP_FRIENDLY_The Storm Peaks|r (about 0.9 levels of quests, starting around Ricket), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for Sholazar Basin --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Zul'Drak is planned from level 80.|r Load its guide for level 80 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 74 - 81 Zul'Drak
#subweight -74
#name 80-81 Zul'Drak
--RouteBuilder:next
#next Zone Routes (Alliance)\76-78 Sholazar Basin

step
    .goto 121,25.28,63.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader MacKellar|r
    .accept 12903 >>Accept That's What Friends Are For...
    .target Crusader MacKellar
    .isQuestTurnedIn 12894 --any of: Crusader Forward Camp
step
    .goto 121,25.05,51.61
    >>Kill |cRXP_ENEMY_Crusader Dargath|r
    .complete 12903,1 --Crusader Dargath slain (1)
    .mob Crusader Dargath
    .isOnQuest 12903
step
    .goto 121,17.64,57.54
    >>Kill |cRXP_ENEMY_Gerk|r
    .complete 12903,2 --Gerk slain (1)
    .mob Gerk
    .isOnQuest 12903
step
    .goto 121,15.67,59.41
    >>Kill |cRXP_ENEMY_Burr|r
    .complete 12903,3 --Burr slain (1)
    .mob Burr
    .isOnQuest 12903
step
    .goto 121,25.28,63.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader MacKellar|r
    .turnin 12903 >>Turn in That's What Friends Are For...
    .target Crusader MacKellar
    .isOnQuest 12903
step
    .goto 121,19.91,56.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gymer|r
    .accept 12919 >>Accept The Storm King's Vengeance
    .target Gymer
    .isQuestTurnedIn 12916 --any of: Our Only Hope
step
    .goto 121,31.19,61.86
    >>Kill |cRXP_ENEMY_Thrym|r
    .complete 12919,2 --Thrym slain (1)
    .mob Thrym
    .isOnQuest 12919
step
    #loop
    .goto 121,27.10,56.99,0
    .goto 121,27.10,56.99,40,0
    .goto 121,24.41,57.53,40,0
    >>Kill |cRXP_ENEMY_Vargul Doombringers|r, |cRXP_ENEMY_Vargul Blighthounds|r, |cRXP_ENEMY_Vargul Deathwakers|r and |cRXP_ENEMY_Vargul Runelords|r
    .complete 12919,4 --Vargul Doombringer (8)
    .mob Vargul Doombringer
    .mob Vargul Blighthound
    .mob Vargul Deathwaker
    .mob Vargul Runelord
    .isOnQuest 12919
step
    .goto 121,32.50,63.37
    >>Kill |cRXP_ENEMY_Prince Navarius|r
    .complete 12919,3 --Prince Navarius slain (1)
    .mob Prince Navarius
    .isOnQuest 12919
step
    .goto 121,28.38,44.85
    >>Kill |cRXP_ENEMY_Algar the Chosen|r
    .complete 12919,1 --Algar the Chosen slain (1)
    .mob Algar the Chosen
    .isOnQuest 12919
step
    .goto 121,25.28,63.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader MacKellar|r
    .turnin 12919 >>Turn in The Storm King's Vengeance
    .target Crusader MacKellar
    .isOnQuest 12919
step
    +|cRXP_WARN_End of the Zul'Drak route.|r
step
    +|cRXP_WARN_Suggested next zones at level 80|r: |cRXP_FRIENDLY_Sholazar Basin|r (about 0.6 levels of quests, starting around Debaar). Completing this step loads the guide for Sholazar Basin --RouteBuilder:next
]])
