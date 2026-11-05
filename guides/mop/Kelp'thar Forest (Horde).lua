-- 81-81 Kelp'thar Forest: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 81, 86).
-- Split into 2 guides, listed under "81 - 87 Kelp'thar Forest" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Kelp'thar Forest.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 81 - 87 Kelp'thar Forest
#subweight -81
#name 81-82 Kelp'thar Forest: around Legionnaire Nazgrim
--RouteBuilder:next
#next Zone Routes (Horde)\82-83 Deepholm

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,38.74,31.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .accept 25929 >>Accept Sea Legs
    .target Erunak Stonespeaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 201,40.10,28.69,0
    .goto 201,40.10,28.69,40,0
    .goto 201,42.78,31.13,40,0
    .goto 201,45.15,26.94,40,0
    >>Loot the |cRXP_PICK_Saltwater Stars|r for |cRXP_LOOT_Saltwater Starfish|r
    >>Pick up |cRXP_PICK_Conch Shell|r from the ground
    .complete 25929,1 --Saltwater Starfish (3)
    .complete 25929,2 --Conch Shell (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,38.74,31.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 25929 >>Turn in Sea Legs
    .accept 25936 >>Accept Pay It Forward
    .target Erunak Stonespeaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 201,41.76,29.71,0
    .goto 201,41.76,29.71,40,0
    .goto 201,39.66,26.38,40,0
    .goto 201,41.88,35.94,40,0
    >>Use the Enchanted Conch to rescue 6 Drowning Warriors.
    .complete 25936,1 --Drowning Warrior (6)
    .target Drowning Warrior
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,38.74,31.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 25936 >>Turn in Pay It Forward
    .accept 25941 >>Accept Rest For the Weary
    .target Erunak Stonespeaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,39.03,32.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25941 >>Turn in Rest For the Weary
    .accept 25943 >>Accept Traveling on Our Stomachs
    .accept 25942 >>Accept Buy Us Some Time
    .target Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 201,40.31,34.02,0
    .goto 201,40.31,34.02,40,0
    .goto 201,37.50,30.15,40,0
    .goto 201,41.21,31.51,40,0
    .goto 201,41.23,37.66,40,0
    >>Kill |cRXP_ENEMY_Zin'jatar Raiders|r
    >>Kill |cRXP_ENEMY_Splitclaw Skitterers|r. Loot them for |cRXP_LOOT_Succulent Crab Meat|r
    .complete 25942,1 --Zin'jatar Raider slain (8)
    .complete 25943,1 --Succulent Crab Meat (8)
    .mob Zin'jatar Raider
    .mob Splitclaw Skitterer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,39.03,32.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25943 >>Turn in Traveling on Our Stomachs
    .turnin 25942 >>Turn in Buy Us Some Time
    .accept 25944 >>Accept Girding Our Loins
    .target Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 201,37.05,29.46,0
    .goto 201,37.05,29.46,40,0
    .goto 201,36.13,32.65,40,0
    .goto 201,37.61,36.32,40,0
    >>Kill |cRXP_ENEMY_Gilblin Plunderers|r. Loot them for |cRXP_LOOT_Orgrimmar Helm|r. It can also be picked up from |cRXP_PICK_Orgrimmar Helm|r on the ground
    >>Kill |cRXP_ENEMY_Gilblin Plunderers|r. Loot them for |cRXP_LOOT_Orgrimmar Breastplate|r. It can also be picked up from |cRXP_PICK_Orgrimmar Breastplate|r on the ground
    >>Kill |cRXP_ENEMY_Gilblin Plunderers|r. Loot them for |cRXP_LOOT_Orgrimmar Axe|r. It can also be picked up from |cRXP_PICK_Orgrimmar Axe|r on the ground
    .complete 25944,2 --Orgrimmar Helm (5)
    .complete 25944,3 --Orgrimmar Breastplate (5)
    .complete 25944,1 --Orgrimmar Axe (5)
    .mob Gilblin Plunderer
step
    .goto 201,39.03,32.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25944 >>Turn in Girding Our Loins << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 27668 >>Accept Pay Attention!
    .target Legionnaire Nazgrim
step
    .goto 201,38.90,26.81
    >>Click the |cRXP_PICK_Alliance S.E.A.L. Equipment|r
    .turnin 27668 >>Turn in Pay Attention!
    .accept 25946 >>Accept Helm's Deep << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,39.03,32.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25946 >>Turn in Helm's Deep
    .accept 25947 >>Accept Finders, Keepers
    .target Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,49.93,30.38
    >>Open the |cRXP_PICK_Stormwind Locker|r. Loot it for |cRXP_LOOT_Stormwind S.E.A.L. Equipment|r
    .complete 25947,1 --Stormwind S.E.A.L. Equipment (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,45.79,33.96
    >>Ride the mercenary ship to battle.
    .complete 25924,1 --Submerge Bunny
    .target Submerge Bunny
    .isOnQuest 25924
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,39.03,32.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25947 >>Turn in Finders, Keepers
    .accept 25948 >>Accept Bring It On!
    .target Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,38.74,31.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 25924 >>Turn in Call of Duty
    .target Erunak Stonespeaker
    .isOnQuest 25924
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,39.48,30.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25948 >>Turn in Bring It On!
    .accept 25949 >>Accept Blood and Thunder!
    .target Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,46.27,46.56
    >>Assist Legionnaire Nazgrim in the defense of The Immortal Coil.
    .complete 25949,1 --Blood and Thunder Kill Credit
    .target Blood and Thunder Kill Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,46.33,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 25949 >>Turn in Blood and Thunder!
    .target Erunak Stonespeaker
step
    .goto 201,46.04,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moanah Stormhoof|r
    .accept 25477 >>Accept Better Late Than Dead
    .target Moanah Stormhoof
step
    #loop
    .goto 201,51.76,46.61,0
    .goto 201,51.76,46.61,40,0
    .goto 201,53.63,46.58,40,0
    .goto 201,54.87,47.87,40,0
    .goto 201,55.82,48.54,40,0
    .goto 201,55.55,51.83,40,0
    .goto 201,55.07,53.13,40,0
    >>Interact with |cRXP_FRIENDLY_Speckled Sea Turtle|r
    .complete 25477,1 --Speckled Sea Turtle
    .target Speckled Sea Turtle
step
    .goto 201,53.45,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarrah|r
    .accept 25587 >>Accept Gimme Shelter!
    .target Adarrah
step
    .goto 201,53.45,43.01
    >>Investigate Smuggler's Scar in the Kelp'thar forest, then signal to Adarrah that it's safe to enter.
    .complete 25587,2 --Gimme Shelter Kill Credit 01 (1)
step
    .goto 201,53.45,43.01
    >>Investigate Smuggler's Scar in the Kelp'thar forest, then signal to Adarrah that it's safe to enter.
    .complete 25587,1 --Gimme Shelter Kill Credit 00 (1)
step
    .goto 201,57.33,28.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Samir|r
    .target Captain Samir
    .home >>Set your Hearthstone to Captain Samir's inn
step
    .goto 201,57.12,28.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarrah|r
    .turnin 25587 >>Turn in Gimme Shelter!
    .accept 25598 >>Accept Ain't Too Proud to Beg
    .target Adarrah
step
    #loop
    .goto 201,49.77,33.14,0
    .goto 201,49.77,33.14,40,0
    .goto 201,53.28,24.92,40,0
    .goto 201,49.10,28.11,40,0
    .goto 201,52.78,23.06,40,0
    .goto 201,49.08,21.56,40,0
    .goto 201,47.06,21.57,40,0
    .goto 201,46.22,20.46,40,0
    .goto 201,45.00,18.33,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slitherfin Eel|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27729 >>Accept Once More, With Eeling
    .unitscan Slitherfin Eel
    .isQuestTurnedIn 14482,25924 --any of: Call of Duty, Call of Duty
    .xp <80,1
step
    .goto 201,48.27,39.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Samir|r
    .complete 25598,1 --Captain Samir
    .target Captain Samir
step
    .goto 201,49.69,40.88
    >>Click the |cRXP_PICK_Sunken Crate|r
    .accept 25388 >>Accept Crate of Crab Meat
step
    .goto 201,57.12,28.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarrah|r
    .turnin 25598 >>Turn in Ain't Too Proud to Beg
    .turnin 25388 >>Turn in Crate of Crab Meat
    .accept 25389 >>Accept A Taste For Tail
    .accept 25390 >>Accept A Girl's Best Friend
    .target Adarrah
step
    .goto 201,57.33,28.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Samir|r
    .accept 25602 >>Accept Can't Start a Fire Without a Spark
    .target Captain Samir
step
    #completewith Along32
    >>As you go: Loot the |cRXP_PICK_Adarrah's Jewelry Boxes|r for |cRXP_LOOT_Adarrah's Keepsake|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25390,1 --Adarrah's Keepsake (6)
step
    .goto 201,55.53,38.82
    >>Pick up |cRXP_PICK_Keg of Gunpowder|r from the ground
    .complete 25602,1 --Keg of Gunpowder (1)
step
    #label Along32
    #loop
    .goto 201,56.71,41.00,0
    .goto 201,56.71,41.00,40,0
    .goto 201,57.55,46.65,40,0
    >>Kill |cRXP_ENEMY_Slickskin Eels|r and |cRXP_ENEMY_Slitherfin Eels|r
    .complete 27729,1 --Slickskin Eel (8)
    .mob Slickskin Eel
    .mob Slitherfin Eel
    .isOnQuest 27729
step
    #completewith Drop25377x1
    >>|cRXP_LOOT_Tattered Treasure Map|r can drop from |cRXP_ENEMY_Clacksnap Pincer|r. Use it to start the quest if you get one
    .collect 53053,1,25377 --Tattered Treasure Map (1)
    .accept 25377 >>Accept The Horde's Hoard
    .use 53053
step
    #label Drop25377x1
    #loop
    .goto 201,49.95,42.68,0
    .goto 201,49.95,42.68,40,0
    .goto 201,50.04,45.46,40,0
    >>Kill |cRXP_ENEMY_Clacksnap Pincers|r. Loot them for |cRXP_LOOT_Clacksnap Tail|r
    >>Loot the |cRXP_PICK_Adarrah's Jewelry Boxes|r for |cRXP_LOOT_Adarrah's Keepsake|r
    .complete 25389,1 --Clacksnap Tail (4)
    .complete 25390,1 --Adarrah's Keepsake (6)
    .mob Clacksnap Pincer
step
    .goto 201,54.46,49.98
    >>Kill |cRXP_ENEMY_Gnash|r and loot |cRXP_LOOT_Gnash's Head|r. Use it to start the quest
    .collect 62138,1,27687 --Gnash's Head (1)
    .accept 27687 >>Accept An Opened Can of Whoop Gnash
    .use 62138
    .mob Gnash
step
    #completewith next
    .hs >>Hearth to Captain Samir's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 201,57.33,28.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Samir|r
    .turnin 25602 >>Turn in Can't Start a Fire Without a Spark
    .turnin 27687 >>Turn in An Opened Can of Whoop Gnash
    .target Captain Samir
step
    .goto 201,57.12,28.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarrah|r
    .turnin 25390 >>Turn in A Girl's Best Friend
    .turnin 25389 >>Turn in A Taste For Tail
    .accept 25459 >>Accept Ophidophobia
    .target Adarrah
step
    .goto 201,57.31,29.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mack Fearsen|r
    .accept 25358 >>Accept Nerve Tonic
    .target Mack Fearsen
step
    #loop
    .goto 201,56.91,36.59,0
    .goto 201,56.91,36.59,40,0
    .goto 201,57.29,39.33,40,0
    >>Kill |cRXP_ENEMY_Akasha|r and loot |cRXP_LOOT_Horde Chest Key|r
    >>Kill |cRXP_ENEMY_Brinescale Serpents|r
    >>Pick up |cRXP_PICK_Sunken Cargo|r from the ground
    .complete 25377,1 --Horde Chest Key (1)
    .complete 25459,1 --Brinescale Serpent slain (4)
    .complete 25358,1 --Sunken Cargo (5)
    .mob Akasha
    .mob Brinescale Serpent
step
    .goto 201,57.86,35.10
    >>Click the |cRXP_PICK_Sunken Horde Chest|r
    .turnin 25377 >>Turn in The Horde's Hoard
    .isOnQuest 25377
step
    .goto 201,57.31,29.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mack Fearsen|r
    .turnin 25358 >>Turn in Nerve Tonic
    .target Mack Fearsen
step
    .goto 201,57.12,28.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarrah|r
    .turnin 25459 >>Turn in Ophidophobia
    .target Adarrah
step
    .goto 201,56.42,30.08
    >>Click the |cRXP_PICK_Broken Bottle|r
    .accept 25638 >>Accept A Desperate Plea
step
    .goto 201,55.28,38.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .accept 25651 >>Accept Oh, the Insanity!
    .target Budd
step
    .goto 201,55.28,38.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .turnin 25651 >>Turn in Oh, the Insanity!
    .target Budd
    .isQuestComplete 25651
step
    .goto 201,55.28,38.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .accept 25657 >>Accept Dah, Nunt... Dah, Nunt...
    .target Budd
    .isQuestTurnedIn 25651 --any of: Oh, the Insanity!
    .xp <80,1
step
    .goto 201,58.32,48.84
    >>Click the |cRXP_PICK_Rusty Harpoon Gun|r
    .complete 25657,1 --Rusty Harpoon Gun
    .isOnQuest 25657
step
    .goto 201,55.28,38.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .turnin 25657 >>Turn in Dah, Nunt... Dah, Nunt...
    .target Budd
    .isOnQuest 25657
step
    .goto 201,55.28,38.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .accept 27699 >>Accept Shark Weak
    .target Budd
    .isQuestTurnedIn 25657 --any of: Dah, Nunt... Dah, Nunt...
    .xp <80,1
step
    #loop
    .goto 201,58.31,47.78,0
    .goto 201,58.31,47.78,40,0
    .goto 201,59.65,49.62,40,0
    >>Pick up |cRXP_PICK_Gnaws' Tooth|r from the ground
    .complete 27699,1 --Gnaws' Tooth (1)
    .isOnQuest 27699
step
    .goto 201,55.28,38.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .turnin 27699 >>Turn in Shark Weak
    .target Budd
    .isOnQuest 27699
step
    .goto 201,55.28,38.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .accept 25670 >>Accept DUN-dun-DUN-dun-DUN-dun
    .target Budd
    .isQuestTurnedIn 27699 --any of: Shark Weak
    .xp <80,1
step
    .goto 201,55.28,38.91
    >>Use Budd's Chain on the Rusty Harpoon Gun in The Skeletal Reef. Fire the Harpoon when Gnaws is in position over the gun.
    .complete 25670,1 --Gnaws (1)
    .isOnQuest 25670
step
    .goto 201,58.40,48.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .turnin 25670 >>Turn in DUN-dun-DUN-dun-DUN-dun
    .target Budd
    .isOnQuest 25670
step
    .goto 201,58.40,48.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .accept 25732 >>Accept A Bone to Pick
    .target Budd
    .isQuestTurnedIn 25670 --any of: DUN-dun-DUN-dun-DUN-dun
    .xp <80,1
step
    .goto 201,46.33,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 25638 >>Turn in A Desperate Plea
    .accept 25794 >>Accept Undersea Sanctuary
    .target Erunak Stonespeaker
step
    .goto 201,46.04,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moanah Stormhoof|r
    .turnin 25477 >>Turn in Better Late Than Dead while you are here
    .isQuestComplete 25477
    .target Moanah Stormhoof
step
    .goto 201,46.14,46.64
    >>Use Erunak's Scrying Orb to view the location of Deepmist Grotto.
    .complete 25794,1 --Watery Vision
    .target Watery Vision
step
    .goto 201,46.33,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 25794 >>Turn in Undersea Sanctuary while you are here
    .isQuestComplete 25794
    .target Erunak Stonespeaker
step
    .goto 201,46.04,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moanah Stormhoof|r
    .turnin 25477 >>Turn in Better Late Than Dead
    .target Moanah Stormhoof
step
    .goto 201,46.33,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 25794 >>Turn in Undersea Sanctuary
    .accept 26000 >>Accept Spelunking << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Erunak Stonespeaker
step
    #completewith Along59
    >>As you go: Kill |cRXP_ENEMY_Gilblin Hoarder|r and loot |cRXP_LOOT_Pilfered Cannonball|r. It can also be picked up from |cRXP_PICK_Pilfered Cannonballs|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .collect 55185,1,25651,1 --Pilfered Cannonball (1)
    .mob Gilblin Hoarder
step
    #label Along59
    .goto 201,51.13,52.03
    >>Kill |cRXP_ENEMY_Gilblingle|r and loot |cRXP_LOOT_Waterlogged Journal|r. Use it to start the quest
    .collect 54639,1,25503 --Waterlogged Journal (1)
    .accept 25503 >>Accept Blackfin's Booty
    .use 54639
    .mob Gilblingle
step
    #loop
    .goto 201,50.41,51.85,0
    .goto 201,50.41,51.85,40,0
    .goto 201,51.14,54.82,40,0
    .goto 201,53.69,57.16,40,0
    >>Kill |cRXP_ENEMY_Gilblin Hoarder|r and loot |cRXP_LOOT_Pilfered Cannonball|r. It can also be picked up from |cRXP_PICK_Pilfered Cannonballs|r on the ground
    .collect 55185,1,25651,1 --Pilfered Cannonball (1)
    .mob Gilblin Hoarder
step
    .goto 201,53.59,58.04
    >>Kill |cRXP_ENEMY_King Gurboggle|r and loot |cRXP_LOOT_The Pewter Pounder|r
    .complete 25732,1 --The Pewter Pounder (1)
    .mob King Gurboggle
    .isOnQuest 25732
step
    .goto 201,54.65,62.95
    >>Kill |cRXP_ENEMY_Blackfin|r and loot |cRXP_LOOT_Gilblingle's Map|r
    .complete 25503,1 --Gilblingle's Map (1)
    .mob Blackfin
step
    .goto 201,55.08,54.93
    >>Click the |cRXP_PICK_Sandy Mound|r
    .turnin 25503 >>Turn in Blackfin's Booty
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,63.98,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurrok|r
    .turnin 26000 >>Turn in Spelunking
    .target Gurrok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,63.85,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .accept 26007 >>Accept Debriefing
    .target Erunak Stonespeaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,63.98,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurrok|r
    .complete 26007,1 --Gurrok
    .target Gurrok
step
    .goto 201,63.85,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 26007 >>Turn in Debriefing << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 25887 >>Accept Wake of Destruction
    .target Erunak Stonespeaker
step
    #loop
    .goto 201,59.41,70.73,0
    .goto 201,59.41,70.73,40,0
    .goto 201,59.81,73.65,40,0
    .goto 201,56.93,72.57,40,0
    >>Kill |cRXP_ENEMY_Zin'jatar Guardians|r
    .complete 25887,1 --Zin'jatar Guardian slain (8)
    .mob Zin'jatar Guardian
step
    .goto 201,63.85,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 25887 >>Turn in Wake of Destruction
    .target Erunak Stonespeaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,63.89,59.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moanah Stormhoof|r
    .accept 26008 >>Accept Decompression
    .target Moanah Stormhoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,63.98,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurrok|r
    .accept 26040 >>Accept What? What? In My Gut...?
    .target Gurrok
step
    .goto 201,64.21,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rendel Firetongue|r
    .accept 25884 >>Accept Come Hell or High Water
    .target Rendel Firetongue
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along73
    >>As you go: Kill |cRXP_ENEMY_Zin'jatar Pearlbinders|r, |cRXP_ENEMY_Zin'jatar Guardians|r, |cRXP_ENEMY_Zin'jatar Overseers|r and |cRXP_ENEMY_Shimmerspine Harvesters|r. Loot them for |cRXP_LOOT_Wiggleweed Sprout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26040,1 --Wiggleweed Sprout (7)
    .mob Zin'jatar Pearlbinder
    .mob Zin'jatar Guardian
    .mob Zin'jatar Overseer
    .mob Shimmerspine Harvester
step
    #completewith Along73
    >>As you go: Kill |cRXP_ENEMY_Zin'jatar Pearlbinders|r, |cRXP_ENEMY_Zin'jatar Overseers|r and |cRXP_ENEMY_Zin'jatar Guardians|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25884,1 --Zin'jatar Pearlbinder (8)
    .mob Zin'jatar Pearlbinder
    .mob Zin'jatar Overseer
    .mob Zin'jatar Guardian
step
    #label Along73
    .goto 201,60.39,69.85
    >>Click the |cRXP_PICK_Naga Tridents|r
    .accept 25883 >>Accept How Disarming
step
    #loop
    .goto 201,59.79,70.84,0
    .goto 201,59.79,70.84,40,0
    .goto 201,59.47,75.19,40,0
    .goto 201,56.64,72.43,40,0
    >>Kill |cRXP_ENEMY_Zin'jatar Pearlbinders|r, |cRXP_ENEMY_Zin'jatar Guardians|r, |cRXP_ENEMY_Zin'jatar Overseers|r and |cRXP_ENEMY_Shimmerspine Harvesters|r. Loot them for |cRXP_LOOT_Wiggleweed Sprout|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Click the |cRXP_PICK_Naga Tridents|r
    >>Kill |cRXP_ENEMY_Zin'jatar Pearlbinders|r, |cRXP_ENEMY_Zin'jatar Overseers|r and |cRXP_ENEMY_Zin'jatar Guardians|r
    .complete 26040,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Wiggleweed Sprout (7)
    .complete 25883,1 --Naga Tridents
    .complete 25884,1 --Zin'jatar Pearlbinder (8)
    .mob Zin'jatar Pearlbinder
    .mob Zin'jatar Guardian
    .mob Zin'jatar Overseer
    .mob Shimmerspine Harvester << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    .goto 201,60.39,69.85
    >>Click the |cRXP_PICK_Naga Tridents|r
    .turnin 25883 >>Turn in How Disarming
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,63.98,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurrok|r
    .turnin 26040 >>Turn in What? What? In My Gut...?
    .target Gurrok
step
    .goto 201,64.21,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rendel Firetongue|r
    .turnin 25884 >>Turn in Come Hell or High Water
    .accept 27708 >>Accept The Warden's Time
    .target Rendel Firetongue
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 201,60.59,76.61,0
    .goto 201,60.59,76.61,40,0
    .goto 201,58.88,79.88,40,0
    .goto 201,56.25,77.39,40,0
    >>Interact with |cRXP_FRIENDLY_Imprisoned Warriors|r
    .complete 26008,1 --Imprisoned Warrior (10)
    .target Imprisoned Warrior
step
    .goto 201,60.15,81.19
    >>Kill |cRXP_ENEMY_Warden Azjakir|r
    .complete 27708,1 --Warden Azjakir slain (1)
    .mob Warden Azjakir
step
    .goto 201,63.85,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r
    .turnin 27708 >>Turn in The Warden's Time
    .accept 25471 >>Accept Across the Great Divide
    .target Erunak Stonespeaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 201,63.89,59.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moanah Stormhoof|r
    .turnin 26008 >>Turn in Decompression
    .target Moanah Stormhoof
step
    .goto 201,58.40,48.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .turnin 25732 >>Turn in A Bone to Pick
    .target Budd
    .isOnQuest 25732
step
    .goto 201,58.40,48.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .accept 25743 >>Accept Decisions, Decisions
    .target Budd
    .isQuestTurnedIn 25732 --any of: A Bone to Pick
    .xp <80,1
step
    .goto 201,58.31,48.63
    >>Click the |cRXP_PICK_The Pewter Prophet|r
    .complete 25743,1 --The Pewter Prophet
    .isOnQuest 25743
step
    .goto 201,58.41,48.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .turnin 25743 >>Turn in Decisions, Decisions
    .target Budd
    .isOnQuest 25743
step
    .goto 201,47.22,21.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27729 >>Turn in Once More, With Eeling
    .target ?
    .isOnQuest 27729
step
    +|cRXP_WARN_That is all of Kelp'thar Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shimmering Expanse|r: Across the Great Divide
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Oh, the Insanity!
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Kelp'thar Forest is planned from level 86.|r Load its guide for level 86 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 81 - 87 Kelp'thar Forest
#subweight -81
#name 86-87 Kelp'thar Forest
--RouteBuilder:next
#next Zone Routes (Horde)\87-88 Kun-Lai Summit: around Smokey Sootassle

step
    .goto 201,46.04,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moanah Stormhoof|r
    .accept 25371 >>Accept The Abyssal Ride
    .target Moanah Stormhoof
    .isQuestTurnedIn 25477 --any of: Better Late Than Dead
step
    .goto 201,45.38,46.62
    >>Click the |cRXP_PICK_Braided Rope|r
    .complete 25371,2 --Braided Rope
    .isOnQuest 25371
step
    .goto 201,45.06,47.00
    >>Kill |cRXP_ENEMY_Abyssal Seahorse|r
    .complete 25371,1 --Abyssal Seahorse slain (1)
    .mob Abyssal Seahorse
    .isOnQuest 25371
step
    .goto 201,46.04,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moanah Stormhoof|r
    .turnin 25371 >>Turn in The Abyssal Ride
    .target Moanah Stormhoof
    .isOnQuest 25371
step
    .goto 201,46.62,46.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rendel Firetongue|r
    .accept 27685 >>Accept Good Deed Left Undone
    .target Rendel Firetongue
    .isQuestTurnedIn 25371 --any of: The Abyssal Ride
step
    #loop
    .goto 201,50.41,51.85,0
    .goto 201,50.41,51.85,40,0
    .goto 201,51.14,54.82,40,0
    .goto 201,53.69,57.16,40,0
    >>Kill |cRXP_ENEMY_Gilblin Hoarder|r and loot |cRXP_LOOT_Pilfered Cannonball|r. It can also be picked up from |cRXP_PICK_Pilfered Cannonballs|r on the ground
    .collect 55185,1,25651,1 --Pilfered Cannonball (1)
    .mob Gilblin Hoarder
    .isOnQuest 25651
step
    .goto 201,53.45,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adarrah|r
    .turnin 27685 >>Turn in Good Deed Left Undone
    .target Adarrah
    .isOnQuest 27685
step
    .goto 201,55.28,38.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Budd|r
    .turnin 25651 >>Turn in Oh, the Insanity!
    .target Budd
    .isQuestComplete 25651
step
    +|cRXP_WARN_End of the Kelp'thar Forest route.|r
step
    +|cRXP_WARN_Suggested next zones at level 86|r: |cRXP_FRIENDLY_Kun-Lai Summit|r (about 0.6 levels of quests, starting around Smokey Sootassle). Completing this step loads the guide for Kun-Lai Summit --RouteBuilder:next
]])
