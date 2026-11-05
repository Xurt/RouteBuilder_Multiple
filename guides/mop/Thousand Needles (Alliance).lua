-- 40-45 Thousand Needles: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 40, 44, 47).
-- Split into 3 guides, listed under "40 - 48 Thousand Needles" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Thousand Needles.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 40 - 48 Thousand Needles
#subweight -40
#name 40-41 Thousand Needles
--RouteBuilder:next
#next Zone Routes (Alliance)\40-42 Eastern Plaguelands: around Chromie;Zone Routes (Alliance)\38-41 Dustwallow Marsh: around Tabetha;Zone Routes (Alliance)\37-40 Western Plaguelands: around Daria L'Rayne

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28503 >>Accept Hero's Call: Thousand Needles!
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
    .target Arias'ta Bladesinger
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Edirah
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 27266 >>Accept Wulf Calls
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 27267 >>Accept Make Contact with SI:7
    .target Erion Shadewhisper
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Priestess Alathea
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 27265 >>Accept Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 27270 >>Accept An Audience with the Farseer
    .target Hobahken
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << NightElf Druid/Worgen Druid
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 27273 >>Accept An Invitation from Moonglade
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
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
    .zone 64 >>Leave Darnassus for Thousand Needles
    .zoneskip 64
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,75.90,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .turnin 25488 >>Turn in Two If By Boat
    .target Fizzle Brassbolts
    .isOnQuest 25488
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,75.90,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 25504 >>Accept Do Me a Favor?
    .target Fizzle Brassbolts
    .isQuestTurnedIn 25488 --any of: Two If By Boat
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,76.49,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Twizzlefixxit|r
    .turnin 25504 >>Turn in Do Me a Favor?
    .target Jinky Twizzlefixxit
    .isOnQuest 25504
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,76.49,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Twizzlefixxit|r
    .accept 25515 >>Accept Down in the Deeps
    .target Jinky Twizzlefixxit
    .isQuestTurnedIn 25504 --any of: Do Me a Favor?
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,77.99,73.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rizzle Brassbolts|r
    .accept 25517 >>Accept Bar Fight!
    .target Rizzle Brassbolts
    .isQuestTurnedIn 25488 --any of: Two If By Boat
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,76.78,74.54
    >>Kill |cRXP_ENEMY_Goblin Bar Patrons|r
    .complete 25517,1 --Goblin Bar Patron (8)
    .mob Goblin Bar Patron
    .isOnQuest 25517
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,79.53,75.06
    >>Click the |cRXP_PICK_Submerged Outhouse|r
    .accept 25524 >>Accept In the Outhouse
    .isQuestTurnedIn 25504 --any of: Do Me a Favor?
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,79.09,76.29,0
    .goto 64,79.09,76.29,40,0
    .goto 64,80.42,77.09,40,0
    >>Pick up |cRXP_PICK_Rocket Car Parts|r from the ground
    .complete 25515,1 --Rocket Car Parts (10)
    .isOnQuest 25515
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,80.90,75.40,0
    .goto 64,80.90,75.40,40,0
    .goto 64,77.77,73.14,40,0
    .goto 64,78.07,79.14,40,0
    >>Kill |cRXP_ENEMY_Southsea Treasure Hunter|r and loot |cRXP_LOOT_Pirate's Crowbar|r
    .collect 54821,1,25524,1 --Pirate's Crowbar (1)
    .mob Southsea Treasure Hunter
    .isOnQuest 25524
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,79.53,75.06
    >>Click the |cRXP_PICK_Submerged Outhouse|r
    .complete 25524,1 --Submerged Outhouse
    .isOnQuest 25524
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,79.53,75.06
    >>Click the |cRXP_PICK_Submerged Outhouse|r
    .turnin 25524 >>Turn in In the Outhouse
    .isOnQuest 25524
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,77.99,73.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rizzle Brassbolts|r
    .turnin 25517 >>Turn in Bar Fight!
    .target Rizzle Brassbolts
    .isOnQuest 25517
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,76.49,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Twizzlefixxit|r
    .turnin 25515 >>Turn in Down in the Deeps
    .target Jinky Twizzlefixxit
    .isOnQuest 25515
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,76.49,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Twizzlefixxit|r
    .accept 25532 >>Accept Pirate Accuracy Increasing
    .target Jinky Twizzlefixxit
    .isQuestTurnedIn 25515 --Down in the Deeps
    .isQuestTurnedIn 25517 --Bar Fight!
    .isQuestTurnedIn 25524 --In the Outhouse
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,76.66,73.87,0
    .goto 64,76.66,73.87,40,0
    .goto 64,78.34,73.42,40,0
    >>Click the |cRXP_PICK_Pirate Accuracy Increasing Fire|r
    .complete 25532,2 --Pirate Accuracy Increasing Fire
    .isOnQuest 25532
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,78.12,73.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazzer Stripscrew|r
    .complete 25532,1 --Mazzer Stripscrew
    .target Mazzer Stripscrew
    .isOnQuest 25532
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,80.67,70.85,0
    .goto 64,80.67,70.85,40,0
    .goto 64,79.86,69.54,40,0
    .goto 64,79.98,75.18,40,0
    .goto 64,78.20,69.00,40,0
    .goto 64,78.32,77.41,40,0
    .goto 64,75.32,70.66,40,0
    .goto 64,74.20,72.80,40,0
    .goto 64,74.44,76.09,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25532 >>Turn in Pirate Accuracy Increasing
    .unitscan ?
    .isOnQuest 25532
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,80.67,70.85,0
    .goto 64,80.67,70.85,40,0
    .goto 64,79.86,69.54,40,0
    .goto 64,79.98,75.18,40,0
    .goto 64,78.20,69.00,40,0
    .goto 64,78.32,77.41,40,0
    .goto 64,75.32,70.66,40,0
    .goto 64,74.20,72.80,40,0
    .goto 64,74.44,76.09,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25542 >>Accept Circle the Wagons... er, Boats
    .unitscan !
    .isQuestTurnedIn 25532 --any of: Pirate Accuracy Increasing
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,78.89,78.31,0
    .goto 64,78.89,78.31,40,0
    .goto 64,80.39,78.59,40,0
    .goto 64,81.86,71.27,40,0
    .goto 64,80.25,68.58,40,0
    >>Kill |cRXP_ENEMY_Southsea Rowboats|r
    .complete 25542,1 --Southsea Rowboat slain (15)
    .mob Southsea Rowboat
    .isOnQuest 25542
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,76.49,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Twizzlefixxit|r
    .turnin 25542 >>Turn in Circle the Wagons... er, Boats
    .target Jinky Twizzlefixxit
    .isOnQuest 25542
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,76.49,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Twizzlefixxit|r
    .accept 25585 >>Accept Quiet the Cannons
    .target Jinky Twizzlefixxit
    .isQuestTurnedIn 25542,25561 --any of: Circle the Wagons... er, Boats, Circle the Wagons... er, Boats
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,75.90,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 25744 >>Accept Negotiations
    .target Fizzle Brassbolts
    .isQuestTurnedIn 25542,25561 --any of: Circle the Wagons... er, Boats, Circle the Wagons... er, Boats
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,77.99,73.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rizzle Brassbolts|r
    .accept 25590 >>Accept Where's Wizzle?
    .target Rizzle Brassbolts
    .isQuestTurnedIn 25542,25561 --any of: Circle the Wagons... er, Boats, Circle the Wagons... er, Boats
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,78.07,73.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drag Master Miglen|r
    .accept 25588 >>Accept A Little Payback
    .target Drag Master Miglen
    .isQuestTurnedIn 25542,25561 --any of: Circle the Wagons... er, Boats, Circle the Wagons... er, Boats
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,78.12,73.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazzer Stripscrew|r
    .accept 28031 >>Accept Special Delivery for Brivelthwerp
    .target Mazzer Stripscrew
    .isQuestTurnedIn 25542,25561 --any of: Circle the Wagons... er, Boats, Circle the Wagons... er, Boats
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.62,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 25590 >>Turn in Where's Wizzle?
    .target Wizzle Brassbolts
    .isOnQuest 25590
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.62,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 25609 >>Accept Sunken Treasure
    .target Wizzle Brassbolts
    .isQuestTurnedIn 25590 --any of: Where's Wizzle?
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,91.27,79.94,0
    .goto 64,91.27,79.94,40,0
    .goto 64,92.16,77.02,40,0
    >>Kill |cRXP_ENEMY_Southsea Parrot Handlers|r and |cRXP_ENEMY_Southsea Sailors|r
    .complete 25588,1 --Southsea Parrot Handler (8)
    .mob Southsea Parrot Handler
    .mob Southsea Sailor
    .isOnQuest 25588
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,91.35,75.99,0
    .goto 64,91.35,75.99,40,0
    .goto 64,94.00,71.18,40,0
    >>Interact with |cRXP_FRIENDLY_Holdfast Cannons|r
    .complete 25585,1 --Holdfast Cannon (8)
    .target Holdfast Cannon
    .isOnQuest 25585
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,82.00,69.41,0
    .goto 64,82.00,69.41,40,0
    .goto 64,79.04,68.33,40,0
    .goto 64,76.55,67.12,40,0
    >>Pick up |cRXP_PICK_Sunken Treasure Chest|r from the ground
    .complete 25609,1 --Sunken Treasure Chest (8)
    .isOnQuest 25609
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,76.49,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Twizzlefixxit|r
    .turnin 25585 >>Turn in Quiet the Cannons
    .target Jinky Twizzlefixxit
    .isOnQuest 25585
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,78.07,73.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drag Master Miglen|r
    .turnin 25588 >>Turn in A Little Payback
    .target Drag Master Miglen
    .isOnQuest 25588
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.62,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 25609 >>Turn in Sunken Treasure
    .target Wizzle Brassbolts
    .isOnQuest 25609
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.62,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 25627 >>Accept Two-Tusk Takedown
    .target Wizzle Brassbolts
    .isQuestTurnedIn 25609 --any of: Sunken Treasure
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,95.21,79.55
    >>Kill |cRXP_ENEMY_Tony Two-Tusk|r and loot |cRXP_LOOT_Rusted Cage Key|r
    .complete 25627,1 --Rusted Cage Key (1)
    .mob Tony Two-Tusk
    .isOnQuest 25627
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.62,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 25627 >>Turn in Two-Tusk Takedown
    .target Wizzle Brassbolts
    .isOnQuest 25627
step
    .goto 64,91.77,78.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Tony Two-Tusk|r
    .accept 25660 >>Accept Haunted
    .target Spirit of Tony Two-Tusk
    .isQuestTurnedIn 25627,25628 --any of: Two-Tusk Takedown, Two-Tusk Takedown
    .xp <38,1
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .turnin 25660 >>Turn in Haunted
    .target Ajamon Ghostcaller
    .isOnQuest 25660
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .accept 25661 >>Accept With a Little Help...
    .target Ajamon Ghostcaller
    .isQuestTurnedIn 25660 --any of: Haunted
    .xp <38,1
step
    .goto 64,87.88,75.97
    >>Kill |cRXP_ENEMY_Lilly Landlubber|r and loot |cRXP_LOOT_Lilly Landlubber's Liver|r
    .complete 25661,3 --Lilly Landlubber's Liver (1)
    .mob Lilly Landlubber
    .isOnQuest 25661
step
    .goto 64,88.48,72.85
    >>Kill |cRXP_ENEMY_Seadog Fajardo|r and loot |cRXP_LOOT_Seadog Fajardo's Lungs|r
    .complete 25661,2 --Seadog Fajardo's Lungs (1)
    .mob Seadog Fajardo
    .isOnQuest 25661
step
    .goto 64,91.04,68.96
    >>Kill |cRXP_ENEMY_Evil Dolly|r and loot |cRXP_LOOT_Evil Dolly's Heart|r
    .complete 25661,1 --Evil Dolly's Heart (1)
    .mob Evil Dolly
    .isOnQuest 25661
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .turnin 25661 >>Turn in With a Little Help...
    .target Ajamon Ghostcaller
    .isOnQuest 25661
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .accept 25672 >>Accept Carcass Collection
    .target Ajamon Ghostcaller
    .isQuestTurnedIn 25661 --any of: With a Little Help...
    .xp <38,1
step
    #loop
    .goto 64,85.38,65.43,0
    .goto 64,85.38,65.43,40,0
    .goto 64,79.17,65.86,40,0
    .goto 64,79.14,69.87,40,0
    >>Kill |cRXP_ENEMY_Saltstone Basilisks|r, |cRXP_ENEMY_Saltstone Crystalhides|r, |cRXP_ENEMY_Scorpid Reavers|r and |cRXP_ENEMY_Scorpid Terrors|r. Loot them for |cRXP_LOOT_Creature Carcass|r
    .complete 25672,1 --Creature Carcass (10)
    .mob Saltstone Basilisk
    .mob Saltstone Crystalhide
    .mob Scorpid Reaver
    .mob Scorpid Terror
    .isOnQuest 25672
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .turnin 25744 >>Turn in Negotiations
    .target Crazzle Sprysprocket
    .isOnQuest 25744
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .accept 25756 >>Accept Get Zherin!
    .target Crazzle Sprysprocket
    .isQuestTurnedIn 25744 --any of: Negotiations
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.15,53.71
    >>Kill |cRXP_ENEMY_Trackmaster Zherin|r and loot |cRXP_LOOT_Horde's Proposal|r
    .complete 25756,1 --Horde's Proposal (1)
    .mob Trackmaster Zherin
    .isOnQuest 25756
step
    .goto 64,90.08,53.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skycaller Vrakthris|r
    .accept 25762 >>Accept The Ancient Brazier
    .target Skycaller Vrakthris
    .isQuestTurnedIn 25744,25745 --any of: Negotiations, Negotiations
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .turnin 25756 >>Turn in Get Zherin!
    .target Crazzle Sprysprocket
    .isOnQuest 25756
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .accept 25774 >>Accept Fool's Gold
    .target Crazzle Sprysprocket
    .isQuestTurnedIn 25756 --any of: Get Zherin!
    .xp <38,1
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .turnin 25672 >>Turn in Carcass Collection
    .target Ajamon Ghostcaller
    .isOnQuest 25672
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .accept 25704 >>Accept The Mad Magus
    .target Ajamon Ghostcaller
    .isQuestTurnedIn 25672 --any of: Carcass Collection
    .xp <38,1
step
    .goto 64,85.14,91.77
    >>Interact with |cRXP_FRIENDLY_Mad Magus Tirth|r
    .complete 25704,1 --Mad Magus Tirth
    .target Mad Magus Tirth
    .isOnQuest 25704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28031 >>Turn in Special Delivery for Brivelthwerp
    .target Brivelthwerp
    .isOnQuest 28031
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .accept 28045 >>Accept The Greatest Flavor in the World!
    .accept 28051 >>Accept We All Scream for Ice Cream... and then Die!
    .target Brivelthwerp
    .isQuestTurnedIn 28031,28042 --any of: Special Delivery for Brivelthwerp, Special Delivery for Brivelthwerp
    .xp <38,1
step
    #loop
    .goto 64,69.46,86.59,0
    .goto 64,69.46,86.59,40,0
    .goto 64,71.08,82.69,40,0
    .goto 64,67.02,83.08,40,0
    >>Interact with |cRXP_FRIENDLY_Dead Employees|r
    .complete 28051,1 --Dead Employee (10)
    .target Dead Employee
    .isOnQuest 28051
step
    .goto 64,71.50,83.01
    >>Kill |cRXP_ENEMY_Silithid Ravager|r and loot |cRXP_LOOT_Scoop of Silithid Goo|r
    .complete 28045,1 --Scoop of Silithid Goo (1)
    .mob Silithid Ravager
    .isOnQuest 28045
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28051 >>Turn in We All Scream for Ice Cream... and then Die!
    .target Brivelthwerp
    .isOnQuest 28051
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28045 >>Turn in The Greatest Flavor in the World!
    .target Brivelthwerp
    .isOnQuest 28045
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .accept 28047 >>Accept Freezing the Pipes
    .accept 28048 >>Accept That Smart One's Gotta Go
    .target Brivelthwerp
    .isQuestTurnedIn 28045 --The Greatest Flavor in the World!
    .isQuestTurnedIn 28051 --We All Scream for Ice Cream... and then Die!
    .xp <38,1
step
    .goto 64,64.99,84.47
    >>Click the |cRXP_PICK_Refrigeration Pipe|r
    .complete 28047,3 --Refrigeration Pipe
    .isOnQuest 28047
step
    .goto 64,64.92,85.73
    >>Click the |cRXP_PICK_Refrigeration Pipe|r
    .complete 28047,4 --Refrigeration Pipe
    .isOnQuest 28047
step
    .goto 64,63.84,86.26
    >>Kill |cRXP_ENEMY_Hive Controller|r
    .complete 28048,1 --Hive Controller slain (1)
    .mob Hive Controller
    .isOnQuest 28048
step
    .goto 64,65.27,86.98
    >>Click the |cRXP_PICK_Refrigeration Pipe|r
    .complete 28047,2 --Refrigeration Pipe
    .isOnQuest 28047
step
    .goto 64,65.98,86.46
    >>Click the |cRXP_PICK_Refrigeration Pipe|r
    .complete 28047,1 --Refrigeration Pipe
    .isOnQuest 28047
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28048 >>Turn in That Smart One's Gotta Go
    .target Brivelthwerp
    .isOnQuest 28048
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28047 >>Turn in Freezing the Pipes
    .target Brivelthwerp
    .isOnQuest 28047
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,48.28,41.96,0
    .goto 64,48.28,41.96,40,0
    .goto 64,45.79,39.74,40,0
    >>Loot the |cRXP_PICK_Needles Iron Pyrites|r for |cRXP_LOOT_Needles Pyrite Ore Chunk|r
    .complete 25774,1 --Needles Pyrite Ore Chunk (8)
    .isOnQuest 25774
step
    .goto 64,42.16,32.99
    >>Kill |cRXP_ENEMY_Aquarian|r and loot |cRXP_LOOT_The Sacred Flame|r
    .complete 25762,2 --The Sacred Flame (1)
    .mob Aquarian
    .isOnQuest 25762
step
    .goto 64,42.05,32.66
    >>Click the |cRXP_PICK_The Ancient Brazier|r
    .complete 25762,1 --The Ancient Brazier
    .isOnQuest 25762
step
    .goto 64,39.15,25.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .accept 28085 >>Accept Trouble at Highperch
    .target Lakota Windsong
    .isQuestTurnedIn 27329,27330 --any of: Invoking the Serpent, Invoking the Serpent
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 64 >>Leave The Exodar for Thousand Needles
    .zoneskip 64
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .turnin 25704 >>Turn in The Mad Magus
    .target Ajamon Ghostcaller
    .isOnQuest 25704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .turnin 25774 >>Turn in Fool's Gold
    .target Crazzle Sprysprocket
    .isOnQuest 25774
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .accept 25778 >>Accept Fake Gold for Black Gold
    .target Crazzle Sprysprocket
    .isQuestTurnedIn 25774 --any of: Fool's Gold
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.32,53.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Ablinh|r
    .turnin 25778 >>Turn in Fake Gold for Black Gold
    .target Khan Ablinh
    .isOnQuest 25778
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.32,53.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Ablinh|r
    .accept 25790 >>Accept Back to Crazzle
    .target Khan Ablinh
    .isQuestTurnedIn 25778 --any of: Fake Gold for Black Gold
    .xp <38,1
step
    .goto 64,90.08,53.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skycaller Vrakthris|r
    .turnin 25762 >>Turn in The Ancient Brazier
    .target Skycaller Vrakthris
    .isOnQuest 25762
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .turnin 25790 >>Turn in Back to Crazzle
    .target Crazzle Sprysprocket
    .isOnQuest 25790
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .accept 25798 >>Accept Defend the Drill
    .accept 25796 >>Accept Eminent Domain
    .target Crazzle Sprysprocket
    .isQuestTurnedIn 25790 --any of: Back to Crazzle
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,90.75,51.28
    >>Defend the Oil Drilling Rig.
    .complete 25798,1 --Oil Drilling Rig
    .target Oil Drilling Rig
    .isOnQuest 25798
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,89.46,50.97,0
    .goto 64,89.46,50.97,40,0
    .goto 64,89.76,54.03,40,0
    .goto 64,89.84,45.24,40,0
    >>Kill |cRXP_ENEMY_Galak Stormers|r, |cRXP_ENEMY_Galak Wranglers|r and |cRXP_ENEMY_Galak Maulers|r
    .complete 25796,1 --Galak Stormer (8)
    .mob Galak Stormer
    .mob Galak Wrangler
    .mob Galak Mauler
    .isOnQuest 25796
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .turnin 25798 >>Turn in Defend the Drill
    .target Crazzle Sprysprocket
    .isOnQuest 25798
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .turnin 25796 >>Turn in Eminent Domain
    .target Crazzle Sprysprocket
    .isOnQuest 25796
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .accept 25813 >>Accept Go Blow that Horn
    .target Crazzle Sprysprocket
    .isQuestTurnedIn 25796 --Eminent Domain
    .isQuestTurnedIn 25798 --Defend the Drill
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,89.46,46.99
    >>Click the |cRXP_PICK_Horn Mouthpiece|r
    .complete 25813,2 --Horn Mouthpiece
    .isOnQuest 25813
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,89.69,45.48
    >>Kill |cRXP_ENEMY_Whrrrl|r
    .complete 25813,1 --Whrrrl slain (1)
    .mob Whrrrl
    .isOnQuest 25813
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .turnin 25813 >>Turn in Go Blow that Horn
    .target Crazzle Sprysprocket
    .isOnQuest 25813
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,91.39,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazzle Sprysprocket|r
    .accept 25825 >>Accept Deliver the Goods
    .target Crazzle Sprysprocket
    .isQuestTurnedIn 25813 --any of: Go Blow that Horn
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,75.90,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .turnin 25825 >>Turn in Deliver the Goods
    .target Fizzle Brassbolts
    .isOnQuest 25825
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,75.90,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 25835 >>Accept Free Freewind Post
    .target Fizzle Brassbolts
    .isQuestTurnedIn 25704 --The Mad Magus
    .isQuestTurnedIn 25825 --Deliver the Goods
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,46.40,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quentin|r
    .turnin 25835 >>Turn in Free Freewind Post
    .target Quentin
    .isOnQuest 25835
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,46.40,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quentin|r
    .accept 25869 >>Accept Grimtotem in the Post
    .target Quentin
    .isQuestTurnedIn 25835 --any of: Free Freewind Post
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,46.82,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brienna Starglow|r
    .accept 25871 >>Accept Save the Sentinel
    .target Brienna Starglow
    .isQuestTurnedIn 25835 --any of: Free Freewind Post
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,46.45,54.69,0
    .goto 64,46.45,54.69,40,0
    .goto 64,45.17,50.23,40,0
    .goto 64,42.46,49.50,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Invaders|r
    .complete 25869,1 --Grimtotem Invader slain (10)
    .mob Grimtotem Invader
    .isOnQuest 25869
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,45.24,50.17
    >>Interact with |cRXP_FRIENDLY_Captured Feralas Sentinel|r
    .complete 25871,1 --Captured Feralas Sentinel
    .target Captured Feralas Sentinel
    .isOnQuest 25871
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,46.82,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brienna Starglow|r
    .turnin 25871 >>Turn in Save the Sentinel
    .target Brienna Starglow
    .isOnQuest 25871
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,46.82,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brienna Starglow|r
    .accept 27275 >>Accept Together Again
    .target Brienna Starglow
    .isQuestTurnedIn 25871 --any of: Save the Sentinel
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,46.40,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quentin|r
    .turnin 25869 >>Turn in Grimtotem in the Post
    .target Quentin
    .isOnQuest 25869
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27275 >>Turn in Together Again
    .target Feralas Sentinel
    .isOnQuest 27275
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .accept 27314 >>Accept Grimtotem Chiefs: Isha Gloomaxe
    .accept 27310 >>Accept No Weapons For You!
    .accept 27312 >>Accept Darkcloud Grimtotem
    .target Feralas Sentinel
    .isQuestTurnedIn 27275 --any of: Together Again
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,43.55,43.40
    >>Click the |cRXP_PICK_Grimtotem Weapon Rack|r
    .complete 27310,1 --Grimtotem Weapon Rack
    .isOnQuest 27310
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,43.75,43.76
    >>Kill |cRXP_ENEMY_Isha Gloomaxe|r
    .complete 27314,1 --Isha Gloomaxe slain (1)
    .mob Isha Gloomaxe
    .isOnQuest 27314
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,43.40,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Rattle of Bones|r
    .accept 27316 >>Accept The Rattle of Bones
    .target The Rattle of Bones
    .isQuestTurnedIn 27275 --any of: Together Again
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 64,42.49,43.72,0
    .goto 64,42.49,43.72,40,0
    .goto 64,42.20,47.54,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Stompers|r, |cRXP_ENEMY_Grimtotem Reavers|r and |cRXP_ENEMY_Grimtotem Geomancers|r
    .complete 27312,1 --Grimtotem Stomper (8)
    .mob Grimtotem Stomper
    .mob Grimtotem Reaver
    .mob Grimtotem Geomancer
    .isOnQuest 27312
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27314 >>Turn in Grimtotem Chiefs: Isha Gloomaxe
    .target Feralas Sentinel
    .isOnQuest 27314
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .accept 28283 >>Accept What's that Rattle?
    .accept 27318 >>Accept Grimtotem Chiefs: Elder Stormhoof
    .target Feralas Sentinel
    .isQuestTurnedIn 27314 --any of: Grimtotem Chiefs: Isha Gloomaxe
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27316 >>Turn in The Rattle of Bones
    .target Feralas Sentinel
    .isOnQuest 27316
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27312 >>Turn in Darkcloud Grimtotem
    .target Feralas Sentinel
    .isOnQuest 27312
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .accept 27325 >>Accept The Drums of War
    .accept 27320 >>Accept The Writ of History
    .target Feralas Sentinel
    .isQuestTurnedIn 27316 --any of: The Rattle of Bones
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27310 >>Turn in No Weapons For You!
    .target Feralas Sentinel
    .isOnQuest 27310
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,43.40,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Rattle of Bones|r
    .turnin 28283 >>Turn in What's that Rattle?
    .target The Rattle of Bones
    .isOnQuest 28283
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,39.06,41.15
    >>Kill |cRXP_ENEMY_Elder Stormhoof|r
    .complete 27318,1 --Elder Stormhoof slain (1)
    .mob Elder Stormhoof
    .isOnQuest 27318
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,38.67,41.86
    >>Pick up |cRXP_PICK_The Writ of History|r from the ground
    .complete 27320,1 --The Writ of History (1)
    .isOnQuest 27320
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27318 >>Turn in Grimtotem Chiefs: Elder Stormhoof
    .target Feralas Sentinel
    .isOnQuest 27318
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .accept 27323 >>Accept Grimtotem Chiefs: Grundig Darkcloud
    .target Feralas Sentinel
    .isQuestTurnedIn 27318 --any of: Grimtotem Chiefs: Elder Stormhoof
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27320 >>Turn in The Writ of History
    .target Feralas Sentinel
    .isOnQuest 27320
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,34.06,40.08
    >>Kill |cRXP_ENEMY_Grundig Darkcloud|r
    .complete 27323,1 --Grundig Darkcloud slain (1)
    .mob Grundig Darkcloud
    .isOnQuest 27323
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,33.97,37.17
    >>Pick up |cRXP_PICK_The Drums of War|r from the ground
    .complete 27325,1 --The Drums of War (1)
    .isOnQuest 27325
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27325 >>Turn in The Drums of War
    .target Feralas Sentinel
    .isOnQuest 27325
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27323 >>Turn in Grimtotem Chiefs: Grundig Darkcloud
    .target Feralas Sentinel
    .isOnQuest 27323
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .turnin 28085 >>Turn in Trouble at Highperch
    .target Pao'ka Swiftmountain
    .isOnQuest 28085
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
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
step << NightElf
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
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
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
    .isOnQuest 10350
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
step
    +|cRXP_WARN_That is all of Thousand Needles for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Hero's Call: Feralas!, Hero's Call: Thousand Needles! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Southern Barrens|r: Hero's Call: Southern Barrens! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7 << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
step
    +|cRXP_WARN_Suggested next zones at level 40|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 2.7 levels of quests, starting around Chromie), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.7 levels of quests, starting around Tabetha), |cRXP_FRIENDLY_Western Plaguelands|r (about 0.6 levels of quests, starting around Daria L'Rayne). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Thousand Needles is planned from level 44.|r Load its guide for level 44 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 40 - 48 Thousand Needles
#subweight -40
#name 44-45 Thousand Needles
--RouteBuilder:next
#next Zone Routes (Alliance)\42-44 Eastern Plaguelands: around Tarenar Sunstrike;Zone Routes (Alliance)\45-48 Tanaris: around Mazoga;Zone Routes (Alliance)\45-47 Badlands

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,75.90,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .accept 27446 >>Accept Tanaris is Calling
    .target Fizzle Brassbolts
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,44.63,50.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Montarr|r
    .accept 25873 >>Accept Horn of the Traitor
    .target Montarr
    .isQuestTurnedIn 25835 --any of: Free Freewind Post
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,46.07,51.53
    >>Kill |cRXP_ENEMY_Cliffwatcher Longhorn|r and loot |cRXP_LOOT_Longhorn's Horn|r
    .complete 25873,1 --Longhorn's Horn (1)
    .mob Cliffwatcher Longhorn
    .isOnQuest 25873
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .accept 27327 >>Accept Grimtotem Chiefs: The Chief of Chiefs
    .target Feralas Sentinel
    .isQuestTurnedIn 27323 --any of: Grimtotem Chiefs: Grundig Darkcloud
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,37.83,26.59
    >>Kill |cRXP_ENEMY_Arnak Grimtotem|r
    .complete 27327,1 --Arnak Grimtotem slain (1)
    .mob Arnak Grimtotem
    .isOnQuest 27327
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .turnin 27327 >>Turn in Grimtotem Chiefs: The Chief of Chiefs
    .target Feralas Sentinel
    .isOnQuest 27327
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feralas Sentinel|r
    .accept 27357 >>Accept The Captive Bride
    .target Feralas Sentinel
    .isQuestTurnedIn 27320 --The Writ of History
    .isQuestTurnedIn 27325 --The Drums of War
    .isQuestTurnedIn 27327 --Grimtotem Chiefs: The Chief of Chiefs
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,39.15,25.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 27357 >>Turn in The Captive Bride
    .target Lakota Windsong
    .isOnQuest 27357
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .accept 28086 >>Accept Free the Pridelings
    .accept 28087 >>Accept Death to all Trappers!
    .target Pao'ka Swiftmountain
    .isQuestTurnedIn 28085 --any of: Trouble at Highperch
    .xp <38,1
step
    #loop
    .goto 64,11.00,34.56,0
    .goto 64,11.00,34.56,40,0
    .goto 64,11.10,38.51,40,0
    .goto 64,13.78,37.49,40,0
    >>Kill |cRXP_ENEMY_Twilight Trappers|r. Loot them for |cRXP_LOOT_Trapper Net|r
    .complete 28087,1 --Trapper Net (8)
    .mob Twilight Trapper
    .isOnQuest 28087
step
    #loop
    .goto 64,10.67,39.68,0
    .goto 64,10.67,39.68,40,0
    .goto 64,13.15,38.78,40,0
    .goto 64,11.25,33.42,40,0
    >>Interact with |cRXP_FRIENDLY_Highperch Pridelings|r
    .complete 28086,1 --Highperch Prideling (12)
    .target Highperch Prideling
    .isOnQuest 28086
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .turnin 28086 >>Turn in Free the Pridelings
    .target Pao'ka Swiftmountain
    .isOnQuest 28086
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .turnin 28087 >>Turn in Death to all Trappers!
    .target Pao'ka Swiftmountain
    .isOnQuest 28087
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .accept 28088 >>Accept Release Heartrazor
    .target Pao'ka Swiftmountain
    .isQuestTurnedIn 28086 --Free the Pridelings
    .isQuestTurnedIn 28087 --Death to all Trappers!
    .xp <38,1
step
    .goto 64,17.87,40.88
    >>Release Heartrazor from all bonds restraining him.
    .complete 28088,1 --Heartrazor
    .target Heartrazor
    .isOnQuest 28088
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .turnin 28088 >>Turn in Release Heartrazor
    .target Pao'ka Swiftmountain
    .isOnQuest 28088
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .accept 28098 >>Accept The Twilight Skymaster
    .target Pao'ka Swiftmountain
    .isQuestTurnedIn 28088 --any of: Release Heartrazor
    .xp <38,1
step
    .goto 64,12.94,34.03
    >>Kill |cRXP_ENEMY_Heartrazor|r
    .complete 28098,1 --Heartrazor slain (1)
    .mob Heartrazor
    .isOnQuest 28098
step
    .goto 64,19.47,48.84
    >>Kill |cRXP_ENEMY_Twilight Skymaster Richtofen|r
    .complete 28098,2 --Twilight Skymaster Richtofen slain (1)
    .mob Twilight Skymaster Richtofen
    .isOnQuest 28098
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .turnin 28098 >>Turn in The Twilight Skymaster
    .target Pao'ka Swiftmountain
    .isOnQuest 28098
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .accept 28124 >>Accept On to the Bulwark
    .target Pao'ka Swiftmountain
    .isQuestTurnedIn 28098 --any of: The Twilight Skymaster
    .xp <38,1
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 28124 >>Turn in On to the Bulwark
    .target Lakota Windsong
    .isOnQuest 28124
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .accept 28125 >>Accept Something to Wear
    .accept 28127 >>Accept Break Them Out
    .target Lakota Windsong
    .isQuestTurnedIn 28124 --any of: On to the Bulwark
    .xp <38,1
step
    #loop
    .goto 64,28.87,54.11,0
    .goto 64,28.87,54.11,40,0
    .goto 64,27.44,57.14,40,0
    >>Kill |cRXP_ENEMY_Bulwark Defenders|r, |cRXP_ENEMY_Twilight Magus|r and |cRXP_ENEMY_Twilight Jailers|r. Loot them for |cRXP_LOOT_Twilight's Hammer Armor|r
    .complete 28125,1 --Twilight's Hammer Armor (1)
    .mob Bulwark Defender
    .mob Twilight Magus
    .mob Twilight Jailer
    .isOnQuest 28125
step
    #loop
    .goto 64,27.42,56.24,0
    .goto 64,27.42,56.24,40,0
    .goto 64,29.29,57.43,40,0
    .goto 64,31.31,55.08,40,0
    >>Kill |cRXP_ENEMY_Bulwark Prisoners|r and |cRXP_ENEMY_Twilight Jailers|r
    .complete 28127,1 --Bulwark Prisoner (5)
    .mob Bulwark Prisoner
    .mob Twilight Jailer
    .isOnQuest 28127
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 28127 >>Turn in Break Them Out
    .target Lakota Windsong
    .isOnQuest 28127
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 28125 >>Turn in Something to Wear
    .target Lakota Windsong
    .isOnQuest 28125
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .accept 28136 >>Accept Behind You!
    .accept 28139 >>Accept Codemaster's Code
    .target Lakota Windsong
    .isQuestTurnedIn 28125 --Something to Wear
    .isQuestTurnedIn 28127 --Break Them Out
    .xp <38,1
step
    .goto 64,29.95,54.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Fastfuse|r
    .complete 28136,2 --Commander Fastfuse
    .target Commander Fastfuse
    .isOnQuest 28136
step
    .goto 64,31.24,59.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Codemaster Deethuk|r
    .complete 28136,1 --Codemaster Deethuk
    .target Codemaster Deethuk
    .isOnQuest 28136
step
    .goto 64,31.19,59.84
    >>Open the |cRXP_PICK_Codemaster's Code Device|r. Loot it for |cRXP_LOOT_Codemaster's Code|r
    .complete 28139,1 --Codemaster's Code (1)
    .isOnQuest 28139
step
    .goto 64,27.98,57.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Starion|r
    .complete 28136,3 --Elementalist Starion
    .target Elementalist Starion
    .isOnQuest 28136
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 28136 >>Turn in Behind You!
    .target Lakota Windsong
    .isOnQuest 28136
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 28139 >>Turn in Codemaster's Code
    .target Lakota Windsong
    .isOnQuest 28139
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .accept 28140 >>Accept The Elder Crone
    .target Lakota Windsong
    .isQuestTurnedIn 28136 --Behind You!
    .isQuestTurnedIn 28139 --Codemaster's Code
    .xp <38,1
step
    .goto 64,35.90,60.70
    >>Click the |cRXP_PICK_Magatha's Bonds Controller|r
    .complete 28140,1 --Magatha's Bonds Controller
    .isOnQuest 28140
step
    .goto 64,35.87,60.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28140 >>Turn in The Elder Crone
    .target ?
    .isOnQuest 28140
step
    .goto 64,35.87,60.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 28142 >>Accept To the Withering
    .target !
    .isQuestTurnedIn 28140 --any of: The Elder Crone
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,46.40,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quentin|r
    .turnin 25873 >>Turn in Horn of the Traitor
    .target Quentin
    .isOnQuest 25873
step
    .goto 64,50.15,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 28142 >>Turn in To the Withering
    .target Magatha Grimtotem
    .isOnQuest 28142
step
    .goto 64,50.15,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .accept 28157 >>Accept Four Twilight Elements
    .accept 28158 >>Accept Unbound
    .target Magatha Grimtotem
    .isQuestTurnedIn 28142,28143 --any of: To the Withering, To the Withering
    .xp <38,1
step
    .goto 64,52.76,58.55
    >>Pick up |cRXP_PICK_Twilight Element of Water|r from the ground
    .complete 28157,4 --Twilight Element of Water (1)
    .isOnQuest 28157
step
    .goto 64,53.34,59.27
    >>Kill |cRXP_ENEMY_Bound Fury|r
    .complete 28158,1 --Bound Fury slain (1)
    .mob Bound Fury
    .isOnQuest 28158
step
    .goto 64,57.52,59.55
    >>Pick up |cRXP_PICK_Twilight Element of Air|r from the ground
    .complete 28157,1 --Twilight Element of Air (1)
    .isOnQuest 28157
step
    .goto 64,57.42,60.96
    >>Kill |cRXP_ENEMY_Bound Vortex|r
    .complete 28158,2 --Bound Vortex slain (1)
    .mob Bound Vortex
    .isOnQuest 28158
step
    .goto 64,60.51,64.52
    >>Pick up |cRXP_PICK_Twilight Element of Fire|r from the ground
    .complete 28157,3 --Twilight Element of Fire (1)
    .isOnQuest 28157
step
    .goto 64,53.25,63.68
    >>Pick up |cRXP_PICK_Twilight Element of Earth|r from the ground
    .complete 28157,2 --Twilight Element of Earth (1)
    .isOnQuest 28157
step
    .goto 64,50.15,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 28157 >>Turn in Four Twilight Elements
    .target Magatha Grimtotem
    .isOnQuest 28157
step
    .goto 64,50.15,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 28158 >>Turn in Unbound
    .target Magatha Grimtotem
    .isOnQuest 28158
step
    .goto 64,50.15,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .accept 28159 >>Accept The Doomstone
    .target Magatha Grimtotem
    .isQuestTurnedIn 28157 --Four Twilight Elements
    .isQuestTurnedIn 28158 --Unbound
    .xp <38,1
step
    .goto 64,54.89,63.07
    >>Kill |cRXP_ENEMY_Animus|r and loot |cRXP_LOOT_The Doomstone|r
    .complete 28159,1 --The Doomstone (1)
    .mob Animus
    .isOnQuest 28159
step
    .goto 64,50.15,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .turnin 28159 >>Turn in The Doomstone
    .target Magatha Grimtotem
    .isOnQuest 28159
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,50.15,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .accept 28160 >>Accept Spread the Word
    .target Magatha Grimtotem
    .isQuestTurnedIn 28159 --any of: The Doomstone
    .xp <38,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 64,75.90,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .turnin 28160 >>Turn in Spread the Word
    .target Fizzle Brassbolts
    .isOnQuest 28160
step
    +|cRXP_WARN_That is all of Thousand Needles for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Tanaris|r: Tanaris is Calling << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 44|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 0.9 levels of quests, starting around Tarenar Sunstrike), |cRXP_FRIENDLY_Tanaris|r (about 0.9 levels of quests, starting around Mazoga), |cRXP_FRIENDLY_Badlands|r (about 0.8 levels of quests, starting around Dolph Blastus). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Thousand Needles is planned from level 47.|r Load its guide for level 47 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 40 - 48 Thousand Needles
#subweight -40
#name 47-48 Thousand Needles
--RouteBuilder:next
#next Zone Routes (Alliance)\46-48 Felwood: around Totem of Ruumbo;Zone Routes (Alliance)\45-48 Tanaris: around Mazoga;Zone Routes (Alliance)\47-49 Searing Gorge: around Jack Rockleg

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28543 >>Accept Hero's Call: Felwood!
step
    +|cRXP_WARN_End of the Thousand Needles route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Felwood|r: Hero's Call: Felwood! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 47|r: |cRXP_FRIENDLY_Felwood|r (about 2.4 levels of quests, starting around Totem of Ruumbo), |cRXP_FRIENDLY_Tanaris|r (about 1.0 levels of quests, starting around Mazoga), |cRXP_FRIENDLY_Searing Gorge|r (about 0.8 levels of quests, starting around Jack Rockleg). Completing this step loads the guide for Felwood --RouteBuilder:next
]])
