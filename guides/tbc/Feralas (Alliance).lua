-- 43-51 Feralas: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 43, 46).
-- Split into 2 guides, listed under "43 - 47 Feralas" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Feralas.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 43 - 47 Feralas
#subweight -43
#name 43-44 Feralas: around Shandris Feathermoon
--RouteBuilder:next
#next Zone Routes (Alliance)\42-43 Stranglethorn Vale: around "Sea Wolf" MacKinley

step
    .goto 1444/1,3330.26,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 4124 >>Accept The Missing Courier
    .target Latronicus Moonspear
step
    .goto 1444/1,3337.21,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .accept 2866 >>Accept The Ruins of Solarsal
    .target Shandris Feathermoon
step
    .goto 1444/1,3229.48,-4479.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .accept 2982 >>Accept The High Wilderness
    .target Angelas Moonbreeze
step
    .goto 1444/1,3232.96,-4474.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
    .turnin 2943 >>Turn in Return to Troyas
    .target Troyas Moonbreeze
    .isOnQuest 2943
step
    .goto 1444/1,3227.40,-4457.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4124 >>Turn in The Missing Courier
    .accept 4125 >>Accept The Missing Courier
    .target Ginro Hearthkindle
step
    .goto 1444/1,3186.39,-4395.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quintis Jonespyre|r
    .turnin 3787 >>Turn in Jonespyre's Request
    .target Quintis Jonespyre
    .isOnQuest 3787
step
    .goto 1444/1,3312.88,-4345.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 2821 >>Accept The Mark of Quality
    .target Pratt McGrubben
step
    .goto 1444/1,3613.12,-4791.75
    >>Click the |cRXP_PICK_Solarsal Gazebo|r
    .turnin 2866 >>Turn in The Ruins of Solarsal
    .accept 2867 >>Accept Return to Feathermoon Stronghold
step
    .goto 1444/1,3337.21,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 2867 >>Turn in Return to Feathermoon Stronghold
    .accept 3130 >>Accept Against the Hatecrest
    .target Shandris Feathermoon
step
    .goto 1444/1,3330.26,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 3130 >>Turn in Against the Hatecrest
    .accept 2869 >>Accept Against the Hatecrest
    .target Latronicus Moonspear
step
    #completewith Drop2766x1
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Ogre|r, |cRXP_ENEMY_Gordunni Brute|r, |cRXP_ENEMY_Gordunni Mauler|r. Use it to start the quest if you get one
    .collect 8705,1,2766 --OOX-22/FE Distress Beacon (1)
    .accept 2766 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop2766x1
    #loop
    .goto 1444/1,3414.35,-4887.66,0
    .goto 1444/1,3414.35,-4887.66,40,0
    .goto 1444/1,3379.60,-5032.22,40,0
    .goto 1444/1,3251.03,-5016.01,40,0
    .goto 1444/1,3129.40,-4981.26,40,0
    >>Kill |cRXP_ENEMY_Hatecrest Warriors|r, |cRXP_ENEMY_Hatecrest Wave Riders|r, |cRXP_ENEMY_Hatecrest Serpent Guards|r and |cRXP_ENEMY_Hatecrest Myrmidons|r. Loot them for |cRXP_LOOT_Hatecrest Naga Scale|r
    .complete 2869,1 --Hatecrest Naga Scale (10)
    .mob Hatecrest Warrior
    .mob Hatecrest Wave Rider
    .mob Hatecrest Serpent Guard
    .mob Hatecrest Myrmidon
step
    .goto 1444/1,2283.59,-5376.48
    >>Click the |cRXP_PICK_Wrecked Row Boat|r
    .turnin 4125 >>Turn in The Missing Courier
    .accept 4127 >>Accept Boat Wreckage
step
    #completewith Drop2766x2
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Ogre|r, |cRXP_ENEMY_Gordunni Brute|r, |cRXP_ENEMY_Gordunni Mauler|r. Use it to start the quest if you get one
    .collect 8705,1,2766 --OOX-22/FE Distress Beacon (1)
    .accept 2766 >>Accept Find OOX-22/FE!
    .use 8705
step
    .goto 1444/1,1269.58,-5442.27
    >>Kill |cRXP_ENEMY_Gordunni Shamans|r
    .complete 2982,2 --Gordunni Shaman slain (8)
    .mob Gordunni Shaman
step
    #loop
    .goto 1444/1,1234.14,-5038.25,0
    .goto 1444/1,1234.14,-5038.25,40,0
    .goto 1444/1,1175.76,-4913.61,40,0
    >>Kill |cRXP_ENEMY_Gordunni Warlocks|r
    >>Kill |cRXP_ENEMY_Gordunni Brutes|r
    .complete 2982,1 --Gordunni Warlock slain (8)
    .complete 2982,3 --Gordunni Brute slain (8)
    .mob Gordunni Warlock
    .mob Gordunni Brute
step
    #label Drop2766x2
    #loop
    .goto 1444/1,1580.94,-4983.11,0
    .goto 1444/1,1580.94,-4983.11,40,0
    .goto 1444/1,1668.51,-4944.19,40,0
    >>Kill |cRXP_ENEMY_Feral Scar Yetis|r, |cRXP_ENEMY_Hulking Feral Scars|r, |cRXP_ENEMY_Enraged Feral Scars|r and |cRXP_ENEMY_Bloodroar the Stalkers|r. Loot them for |cRXP_LOOT_Thick Yeti Hide|r
    .complete 2821,1 --Thick Yeti Hide (10)
    .mob Feral Scar Yeti
    .mob Hulking Feral Scar
    .mob Enraged Feral Scar
    .mob Bloodroar the Stalker
step
    .goto 1444/1,1733.84,-4947.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .turnin 2766 >>Turn in Find OOX-22/FE!
    .target Homing Robot OOX-22/FE
    .isOnQuest 2766
step
    .goto 1444/1,1733.84,-4947.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .accept 2767 >>Accept Rescue OOX-22/FE!
    .target Homing Robot OOX-22/FE
    .isQuestTurnedIn 2766 --any of: Find OOX-22/FE!
    .xp <40,1
step
    .goto 1444/1,2270.38,-4377.07
    >>Escort OOX-22/FE to the dock along the Forgotten Coast
    .complete 2767,1 --Escort OOX-22/FE to the dock along the Forgotten Coast
    .isOnQuest 2767
step
    .goto 1444/1,3330.26,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2869 >>Turn in Against the Hatecrest
    .target Latronicus Moonspear
step
    .goto 1444/1,3229.48,-4479.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .turnin 2982 >>Turn in The High Wilderness
    .target Angelas Moonbreeze
step
    .goto 1444/1,3227.40,-4457.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4127 >>Turn in Boat Wreckage
    .accept 4129 >>Accept The Knife Revealed
    .target Ginro Hearthkindle
step
    .goto 1444/1,3186.39,-4395.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quintis Jonespyre|r
    .turnin 4129 >>Turn in The Knife Revealed
    .accept 4130 >>Accept Psychometric Reading
    .target Quintis Jonespyre
step
    .goto 1444/1,3227.40,-4457.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4130 >>Turn in Psychometric Reading
    .accept 4131 >>Accept The Woodpaw Gnolls
    .target Ginro Hearthkindle
step
    .goto 1444/1,3312.88,-4345.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 2821 >>Turn in The Mark of Quality
    .target Pratt McGrubben
step
    .goto 1444/1,2327.37,-4378.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .target Zorbin Fandazzle
    .home >>Set your Hearthstone to Zorbin Fandazzle's inn
step
    .goto 1444/1,345.93,-4975.70
    >>Click the |cRXP_PICK_Large Leather Backpacks|r
    .turnin 4131 >>Turn in The Woodpaw Gnolls
    .accept 4135 >>Accept The Writhing Deep
step
    .goto 1444/1,432.80,-5319.03
    >>Click the |cRXP_PICK_Zukk'ash Pod|r
    .turnin 4135 >>Turn in The Writhing Deep
    .accept 4265 >>Accept Freed from the Hive
step
    .goto 1444/1,428.63,-5324.59
    >>Free Raschal.
    .complete 4265,1 --Free Raschal.
step
    .goto 1444/1,3227.40,-4457.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r
    .turnin 4265 >>Turn in Freed from the Hive
    .accept 4266 >>Accept A Hero's Welcome
    .target Ginro Hearthkindle
step
    .goto 1444/1,3232.96,-4474.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r
    .accept 2939 >>Accept In Search of Knowledge
    .target Troyas Moonbreeze
step
    .goto 1444/1,3337.21,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 4266 >>Turn in A Hero's Welcome
    .accept 4267 >>Accept Rise of the Silithid
    .target Shandris Feathermoon
step
    .goto 1444/1,2305.83,-3551.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregan Brewspewer|r
    .turnin 4142 >>Turn in A Visit to Gregan
    .target Gregan Brewspewer
    .isOnQuest 4142
step
    .goto 1444/1,-788.31,-4524.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1059 >>Turn in Reclaiming the Charred Vale
    .target Falfindel Waywarder
    .isOnQuest 1059
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
    .goto 1444/1,-778.37,-4491.19
    .fp Thalanaar >> Get the Thalanaar flight path
    .target Thyssiana
step
    .goto 1444/1,-788.31,-4524.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .accept 1101 >>Accept The Crone of the Kraul
    .target Falfindel Waywarder
    .isQuestTurnedIn 1100 --any of: Lonebrow's Journal
    .xp <23,1
step
    .goto 1444/1,-788.31,-4524.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 1101 >>Turn in The Crone of the Kraul
    .target Falfindel Waywarder
    .isQuestComplete 1101
step
    +|cRXP_WARN_That is all of Feralas for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darnassus|r: Rise of the Silithid
    >>|cRXP_FRIENDLY_Stranglethorn Vale|r: Rescue OOX-22/FE!
    >>|cRXP_FRIENDLY_Teldrassil|r: In Search of Knowledge
step
    +|cRXP_WARN_Suggested next zones at level 43|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.6 levels of quests, starting around "Sea Wolf" MacKinley). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Feralas is planned from level 46.|r Load its guide for level 46 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 43 - 47 Feralas
#subweight -43
#name 46-47 Feralas

step
    .goto 1444/1,3330.26,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 2870 >>Accept Against Lord Shalzaru
    .target Latronicus Moonspear
    .isQuestTurnedIn 2869 --any of: Against the Hatecrest
step
    .goto 1444/1,3460.92,-5631.31
    >>Kill |cRXP_ENEMY_Lord Shalzaru|r and loot |cRXP_LOOT_Mysterious Relic|r
    .complete 2870,1 --Mysterious Relic (1)
    .mob Lord Shalzaru
    .isOnQuest 2870
step
    .goto 1444/1,3330.26,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2870 >>Turn in Against Lord Shalzaru
    .target Latronicus Moonspear
    .isOnQuest 2870
step
    .goto 1444/1,3330.26,-4505.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .accept 2871 >>Accept Delivering the Relic
    .target Latronicus Moonspear
    .isQuestTurnedIn 2870 --any of: Against Lord Shalzaru
step
    .goto 1444/1,3351.11,-4454.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vestia Moonspear|r
    .turnin 2871 >>Turn in Delivering the Relic
    .target Vestia Moonspear
    .isOnQuest 2871
step
    .goto 1444/1,3312.88,-4345.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 7733 >>Accept Improved Quality
    .target Pratt McGrubben
    .isQuestTurnedIn 2821 --any of: The Mark of Quality
step
    .goto 1444/1,2327.37,-4378.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .accept 7721 >>Accept Fuel for the Zapping
    .accept 7003 >>Accept Zapped Giants
    .target Zorbin Fandazzle
    .home >>Set your Hearthstone to Zorbin Fandazzle's inn
step
    #loop
    .goto 1444/1,2084.82,-4669.43,0
    .goto 1444/1,2084.82,-4669.43,40,0
    .goto 1444/1,2039.64,-4758.86,40,0
    .goto 1444/1,2224.51,-4991.91,40,0
    .goto 1444/1,2184.90,-4851.06,40,0
    >>Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for |cRXP_LOOT_Water Elemental Core|r
    .complete 7721,1 --Water Elemental Core (10)
    .mob Sea Elemental
    .mob Sea Spray
step
    #loop
    .goto 1444/1,1630.98,-3897.98,0
    .goto 1444/1,1630.98,-3897.98,40,0
    .goto 1444/1,1738.71,-3842.38,40,0
    .goto 1444/1,1762.34,-3775.20,40,0
    >>Kill |cRXP_ENEMY_Rage Scar Yetis|r, |cRXP_ENEMY_Elder Rage Scars|r and |cRXP_ENEMY_Ferocious Rage Scars|r. Loot them for |cRXP_LOOT_Rage Scar Yeti Hide|r
    .complete 7733,1 --Rage Scar Yeti Hide (10)
    .mob Rage Scar Yeti
    .mob Elder Rage Scar
    .mob Ferocious Rage Scar
    .isOnQuest 7733
step
    .goto 1444/1,858.84,-4481.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
    .accept 3841 >>Accept An Orphan Looking For a Home
    .target Kindal Moonweaver
    .isQuestTurnedIn 2972 --any of: Doling Justice
    .xp <40,1
step
    .goto 1444/1,858.84,-4481.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
    .accept 2969 >>Accept Freedom for All Creatures
    .target Kindal Moonweaver
step
    .goto 1444/1,766.40,-4529.04
    >>Save at least 6 Sprite Darters from capture
    .complete 2969,1 --Save at least 6 Sprite Darters from capture
step
    .goto 1444/1,858.84,-4481.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
    .turnin 2969 >>Turn in Freedom for All Creatures
    .target Kindal Moonweaver
step
    .goto 1444/1,858.14,-4479.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
    .accept 2970 >>Accept Doling Justice
    .target Jer'kai Moonweaver
step
    #loop
    .goto 1444/1,763.62,-4190.35,0
    .goto 1444/1,763.62,-4190.35,40,0
    .goto 1444/1,623.23,-4171.35,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Shamans|r
    >>Kill |cRXP_ENEMY_Grimtotem Raiders|r
    >>Kill |cRXP_ENEMY_Grimtotem Naturalists|r
    .complete 2970,3 --Grimtotem Shaman slain (6)
    .complete 2970,2 --Grimtotem Raider slain (10)
    .complete 2970,1 --Grimtotem Naturalist slain (12)
    .mob Grimtotem Shaman
    .mob Grimtotem Raider
    .mob Grimtotem Naturalist
step
    .goto 1444/1,858.14,-4479.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
    .turnin 2970 >>Turn in Doling Justice
    .accept 2972 >>Accept Doling Justice
    .target Jer'kai Moonweaver
step
    #completewith next
    .hs >>Hearth to Zorbin Fandazzle's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1444/1,2327.37,-4378.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .turnin 7721 >>Turn in Fuel for the Zapping
    .target Zorbin Fandazzle
step
    .xp 46 >>Grind to level 46 (The Sunken Temple needs it)
step
    .goto 1444/1,3229.48,-4479.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .accept 3445 >>Accept The Sunken Temple
    .target Angelas Moonbreeze
step
    .goto 1444/1,3312.88,-4345.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 7733 >>Turn in Improved Quality
    .target Pratt McGrubben
    .isOnQuest 7733
step
    #loop
    .goto 1444/1,2788.85,-3358.20,0
    .goto 1444/1,2788.85,-3358.20,40,0
    .goto 1444/1,2668.62,-3381.37,40,0
    >>Kill |cRXP_ENEMY_Land Walkers|r, |cRXP_ENEMY_Cliff Giants|r, |cRXP_ENEMY_Shore Striders|r and |cRXP_ENEMY_Deep Striders|r. Loot them for |cRXP_LOOT_Miniaturization Residue|r
    .complete 7003,1 --Miniaturization Residue (15)
    .mob Land Walker
    .mob Cliff Giant
    .mob Shore Strider
    .mob Deep Strider
step
    .goto 1444/1,2495.56,-3386.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rockbiter|r
    .accept 2844 >>Accept The Giant Guardian
    .target Rockbiter
step
    .goto 1444/1,2785.38,-2843.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shay Leafrunner|r
    .turnin 2844 >>Turn in The Giant Guardian
    .accept 2845 >>Accept Wandering Shay
    .target Shay Leafrunner
step
    .goto 1444/1,2783.29,-2843.44
    >>Open the |cRXP_PICK_Shay's Chest|r. Loot it for |cRXP_LOOT_Shay's Bell|r
    .complete 2845,1 --Shay's Bell (1)
step
    .goto 1444/1,2499.73,-3379.05
    >>Take Shay Leafrunner to Rockbiter's camp
    .complete 2845,2 --Take Shay Leafrunner to Rockbiter's camp
step
    .goto 1444/1,2495.56,-3386.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rockbiter|r
    .turnin 2845 >>Turn in Wandering Shay
    .target Rockbiter
step
    .goto 1444/1,2327.37,-4378.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .turnin 7003 >>Turn in Zapped Giants
    .target Zorbin Fandazzle
step
    +|cRXP_WARN_End of the Feralas route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darnassus|r: Doling Justice
    >>|cRXP_FRIENDLY_Tanaris|r: The Sunken Temple
    >>|cRXP_FRIENDLY_Thousand Needles|r: An Orphan Looking For a Home
]])
