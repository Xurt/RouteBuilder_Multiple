-- 90-90 Dread Wastes: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Dread Wastes.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 90-90 Dread Wastes

step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31000 >>Accept Dread Space
    .unitscan Lya of Ten Songs
step
    .goto 422,27.40,16.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gokk'lok|r
    .accept 31083 >>Accept Promises of Gold
    .target Gokk'lok
step
    .goto 422,38.65,17.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
    .turnin 31083 >>Turn in Promises of Gold
    .target Chief Rikkitun
step
    #loop
    .goto 422,71.58,22.02,0
    .goto 422,71.58,22.02,40,0
    .goto 422,74.23,23.90,40,0
    .goto 422,72.04,27.58,40,0
    >>Interact with |cRXP_FRIENDLY_Dreadspinner Eggs|r
    .complete 31002,1 --Dreadspinner Egg (20)
    .target Dreadspinner Egg
    .isOnQuest 31002
step
    #loop
    .goto 422,71.40,27.20,0
    .goto 422,71.40,27.20,40,0
    .goto 422,72.80,23.40,40,0
    >>Kill |cRXP_ENEMY_Dreadspinner Tenders|r
    .complete 31002,2 --Dreadspinner Tender slain (6)
    .mob Dreadspinner Tender
    .isOnQuest 31002
step
    .goto 422,72.55,28.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Lann|r
    .complete 31001,1 --Marksman Lann
    .target Marksman Lann
    .isOnQuest 31001
step
    .goto 422,72.55,28.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Lann|r
    .turnin 31001 >>Turn in Falling Down
    .target Marksman Lann
    .isOnQuest 31001
step
    .goto 422,72.55,28.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Lann|r
    .turnin 31002 >>Turn in Nope
    .target Marksman Lann
    .isOnQuest 31002
step
    .goto 422,72.55,28.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Lann|r
    .accept 31003 >>Accept Psycho Mantid
    .target Marksman Lann
    .isQuestTurnedIn 31001 --Falling Down
    .isQuestTurnedIn 31002 --Nope
    .xp <89,1
step
    .goto 422,73.48,27.49
    >>Kill |cRXP_ENEMY_Adjunct Kree'zot|r
    .complete 31003,1 --Adjunct Kree'zot slain (1)
    .mob Adjunct Kree'zot
    .isOnQuest 31003
step
    .goto 422,73.68,27.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Tik|r
    .turnin 31003 >>Turn in Psycho Mantid
    .target Klaxxi'va Tik
    .isOnQuest 31003
step
    .goto 422,73.68,27.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Tik|r
    .accept 31004 >>Accept Preserved in Amber
    .target Klaxxi'va Tik
    .isQuestTurnedIn 31003 --any of: Psycho Mantid
    .xp <89,1
step
    .goto 422,70.19,25.63
    >>Click the |cRXP_PICK_Ancient Amber Chunk|r
    .complete 31004,1 --Ancient Amber Chunk
    .isOnQuest 31004
step
    .goto 422,70.20,25.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31004 >>Turn in Preserved in Amber
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31004
step
    .goto 422,70.20,25.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .accept 31676 >>Accept Ancient Vengeance
    .accept 31005 >>Accept Wakening Sickness
    .target Kil'ruk the Wind-Reaver
    .isQuestTurnedIn 31004 --any of: Preserved in Amber
    .xp <89,1
step
    #loop
    .goto 422,70.81,29.33,0
    .goto 422,70.81,29.33,40,0
    .goto 422,72.14,30.62,40,0
    .goto 422,72.01,34.67,40,0
    >>Kill |cRXP_ENEMY_Sapflies|r. Loot them for |cRXP_LOOT_Sapfly Bits|r
    .complete 31005,1 --Sapfly Bits (100)
    .mob Sapfly
    .isOnQuest 31005
step
    .goto 422,71.62,34.21
    >>Kill |cRXP_ENEMY_Vengeful Gurthani Spirits|r
    .complete 31676,1 --Vengeful Gurthani Spirit slain (6)
    .mob Vengeful Gurthani Spirit
    .isOnQuest 31676
step
    .goto 422,70.20,25.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31005 >>Turn in Wakening Sickness
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31005
step
    .goto 422,70.20,25.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31676 >>Turn in Ancient Vengeance
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31676
step
    .goto 422,70.20,25.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .accept 31006 >>Accept The Klaxxi Council
    .target Kil'ruk the Wind-Reaver
    .isQuestTurnedIn 31005 --Wakening Sickness
    .isQuestTurnedIn 31676 --Ancient Vengeance
    .xp <89,1
step
    .goto 422,54.98,34.05
    >>Travel to Klaxxi'vess at the center of the Dread Wastes. You may speak with Kil'ruk the Wind-Reaver in the Terrace of Gurthan for a ride, or travel on your own.
    .complete 31006,1 --Kil'ruk the Wind-Reaver
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31006
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31006 >>Turn in The Klaxxi Council
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31006
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .accept 31007 >>Accept The Dread Clutches
    .accept 31660 >>Accept Not Fit to Swarm
    .target Kil'ruk the Wind-Reaver
    .isQuestTurnedIn 31006 --any of: The Klaxxi Council
    .xp <89,1
step
    .goto 422,54.77,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .accept 31009 >>Accept Dead Zone
    .target Kor'ik
    .isQuestTurnedIn 31006 --any of: The Klaxxi Council
    .xp <89,1
step
    .goto 422,55.02,35.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
    .accept 31008 >>Accept Amber Arms
    .target Ambersmith Zikk
    .isQuestTurnedIn 31006 --any of: The Klaxxi Council
    .xp <89,1
step
    .goto 422,55.833,34.879
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kik'tik|r
    .fp Klaxxi'vess >> Get the Klaxxi'vess flight path
    .target Kik'tik
    .subzoneskip 6315,1
step
    .goto 422,40.07,38.99
    >>Click the |cRXP_PICK_Inactive Sonic Relay|r
    .complete 31009,1 --Inactive Sonic Relay
    .isOnQuest 31009
step
    .goto 422,40.07,38.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 31009 >>Turn in Dead Zone
    .target ?
    .isOnQuest 31009
step
    .goto 422,40.07,39.01
    >>Click the |cRXP_PICK_Klaxxi Sonic Relay|r
    .accept 31010 >>Accept In Her Clutch
    .isQuestTurnedIn 31009 --any of: Dead Zone
    .xp <89,1
step
    .goto 422,44.57,41.31
    >>Click the |cRXP_PICK_Sha-Haunted Crystal|r
    .accept 31661 >>Accept A Source of Terrifying Power
    .isQuestTurnedIn 31006 --any of: The Klaxxi Council
    .xp <89,1
step
    #loop
    .goto 422,44.01,42.63,0
    .goto 422,44.01,42.63,40,0
    .goto 422,39.78,40.82,40,0
    >>Kill |cRXP_ENEMY_Shek'zeer Bladesworns|r. Loot them for |cRXP_LOOT_Amber Blade|r
    .complete 31008,1 --Amber Blade (6)
    .mob Shek'zeer Bladesworn
    .isOnQuest 31008
step
    .goto 422,44.11,41.15
    >>Kill |cRXP_ENEMY_Shek'zeer Swarmborns|r and |cRXP_ENEMY_Shek'zeer Wingblades|r
    .complete 31660,1 --Shek'zeer Swarmborn (30)
    .mob Shek'zeer Swarmborn
    .mob Shek'zeer Wingblade
    .isOnQuest 31660
step
    #loop
    .goto 422,43.70,43.17,0
    .goto 422,43.70,43.17,40,0
    .goto 422,42.37,46.57,40,0
    >>Kill |cRXP_ENEMY_Shek'zeer Clutch-Keepers|r
    .complete 31007,1 --Shek'zeer Clutch-Keeper slain (6)
    .mob Shek'zeer Clutch-Keeper
    .isOnQuest 31007
step
    .goto 422,44.76,41.66
    >>Click the |cRXP_PICK_Ancient Amber Chunk|r
    .complete 31010,1 --Ancient Amber Chunk
    .isOnQuest 31010
step
    .goto 422,55.02,35.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
    .turnin 31008 >>Turn in Amber Arms
    .target Ambersmith Zikk
    .isOnQuest 31008
step
    .goto 422,55.02,35.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
    .turnin 31661 >>Turn in A Source of Terrifying Power
    .target Ambersmith Zikk
    .isOnQuest 31661
step
    .goto 422,55.02,35.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
    .accept 31108 >>Accept Concentrated Fear
    .target Ambersmith Zikk
    .isQuestTurnedIn 31661 --any of: A Source of Terrifying Power
    .xp <89,1
step
    .goto 422,54.94,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r
    .turnin 31010 >>Turn in In Her Clutch
    .target Malik the Unscathed
    .isOnQuest 31010
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31007 >>Turn in The Dread Clutches
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31007
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31660 >>Turn in Not Fit to Swarm
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31660
step
    .goto 422,54.77,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .accept 31066 >>Accept A Cry From Darkness
    .target Kor'ik
    .isQuestTurnedIn 31007 --The Dread Clutches
    .isQuestTurnedIn 31010 --In Her Clutch
    .isQuestTurnedIn 31660 --Not Fit to Swarm
    .xp <89,1
step
    .goto 422,54.94,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r
    .accept 31107 >>Accept Citizens of a New Empire
    .target Malik the Unscathed
    .isQuestTurnedIn 31007 --The Dread Clutches
    .isQuestTurnedIn 31010 --In Her Clutch
    .isQuestTurnedIn 31660 --Not Fit to Swarm
    .xp <89,1
step
    .goto 422,54.94,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r
    .accept 31689 >>Accept The Dreadsworn
    .target Malik the Unscathed
    .isQuestTurnedIn 31661 --any of: A Source of Terrifying Power
    .xp <89,1
step
    .goto 422,59.37,18.42
    >>Kill |cRXP_ENEMY_Qi'tar the Deathcaller|r
    .complete 31066,1 --Qi'tar the Deathcaller slain (1)
    .mob Qi'tar the Deathcaller
    .isOnQuest 31066
step
    .goto 422,59.01,19.52
    >>Loot the |cRXP_PICK_Vor'thik Eggs|r for |cRXP_LOOT_Vor'thik Eggs|r
    .complete 31107,1 --Vor'thik Eggs (10)
    .isOnQuest 31107
step
    #loop
    .goto 422,59.20,18.39,0
    .goto 422,59.20,18.39,40,0
    .goto 422,57.91,15.54,40,0
    >>Kill |cRXP_ENEMY_Vor'thik Fear-Shaper|r and loot |cRXP_LOOT_Dread Amber Focus|r
    .complete 31108,1 --Dread Amber Focus (1)
    .mob Vor'thik Fear-Shaper
    .isOnQuest 31108
step
    #loop
    .goto 422,58.96,15.26,0
    .goto 422,58.96,15.26,40,0
    .goto 422,57.81,18.10,40,0
    >>Kill |cRXP_ENEMY_Vor'thik Dreadsworns|r
    .complete 31689,1 --Vor'thik Dreadsworn slain (6)
    .mob Vor'thik Dreadsworn
    .isOnQuest 31689
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin the Flying Keg|r
    .target Jin the Flying Keg
    .goto 422/870,3451.700,980.500
    .fp The Sunset Brewgarden>>Get The Sunset Brewgarden Flight Path
step
    .goto 422,54.94,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r
    .turnin 31107 >>Turn in Citizens of a New Empire
    .target Malik the Unscathed
    .isOnQuest 31107
step
    .goto 422,54.94,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r
    .turnin 31689 >>Turn in The Dreadsworn
    .target Malik the Unscathed
    .isOnQuest 31689
step
    .goto 422,55.02,35.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
    .turnin 31108 >>Turn in Concentrated Fear
    .target Ambersmith Zikk
    .isOnQuest 31108
step
    .goto 422,54.77,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .turnin 31066 >>Turn in A Cry From Darkness
    .target Kor'ik
    .isOnQuest 31066
step
    .goto 422,54.77,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .accept 31087 >>Accept Extending Our Coverage
    .target Kor'ik
    .isQuestTurnedIn 31066 --any of: A Cry From Darkness
    .xp <89,1
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .accept 31019 >>Accept Amber Is Life
    .target Kil'ruk the Wind-Reaver
    .isQuestTurnedIn 31066 --any of: A Cry From Darkness
    .xp <89,1
step
    .goto 422,46.32,53.00
    >>Activate the Resonating Beacon in Amberglow Hollow.
    .complete 31087,1 --Discover Amberglow Bunny
    .target Discover Amberglow Bunny
    .isOnQuest 31087
step
    .goto 422,48.10,49.74
    >>Kill |cRXP_ENEMY_Adjunct Zet'uk|r
    .complete 31087,2 --Adjunct Zet'uk slain (1)
    .mob Adjunct Zet'uk
    .isOnQuest 31087
step
    .goto 422,48.16,49.71
    >>Click the |cRXP_PICK_Silent Beacon|r
    .complete 31087,3 --Silent Beacon
    .isOnQuest 31087
step
    .goto 422,48.11,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .turnin 31087 >>Turn in Extending Our Coverage
    .target Kor'ik
    .isOnQuest 31087
step
    .goto 422,48.11,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .accept 31088 >>Accept Crime and Punishment
    .accept 31090 >>Accept Better With Age
    .target Kor'ik
    .isQuestTurnedIn 31087 --any of: Extending Our Coverage
    .xp <89,1
step
    #loop
    .goto 422,41.50,52.40,0
    .goto 422,41.50,52.40,40,0
    .goto 422,39.60,52.00,40,0
    .goto 422,34.50,51.30,40,0
    >>Loot the |cRXP_PICK_Amber Collectors|r for |cRXP_LOOT_Amber-Filled Jar|r
    .complete 31090,1 --Amber-Filled Jar (7)
    .isOnQuest 31090
step
    #loop
    .goto 422,42.60,50.40,0
    .goto 422,42.60,50.40,40,0
    .goto 422,45.20,53.20,40,0
    >>Kill |cRXP_ENEMY_Ik'thik Harvesters|r
    .complete 31088,1 --Ik'thik Harvester slain (8)
    .mob Ik'thik Harvester
    .isOnQuest 31088
step
    .goto 422,48.11,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .turnin 31088 >>Turn in Crime and Punishment
    .target Kor'ik
    .isOnQuest 31088
step
    .goto 422,48.11,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .turnin 31090 >>Turn in Better With Age
    .target Kor'ik
    .isOnQuest 31090
step
    .goto 422,48.11,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
    .accept 31089 >>Accept By the Sea, Nevermore
    .target Kor'ik
    .isQuestTurnedIn 31088 --Crime and Punishment
    .isQuestTurnedIn 31090 --Better With Age
    .xp <89,1
step
    .goto 422,43.30,63.49
    >>Click the |cRXP_PICK_Ocean-Worn Rocks|r
    .complete 31089,1 --Ocean-Worn Rocks
    .isOnQuest 31089
step
    .goto 422,43.40,63.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31089 >>Turn in By the Sea, Nevermore
    .target Kaz'tik the Manipulator
    .isOnQuest 31089
step
    .goto 422,43.40,63.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .accept 31091 >>Accept Reunited
    .target Kaz'tik the Manipulator
    .isQuestTurnedIn 31089,31682 --any of: By the Sea, Nevermore, By the Sea, Nevermore
    .xp <89,1
step
    .goto 422,41.34,71.29
    >>Click the |cRXP_PICK_Undisturbed Soil|r
    .complete 31091,1 --Undisturbed Soil
    .isOnQuest 31091
step
    .goto 422,41.34,71.29
    >>Kill |cRXP_ENEMY_Kovok|r
    .complete 31091,2 --Kovok (1)
    .mob Kovok
    .isOnQuest 31091
step
    .goto 422,41.77,72.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31091 >>Turn in Reunited
    .target Kaz'tik the Manipulator
    .isOnQuest 31091
step
    .goto 422,41.77,72.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .accept 31092 >>Accept Feed or Be Eaten
    .accept 31359 >>Accept The Kunchong Whisperer
    .target Kaz'tik the Manipulator
    .isQuestTurnedIn 31091 --any of: Reunited
    .xp <89,1
step
    .goto 422,41.71,70.60
    >>Kill |cRXP_ENEMY_Brineshell Snapper|r and loot |cRXP_LOOT_Succulent Turtle Filet|r
    .collect 86489,1,31092,1 --Succulent Turtle Filet (1)
    .mob Brineshell Snapper
    .isOnQuest 31092
step
    .goto 422,41.80,63.80
    >>Kill |cRXP_ENEMY_Oracle Hiss'ir|r
    .complete 31359,1 --Oracle Hiss'ir slain (1)
    .mob Oracle Hiss'ir
    .isOnQuest 31359
step
    .goto 422,41.87,63.71
    >>Click the |cRXP_PICK_Glowing Amber|r
    .accept 31398 >>Accept Falling to Pieces
    .isQuestTurnedIn 31091 --any of: Reunited
    .xp <89,1
step
    .goto 422,41.77,72.03
    >>Interact with |cRXP_FRIENDLY_Young Kunchong|r
    .complete 31092,1 --Young Kunchong
    .isOnQuest 31092
step
    #loop
    .goto 422,36.40,62.20,0
    .goto 422,36.40,62.20,40,0
    .goto 422,37.50,57.98,40,0
    .goto 422,41.65,58.26,40,0
    >>Kill |cRXP_ENEMY_Muckscale Rippers|r, |cRXP_ENEMY_Muckscale Flesh-Hunters|r, |cRXP_ENEMY_Muckscale Slayers|r and |cRXP_ENEMY_Muckscale Serpentus|r
    .complete 31359,2 --Muckscale Ripper (8)
    .mob Muckscale Ripper
    .mob Muckscale Flesh-Hunter
    .mob Muckscale Slayer
    .mob Muckscale Serpentus
    .isOnQuest 31359
step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31092 >>Turn in Feed or Be Eaten
    .target Kaz'tik the Manipulator
    .isOnQuest 31092
step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31359 >>Turn in The Kunchong Whisperer
    .target Kaz'tik the Manipulator
    .isOnQuest 31359
step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31398 >>Turn in Falling to Pieces
    .target Kaz'tik the Manipulator
    .isOnQuest 31398
step
    #completewith Drop31023x1
    >>|cRXP_LOOT_Strange Relic|r can drop from |cRXP_ENEMY_Mistblade Ripper|r, |cRXP_ENEMY_Ik'thik Egg-Drone|r. Use it to start the quest if you get one
    .collect 82870,1,31023 --Strange Relic (1)
    .accept 31023 >>Accept Relics of the Swarm
    .use 82870
step
    .goto 422,66.42,66.12
    >>Kill |cRXP_ENEMY_Mistblade Scale-Lord|r
    .complete 31019,1 --Mistblade Scale-Lord slain (1)
    .mob Mistblade Scale-Lord
    .isOnQuest 31019
step
    #label Drop31023x1
    #loop
    .goto 422,66.59,63.38,0
    .goto 422,66.59,63.38,40,0
    .goto 422,64.67,63.67,40,0
    >>Kill |cRXP_ENEMY_Mistblade Scale-Lords|r and |cRXP_ENEMY_Mistblade Rippers|r
    .complete 31019,2 --Mistblade Scale-Lord (8)
    .mob Mistblade Scale-Lord
    .mob Mistblade Ripper
    .isOnQuest 31019
step
    .goto 422,66.88,65.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Amber Chunk|r
    .turnin 31019 >>Turn in Amber Is Life
    .target Ancient Amber Chunk
    .isOnQuest 31019
step
    .goto 422,66.76,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31021 >>Accept Living Amber
    .accept 31020 >>Accept Feeding the Beast
    .target Korven the Prime
    .isQuestTurnedIn 31019 --any of: Amber Is Life
    .xp <89,1
step
    #loop
    .goto 422,65.97,60.03,0
    .goto 422,65.97,60.03,40,0
    .goto 422,64.61,58.54,40,0
    >>Open the |cRXP_PICK_Amber Fragment|r. Loot it for |cRXP_LOOT_Living Amber|r
    .collect 82864,1,31021,1 --Living Amber (1)
    .isOnQuest 31021
step
    .goto 422,66.76,65.29
    >>Interact with |cRXP_FRIENDLY_Korven the Prime|r
    .complete 31021,1 --Korven the Prime
    .target Korven the Prime
    .isOnQuest 31021
step
    #loop
    .goto 422,65.47,61.00,0
    .goto 422,65.47,61.00,40,0
    .goto 422,63.70,57.29,40,0
    >>Kill |cRXP_ENEMY_Coldbite Crocolisks|r
    .complete 31020,1 --Coldbite Crocolisk slain (8)
    .mob Coldbite Crocolisk
    .isOnQuest 31020
step
    #loop
    .goto 422,64.69,56.71,0
    .goto 422,64.69,56.71,40,0
    .goto 422,62.70,58.08,40,0
    >>Pick up |cRXP_PICK_Mantid Relic|r from the ground
    .complete 31023,1 --Mantid Relic (8)
step
    .goto 422,66.76,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31020 >>Turn in Feeding the Beast
    .target Korven the Prime
    .isOnQuest 31020
step
    .goto 422,66.76,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31021 >>Turn in Living Amber
    .target Korven the Prime
    .isOnQuest 31021
step
    .goto 422,66.76,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31022 >>Accept Kypari Zar
    .target Korven the Prime
    .isQuestTurnedIn 31020 --Feeding the Beast
    .isQuestTurnedIn 31021 --Living Amber
    .xp <89,1
step
    .goto 422,59.79,59.49
    >>Click the |cRXP_PICK_Sonar Tower|r
    .complete 31022,1 --Sonar Tower
    .isOnQuest 31022
step
    .goto 422,59.93,59.43
    >>Korven the Prime defeneded
    .complete 31022,2 --Korven the Prime defeneded
    .isOnQuest 31022
step
    .goto 422,66.76,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31022 >>Turn in Kypari Zar
    .target Korven the Prime
    .isOnQuest 31022
step
    .goto 422,66.76,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31026 >>Accept The Root of the Problem
    .target Korven the Prime
    .isQuestTurnedIn 31022 --any of: Kypari Zar
    .xp <89,1
step
    .goto 422,57.35,57.77
    >>Kill |cRXP_ENEMY_Coldbite Matriarch|r
    .complete 31026,1 --Coldbite Matriarch slain (1)
    .mob Coldbite Matriarch
    .isOnQuest 31026
step
    .goto 422,66.76,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31026 >>Turn in The Root of the Problem
    .target Korven the Prime
    .isOnQuest 31026
step
    .goto 422,55.02,35.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
    .turnin 31023 >>Turn in Relics of the Swarm
    .target Ambersmith Zikk
    .isOnQuest 31023
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31067 >>Accept The Heavens Hum With War
    .unitscan Sapmaster Vu
    .isQuestTurnedIn 31066 --any of: A Cry From Darkness
    .xp <89,1
step
    .goto 422,53.08,12.36
    >>Click the |cRXP_PICK_Scroll of Auspice|r
    .accept 31068 >>Accept Sacred Recipe
    .isQuestTurnedIn 31066 --any of: A Cry From Darkness
    .xp <89,1
step
    .goto 422,52.70,10.14
    >>Kill |cRXP_ENEMY_Azzix K'tai|r
    .complete 31067,1 --Azzix K'tai slain (1)
    .mob Azzix K'tai
    .isOnQuest 31067
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31068 >>Turn in Sacred Recipe
    .unitscan Lya of Ten Songs
    .isOnQuest 31068
step
    .goto 422,50.45,12.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31076 >>Accept Fate of the Stormstouts
    .unitscan Chen Stormstout
    .isQuestTurnedIn 31068 --any of: Sacred Recipe
    .xp <89,1
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31067 >>Turn in The Heavens Hum With War
    .unitscan Sapmaster Vu
    .isOnQuest 31067
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31069 >>Accept Bound With Shade
    .unitscan Sapmaster Vu
    .isQuestTurnedIn 31067 --The Heavens Hum With War
    .isQuestTurnedIn 31068 --Sacred Recipe
    .xp <89,1
step
    .goto 422,38.20,17.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31070 >>Accept Daggers of the Great Ones
    .unitscan Olon
    .isQuestTurnedIn 31068 --any of: Sacred Recipe
    .xp <89,1
step
    .goto 422,51.14,11.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thirsty Missho|r
    .accept 31071 >>Accept I Bring Us Great Shame
    .target Thirsty Missho
    .isQuestTurnedIn 31068 --any of: Sacred Recipe
    .xp <89,1
step
    .goto 422,50.90,11.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Dan Stormstout|r
    .complete 31076,3 --Big Dan Stormstout
    .target Big Dan Stormstout
    .isOnQuest 31076
step
    .goto 422,50.22,12.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
    .complete 31076,1 --Sapmaster Vu
    .target Sapmaster Vu
    .isOnQuest 31076
step
    .goto 422,50.28,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
    .complete 31076,2 --Lya of Ten Songs
    .target Lya of Ten Songs
    .isOnQuest 31076
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31072 >>Accept Rending Daggers
    .unitscan Lya of Ten Songs
    .isQuestTurnedIn 31068 --any of: Sacred Recipe
    .xp <89,1
step
    .goto 422,50.45,12.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31076 >>Turn in Fate of the Stormstouts
    .unitscan Chen Stormstout
    .isOnQuest 31076
step
    .goto 422,51.71,19.07
    >>Open the |cRXP_PICK_Lost Mug|r. Loot it for |cRXP_LOOT_Lost Mugs|r
    .complete 31071,1 --Lost Mugs (1)
    .isOnQuest 31071
step
    .goto 422,50.82,21.04
    >>Kill |cRXP_ENEMY_Ilikkax|r and loot |cRXP_LOOT_Blade of Ilikkax|r
    .complete 31072,2 --Blade of Ilikkax (1)
    .mob Ilikkax
    .isOnQuest 31072
step
    .goto 422,53.10,20.19
    >>Kill |cRXP_ENEMY_Kz'Kzik|r and loot |cRXP_LOOT_Blade of Kz'Kzik|r
    .complete 31072,1 --Blade of Kz'Kzik (1)
    .mob Kz'Kzik
    .isOnQuest 31072
step
    .goto 422,54.11,20.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31077 >>Accept Evie Stormstout
    .unitscan Chen Stormstout
    .isQuestTurnedIn 31076,31129 --any of: Fate of the Stormstouts, Fate of the Stormstouts
    .xp <89,1
step
    .goto 422,54.42,20.33
    >>Pick up |cRXP_PICK_Lost Keg|r from the ground
    .complete 31071,2 --Lost Keg (1)
    .isOnQuest 31071
step
    .goto 422,56.02,19.44
    >>Pick up |cRXP_PICK_Lost Picnic Supplies|r from the ground
    .complete 31071,3 --Lost Picnic Supplies (1)
    .isOnQuest 31071
step
    #loop
    .goto 422,57.88,20.46,0
    .goto 422,57.88,20.46,40,0
    .goto 422,54.20,18.20,40,0
    .goto 422,51.60,19.00,40,0
    >>Kill |cRXP_ENEMY_Dread Lurkers|r and |cRXP_ENEMY_Nagging Dreadlings|r
    .complete 31069,1 --Dread Lurker (8)
    .mob Dread Lurker
    .mob Nagging Dreadling
    .isOnQuest 31069
step
    #loop
    .goto 422,51.40,16.20,0
    .goto 422,51.40,16.20,40,0
    .goto 422,49.80,17.60,40,0
    .goto 422,47.80,20.60,40,0
    >>Kill |cRXP_ENEMY_Frightened Mushan|r and loot |cRXP_LOOT_Large Mushan Tooth|r
    .complete 31070,1 --Large Mushan Tooth (1)
    .mob Frightened Mushan
    .isOnQuest 31070
step
    .goto 422,50.18,10.20
    >>Meet Chen Stormstout at The Sunset Brewgarden, then listen to his eulogy.
    .complete 31077,1 --Chen Stormstout
    .target Chen Stormstout
    .isOnQuest 31077
step
    .goto 422,50.22,10.14
    >>Click the |cRXP_PICK_Evie Stormstout|r
    .complete 31077,2 --Evie Stormstout
    .isOnQuest 31077
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31072 >>Turn in Rending Daggers
    .unitscan Lya of Ten Songs
    .isOnQuest 31072
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31074 >>Accept Wood and Shade
    .unitscan Lya of Ten Songs
    .isQuestTurnedIn 31072 --any of: Rending Daggers
    .xp <89,1
step
    .goto 422,51.14,11.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thirsty Missho|r
    .turnin 31071 >>Turn in I Bring Us Great Shame
    .target Thirsty Missho
    .isOnQuest 31071
step
    .goto 422,38.20,17.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31070 >>Turn in Daggers of the Great Ones
    .unitscan Olon
    .isOnQuest 31070
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31069 >>Turn in Bound With Shade
    .unitscan Sapmaster Vu
    .isOnQuest 31069
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31073 >>Accept Bound With Wood
    .unitscan Sapmaster Vu
    .isQuestTurnedIn 31069 --Bound With Shade
    .isQuestTurnedIn 31070 --Daggers of the Great Ones
    .xp <89,1
step
    .goto 422,54.11,20.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31077 >>Turn in Evie Stormstout
    .unitscan Chen Stormstout
    .isOnQuest 31077
step
    .goto 422,54.11,20.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31078 >>Accept Han Stormstout
    .unitscan Chen Stormstout
    .isQuestTurnedIn 31077 --any of: Evie Stormstout
    .xp <89,1
step
    .goto 422,50.19,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Defender Azzo|r
    .accept 31133 >>Accept Kor'thik Aggression
    .target Defender Azzo
    .isQuestTurnedIn 31070 --any of: Daggers of the Great Ones
    .xp <89,1
step
    .goto 422,43.77,16.74
    >>Interact with |cRXP_FRIENDLY_Han Stormstout|r
    .complete 31078,1 --Han Stormstout
    .target Han Stormstout
    .isOnQuest 31078
step
    .goto 422,50.45,12.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chen Stormstout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31078 >>Turn in Han Stormstout
    .unitscan Chen Stormstout
    .isOnQuest 31078
step
    #loop
    .goto 422,43.88,16.22,0
    .goto 422,43.88,16.22,40,0
    .goto 422,45.68,17.99,40,0
    >>Kill |cRXP_ENEMY_Kor'thik Havocs|r, |cRXP_ENEMY_Kor'thik Battlesingers|r and |cRXP_ENEMY_Kor'thik Chitinels|r
    .complete 31133,1 --Kor'thik Havoc (8)
    .mob Kor'thik Havoc
    .mob Kor'thik Battlesinger
    .mob Kor'thik Chitinel
    .isOnQuest 31133
step
    .goto 422,44.50,16.83
    >>Click the |cRXP_PICK_Mark of the Empress|r
    .complete 31074,1 --Mark of the Empress
    .isOnQuest 31074
step
    .goto 422,42.93,15.10
    >>Click the |cRXP_PICK_Heartroot of Kypari Kor|r
    .complete 31074,2 --Heartroot of Kypari Kor
    .isOnQuest 31074
step
    #loop
    .goto 422,43.43,11.71,0
    .goto 422,43.43,11.71,40,0
    .goto 422,46.27,16.60,40,0
    .goto 422,47.77,10.13,40,0
    >>Kill |cRXP_ENEMY_Withered Husk|r and loot |cRXP_LOOT_Fragrant Corewood|r
    .complete 31073,1 --Fragrant Corewood (1)
    .mob Withered Husk
    .isOnQuest 31073
step
    .goto 422,50.19,12.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Defender Azzo|r
    .turnin 31133 >>Turn in Kor'thik Aggression
    .target Defender Azzo
    .isOnQuest 31133
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31074 >>Turn in Wood and Shade
    .unitscan Lya of Ten Songs
    .isOnQuest 31074
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31073 >>Turn in Bound With Wood
    .unitscan Sapmaster Vu
    .isOnQuest 31073
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31075 >>Accept Sunset Kings
    .unitscan Sapmaster Vu
    .isQuestTurnedIn 31071 --I Bring Us Great Shame
    .isQuestTurnedIn 31073 --Bound With Wood
    .isQuestTurnedIn 31074 --Wood and Shade
    .isQuestTurnedIn 31078 --Han Stormstout
    .xp <89,1
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31075 >>Turn in Sunset Kings
    .unitscan Sapmaster Vu
    .isOnQuest 31075
step
    .goto 422,38.20,17.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31080 >>Accept Fiery Wings
    .unitscan Olon
    .isQuestTurnedIn 31075 --any of: Sunset Kings
    .xp <89,1
step
    .goto 422,38.16,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boggeo|r
    .accept 31079 >>Accept The Horror Comes A-Rising
    .target Boggeo
    .isQuestTurnedIn 31075 --any of: Sunset Kings
    .xp <89,1
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31081 >>Accept Incantations Fae and Primal
    .unitscan Lya of Ten Songs
    .isQuestTurnedIn 31075 --any of: Sunset Kings
    .xp <89,1
step
    .goto 422,38.65,17.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
    .accept 31082 >>Accept Great Vessel of Salvation
    .target Chief Rikkitun
    .isQuestTurnedIn 31075 --any of: Sunset Kings
    .xp <89,1
step
    .goto 422,33.25,18.88
    >>Kill |cRXP_ENEMY_Mygoness|r
    .complete 31081,2 --Mygoness slain (1)
    .mob Mygoness
    .isOnQuest 31081
step
    .goto 422,32.20,17.60
    >>Kill |cRXP_ENEMY_Ahgunoss|r
    .complete 31081,1 --Ahgunoss slain (1)
    .mob Ahgunoss
    .isOnQuest 31081
step
    #loop
    .goto 422,35.56,22.87,0
    .goto 422,35.56,22.87,40,0
    .goto 422,38.41,24.45,40,0
    .goto 422,38.67,19.77,40,0
    >>Kill |cRXP_ENEMY_Rikkilea Flitterling|r and loot |cRXP_LOOT_Flitterling Dust|r
    .complete 31080,1 --Flitterling Dust (1)
    .mob Rikkilea Flitterling
    .isOnQuest 31080
step
    #loop
    .goto 422,37.13,20.49,0
    .goto 422,37.13,20.49,40,0
    .goto 422,37.34,14.91,40,0
    >>Interact with |cRXP_FRIENDLY_Motherseeds|r
    .complete 31082,1 --Motherseed (3)
    .target Motherseed
    .isOnQuest 31082
step
    #loop
    .goto 422,34.44,20.89,0
    .goto 422,34.44,20.89,40,0
    .goto 422,35.62,22.12,40,0
    >>Kill |cRXP_ENEMY_Shuffling Mistlurkers|r
    .complete 31079,1 --Shuffling Mistlurker slain (7)
    .mob Shuffling Mistlurker
    .isOnQuest 31079
step
    .goto 422,33.27,23.05
    >>Kill |cRXP_ENEMY_Kyparites|r
    .complete 31079,2 --Kyparite slain (2)
    .mob Kyparite
    .isOnQuest 31079
step
    .goto 422,38.16,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boggeo|r
    .turnin 31079 >>Turn in The Horror Comes A-Rising
    .target Boggeo
    .isOnQuest 31079
step
    .goto 422,38.20,17.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31080 >>Turn in Fiery Wings
    .unitscan Olon
    .isOnQuest 31080
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31081 >>Turn in Incantations Fae and Primal
    .unitscan Lya of Ten Songs
    .isOnQuest 31081
step
    .goto 422,38.65,17.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
    .turnin 31082 >>Turn in Great Vessel of Salvation
    .target Chief Rikkitun
    .isOnQuest 31082
step
    .goto 422,38.65,17.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
    .accept 31084 >>Accept Bind the Glamour
    .target Chief Rikkitun
    .isQuestTurnedIn 31079 --The Horror Comes A-Rising
    .isQuestTurnedIn 31080 --Fiery Wings
    .isQuestTurnedIn 31081 --Incantations Fae and Primal
    .isQuestTurnedIn 31082 --Great Vessel of Salvation
    .xp <89,1
step
    .goto 422,39.42,23.15
    >>Allow Chief Rikkitun to enchant the forked blade
    .complete 31084,1 --Allow Chief Rikkitun to enchant the forked blade
    .isOnQuest 31084
step
    .goto 422,38.65,17.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
    .turnin 31084 >>Turn in Bind the Glamour
    .target Chief Rikkitun
    .isOnQuest 31084
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31085 >>Accept Fires and Fears of Old
    .unitscan Lya of Ten Songs
    .isQuestTurnedIn 31084 --any of: Bind the Glamour
    .xp <89,1
step
    #loop
    .goto 422,38.18,17.18,0
    .goto 422,38.18,17.18,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,51.21,11.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31086 >>Accept Blood of Ancients
    .unitscan Sapmaster Vu
    .isQuestTurnedIn 31084 --any of: Bind the Glamour
    .xp <89,1
step
    .goto 422,30.22,30.58
    >>Open the |cRXP_PICK_Solidified Amber|r. Loot it for |cRXP_LOOT_Chunk of Solidified Amber|r
    .complete 31086,1 --Chunk of Solidified Amber (1)
    .isOnQuest 31086
step
    .goto 422,32.67,33.88
    >>Interact with |cRXP_FRIENDLY_Iyyokuk the Lucid|r
    .complete 31085,1 --Iyyokuk the Lucid
    .target Iyyokuk the Lucid
    .isOnQuest 31085
step
    .goto 422,33.22,34.34
    >>Kill |cRXP_ENEMY_Adjunct Okzyks|r, |cRXP_ENEMY_Adjunct G'kkals|r and |cRXP_ENEMY_Adjunct Pivvikas|r
    .complete 31085,2 --Adjunct Okzyk (8)
    .mob Adjunct Okzyk
    .mob Adjunct G'kkal
    .mob Adjunct Pivvika
    .isOnQuest 31085
step
    .goto 422,44.41,16.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31176 >>Accept A Strange Appetite
    .accept 31177 >>Accept Fine Dining
    .accept 31178 >>Accept A Bloody Delight
    .unitscan Skeer the Bloodseeker
    .isQuestTurnedIn 31175 --any of: Skeer the Bloodseeker
    .xp <89,1
step
    #loop
    .goto 422,27.55,60.63,0
    .goto 422,27.55,60.63,40,0
    .goto 422,25.49,62.00,40,0
    >>Kill |cRXP_ENEMY_Briny Clackers|r. Loot them for |cRXP_LOOT_Clacker Tail|r
    .complete 31177,1 --Clacker Tail (8)
    .mob Briny Clacker
    .isOnQuest 31177
step
    #loop
    .goto 422,26.73,62.50,0
    .goto 422,26.73,62.50,40,0
    .goto 422,27.74,60.02,40,0
    .goto 422,26.70,56.19,40,0
    >>Loot the |cRXP_PICK_Spiny Starfishes|r for |cRXP_LOOT_Starfish Meat|r
    .complete 31176,1 --Starfish Meat (12)
    .isOnQuest 31176
step
    #loop
    .goto 422,27.43,61.13,0
    .goto 422,27.43,61.13,40,0
    .goto 422,26.02,64.11,40,0
    >>Kill |cRXP_ENEMY_Dread Remoras|r. Loot them for |cRXP_LOOT_Volatile Blood|r
    .complete 31178,1 --Volatile Blood (100)
    .mob Dread Remora
    .isOnQuest 31178
step
    .goto 422,44.41,16.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31176 >>Turn in A Strange Appetite
    .unitscan Skeer the Bloodseeker
    .isOnQuest 31176
step
    .goto 422,44.41,16.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31177 >>Turn in Fine Dining
    .unitscan Skeer the Bloodseeker
    .isOnQuest 31177
step
    .goto 422,44.41,16.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31178 >>Turn in A Bloody Delight
    .unitscan Skeer the Bloodseeker
    .isOnQuest 31178
step
    .goto 422,44.41,16.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31179 >>Accept The Scent of Blood
    .unitscan Skeer the Bloodseeker
    .isQuestTurnedIn 31176 --A Strange Appetite
    .isQuestTurnedIn 31177 --Fine Dining
    .isQuestTurnedIn 31178 --A Bloody Delight
    .xp <89,1
step
    .goto 422,25.73,52.79
    >>Kill |cRXP_ENEMY_Muckscale Flesheaters|r
    .complete 31179,1 --Muckscale Flesheater slain (12)
    .mob Muckscale Flesheater
    .isOnQuest 31179
step
    .goto 422,25.73,52.79
    >>Kill |cRXP_ENEMY_Muckscale Serpentus|r
    .complete 31179,2 --Muckscale Serpentus slain (1)
    .mob Muckscale Serpentus
    .isOnQuest 31179
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31179 >>Turn in The Scent of Blood
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31179
step
    #loop
    .goto 422,51.21,11.39,0
    .goto 422,51.21,11.39,40,0
    .goto 422,50.22,12.10,40,0
    .goto 422,38.18,17.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31086 >>Turn in Blood of Ancients
    .unitscan Sapmaster Vu
    .isOnQuest 31086
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31085 >>Turn in Fires and Fears of Old
    .unitscan Lya of Ten Songs
    .isOnQuest 31085
step
    .goto 422,28.65,42.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31211 >>Accept The Poisoned Mind
    .unitscan Xaril the Poisoned Mind
    .isQuestTurnedIn 31208 --Venomous Intent
    .isQuestTurnedIn 31209 --Dark Wings, Dark Things
    .isQuestTurnedIn 31210 --A Shade of Dread
    .xp <89,1
step
    .goto 422,54.92,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r
    .complete 31211,1 --Xaril the Poisoned Mind
    .target Xaril the Poisoned Mind
    .isOnQuest 31211
step
    #loop
    .goto 422,62.80,12.60,0
    .goto 422,62.80,12.60,40,0
    .goto 422,64.80,12.40,40,0
    >>Kill |cRXP_ENEMY_Krik'thik Wingleaders|r, |cRXP_ENEMY_Ik'thik Warriors|r, |cRXP_ENEMY_Ik'thik Slayers|r and |cRXP_ENEMY_Krik'thik Wingguards|r
    .complete 31211,2 --Krik'thik Wingleader (8)
    .mob Krik'thik Wingleader
    .mob Ik'thik Warrior
    .mob Ik'thik Slayer
    .mob Krik'thik Wingguard
    .isOnQuest 31211
step
    .goto 422,64.00,12.40
    >>Kill |cRXP_ENEMY_Ik'thik Kunchongs|r, |cRXP_ENEMY_Dread Behemoths|r and |cRXP_ENEMY_Krik'thik Battletanks|r
    .complete 31211,3 --Ik'thik Kunchong (3)
    .mob Ik'thik Kunchong
    .mob Dread Behemoth
    .mob Krik'thik Battletank
    .isOnQuest 31211
step
    .goto 422,28.65,42.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xaril the Poisoned Mind|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31211 >>Turn in The Poisoned Mind
    .unitscan Xaril the Poisoned Mind
    .isOnQuest 31211
step
    .goto 422,55.02,35.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
    .accept 31609 >>Accept The Wrath of Shek'zeer
    .target Ambersmith Zikk
    .isQuestTurnedIn 31959 --any of: The Empress' Gambit
    .xp <89,1
step
    .goto 422,44.60,34.80
    >>Kill |cRXP_ENEMY_Akkolon|r
    .complete 31609,1 --Akkolon slain (1)
    .mob Akkolon
    .isOnQuest 31609
step
    .goto 422,41.40,39.80
    >>Kill |cRXP_ENEMY_Shox'tik|r
    .complete 31609,2 --Shox'tik slain (1)
    .mob Shox'tik
    .isOnQuest 31609
step
    .goto 422,43.80,29.60
    >>Kill |cRXP_ENEMY_Manifestation of Terror|r
    .complete 31609,3 --Manifestation of Terror slain (1)
    .mob Manifestation of Terror
    .isOnQuest 31609
step
    #loop
    .goto 422,42.00,35.40,0
    .goto 422,42.00,35.40,40,0
    .goto 422,43.00,37.40,40,0
    >>Kill |cRXP_ENEMY_Krik'thik Subjugates|r, |cRXP_ENEMY_Zan'thik Subjugates|r and |cRXP_ENEMY_Sra'thik Subjugates|r
    .complete 31609,4 --Krik'thik Subjugate (25)
    .mob Krik'thik Subjugate
    .mob Zan'thik Subjugate
    .mob Sra'thik Subjugate
    .isOnQuest 31609
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31609 >>Turn in The Wrath of Shek'zeer
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31609
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .accept 31612 >>Accept Shadow of the Empire
    .target Kil'ruk the Wind-Reaver
    .isQuestTurnedIn 31609 --any of: The Wrath of Shek'zeer
    .xp <89,1
step
    .goto 422,54.98,34.05
    >>Kill |cRXP_ENEMY_Kil'ruk the Wind-Reavers|r
    .complete 31612,1 --Kil'ruk the Wind-Reaver (8)
    .mob Kil'ruk the Wind-Reaver
    .isOnQuest 31612
step
    .goto 422,54.98,34.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .turnin 31612 >>Turn in Shadow of the Empire
    .target Kil'ruk the Wind-Reaver
    .isOnQuest 31612
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31265 >>Accept Mazu's Breath
    .unitscan Deck Boss Arie
    .isQuestTurnedIn 31066 --any of: A Cry From Darkness
    .xp <89,1
step
    .goto 422,54.79,72.15
    >>Drink the Potion of Mazu's Breath
    .complete 31265,1 --Drink the Potion of Mazu's Breath
    .isOnQuest 31265
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31265 >>Turn in Mazu's Breath
    .unitscan Deck Boss Arie
    .isOnQuest 31265
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31181 >>Accept Fresh Pots
    .accept 31182 >>Accept You Otter Know
    .unitscan Deck Boss Arie
    .isQuestTurnedIn 31265 --any of: Mazu's Breath
    .xp <89,1
step
    #loop
    .goto 422,57.20,81.20,0
    .goto 422,57.20,81.20,40,0
    .goto 422,60.60,80.80,40,0
    .goto 422,60.60,84.40,40,0
    >>Kill |cRXP_ENEMY_Sea Monarch|r and loot |cRXP_LOOT_Sea Monarch Chunks|r
    .collect 85230,1,31181,1 --Sea Monarch Chunks (1)
    .mob Sea Monarch
    .isOnQuest 31181
step
    #loop
    .goto 422,58.91,82.32,0
    .goto 422,58.91,82.32,40,0
    .goto 422,61.18,82.90,40,0
    >>Click the |cRXP_PICK_Empty Crab Pot|r
    .complete 31181,1 --Empty Crab Pot
    .isOnQuest 31181
step
    #loop
    .goto 422,60.80,80.40,0
    .goto 422,60.80,80.40,40,0
    .goto 422,57.80,81.80,40,0
    >>Interact with |cRXP_FRIENDLY_Coldwhisker Otters|r
    .complete 31182,1 --Coldwhisker Otter (8)
    .target Coldwhisker Otter
    .isOnQuest 31182
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31181 >>Turn in Fresh Pots
    .unitscan Deck Boss Arie
    .isOnQuest 31181
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31182 >>Turn in You Otter Know
    .unitscan Deck Boss Arie
    .isOnQuest 31182
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31183 >>Accept Meet the Cap'n
    .unitscan Deck Boss Arie
    .isQuestTurnedIn 31181 --Fresh Pots
    .isQuestTurnedIn 31182 --You Otter Know
    .xp <89,1
step
    .goto 422,55.66,72.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31183 >>Turn in Meet the Cap'n
    .unitscan Captain "Soggy" Su-Dao
    .isOnQuest 31183
step
    .goto 422,55.66,72.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31185 >>Accept Walking Dog
    .accept 31184 >>Accept Old Age and Treachery
    .unitscan Captain "Soggy" Su-Dao
    .isQuestTurnedIn 31183 --any of: Meet the Cap'n
    .xp <89,1
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31187 >>Accept On the Crab
    .accept 31188 >>Accept Shark Week
    .unitscan Deck Boss Arie
    .isQuestTurnedIn 31183 --any of: Meet the Cap'n
    .xp <89,1
step
    .goto 422,44.66,78.66
    >>Take Dog to visit the hot geysers, the whale corpse, and the wreck of the Mist-Hopper on the Shelf of Mazu.
    .complete 31185,2 --Shipwreck Kill Credit
    .target Shipwreck Kill Credit
    .isOnQuest 31185
step
    .goto 422,44.70,78.60
    >>Open the |cRXP_PICK_Soggy's Footlocker|r. Loot it for |cRXP_LOOT_Sealed Charter Tube|r
    .complete 31184,1 --Sealed Charter Tube (1)
    .isOnQuest 31184
step
    .goto 422,46.42,73.94
    >>Take Dog to visit the hot geysers, the whale corpse, and the wreck of the Mist-Hopper on the Shelf of Mazu.
    .complete 31185,1 --Silt Vents Kill Credit
    .target Silt Vents Kill Credit
    .isOnQuest 31185
step
    .goto 422,40.01,78.89
    >>Take Dog to visit the hot geysers, the whale corpse, and the wreck of the Mist-Hopper on the Shelf of Mazu.
    .complete 31185,3 --Whale Corpse Kill Credit
    .target Whale Corpse Kill Credit
    .isOnQuest 31185
step
    #loop
    .goto 422,45.40,75.60,0
    .goto 422,45.40,75.60,40,0
    .goto 422,45.00,71.20,40,0
    .goto 422,47.60,73.00,40,0
    .goto 422,46.00,80.60,40,0
    >>Kill |cRXP_ENEMY_Longfin Thresher|r and loot |cRXP_LOOT_Thresher Jaw|r
    .collect 85998,1,31188,1 --Thresher Jaw (1)
    .mob Longfin Thresher
    .isOnQuest 31188
step
    #loop
    .goto 422,47.90,75.10,0
    .goto 422,47.90,75.10,40,0
    .goto 422,47.55,70.64,40,0
    >>Click the |cRXP_PICK_Full Crab Pot|r
    .complete 31187,1 --Full Crab Pot
    .isOnQuest 31187
step
    .goto 422,55.66,72.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31184 >>Turn in Old Age and Treachery
    .unitscan Captain "Soggy" Su-Dao
    .isOnQuest 31184
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31187 >>Turn in On the Crab
    .unitscan Deck Boss Arie
    .isOnQuest 31187
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31189 >>Accept Reeltime Strategy
    .unitscan Deck Boss Arie
    .isQuestTurnedIn 31184 --Old Age and Treachery
    .isQuestTurnedIn 31187 --On the Crab
    .isQuestTurnedIn 31188 --Shark Week
    .xp <89,1
step
    .goto 422,53.64,76.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Angler Ju Lien|r
    .complete 31189,1 --Master Angler Ju Lien
    .target Master Angler Ju Lien
    .isOnQuest 31189
step
    .goto 422,56.57,75.82
    >>Assist Master Angler Ju Lien in Soggy's Gamble.
    .complete 31189,2 --Help Ju Lien Kill Credit (1)
    .isOnQuest 31189
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31189 >>Turn in Reeltime Strategy
    .unitscan Deck Boss Arie
    .isOnQuest 31189
step
    .goto 422,55.66,72.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31185 >>Turn in Walking Dog
    .unitscan Captain "Soggy" Su-Dao
    .isOnQuest 31185
step
    .goto 422,55.66,72.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31190 >>Accept The Mariner's Revenge
    .unitscan Captain "Soggy" Su-Dao
    .isQuestTurnedIn 31189 --any of: Reeltime Strategy
    .xp <89,1
step
    .goto 422,54.50,79.50
    >>Kill |cRXP_ENEMY_Jiao|r
    .complete 31190,4 --Jiao slain (1)
    .mob Jiao
    .isOnQuest 31190
step
    .goto 422,54.50,79.50
    >>Kill |cRXP_ENEMY_Jiao|r
    .complete 31190,2 --Jiao slain (1)
    .mob Jiao
    .isOnQuest 31190
step
    .goto 422,54.50,79.50
    >>Kill |cRXP_ENEMY_Jiao|r
    .complete 31190,1 --Jiao slain (1)
    .mob Jiao
    .isOnQuest 31190
step
    .goto 422,54.50,79.50
    >>Kill |cRXP_ENEMY_Jiao|r
    .complete 31190,3 --Jiao slain (1)
    .mob Jiao
    .isOnQuest 31190
step
    .goto 422,55.66,72.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31190 >>Turn in The Mariner's Revenge
    .unitscan Captain "Soggy" Su-Dao
    .isOnQuest 31190
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31354 >>Accept Mazu's Bounty
    .unitscan Deck Boss Arie
    .isQuestTurnedIn 31190 --any of: The Mariner's Revenge
    .xp <89,1
step
    .goto 422,56.57,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31188 >>Turn in Shark Week
    .unitscan Deck Boss Arie
    .isQuestComplete 31188
step
    .goto 422,53.64,76.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Angler Ju Lien|r
    .turnin 31354 >>Turn in Mazu's Bounty
    .target Master Angler Ju Lien
    .isOnQuest 31354
step
    .goto 422,50.73,11.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 32030 >>Accept Once in a Hundred Lifetimes
    .unitscan Lya of Ten Songs
    .isQuestTurnedIn 31066 --A Cry From Darkness
    .isQuestTurnedIn 31092 --Feed or Be Eaten
    .isQuestTurnedIn 31354 --Mazu's Bounty
    .isQuestTurnedIn 31359 --The Kunchong Whisperer
    .isQuestTurnedIn 31398 --Falling to Pieces
    .xp <87,1
step
    .hs >> Hearth to Klaxxi'vess
    .cooldown item,6948,>2,1
    .subzoneskip 6315
step
    .goto 422,54.71,34.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Ik|r
    .turnin 32030 >>Turn in Once in a Hundred Lifetimes
    .target Klaxxi'va Ik
    .isOnQuest 32030
step
    .goto 422,54.71,34.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Ik|r
    .accept 31782 >>Accept Overthrone
    .target Klaxxi'va Ik
    .isQuestTurnedIn 32030 --any of: Once in a Hundred Lifetimes
    .xp <87,1
step
    .goto 422,54.71,34.75
    >>Speak to Klaxxi'va Vor in Klaxxi'vess.
    .complete 31782,1 --Klaxxi'va Ik Finale Bunny (1)
    .isOnQuest 31782
step
    .goto 422,55.11,34.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Vor|r
    .turnin 31782 >>Turn in Overthrone
    .target Klaxxi'va Vor
    .isOnQuest 31782
step
    .xp 90 >> Grind to 90
    >>|cRXP_WARN_Queue for dungeons using the Group Finder tool and complete the quests inside|r
step
    +|cRXP_WARN_End of the Dread Wastes route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Vale of Eternal Blossoms|r: Dread Space
]])
