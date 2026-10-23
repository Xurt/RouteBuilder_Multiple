-- 51-60 Burning Steppes: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Forever data (commit 1f53833, 2026-10-22; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 51, 57).
-- Split into 2 guides, listed under "51 - 58 Burning Steppes" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/Burning Steppes.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 51 - 58 Burning Steppes
#subweight -51
#name 51-52 Burning Steppes

step
    .goto 1428/0,-1114.95,-7595.99
    >>Click the |cRXP_PICK_Book|r
    .accept 81953 >>Accept Stonewrought Design
step
    .goto 1428/0,-1114.95,-7595.99
    >>Open the |cRXP_PICK_Book|r. Loot it for |cRXP_LOOT_Stonewrought Design|r
    .complete 81953,1 --Stonewrought Design (1)
step << Warlock
    .goto 1428/0,-638.38,-7648.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'zul Bloodbringer|r
    .turnin 7562 >>Turn in Mor'zul Bloodbringer
    .target Mor'zul Bloodbringer
    .isOnQuest 7562
step << Warlock
    .goto 1428/0,-631.05,-7648.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 7625 >>Turn in Xorothian Stardust
    .target Gorzeeki Wildeyes
    .isQuestComplete 7625
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
    +|cRXP_WARN_That is all of Burning Steppes for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Undercity|r: Stonewrought Design
    >>|cRXP_FRIENDLY_Winterspring|r: Felnok Steelspring
step
    +|cRXP_WARN_The rest of Burning Steppes is planned from level 57.|r Load its guide for level 57 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 51 - 58 Burning Steppes
#subweight -51
#name 57-58 Burning Steppes

step
    .goto 1428/0,-1039.97,-7508.53
    >>Click the |cRXP_PICK_Book|r
    .accept 84396 >>Accept Magma or Lava?
step
    .goto 1428/0,-1039.97,-7508.53
    >>Open the |cRXP_PICK_Book|r. Loot it for |cRXP_LOOT_Magma or Lava?|r
    .complete 84396,1 --Magma or Lava? (1)
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
    >>|cRXP_FRIENDLY_Stormwind City|r: Magma or Lava?
step
    +|cRXP_WARN_End of the Burning Steppes route.|r
]])
