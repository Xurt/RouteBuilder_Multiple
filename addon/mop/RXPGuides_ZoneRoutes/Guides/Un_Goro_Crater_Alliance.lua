-- 51-55 Un'Goro Crater: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 51, 57).
-- Split into 3 guides, listed under "51 - 58 Un'Goro Crater" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Un'Goro Crater.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 51 - 58 Un'Goro Crater
#subweight -51
#name 51-53 Un'Goro Crater: around Garl Stormclaw
#next Zone Routes (Alliance)\53-55 Un'Goro Crater: around Garl Stormclaw

step
    .goto 78,70.89,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garl Stormclaw|r
    .accept 24719 >>Accept Claws of White
    .target Garl Stormclaw
step
    .goto 78,71.24,76.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .accept 24731 >>Accept The Fare of Lar'korwi
    .target Torwa Pathfinder
step
    #loop
    .goto 78,67.00,73.00,0
    .goto 78,67.00,73.00,40,0
    .goto 78,64.43,75.25,40,0
    .goto 78,62.52,71.11,40,0
    >>Kill |cRXP_ENEMY_Ravasaurs|r, |cRXP_ENEMY_Ravasaur Runners|r, |cRXP_ENEMY_Ravasaur Hunters|r and |cRXP_ENEMY_Venomhide Ravasaurs|r. Loot them for |cRXP_LOOT_White Ravasaur Claw|r
    >>Open the |cRXP_PICK_Fresh Threshadon Carcass|r. Loot it for |cRXP_LOOT_Piece of Threshadon Carcass|r
    .complete 24719,1 --White Ravasaur Claw (5)
    .complete 24731,1 --Piece of Threshadon Carcass (1)
    .mob Ravasaur
    .mob Ravasaur Runner
    .mob Ravasaur Hunter
    .mob Venomhide Ravasaur
step
    .goto 78,71.24,76.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 24731 >>Turn in The Fare of Lar'korwi
    .accept 24732 >>Accept The Scent of Lar'korwi
    .target Torwa Pathfinder
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
    #loop
    .goto 78,67.00,60.00,0
    .goto 78,67.00,60.00,40,0
    .goto 78,66.00,66.00,40,0
    >>Kill |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for |cRXP_LOOT_Ravasaur Pheromone Gland|r
    .complete 24732,1 --Ravasaur Pheromone Gland (2)
    .mob Lar'korwi Mate
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
    #completewith Along10
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
    #label Along10
    .goto 78,54.20,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    .accept 24720 >>Accept Crystals of Power
    .target J.D. Collie
step
    .goto 78,55.08,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .accept 24740 >>Accept Volcanic Activity
    .target Williden Marshal
step
    .goto 78,55.08,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 24911 >>Turn in Tropical Paradise Beckons
    .target Williden Marshal
    .isOnQuest 24911
step
    .goto 78,55.35,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakle|r
    .accept 24742 >>Accept Finding the Source
    .target Krakle
step
    #completewith Along14
    >>As you go: Kill |cRXP_ENEMY_Young Diemetradons|r, |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Un'Goro Pit Bunnies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24697,1 --Young Diemetradon (8)
    .mob Young Diemetradon
    .mob Diemetradon
    .mob Un'Goro Pit Bunny
step
    #label Along14
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
    .goto 78,70.89,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garl Stormclaw|r
    .turnin 24686 >>Turn in Carried on the Waves
    .turnin 24854 >>Turn in Finding Stormclaw
    .accept 24689 >>Accept Flowing to the North
    .target Garl Stormclaw
step
    .goto 78,71.24,76.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 24732 >>Turn in The Scent of Lar'korwi
    .accept 24733 >>Accept The Bait for Lar'korwi
    .target Torwa Pathfinder
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
step
    .goto 78,69.98,40.96
    >>Kill |cRXP_ENEMY_Lar'korwi|r and loot |cRXP_LOOT_Lar'korwi's Head|r
    .complete 24733,1 --Lar'korwi's Head (1)
    .mob Lar'korwi
step
    #completewith Along21
    >>As you go: Kill |cRXP_ENEMY_Bloodpetal Lashers|r, |cRXP_ENEMY_Bloodpetal Flayers|r, |cRXP_ENEMY_Bloodpetal Threshers|r and |cRXP_ENEMY_Bloodpetal Trappers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24855,1 --Bloodpetal Lasher (8)
    .mob Bloodpetal Lasher
    .mob Bloodpetal Flayer
    .mob Bloodpetal Thresher
    .mob Bloodpetal Trapper
step
    #label Along21
    .goto 78,68.54,36.54
    >>Click the |cRXP_PICK_Crate of Foodstuffs|r
    .accept 24865 >>Accept Is This Stuff Still Good?
step
    #loop
    .goto 78,71.74,30.88,0
    .goto 78,71.74,30.88,40,0
    .goto 78,73.38,34.23,40,0
    .goto 78,67.96,27.72,40,0
    >>Kill |cRXP_ENEMY_Bloodpetal Lashers|r, |cRXP_ENEMY_Bloodpetal Flayers|r, |cRXP_ENEMY_Bloodpetal Threshers|r and |cRXP_ENEMY_Bloodpetal Trappers|r
    .complete 24855,1 --Bloodpetal Lasher (8)
    .mob Bloodpetal Lasher
    .mob Bloodpetal Flayer
    .mob Bloodpetal Thresher
    .mob Bloodpetal Trapper
step
    #loop
    .goto 78,71.92,26.25,0
    .goto 78,71.92,26.25,40,0
    .goto 78,68.94,25.00,40,0
    >>Kill |cRXP_ENEMY_Young Diemetradons|r, |cRXP_ENEMY_Diemetradons|r and |cRXP_ENEMY_Un'Goro Pit Bunnies|r
    .complete 24697,1 --Young Diemetradon (8)
    .mob Young Diemetradon
    .mob Diemetradon
    .mob Un'Goro Pit Bunny
step
    #loop
    .goto 78,56.54,12.31,0
    .goto 78,56.54,12.31,40,0
    .goto 78,57.35,10.07,40,0
    >>Pick up |cRXP_PICK_Green Power Crystal|r from the ground
    .complete 24720,3 --Green Power Crystal (7)
step
    #completewith Along25
    >>As you go: Kill |cRXP_ENEMY_Scorching Elementals|r, |cRXP_ENEMY_Living Blazes|r and |cRXP_ENEMY_Blazerunners|r. Loot them for |cRXP_LOOT_Un'Goro Ash|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24740,1 --Un'Goro Ash (1)
    .mob Scorching Elemental
    .mob Living Blaze
    .mob Blazerunner
step
    #label Along25
    .goto 78,48.32,43.48
    >>Click the |cRXP_PICK_Fire Plume Ridge Hot Spot|r
    .complete 24742,1 --Fire Plume Ridge Hot Spot
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
    .goto 78,38.45,66.06
    >>Click the |cRXP_PICK_Research Equipment|r
    .accept 24866 >>Accept An Abandoned Research Camp
step
    .goto 78,26.00,59.59
    >>Pick up |cRXP_PICK_Red Power Crystal|r from the ground
    .complete 24720,1 --Red Power Crystal (7)
step
    .goto 78,25.52,39.90
    >>Pick up |cRXP_PICK_Yellow Power Crystal|r from the ground
    .complete 24720,2 --Yellow Power Crystal (7)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28492 >>Accept Hero's Call: Ashenvale!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28525 >>Accept Hero's Call: Un'Goro Crater!
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
    .accept 28544 >>Accept Hero's Call: Winterspring!
    .accept 28507 >>Accept Hero's Call: Tanaris!
    .accept 28503 >>Accept Hero's Call: Thousand Needles!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28543 >>Accept Hero's Call: Felwood!
step << Draenei
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .target Nurguni
    .isOnQuest 9604
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .accept 9605 >>Accept Hippogryph Master Stephanos
    .target Nurguni
    .isQuestTurnedIn 9604 --any of: On the Wings of a Hippogryph
    .xp <5,1
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
    .target Stephanos
    .isOnQuest 9605
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .accept 9606 >>Accept Return to Caregiver Chellan
    .target Stephanos
    .isQuestTurnedIn 9605 --any of: Hippogryph Master Stephanos
    .xp <5,1
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 89,43.91,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r
    .accept 26383 >>Accept Breaking Waves of Change
    .target Sentinel Cordressa Briarbow
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 27225 >>Accept A Summons from Ander Germaine
    .accept 28258 >>Accept Meet with Ander Germaine
    .target Arias'ta Bladesinger
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.35,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 28285 >>Accept Meet with High Priestess Laurena
    .target Astarii Starseeker
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 27266 >>Accept Wulf Calls
    .accept 28260 >>Accept Meet with Wulf Hansreim
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 28262 >>Accept Meet with Lord Tony Romano
    .accept 27267 >>Accept Make Contact with SI:7
    .target Erion Shadewhisper
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Priestess Alathea
step
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 27273 >>Accept An Invitation from Moonglade << NightElf Druid/Worgen Druid
    .accept 28289 >>Accept Moonglade Calls << Druid
    .target Mathrengyl Bearwalker
step
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27269 >>Accept The Temple of the Moon << NightElf Priest
    .accept 27274 >>Accept The Chief Surgeon << Gnome Priest
    .target Priestess Alathea
step << NightElf Priest
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 27269 >>Turn in The Temple of the Moon
    .accept 27362 >>Accept Favored of Elune
    .target Tyrande Whisperwind
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Turn in The Howling Oak
    .target Genn Greymane
    .isOnQuest 28517
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .accept 26385 >>Accept Breaking Waves of Change
    .target Genn Greymane
    .isQuestTurnedIn 28517 --any of: The Howling Oak
    .xp <8,1
step
    #completewith next
    .zone 78 >>Leave Darnassus for Un'Goro Crater
    .zoneskip 78
step
    #completewith next
    .hs >>Hearth to Gibbert's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 78,55.02,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hol'anyee Marshal|r
    .turnin 24866 >>Turn in An Abandoned Research Camp
    .target Hol'anyee Marshal
step
    .goto 78,55.08,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .turnin 28525 >>Turn in Hero's Call: Un'Goro Crater! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 24865 >>Turn in Is This Stuff Still Good?
    .turnin 24740 >>Turn in Volcanic Activity
    .accept 24690 >>Accept Blazerunner
    .target Williden Marshal
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
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 28263 >>Accept Meet with Maginor Dumas
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Edirah
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 28268 >>Accept Meet with Lord Grayson Shadowbreaker
    .accept 27265 >>Accept Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 28287 >>Accept Meet with Farseer Umbrua
    .accept 27270 >>Accept An Audience with the Farseer
    .target Hobahken
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9762 >>Accept The Unwritten Prophecy
    .target Prophet Velen
    .isQuestTurnedIn 9759 --any of: Ending Their World
    .xp <18,1
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9762 >>Turn in The Unwritten Prophecy
    .target Prophet Velen
    .isOnQuest 9762
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9698 >>Turn in Audience with the Prophet
    .target Prophet Velen
    .isOnQuest 9698
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9699 >>Accept Truth or Fiction
    .target Prophet Velen
    .isQuestTurnedIn 9698 --any of: Audience with the Prophet
    .xp <14,1
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >>Turn in Coming of Age
    .target Torallius the Pack Handler
    .isOnQuest 9623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .accept 9625 >>Accept Elekks Are Serious Business
    .target Torallius the Pack Handler
    .isQuestTurnedIn 9623 --any of: Coming of Age
    .xp <10,1
step
    #completewith next
    .zone 78 >>Leave The Exodar for Un'Goro Crater
    .zoneskip 78
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
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_Tar Beasts|r, |cRXP_ENEMY_Tar Lurkers|r, |cRXP_ENEMY_Tar Lords|r and |cRXP_ENEMY_Tar Creepers|r. Loot them for |cRXP_LOOT_Super Sticky Tar|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24737,1 --Super Sticky Tar (1)
    .mob Tar Beast
    .mob Tar Lurker
    .mob Tar Lord
    .mob Tar Creeper
step
    #label Along76
    .goto 78,45.02,14.90
    >>Loot the |cRXP_PICK_Tarblossoms|r for |cRXP_LOOT_Tarblossom Blossom|r
    .complete 24700,1 --Tarblossom Blossom (4)
step
    #loop
    .goto 78,42.54,11.16,0
    .goto 78,42.54,11.16,40,0
    .goto 78,44.60,7.97,40,0
    >>Pick up |cRXP_PICK_Discarded Supplies|r from the ground
    .complete 24701,1 --Discarded Supplies (10)
step
    #loop
    .goto 78,48.03,30.83,0
    .goto 78,48.03,30.83,40,0
    .goto 78,46.49,33.05,40,0
    >>Kill |cRXP_ENEMY_Tar Beasts|r, |cRXP_ENEMY_Tar Lurkers|r, |cRXP_ENEMY_Tar Lords|r and |cRXP_ENEMY_Tar Creepers|r. Loot them for |cRXP_LOOT_Super Sticky Tar|r
    .complete 24737,1 --Super Sticky Tar (1)
    .mob Tar Beast
    .mob Tar Lurker
    .mob Tar Lord
    .mob Tar Creeper
step
    .goto 78,55.05,60.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nolen Tacker|r
    .accept 24698 >>Accept Adventures in Archaeology
    .target Nolen Tacker
step
    .goto 78,31.85,50.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .turnin 24698 >>Turn in Adventures in Archaeology
    .accept 24730 >>Accept Roll the Bones
    .target Spark Nilminer
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .accept 24703 >>Accept An Important Lesson
    .target Maximillian of Northshire
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .complete 24703,1 --Maximillian of Northshire
    .target Maximillian of Northshire
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .turnin 24703 >>Turn in An Important Lesson
    .accept 24705 >>Accept Town Dwellers Were Made to be Saved
    .accept 24704 >>Accept The Evil Dragons of Un'Goro Crater
    .target Maximillian of Northshire
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
step
    .goto 78,29.23,22.50
    >>Rescue the Damsel by the Shore, the Damsel in the Cliffs, and the Damsel of the North.
    .complete 24705,3 --Dweller of the North
    .target Dweller of the North
step
    .goto 78,23.76,50.00
    >>Rescue the Damsel by the Shore, the Damsel in the Cliffs, and the Damsel of the North.
    .complete 24705,2 --Dweller in the Cliffs
    .target Dweller in the Cliffs
step
    .goto 78,30.62,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian of Northshire|r
    .turnin 24704 >>Turn in The Evil Dragons of Un'Goro Crater
    .target Maximillian of Northshire
step
    .goto 78,36.40,59.12
    >>Open the |cRXP_PICK_Dweller's Crate|r. Loot it for |cRXP_LOOT_Blood Elf's Belongings|r
    .collect 50288,1,24705,1 --Blood Elf's Belongings (1)
step
    .goto 78,36.52,59.37
    >>Rescue the Damsel by the Shore, the Damsel in the Cliffs, and the Damsel of the North.
    .complete 24705,1 --Dweller by the Shore
    .target Dweller by the Shore
step
    .goto 78,43.23,40.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doreen|r
    .turnin 24701 >>Turn in Marshal's Refuse
    .target Doreen
step
    .goto 78,43.28,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tara|r
    .turnin 24737 >>Turn in Super Sticky
    .turnin 24700 >>Turn in Hard to Harvest
    .accept 24699 >>Accept Gormashh the Glutinous
    .target Tara
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
    #completewith Along98
    >>As you go: Kill |cRXP_ENEMY_Un'Goro Thunderers|r. Loot them for |cRXP_LOOT_Un'Goro Thunderer Pelt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24717,3 --Un'Goro Thunderer Pelt (2)
    .mob Un'Goro Thunderer
step
    #label Along98
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
    .goto 78,76.44,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithis Moonwarden|r
    .turnin 24855 >>Turn in Aberrant Flora
    .accept 24721 >>Accept The Eastern Pylon
    .target Ithis Moonwarden
step
    .goto 78,77.16,49.98
    >>Click the |cRXP_PICK_Eastern Crystal Pylon|r
    .complete 24721,1 --Eastern Crystal Pylon
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 51 - 58 Un'Goro Crater
#subweight -51
#name 53-55 Un'Goro Crater: around Garl Stormclaw
--RouteBuilder:next
#next Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\55-56 Silithus;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

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
    .turnin 24718 >>Turn in The Mighty U'cha
    .target Gremix
    .isOnQuest 24718
step
    .goto 78,43.30,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremix|r
    .accept 24722 >>Accept The Northern Pylon
    .target Gremix
    .isQuestTurnedIn 24717 --any of: The Apes of Un'Goro
step
    .goto 78,43.44,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna Remtravel|r
    .turnin 24926 >>Turn in Serving A-Me 01
    .target Karna Remtravel
    .isOnQuest 24926
step
    .goto 78,59.64,29.24
    >>Kill |cRXP_ENEMY_Gormashh|r and loot |cRXP_LOOT_Unbelievably Sticky Tar|r
    .complete 24699,1 --Unbelievably Sticky Tar (1)
    .mob Gormashh
    .isOnQuest 24699
step
    .goto 78,59.30,17.90
    >>Pick up |cRXP_PICK_Un'Goro Coconut|r from the ground
    .collect 50237,1,24715,1 --Un'Goro Coconut (1)
    .isOnQuest 24715
step
    .goto 78,56.52,12.54
    >>Click the |cRXP_PICK_Northern Crystal Pylon|r
    .complete 24722,1 --Northern Crystal Pylon
    .isOnQuest 24722
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
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .turnin 6341 >>Turn in To Darnassus
    .target Sister Aquinne
    .isOnQuest 6341
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .accept 6342 >>Accept An Unexpected Gift
    .target Sister Aquinne
    .isQuestTurnedIn 6341 --any of: To Darnassus
    .xp <5,1
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .turnin 6342 >>Turn in An Unexpected Gift
    .target Leora
    .isOnQuest 6342
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .accept 6343 >>Accept Return to Nyoma
    .target Leora
    .isQuestTurnedIn 6342 --any of: An Unexpected Gift
    .xp <5,1
step
    +|cRXP_WARN_That is all of Un'Goro Crater for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Felwood|r: Hero's Call: Felwood! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Hero's Call: Feralas!, Hero's Call: Thousand Needles! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade Calls << Druid
    >>|cRXP_FRIENDLY_Southern Barrens|r: Hero's Call: Southern Barrens! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine, Meet with Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker, Meet with Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls, Meet with Wulf Hansreim << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7, Meet with Lord Tony Romano << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer, Meet with Farseer Umbrua << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum, Meet with Maginor Dumas << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with High Priestess Laurena << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Tanaris|r: Hero's Call: Tanaris! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
    >>|cRXP_FRIENDLY_Winterspring|r: Hero's Call: Winterspring! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Repairing A-Me 01
step
    +|cRXP_WARN_Suggested next zones at level 54|r: |cRXP_FRIENDLY_Winterspring|r (about 1.3 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Silithus|r (about 1.0 levels of quests, starting around Huum Wildmane; 1 quest from here hands in there), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.9 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Winterspring --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Un'Goro Crater is planned from level 57.|r Load its guide for level 57 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 51 - 58 Un'Goro Crater
#subweight -51
#name 57-58 Un'Goro Crater
--RouteBuilder:next
#next Zone Routes (Alliance)\55-56 Silithus

step
    #loop
    .goto 78,62.07,19.17,0
    .goto 78,62.07,19.17,40,0
    .goto 78,58.08,20.59,40,0
    >>Pick up |cRXP_PICK_Un'Goro Coconut|r from the ground
    .collect 50237,1,24715,1 --Un'Goro Coconut (1)
    .isOnQuest 24715
step
    .goto 78,63.82,19.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
    .turnin 24715 >>Turn in Repairing A-Me 01
    .target A-Me 01
    .isQuestComplete 24715
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28528 >>Accept Hero's Call: Silithus!
step
    +|cRXP_WARN_End of the Un'Goro Crater route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Silithus|r: Hero's Call: Silithus! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 57|r: |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane; 1 quest from here hands in there). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
