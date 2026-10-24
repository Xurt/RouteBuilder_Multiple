-- 55-60 Eastern Plaguelands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 55, 58, 61).
-- Split into 3 guides, listed under "55 - 62 Eastern Plaguelands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Eastern Plaguelands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 55 - 62 Eastern Plaguelands
#subweight -55
#name 55-56 Eastern Plaguelands: around Tirion Fordring
--RouteBuilder:next
#next Zone Routes (Alliance)\55-57 Western Plaguelands: around Commander Ashlam Valorfist

step
    .goto 1423/0,-2480.37,2673.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5861 >>Accept Find Myranda
    .target Tirion Fordring
    .isQuestTurnedIn 5848 --any of: Of Love and Family
    .xp <52,1
step
    .goto 1423/0,-2480.37,2673.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .accept 5542 >>Accept Demon Dogs
    .accept 5543 >>Accept Blood Tinged Skies
    .accept 5544 >>Accept Carrion Grubbage
    .target Tirion Fordring
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5601 >>Turn in Sister Pamela
    .target Pamela Redpath
    .isOnQuest 5601
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 5149 >>Accept Pamela's Doll
    .target Pamela Redpath
step
    #completewith Along4
    >>As you go: Pick up |cRXP_PICK_Pamela's Doll's Right Side|r from the ground. Pick up |cRXP_PICK_Pamela's Doll's Left Side|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .collect 12888,1,5149,1 --Pamela's Doll's Right Side (1)
    .collect 12887,1,5149,1 --Pamela's Doll's Left Side (1)
step
    #label Along4
    .goto 1423/0,-3657.88,1411.05
    >>Pick up |cRXP_PICK_Pamela's Doll's Head|r from the ground
    .collect 12886,1,5149,1 --Pamela's Doll's Head (1)
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5142 >>Turn in Little Pamela
    .target Pamela Redpath
    .isOnQuest 5142
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5149 >>Turn in Pamela's Doll
    .target Pamela Redpath
    .isQuestComplete 5149
step
    .goto 1423/0,-3680.33,1407.70
    >>Pick up |cRXP_PICK_Pamela's Doll's Right Side|r from the ground
    >>Pick up |cRXP_PICK_Pamela's Doll's Left Side|r from the ground
    .collect 12888,1,5149,1 --Pamela's Doll's Right Side (1)
    .collect 12887,1,5149,1 --Pamela's Doll's Left Side (1)
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 5152 >>Accept Auntie Marlene
    .accept 5241 >>Accept Uncle Carlin
    .target Pamela Redpath
    .isQuestTurnedIn 5149 --any of: Pamela's Doll
    .xp <50,1
step
    .goto 1423/0,-4717.33,3082.41
    >>Kill |cRXP_ENEMY_Carrion Grubs|r and |cRXP_ENEMY_Carrion Devourers|r. Loot them for |cRXP_LOOT_Slab of Carrion Worm Meat|r
    .complete 5544,1 --Slab of Carrion Worm Meat (1)
    .mob Carrion Grub
    .mob Carrion Devourer
step
    #loop
    .goto 1423/0,-2889.91,1887.81,0
    .goto 1423/0,-2889.91,1887.81,40,0
    .goto 1423/0,-2822.17,1749.97,40,0
    .goto 1423/0,-2962.29,1729.32,40,0
    >>Kill |cRXP_ENEMY_Plaguebats|r
    >>Kill |cRXP_ENEMY_Plaguehound Runts|r
    .complete 5543,1 --Plaguebat slain (30)
    .complete 5542,1 --Plaguehound Runt slain (20)
    .mob Plaguebat
    .mob Plaguehound Runt
step
    #loop
    .goto 1423/0,-4288.83,2312.17,0
    .goto 1423/0,-4288.83,2312.17,40,0
    .goto 1423/0,-4385.60,2277.06,40,0
    >>Kill |cRXP_ENEMY_Plaguehounds|r
    .complete 5542,2 --Plaguehound slain (20)
    .mob Plaguehound
step
    .goto 1423/0,-5337.82,2255.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5503 >>Accept Argent Dawn Commission
    .turnin 5503 >>Turn in Argent Dawn Commission
    .target Duke Nicholas Zverenhoff
step
    .goto 1423/0,-5337.82,2255.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .turnin 6030 >>Turn in Duke Nicholas Zverenhoff
    .target Duke Nicholas Zverenhoff
    .isOnQuest 6030
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 5206 >>Accept Marauders of Darrowshire
    .target Carlin Redpath
    .isQuestTurnedIn 5154 --The Annals of Darrowshire
    .isQuestTurnedIn 5168 --Heroes of Darrowshire
    .xp <52,1
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5206 >>Turn in Marauders of Darrowshire
    .target Carlin Redpath
    .isOnQuest 5206
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5241 >>Turn in Uncle Carlin
    .target Carlin Redpath
    .isOnQuest 5241
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 5211 >>Accept Defenders of Darrowshire
    .target Carlin Redpath
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 5941 >>Accept Return to Chromie
    .target Carlin Redpath
    .isQuestTurnedIn 5206 --any of: Marauders of Darrowshire
    .xp <54,1
step
    .goto 1423/0,-5349.05,2307.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5462 >>Turn in The Dying, Ras Frostwhisper
    .target Leonid Barthalomew the Revered
    .isOnQuest 5462
step
    .goto 1423/0,-5349.05,2307.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 5522 >>Turn in Leonid Barthalomew
    .target Leonid Barthalomew the Revered
    .isOnQuest 5522
step
    .goto 1423/0,-5305.70,2303.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 6026 >>Accept That's Asking A Lot
    .target Smokey LaRue
step
    .goto 1423/0,-5264.66,2151.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 5281 >>Accept The Restless Souls
    .accept 6021 >>Accept Zaeldarr the Outcast
    .target Caretaker Alen
step
    .goto 1423/0,-5259.05,2148.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
    .vendor >> |cRXP_BUY_Restock on|r |T133578:0|t[Wicked Arrows] |cRXP_BUY_if needed|r << Hunter
    .target Caretaker Alen
step
    .goto 1423/0,-4256.31,3232.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurora Skycaller|r
    .turnin 5245 >>Turn in Troubled Spirits of Kel'Theril
    .target Aurora Skycaller
    .isQuestComplete 5245
step
    .goto 1423/0,-4256.31,3232.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurora Skycaller|r
    .accept 5246 >>Accept Fragments of the Past
    .target Aurora Skycaller
    .isQuestTurnedIn 5245 --any of: Troubled Spirits of Kel'Theril
    .xp <53,1
step
    .goto 1423/0,-4256.31,3232.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurora Skycaller|r
    .accept 5247 >>Accept Fragments of the Past
    .target Aurora Skycaller
    .isQuestTurnedIn 5246 --any of: Fragments of the Past
    .xp <53,1
step
    .goto 1423/0,-4256.31,3232.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurora Skycaller|r
    .accept 5248 >>Accept Tormented By the Past
    .target Aurora Skycaller
    .isQuestTurnedIn 5247 --any of: Fragments of the Past
    .xp <53,1
step
    .goto 1423/0,-4256.31,3232.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurora Skycaller|r
    .turnin 5246 >>Turn in Fragments of the Past
    .target Aurora Skycaller
    .isQuestComplete 5246
step
    .goto 1423/0,-4256.31,3232.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurora Skycaller|r
    .turnin 5247 >>Turn in Fragments of the Past
    .target Aurora Skycaller
    .isQuestComplete 5247
step
    .goto 1423/0,-3379.57,3367.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8929 >>Turn in In Search of Anthion
    .target Anthion Harmon
    .isOnQuest 8929
step
    .goto 1423/0,-2744.75,2929.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >>Turn in The Restless Souls
    .target Egan
step
    .goto 1423/0,-2744.75,2935.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augustus the Touched|r
    .accept 6164 >>Accept Augustus' Receipt Book
    .target Augustus the Touched
step
    .goto 1423/0,-2860.10,2997.49
    >>Pick up |cRXP_PICK_Augustus' Receipt Book|r from the ground
    .complete 6164,1 --Augustus' Receipt Book (1)
step
    .goto 1423/0,-2744.75,2935.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augustus the Touched|r
    .turnin 6164 >>Turn in Augustus' Receipt Book
    .target Augustus the Touched
step
    #loop
    .goto 1423/0,-4168.44,2881.07,0
    .goto 1423/0,-4168.44,2881.07,40,0
    .goto 1423/0,-4192.83,2792.28,40,0
    >>Kill |cRXP_ENEMY_Frenzied Plaguehounds|r
    .complete 5542,3 --Frenzied Plaguehound slain (5)
    .mob Frenzied Plaguehound
step
    .goto 1423/0,-2480.37,2673.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5542 >>Turn in Demon Dogs
    .turnin 5543 >>Turn in Blood Tinged Skies
    .turnin 5544 >>Turn in Carrion Grubbage
    .accept 5742 >>Accept Redemption
    .target Tirion Fordring
step
    .goto 1423/0,-2480.37,2673.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .complete 5742,1 --Tirion Fordring
    .target Tirion Fordring
step
    .goto 1423/0,-2480.37,2673.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5742 >>Turn in Redemption
    .accept 5781 >>Accept Of Forgotten Memories
    .target Tirion Fordring
step
    .goto 1423/0,-3248.73,1609.55
    >>Kill |cRXP_ENEMY_Zaeldarr the Outcast|r and loot |cRXP_LOOT_Zaeldarr's Head|r
    >>Kill |cRXP_ENEMY_Mercutio Filthgorger|r and loot |cRXP_LOOT_Taelan's Hammer|r
    .complete 6021,1 --Zaeldarr's Head (1)
    .complete 5781,1 --Taelan's Hammer (1)
    .mob Zaeldarr the Outcast
    .mob Mercutio Filthgorger
step
    .goto 1423/0,-2480.37,2673.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5781 >>Turn in Of Forgotten Memories
    .accept 5845 >>Accept Of Lost Honor
    .target Tirion Fordring
step
    .goto 1423/0,-5264.66,2151.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >>Turn in Zaeldarr the Outcast
    .target Caretaker Alen
    .home >>Set your Hearthstone to Caretaker Alen's inn
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5210 >>Turn in Brother Carlin
    .target Carlin Redpath
    .isOnQuest 5210
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 5181 >>Accept Villains of Darrowshire
    .target Carlin Redpath
    .isQuestTurnedIn 5210 --any of: Brother Carlin
    .xp <50,1
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 5168 >>Accept Heroes of Darrowshire
    .target Carlin Redpath
    .isQuestTurnedIn 5210 --any of: Brother Carlin
    .xp <51,1
step
    .goto 1423/0,-4946.48,2923.15
    >>Pick up |cRXP_PICK_Symbol of Lost Honor|r from the ground
    .complete 5845,1 --Symbol of Lost Honor (1)
step
    .goto 1423/0,-4163.80,2511.18
    >>Open the |cRXP_PICK_Horgus' Skull|r. Loot it for |cRXP_LOOT_Skull of Horgus|r
    .complete 5181,1 --Skull of Horgus (1)
    .isOnQuest 5181
step
    #loop
    .goto 1423/0,-4722.36,2773.95,0
    .goto 1423/0,-4722.36,2773.95,40,0
    .goto 1423/0,-4739.01,2872.56,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darrowshire Spirit|r
    .complete 5211,1 --Darrowshire Spirit (15)
    .target Darrowshire Spirit
step
    #completewith next
    .hs >>Hearth to Caretaker Alen's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5211 >>Turn in Defenders of Darrowshire
    .target Carlin Redpath
step
    .goto 1423/0,-5305.70,2303.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 6026 >>Turn in That's Asking A Lot
    .target Smokey LaRue
    .isQuestComplete 6026
step
    .goto 1423/0,-5345.45,2269.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
    .fp Chapel >> Get the Light's Hope Chapel flight path
    .target Khaelyn Steelwing
step
    .goto 1423/0,-5305.70,2303.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 6041 >>Accept When Smokey Sings, I Get Violent
    .target Smokey LaRue
    .isQuestTurnedIn 6026 --any of: That's Asking A Lot
    .xp <54,1
step
    .goto 1423/0,-4272.18,2102.57
    >>Pick up |cRXP_PICK_Shattered Sword of Marduk|r from the ground
    .complete 5181,2 --Shattered Sword of Marduk (1)
    .isOnQuest 5181
step
    .goto 1423/0,-3702.78,1442.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joseph Redpath|r
    .complete 5721,1 --Joseph Redpath
    .target Joseph Redpath
    .isOnQuest 5721
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5721 >>Turn in The Battle of Darrowshire
    .target Pamela Redpath
    .isOnQuest 5721
step
    .goto 1423/0,-2480.37,2673.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion Fordring|r
    .turnin 5845 >>Turn in Of Lost Honor
    .accept 5846 >>Accept Of Love and Family
    .target Tirion Fordring
step
    .goto 1423/0,-3232.48,2855.52
    >>Kill |cRXP_ENEMY_Scourge Structures|r
    .complete 6041,1 --Scourge Structures Destroyed (8)
    .mob Scourge Structure
    .isOnQuest 6041
step
    .goto 1423/0,-5305.70,2303.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 6041 >>Turn in When Smokey Sings, I Get Violent
    .target Smokey LaRue
    .isOnQuest 6041
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5181 >>Turn in Villains of Darrowshire
    .target Carlin Redpath
    .isOnQuest 5181
step
    .goto 1423/0,-5340.92,2257.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 5168 >>Turn in Heroes of Darrowshire
    .target Carlin Redpath
    .isQuestComplete 5168
step
    +|cRXP_WARN_That is all of Eastern Plaguelands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Western Plaguelands|r: Auntie Marlene, Of Love and Family, Find Myranda, Return to Chromie
    >>|cRXP_FRIENDLY_Winterspring|r: Tormented By the Past
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Pamela's Doll, That's Asking A Lot
step
    +|cRXP_WARN_Suggested next zones at level 55|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.0 levels of quests, starting around Commander Ashlam Valorfist). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Eastern Plaguelands is planned from level 58.|r Load its guide for level 58 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 55 - 62 Eastern Plaguelands
#subweight -55
#name 58-59 Eastern Plaguelands
--RouteBuilder:next
#next Zone Routes (Alliance)\58-61 Hellfire Peninsula: around Assistant Klatu;Zone Routes (Alliance)\55-57 Western Plaguelands: around Commander Ashlam Valorfist

step
    .goto 1423/0,-3657.88,1411.05
    >>Pick up |cRXP_PICK_Pamela's Doll's Head|r from the ground
    .collect 12886,1,5149,1 --Pamela's Doll's Head (1)
    .isOnQuest 5149
step
    .goto 1423/0,-3716.72,1405.37
    >>Pick up |cRXP_PICK_Pamela's Doll's Left Side|r from the ground
    .collect 12887,1,5149,1 --Pamela's Doll's Left Side (1)
    .isOnQuest 5149
step
    .goto 1423/0,-3712.85,1411.31
    >>Pick up |cRXP_PICK_Pamela's Doll's Right Side|r from the ground
    .collect 12888,1,5149,1 --Pamela's Doll's Right Side (1)
    .isOnQuest 5149
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5149 >>Turn in Pamela's Doll
    .target Pamela Redpath
    .isQuestComplete 5149
step
    .goto 1423/0,-5349.05,2307.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 5465 >>Accept Soulbound Keepsake
    .target Leonid Barthalomew the Revered
    .isQuestTurnedIn 5464 --any of: Menethil's Gift
    .xp <57,1
step
    .goto 1423/0,-5305.70,2303.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 6026 >>Turn in That's Asking A Lot
    .target Smokey LaRue
    .isQuestComplete 6026
step
    .goto 1423/0,-3241.38,1600.26
    >>Click the |cRXP_PICK_Torn Scroll|r
    .accept 6024 >>Accept Hameya's Plea
step
    .goto 1423/0,-5332.79,2268.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Whitebeard|r
    .accept 9664 >>Accept Establishing New Outposts
    .target Emissary Whitebeard
step
    .goto 1423/0,-4796.29,2562.03
    >>Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Whitebeard at Light's Hope Chapel.
    .complete 9664,2 --<TXT>Eastwall Capture Quest Doodad
    .target <TXT>Eastwall Capture Quest Doodad
step
    .goto 1423/0,-4921.71,3373.32
    >>Kill |cRXP_ENEMY_Infiltrator Hameya|r and loot |cRXP_LOOT_Hameya's Key|r
    .complete 6024,1 --Hameya's Key (1)
    .mob Infiltrator Hameya
step
    .goto 1423/0,-4375.15,3169.92
    >>Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Whitebeard at Light's Hope Chapel.
    .complete 9664,3 --<TXT>Northpass Capture Quest Doodad
    .target <TXT>Northpass Capture Quest Doodad
step
    .goto 1423/0,-3037.39,2973.23
    >>Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Whitebeard at Light's Hope Chapel.
    .complete 9664,4 --<TXT>Plaguewood Capture Quest Doodad
    .target <TXT>Plaguewood Capture Quest Doodad
step
    .goto 1423/0,-3270.80,1576.25
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .turnin 6024 >>Turn in Hameya's Plea
step
    .goto 1423/0,-3722.91,1854.00
    >>Capture Crown Guard Tower, Eastwall Tower, Northpass Tower and Plaguewood Tower in the Eastern Plaguelands, then return to Emmisary Whitebeard at Light's Hope Chapel.
    .complete 9664,1 --<TXT>Crown Guard Capture Quest Doodad
    .target <TXT>Crown Guard Capture Quest Doodad
step
    .goto 1423/0,-5332.79,2268.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Whitebeard|r
    .turnin 9664 >>Turn in Establishing New Outposts
    .target Emissary Whitebeard
step
    +|cRXP_WARN_That is all of Eastern Plaguelands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Western Plaguelands|r: Soulbound Keepsake
step
    +|cRXP_WARN_Suggested next zones at level 58|r: |cRXP_FRIENDLY_Hellfire Peninsula|r (about 1.5 levels of quests, starting around Assistant Klatu), |cRXP_FRIENDLY_Western Plaguelands|r (about 0.9 levels of quests, starting around Commander Ashlam Valorfist). Completing this step loads the guide for Hellfire Peninsula --RouteBuilder:next
step << Priest
    +|cRXP_WARN_The rest of Eastern Plaguelands is planned from level 61.|r Load its guide for level 61 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Priest
#version 1
#group Zone Routes (Alliance)
#subgroup 55 - 62 Eastern Plaguelands
#subweight -55
#name 61-62 Eastern Plaguelands
--RouteBuilder:next
#next Zone Routes (Alliance)\62-64 Terokkar Forest: around Jenai Starwhisper;Zone Routes (Alliance)\58-61 Hellfire Peninsula: around Assistant Klatu;Zone Routes (Alliance)\62-63 Zangarmarsh: around Ysiel Windsinger

step << Priest
    .goto 1423/0,-2996.74,3325.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eris Havenfire|r
    .accept 7621 >>Accept A Warning
    .accept 7622 >>Accept The Balance of Light and Shadow
    .target Eris Havenfire
step << Priest
    .goto 1423/0,-3005.65,3340.80
    >>The Balance of Light and Shadow
    .complete 7622,1 --The Balance of Light and Shadow
step << Priest
    .goto 1423/0,-2996.74,3325.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eris Havenfire|r
    .turnin 7622 >>Turn in The Balance of Light and Shadow
    .target Eris Havenfire
step << Priest
    .goto 1423/0,-2996.74,3325.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eris Havenfire|r
    >>|cRXP_WARN_The database has no objectives for A Warning. Skip this step if the quest is not finished|r
    .turnin 7621 >>Turn in A Warning
    .target Eris Havenfire
    .isOnQuest 7621
step
    .goto 1423/0,-3379.57,3367.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8959 >>Accept Anthion's Parting Words << Warrior
    .accept 8956 >>Accept Anthion's Parting Words << Rogue
    .accept 8955 >>Accept Anthion's Parting Words << Priest
    .accept 8954 >>Accept Anthion's Parting Words << Paladin
    .accept 8952 >>Accept Anthion's Parting Words << Hunter
    .accept 8953 >>Accept Anthion's Parting Words << Mage
    .accept 8958 >>Accept Anthion's Parting Words << Warlock
    .accept 8951 >>Accept Anthion's Parting Words << Druid
    .accept 10496 >>Accept Anthion's Parting Words << Shaman
    .target Anthion Harmon
    .isQuestTurnedIn 9015 --any of: The Challenge
    .xp <60,1
step
    .goto 1423/0,-3379.57,3367.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion Harmon|r
    .accept 8947 >>Accept Anthion's Strange Request
    .target Anthion Harmon
    .isQuestTurnedIn 8946 --any of: Proof of Life
    .xp <58,1
step
    .goto 1423/0,-3379.57,3367.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anthion Harmon|r
    .turnin 8947 >>Turn in Anthion's Strange Request
    .target Anthion Harmon
    .isQuestComplete 8947
step
    .goto 1423/0,-3657.88,1411.05
    >>Pick up |cRXP_PICK_Pamela's Doll's Head|r from the ground
    .collect 12886,1,5149,1 --Pamela's Doll's Head (1)
    .isOnQuest 5149
step
    .goto 1423/0,-3716.72,1405.37
    >>Pick up |cRXP_PICK_Pamela's Doll's Left Side|r from the ground
    .collect 12887,1,5149,1 --Pamela's Doll's Left Side (1)
    .isOnQuest 5149
step
    .goto 1423/0,-3712.85,1411.31
    >>Pick up |cRXP_PICK_Pamela's Doll's Right Side|r from the ground
    .collect 12888,1,5149,1 --Pamela's Doll's Right Side (1)
    .isOnQuest 5149
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 5149 >>Turn in Pamela's Doll
    .target Pamela Redpath
    .isQuestComplete 5149
step
    .goto 1423/0,-3596.34,1456.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 5942 >>Accept Hidden Treasures
    .target Pamela Redpath
    .isQuestTurnedIn 5721 --any of: The Battle of Darrowshire
    .xp <59,1
step
    .goto 1423/0,-3586.66,1461.90
    >>Click the |cRXP_PICK_Joseph's Chest|r
    .turnin 5942 >>Turn in Hidden Treasures
    .isOnQuest 5942
step
    .goto 1423/0,-5337.82,2255.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Nicholas Zverenhoff|r
    .accept 5264 >>Accept Lord Maxwell Tyrosus
    .target Duke Nicholas Zverenhoff
    .isQuestTurnedIn 5263 --any of: Above and Beyond
    .xp <60,1
step
    .goto 1423/0,-5349.44,2303.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 5264 >>Turn in Lord Maxwell Tyrosus
    .target Lord Maxwell Tyrosus
    .isOnQuest 5264
step
    .goto 1423/0,-5349.44,2303.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 5265 >>Accept The Argent Hold
    .target Lord Maxwell Tyrosus
    .isQuestTurnedIn 5264 --any of: Lord Maxwell Tyrosus
    .xp <55,1
step
    .goto 1423/0,-5352.15,2303.91
    >>Click the |cRXP_PICK_The Argent Hold|r
    .turnin 5265 >>Turn in The Argent Hold
    .isOnQuest 5265
step
    .goto 1423/0,-5305.70,2303.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 6026 >>Turn in That's Asking A Lot
    .target Smokey LaRue
    .isQuestComplete 6026
step
    +|cRXP_WARN_End of the Eastern Plaguelands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Druid
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Hunter
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Mage
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Paladin
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Priest
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Rogue
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Warlock
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Warrior
    >>|cRXP_FRIENDLY_Ironforge|r: Anthion's Parting Words << Shaman
step
    +|cRXP_WARN_Suggested next zones at level 61|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.7 levels of quests, starting around Jenai Starwhisper), |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.6 levels of quests, starting around Assistant Klatu), |cRXP_FRIENDLY_Zangarmarsh|r (about 0.6 levels of quests, starting around Ysiel Windsinger). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
]])
