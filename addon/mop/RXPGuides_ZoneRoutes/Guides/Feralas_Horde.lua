-- 36-41 Feralas: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 36, 83).
-- Split into 3 guides, listed under "36 - 84 Feralas" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Feralas.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 36 - 84 Feralas
#subweight -36
#name 36-38 Feralas: around Orhan Ogreblade
#next Zone Routes (Horde)\38-41 Feralas: around Hadoken Swiftstrider

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,51.92,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orhan Ogreblade|r
    .accept 25209 >>Accept The Gordunni Threat
    .accept 25341 >>Accept The Gordunni Orb
    .target Orhan Ogreblade
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,52.25,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gombana|r
    .accept 25336 >>Accept Testing the Vessel
    .target Gombana
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop25475x1
    >>As you go: Kill |cRXP_ENEMY_Ironfur Bears|r and |cRXP_ENEMY_Longtooth Runners|r. Loot them for |cRXP_LOOT_Beast Muisek|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25336,1 --Beast Muisek (1)
    .mob Ironfur Bear
    .mob Longtooth Runner
step
    .goto 69,52.84,47.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .accept 25452 >>Accept The Mark of Quality
    .target Jangdor Swiftstrider
    .home >>Set your Hearthstone to Jangdor Swiftstrider's inn
step
    #completewith Drop25475x1
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x1
    #loop
    .goto 69,61.35,54.92,0
    .goto 69,61.35,54.92,40,0
    .goto 69,61.10,57.80,40,0
    >>Kill |cRXP_ENEMY_Gordunni Shamans|r and |cRXP_ENEMY_Gordunni Warlocks|r. Loot them for |cRXP_LOOT_Gordunni Orb|r
    >>Kill |cRXP_ENEMY_Gordunni Shamans|r, |cRXP_ENEMY_Gordunni Warlocks|r and |cRXP_ENEMY_Gordunni Maulers|r
    .complete 25341,1 --Gordunni Orb (1)
    .complete 25209,1 --Gordunni Shaman (8)
    .mob Gordunni Shaman
    .mob Gordunni Warlock
    .mob Gordunni Mauler
step
    .goto 69,65.95,62.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sensiria|r
    .accept 25423 >>Accept Ancient Suffering
    .accept 25422 >>Accept The Darkmist Legacy
    .target Sensiria
step
    #completewith Drop25475x2
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop25475x2
    #loop
    .goto 69,64.48,60.74,0
    .goto 69,64.48,60.74,40,0
    .goto 69,64.34,56.83,40,0
    >>Kill |cRXP_ENEMY_Highborne Poltergeists|r. Loot them for |cRXP_LOOT_Soul Essence|r
    >>Open the |cRXP_PICK_Loose Soil|r. Loot it for |cRXP_LOOT_Glowing Soil|r
    .complete 25423,1 --Soul Essence (6)
    .complete 25422,1 --Glowing Soil (1)
    .mob Highborne Poltergeist
step
    .goto 69,65.95,62.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sensiria|r
    .turnin 25422 >>Turn in The Darkmist Legacy
    .turnin 25423 >>Turn in Ancient Suffering
    .accept 25368 >>Accept Verinias the Twisted
    .target Sensiria
step
    .goto 69,64.34,56.48
    >>Kill |cRXP_ENEMY_Verinias the Twisted|r
    .complete 25368,1 --Verinias the Twisted slain (1)
    .mob Verinias the Twisted
step
    .goto 69,65.95,62.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sensiria|r
    .turnin 25368 >>Turn in Verinias the Twisted
    .target Sensiria
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,65.92,62.88
    >>Click the |cRXP_PICK_Empty Pedestal|r
    .accept 25645 >>Accept Return to Sage Palerunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Ironfur Bears|r and |cRXP_ENEMY_Longtooth Runners|r. Loot them for |cRXP_LOOT_Beast Muisek|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25336,1 --Beast Muisek (1)
    .mob Ironfur Bear
    .mob Longtooth Runner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,75.09,42.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Palerunner|r
    .turnin 25645 >>Turn in Return to Sage Palerunner
    .accept 25643 >>Accept The Darkmist Ruins
    .target Sage Palerunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .accept 25369 >>Accept Stinglasher
    .target Hadoken Swiftstrider
    .isQuestTurnedIn 25427 --any of: Alpha Strike
    .xp <36,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 36 >>Grind to level 36 (War on the Woodpaw needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along12
    .goto 69,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .accept 25363 >>Accept War on the Woodpaw
    .target Hadoken Swiftstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28548 >>Accept Warchief's Command: Desolace!
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28510 >>Accept Warchief's Command: Feralas!
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 69 >>Leave Thunder Bluff for Feralas
    .zoneskip 69
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Jangdor Swiftstrider's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along14
    >>As you go: Kill |cRXP_ENEMY_Ironfur Bears|r and |cRXP_ENEMY_Longtooth Runners|r. Loot them for |cRXP_LOOT_Beast Muisek|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25336,1 --Beast Muisek (1)
    .mob Ironfur Bear
    .mob Longtooth Runner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along14
    .goto 69,51.92,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orhan Ogreblade|r
    .turnin 25341 >>Turn in The Gordunni Orb
    .turnin 25209 >>Turn in The Gordunni Threat
    .accept 25252 >>Accept Rulers of Dire Maul
    .accept 25342 >>Accept Talk to Swar'jan
    .target Orhan Ogreblade
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,51.90,46.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swar'jan|r
    .turnin 25342 >>Turn in Talk to Swar'jan
    .accept 25344 >>Accept Ogre Abduction
    .target Swar'jan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 69,54.46,45.16,0
    .goto 69,54.46,45.16,40,0
    .goto 69,56.99,44.22,40,0
    .goto 69,59.17,42.62,40,0
    >>Kill |cRXP_ENEMY_Gordok Ogre-Mages|r
    >>Kill |cRXP_ENEMY_Gordok Enforcers|r
    .complete 25252,2 --Gordok Ogre-Mage slain (6)
    .complete 25252,1 --Gordok Enforcer slain (6)
    .mob Gordok Ogre-Mage
    .mob Gordok Enforcer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Ironfur Bears|r and |cRXP_ENEMY_Longtooth Runners|r. Loot them for |cRXP_LOOT_Beast Muisek|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25336,1 --Beast Muisek (1)
    .mob Ironfur Bear
    .mob Longtooth Runner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 69,59.92,38.75,0
    .goto 69,59.92,38.75,40,0
    .goto 69,61.82,39.16,40,0
    .goto 69,59.44,40.30,40,0
    .goto 69,60.26,42.36,40,0
    .goto 69,62.43,43.56,40,0
    .goto 69,59.95,46.58,40,0
    .goto 69,64.27,45.50,40,0
    >>Interact with |cRXP_FRIENDLY_Gordok Ogre-Mage|r
    .complete 25344,1 --Gordok Ogre-Mage
    .target Gordok Ogre-Mage
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,51.90,46.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swar'jan|r
    .turnin 25344 >>Turn in Ogre Abduction
    .target Swar'jan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along19
    .goto 69,51.92,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orhan Ogreblade|r
    .turnin 25252 >>Turn in Rulers of Dire Maul
    .accept 25329 >>Accept Might of the Stonemaul
    .target Orhan Ogreblade
step
    .goto 69,46.03,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .accept 25463 >>Accept Report to Silvia
    .target Shandris Feathermoon
    .isQuestTurnedIn 25458 --any of: General Skessesh
    .xp <35,1
step
    .goto 69,46.03,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .accept 25304 >>Accept The Battle of Sardor
    .target Shandris Feathermoon
step
    .goto 69,45.35,41.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 25449 >>Accept The Mark of Quality
    .target Pratt McGrubben
step
    #completewith Drop25475x3
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop25475x3
    #loop
    .goto 69,51.21,32.54,0
    .goto 69,51.21,32.54,40,0
    .goto 69,54.47,32.94,40,0
    >>Kill |cRXP_ENEMY_Rage Scar Yetis|r. Loot them for |cRXP_LOOT_Thick Yeti Hide|r
    .complete 25449,1 --Thick Yeti Hide (10)
    .complete 25452,1 --Thick Yeti Hide (10)
    .mob Rage Scar Yeti
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,41.35,15.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Konu Runetotem|r
    .turnin 28510 >>Turn in Warchief's Command: Feralas!
    .accept 25210 >>Accept Signs of Change
    .target Konu Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along26
    >>As you go: Kill |cRXP_ENEMY_Sharphorn Stags|r. Loot them for |cRXP_LOOT_Infected Stag Antler|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25210,1 --Infected Stag Antler (8)
    .mob Sharphorn Stag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,41.35,15.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Konu Runetotem|r
    .turnin 26589 >>Turn in The Wilds of Feralas
    .target Konu Runetotem
    .isOnQuest 26589
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along26
    .goto 69,41.23,15.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .accept 25339 >>Accept Vengeance on the Northspring
    .accept 25340 >>Accept Dark Heart
    .target Talo Thornhoof
step
    #completewith Drop25475x4
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x4
    #loop
    .goto 69,40.66,19.26,0
    .goto 69,40.66,19.26,40,0
    .goto 69,42.92,22.49,40,0
    .goto 69,45.36,22.51,40,0
    >>Kill |cRXP_ENEMY_Sharphorn Stags|r. Loot them for |cRXP_LOOT_Infected Stag Antler|r
    .complete 25210,1 --Infected Stag Antler (8)
    .mob Sharphorn Stag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Northspring Harpies|r and |cRXP_ENEMY_Northspring Windcallers|r. Loot them for |cRXP_LOOT_Horn of Hatetalon|r. |cRXP_WARN_Anything left is finished later|r
    .collect 9530,1,25340,1 --Horn of Hatetalon (1)
    .mob Northspring Harpy
    .mob Northspring Windcaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Northspring Harpies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25339,1 --Northspring Harpy slain (6)
    .mob Northspring Harpy
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,41.35,15.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Konu Runetotem|r
    .turnin 25210 >>Turn in Signs of Change
    .accept 25230 >>Accept More Than Illness
    .target Konu Runetotem
step
    #completewith Drop25475x5
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x5
    #loop
    .goto 69,46.93,9.87,0
    .goto 69,46.93,9.87,40,0
    .goto 69,48.28,8.43,40,0
    >>Kill |cRXP_ENEMY_Noxious Whelps|r
    .complete 25230,1 --Noxious Whelp slain (10)
    .mob Noxious Whelp
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,41.35,15.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Konu Runetotem|r
    .turnin 25230 >>Turn in More Than Illness
    .accept 25237 >>Accept Tears of Stone
    .target Konu Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 69,38.14,22.62,0
    .goto 69,38.14,22.62,40,0
    .goto 69,40.71,24.15,40,0
    >>Pick up |cRXP_PICK_Stonetear|r from the ground
    .complete 25237,1 --Stonetear (7)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along32
    .goto 69,41.35,15.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Konu Runetotem|r
    .turnin 25237 >>Turn in Tears of Stone
    .accept 25250 >>Accept Sealing the Dream
    .target Konu Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,51.32,10.67
    >>Use Ysondre's Tear to seal the portal at Dream Bough.
    .complete 25250,1 --Dream Portal Bunny
    .target Dream Portal Bunny
step
    .goto 69,51.15,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erina Willowborn|r
    .accept 25448 >>Accept The Northspring Menace
    .target Erina Willowborn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Northspring Harpies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25339,1 --Northspring Harpy slain (6)
    .mob Northspring Harpy
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along35
    >>As you go: Kill |cRXP_ENEMY_Northspring Harpies|r and |cRXP_ENEMY_Northspring Windcallers|r. Loot them for |cRXP_LOOT_Horn of Hatetalon|r. |cRXP_WARN_Anything left is finished later|r
    .collect 9530,1,25340,1 --Horn of Hatetalon (1)
    .mob Northspring Harpy
    .mob Northspring Windcaller
step
    #completewith Along35
    >>As you go: Kill |cRXP_ENEMY_Northspring Harpies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25448,1 --Northspring Harpy slain (6)
    .mob Northspring Harpy
step
    #label Along35
    .goto 69,41.35,15.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Konu Runetotem|r
    .turnin 25250 >>Turn in Sealing the Dream << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 25386 >>Accept To Stonemaul Hold
    .target Konu Runetotem
step
    #completewith Drop25475x6
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Northspring Windcallers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25339,2 --Northspring Windcaller slain (6)
    .mob Northspring Windcaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 69,41.43,11.28,0
    .goto 69,41.43,11.28,40,0
    .goto 69,39.17,11.96,40,0
    .goto 69,38.39,14.70,40,0
    >>Kill |cRXP_ENEMY_Northspring Harpies|r and |cRXP_ENEMY_Northspring Windcallers|r. Loot them for |cRXP_LOOT_Horn of Hatetalon|r
    .collect 9530,1,25340,1 --Horn of Hatetalon (1)
    .mob Northspring Harpy
    .mob Northspring Windcaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along37
    .goto 69,40.55,8.60
    >>Kill |cRXP_ENEMY_Edana Hatetalon|r and loot |cRXP_LOOT_Edana's Dark Heart|r
    .complete 25340,1 --Edana's Dark Heart (1)
    .mob Edana Hatetalon
step
    #label Drop25475x6
    #loop
    .goto 69,41.43,11.28,0
    .goto 69,41.43,11.28,40,0
    .goto 69,39.17,11.96,40,0
    .goto 69,38.39,14.70,40,0
    >>Kill |cRXP_ENEMY_Northspring Windcallers|r
    >>Kill |cRXP_ENEMY_Northspring Harpies|r
    .complete 25448,2 --Northspring Windcaller slain (6)
    .complete 25339,2 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Northspring Windcaller slain (6)
    .complete 25448,1 --Northspring Harpy slain (6)
    .complete 25339,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Northspring Harpy slain (6)
    .mob Northspring Windcaller
    .mob Northspring Harpy
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,41.23,15.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo Thornhoof|r
    .turnin 25339 >>Turn in Vengeance on the Northspring
    .turnin 25340 >>Turn in Dark Heart
    .target Talo Thornhoof
step
    .goto 69,51.15,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erina Willowborn|r
    .turnin 25448 >>Turn in The Northspring Menace
    .target Erina Willowborn
step
    .goto 69,45.35,41.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 25449 >>Turn in The Mark of Quality
    .accept 25450 >>Accept Improved Quality
    .target Pratt McGrubben
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along44
    >>As you go: Kill |cRXP_ENEMY_Ironfur Bears|r and |cRXP_ENEMY_Longtooth Runners|r. Loot them for |cRXP_LOOT_Beast Muisek|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25336,1 --Beast Muisek (1)
    .mob Ironfur Bear
    .mob Longtooth Runner
step
    .goto 69,32.61,45.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tambre|r
    .turnin 25304 >>Turn in The Battle of Sardor
    .target Tambre
step
    #completewith next
    .hs >>Hearth to Jangdor Swiftstrider's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 69,52.84,47.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .turnin 25452 >>Turn in The Mark of Quality
    .accept 25453 >>Accept Improved Quality
    .target Jangdor Swiftstrider
step
    #label Along44
    .goto 69,51.92,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orhan Ogreblade|r
    .turnin 25386 >>Turn in To Stonemaul Hold
    .target Orhan Ogreblade
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop25454x1
    >>|cRXP_LOOT_Perfect Yeti Hide|r can drop from |cRXP_ENEMY_Feral Scar Yeti|r. Use it to start the quest if you get one
    .collect 55167,1,25454 --Perfect Yeti Hide (1)
    .accept 25454 >>Accept Perfect Yeti Hide
    .use 55167
step
    #completewith Drop25454x1
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop25454x1
    #loop
    .goto 69,52.75,57.01,0
    .goto 69,52.75,57.01,40,0
    .goto 69,51.67,59.27,40,0
    .goto 69,55.64,56.41,40,0
    >>Kill |cRXP_ENEMY_Feral Scar Yetis|r. Loot them for |cRXP_LOOT_Feral Scar Yeti Hide|r
    .complete 25453,1 --Feral Scar Yeti Hide (10)
    .complete 25450,1 --Feral Scar Yeti Hide (10)
    .mob Feral Scar Yeti
step
    .goto 69,56.88,54.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvia|r
    .turnin 25463 >>Turn in Report to Silvia
    .target Silvia
    .isOnQuest 25463
step
    #completewith Drop25475x8
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x8
    #loop
    .goto 69,56.90,48.29,0
    .goto 69,56.90,48.29,40,0
    .goto 69,53.40,48.84,40,0
    >>Kill |cRXP_ENEMY_Ironfur Bears|r and |cRXP_ENEMY_Longtooth Runners|r. Loot them for |cRXP_LOOT_Beast Muisek|r
    .complete 25336,1 --Beast Muisek (1)
    .mob Ironfur Bear
    .mob Longtooth Runner
step
    .goto 69,52.84,47.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .turnin 25453 >>Turn in Improved Quality
    .target Jangdor Swiftstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,52.84,47.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .turnin 25454 >>Turn in Perfect Yeti Hide
    .target Jangdor Swiftstrider
    .isOnQuest 25454
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,52.25,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gombana|r
    .turnin 25336 >>Turn in Testing the Vessel
    .accept 25337 >>Accept Hippogryph Muisek
    .target Gombana
step
    .goto 69,48.69,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .accept 25465 >>Accept Still With The Zapped Giants
    .accept 25466 >>Accept Even More Fuel for the Zapping
    .target Zorbin Fandazzle
step
    #completewith Along53
    >>As you go: Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for |cRXP_LOOT_Water Elemental Core|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25466,1 --Water Elemental Core (10)
    .mob Sea Elemental
    .mob Sea Spray
step
    .goto 69,45.35,41.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 25450 >>Turn in Improved Quality
    .target Pratt McGrubben
step
    #completewith Drop25475x9
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Along53
    #loop
    .goto 69,43.79,41.39,0
    .goto 69,43.79,41.39,40,0
    .goto 69,42.60,40.66,40,0
    .goto 69,40.15,38.65,40,0
    >>Kill |cRXP_ENEMY_Shore Striders|r, |cRXP_ENEMY_Zapped Shore Striders|r, |cRXP_ENEMY_Zapped Land Walkers|r and |cRXP_ENEMY_Zapped Wave Striders|r. Loot them for |cRXP_LOOT_Miniaturization Residue|r
    .complete 25465,1 --Miniaturization Residue (6)
    .mob Shore Strider
    .mob Zapped Shore Strider
    .mob Zapped Land Walker
    .mob Zapped Wave Strider
step
    #loop
    .goto 69,47.86,52.31,0
    .goto 69,47.86,52.31,40,0
    .goto 69,47.06,56.54,40,0
    .goto 69,46.61,61.53,40,0
    .goto 69,46.24,65.05,40,0
    >>Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for |cRXP_LOOT_Water Elemental Core|r
    .complete 25466,1 --Water Elemental Core (10)
    .mob Sea Elemental
    .mob Sea Spray
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x9
    #loop
    .goto 69,56.01,63.03,0
    .goto 69,56.01,63.03,40,0
    .goto 69,55.51,67.62,40,0
    >>Kill |cRXP_ENEMY_Frayfeather Hippogryphs|r and |cRXP_ENEMY_Frayfeather Stagwings|r. Loot them for |cRXP_LOOT_Hippogryph Muisek|r
    .complete 25337,1 --Hippogryph Muisek (1)
    .mob Frayfeather Hippogryph
    .mob Frayfeather Stagwing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,65.92,62.88
    >>Click the |cRXP_PICK_Empty Pedestal|r
    .turnin 25643 >>Turn in The Darkmist Ruins
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,62.56,30.01
    >>Disrupt Cho'Gall's Twilight Sermon.
    .complete 25329,1 --Twilight Sermon Completion Credit
    .target Twilight Sermon Completion Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Jangdor Swiftstrider's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,52.25,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gombana|r
    .turnin 25337 >>Turn in Hippogryph Muisek
    .accept 25641 >>Accept The Flow of Muisek
    .target Gombana
step
    .goto 69,51.92,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orhan Ogreblade|r
    .turnin 25329 >>Turn in Might of the Stonemaul << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 25387 >>Accept To Camp Mojache
    .target Orhan Ogreblade
step
    .goto 69,48.69,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .turnin 25465 >>Turn in Still With The Zapped Giants
    .turnin 25466 >>Turn in Even More Fuel for the Zapping
    .target Zorbin Fandazzle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 25641 >>Turn in The Flow of Muisek
    .accept 25338 >>Accept Treant Muisek
    .target Witch Doctor Uzer'i
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 36 - 84 Feralas
#subweight -36
#name 38-41 Feralas: around Hadoken Swiftstrider
--RouteBuilder:next
#next Zone Routes (Horde)\40-42 Eastern Plaguelands: around Chromie;Zone Routes (Horde)\35-39 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Horde)\37-40 Dustwallow Marsh: around Tabetha

step
    .goto 69,74.58,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Spirithorn|r
    .turnin 25387 >>Turn in To Camp Mojache
    .target Chief Spirithorn
    .isOnQuest 25387
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.58,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Spirithorn|r
    .accept 25373 >>Accept The Hilltop Threat
    .accept 25349 >>Accept Twisted Sisters
    .target Chief Spirithorn
step
    #completewith Drop25475x10
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x10
    #loop
    .goto 69,74.31,40.04,0
    .goto 69,74.31,40.04,40,0
    .goto 69,72.40,44.05,40,0
    .goto 69,70.92,38.04,40,0
    >>Kill |cRXP_ENEMY_Wandering Forest Walker|r and loot |cRXP_LOOT_Treant Muisek|r
    .complete 25338,1 --Treant Muisek (1)
    .mob Wandering Forest Walker
    .isOnQuest 25338
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 25338 >>Turn in Treant Muisek
    .target Witch Doctor Uzer'i
    .isOnQuest 25338
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.85,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg Skullsplitter|r
    .accept 25361 >>Accept A New Cloak's Sheen
    .target Krueg Skullsplitter
    .isQuestTurnedIn 25338 --any of: Treant Muisek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .accept 25345 >>Accept Faerie Dragon Muisek
    .target Witch Doctor Uzer'i
    .isQuestTurnedIn 25338 --any of: Treant Muisek
step
    #completewith Drop25475x11
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 69,73.05,41.91,0
    .goto 69,73.05,41.91,40,0
    .goto 69,70.89,42.00,40,0
    .goto 69,66.58,46.89,40,0
    .goto 69,70.96,45.84,40,0
    >>Kill |cRXP_ENEMY_Sprite Darters|r and |cRXP_ENEMY_Captured Sprite Darters|r. Loot them for |cRXP_LOOT_Iridescent Sprite Darter Wing|r
    .complete 25361,1 --Iridescent Sprite Darter Wing (10)
    .mob Sprite Darter
    .mob Captured Sprite Darter
    .isOnQuest 25361
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x11
    #loop
    .goto 69,70.48,45.33,0
    .goto 69,70.48,45.33,40,0
    .goto 69,71.36,40.74,40,0
    .goto 69,73.05,41.91,40,0
    >>Kill |cRXP_ENEMY_Sprite Darter|r and loot |cRXP_LOOT_Faerie Dragon Muisek|r
    .complete 25345,1 --Faerie Dragon Muisek (1)
    .mob Sprite Darter
    .isOnQuest 25345
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 25345 >>Turn in Faerie Dragon Muisek
    .target Witch Doctor Uzer'i
    .isOnQuest 25345
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.85,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg Skullsplitter|r
    .turnin 25361 >>Turn in A New Cloak's Sheen
    .target Krueg Skullsplitter
    .isOnQuest 25361
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.85,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg Skullsplitter|r
    .accept 25362 >>Accept A Grim Discovery
    .target Krueg Skullsplitter
    .isQuestTurnedIn 25361 --any of: A New Cloak's Sheen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .accept 25346 >>Accept Mountain Giant Muisek
    .target Witch Doctor Uzer'i
    .isQuestTurnedIn 25345 --any of: Faerie Dragon Muisek
step
    #completewith Drop25475x12
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 69,69.49,39.31,0
    .goto 69,69.49,39.31,40,0
    .goto 69,68.34,46.99,40,0
    .goto 69,66.71,46.83,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Raiders|r, |cRXP_ENEMY_Grimtotem Naturalists|r and |cRXP_ENEMY_Grimtotem Shamans|r. Loot them for |cRXP_LOOT_Grimtotem Horn|r
    .complete 25362,1 --Grimtotem Horn (20)
    .mob Grimtotem Raider
    .mob Grimtotem Naturalist
    .mob Grimtotem Shaman
    .isOnQuest 25362
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x12
    #loop
    .goto 69,65.74,52.60,0
    .goto 69,65.74,52.60,40,0
    .goto 69,69.35,55.00,40,0
    .goto 69,70.48,52.25,40,0
    >>Kill |cRXP_ENEMY_Woodpaw Mongrels|r, |cRXP_ENEMY_Woodpaw Trappers|r, |cRXP_ENEMY_Woodpaw Brutes|r and |cRXP_ENEMY_Woodpaw Mystics|r. Loot them for |cRXP_LOOT_Woodpaw Gnoll Mane|r
    .complete 25363,1 --Woodpaw Gnoll Mane (10)
    .mob Woodpaw Mongrel
    .mob Woodpaw Trapper
    .mob Woodpaw Brute
    .mob Woodpaw Mystic
    .isOnQuest 25363
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 69,69.37,59.35,0
    .goto 69,69.37,59.35,40,0
    .goto 69,70.73,61.42,40,0
    >>Kill |cRXP_ENEMY_Mountain Giant|r and loot |cRXP_LOOT_Mountain Giant Muisek|r
    .complete 25346,1 --Mountain Giant Muisek (1)
    .mob Mountain Giant
    .isOnQuest 25346
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,71.63,55.92
    >>Click the |cRXP_PICK_Woodpaw Battle Map|r
    .accept 25366 >>Accept The Battle Plans
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 25346 >>Turn in Mountain Giant Muisek
    .target Witch Doctor Uzer'i
    .isOnQuest 25346
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .accept 25391 >>Accept Weapons of Spirit
    .target Witch Doctor Uzer'i
    .isQuestTurnedIn 25346 --any of: Mountain Giant Muisek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Uzer'i|r
    .turnin 25391 >>Turn in Weapons of Spirit
    .target Witch Doctor Uzer'i
    .isOnQuest 25391
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.85,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg Skullsplitter|r
    .turnin 25362 >>Turn in A Grim Discovery
    .target Krueg Skullsplitter
    .isOnQuest 25362
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 25363 >>Turn in War on the Woodpaw
    .target Hadoken Swiftstrider
    .isOnQuest 25363
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .accept 25364 >>Accept Alpha Strike
    .target Hadoken Swiftstrider
    .isQuestTurnedIn 25363 --any of: War on the Woodpaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 25366 >>Turn in The Battle Plans
    .accept 25365 >>Accept Woodpaw Investigation
    .accept 25367 >>Accept Zukk'ash Infestation
    .target Hadoken Swiftstrider
step
    #completewith Drop25475x13
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x13
    #loop
    .goto 69,75.60,39.37,0
    .goto 69,75.60,39.37,40,0
    .goto 69,79.29,43.93,40,0
    .goto 69,79.30,38.58,40,0
    .goto 69,76.60,33.49,40,0
    >>Kill |cRXP_ENEMY_Gordunni Hillguards|r
    >>Kill |cRXP_ENEMY_Corrupted Dryads|r
    .complete 25373,1 --Gordunni Hillguard slain (5)
    .complete 25349,1 --Corrupted Dryad slain (7)
    .mob Gordunni Hillguard
    .mob Corrupted Dryad
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.58,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Spirithorn|r
    .turnin 25373 >>Turn in The Hilltop Threat
    .turnin 25349 >>Turn in Twisted Sisters
    .accept 25374 >>Accept Sasquatch Sighting
    .accept 25375 >>Accept Taming The Tamers
    .accept 25378 >>Accept Ysondre's Call
    .target Chief Spirithorn
step
    #completewith Drop25475x14
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x14
    .goto 69,75.08,29.14
    >>Kill |cRXP_ENEMY_Gordunni Tamers|r
    >>Kill |cRXP_ENEMY_Bigfist|r
    .complete 25375,1 --Gordunni Tamer slain (6)
    .complete 25374,1 --Bigfist slain (1)
    .mob Gordunni Tamer
    .mob Bigfist
step
    .goto 69,81.54,42.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysondre|r
    .turnin 25378 >>Turn in Ysondre's Call << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 25379 >>Accept Taerar's Fall
    .target Ysondre
step
    .goto 69,81.37,42.53
    >>Kill |cRXP_ENEMY_Taerar|r
    .complete 25379,1 --Taerar slain (1)
    .mob Taerar
step
    .goto 69,81.54,42.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysondre|r
    .turnin 25379 >>Turn in Taerar's Fall
    .accept 25383 >>Accept Ysondre's Farewell << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Ysondre
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.58,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Spirithorn|r
    .turnin 25375 >>Turn in Taming The Tamers
    .turnin 25374 >>Turn in Sasquatch Sighting
    .turnin 25383 >>Turn in Ysondre's Farewell
    .target Chief Spirithorn
step
    #completewith Drop25475x15
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop25475x15
    #loop
    .goto 69,67.61,53.06,0
    .goto 69,67.61,53.06,40,0
    .goto 69,65.74,52.60,40,0
    >>Kill |cRXP_ENEMY_Woodpaw Alphas|r
    .complete 25364,1 --Woodpaw Alpha slain (5)
    .mob Woodpaw Alpha
    .isOnQuest 25364
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,71.63,55.92
    >>Click the |cRXP_PICK_Woodpaw Battle Map|r
    .turnin 25365 >>Turn in Woodpaw Investigation
step
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .accept 25431 >>Accept Stinglasher
    .target Adella
    .isQuestTurnedIn 25427 --any of: Alpha Strike
    .xp <37,1
step
    #completewith Drop25475x16
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along95
    >>As you go: Kill |cRXP_ENEMY_Zukk'ash Stingers|r, |cRXP_ENEMY_Zukk'ash Wasps|r, |cRXP_ENEMY_Zukk'ash Workers|r and |cRXP_ENEMY_Zukk'ash Tunnelers|r. Loot them for |cRXP_LOOT_Zukk'ash Carapace|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25367,1 --Zukk'ash Carapace (20)
    .mob Zukk'ash Stinger
    .mob Zukk'ash Wasp
    .mob Zukk'ash Worker
    .mob Zukk'ash Tunneler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along95
    .goto 69,75.58,60.85
    >>Kill |cRXP_ENEMY_Stinglasher|r and loot |cRXP_LOOT_Stinglasher's Glands|r
    .complete 25369,1 --Stinglasher's Glands (1)
    .mob Stinglasher
    .isOnQuest 25369
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 69,75.13,61.76,0
    .goto 69,75.13,61.76,40,0
    .goto 69,73.56,63.53,40,0
    .goto 69,77.73,63.34,40,0
    >>Kill |cRXP_ENEMY_Zukk'ash Stingers|r, |cRXP_ENEMY_Zukk'ash Wasps|r, |cRXP_ENEMY_Zukk'ash Workers|r and |cRXP_ENEMY_Zukk'ash Tunnelers|r. Loot them for |cRXP_LOOT_Zukk'ash Carapace|r
    .complete 25367,1 --Zukk'ash Carapace (20)
    .mob Zukk'ash Stinger
    .mob Zukk'ash Wasp
    .mob Zukk'ash Worker
    .mob Zukk'ash Tunneler
step
    #label Drop25475x16
    .goto 69,75.58,60.85
    >>Kill |cRXP_ENEMY_Stinglasher|r
    .complete 25431,1 --Stinglasher slain (1)
    .mob Stinglasher
    .isOnQuest 25431
step
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .turnin 25431 >>Turn in Stinglasher
    .target Adella
    .isOnQuest 25431
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 25364 >>Turn in Alpha Strike
    .target Hadoken Swiftstrider
    .isOnQuest 25364
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 25367 >>Turn in Zukk'ash Infestation
    .target Hadoken Swiftstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken Swiftstrider|r
    .turnin 25369 >>Turn in Stinglasher
    .target Hadoken Swiftstrider
    .isOnQuest 25369
step
    .goto 69,53.35,55.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .turnin 25475 >>Turn in Find OOX-22/FE!
    .target Homing Robot OOX-22/FE
    .isOnQuest 25475
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
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
    .zone 69 >>Leave Thunder Bluff for Feralas
    .zoneskip 69
step
    .goto 69,53.35,55.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .accept 25476 >>Accept Rescue OOX-22/FE!
    .target Homing Robot OOX-22/FE
    .isQuestTurnedIn 25475 --any of: Find OOX-22/FE!
    .xp <35,1
step
    .goto 69,55.63,51.35
    >>Escort OOX-22/FE to safety
    .complete 25476,1 --Escort OOX-22/FE to safety
    .isOnQuest 25476
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28504 >>Accept Warchief's Command: Thousand Needles!
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
step << Tauren Druid/Troll Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade
    .target Sheal Runetotem
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
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
    +|cRXP_WARN_That is all of Feralas for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Desolace|r: Warchief's Command: Desolace! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Warchief's Command: Dustwallow Marsh!, Return to Krog, Warchief's Command: Thousand Needles! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Rescue OOX-22/FE!
    >>|cRXP_FRIENDLY_Dustwallow Marsh and back here|r: Deadmire << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 40|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 2.7 levels of quests, starting around Chromie), |cRXP_FRIENDLY_Western Plaguelands|r (about 1.1 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.7 levels of quests, starting around Tabetha). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Feralas is planned from level 83.|r Load its guide for level 83 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 36 - 84 Feralas
#subweight -36
#name 83-84 Feralas
--RouteBuilder:next
#next Zone Routes (Horde)\82-83 Deepholm

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,74.58,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jawn Highmesa|r
    .accept 25356 >>Accept To the Summit
    .target Jawn Highmesa
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 69,75.45,44.36
    >>Kill |cRXP_ENEMY_Dyslix Silvergrub|r and |cRXP_ENEMY_Shyn|r
    .complete 25356,1 --Dyslix Silvergrub (1)
    .mob Dyslix Silvergrub
    .mob Shyn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
    .isQuestComplete 1205
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
    .isQuestComplete 1205
step
    +|cRXP_WARN_End of the Feralas route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Thousand Needles|r: To the Summit << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 83|r: |cRXP_FRIENDLY_Deepholm|r (about 0.8 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
