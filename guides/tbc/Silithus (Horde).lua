-- 55-60 Silithus: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 55, 58, 61).
-- Split into 3 guides, listed under "55 - 62 Silithus" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Silithus.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 55 - 62 Silithus
#subweight -55
#name 55-56 Silithus: around Beetix Ficklespragg

step
    .goto 1451/1,739.75,-6855.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .accept 8277 >>Accept Deadly Desert Venom
    .target Beetix Ficklespragg
step
    .goto 1451/1,755.77,-6847.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 8276 >>Turn in Taking Back Silithus
    .target Windcaller Proudhorn
    .isOnQuest 8276
step
    .goto 1451/1,755.77,-6847.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .accept 8280 >>Accept Securing the Supply Lines
    .target Windcaller Proudhorn
    .isQuestTurnedIn 8275,8276 --any of: Taking Back Silithus, Taking Back Silithus
    .xp <54,1
step
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .accept 8284 >>Accept The Twilight Mystery
    .target Geologist Larksbane
step
    #loop
    .goto 1451/1,1702.20,-6276.34,0
    .goto 1451/1,1702.20,-6276.34,40,0
    .goto 1451/1,1815.75,-6196.43,40,0
    .goto 1451/1,1839.79,-6317.46,40,0
    >>Pick up |cRXP_PICK_Twilight Tablet Fragment|r from the ground
    .complete 8284,1 --Twilight Tablet Fragment (8)
step
    #loop
    .goto 1451/1,546.43,-6413.63,0
    .goto 1451/1,546.43,-6413.63,40,0
    .goto 1451/1,439.49,-6411.53,40,0
    .goto 1451/1,492.78,-6582.50,40,0
    >>Kill |cRXP_ENEMY_Stonelash Scorpids|r. Loot them for |cRXP_LOOT_Stonelash Scorpid Stinger|r
    >>Kill |cRXP_ENEMY_Sand Skitterers|r. Loot them for |cRXP_LOOT_Sand Skitterer Fang|r
    .complete 8277,1 --Stonelash Scorpid Stinger (8)
    .complete 8277,2 --Sand Skitterer Fang (8)
    .mob Stonelash Scorpid
    .mob Sand Skitterer
step
    #loop
    .goto 1451/1,591.01,-6369.03,0
    .goto 1451/1,591.01,-6369.03,40,0
    .goto 1451/1,670.08,-6252.18,40,0
    .goto 1451/1,738.01,-6385.05,40,0
    >>Kill |cRXP_ENEMY_Dredge Strikers|r
    .complete 8280,1 --Dredge Striker slain (15)
    .mob Dredge Striker
    .isOnQuest 8280
step
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8284 >>Turn in The Twilight Mystery
    .accept 8285 >>Accept The Deserter
    .target Geologist Larksbane
step
    .goto 1451/1,755.77,-6847.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 8280 >>Turn in Securing the Supply Lines
    .target Windcaller Proudhorn
    .isOnQuest 8280
step
    .goto 1451/1,755.77,-6847.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .accept 8281 >>Accept Stepping Up Security
    .target Windcaller Proudhorn
    .isQuestTurnedIn 8280 --any of: Securing the Supply Lines
    .xp <54,1
step
    .goto 1451/1,739.75,-6855.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .turnin 8277 >>Turn in Deadly Desert Venom
    .accept 8278 >>Accept Noggle's Last Hope
    .target Beetix Ficklespragg
step
    .goto 1451/1,197.05,-7578.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8285 >>Turn in The Deserter
    .target Hermit Ortell
step
    #loop
    .goto 1451/1,1035.14,-7331.64,0
    .goto 1451/1,1035.14,-7331.64,40,0
    .goto 1451/1,1075.54,-7253.13,40,0
    .goto 1451/1,1215.57,-7173.92,40,0
    >>Kill |cRXP_ENEMY_Stonelash Pincers|r. Loot them for |cRXP_LOOT_Stonelash Pincer Stinger|r
    .complete 8278,2 --Stonelash Pincer Stinger (3)
    .mob Stonelash Pincer
step
    #loop
    .goto 1451/1,1386.95,-6979.49,0
    .goto 1451/1,1386.95,-6979.49,40,0
    .goto 1451/1,1508.17,-6991.57,40,0
    >>Kill |cRXP_ENEMY_Dredge Crushers|r
    .complete 8281,1 --Dredge Crusher slain (20)
    .mob Dredge Crusher
    .isOnQuest 8281
step
    #loop
    .goto 1451/1,1283.50,-7553.48,0
    .goto 1451/1,1283.50,-7553.48,40,0
    .goto 1451/1,1383.47,-7617.36,40,0
    .goto 1451/1,1415.52,-7757.43,40,0
    >>Kill |cRXP_ENEMY_Stonelash Flayers|r. Loot them for |cRXP_LOOT_Stonelash Flayer Stinger|r
    .complete 8278,1 --Stonelash Flayer Stinger (3)
    .mob Stonelash Flayer
step
    #loop
    .goto 1451/1,1216.27,-7861.03,0
    .goto 1451/1,1216.27,-7861.03,40,0
    .goto 1451/1,1247.27,-7916.78,40,0
    .goto 1451/1,1306.84,-8074.98,40,0
    >>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for |cRXP_LOOT_Rock Stalker Fang|r
    .complete 8278,3 --Rock Stalker Fang (3)
    .mob Rock Stalker
step
    .goto 1451/1,755.77,-6847.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 8281 >>Turn in Stepping Up Security
    .target Windcaller Proudhorn
    .isOnQuest 8281
step
    .goto 1451/1,739.75,-6855.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .turnin 8278 >>Turn in Noggle's Last Hope
    .target Beetix Ficklespragg
step
    .goto 1451/1,739.05,-6852.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
    .accept 8282 >>Accept Noggle's Lost Satchel
    .target Noggle Ficklespragg
step
    .xp 55 >>Grind to level 55 (Report to General Kirika needs it)
step
    .goto 1451/1,832.41,-6810.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Bloodfist|r
    .accept 9416 >>Accept Report to General Kirika
    .target Scout Bloodfist
step
    .goto 1451/1,769.71,-7573.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Kirika|r
    .turnin 9416 >>Turn in Report to General Kirika
    .target General Kirika
step
    .goto 1451/1,985.33,-8081.01
    >>Pick up |cRXP_PICK_Noggle's Satchel|r from the ground
    .complete 8282,1 --Noggle's Satchel (1)
step
    .goto 1451/1,739.05,-6852.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
    .turnin 8282 >>Turn in Noggle's Lost Satchel
    .target Noggle Ficklespragg
step
    .goto 1451/1,-314.31,-6398.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
    .turnin 1124 >>Turn in Wasteland
    .target Layo Starstrike
    .isOnQuest 1124
step
    .goto 1451/1,-314.31,-6398.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
    .accept 1125 >>Accept The Spirits of Southwind
    .target Layo Starstrike
    .isQuestTurnedIn 1124 --any of: Wasteland
    .xp <54,1
step
    #loop
    .goto 1451/1,319.66,-7055.21,0
    .goto 1451/1,319.66,-7055.21,40,0
    .goto 1451/1,351.01,-7141.86,40,0
    .goto 1451/1,352.40,-7314.22,40,0
    >>Kill |cRXP_ENEMY_Tortured Druids|r
    .complete 1125,1 --Tortured Druid slain (8)
    .mob Tortured Druid
    .isOnQuest 1125
step
    #loop
    .goto 1451/1,352.40,-7216.19,0
    .goto 1451/1,352.40,-7216.19,40,0
    .goto 1451/1,444.02,-7252.90,40,0
    .goto 1451/1,351.71,-7116.54,40,0
    >>Kill |cRXP_ENEMY_Tortured Sentinels|r
    .complete 1125,2 --Tortured Sentinel slain (8)
    .mob Tortured Sentinel
    .isOnQuest 1125
step
    .goto 1451/1,-314.31,-6398.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
    .turnin 1125 >>Turn in The Spirits of Southwind
    .target Layo Starstrike
    .isOnQuest 1125
step
    .goto 1451/1,-314.31,-6398.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
    .accept 1126 >>Accept Hive in the Tower
    .target Layo Starstrike
    .isQuestTurnedIn 1125 --any of: The Spirits of Southwind
    .xp <54,1
step
    .goto 1451/1,434.96,-7179.26
    >>Open the |cRXP_PICK_Hive'Ashi Pod|r. Loot it for |cRXP_LOOT_Silithid Goo|r
    .collect 17345,1,1126,1 --Silithid Goo (1)
    .isOnQuest 1126
step
    .goto 1451/1,440.53,-7180.19
    >>Kill |cRXP_ENEMY_Hive'Ashi Ambusher|r and loot |cRXP_LOOT_Encrusted Silithid Object|r
    .complete 1126,1 --Encrusted Silithid Object (1)
    .mob Hive'Ashi Ambusher
    .isOnQuest 1126
step
    .goto 1451/1,-314.31,-6398.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
    .turnin 1126 >>Turn in Hive in the Tower
    .target Layo Starstrike
    .isOnQuest 1126
step
    .goto 1451/1,-314.31,-6398.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Layo Starstrike|r
    .accept 6844 >>Accept Umber, Archivist
    .target Layo Starstrike
    .isQuestTurnedIn 1126 --any of: Hive in the Tower
    .xp <54,1
step
    +|cRXP_WARN_That is all of Silithus for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Moonglade|r: Umber, Archivist
step
    +|cRXP_WARN_The rest of Silithus is planned from level 58.|r Load its guide for level 58 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 55 - 62 Silithus
#subweight -55
#name 58-59 Silithus: around Commander Mar'alith

step
    .goto 1451/1,748.81,-6847.31
    >>Click the |cRXP_PICK_Wanted Poster: Deathclasp|r
    .accept 8283 >>Accept Wanted - Deathclasp, Terror of the Sands
step
    .goto 1451/1,823.70,-6752.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .accept 8304 >>Accept Dearest Natalia
    .target Commander Mar'alith
step
    .goto 1451/1,845.64,-6835.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
    .accept 8318 >>Accept Secret Communication
    .target Bor Wildmane
step
    .goto 1451/1,197.05,-7578.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
    .accept 8279 >>Accept The Twilight Lexicon
    .target Hermit Ortell
    .isQuestTurnedIn 8285 --any of: The Deserter
step
    .goto 1451/1,769.71,-7573.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Kirika|r
    .accept 9422 >>Accept Scouring the Desert
    .target General Kirika
step
    .goto 1451/1,763.44,-7568.81
    >>Find and deliver Silithyst to the Silithyst Extractor then speak with General Kirika at the Horde encampment near Hive'Regal.
    .complete 9422,1 --Silithus Dust Turnin Quest Doodad Horde
    .target Silithus Dust Turnin Quest Doodad Horde
step
    .goto 1451/1,769.71,-7573.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Kirika|r
    .turnin 9422 >>Turn in Scouring the Desert
    .target General Kirika
step
    .goto 1451/1,1099.58,-8012.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .complete 8304,2 --Rutgar Glyphshaper
    .target Rutgar Glyphshaper
step
    .goto 1451/1,1115.95,-8022.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal Stonebridge|r
    .complete 8304,1 --Frankal Stonebridge
    .target Frankal Stonebridge
step
    #loop
    .goto 1451/1,1188.40,-6992.96,0
    .goto 1451/1,1188.40,-6992.96,40,0
    .goto 1451/1,1120.13,-6988.55,40,0
    >>Kill |cRXP_ENEMY_Twilight Keeper Havunths|r, |cRXP_ENEMY_Twilight Avengers|r, |cRXP_ENEMY_Twilight Geolords|r and |cRXP_ENEMY_Twilight Stonecallers|r. Loot them for |cRXP_LOOT_Encrypted Twilight Text|r
    .complete 8318,1 --Encrypted Twilight Text (10)
    .mob Twilight Keeper Havunth
    .mob Twilight Avenger
    .mob Twilight Geolord
    .mob Twilight Stonecaller
step
    .goto 1451/1,1114.21,-6939.07
    >>Kill |cRXP_ENEMY_Twilight Keeper Havunth|r and loot |cRXP_LOOT_Twilight Lexicon - Chapter 3|r
    .complete 8279,3 --Twilight Lexicon - Chapter 3 (1)
    .mob Twilight Keeper Havunth
    .isOnQuest 8279
step
    .goto 1451/1,1619.64,-6808.99
    >>Kill |cRXP_ENEMY_Twilight Keeper Mayna|r and loot |cRXP_LOOT_Twilight Lexicon - Chapter 1|r
    .complete 8279,1 --Twilight Lexicon - Chapter 1 (1)
    .mob Twilight Keeper Mayna
    .isOnQuest 8279
step
    .goto 1451/1,1977.03,-7964.64
    >>Kill |cRXP_ENEMY_Twilight Keeper Exeter|r and loot |cRXP_LOOT_Twilight Lexicon - Chapter 2|r
    .complete 8279,2 --Twilight Lexicon - Chapter 2 (1)
    .mob Twilight Keeper Exeter
    .isOnQuest 8279
step
    .goto 1451/1,197.05,-7578.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8279 >>Turn in The Twilight Lexicon
    .target Hermit Ortell
    .isOnQuest 8279
step
    .goto 1451/1,197.05,-7578.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
    .accept 8287 >>Accept A Terrible Purpose
    .accept 8323 >>Accept True Believers
    .target Hermit Ortell
    .isQuestTurnedIn 8279 --any of: The Twilight Lexicon
step
    #loop
    .goto 1451/1,227.00,-6458.69,0
    .goto 1451/1,227.00,-6458.69,40,0
    .goto 1451/1,186.60,-6354.16,40,0
    .goto 1451/1,95.33,-6293.07,40,0
    >>Kill |cRXP_ENEMY_Twilight Keeper Havunths|r, |cRXP_ENEMY_Twilight Avengers|r, |cRXP_ENEMY_Twilight Geolords|r and |cRXP_ENEMY_Twilight Stonecallers|r. Loot them for |cRXP_LOOT_Encrypted Twilight Text|r
    .complete 8323,1 --Encrypted Twilight Text (10)
    .mob Twilight Keeper Havunth
    .mob Twilight Avenger
    .mob Twilight Geolord
    .mob Twilight Stonecaller
    .isOnQuest 8323
step
    .goto 1451/1,357.98,-7114.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aendel Windspear|r
    .target Aendel Windspear
    .home >>Set your Hearthstone to Aendel Windspear's inn
step
    .goto 1451/1,197.05,-7578.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8323 >>Turn in True Believers
    .target Hermit Ortell
    .isOnQuest 8323
step
    .goto 1451/1,823.70,-6752.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8304 >>Turn in Dearest Natalia
    .accept 8306 >>Accept Into The Maw of Madness
    .target Commander Mar'alith
step
    .goto 1451/1,823.70,-6752.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8287 >>Turn in A Terrible Purpose
    .target Commander Mar'alith
    .isOnQuest 8287
step
    .goto 1451/1,845.64,-6835.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8318 >>Turn in Secret Communication
    .target Bor Wildmane
step
    .goto 1451/1,1099.58,-8012.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .accept 8309 >>Accept Glyph Chasing
    .target Rutgar Glyphshaper
step
    .goto 1451/1,1115.95,-8022.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal Stonebridge|r
    .accept 8310 >>Accept Breaking the Code
    .target Frankal Stonebridge
step
    #completewith Drop8308x1
    >>|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r can drop from |cRXP_ENEMY_Hive'Ashi Stinger|r, |cRXP_ENEMY_Hive'Ashi Worker|r, |cRXP_ENEMY_Hive'Ashi Defender|r. Use it to start the quest if you get one
    .collect 20461,1,8308 --Brann Bronzebeard's Lost Letter (1)
    .accept 8308 >>Accept Brann Bronzebeard's Lost Letter
    .use 20461
step
    #label Drop8308x1
    #loop
    .goto 1451/1,741.14,-7812.02,0
    .goto 1451/1,741.14,-7812.02,40,0
    .goto 1451/1,657.20,-7947.91,40,0
    .goto 1451/1,543.29,-7825.96,40,0
    .goto 1451/1,624.45,-7697.27,40,0
    >>Kill |cRXP_ENEMY_Hive'Regal Ambushers|r, |cRXP_ENEMY_Hive'Regal Burrowers|r, |cRXP_ENEMY_Hive'Regal Spitfires|r and |cRXP_ENEMY_Hive'Regal Slavemakers|r. Loot them for |cRXP_LOOT_Hive'Regal Silithid Brain|r
    .complete 8310,3 --Hive'Regal Silithid Brain (1)
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Slavemaker
step
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Hive'Zora Waywatchers|r, |cRXP_ENEMY_Hive'Zora Tunnelers|r, |cRXP_ENEMY_Hive'Zora Wasps|r and |cRXP_ENEMY_Hive'Zora Reavers|r. Loot them for |cRXP_LOOT_Hive'Zora Silithid Brain|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8310,2 --Hive'Zora Silithid Brain (1)
    .mob Hive'Zora Waywatcher
    .mob Hive'Zora Tunneler
    .mob Hive'Zora Wasp
    .mob Hive'Zora Reaver
step
    #label Along24
    .goto 1451/1,1239.26,-7410.16
    >>Open the |cRXP_PICK_Hive'Zora Glyphed Crystal|r. Loot it for |cRXP_LOOT_Hive'Zora Rubbing|r
    .complete 8309,2 --Hive'Zora Rubbing (1)
step
    #completewith Drop8308x2
    >>|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r can drop from |cRXP_ENEMY_Hive'Ashi Stinger|r, |cRXP_ENEMY_Hive'Ashi Worker|r, |cRXP_ENEMY_Hive'Ashi Defender|r. Use it to start the quest if you get one
    .collect 20461,1,8308 --Brann Bronzebeard's Lost Letter (1)
    .accept 8308 >>Accept Brann Bronzebeard's Lost Letter
    .use 20461
step
    #loop
    .goto 1451/1,1546.14,-7243.37,0
    .goto 1451/1,1546.14,-7243.37,40,0
    .goto 1451/1,1613.72,-7331.64,40,0
    .goto 1451/1,1698.02,-7391.11,40,0
    .goto 1451/1,1582.02,-7555.11,40,0
    >>Kill |cRXP_ENEMY_Hive'Zora Waywatchers|r, |cRXP_ENEMY_Hive'Zora Tunnelers|r, |cRXP_ENEMY_Hive'Zora Wasps|r and |cRXP_ENEMY_Hive'Zora Reavers|r. Loot them for |cRXP_LOOT_Hive'Zora Silithid Brain|r
    .complete 8310,2 --Hive'Zora Silithid Brain (1)
    .mob Hive'Zora Waywatcher
    .mob Hive'Zora Tunneler
    .mob Hive'Zora Wasp
    .mob Hive'Zora Reaver
step
    #label Drop8308x2
    #loop
    .goto 1451/1,934.47,-6705.62,0
    .goto 1451/1,934.47,-6705.62,40,0
    .goto 1451/1,794.44,-6580.18,40,0
    .goto 1451/1,878.39,-6475.65,40,0
    .goto 1451/1,869.68,-6558.58,40,0
    >>Open the |cRXP_PICK_Hive'Ashi Glyphed Crystal|r. Loot it for |cRXP_LOOT_Hive'Ashi Rubbing|r
    >>Kill |cRXP_ENEMY_Hive'Ashi Stingers|r, |cRXP_ENEMY_Hive'Ashi Workers|r, |cRXP_ENEMY_Hive'Ashi Defenders|r and |cRXP_ENEMY_Hive'Ashi Sandstalkers|r. Loot them for |cRXP_LOOT_Hive'Ashi Silithid Brain|r
    .complete 8309,1 --Hive'Ashi Rubbing (1)
    .complete 8310,1 --Hive'Ashi Silithid Brain (1)
    .mob Hive'Ashi Stinger
    .mob Hive'Ashi Worker
    .mob Hive'Ashi Defender
    .mob Hive'Ashi Sandstalker
step
    .goto 1451/1,1099.58,-8012.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8308 >>Turn in Brann Bronzebeard's Lost Letter
    .target Rutgar Glyphshaper
    .isOnQuest 8308
step
    .goto 1451/1,1115.95,-8022.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal Stonebridge|r
    .turnin 8310 >>Turn in Breaking the Code
    .target Frankal Stonebridge
step
    .goto 1451/1,1099.58,-8012.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8309 >>Turn in Glyph Chasing
    .target Rutgar Glyphshaper
    .isQuestComplete 8309
step
    .goto 1451/1,1099.58,-8012.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .accept 8314 >>Accept Unraveling the Mystery
    .target Rutgar Glyphshaper
    .isQuestTurnedIn 8309 --Glyph Chasing
    .xp <58,1
step
    .goto 1451/1,967.56,-8102.62
    >>Kill |cRXP_ENEMY_Deathclasp|r and loot |cRXP_LOOT_Deathclasp's Pincer|r
    .complete 8283,1 --Deathclasp's Pincer (1)
    .mob Deathclasp
step
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8314 >>Turn in Unraveling the Mystery
    .target Geologist Larksbane
    .isOnQuest 8314
step
    .goto 1451/1,769.71,-6740.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish Kozus|r
    .turnin 8283 >>Turn in Wanted - Deathclasp, Terror of the Sands
    .target Vish Kozus
step
    .goto 1451/1,823.70,-6752.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8306 >>Turn in Into The Maw of Madness
    .target Commander Mar'alith
    .isQuestComplete 8306
step
    +|cRXP_WARN_That is all of Silithus for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Kalimdor - the continent map and back here|r: Into The Maw of Madness, Glyph Chasing
step
    +|cRXP_WARN_The rest of Silithus is planned from level 61.|r Load its guide for level 61 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 55 - 62 Silithus
#subweight -55
#name 61-62 Silithus: around Geologist Larksbane
--RouteBuilder:next
#next Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel;Zone Routes (Horde)\62-64 Terokkar Forest: around Tooki

step
    .goto 1451/1,814.99,-6805.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .accept 8301 >>Accept The Path of the Righteous
    .target Baristolth of the Shifting Sands
    .isQuestTurnedIn 8288 --any of: Only One May Rise
    .xp <60,1
step
    .goto 1451/1,814.99,-6805.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .accept 8286 >>Accept What Tomorrow Brings
    .target Baristolth of the Shifting Sands
step
    .goto 1451/1,796.53,-6802.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Kaldon|r
    .accept 8800 >>Accept Cenarion Battlegear
    .target Windcaller Kaldon
step
    .goto 1451/1,721.64,-6867.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Thunderwood|r
    .accept 9023 >>Accept The Perfect Poison
    .target Dirk Thunderwood
step
    .goto 1451/1,752.99,-6861.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vargus|r
    .turnin 8800 >>Turn in Cenarion Battlegear
    .target Vargus
step
    .goto 1451/1,721.64,-6867.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Thunderwood|r
    .turnin 9023 >>Turn in The Perfect Poison
    .target Dirk Thunderwood
    .isQuestComplete 9023
step
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .accept 8315 >>Accept The Calling
    .target Geologist Larksbane
    .isQuestTurnedIn 8314 --any of: Unraveling the Mystery
    .xp <58,1
step
    .goto 1451/1,845.64,-6835.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
    .accept 8361 >>Accept Abyssal Contacts
    .target Bor Wildmane
step
    .goto 1451/1,843.90,-6838.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
    .accept 8320 >>Accept Twilight Geolords
    .target Huum Wildmane
step
    #loop
    .goto 1451/1,1129.54,-6999.93,0
    .goto 1451/1,1129.54,-6999.93,40,0
    .goto 1451/1,1180.39,-6944.18,40,0
    >>Kill |cRXP_ENEMY_Twilight Geolords|r
    >>Kill |cRXP_ENEMY_Crimson Templars|r, |cRXP_ENEMY_Azure Templars|r, |cRXP_ENEMY_Hoary Templars|r and |cRXP_ENEMY_Earthen Templars|r. Loot them for |cRXP_LOOT_Abyssal Crest|r
    .complete 8320,1 --Twilight Geolord slain (10)
    .complete 8361,1 --Abyssal Crest (1)
    .mob Twilight Geolord
    .mob Crimson Templar
    .mob Azure Templar
    .mob Hoary Templar
    .mob Earthen Templar
step
    .goto 1451/1,845.64,-6835.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8361 >>Turn in Abyssal Contacts
    .target Bor Wildmane
step
    .goto 1451/1,843.90,-6838.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
    .turnin 8320 >>Turn in Twilight Geolords
    .accept 8321 >>Accept Vyral the Vile
    .target Huum Wildmane
step
    .goto 1451/1,15.91,-6320.24
    >>Kill |cRXP_ENEMY_Vyral the Vile|r and loot |cRXP_LOOT_Vyral's Signet Ring|r
    .complete 8321,1 --Vyral's Signet Ring (1)
    .mob Vyral the Vile
step
    .goto 1451/1,843.90,-6838.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
    .turnin 8321 >>Turn in Vyral the Vile
    .target Huum Wildmane
step
    .goto 1451/1,814.99,-6805.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .turnin 8286 >>Turn in What Tomorrow Brings
    .target Baristolth of the Shifting Sands
    .isQuestComplete 8286
step
    .goto 1451/1,1239.26,-7410.16
    >>Open the |cRXP_PICK_Hive'Zora Glyphed Crystal|r. Loot it for |cRXP_LOOT_Hive'Zora Rubbing|r
    .complete 8309,2 --Hive'Zora Rubbing (1)
    .isOnQuest 8309
step
    .goto 1451/1,765.53,-6579.95
    >>Open the |cRXP_PICK_Hive'Ashi Glyphed Crystal|r. Loot it for |cRXP_LOOT_Hive'Ashi Rubbing|r
    .complete 8309,1 --Hive'Ashi Rubbing (1)
    .isOnQuest 8309
step
    .goto 1451/1,838.68,-7308.88
    >>Kill |cRXP_ENEMY_Emissary Roman'khan|r and loot |cRXP_LOOT_Crystal Unlocking Mechanism|r
    .complete 8315,1 --Crystal Unlocking Mechanism (1)
    .mob Emissary Roman'khan
    .isOnQuest 8315
step
    .goto 1451/1,1099.58,-8012.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8309 >>Turn in Glyph Chasing
    .target Rutgar Glyphshaper
    .isQuestComplete 8309
step
    #loop
    .goto 1451/1,1582.02,-7555.11,0
    .goto 1451/1,1582.02,-7555.11,40,0
    .goto 1451/1,1698.02,-7391.11,40,0
    .goto 1451/1,1613.72,-7331.64,40,0
    .goto 1451/1,1546.14,-7243.37,40,0
    >>Kill |cRXP_ENEMY_Hive'Ashi Stingers|r, |cRXP_ENEMY_Hive'Ashi Workers|r, |cRXP_ENEMY_Hive'Ashi Defenders|r and |cRXP_ENEMY_Hive'Ashi Sandstalkers|r. Loot them for |cRXP_LOOT_Silithid Carapace Fragment|r
    .complete 8301,1 --Silithid Carapace Fragment (200)
    .mob Hive'Ashi Stinger
    .mob Hive'Ashi Worker
    .mob Hive'Ashi Defender
    .mob Hive'Ashi Sandstalker
    .isOnQuest 8301
step
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8315 >>Turn in The Calling
    .target Geologist Larksbane
    .isOnQuest 8315
step
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .accept 8381 >>Accept Armaments of War << Mage/Warlock
    .accept 8316 >>Accept Armaments of War << Warrior
    .accept 8377 >>Accept Armaments of War << Hunter
    .accept 8378 >>Accept Armaments of War << Rogue
    .accept 8380 >>Accept Armaments of War << Shaman
    .accept 8379 >>Accept Armaments of War << Priest
    .accept 8382 >>Accept Armaments of War << Druid
    .accept 8376 >>Accept Armaments of War << Paladin
    .target Geologist Larksbane
    .isQuestTurnedIn 8315 --any of: The Calling
    .xp <58,1
step << Mage/Warlock
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8381 >>Turn in Armaments of War
    .target Geologist Larksbane
    .isOnQuest 8381
step << Warrior
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8316 >>Turn in Armaments of War
    .target Geologist Larksbane
    .isOnQuest 8316
step << Hunter
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8377 >>Turn in Armaments of War
    .target Geologist Larksbane
    .isOnQuest 8377
step << Rogue
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8378 >>Turn in Armaments of War
    .target Geologist Larksbane
    .isOnQuest 8378
step << Shaman
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8380 >>Turn in Armaments of War
    .target Geologist Larksbane
    .isOnQuest 8380
step << Priest
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8379 >>Turn in Armaments of War
    .target Geologist Larksbane
    .isOnQuest 8379
step << Druid
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8382 >>Turn in Armaments of War
    .target Geologist Larksbane
    .isOnQuest 8382
step << Paladin
    .goto 1451/1,807.33,-6828.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8376 >>Turn in Armaments of War
    .target Geologist Larksbane
    .isOnQuest 8376
step
    .goto 1451/1,814.99,-6805.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baristolth of the Shifting Sands|r
    .turnin 8301 >>Turn in The Path of the Righteous
    .target Baristolth of the Shifting Sands
    .isOnQuest 8301
step
    .goto 1451/1,823.70,-6752.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8306 >>Turn in Into The Maw of Madness
    .target Commander Mar'alith
    .isQuestComplete 8306
step
    +|cRXP_WARN_End of the Silithus route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Tanaris, another zone and back here|r: What Tomorrow Brings
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Perfect Poison
step
    +|cRXP_WARN_Suggested next zones at level 61|r: |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.9 levels of quests, starting around Nazgrel), |cRXP_FRIENDLY_Terokkar Forest|r (about 0.6 levels of quests, starting around Tooki). Completing this step loads the guide for Hellfire Peninsula --RouteBuilder:next
]])
