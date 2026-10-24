-- 81-81 Shimmering Expanse: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Shimmering Expanse.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 81-81 Shimmering Expanse
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step
    .goto 205,41.29,34.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felice|r
    .accept 25360 >>Accept Crabby Patrons
    .target Felice
step
    #loop
    .goto 205,41.96,34.79,0
    .goto 205,41.96,34.79,40,0
    .goto 205,40.36,36.60,40,0
    .goto 205,41.07,29.92,40,0
    >>Kill |cRXP_ENEMY_Agitated Green Sand Crabs|r and |cRXP_ENEMY_Green Sand Crabs|r
    .complete 25360,1 --Agitated Green Sand Crab (10)
    .mob Agitated Green Sand Crab
    .mob Green Sand Crab
step
    .goto 205,41.29,34.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felice|r
    .turnin 25360 >>Turn in Crabby Patrons
    .target Felice
step
    .goto 205,64.06,42.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshe Chaosrender|r
    .accept 25439 >>Accept Vengeful Heart
    .accept 25441 >>Accept Vortex
    .target Toshe Chaosrender
step
    #loop
    .goto 205,65.58,43.45,0
    .goto 205,65.58,43.45,40,0
    .goto 205,66.37,45.70,40,0
    .goto 205,67.96,48.06,40,0
    >>Kill |cRXP_ENEMY_Zin'jatar Ravagers|r
    .complete 25439,1 --Zin'jatar Ravager slain (10)
    .mob Zin'jatar Ravager
step
    #loop
    .goto 205,67.16,43.87,0
    .goto 205,67.16,43.87,40,0
    .goto 205,65.86,42.70,40,0
    .goto 205,67.28,47.34,40,0
    >>Interact with |cRXP_FRIENDLY_Swarming Serpents|r
    .complete 25441,1 --Swarming Serpent (30)
    .target Swarming Serpent
step
    .goto 205,64.06,42.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshe Chaosrender|r
    .turnin 25441 >>Turn in Vortex
    .turnin 25439 >>Turn in Vengeful Heart
    .accept 25440 >>Accept Fathom-Lord Zin'jatar
    .target Toshe Chaosrender
step
    .goto 205,67.30,49.72
    >>Kill |cRXP_ENEMY_Fathom-Lord Zin'jatar|r
    .complete 25440,1 --Fathom-Lord Zin'jatar slain (1)
    .mob Fathom-Lord Zin'jatar
step
    .goto 205,64.06,42.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshe Chaosrender|r
    .turnin 25440 >>Turn in Fathom-Lord Zin'jatar
    .target Toshe Chaosrender
step
    .goto 205,49.23,42.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .accept 25890 >>Accept Nespirah
    .target Earthmender Duarn
step
    .goto 205,51.70,52.10
    >>Find a way to communicate with Nespirah
    .complete 25890,1 --Find a way to communicate with Nespirah
step
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25890 >>Turn in Nespirah
    .accept 25900 >>Accept Making Contact
    .target Earthmender Duarn
step
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .complete 25900,1 --Earthmender Duarn
    .target Earthmender Duarn
step
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25900 >>Turn in Making Contact
    .accept 25907 >>Accept Slave Labor
    .accept 25908 >>Accept Stick it to Them
    .target Earthmender Duarn
step
    #loop
    .goto 205,55.41,54.53,0
    .goto 205,55.41,54.53,40,0
    .goto 205,57.20,54.05,40,0
    .goto 205,57.02,59.90,40,0
    >>Kill |cRXP_ENEMY_Idra'kess Sentinels|r
    >>Kill |cRXP_ENEMY_Enslaved Alliance Pearl Miners|r and |cRXP_ENEMY_Enslaved Horde Pearl Miners|r
    >>Kill |cRXP_ENEMY_Idra'kess Enchantress|r
    .complete 25908,1 --Idra'kess Sentinel slain (7)
    .complete 25907,1 --Enslaved Alliance Pearl Miner (8)
    .complete 25908,2 --Idra'kess Enchantress slain (7)
    .mob Idra'kess Sentinel
    .mob Enslaved Alliance Pearl Miner
    .mob Enslaved Horde Pearl Miner
    .mob Idra'kess Enchantress
step
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25907 >>Turn in Slave Labor
    .turnin 25908 >>Turn in Stick it to Them
    .accept 25909 >>Accept Capture the Crab << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Earthmender Duarn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,53.02,58.31
    >>Interact with |cRXP_FRIENDLY_Deepseeker Crab|r
    .complete 25909,1 --Deepseeker Crab
    .target Deepseeker Crab
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25909 >>Turn in Capture the Crab
    .accept 25916 >>Accept Breaking Through
    .target Earthmender Duarn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .complete 25916,1 --Earthmender Duarn
    .target Earthmender Duarn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25916 >>Turn in Breaking Through
    .accept 25917 >>Accept We Are Not Alone
    .target Earthmender Duarn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,62.68,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .turnin 25917 >>Turn in We Are Not Alone
    .accept 25919 >>Accept Body Blows
    .target Captain Taylor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,62.60,49.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r
    .accept 25920 >>Accept Still Valuable
    .target Wavespeaker Valoren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along22
    >>As you go: Click the |cRXP_PICK_Nespirah Abscess|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25919,1 --Nespirah Abscess
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along22
    .goto 205,62.72,49.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r
    .accept 25918 >>Accept Hopelessly Gearless
    .target Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,63.36,52.46,0
    .goto 205,63.36,52.46,40,0
    .goto 205,61.17,53.05,40,0
    >>Loot the |cRXP_PICK_Idra'kess Weapon Racks|r for |cRXP_LOOT_Purloined Polearm|r
    >>Kill |cRXP_ENEMY_Idra'kess Warlords|r and |cRXP_ENEMY_Idra'kess Prophets|r. Loot them for |cRXP_LOOT_Mysterious Pearl|r
    >>Click the |cRXP_PICK_Nespirah Abscess|r
    .complete 25918,1 --Purloined Polearm (4)
    .complete 25920,1 --Mysterious Pearl (5)
    .complete 25919,1 --Nespirah Abscess
    .mob Idra'kess Warlord
    .mob Idra'kess Prophet
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,62.72,49.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r
    .turnin 25918 >>Turn in Hopelessly Gearless
    .target Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,62.60,49.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r
    .turnin 25920 >>Turn in Still Valuable
    .target Wavespeaker Valoren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,62.68,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .turnin 25919 >>Turn in Body Blows
    .accept 25921 >>Accept Overseer Idra'kess
    .target Captain Taylor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,57.53,56.34
    >>Kill |cRXP_ENEMY_Overseer Idra'kess|r
    .complete 25921,1 --Overseer Idra'kess slain (1)
    .mob Overseer Idra'kess
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25921 >>Turn in Overseer Idra'kess
    .accept 25922 >>Accept Waking the Beast
    .target Earthmender Duarn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,51.62,52.23
    >>Kill |cRXP_ENEMY_Earthmender Duarn|r
    >>Kill |cRXP_ENEMY_Swiftfin Seahorse|r
    .complete 25922,1 --Earthmender Duarn slain (1)
    .complete 25922,2 --Swiftfin Seahorse slain (1)
    .mob Earthmender Duarn
    .mob Swiftfin Seahorse
step
    .goto 205,49.20,56.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frell "Fixit" Fastbolt|r
    .target Frell "Fixit" Fastbolt
    .home >>Set your Hearthstone to Frell "Fixit" Fastbolt's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.16,56.98,0
    .goto 205,49.16,56.98,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,33.23,68.36,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25922 >>Turn in Waking the Beast
    .accept 25536 >>Accept Cold Welcome
    .unitscan Captain Taylor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.54,57.50,0
    .goto 205,49.54,57.50,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25535 >>Accept A Powerful Need To Eat
    .unitscan Wavespeaker Valoren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,45.20,51.86,0
    .goto 205,45.20,51.86,40,0
    .goto 205,45.12,48.43,40,0
    >>Kill |cRXP_ENEMY_Glimmerdeep Tidehunters|r
    .complete 25536,1 --Glimmerdeep Tidehunter slain (10)
    .mob Glimmerdeep Tidehunter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,48.99,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Divemaster Birmingham|r
    .turnin 25535 >>Turn in A Powerful Need To Eat
    .accept 25539 >>Accept Clamming Up
    .target Divemaster Birmingham
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along36
    >>As you go: Pick up |cRXP_PICK_Glimmerdeep Clam|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 25539,1 --Glimmerdeep Clam (16)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,48.99,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25537 >>Accept Art of Attraction
    .unitscan Engineer Hexascrub
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along36
    .goto 205,50.15,51.25
    >>Use the Anemone Chemical Extraction Device to gather 8 Anemone Chemical Samples from the red anemones along the walls of Glimmerdeep Gorge.
    .complete 25537,1 --Anemone Gas Bunny
    .target Anemone Gas Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,50.05,54.01,0
    .goto 205,50.05,54.01,40,0
    .goto 205,50.55,47.99,40,0
    .goto 205,47.12,47.13,40,0
    >>Pick up |cRXP_PICK_Glimmerdeep Clam|r from the ground
    .complete 25539,1 --Glimmerdeep Clam (16)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,48.99,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Divemaster Birmingham|r
    .turnin 25539 >>Turn in Clamming Up while you are here
    .isQuestComplete 25539
    .target Divemaster Birmingham
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,48.99,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25537 >>Turn in Art of Attraction
    .accept 25538 >>Accept Odor Coater
    .unitscan Engineer Hexascrub
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,48.84,48.35,0
    .goto 205,48.84,48.35,40,0
    .goto 205,47.31,50.67,40,0
    >>Interact with |cRXP_FRIENDLY_Glimmerdeep Divers|r
    .complete 25538,1 --Glimmerdeep Diver (8)
    .target Glimmerdeep Diver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,48.99,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25538 >>Turn in Odor Coater
    .unitscan Engineer Hexascrub
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,48.99,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Divemaster Birmingham|r
    .turnin 25539 >>Turn in Clamming Up
    .accept 25540 >>Accept Bellies Await
    .target Divemaster Birmingham
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.54,57.50,0
    .goto 205,49.54,57.50,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25540 >>Turn in Bellies Await
    .unitscan Wavespeaker Valoren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,49.69,57.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Levia Dreamwaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25581 >>Accept An Occupation of Time
    .unitscan Levia Dreamwaker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.17,56.95,0
    .goto 205,49.17,56.95,40,0
    .goto 205,39.11,78.71,40,0
    .goto 205,33.00,67.80,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25582 >>Accept A Better Vantage
    .accept 25579 >>Accept Caught Off-Guard
    .unitscan Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.16,56.98,0
    .goto 205,49.16,56.98,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,33.23,68.36,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25536 >>Turn in Cold Welcome
    .accept 25580 >>Accept Swift Approach
    .unitscan Captain Taylor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along48
    >>As you go: Kill |cRXP_ENEMY_Azsh'ir Patrollers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25579,1 --Azsh'ir Patroller slain (10)
    .mob Azsh'ir Patroller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,42.00,61.06,0
    .goto 205,42.00,61.06,40,0
    .goto 205,40.36,58.91,40,0
    >>Kill |cRXP_ENEMY_Azsh'ir Monitors|r
    >>Click the |cRXP_PICK_Lestharia Vashj|r
    .complete 25580,1 --Azsh'ir Monitor slain (8)
    .complete 25581,1 --Lestharia Vashj
    .mob Azsh'ir Monitor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along47
    >>As you go: Click the |cRXP_PICK_Queen Azshara|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25581,2 --Queen Azshara
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along47
    .goto 205,39.10,57.50
    >>On the lowest level of the ruins, scout the northern end of the Quel'Dormir Gardens, the passage that leads under the ruins west of the gardens, and the structures at the southeast corner of the ruins, below the bridges.
    .complete 25582,1 --Vashj'ir Gardens Credit
    .target Vashj'ir Gardens Credit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along48
    .goto 205,38.61,58.96
    >>Click the |cRXP_PICK_Queen Azshara|r
    .complete 25581,2 --Queen Azshara
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,36.20,63.00
    >>On the lowest level of the ruins, scout the northern end of the Quel'Dormir Gardens, the passage that leads under the ruins west of the gardens, and the structures at the southeast corner of the ruins, below the bridges.
    .complete 25582,2 --Vashj'ir Underpass Credit
    .target Vashj'ir Underpass Credit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop27716x1
    >>|cRXP_LOOT_Ancient Elven Etching|r can drop from |cRXP_ENEMY_Azsh'ir Patroller|r, |cRXP_ENEMY_Azsh'ir Infantry|r. Use it to start the quest if you get one
    .collect 62281,1,27716 --Ancient Elven Etching (1)
    .accept 27716 >>Accept Piece of the Past
    .use 62281
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop27716x1
    #loop
    .goto 205,38.44,66.04,0
    .goto 205,38.44,66.04,40,0
    .goto 205,39.75,67.69,40,0
    .goto 205,40.41,70.53,40,0
    >>Click the |cRXP_PICK_High Priestess Siralen|r
    >>Click the |cRXP_PICK_Ranger Valarian|r
    >>Kill |cRXP_ENEMY_Azsh'ir Patrollers|r
    .complete 25581,4 --High Priestess Siralen
    .complete 25581,3 --Ranger Valarian
    .complete 25579,1 --Azsh'ir Patroller slain (10)
    .mob Azsh'ir Patroller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,40.50,74.40
    >>On the lowest level of the ruins, scout the northern end of the Quel'Dormir Gardens, the passage that leads under the ruins west of the gardens, and the structures at the southeast corner of the ruins, below the bridges.
    .complete 25582,3 --Vashj'ir Southern Structures Credit
    .target Vashj'ir Southern Structures Credit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,40.50,75.47
    >>Click the |cRXP_PICK_Enormous Skull|r
    .accept 25583 >>Accept Upon the Scene of Battle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Frell "Fixit" Fastbolt's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.17,56.95,0
    .goto 205,49.17,56.95,40,0
    .goto 205,39.11,78.71,40,0
    .goto 205,33.00,67.80,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25583 >>Turn in Upon the Scene of Battle
    .turnin 25579 >>Turn in Caught Off-Guard
    .turnin 25582 >>Turn in A Better Vantage
    .unitscan Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.16,56.98,0
    .goto 205,49.16,56.98,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,33.23,68.36,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25580 >>Turn in Swift Approach
    .unitscan Captain Taylor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.54,57.50,0
    .goto 205,49.54,57.50,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25760 >>Accept Visions of the Past: The Invasion of Vashj'ir
    .unitscan Wavespeaker Valoren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,49.54,57.50
    >>Use the Blade of the Naz'jar Battlemaiden at the battle site at the southeast end of the ruins.
    .complete 25760,1 --Battlemaiden Vision 1 Credit (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.54,57.50,0
    .goto 205,49.54,57.50,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25760 >>Turn in Visions of the Past: The Invasion of Vashj'ir
    .accept 27393 >>Accept The Call of the Blade
    .accept 25747 >>Accept Looking Forward
    .unitscan Wavespeaker Valoren
step
    .goto 205,40.57,75.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .accept 25619 >>Accept Reoccupation
    .target Fathom-Stalker Azjentus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,40.50,75.47
    >>Click the |cRXP_PICK_Enormous Skull|r
    .turnin 27393 >>Turn in The Call of the Blade while you are here
    .isQuestComplete 27393
step
    #loop
    .goto 205,41.07,73.27,0
    .goto 205,41.07,73.27,40,0
    .goto 205,39.71,72.81,40,0
    >>Kill |cRXP_ENEMY_Kvaldir Deepwalkers|r and |cRXP_ENEMY_Kvaldir Marauders|r
    .complete 25619,1 --Kvaldir Deepwalker (8)
    .mob Kvaldir Deepwalker
    .mob Kvaldir Marauder
step
    .goto 205,40.57,75.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .turnin 25619 >>Turn in Reoccupation
    .accept 25620 >>Accept The Revered Lady
    .target Fathom-Stalker Azjentus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,40.50,75.47
    >>Click the |cRXP_PICK_Enormous Skull|r
    .turnin 27393 >>Turn in The Call of the Blade
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,33.00,67.80,0
    .goto 205,33.00,67.80,40,0
    .goto 205,39.11,78.71,40,0
    .goto 205,49.17,56.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25747 >>Turn in Looking Forward
    .accept 25748 >>Accept Clear Goals
    .unitscan Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop27716x2
    >>|cRXP_LOOT_Ancient Elven Etching|r can drop from |cRXP_ENEMY_Azsh'ir Patroller|r, |cRXP_ENEMY_Azsh'ir Infantry|r. Use it to start the quest if you get one
    .collect 62281,1,27716 --Ancient Elven Etching (1)
    .accept 27716 >>Accept Piece of the Past
    .use 62281
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop27716x2
    #loop
    .goto 205,38.44,79.32,0
    .goto 205,38.44,79.32,40,0
    .goto 205,40.57,81.50,40,0
    >>Kill |cRXP_ENEMY_Naz'jar Serpent Guards|r, |cRXP_ENEMY_Azsh'ir Abyss Priestess|r and |cRXP_ENEMY_Azsh'ir Infantries|r
    .complete 25748,1 --Naz'jar Serpent Guard (8)
    .mob Naz'jar Serpent Guard
    .mob Azsh'ir Abyss Priestess
    .mob Azsh'ir Infantry
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,33.00,67.80,0
    .goto 205,33.00,67.80,40,0
    .goto 205,39.11,78.71,40,0
    .goto 205,49.17,56.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25748 >>Turn in Clear Goals
    .unitscan Admiral Dvorek
step
    .goto 205,39.40,58.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r
    .turnin 25620 >>Turn in The Revered Lady
    .accept 25637 >>Accept To the Fathom-Lord's Call
    .target Lady Naz'jar
step
    .goto 205,37.21,77.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sira'kess Tide Priestess|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25658 >>Accept Built to Last
    .unitscan Sira'kess Tide Priestess
step
    #loop
    .goto 205,34.90,62.35,0
    .goto 205,34.90,62.35,40,0
    .goto 205,31.02,60.00,40,0
    .goto 205,30.57,64.40,40,0
    .goto 205,34.74,68.83,40,0
    >>Click the |cRXP_PICK_Nar'shola Ward|r
    >>Kill |cRXP_ENEMY_Kvaldir Pillagers|r, |cRXP_ENEMY_Kvaldir Wasteroamers|r and |cRXP_ENEMY_Kvaldir Plunderers|r
    .complete 25658,1 --Nar'shola Ward
    .complete 25637,1 --Kvaldir Pillager (8)
    .mob Kvaldir Pillager
    .mob Kvaldir Wasteroamer
    .mob Kvaldir Plunderer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,33.23,68.36,0
    .goto 205,33.23,68.36,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,49.16,56.98,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25749 >>Accept Not Entirely Unprepared
    .unitscan Captain Taylor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along69
    >>As you go: Kill |cRXP_ENEMY_Alliance Lookouts|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25749,1 --Alliance Lookout (8)
    .mob Alliance Lookout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along69
    .goto 205,48.99,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25751 >>Accept Properly Inspired
    .unitscan Engineer Hexascrub
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,32.27,69.85,0
    .goto 205,32.27,69.85,40,0
    .goto 205,35.64,72.53,40,0
    .goto 205,36.47,74.56,40,0
    >>Kill |cRXP_ENEMY_Alliance Lookouts|r
    >>Pick up |cRXP_PICK_Bloated Kelp Bulb|r from the ground
    .complete 25749,1 --Alliance Lookout (8)
    .complete 25751,1 --Bloated Kelp Bulb (8)
    .mob Alliance Lookout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,48.99,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25751 >>Turn in Properly Inspired
    .unitscan Engineer Hexascrub
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,33.23,68.36,0
    .goto 205,33.23,68.36,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,49.16,56.98,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25749 >>Turn in Not Entirely Unprepared
    .unitscan Captain Taylor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,33.00,67.80,0
    .goto 205,33.00,67.80,40,0
    .goto 205,39.11,78.71,40,0
    .goto 205,49.17,56.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25752 >>Accept Swift Action
    .unitscan Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_Azsh'ir Archaeans|r. Kill |cRXP_ENEMY_Azsh'ir Soldiers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25752,4 --Azsh'ir Archaean slain (8)
    .complete 25752,2 --Azsh'ir Soldier slain (100)
    .mob Azsh'ir Archaean
    .mob Azsh'ir Soldier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,35.33,66.20,0
    .goto 205,35.33,66.20,40,0
    .goto 205,30.11,68.28,40,0
    .goto 205,30.08,64.24,40,0
    >>Kill |cRXP_ENEMY_Azsh'ir Wave Screamers|r
    .complete 25752,3 --Azsh'ir Wave Screamer slain (20)
    .mob Azsh'ir Wave Screamer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,49.69,57.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Levia Dreamwaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25581 >>Turn in An Occupation of Time
    .unitscan Levia Dreamwaker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along76
    .goto 205,49.69,57.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Levia Dreamwaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27716 >>Turn in Piece of the Past
    .unitscan Levia Dreamwaker
    .isOnQuest 27716
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,31.49,68.68,0
    .goto 205,31.49,68.68,40,0
    .goto 205,31.06,71.98,40,0
    .goto 205,35.30,71.83,40,0
    .goto 205,34.90,66.57,40,0
    >>Kill |cRXP_ENEMY_Azsh'ir Archaeans|r
    >>Kill |cRXP_ENEMY_Azsh'ir Soldiers|r
    .complete 25752,4 --Azsh'ir Archaean slain (8)
    .complete 25752,2 --Azsh'ir Soldier slain (100)
    .mob Azsh'ir Archaean
    .mob Azsh'ir Soldier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,32.91,69.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .complete 25752,1 --Engineer Hexascrub
    .target Engineer Hexascrub
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,33.00,67.80,0
    .goto 205,33.00,67.80,40,0
    .goto 205,39.11,78.71,40,0
    .goto 205,49.17,56.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25752 >>Turn in Swift Action
    .unitscan Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,33.23,68.36,0
    .goto 205,33.23,68.36,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,49.16,56.98,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25753 >>Accept Fallen But Not Forgotten
    .unitscan Captain Taylor
step
    .goto 205,37.21,77.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sira'kess Tide Priestess|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25658 >>Turn in Built to Last
    .unitscan Sira'kess Tide Priestess
step
    .goto 205,36.43,78.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Lord Zin'jatar|r
    .turnin 25637 >>Turn in To the Fathom-Lord's Call
    .accept 25659 >>Accept Not Soon Forgotten
    .target Fathom-Lord Zin'jatar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,36.20,79.60,0
    .goto 205,36.20,79.60,40,0
    .goto 205,36.60,77.00,40,0
    .goto 205,34.40,83.20,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Injured Assault Volunteer|r
    .complete 25753,1 --Injured Assault Volunteer (6)
    .target Injured Assault Volunteer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Frell "Fixit" Fastbolt's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.17,56.95,0
    .goto 205,49.17,56.95,40,0
    .goto 205,39.11,78.71,40,0
    .goto 205,33.00,67.80,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25754 >>Accept Gauging Success
    .unitscan Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,49.17,56.95
    >>Scout the northwestern portion of the circular terrace and the tunnel under the main stairs to the north. Both locations are on Nar'shola Terrace, the middle level of the ruins.
    .complete 25754,1 --Terrace Tunnel Credit (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,49.17,56.95
    >>Scout the northwestern portion of the circular terrace and the tunnel under the main stairs to the north. Both locations are on Nar'shola Terrace, the middle level of the ruins.
    .complete 25754,2 --Northwestern Terrace Credit (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.17,56.95,0
    .goto 205,49.17,56.95,40,0
    .goto 205,39.11,78.71,40,0
    .goto 205,33.00,67.80,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Dvorek|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25754 >>Turn in Gauging Success
    .unitscan Admiral Dvorek
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.16,56.98,0
    .goto 205,49.16,56.98,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,33.23,68.36,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25753 >>Turn in Fallen But Not Forgotten
    .unitscan Captain Taylor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.54,57.50,0
    .goto 205,49.54,57.50,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25755 >>Accept Visions of the Past: The Slaughter of Biel'aran Ridge
    .unitscan Wavespeaker Valoren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,49.54,57.50
    >>Witness the continuing story of the Battlemaiden by using her broken blade at the site of the Kvaldir General's death.
    .complete 25755,1 --Battlemaiden Vision 2 Credit (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.54,57.50,0
    .goto 205,49.54,57.50,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25755 >>Turn in Visions of the Past: The Slaughter of Biel'aran Ridge
    .unitscan Wavespeaker Valoren
step
    .goto 205,28.56,78.59
    >>Kill |cRXP_ENEMY_Varkul the Unrelenting|r
    .complete 25659,1 --Varkul the Unrelenting slain (1)
    .mob Varkul the Unrelenting
step
    .goto 205,29.00,78.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25858 >>Accept By Her Lady's Word
    .unitscan Lady Naz'jar
step
    #completewith Along95
    >>As you go: Kill |cRXP_ENEMY_Overseer Idra'kess|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25858,3 --Overseer Idra'kess slain (1)
    .mob Overseer Idra'kess
step
    .goto 205,33.12,77.89
    >>Kill |cRXP_ENEMY_Lady Sira'kess|r
    >>Kill |cRXP_ENEMY_Fathom-Lord Zin'jatar|r
    .complete 25858,2 --Lady Sira'kess slain (1)
    .complete 25858,1 --Fathom-Lord Zin'jatar slain (1)
    .mob Lady Sira'kess
    .mob Fathom-Lord Zin'jatar
step
    #label Along95
    .goto 205,36.43,78.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Lord Zin'jatar|r
    .turnin 25659 >>Turn in Not Soon Forgotten
    .target Fathom-Lord Zin'jatar
step
    .goto 205,36.84,79.75
    >>Kill |cRXP_ENEMY_Overseer Idra'kess|r
    .complete 25858,3 --Overseer Idra'kess slain (1)
    .mob Overseer Idra'kess
step
    .goto 205,46.45,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .turnin 25858 >>Turn in By Her Lady's Word
    .accept 25859 >>Accept No Trespass Forgiven
    .target Fathom-Stalker Azjentus
step
    .goto 205,46.33,78.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naz'jar Honor Guard|r
    .accept 25862 >>Accept Stolen Property
    .target Naz'jar Honor Guard
step
    #loop
    .goto 205,49.60,77.17,0
    .goto 205,49.60,77.17,40,0
    .goto 205,51.50,80.21,40,0
    .goto 205,49.95,81.32,40,0
    >>Kill |cRXP_ENEMY_Kvaldir Sandterrors|r, |cRXP_ENEMY_Kvaldir High-Shamans|r and |cRXP_ENEMY_Kvaldir Limbrippers|r
    .complete 25859,1 --Kvaldir Sandterror (8)
    .mob Kvaldir Sandterror
    .mob Kvaldir High-Shaman
    .mob Kvaldir Limbripper
step
    .goto 205,57.16,85.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executioner Verathress|r
    .accept 25861 >>Accept Setting An Example
    .target Executioner Verathress
step
    .goto 205,57.16,85.17
    >>Bring a Kvaldir High-Shaman to the feet of Executioner Varathress.
    .complete 25861,1 --Executioner Verathress
    .target Executioner Verathress
step
    .goto 205,57.16,85.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executioner Verathress|r
    .turnin 25861 >>Turn in Setting An Example
    .target Executioner Verathress
step
    .goto 205,33.11,78.58
    >>Click the |cRXP_PICK_Crucible of Nazsharin|r
    .turnin 25862 >>Turn in Stolen Property
    .accept 25863 >>Accept Chosen Burden
step
    .goto 205,46.45,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .turnin 25859 >>Turn in No Trespass Forgiven
    .target Fathom-Stalker Azjentus
step
    .goto 205,29.00,78.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25863 >>Turn in Chosen Burden
    .accept 26191 >>Accept The Culmination of Our Efforts
    .turnin 26191 >>Turn in The Culmination of Our Efforts
    .unitscan Lady Naz'jar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,33.23,68.36,0
    .goto 205,33.23,68.36,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,49.16,56.98,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25893 >>Accept Desperate Plan
    .unitscan Captain Taylor
    .isQuestTurnedIn 25892 --any of: Losing Ground
    .xp <80,1
step
    .goto 205,56.02,13.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Gadra|r
    .turnin 25471 >>Turn in Across the Great Divide
    .target Farseer Gadra
    .isOnQuest 25471
step
    .goto 205,56.02,13.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Gadra|r
    .accept 25334 >>Accept The Looming Threat
    .target Farseer Gadra
    .isQuestTurnedIn 25471 --any of: Across the Great Divide
    .xp <80,1
step
    .goto 205,56.02,13.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Gadra|r
    .complete 25334,1 --Farseer Gadra
    .target Farseer Gadra
    .isOnQuest 25334
step
    .goto 205,56.02,13.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Gadra|r
    .turnin 25334 >>Turn in The Looming Threat
    .target Farseer Gadra
    .isOnQuest 25334
step
    .goto 205,56.02,13.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Gadra|r
    .accept 25164 >>Accept Backed Into a Corner
    .target Farseer Gadra
    .isQuestTurnedIn 25334 --any of: The Looming Threat
    .xp <80,1
step
    .goto 205,55.76,12.82
    >>Kill |cRXP_ENEMY_Fathom-Lord Zin'jatar|r
    .complete 25164,2 --Fathom-Lord Zin'jatar (1)
    .mob Fathom-Lord Zin'jatar
    .isOnQuest 25164
step
    .goto 205,55.49,12.82
    >>Kill |cRXP_ENEMY_Zin'jatar Fathom-Stalkers|r
    .complete 25164,1 --Zin'jatar Fathom-Stalker (8)
    .mob Zin'jatar Fathom-Stalker
    .isOnQuest 25164
step
    .goto 205,56.02,13.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Gadra|r
    .turnin 25164 >>Turn in Backed Into a Corner
    .target Farseer Gadra
    .isOnQuest 25164
step
    .goto 205,53.28,33.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshe Chaosrender|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25221 >>Accept Rundown
    .unitscan Toshe Chaosrender
    .isQuestTurnedIn 25164 --any of: Backed Into a Corner
    .xp <80,1
step
    #loop
    .goto 205,54.24,27.50,0
    .goto 205,54.24,27.50,40,0
    .goto 205,56.66,29.10,40,0
    .goto 205,52.59,33.34,40,0
    >>Kill |cRXP_ENEMY_Fleeing Zin'jatar Fathom-Stalkers|r
    .complete 25221,1 --Fleeing Zin'jatar Fathom-Stalker slain (8)
    .mob Fleeing Zin'jatar Fathom-Stalker
    .isOnQuest 25221
step
    .goto 205,53.28,33.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshe Chaosrender|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25221 >>Turn in Rundown
    .unitscan Toshe Chaosrender
    .isOnQuest 25221
step
    .goto 205,53.28,33.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshe Chaosrender|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25222 >>Accept Silver Tide Hollow
    .unitscan Toshe Chaosrender
    .isQuestTurnedIn 25221 --any of: Rundown
    .xp <80,1
step
    .goto 205,49.58,42.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felora Firewreath|r
    .turnin 25222 >>Turn in Silver Tide Hollow
    .target Felora Firewreath
    .isOnQuest 25222
step
    .goto 205,49.58,42.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felora Firewreath|r
    .accept 25216 >>Accept The Great Sambino
    .accept 25215 >>Accept A Distracting Scent
    .target Felora Firewreath
    .isQuestTurnedIn 25222 --any of: Silver Tide Hollow
    .xp <80,1
step
    .goto 205,50.28,41.31
    >>Kill |cRXP_ENEMY_Dead Zin'jatar Raiders|r
    .complete 25215,1 --Dead Zin'jatar Raider (3)
    .mob Dead Zin'jatar Raider
    .isOnQuest 25215
step
    .goto 205,49.58,42.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felora Firewreath|r
    .turnin 25215 >>Turn in A Distracting Scent
    .target Felora Firewreath
    .isOnQuest 25215
step
    .goto 205,49.23,42.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .accept 25219 >>Accept Don't be Shellfish
    .target Earthmender Duarn
    .isQuestTurnedIn 25222 --any of: Silver Tide Hollow
    .xp <80,1
step
    .goto 205,49.13,41.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Movra|r
    .accept 25220 >>Accept Slippery Threat
    .target Caretaker Movra
    .isQuestTurnedIn 25222 --any of: Silver Tide Hollow
    .xp <80,1
step
    #loop
    .goto 205,43.72,37.68,0
    .goto 205,43.72,37.68,40,0
    .goto 205,42.79,40.82,40,0
    .goto 205,39.92,36.74,40,0
    >>Kill |cRXP_ENEMY_Spiketooth Eels|r
    .complete 25220,1 --Spiketooth Eel (12)
    .mob Spiketooth Eel
    .isOnQuest 25220
step
    .goto 205,41.29,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Great Sambino|r
    .turnin 25216 >>Turn in The Great Sambino
    .target The Great Sambino
    .isOnQuest 25216
step
    .goto 205,41.29,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Great Sambino|r
    .accept 25218 >>Accept Undersea Inflation
    .target The Great Sambino
    .isQuestTurnedIn 25216 --any of: The Great Sambino
    .xp <80,1
step
    .goto 205,41.29,34.24
    >>Fill one of Sambino's Air Balloons and find his Lost Air Valve.
    .complete 25218,1 --Sambino's Air Balloon (1)
    .isOnQuest 25218
step
    #loop
    .goto 205,42.52,33.85,0
    .goto 205,42.52,33.85,40,0
    .goto 205,41.07,29.92,40,0
    >>Kill |cRXP_ENEMY_Green Sand Crab|r and loot |cRXP_LOOT_Sambino's Air Valve|r. It can also be picked up from |cRXP_PICK_Sambino's Air Valve|r on the ground
    .complete 25218,2 --Sambino's Air Valve (1)
    .mob Green Sand Crab
    .isOnQuest 25218
step
    .goto 205,41.29,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Great Sambino|r
    .turnin 25218 >>Turn in Undersea Inflation
    .target The Great Sambino
    .isOnQuest 25218
step
    .goto 205,41.29,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Great Sambino|r
    .accept 25217 >>Accept Totem Modification
    .target The Great Sambino
    .isQuestTurnedIn 25218 --any of: Undersea Inflation
    .xp <80,1
step
    .goto 205,41.29,34.24
    >>Plant one of Sambino's modified totems in the sand of Silver Tide Trench.
    .complete 25217,1 --Sambino's Modified Earthbind Totem (1)
    .isOnQuest 25217
step
    .goto 205,41.29,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Great Sambino|r
    .turnin 25217 >>Turn in Totem Modification
    .target The Great Sambino
    .isOnQuest 25217
step
    .goto 205,41.29,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Great Sambino|r
    .accept 25456 >>Accept Back in One Piece
    .target The Great Sambino
    .isQuestTurnedIn 25217 --any of: Totem Modification
    .xp <80,1
step
    #loop
    .goto 205,41.07,34.33,0
    .goto 205,41.07,34.33,40,0
    .goto 205,44.66,34.83,40,0
    .goto 205,46.02,40.26,40,0
    >>Kill |cRXP_ENEMY_Coilshell Sifters|r. Loot them for |cRXP_LOOT_Coilshell Sifter|r
    .complete 25219,1 --Coilshell Sifter (10)
    .mob Coilshell Sifter
    .isOnQuest 25219
step
    .goto 205,49.13,41.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Movra|r
    .turnin 25220 >>Turn in Slippery Threat
    .target Caretaker Movra
    .isOnQuest 25220
step
    .goto 205,49.23,42.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25219 >>Turn in Don't be Shellfish
    .target Earthmender Duarn
    .isOnQuest 25219
step
    .goto 205,49.58,42.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felora Firewreath|r
    .turnin 25456 >>Turn in Back in One Piece
    .target Felora Firewreath
    .isOnQuest 25456
step
    .goto 205,49.58,42.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felora Firewreath|r
    .accept 25359 >>Accept Toshe's Vengeance
    .target Felora Firewreath
    .isQuestTurnedIn 25456 --any of: Back in One Piece
    .xp <80,1
step
    .goto 205,64.06,42.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshe Chaosrender|r
    .turnin 25359 >>Turn in Toshe's Vengeance
    .target Toshe Chaosrender
    .isOnQuest 25359
step
    .goto 205,67.30,49.72
    >>Kill |cRXP_ENEMY_Fathom-Lord Zin'jatar|r and loot |cRXP_LOOT_Luminescent Pearl|r. Use it to start the quest
    .collect 54614,1,25442 --Luminescent Pearl (1)
    .accept 25442 >>Accept A Pearl of Wisdom
    .use 54614
    .mob Fathom-Lord Zin'jatar
    .isQuestTurnedIn 25222 --any of: Silver Tide Hollow
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .turnin 25893 >>Turn in Desperate Plan
    .target Engineer Hexascrub
    .isOnQuest 25893
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .accept 25895 >>Accept Come Prepared
    .accept 25897 >>Accept Unfurling Plan
    .target Engineer Hexascrub
    .isQuestTurnedIn 25893 --any of: Desperate Plan
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.99,80.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorlan Trueblade|r
    .accept 25894 >>Accept Hostile Waters
    .target Jorlan Trueblade
    .isQuestTurnedIn 25893 --any of: Desperate Plan
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,61.37,85.52,0
    .goto 205,61.37,85.52,40,0
    .goto 205,63.46,83.81,40,0
    >>Kill |cRXP_ENEMY_Muckskin Scroungers|r
    .complete 25894,1 --Muckskin Scrounger slain (10)
    .mob Muckskin Scrounger
    .isOnQuest 25894
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,61.48,85.06
    >>Pick up |cRXP_PICK_Alliance Survival Kit|r from the ground
    .complete 25895,1 --Alliance Survival Kit (1)
    .isOnQuest 25895
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,58.18,85.92,0
    .goto 205,58.18,85.92,40,0
    .goto 205,56.23,85.92,40,0
    >>Kill |cRXP_ENEMY_Kvaldir Fleshcarvers|r and |cRXP_ENEMY_Kvaldir Seahorrors|r. Loot them for |cRXP_LOOT_Coil of Kvaldir Rope|r. It can also be picked up from |cRXP_PICK_Coil of Kvaldir Rope|r on the ground
    .complete 25897,1 --Coil of Kvaldir Rope (1)
    .mob Kvaldir Fleshcarver
    .mob Kvaldir Seahorror
    .isOnQuest 25897
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .turnin 25897 >>Turn in Unfurling Plan
    .target Engineer Hexascrub
    .isOnQuest 25897
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .turnin 25894 >>Turn in Hostile Waters
    .target Engineer Hexascrub
    .isOnQuest 25894
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .turnin 25895 >>Turn in Come Prepared
    .target Engineer Hexascrub
    .isOnQuest 25895
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .accept 25898 >>Accept Honor and Privilege
    .target Engineer Hexascrub
    .isQuestTurnedIn 25894 --Hostile Waters
    .isQuestTurnedIn 25895 --Come Prepared
    .isQuestTurnedIn 25897 --Unfurling Plan
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,50.40,79.07
    >>Open the |cRXP_PICK_Survival Kit Remnants|r. Loot it for |cRXP_LOOT_Rescue Flare|r
    .collect 56188,1,25898,1 --Rescue Flare (1)
    .isOnQuest 25898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.65,80.37
    >>Swim to the surface, retrieve the flare gun, and fire a rescue flare towards the Alliance Ships.
    .complete 25898,1 --Rescue Balloon
    .target Rescue Balloon
    .isOnQuest 25898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.99,80.55
    >>Swim to the surface, retrieve the flare gun, and fire a rescue flare towards the Alliance Ships.
    .complete 25898,2 --Jorlan Trueblade
    .target Jorlan Trueblade
    .isOnQuest 25898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.99,80.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorlan Trueblade|r
    .turnin 25898 >>Turn in Honor and Privilege
    .target Jorlan Trueblade
    .isOnQuest 25898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.99,80.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorlan Trueblade|r
    .accept 25911 >>Accept Welcome News
    .target Jorlan Trueblade
    .isQuestTurnedIn 25898 --any of: Honor and Privilege
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Frell "Fixit" Fastbolt's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.16,56.98,0
    .goto 205,49.16,56.98,40,0
    .goto 205,39.07,78.53,40,0
    .goto 205,33.23,68.36,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25911 >>Turn in Welcome News
    .unitscan Captain Taylor
    .isOnQuest 25911
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,49.54,57.50,0
    .goto 205,49.54,57.50,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25626 >>Accept Visions of the Past: Rise from the Deep
    .unitscan Wavespeaker Valoren
    .isQuestTurnedIn 25911 --any of: Welcome News
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,49.54,57.50
    >>Witness the concluding story of the Battlemaiden by using her broken blade somewhere in the Temple of Quel'Dormir.
    .complete 25626,2 --Battlemaiden Vision 3 Credit (1)
    .isOnQuest 25626
step
    .goto 205,49.23,42.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25442 >>Turn in A Pearl of Wisdom
    .target Earthmender Duarn
    .isOnQuest 25442
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,33.11,76.77
    >>Witness the concluding story of the Battlemaiden by using her broken blade somewhere in the Temple of Quel'Dormir.
    .complete 25626,1 --Quel'Dormir Temple Credit Bunny
    .target Quel'Dormir Temple Credit Bunny
    .isOnQuest 25626
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,29.60,78.90,0
    .goto 205,29.60,78.90,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,49.54,57.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25626 >>Turn in Visions of the Past: Rise from the Deep
    .unitscan Wavespeaker Valoren
    .isOnQuest 25626
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 205,29.60,78.90,0
    .goto 205,29.60,78.90,40,0
    .goto 205,39.22,78.63,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,49.54,57.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26005 >>Accept A Breath of Fresh Air
    .unitscan Wavespeaker Valoren
    .isQuestTurnedIn 25626 --any of: Visions of the Past: Rise from the Deep
    .xp <80,1
step
    .goto 205,33.12,77.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sira'kess|r
    .accept 25896 >>Accept Devout Assembly
    .target Lady Sira'kess
    .isQuestTurnedIn 25626 --any of: Visions of the Past: Rise from the Deep
    .xp <80,1
step
    .goto 205,33.13,75.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25629 >>Accept Her Lady's Hand
    .unitscan Lady Naz'jar
    .isQuestTurnedIn 25626 --any of: Visions of the Past: Rise from the Deep
    .xp <80,1
step
    #loop
    .goto 205,31.65,74.03,0
    .goto 205,31.65,74.03,40,0
    .goto 205,34.16,72.80,40,0
    .goto 205,35.77,75.02,40,0
    >>Defeat the opponents of 8 Naz'jar Honor Guard on the field of battle and deliver their new orders.
    .complete 25629,1 --Naz'jar Honor Guard (8)
    .target Naz'jar Honor Guard
    .isOnQuest 25629
step
    #loop
    .goto 205,35.16,77.22,0
    .goto 205,35.16,77.22,40,0
    .goto 205,31.13,77.31,40,0
    .goto 205,33.62,66.38,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sira'kess Tide Priestess|r
    .complete 25896,1 --Sira'kess Tide Priestess (6)
    .target Sira'kess Tide Priestess
    .isOnQuest 25896
step
    .goto 205,33.07,60.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Caller Azrajar|r
    .complete 25896,2 --Fathom-Caller Azrajar
    .target Fathom-Caller Azrajar
    .isOnQuest 25896
step
    .goto 205,33.13,75.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25629 >>Turn in Her Lady's Hand
    .unitscan Lady Naz'jar
    .isOnQuest 25629
step
    .goto 205,33.12,77.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sira'kess|r
    .turnin 25896 >>Turn in Devout Assembly
    .target Lady Sira'kess
    .isOnQuest 25896
step
    .goto 205,33.12,77.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sira'kess|r
    .accept 25860 >>Accept At All Costs
    .target Lady Sira'kess
    .isQuestTurnedIn 25629 --Her Lady's Hand
    .isQuestTurnedIn 25896 --Devout Assembly
    .xp <80,1
step
    #loop
    .goto 205,33.50,80.04,0
    .goto 205,33.50,80.04,40,0
    .goto 205,34.00,82.10,40,0
    .goto 205,30.89,81.04,40,0
    >>Kill |cRXP_ENEMY_Kvaldir Sandreapers|r and |cRXP_ENEMY_Kvaldir Bonesnappers|r
    .complete 25860,1 --Kvaldir Sandreaper (8)
    .mob Kvaldir Sandreaper
    .mob Kvaldir Bonesnapper
    .isOnQuest 25860
step
    .goto 205,33.12,77.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sira'kess|r
    .turnin 25860 >>Turn in At All Costs
    .target Lady Sira'kess
    .isOnQuest 25860
step
    .goto 205,33.12,77.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sira'kess|r
    .accept 25951 >>Accept Final Judgement
    .target Lady Sira'kess
    .isQuestTurnedIn 25860 --any of: At All Costs
    .xp <80,1
step
    .goto 205,38.49,78.60
    >>Hold the bridge on Quel'Dormir Terrace until Lady Sira'kess' allies arrive.
    .complete 25951,1 --Defend the Bridge Quad Credit
    .target Defend the Bridge Quad Credit
    .isOnQuest 25951
step
    .goto 205,44.71,78.37
    >>Kill |cRXP_ENEMY_Hagrim Hopebreaker|r
    .complete 25951,2 --Hagrim Hopebreaker slain (1)
    .mob Hagrim Hopebreaker
    .isOnQuest 25951
step
    .goto 205,33.13,75.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25951 >>Turn in Final Judgement
    .unitscan Lady Naz'jar
    .isOnQuest 25951
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,75.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .turnin 26005 >>Turn in A Breath of Fresh Air
    .target Captain Taylor
    .isOnQuest 26005
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,75.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .accept 26219 >>Accept Full Circle
    .target Captain Taylor
    .isQuestTurnedIn 26005 --any of: A Breath of Fresh Air
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 205,56.94,75.89
    >>Board the Pincer X2 from Voldrin's Hold and aid in securing Darkbreak Cove.
    .complete 26219,1 --Boarding Submarine Credit Bunny
    .isOnQuest 26219
step
    +|cRXP_WARN_End of the Shimmering Expanse route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Abyssal Depths|r: Full Circle << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
