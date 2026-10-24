-- 40-45 Thousand Needles: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 40, 45).
-- Split into 2 guides, listed under "40 - 46 Thousand Needles" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Thousand Needles.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 40 - 46 Thousand Needles
#subweight -40
#name 40-43 Thousand Needles: around Brivelthwerp
--RouteBuilder:next
#next Zone Routes (Horde)\42-44 Eastern Plaguelands: around Tarenar Sunstrike;Zone Routes (Horde)\37-40 Dustwallow Marsh: around Tabetha

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,11.13,11.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati Greycloud|r
    .turnin 25478 >>Turn in To the Summit
    .target Kanati Greycloud
    .isQuestComplete 25478
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,11.13,11.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati Greycloud|r
    .turnin 25356 >>Turn in To the Summit
    .target Kanati Greycloud
    .isQuestComplete 25356
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,11.13,11.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati Greycloud|r
    .accept 25487 >>Accept The Grimtotem are Coming
    .target Kanati Greycloud
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,11.05,9.91,0
    .goto 64,11.05,9.91,40,0
    .goto 64,13.04,5.84,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Pillagers|r
    .complete 25487,1 --Grimtotem Pillager slain (7)
    .mob Grimtotem Pillager
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,10.55,8.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega Firemane|r
    .turnin 25487 >>Turn in The Grimtotem are Coming
    .accept 25489 >>Accept Two If By Boat
    .target Motega Firemane
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 88,56.99,89.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sark Ragetotem|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Sark Ragetotem
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 88,57.30,89.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .accept 27278 >>Accept Grimshot's Call
    .target Holt Thunderhorn
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
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
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28510 >>Accept Warchief's Command: Feralas!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28504 >>Accept Warchief's Command: Thousand Needles!
    .accept 28548 >>Accept Warchief's Command: Desolace!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 88,22.76,14.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Archmage Shymm
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 88,25.24,13.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delano Morisett|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Delano Morisett
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 88,21.99,18.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kador Cloudsong|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Kador Cloudsong
step
    .goto 88,24.56,22.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai Cross|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Malakai Cross
step
    #completewith next
    .zone 64 >>Leave Thunder Bluff for Thousand Needles
    .zoneskip 64
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,75.93,74.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 25489 >>Turn in Two If By Boat
    .accept 25505 >>Accept Do Me a Favor?
    .target Pozzik
step
    .goto 64,76.47,74.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daisy|r
    .target Daisy
    .home >>Set your Hearthstone to Daisy's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,77.19,74.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .turnin 25505 >>Turn in Do Me a Favor?
    .accept 25516 >>Accept Down in the Deeps
    .target Razzeric
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along21
    >>As you go: Pick up |cRXP_PICK_Rocket Car Parts|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 25516,1 --Rocket Car Parts (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along21
    .goto 64,79.53,75.06
    >>Click the |cRXP_PICK_Submerged Outhouse|r
    .accept 25526 >>Accept In the Outhouse
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,78.30,74.58,0
    .goto 64,78.30,74.58,40,0
    .goto 64,77.55,77.39,40,0
    .goto 64,79.91,77.13,40,0
    >>Pick up |cRXP_PICK_Rocket Car Parts|r from the ground
    >>Kill |cRXP_ENEMY_Southsea Treasure Hunter|r and loot |cRXP_LOOT_Pirate's Crowbar|r
    .complete 25516,1 --Rocket Car Parts (10)
    .collect 54821,1,25526,1 --Pirate's Crowbar (1)
    .mob Southsea Treasure Hunter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,77.19,74.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .turnin 25516 >>Turn in Down in the Deeps while you are here
    .isQuestComplete 25516
    .target Razzeric
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,79.53,75.06
    >>Click the |cRXP_PICK_Submerged Outhouse|r
    .complete 25526,1 --Submerged Outhouse
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,79.53,75.06
    >>Click the |cRXP_PICK_Submerged Outhouse|r
    .turnin 25526 >>Turn in In the Outhouse
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,78.10,73.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r
    .accept 25518 >>Accept Bar Fight!
    .target Zamek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,76.68,74.42
    >>Kill |cRXP_ENEMY_Gnome Bar Patrons|r
    .complete 25518,1 --Gnome Bar Patron (8)
    .mob Gnome Bar Patron
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,78.10,73.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r
    .turnin 25518 >>Turn in Bar Fight!
    .target Zamek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,77.19,74.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .turnin 25516 >>Turn in Down in the Deeps
    .accept 25533 >>Accept Pirate Accuracy Increasing
    .target Razzeric
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along29
    >>As you go: Click the |cRXP_PICK_Pirate Accuracy Increasing Fire|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25533,2 --Pirate Accuracy Increasing Fire
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along29
    .goto 64,78.26,73.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Griznak|r
    .complete 25533,1 --Griznak
    .target Griznak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,78.34,73.42,0
    .goto 64,78.34,73.42,40,0
    .goto 64,76.66,73.87,40,0
    >>Click the |cRXP_PICK_Pirate Accuracy Increasing Fire|r
    .complete 25533,2 --Pirate Accuracy Increasing Fire
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    .turnin 25533 >>Turn in Pirate Accuracy Increasing
    .unitscan ?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,74.44,76.09,0
    .goto 64,74.44,76.09,40,0
    .goto 64,74.20,72.80,40,0
    .goto 64,75.32,70.66,40,0
    .goto 64,78.32,77.41,40,0
    .goto 64,78.20,69.00,40,0
    .goto 64,79.98,75.18,40,0
    .goto 64,79.86,69.54,40,0
    .goto 64,80.67,70.85,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25543 >>Accept Circle the Wagons... er, Boats
    .unitscan !
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,73.44,71.35,0
    .goto 64,73.44,71.35,40,0
    .goto 64,73.35,76.95,40,0
    .goto 64,75.27,80.41,40,0
    .goto 64,76.17,67.38,40,0
    >>Kill |cRXP_ENEMY_Southsea Rowboats|r
    .complete 25543,1 --Southsea Rowboat slain (15)
    .mob Southsea Rowboat
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,77.19,74.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .turnin 25543 >>Turn in Circle the Wagons... er, Boats
    .accept 25586 >>Accept Quiet the Cannons
    .target Razzeric
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,75.93,74.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .accept 25745 >>Accept Negotiations
    .target Pozzik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,78.10,73.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r
    .accept 25596 >>Accept Where's Synge?
    .target Zamek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,78.23,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rugfizzle|r
    .accept 25589 >>Accept A Little Payback
    .target Rugfizzle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,78.26,73.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Griznak|r
    .accept 28042 >>Accept Special Delivery for Brivelthwerp
    .target Griznak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Southsea Parrot Handlers|r and |cRXP_ENEMY_Southsea Sailors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25589,1 --Southsea Parrot Handler (8)
    .mob Southsea Parrot Handler
    .mob Southsea Sailor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along39
    .goto 64,91.68,79.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Synge|r
    .turnin 25596 >>Turn in Where's Synge?
    .accept 25610 >>Accept Sunken Treasure
    .target Synge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,91.27,79.94,0
    .goto 64,91.27,79.94,40,0
    .goto 64,92.16,77.02,40,0
    >>Kill |cRXP_ENEMY_Southsea Parrot Handlers|r and |cRXP_ENEMY_Southsea Sailors|r
    .complete 25589,1 --Southsea Parrot Handler (8)
    .mob Southsea Parrot Handler
    .mob Southsea Sailor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,91.35,75.99,0
    .goto 64,91.35,75.99,40,0
    .goto 64,94.00,71.18,40,0
    >>Interact with |cRXP_FRIENDLY_Holdfast Cannons|r
    .complete 25586,1 --Holdfast Cannon (8)
    .target Holdfast Cannon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Daisy's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,77.19,74.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .turnin 25586 >>Turn in Quiet the Cannons
    .target Razzeric
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,78.23,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rugfizzle|r
    .turnin 25589 >>Turn in A Little Payback
    .target Rugfizzle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,79.04,68.33,0
    .goto 64,79.04,68.33,40,0
    .goto 64,76.55,67.12,40,0
    .goto 64,82.00,69.41,40,0
    >>Pick up |cRXP_PICK_Sunken Treasure Chest|r from the ground
    .complete 25610,1 --Sunken Treasure Chest (8)
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28042 >>Turn in Special Delivery for Brivelthwerp << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 28051 >>Accept We All Scream for Ice Cream... and then Die!
    .accept 28045 >>Accept The Greatest Flavor in the World!
    .target Brivelthwerp
step
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Silithid Ravager|r and loot |cRXP_LOOT_Scoop of Silithid Goo|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28045,1 --Scoop of Silithid Goo (1)
    .mob Silithid Ravager
step
    #label Along46
    #loop
    .goto 64,69.46,86.59,0
    .goto 64,69.46,86.59,40,0
    .goto 64,71.08,82.69,40,0
    .goto 64,67.02,83.08,40,0
    >>Interact with |cRXP_FRIENDLY_Dead Employees|r
    .complete 28051,1 --Dead Employee (10)
    .target Dead Employee
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28051 >>Turn in We All Scream for Ice Cream... and then Die! while you are here
    .isQuestComplete 28051
    .target Brivelthwerp
step
    .goto 64,71.50,83.01
    >>Kill |cRXP_ENEMY_Silithid Ravager|r and loot |cRXP_LOOT_Scoop of Silithid Goo|r
    .complete 28045,1 --Scoop of Silithid Goo (1)
    .mob Silithid Ravager
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28045 >>Turn in The Greatest Flavor in the World!
    .turnin 28051 >>Turn in We All Scream for Ice Cream... and then Die!
    .accept 28047 >>Accept Freezing the Pipes
    .accept 28048 >>Accept That Smart One's Gotta Go
    .target Brivelthwerp
step
    .goto 64,64.92,85.73
    >>Click the |cRXP_PICK_Refrigeration Pipe|r
    >>Kill |cRXP_ENEMY_Hive Controller|r
    .complete 28047,3 --Refrigeration Pipe
    .complete 28047,4 --Refrigeration Pipe
    .complete 28048,1 --Hive Controller slain (1)
    .complete 28047,2 --Refrigeration Pipe
    .complete 28047,1 --Refrigeration Pipe
    .mob Hive Controller
step
    .goto 64,69.88,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brivelthwerp|r
    .turnin 28047 >>Turn in Freezing the Pipes
    .turnin 28048 >>Turn in That Smart One's Gotta Go
    .target Brivelthwerp
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,91.68,79.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Synge|r
    .turnin 25610 >>Turn in Sunken Treasure
    .accept 25628 >>Accept Two-Tusk Takedown
    .target Synge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,95.21,79.55
    >>Kill |cRXP_ENEMY_Tony Two-Tusk|r and loot |cRXP_LOOT_Rusted Cage Key|r
    .complete 25628,1 --Rusted Cage Key (1)
    .mob Tony Two-Tusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,91.68,79.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Synge|r
    .turnin 25628 >>Turn in Two-Tusk Takedown
    .target Synge
step
    .goto 64,91.77,78.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Tony Two-Tusk|r
    .accept 25660 >>Accept Haunted
    .target Spirit of Tony Two-Tusk
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .turnin 25660 >>Turn in Haunted
    .accept 25661 >>Accept With a Little Help...
    .target Ajamon Ghostcaller
step
    .goto 64,91.04,68.96
    >>Kill |cRXP_ENEMY_Evil Dolly|r and loot |cRXP_LOOT_Evil Dolly's Heart|r
    .complete 25661,1 --Evil Dolly's Heart (1)
    .mob Evil Dolly
step
    .goto 64,87.88,75.97
    >>Kill |cRXP_ENEMY_Seadog Fajardo|r and loot |cRXP_LOOT_Seadog Fajardo's Lungs|r
    >>Kill |cRXP_ENEMY_Lilly Landlubber|r and loot |cRXP_LOOT_Lilly Landlubber's Liver|r
    .complete 25661,2 --Seadog Fajardo's Lungs (1)
    .complete 25661,3 --Lilly Landlubber's Liver (1)
    .mob Seadog Fajardo
    .mob Lilly Landlubber
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .turnin 25661 >>Turn in With a Little Help...
    .accept 25672 >>Accept Carcass Collection
    .target Ajamon Ghostcaller
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,88.58,54.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riznek|r
    .turnin 25745 >>Turn in Negotiations
    .accept 25757 >>Accept Get Koalbeard!
    .target Riznek
step
    .goto 64,90.08,53.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skycaller Vrakthris|r
    .accept 25762 >>Accept The Ancient Brazier
    .target Skycaller Vrakthris
step
    .goto 64,42.05,32.66
    >>Kill |cRXP_ENEMY_Aquarian|r and loot |cRXP_LOOT_The Sacred Flame|r
    >>Click the |cRXP_PICK_The Ancient Brazier|r
    .complete 25762,2 --The Sacred Flame (1)
    .complete 25762,1 --The Ancient Brazier
    .mob Aquarian
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,86.82,51.46
    >>Kill |cRXP_ENEMY_Kravel Koalbeard|r and loot |cRXP_LOOT_Alliance's Proposal|r
    .complete 25757,1 --Alliance's Proposal (1)
    .mob Kravel Koalbeard
step
    .goto 64,90.08,53.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skycaller Vrakthris|r
    .turnin 25762 >>Turn in The Ancient Brazier
    .target Skycaller Vrakthris
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,88.58,54.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riznek|r
    .turnin 25757 >>Turn in Get Koalbeard!
    .accept 25775 >>Accept Fool's Gold
    .target Riznek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,48.28,41.96,0
    .goto 64,48.28,41.96,40,0
    .goto 64,45.79,39.74,40,0
    >>Loot the |cRXP_PICK_Needles Iron Pyrites|r for |cRXP_LOOT_Needles Pyrite Ore Chunk|r
    .complete 25775,1 --Needles Pyrite Ore Chunk (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,88.58,54.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riznek|r
    .turnin 25775 >>Turn in Fool's Gold
    .accept 25779 >>Accept Fake Gold for Black Gold
    .target Riznek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,86.75,51.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Blizh|r
    .turnin 25779 >>Turn in Fake Gold for Black Gold
    .accept 25791 >>Accept Back to Riznek
    .target Khan Blizh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,88.58,54.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riznek|r
    .turnin 25791 >>Turn in Back to Riznek
    .accept 25799 >>Accept Defend the Drill
    .target Riznek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,90.75,51.28
    >>Defend the Oil Drilling Rig.
    .complete 25799,1 --Oil Drilling Rig
    .target Oil Drilling Rig
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,88.58,54.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riznek|r
    .turnin 25799 >>Turn in Defend the Drill
    .accept 25797 >>Accept Eminent Domain
    .accept 25814 >>Accept Go Blow that Horn
    .target Riznek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,91.00,55.15,0
    .goto 64,91.00,55.15,40,0
    .goto 64,89.46,50.97,40,0
    .goto 64,89.84,45.24,40,0
    >>Click the |cRXP_PICK_Horn Mouthpiece|r
    >>Kill |cRXP_ENEMY_Whrrrl|r
    >>Kill |cRXP_ENEMY_Galak Stormers|r, |cRXP_ENEMY_Galak Wranglers|r and |cRXP_ENEMY_Galak Maulers|r
    .complete 25814,2 --Horn Mouthpiece
    .complete 25814,1 --Whrrrl slain (1)
    .complete 25797,1 --Galak Stormer (8)
    .mob Whrrrl
    .mob Galak Stormer
    .mob Galak Wrangler
    .mob Galak Mauler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,88.58,54.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riznek|r
    .turnin 25814 >>Turn in Go Blow that Horn
    .turnin 25797 >>Turn in Eminent Domain
    .accept 25826 >>Accept Deliver the Goods
    .target Riznek
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .turnin 25672 >>Turn in Carcass Collection
    .accept 25704 >>Accept The Mad Magus
    .target Ajamon Ghostcaller
step
    .goto 64,85.14,91.77
    >>Interact with |cRXP_FRIENDLY_Mad Magus Tirth|r
    .complete 25704,1 --Mad Magus Tirth
    .target Mad Magus Tirth
step
    .goto 64,96.82,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajamon Ghostcaller|r
    .turnin 25704 >>Turn in The Mad Magus
    .target Ajamon Ghostcaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Daisy's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,75.93,74.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 25826 >>Turn in Deliver the Goods
    .accept 25836 >>Accept Free Freewind Post
    .target Pozzik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,46.36,57.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalia Amberhide|r
    .turnin 25836 >>Turn in Free Freewind Post
    .accept 25870 >>Accept Grimtotem in the Post
    .target Thalia Amberhide
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along81
    >>As you go: Kill |cRXP_ENEMY_Grimtotem Invaders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25870,1 --Grimtotem Invader slain (10)
    .mob Grimtotem Invader
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,46.81,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .accept 25872 >>Accept The Brave and the Bold
    .target Rau Cliffrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,45.24,50.17
    >>Kill |cRXP_ENEMY_Captured Freewind Brave|r
    .complete 25872,1 --Captured Freewind Brave slain (1)
    .mob Captured Freewind Brave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along81
    .goto 64,44.63,50.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Montarr|r
    .accept 25874 >>Accept Horn of the Traitor
    .target Montarr
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,45.17,50.23,0
    .goto 64,45.17,50.23,40,0
    .goto 64,42.46,49.50,40,0
    .goto 64,46.45,54.69,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Invaders|r
    .complete 25870,1 --Grimtotem Invader slain (10)
    .mob Grimtotem Invader
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,46.36,57.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalia Amberhide|r
    .turnin 25870 >>Turn in Grimtotem in the Post
    .target Thalia Amberhide
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,46.81,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau Cliffrunner|r
    .turnin 25872 >>Turn in The Brave and the Bold
    .accept 27276 >>Accept Together Again
    .target Rau Cliffrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,46.07,51.53
    >>Kill |cRXP_ENEMY_Cliffwatcher Longhorn|r and loot |cRXP_LOOT_Longhorn's Horn|r
    .complete 25874,1 --Longhorn's Horn (1)
    .mob Cliffwatcher Longhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,46.36,57.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalia Amberhide|r
    .turnin 25874 >>Turn in Horn of the Traitor
    .target Thalia Amberhide
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .accept 27315 >>Accept Grimtotem Chiefs: Isha Gloomaxe
    .target Freewind Brave
    .isQuestTurnedIn 27275 --any of: Together Again
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .turnin 27276 >>Turn in Together Again
    .accept 27313 >>Accept Darkcloud Grimtotem
    .accept 27311 >>Accept No Weapons For You!
    .target Freewind Brave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Grimtotem Stompers|r, |cRXP_ENEMY_Grimtotem Reavers|r and |cRXP_ENEMY_Grimtotem Geomancers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27313,1 --Grimtotem Stomper (8)
    .mob Grimtotem Stomper
    .mob Grimtotem Reaver
    .mob Grimtotem Geomancer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,43.55,43.40
    >>Click the |cRXP_PICK_Grimtotem Weapon Rack|r
    .complete 27311,1 --Grimtotem Weapon Rack
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,43.75,43.76
    >>Kill |cRXP_ENEMY_Isha Gloomaxe|r
    .complete 27315,1 --Isha Gloomaxe slain (1)
    .mob Isha Gloomaxe
    .isOnQuest 27315
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along91
    .goto 64,43.40,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Rattle of Bones|r
    .accept 27317 >>Accept The Rattle of Bones
    .target The Rattle of Bones
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 64,42.49,43.72,0
    .goto 64,42.49,43.72,40,0
    .goto 64,42.20,47.54,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Stompers|r, |cRXP_ENEMY_Grimtotem Reavers|r and |cRXP_ENEMY_Grimtotem Geomancers|r
    .complete 27313,1 --Grimtotem Stomper (8)
    .mob Grimtotem Stomper
    .mob Grimtotem Reaver
    .mob Grimtotem Geomancer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .turnin 27315 >>Turn in Grimtotem Chiefs: Isha Gloomaxe
    .target Freewind Brave
    .isOnQuest 27315
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .turnin 27317 >>Turn in The Rattle of Bones
    .turnin 27313 >>Turn in Darkcloud Grimtotem
    .turnin 27311 >>Turn in No Weapons For You!
    .target Freewind Brave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .accept 27319 >>Accept Grimtotem Chiefs: Elder Stormhoof
    .accept 28284 >>Accept What's that Rattle?
    .target Freewind Brave
    .isQuestTurnedIn 27315 --any of: Grimtotem Chiefs: Isha Gloomaxe
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,43.40,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Rattle of Bones|r
    .turnin 28284 >>Turn in What's that Rattle?
    .target The Rattle of Bones
    .isOnQuest 28284
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,39.06,41.15
    >>Kill |cRXP_ENEMY_Elder Stormhoof|r
    .complete 27319,1 --Elder Stormhoof slain (1)
    .mob Elder Stormhoof
    .isOnQuest 27319
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .accept 27326 >>Accept The Drums of War
    .accept 27321 >>Accept The Writ of History
    .target Freewind Brave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .turnin 27319 >>Turn in Grimtotem Chiefs: Elder Stormhoof
    .target Freewind Brave
    .isOnQuest 27319
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .accept 27324 >>Accept Grimtotem Chiefs: Grundig Darkcloud
    .target Freewind Brave
    .isQuestTurnedIn 27319 --any of: Grimtotem Chiefs: Elder Stormhoof
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,38.67,41.86
    >>Pick up |cRXP_PICK_The Writ of History|r from the ground
    .complete 27321,1 --The Writ of History (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,33.97,37.17
    >>Pick up |cRXP_PICK_The Drums of War|r from the ground
    .complete 27326,1 --The Drums of War (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,34.06,40.08
    >>Kill |cRXP_ENEMY_Grundig Darkcloud|r
    .complete 27324,1 --Grundig Darkcloud slain (1)
    .mob Grundig Darkcloud
    .isOnQuest 27324
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .turnin 27324 >>Turn in Grimtotem Chiefs: Grundig Darkcloud
    .target Freewind Brave
    .isOnQuest 27324
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .accept 27328 >>Accept Grimtotem Chiefs: The Chief of Chiefs
    .target Freewind Brave
    .isQuestTurnedIn 27324 --any of: Grimtotem Chiefs: Grundig Darkcloud
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .turnin 27321 >>Turn in The Writ of History
    .turnin 27326 >>Turn in The Drums of War
    .target Freewind Brave
step << Tauren Druid/Troll Druid
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Tauren Druid/Troll Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade
    .target Sheal Runetotem
step << Tauren Druid/Troll Druid
    #completewith next
    .zone 64 >>Leave Thunder Bluff for Thousand Needles
    .zoneskip 64
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,37.83,26.59
    >>Kill |cRXP_ENEMY_Arnak Grimtotem|r
    .complete 27328,1 --Arnak Grimtotem slain (1)
    .mob Arnak Grimtotem
    .isOnQuest 27328
step
    .goto 64,39.15,25.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .accept 28085 >>Accept Trouble at Highperch
    .target Lakota Windsong
    .isQuestTurnedIn 27329,27330 --any of: Invoking the Serpent, Invoking the Serpent
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .turnin 27328 >>Turn in Grimtotem Chiefs: The Chief of Chiefs
    .target Freewind Brave
    .isOnQuest 27328
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,42.20,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Freewind Brave|r
    .accept 27358 >>Accept The Captive Bride
    .target Freewind Brave
    .isQuestTurnedIn 27328 --Grimtotem Chiefs: The Chief of Chiefs
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,39.15,25.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 27358 >>Turn in The Captive Bride
    .target Lakota Windsong
    .isOnQuest 27358
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .turnin 28085 >>Turn in Trouble at Highperch
    .target Pao'ka Swiftmountain
    .isOnQuest 28085
step
    .goto 64,12.84,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka Swiftmountain|r
    .accept 28087 >>Accept Death to all Trappers!
    .accept 28086 >>Accept Free the Pridelings
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
step << Tauren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
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
    +|cRXP_WARN_That is all of Thousand Needles for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Desolace|r: Warchief's Command: Desolace! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Warchief's Command: Dustwallow Marsh!, Return to Krog, Warchief's Command: Thousand Needles! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Warchief's Command: Feralas! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: A Journey to Moonglade << Tauren Druid/Troll Druid
    >>|cRXP_FRIENDLY_Mulgore|r: Return to Varg << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: Walk With The Earth Mother << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Southern Barrens|r: Warchief's Command: Southern Barrens! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh and back here|r: Deadmire << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 42|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 1.0 levels of quests, starting around Tarenar Sunstrike), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.6 levels of quests, starting around Tabetha). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Thousand Needles is planned from level 45.|r Load its guide for level 45 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 40 - 46 Thousand Needles
#subweight -40
#name 45-46 Thousand Needles
--RouteBuilder:next
#next Zone Routes (Horde)\46-48 Felwood: around Totem of Ruumbo;Zone Routes (Horde)\42-44 Eastern Plaguelands: around Tarenar Sunstrike;Zone Routes (Horde)\45-47 Badlands

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,75.93,74.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .accept 27447 >>Accept Tanaris is Calling
    .target Pozzik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28542 >>Accept Warchief's Command: Felwood!
    .accept 28509 >>Accept Warchief's Command: Tanaris!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
    .isQuestComplete 1205
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 64 >>Leave Thunder Bluff for Thousand Needles
    .zoneskip 64
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
    .accept 28127 >>Accept Break Them Out
    .accept 28125 >>Accept Something to Wear
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
    .turnin 28125 >>Turn in Something to Wear
    .target Lakota Windsong
    .isOnQuest 28125
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 28127 >>Turn in Break Them Out
    .target Lakota Windsong
    .isOnQuest 28127
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
    .turnin 28139 >>Turn in Codemaster's Code
    .target Lakota Windsong
    .isOnQuest 28139
step
    .goto 64,30.47,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota Windsong|r
    .turnin 28136 >>Turn in Behind You!
    .target Lakota Windsong
    .isOnQuest 28136
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,50.15,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r
    .accept 28161 >>Accept Spread the Word
    .target Magatha Grimtotem
    .isQuestTurnedIn 28159 --any of: The Doomstone
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 64,75.93,74.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 28161 >>Turn in Spread the Word
    .target Pozzik
    .isOnQuest 28161
step
    +|cRXP_WARN_End of the Thousand Needles route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Felwood|r: Warchief's Command: Felwood! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Tanaris|r: Tanaris is Calling, Warchief's Command: Tanaris! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 45|r: |cRXP_FRIENDLY_Felwood|r (about 2.4 levels of quests, starting around Totem of Ruumbo), |cRXP_FRIENDLY_Eastern Plaguelands|r (about 0.9 levels of quests, starting around Tarenar Sunstrike), |cRXP_FRIENDLY_Badlands|r (about 0.7 levels of quests, starting around Dolph Blastus). Completing this step loads the guide for Felwood --RouteBuilder:next
]])
