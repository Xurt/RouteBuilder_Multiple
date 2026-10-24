-- 65-68 Nagrand: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 65, 69).
-- Split into 2 guides, listed under "65 - 70 Nagrand" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Nagrand.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 65 - 70 Nagrand
#subweight -65
#name 65-66 Nagrand: around Huntress Bintook

step
    .goto 1951,61.72,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
    .accept 10109 >>Accept I Must Have Them!
    .target Wazat
step
    .goto 1951,55.05,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
    .accept 9917 >>Accept Do My Eyes Deceive Me
    .target Huntress Bintook
step
    #completewith Drop9861x1
    >>|cRXP_LOOT_Howling Wind|r can drop from |cRXP_ENEMY_Dust Howler|r, |cRXP_ENEMY_Storm Rager|r, |cRXP_ENEMY_Living Cyclone|r. Use it to start the quest if you get one
    .collect 24504,1,9861 --Howling Wind (1)
    .accept 9861 >>Accept The Howling Wind
    .use 24504
step
    #label Drop9861x1
    #loop
    .goto 1951,58.92,74.38,0
    .goto 1951,58.92,74.38,40,0
    .goto 1951,55.52,80.91,40,0
    .goto 1951,59.31,79.36,40,0
    .goto 1951,63.81,73.65,40,0
    .goto 1951,61.68,60.52,40,0
    .goto 1951,58.73,64.97,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Hunter|r and loot |cRXP_LOOT_Boulderfist Plans|r
    >>Kill |cRXP_ENEMY_Mo'arg Engineers|r, |cRXP_ENEMY_Windrocs|r, |cRXP_ENEMY_Greater Windrocs|r and |cRXP_ENEMY_Talbuk Stags|r. Loot them for |cRXP_LOOT_Oshu'gun Crystal Powder Sample|r
    .complete 9917,1 --Boulderfist Plans (1)
    .complete 10076,1 --Oshu'gun Crystal Powder Sample (20)
    .mob Boulderfist Hunter
    .mob Mo'arg Engineer
    .mob Windroc
    .mob Greater Windroc
    .mob Talbuk Stag
step
    .goto 1951,55.05,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
    .turnin 9917 >>Turn in Do My Eyes Deceive Me
    .accept 9918 >>Accept Not On My Watch!
    .target Huntress Bintook
step
    .goto 1951,62.74,71.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lump|r
    .complete 9918,1 --Lump
    .target Lump
step
    .goto 1951,55.05,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
    .turnin 9918 >>Turn in Not On My Watch!
    .target Huntress Bintook
step
    .goto 1951,55.01,70.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shotgun" Jones|r
    .accept 10113 >>Accept The Nesingwary Safari
    .target "Shotgun" Jones
step
    .goto 1951,56.97,40.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathar G'ochar|r
    .target Mathar G'ochar
    .home >>Set your Hearthstone to Mathar G'ochar's inn
step
    .goto 1951,54.17,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furgu|r on the balcony at the top of the building
    .fp Telaar >> Get the Telaar flight path
    .target Furgu
    .zoneskip Nagrand,1
step
    .goto 1951,71.40,40.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristen Dipswitch|r
    .accept 9897 >>Accept I'm Saved!
    .target Kristen Dipswitch
step
    .goto 1951,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 10113 >>Turn in The Nesingwary Safari
    .accept 9789 >>Accept Clefthoof Mastery
    .target Hemet Nesingwary
step
    .goto 1951,71.57,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
    .accept 9854 >>Accept Windroc Mastery
    .target Shado 'Fitz' Farstrider
step
    .goto 1951,71.38,40.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
    .turnin 9897 >>Turn in I'm Saved!
    .accept 9857 >>Accept Talbuk Mastery
    .target Harold Lane
step
    .goto 1951,60.66,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Untrag|r
    .accept 9818 >>Accept The Underneath
    .target Elementalist Untrag
step
    .goto 1951,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .accept 9800 >>Accept A Rare Bean
    .accept 9815 >>Accept Muck Diving
    .target Elementalist Lo'ap
step
    .goto 1951,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9818 >>Turn in The Underneath
    .accept 9819 >>Accept The Tortured Earth
    .target Gordawg
step
    #loop
    .goto 1951,63.94,36.60,0
    .goto 1951,63.94,36.60,40,0
    .goto 1951,67.70,40.64,40,0
    .goto 1951,70.21,38.65,40,0
    >>Kill |cRXP_ENEMY_Windrocs|r
    .complete 9854,1 --Windroc slain (30)
    .mob Windroc
step
    #loop
    .goto 1951,64.88,51.42,0
    .goto 1951,64.88,51.42,40,0
    .goto 1951,62.92,53.11,40,0
    .goto 1951,57.62,56.36,40,0
    >>Kill |cRXP_ENEMY_Tortured Earth Spirits|r
    .complete 9819,1 --Tortured Earth Spirit slain (15)
    .mob Tortured Earth Spirit
step
    #loop
    .goto 1951,61.62,59.16,0
    .goto 1951,61.62,59.16,40,0
    .goto 1951,64.76,62.24,40,0
    .goto 1951,67.05,63.28,40,0
    .goto 1951,65.54,67.94,40,0
    >>Kill |cRXP_ENEMY_Talbuk Stags|r
    .complete 9857,1 --Talbuk Stag slain (30)
    .mob Talbuk Stag
step
    #loop
    .goto 1951,66.45,71.04,0
    .goto 1951,66.45,71.04,40,0
    .goto 1951,68.93,71.77,40,0
    >>Kill |cRXP_ENEMY_Clefthoofs|r
    .complete 9789,1 --Clefthoof slain (30)
    .mob Clefthoof
step
    #completewith Drop9861x2
    >>|cRXP_LOOT_Howling Wind|r can drop from |cRXP_ENEMY_Dust Howler|r, |cRXP_ENEMY_Storm Rager|r, |cRXP_ENEMY_Living Cyclone|r. Use it to start the quest if you get one
    .collect 24504,1,9861 --Howling Wind (1)
    .accept 9861 >>Accept The Howling Wind
    .use 24504
step
    #label Drop9861x2
    .goto 1951,60.56,63.85
    >>Kill |cRXP_ENEMY_Dust Howlers|r, |cRXP_ENEMY_Storm Ragers|r and |cRXP_ENEMY_Living Cyclones|r. Loot them for |cRXP_LOOT_Air Elemental Gas|r
    .complete 10109,1 --Air Elemental Gas (3)
    .mob Dust Howler
    .mob Storm Rager
    .mob Living Cyclone
step
    .goto 1951,60.50,22.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
    .turnin 9861 >>Turn in The Howling Wind
    .target Elementalist Morgh
    .isOnQuest 9861
step
    .goto 1951,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9819 >>Turn in The Tortured Earth while you are here
    .isQuestComplete 9819
    .target Gordawg
step
    .goto 1951,60.50,22.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
    .accept 9862 >>Accept Murkblood Corrupters
    .target Elementalist Morgh
    .isQuestTurnedIn 9861 --any of: The Howling Wind
    .xp <64,1
step
    .goto 1951,71.57,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
    .turnin 9854 >>Turn in Windroc Mastery
    .accept 9855 >>Accept Windroc Mastery
    .target Shado 'Fitz' Farstrider
step
    .goto 1951,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 9789 >>Turn in Clefthoof Mastery
    .accept 9850 >>Accept Clefthoof Mastery
    .target Hemet Nesingwary
step
    .goto 1951,71.38,40.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
    .turnin 9857 >>Turn in Talbuk Mastery
    .accept 9858 >>Accept Talbuk Mastery
    .target Harold Lane
step
    .goto 1951,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9819 >>Turn in The Tortured Earth
    .accept 9821 >>Accept Eating Damnation
    .target Gordawg
step
    #loop
    .goto 1951,57.52,52.26,0
    .goto 1951,57.52,52.26,40,0
    .goto 1951,55.97,57.23,40,0
    >>Kill |cRXP_ENEMY_Enraged Crushers|r. Loot them for |cRXP_LOOT_Enraged Crusher Core|r
    .complete 9821,1 --Enraged Crusher Core (15)
    .mob Enraged Crusher
step
    #completewith Along27
    >>As you go: Kill |cRXP_ENEMY_Talbuk Thorngrazers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9858,1 --Talbuk Thorngrazer slain (30)
    .mob Talbuk Thorngrazer
step
    #label Along27
    #loop
    .goto 1951,52.41,29.58,0
    .goto 1951,52.41,29.58,40,0
    .goto 1951,52.61,25.70,40,0
    .goto 1951,50.72,20.60,40,0
    >>Loot the |cRXP_PICK_Dungs|r for |cRXP_LOOT_Digested Caracoli|r
    .complete 9800,1 --Digested Caracoli (15)
step
    .goto 1951,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .turnin 9800 >>Turn in A Rare Bean
    .accept 9804 >>Accept Agitated Spirits of Skysong
    .target Elementalist Lo'ap
step
    .goto 1951,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9821 >>Turn in Eating Damnation
    .accept 9849 >>Accept Shattering the Veil
    .target Gordawg
step
    #loop
    .goto 1951,58.89,27.90,0
    .goto 1951,58.89,27.90,40,0
    .goto 1951,57.16,29.46,40,0
    .goto 1951,61.20,31.11,40,0
    >>Kill |cRXP_ENEMY_Lake Spirits|r
    .complete 9804,1 --Lake Spirit slain (12)
    .mob Lake Spirit
step
    .goto 1951,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .turnin 9804 >>Turn in Agitated Spirits of Skysong
    .accept 9805 >>Accept Blessing of Incineratus
    .target Elementalist Lo'ap
step
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Talbuk Thorngrazers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9858,1 --Talbuk Thorngrazer slain (30)
    .mob Talbuk Thorngrazer
step
    #label Along32
    .goto 1951,37.92,27.53
    >>Kill |cRXP_ENEMY_Murkblood Invader|r and loot |cRXP_LOOT_Murkblood Invasion Plans|r. Use it to start the quest
    .collect 24559,1,9871 --Murkblood Invasion Plans (1)
    .accept 9871 >>Accept Murkblood Invaders
    .use 24559
    .mob Murkblood Invader
step
    #loop
    .goto 1951,51.34,26.68,0
    .goto 1951,51.34,26.68,40,0
    .goto 1951,53.23,28.42,40,0
    .goto 1951,52.18,23.16,40,0
    >>Kill |cRXP_ENEMY_Talbuk Thorngrazers|r
    .complete 9858,1 --Talbuk Thorngrazer slain (30)
    .mob Talbuk Thorngrazer
step
    #loop
    .goto 1951,45.40,30.11,0
    .goto 1951,45.40,30.11,40,0
    .goto 1951,44.03,26.78,40,0
    >>Kill |cRXP_ENEMY_Clefthoof Bulls|r
    .complete 9850,1 --Clefthoof Bull slain (30)
    .mob Clefthoof Bull
step
    #completewith Along35
    >>As you go: Kill |cRXP_ENEMY_Muck Spawns|r. Loot them for |cRXP_LOOT_Muck-ridden Core|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9815,1 --Muck-ridden Core (5)
    .mob Muck Spawn
step
    #label Along35
    .goto 1951,41.20,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Researcher Kartos|r
    .accept 10076 >>Accept Oshu'gun Crystal Powder
    .turnin 10076 >>Turn in Oshu'gun Crystal Powder
    .target Chief Researcher Kartos
step
    .goto 1951,51.82,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r
    .turnin 10251 >>Turn in The Master's Grand Design?
    .target Nitrin the Learned
    .isOnQuest 10251
step
    .goto 1951,51.82,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r
    .accept 10252 >>Accept Vision of the Dead
    .target Nitrin the Learned
    .isQuestTurnedIn 10251 --any of: The Master's Grand Design?
    .xp <64,1
step
    #loop
    .goto 1951,50.48,60.60,0
    .goto 1951,50.48,60.60,40,0
    .goto 1951,49.00,59.92,40,0
    >>Kill |cRXP_ENEMY_Ravenous Windrocs|r
    .complete 9855,1 --Ravenous Windroc slain (30)
    .mob Ravenous Windroc
step
    .goto 1951,55.48,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
    .turnin 9871 >>Turn in Murkblood Invaders
    .accept 9873 >>Accept Ortor My Old Friend...
    .target Arechron
step
    .goto 1951,55.05,70.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Bintook|r
    .accept 9920 >>Accept Mo'mor the Breaker
    .target Huntress Bintook
step
    .goto 1951,54.61,72.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mo'mor the Breaker|r
    .turnin 9920 >>Turn in Mo'mor the Breaker
    .accept 9921 >>Accept The Ruins of Burning Blade
    .target Mo'mor the Breaker
step
    .goto 1951,61.72,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
    .turnin 10109 >>Turn in I Must Have Them!
    .accept 10111 >>Accept Bring Me The Egg!
    .target Wazat
step
    .goto 1951,61.34,66.98
    >>Click the |cRXP_PICK_Mysterious Egg|r
    .complete 10111,1 --Attempt to Steal Egg
step
    .goto 1951,61.72,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
    .turnin 10111 >>Turn in Bring Me The Egg!
    .target Wazat
    .isQuestComplete 10111
step
    #loop
    .goto 1951,73.19,68.52,0
    .goto 1951,73.19,68.52,40,0
    .goto 1951,73.42,71.59,40,0
    .goto 1951,77.55,61.29,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Crushers|r
    .complete 9921,1 --Boulderfist Crusher slain (15)
    .mob Boulderfist Crusher
step
    #loop
    .goto 1951,75.10,63.98,0
    .goto 1951,75.10,63.98,40,0
    .goto 1951,77.46,61.05,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Mystics|r
    .complete 9921,2 --Boulderfist Mystic slain (15)
    .mob Boulderfist Mystic
step
    .goto 1951,72.77,54.73
    >>Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
    .complete 9805,4 --Windyreed Quest Credit (Hut 03)
    .target Windyreed Quest Credit (Hut 03)
step
    .goto 1951,71.19,53.27
    >>Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
    .complete 9805,3 --Windyreed Quest Credit (Hut 02)
    .target Windyreed Quest Credit (Hut 02)
step
    .goto 1951,70.73,51.11
    >>Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
    .complete 9805,2 --Windyreed Quest Credit (Hut 01)
    .target Windyreed Quest Credit (Hut 01)
step
    .goto 1951,72.43,50.25
    >>Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
    .complete 9805,1 --Windyreed Quest Credit (Big Hut)
    .target Windyreed Quest Credit (Big Hut)
step
    .goto 1951,71.38,40.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
    .turnin 9858 >>Turn in Talbuk Mastery
    .accept 9859 >>Accept Talbuk Mastery
    .target Harold Lane
step
    .goto 1951,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 9850 >>Turn in Clefthoof Mastery
    .accept 9851 >>Accept Clefthoof Mastery
    .target Hemet Nesingwary
step
    .goto 1951,71.57,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
    .turnin 9855 >>Turn in Windroc Mastery
    .accept 9856 >>Accept Windroc Mastery
    .target Shado 'Fitz' Farstrider
step
    .goto 1951,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .turnin 9805 >>Turn in Blessing of Incineratus
    .accept 9810 >>Accept The Spirit Polluted
    .target Elementalist Lo'ap
step
    .goto 1951,54.61,72.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mo'mor the Breaker|r
    .turnin 9921 >>Turn in The Ruins of Burning Blade
    .accept 9922 >>Accept The Twin Clefts of Nagrand
    .target Mo'mor the Breaker
step
    .goto 1951,55.48,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
    .accept 9924 >>Accept Corki's Gone Missing Again!
    .target Arechron
    .isQuestTurnedIn 9923 --any of: HELP!
    .xp <64,1
step
    .goto 1951,51.11,69.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Consortium Recruiter|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9913 >>Accept The Consortium Needs You!
    .unitscan Consortium Recruiter
step
    #loop
    .goto 1951,43.74,47.66,0
    .goto 1951,43.74,47.66,40,0
    .goto 1951,45.33,42.98,40,0
    .goto 1951,43.68,40.47,40,0
    >>Kill |cRXP_ENEMY_Muck Spawns|r. Loot them for |cRXP_LOOT_Muck-ridden Core|r
    .complete 9815,1 --Muck-ridden Core (5)
    .mob Muck Spawn
step
    #completewith Along60
    >>As you go: Kill |cRXP_ENEMY_Boulderfist Warriors|r. Kill |cRXP_ENEMY_Boulderfist Mages|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9922,1 --Boulderfist Warrior slain (25)
    .complete 9922,2 --Boulderfist Mage slain (25)
    .mob Boulderfist Warrior
    .mob Boulderfist Mage
step
    #loop
    .goto 1951,41.22,34.07,0
    .goto 1951,41.22,34.07,40,0
    .goto 1951,39.62,29.07,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Warriors|r and |cRXP_ENEMY_Boulderfist Mages|r. Loot them for |cRXP_LOOT_Northwind Cleft Key|r
    .collect 25509,1,9924,1 --Northwind Cleft Key (1)
    .mob Boulderfist Warrior
    .mob Boulderfist Mage
    .isOnQuest 9924
step
    #label Along60
    .goto 1951,39.25,27.42
    >>Arechron at Telaar has asked that you find and free Corki.
    .complete 9924,1 --Corki
    .target Corki
    .isOnQuest 9924
step
    #loop
    .goto 1951,39.62,29.07,0
    .goto 1951,39.62,29.07,40,0
    .goto 1951,41.22,34.07,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Warriors|r
    >>Kill |cRXP_ENEMY_Boulderfist Mages|r
    .complete 9922,1 --Boulderfist Warrior slain (25)
    .complete 9922,2 --Boulderfist Mage slain (25)
    .mob Boulderfist Warrior
    .mob Boulderfist Mage
step
    .goto 1951,31.01,30.98
    >>Kill |cRXP_ENEMY_Gutripper|r and loot |cRXP_LOOT_Eye of Gutripper|r
    .complete 9856,1 --Eye of Gutripper (1)
    .mob Gutripper
step
    .goto 1951,33.36,25.85
    >>Kill |cRXP_ENEMY_Greater Windroc|r and loot |cRXP_LOOT_Flawless Greater Windroc Beak|r
    .complete 10252,2 --Flawless Greater Windroc Beak (1)
    .mob Greater Windroc
    .isOnQuest 10252
step
    .goto 1951,30.84,42.36
    >>Kill |cRXP_ENEMY_Ortor of Murkblood|r
    .complete 9873,1 --Ortor of Murkblood slain (1)
    .mob Ortor of Murkblood
step
    #loop
    .goto 1951,30.99,41.76,0
    .goto 1951,30.99,41.76,40,0
    .goto 1951,32.22,46.77,40,0
    >>Kill |cRXP_ENEMY_Murkblood Putrifiers|r
    .complete 9862,1 --Murkblood Putrifier slain (8)
    .mob Murkblood Putrifier
    .isOnQuest 9862
step
    #loop
    .goto 1951,33.41,51.36,0
    .goto 1951,33.41,51.36,40,0
    .goto 1951,32.26,54.01,40,0
    >>Kill |cRXP_ENEMY_Watoosun's Polluted Essence|r
    >>Kill |cRXP_ENEMY_Lake Surgers|r
    .complete 9810,1 --Watoosun's Polluted Essence slain (1)
    .complete 9810,2 --Lake Surger slain (10)
    .mob Watoosun's Polluted Essence
    .mob Lake Surger
step
    .goto 1951,26.10,53.12
    >>Kill |cRXP_ENEMY_Bach'lor|r and loot |cRXP_LOOT_Hoof of Bach'lor|r
    .complete 9859,1 --Hoof of Bach'lor (1)
    .mob Bach'lor
step
    .goto 1951,24.31,42.14
    >>Kill |cRXP_ENEMY_Mountain Gronn|r and loot |cRXP_LOOT_Mountain Gronn Eyeball|r
    .complete 10252,1 --Mountain Gronn Eyeball (1)
    .mob Mountain Gronn
    .isOnQuest 10252
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10010 >>Turn in It's Just That Easy?
    .target Altruis the Sufferer
    .isOnQuest 10010
step
    .goto 1951,31.77,56.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadrek|r
    .accept 9914 >>Accept A Head Full of Ivory
    .target Shadrek
step
    .goto 1951,31.36,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gezhe|r
    .turnin 9913 >>Turn in The Consortium Needs You! while you are here
    .isQuestComplete 9913
    .target Gezhe
step
    #completewith next
    .hs >>Hearth to Mathar G'ochar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1951,59.06,41.00
    >>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for |cRXP_LOOT_Pair of Ivory Tusks|r
    .complete 9914,1 --Pair of Ivory Tusks (3)
    .mob Wild Elekk
step
    .goto 1951,31.77,56.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadrek|r
    .turnin 9914 >>Turn in A Head Full of Ivory
    .target Shadrek
step
    .goto 1951,31.36,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gezhe|r
    .turnin 9913 >>Turn in The Consortium Needs You!
    .accept 9882 >>Accept Stealing from Thieves
    .target Gezhe
step
    .goto 1951,30.78,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerid|r
    .accept 9900 >>Accept Gava'xi
    .accept 9925 >>Accept Matters of Security
    .target Zerid
step
    #loop
    .goto 1951,26.19,72.14,0
    .goto 1951,26.19,72.14,40,0
    .goto 1951,28.03,74.82,40,0
    >>Kill |cRXP_ENEMY_Minion of Guroks|r
    .complete 9849,1 --Minion of Gurok slain (30)
    .mob Minion of Gurok
step
    #completewith Along77
    >>As you go: Kill |cRXP_ENEMY_Voidspawns|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9925,1 --Voidspawn slain (12)
    .mob Voidspawn
step
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_Vir'aani Raiders|r. Loot them for |cRXP_LOOT_Oshu'gun Crystal Fragment|r. It can also be picked up from |cRXP_PICK_Oshu'gun Crystal Fragment|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9882,1 --Oshu'gun Crystal Fragment (10)
    .mob Vir'aani Raider
step
    #label Along76
    .goto 1951,41.51,71.42
    >>Kill |cRXP_ENEMY_Gava'xi|r
    .complete 9900,1 --Gava'xi slain (1)
    .mob Gava'xi
step
    #label Along77
    #loop
    .goto 1951,38.71,71.03,0
    .goto 1951,38.71,71.03,40,0
    .goto 1951,36.99,67.23,40,0
    .goto 1951,34.71,63.20,40,0
    >>Kill |cRXP_ENEMY_Vir'aani Raiders|r. Loot them for |cRXP_LOOT_Oshu'gun Crystal Fragment|r. It can also be picked up from |cRXP_PICK_Oshu'gun Crystal Fragment|r on the ground
    .complete 9882,1 --Oshu'gun Crystal Fragment (10)
    .mob Vir'aani Raider
step
    #loop
    .goto 1951,40.52,73.91,0
    .goto 1951,40.52,73.91,40,0
    .goto 1951,37.11,76.75,40,0
    >>Kill |cRXP_ENEMY_Voidspawns|r
    .complete 9925,1 --Voidspawn slain (12)
    .mob Voidspawn
step
    .goto 1951,30.78,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerid|r
    .turnin 9900 >>Turn in Gava'xi
    .turnin 9925 >>Turn in Matters of Security
    .target Zerid
step
    .goto 1951,31.36,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gezhe|r
    .turnin 9882 >>Turn in Stealing from Thieves
    .target Gezhe
step
    .goto 1951,41.40,61.57
    >>Kill |cRXP_ENEMY_Banthar|r and loot |cRXP_LOOT_Horn of Banthar|r
    .complete 9851,1 --Horn of Banthar (1)
    .mob Banthar
step
    .goto 1951,38.17,60.33
    >>Kill |cRXP_ENEMY_Aged Clefthoof|r and loot |cRXP_LOOT_Aged Clefthoof Blubber|r
    .complete 10252,3 --Aged Clefthoof Blubber (1)
    .mob Aged Clefthoof
    .isOnQuest 10252
step
    .goto 1951,51.82,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r
    .turnin 10252 >>Turn in Vision of the Dead
    .target Nitrin the Learned
    .isOnQuest 10252
step
    .goto 1951,51.82,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r
    .accept 10253 >>Accept Levixus the Soul Caller
    .target Nitrin the Learned
    .isQuestTurnedIn 10252 --any of: Vision of the Dead
    .xp <64,1
step
    .goto 1951,54.61,72.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mo'mor the Breaker|r
    .turnin 9922 >>Turn in The Twin Clefts of Nagrand
    .accept 10108 >>Accept Diplomatic Measures
    .target Mo'mor the Breaker
step
    .goto 1951,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .complete 10108,1 --Lantresor of the Blade
    .target Lantresor of the Blade
step
    .goto 1951,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 10108 >>Turn in Diplomatic Measures while you are here
    .isQuestComplete 10108
    .target Lantresor of the Blade
step
    .goto 1951,55.48,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
    .turnin 9873 >>Turn in Ortor My Old Friend...
    .target Arechron
step
    .goto 1951,55.48,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
    .turnin 9924 >>Turn in Corki's Gone Missing Again!
    .target Arechron
    .isOnQuest 9924
step
    .goto 1951,55.48,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
    .accept 9954 >>Accept Corki's Ransom
    .target Arechron
    .isQuestTurnedIn 9924 --any of: Corki's Gone Missing Again!
    .xp <65,1
step
    .goto 1951,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 10108 >>Turn in Diplomatic Measures
    .accept 9928 >>Accept Armaments for Deception
    .accept 9927 >>Accept Ruthless Cunning
    .target Lantresor of the Blade
step
    #loop
    .goto 1951,68.62,78.69,0
    .goto 1951,68.62,78.69,40,0
    .goto 1951,71.80,80.74,40,0
    >>Pick up |cRXP_PICK_Kil'sorrow Armaments|r from the ground
    >>Kill |cRXP_ENEMY_Kil'sorrow Spellbinders|r, |cRXP_ENEMY_Kil'sorrow Cultists|r and |cRXP_ENEMY_Kil'sorrow Deathsworns|r
    .complete 9928,1 --Kil'sorrow Armaments (20)
    .complete 9927,1 --Kil'sorrow Spellbinder (8)
    .mob Kil'sorrow Spellbinder
    .mob Kil'sorrow Cultist
    .mob Kil'sorrow Deathsworn
step
    .goto 1951,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 9928 >>Turn in Armaments for Deception
    .turnin 9927 >>Turn in Ruthless Cunning
    .accept 9931 >>Accept Returning the Favor
    .accept 9932 >>Accept Body of Evidence
    .target Lantresor of the Blade
step
    .goto 1951,71.38,40.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
    .turnin 9859 >>Turn in Talbuk Mastery
    .target Harold Lane
step
    .goto 1951,71.57,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
    .turnin 9856 >>Turn in Windroc Mastery
    .target Shado 'Fitz' Farstrider
step
    .goto 1951,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 9851 >>Turn in Clefthoof Mastery
    .accept 9852 >>Accept The Ultimate Bloodsport
    .target Hemet Nesingwary
step
    .goto 1951,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9849 >>Turn in Shattering the Veil
    .accept 9853 >>Accept Gurok the Usurper
    .target Gordawg
step
    .goto 1951,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .turnin 9810 >>Turn in The Spirit Polluted
    .turnin 9815 >>Turn in Muck Diving
    .target Elementalist Lo'ap
step
    .goto 1951,60.50,22.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
    .turnin 9862 >>Turn in Murkblood Corrupters
    .target Elementalist Morgh
    .isOnQuest 9862
step
    #completewith Along99
    >>As you go: Kill |cRXP_ENEMY_Warmaul Reavers|r, |cRXP_ENEMY_Warmaul Warlocks|r, |cRXP_ENEMY_Warmaul Shamans|r and |cRXP_ENEMY_Warmaul Brutes|r. Loot them for |cRXP_LOOT_Warmaul Skull|r. Kill |cRXP_ENEMY_Warmaul Reavers|r and |cRXP_ENEMY_Warmaul Shamans|r. |cRXP_WARN_Anything left is finished later|r
    .collect 24502,1,9853,1 --Warmaul Skull (1)
    .complete 9931,1 --Warmaul Reaver (8)
    .mob Warmaul Reaver
    .mob Warmaul Warlock
    .mob Warmaul Shaman
    .mob Warmaul Brute
step
    #label Along99
    .goto 1951,46.57,24.42
    >>Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to use the Damp Woolen Blanket at the Blazing Warmaul Pyre in the Laughing Skull Courtyard to signal his ogres.
    .complete 9932,1 --Warmaul Pyre Credit Marker
    .target Warmaul Pyre Credit Marker
step
    #loop
    .goto 1951,47.59,23.18,0
    .goto 1951,47.59,23.18,40,0
    .goto 1951,45.99,19.79,40,0
    >>Kill |cRXP_ENEMY_Warmaul Reavers|r, |cRXP_ENEMY_Warmaul Warlocks|r, |cRXP_ENEMY_Warmaul Shamans|r and |cRXP_ENEMY_Warmaul Brutes|r. Loot them for |cRXP_LOOT_Warmaul Skull|r
    >>Kill |cRXP_ENEMY_Warmaul Reavers|r and |cRXP_ENEMY_Warmaul Shamans|r
    .collect 24502,1,9853,1 --Warmaul Skull (1)
    .complete 9931,1 --Warmaul Reaver (8)
    .mob Warmaul Reaver
    .mob Warmaul Warlock
    .mob Warmaul Shaman
    .mob Warmaul Brute
step
    .goto 1951,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9962 >>Accept The Ring of Blood: Brokentoe
    .target Gurgthock
step
    .goto 1951,43.70,20.40
    >>Kill |cRXP_ENEMY_Brokentoe|r
    .complete 9962,1 --Brokentoe slain (1)
    .mob Brokentoe
step
    .goto 1951,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9962 >>Turn in The Ring of Blood: Brokentoe
    .target Wodin the Troll-Servant
step
    .goto 1951,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9967 >>Accept The Ring of Blood: The Blue Brothers
    .target Gurgthock
step
    .goto 1951,43.70,20.40
    >>Kill |cRXP_ENEMY_Murkblood Twin|r
    .complete 9967,1 --Murkblood Twin slain (1)
    .mob Murkblood Twin
step
    .goto 1951,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9967 >>Turn in The Ring of Blood: The Blue Brothers
    .target Wodin the Troll-Servant
step
    .goto 1951,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9970 >>Accept The Ring of Blood: Rokdar the Sundered Lord
    .target Gurgthock
step
    .goto 1951,43.70,20.40
    >>Kill |cRXP_ENEMY_Rokdar the Sundered Lord|r
    .complete 9970,1 --Rokdar the Sundered Lord slain (1)
    .mob Rokdar the Sundered Lord
step
    .goto 1951,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9970 >>Turn in The Ring of Blood: Rokdar the Sundered Lord
    .target Wodin the Troll-Servant
step
    .goto 1951,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9972 >>Accept The Ring of Blood: Skra'gath
    .target Gurgthock
step
    .goto 1951,43.70,20.40
    >>Kill |cRXP_ENEMY_Skra'gath|r
    .complete 9972,1 --Skra'gath slain (1)
    .mob Skra'gath
step
    .goto 1951,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9972 >>Turn in The Ring of Blood: Skra'gath
    .target Wodin the Troll-Servant
step
    .goto 1951,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9973 >>Accept The Ring of Blood: The Warmaul Champion
    .target Gurgthock
step
    .goto 1951,43.70,20.40
    >>Kill |cRXP_ENEMY_Warmaul Champion|r
    .complete 9973,1 --Warmaul Champion slain (1)
    .mob Warmaul Champion
step
    .goto 1951,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9973 >>Turn in The Ring of Blood: The Warmaul Champion
    .target Wodin the Troll-Servant
step
    .goto 1951,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9977 >>Accept The Ring of Blood: The Final Challenge
    .target Gurgthock
step
    .goto 1951,42.79,20.54
    >>Kill |cRXP_ENEMY_Mogor|r
    .complete 9977,1 --Mogor slain (1)
    .mob Mogor
step
    .goto 1951,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9977 >>Turn in The Ring of Blood: The Final Challenge
    .target Wodin the Troll-Servant
step
    .goto 1951,29.05,25.04
    >>Kill |cRXP_ENEMY_Gurok the Usurper|r and loot |cRXP_LOOT_Gurok's Earthen Head|r
    .complete 9853,1 --Gurok's Earthen Head (1)
    .mob Gurok the Usurper
step
    .goto 1951,29.54,26.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corki|r
    .turnin 9954 >>Turn in Corki's Ransom
    .target Corki
    .isOnQuest 9954
step
    .goto 1951,29.54,26.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corki|r
    .accept 9955 >>Accept Cho'war the Pillager
    .target Corki
    .isQuestTurnedIn 9954 --any of: Corki's Ransom
    .xp <65,1
step
    .goto 1951,26.03,13.94
    >>Kill |cRXP_ENEMY_Cho'war the Pillager|r and loot |cRXP_LOOT_Cho'war's Key|r
    .collect 25648,1,9955,1 --Cho'war's Key (1)
    .mob Cho'war the Pillager
    .isOnQuest 9955
step
    .goto 1951,29.54,26.06
    >>Corki wants you to get Cho'war's Key so that you can free him from his cage. Return to Arechron at Telaar should you manage this task.
    .complete 9955,1 --Corki
    .target Corki
    .isOnQuest 9955
step
    .goto 1951,55.48,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
    .turnin 9955 >>Turn in Cho'war the Pillager
    .target Arechron
    .isOnQuest 9955
step
    .goto 1951,44.24,65.16
    >>Kill |cRXP_ENEMY_Tusker|r and loot |cRXP_LOOT_Heart of Tusker|r
    .complete 9852,1 --Heart of Tusker (1)
    .mob Tusker
step
    .goto 1951,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 9931 >>Turn in Returning the Favor
    .turnin 9932 >>Turn in Body of Evidence
    .accept 9933 >>Accept Message to Telaar
    .target Lantresor of the Blade
step
    .goto 1951,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 9852 >>Turn in The Ultimate Bloodsport
    .target Hemet Nesingwary
step
    .goto 1951,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9853 >>Turn in Gurok the Usurper
    .target Gordawg
step
    .goto 1951,55.48,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arechron|r
    .turnin 9933 >>Turn in Message to Telaar
    .target Arechron
step << Mage
    .zoneskip Stormwind City
    .train 27087,1
    .train 27073,1
    .xp <65,1
step
    +|cRXP_WARN_That is all of Nagrand for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Terokkar Forest|r: Levixus the Soul Caller
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Bring Me The Egg!
step
    +|cRXP_WARN_The rest of Nagrand is planned from level 69.|r Load its guide for level 69 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 65 - 70 Nagrand
#subweight -65
#name 69-70 Nagrand: around Altruis the Sufferer
--RouteBuilder:next
#next Zone Routes (Alliance)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Alliance)\69-70 Shadowmoon Valley

step
    .goto 1951,61.34,66.98
    >>Click the |cRXP_PICK_Mysterious Egg|r
    .complete 10111,1 --Attempt to Steal Egg
    .isOnQuest 10111
step
    .goto 1951,61.72,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
    .turnin 10111 >>Turn in Bring Me The Egg!
    .target Wazat
    .isQuestComplete 10111
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 10646 >>Accept Illidan's Pupil
    .target Altruis the Sufferer
    .isQuestTurnedIn 10641 --Against the Legion
    .isQuestTurnedIn 10668 --Against the Illidari
    .isQuestTurnedIn 10669 --Against All Odds
    .xp <68,1
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .complete 10646,1 --Altruis the Sufferer
    .target Altruis the Sufferer
    .isOnQuest 10646
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 10668 >>Accept Against the Illidari
    .accept 10669 >>Accept Against All Odds
    .accept 10641 >>Accept Against the Legion
    .target Altruis the Sufferer
    .isQuestTurnedIn 10640,10689 --any of: Altruis, Altruis
    .xp <68,1
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10646 >>Turn in Illidan's Pupil
    .target Altruis the Sufferer
    .isOnQuest 10646
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 10649 >>Accept The Book of Fel Names
    .target Altruis the Sufferer
    .isQuestTurnedIn 10646 --any of: Illidan's Pupil
    .xp <68,1
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 9991 >>Accept Survey the Land
    .target Altruis the Sufferer
step
    .goto 1951,27.22,43.05
    >>Forge Camps Surveyed
    .complete 9991,1 --Forge Camps Surveyed
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 9991 >>Turn in Survey the Land while you are here
    .isQuestComplete 9991
    .target Altruis the Sufferer
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 10011 >>Accept Forge Camp: Annihilated
    .target Altruis the Sufferer
    .isQuestTurnedIn 10010 --any of: It's Just That Easy?
    .xp <66,1
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 9991 >>Turn in Survey the Land
    .accept 9999 >>Accept Buying Time
    .target Altruis the Sufferer
step
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Felguard Legionnaires|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9999,1 --Felguard Legionnaire slain (2)
    .mob Felguard Legionnaire
step
    #loop
    .goto 1951,24.97,37.57,0
    .goto 1951,24.97,37.57,40,0
    .goto 1951,24.47,35.71,40,0
    >>Kill |cRXP_ENEMY_Gan'arg Tinkerers|r
    >>Kill |cRXP_ENEMY_Mo'arg Engineers|r
    .complete 9999,3 --Gan'arg Tinkerer slain (8)
    .complete 9999,2 --Mo'arg Engineer slain (3)
    .mob Gan'arg Tinkerer
    .mob Mo'arg Engineer
step
    #label Along12
    .goto 1951,24.99,36.09
    >>Kill |cRXP_ENEMY_Demos, Overseer of Hate|r and loot |cRXP_LOOT_Fel Cannon Activator|r
    .collect 25770,1,10011,1 --Fel Cannon Activator (1)
    .mob Demos, Overseer of Hate
    .isOnQuest 10011
step
    .goto 1951,25.89,35.49
    >>Kill |cRXP_ENEMY_Felguard Legionnaires|r
    .complete 9999,1 --Felguard Legionnaire slain (2)
    .mob Felguard Legionnaire
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 9999 >>Turn in Buying Time
    .accept 10001 >>Accept The Master Planner
    .target Altruis the Sufferer
step
    .goto 1951,19.61,51.10
    >>Kill |cRXP_ENEMY_Xirkos, Overseer of Fear|r and loot |cRXP_LOOT_Fel Cannon Activator|r
    .collect 25771,1,10011,1 --Fel Cannon Activator (1)
    .mob Xirkos, Overseer of Fear
    .isOnQuest 10011
step
    .goto 1951,19.37,50.77
    >>Kill |cRXP_ENEMY_Fel Cannon: Fear|r
    .complete 10011,2 --Forge Camp: Fear Destroyed (1)
    .mob Fel Cannon: Fear
    .isOnQuest 10011
step
    .goto 1951,23.61,34.64
    >>Kill |cRXP_ENEMY_Mo'arg Master Planner|r and loot |cRXP_LOOT_The Master Planner's Blueprints|r
    .complete 10001,1 --The Master Planner's Blueprints (1)
    .mob Mo'arg Master Planner
step
    .goto 1951,25.10,35.98
    >>Kill |cRXP_ENEMY_Fel Cannon: Hate|r
    .complete 10011,1 --Forge Camp: Hate Destroyed (1)
    .mob Fel Cannon: Hate
    .isOnQuest 10011
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10001 >>Turn in The Master Planner
    .accept 10004 >>Accept Patience and Understanding
    .target Altruis the Sufferer
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10011 >>Turn in Forge Camp: Annihilated
    .target Altruis the Sufferer
    .isOnQuest 10011
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10641 >>Turn in Against the Legion
    .target Altruis the Sufferer
    .isQuestComplete 10641
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10649 >>Turn in The Book of Fel Names
    .target Altruis the Sufferer
    .isQuestComplete 10649
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10668 >>Turn in Against the Illidari
    .target Altruis the Sufferer
    .isQuestComplete 10668
step
    .goto 1951,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10669 >>Turn in Against All Odds
    .target Altruis the Sufferer
    .isQuestComplete 10669
step
    .goto 1951,54.74,70.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Moi'bff Jill|r
    .accept 9938 >>Accept Wanted: Durn the Hungerer
    .target Warden Moi'bff Jill
    .isQuestTurnedIn 9936 --Wanted: Giselda the Crone
    .isQuestTurnedIn 9940 --Wanted: Zorbo the Advisor
    .xp <66,1
step
    .goto 1951,31.95,62.42
    >>Kill |cRXP_ENEMY_Durn the Hungerer|r
    .complete 9938,1 --Durn the Hungerer slain (1)
    .mob Durn the Hungerer
    .isOnQuest 9938
step
    .goto 1951,54.74,70.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Moi'bff Jill|r
    .turnin 9938 >>Turn in Wanted: Durn the Hungerer
    .target Warden Moi'bff Jill
    .isOnQuest 9938
step
    +|cRXP_WARN_End of the Nagrand route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shattrath City|r: Patience and Understanding
step
    +|cRXP_WARN_Suggested next zones at level 69|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.2 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Shadowmoon Valley|r (about 0.6 levels of quests, starting around Wing Commander Nuainn). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
