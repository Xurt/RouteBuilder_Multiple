-- 12-18 The Barrens: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 12, 15, 18).
-- Split into 3 guides, listed under "12 - 19 The Barrens" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/The Barrens.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 12 - 19 The Barrens
#subweight -12
#name 12-13 The Barrens
--RouteBuilder:next
#next Zone Routes (Alliance)\10-13 Darkshore: around Ranger Glynda Nal'Shea;Zone Routes (Alliance)\11-15 Loch Modan: around Captain Rugelfuss

step
    .goto 10,54.03,41.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Una Wolfclaw|r
    .accept 13973 >>Accept The Grol'dom Militia
    .target Una Wolfclaw
step
    #loop
    .goto 10,52.74,42.20,0
    .goto 10,52.74,42.20,40,0
    .goto 10,51.38,39.03,40,0
    >>Kill |cRXP_ENEMY_Razormane Pillagers|r
    .complete 13973,1 --Razormane Pillager slain (6)
    .mob Razormane Pillager
step
    .goto 10,54.03,41.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Una Wolfclaw|r
    .turnin 13973 >>Turn in The Grol'dom Militia
    .target Una Wolfclaw
step
    .goto 10,67.66,39.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal Battlescar|r
    .turnin 26642 >>Turn in Preserving the Barrens
    .target Kargal Battlescar
    .isOnQuest 26642
step
    .goto 10,67.81,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 25264 >>Turn in Ak'Zeloth
    .target Ak'Zeloth
    .isOnQuest 25264
step
    .goto 10,37.53,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ta'jari|r
    .accept 13992 >>Accept A Little Diversion
    .target Ta'jari
step
    #loop
    .goto 10,39.79,45.67,0
    .goto 10,39.79,45.67,40,0
    .goto 10,38.20,49.65,40,0
    .goto 10,35.86,43.08,40,0
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r, |cRXP_ENEMY_Kolkar Stormers|r and |cRXP_ENEMY_Kolkar Counters|r
    .complete 13992,1 --Kolkar Wrangler (8)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .mob Kolkar Counter
step
    .goto 10,37.53,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ta'jari|r
    .turnin 13992 >>Turn in A Little Diversion
    .target Ta'jari
step
    .xp 12 >>Grind to level 12 (King of Centaur Mountain needs it)
step
    .goto 10,55.03,78.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorgal Angerscar|r
    .accept 13995 >>Accept King of Centaur Mountain
    .target Gorgal Angerscar
step
    .goto 10,54.94,77.49
    >>Click the |cRXP_PICK_Horde Banner|r
    >>Kill |cRXP_ENEMY_Kurak|r
    .complete 13995,2 --Horde Banner
    .complete 13995,1 --Kurak slain (1)
    .mob Kurak
step
    .goto 10,55.20,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoe|r
    .turnin 13995 >>Turn in King of Centaur Mountain
    .target Shoe
step
    +|cRXP_WARN_Suggested next zones at level 12|r: |cRXP_FRIENDLY_Darkshore|r (about 1.3 levels of quests, starting around Ranger Glynda Nal'Shea), |cRXP_FRIENDLY_Loch Modan|r (about 0.6 levels of quests, starting around Captain Rugelfuss). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of The Barrens is planned from level 15.|r Load its guide for level 15 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 12 - 19 The Barrens
#subweight -12
#name 15-16 The Barrens
--RouteBuilder:next
#next Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step
    .goto 10,68.26,71.24
    >>Click the |cRXP_PICK_WANTED|r
    .accept 895 >>Accept WANTED: Cap'n Garvey
step
    .goto 10,77.85,89.26
    >>Kill |cRXP_ENEMY_Cap'n Garvey|r and loot |cRXP_LOOT_Cap'n Garvey's Head|r
    .complete 895,1 --Cap'n Garvey's Head (1)
    .mob Cap'n Garvey
step
    .goto 10,68.41,69.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 895 >>Turn in WANTED: Cap'n Garvey
    .target Gazlowe
step
    .goto 10,62.37,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kala'ma|r
    .accept 14068 >>Accept Waptor Twapping
    .target Kala'ma
step
    #loop
    .goto 10,63.05,58.85,0
    .goto 10,63.05,58.85,40,0
    .goto 10,64.36,56.81,40,0
    .goto 10,65.76,61.63,40,0
    >>Loot the |cRXP_PICK_Woaded Waptor Twaps|r for |cRXP_LOOT_Wittle Waptor|r
    .complete 14068,1 --Wittle Waptor (5)
step
    .goto 10,49.99,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra Darkthorn|r
    .accept 13991 >>Accept The Purloined Payroll
    .target Sergra Darkthorn
    .isQuestTurnedIn 905 --any of: Into the Raptor's Den
    .xp <13,1
step
    .goto 10,62.37,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kala'ma|r
    .turnin 14068 >>Turn in Waptor Twapping
    .target Kala'ma
step
    .goto 10,66.86,72.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 13991 >>Turn in The Purloined Payroll
    .target Gazrog
    .isOnQuest 13991
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_Darkshore|r (about 0.9 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of The Barrens is planned from level 18.|r Load its guide for level 18 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 12 - 19 The Barrens
#subweight -12
#name 18-19 The Barrens
--RouteBuilder:next
#next Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step
    .goto 10,67.86,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Accept It's Gotta be the Horn
    .target Mebok Mizzyrix
step
    .goto 10,65.88,61.52
    >>Kill |cRXP_ENEMY_King Reaperclaw|r and loot |cRXP_LOOT_King Reaperclaw's Horn|r
    .complete 865,1 --King Reaperclaw's Horn (1)
    .mob King Reaperclaw
step
    .goto 10,67.86,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Turn in It's Gotta be the Horn
    .target Mebok Mizzyrix
step
    .goto 10,48.69,59.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 14073 >>Accept Deathgate's Reinforcements
    .target Thork
    .isQuestTurnedIn 851 --any of: Verog the Dervish
    .xp <16,1
step
    .goto 10,37.84,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar Deathgate|r
    .turnin 14073 >>Turn in Deathgate's Reinforcements
    .target Regthar Deathgate
    .isOnQuest 14073
step
    +|cRXP_WARN_End of the The Barrens route.|r
step
    +|cRXP_WARN_Suggested next zones at level 18|r: |cRXP_FRIENDLY_Darkshore|r (about 0.7 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
