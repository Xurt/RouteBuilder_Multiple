-- 36-40 Feralas: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 36, 83).
-- Split into 3 guides, listed under "36 - 84 Feralas" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Feralas.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 36 - 84 Feralas
#subweight -36
#name 36-38 Feralas: around Telaron Windflight
#next Zone Routes (Alliance)\38-41 Feralas: around Silvia

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,57.24,54.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vestia Moonspear|r
    .accept 25350 >>Accept The Lost Apprentice
    .target Vestia Moonspear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.88,54.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvia|r
    .accept 25401 >>Accept The Gordunni Orb
    .accept 25400 >>Accept The Gordunni Threat
    .target Silvia
step
    .goto 69,56.78,54.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice of Estulan|r
    .target Apprentice of Estulan
    .home >>Set your Hearthstone to Apprentice of Estulan's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,57.08,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handler Tessina|r
    .accept 25407 >>Accept Forces of Nature: Wisps
    .target Handler Tessina
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.88,54.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvia|r
    .accept 26574 >>Accept Adella's Covert Camp
    .target Silvia
    .xp <36,1
step
    #completewith Drop25475x1
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x1
    #loop
    .goto 69,61.35,54.92,0
    .goto 69,61.35,54.92,40,0
    .goto 69,61.10,57.80,40,0
    >>Kill |cRXP_ENEMY_Gordunni Shamans|r, |cRXP_ENEMY_Gordunni Warlocks|r and |cRXP_ENEMY_Gordunni Maulers|r
    >>Kill |cRXP_ENEMY_Gordunni Shamans|r and |cRXP_ENEMY_Gordunni Warlocks|r. Loot them for |cRXP_LOOT_Gordunni Orb|r
    .complete 25400,1 --Gordunni Shaman (8)
    .complete 25401,1 --Gordunni Orb (1)
    .mob Gordunni Shaman
    .mob Gordunni Warlock
    .mob Gordunni Mauler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
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
    .zone 69 >>Leave Darnassus for Feralas
    .zoneskip 69
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Apprentice of Estulan's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.88,54.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvia|r
    .turnin 25401 >>Turn in The Gordunni Orb
    .turnin 25400 >>Turn in The Gordunni Threat
    .target Silvia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 36 >>Grind to level 36 (Adella's Covert Camp needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.88,54.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvia|r
    .accept 25402 >>Accept Estulan's Examination
    .accept 26574 >>Accept Adella's Covert Camp
    .accept 25406 >>Accept Gordok Guards
    .target Silvia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.97,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Estulan|r
    .turnin 25402 >>Turn in Estulan's Examination
    .accept 25403 >>Accept Ogre Abduction
    .target Estulan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.32,53.63
    >>Interact with |cRXP_FRIENDLY_Feralas Wisps|r
    .complete 25407,1 --Feralas Wisp (3)
    .target Feralas Wisp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,57.08,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handler Tessina|r
    .turnin 25407 >>Turn in Forces of Nature: Wisps
    .accept 25409 >>Accept Forces of Nature: Hippogryphs
    .target Handler Tessina
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Gordok Enforcers|r. Kill |cRXP_ENEMY_Gordok Ogre-Mages|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25406,1 --Gordok Enforcer slain (6)
    .complete 25406,2 --Gordok Ogre-Mage slain (6)
    .mob Gordok Enforcer
    .mob Gordok Ogre-Mage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along24
    #loop
    .goto 69,64.27,45.50,0
    .goto 69,64.27,45.50,40,0
    .goto 69,59.95,46.58,40,0
    .goto 69,62.43,43.56,40,0
    .goto 69,60.26,42.36,40,0
    .goto 69,59.44,40.30,40,0
    .goto 69,61.82,39.16,40,0
    .goto 69,59.92,38.75,40,0
    >>Interact with |cRXP_FRIENDLY_Gordok Ogre-Mage|r
    .complete 25403,1 --Gordok Ogre-Mage
    .target Gordok Ogre-Mage
step
    .goto 69,52.84,47.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .accept 25452 >>Accept The Mark of Quality
    .target Jangdor Swiftstrider
step
    .goto 69,51.92,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orhan Ogreblade|r
    .accept 25387 >>Accept To Camp Mojache
    .target Orhan Ogreblade
    .isQuestTurnedIn 25329 --any of: Might of the Stonemaul
    .xp <36,1
step
    .goto 69,45.35,41.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 25449 >>Accept The Mark of Quality
    .target Pratt McGrubben
step
    #completewith Drop25475x2
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop25475x2
    #loop
    .goto 69,51.21,32.54,0
    .goto 69,51.21,32.54,40,0
    .goto 69,54.47,32.94,40,0
    >>Kill |cRXP_ENEMY_Rage Scar Yetis|r. Loot them for |cRXP_LOOT_Thick Yeti Hide|r
    .complete 25449,1 --Thick Yeti Hide (10)
    .complete 25452,1 --Thick Yeti Hide (10)
    .mob Rage Scar Yeti
step
    .goto 69,51.15,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erina Willowborn|r
    .accept 25654 >>Accept Dark Heart << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25448 >>Accept The Northspring Menace
    .target Erina Willowborn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,50.69,17.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telaron Windflight|r
    .turnin 28511 >>Turn in Hero's Call: Feralas!
    .accept 25447 >>Accept Signs of Change
    .target Telaron Windflight
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,50.69,17.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telaron Windflight|r
    .turnin 14410 >>Turn in The Wilds of Feralas
    .target Telaron Windflight
    .isOnQuest 14410
step
    #completewith Drop25475x3
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x3
    #loop
    .goto 69,46.77,15.96,0
    .goto 69,46.77,15.96,40,0
    .goto 69,45.53,21.15,40,0
    .goto 69,43.47,20.12,40,0
    >>Kill |cRXP_ENEMY_Sharphorn Stags|r. Loot them for |cRXP_LOOT_Infected Stag Antler|r
    .complete 25447,1 --Infected Stag Antler (8)
    .mob Sharphorn Stag
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,50.69,17.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telaron Windflight|r
    .turnin 25447 >>Turn in Signs of Change
    .accept 25394 >>Accept More Than Illness
    .target Telaron Windflight
step
    #completewith Drop25475x4
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x4
    #loop
    .goto 69,46.93,9.87,0
    .goto 69,46.93,9.87,40,0
    .goto 69,48.28,8.43,40,0
    >>Kill |cRXP_ENEMY_Noxious Whelps|r
    .complete 25394,1 --Noxious Whelp slain (10)
    .mob Noxious Whelp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,50.69,17.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telaron Windflight|r
    .turnin 25394 >>Turn in More Than Illness
    .accept 25397 >>Accept The Land, Corrupted
    .accept 25396 >>Accept Tears of Stone
    .target Telaron Windflight
step
    #completewith Drop25475x5
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x5
    #loop
    .goto 69,40.37,24.28,0
    .goto 69,40.37,24.28,40,0
    .goto 69,37.88,21.88,40,0
    >>Kill |cRXP_ENEMY_Corrupted Cliff Giants|r
    >>Pick up |cRXP_PICK_Stonetear|r from the ground
    .complete 25397,1 --Corrupted Cliff Giant slain (6)
    .complete 25396,1 --Stonetear (7)
    .mob Corrupted Cliff Giant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Northspring Harpies|r and |cRXP_ENEMY_Northspring Windcallers|r. Loot them for |cRXP_LOOT_Horn of Hatetalon|r. |cRXP_WARN_Anything left is finished later|r
    .collect 9530,1,25654,1 --Horn of Hatetalon (1)
    .mob Northspring Harpy
    .mob Northspring Windcaller
step
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Northspring Harpies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25448,1 --Northspring Harpy slain (6)
    .mob Northspring Harpy
step
    #label Along37
    .goto 69,41.35,15.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Konu Runetotem|r
    .accept 25386 >>Accept To Stonemaul Hold
    .target Konu Runetotem
    .isQuestTurnedIn 25250 --any of: Sealing the Dream
    .xp <34,1
step
    #completewith Drop25475x6
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #loop
    .goto 69,41.43,11.28,0
    .goto 69,41.43,11.28,40,0
    .goto 69,39.17,11.96,40,0
    .goto 69,38.39,14.70,40,0
    >>Kill |cRXP_ENEMY_Northspring Harpies|r and |cRXP_ENEMY_Northspring Windcallers|r. Loot them for |cRXP_LOOT_Horn of Hatetalon|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Northspring Harpies|r
    >>Kill |cRXP_ENEMY_Northspring Windcallers|r
    .collect 9530,1,25654,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Horn of Hatetalon (1)
    .complete 25448,1 --Northspring Harpy slain (6)
    .complete 25448,2 --Northspring Windcaller slain (6)
    .mob Northspring Harpy
    .mob Northspring Windcaller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x6
    .goto 69,40.55,8.60
    >>Kill |cRXP_ENEMY_Edana Hatetalon|r and loot |cRXP_LOOT_Edana's Dark Heart|r
    .complete 25654,1 --Edana's Dark Heart (1)
    .mob Edana Hatetalon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,50.69,17.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telaron Windflight|r
    .turnin 25396 >>Turn in Tears of Stone
    .turnin 25397 >>Turn in The Land, Corrupted
    .accept 25398 >>Accept Sealing the Dream
    .target Telaron Windflight
step
    .goto 69,51.15,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erina Willowborn|r
    .turnin 25654 >>Turn in Dark Heart << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 25448 >>Turn in The Northspring Menace
    .target Erina Willowborn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,51.32,10.67
    >>Use Ysondre's Tear to seal the portal at Dream Bough.
    .complete 25398,1 --Dream Portal Bunny
    .target Dream Portal Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,50.69,17.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telaron Windflight|r
    .turnin 25398 >>Turn in Sealing the Dream
    .accept 26402 >>Accept General Shandris Feathermoon
    .target Telaron Windflight
step
    .goto 69,45.35,41.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 25449 >>Turn in The Mark of Quality
    .accept 25450 >>Accept Improved Quality
    .target Pratt McGrubben
step
    .goto 69,46.03,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 26402 >>Turn in General Shandris Feathermoon << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25304 >>Accept The Battle of Sardor
    .target Shandris Feathermoon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop25451x1
    >>|cRXP_LOOT_Pristine Yeti Hide|r can drop from |cRXP_ENEMY_Feral Scar Yeti|r. Use it to start the quest if you get one
    .collect 55166,1,25451 --Pristine Yeti Hide (1)
    .accept 25451 >>Accept Pristine Yeti Hide
    .use 55166
step
    #completewith Drop25451x1
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop25451x1
    #loop
    .goto 69,52.75,57.01,0
    .goto 69,52.75,57.01,40,0
    .goto 69,51.67,59.27,40,0
    .goto 69,55.64,56.41,40,0
    >>Kill |cRXP_ENEMY_Feral Scar Yetis|r. Loot them for |cRXP_LOOT_Feral Scar Yeti Hide|r
    .complete 25450,1 --Feral Scar Yeti Hide (10)
    .mob Feral Scar Yeti
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.97,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Estulan|r
    .turnin 25403 >>Turn in Ogre Abduction
    .accept 25208 >>Accept Tell Silvia
    .target Estulan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.88,54.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvia|r
    .turnin 25208 >>Turn in Tell Silvia
    .accept 25333 >>Accept Might of the Sentinels
    .target Silvia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 69,63.76,36.04,0
    .goto 69,63.76,36.04,40,0
    .goto 69,63.50,32.57,40,0
    >>Kill |cRXP_ENEMY_Gordok Enforcers|r
    >>Kill |cRXP_ENEMY_Gordok Ogre-Mages|r
    .complete 25406,1 --Gordok Enforcer slain (6)
    .complete 25406,2 --Gordok Ogre-Mage slain (6)
    .mob Gordok Enforcer
    .mob Gordok Ogre-Mage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,62.56,30.01
    >>Disrupt Cho'Gall's Twilight Sermon.
    .complete 25333,1 --Twilight Sermon Completion Credit
    .target Twilight Sermon Completion Credit
step
    .goto 69,52.84,47.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .turnin 25452 >>Turn in The Mark of Quality
    .accept 25453 >>Accept Improved Quality
    .target Jangdor Swiftstrider
step
    .goto 69,51.92,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orhan Ogreblade|r
    .turnin 25386 >>Turn in To Stonemaul Hold
    .target Orhan Ogreblade
    .isOnQuest 25386
step
    .goto 69,48.69,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .accept 25466 >>Accept Even More Fuel for the Zapping
    .accept 25465 >>Accept Still With The Zapped Giants
    .target Zorbin Fandazzle
step
    #completewith Along54
    >>As you go: Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for |cRXP_LOOT_Water Elemental Core|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25466,1 --Water Elemental Core (10)
    .mob Sea Elemental
    .mob Sea Spray
step
    #label Along54
    .goto 69,45.35,41.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 25450 >>Turn in Improved Quality
    .target Pratt McGrubben
step
    .goto 69,32.61,45.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tambre|r
    .turnin 25304 >>Turn in The Battle of Sardor
    .accept 25399 >>Accept Hatecrest Forces << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25458 >>Accept General Skessesh << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Tambre
step
    #completewith Drop25475x8
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x8
    #loop
    .goto 69,31.35,44.37,0
    .goto 69,31.35,44.37,40,0
    .goto 69,33.87,48.88,40,0
    .goto 69,33.38,50.85,40,0
    >>Kill |cRXP_ENEMY_Hatecrest Warriors|r, |cRXP_ENEMY_Hatecrest Sorceress|r and |cRXP_ENEMY_Hatecrest Naga Kill Credit Bunnies|r
    >>Kill |cRXP_ENEMY_General Skessesh|r and loot |cRXP_LOOT_Head of Skessesh|r
    .complete 25399,1 --Hatecrest Warrior (8)
    .complete 25458,1 --Head of Skessesh (1)
    .mob Hatecrest Warrior
    .mob Hatecrest Sorceress
    .mob Hatecrest Naga Kill Credit Bunny
    .mob General Skessesh
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Apprentice of Estulan's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,56.88,54.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvia|r
    .turnin 25406 >>Turn in Gordok Guards
    .turnin 25333 >>Turn in Might of the Sentinels
    .target Silvia
step
    #completewith Drop25475x9
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 69,56.01,63.03,0
    .goto 69,56.01,63.03,40,0
    .goto 69,55.51,67.62,40,0
    >>Kill |cRXP_ENEMY_Frayfeather Hippogryphs|r and |cRXP_ENEMY_Frayfeather Stagwings|r
    .complete 25409,1 --Frayfeather Hippogryph (10)
    .mob Frayfeather Hippogryph
    .mob Frayfeather Stagwing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop25451x2
    >>|cRXP_LOOT_Pristine Yeti Hide|r can drop from |cRXP_ENEMY_Feral Scar Yeti|r. Use it to start the quest if you get one
    .collect 55166,1,25451 --Pristine Yeti Hide (1)
    .accept 25451 >>Accept Pristine Yeti Hide
    .use 55166
step
    #label Drop25451x2
    #loop
    .goto 69,51.67,59.27,0
    .goto 69,51.67,59.27,40,0
    .goto 69,52.75,57.01,40,0
    .goto 69,55.64,56.41,40,0
    >>Kill |cRXP_ENEMY_Feral Scar Yetis|r. Loot them for |cRXP_LOOT_Feral Scar Yeti Hide|r
    .complete 25453,1 --Feral Scar Yeti Hide (10)
    .mob Feral Scar Yeti
step
    #label Drop25475x9
    #loop
    .goto 69,47.06,56.54,0
    .goto 69,47.06,56.54,40,0
    .goto 69,47.38,60.73,40,0
    .goto 69,48.92,50.93,40,0
    >>Kill |cRXP_ENEMY_Sea Elementals|r and |cRXP_ENEMY_Sea Sprays|r. Loot them for |cRXP_LOOT_Water Elemental Core|r
    .complete 25466,1 --Water Elemental Core (10)
    .mob Sea Elemental
    .mob Sea Spray
step
    .goto 69,46.03,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 25458 >>Turn in General Skessesh << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 25399 >>Turn in Hatecrest Forces << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25463 >>Accept Report to Silvia
    .target Shandris Feathermoon
step
    #completewith Drop25475x10
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop25475x10
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,45.35,41.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 25451 >>Turn in Pristine Yeti Hide
    .target Pratt McGrubben
    .isOnQuest 25451
step
    .goto 69,48.69,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorbin Fandazzle|r
    .turnin 25466 >>Turn in Even More Fuel for the Zapping
    .turnin 25465 >>Turn in Still With The Zapped Giants
    .target Zorbin Fandazzle
step
    .goto 69,52.84,47.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jangdor Swiftstrider|r
    .turnin 25453 >>Turn in Improved Quality
    .target Jangdor Swiftstrider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,57.08,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handler Tessina|r
    .turnin 25409 >>Turn in Forces of Nature: Hippogryphs
    .accept 25410 >>Accept Forces of Nature: Treants
    .target Handler Tessina
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 36 - 84 Feralas
#subweight -36
#name 38-41 Feralas: around Silvia
--RouteBuilder:next
#next Zone Routes (Alliance)\40-42 Eastern Plaguelands: around Chromie;Zone Routes (Alliance)\38-41 Dustwallow Marsh: around Tabetha;Zone Routes (Alliance)\37-40 Western Plaguelands: around Daria L'Rayne

step
    .goto 69,56.88,54.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvia|r
    .turnin 25463 >>Turn in Report to Silvia
    .target Silvia
    .isOnQuest 25463
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 69,57.51,56.73,0
    .goto 69,57.51,56.73,40,0
    .goto 69,59.78,60.18,40,0
    .goto 69,56.63,61.47,40,0
    >>Interact with |cRXP_FRIENDLY_Wandering Forest Walkers|r
    .complete 25410,1 --Wandering Forest Walker (6)
    .target Wandering Forest Walker
    .isOnQuest 25410
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
    .zone 69 >>Leave The Exodar for Feralas
    .zoneskip 69
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,57.08,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handler Tessina|r
    .turnin 25410 >>Turn in Forces of Nature: Treants
    .target Handler Tessina
    .isOnQuest 25410
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,65.88,62.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lost Apprentice|r
    .turnin 25350 >>Turn in The Lost Apprentice
    .target Lost Apprentice
    .isOnQuest 25350
step
    .goto 69,65.95,62.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sensiria|r
    .accept 25422 >>Accept The Darkmist Legacy
    .accept 25423 >>Accept Ancient Suffering
    .target Sensiria
step
    #completewith Drop25475x11
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop25475x11
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,65.92,62.88
    >>Click the |cRXP_PICK_Empty Pedestal|r
    .accept 26401 >>Accept Return to Vestia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .turnin 26574 >>Turn in Adella's Covert Camp
    .target Adella
    .isOnQuest 26574
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .accept 25432 >>Accept It's Not "Ogre" Yet
    .accept 25426 >>Accept War on the Woodpaw
    .target Adella
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along86
    >>As you go: Kill |cRXP_ENEMY_Woodpaw Mongrels|r, |cRXP_ENEMY_Woodpaw Trappers|r, |cRXP_ENEMY_Woodpaw Brutes|r and |cRXP_ENEMY_Woodpaw Mystics|r. Loot them for |cRXP_LOOT_Woodpaw Gnoll Mane|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25426,1 --Woodpaw Gnoll Mane (10)
    .mob Woodpaw Mongrel
    .mob Woodpaw Trapper
    .mob Woodpaw Brute
    .mob Woodpaw Mystic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along86
    .goto 69,76.97,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handler Jesana|r
    .accept 25468 >>Accept Forces of Nature: Faerie Dragons
    .accept 25469 >>Accept Forces of Nature: Mountain Giants
    .target Handler Jesana
    .isQuestTurnedIn 25410 --any of: Forces of Nature: Treants
step
    #completewith Drop25475x12
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x12
    #loop
    .goto 69,75.44,54.84,0
    .goto 69,75.44,54.84,40,0
    .goto 69,73.04,56.85,40,0
    .goto 69,71.58,56.10,40,0
    >>Kill |cRXP_ENEMY_Woodpaw Mongrels|r, |cRXP_ENEMY_Woodpaw Trappers|r, |cRXP_ENEMY_Woodpaw Brutes|r and |cRXP_ENEMY_Woodpaw Mystics|r. Loot them for |cRXP_LOOT_Woodpaw Gnoll Mane|r
    .complete 25426,1 --Woodpaw Gnoll Mane (10)
    .mob Woodpaw Mongrel
    .mob Woodpaw Trapper
    .mob Woodpaw Brute
    .mob Woodpaw Mystic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .turnin 25426 >>Turn in War on the Woodpaw
    .accept 25427 >>Accept Alpha Strike
    .target Adella
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 69,70.73,61.42,0
    .goto 69,70.73,61.42,40,0
    .goto 69,69.37,59.35,40,0
    >>Interact with |cRXP_FRIENDLY_Mountain Giants|r
    .complete 25469,1 --Mountain Giant (5)
    .target Mountain Giant
    .isOnQuest 25469
step
    #completewith Drop25475x13
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 69,67.61,53.06,0
    .goto 69,67.61,53.06,40,0
    .goto 69,65.74,52.60,40,0
    >>Kill |cRXP_ENEMY_Woodpaw Alphas|r
    .complete 25427,1 --Woodpaw Alpha slain (5)
    .mob Woodpaw Alpha
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x13
    #loop
    .goto 69,70.48,45.33,0
    .goto 69,70.48,45.33,40,0
    .goto 69,71.36,40.74,40,0
    .goto 69,73.05,41.91,40,0
    >>Kill |cRXP_ENEMY_Sprite Dragons|r and |cRXP_ENEMY_Sprite Darters|r
    .complete 25468,1 --Sprite Dragon (10)
    .mob Sprite Dragon
    .mob Sprite Darter
    .isOnQuest 25468
step
    .goto 69,74.58,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Spirithorn|r
    .turnin 25387 >>Turn in To Camp Mojache
    .target Chief Spirithorn
    .isOnQuest 25387
step
    #completewith Drop25475x14
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x14
    #loop
    .goto 69,76.91,34.94,0
    .goto 69,76.91,34.94,40,0
    .goto 69,75.57,33.40,40,0
    >>Kill |cRXP_ENEMY_Gordunni Hillguards|r
    .complete 25432,1 --Gordunni Hillguard slain (5)
    .mob Gordunni Hillguard
step
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .turnin 25432 >>Turn in It's Not "Ogre" Yet << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 25427 >>Turn in Alpha Strike << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25431 >>Accept Stinglasher
    .accept 25429 >>Accept Zukk'ash Infestation << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25434 >>Accept Taming The Tamers << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25433 >>Accept Sasquatch Sighting << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Adella
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,76.97,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handler Jesana|r
    .turnin 25469 >>Turn in Forces of Nature: Mountain Giants
    .target Handler Jesana
    .isOnQuest 25469
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,76.97,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handler Jesana|r
    .turnin 25468 >>Turn in Forces of Nature: Faerie Dragons
    .target Handler Jesana
    .isOnQuest 25468
step
    #completewith Drop25475x15
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step
    #label Drop25475x15
    #loop
    .goto 69,75.13,61.76,0
    .goto 69,75.13,61.76,40,0
    .goto 69,73.56,63.53,40,0
    .goto 69,77.73,63.34,40,0
    >>Kill |cRXP_ENEMY_Zukk'ash Stingers|r, |cRXP_ENEMY_Zukk'ash Wasps|r, |cRXP_ENEMY_Zukk'ash Workers|r and |cRXP_ENEMY_Zukk'ash Tunnelers|r. Loot them for |cRXP_LOOT_Zukk'ash Carapace|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Stinglasher|r
    .complete 25429,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Zukk'ash Carapace (20)
    .complete 25431,1 --Stinglasher slain (1)
    .mob Zukk'ash Stinger << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Zukk'ash Wasp << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Zukk'ash Worker << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Zukk'ash Tunneler << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Stinglasher
step
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .turnin 25429 >>Turn in Zukk'ash Infestation << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 25431 >>Turn in Stinglasher
    .target Adella
step
    #completewith Drop25475x16
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x16
    .goto 69,75.08,29.14
    >>Kill |cRXP_ENEMY_Gordunni Tamers|r
    >>Kill |cRXP_ENEMY_Bigfist|r
    .complete 25434,1 --Gordunni Tamer slain (6)
    .complete 25433,1 --Bigfist slain (1)
    .mob Gordunni Tamer
    .mob Bigfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .turnin 25434 >>Turn in Taming The Tamers
    .turnin 25433 >>Turn in Sasquatch Sighting
    .accept 25436 >>Accept Spiteful Sisters
    .target Adella
step
    #completewith Drop25475x17
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x17
    #loop
    .goto 69,79.29,43.93,0
    .goto 69,79.29,43.93,40,0
    .goto 69,79.30,38.58,40,0
    .goto 69,75.71,37.84,40,0
    >>Kill |cRXP_ENEMY_Corrupted Dryads|r
    .complete 25436,1 --Corrupted Dryad slain (8)
    .mob Corrupted Dryad
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .turnin 25436 >>Turn in Spiteful Sisters
    .accept 25437 >>Accept Ysondre's Call
    .target Adella
step
    .goto 69,81.54,42.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysondre|r
    .turnin 25437 >>Turn in Ysondre's Call << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
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
    .accept 25438 >>Accept Ysondre's Farewell << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Ysondre
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,86.07,45.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caryssia Moonhunter|r
    .accept 25486 >>Accept The Grimtotem are Coming
    .target Caryssia Moonhunter
step
    #completewith Drop25475x18
    >>|cRXP_LOOT_OOX-22/FE Distress Beacon|r can drop from |cRXP_ENEMY_Gordunni Mauler|r, |cRXP_ENEMY_Gordunni Shaman|r, |cRXP_ENEMY_Gordunni Warlock|r. Use it to start the quest if you get one
    .collect 8705,1,25475 --OOX-22/FE Distress Beacon (1)
    .accept 25475 >>Accept Find OOX-22/FE!
    .use 8705
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25475x18
    .goto 69,87.20,44.62
    >>Kill |cRXP_ENEMY_Grimtotem Marauders|r
    .complete 25486,1 --Grimtotem Marauder slain (7)
    .mob Grimtotem Marauder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,88.47,44.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rendow|r
    .turnin 25486 >>Turn in The Grimtotem are Coming
    .accept 25488 >>Accept Two If By Boat
    .target Rendow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.23,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adella|r
    .turnin 25438 >>Turn in Ysondre's Farewell
    .target Adella
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.31,56.79
    >>Kill |cRXP_ENEMY_Dyslix Silvergrub|r and |cRXP_ENEMY_Seyala Nightwisp|r
    .complete 25479,1 --Dyslix Silvergrub (1)
    .mob Dyslix Silvergrub
    .mob Seyala Nightwisp
    .isOnQuest 25479
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,86.07,45.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caryssia Moonhunter|r
    .turnin 25479 >>Turn in To New Thalanaar
    .target Caryssia Moonhunter
    .isOnQuest 25479
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Apprentice of Estulan's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,57.24,54.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vestia Moonspear|r
    .turnin 26401 >>Turn in Return to Vestia
    .target Vestia Moonspear
step
    .goto 69,53.35,55.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .turnin 25475 >>Turn in Find OOX-22/FE!
    .target Homing Robot OOX-22/FE
    .isOnQuest 25475
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Edirah
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
    .zone 69 >>Leave The Exodar for Feralas
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
    +|cRXP_WARN_That is all of Feralas for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
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
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Rescue OOX-22/FE!
    >>|cRXP_FRIENDLY_Thousand Needles|r: Two If By Boat << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 40|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 2.7 levels of quests, starting around Chromie), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.7 levels of quests, starting around Tabetha), |cRXP_FRIENDLY_Western Plaguelands|r (about 0.6 levels of quests, starting around Daria L'Rayne). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Feralas is planned from level 83.|r Load its guide for level 83 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 36 - 84 Feralas
#subweight -36
#name 83-84 Feralas
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.23,56.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .accept 25481 >>Accept To New Thalanaar
    .target Falfindel Waywarder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,77.31,56.79
    >>Kill |cRXP_ENEMY_Dyslix Silvergrub|r and |cRXP_ENEMY_Seyala Nightwisp|r
    .complete 25481,1 --Dyslix Silvergrub (1)
    .mob Dyslix Silvergrub
    .mob Seyala Nightwisp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 69,86.07,45.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caryssia Moonhunter|r
    .turnin 25481 >>Turn in To New Thalanaar
    .target Caryssia Moonhunter
step
    +|cRXP_WARN_End of the Feralas route.|r
step
    +|cRXP_WARN_Suggested next zones at level 83|r: |cRXP_FRIENDLY_Deepholm|r (about 0.8 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
