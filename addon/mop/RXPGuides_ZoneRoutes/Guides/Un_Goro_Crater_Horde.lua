-- 51-55 Un'Goro Crater: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 2 guides, listed under "51 - 55 Un'Goro Crater" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Un'Goro Crater.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 51 - 55 Un'Goro Crater
#subweight -51
#name 51-53 Un'Goro Crater: around Mor'vek
#next Zone Routes (Horde)\53-55 Un'Goro Crater: around Mor'vek

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 78,71.47,74.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'vek|r
    .accept 13850 >>Accept Toxic Tolerance
    .target Mor'vek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 78,71.47,74.06
    >>Mor'vek in Un'goro Crater claims that if you were poisoned by Venomhide Ravasaur blood 20 times, you could ride one without dying. Attack Venomhide Ravasaurs for a chance to be poisoned.
    .complete 13850,1 --Toxic Tolerance Kill Credit Bunny (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 78,71.47,74.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'vek|r
    .turnin 13850 >>Turn in Toxic Tolerance
    .accept 13887 >>Accept Venomhide Eggs
    .target Mor'vek
step
    .goto 78,71.24,76.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .accept 24731 >>Accept The Fare of Lar'korwi
    .target Torwa Pathfinder
step
    .goto 78,70.89,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garl Stormclaw|r
    .accept 24719 >>Accept Claws of White
    .target Garl Stormclaw
step
    #loop
    .goto 78,67.00,73.00,0
    .goto 78,67.00,73.00,40,0
    .goto 78,64.43,75.25,40,0
    .goto 78,62.52,71.11,40,0
    >>Kill |cRXP_ENEMY_Ravasaurs|r, |cRXP_ENEMY_Ravasaur Runners|r, |cRXP_ENEMY_Ravasaur Hunters|r and |cRXP_ENEMY_Venomhide Ravasaurs|r. Loot them for |cRXP_LOOT_White Ravasaur Claw|r
    .complete 24719,1 --White Ravasaur Claw (5)
    .mob Ravasaur
    .mob Ravasaur Runner
    .mob Ravasaur Hunter
    .mob Venomhide Ravasaur
step
    .goto 78,70.89,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garl Stormclaw|r
    .turnin 24719 >>Turn in Claws of White
    .accept 24686 >>Accept Carried on the Waves
    .target Garl Stormclaw
step
    #loop
    .goto 78,70.68,67.94,0
    .goto 78,70.68,67.94,40,0
    .goto 78,72.39,64.02,40,0
    .goto 78,72.74,59.13,40,0
    >>Kill |cRXP_ENEMY_Bloodpetal Seeds|r. Loot them for |cRXP_LOOT_Un'Goro Lasher Seed|r
    .complete 24686,1 --Un'Goro Lasher Seed (4)
    .mob Bloodpetal Seed
step
    .goto 78,55.72,60.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'Aliri|r
    .accept 24854 >>Accept Finding Stormclaw
    .target Zen'Aliri
step
    .goto 78,55.05,60.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nolen Tacker|r
    .accept 24697 >>Accept How to Make Meat Fresh Again
    .target Nolen Tacker
step
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Young Diemetradons|r, |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Un'Goro Pit Bunnies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24697,1 --Young Diemetradon (8)
    .mob Young Diemetradon
    .mob Diemetradon
    .mob Un'Goro Pit Bunny
step
    .goto 78,54.99,61.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gibbert|r
    .target Gibbert
    .home >>Set your Hearthstone to Gibbert's inn
step
    #label Along11
    .goto 78,54.20,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 24720 >>Accept Crystals of Power
    .target J.D. Collie
step
    .goto 78,55.08,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 24911 >>Turn in Tropical Paradise Beckons
    .target Williden Marshal
    .isOnQuest 24911
step
    .goto 78,55.08,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .accept 24740 >>Accept Volcanic Activity
    .target Williden Marshal
step
    .goto 78,55.35,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
    .accept 24742 >>Accept Finding the Source
    .target Krakle
step
    .goto 78,64.68,75.00
    >>Open the |cRXP_PICK_Fresh Threshadon Carcass|r. Loot it for |cRXP_LOOT_Piece of Threshadon Carcass|r
    .complete 24731,1 --Piece of Threshadon Carcass (1)
step
    .goto 78,71.24,76.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 24731 >>Turn in The Fare of Lar'korwi
    .accept 24732 >>Accept The Scent of Lar'korwi
    .target Torwa Pathfinder
step
    .goto 78,70.89,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garl Stormclaw|r
    .turnin 24686 >>Turn in Carried on the Waves
    .turnin 24854 >>Turn in Finding Stormclaw
    .accept 24689 >>Accept Flowing to the North
    .target Garl Stormclaw
step
    #loop
    .goto 78,67.00,67.00,0
    .goto 78,67.00,67.00,40,0
    .goto 78,67.03,62.58,40,0
    >>Kill |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for |cRXP_LOOT_Ravasaur Pheromone Gland|r
    >>Loot the |cRXP_PICK_Venomhide Eggs|r for |cRXP_LOOT_Venomhide Ravasaur Egg|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 24732,1 --Ravasaur Pheromone Gland (2)
    .complete 13887,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Venomhide Ravasaur Egg (4)
    .mob Lar'korwi Mate
step
    .goto 78,76.44,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithis Moonwarden|r
    .turnin 24689 >>Turn in Flowing to the North
    .accept 24687 >>Accept Bouquets of Death
    .target Ithis Moonwarden
step
    .goto 78,71.88,41.37
    >>Kill |cRXP_ENEMY_Juvenile Bloodpetals|r
    .complete 24687,1 --Juvenile Bloodpetal slain (8)
    .mob Juvenile Bloodpetal
step
    .goto 78,76.44,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithis Moonwarden|r
    .turnin 24687 >>Turn in Bouquets of Death
    .accept 24855 >>Accept Aberrant Flora
    .target Ithis Moonwarden
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28509 >>Accept Warchief's Command: Tanaris!
    .accept 28510 >>Accept Warchief's Command: Feralas!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28542 >>Accept Warchief's Command: Felwood!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28548 >>Accept Warchief's Command: Desolace!
    .accept 28545 >>Accept Warchief's Command: Winterspring!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28504 >>Accept Warchief's Command: Thousand Needles!
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28526 >>Accept Warchief's Command: Un'Goro Crater!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .turnin 27258 >>Turn in The Black Shield
    .target Mosarn
    .isOnQuest 27258
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .accept 27292 >>Accept Return to Krog
    .target Mosarn
    .isQuestTurnedIn 27258 --any of: The Black Shield
    .xp <34,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 78 >>Leave Thunder Bluff for Un'Goro Crater
    .zoneskip 78
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Gibbert's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 78,55.08,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 28526 >>Turn in Warchief's Command: Un'Goro Crater!
    .target Williden Marshal
step
    #loop
    .goto 78,52.97,58.75,0
    .goto 78,52.97,58.75,40,0
    .goto 78,51.11,64.27,40,0
    .goto 78,51.84,67.04,40,0
    >>Kill |cRXP_ENEMY_Young Diemetradons|r, |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Un'Goro Pit Bunnies|r
    .complete 24697,1 --Young Diemetradon (8)
    .mob Young Diemetradon
    .mob Diemetradon
    .mob Un'Goro Pit Bunny
step
    #loop
    .goto 78,45.26,61.06,0
    .goto 78,45.26,61.06,40,0
    .goto 78,45.41,65.53,40,0
    >>Kill |cRXP_ENEMY_Bloodpetal Lashers|r, |cRXP_ENEMY_Bloodpetal Flayers|r, |cRXP_ENEMY_Bloodpetal Threshers|r and |cRXP_ENEMY_Bloodpetal Trappers|r
    .complete 24855,1 --Bloodpetal Lasher (8)
    .mob Bloodpetal Lasher
    .mob Bloodpetal Flayer
    .mob Bloodpetal Thresher
    .mob Bloodpetal Trapper
step
    .goto 78,38.45,66.06
    >>Click the |cRXP_PICK_Research Equipment|r
    .accept 24866 >>Accept An Abandoned Research Camp
step
    .goto 78,26.00,59.59
    >>Pick up |cRXP_PICK_Red Power Crystal|r from the ground
    .complete 24720,1 --Red Power Crystal (7)
step
    #loop
    .goto 78,45.21,48.73,0
    .goto 78,45.21,48.73,40,0
    .goto 78,47.58,53.12,40,0
    >>Kill |cRXP_ENEMY_Scorching Elementals|r, |cRXP_ENEMY_Living Blazes|r and |cRXP_ENEMY_Blazerunners|r. Loot them for |cRXP_LOOT_Un'Goro Ash|r
    .complete 24740,1 --Un'Goro Ash (1)
    .mob Scorching Elemental
    .mob Living Blaze
    .mob Blazerunner
step
    .goto 78,48.32,43.48
    >>Click the |cRXP_PICK_Fire Plume Ridge Hot Spot|r
    .complete 24742,1 --Fire Plume Ridge Hot Spot
step
    #loop
    .goto 78,46.21,19.69,0
    .goto 78,46.21,19.69,40,0
    .goto 78,46.87,14.92,40,0
    .goto 78,47.35,12.89,40,0
    .goto 78,37.82,20.53,40,0
    >>Pick up |cRXP_PICK_Yellow Power Crystal|r from the ground
    .complete 24720,2 --Yellow Power Crystal (7)
step
    #loop
    .goto 78,56.54,12.31,0
    .goto 78,56.54,12.31,40,0
    .goto 78,57.35,10.07,40,0
    >>Pick up |cRXP_PICK_Green Power Crystal|r from the ground
    .complete 24720,3 --Green Power Crystal (7)
step
    .goto 78,68.54,36.54
    >>Click the |cRXP_PICK_Crate of Foodstuffs|r
    .accept 24865 >>Accept Is This Stuff Still Good?
step
    #loop
    .goto 78,59.56,60.24,0
    .goto 78,59.56,60.24,40,0
    .goto 78,60.87,68.56,40,0
    .goto 78,58.64,78.34,40,0
    .goto 78,60.36,77.47,40,0
    .goto 78,62.35,68.47,40,0
    >>Pick up |cRXP_PICK_Blue Power Crystal|r from the ground
    .complete 24720,4 --Blue Power Crystal (7)
step
    .goto 78,71.24,76.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 24732 >>Turn in The Scent of Lar'korwi
    .accept 24733 >>Accept The Bait for Lar'korwi
    .target Torwa Pathfinder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 78,71.47,74.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'vek|r
    .turnin 13887 >>Turn in Venomhide Eggs
    .accept 13906 >>Accept They Grow Up So Fast
    .target Mor'vek
step
    .goto 78,55.35,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
    .turnin 24742 >>Turn in Finding the Source
    .accept 24794 >>Accept Speak With Spraggle
    .target Krakle
step
    .goto 78,55.04,62.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 24794 >>Turn in Speak With Spraggle
    .accept 24734 >>Accept Lost!
    .target Spraggle Frock
step
    .goto 78,55.08,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 24740 >>Turn in Volcanic Activity
    .turnin 24865 >>Turn in Is This Stuff Still Good?
    .accept 24690 >>Accept Blazerunner
    .target Williden Marshal
step
    .goto 78,55.02,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .turnin 24866 >>Turn in An Abandoned Research Camp
    .target Hol'anyee Marshal
step
    .goto 78,54.20,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 24720 >>Turn in Crystals of Power
    .target J.D. Collie
step
    .goto 78,55.05,60.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nolen Tacker|r
    .turnin 24697 >>Turn in How to Make Meat Fresh Again
    .target Nolen Tacker
step
    .goto 78,53.07,51.90
    >>Click the |cRXP_PICK_Ringo's Sack|r
    .turnin 24734 >>Turn in Lost!
step
    .goto 78,51.97,49.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ringo|r
    .accept 24735 >>Accept A Little Help From My Friends
    .target Ringo
step
    .goto 78,49.41,49.33
    >>Kill |cRXP_ENEMY_Blazerunner|r
    .complete 24690,1 --Blazerunner slain (1)
    .mob Blazerunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 124 >>Travel to Plaguelands: The Scarlet Enclave
    .zoneskip 124
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 124,55.76,41.04,0
    .goto 124,55.76,41.04,40,0
    .goto 124,57.83,34.23,40,0
    .goto 124,60.00,29.70,40,0
    .goto 124,57.48,31.63,40,0
    >>Kill |cRXP_ENEMY_Deadwind Brutes|r, |cRXP_ENEMY_Restless Shades|r, |cRXP_ENEMY_Deadwind Maulers|r and |cRXP_ENEMY_Deadwind Warlocks|r. Loot them for |cRXP_LOOT_Runecloth|r
    .complete 13906,2 --Runecloth (20)
    .mob Deadwind Brute
    .mob Restless Shade
    .mob Deadwind Mauler
    .mob Deadwind Warlock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 78 >>Leave Plaguelands: The Scarlet Enclave for Un'Goro Crater
    .zoneskip 78
step
    #completewith next
    .hs >>Hearth to Gibbert's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 78,54.88,62.07
    >>Escort Ringo to Marshal's Stand
    .complete 24735,1 --Escort Ringo to Marshal's Stand
step
    .goto 78,55.04,62.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 24735 >>Turn in A Little Help From My Friends while you are here
    .isQuestComplete 24735
    .target Spraggle Frock
step
    .goto 78,55.08,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 24690 >>Turn in Blazerunner
    .target Williden Marshal
step
    .goto 78,55.02,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .accept 24692 >>Accept The Fledgling Colossus
    .target Hol'anyee Marshal
step
    .goto 78,55.04,62.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spraggle Frock|r
    .turnin 24735 >>Turn in A Little Help From My Friends
    .target Spraggle Frock
step
    .goto 78,54.82,63.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quixxil|r
    .accept 24691 >>Accept Peculiar Delicacies
    .target Quixxil
step
    #loop
    .goto 78,45.49,75.66,0
    .goto 78,45.49,75.66,40,0
    .goto 78,43.99,80.66,40,0
    .goto 78,47.42,84.61,40,0
    >>Kill |cRXP_ENEMY_Gorishi Wasps|r, |cRXP_ENEMY_Gorishi Workers|r, |cRXP_ENEMY_Gorishi Reavers|r and |cRXP_ENEMY_Gorishi Stingers|r. Loot them for |cRXP_LOOT_Silithid Leg|r
    >>Kill |cRXP_ENEMY_Gorishi Fledgling Colossus|r
    .complete 24691,1 --Silithid Leg (96)
    .complete 24692,1 --Gorishi Fledgling Colossus slain (8)
    .mob Gorishi Wasp
    .mob Gorishi Worker
    .mob Gorishi Reaver
    .mob Gorishi Stinger
    .mob Gorishi Fledgling Colossus
step
    #completewith next
    .hs >>Hearth to Gibbert's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 78,55.02,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .turnin 24692 >>Turn in The Fledgling Colossus
    .target Hol'anyee Marshal
step
    .goto 78,54.82,63.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quixxil|r
    .turnin 24691 >>Turn in Peculiar Delicacies
    .accept 24693 >>Accept Mossy Pile
    .target Quixxil
step
    .goto 78,43.30,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremix|r
    .turnin 24693 >>Turn in Mossy Pile
    .target Gremix
step
    .goto 78,43.23,40.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doreen|r
    .accept 24701 >>Accept Marshal's Refuse
    .target Doreen
step
    .goto 78,43.28,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tara|r
    .accept 24700 >>Accept Hard to Harvest
    .accept 24737 >>Accept Super Sticky
    .target Tara
step
    #loop
    .goto 78,42.71,19.63,0
    .goto 78,42.71,19.63,40,0
    .goto 78,45.87,15.89,40,0
    .goto 78,47.92,19.36,40,0
    >>Kill |cRXP_ENEMY_Tar Beasts|r, |cRXP_ENEMY_Tar Lurkers|r, |cRXP_ENEMY_Tar Lords|r and |cRXP_ENEMY_Tar Creepers|r. Loot them for |cRXP_LOOT_Super Sticky Tar|r
    >>Loot the |cRXP_PICK_Tarblossoms|r for |cRXP_LOOT_Tarblossom Blossom|r
    .complete 24737,1 --Super Sticky Tar (1)
    .complete 24700,1 --Tarblossom Blossom (4)
    .mob Tar Beast
    .mob Tar Lurker
    .mob Tar Lord
    .mob Tar Creeper
step
    #loop
    .goto 78,42.54,11.16,0
    .goto 78,42.54,11.16,40,0
    .goto 78,44.60,7.97,40,0
    >>Pick up |cRXP_PICK_Discarded Supplies|r from the ground
    .complete 24701,1 --Discarded Supplies (10)
step
    .goto 78,43.28,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tara|r
    .turnin 24737 >>Turn in Super Sticky
    .turnin 24700 >>Turn in Hard to Harvest
    .accept 24699 >>Accept Gormashh the Glutinous
    .target Tara
step
    .goto 78,43.23,40.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doreen|r
    .turnin 24701 >>Turn in Marshal's Refuse
    .target Doreen
step
    .goto 78,43.30,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremix|r
    .accept 24717 >>Accept The Apes of Un'Goro
    .target Gremix
step
    .goto 78,43.44,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
    .accept 24714 >>Accept Chasing A-Me 01
    .target Karna Remtravel
step
    .goto 78,55.05,60.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nolen Tacker|r
    .accept 24698 >>Accept Adventures in Archaeology
    .target Nolen Tacker
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .accept 24703 >>Accept An Important Lesson
    .target Maximillian of Northshire
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 24698 >>Turn in Adventures in Archaeology
    .accept 24730 >>Accept Roll the Bones
    .target Spark Nilminer
step
    #loop
    .goto 78,57.20,22.33,0
    .goto 78,57.20,22.33,40,0
    .goto 78,58.08,18.20,40,0
    .goto 78,62.46,19.57,40,0
    >>Kill |cRXP_ENEMY_Un'Goro Stompers|r. Loot them for |cRXP_LOOT_Un'Goro Stomper Pelt|r
    >>Kill |cRXP_ENEMY_Un'Goro Gorillas|r. Loot them for |cRXP_LOOT_Un'Goro Gorilla Pelt|r
    .complete 24717,2 --Un'Goro Stomper Pelt (2)
    .complete 24717,1 --Un'Goro Gorilla Pelt (2)
    .mob Un'Goro Stomper
    .mob Un'Goro Gorilla
step
    .goto 78,63.82,19.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    .turnin 24714 >>Turn in Chasing A-Me 01
    .accept 24715 >>Accept Repairing A-Me 01
    .target A-Me 01
step
    .goto 78,63.82,19.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    .turnin 24715 >>Turn in Repairing A-Me 01
    .target A-Me 01
    .isQuestComplete 24715
step
    .goto 78,63.82,19.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    .accept 24926 >>Accept Serving A-Me 01
    .target A-Me 01
    .isQuestTurnedIn 24715 --any of: Repairing A-Me 01
    .xp <50,1
step
    #completewith Along72
    >>As you go: Kill |cRXP_ENEMY_Un'Goro Thunderers|r. Loot them for |cRXP_LOOT_Un'Goro Thunderer Pelt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24717,3 --Un'Goro Thunderer Pelt (2)
    .mob Un'Goro Thunderer
step
    #label Along72
    .goto 78,64.89,16.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 24718 >>Accept The Mighty U'cha
    .target !
step
    #loop
    .goto 78,67.10,14.62,0
    .goto 78,67.10,14.62,40,0
    .goto 78,68.63,16.97,40,0
    >>Kill |cRXP_ENEMY_Un'Goro Thunderers|r. Loot them for |cRXP_LOOT_Un'Goro Thunderer Pelt|r
    >>Kill |cRXP_ENEMY_U'cha|r and loot |cRXP_LOOT_U'cha's Pelt|r
    .complete 24717,3 --Un'Goro Thunderer Pelt (2)
    .complete 24718,1 --U'cha's Pelt (1)
    .mob Un'Goro Thunderer
    .mob U'cha
step
    .goto 78,69.98,40.96
    >>Kill |cRXP_ENEMY_Lar'korwi|r and loot |cRXP_LOOT_Lar'korwi's Head|r
    .complete 24733,1 --Lar'korwi's Head (1)
    .mob Lar'korwi
step
    .goto 78,76.44,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithis Moonwarden|r
    .turnin 24855 >>Turn in Aberrant Flora
    .accept 24721 >>Accept The Eastern Pylon
    .target Ithis Moonwarden
step
    .goto 78,77.16,49.98
    >>Click the |cRXP_PICK_Eastern Crystal Pylon|r
    .complete 24721,1 --Eastern Crystal Pylon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 78,71.47,74.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'vek|r
    .turnin 13906 >>Turn in They Grow Up So Fast
    .target Mor'vek
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 51 - 55 Un'Goro Crater
#subweight -51
#name 53-55 Un'Goro Crater: around Mor'vek
--RouteBuilder:next
#next Zone Routes (Horde)\52-54 Winterspring: around Rinno Curtainfire;Zone Routes (Horde)\55-56 Silithus;Zone Routes (Horde)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

step
    .goto 78,71.24,76.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 24733 >>Turn in The Bait for Lar'korwi
    .target Torwa Pathfinder
    .isOnQuest 24733
step
    #loop
    .goto 78,57.16,69.43,0
    .goto 78,57.16,69.43,40,0
    .goto 78,55.41,72.46,40,0
    .goto 78,52.58,68.31,40,0
    .goto 78,58.97,62.89,40,0
    >>Kill |cRXP_ENEMY_Stegodons|r, |cRXP_ENEMY_Plated Stegodons|r, |cRXP_ENEMY_Spiked Stegodons|r and |cRXP_ENEMY_Thunderstomp Stegodons|r. Loot them for |cRXP_LOOT_Dinosaur Bone|r. It can also be picked up from |cRXP_PICK_Dinosaur Bone|r on the ground
    .complete 24730,1 --Dinosaur Bone (8)
    .mob Stegodon
    .mob Plated Stegodon
    .mob Spiked Stegodon
    .mob Thunderstomp Stegodon
    .isOnQuest 24730
step
    .goto 78,54.20,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 24721 >>Turn in The Eastern Pylon
    .target J.D. Collie
    .isOnQuest 24721
step
    .goto 78,43.30,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremix|r
    .turnin 24717 >>Turn in The Apes of Un'Goro
    .target Gremix
    .isOnQuest 24717
step
    .goto 78,43.30,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremix|r
    .accept 24722 >>Accept The Northern Pylon
    .target Gremix
    .isQuestTurnedIn 24717 --any of: The Apes of Un'Goro
step
    .goto 78,43.30,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremix|r
    .turnin 24718 >>Turn in The Mighty U'cha
    .target Gremix
    .isOnQuest 24718
step
    .goto 78,43.44,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
    .turnin 24926 >>Turn in Serving A-Me 01
    .target Karna Remtravel
    .isOnQuest 24926
step
    .goto 78,56.52,12.54
    >>Click the |cRXP_PICK_Northern Crystal Pylon|r
    .complete 24722,1 --Northern Crystal Pylon
    .isOnQuest 24722
step
    .goto 78,59.30,17.90
    >>Pick up |cRXP_PICK_Un'Goro Coconut|r from the ground
    .collect 50237,1,24715,1 --Un'Goro Coconut (1)
    .isOnQuest 24715
step
    .goto 78,59.64,29.24
    >>Kill |cRXP_ENEMY_Gormashh|r and loot |cRXP_LOOT_Unbelievably Sticky Tar|r
    .complete 24699,1 --Unbelievably Sticky Tar (1)
    .mob Gormashh
    .isOnQuest 24699
step
    .goto 78,43.28,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tara|r
    .turnin 24699 >>Turn in Gormashh the Glutinous
    .target Tara
    .isOnQuest 24699
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 24730 >>Turn in Roll the Bones
    .target Spark Nilminer
    .isOnQuest 24730
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .accept 24708 >>Accept The Fossil-Finder 3000
    .target Spark Nilminer
    .isQuestTurnedIn 24730 --any of: Roll the Bones
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .complete 24703,1 --Maximillian of Northshire
    .target Maximillian of Northshire
    .isOnQuest 24703
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .turnin 24703 >>Turn in An Important Lesson
    .target Maximillian of Northshire
    .isOnQuest 24703
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .accept 24705 >>Accept Town Dwellers Were Made to be Saved
    .accept 24704 >>Accept The Evil Dragons of Un'Goro Crater
    .target Maximillian of Northshire
    .isQuestTurnedIn 24703 --any of: An Important Lesson
step
    #loop
    .goto 78,28.63,46.58,0
    .goto 78,28.63,46.58,40,0
    .goto 78,29.37,42.40,40,0
    .goto 78,32.94,42.70,40,0
    >>Kill |cRXP_ENEMY_Devilsaurs|r, |cRXP_ENEMY_Ironhide Devilsaurs|r, |cRXP_ENEMY_Tyrant Devilsaurs|r and |cRXP_ENEMY_Stegodons|r
    .complete 24704,1 --Devilsaur (8)
    .mob Devilsaur
    .mob Ironhide Devilsaur
    .mob Tyrant Devilsaur
    .mob Stegodon
    .isOnQuest 24704
step
    .goto 78,29.23,22.50
    >>Rescue the Damsel by the Shore, the Damsel in the Cliffs, and the Damsel of the North.
    .complete 24705,3 --Dweller of the North
    .target Dweller of the North
    .isOnQuest 24705
step
    .goto 78,23.76,50.00
    >>Rescue the Damsel by the Shore, the Damsel in the Cliffs, and the Damsel of the North.
    .complete 24705,2 --Dweller in the Cliffs
    .target Dweller in the Cliffs
    .isOnQuest 24705
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .turnin 24704 >>Turn in The Evil Dragons of Un'Goro Crater
    .target Maximillian of Northshire
    .isOnQuest 24704
step
    .goto 78,36.40,59.12
    >>Open the |cRXP_PICK_Dweller's Crate|r. Loot it for |cRXP_LOOT_Blood Elf's Belongings|r
    .collect 50288,1,24705,1 --Blood Elf's Belongings (1)
    .isOnQuest 24705
step
    .goto 78,36.52,59.37
    >>Rescue the Damsel by the Shore, the Damsel in the Cliffs, and the Damsel of the North.
    .complete 24705,1 --Dweller by the Shore
    .target Dweller by the Shore
    .isOnQuest 24705
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .turnin 24705 >>Turn in Town Dwellers Were Made to be Saved
    .target Maximillian of Northshire
    .isOnQuest 24705
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .accept 24706 >>Accept The Spirits of Golakka Hot Springs
    .target Maximillian of Northshire
    .isQuestTurnedIn 24704 --The Evil Dragons of Un'Goro Crater
    .isQuestTurnedIn 24705 --Town Dwellers Were Made to be Saved
step
    .goto 78,33.86,60.61
    >>Stand by as Maximillian of Northshire speaks to 2 Steam Furies.
    .complete 24706,1 --Steaming Fury (2)
    .target Steaming Fury
    .isOnQuest 24706
step
    .goto 78,32.96,74.67
    >>Open the |cRXP_PICK_Suspicious Mound of Dirt|r. Loot it for |cRXP_LOOT_Enormous Dinosaur Talon|r
    .complete 24708,1 --Enormous Dinosaur Talon (1)
    .isOnQuest 24708
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .turnin 24706 >>Turn in The Spirits of Golakka Hot Springs
    .target Maximillian of Northshire
    .isOnQuest 24706
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 24708 >>Turn in The Fossil-Finder 3000 while you are here
    .isQuestComplete 24708
    .target Spark Nilminer
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .accept 24707 >>Accept The Ballad of Maximillian
    .target Maximillian of Northshire
    .isQuestTurnedIn 24706 --any of: The Spirits of Golakka Hot Springs
step
    .goto 78,30.84,48.25
    >>Kill |cRXP_ENEMY_Devilsaur Queen|r
    .complete 24707,1 --Devilsaur Queen slain (1)
    .mob Devilsaur Queen
    .isOnQuest 24707
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .turnin 24707 >>Turn in The Ballad of Maximillian while you are here
    .isQuestComplete 24707
    .target Maximillian of Northshire
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 24708 >>Turn in The Fossil-Finder 3000
    .target Spark Nilminer
    .isOnQuest 24708
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .accept 24709 >>Accept A Tale of Two Shovels
    .target Spark Nilminer
    .isQuestTurnedIn 24708 --any of: The Fossil-Finder 3000
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .turnin 24707 >>Turn in The Ballad of Maximillian
    .target Maximillian of Northshire
    .isOnQuest 24707
step
    .goto 78,37.81,82.81
    >>Kill |cRXP_ENEMY_Durrin Direshovel|r and loot |cRXP_LOOT_Durrin's Archaeological Findings|r
    .complete 24709,1 --Durrin's Archaeological Findings (1)
    .mob Durrin Direshovel
    .isOnQuest 24709
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 24709 >>Turn in A Tale of Two Shovels
    .target Spark Nilminer
    .isOnQuest 24709
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .accept 24723 >>Accept The Western Pylon
    .target Spark Nilminer
    .isQuestTurnedIn 24709 --any of: A Tale of Two Shovels
step
    .goto 78,23.58,50.01
    >>Click the |cRXP_PICK_Western Crystal Pylon|r
    .complete 24723,1 --Western Crystal Pylon
    .isOnQuest 24723
step
    #completewith next
    .hs >>Hearth to Gibbert's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 78,54.20,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 24722 >>Turn in The Northern Pylon
    .target J.D. Collie
    .isOnQuest 24722
step
    .goto 78,54.20,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .turnin 24723 >>Turn in The Western Pylon
    .target J.D. Collie
    .isOnQuest 24723
step
    .goto 78,53.83,62.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Goro Examinant|r
    .accept 24694 >>Accept The Shaper's Terrace
    .target Un'Goro Examinant
    .isQuestTurnedIn 24720 --Crystals of Power
    .isQuestTurnedIn 24721 --The Eastern Pylon
    .isQuestTurnedIn 24722 --The Northern Pylon
    .isQuestTurnedIn 24723 --The Western Pylon
step
    .goto 78,83.52,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nablya|r
    .turnin 24694 >>Turn in The Shaper's Terrace
    .target Nablya
    .isOnQuest 24694
step
    .goto 78,83.52,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nablya|r
    .accept 24695 >>Accept Ever Watching From Above
    .target Nablya
    .isQuestTurnedIn 24694 --any of: The Shaper's Terrace
step
    .goto 78,83.52,46.76
    >>Click the |cRXP_PICK_Diemetradon Observation Lever|r
    .complete 24695,2 --Diemetradon Observation Lever
    .isOnQuest 24695
step
    .goto 78,83.98,46.41
    >>Click the |cRXP_PICK_Gorilla Observation Lever|r
    .complete 24695,3 --Gorilla Observation Lever
    .isOnQuest 24695
step
    .goto 78,84.02,45.60
    >>Click the |cRXP_PICK_Pterrordax Observation Lever|r
    .complete 24695,4 --Pterrordax Observation Lever
    .isOnQuest 24695
step
    .goto 78,83.54,45.23
    >>Click the |cRXP_PICK_Bloodpetal Observation Lever|r
    .complete 24695,1 --Bloodpetal Observation Lever
    .isOnQuest 24695
step
    .goto 78,83.52,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nablya|r
    .turnin 24695 >>Turn in Ever Watching From Above
    .target Nablya
    .isOnQuest 24695
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 88,22.76,14.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
    .accept 28300 >>Accept Meet with Ureda
    .accept 27277 >>Accept An Audience with Ureda
    .target Archmage Shymm
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 88,25.24,13.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delano Morisett|r
    .accept 28299 >>Accept Meet with Zevrost
    .accept 27282 >>Accept Zevrost's Behest
    .target Delano Morisett
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 88,21.99,18.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kador Cloudsong|r
    .accept 28301 >>Accept Meet with Kardris Dreamseeker
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Kador Cloudsong
step
    .goto 88,24.56,22.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai Cross|r
    .accept 28304 >>Accept Meet with Dark Cleric Cecille << Undead Priest
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 28308 >>Accept Meet with Seer Liwatha << Tauren Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 28309 >>Accept Meet with Shadow-Walker Zuru << Troll Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 28307 >>Accept Meet with Tyelis << BloodElf Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28323 >>Accept Meet with Brother Silverhallow << Goblin Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Malakai Cross
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,34.40,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .accept 2965 >>Accept Portents of Uldum
    .target Sage Truthseeker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 54 >>Grind to level 54 (Warchief's Command: Silithus! needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28527 >>Accept Warchief's Command: Silithus!
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 88,56.99,89.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sark Ragetotem|r
    .accept 27281 >>Accept Grezz Ragefist
    .accept 28290 >>Accept Meet with Grezz Ragefist
    .target Sark Ragetotem
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 88,57.30,89.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .accept 27278 >>Accept Grimshot's Call
    .accept 28297 >>Accept Meet with Ormak Grimshot
    .target Holt Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1205 >>Accept Deadmire
    .target Melor Stonehoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
    .isQuestComplete 1205
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 28303 >>Accept Meet with Master Pyreanor << BloodElf Paladin
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 28302 >>Accept Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,75.65,31.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 2965 >>Turn in Portents of Uldum
    .target Nara Wildmane
step
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 28289 >>Accept Moonglade Calls << Druid
    .accept 27283 >>Accept A Journey to Moonglade << Tauren Druid/Troll Druid
    .target Sheal Runetotem
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .target Ahanu
    .isOnQuest 6362
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
    .isQuestTurnedIn 6362 --any of: Ride to Thunder Bluff
    .xp <5,1
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .target Tal
    .isOnQuest 6363
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .accept 6364 >>Accept Return to Varg
    .target Tal
    .isQuestTurnedIn 6363 --any of: Tal the Wind Rider Master
    .xp <5,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24550 >>Turn in Journey into Thunder Bluff
    .target Baine Bloodhoof
    .isOnQuest 24550
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 24540 >>Accept War Dance
    .target Baine Bloodhoof
    .isQuestTurnedIn 24550 --any of: Journey into Thunder Bluff
    .xp <8,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 26397 >>Accept Walk With The Earth Mother
    .target Baine Bloodhoof
    .isQuestTurnedIn 24540 --any of: War Dance
    .xp <10,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24540 >>Turn in War Dance
    .target Baine Bloodhoof
    .isQuestComplete 24540
step
    +|cRXP_WARN_End of the Un'Goro Crater route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Desolace|r: Warchief's Command: Desolace! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Warchief's Command: Dustwallow Marsh!, Return to Krog, Warchief's Command: Thousand Needles! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Felwood|r: Warchief's Command: Felwood! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Warchief's Command: Feralas! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: A Journey to Moonglade << Tauren Druid/Troll Druid
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade Calls << Druid
    >>|cRXP_FRIENDLY_Mulgore|r: Return to Varg << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: Walk With The Earth Mother << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda, Meet with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call, Meet with Ormak Grimshot << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls, Meet with Kardris Dreamseeker << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist, Meet with Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest, Meet with Zevrost << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor, Meet with Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun, Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call, Meet with Seer Liwatha << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker, Meet with Shadow-Walker Zuru << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille, Meet with Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar, Meet with Tyelis << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow, Meet with Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_Silithus|r: Warchief's Command: Silithus! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Southern Barrens|r: Warchief's Command: Southern Barrens! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Tanaris|r: Warchief's Command: Tanaris! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Winterspring|r: Warchief's Command: Winterspring! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh and back here|r: Deadmire << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Repairing A-Me 01
step
    +|cRXP_WARN_Suggested next zones at level 54|r: |cRXP_FRIENDLY_Winterspring|r (about 1.2 levels of quests, starting around Rinno Curtainfire), |cRXP_FRIENDLY_Silithus|r (about 1.0 levels of quests, starting around Huum Wildmane; 1 quest from here hands in there), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.9 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Winterspring --RouteBuilder:next
]])
