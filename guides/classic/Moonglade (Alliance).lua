-- 57-60 Moonglade: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/classic/Moonglade.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 57-60 Moonglade

step << Druid
    .goto 1450/1,-2593.82,7867.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .accept 9063 >>Accept Torwa Pathfinder
    .target Loganaar
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 5921 >>Turn in Moonglade
    .target Dendrite Starblaze
    .isOnQuest 5921
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 5929 >>Accept Great Bear Spirit
    .target Dendrite Starblaze
    .isQuestTurnedIn 5921 --any of: Moonglade
    .xp <10,1
step << NightElf Druid
    .goto 1450/1,-2284.04,8068.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5929,1 --Great Bear Spirit
    .target Great Bear Spirit
    .isOnQuest 5929
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 5929 >>Turn in Great Bear Spirit
    .target Dendrite Starblaze
    .isOnQuest 5929
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 5931 >>Accept Back to Darnassus
    .target Dendrite Starblaze
    .isQuestTurnedIn 5929 --any of: Great Bear Spirit
    .xp <10,1
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6121 >>Turn in Lessons Anew
    .target Dendrite Starblaze
    .isOnQuest 6121
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 6122 >>Accept The Principal Source
    .target Dendrite Starblaze
    .isQuestTurnedIn 6121 --any of: Lessons Anew
    .xp <14,1
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 26 >>Turn in A Lesson to Learn
    .target Dendrite Starblaze
    .isOnQuest 26
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 29 >>Accept Trial of the Lake
    .target Dendrite Starblaze
    .isQuestTurnedIn 26 --any of: A Lesson to Learn
    .xp <16,1
step << NightElf Druid
    #loop
    .goto 1450/1,-2630.06,7720.33,0
    .goto 1450/1,-2630.06,7720.33,40,0
    .goto 1450/1,-2537.72,7712.64,40,0
    .goto 1450/1,-2731.62,7709.56,40,0
    >>Open the |cRXP_PICK_Bauble Container|r. Loot it for |cRXP_LOOT_Shrine Bauble|r
    .collect 15877,1,29,1 --Shrine Bauble (1)
    .isOnQuest 29
step << NightElf Druid
    .goto 1450/1,-2212.25,7853.97
    >>Click the |cRXP_PICK_Shrine Of Remulos|r
    .complete 29,1 --Shrine Of Remulos
    .isOnQuest 29
step << NightElf Druid
    .goto 1450/1,-2224.25,7874.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >>Turn in Trial of the Lake
    .target Tajarri
    .isOnQuest 29
step << NightElf Druid
    .goto 1450/1,-2224.25,7874.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .accept 272 >>Accept Trial of the Sea Lion
    .target Tajarri
    .isQuestTurnedIn 29 --any of: Trial of the Lake
    .xp <16,1
step << Druid
    .goto 1450/1,-2593.82,7867.06
    >>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
    .xp <18,1
step << Druid
    .goto 1450/1,-2593.82,7867.06
    >>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
    .xp <20,1
step << Druid
    .hs >> Hearth to Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6124 >>Turn in Curing the Sick
    .target Dendrite Starblaze
    .isQuestComplete 6124
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 6125 >>Accept Power over Poison
    .target Dendrite Starblaze
    .isQuestTurnedIn 6124 --any of: Curing the Sick
    .xp <14,1
step << Druid
    .goto 1450/1,-2593.82,7867.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step << Druid
    .goto 1450/1,-2593.82,7867.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Train your class spells
    .target Loganaar
    .xp <24,1
step << NightElf Druid
    .goto 1450/1,-2212.25,7853.97
    >>Open the |cRXP_PICK_Shrine Of Remulos|r. Loot it for |cRXP_LOOT_Pendant of the Sea Lion|r
    .complete 272,1 --Pendant of the Sea Lion (1)
    .isOnQuest 272
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 272 >>Turn in Trial of the Sea Lion
    .target Dendrite Starblaze
    .isOnQuest 272
step << NightElf Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 5061 >>Accept Aquatic Form
    .target Dendrite Starblaze
    .isQuestTurnedIn 272 --any of: Trial of the Sea Lion
    .xp <16,1
step
    .goto 1450/1,-2574.43,7797.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 6762 >>Turn in Rabine Saturna
    .target Rabine Saturna
    .isOnQuest 6762
step
    .goto 1450/1,-2574.43,7797.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .accept 1124 >>Accept Wasteland
    .accept 5527 >>Accept A Reliquary of Purity
    .target Rabine Saturna
step
    .goto 1450/1,-2417.23,7943.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
    .turnin 6844 >>Turn in Umber, Archivist
    .target Umber
    .isOnQuest 6844
step
    .goto 1450/1,-2417.23,7943.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
    .accept 6845 >>Accept Uncovering Past Secrets
    .target Umber
    .isQuestTurnedIn 6844 --any of: Umber, Archivist
    .xp <54,1
step
    .goto 1450/1,-2574.43,7797.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 6845 >>Turn in Uncovering Past Secrets
    .target Rabine Saturna
    .isOnQuest 6845
step
    .goto 1450/1,-2574.43,7797.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 5527 >>Turn in A Reliquary of Purity
    .target Rabine Saturna
    .isQuestComplete 5527
step
    .goto 1450/1,-2574.43,7797.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .accept 5526 >>Accept Shards of the Felvine
    .target Rabine Saturna
    .isQuestTurnedIn 5527 --any of: A Reliquary of Purity
    .xp <56,1
step
    .goto 1450/1,-2574.43,7797.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 5526 >>Turn in Shards of the Felvine
    .target Rabine Saturna
    .isOnQuest 5526
step
    .goto 1450/1,-2417.23,7943.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
    .accept 1185 >>Accept Under the Chitin Was...
    .target Umber
    .isQuestTurnedIn 6845 --any of: Uncovering Past Secrets
    .xp <54,1
step
    .goto 1450/1,-2417.23,7943.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
    .turnin 1185 >>Turn in Under the Chitin Was...
    .target Umber
    .isOnQuest 1185
step
    +|cRXP_WARN_End of the Moonglade route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darkshore|r: The Principal Source << NightElf Druid
    >>|cRXP_FRIENDLY_Darnassus|r: Back to Darnassus, Power over Poison, Aquatic Form << NightElf Druid
    >>|cRXP_FRIENDLY_Silithus|r: Wasteland
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Torwa Pathfinder << Druid
    >>|cRXP_FRIENDLY_Silithus and back here|r: A Reliquary of Purity
]])
