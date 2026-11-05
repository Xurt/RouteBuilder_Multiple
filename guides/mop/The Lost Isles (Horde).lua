-- 6-11 The Lost Isles: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 6, 13).
-- Split into 2 guides, listed under "6 - 14 The Lost Isles" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/The Lost Isles.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 6 - 14 The Lost Isles
#subweight -6
#name 6-7 The Lost Isles

step
    .goto 174,35.90,67.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chawg|r
    .target Chawg
    .home >>Set your Hearthstone to Chawg's inn
step << Goblin
    .goto 174,24.62,77.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Zapnozzle|r
    .accept 14239 >>Accept Don't Go Into the Light!
    .turnin 14239 >>Turn in Don't Go Into the Light!
    .target Doc Zapnozzle
step << Goblin
    .goto 174,24.65,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geargrinder Gizmo|r
    .accept 14001 >>Accept Goblin Escape Pods
    .target Geargrinder Gizmo
step << Goblin
    #loop
    .goto 174,25.74,76.10,0
    .goto 174,25.74,76.10,40,0
    .goto 174,23.04,76.44,40,0
    >>Click the |cRXP_PICK_Goblin Escape Pod|r
    .complete 14001,1 --Goblin Escape Pod
step << Goblin
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 14001 >>Turn in Goblin Escape Pods
    .accept 14014 >>Accept Get Our Stuff Back!
    .target Sassy Hardwrench
step << Goblin
    #completewith Along8
    >>As you go: Pick up |cRXP_PICK_Crate of Tools|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 14014,1 --Crate of Tools (8)
step << Goblin
    .goto 174,27.84,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .accept 14473 >>Accept It's Our Problem Now
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .goto 174,27.85,74.29
    .trainer >>Train your class spells << Shaman Cata
    .target Maxx Avalanche
step << Goblin
    #completewith Along6
    >>As you go: Kill |cRXP_ENEMY_Teraptor Hatchlings|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14473,1 --Teraptor Hatchling slain (6)
    .mob Teraptor Hatchling
step << Goblin
    #label Along6
    .goto 174,27.95,74.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .accept 14019 >>Accept Monkey Business
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .goto 174,27.95,74.43
    .trainer >>Train your class spells << Hunter Cata
    .target Bamm Megabomb
step << Priest Cata
    .goto 174,27.697,74.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .trainer >>Train your class spells
    .target Sister Goldskimmer
step << Mage Cata
    .goto 174,27.715,74.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .trainer >>Train your class spells
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,28.419,75.648
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .trainer >>Train your class spells
    .target Evol Fingers
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .trainer >>Train your class spells
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,28.654,76.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .trainer >>Train your class spells
    .target Slinky Sharpshiv
step << Goblin
    #loop
    .goto 174,29.01,72.14,0
    .goto 174,29.01,72.14,40,0
    .goto 174,27.95,69.55,40,0
    >>Kill |cRXP_ENEMY_Teraptor Hatchlings|r
    .complete 14473,1 --Teraptor Hatchling slain (6)
    .mob Teraptor Hatchling
step << Goblin
    .goto 174,27.84,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .turnin 14473 >>Turn in It's Our Problem Now while you are here
    .isQuestComplete 14473
    .target Maxx Avalanche
step << Goblin
    #label Along8
    #loop
    .goto 174,29.25,72.54,0
    .goto 174,29.25,72.54,40,0
    .goto 174,29.52,76.18,40,0
    .goto 174,26.85,70.44,40,0
    >>Interact with |cRXP_FRIENDLY_Bomb-Throwing Monkeys|r
    .complete 14019,1 --Bomb-Throwing Monkey (10)
    .target Bomb-Throwing Monkey
step << Goblin
    .goto 174,27.95,74.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .turnin 14019 >>Turn in Monkey Business while you are here
    .isQuestComplete 14019
    .target Bamm Megabomb
step << Goblin
    #loop
    .goto 174,30.05,71.41,0
    .goto 174,30.05,71.41,40,0
    .goto 174,29.95,75.41,40,0
    .goto 174,26.99,70.29,40,0
    >>Pick up |cRXP_PICK_Crate of Tools|r from the ground
    .complete 14014,1 --Crate of Tools (8)
step << Goblin
    .goto 174,27.84,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .turnin 14473 >>Turn in It's Our Problem Now
    .target Maxx Avalanche
step << Goblin
    .goto 174,27.95,74.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .turnin 14019 >>Turn in Monkey Business
    .target Bamm Megabomb
step << Goblin
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 14014 >>Turn in Get Our Stuff Back!
    .accept 14248 >>Accept Help Wanted
    .target Sassy Hardwrench
step << Goblin
    .goto 174,31.27,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .turnin 14248 >>Turn in Help Wanted
    .accept 14021 >>Accept Miner Troubles
    .accept 14031 >>Accept Capturing the Unknown
    .target Foreman Dampwick
step << Goblin
    #completewith next
    .zone 175 >>Travel to Kaja'mite Cavern
    .zoneskip 175
step << Goblin
    .goto 175,51.70,71.16
    >>Using your KTC Snapflash, capture images at the bouncing cameras of the three cave paintings and the pygmy altar.
    .complete 14031,1 --Capturing The Unknown - Bunny 1
    .target Capturing The Unknown - Bunny 1
step << Goblin
    .goto 175,66.17,69.10
    >>Using your KTC Snapflash, capture images at the bouncing cameras of the three cave paintings and the pygmy altar.
    .complete 14031,2 --Capturing The Unknown - Bunny 2
    .target Capturing The Unknown - Bunny 2
step << Goblin
    .goto 175,87.28,44.21
    >>Using your KTC Snapflash, capture images at the bouncing cameras of the three cave paintings and the pygmy altar.
    .complete 14031,3 --Capturing The Unknown - Bunny 3
    .target Capturing The Unknown - Bunny 3
step << Goblin
    .goto 175,44.84,25.22
    >>Using your KTC Snapflash, capture images at the bouncing cameras of the three cave paintings and the pygmy altar.
    .complete 14031,4 --Capturing The Unknown - Bunny 4
    .target Capturing The Unknown - Bunny 4
step << Goblin
    .goto 175,41.56,25.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dead Orc Scout|r
    .accept 14233 >>Accept Orcs Can Write?
    .target Dead Orc Scout
step << Goblin
    .goto 175,50.85,15.90
    >>Click the |cRXP_PICK_Kaja'mite Ore|r
    .complete 14021,1 --Kaja'mite Ore
step << Goblin
    #completewith next
    .zone 174 >>Leave Kaja'mite Cavern for The Lost Isles
    .zoneskip 174
step << Goblin
    .goto 174,31.27,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .turnin 14021 >>Turn in Miner Troubles
    .target Foreman Dampwick
step << Goblin
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 14031 >>Turn in Capturing the Unknown
    .turnin 14233 >>Turn in Orcs Can Write?
    .accept 14234 >>Accept The Enemy of My Enemy
    .target Sassy Hardwrench
step << Goblin
    .goto 174,37.63,78.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
    .turnin 14234 >>Turn in The Enemy of My Enemy
    .accept 14235 >>Accept The Vicious Vale
    .target Aggra
step << Goblin
    .goto 174,35.43,75.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .turnin 14235 >>Turn in The Vicious Vale
    .accept 14236 >>Accept Weed Whacker
    .target Kilag Gorefang
step << Goblin
    #loop
    .goto 174,34.20,73.60,0
    .goto 174,34.20,73.60,40,0
    .goto 174,32.54,75.59,40,0
    >>Kill |cRXP_ENEMY_Poison Spitters|r, |cRXP_ENEMY_Strangle Vines|r, |cRXP_ENEMY_Dan's Test Tentacles|r and |cRXP_ENEMY_Freezyas|r
    .complete 14236,1 --Poison Spitter (100)
    .mob Poison Spitter
    .mob Strangle Vine
    .mob Dan's Test Tentacle
    .mob Freezya
step << Goblin
    .goto 174,35.43,75.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .turnin 14236 >>Turn in Weed Whacker
    .accept 14303 >>Accept Back to Aggra
    .target Kilag Gorefang
step << Goblin
    .goto 174,37.63,78.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r
    .turnin 14303 >>Turn in Back to Aggra
    .accept 14237 >>Accept Forward Movement
    .target Aggra
step << Goblin
    .goto 174,34.62,66.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .turnin 14237 >>Turn in Forward Movement
    .accept 14238 >>Accept Infrared = Infradead
    .target Kilag Gorefang
step << Goblin
    #loop
    .goto 174,31.43,65.07,0
    .goto 174,31.43,65.07,40,0
    .goto 174,31.29,68.15,40,0
    >>Kill |cRXP_ENEMY_SI:7 Assassins|r
    .complete 14238,1 --SI:7 Assassin slain (10)
    .mob SI:7 Assassin
step << Goblin
    .goto 174,34.62,66.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .turnin 14238 >>Turn in Infrared = Infradead
    .accept 14240 >>Accept To the Cliffs
    .target Kilag Gorefang
step << Goblin
    .goto 174,25.29,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Brax|r
    .turnin 14240 >>Turn in To the Cliffs
    .accept 14241 >>Accept Get to the Gyrochoppa!
    .target Scout Brax
step << Goblin
    #loop
    .goto 174,24.17,65.31,0
    .goto 174,24.17,65.31,40,0
    .goto 174,23.24,67.44,40,0
    >>Kill |cRXP_ENEMY_SI:7 Operatives|r and |cRXP_ENEMY_Gyrochoppa Pilots|r. Loot them for |cRXP_LOOT_Gyrochoppa Keys|r
    .complete 14241,1 --Gyrochoppa Keys (1)
    .mob SI:7 Operative
    .mob Gyrochoppa Pilot
step << Goblin
    .goto 174,23.23,67.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyrochoppa|r
    .turnin 14241 >>Turn in Get to the Gyrochoppa!
    .accept 14242 >>Accept Precious Cargo
    .target Gyrochoppa
step << Goblin
    .goto 174,11.77,62.71
    >>Locate the precious cargo below deck on the Alliance ship, Vengeance Wake, off the shore of the Lost Isles.
    .complete 14242,1 --Thrall
    .target Thrall
step << Goblin
    .goto 174,11.77,62.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 14242 >>Turn in Precious Cargo
    .accept 14326 >>Accept Meet Me Up Top
    .target Thrall
step << Goblin
    .goto 174,12.41,63.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 14326 >>Turn in Meet Me Up Top
    .accept 14243 >>Accept Warchief's Revenge
    .target Thrall
step << Goblin
    #loop
    .goto 174,12.56,61.83,0
    .goto 174,12.56,61.83,40,0
    .goto 174,10.94,64.87,40,0
    >>Kill |cRXP_ENEMY_Alliance Sailors|r
    .complete 14243,1 --Alliance Sailor slain (50)
    .mob Alliance Sailor
step << Goblin
    #completewith next
    .hs >>Hearth to Chawg's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Goblin
    .goto 174,35.93,66.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 14243 >>Turn in Warchief's Revenge
    .accept 14445 >>Accept Farewell, For Now
    .target Thrall
step << Goblin
    .goto 174,36.03,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 14445 >>Turn in Farewell, For Now
    .accept 14244 >>Accept Up, Up & Away!
    .target Sassy Hardwrench
step << Goblin
    .goto 174,36.37,66.52
    >>Click the |cRXP_PICK_Rocket Sling|r
    .complete 14244,1 --Rocket Sling
step << Goblin
    .goto 174,44.54,64.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r
    .turnin 14244 >>Turn in Up, Up & Away!
    .accept 14245 >>Accept It's a Town-In-A-Box
    .target Foreman Dampwick
step << Goblin
    .goto 174,45.49,65.36
    >>Click the |cRXP_PICK_Town-In-A-Box Plunger|r
    .complete 14245,1 --Town-In-A-Box Plunger
step << Goblin
    .goto 174,45.36,64.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14245 >>Turn in It's a Town-In-A-Box
    .accept 27139 >>Accept Hobart Needs You
    .unitscan Foreman Dampwick
step << Goblin
    #loop
    .goto 174,43.85,25.30,0
    .goto 174,43.85,25.30,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,68.93,46.44,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27139 >>Turn in Hobart Needs You
    .accept 24671 >>Accept Cluster Cluck
    .unitscan Hobart Grapplehammer
step << Hunter Cata
    .goto 174,45.246,64.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .trainer >>Train your class spells
    .target Bamm Megabomb
step << Shaman Cata
    .goto 174,45.106,65.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .trainer >>Train your class spells
    .target Maxx Avalanche
step << Goblin
    #loop
    .goto 174,46.70,65.70,0
    .goto 174,46.70,65.70,40,0
    .goto 174,45.76,62.76,40,0
    >>Interact with |cRXP_FRIENDLY_Wild Cluckers|r
    .complete 24671,1 --Wild Clucker (10)
    .target Wild Clucker
step << Goblin
    #loop
    .goto 174,68.93,46.44,0
    .goto 174,68.93,46.44,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,43.85,25.30,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24671 >>Turn in Cluster Cluck
    .unitscan Hobart Grapplehammer
step << Goblin
    .goto 174,45.25,64.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .accept 24741 >>Accept Trading Up
    .target Bamm Megabomb
step << Goblin
    #loop
    .goto 174,46.70,71.89,0
    .goto 174,46.70,71.89,40,0
    .goto 174,49.24,73.88,40,0
    >>Loot the |cRXP_PICK_Raptor Eggs|r for |cRXP_LOOT_Spiny Raptor Egg|r
    .complete 24741,1 --Spiny Raptor Egg (5)
step << Goblin
    .goto 174,45.25,64.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .turnin 24741 >>Turn in Trading Up
    .target Bamm Megabomb
step << Goblin
    #loop
    .goto 174,43.85,25.30,0
    .goto 174,43.85,25.30,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,68.93,46.44,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 24744 >>Accept The Biggest Egg Ever
    .unitscan Hobart Grapplehammer
step << Goblin
    .goto 174,43.78,56.02
    >>Pick up |cRXP_PICK_The Biggest Egg Ever|r from the ground
    .complete 24744,1 --The Biggest Egg Ever (1)
step << Goblin
    #loop
    .goto 174,43.85,25.30,0
    .goto 174,43.85,25.30,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,68.93,46.44,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24744 >>Turn in The Biggest Egg Ever
    .accept 24816 >>Accept Who's Top of the Food Chain Now?
    .unitscan Hobart Grapplehammer
step << Goblin
    #loop
    .goto 174,42.72,68.49,0
    .goto 174,42.72,68.49,40,0
    .goto 174,39.91,67.43,40,0
    >>Kill |cRXP_ENEMY_Ravenous Lurkers|r. Loot them for |cRXP_LOOT_Shark Parts|r
    .complete 24816,1 --Shark Parts (5)
    .mob Ravenous Lurker
step << Goblin
    #loop
    .goto 174,45.27,65.57,0
    .goto 174,45.27,65.57,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,54.39,16.93,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24816 >>Turn in Who's Top of the Food Chain Now?
    .accept 24817 >>Accept A Goblin in Shark's Clothing
    .unitscan Assistant Greely
step << Goblin
    .goto 174,43.61,65.29
    >>Click the |cRXP_PICK_Mechashark X-Steam Controller|r
    >>Kill |cRXP_ENEMY_The Hammer|r
    .complete 24817,1 --Mechashark X-Steam Controller
    .complete 24817,2 --The Hammer slain (1)
    .mob The Hammer
step << Goblin
    #loop
    .goto 174,43.85,25.30,0
    .goto 174,43.85,25.30,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,68.93,46.44,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24817 >>Turn in A Goblin in Shark's Clothing
    .accept 24856 >>Accept Invasion Imminent!
    .unitscan Hobart Grapplehammer
step << Goblin
    .goto 174,52.20,73.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .turnin 24856 >>Turn in Invasion Imminent!
    .accept 24858 >>Accept Bilgewater Cartel Represent
    .target Megs Dreadshredder
step << Goblin
    .goto 174,52.20,73.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brett "Coins" McQuid|r
    .accept 24859 >>Accept Naga Hide
    .target Brett "Coins" McQuid
step << Goblin
    #loop
    .goto 174,54.17,77.95,0
    .goto 174,54.17,77.95,40,0
    .goto 174,54.82,79.39,40,0
    .goto 174,57.68,82.73,40,0
    .goto 174,61.03,84.53,40,0
    >>Click the |cRXP_PICK_Naga Banner|r
    >>Kill |cRXP_ENEMY_Vashj'elan Warriors|r and |cRXP_ENEMY_Vashj'elan Sirens|r. Loot them for |cRXP_LOOT_Intact Naga Hide|r
    .complete 24858,1 --Naga Banner
    .complete 24859,1 --Intact Naga Hide (5)
    .mob Vashj'elan Warrior
    .mob Vashj'elan Siren
step << Goblin
    .goto 174,52.20,73.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brett "Coins" McQuid|r
    .turnin 24859 >>Turn in Naga Hide
    .target Brett "Coins" McQuid
step << Goblin
    .goto 174,52.20,73.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .turnin 24858 >>Turn in Bilgewater Cartel Represent
    .accept 24864 >>Accept Irresistible Pool Pony
    .target Megs Dreadshredder
step << Goblin
    #loop
    .goto 174,59.58,83.64,0
    .goto 174,59.58,83.64,40,0
    .goto 174,61.31,83.26,40,0
    >>Kill |cRXP_ENEMY_Naga Hatchlings|r
    .complete 24864,1 --Naga Hatchling (12)
    .mob Naga Hatchling
step << Goblin
    .goto 174,52.20,73.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .turnin 24864 >>Turn in Irresistible Pool Pony
    .accept 24868 >>Accept Surrender or Else!
    .target Megs Dreadshredder
step << Goblin
    .goto 174,54.15,91.31
    >>Kill |cRXP_ENEMY_Faceless of the Deep|r
    .complete 24868,1 --Faceless of the Deep slain (1)
    .mob Faceless of the Deep
step << Goblin
    .goto 174,52.20,73.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .turnin 24868 >>Turn in Surrender or Else!
    .accept 24897 >>Accept Get Back to Town
    .target Megs Dreadshredder
step << Goblin
    #loop
    .goto 174,45.18,64.90,0
    .goto 174,45.18,64.90,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,43.63,25.32,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24897 >>Turn in Get Back to Town
    .accept 24901 >>Accept Town-In-A-Box: Under Attack
    .unitscan Sassy Hardwrench
step << Goblin
    #loop
    .goto 174,45.94,65.04,0
    .goto 174,45.94,65.04,40,0
    .goto 174,48.77,65.66,40,0
    >>Kill |cRXP_ENEMY_Oomlot Warriors|r
    .complete 24901,1 --Oomlot Warrior slain (30)
    .mob Oomlot Warrior
step << Goblin
    #loop
    .goto 174,45.18,64.90,0
    .goto 174,45.18,64.90,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,43.63,25.32,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24901 >>Turn in Town-In-A-Box: Under Attack
    .accept 24924 >>Accept Oomlot Village
    .unitscan Sassy Hardwrench
step << Goblin
    #loop
    .goto 174,56.56,71.95,0
    .goto 174,56.56,71.95,40,0
    .goto 174,57.01,35.03,40,0
    .goto 174,54.01,16.98,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24924 >>Turn in Oomlot Village
    .accept 24925 >>Accept Free the Captives
    .accept 24929 >>Accept Send a Message
    .unitscan Izzy
step << Goblin
    .goto 174,62.91,68.56
    >>Kill |cRXP_ENEMY_Yngwie|r
    .complete 24929,1 --Yngwie slain (1)
    .mob Yngwie
step << Goblin
    #loop
    .goto 174,62.36,70.64,0
    .goto 174,62.36,70.64,40,0
    .goto 174,59.50,70.23,40,0
    >>Free 5 Goblin Captives.
    .complete 24925,1 --Goblin Captive (5)
    .target Goblin Captive
step << Goblin
    #loop
    .goto 174,56.56,71.95,0
    .goto 174,56.56,71.95,40,0
    .goto 174,57.01,35.03,40,0
    .goto 174,54.01,16.98,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24925 >>Turn in Free the Captives
    .turnin 24929 >>Turn in Send a Message
    .accept 24937 >>Accept Oomlot Dealt With
    .unitscan Izzy
step << Goblin
    #loop
    .goto 174,45.18,64.90,0
    .goto 174,45.18,64.90,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,43.63,25.32,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24937 >>Turn in Oomlot Dealt With
    .accept 24940 >>Accept Up the Volcano
    .unitscan Sassy Hardwrench
step << Goblin
    .goto 174,54.44,16.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24940 >>Turn in Up the Volcano
    .accept 24942 >>Accept Zombies vs. Super Booster Rocket Boots
    .unitscan Coach Crosscheck
step << Goblin
    #completewith Along78
    >>As you go: Kill |cRXP_ENEMY_Goblin Zombies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24942,1 --Goblin Zombie (50)
    .mob Goblin Zombie
step << Goblin
    .goto 174,45.36,64.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 24945 >>Accept Three Little Pygmies
    .unitscan Foreman Dampwick
step << Goblin
    #loop
    .goto 174,45.27,65.57,0
    .goto 174,45.27,65.57,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,54.39,16.93,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 24946 >>Accept Rockin' Powder
    .unitscan Assistant Greely
step << Goblin
    #completewith Along78
    >>As you go: Pick up |cRXP_PICK_Rockin' Powder|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 24946,1 --Rockin' Powder (5)
step << Goblin
    .goto 174,58.77,47.20
    >>Kill |cRXP_ENEMY_Malmo|r
    .complete 24945,2 --Malmo slain (1)
    .mob Malmo
step << Goblin
    .goto 174,63.62,52.77
    >>Kill |cRXP_ENEMY_Teloch|r
    .complete 24945,3 --Teloch slain (1)
    .mob Teloch
step << Goblin
    #label Along78
    .goto 174,59.60,40.19
    >>Kill |cRXP_ENEMY_Gaahl|r
    .complete 24945,1 --Gaahl slain (1)
    .mob Gaahl
step << Goblin
    #loop
    .goto 174,59.93,44.80,0
    .goto 174,59.93,44.80,40,0
    .goto 174,60.78,49.31,40,0
    .goto 174,62.70,50.78,40,0
    >>Pick up |cRXP_PICK_Rockin' Powder|r from the ground
    >>Kill |cRXP_ENEMY_Goblin Zombies|r
    .complete 24946,1 --Rockin' Powder (5)
    .complete 24942,1 --Goblin Zombie (50)
    .mob Goblin Zombie
step << Goblin
    .goto 174,45.36,64.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24945 >>Turn in Three Little Pygmies
    .unitscan Foreman Dampwick
step << Goblin
    #loop
    .goto 174,45.27,65.57,0
    .goto 174,45.27,65.57,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,54.39,16.93,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24946 >>Turn in Rockin' Powder
    .unitscan Assistant Greely
step << Goblin
    .goto 174,54.44,16.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24942 >>Turn in Zombies vs. Super Booster Rocket Boots
    .accept 24952 >>Accept Rocket Boot Boost
    .unitscan Coach Crosscheck
step << Goblin
    .goto 174,51.80,47.10
    >>Use the Rockin' Powder Infused Rocket Boots and deliver them to Hobart Grapplehammer.
    .complete 24952,1 --Rocket Boot Boost Kill Credit
    .target Rocket Boot Boost Kill Credit
step << Goblin
    #loop
    .goto 174,43.85,25.30,0
    .goto 174,43.85,25.30,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,68.93,46.44,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24952 >>Turn in Rocket Boot Boost
    .accept 24954 >>Accept Children of a Turtle God
    .unitscan Hobart Grapplehammer
step << Goblin
    #loop
    .goto 174,67.08,45.24,0
    .goto 174,67.08,45.24,40,0
    .goto 174,66.35,40.98,40,0
    .goto 174,68.51,40.38,40,0
    >>Kill |cRXP_ENEMY_Child of Volcanoths|r. Loot them for |cRXP_LOOT_Fire Gland|r
    .complete 24954,1 --Fire Gland (5)
    .mob Child of Volcanoth
step << Goblin
    #loop
    .goto 174,68.93,46.44,0
    .goto 174,68.93,46.44,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,43.85,25.30,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24954 >>Turn in Children of a Turtle God
    .accept 24958 >>Accept Volcanoth!
    .unitscan Hobart Grapplehammer
step << Goblin
    #completewith next
    .zone 176 >>Travel to Volcanoth's Lair
    .zoneskip 176
step << Goblin
    .goto 176,57.41,41.73
    >>Kill |cRXP_ENEMY_Volcanoth|r
    .complete 24958,1 --Volcanoth slain (1)
    .mob Volcanoth
step << Goblin
    .goto 176,62.63,49.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 24958 >>Turn in Volcanoth!
    .accept 25023 >>Accept Old Friends
    .target Sassy Hardwrench
step << Goblin
    #completewith next
    .zone 174 >>Leave Volcanoth's Lair for The Lost Isles
    .zoneskip 174
step << Goblin
    .goto 174,42.16,17.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25023 >>Turn in Old Friends
    .accept 25024 >>Accept Repel the Paratroopers
    .unitscan Thrall
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25058 >>Accept Mine Disposal, the Goblin Way
    .unitscan Sassy Hardwrench
step << Goblin
    .goto 174,36.26,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25093 >>Accept The Heads of the SI:7
    .unitscan Aggra
step << Goblin
    #completewith Along94
    >>As you go: Click the |cRXP_PICK_Land Mine|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25058,1 --Land Mine
step << Goblin
    #completewith Along93
    >>As you go: Kill |cRXP_ENEMY_Alliance Paratroopers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25024,1 --Alliance Paratrooper (10)
    .mob Alliance Paratrooper
step << Goblin
    .goto 174,32.30,42.88
    >>Kill |cRXP_ENEMY_Commander Arrington|r and loot |cRXP_LOOT_Commander Arrington's Head|r
    .complete 25093,1 --Commander Arrington's Head (1)
    .mob Commander Arrington
step << Goblin
    #label Along93
    .goto 174,30.81,33.93
    >>Kill |cRXP_ENEMY_Alexi Silenthowl|r and loot |cRXP_LOOT_Alexi Silenthowl's Head|r
    .complete 25093,3 --Alexi Silenthowl's Head (1)
    .mob Alexi Silenthowl
step << Goblin
    #label Along94
    .goto 174,33.44,27.88
    >>Kill |cRXP_ENEMY_Darkblade Cyn|r and loot |cRXP_LOOT_Darkblade Cyn's Head|r
    .complete 25093,2 --Darkblade Cyn's Head (1)
    .mob Darkblade Cyn
step << Goblin
    #loop
    .goto 174,33.50,41.24,0
    .goto 174,33.50,41.24,40,0
    .goto 174,33.13,44.04,40,0
    >>Kill |cRXP_ENEMY_Alliance Paratroopers|r
    >>Click the |cRXP_PICK_Land Mine|r
    .complete 25024,1 --Alliance Paratrooper (10)
    .complete 25058,1 --Land Mine
    .mob Alliance Paratrooper
step << Goblin
    .goto 174,36.26,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25093 >>Turn in The Heads of the SI:7
    .unitscan Aggra
step << Goblin
    .goto 174,42.16,17.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25024 >>Turn in Repel the Paratroopers
    .unitscan Thrall
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25058 >>Turn in Mine Disposal, the Goblin Way
    .unitscan Sassy Hardwrench
step << Goblin
    +|cRXP_WARN_The rest of The Lost Isles is planned from level 13.|r Load its guide for level 13 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Goblin
#version 1
#group Zone Routes (Horde)
#subgroup 6 - 14 The Lost Isles
#subweight -6
#name 13-14 The Lost Isles
--RouteBuilder:next
#next Zone Routes (Horde)\10-15 The Barrens: around Togrik;Zone Routes (Horde)\10-14 Azshara: around Labor Captain Grabbit

step
    #loop
    .goto 174,68.60,47.91,0
    .goto 174,68.60,47.91,40,0
    .goto 174,45.17,65.57,40,0
    .goto 174,39.69,27.87,40,0
    .goto 174,42.60,16.20,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sally "Salvager" Sandscrew|r. |cRXP_WARN_This NPC walks a patrol route|r
    .unitscan Sally "Salvager" Sandscrew
    .home >>Set your Hearthstone to Sally "Salvager" Sandscrew's inn
step << Goblin
    #loop
    .goto 174,45.18,64.90,0
    .goto 174,45.18,64.90,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,43.63,25.32,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25066 >>Accept The Pride of Kezan
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 25024 --Repel the Paratroopers
    .isQuestTurnedIn 25058 --Mine Disposal, the Goblin Way
    .isQuestTurnedIn 25093 --The Heads of the SI:7
step << Goblin
    #loop
    .goto 174,32.74,45.44,0
    .goto 174,32.74,45.44,40,0
    .goto 174,31.49,41.38,40,0
    >>Kill |cRXP_ENEMY_Gnomeregan Stealth Fighters|r
    .complete 25066,1 --Gnomeregan Stealth Fighter slain (10)
    .mob Gnomeregan Stealth Fighter
    .isOnQuest 25066
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25066 >>Turn in The Pride of Kezan
    .unitscan Sassy Hardwrench
    .isOnQuest 25066
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25098 >>Accept The Warchief Wants You
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 25066 --any of: The Pride of Kezan
step << Goblin
    .goto 174,42.16,17.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25098 >>Turn in The Warchief Wants You
    .unitscan Thrall
    .isOnQuest 25098
step << Goblin
    .goto 174,42.16,17.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25099 >>Accept Borrow Bastia
    .unitscan Thrall
    .isQuestTurnedIn 25098 --any of: The Warchief Wants You
step << Goblin
    .goto 174,33.79,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .turnin 25099 >>Turn in Borrow Bastia
    .target Kilag Gorefang
    .isOnQuest 25099
step << Goblin
    .goto 174,33.79,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .accept 25100 >>Accept Let's Ride
    .target Kilag Gorefang
    .isQuestTurnedIn 25099 --any of: Borrow Bastia
step << Goblin
    .goto 174,53.72,34.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .turnin 25100 >>Turn in Let's Ride
    .target Slinky Sharpshiv
    .isOnQuest 25100
step << Goblin
    .goto 174,53.72,34.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r
    .accept 25109 >>Accept The Gallywix Labor Mine
    .target Slinky Sharpshiv
    .isQuestTurnedIn 25100 --any of: Let's Ride
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25109 >>Turn in The Gallywix Labor Mine
    .unitscan Assistant Greely
    .isOnQuest 25109
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25110 >>Accept Kaja'Cola Gives You IDEAS! (TM)
    .unitscan Assistant Greely
    .isQuestTurnedIn 25109 --any of: The Gallywix Labor Mine
step << Goblin
    #loop
    .goto 174,54.66,35.45,0
    .goto 174,54.66,35.45,40,0
    .goto 174,57.35,36.29,40,0
    .goto 174,56.23,31.60,40,0
    >>Pick up |cRXP_PICK_Kaja'Cola Zero-One|r from the ground
    .complete 25110,1 --Kaja'Cola Zero-One (1)
    .isOnQuest 25110
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25110 >>Turn in Kaja'Cola Gives You IDEAS! (TM)
    .unitscan Assistant Greely
    .isOnQuest 25110
step << Goblin
    .goto 174,53.16,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .accept 25122 >>Accept Morale Boost
    .accept 25123 >>Accept Throw It On the Ground!
    .target Assistant Greely
    .isQuestTurnedIn 25110 --any of: Kaja'Cola Gives You IDEAS! (TM)
step << Goblin
    #loop
    .goto 174,54.67,34.77,0
    .goto 174,54.67,34.77,40,0
    .goto 174,56.90,35.68,40,0
    .goto 174,56.23,31.60,40,0
    >>Kill |cRXP_ENEMY_Brute Overseer|r and loot |cRXP_LOOT_Kaja'Cola Zero-One|r. It can also be picked up from |cRXP_PICK_Kaja'Cola Zero-One|r on the ground
    .collect 52484,1,25122,1 --Kaja'Cola Zero-One (1)
    .mob Brute Overseer
    .isOnQuest 25122
step << Goblin
    .goto 174,56.99,37.14
    >>Interact with |cRXP_FRIENDLY_Ace|r
    .complete 25122,1 --Ace
    .target Ace
    .isOnQuest 25122
step << Goblin
    .goto 174,54.01,16.98
    >>Interact with |cRXP_FRIENDLY_Izzy|r
    .complete 25122,2 --Izzy
    .target Izzy
    .isOnQuest 25122
step << Goblin
    .goto 174,55.52,31.87
    >>Pick up |cRXP_PICK_Blastshadow's Soulstone|r from the ground
    .collect 52481,1,25123,1 --Blastshadow's Soulstone (1)
    .isOnQuest 25123
step << Goblin
    .goto 174,55.52,31.87
    >>Kill |cRXP_ENEMY_Blastshadow the Brutemaster|r
    .complete 25123,1 --Blastshadow the Brutemaster slain (1)
    .mob Blastshadow the Brutemaster
    .isOnQuest 25123
step << Goblin
    .goto 174,57.05,32.15
    >>Interact with |cRXP_FRIENDLY_Gobber|r
    .complete 25122,3 --Gobber
    .target Gobber
    .isOnQuest 25122
step << Goblin
    #loop
    .goto 174,56.15,32.55,0
    .goto 174,56.15,32.55,40,0
    .goto 174,54.09,36.20,40,0
    >>Kill |cRXP_ENEMY_Kezan Citizens|r and |cRXP_ENEMY_Goblin Survivors|r
    .complete 25122,4 --Kezan Citizen (6)
    .mob Kezan Citizen
    .mob Goblin Survivor
    .isOnQuest 25122
step << Goblin
    .goto 174,53.16,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 25122 >>Turn in Morale Boost while you are here
    .isQuestComplete 25122
    .target Assistant Greely
step << Goblin
    .goto 174,53.16,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 25123 >>Turn in Throw It On the Ground!
    .target Assistant Greely
    .isOnQuest 25123
step << Goblin
    .goto 174,53.16,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 25122 >>Turn in Morale Boost
    .target Assistant Greely
    .isOnQuest 25122
step << Goblin
    .goto 174,53.16,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .accept 25125 >>Accept Light at the End of the Tunnel
    .target Assistant Greely
    .isQuestTurnedIn 25122 --Morale Boost
    .isQuestTurnedIn 25123 --Throw It On the Ground!
step << Goblin
    .goto 174,56.29,27.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mine Cart|r
    .turnin 25125 >>Turn in Light at the End of the Tunnel
    .target Mine Cart
    .isOnQuest 25125
step << Goblin
    .goto 174,56.29,27.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mine Cart|r
    .accept 25184 >>Accept Wild Mine Cart Ride
    .target Mine Cart
    .isQuestTurnedIn 25125 --any of: Light at the End of the Tunnel
step << Goblin
    .goto 174,54.28,17.15
    >>Use the Mine Cart to take a ride to the end of the line and then speak with Assistant Greely.
    .complete 25184,1 --Wild Mine Cart Ride Kill Credit
    .target Wild Mine Cart Ride Kill Credit
    .isOnQuest 25184
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25184 >>Turn in Wild Mine Cart Ride
    .unitscan Assistant Greely
    .isOnQuest 25184
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25200 >>Accept Shredder Shutdown
    .unitscan Assistant Greely
    .isQuestTurnedIn 25184 --any of: Wild Mine Cart Ride
step << Goblin
    .goto 174,54.44,16.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25201 >>Accept The Ultimate Footbomb Uniform
    .unitscan Coach Crosscheck
    .isQuestTurnedIn 25184 --any of: Wild Mine Cart Ride
step << Goblin
    #loop
    .goto 174,53.37,20.54,0
    .goto 174,53.37,20.54,40,0
    .goto 174,51.73,17.18,40,0
    >>Kill |cRXP_ENEMY_Steamwheedle Sharks|r
    .complete 25200,1 --Steamwheedle Shark slain (8)
    .mob Steamwheedle Shark
    .isOnQuest 25200
step << Goblin
    #loop
    .goto 174,54.40,18.47,0
    .goto 174,54.40,18.47,40,0
    .goto 174,52.60,21.02,40,0
    >>Kill |cRXP_ENEMY_Steamwheedle Sharks|r. Loot them for |cRXP_LOOT_Spare Shredder Parts|r. It can also be picked up from |cRXP_PICK_Spare Shredder Parts|r on the ground
    .complete 25201,1 --Spare Shredder Parts (8)
    .mob Steamwheedle Shark
    .isOnQuest 25201
step << Goblin
    .goto 174,54.44,16.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25201 >>Turn in The Ultimate Footbomb Uniform
    .unitscan Coach Crosscheck
    .isOnQuest 25201
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25200 >>Turn in Shredder Shutdown
    .unitscan Assistant Greely
    .isOnQuest 25200
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25204 >>Accept Release the Valves
    .unitscan Assistant Greely
    .isQuestTurnedIn 25200 --Shredder Shutdown
    .isQuestTurnedIn 25201 --The Ultimate Footbomb Uniform
step << Goblin
    #loop
    .goto 174,54.01,16.98,0
    .goto 174,54.01,16.98,40,0
    .goto 174,57.01,35.03,40,0
    .goto 174,56.56,71.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25202 >>Accept The Fastest Way to His Heart
    .unitscan Izzy
    .isQuestTurnedIn 25200 --Shredder Shutdown
    .isQuestTurnedIn 25201 --The Ultimate Footbomb Uniform
step << Goblin
    .goto 174,50.70,13.81
    >>Click the |cRXP_PICK_Valve #1|r
    .complete 25204,1 --Valve #1
    .isOnQuest 25204
step << Goblin
    .goto 174,50.52,13.06
    >>Click the |cRXP_PICK_Valve #3|r
    .complete 25204,3 --Valve #3
    .isOnQuest 25204
step << Goblin
    .goto 174,49.86,13.89
    >>Kill |cRXP_ENEMY_Chip Endale|r and loot |cRXP_LOOT_Still-Beating Heart|r
    .complete 25202,1 --Still-Beating Heart (1)
    .mob Chip Endale
    .isOnQuest 25202
step << Goblin
    .goto 174,49.86,12.71
    >>Click the |cRXP_PICK_Valve #4|r
    .complete 25204,4 --Valve #4
    .isOnQuest 25204
step << Goblin
    .goto 174,50.14,11.75
    >>Click the |cRXP_PICK_Valve #2|r
    .complete 25204,2 --Valve #2
    .isOnQuest 25204
step << Goblin
    .goto 174,51.41,13.06
    >>Click the |cRXP_PICK_Platform Control Panel|r
    .turnin 25204 >>Turn in Release the Valves
    .isOnQuest 25204
step << Goblin
    .goto 174,51.41,13.06
    >>Click the |cRXP_PICK_Platform Control Panel|r
    .accept 25207 >>Accept Good-bye, Sweet Oil
    .isQuestTurnedIn 25204 --any of: Release the Valves
step << Goblin
    .goto 174,51.41,13.08
    >>Click the |cRXP_PICK_Big Red Button|r
    .complete 25207,1 --Big Red Button
    .isOnQuest 25207
step << Goblin
    #loop
    .goto 174,54.01,16.98,0
    .goto 174,54.01,16.98,40,0
    .goto 174,57.01,35.03,40,0
    .goto 174,56.56,71.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izzy|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25202 >>Turn in The Fastest Way to His Heart
    .unitscan Izzy
    .isOnQuest 25202
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25207 >>Turn in Good-bye, Sweet Oil
    .unitscan Assistant Greely
    .isOnQuest 25207
step << Goblin
    #loop
    .goto 174,54.39,16.93,0
    .goto 174,54.39,16.93,40,0
    .goto 174,53.16,36.55,40,0
    .goto 174,51.72,47.38,40,0
    .goto 174,45.27,65.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25213 >>Accept The Slave Pits
    .unitscan Assistant Greely
    .isQuestTurnedIn 25203 --What Kind of Name is Chip, Anyway?
    .isQuestTurnedIn 25207 --Good-bye, Sweet Oil
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25213 >>Turn in The Slave Pits
    .unitscan Sassy Hardwrench
    .isOnQuest 25213
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25243 >>Accept She Loves Me, She Loves Me NOT!
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 25213 --any of: The Slave Pits
step << Goblin
    #loop
    .goto 174,43.85,25.30,0
    .goto 174,43.85,25.30,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,68.93,46.44,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25214 >>Accept Escape Velocity
    .unitscan Hobart Grapplehammer
    .isQuestTurnedIn 25213 --any of: The Slave Pits
step << Goblin
    .goto 174,39.69,27.17
    >>Kill |cRXP_ENEMY_Candy Cane|r and loot |cRXP_LOOT_Fickle Heart|r
    .complete 25243,1 --Fickle Heart (1)
    .mob Candy Cane
    .isOnQuest 25243
step << Goblin
    #loop
    .goto 174,39.36,27.29,0
    .goto 174,39.36,27.29,40,0
    .goto 174,40.92,27.13,40,0
    >>Kill |cRXP_ENEMY_Captured Goblins|r
    .complete 25214,1 --Captured Goblin slain (8)
    .mob Captured Goblin
    .isOnQuest 25214
step << Goblin
    #loop
    .goto 174,43.85,25.30,0
    .goto 174,43.85,25.30,40,0
    .goto 174,45.34,65.21,40,0
    .goto 174,68.93,46.44,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25214 >>Turn in Escape Velocity
    .unitscan Hobart Grapplehammer
    .isOnQuest 25214
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25243 >>Turn in She Loves Me, She Loves Me NOT!
    .unitscan Sassy Hardwrench
    .isOnQuest 25243
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25251 >>Accept Final Confrontation
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 25214 --Escape Velocity
    .isQuestTurnedIn 25243 --She Loves Me, She Loves Me NOT!
step << Goblin
    .goto 174,43.85,25.16
    >>Interact with |cRXP_FRIENDLY_Ultimate Footbomb Uniform|r
    .complete 25251,1 --Ultimate Footbomb Uniform
    .target Ultimate Footbomb Uniform
    .isOnQuest 25251
step << Goblin
    .goto 174,43.47,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r
    .complete 25251,2 --Trade Prince Gallywix
    .target Trade Prince Gallywix
    .isOnQuest 25251
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25251 >>Turn in Final Confrontation
    .unitscan Sassy Hardwrench
    .isOnQuest 25251
step << Goblin
    #loop
    .goto 174,43.63,25.32,0
    .goto 174,43.63,25.32,40,0
    .goto 174,37.30,41.90,40,0
    .goto 174,45.18,64.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25265 >>Accept Victory!
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 25251 --any of: Final Confrontation
step << Goblin
    .goto 174,42.16,17.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25265 >>Turn in Victory!
    .unitscan Thrall
    .isOnQuest 25265
step << Goblin
    .goto 174,42.16,17.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25266 >>Accept Warchief's Emissary
    .unitscan Thrall
    .isQuestTurnedIn 25265 --any of: Victory!
step
    +|cRXP_WARN_End of the The Lost Isles route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Durotar|r: Warchief's Emissary << Goblin
step
    +|cRXP_WARN_Suggested next zones at level 13|r: |cRXP_FRIENDLY_The Barrens|r (about 0.6 levels of quests, starting around Togrik), |cRXP_FRIENDLY_Azshara|r (about 0.5 levels of quests, starting around Labor Captain Grabbit). Completing this step loads the guide for The Barrens --RouteBuilder:next
]])
