-- 26-31 Arathi Highlands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Arathi Highlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 26-31 Arathi Highlands
--RouteBuilder:next
#next Zone Routes (Horde)\30-32 Desolace: around Sorrem;Zone Routes (Horde)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts;Zone Routes (Horde)\25-30 Northern Stranglethorn

step
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 26139 >>Turn in Into Arathi
    .target Captain Nials
    .isOnQuest 26139
step
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .accept 26093 >>Accept Northfold Manor
    .target Captain Nials
step
    .goto 14,39.19,48.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Androd Fadran|r
    .target Androd Fadran
    .home >>Set your Hearthstone to Androd Fadran's inn
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 110,81.16,37.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsudar the Bastion|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Alsudar the Bastion
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 110,84.56,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .accept 27278 >>Accept Grimshot's Call
    .target Zandine
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 110,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 27279 >>Accept The Shattered Hand
    .target Zelanis
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 110,59.17,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inethven|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Inethven
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 110,73.05,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zanien|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Zanien
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 110,71.71,55.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gez'li|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Gez'li
step
    .goto 110,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Champion Bachi|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Champion Bachi
step
    .goto 110,53.09,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldrae|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Aldrae
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9811 >>Turn in Friend of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9811
step << Orc/Undead/Tauren/Troll/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9812 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9811 --any of: Friend of the Sin'dorei
    .xp <15,1
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9328 >>Turn in Hero of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9328
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9621 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9328 --any of: Hero of the Sin'dorei
    .xp <15,1
step
    #completewith next
    .zone 14 >>Leave Silvermoon City for Arathi Highlands
    .zoneskip 14
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,13.36,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Alina|r
    .turnin 28619 >>Turn in Warchief's Command: Arathi Highlands!
    .target Dark Ranger Alina
    .isOnQuest 28619
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,13.36,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Alina|r
    .turnin 28572 >>Turn in Warchief's Command: Arathi Highlands!
    .accept 26022 >>Accept First Blood
    .target Dark Ranger Alina
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,13.34,34.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Maudria|r
    .accept 26053 >>Accept Clearing the Highlands
    .target Deathstalker Maudria
step
    .goto 14,13.77,33.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genavie Callow|r
    .accept 26428 >>Accept To Steal From Thieves
    .target Genavie Callow
step
    #loop
    .goto 14,24.65,29.41,0
    .goto 14,24.65,29.41,40,0
    .goto 14,27.05,31.32,40,0
    .goto 14,25.91,25.72,40,0
    >>Kill |cRXP_ENEMY_Syndicate Highwaymans|r, |cRXP_ENEMY_Syndicate Pathstalkers|r and |cRXP_ENEMY_Syndicate Mercenaries|r. Loot them for |cRXP_LOOT_Bloodstone Amulet|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Syndicate Highwaymans|r, |cRXP_ENEMY_Syndicate Pathstalkers|r and |cRXP_ENEMY_Syndicate Mercenaries|r
    .complete 26022,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Bloodstone Amulet (10)
    .complete 26093,1 --Syndicate Highwayman (8)
    .mob Syndicate Highwayman
    .mob Syndicate Pathstalker
    .mob Syndicate Mercenary
step
    .goto 14,13.36,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Alina|r
    .turnin 26022 >>Turn in First Blood << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 26025 >>Accept The Traitor Orc << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 26023 >>Accept The Forsaken Trollbane
    .target Dark Ranger Alina
step
    .goto 14,12.93,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Trollbane|r
    .turnin 26023 >>Turn in The Forsaken Trollbane
    .accept 26030 >>Accept Sigil of Strom << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Galen Trollbane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 14,22.73,63.34,0
    .goto 14,22.73,63.34,40,0
    .goto 14,19.98,66.32,40,0
    >>Kill |cRXP_ENEMY_Syndicate Prowlers|r, |cRXP_ENEMY_Syndicate Conjurors|r, |cRXP_ENEMY_Syndicate Magus|r and |cRXP_ENEMY_Syndicate Thiefs|r. Loot them for |cRXP_LOOT_Sigil of Strom|r
    >>Kill |cRXP_ENEMY_Marez Cowl|r and loot |cRXP_LOOT_Befouled Bloodstone Orb|r
    .complete 26030,1 --Sigil of Strom (1)
    .complete 26025,1 --Befouled Bloodstone Orb (1)
    .mob Syndicate Prowler
    .mob Syndicate Conjuror
    .mob Syndicate Magus
    .mob Syndicate Thief
    .mob Marez Cowl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,13.36,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Alina|r
    .turnin 26025 >>Turn in The Traitor Orc
    .target Dark Ranger Alina
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,12.93,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Trollbane|r
    .turnin 26030 >>Turn in Sigil of Strom
    .accept 26031 >>Accept Sigil of Thoradin
    .target Galen Trollbane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 14,16.70,60.81,0
    .goto 14,16.70,60.81,40,0
    .goto 14,15.30,64.97,40,0
    >>Kill |cRXP_ENEMY_Stromgarde Troll Hunters|r, |cRXP_ENEMY_Stromgarde Defenders|r and |cRXP_ENEMY_Stromgarde Soldiers|r. Loot them for |cRXP_LOOT_Sigil Fragment|r
    .complete 26031,1 --Sigil Fragment (5)
    .mob Stromgarde Troll Hunter
    .mob Stromgarde Defender
    .mob Stromgarde Soldier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,12.93,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Trollbane|r
    .turnin 26031 >>Turn in Sigil of Thoradin
    .accept 26032 >>Accept Sigil of Arathor
    .target Galen Trollbane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along29
    >>As you go: Kill |cRXP_ENEMY_Boulderfist Enforcers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26053,2 --Boulderfist Enforcer slain (10)
    .mob Boulderfist Enforcer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along29
    #loop
    .goto 14,25.47,49.40,0
    .goto 14,25.47,49.40,40,0
    .goto 14,30.07,48.10,40,0
    .goto 14,29.30,45.06,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Ogres|r
    .complete 26053,1 --Boulderfist Ogre slain (8)
    .mob Boulderfist Ogre
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,37.95,55.71
    >>Kill |cRXP_ENEMY_Lieutenant Valorcall|r and loot |cRXP_LOOT_Sigil of Arathor|r
    .complete 26032,1 --Sigil of Arathor (1)
    .mob Lieutenant Valorcall
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 14,27.62,45.82,0
    .goto 14,27.62,45.82,40,0
    .goto 14,26.07,45.92,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Enforcers|r
    .complete 26053,2 --Boulderfist Enforcer slain (10)
    .mob Boulderfist Enforcer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,13.34,34.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Maudria|r
    .turnin 26053 >>Turn in Clearing the Highlands
    .accept 26027 >>Accept Call to Arms
    .target Deathstalker Maudria
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,12.93,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Trollbane|r
    .turnin 26032 >>Turn in Sigil of Arathor
    .accept 26033 >>Accept Trol'kalar
    .target Galen Trollbane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,22.39,61.35
    >>Open the |cRXP_PICK_Trollbane's Tomb|r. Loot it for |cRXP_LOOT_Sheathed Trol'kalar|r
    .complete 26033,1 --Sheathed Trol'kalar (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 14,13.63,68.68,0
    .goto 14,13.63,68.68,40,0
    .goto 14,11.08,70.03,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Shamans|r
    >>Kill |cRXP_ENEMY_Boulderfist Lords|r
    .complete 26027,1 --Boulderfist Shaman slain (7)
    .complete 26027,2 --Boulderfist Lord slain (3)
    .mob Boulderfist Shaman
    .mob Boulderfist Lord
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,12.93,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen Trollbane|r
    .turnin 26033 >>Turn in Trol'kalar
    .accept 26081 >>Accept Alina's Reward
    .target Galen Trollbane
step
    .goto 14,13.36,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Alina|r
    .turnin 26027 >>Turn in Call to Arms << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 26081 >>Turn in Alina's Reward << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 26084 >>Accept Hammerfall
    .target Dark Ranger Alina
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,13.34,34.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Maudria|r
    .accept 26029 >>Accept The Real Threat
    .target Deathstalker Maudria
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,12.81,34.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goutgut|r
    .accept 26083 >>Accept Hello Lolo
    .target Goutgut
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,14.70,67.44
    >>Kill |cRXP_ENEMY_Or'Kalar|r and loot |cRXP_LOOT_Or'Kalar's Head|r
    .complete 26029,1 --Or'Kalar's Head (1)
    .mob Or'Kalar
step
    .goto 14,27.58,83.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Phizzlethorpe|r
    .accept 26050 >>Accept Goggle Boggle
    .target Professor Phizzlethorpe
step
    .goto 14,29.47,82.07
    >>Defend Professor Phizzlethorpe
    .complete 26050,1 --Defend Professor Phizzlethorpe
step
    .goto 14,27.56,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 26050 >>Turn in Goggle Boggle while you are here
    .isQuestComplete 26050
    .target Doctor Draxlegauge
step
    .goto 14,27.72,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
    .accept 26055 >>Accept Drowned Sorrows
    .target Captain Steelgut
step
    .goto 14,27.56,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 26050 >>Turn in Goggle Boggle
    .accept 26051 >>Accept Sunken Treasure
    .target Doctor Draxlegauge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,25.42,85.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo the Lookout|r
    .turnin 26083 >>Turn in Hello Lolo
    .target Lolo the Lookout
step
    #loop
    .goto 14,16.77,89.22,0
    .goto 14,16.77,89.22,40,0
    .goto 14,16.42,93.54,40,0
    .goto 14,14.29,93.01,40,0
    >>Kill |cRXP_ENEMY_Daggerspine Sorceress|r
    >>Loot the |cRXP_PICK_Calcified Elven Gems|r for |cRXP_LOOT_Elven Gem|r
    >>Kill |cRXP_ENEMY_Daggerspine Raiders|r
    .complete 26055,2 --Daggerspine Sorceress slain (3)
    .complete 26051,1 --Elven Gem (10)
    .complete 26055,1 --Daggerspine Raider slain (10)
    .mob Daggerspine Sorceress
    .mob Daggerspine Raider
step
    .goto 14,27.72,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Steelgut|r
    .turnin 26055 >>Turn in Drowned Sorrows
    .target Captain Steelgut
step
    .goto 14,27.56,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Draxlegauge|r
    .turnin 26051 >>Turn in Sunken Treasure
    .accept 26052 >>Accept Speak to Shakes
    .target Doctor Draxlegauge
step
    .goto 14,25.93,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 26052 >>Turn in Speak to Shakes
    .accept 26628 >>Accept Death From Below
    .target Shakes O'Breen
step
    .goto 14,24.76,86.20
    >>Defend Shakes O'Breen
    .complete 26628,1 --Defend Shakes O'Breen
step
    .goto 14,25.93,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shakes O'Breen|r
    .turnin 26628 >>Turn in Death From Below
    .target Shakes O'Breen
step
    #completewith next
    .hs >>Hearth to Androd Fadran's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 14,39.96,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Nials|r
    .turnin 26093 >>Turn in Northfold Manor
    .target Captain Nials
step
    .goto 14,48.94,39.50
    >>Kill |cRXP_ENEMY_Marcel Dabyrie|r and loot |cRXP_LOOT_Marcel's Head|r
    >>Kill |cRXP_ENEMY_Fardel Dabyrie|r and loot |cRXP_LOOT_Fardel's Head|r
    >>Kill |cRXP_ENEMY_Kenata Dabyrie|r and loot |cRXP_LOOT_Kenata's Head|r
    .complete 26428,2 --Marcel's Head (1)
    .complete 26428,3 --Fardel's Head (1)
    .complete 26428,1 --Kenata's Head (1)
    .mob Marcel Dabyrie
    .mob Fardel Dabyrie
    .mob Kenata Dabyrie
step
    .goto 14,57.22,34.55
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .accept 26039 >>Accept The Princess Trapped
step
    .goto 14,67.71,34.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
    .turnin 26084 >>Turn in Hammerfall
    .accept 26107 >>Accept Raising Spirits << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Gor'mul
step
    .xp 28 >>Grind to level 28 (Crush the Witherbark needs it)
step
    .goto 14,68.98,34.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .accept 26429 >>Accept Crush the Witherbark
    .target Drum Fel
step
    .goto 14,69.69,36.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaruk|r
    .accept 26909 >>Accept The Stone Shards
    .target Zaruk
step
    #loop
    .goto 14,77.67,37.62,0
    .goto 14,77.67,37.62,40,0
    .goto 14,79.24,34.38,40,0
    >>Kill |cRXP_ENEMY_Drywhisker Kobolds|r, |cRXP_ENEMY_Drywhisker Surveyors|r and |cRXP_ENEMY_Drywhisker Diggers|r. Loot them for |cRXP_LOOT_Mote of Myzrael|r
    .complete 26039,1 --Mote of Myzrael (12)
    .mob Drywhisker Kobold
    .mob Drywhisker Surveyor
    .mob Drywhisker Digger
step
    .goto 14,79.80,31.68
    >>Click the |cRXP_PICK_Iridescent Shards|r
    .turnin 26039 >>Turn in The Princess Trapped
    .accept 26041 >>Accept Stones of Binding
step
    #loop
    .goto 14,68.33,67.24,0
    .goto 14,68.33,67.24,40,0
    .goto 14,70.64,69.64,40,0
    .goto 14,67.93,76.49,40,0
    .goto 14,61.10,71.12,40,0
    >>Kill |cRXP_ENEMY_Witherbark Headhunters|r
    >>Kill |cRXP_ENEMY_Witherbark Witch Doctors|r
    .complete 26429,2 --Witherbark Headhunter slain (10)
    .complete 26429,3 --Witherbark Witch Doctor (8)
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    #loop
    .goto 14,66.75,62.34,0
    .goto 14,66.75,62.34,40,0
    .goto 14,64.19,60.92,40,0
    .goto 14,61.90,63.77,40,0
    >>Kill |cRXP_ENEMY_Witherbark Axe Throwers|r
    .complete 26429,1 --Witherbark Axe Thrower slain (10)
    .mob Witherbark Axe Thrower
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 14,59.22,47.54,0
    .goto 14,59.22,47.54,40,0
    .goto 14,60.99,42.14,40,0
    .goto 14,63.91,37.90,40,0
    .goto 14,61.00,36.21,40,0
    .goto 14,53.90,44.20,40,0
    .goto 14,51.61,48.11,40,0
    >>Kill |cRXP_ENEMY_Highland Striders|r and |cRXP_ENEMY_Highland Thrashers|r. Loot them for |cRXP_LOOT_Highland Raptor Eye|r
    .complete 26107,1 --Highland Raptor Eye (10)
    .mob Highland Strider
    .mob Highland Thrasher
step
    .goto 14,68.98,34.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 26429 >>Turn in Crush the Witherbark
    .target Drum Fel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,67.71,34.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
    .turnin 26107 >>Turn in Raising Spirits
    .accept 26108 >>Accept Guile of the Raptor
    .target Gor'mul
step
    .goto 14,68.98,34.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .accept 26430 >>Accept Revantusk Village
    .target Drum Fel
    .xp <29,1
step
    .goto 14,61.57,30.40
    >>Open the |cRXP_PICK_Stone of East Binding|r. Loot it for |cRXP_LOOT_Cresting Key|r
    .complete 26041,2 --Cresting Key (1)
step
    .goto 14,57.22,34.55
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .turnin 26909 >>Turn in The Stone Shards
step
    .goto 14,46.39,52.15
    >>Open the |cRXP_PICK_Stone of Outer Binding|r. Loot it for |cRXP_LOOT_Thundering Key|r
    .complete 26041,3 --Thundering Key (1)
step
    .goto 14,18.87,30.80
    >>Open the |cRXP_PICK_Stone of West Binding|r. Loot it for |cRXP_LOOT_Burning Key|r
    .complete 26041,1 --Burning Key (1)
step
    .goto 14,13.77,33.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genavie Callow|r
    .turnin 26428 >>Turn in To Steal From Thieves
    .target Genavie Callow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,13.34,34.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Maudria|r
    .turnin 26029 >>Turn in The Real Threat
    .target Deathstalker Maudria
step
    .goto 14,30.02,59.03
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .turnin 26041 >>Turn in Stones of Binding
    .accept 26042 >>Accept Breaking the Keystone
step
    .goto 14,43.67,67.08
    >>Kill |cRXP_ENEMY_Fozruk|r and loot |cRXP_LOOT_Rod of Order|r
    .complete 26042,1 --Rod of Order (1)
    .mob Fozruk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 14,40.63,78.32,0
    .goto 14,40.63,78.32,40,0
    .goto 14,40.90,83.10,40,0
    >>Kill |cRXP_ENEMY_Highland Fleshstalkers|r. Loot them for |cRXP_LOOT_Raptor Heart|r
    .complete 26108,1 --Raptor Heart (12)
    .mob Highland Fleshstalker
step
    .goto 14,29.86,59.77
    >>Click the |cRXP_PICK_Keystone|r
    .turnin 26042 >>Turn in Breaking the Keystone
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,30.02,59.03
    >>Click the |cRXP_PICK_Stone of Inner Binding|r
    .accept 26911 >>Accept Myzrael's Tale
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,69.69,36.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaruk|r
    .turnin 26911 >>Turn in Myzrael's Tale
    .accept 26912 >>Accept The Princess Unleashed
    .target Zaruk
step
    .goto 14,68.98,34.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .accept 26430 >>Accept Revantusk Village
    .target Drum Fel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,67.71,34.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
    .turnin 26108 >>Turn in Guile of the Raptor
    .target Gor'mul
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,57.30,34.58
    >>Kill |cRXP_ENEMY_Myzrael|r and loot |cRXP_LOOT_Eldritch Shackles|r
    .complete 26912,1 --Eldritch Shackles (1)
    .mob Myzrael
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 14,57.22,34.55
    >>Click the |cRXP_PICK_Shards of Myzrael|r
    .turnin 26912 >>Turn in The Princess Unleashed
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Turn in Fly to Silvermoon City
    .target Sathren Azuredawn
    .isOnQuest 9133
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .accept 9134 >>Accept Skymistress Gloaming
    .target Sathren Azuredawn
    .isQuestTurnedIn 9133 --any of: Fly to Silvermoon City
    .xp <5,1
step
    +|cRXP_WARN_End of the Arathi Highlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Warchief's Command: Ghostlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Warchief's Command: Northern Stranglethorn Vale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Shattered Hand << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
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
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Warchief's Command: The Cape of Stranglethorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Hinterlands|r: Warchief's Command: The Hinterlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Hinterlands|r: Revantusk Village
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 30|r: |cRXP_FRIENDLY_Desolace|r (about 2.1 levels of quests, starting around Sorrem), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.3 levels of quests, starting around Captain Hecklebury Smotts), |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.0 levels of quests, starting around Hemet Nesingwary Jr.). Completing this step loads the guide for Desolace --RouteBuilder:next
]])
