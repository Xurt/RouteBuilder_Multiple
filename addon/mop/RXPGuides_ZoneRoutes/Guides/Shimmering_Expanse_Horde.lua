-- 81-81 Shimmering Expanse: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Shimmering Expanse.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 81-81 Shimmering Expanse
--RouteBuilder:next
#next Zone Routes (Horde)\82-83 Deepholm

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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,38.85,31.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25948 >>Turn in Bring It On!
    .target Legionnaire Nazgrim
    .isOnQuest 25948
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,38.85,31.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .accept 25949 >>Accept Blood and Thunder!
    .target Legionnaire Nazgrim
    .isQuestTurnedIn 25948 --any of: Bring It On!
    .xp <80,1
step
    .goto 205,64.06,42.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toshe Chaosrender|r
    .accept 25441 >>Accept Vortex
    .accept 25439 >>Accept Vengeful Heart
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
    .turnin 25439 >>Turn in Vengeful Heart
    .turnin 25441 >>Turn in Vortex
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
    .accept 25989 >>Accept Capture the Crab << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Earthmender Duarn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,53.02,58.31
    >>Interact with |cRXP_FRIENDLY_Deepseeker Crab|r
    .complete 25989,1 --Deepseeker Crab
    .target Deepseeker Crab
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25989 >>Turn in Capture the Crab
    .accept 25990 >>Accept Breaking Through
    .target Earthmender Duarn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .complete 25990,1 --Earthmender Duarn
    .target Earthmender Duarn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25990 >>Turn in Breaking Through
    .accept 25991 >>Accept We Are Not Alone
    .target Earthmender Duarn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,60.24,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25991 >>Turn in We Are Not Alone
    .accept 25993 >>Accept Body Blows
    .target Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along24
    >>As you go: Click the |cRXP_PICK_Nespirah Abscess|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25993,1 --Nespirah Abscess
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,60.20,63.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r
    .accept 25992 >>Accept Hopelessly Gearless
    .target Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along24
    >>As you go: Loot the |cRXP_PICK_Idra'kess Weapon Racks|r for |cRXP_LOOT_Purloined Polearm|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25992,1 --Purloined Polearm (4)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along24
    .goto 205,60.31,63.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r
    .accept 25994 >>Accept Still Valuable
    .target Wavespeaker Tulra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,60.22,59.06,0
    .goto 205,60.22,59.06,40,0
    .goto 205,61.66,56.41,40,0
    .goto 205,63.33,59.80,40,0
    >>Kill |cRXP_ENEMY_Idra'kess Warlords|r and |cRXP_ENEMY_Idra'kess Prophets|r. Loot them for |cRXP_LOOT_Mysterious Pearl|r
    >>Loot the |cRXP_PICK_Idra'kess Weapon Racks|r for |cRXP_LOOT_Purloined Polearm|r
    >>Click the |cRXP_PICK_Nespirah Abscess|r
    .complete 25994,1 --Mysterious Pearl (5)
    .complete 25992,1 --Purloined Polearm (4)
    .complete 25993,1 --Nespirah Abscess
    .mob Idra'kess Warlord
    .mob Idra'kess Prophet
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,60.31,63.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r
    .turnin 25994 >>Turn in Still Valuable
    .target Wavespeaker Tulra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,60.20,63.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r
    .turnin 25992 >>Turn in Hopelessly Gearless
    .target Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,60.24,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25993 >>Turn in Body Blows
    .accept 25995 >>Accept Overseer Idra'kess
    .target Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,57.53,56.34
    >>Kill |cRXP_ENEMY_Overseer Idra'kess|r
    .complete 25995,1 --Overseer Idra'kess slain (1)
    .mob Overseer Idra'kess
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.62,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25995 >>Turn in Overseer Idra'kess
    .accept 25996 >>Accept Waking the Beast
    .target Earthmender Duarn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.62,52.23
    >>Speak with Earthmender Duarn inside of Nespirah to activate her bio-defenses, then escape from Nespirah's body.
    .complete 25996,1 --Earthmender Duarn
    .target Earthmender Duarn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.29,55.44
    >>Kill |cRXP_ENEMY_Swiftfin Seahorse|r
    .complete 25996,2 --Swiftfin Seahorse slain (1)
    .mob Swiftfin Seahorse
step
    .goto 205,49.02,57.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriam Brassbomb|r
    .target Miriam Brassbomb
    .home >>Set your Hearthstone to Miriam Brassbomb's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.50,54.00,0
    .goto 205,39.50,54.00,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.10,78.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25996 >>Turn in Waking the Beast
    .accept 25592 >>Accept Deep Attraction
    .unitscan Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.80,54.00,0
    .goto 205,39.80,54.00,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.10,78.70,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25593 >>Accept Shelled Salvation
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,51.62,62.75,0
    .goto 205,51.62,62.75,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25595 >>Accept Something Edible
    .unitscan Wavespeaker Tulra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.75,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25594 >>Accept Crafty Crabs
    .unitscan Fiasco Sizzlegrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 203 >>Travel to Vashj'ir
    .zoneskip 203
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along38
    >>As you go: Kill |cRXP_ENEMY_Spiralung|r and loot |cRXP_LOOT_Spiralung|r. |cRXP_WARN_Anything left is finished later|r
    .collect 55141,1,25593,1 --Spiralung (1)
    .mob Spiralung
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along38
    #loop
    .goto 203,61.87,70.74,0
    .goto 203,61.87,70.74,40,0
    .goto 203,62.88,67.10,40,0
    >>Kill |cRXP_ENEMY_Snapjaw Groupers|r. Loot them for |cRXP_LOOT_Snapjaw Grouper Meat|r
    .complete 25595,1 --Snapjaw Grouper Meat (8)
    .mob Snapjaw Grouper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 205 >>Leave Vashj'ir for Shimmering Expanse
    .zoneskip 205
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,53.61,64.88
    >>Kill |cRXP_ENEMY_Sandskin Pincer|r and loot |cRXP_LOOT_Fiasco's Stray Parts|r. It can also be picked up from |cRXP_PICK_Fiasco's Stray Part|r on the ground
    .complete 25594,1 --Fiasco's Stray Parts (1)
    .mob Sandskin Pincer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,55.13,70.88,0
    .goto 205,55.13,70.88,40,0
    .goto 205,57.85,72.22,40,0
    >>Kill |cRXP_ENEMY_Redgill Scavengers|r
    .complete 25592,1 --Redgill Scavenger slain (10)
    .mob Redgill Scavenger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 203 >>Travel to Vashj'ir
    .zoneskip 203
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 203,66.80,70.10,0
    .goto 203,66.80,70.10,40,0
    .goto 203,68.94,70.50,40,0
    >>Kill |cRXP_ENEMY_Spiralung|r and loot |cRXP_LOOT_Spiralung|r
    .collect 55141,1,25593,1 --Spiralung (1)
    .mob Spiralung
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 205 >>Leave Vashj'ir for Shimmering Expanse
    .zoneskip 205
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,51.62,62.75,0
    .goto 205,51.62,62.75,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25595 >>Turn in Something Edible
    .unitscan Wavespeaker Tulra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.75,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25594 >>Turn in Crafty Crabs
    .unitscan Fiasco Sizzlegrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,49.60,57.47
    >>Kill |cRXP_ENEMY_Nespirah Survivors|r
    .complete 25593,1 --Nespirah Survivor (8)
    .mob Nespirah Survivor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.80,54.00,0
    .goto 205,39.80,54.00,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.10,78.70,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25593 >>Turn in Shelled Salvation
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.50,54.00,0
    .goto 205,39.50,54.00,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.10,78.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25592 >>Turn in Deep Attraction
    .accept 25953 >>Accept Swift Approach
    .unitscan Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.80,54.00,0
    .goto 205,39.80,54.00,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.10,78.70,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25952 >>Accept Caught Off-Guard
    .accept 25955 >>Accept A Better Vantage
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.27,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elendri Goldenbrow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25954 >>Accept An Occupation of Time
    .unitscan Elendri Goldenbrow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along51
    >>As you go: Kill |cRXP_ENEMY_Azsh'ir Patrollers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25952,1 --Azsh'ir Patroller slain (10)
    .mob Azsh'ir Patroller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,42.00,61.06,0
    .goto 205,42.00,61.06,40,0
    .goto 205,40.36,58.91,40,0
    >>Kill |cRXP_ENEMY_Azsh'ir Monitors|r
    >>Click the |cRXP_PICK_Lestharia Vashj|r
    .complete 25953,1 --Azsh'ir Monitor slain (8)
    .complete 25954,1 --Lestharia Vashj
    .mob Azsh'ir Monitor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along50
    >>As you go: Click the |cRXP_PICK_Queen Azshara|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25954,2 --Queen Azshara
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along50
    .goto 205,39.10,57.50
    >>On the lowest level of the ruins, scout the northern end of the Quel'Dormir Gardens, the passage that leads under the ruins west of the gardens, and the structures at the southeast corner of the ruins, below the bridges.
    .complete 25955,1 --Vashj'ir Gardens Credit
    .target Vashj'ir Gardens Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along51
    .goto 205,38.61,58.96
    >>Click the |cRXP_PICK_Queen Azshara|r
    .complete 25954,2 --Queen Azshara
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,36.20,63.00
    >>On the lowest level of the ruins, scout the northern end of the Quel'Dormir Gardens, the passage that leads under the ruins west of the gardens, and the structures at the southeast corner of the ruins, below the bridges.
    .complete 25955,2 --Vashj'ir Underpass Credit
    .target Vashj'ir Underpass Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop27717x1
    >>|cRXP_LOOT_Ancient Elven Etching|r can drop from |cRXP_ENEMY_Azsh'ir Patroller|r, |cRXP_ENEMY_Azsh'ir Infantry|r. Use it to start the quest if you get one
    .collect 62282,1,27717 --Ancient Elven Etching (1)
    .accept 27717 >>Accept Piece of the Past
    .use 62282
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop27717x1
    #loop
    .goto 205,38.44,66.04,0
    .goto 205,38.44,66.04,40,0
    .goto 205,39.75,67.69,40,0
    .goto 205,40.41,70.53,40,0
    >>Click the |cRXP_PICK_High Priestess Siralen|r
    >>Click the |cRXP_PICK_Ranger Valarian|r
    >>Kill |cRXP_ENEMY_Azsh'ir Patrollers|r
    .complete 25954,4 --High Priestess Siralen
    .complete 25954,3 --Ranger Valarian
    .complete 25952,1 --Azsh'ir Patroller slain (10)
    .mob Azsh'ir Patroller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,40.50,74.40
    >>On the lowest level of the ruins, scout the northern end of the Quel'Dormir Gardens, the passage that leads under the ruins west of the gardens, and the structures at the southeast corner of the ruins, below the bridges.
    .complete 25955,3 --Vashj'ir Southern Structures Credit
    .target Vashj'ir Southern Structures Credit
step
    .goto 205,40.57,75.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .accept 25619 >>Accept Reoccupation
    .target Fathom-Stalker Azjentus
    .isQuestTurnedIn 25760 --any of: Visions of the Past: The Invasion of Vashj'ir
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,40.48,75.47
    >>Click the |cRXP_PICK_Broken Prong|r
    .accept 25956 >>Accept Upon the Scene of Battle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.50,0
    .goto 205,39.10,78.50,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.50,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25953 >>Turn in Swift Approach
    .unitscan Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.70,0
    .goto 205,39.10,78.70,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.80,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25955 >>Turn in A Better Vantage
    .turnin 25952 >>Turn in Caught Off-Guard
    .turnin 25956 >>Turn in Upon the Scene of Battle
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Miriam Brassbomb's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.27,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elendri Goldenbrow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25954 >>Turn in An Occupation of Time
    .unitscan Elendri Goldenbrow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,51.62,62.75,0
    .goto 205,51.62,62.75,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25957 >>Accept Visions of the Past: The Invasion of Vashj'ir
    .unitscan Wavespeaker Tulra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.62,62.75
    >>Use the Blade of the Naz'jar Battlemaiden at the battle site at the southeast end of the ruins.
    .complete 25957,1 --Battlemaiden Vision 1 Credit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,51.62,62.75,0
    .goto 205,51.62,62.75,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25957 >>Turn in Visions of the Past: The Invasion of Vashj'ir
    .accept 25958 >>Accept Looking Forward
    .accept 27394 >>Accept The Call of the Blade
    .unitscan Wavespeaker Tulra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.80,54.00,0
    .goto 205,39.80,54.00,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.10,78.70,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25958 >>Turn in Looking Forward
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.75,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25962 >>Accept Properly Inspired
    .unitscan Fiasco Sizzlegrin
step
    .goto 205,33.13,75.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25629 >>Accept Her Lady's Hand
    .unitscan Lady Naz'jar
    .isQuestTurnedIn 25626 --any of: Visions of the Past: Rise from the Deep
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,40.48,75.47
    >>Click the |cRXP_PICK_Broken Prong|r
    .turnin 27394 >>Turn in The Call of the Blade
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along71
    >>As you go: Pick up |cRXP_PICK_Bloated Kelp Bulb|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 25962,1 --Bloated Kelp Bulb (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.70,0
    .goto 205,39.10,78.70,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.80,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25959 >>Accept Clear Goals
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop27717x2
    >>|cRXP_LOOT_Ancient Elven Etching|r can drop from |cRXP_ENEMY_Azsh'ir Patroller|r, |cRXP_ENEMY_Azsh'ir Infantry|r. Use it to start the quest if you get one
    .collect 62282,1,27717 --Ancient Elven Etching (1)
    .accept 27717 >>Accept Piece of the Past
    .use 62282
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop27717x2
    #loop
    .goto 205,38.44,79.32,0
    .goto 205,38.44,79.32,40,0
    .goto 205,40.57,81.50,40,0
    >>Kill |cRXP_ENEMY_Naz'jar Serpent Guards|r, |cRXP_ENEMY_Azsh'ir Abyss Priestess|r and |cRXP_ENEMY_Azsh'ir Infantries|r
    .complete 25959,1 --Naz'jar Serpent Guard (8)
    .mob Naz'jar Serpent Guard
    .mob Azsh'ir Abyss Priestess
    .mob Azsh'ir Infantry
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.70,0
    .goto 205,39.10,78.70,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.80,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25959 >>Turn in Clear Goals
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.50,0
    .goto 205,39.10,78.50,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.50,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25960 >>Accept Not Entirely Unprepared
    .unitscan Legionnaire Nazgrim
step
    #label Along71
    #loop
    .goto 205,35.77,75.02,0
    .goto 205,35.77,75.02,40,0
    .goto 205,34.16,72.80,40,0
    .goto 205,31.65,74.03,40,0
    >>Defeat the opponents of 8 Naz'jar Honor Guard on the field of battle and deliver their new orders.
    .complete 25629,1 --Naz'jar Honor Guard (8)
    .target Naz'jar Honor Guard
    .isOnQuest 25629
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,32.41,71.12,0
    .goto 205,32.41,71.12,40,0
    .goto 205,36.54,74.26,40,0
    >>Pick up |cRXP_PICK_Bloated Kelp Bulb|r from the ground
    .complete 25962,1 --Bloated Kelp Bulb (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,36.58,65.46,0
    .goto 205,36.58,65.46,40,0
    .goto 205,36.40,59.83,40,0
    >>Kill |cRXP_ENEMY_Horde Lookouts|r
    .complete 25960,1 --Horde Lookout (8)
    .mob Horde Lookout
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.75,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25962 >>Turn in Properly Inspired
    .unitscan Fiasco Sizzlegrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.50,54.00,0
    .goto 205,39.50,54.00,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.10,78.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25960 >>Turn in Not Entirely Unprepared
    .unitscan Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.80,54.00,0
    .goto 205,39.80,54.00,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.10,78.70,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25963 >>Accept Swift Action
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along77
    >>As you go: Kill |cRXP_ENEMY_Azsh'ir Archaeans|r. Kill |cRXP_ENEMY_Azsh'ir Soldiers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25963,4 --Azsh'ir Archaean slain (8)
    .complete 25963,2 --Azsh'ir Soldier slain (100)
    .mob Azsh'ir Archaean
    .mob Azsh'ir Soldier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along77
    .goto 205,51.75,62.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .complete 25963,1 --Fiasco Sizzlegrin
    .target Fiasco Sizzlegrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,35.77,68.96,0
    .goto 205,35.77,68.96,40,0
    .goto 205,35.41,73.09,40,0
    .goto 205,31.23,72.47,40,0
    .goto 205,31.00,69.03,40,0
    >>Kill |cRXP_ENEMY_Azsh'ir Archaeans|r
    >>Kill |cRXP_ENEMY_Azsh'ir Soldiers|r
    >>Kill |cRXP_ENEMY_Azsh'ir Wave Screamers|r
    .complete 25963,4 --Azsh'ir Archaean slain (8)
    .complete 25963,2 --Azsh'ir Soldier slain (100)
    .complete 25963,3 --Azsh'ir Wave Screamer slain (20)
    .mob Azsh'ir Archaean
    .mob Azsh'ir Soldier
    .mob Azsh'ir Wave Screamer
step
    #loop
    .goto 205,39.71,72.81,0
    .goto 205,39.71,72.81,40,0
    .goto 205,41.07,73.27,40,0
    >>Kill |cRXP_ENEMY_Kvaldir Deepwalkers|r and |cRXP_ENEMY_Kvaldir Marauders|r
    .complete 25619,1 --Kvaldir Deepwalker (8)
    .mob Kvaldir Deepwalker
    .mob Kvaldir Marauder
    .isOnQuest 25619
step
    .goto 205,40.57,75.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .turnin 25619 >>Turn in Reoccupation
    .target Fathom-Stalker Azjentus
    .isOnQuest 25619
step
    .goto 205,40.57,75.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .accept 25620 >>Accept The Revered Lady
    .target Fathom-Stalker Azjentus
    .isQuestTurnedIn 25619 --any of: Reoccupation
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.70,0
    .goto 205,39.10,78.70,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.80,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25963 >>Turn in Swift Action
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.50,0
    .goto 205,39.10,78.50,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.50,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25964 >>Accept Fallen But Not Forgotten
    .unitscan Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,36.18,79.60,0
    .goto 205,36.18,79.60,40,0
    .goto 205,36.32,83.98,40,0
    .goto 205,37.22,74.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Injured Assault Volunteer|r
    .complete 25964,1 --Injured Assault Volunteer (6)
    .target Injured Assault Volunteer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Miriam Brassbomb's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.27,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elendri Goldenbrow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27717 >>Turn in Piece of the Past
    .unitscan Elendri Goldenbrow
    .isOnQuest 27717
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.80,54.00,0
    .goto 205,39.80,54.00,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.10,78.70,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25965 >>Accept Gauging Success
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.19,62.99
    >>Scout the northwestern portion of the circular terrace and the tunnel under the main stairs to the north. Both locations are on Nar'shola Terrace, the middle level of the ruins.
    .complete 25965,2 --Northwestern Terrace Credit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.19,62.99
    >>Scout the northwestern portion of the circular terrace and the tunnel under the main stairs to the north. Both locations are on Nar'shola Terrace, the middle level of the ruins.
    .complete 25965,1 --Terrace Tunnel Credit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.80,54.00,0
    .goto 205,39.80,54.00,40,0
    .goto 205,51.19,62.99,40,0
    .goto 205,39.10,78.70,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Vilethorn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25965 >>Turn in Gauging Success
    .unitscan Captain Vilethorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.50,54.00,0
    .goto 205,39.50,54.00,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.10,78.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25964 >>Turn in Fallen But Not Forgotten
    .unitscan Legionnaire Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,51.62,62.75,0
    .goto 205,51.62,62.75,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25966 >>Accept Visions of the Past: The Slaughter of Biel'aran Ridge
    .unitscan Wavespeaker Tulra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.62,62.75
    >>Witness the continuing story of the Battlemaiden by using her broken blade at the site of the Kvaldir General's death.
    .complete 25966,1 --Battlemaiden Vision 2 Credit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,51.62,62.75,0
    .goto 205,51.62,62.75,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25966 >>Turn in Visions of the Past: The Slaughter of Biel'aran Ridge
    .unitscan Wavespeaker Tulra
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
step
    .goto 205,49.23,42.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .turnin 25442 >>Turn in A Pearl of Wisdom
    .target Earthmender Duarn
    .isOnQuest 25442
step
    .goto 205,39.40,58.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r
    .turnin 25620 >>Turn in The Revered Lady
    .target Lady Naz'jar
    .isOnQuest 25620
step
    .goto 205,39.40,58.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r
    .accept 25637 >>Accept To the Fathom-Lord's Call
    .target Lady Naz'jar
    .isQuestTurnedIn 25620 --any of: The Revered Lady
    .xp <80,1
step
    .goto 205,37.21,77.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sira'kess Tide Priestess|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25658 >>Accept Built to Last
    .unitscan Sira'kess Tide Priestess
    .isQuestTurnedIn 25620 --any of: The Revered Lady
    .xp <80,1
step
    #loop
    .goto 205,36.04,60.44,0
    .goto 205,36.04,60.44,40,0
    .goto 205,34.60,64.60,40,0
    >>Click the |cRXP_PICK_Nar'shola Ward|r
    .complete 25658,1 --Nar'shola Ward
    .isOnQuest 25658
step
    #loop
    .goto 205,35.22,61.92,0
    .goto 205,35.22,61.92,40,0
    .goto 205,31.02,60.00,40,0
    .goto 205,30.57,64.40,40,0
    .goto 205,34.74,68.83,40,0
    >>Kill |cRXP_ENEMY_Kvaldir Pillagers|r, |cRXP_ENEMY_Kvaldir Wasteroamers|r and |cRXP_ENEMY_Kvaldir Plunderers|r
    .complete 25637,1 --Kvaldir Pillager (8)
    .mob Kvaldir Pillager
    .mob Kvaldir Wasteroamer
    .mob Kvaldir Plunderer
    .isOnQuest 25637
step
    .goto 205,29.00,78.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25858 >>Accept By Her Lady's Word
    .unitscan Lady Naz'jar
    .isQuestTurnedIn 25755 --any of: Visions of the Past: The Slaughter of Biel'aran Ridge
    .xp <80,1
step
    .goto 205,36.84,79.75
    >>Kill |cRXP_ENEMY_Overseer Idra'kess|r
    .complete 25858,3 --Overseer Idra'kess slain (1)
    .mob Overseer Idra'kess
    .isOnQuest 25858
step
    .goto 205,36.43,78.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Lord Zin'jatar|r
    .turnin 25637 >>Turn in To the Fathom-Lord's Call
    .target Fathom-Lord Zin'jatar
    .isOnQuest 25637
step
    .goto 205,36.43,78.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Lord Zin'jatar|r
    .accept 25659 >>Accept Not Soon Forgotten
    .target Fathom-Lord Zin'jatar
    .isQuestTurnedIn 25637 --any of: To the Fathom-Lord's Call
    .xp <80,1
step
    .goto 205,36.43,78.66
    >>Kill |cRXP_ENEMY_Fathom-Lord Zin'jatar|r
    .complete 25858,1 --Fathom-Lord Zin'jatar slain (1)
    .mob Fathom-Lord Zin'jatar
    .isOnQuest 25858
step
    .goto 205,33.12,77.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sira'kess|r
    .accept 25896 >>Accept Devout Assembly
    .target Lady Sira'kess
    .isQuestTurnedIn 25626 --any of: Visions of the Past: Rise from the Deep
    .xp <80,1
step
    .goto 205,33.12,77.89
    >>Kill |cRXP_ENEMY_Lady Sira'kess|r
    .complete 25858,2 --Lady Sira'kess slain (1)
    .mob Lady Sira'kess
    .isOnQuest 25858
step
    #loop
    .goto 205,31.72,78.66,0
    .goto 205,31.72,78.66,40,0
    .goto 205,34.55,78.66,40,0
    .goto 205,35.16,77.22,40,0
    .goto 205,33.62,66.38,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sira'kess Tide Priestess|r
    .complete 25896,1 --Sira'kess Tide Priestess (6)
    .target Sira'kess Tide Priestess
    .isOnQuest 25896
step
    .goto 205,28.56,78.59
    >>Kill |cRXP_ENEMY_Varkul the Unrelenting|r
    .complete 25659,1 --Varkul the Unrelenting slain (1)
    .mob Varkul the Unrelenting
    .isOnQuest 25659
step
    .goto 205,33.07,60.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Caller Azrajar|r
    .complete 25896,2 --Fathom-Caller Azrajar
    .target Fathom-Caller Azrajar
    .isOnQuest 25896
step
    .goto 205,46.45,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .turnin 25858 >>Turn in By Her Lady's Word
    .target Fathom-Stalker Azjentus
    .isOnQuest 25858
step
    .goto 205,46.45,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .accept 25859 >>Accept No Trespass Forgiven
    .target Fathom-Stalker Azjentus
    .isQuestTurnedIn 25858 --any of: By Her Lady's Word
    .xp <80,1
step
    .goto 205,46.33,78.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naz'jar Honor Guard|r
    .accept 25862 >>Accept Stolen Property
    .target Naz'jar Honor Guard
    .isQuestTurnedIn 25858 --any of: By Her Lady's Word
    .xp <80,1
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
    .isOnQuest 25859
step
    .goto 205,57.16,85.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executioner Verathress|r
    .accept 25861 >>Accept Setting An Example
    .target Executioner Verathress
    .isQuestTurnedIn 25858 --any of: By Her Lady's Word
    .xp <80,1
step
    .goto 205,57.16,85.17
    >>Bring a Kvaldir High-Shaman to the feet of Executioner Varathress.
    .complete 25861,1 --Executioner Verathress
    .target Executioner Verathress
    .isOnQuest 25861
step
    .goto 205,57.16,85.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executioner Verathress|r
    .turnin 25861 >>Turn in Setting An Example
    .target Executioner Verathress
    .isOnQuest 25861
step
    .goto 205,33.11,78.58
    >>Click the |cRXP_PICK_Crucible of Nazsharin|r
    .turnin 25862 >>Turn in Stolen Property
    .isOnQuest 25862
step
    .goto 205,33.11,78.58
    >>Click the |cRXP_PICK_Crucible of Nazsharin|r
    .accept 25863 >>Accept Chosen Burden
    .isQuestTurnedIn 25862 --any of: Stolen Property
    .xp <80,1
step
    .goto 205,46.45,79.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Stalker Azjentus|r
    .turnin 25859 >>Turn in No Trespass Forgiven
    .target Fathom-Stalker Azjentus
    .isOnQuest 25859
step
    .goto 205,29.00,78.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25863 >>Turn in Chosen Burden
    .unitscan Lady Naz'jar
    .isOnQuest 25863
step
    .goto 205,29.00,78.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26191 >>Accept The Culmination of Our Efforts
    .unitscan Lady Naz'jar
    .isQuestTurnedIn 25859 --No Trespass Forgiven
    .isQuestTurnedIn 25863 --Chosen Burden
    .xp <80,1
step
    .goto 205,29.00,78.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26191 >>Turn in The Culmination of Our Efforts
    .unitscan Lady Naz'jar
    .isOnQuest 26191
step
    .goto 205,33.13,75.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25629 >>Turn in Her Lady's Hand
    .unitscan Lady Naz'jar
    .isOnQuest 25629
step
    .goto 205,37.21,77.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sira'kess Tide Priestess|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25658 >>Turn in Built to Last
    .unitscan Sira'kess Tide Priestess
    .isOnQuest 25658
step
    .goto 205,36.43,78.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fathom-Lord Zin'jatar|r
    .turnin 25659 >>Turn in Not Soon Forgotten
    .target Fathom-Lord Zin'jatar
    .isOnQuest 25659
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.50,0
    .goto 205,39.10,78.50,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.50,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25968 >>Accept Desperate Plan
    .unitscan Legionnaire Nazgrim
    .isQuestTurnedIn 25967 --any of: Losing Ground
    .xp <80,1
step
    .goto 205,44.71,78.37
    >>Kill |cRXP_ENEMY_Hagrim Hopebreaker|r
    .complete 25951,2 --Hagrim Hopebreaker slain (1)
    .mob Hagrim Hopebreaker
    .isOnQuest 25951
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.35,78.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .turnin 25968 >>Turn in Desperate Plan
    .target Fiasco Sizzlegrin
    .isOnQuest 25968
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.35,78.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .accept 25970 >>Accept Come Prepared
    .accept 25971 >>Accept Unfurling Plan
    .target Fiasco Sizzlegrin
    .isQuestTurnedIn 25968 --any of: Desperate Plan
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.40,79.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodguard Toldrek|r
    .accept 25969 >>Accept Hostile Waters
    .target Bloodguard Toldrek
    .isQuestTurnedIn 25968 --any of: Desperate Plan
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,49.06,84.80
    >>Pick up |cRXP_PICK_Horde Survival Kit|r from the ground
    .complete 25970,1 --Horde Survival Kit (1)
    .isOnQuest 25970
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,48.37,83.89,0
    .goto 205,48.37,83.89,40,0
    .goto 205,48.73,86.49,40,0
    >>Kill |cRXP_ENEMY_Muckskin Scroungers|r
    .complete 25969,1 --Muckskin Scrounger slain (10)
    .mob Muckskin Scrounger
    .isOnQuest 25969
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,50.28,80.54,0
    .goto 205,50.28,80.54,40,0
    .goto 205,47.90,79.49,40,0
    >>Kill |cRXP_ENEMY_Kvaldir Fleshcarvers|r and |cRXP_ENEMY_Kvaldir Seahorrors|r. Loot them for |cRXP_LOOT_Coil of Kvaldir Rope|r. It can also be picked up from |cRXP_PICK_Coil of Kvaldir Rope|r on the ground
    .complete 25971,1 --Coil of Kvaldir Rope (1)
    .mob Kvaldir Fleshcarver
    .mob Kvaldir Seahorror
    .isOnQuest 25971
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.35,78.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .turnin 25970 >>Turn in Come Prepared
    .target Fiasco Sizzlegrin
    .isOnQuest 25970
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.35,78.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .turnin 25971 >>Turn in Unfurling Plan
    .target Fiasco Sizzlegrin
    .isOnQuest 25971
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.35,78.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .turnin 25969 >>Turn in Hostile Waters
    .target Fiasco Sizzlegrin
    .isOnQuest 25969
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.35,78.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .accept 25972 >>Accept Honor and Privilege
    .target Fiasco Sizzlegrin
    .isQuestTurnedIn 25969 --Hostile Waters
    .isQuestTurnedIn 25970 --Come Prepared
    .isQuestTurnedIn 25971 --Unfurling Plan
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.40,79.07
    >>Open the |cRXP_PICK_Survival Kit Remnants|r. Loot it for |cRXP_LOOT_Rescue Flare|r
    .collect 56188,1,25972,1 --Rescue Flare (1)
    .isOnQuest 25972
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.44,79.16
    >>Swim to the surface, retrieve the flare gun, and fire a rescue flare towards the Horde Ships.
    .complete 25972,1 --Rescue Balloon
    .target Rescue Balloon
    .isOnQuest 25972
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.40,79.00
    >>Swim to the surface, retrieve the flare gun, and fire a rescue flare towards the Horde Ships.
    .complete 25972,2 --Bloodguard Toldrek
    .target Bloodguard Toldrek
    .isOnQuest 25972
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.40,79.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodguard Toldrek|r
    .turnin 25972 >>Turn in Honor and Privilege
    .target Bloodguard Toldrek
    .isOnQuest 25972
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,50.40,79.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodguard Toldrek|r
    .accept 25973 >>Accept Welcome News
    .target Bloodguard Toldrek
    .isQuestTurnedIn 25972 --any of: Honor and Privilege
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,39.10,78.50,0
    .goto 205,39.10,78.50,40,0
    .goto 205,51.24,63.02,40,0
    .goto 205,39.50,54.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25973 >>Turn in Welcome News
    .unitscan Legionnaire Nazgrim
    .isOnQuest 25973
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,51.62,62.75,0
    .goto 205,51.62,62.75,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,29.60,78.90,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26135 >>Accept Visions of the Past: Rise from the Deep
    .unitscan Wavespeaker Tulra
    .isQuestTurnedIn 25973 --any of: Welcome News
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,51.62,62.75
    >>Witness the concluding story of the Battlemaiden by using her broken blade somewhere in the Temple of Quel'Dormir.
    .complete 26135,2 --Battlemaiden Vision 3 Credit (1)
    .isOnQuest 26135
step
    .goto 205,33.13,75.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Naz'jar|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25951 >>Turn in Final Judgement
    .unitscan Lady Naz'jar
    .isOnQuest 25951
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 205,33.11,76.77
    >>Witness the concluding story of the Battlemaiden by using her broken blade somewhere in the Temple of Quel'Dormir.
    .complete 26135,1 --Quel'Dormir Temple Credit Bunny
    .target Quel'Dormir Temple Credit Bunny
    .isOnQuest 26135
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,29.60,78.90,0
    .goto 205,29.60,78.90,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,51.62,62.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26135 >>Turn in Visions of the Past: Rise from the Deep
    .unitscan Wavespeaker Tulra
    .isOnQuest 26135
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 205,29.60,78.90,0
    .goto 205,29.60,78.90,40,0
    .goto 205,39.20,78.60,40,0
    .goto 205,40.60,75.10,40,0
    .goto 205,51.62,62.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26006 >>Accept A Breath of Fresh Air
    .unitscan Wavespeaker Tulra
    .isQuestTurnedIn 26135 --any of: Visions of the Past: Rise from the Deep
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 203 >>Travel to Vashj'ir
    .zoneskip 203
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 203,64.50,68.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 26006 >>Turn in A Breath of Fresh Air
    .target Legionnaire Nazgrim
    .isOnQuest 26006
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 203,64.50,68.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .accept 26221 >>Accept Full Circle
    .target Legionnaire Nazgrim
    .isQuestTurnedIn 26006 --any of: A Breath of Fresh Air
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 203,64.50,68.74
    >>Board the Verne from The Stygian Bounty and aid in securing Tenebrous Cavern.
    .complete 26221,1 --Boarding Submarine Credit Bunny
    .isOnQuest 26221
step
    +|cRXP_WARN_End of the Shimmering Expanse route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Abyssal Depths|r: Full Circle << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Kelp'thar Forest|r: Blood and Thunder! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
