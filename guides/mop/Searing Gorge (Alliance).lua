-- 47-50 Searing Gorge: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 47, 51).
-- Split into 2 guides, listed under "47 - 52 Searing Gorge" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Searing Gorge.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 47 - 52 Searing Gorge
#subweight -47
#name 47-49 Searing Gorge: around Jack Rockleg
--RouteBuilder:next
#next Zone Routes (Alliance)\45-48 Tanaris: around Mazoga;Zone Routes (Alliance)\48-50 Felwood: around Feronas Sindweller;Zone Routes (Alliance)\45-47 Badlands

step
    .goto 32,68.92,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk|r
    .accept 27956 >>Accept Lunk's Task
    .target Lunk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 32,68.58,53.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack Rockleg|r
    .turnin 28582 >>Turn in Hero's Call: Searing Gorge!
    .target Jack Rockleg
    .isOnQuest 28582
step
    .goto 32,68.58,53.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack Rockleg|r
    .turnin 28512 >>Turn in To the Aid of the Thorium Brotherhood
    .target Jack Rockleg
    .isOnQuest 28512
step
    .goto 32,68.58,53.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack Rockleg|r
    .accept 27963 >>Accept A New Master... But Who?
    .target Jack Rockleg
step
    .goto 32,68.49,53.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burrian Coalpart|r
    .accept 27960 >>Accept The Fewer, the Better
    .target Burrian Coalpart
step
    #loop
    .goto 32,62.58,57.92,0
    .goto 32,62.58,57.92,40,0
    .goto 32,62.86,61.24,40,0
    .goto 32,64.29,64.33,40,0
    >>Kill |cRXP_ENEMY_Gravius Grimesilt|r and loot |cRXP_LOOT_Dark Iron Memo|r
    >>Kill |cRXP_ENEMY_Tempered War Golems|r. Loot them for |cRXP_LOOT_Tempered Flywheel|r
    >>Kill |cRXP_ENEMY_Dark Iron Watchmans|r, |cRXP_ENEMY_Dark Iron Footmans|r and |cRXP_ENEMY_Dark Iron Geologists|r
    .complete 27963,1 --Dark Iron Memo (1)
    .complete 27956,1 --Tempered Flywheel (15)
    .complete 27960,1 --Dark Iron Watchman (8)
    .mob Gravius Grimesilt
    .mob Tempered War Golem
    .mob Dark Iron Watchman
    .mob Dark Iron Footman
    .mob Dark Iron Geologist
step
    .goto 32,68.49,53.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burrian Coalpart|r
    .turnin 27960 >>Turn in The Fewer, the Better
    .accept 27961 >>Accept Out of Place
    .accept 27962 >>Accept A Lumbering Relic
    .target Burrian Coalpart
step
    .goto 32,68.58,53.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack Rockleg|r
    .turnin 27963 >>Turn in A New Master... But Who?
    .accept 27964 >>Accept Dig-Boss Dinwhisker
    .target Jack Rockleg
step
    .goto 32,68.92,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk|r
    .turnin 27956 >>Turn in Lunk's Task
    .accept 27957 >>Accept Lunk No Kill
    .turnin 27957 >>Turn in Lunk No Kill
    .target Lunk
step
    .goto 32,68.73,53.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prisanne Dustcropper|r
    .accept 27958 >>Accept A Proper Antivenom
    .target Prisanne Dustcropper
step
    .goto 32,59.09,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk|r
    .accept 27959 >>Accept Lunk's Adventure: Spider Rider
    .target Lunk
step
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Glassweb Spider|r and loot |cRXP_LOOT_Glassweb Venom|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27958,1 --Glassweb Venom (1)
    .mob Glassweb Spider
step
    #label Along11
    #loop
    .goto 32,66.72,41.26,0
    .goto 32,66.72,41.26,40,0
    .goto 32,65.44,38.16,40,0
    >>Weaken 7 Glassweb Spiders so Lunk can ride them.
    .complete 27959,1 --Glassweb Spider (7)
    .target Glassweb Spider
step
    .goto 32,59.77,67.27
    >>Kill |cRXP_ENEMY_Glassweb Spider|r and loot |cRXP_LOOT_Glassweb Venom|r
    .complete 27958,1 --Glassweb Venom (1)
    .mob Glassweb Spider
step
    .goto 32,59.09,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27959 >>Turn in Lunk's Adventure: Spider Rider
    .target ?
step
    .goto 32,73.49,82.39
    >>Kill |cRXP_ENEMY_Margol the Rager|r and loot |cRXP_LOOT_Margol's Gigantic Horn|r
    .complete 27962,1 --Margol's Gigantic Horn (1)
    .mob Margol the Rager
step
    .goto 32,53.44,44.82
    >>Pick up |cRXP_PICK_Dark Ember|r from the ground
    .complete 27964,1 --Dark Ember (1)
step
    .goto 32,76.40,19.67
    >>Kill |cRXP_ENEMY_Ash Chickens|r. Loot them for |cRXP_LOOT_Ash Chicken|r
    .complete 27961,1 --Ash Chicken (8)
    .mob Ash Chicken
step
    .goto 32,68.49,53.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burrian Coalpart|r
    .turnin 27961 >>Turn in Out of Place
    .turnin 27962 >>Turn in A Lumbering Relic
    .target Burrian Coalpart
step
    .goto 32,68.58,53.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack Rockleg|r
    .turnin 27964 >>Turn in Dig-Boss Dinwhisker
    .accept 27965 >>Accept Thorium Point: The Seat of the Brotherhood
    .target Jack Rockleg
step
    .goto 32,68.73,53.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prisanne Dustcropper|r
    .turnin 27958 >>Turn in A Proper Antivenom
    .target Prisanne Dustcropper
step << Alliance
    .goto 32,37.931,30.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
    .fp Thorium Point >>Get the Thorium Point Flight Path
    .target Lanie Reed
step << Horde
    .goto 32,34.836,30.873
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grisha|r
    .target Grisha
    .fp Thorium Point >>Get the Thorium Point Flight Path
step
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27965 >>Turn in Thorium Point: The Seat of the Brotherhood
    .accept 28099 >>Accept Rasha'krak
    .unitscan Overseer Oilfist
step
    .goto 32,37.74,26.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
    .accept 27980 >>Accept The Spiders Have to Go
    .target Lookout Captain Lolo Longstriker
step
    .goto 32,42.25,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27976 >>Accept Curse These Fat Fingers
    .accept 27981 >>Accept Heat That Just Don't Quit
    .unitscan Hansel Heavyhands
step
    .goto 32,42.24,34.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27977 >>Accept Recon Essentials
    .unitscan Taskmaster Scrange
step
    #completewith Along28
    >>As you go: Kill |cRXP_ENEMY_Blazing Elementals|r, |cRXP_ENEMY_Inferno Elementals|r, |cRXP_ENEMY_Magma Elementals|r and |cRXP_ENEMY_Rasha'kraks|r. Loot them for |cRXP_LOOT_Filled Furnace Flask|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27981,1 --Filled Furnace Flask (10)
    .mob Blazing Elemental
    .mob Inferno Elemental
    .mob Magma Elemental
    .mob Rasha'krak
step
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Dark Iron Steamsmith|r and loot |cRXP_LOOT_Smithing Tuyere|r. Kill |cRXP_ENEMY_Dark Iron Steamsmith|r and loot |cRXP_LOOT_Lookout's Spyglass|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27977,1 --Smithing Tuyere (1)
    .complete 27977,2 --Lookout's Spyglass (1)
    .mob Dark Iron Steamsmith
step
    #label Along24
    .goto 32,41.12,39.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk|r
    .accept 27983 >>Accept Lunk's Adventure: Cranky Little Dwarfs
    .target Lunk
step
    .goto 32,42.47,40.58
    >>Kill |cRXP_ENEMY_Dark Iron Steamsmith|r and loot |cRXP_LOOT_Smithing Tuyere|r
    >>Kill |cRXP_ENEMY_Dark Iron Steamsmith|r and loot |cRXP_LOOT_Lookout's Spyglass|r
    .complete 27977,1 --Smithing Tuyere (1)
    .complete 27977,2 --Lookout's Spyglass (1)
    .mob Dark Iron Steamsmith
step
    .goto 32,42.47,40.58
    >>Weaken 7 Dark Iron Steamsmiths so Lunk can help them fall asleep.
    .complete 27983,1 --Dark Iron Steamsmith (7)
    .target Dark Iron Steamsmith
step
    .goto 32,41.12,39.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27983 >>Turn in Lunk's Adventure: Cranky Little Dwarfs
    .target ?
step
    #label Along28
    .goto 32,37.14,42.31
    >>Kill |cRXP_ENEMY_Rasha'krak|r and loot |cRXP_LOOT_Rasha'krak's Bracers of Binding|r
    .complete 28099,1 --Rasha'krak's Bracers of Binding (1)
    .mob Rasha'krak
step
    #loop
    .goto 32,39.86,41.29,0
    .goto 32,39.86,41.29,40,0
    .goto 32,42.47,38.45,40,0
    .goto 32,43.25,34.25,40,0
    >>Kill |cRXP_ENEMY_Blazing Elementals|r, |cRXP_ENEMY_Inferno Elementals|r, |cRXP_ENEMY_Magma Elementals|r and |cRXP_ENEMY_Rasha'kraks|r. Loot them for |cRXP_LOOT_Filled Furnace Flask|r
    .complete 27981,1 --Filled Furnace Flask (10)
    .mob Blazing Elemental
    .mob Inferno Elemental
    .mob Magma Elemental
    .mob Rasha'krak
step
    #loop
    .goto 32,44.73,40.06,0
    .goto 32,44.73,40.06,40,0
    .goto 32,46.05,43.65,40,0
    >>Kill |cRXP_ENEMY_Heavy War Golems|r
    .complete 27976,1 --Heavy War Golem slain (12)
    .mob Heavy War Golem
step
    #loop
    .goto 32,29.98,56.99,0
    .goto 32,29.98,56.99,40,0
    .goto 32,30.02,61.38,40,0
    >>Kill |cRXP_ENEMY_Greater Lava Spiders|r and |cRXP_ENEMY_Searing Lava Spiders|r
    .complete 27980,1 --Greater Lava Spider (9)
    .mob Greater Lava Spider
    .mob Searing Lava Spider
step
    .goto 32,37.74,26.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lookout Captain Lolo Longstriker|r
    .turnin 27980 >>Turn in The Spiders Have to Go
    .target Lookout Captain Lolo Longstriker
step
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28099 >>Turn in Rasha'krak
    .unitscan Overseer Oilfist
step
    .goto 32,42.25,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27976 >>Turn in Curse These Fat Fingers
    .turnin 27981 >>Turn in Heat That Just Don't Quit
    .unitscan Hansel Heavyhands
step
    .goto 32,42.24,34.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27977 >>Turn in Recon Essentials
    .accept 27982 >>Accept Twilight Collars
    .unitscan Taskmaster Scrange
step
    .goto 32,42.25,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27979 >>Accept Dark Ministry
    .unitscan Hansel Heavyhands
step
    .goto 32,29.57,26.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamael Lunthistle|r
    .accept 27984 >>Accept Lunthistle's Tale
    .target Zamael Lunthistle
step
    .goto 32,29.57,26.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamael Lunthistle|r
    .complete 27984,1 --Zamael Lunthistle
    .target Zamael Lunthistle
step
    .goto 32,29.57,26.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamael Lunthistle|r
    .turnin 27984 >>Turn in Lunthistle's Tale
    .accept 27985 >>Accept Prayer to Elune
    .target Zamael Lunthistle
step
    #completewith Along41
    >>As you go: Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for |cRXP_LOOT_Twilight Collar|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27982,1 --Twilight Collar (20)
    .mob Twilight Dark Shaman
    .mob Twilight Fire Guard
    .mob Twilight Geomancer
    .mob Twilight Idolater
step
    .goto 32,23.00,35.48
    >>Open the |cRXP_PICK_Twilight's Hammer Crate|r. Loot it for |cRXP_LOOT_Prayer to Elune|r
    .complete 27985,1 --Prayer to Elune (1)
step
    #label Along41
    .goto 32,23.12,35.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27985 >>Turn in Prayer to Elune
    .target ?
step
    #loop
    .goto 32,24.97,34.48,0
    .goto 32,24.97,34.48,40,0
    .goto 32,23.48,39.01,40,0
    .goto 32,19.26,37.03,40,0
    >>Kill |cRXP_ENEMY_Twilight Dark Shamans|r, |cRXP_ENEMY_Twilight Fire Guards|r, |cRXP_ENEMY_Twilight Geomancers|r and |cRXP_ENEMY_Twilight Idolaters|r. Loot them for |cRXP_LOOT_Twilight Collar|r
    .complete 27982,1 --Twilight Collar (20)
    .mob Twilight Dark Shaman
    .mob Twilight Fire Guard
    .mob Twilight Geomancer
    .mob Twilight Idolater
step
    .goto 32,17.55,42.15
    >>Kill |cRXP_ENEMY_Minister Kiyuubi|r and loot |cRXP_LOOT_Kiyuubi's Spherule|r
    .collect 62825,1,27979,1 --Kiyuubi's Spherule (1)
    .mob Minister Kiyuubi
step
    .goto 32,14.15,36.45
    >>Kill |cRXP_ENEMY_Minister Letherio|r and loot |cRXP_LOOT_Letherio's Spherule|r
    .collect 62823,1,27979,1 --Letherio's Spherule (1)
    .mob Minister Letherio
step
    .goto 32,24.68,26.23
    >>Kill |cRXP_ENEMY_Minister Finister|r and loot |cRXP_LOOT_Finister's Spherule|r
    .collect 62824,1,27979,1 --Finister's Spherule (1)
    .mob Minister Finister
step
    .goto 32,38.67,28.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Smith Burninate|r
    .turnin 27982 >>Turn in Twilight Collars
    .target Master Smith Burninate
step
    .goto 32,42.25,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27979 >>Turn in Dark Ministry
    .unitscan Hansel Heavyhands
    .isQuestComplete 27979
step
    .goto 32,42.25,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27986 >>Accept In the Hall of the Mountain-Lord
    .unitscan Hansel Heavyhands
    .isQuestTurnedIn 27979 --Dark Ministry
    .xp <46,1
step
    .goto 32,42.37,66.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fergus Gravelsmash|r
    .target Fergus Gravelsmash
    .home >>Set your Hearthstone to Fergus Gravelsmash's inn
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27986 >>Turn in In the Hall of the Mountain-Lord
    .unitscan Mountain-Lord Rendan
    .isOnQuest 27986
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28028 >>Accept Siege!
    .accept 28029 >>Accept Set Them Ablaze!
    .accept 28030 >>Accept They Build a Better Bullet
    .unitscan Mountain-Lord Rendan
    .isQuestTurnedIn 27986 --any of: In the Hall of the Mountain-Lord
    .xp <46,1
step << Cata
    .goto 32,41.06,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doug Deepdown|r
    .fp Iron Summit>>Get the Iron Summit Flight Path
    .fly Ironforge >> Fly to Ironforge << Alliance !Druid/Alliance !Mage
    .target Doug Deepdown
step << !Cata
    .goto 32,41.06,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doug Deepdown|r
    .fp Iron Summit>>Get the Iron Summit Flight Path
    .target Doug Deepdown
step
    .goto 32,38.84,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnes Flimshale|r
    .accept 28032 >>Accept The Mysteries of the Fire-Gizzard
    .target Agnes Flimshale
    .isQuestTurnedIn 27986 --any of: In the Hall of the Mountain-Lord
    .xp <46,1
step
    .goto 32,35.67,60.68
    >>Click the |cRXP_PICK_Sentry Brazier|r
    .complete 28029,2 --Sentry Brazier
    .isOnQuest 28029
step
    .goto 32,33.30,54.48
    >>Click the |cRXP_PICK_Sentry Brazier|r
    .complete 28029,1 --Sentry Brazier
    .isOnQuest 28029
step
    .goto 32,44.03,60.91
    >>Click the |cRXP_PICK_Sentry Brazier|r
    .complete 28029,3 --Sentry Brazier
    .isOnQuest 28029
step
    .goto 32,50.07,54.74
    >>Click the |cRXP_PICK_Sentry Brazier|r
    .complete 28029,4 --Sentry Brazier
    .isOnQuest 28029
step
    #loop
    .goto 32,46.79,64.69,0
    .goto 32,46.79,64.69,40,0
    .goto 32,46.59,69.91,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Marksmans|r
    .complete 28028,1 --Dark Iron Marksman slain (8)
    .mob Dark Iron Marksman
    .isOnQuest 28028
step
    #loop
    .goto 32,49.69,66.69,0
    .goto 32,49.69,66.69,40,0
    .goto 32,46.74,63.96,40,0
    .goto 32,43.65,62.74,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Marksmans|r and |cRXP_ENEMY_Dark Iron Lookouts|r. Loot them for |cRXP_LOOT_Dark Iron Bullet|r. It can also be picked up from |cRXP_PICK_Dark Iron Bullets|r on the ground
    .complete 28030,1 --Dark Iron Bullet (200)
    .mob Dark Iron Marksman
    .mob Dark Iron Lookout
    .isOnQuest 28030
step
    #loop
    .goto 32,35.51,70.80,0
    .goto 32,35.51,70.80,40,0
    .goto 32,34.58,66.77,40,0
    >>Kill |cRXP_ENEMY_Incendosaurs|r. Loot them for |cRXP_LOOT_Fire-Gizzard|r
    .complete 28032,1 --Fire-Gizzard (6)
    .mob Incendosaur
    .isOnQuest 28032
step
    .goto 32,38.84,68.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agnes Flimshale|r
    .turnin 28032 >>Turn in The Mysteries of the Fire-Gizzard
    .target Agnes Flimshale
    .isOnQuest 28032
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28028 >>Turn in Siege!
    .unitscan Mountain-Lord Rendan
    .isOnQuest 28028
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28029 >>Turn in Set Them Ablaze!
    .unitscan Mountain-Lord Rendan
    .isOnQuest 28029
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28030 >>Turn in They Build a Better Bullet
    .unitscan Mountain-Lord Rendan
    .isOnQuest 28030
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28033 >>Accept Deceit
    .unitscan Mountain-Lord Rendan
    .isQuestTurnedIn 28028 --Siege!
    .isQuestTurnedIn 28029 --Set Them Ablaze!
    .isQuestTurnedIn 28030 --They Build a Better Bullet
    .xp <46,1
step
    .goto 32,39.83,67.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28033 >>Turn in Deceit
    .unitscan Lunk
    .isOnQuest 28033
step
    .goto 32,39.83,67.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28034 >>Accept Lunk's Adventure: Rendan's Weakness
    .unitscan Lunk
    .isQuestTurnedIn 28033 --any of: Deceit
    .xp <46,1
step
    #loop
    .goto 32,39.62,69.57,0
    .goto 32,39.62,69.57,40,0
    .goto 32,41.95,68.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iron Summit Guard|r
    .complete 28034,1 --Iron Summit Guard (3)
    .target Iron Summit Guard
    .isOnQuest 28034
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28034 >>Turn in Lunk's Adventure: Rendan's Weakness
    .unitscan Mountain-Lord Rendan
    .isOnQuest 28034
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28035 >>Accept The Mountain-Lord's Support
    .unitscan Mountain-Lord Rendan
    .isQuestTurnedIn 28034 --any of: Lunk's Adventure: Rendan's Weakness
    .xp <46,1
step
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28035 >>Turn in The Mountain-Lord's Support
    .unitscan Overseer Oilfist
    .isOnQuest 28035
step
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28052 >>Accept Operation: Stir the Cauldron
    .unitscan Overseer Oilfist
    .isQuestTurnedIn 28035 --any of: The Mountain-Lord's Support
    .xp <46,1
step
    .goto 32,41.44,55.72
    >>Secure entrance into the Slag Pit
    .complete 28052,1 --Secure entrance into the Slag Pit
    .isOnQuest 28052
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28052 >>Turn in Operation: Stir the Cauldron
    .unitscan Mountain-Lord Rendan
    .isOnQuest 28052
step
    .goto 32,39.43,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountain-Lord Rendan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28054 >>Accept Slavery is Bad
    .accept 28055 >>Accept Sweet, Horrible Freedom
    .accept 28056 >>Accept Rise, Obsidion
    .unitscan Mountain-Lord Rendan
    .isQuestTurnedIn 28052 --any of: Operation: Stir the Cauldron
    .xp <46,1
step
    .goto 32,41.32,25.53
    >>Kill |cRXP_ENEMY_Lathoric the Black|r
    .complete 28056,2 --Lathoric the Black slain (1)
    .mob Lathoric the Black
    .isOnQuest 28056
step
    .goto 32,41.76,24.33
    >>Kill |cRXP_ENEMY_Obsidion|r
    .complete 28056,1 --Obsidion slain (1)
    .mob Obsidion
    .isOnQuest 28056
step
    #loop
    .goto 32,41.45,31.95,0
    .goto 32,41.45,31.95,40,0
    .goto 32,40.85,36.81,40,0
    >>Kill |cRXP_ENEMY_Slave Workers|r
    .complete 28055,1 --Slave Worker slain (12)
    .mob Slave Worker
    .isOnQuest 28055
step
    #loop
    .goto 32,43.21,31.14,0
    .goto 32,43.21,31.14,40,0
    .goto 32,42.91,27.75,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Taskmasters|r, |cRXP_ENEMY_Dark Iron Digmasters|r and |cRXP_ENEMY_Dark Iron Slavers|r
    .complete 28054,1 --Dark Iron Taskmaster (10)
    .mob Dark Iron Taskmaster
    .mob Dark Iron Digmaster
    .mob Dark Iron Slaver
    .isOnQuest 28054
step
    .goto 32,38.93,27.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evonice Sootsmoker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28054 >>Turn in Slavery is Bad
    .unitscan Evonice Sootsmoker
    .isOnQuest 28054
step
    .goto 32,38.93,27.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evonice Sootsmoker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28055 >>Turn in Sweet, Horrible Freedom
    .unitscan Evonice Sootsmoker
    .isOnQuest 28055
step
    .goto 32,38.93,27.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evonice Sootsmoker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28056 >>Turn in Rise, Obsidion
    .unitscan Evonice Sootsmoker
    .isOnQuest 28056
step
    .goto 32,38.93,27.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evonice Sootsmoker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28057 >>Accept Kill 'em With Sleep Deprivation
    .unitscan Evonice Sootsmoker
    .isQuestTurnedIn 28054 --Slavery is Bad
    .isQuestTurnedIn 28055 --Sweet, Horrible Freedom
    .isQuestTurnedIn 28056 --Rise, Obsidion
    .xp <46,1
step
    .goto 32,45.40,29.26
    >>Pick up |cRXP_PICK_Dark Iron Pillow|r from the ground
    .complete 28057,1 --Dark Iron Pillow (16)
    .isOnQuest 28057
step
    .goto 32,42.24,34.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28057 >>Turn in Kill 'em With Sleep Deprivation
    .unitscan Taskmaster Scrange
    .isOnQuest 28057
step
    .goto 32,42.24,34.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Scrange|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28060 >>Accept Twisted Twilight Ties
    .unitscan Taskmaster Scrange
    .isQuestTurnedIn 28057 --any of: Kill 'em With Sleep Deprivation
    .xp <46,1
step
    .goto 32,40.83,35.80
    >>Kill |cRXP_ENEMY_Overseer Maltorius|r
    .complete 28060,1 --Overseer Maltorius slain (1)
    .mob Overseer Maltorius
    .isOnQuest 28060
step
    .goto 32,40.86,35.94
    >>Kill |cRXP_ENEMY_Twilight-Lord Arkkus|r
    .complete 28060,2 --Twilight-Lord Arkkus slain (1)
    .mob Twilight-Lord Arkkus
    .isOnQuest 28060
step
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28060 >>Turn in Twisted Twilight Ties
    .unitscan Overseer Oilfist
    .isOnQuest 28060
step
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28062 >>Accept From Whence He Came
    .accept 28061 >>Accept Minions of Calcinder
    .unitscan Overseer Oilfist
    .isQuestTurnedIn 28060 --any of: Twisted Twilight Ties
    .xp <46,1
step
    .goto 32,42.67,30.17
    >>Kill |cRXP_ENEMY_Archduke Calcinder|r
    .complete 28062,1 --Archduke Calcinder slain (1)
    .mob Archduke Calcinder
    .isOnQuest 28062
step
    .goto 32,43.36,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28062 >>Turn in From Whence He Came
    .target ?
    .isOnQuest 28062
step
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28064 >>Accept Welcome to the Brotherhood
    .unitscan Overseer Oilfist
    .isQuestTurnedIn 28062 --any of: From Whence He Came
    .xp <46,1
step
    #loop
    .goto 32,45.34,20.86,0
    .goto 32,45.34,20.86,40,0
    .goto 32,47.48,21.69,40,0
    >>Kill |cRXP_ENEMY_Searing Flamewraiths|r
    .complete 28061,1 --Searing Flamewraith slain (6)
    .mob Searing Flamewraith
    .isOnQuest 28061
step
    .goto 32,43.36,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28061 >>Turn in Minions of Calcinder
    .target ?
    .isOnQuest 28061
step
    .goto 32,39.83,67.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28053 >>Accept Lunk Like Your Style
    .unitscan Lunk
    .isQuestTurnedIn 28062 --any of: From Whence He Came
    .xp <46,1
step
    .goto 32,39.83,67.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lunk|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28053 >>Turn in Lunk Like Your Style
    .unitscan Lunk
    .isOnQuest 28053
step
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28064 >>Turn in Welcome to the Brotherhood
    .unitscan Overseer Oilfist
    .isOnQuest 28064
step
    +|cRXP_WARN_That is all of Searing Gorge for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Dark Ministry
step
    +|cRXP_WARN_Suggested next zones at level 48|r: |cRXP_FRIENDLY_Tanaris|r (about 0.9 levels of quests, starting around Mazoga), |cRXP_FRIENDLY_Felwood|r (about 0.7 levels of quests, starting around Feronas Sindweller), |cRXP_FRIENDLY_Badlands|r (about 0.6 levels of quests, starting around Dolph Blastus). Completing this step loads the guide for Tanaris --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Searing Gorge is planned from level 51.|r Load its guide for level 51 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 47 - 52 Searing Gorge
#subweight -47
#name 51-52 Searing Gorge
--RouteBuilder:next
#next Zone Routes (Alliance)\50-52 Winterspring: around Donova Snowden;Zone Routes (Alliance)\51-53 Un'Goro Crater: around Garl Stormclaw;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

step
    .goto 32,24.68,26.23
    >>Kill |cRXP_ENEMY_Minister Finister|r and loot |cRXP_LOOT_Finister's Spherule|r
    .collect 62824,1,27979,1 --Finister's Spherule (1)
    .mob Minister Finister
    .isOnQuest 27979
step
    .goto 32,14.15,36.45
    >>Kill |cRXP_ENEMY_Minister Letherio|r and loot |cRXP_LOOT_Letherio's Spherule|r
    .collect 62823,1,27979,1 --Letherio's Spherule (1)
    .mob Minister Letherio
    .isOnQuest 27979
step
    .goto 32,17.55,42.15
    >>Kill |cRXP_ENEMY_Minister Kiyuubi|r and loot |cRXP_LOOT_Kiyuubi's Spherule|r
    .collect 62825,1,27979,1 --Kiyuubi's Spherule (1)
    .mob Minister Kiyuubi
    .isOnQuest 27979
step
    .goto 32,42.25,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Heavyhands|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27979 >>Turn in Dark Ministry
    .unitscan Hansel Heavyhands
    .isQuestComplete 27979
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 32,38.12,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Oilfist|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28514 >>Accept Mouton Flamestar
    .unitscan Overseer Oilfist
step
    +|cRXP_WARN_End of the Searing Gorge route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Burning Steppes|r: Mouton Flamestar << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 51|r: |cRXP_FRIENDLY_Winterspring|r (about 2.4 levels of quests, starting around Donova Snowden), |cRXP_FRIENDLY_Un'Goro Crater|r (about 1.9 levels of quests, starting around Garl Stormclaw), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 1.0 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Winterspring --RouteBuilder:next
]])
