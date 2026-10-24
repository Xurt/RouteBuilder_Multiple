-- 57-60 Moonglade: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/tbc/Moonglade.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#name 57-60 Moonglade

step << Druid
    .goto 1450/1,-2593.82,7867.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .accept 9063 >>Accept Torwa Pathfinder
    .target Loganaar
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
    .turnin 1123 >>Turn in Rabine Saturna
    .target Rabine Saturna
    .isOnQuest 1123
step
    .goto 1450/1,-2574.43,7797.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rabine Saturna|r
    .accept 5527 >>Accept A Reliquary of Purity
    .accept 1124 >>Accept Wasteland
    .target Rabine Saturna
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
    .xp <55,1
step
    .goto 1450/1,-2417.23,7943.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umber|r
    .turnin 1185 >>Turn in Under the Chitin Was...
    .target Umber
    .isOnQuest 1185
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6129 >>Turn in Curing the Sick
    .target Dendrite Starblaze
    .isQuestComplete 6129
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 6130 >>Accept Power over Poison
    .target Dendrite Starblaze
    .isQuestTurnedIn 6129 --any of: Curing the Sick
    .xp <14,1
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6126 >>Turn in Lessons Anew
    .target Dendrite Starblaze
    .isOnQuest 6126
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 6127 >>Accept The Principal Source
    .target Dendrite Starblaze
    .isQuestTurnedIn 6126 --any of: Lessons Anew
    .xp <14,1
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 5922 >>Turn in Moonglade
    .target Dendrite Starblaze
    .isOnQuest 5922
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 5930 >>Accept Great Bear Spirit
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922 --any of: Moonglade
    .xp <10,1
step << Tauren Druid
    .goto 1450/1,-2284.04,8068.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5930,1 --Great Bear Spirit
    .target Great Bear Spirit
    .isOnQuest 5930
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 5930 >>Turn in Great Bear Spirit
    .target Dendrite Starblaze
    .isOnQuest 5930
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 5932 >>Accept Back to Thunder Bluff
    .target Dendrite Starblaze
    .isQuestTurnedIn 5930 --any of: Great Bear Spirit
    .xp <10,1
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >>Train your class spells
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Train your class spells
    .target Loganaar
    .xp <20,1
step
    .hs >>Hearth to Camp Taurajo
    .subzoneskip 378
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 27 >>Turn in A Lesson to Learn
    .target Dendrite Starblaze
    .isOnQuest 27
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 28 >>Accept Trial of the Lake
    .target Dendrite Starblaze
    .isQuestTurnedIn 27 --any of: A Lesson to Learn
    .xp <16,1
step << Tauren Druid
    #loop
    .goto 1450/1,-2630.06,7720.33,0
    .goto 1450/1,-2630.06,7720.33,40,0
    .goto 1450/1,-2537.72,7712.64,40,0
    .goto 1450/1,-2731.62,7709.56,40,0
    >>Open the |cRXP_PICK_Bauble Container|r. Loot it for |cRXP_LOOT_Shrine Bauble|r
    .collect 15877,1,28,1 --Shrine Bauble (1)
    .isOnQuest 28
step << Tauren Druid
    .goto 1450/1,-2212.25,7853.97
    >>Click the |cRXP_PICK_Shrine Of Remulos|r
    .complete 28,1 --Shrine Of Remulos
    .isOnQuest 28
step << Tauren Druid
    .goto 1450/1,-2224.25,7874.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >>Turn in Trial of the Lake
    .target Tajarri
    .isOnQuest 28
step << Tauren Druid
    .goto 1450/1,-2224.25,7874.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .accept 30 >>Accept Trial of the Sea Lion
    .target Tajarri
    .isQuestTurnedIn 28 --any of: Trial of the Lake
    .xp <16,1
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Train your class spells
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Train your class spells
    .target Loganaar
    .xp <22,1
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1822 >>Train your class spells
    .target Loganaar
    .xp <24,1
    .xp >26,1
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >>Train your class spells
    .target Loganaar
    .xp <26,1
step << Tauren Druid
    .goto 1450/1,-2212.25,7853.97
    >>Open the |cRXP_PICK_Shrine Of Remulos|r. Loot it for |cRXP_LOOT_Pendant of the Sea Lion|r
    .complete 30,1 --Pendant of the Sea Lion (1)
    .isOnQuest 30
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 30 >>Turn in Trial of the Sea Lion
    .target Dendrite Starblaze
    .isOnQuest 30
step << Tauren Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .accept 31 >>Accept Aquatic Form
    .target Dendrite Starblaze
    .isQuestTurnedIn 30 --any of: Trial of the Sea Lion
    .xp <16,1
step << Mage
    .zoneskip Orgrimmar
    .train 3567,3
step << !Shaman
    .zoneskip Orgrimmar
    .train 3567,1 << Mage
step
    +|cRXP_WARN_End of the Moonglade route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Silithus|r: Wasteland
    >>|cRXP_FRIENDLY_The Barrens|r: The Principal Source << Druid
    >>|cRXP_FRIENDLY_Thunder Bluff|r: Back to Thunder Bluff, Aquatic Form << Tauren Druid
    >>|cRXP_FRIENDLY_Thunder Bluff|r: Power over Poison << Druid
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Torwa Pathfinder << Druid
    >>|cRXP_FRIENDLY_Silithus and back here|r: A Reliquary of Purity
]])
