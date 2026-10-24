-- 51-54 Burning Steppes: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/classic/Burning Steppes.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde
#version 1
#group Zone Routes (Horde)
#name 51-54 Burning Steppes

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
    +|cRXP_WARN_That is all of Burning Steppes for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Winterspring|r: Felnok Steelspring
step
    +|cRXP_WARN_End of the Burning Steppes route.|r
]])
