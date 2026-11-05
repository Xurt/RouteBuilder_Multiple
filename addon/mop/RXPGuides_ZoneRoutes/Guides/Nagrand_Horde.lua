-- 65-68 Nagrand: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 65, 69).
-- Split into 2 guides, listed under "65 - 70 Nagrand" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Nagrand.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 65 - 70 Nagrand
#subweight -65
#name 65-67 Nagrand: around Hemet Nesingwary
--RouteBuilder:next
#next Zone Routes (Horde)\62-65 Terokkar Forest: around Earthbinder Tavgren

step
    .goto 107,71.40,40.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristen Dipswitch|r
    .accept 9897 >>Accept I'm Saved!
    .target Kristen Dipswitch
step
    .goto 107,71.38,40.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
    .turnin 9897 >>Turn in I'm Saved!
    .accept 9857 >>Accept Talbuk Mastery
    .target Harold Lane
step
    #completewith Along2
    >>As you go: Kill |cRXP_ENEMY_Talbuk Stags|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9857,1 --Talbuk Stag slain (12)
    .mob Talbuk Stag
step
    #label Along2
    .goto 107,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 9789 >>Accept Clefthoof Mastery
    .target Hemet Nesingwary
step
    .goto 107,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .accept 9800 >>Accept A Rare Bean
    .accept 9815 >>Accept Muck Diving
    .target Elementalist Lo'ap
step
    .goto 107,60.66,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Untrag|r
    .accept 9818 >>Accept The Underneath
    .target Elementalist Untrag
step
    .goto 107,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9818 >>Turn in The Underneath
    .accept 9819 >>Accept The Tortured Earth
    .target Gordawg
step
    .goto 107,51.11,69.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Consortium Recruiter|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9913 >>Accept The Consortium Needs You!
    .unitscan Consortium Recruiter
step
    .goto 107,56.97,40.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathar G'ochar|r
    .target Mathar G'ochar
    .home >>Set your Hearthstone to Mathar G'ochar's inn
step
    .goto 107,57.19,35.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gursha|r
    .fp Garadar >> Get the Garadar flight path
    .target Gursha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.43,37.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ohlorn Farstrider|r
    .accept 10114 >>Accept The Nesingwary Safari
    .target Ohlorn Farstrider
step
    #completewith Along9
    >>As you go: Kill |cRXP_ENEMY_Tortured Earth Spirits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9819,1 --Tortured Earth Spirit slain (10)
    .mob Tortured Earth Spirit
step
    #completewith Along9
    >>As you go: Kill |cRXP_ENEMY_Talbuk Stags|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9857,1 --Talbuk Stag slain (12)
    .mob Talbuk Stag
step
    #label Along9
    .goto 107,71.57,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
    .turnin 10114 >>Turn in The Nesingwary Safari << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 9854 >>Accept Windroc Mastery
    .target Shado 'Fitz' Farstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Mathar G'ochar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.37,37.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kroghan|r
    .turnin 9797 >>Turn in Reinforcements for Garadar
    .target Captain Kroghan
    .isOnQuest 9797
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Mathar G'ochar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.56,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Deadeye|r
    .accept 9888 >>Accept The Impotent Leader
    .target Jorin Deadeye
step
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Windrocs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9854,1 --Windroc slain (12)
    .mob Windroc
step
    #label Along12
    #loop
    .goto 107,73.14,43.39,0
    .goto 107,73.14,43.39,40,0
    .goto 107,68.36,38.01,40,0
    .goto 107,66.84,37.63,40,0
    >>Kill |cRXP_ENEMY_Tortured Earth Spirits|r
    .complete 9819,1 --Tortured Earth Spirit slain (10)
    .mob Tortured Earth Spirit
step
    .goto 107,61.72,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
    .accept 10109 >>Accept I Must Have Them!
    .target Wazat
step
    #completewith Drop9861x1
    >>|cRXP_LOOT_Howling Wind|r can drop from |cRXP_ENEMY_Dust Howler|r, |cRXP_ENEMY_Storm Rager|r, |cRXP_ENEMY_Living Cyclone|r. Use it to start the quest if you get one
    .collect 24504,1,9861 --Howling Wind (1)
    .accept 9861 >>Accept The Howling Wind
    .use 24504
step
    #completewith Drop9861x1
    >>As you go: Kill |cRXP_ENEMY_Talbuk Stags|r. Kill |cRXP_ENEMY_Clefthoofs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9857,1 --Talbuk Stag slain (12)
    .complete 9789,1 --Clefthoof slain (12)
    .mob Talbuk Stag
    .mob Clefthoof
step
    #label Drop9861x1
    .goto 107,60.56,63.85
    >>Kill |cRXP_ENEMY_Dust Howlers|r, |cRXP_ENEMY_Storm Ragers|r and |cRXP_ENEMY_Living Cyclones|r. Loot them for |cRXP_LOOT_Air Elemental Gas|r
    .complete 10109,1 --Air Elemental Gas (3)
    .mob Dust Howler
    .mob Storm Rager
    .mob Living Cyclone
step
    .goto 107,61.72,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
    .turnin 10109 >>Turn in I Must Have Them!
    .accept 10111 >>Accept Bring Me The Egg!
    .target Wazat
step
    .goto 107,61.34,66.98
    >>Click the |cRXP_PICK_Mysterious Egg|r
    .complete 10111,1 --Mysterious Egg
step
    .goto 107,61.72,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
    .turnin 10111 >>Turn in Bring Me The Egg!
    .target Wazat
    .isQuestComplete 10111
step
    #completewith Drop9861x2
    >>|cRXP_LOOT_Howling Wind|r can drop from |cRXP_ENEMY_Dust Howler|r, |cRXP_ENEMY_Storm Rager|r, |cRXP_ENEMY_Living Cyclone|r. Use it to start the quest if you get one
    .collect 24504,1,9861 --Howling Wind (1)
    .accept 9861 >>Accept The Howling Wind
    .use 24504
step
    #completewith Drop9861x2
    >>As you go: Kill |cRXP_ENEMY_Talbuk Stags|r. Kill |cRXP_ENEMY_Clefthoofs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9857,1 --Talbuk Stag slain (12)
    .complete 9789,1 --Clefthoof slain (12)
    .mob Talbuk Stag
    .mob Clefthoof
step
    #label Drop9861x2
    #loop
    .goto 107,66.66,50.86,0
    .goto 107,66.66,50.86,40,0
    .goto 107,71.05,48.91,40,0
    .goto 107,72.85,38.80,40,0
    .goto 107,68.75,40.61,40,0
    .goto 107,65.33,38.14,40,0
    >>Kill |cRXP_ENEMY_Windrocs|r
    >>Kill |cRXP_ENEMY_Mo'arg Engineers|r, |cRXP_ENEMY_Windrocs|r, |cRXP_ENEMY_Greater Windrocs|r and |cRXP_ENEMY_Talbuk Stags|r. Loot them for |cRXP_LOOT_Oshu'gun Crystal Powder Sample|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 9854,1 --Windroc slain (12)
    .complete 10074,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Oshu'gun Crystal Powder Sample (10)
    .mob Windroc
    .mob Mo'arg Engineer << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Greater Windroc << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Talbuk Stag << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    #loop
    .goto 107,65.43,62.32,0
    .goto 107,65.43,62.32,40,0
    .goto 107,67.23,64.84,40,0
    >>Kill |cRXP_ENEMY_Talbuk Stags|r
    >>Kill |cRXP_ENEMY_Clefthoofs|r
    .complete 9857,1 --Talbuk Stag slain (12)
    .complete 9789,1 --Clefthoof slain (12)
    .mob Talbuk Stag
    .mob Clefthoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Mathar G'ochar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.56,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Deadeye|r
    .turnin 9891 >>Turn in Because Kilrath is a Coward
    .target Jorin Deadeye
    .isOnQuest 9891
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.56,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Deadeye|r
    .accept 9906 >>Accept Message in a Battle
    .target Jorin Deadeye
    .isQuestTurnedIn 9891 --any of: Because Kilrath is a Coward
    .xp <64,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.63,37.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elkay'gan the Mystic|r
    .accept 9910 >>Accept Standards and Practices
    .target Elkay'gan the Mystic
    .isQuestTurnedIn 9891 --any of: Because Kilrath is a Coward
    .xp <64,1
step
    .goto 107,71.57,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
    .turnin 9854 >>Turn in Windroc Mastery
    .accept 9855 >>Accept Windroc Mastery
    .target Shado 'Fitz' Farstrider
step
    .goto 107,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 9789 >>Turn in Clefthoof Mastery
    .accept 9850 >>Accept Clefthoof Mastery
    .target Hemet Nesingwary
step
    .goto 107,71.38,40.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
    .turnin 9857 >>Turn in Talbuk Mastery
    .accept 9858 >>Accept Talbuk Mastery
    .target Harold Lane
step
    .goto 107,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9819 >>Turn in The Tortured Earth
    .accept 9821 >>Accept Eating Damnation
    .target Gordawg
step
    .goto 107,60.50,22.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
    .turnin 9861 >>Turn in The Howling Wind
    .target Elementalist Morgh
    .isOnQuest 9861
step
    .goto 107,60.50,22.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
    .accept 9862 >>Accept Murkblood Corrupters
    .target Elementalist Morgh
    .isQuestTurnedIn 9861 --any of: The Howling Wind
    .xp <64,1
step
    #completewith Along30
    >>As you go: Kill |cRXP_ENEMY_Talbuk Thorngrazers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9858,1 --Talbuk Thorngrazer slain (12)
    .mob Talbuk Thorngrazer
step
    #completewith Along29
    >>As you go: Loot the |cRXP_PICK_Dungs|r for |cRXP_LOOT_Digested Caracoli|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9800,1 --Digested Caracoli (8)
step
    #label Along29
    #loop
    .goto 107,56.97,17.09,0
    .goto 107,56.97,17.09,40,0
    .goto 107,55.32,19.69,40,0
    >>Kill |cRXP_ENEMY_Enraged Crushers|r. Loot them for |cRXP_LOOT_Enraged Crusher Core|r
    .complete 9821,1 --Enraged Crusher Core (10)
    .mob Enraged Crusher
step
    #label Along30
    #loop
    .goto 107,45.40,30.11,0
    .goto 107,45.40,30.11,40,0
    .goto 107,44.03,26.78,40,0
    >>Kill |cRXP_ENEMY_Clefthoof Bulls|r
    .complete 9850,1 --Clefthoof Bull slain (12)
    .mob Clefthoof Bull
step
    #loop
    .goto 107,52.18,23.16,0
    .goto 107,52.18,23.16,40,0
    .goto 107,52.61,25.70,40,0
    .goto 107,52.51,29.03,40,0
    >>Kill |cRXP_ENEMY_Talbuk Thorngrazers|r
    >>Loot the |cRXP_PICK_Dungs|r for |cRXP_LOOT_Digested Caracoli|r
    .complete 9858,1 --Talbuk Thorngrazer slain (12)
    .complete 9800,1 --Digested Caracoli (8)
    .mob Talbuk Thorngrazer
step
    .goto 107,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .turnin 9800 >>Turn in A Rare Bean
    .accept 9804 >>Accept Agitated Spirits of Skysong
    .target Elementalist Lo'ap
step
    .goto 107,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9821 >>Turn in Eating Damnation
    .accept 9849 >>Accept Shattering the Veil
    .target Gordawg
step
    #loop
    .goto 107,58.89,27.90,0
    .goto 107,58.89,27.90,40,0
    .goto 107,57.16,29.46,40,0
    .goto 107,61.20,31.11,40,0
    >>Kill |cRXP_ENEMY_Lake Spirits|r
    .complete 9804,1 --Lake Spirit slain (8)
    .mob Lake Spirit
step
    .goto 107,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .turnin 9804 >>Turn in Agitated Spirits of Skysong
    .accept 9805 >>Accept Blessing of Incineratus
    .target Elementalist Lo'ap
step
    .goto 107,71.38,40.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
    .turnin 9858 >>Turn in Talbuk Mastery
    .accept 9859 >>Accept Talbuk Mastery
    .target Harold Lane
step
    .goto 107,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 9850 >>Turn in Clefthoof Mastery
    .accept 9851 >>Accept Clefthoof Mastery
    .target Hemet Nesingwary
step
    .goto 107,72.43,50.25
    >>Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
    .complete 9805,1 --Windyreed Quest Credit (Big Hut)
    .target Windyreed Quest Credit (Big Hut)
step
    .goto 107,70.73,51.11
    >>Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
    .complete 9805,2 --Windyreed Quest Credit (Hut 01)
    .target Windyreed Quest Credit (Hut 01)
step
    .goto 107,71.19,53.27
    >>Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
    .complete 9805,3 --Windyreed Quest Credit (Hut 02)
    .target Windyreed Quest Credit (Hut 02)
step
    .goto 107,72.77,54.73
    >>Elementalist Lo'ap at the Throne of the Elements in Nagrand wants you to destroy the Large Hut, the Western Hut, the Southern Hut and the Eastern Hut at Windyreed Village.
    .complete 9805,4 --Windyreed Quest Credit (Hut 03)
    .target Windyreed Quest Credit (Hut 03)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,72.19,69.90
    >>Click the |cRXP_PICK_First Burning Blade Pyre|r
    .complete 9910,1 --First Burning Blade Pyre
    .isOnQuest 9910
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,74.70,69.91
    >>Click the |cRXP_PICK_Second Burning Blade Pyre|r
    .complete 9910,2 --Second Burning Blade Pyre
    .isOnQuest 9910
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,75.74,68.31
    >>Click the |cRXP_PICK_Third Burning Blade Pyre|r
    .complete 9910,3 --Third Burning Blade Pyre
    .isOnQuest 9910
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,75.10,63.98,0
    .goto 107,75.10,63.98,40,0
    .goto 107,77.46,61.05,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Mystics|r
    .complete 9906,1 --Boulderfist Mystic slain (8)
    .mob Boulderfist Mystic
    .isOnQuest 9906
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,74.47,64.02,0
    .goto 107,74.47,64.02,40,0
    .goto 107,76.27,60.16,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Crushers|r
    .complete 9906,2 --Boulderfist Crusher slain (8)
    .mob Boulderfist Crusher
    .isOnQuest 9906
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Mathar G'ochar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.63,37.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elkay'gan the Mystic|r
    .turnin 9910 >>Turn in Standards and Practices
    .target Elkay'gan the Mystic
    .isOnQuest 9910
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.63,37.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elkay'gan the Mystic|r
    .accept 9916 >>Accept Bleeding Hollow Supply Crates
    .target Elkay'gan the Mystic
    .isQuestTurnedIn 9910 --any of: Standards and Practices
    .xp <64,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.56,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Deadeye|r
    .turnin 9906 >>Turn in Message in a Battle
    .target Jorin Deadeye
    .isOnQuest 9906
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.56,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Deadeye|r
    .accept 9907 >>Accept An Audacious Advance
    .target Jorin Deadeye
    .isQuestTurnedIn 9906 --any of: Message in a Battle
    .xp <64,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,37.92,27.53
    >>Kill |cRXP_ENEMY_Murkblood Invader|r and loot |cRXP_LOOT_Murkblood Invasion Plans|r. Use it to start the quest
    .collect 24558,1,9872 --Murkblood Invasion Plans (1)
    .accept 9872 >>Accept Murkblood Invaders
    .use 24558
    .mob Murkblood Invader
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,39.55,29.10
    >>Pick up |cRXP_PICK_Bleeding Hollow Supply Crate|r from the ground
    .complete 9916,1 --Bleeding Hollow Supply Crate (10)
    .isOnQuest 9916
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,39.62,29.07,0
    .goto 107,39.62,29.07,40,0
    .goto 107,41.22,34.07,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Warriors|r
    .complete 9907,1 --Boulderfist Warrior slain (10)
    .mob Boulderfist Warrior
    .isOnQuest 9907
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,39.92,29.38,0
    .goto 107,39.92,29.38,40,0
    .goto 107,41.22,34.07,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Mages|r
    .complete 9907,2 --Boulderfist Mage slain (10)
    .mob Boulderfist Mage
    .isOnQuest 9907
step
    #loop
    .goto 107,43.74,47.66,0
    .goto 107,43.74,47.66,40,0
    .goto 107,40.00,44.60,40,0
    .goto 107,40.60,37.82,40,0
    >>Kill |cRXP_ENEMY_Muck Spawns|r. Loot them for |cRXP_LOOT_Muck-Ridden Core|r
    .complete 9815,1 --Muck-Ridden Core (5)
    .mob Muck Spawn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,41.20,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Researcher Amereldine|r
    .accept 10074 >>Accept Oshu'gun Crystal Powder
    .turnin 10074 >>Turn in Oshu'gun Crystal Powder
    .target Chief Researcher Amereldine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,32.44,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang the Younger|r
    .accept 9865 >>Accept Once Were Warriors
    .target Saurfang the Younger
    .isQuestTurnedIn 9864 --any of: The Missing War Party
    .xp <64,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,32.31,36.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Yorley|r
    .accept 9946 >>Accept Cho'war the Pillager
    .target Elder Yorley
    .isQuestTurnedIn 9945 --any of: War on the Warmaul
    .xp <65,1
step
    #loop
    .goto 107,32.22,46.77,0
    .goto 107,32.22,46.77,40,0
    .goto 107,30.99,41.76,40,0
    >>Kill |cRXP_ENEMY_Murkblood Putrifiers|r
    .complete 9862,1 --Murkblood Putrifier slain (5)
    .mob Murkblood Putrifier
    .isOnQuest 9862
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,32.77,45.15,0
    .goto 107,32.77,45.15,40,0
    .goto 107,30.91,42.43,40,0
    >>Kill |cRXP_ENEMY_Murkblood Raiders|r
    .complete 9865,2 --Murkblood Raider slain (10)
    .mob Murkblood Raider
    .isOnQuest 9865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,31.16,41.62,0
    .goto 107,31.16,41.62,40,0
    .goto 107,32.40,45.32,40,0
    >>Kill |cRXP_ENEMY_Murkblood Scavengers|r
    .complete 9865,1 --Murkblood Scavenger slain (20)
    .mob Murkblood Scavenger
    .isOnQuest 9865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,32.44,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang the Younger|r
    .turnin 9865 >>Turn in Once Were Warriors
    .target Saurfang the Younger
    .isOnQuest 9865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,32.44,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang the Younger|r
    .accept 9866 >>Accept He Will Walk The Earth...
    .target Saurfang the Younger
    .isQuestTurnedIn 9865 --any of: Once Were Warriors
    .xp <64,1
step
    .goto 107,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .turnin 9805 >>Turn in Blessing of Incineratus
    .turnin 9815 >>Turn in Muck Diving
    .accept 9810 >>Accept The Spirit Polluted
    .target Elementalist Lo'ap
step
    .goto 107,60.50,22.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Morgh|r
    .turnin 9862 >>Turn in Murkblood Corrupters
    .target Elementalist Morgh
    .isOnQuest 9862
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.44,37.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh|r
    .turnin 9872 >>Turn in Murkblood Invaders
    .target Garrosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.56,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Deadeye|r
    .turnin 9907 >>Turn in An Audacious Advance
    .target Jorin Deadeye
    .isOnQuest 9907
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.56,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorin Deadeye|r
    .accept 10107 >>Accept Diplomatic Measures
    .target Jorin Deadeye
    .isQuestTurnedIn 9907 --any of: An Audacious Advance
    .xp <64,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.63,37.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elkay'gan the Mystic|r
    .turnin 9916 >>Turn in Bleeding Hollow Supply Crates
    .target Elkay'gan the Mystic
    .isOnQuest 9916
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,54.80,39.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Corhuk|r
    .turnin 9866 >>Turn in He Will Walk The Earth...
    .target Farseer Corhuk
    .isOnQuest 9866
step
    #loop
    .goto 107,50.48,60.60,0
    .goto 107,50.48,60.60,40,0
    .goto 107,49.00,59.92,40,0
    >>Kill |cRXP_ENEMY_Ravenous Windrocs|r
    .complete 9855,1 --Ravenous Windroc slain (12)
    .mob Ravenous Windroc
step
    .goto 107,41.40,61.57
    >>Kill |cRXP_ENEMY_Banthar|r and loot |cRXP_LOOT_Horn of Banthar|r
    .complete 9851,1 --Horn of Banthar (1)
    .mob Banthar
step
    .goto 107,31.77,56.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadrek|r
    .accept 9914 >>Accept A Head Full of Ivory
    .target Shadrek
step
    .goto 107,31.36,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gezhe|r
    .turnin 9913 >>Turn in The Consortium Needs You! while you are here
    .isQuestComplete 9913
    .target Gezhe
step
    #completewith next
    .hs >>Hearth to Mathar G'ochar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 107,59.06,41.00
    >>Kill |cRXP_ENEMY_Wild Elekks|r. Loot them for |cRXP_LOOT_Pair of Ivory Tusks|r
    .complete 9914,1 --Pair of Ivory Tusks (3)
    .mob Wild Elekk
step
    .goto 107,31.77,56.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadrek|r
    .turnin 9914 >>Turn in A Head Full of Ivory
    .target Shadrek
step
    .goto 107,31.36,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gezhe|r
    .turnin 9913 >>Turn in The Consortium Needs You!
    .accept 9882 >>Accept Stealing from Thieves
    .target Gezhe
step
    .goto 107,30.78,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerid|r
    .accept 9900 >>Accept Gava'xi
    .accept 9925 >>Accept Matters of Security
    .target Zerid
step
    #loop
    .goto 107,26.19,72.14,0
    .goto 107,26.19,72.14,40,0
    .goto 107,28.03,74.82,40,0
    >>Kill |cRXP_ENEMY_Minion of Guroks|r
    .complete 9849,1 --Minion of Gurok slain (30)
    .mob Minion of Gurok
step
    #completewith Along80
    >>As you go: Kill |cRXP_ENEMY_Voidspawns|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9925,1 --Voidspawn slain (8)
    .mob Voidspawn
step
    #completewith Along79
    >>As you go: Kill |cRXP_ENEMY_Vir'aani Raiders|r. Loot them for |cRXP_LOOT_Oshu'gun Crystal Fragment|r. It can also be picked up from |cRXP_PICK_Oshu'gun Crystal Fragment|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9882,1 --Oshu'gun Crystal Fragment (10)
    .mob Vir'aani Raider
step
    #label Along79
    .goto 107,41.51,71.42
    >>Kill |cRXP_ENEMY_Gava'xi|r
    .complete 9900,1 --Gava'xi slain (1)
    .mob Gava'xi
step
    #label Along80
    #loop
    .goto 107,38.71,71.03,0
    .goto 107,38.71,71.03,40,0
    .goto 107,36.99,67.23,40,0
    .goto 107,34.71,63.20,40,0
    >>Kill |cRXP_ENEMY_Vir'aani Raiders|r. Loot them for |cRXP_LOOT_Oshu'gun Crystal Fragment|r. It can also be picked up from |cRXP_PICK_Oshu'gun Crystal Fragment|r on the ground
    .complete 9882,1 --Oshu'gun Crystal Fragment (10)
    .mob Vir'aani Raider
step
    #loop
    .goto 107,40.52,73.91,0
    .goto 107,40.52,73.91,40,0
    .goto 107,37.11,76.75,40,0
    >>Kill |cRXP_ENEMY_Voidspawns|r
    .complete 9925,1 --Voidspawn slain (8)
    .mob Voidspawn
step
    .goto 107,30.78,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerid|r
    .turnin 9900 >>Turn in Gava'xi
    .turnin 9925 >>Turn in Matters of Security
    .target Zerid
step
    .goto 107,31.36,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gezhe|r
    .turnin 9882 >>Turn in Stealing from Thieves
    .target Gezhe
step
    #loop
    .goto 107,32.26,54.01,0
    .goto 107,32.26,54.01,40,0
    .goto 107,33.41,51.36,40,0
    >>Kill |cRXP_ENEMY_Watoosun's Polluted Essence|r
    >>Kill |cRXP_ENEMY_Lake Surgers|r
    .complete 9810,1 --Watoosun's Polluted Essence slain (1)
    .complete 9810,2 --Lake Surger slain (8)
    .mob Watoosun's Polluted Essence
    .mob Lake Surger
step
    .goto 107,26.10,53.12
    >>Kill |cRXP_ENEMY_Bach'lor|r and loot |cRXP_LOOT_Hoof of Bach'lor|r
    .complete 9859,1 --Hoof of Bach'lor (1)
    .mob Bach'lor
step
    .goto 107,71.57,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
    .turnin 9855 >>Turn in Windroc Mastery
    .accept 9856 >>Accept Windroc Mastery
    .target Shado 'Fitz' Farstrider
step
    .goto 107,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 9851 >>Turn in Clefthoof Mastery
    .target Hemet Nesingwary
step
    .goto 107,71.38,40.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Lane|r
    .turnin 9859 >>Turn in Talbuk Mastery
    .target Harold Lane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .complete 10107,1 --Lantresor of the Blade
    .target Lantresor of the Blade
    .isOnQuest 10107
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 10107 >>Turn in Diplomatic Measures
    .target Lantresor of the Blade
    .isOnQuest 10107
step
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .accept 9928 >>Accept Armaments for Deception
    .accept 9927 >>Accept Ruthless Cunning
    .target Lantresor of the Blade
    .isQuestTurnedIn 10107,10108 --any of: Diplomatic Measures, Diplomatic Measures
    .xp <64,1
step
    #loop
    .goto 107,69.65,76.96,0
    .goto 107,69.65,76.96,40,0
    .goto 107,71.80,80.74,40,0
    >>Kill |cRXP_ENEMY_Kil'sorrow Spellbinders|r, |cRXP_ENEMY_Kil'sorrow Cultists|r and |cRXP_ENEMY_Kil'sorrow Deathsworns|r
    .complete 9927,1 --Kil'sorrow Spellbinder (8)
    .mob Kil'sorrow Spellbinder
    .mob Kil'sorrow Cultist
    .mob Kil'sorrow Deathsworn
    .isOnQuest 9927
step
    #loop
    .goto 107,71.39,80.86,0
    .goto 107,71.39,80.86,40,0
    .goto 107,68.06,82.33,40,0
    >>Pick up |cRXP_PICK_Kil'sorrow Armaments|r from the ground
    .complete 9928,1 --Kil'sorrow Armaments (10)
    .isOnQuest 9928
step
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 9928 >>Turn in Armaments for Deception
    .target Lantresor of the Blade
    .isOnQuest 9928
step
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 9927 >>Turn in Ruthless Cunning
    .target Lantresor of the Blade
    .isOnQuest 9927
step
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .accept 9931 >>Accept Returning the Favor
    .accept 9932 >>Accept Body of Evidence
    .target Lantresor of the Blade
    .isQuestTurnedIn 9927 --Ruthless Cunning
    .isQuestTurnedIn 9928 --Armaments for Deception
    .xp <64,1
step
    .goto 107,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9849 >>Turn in Shattering the Veil
    .accept 9853 >>Accept Gurok the Usurper
    .target Gordawg
step
    .goto 107,60.80,22.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Lo'ap|r
    .turnin 9810 >>Turn in The Spirit Polluted
    .target Elementalist Lo'ap
step
    #loop
    .goto 107,44.06,21.44,0
    .goto 107,44.06,21.44,40,0
    .goto 107,42.34,21.81,40,0
    >>Kill |cRXP_ENEMY_Warmaul Reavers|r, |cRXP_ENEMY_Warmaul Warlocks|r, |cRXP_ENEMY_Warmaul Shamans|r and |cRXP_ENEMY_Warmaul Brutes|r. Loot them for |cRXP_LOOT_Warmaul Skull|r
    .collect 24502,1,9853,1 --Warmaul Skull (1)
    .mob Warmaul Reaver
    .mob Warmaul Warlock
    .mob Warmaul Shaman
    .mob Warmaul Brute
step
    .goto 107,46.57,24.42
    >>Lantresor of the Blade at the Burning Blade Ruins in Nagrand wants you to use the Damp Woolen Blanket at the Blazing Warmaul Pyre in the Laughing Skull Courtyard to signal his ogres.
    .complete 9932,1 --Warmaul Pyre Credit Marker
    .target Warmaul Pyre Credit Marker
    .isOnQuest 9932
step
    #loop
    .goto 107,47.59,23.18,0
    .goto 107,47.59,23.18,40,0
    .goto 107,45.99,19.79,40,0
    >>Kill |cRXP_ENEMY_Warmaul Reavers|r and |cRXP_ENEMY_Warmaul Shamans|r
    .complete 9931,1 --Warmaul Reaver (8)
    .mob Warmaul Reaver
    .mob Warmaul Shaman
    .isOnQuest 9931
step
    .goto 107,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9962 >>Accept The Ring of Blood: Brokentoe
    .target Gurgthock
step
    .goto 107,43.70,20.40
    >>Kill |cRXP_ENEMY_Brokentoe|r
    .complete 9962,1 --Brokentoe slain (1)
    .mob Brokentoe
step
    .goto 107,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9962 >>Turn in The Ring of Blood: Brokentoe
    .target Wodin the Troll-Servant
step
    .goto 107,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9967 >>Accept The Ring of Blood: The Blue Brothers
    .target Gurgthock
step
    .goto 107,43.70,20.40
    >>Kill |cRXP_ENEMY_Murkblood Twin|r
    .complete 9967,1 --Murkblood Twin slain (1)
    .mob Murkblood Twin
step
    .goto 107,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9967 >>Turn in The Ring of Blood: The Blue Brothers
    .target Wodin the Troll-Servant
step
    .goto 107,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9970 >>Accept The Ring of Blood: Rokdar the Sundered Lord
    .target Gurgthock
step
    .goto 107,43.70,20.40
    >>Kill |cRXP_ENEMY_Rokdar the Sundered Lord|r
    .complete 9970,1 --Rokdar the Sundered Lord slain (1)
    .mob Rokdar the Sundered Lord
step
    .goto 107,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9970 >>Turn in The Ring of Blood: Rokdar the Sundered Lord
    .target Wodin the Troll-Servant
step
    .goto 107,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9972 >>Accept The Ring of Blood: Skra'gath
    .target Gurgthock
step
    .goto 107,43.70,20.40
    >>Kill |cRXP_ENEMY_Skra'gath|r
    .complete 9972,1 --Skra'gath slain (1)
    .mob Skra'gath
step
    .goto 107,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9972 >>Turn in The Ring of Blood: Skra'gath
    .target Wodin the Troll-Servant
step
    .goto 107,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9973 >>Accept The Ring of Blood: The Warmaul Champion
    .target Gurgthock
step
    .goto 107,43.70,20.40
    >>Kill |cRXP_ENEMY_Warmaul Champion|r
    .complete 9973,1 --Warmaul Champion slain (1)
    .mob Warmaul Champion
step
    .goto 107,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9973 >>Turn in The Ring of Blood: The Warmaul Champion
    .target Wodin the Troll-Servant
step
    .goto 107,42.78,20.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 9977 >>Accept The Ring of Blood: The Final Challenge
    .target Gurgthock
step
    .goto 107,42.79,20.54
    >>Kill |cRXP_ENEMY_Mogor|r
    .complete 9977,1 --Mogor slain (1)
    .mob Mogor
step
    .goto 107,42.78,20.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 9977 >>Turn in The Ring of Blood: The Final Challenge
    .target Wodin the Troll-Servant
step
    .goto 107,29.05,25.04
    >>Kill |cRXP_ENEMY_Gurok the Usurper|r and loot |cRXP_LOOT_Gurok's Earthen Head|r
    .complete 9853,1 --Gurok's Earthen Head (1)
    .mob Gurok the Usurper
step
    .goto 107,31.01,30.98
    >>Kill |cRXP_ENEMY_Gutripper|r and loot |cRXP_LOOT_Eye of Gutripper|r
    .complete 9856,1 --Eye of Gutripper (1)
    .mob Gutripper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.03,13.94
    >>Kill |cRXP_ENEMY_Cho'war the Pillager|r and loot |cRXP_LOOT_Head of Cho'war|r
    .complete 9946,1 --Head of Cho'war (1)
    .mob Cho'war the Pillager
    .isOnQuest 9946
step
    .goto 107,62.02,23.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordawg|r
    .turnin 9853 >>Turn in Gurok the Usurper
    .target Gordawg
step
    .goto 107,71.57,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado 'Fitz' Farstrider|r
    .turnin 9856 >>Turn in Windroc Mastery
    .target Shado 'Fitz' Farstrider
step
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 9931 >>Turn in Returning the Favor
    .target Lantresor of the Blade
    .isOnQuest 9931
step
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .turnin 9932 >>Turn in Body of Evidence
    .target Lantresor of the Blade
    .isOnQuest 9932
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,73.81,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lantresor of the Blade|r
    .accept 9934 >>Accept Message to Garadar
    .target Lantresor of the Blade
    .isQuestTurnedIn 9931 --Returning the Favor
    .isQuestTurnedIn 9932 --Body of Evidence
    .xp <64,1
step << skip
    .goto 107,75.62,64.91,60,0
    .goto 107,74.26,64.89,60,0
    .goto 107,73.74,62.41,60,0
    .goto 107,76.32,62.27,30,0
    .goto 107,78.17,59.13,40,0
    .goto 107,75.62,64.91,60,0
    .goto 107,74.26,64.89,60,0
    .goto 107,73.74,62.41
    .xp 67 >> Grind to 67. Skip this step if you wish, but this is by FAR the best time to get your training
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Mathar G'ochar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.44,37.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh|r
    .turnin 9934 >>Turn in Message to Garadar
    .target Garrosh
    .isOnQuest 9934
step
    .goto 107,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 9852 >>Accept The Ultimate Bloodsport
    .target Hemet Nesingwary
step
    .goto 107,51.82,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r
    .turnin 10251 >>Turn in The Master's Grand Design?
    .target Nitrin the Learned
    .isOnQuest 10251
step
    .goto 107,51.82,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r
    .accept 10252 >>Accept Vision of the Dead
    .target Nitrin the Learned
    .isQuestTurnedIn 10251 --any of: The Master's Grand Design?
    .xp <64,1
step
    .goto 107,44.24,65.16
    >>Kill |cRXP_ENEMY_Tusker|r and loot |cRXP_LOOT_Heart of Tusker|r
    .complete 9852,1 --Heart of Tusker (1)
    .mob Tusker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,38.09,58.33,0
    .goto 107,38.09,58.33,40,0
    .goto 107,32.15,60.32,40,0
    .goto 107,29.94,64.95,40,0
    .goto 107,32.91,64.56,40,0
    >>Kill |cRXP_ENEMY_Darkened Spirits|r
    .complete 10168,1 --Darkened Spirit slain (15)
    .mob Darkened Spirit
    .isOnQuest 10168
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.07,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mother Kashur|r
    .turnin 10168 >>Turn in What the Soul Sees
    .target Mother Kashur
    .isQuestComplete 10168
step
    .goto 107,27.22,49.43
    >>Kill |cRXP_ENEMY_Mountain Gronn|r and loot |cRXP_LOOT_Mountain Gronn Eyeball|r
    .complete 10252,1 --Mountain Gronn Eyeball (1)
    .mob Mountain Gronn
    .isOnQuest 10252
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10010 >>Turn in It's Just That Easy?
    .target Altruis the Sufferer
    .isOnQuest 10010
step
    .goto 107,30.71,33.10
    >>Kill |cRXP_ENEMY_Greater Windroc|r and loot |cRXP_LOOT_Flawless Greater Windroc Beak|r
    .complete 10252,2 --Flawless Greater Windroc Beak (1)
    .mob Greater Windroc
    .isOnQuest 10252
step
    #loop
    .goto 107,32.19,32.25,0
    .goto 107,32.19,32.25,40,0
    .goto 107,35.82,32.36,40,0
    >>Kill |cRXP_ENEMY_Aged Clefthoof|r and loot |cRXP_LOOT_Aged Clefthoof Blubber|r
    .complete 10252,3 --Aged Clefthoof Blubber (1)
    .mob Aged Clefthoof
    .isOnQuest 10252
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,32.31,36.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Yorley|r
    .turnin 9946 >>Turn in Cho'war the Pillager
    .target Elder Yorley
    .isOnQuest 9946
step
    .goto 107,51.82,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r
    .turnin 10252 >>Turn in Vision of the Dead
    .target Nitrin the Learned
    .isOnQuest 10252
step
    .goto 107,51.82,56.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nitrin the Learned|r
    .accept 10253 >>Accept Levixus the Soul Caller
    .target Nitrin the Learned
    .isQuestTurnedIn 10252 --any of: Vision of the Dead
    .xp <64,1
step
    .goto 107,71.52,40.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 9852 >>Turn in The Ultimate Bloodsport
    .target Hemet Nesingwary
step
    +|cRXP_WARN_That is all of Nagrand for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Terokkar Forest|r: The Impotent Leader << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Terokkar Forest|r: Levixus the Soul Caller
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Bring Me The Egg!
step
    +|cRXP_WARN_Suggested next zones at level 66|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.7 levels of quests, starting around Earthbinder Tavgren; 2 quests from here hand in there). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Nagrand is planned from level 69.|r Load its guide for level 69 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 65 - 70 Nagrand
#subweight -65
#name 69-70 Nagrand: around Altruis the Sufferer
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\70-72 Howling Fjord: around Lurielle

step
    .goto 107,61.34,66.98
    >>Click the |cRXP_PICK_Mysterious Egg|r
    .complete 10111,1 --Mysterious Egg
    .isOnQuest 10111
step
    .goto 107,61.72,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wazat|r
    .turnin 10111 >>Turn in Bring Me The Egg!
    .target Wazat
    .isQuestComplete 10111
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 9991 >>Accept Survey the Land
    .target Altruis the Sufferer
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 10646 >>Accept Illidan's Pupil
    .target Altruis the Sufferer
    .isQuestTurnedIn 10641 --Against the Legion
    .isQuestTurnedIn 10668 --Against the Illidari
    .isQuestTurnedIn 10669 --Against All Odds
    .xp <68,1
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .complete 10646,1 --Altruis the Sufferer
    .target Altruis the Sufferer
    .isOnQuest 10646
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 10669 >>Accept Against All Odds
    .accept 10641 >>Accept Against the Legion
    .accept 10668 >>Accept Against the Illidari
    .target Altruis the Sufferer
    .isQuestTurnedIn 10640,10689 --any of: Altruis, Altruis
    .xp <68,1
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10646 >>Turn in Illidan's Pupil
    .target Altruis the Sufferer
    .isOnQuest 10646
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 10649 >>Accept The Book of Fel Names
    .target Altruis the Sufferer
    .isQuestTurnedIn 10646 --any of: Illidan's Pupil
    .xp <68,1
step
    .goto 107,27.22,43.05
    >>Forge Camps Surveyed
    .complete 9991,1 --Forge Camps Surveyed
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 9991 >>Turn in Survey the Land
    .accept 9999 >>Accept Buying Time
    .target Altruis the Sufferer
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .accept 10011 >>Accept Forge Camp: Annihilated
    .target Altruis the Sufferer
    .isQuestTurnedIn 10010 --any of: It's Just That Easy?
    .xp <66,1
step
    #loop
    .goto 107,25.13,38.25,0
    .goto 107,25.13,38.25,40,0
    .goto 107,24.47,35.71,40,0
    >>Kill |cRXP_ENEMY_Felguard Legionnaires|r
    >>Kill |cRXP_ENEMY_Gan'arg Tinkerers|r
    >>Kill |cRXP_ENEMY_Mo'arg Engineers|r
    .complete 9999,1 --Felguard Legionnaire slain (2)
    .complete 9999,3 --Gan'arg Tinkerer slain (8)
    .complete 9999,2 --Mo'arg Engineer slain (3)
    .mob Felguard Legionnaire
    .mob Gan'arg Tinkerer
    .mob Mo'arg Engineer
step
    .goto 107,19.37,50.77
    >>Kill |cRXP_ENEMY_Fel Cannon: Fear|r
    .complete 10011,2 --Fel Cannon: Fear slain (1)
    .mob Fel Cannon: Fear
    .isOnQuest 10011
step
    .goto 107,19.61,51.10
    >>Kill |cRXP_ENEMY_Xirkos, Overseer of Fear|r and loot |cRXP_LOOT_Fel Cannon Activator|r
    .collect 25771,1,10011,1 --Fel Cannon Activator (1)
    .mob Xirkos, Overseer of Fear
    .isOnQuest 10011
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 9999 >>Turn in Buying Time
    .accept 10001 >>Accept The Master Planner
    .target Altruis the Sufferer
step
    .goto 107,24.99,36.09
    >>Kill |cRXP_ENEMY_Demos, Overseer of Hate|r and loot |cRXP_LOOT_Fel Cannon Activator|r
    .collect 25770,1,10011,1 --Fel Cannon Activator (1)
    .mob Demos, Overseer of Hate
    .isOnQuest 10011
step
    .goto 107,25.10,35.98
    >>Kill |cRXP_ENEMY_Fel Cannon: Hate|r
    .complete 10011,1 --Fel Cannon: Hate slain (1)
    .mob Fel Cannon: Hate
    .isOnQuest 10011
step
    .goto 107,23.61,34.64
    >>Kill |cRXP_ENEMY_Mo'arg Master Planner|r and loot |cRXP_LOOT_The Master Planner's Blueprints|r
    .complete 10001,1 --The Master Planner's Blueprints (1)
    .mob Mo'arg Master Planner
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10001 >>Turn in The Master Planner
    .accept 10004 >>Accept Patience and Understanding
    .target Altruis the Sufferer
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10011 >>Turn in Forge Camp: Annihilated
    .target Altruis the Sufferer
    .isOnQuest 10011
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10641 >>Turn in Against the Legion
    .target Altruis the Sufferer
    .isQuestComplete 10641
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10649 >>Turn in The Book of Fel Names
    .target Altruis the Sufferer
    .isQuestComplete 10649
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10668 >>Turn in Against the Illidari
    .target Altruis the Sufferer
    .isQuestComplete 10668
step
    .goto 107,27.34,43.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Altruis the Sufferer|r
    .turnin 10669 >>Turn in Against All Odds
    .target Altruis the Sufferer
    .isQuestComplete 10669
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.37,37.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kroghan|r
    .accept 11048 >>Accept Kroghan's Report
    .target Captain Kroghan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.44,37.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh|r
    .accept 10044 >>Accept A Visit With the Greatmother
    .target Garrosh
    .isQuestTurnedIn 9868 --The Totem of Kar'dash
    .isQuestTurnedIn 9934 --Message to Garadar
    .isQuestTurnedIn 10011 --Forge Camp: Annihilated
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.79,37.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Bullrok|r
    .accept 9937 >>Accept Wanted: Durn the Hungerer
    .target Warden Bullrok
    .isQuestTurnedIn 9935 --Wanted: Giselda the Crone
    .isQuestTurnedIn 9939 --Wanted: Zorbo the Advisor
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .complete 10044,1 --Greatmother Geyah
    .target Greatmother Geyah
    .isOnQuest 10044
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .turnin 10044 >>Turn in A Visit With the Greatmother
    .target Greatmother Geyah
    .isOnQuest 10044
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .accept 10045 >>Accept Material Components
    .target Greatmother Geyah
    .isQuestTurnedIn 10044 --any of: A Visit With the Greatmother
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .accept 10081 >>Accept To Meet Mother Kashur
    .target Greatmother Geyah
    .isQuestTurnedIn 10045 --any of: Material Components
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,57.60,52.90,0
    .goto 107,57.60,52.90,40,0
    .goto 107,55.89,57.86,40,0
    >>Pick up |cRXP_PICK_Telaari Frond|r from the ground
    .complete 10045,3 --Telaari Frond (1)
    .isOnQuest 10045
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,31.95,62.42
    >>Kill |cRXP_ENEMY_Durn the Hungerer|r
    .complete 9937,1 --Durn the Hungerer slain (1)
    .mob Durn the Hungerer
    .isOnQuest 9937
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.07,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mother Kashur|r
    .turnin 10081 >>Turn in To Meet Mother Kashur
    .target Mother Kashur
    .isOnQuest 10081
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.07,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mother Kashur|r
    .accept 10082 >>Accept The Agitated Ancestors
    .target Mother Kashur
    .isQuestTurnedIn 10081 --any of: To Meet Mother Kashur
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.07,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mother Kashur|r
    .accept 10101 >>Accept When Spirits Speak
    .target Mother Kashur
    .isQuestTurnedIn 10085 --any of: A Visit With The Ancestors
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 107,26.26,61.73,0
    .goto 107,26.26,61.73,40,0
    .goto 107,26.61,59.20,40,0
    >>Kill |cRXP_ENEMY_Agitated Orc Spirits|r
    .complete 10082,1 --Agitated Orc Spirit slain (8)
    .mob Agitated Orc Spirit
    .isOnQuest 10082
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.07,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mother Kashur|r
    .turnin 10082 >>Turn in The Agitated Ancestors
    .target Mother Kashur
    .isOnQuest 10082
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.07,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mother Kashur|r
    .accept 10085 >>Accept A Visit With The Ancestors
    .target Mother Kashur
    .isQuestTurnedIn 10082 --any of: The Agitated Ancestors
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.07,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mother Kashur|r
    .accept 10170 >>Accept Return to the Greatmother
    .target Mother Kashur
    .isQuestTurnedIn 10168 --any of: What the Soul Sees
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,26.07,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mother Kashur|r
    .turnin 10085 >>Turn in A Visit With The Ancestors
    .target Mother Kashur
    .isQuestComplete 10085
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,35.48,77.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_K'ure|r
    .turnin 10101 >>Turn in When Spirits Speak
    .target K'ure
    .isOnQuest 10101
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,35.48,77.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_K'ure|r
    .accept 10102 >>Accept A Secret Revealed
    .target K'ure
    .isQuestTurnedIn 10101 --any of: When Spirits Speak
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,32.20,42.99
    >>Mother Kashur at the Ancestral Grounds in Nagrand has asked that you Visit Sunspring Post, Visit Laughing Skull Ruins, Visit Garadar and Visit Bleeding Hollow Ruins.
    .complete 10085,1 --Sunspring Post Credit Marker
    .target Sunspring Post Credit Marker
    .isOnQuest 10085
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,46.84,23.16
    >>Mother Kashur at the Ancestral Grounds in Nagrand has asked that you Visit Sunspring Post, Visit Laughing Skull Ruins, Visit Garadar and Visit Bleeding Hollow Ruins.
    .complete 10085,2 --Laughing Skull Clan Ruins Credit Marker
    .target Laughing Skull Clan Ruins Credit Marker
    .isOnQuest 10085
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .turnin 10170 >>Turn in Return to the Greatmother
    .target Greatmother Geyah
    .isOnQuest 10170
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .accept 10171 >>Accept The Inconsolable Chieftain
    .target Greatmother Geyah
    .isQuestTurnedIn 10170 --any of: Return to the Greatmother
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.79,37.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Bullrok|r
    .turnin 9937 >>Turn in Wanted: Durn the Hungerer
    .target Warden Bullrok
    .isOnQuest 9937
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.44,37.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh|r
    .turnin 10171 >>Turn in The Inconsolable Chieftain
    .target Garrosh
    .isOnQuest 10171
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.44,37.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh|r
    .accept 10172 >>Accept There Is No Hope
    .target Garrosh
    .isQuestTurnedIn 10171 --any of: The Inconsolable Chieftain
    .xp <66,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,55.54,37.47
    >>Mother Kashur at the Ancestral Grounds in Nagrand has asked that you Visit Sunspring Post, Visit Laughing Skull Ruins, Visit Garadar and Visit Bleeding Hollow Ruins.
    .complete 10085,3 --Garadar Credit Marker
    .target Garadar Credit Marker
    .isOnQuest 10085
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .complete 10172,1 --Greatmother Geyah
    .target Greatmother Geyah
    .isOnQuest 10172
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .turnin 10172 >>Turn in There Is No Hope
    .target Greatmother Geyah
    .isOnQuest 10172
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 107,56.70,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Geyah|r
    .turnin 10045 >>Turn in Material Components
    .target Greatmother Geyah
    .isQuestComplete 10045
step
    +|cRXP_WARN_End of the Nagrand route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shadowmoon Valley|r: Kroghan's Report << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Shattrath City|r: Patience and Understanding
    >>|cRXP_FRIENDLY_Shattrath City|r: A Secret Revealed << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 69|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.3 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Howling Fjord|r (about 0.6 levels of quests, starting around Lurielle). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
