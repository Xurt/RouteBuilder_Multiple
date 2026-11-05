-- 84-84 Uldum: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Uldum.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 84-84 Uldum
--RouteBuilder:next
#next Zone Routes (Horde)\82-83 Deepholm;Zone Routes (Horde)\85-86 The Jade Forest: around Master Stone Fist

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 249,84.48,43.23
    >>Click the |cRXP_PICK_Antediluvean Chest|r
    .turnin 25069 >>Turn in The Secrets of Uldum
    .isOnQuest 25069
step
    .goto 249,84.48,43.23
    >>Click the |cRXP_PICK_Antediluvean Chest|r
    .accept 25070 >>Accept What Lies Within
step
    .goto 249,84.47,42.26
    >>Kill |cRXP_ENEMY_Antechamber Guardian|r
    .complete 25070,1 --Antechamber Guardian slain (1)
    .mob Antechamber Guardian
step
    .goto 249,84.48,43.23
    >>Click the |cRXP_PICK_Antediluvean Chest|r
    .turnin 25070 >>Turn in What Lies Within
    .accept 25107 >>Accept The Grand Tablet << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    .goto 249,59.73,71.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarrah|r
    .turnin 27003 >>Turn in Easy Money
    .target Adarrah
    .isQuestComplete 27003
step
    .goto 249,59.57,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .accept 27922 >>Accept Traitors!
    .target Prince Nadun
    .isQuestTurnedIn 27003 --any of: Easy Money
    .xp <83,1
step
    .goto 249,59.57,72.02
    >>Hide behind the Neferset Frond and Uncover the Neferset Secret.
    .complete 27922,1 --Betrayal Credit (1)
    .isOnQuest 27922
step
    .goto 249,59.57,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .turnin 27922 >>Turn in Traitors!
    .target Prince Nadun
    .isOnQuest 27922
step
    .goto 249,59.57,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .accept 27923 >>Accept Smoke in Their Eyes
    .accept 28105 >>Accept Kavem the Callous
    .target Prince Nadun
    .isQuestTurnedIn 27922 --any of: Traitors!
    .xp <83,1
step
    .goto 249,59.69,71.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .accept 27924 >>Accept Budd's Plan
    .target Budd
    .isQuestTurnedIn 27922 --any of: Traitors!
    .xp <83,1
step
    .goto 249,60.12,74.05
    >>Kill |cRXP_ENEMY_Kavem the Callous|r and loot |cRXP_LOOT_Neferset Key|r
    .complete 28105,1 --Neferset Key (1)
    .mob Kavem the Callous
    .isOnQuest 28105
step
    .goto 249,62.14,73.95
    >>Click the |cRXP_PICK_Bale of Hay|r
    .complete 27923,1 --Bale of Hay
    .isOnQuest 27923
step
    #loop
    .goto 249,60.88,73.35,0
    .goto 249,60.88,73.35,40,0
    .goto 249,60.88,69.39,40,0
    .goto 249,63.57,72.82,40,0
    >>Kill |cRXP_ENEMY_Neferset Sentinels|r and |cRXP_ENEMY_Neferset Denizens|r. Loot them for |cRXP_LOOT_Neferset Armor|r. It can also be picked up from |cRXP_PICK_Neferset Armor|r on the ground
    .complete 27924,1 --Neferset Armor (1)
    .mob Neferset Sentinel
    .mob Neferset Denizen
    .isOnQuest 27924
step
    .goto 249,59.69,71.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .turnin 27924 >>Turn in Budd's Plan
    .target Budd
    .isOnQuest 27924
step
    .goto 249,59.57,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .turnin 27923 >>Turn in Smoke in Their Eyes
    .target Prince Nadun
    .isOnQuest 27923
step
    .goto 249,59.57,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .turnin 28105 >>Turn in Kavem the Callous
    .target Prince Nadun
    .isOnQuest 28105
step
    .goto 249,59.57,72.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .accept 28112 >>Accept Escape From the Lost City
    .target Prince Nadun
    .isQuestTurnedIn 27923 --Smoke in Their Eyes
    .isQuestTurnedIn 27924 --Budd's Plan
    .isQuestTurnedIn 28105 --Kavem the Callous
    .xp <83,1
step
    .goto 249,54.90,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 28112 >>Turn in Escape From the Lost City
    .target King Phaoris
    .isOnQuest 28112
step
    .goto 249,54.90,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .accept 28134 >>Accept Impending Retribution
    .target King Phaoris
    .isQuestTurnedIn 28112 --any of: Escape From the Lost City
    .xp <83,1
step
    .goto 249,52.97,27.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Priest Asaris|r
    .complete 28134,2 --Sun Priest Asaris
    .target Sun Priest Asaris
    .isOnQuest 28134
step
    .goto 249,52.97,27.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Priest Asaris|r
    .accept 28141 >>Accept Relics of the Sun King
    .accept 28145 >>Accept Venomblood Antidote
    .target Sun Priest Asaris
    .isQuestTurnedIn 28112 --any of: Escape From the Lost City
    .xp <83,1
step
    #loop
    .goto 249,53.17,23.85,0
    .goto 249,53.17,23.85,40,0
    .goto 249,49.95,25.66,40,0
    .goto 249,47.76,22.43,40,0
    >>Interact with |cRXP_FRIENDLY_Venomblood Scorpids|r
    .complete 28145,1 --Venomblood Scorpid (8)
    .target Venomblood Scorpid
    .isOnQuest 28145
step
    #loop
    .goto 249,52.61,23.01,0
    .goto 249,52.61,23.01,40,0
    .goto 249,54.10,19.11,40,0
    .goto 249,50.46,26.42,40,0
    >>Kill |cRXP_ENEMY_Wastewander Outrider|r and loot |cRXP_LOOT_Relic of the Sun King|r
    .complete 28141,1 --Relic of the Sun King (1)
    .mob Wastewander Outrider
    .isOnQuest 28141
step
    .goto 249,52.97,27.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Priest Asaris|r
    .turnin 28141 >>Turn in Relics of the Sun King
    .target Sun Priest Asaris
    .isOnQuest 28141
step
    .goto 249,52.97,27.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Priest Asaris|r
    .turnin 28145 >>Turn in Venomblood Antidote
    .target Sun Priest Asaris
    .isOnQuest 28145
step
    .goto 249,52.97,27.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Priest Asaris|r
    .accept 28502 >>Accept The Bandit Warlord
    .target Sun Priest Asaris
    .isQuestTurnedIn 28141 --any of: Relics of the Sun King
    .xp <83,1
step
    .goto 249,45.67,16.22
    >>Kill |cRXP_ENEMY_Warlord Ihsenn|r
    .complete 28502,1 --Warlord Ihsenn slain (1)
    .mob Warlord Ihsenn
    .isOnQuest 28502
step
    .goto 249,52.97,27.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Priest Asaris|r
    .turnin 28502 >>Turn in The Bandit Warlord
    .target Sun Priest Asaris
    .isOnQuest 28502
step
    .goto 249,49.66,39.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asaq|r
    .complete 28134,3 --Asaq
    .target Asaq
    .isOnQuest 28134
step
    .goto 249,49.67,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mack|r
    .accept 27993 >>Accept Take it to 'Em!
    .target Mack
    .isQuestTurnedIn 28112 --any of: Escape From the Lost City
    .xp <83,1
step
    .goto 249,60.28,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomarch Teneth|r
    .complete 28134,1 --Nomarch Teneth
    .target Nomarch Teneth
    .isOnQuest 28134
step
    .goto 249,54.90,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 28134 >>Turn in Impending Retribution
    .target King Phaoris
    .isOnQuest 28134
step
    .goto 249,54.90,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .accept 28135 >>Accept Al'Akir's Vengeance
    .target King Phaoris
    .isQuestTurnedIn 28134 --any of: Impending Retribution
    .xp <83,1
step
    .goto 249,45.24,37.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .turnin 28135 >>Turn in Al'Akir's Vengeance
    .target Prince Nadun
    .isOnQuest 28135
step
    .goto 249,45.24,37.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .accept 27520 >>Accept Minions of Al'Akir
    .target Prince Nadun
    .isQuestTurnedIn 28135 --any of: Al'Akir's Vengeance
    .xp <83,1
step
    .goto 249,45.30,37.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Ammantep|r
    .accept 27519 >>Accept Under the Choking Sands
    .accept 27595 >>Accept The Prophet Hadassi
    .target General Ammantep
    .isQuestTurnedIn 28135 --any of: Al'Akir's Vengeance
    .xp <83,1
step
    .goto 249,40.00,40.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Hadassi|r
    .turnin 27595 >>Turn in The Prophet Hadassi
    .target Prophet Hadassi
    .isOnQuest 27595
step
    .goto 249,40.00,40.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Hadassi|r
    .accept 27602 >>Accept The Prophet's Dying Words
    .target Prophet Hadassi
    .isQuestTurnedIn 27595 --any of: The Prophet Hadassi
    .xp <83,1
step
    .goto 249,39.64,45.44
    >>Click the |cRXP_PICK_Sand-Covered Hieroglyphs|r
    .turnin 27602 >>Turn in The Prophet's Dying Words
    .isOnQuest 27602
step
    .goto 249,39.64,45.44
    >>Click the |cRXP_PICK_Sand-Covered Hieroglyphs|r
    .accept 27623 >>Accept Colossal Guardians
    .isQuestTurnedIn 27602 --any of: The Prophet's Dying Words
    .xp <83,1
step
    .goto 249,39.65,40.91
    >>Kill |cRXP_ENEMY_Colossus of the Sun|r and loot |cRXP_LOOT_Stone of the Sun|r
    .complete 27623,2 --Stone of the Sun (1)
    .mob Colossus of the Sun
    .isOnQuest 27623
step
    .goto 249,41.21,37.69
    >>Kill |cRXP_ENEMY_Colossus of the Moon|r and loot |cRXP_LOOT_Stone of the Moon|r
    .complete 27623,1 --Stone of the Moon (1)
    .mob Colossus of the Moon
    .isOnQuest 27623
step
    #loop
    .goto 249,41.01,38.84,0
    .goto 249,41.01,38.84,40,0
    .goto 249,42.29,32.64,40,0
    >>Interact with |cRXP_FRIENDLY_Orsis Survivors|r
    .complete 27519,1 --Orsis Survivor (8)
    .target Orsis Survivor
    .isOnQuest 27519
step
    #loop
    .goto 249,40.57,39.71,0
    .goto 249,40.57,39.71,40,0
    .goto 249,43.33,37.95,40,0
    >>Kill |cRXP_ENEMY_Scion of Al'Akirs|r
    .complete 27520,1 --Scion of Al'Akir slain (6)
    .mob Scion of Al'Akir
    .isOnQuest 27520
step
    .goto 249,39.64,45.44
    >>Click the |cRXP_PICK_Sand-Covered Hieroglyphs|r
    .turnin 27623 >>Turn in Colossal Guardians
    .isOnQuest 27623
step
    .goto 249,39.64,45.44
    >>Click the |cRXP_PICK_Sand-Covered Hieroglyphs|r
    .accept 27706 >>Accept The Scepter of Orsis
    .isQuestTurnedIn 27623 --any of: Colossal Guardians
    .xp <83,1
step
    .goto 249,39.64,45.43
    >>Open the |cRXP_PICK_Sacred Receptacle|r. Loot it for |cRXP_LOOT_The Scepter of Orsis|r
    .complete 27706,1 --The Scepter of Orsis (1)
    .isOnQuest 27706
step
    .goto 249,45.30,37.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Ammantep|r
    .turnin 27519 >>Turn in Under the Choking Sands
    .target General Ammantep
    .isOnQuest 27519
step
    .goto 249,45.30,37.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Ammantep|r
    .turnin 27706 >>Turn in The Scepter of Orsis
    .target General Ammantep
    .isOnQuest 27706
step
    .goto 249,45.24,37.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .turnin 27520 >>Turn in Minions of Al'Akir
    .target Prince Nadun
    .isOnQuest 27520
step
    .goto 249,45.24,37.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .accept 27628 >>Accept Send Word to Phaoris
    .target Prince Nadun
    .isQuestTurnedIn 27706 --any of: The Scepter of Orsis
    .xp <83,1
step
    .goto 249,54.90,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 27628 >>Turn in Send Word to Phaoris
    .target King Phaoris
    .isOnQuest 27628
step
    .goto 249,55.02,34.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Nadun|r
    .accept 27629 >>Accept The Vizier's Vote
    .accept 27630 >>Accept The High Priest's Vote
    .accept 27631 >>Accept The High Commander's Vote
    .target Prince Nadun
    .isQuestTurnedIn 27628 --any of: Send Word to Phaoris
    .xp <83,1
step
    .goto 249,54.19,41.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Amet|r
    .turnin 27630 >>Turn in The High Priest's Vote
    .target High Priest Amet
    .isOnQuest 27630
step
    .goto 249,54.19,41.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Amet|r
    .accept 27836 >>Accept Stopping the Spread
    .accept 27837 >>Accept Trespassers in the Water
    .target High Priest Amet
    .isQuestTurnedIn 27630 --any of: The High Priest's Vote
    .xp <83,1
step
    #loop
    .goto 249,52.36,40.48,0
    .goto 249,52.36,40.48,40,0
    .goto 249,52.37,43.56,40,0
    .goto 249,51.20,34.58,40,0
    >>Click the |cRXP_PICK_Slitherer Egg|r
    .complete 27836,1 --Slitherer Egg
    .isOnQuest 27836
step
    #loop
    .goto 249,52.81,42.31,0
    .goto 249,52.81,42.31,40,0
    .goto 249,54.39,38.73,40,0
    >>Kill |cRXP_ENEMY_Stillwater Slitherers|r
    .complete 27837,1 --Stillwater Slitherer slain (8)
    .mob Stillwater Slitherer
    .isOnQuest 27837
step
    .goto 249,54.19,41.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Amet|r
    .turnin 27836 >>Turn in Stopping the Spread
    .target High Priest Amet
    .isOnQuest 27836
step
    .goto 249,54.19,41.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Amet|r
    .turnin 27837 >>Turn in Trespassers in the Water
    .target High Priest Amet
    .isOnQuest 27837
step
    .goto 249,54.19,41.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Amet|r
    .accept 28611 >>Accept The Defilers' Ritual
    .target High Priest Amet
    .isQuestTurnedIn 27836 --Stopping the Spread
    .isQuestTurnedIn 27837 --Trespassers in the Water
    .xp <83,1
step
    .goto 249,49.93,40.11
    >>Kill |cRXP_ENEMY_Dark Ritualist Zakahn|r
    .complete 28611,1 --Dark Ritualist Zakahn slain (1)
    .mob Dark Ritualist Zakahn
    .isOnQuest 28611
step
    .goto 249,54.19,41.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Amet|r
    .turnin 28611 >>Turn in The Defilers' Ritual
    .target High Priest Amet
    .isOnQuest 28611
step
    .goto 249,54.19,41.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Amet|r
    .accept 27838 >>Accept The Root of the Corruption
    .target High Priest Amet
    .isQuestTurnedIn 28611 --any of: The Defilers' Ritual
    .xp <83,1
step
    .goto 249,58.89,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Kamses|r
    .turnin 27631 >>Turn in The High Commander's Vote
    .target High Commander Kamses
    .isOnQuest 27631
step
    .goto 249,58.89,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Kamses|r
    .accept 28198 >>Accept The Weakest Link
    .accept 28201 >>Accept Ploughshares to Swords
    .target High Commander Kamses
    .isQuestTurnedIn 27631 --any of: The High Commander's Vote
    .xp <83,1
step
    .goto 249,58.97,46.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Mehat|r
    .accept 28200 >>Accept The Element of Supplies
    .target Sergeant Mehat
    .isQuestTurnedIn 27631 --any of: The High Commander's Vote
    .xp <83,1
step
    .goto 249,59.57,47.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28198 >>Turn in The Weakest Link
    .target Salhet
    .isOnQuest 28198
step
    .goto 249,59.57,47.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28210 >>Accept Shaping Up
    .target Salhet
    .isQuestTurnedIn 28198 --any of: The Weakest Link
    .xp <83,1
step
    .goto 249,56.31,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizier Tanotep|r
    .turnin 27629 >>Turn in The Vizier's Vote
    .target Vizier Tanotep
    .isOnQuest 27629
step
    .goto 249,56.31,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizier Tanotep|r
    .accept 27632 >>Accept Tanotep's Son
    .target Vizier Tanotep
    .isQuestTurnedIn 27629 --any of: The Vizier's Vote
    .xp <83,1
step
    #loop
    .goto 249,55.74,53.70,0
    .goto 249,55.74,53.70,40,0
    .goto 249,54.10,51.34,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ramkahen Laborer|r
    .complete 28201,1 --Ramkahen Laborer (8)
    .target Ramkahen Laborer
    .isOnQuest 28201
step
    #loop
    .goto 249,53.80,56.51,0
    .goto 249,53.80,56.51,40,0
    .goto 249,55.62,58.57,40,0
    >>Kill |cRXP_ENEMY_Bloodsnarl Hyenas|r
    .complete 28210,1 --Bloodsnarl Hyena slain (8)
    .mob Bloodsnarl Hyena
    .isOnQuest 28210
step
    .goto 249,54.07,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28210 >>Turn in Shaping Up
    .target Salhet
    .isOnQuest 28210
step
    .goto 249,54.07,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28276 >>Accept Salhet's Secret
    .target Salhet
    .isQuestTurnedIn 28210 --any of: Shaping Up
    .xp <83,1
step
    .goto 249,56.92,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28276 >>Turn in Salhet's Secret
    .target Salhet
    .isOnQuest 28276
step
    .goto 249,56.92,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28277 >>Accept Salhet the Tactician
    .target Salhet
    .isQuestTurnedIn 28276 --any of: Salhet's Secret
    .xp <83,1
step
    .goto 249,56.27,63.32
    >>Kill |cRXP_ENEMY_Bloodsnarl Scavengers|r
    .complete 28277,1 --Bloodsnarl Scavenger slain (30)
    .mob Bloodsnarl Scavenger
    .isOnQuest 28277
step
    .goto 249,56.92,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28277 >>Turn in Salhet the Tactician
    .target Salhet
    .isOnQuest 28277
step
    .goto 249,56.92,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28291 >>Accept Return to Camp
    .target Salhet
    .isQuestTurnedIn 28277 --any of: Salhet the Tactician
    .xp <83,1
step
    .goto 249,57.96,60.75
    >>Kill |cRXP_ENEMY_Neferset Guard|r and loot |cRXP_LOOT_Vir'Naal Delta Map|r
    .complete 27632,1 --Vir'Naal Delta Map (1)
    .mob Neferset Guard
    .isOnQuest 27632
step
    .goto 249,56.31,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizier Tanotep|r
    .turnin 27632 >>Turn in Tanotep's Son
    .target Vizier Tanotep
    .isOnQuest 27632
step
    .goto 249,56.31,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizier Tanotep|r
    .accept 27707 >>Accept Neferset Prison
    .target Vizier Tanotep
    .isQuestTurnedIn 27632 --any of: Tanotep's Son
    .xp <83,1
step
    .goto 249,71.27,73.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ramkahen Prisoner|r
    .complete 27707,1 --Ramkahen Prisoner
    .target Ramkahen Prisoner
    .isOnQuest 27707
step
    .goto 249,71.20,73.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27707 >>Turn in Neferset Prison
    .target ?
    .isOnQuest 27707
step
    .goto 249,56.31,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizier Tanotep|r
    .accept 27738 >>Accept The Pit of Scales
    .target Vizier Tanotep
    .isQuestTurnedIn 27707 --any of: Neferset Prison
    .xp <83,1
step
    .goto 249,58.49,82.85
    >>Kill |cRXP_ENEMY_Caimas the Pit Master|r
    .complete 27738,1 --Caimas the Pit Master slain (1)
    .mob Caimas the Pit Master
    .isOnQuest 27738
step
    .goto 249,56.31,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vizier Tanotep|r
    .turnin 27738 >>Turn in The Pit of Scales
    .target Vizier Tanotep
    .isOnQuest 27738
step
    .goto 249,58.89,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Kamses|r
    .turnin 28201 >>Turn in Ploughshares to Swords
    .target High Commander Kamses
    .isOnQuest 28201
step
    .goto 249,58.89,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Kamses|r
    .turnin 28291 >>Turn in Return to Camp
    .target High Commander Kamses
    .isOnQuest 28291
step
    .goto 249,58.89,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Kamses|r
    .accept 27839 >>Accept Ancient Weapons
    .target High Commander Kamses
    .isQuestTurnedIn 28201 --any of: Ploughshares to Swords
    .xp <83,1
step
    .goto 249,60.48,58.72
    >>Open the |cRXP_PICK_Ancient Tol'vir Weapons|r. Loot it for |cRXP_LOOT_Ancient Tol'vir Armaments|r
    .complete 27839,1 --Ancient Tol'vir Armaments (1)
    .isOnQuest 27839
step
    #loop
    .goto 249,59.91,55.28,0
    .goto 249,59.91,55.28,40,0
    .goto 249,58.47,50.28,40,0
    .goto 249,57.06,44.55,40,0
    .goto 249,56.92,48.39,40,0
    >>Kill |cRXP_ENEMY_Riverbed Crocolisks|r and |cRXP_ENEMY_Oasis Crocolisks|r. Loot them for |cRXP_LOOT_Hardened Crocolisk Hide|r
    .complete 28200,1 --Hardened Crocolisk Hide (20)
    .mob Riverbed Crocolisk
    .mob Oasis Crocolisk
    .isOnQuest 28200
step
    .goto 249,58.89,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Kamses|r
    .turnin 27839 >>Turn in Ancient Weapons
    .target High Commander Kamses
    .isOnQuest 27839
step
    .goto 249,58.97,46.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Mehat|r
    .turnin 28200 >>Turn in The Element of Supplies
    .target Sergeant Mehat
    .isOnQuest 28200
step
    .goto 249,64.60,22.60
    >>Khartut's Tomb Investigated
    .complete 27993,1 --Khartut's Tomb Investigated
    .isOnQuest 27993
step
    .goto 249,64.38,22.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27993 >>Turn in Take it to 'Em!
    .target Harrison Jones
    .isOnQuest 27993
step
    .goto 249,64.38,22.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27141 >>Accept Exploding Through
    .target Harrison Jones
    .isQuestTurnedIn 27923 --Smoke in Their Eyes
    .isQuestTurnedIn 27924 --Budd's Plan
    .isQuestTurnedIn 28105 --Kavem the Callous
    .xp <83,1
step
    .goto 249,64.33,22.21
    >>Click the |cRXP_PICK_Powder Keg|r
    .complete 27141,1 --Powder Keg
    .isOnQuest 27141
step
    .goto 249,64.56,28.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27141 >>Turn in Exploding Through
    .target Harrison Jones
    .isOnQuest 27141
step
    .goto 249,64.63,28.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sand Pygmy Corpse|r
    .accept 27179 >>Accept Field Work
    .target Sand Pygmy Corpse
    .isQuestTurnedIn 27141 --any of: Exploding Through
    .xp <83,1
step
    .goto 249,64.85,29.57
    >>Click the |cRXP_PICK_Elaborate Disc|r
    .accept 27176 >>Accept A Strange Disc
    .isQuestTurnedIn 27141 --any of: Exploding Through
    .xp <83,1
step
    #loop
    .goto 249,63.11,26.75,0
    .goto 249,63.11,26.75,40,0
    .goto 249,63.98,27.81,40,0
    .goto 249,66.54,25.43,40,0
    .goto 249,62.40,31.23,40,0
    .goto 249,66.21,29.02,40,0
    .goto 249,63.23,33.67,40,0
    .goto 249,65.02,33.25,40,0
    .goto 249,66.73,34.92,40,0
    .goto 249,68.25,34.53,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangy Hyena|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27187 >>Accept Do the World a Favor
    .unitscan Mangy Hyena
    .isQuestTurnedIn 27141 --any of: Exploding Through
    .xp <83,1
step
    #loop
    .goto 249,67.89,31.41,0
    .goto 249,67.89,31.41,40,0
    .goto 249,65.85,32.99,40,0
    .goto 249,62.95,30.92,40,0
    >>Kill |cRXP_ENEMY_Sand Pygmies|r. Loot them for |cRXP_LOOT_Ornate Tablet Fragment|r. It can also be picked up from |cRXP_PICK_Ornate Tablet Fragment|r on the ground
    .complete 27179,1 --Ornate Tablet Fragment (10)
    .mob Sand Pygmy
    .isOnQuest 27179
step
    #loop
    .goto 249,67.30,32.54,0
    .goto 249,67.30,32.54,40,0
    .goto 249,66.52,27.45,40,0
    .goto 249,62.78,29.43,40,0
    >>Kill |cRXP_ENEMY_Skarfs|r and |cRXP_ENEMY_Mangy Hyenas|r
    .complete 27187,1 --Skarf (8)
    .mob Skarf
    .mob Mangy Hyena
    .isOnQuest 27187
step
    .goto 249,64.43,28.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27187 >>Turn in Do the World a Favor
    .target ?
    .isOnQuest 27187
step
    .goto 249,64.56,28.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27176 >>Turn in A Strange Disc
    .target Harrison Jones
    .isOnQuest 27176
step
    .goto 249,64.56,28.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27179 >>Turn in Field Work
    .target Harrison Jones
    .isOnQuest 27179
step
    .goto 249,64.56,28.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27196 >>Accept On to Something
    .target Harrison Jones
    .isQuestTurnedIn 27176 --A Strange Disc
    .isQuestTurnedIn 27179 --Field Work
    .xp <83,1
step
    .goto 249,64.56,28.60
    >>Kill |cRXP_ENEMY_Harrison Jones|r
    .complete 27196,1 --Harrison Jones (1)
    .mob Harrison Jones
    .isOnQuest 27196
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27196 >>Turn in On to Something
    .target Harrison Jones
    .isOnQuest 27196
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27511 >>Accept The Thrill of Discovery
    .target Harrison Jones
    .isQuestTurnedIn 27196 --any of: On to Something
    .xp <83,1
step
    .goto 249,65.62,25.68
    >>Explore the Chamber of the Stars.
    .complete 27511,2 --Northern Kill Credit
    .target Northern Kill Credit
    .isOnQuest 27511
step
    .goto 249,64.48,29.87
    >>Explore the Chamber of the Stars.
    .complete 27511,1 --Floor Kill Credit
    .target Floor Kill Credit
    .isOnQuest 27511
step
    .goto 249,63.44,32.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Schnottz Scout|r
    .accept 27541 >>Accept Lessons From the Past
    .target Schnottz Scout
    .isQuestTurnedIn 27196 --any of: On to Something
    .xp <83,1
step
    .goto 249,63.44,32.49
    >>Kill |cRXP_ENEMY_Schnottz Scout|r and loot |cRXP_LOOT_Broken Spectacles|r
    .complete 27541,1 --Broken Spectacles (1)
    .mob Schnottz Scout
    .isOnQuest 27541
step
    .goto 249,62.12,27.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tormented Tomb-Robber|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27517 >>Accept Be Prepared
    .unitscan Tormented Tomb-Robber
    .isQuestTurnedIn 27196 --any of: On to Something
    .xp <83,1
step
    .goto 249,65.62,33.97
    >>Explore the Chamber of the Stars.
    .complete 27511,3 --Southern Kill Credit
    .target Southern Kill Credit
    .isOnQuest 27511
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27511 >>Turn in The Thrill of Discovery
    .target Harrison Jones
    .isOnQuest 27511
step
    .goto 249,62.12,27.78
    >>Kill |cRXP_ENEMY_Tormented Tomb-Robbers|r. Loot them for |cRXP_LOOT_Piece of Rope|r
    .complete 27517,1 --Piece of Rope (6)
    .mob Tormented Tomb-Robber
    .isOnQuest 27517
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27517 >>Turn in Be Prepared
    .target Harrison Jones
    .isOnQuest 27517
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27541 >>Turn in Lessons From the Past
    .target Harrison Jones
    .isOnQuest 27541
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27549 >>Accept By the Light of the Stars
    .target Harrison Jones
    .isQuestTurnedIn 27541 --any of: Lessons From the Past
    .xp <83,1
step
    #loop
    .goto 249,65.17,29.80,0
    .goto 249,65.17,29.80,40,0
    .goto 249,63.40,29.36,40,0
    >>Pick up |cRXP_PICK_Suspended Starlight|r from the ground
    .complete 27549,1 --Suspended Starlight (7)
    .isOnQuest 27549
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27549 >>Turn in By the Light of the Stars
    .target Harrison Jones
    .isOnQuest 27549
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27431 >>Accept Tipping the Balance
    .target Harrison Jones
    .isQuestTurnedIn 27549 --By the Light of the Stars
    .isQuestTurnedIn 28602 --Be Prepared
    .xp <83,1
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .complete 27431,1 --Harrison Jones
    .target Harrison Jones
    .isOnQuest 27431
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27431 >>Turn in Tipping the Balance
    .target Harrison Jones
    .isOnQuest 27431
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27624 >>Accept After the Fall
    .target Harrison Jones
    .isQuestTurnedIn 27431 --any of: Tipping the Balance
    .xp <83,1
step
    .goto 249,62.98,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turquoise Scarab|r
    .accept 27627 >>Accept Just a Fancy Cockroach
    .target Turquoise Scarab
    .isQuestTurnedIn 27431 --any of: Tipping the Balance
    .xp <83,1
step
    .goto 249,63.38,26.85
    >>Kill |cRXP_ENEMY_Amethyst Scarabs|r
    .complete 27627,1 --Amethyst Scarab slain (5)
    .mob Amethyst Scarab
    .isOnQuest 27627
step
    .goto 249,64.02,26.42
    >>Open the |cRXP_PICK_Watcher Head|r. Loot it for |cRXP_LOOT_Orb of the Morning Star|r
    .complete 27624,1 --Orb of the Morning Star (1)
    .isOnQuest 27624
step
    .goto 249,65.93,27.25
    >>Kill |cRXP_ENEMY_Sapphire Scarabs|r
    .complete 27627,3 --Sapphire Scarab slain (5)
    .mob Sapphire Scarab
    .isOnQuest 27627
step
    .goto 249,66.77,28.03
    >>Open the |cRXP_PICK_Watcher Head|r. Loot it for |cRXP_LOOT_Orb of the Evening Star|r
    .complete 27624,2 --Orb of the Evening Star (1)
    .isOnQuest 27624
step
    .goto 249,65.57,32.43
    >>Kill |cRXP_ENEMY_Emerald Scarabs|r
    .complete 27627,2 --Emerald Scarab slain (5)
    .mob Emerald Scarab
    .isOnQuest 27627
step
    .goto 249,65.25,32.66
    >>Open the |cRXP_PICK_Watcher Head|r. Loot it for |cRXP_LOOT_Orb of the Shooting Star|r
    .complete 27624,4 --Orb of the Shooting Star (1)
    .isOnQuest 27624
step
    .goto 249,62.98,32.64
    >>Kill |cRXP_ENEMY_Turquoise Scarabs|r
    .complete 27627,4 --Turquoise Scarab slain (5)
    .mob Turquoise Scarab
    .isOnQuest 27627
step
    .goto 249,62.52,32.00
    >>Open the |cRXP_PICK_Watcher Head|r. Loot it for |cRXP_LOOT_Orb of the North Star|r
    .complete 27624,3 --Orb of the North Star (1)
    .isOnQuest 27624
step
    .goto 249,64.43,28.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27627 >>Turn in Just a Fancy Cockroach
    .target ?
    .isOnQuest 27627
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27624 >>Turn in After the Fall
    .target Harrison Jones
    .isOnQuest 27624
step
    .goto 249,64.50,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27669 >>Accept Do the Honors
    .target Harrison Jones
    .isQuestTurnedIn 27624 --any of: After the Fall
    .xp <83,1
step
    .goto 249,64.48,29.87
    >>Use the Orbs of the Stars near the mechanism in the Chamber of the Stars.
    .complete 27669,1 --Chamber of Stars Kill Credit
    .target Chamber of Stars Kill Credit
    .isOnQuest 27669
step
    .goto 249,63.90,33.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27669 >>Turn in Do the Honors
    .target Harrison Jones
    .isOnQuest 27669
step
    .goto 249,58.93,14.20
    >>Kill |cRXP_ENEMY_Scalemother Hevna|r
    .complete 27838,1 --Scalemother Hevna slain (1)
    .mob Scalemother Hevna
    .isOnQuest 27838
step
    .goto 249,54.29,35.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarrah|r
    .accept 27899 >>Accept That Gleam in his Eye
    .target Adarrah
    .isQuestTurnedIn 27669 --any of: Do the Honors
    .xp <83,1
step
    .goto 249,54.19,41.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Amet|r
    .turnin 27838 >>Turn in The Root of the Corruption
    .target High Priest Amet
    .isOnQuest 27838
step
    .goto 249,58.89,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Kamses|r
    .accept 28533 >>Accept The High Council's Decision
    .target High Commander Kamses
    .isQuestTurnedIn 27738 --The Pit of Scales
    .isQuestTurnedIn 27838 --The Root of the Corruption
    .isQuestTurnedIn 28291 --Return to Camp
    .xp <83,1
step
    .goto 249,54.90,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 28533 >>Turn in The High Council's Decision
    .target King Phaoris
    .isOnQuest 28533
step
    .goto 249,54.90,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .accept 28561 >>Accept Nahom Must Hold
    .target King Phaoris
    .isQuestTurnedIn 28533 --any of: The High Council's Decision
    .xp <83,1
step
    .goto 249,67.23,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28561 >>Turn in Nahom Must Hold
    .target Salhet
    .isOnQuest 28561
step
    .goto 249,67.23,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28498 >>Accept The Secret of Nahom
    .target Salhet
    .isQuestTurnedIn 28561 --any of: Nahom Must Hold
    .xp <83,1
step
    .goto 249,67.33,42.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Prophet Tumet|r
    .accept 28499 >>Accept Punish the Trespassers
    .target Sun Prophet Tumet
    .isQuestTurnedIn 28561 --any of: Nahom Must Hold
    .xp <83,1
step
    #loop
    .goto 249,72.81,40.96,0
    .goto 249,72.81,40.96,40,0
    .goto 249,74.49,46.34,40,0
    .goto 249,76.59,43.68,40,0
    >>Pick up |cRXP_PICK_Atulhet's Record Fragment|r from the ground
    .complete 28498,1 --Atulhet's Record Fragment (8)
    .isOnQuest 28498
step
    #loop
    .goto 249,75.55,45.57,0
    .goto 249,75.55,45.57,40,0
    .goto 249,73.43,48.89,40,0
    .goto 249,71.70,45.59,40,0
    >>Kill |cRXP_ENEMY_Neferset Scryers|r, |cRXP_ENEMY_Neferset Raiders|r, |cRXP_ENEMY_Neferset Looters|r and |cRXP_ENEMY_Neferset Intruder credits|r
    .complete 28499,1 --Neferset Scryer (8)
    .mob Neferset Scryer
    .mob Neferset Raider
    .mob Neferset Looter
    .mob Neferset Intruder credit
    .isOnQuest 28499
step
    .goto 249,67.33,42.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Prophet Tumet|r
    .turnin 28499 >>Turn in Punish the Trespassers
    .target Sun Prophet Tumet
    .isOnQuest 28499
step
    .goto 249,67.23,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28498 >>Turn in The Secret of Nahom
    .target Salhet
    .isOnQuest 28498
step
    .goto 249,67.23,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28500 >>Accept The Cypher of Keset
    .target Salhet
    .isQuestTurnedIn 28498 --The Secret of Nahom
    .isQuestTurnedIn 28499 --Punish the Trespassers
    .xp <83,1
step
    .goto 249,78.18,45.74
    >>Kill |cRXP_ENEMY_Raider Lord Havat|r and loot |cRXP_LOOT_The Cypher of Keset|r
    .complete 28500,1 --The Cypher of Keset (1)
    .mob Raider Lord Havat
    .isOnQuest 28500
step
    .goto 249,67.23,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28500 >>Turn in The Cypher of Keset
    .target Salhet
    .isOnQuest 28500
step
    .goto 249,67.23,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28501 >>Accept The Defense of Nahom
    .target Salhet
    .isQuestTurnedIn 28500 --any of: The Cypher of Keset
    .xp <83,1
step
    .goto 249,66.61,41.73
    >>Kill |cRXP_ENEMY_Greater Colossus|r
    .complete 28501,1 --Greater Colossus slain (1)
    .mob Greater Colossus
    .isOnQuest 28501
step
    .goto 249,67.23,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28501 >>Turn in The Defense of Nahom
    .target Salhet
    .isOnQuest 28501
step
    .goto 249,67.23,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28623 >>Accept The Push Westward
    .target Salhet
    .isQuestTurnedIn 28501 --any of: The Defense of Nahom
    .xp <83,1
step
    .goto 249,67.33,42.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Prophet Tumet|r
    .accept 27755 >>Accept The Curse of the Tombs
    .target Sun Prophet Tumet
    .isQuestTurnedIn 28501 --any of: The Defense of Nahom
    .xp <83,1
step
    #completewith Drop27760x1
    >>|cRXP_LOOT_A.I.D.A. Communicator|r can drop from |cRXP_ENEMY_Crazed Digger|r, |cRXP_ENEMY_Cursed Expedition Member|r, |cRXP_ENEMY_Cursed Surveyor|r. Use it to start the quest if you get one
    .collect 62483,1,27760 --A.I.D.A. Communicator (1)
    .accept 27760 >>Accept Artificial Intelligence
    .use 62483
step
    .goto 249,69.60,58.62
    >>Kill |cRXP_ENEMY_Mekgineer Mixeltweeds|r
    .complete 27755,2 --Mekgineer Mixeltweed slain (8)
    .mob Mekgineer Mixeltweed
    .isOnQuest 27755
step
    #label Drop27760x1
    #loop
    .goto 249,69.38,59.90,0
    .goto 249,69.38,59.90,40,0
    .goto 249,70.49,59.39,40,0
    >>Kill |cRXP_ENEMY_Crazed Diggers|r
    .complete 27755,1 --Crazed Digger slain (6)
    .mob Crazed Digger
    .isOnQuest 27755
step
    .goto 249,74.15,64.43
    >>Click the |cRXP_PICK_A. I. D.A. Terminal|r
    .turnin 27760 >>Turn in Artificial Intelligence
    .isOnQuest 27760
step
    .goto 249,74.15,64.43
    >>Click the |cRXP_PICK_A. I. D.A. Terminal|r
    .accept 27761 >>Accept A Disarming Distraction
    .accept 27777 >>Accept Core Access Codes
    .isQuestTurnedIn 27760 --any of: Artificial Intelligence
    .xp <83,1
step
    .goto 249,78.80,62.11
    >>Click the |cRXP_PICK_First Bomb Cluster|r
    .complete 27761,1 --First Bomb Cluster
    .isOnQuest 27761
step
    .goto 249,79.01,64.27
    >>Click the |cRXP_PICK_Second Bomb Cluster|r
    .complete 27761,2 --Second Bomb Cluster
    .isOnQuest 27761
step
    .goto 249,79.05,64.89
    >>Click the |cRXP_PICK_Third Bomb Cluster|r
    .complete 27761,3 --Third Bomb Cluster
    .isOnQuest 27761
step
    .goto 249,79.37,64.11
    >>Kill |cRXP_ENEMY_Unstable Bomb Bots|r
    .complete 27761,4 --Unstable Bomb Bot (4)
    .mob Unstable Bomb Bot
    .isOnQuest 27761
step
    .goto 249,73.33,72.80
    >>Kill |cRXP_ENEMY_Twizzleflux the Insane|r and loot |cRXP_LOOT_Core Access Codes|r
    .complete 27777,1 --Core Access Codes (1)
    .mob Twizzleflux the Insane
    .isOnQuest 27777
step
    .goto 249,74.15,64.43
    >>Click the |cRXP_PICK_A. I. D.A. Terminal|r
    .turnin 27761 >>Turn in A Disarming Distraction
    .isOnQuest 27761
step
    .goto 249,74.15,64.43
    >>Click the |cRXP_PICK_A. I. D.A. Terminal|r
    .turnin 27777 >>Turn in Core Access Codes
    .isOnQuest 27777
step
    .goto 249,74.15,64.43
    >>Click the |cRXP_PICK_A. I. D.A. Terminal|r
    .accept 27778 >>Accept Hacking the Wibson
    .isQuestTurnedIn 27761 --A Disarming Distraction
    .isQuestTurnedIn 27777 --Core Access Codes
    .xp <83,1
step
    .goto 249,77.00,62.92
    >>Open the |cRXP_PICK_Maintenance Tools|r. Loot it for |cRXP_LOOT_Maintenance Axe|r
    .collect 62621,1,27778,1 --Maintenance Axe (1)
    .isOnQuest 27778
step
    .goto 249,76.96,62.95
    >>Kill |cRXP_ENEMY_Wibson Mainframe|r
    .complete 27778,1 --Wibson Mainframe slain (1)
    .mob Wibson Mainframe
    .isOnQuest 27778
step
    .goto 249,77.28,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fusion Core|r
    .turnin 27778 >>Turn in Hacking the Wibson
    .target Fusion Core
    .isOnQuest 27778
step
    .goto 249,77.28,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fusion Core|r
    .accept 27779 >>Accept Gnomebliteration
    .target Fusion Core
    .isQuestTurnedIn 27778 --any of: Hacking the Wibson
    .xp <83,1
step
    #loop
    .goto 249,82.28,55.74,0
    .goto 249,82.28,55.74,40,0
    .goto 249,83.01,52.23,40,0
    >>Kill |cRXP_ENEMY_Crazed Gnomes|r and |cRXP_ENEMY_Crazed Spiderbot Pilots|r
    .complete 27779,1 --Crazed Gnome (1000)
    .mob Crazed Gnome
    .mob Crazed Spiderbot Pilot
    .isOnQuest 27779
step
    .goto 249,77.28,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fusion Core|r
    .turnin 27779 >>Turn in Gnomebliteration
    .target Fusion Core
    .isOnQuest 27779
step
    .goto 249,67.33,42.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sun Prophet Tumet|r
    .turnin 27755 >>Turn in The Curse of the Tombs
    .target Sun Prophet Tumet
    .isOnQuest 27755
step
    .goto 249,52.02,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 28623 >>Turn in The Push Westward
    .target King Phaoris
    .isOnQuest 28623
step
    .goto 249,52.02,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .accept 28480 >>Accept Lieutenants of Darkness
    .accept 28483 >>Accept Bleeding the Enemy
    .target King Phaoris
    .isQuestTurnedIn 28623 --any of: The Push Westward
    .xp <83,1
step
    .goto 249,47.50,77.26
    >>Kill |cRXP_ENEMY_High Priest Sekhemet|r
    .complete 28480,2 --High Priest Sekhemet slain (1)
    .mob High Priest Sekhemet
    .isOnQuest 28480
step
    .goto 249,50.56,86.98
    >>Kill |cRXP_ENEMY_Scorpion-Lord Namkhare|r
    .complete 28480,1 --Scorpion-Lord Namkhare slain (1)
    .mob Scorpion-Lord Namkhare
    .isOnQuest 28480
step
    #loop
    .goto 249,48.22,84.47,0
    .goto 249,48.22,84.47,40,0
    .goto 249,50.49,78.83,40,0
    .goto 249,52.44,79.37,40,0
    >>Kill |cRXP_ENEMY_Neferset Armorers|r, |cRXP_ENEMY_Neferset Blade Twisters|r, |cRXP_ENEMY_Neferset Savages|r and |cRXP_ENEMY_Neferset Snake Charmers|r. Loot them for |cRXP_LOOT_Neferset Insignia|r
    .complete 28483,1 --Neferset Insignia (10)
    .mob Neferset Armorer
    .mob Neferset Blade Twister
    .mob Neferset Savage
    .mob Neferset Snake Charmer
    .isOnQuest 28483
step
    .goto 249,52.02,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 28480 >>Turn in Lieutenants of Darkness
    .target King Phaoris
    .isOnQuest 28480
step
    .goto 249,52.02,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 28483 >>Turn in Bleeding the Enemy
    .target King Phaoris
    .isOnQuest 28483
step
    .goto 249,52.94,65.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .accept 28486 >>Accept Salhet's Gambit
    .target Salhet
    .isQuestTurnedIn 28623 --any of: The Push Westward
    .xp <83,1
step
    .goto 249,53.76,75.39
    >>Higher ground secured
    .complete 28486,1 --Higher ground secured
    .isOnQuest 28486
step
    .goto 249,52.94,65.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salhet|r
    .turnin 28486 >>Turn in Salhet's Gambit
    .target Salhet
    .isOnQuest 28486
step
    .goto 249,52.02,65.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .accept 28520 >>Accept The Fall of Neferset City
    .target King Phaoris
    .isQuestTurnedIn 28480 --Lieutenants of Darkness
    .isQuestTurnedIn 28483 --Bleeding the Enemy
    .isQuestTurnedIn 28486 --Salhet's Gambit
    .xp <83,1
step
    .goto 249,52.07,82.31
    >>Kill |cRXP_ENEMY_Dark Pharaoh Tekahn|r
    .complete 28520,1 --Dark Pharaoh Tekahn slain (1)
    .mob Dark Pharaoh Tekahn
    .isOnQuest 28520
step
    .goto 249,43.98,57.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27899 >>Turn in That Gleam in his Eye
    .target Harrison Jones
    .isOnQuest 27899
step
    .goto 249,43.98,57.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27900 >>Accept I've Got This Guy
    .accept 27901 >>Accept They Don't Know What They've Got Here
    .target Harrison Jones
    .isQuestTurnedIn 27899 --any of: That Gleam in his Eye
    .xp <83,1
step
    #loop
    .goto 249,43.36,55.70,0
    .goto 249,43.36,55.70,40,0
    .goto 249,45.93,55.62,40,0
    >>Kill |cRXP_ENEMY_Schnottz Air Troopers|r
    .complete 27900,1 --Schnottz Air Trooper slain (10)
    .mob Schnottz Air Trooper
    .isOnQuest 27900
step
    .goto 249,43.98,57.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27900 >>Turn in I've Got This Guy
    .target Harrison Jones
    .isOnQuest 27900
step
    .goto 249,43.98,57.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27903 >>Accept Ignition
    .target Harrison Jones
    .isQuestTurnedIn 27901 --any of: They Don't Know What They've Got Here
    .xp <83,1
step
    #completewith Drop28132x1
    >>|cRXP_LOOT_Efficient Excavations|r can drop from |cRXP_ENEMY_Schnottz Air Officer|r. Use it to start the quest if you get one
    .collect 62768,1,28132 --Efficient Excavations (1)
    .accept 28132 >>Accept Efficient Excavations
    .use 62768
step
    #label Drop28132x1
    #loop
    .goto 249,43.14,57.32,0
    .goto 249,43.14,57.32,40,0
    .goto 249,46.47,57.72,40,0
    >>Open the |cRXP_PICK_Obelisk of the Sun Coffer|r. Loot it for |cRXP_LOOT_Titan Device Component|r
    .collect 62610,1,27901,1 --Titan Device Component (1)
    .isOnQuest 27901
step
    .goto 249,47.24,58.83
    >>Kill |cRXP_ENEMY_Titanic Guardian|r and loot |cRXP_LOOT_Lens of the Sun|r
    .complete 27903,1 --Lens of the Sun (1)
    .mob Titanic Guardian
    .isOnQuest 27903
step
    #completewith Drop28132x2
    >>|cRXP_LOOT_Efficient Excavations|r can drop from |cRXP_ENEMY_Schnottz Air Officer|r. Use it to start the quest if you get one
    .collect 62768,1,28132 --Efficient Excavations (1)
    .accept 28132 >>Accept Efficient Excavations
    .use 62768
step
    #label Drop28132x2
    #loop
    .goto 249,46.40,60.42,0
    .goto 249,46.40,60.42,40,0
    .goto 249,46.51,54.12,40,0
    >>Kill |cRXP_ENEMY_Schnottz Air Officer|r and loot |cRXP_LOOT_Uldum Chest Key Code|r
    .collect 62608,1,27901,1 --Uldum Chest Key Code (1)
    .mob Schnottz Air Officer
    .isOnQuest 27901
step
    .goto 249,45.58,57.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Titan Mechanism|r
    .turnin 27903 >>Turn in Ignition
    .target Titan Mechanism
    .isOnQuest 27903
step
    .goto 249,43.98,57.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27905 >>Accept Tailgunner!
    .target Harrison Jones
    .isQuestTurnedIn 27903 --any of: Ignition
    .xp <83,1
step
    .goto 249,43.98,57.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27901 >>Turn in They Don't Know What They've Got Here
    .target Harrison Jones
    .isQuestComplete 27901
step
    .goto 249,54.54,42.08
    >>Escaped the Obelisk of the Sun
    .complete 27905,1 --Escaped the Obelisk of the Sun
    .isOnQuest 27905
step
    .goto 249,54.64,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27905 >>Turn in Tailgunner!
    .target Harrison Jones
    .isOnQuest 27905
step
    .goto 249,54.90,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Phaoris|r
    .turnin 28520 >>Turn in The Fall of Neferset City
    .target King Phaoris
    .isOnQuest 28520
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .turnin 28132 >>Turn in Efficient Excavations
    .target Belloc Brightblade
    .isOnQuest 28132
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .accept 27926 >>Accept Eastern Hospitality
    .target Belloc Brightblade
    .isQuestTurnedIn 27669 --any of: Do the Honors
    .xp <83,1
step
    .goto 249,22.19,63.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aspiring Starlet|r
    .complete 27926,4 --Aspiring Starlet
    .target Aspiring Starlet
    .isOnQuest 27926
step
    .goto 249,22.15,64.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budding Artist|r
    .complete 27926,3 --Budding Artist
    .target Budding Artist
    .isOnQuest 27926
step
    .goto 249,22.47,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Laurent|r
    .complete 27926,1 --Ambassador Laurent
    .target Ambassador Laurent
    .isOnQuest 27926
step
    .goto 249,21.96,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Refined Gentleman|r
    .complete 27926,2 --Refined Gentleman
    .target Refined Gentleman
    .isOnQuest 27926
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .turnin 27926 >>Turn in Eastern Hospitality
    .target Belloc Brightblade
    .isOnQuest 27926
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .accept 27928 >>Accept A Favor for the Furrier
    .target Belloc Brightblade
    .isQuestTurnedIn 27926 --any of: Eastern Hospitality
    .xp <83,1
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 27939 >>Accept The Desert Fox
    .target Commander Schnottz
    .isQuestTurnedIn 27926 --any of: Eastern Hospitality
    .xp <83,1
step
    #loop
    .goto 249,40.24,68.90,0
    .goto 249,40.24,68.90,40,0
    .goto 249,42.03,70.68,40,0
    .goto 249,43.52,73.39,40,0
    .goto 249,43.62,72.39,40,0
    .goto 249,44.42,69.34,40,0
    .goto 249,45.07,67.87,40,0
    .goto 249,46.13,72.20,40,0
    .goto 249,46.75,67.90,40,0
    .goto 249,47.85,66.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diseased Vulture|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27940 >>Accept Dirty Birds
    .unitscan Diseased Vulture
    .isQuestTurnedIn 27926 --any of: Eastern Hospitality
    .xp <83,1
step
    .goto 249,41.57,70.00
    >>Kill |cRXP_ENEMY_Desert Fox|r and loot |cRXP_LOOT_The Desert Fox|r
    .complete 27939,1 --The Desert Fox (1)
    .mob Desert Fox
    .isOnQuest 27939
step
    #loop
    .goto 249,40.98,72.28,0
    .goto 249,40.98,72.28,40,0
    .goto 249,42.88,68.27,40,0
    .goto 249,45.00,67.53,40,0
    >>Kill |cRXP_ENEMY_Shaggy Desert Coyotes|r. Loot them for |cRXP_LOOT_Desert Coyote Pelt|r
    .complete 27928,1 --Desert Coyote Pelt (5)
    .mob Shaggy Desert Coyote
    .isOnQuest 27928
step
    #loop
    .goto 249,43.62,72.39,0
    .goto 249,43.62,72.39,40,0
    .goto 249,46.13,72.20,40,0
    .goto 249,46.99,66.34,40,0
    >>Kill |cRXP_ENEMY_Diseased Vultures|r
    .complete 27940,1 --Diseased Vulture slain (8)
    .mob Diseased Vulture
    .isOnQuest 27940
step
    .goto 249,42.54,68.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27940 >>Turn in Dirty Birds
    .target ?
    .isOnQuest 27940
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .turnin 27928 >>Turn in A Favor for the Furrier
    .target Belloc Brightblade
    .isOnQuest 27928
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .accept 27941 >>Accept Fashionism
    .target Belloc Brightblade
    .isQuestTurnedIn 27928 --any of: A Favor for the Furrier
    .xp <83,1
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .turnin 27939 >>Turn in The Desert Fox
    .target Commander Schnottz
    .isOnQuest 27939
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 27942 >>Accept Idolatry
    .accept 27943 >>Accept Angered Spirits
    .target Commander Schnottz
    .isQuestTurnedIn 27939 --any of: The Desert Fox
    .xp <83,1
step
    #loop
    .goto 249,31.17,63.11,0
    .goto 249,31.17,63.11,40,0
    .goto 249,32.56,65.06,40,0
    >>Kill |cRXP_ENEMY_Furious Specters|r. Loot them for |cRXP_LOOT_Furious Spectral Essence|r
    .complete 27943,1 --Furious Spectral Essence (5)
    .mob Furious Specter
    .isOnQuest 27943
step
    #loop
    .goto 249,31.55,62.44,0
    .goto 249,31.55,62.44,40,0
    .goto 249,34.05,61.61,40,0
    .goto 249,31.53,68.17,40,0
    >>Kill |cRXP_ENEMY_Dead Troopers|r. Loot them for |cRXP_LOOT_Trooper Uniform|r
    .complete 27941,1 --Trooper Uniform (10)
    .mob Dead Trooper
    .isOnQuest 27941
step
    #loop
    .goto 249,33.99,63.24,0
    .goto 249,33.99,63.24,40,0
    .goto 249,31.46,60.67,40,0
    >>Pick up |cRXP_PICK_Well-preserved Idol|r from the ground
    .complete 27942,1 --Well-preserved Idol (8)
    .isOnQuest 27942
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .turnin 27941 >>Turn in Fashionism
    .target Belloc Brightblade
    .isOnQuest 27941
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .turnin 27942 >>Turn in Idolatry
    .target Commander Schnottz
    .isOnQuest 27942
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .turnin 27943 >>Turn in Angered Spirits
    .target Commander Schnottz
    .isOnQuest 27943
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 27950 >>Accept Gobbles!
    .target Commander Schnottz
    .isQuestTurnedIn 27941 --Fashionism
    .isQuestTurnedIn 27942 --Idolatry
    .isQuestTurnedIn 27943 --Angered Spirits
    .xp <83,1
step
    .goto 249,24.49,64.46
    >>Schnottz wants you to speak with him when you are prepared to witness the ritual.
    .complete 27950,1 --Gobbles
    .target Gobbles
    .isOnQuest 27950
step
    .goto 249,24.46,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27950 >>Turn in Gobbles!
    .target ?
    .isOnQuest 27950
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 27969 >>Accept Make Yourself Useful
    .target Commander Schnottz
    .isQuestTurnedIn 27950 --any of: Gobbles!
    .xp <83,1
step
    #loop
    .goto 249,23.47,60.25,0
    .goto 249,23.47,60.25,40,0
    .goto 249,20.12,60.73,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slacking Laborer|r
    .complete 27969,1 --Slacking Laborer (6)
    .target Slacking Laborer
    .isOnQuest 27969
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .turnin 27969 >>Turn in Make Yourself Useful
    .target Commander Schnottz
    .isOnQuest 27969
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .accept 28002 >>Accept Crisis Management
    .target Belloc Brightblade
    .isQuestTurnedIn 27969 --any of: Make Yourself Useful
    .xp <83,1
step
    .goto 249,22.50,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budding Artist|r
    .complete 28002,4 --Budding Artist
    .target Budding Artist
    .isOnQuest 28002
step
    .goto 249,22.38,63.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prolific Writer|r
    .complete 28002,1 --Prolific Writer
    .target Prolific Writer
    .isOnQuest 28002
step
    .goto 249,21.84,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privileged Socialite|r
    .complete 28002,2 --Privileged Socialite
    .target Privileged Socialite
    .isOnQuest 28002
step
    .goto 249,22.31,64.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pretentious Businessman|r
    .complete 28002,3 --Pretentious Businessman
    .target Pretentious Businessman
    .isOnQuest 28002
step
    .goto 249,24.37,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belloc Brightblade|r
    .turnin 28002 >>Turn in Crisis Management
    .target Belloc Brightblade
    .isOnQuest 28002
step
    .goto 249,24.46,64.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 27990 >>Accept Battlezone
    .target Commander Schnottz
    .isQuestTurnedIn 28002 --any of: Crisis Management
    .xp <83,1
step
    #loop
    .goto 249,23.83,61.42,0
    .goto 249,23.83,61.42,40,0
    .goto 249,21.14,59.25,40,0
    >>Kill |cRXP_ENEMY_Decrepit Watchers|r
    .complete 27990,1 --Decrepit Watcher slain (7)
    .mob Decrepit Watcher
    .isOnQuest 27990
step
    .goto 249,24.46,64.27
    >>Commander Schnottz wants you to man one of the siege tank turrets and use it to defeat 7 Decrepit Watchers, then report back to him.
    .complete 27990,2 --Commander Schnottz
    .target Commander Schnottz
    .isOnQuest 27990
step
    .goto 249,24.41,64.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .turnin 27990 >>Turn in Battlezone
    .target Commander Schnottz
    .isOnQuest 27990
step
    .goto 249,24.41,64.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 28187 >>Accept Missed Me By Zhat Much!
    .target Commander Schnottz
    .isQuestTurnedIn 27990 --any of: Battlezone
    .xp <83,1
step
    .goto 249,22.26,63.18
    >>Speak to Commander Schnottz when you are ready to accompany him out of the burning building.
    .complete 28187,1 --Commander Schnottz
    .target Commander Schnottz
    .isOnQuest 28187
step
    .goto 249,22.51,63.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .turnin 28187 >>Turn in Missed Me By Zhat Much!
    .target Commander Schnottz
    .isOnQuest 28187
step
    .goto 249,22.51,63.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 28193 >>Accept Lockdown!
    .target Commander Schnottz
    .isQuestTurnedIn 28187 --any of: Missed Me By Zhat Much!
    .xp <83,1
step
    .goto 249,21.91,64.10
    >>Commander Schnottz wants you to observe the guests in Schnottz's Landing.
    .complete 28193,1 --Schnottz Guests
    .target Schnottz Guests
    .isOnQuest 28193
step
    .goto 249,21.85,64.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prolific Writer|r
    .accept 28194 >>Accept The Great Escape
    .target Prolific Writer
    .isQuestTurnedIn 28187 --any of: Missed Me By Zhat Much!
    .xp <83,1
step
    .goto 249,22.51,63.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .turnin 28193 >>Turn in Lockdown!
    .target Commander Schnottz
    .isOnQuest 28193
step
    .goto 249,22.51,63.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 28195 >>Accept Sending a Message
    .target Commander Schnottz
    .isQuestTurnedIn 28193 --any of: Lockdown!
    .xp <83,1
step
    .goto 249,22.31,67.58
    >>Kill |cRXP_ENEMY_Captain Margun|r
    .complete 28195,1 --Captain Margun slain (1)
    .mob Captain Margun
    .isOnQuest 28195
step
    .goto 249,24.88,68.97
    >>Kill |cRXP_ENEMY_Captain Cork|r
    .complete 28195,2 --Captain Cork slain (1)
    .mob Captain Cork
    .isOnQuest 28195
step
    .goto 249,26.08,68.63
    >>Kill |cRXP_ENEMY_Captain Kronkh|r
    .complete 28195,3 --Captain Kronkh slain (1)
    .mob Captain Kronkh
    .isOnQuest 28195
step
    .goto 249,25.09,68.35
    >>Kill |cRXP_ENEMY_Schnottz Sea Troopers|r. Loot them for |cRXP_LOOT_Fresh Sailor Uniform|r
    .complete 28194,1 --Fresh Sailor Uniform (6)
    .mob Schnottz Sea Trooper
    .isOnQuest 28194
step
    .goto 249,21.85,64.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prolific Writer|r
    .turnin 28194 >>Turn in The Great Escape
    .target Prolific Writer
    .isOnQuest 28194
step
    .goto 249,22.51,63.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .turnin 28195 >>Turn in Sending a Message
    .target Commander Schnottz
    .isOnQuest 28195
step
    .goto 249,22.51,63.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Schnottz|r
    .accept 28267 >>Accept Firing Squad
    .target Commander Schnottz
    .isQuestTurnedIn 28194 --The Great Escape
    .isQuestTurnedIn 28195 --Sending a Message
    .xp <83,1
step
    .goto 249,23.67,60.99
    >>Speak to Commander Schnottz.
    .complete 28267,1 --Firing Squad Kill Credit
    .target Firing Squad Kill Credit
    .isOnQuest 28267
step
    .goto 249,23.55,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28267 >>Turn in Firing Squad
    .target Harrison Jones
    .isOnQuest 28267
step
    .goto 249,23.55,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28269 >>Accept Meet Me In Vir'sar
    .target Harrison Jones
    .isQuestTurnedIn 28267 --any of: Firing Squad
    .xp <83,1
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28269 >>Turn in Meet Me In Vir'sar
    .target Harrison Jones
    .isOnQuest 28269
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28273 >>Accept Friend of a Friend
    .target Harrison Jones
    .isQuestTurnedIn 28269 --any of: Meet Me In Vir'sar
    .xp <83,1
step
    .goto 249,26.62,8.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .turnin 28273 >>Turn in Friend of a Friend
    .target Sullah
    .isOnQuest 28273
step
    .goto 249,26.62,8.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .accept 28274 >>Accept Two Tents
    .target Sullah
    .isQuestTurnedIn 28273 --any of: Friend of a Friend
    .xp <83,1
step
    .goto 249,29.61,21.84
    >>Accompany Sullah to Sullah's Sideshow.
    .complete 28274,1 --Sullah
    .target Sullah
    .isOnQuest 28274
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .turnin 28274 >>Turn in Two Tents
    .target Sullah
    .isOnQuest 28274
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .accept 28350 >>Accept Master Trapper
    .accept 28351 >>Accept Unlimited Potential
    .accept 28352 >>Accept Camelraderie
    .target Sullah
    .isQuestTurnedIn 28274 --any of: Two Tents
    .xp <83,1
step
    #loop
    .goto 249,49.72,31.12,0
    .goto 249,49.72,31.12,40,0
    .goto 249,50.92,33.11,40,0
    >>Kill |cRXP_ENEMY_Riverbed Crocolisks|r, |cRXP_ENEMY_Neferset Crocolisks|r, |cRXP_ENEMY_Diseased Vultures|r and |cRXP_ENEMY_Camels|r. Loot them for |cRXP_LOOT_Meat Scrap|r
    .complete 28350,1 --Meat Scrap (5)
    .mob Riverbed Crocolisk
    .mob Neferset Crocolisk
    .mob Diseased Vulture
    .mob Camel
    .isOnQuest 28350
step
    #loop
    .goto 249,30.31,42.21,0
    .goto 249,30.31,42.21,40,0
    .goto 249,27.92,44.49,40,0
    >>Interact with |cRXP_FRIENDLY_Wild Camels|r
    .complete 28352,1 --Wild Camel (3)
    .target Wild Camel
    .isOnQuest 28352
step
    #loop
    .goto 249,28.91,33.76,0
    .goto 249,28.91,33.76,40,0
    .goto 249,28.91,27.49,40,0
    >>Interact with |cRXP_FRIENDLY_Cavorting Pygmies|r
    .complete 28351,1 --Cavorting Pygmy (5)
    .target Cavorting Pygmy
    .isOnQuest 28351
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .turnin 28350 >>Turn in Master Trapper
    .target Sullah
    .isOnQuest 28350
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .turnin 28351 >>Turn in Unlimited Potential
    .target Sullah
    .isOnQuest 28351
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .turnin 28352 >>Turn in Camelraderie
    .target Sullah
    .isOnQuest 28352
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .accept 28353 >>Accept Jonesy Sent For You
    .target Sullah
    .isQuestTurnedIn 28350 --any of: Master Trapper
    .xp <83,1
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28353 >>Turn in Jonesy Sent For You
    .target Harrison Jones
    .isOnQuest 28353
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28271 >>Accept Reduced Productivity
    .accept 28272 >>Accept Missing Pieces
    .target Harrison Jones
    .isQuestTurnedIn 28274 --any of: Two Tents
    .xp <83,1
step
    #loop
    .goto 249,39.42,19.43,0
    .goto 249,39.42,19.43,40,0
    .goto 249,40.20,21.55,40,0
    >>Loot the |cRXP_PICK_Pillaged Loot Sacks|r for |cRXP_LOOT_Ancient Copper Scroll|r
    .complete 28272,1 --Ancient Copper Scroll (7)
    .isOnQuest 28272
step
    #loop
    .goto 249,39.02,21.09,0
    .goto 249,39.02,21.09,40,0
    .goto 249,39.36,24.28,40,0
    >>Kill |cRXP_ENEMY_Schnottz Overseers|r, |cRXP_ENEMY_Schnottz Elite Troopers|r and |cRXP_ENEMY_Schnottz Elite Trooper Corpses|r
    .complete 28271,1 --Schnottz Overseer (8)
    .mob Schnottz Overseer
    .mob Schnottz Elite Trooper
    .mob Schnottz Elite Trooper Corpse
    .isOnQuest 28271
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28271 >>Turn in Reduced Productivity
    .target Harrison Jones
    .isOnQuest 28271
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28272 >>Turn in Missing Pieces
    .target Harrison Jones
    .isOnQuest 28272
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28363 >>Accept Stirred the Hornet's Nest
    .target Harrison Jones
    .isQuestTurnedIn 28271 --Reduced Productivity
    .isQuestTurnedIn 28272 --Missing Pieces
    .xp <83,1
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .turnin 28363 >>Turn in Stirred the Hornet's Nest
    .target Sullah
    .isOnQuest 28363
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .accept 28367 >>Accept Shroud of the Makers
    .target Sullah
    .isQuestTurnedIn 28363 --any of: Stirred the Hornet's Nest
    .xp <83,1
step
    #loop
    .goto 249,38.72,23.40,0
    .goto 249,38.72,23.40,40,0
    .goto 249,40.54,24.19,40,0
    >>Click the |cRXP_PICK_Schnottz Powder Keg|r
    .complete 28367,1 --Schnottz Powder Keg
    .isOnQuest 28367
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28367 >>Turn in Shroud of the Makers
    .target Harrison Jones
    .isOnQuest 28367
step
    .goto 249,27.04,7.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28402 >>Accept Schnottz So Fast
    .target Harrison Jones
    .isQuestTurnedIn 28367 --any of: Shroud of the Makers
    .xp <83,1
step
    #loop
    .goto 249,38.23,22.64,0
    .goto 249,38.23,22.64,40,0
    .goto 249,40.47,23.72,40,0
    >>Kill |cRXP_ENEMY_Schnottz Elite Troopers|r
    .complete 28402,1 --Schnottz Elite Trooper slain (10)
    .mob Schnottz Elite Trooper
    .isOnQuest 28402
step
    .goto 249,36.15,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28402 >>Turn in Schnottz So Fast
    .target Harrison Jones
    .isOnQuest 28402
step
    .goto 249,36.15,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28403 >>Accept Bad Datas
    .target Harrison Jones
    .isQuestTurnedIn 28402 --any of: Schnottz So Fast
    .xp <83,1
step
    .goto 249,36.18,23.25
    >>Titan Data Uploaded
    .complete 28403,1 --Titan Data Uploaded
    .isOnQuest 28403
step
    .goto 249,39.00,23.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28403 >>Turn in Bad Datas
    .target Harrison Jones
    .isOnQuest 28403
step
    .goto 249,39.00,23.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28404 >>Accept I'll Do It By Hand
    .target Harrison Jones
    .isQuestTurnedIn 28403 --any of: Bad Datas
    .xp <83,1
step
    .goto 249,40.53,24.34
    >>Kill |cRXP_ENEMY_Titanic Guardian|r
    .complete 28404,1 --Titanic Guardian slain (1)
    .mob Titanic Guardian
    .isOnQuest 28404
step
    .goto 249,39.00,23.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28404 >>Turn in I'll Do It By Hand
    .target Harrison Jones
    .isOnQuest 28404
step
    .goto 249,42.16,25.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .accept 28482 >>Accept Sullah's Gift
    .target Sullah
    .isQuestTurnedIn 28404 --any of: I'll Do It By Hand
    .xp <83,1
step
    .goto 249,41.37,5.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28482 >>Turn in Sullah's Gift
    .target Harrison Jones
    .isOnQuest 28482
step
    .goto 249,41.37,5.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28497 >>Accept Fire From the Sky
    .target Harrison Jones
    .isQuestTurnedIn 28482 --any of: Sullah's Gift
    .xp <83,1
step
    .goto 249,41.37,5.55
    >>Kill 100 Schnottz Troopers while mounted on the Confiscated Artillery.
    .complete 28497,1 --Infantryman Kill Credit (1)
    .isOnQuest 28497
step
    .goto 249,41.37,5.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28497 >>Turn in Fire From the Sky
    .target Harrison Jones
    .isOnQuest 28497
step
    .goto 249,41.37,5.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28613 >>Accept See You on the Other Side!
    .target Harrison Jones
    .isQuestTurnedIn 28497 --any of: Fire From the Sky
    .xp <83,1
step
    .goto 249,36.13,15.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28613 >>Turn in See You on the Other Side!
    .target Harrison Jones
    .isOnQuest 28613
step
    .goto 249,36.13,15.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 27748 >>Accept Fortune and Glory
    .target Harrison Jones
    .isQuestTurnedIn 28613 --any of: See You on the Other Side!
    .xp <83,1
step
    .goto 249,34.95,16.92
    >>Kill |cRXP_ENEMY_Obsidian Colossus|r
    .complete 27748,1 --Obsidian Colossus slain (1)
    .mob Obsidian Colossus
    .isOnQuest 27748
step
    .goto 249,33.33,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 27748 >>Turn in Fortune and Glory
    .target Harrison Jones
    .isOnQuest 27748
step
    .goto 249,33.33,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28612 >>Accept Harrison Jones and the Temple of Uldum
    .target Harrison Jones
    .isQuestTurnedIn 27748 --any of: Fortune and Glory
    .xp <83,1
step
    .goto 249,39.00,21.53
    >>Kill |cRXP_ENEMY_Myzerian|r and loot |cRXP_LOOT_Myzerian's Head|r. Use it to start the quest
    .collect 63700,1,28376 --Myzerian's Head (1)
    .accept 28376 >>Accept Myzerian's Head
    .use 63700
    .mob Myzerian
    .isQuestTurnedIn 28367 --any of: Shroud of the Makers
    .xp <83,1
step
    .goto 249,31.93,30.78
    >>Click the |cRXP_PICK_Coffer of Promise|r
    .complete 28612,1 --Coffer of Promise
    .isOnQuest 28612
step
    .goto 249,32.59,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 28612 >>Turn in Harrison Jones and the Temple of Uldum
    .target Brann Bronzebeard
    .isOnQuest 28612
step
    .goto 249,32.59,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .accept 28621 >>Accept Put That Baby in the Cradle!
    .target Brann Bronzebeard
    .isQuestTurnedIn 28612 --any of: Harrison Jones and the Temple of Uldum
    .xp <83,1
step
    .goto 249,32.59,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 28621 >>Turn in Put That Baby in the Cradle!
    .target Harrison Jones
    .isOnQuest 28621
step
    .goto 249,32.59,30.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 28622 >>Accept Three if by Air
    .target Harrison Jones
    .isQuestTurnedIn 28621 --any of: Put That Baby in the Cradle!
    .xp <83,1
step
    .goto 249,29.61,21.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sullah|r
    .turnin 28376 >>Turn in Myzerian's Head
    .target Sullah
    .isOnQuest 28376
step
    .goto 249,32.03,31.64
    >>Use the Signal Flares at the Temple of Uldum.
    .complete 28622,3 --Signal Flare Position
    .target Signal Flare Position
    .isOnQuest 28622
step
    .goto 249,31.37,30.83
    >>Use the Signal Flares at the Temple of Uldum.
    .complete 28622,2 --Signal Flare Position
    .target Signal Flare Position
    .isOnQuest 28622
step
    .goto 249,31.98,29.91
    >>Use the Signal Flares at the Temple of Uldum.
    .complete 28622,1 --Signal Flare Position
    .target Signal Flare Position
    .isOnQuest 28622
step
    .goto 249,44.85,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 28622 >>Turn in Three if by Air
    .target Brann Bronzebeard
    .isOnQuest 28622
step
    .goto 249,44.85,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .accept 28633 >>Accept The Coffer of Promise
    .target Brann Bronzebeard
    .isQuestTurnedIn 28622 --any of: Three if by Air
    .xp <83,1
step
    .goto 249,44.98,67.22
    >>Open the |cRXP_PICK_Coffer of Promise|r. Loot it for |cRXP_LOOT_Titan Discs|r
    .complete 28633,1 --Titan Discs (1)
    .isOnQuest 28633
step
    .goto 249,44.85,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 28633 >>Turn in The Coffer of Promise
    .target Brann Bronzebeard
    .isOnQuest 28633
step
    +|cRXP_WARN_End of the Uldum route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Tanaris|r: The Grand Tablet << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 84|r: |cRXP_FRIENDLY_Deepholm|r (about 0.6 levels of quests, starting around Maruut Stonebinder), |cRXP_FRIENDLY_The Jade Forest|r (about 0.5 levels of quests, starting around Master Stone Fist). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
