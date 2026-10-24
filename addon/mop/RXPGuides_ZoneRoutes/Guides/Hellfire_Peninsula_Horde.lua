-- 60-63 Hellfire Peninsula: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 60, 67).
-- Split into 2 guides, listed under "60 - 68 Hellfire Peninsula" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Hellfire Peninsula.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 60 - 68 Hellfire Peninsula
#subweight -60
#name 60-63 Hellfire Peninsula: around Legassi
--RouteBuilder:next
#next Zone Routes (Horde)\62-65 Terokkar Forest: around Earthbinder Tavgren;Zone Routes (Horde)\61-63 Zangarmarsh: around Ysiel Windsinger

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,87.35,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant General Orion|r
    .turnin 9407 >>Turn in Through the Dark Portal
    .target Lieutenant General Orion
    .isOnQuest 9407
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,87.35,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant General Orion|r
    .turnin 28705 >>Turn in Warchief's Command: Outland!
    .target Lieutenant General Orion
    .isOnQuest 28705
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,87.35,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant General Orion|r
    .accept 10120 >>Accept Arrival in Outland
    .target Lieutenant General Orion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,87.35,48.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vlagga Freyfeather|r
    .turnin 10120 >>Turn in Arrival in Outland
    .accept 10289 >>Accept Journey to Thrallmar
    .target Vlagga Freyfeather
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.88,36.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Krakork|r
    .turnin 10289 >>Turn in Journey to Thrallmar
    .accept 10291 >>Accept Report to Nazgrel
    .target General Krakork
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 10291 >>Turn in Report to Nazgrel while you are here
    .isQuestComplete 10291
    .target Nazgrel
step
    .goto 100,54.12,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grunda Bronzewing|r
    .target Grunda Bronzewing
    .home >>Set your Hearthstone to Grunda Bronzewing's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 10291 >>Turn in Report to Nazgrel
    .accept 10121 >>Accept Eradicate the Burning Legion
    .target Nazgrel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.13,36.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vurtok Axebreaker|r
    .accept 10450 >>Accept Bonechewer Blood
    .target Vurtok Axebreaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.18,38.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megzeg Nukklebust|r
    .accept 10086 >>Accept I Work... For the Horde!
    .target Megzeg Nukklebust
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,58.14,41.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Shatterskull|r
    .turnin 10121 >>Turn in Eradicate the Burning Legion
    .accept 10123 >>Accept Felspark Ravine
    .target Sergeant Shatterskull
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,66.24,56.21,0
    .goto 100,66.24,56.21,40,0
    .goto 100,68.38,58.22,40,0
    >>Kill |cRXP_ENEMY_Dreadcaller|r
    >>Kill |cRXP_ENEMY_Flamewaker Imps|r
    >>Kill |cRXP_ENEMY_Infernal Warbringers|r
    .complete 10123,1 --Dreadcaller slain (1)
    .complete 10123,2 --Flamewaker Imp slain (4)
    .complete 10123,3 --Infernal Warbringer slain (6)
    .mob Dreadcaller
    .mob Flamewaker Imp
    .mob Infernal Warbringer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,58.14,41.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Shatterskull|r
    .turnin 10123 >>Turn in Felspark Ravine
    .accept 10124 >>Accept Forward Base: Reaver's Fall
    .target Sergeant Shatterskull
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,59.67,47.05,0
    .goto 100,59.67,47.05,40,0
    .goto 100,59.49,51.28,40,0
    .goto 100,61.69,51.45,40,0
    >>Open the |cRXP_PICK_Salvageable Metal|r. Loot it for |cRXP_LOOT_Salvaged Metal|r
    >>Open the |cRXP_PICK_Salvageable Wood|r. Loot it for |cRXP_LOOT_Salvaged Wood|r
    >>Kill |cRXP_ENEMY_Bonechewer Mutants|r, |cRXP_ENEMY_Bonechewer Raiders|r, |cRXP_ENEMY_Bonechewer Scavengers|r and |cRXP_ENEMY_Bonechewer Evokers|r. Loot them for |cRXP_LOOT_Bonechewer Blood|r
    .complete 10086,1 --Salvaged Metal (1)
    .complete 10086,2 --Salvaged Wood (1)
    .complete 10450,1 --Bonechewer Blood (12)
    .mob Bonechewer Mutant
    .mob Bonechewer Raider
    .mob Bonechewer Scavenger
    .mob Bonechewer Evoker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.18,38.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megzeg Nukklebust|r
    .turnin 10086 >>Turn in I Work... For the Horde!
    .accept 10087 >>Accept Burn It Up... For the Horde!
    .target Megzeg Nukklebust
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.13,36.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vurtok Axebreaker|r
    .turnin 10450 >>Turn in Bonechewer Blood
    .accept 10449 >>Accept Apothecary Zelana
    .target Vurtok Axebreaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,65.89,43.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander To'arch|r
    .turnin 10124 >>Turn in Forward Base: Reaver's Fall
    .accept 10208 >>Accept Disrupt Their Reinforcements
    .target Forward Commander To'arch
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,66.17,41.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Zelana|r
    .turnin 10449 >>Turn in Apothecary Zelana
    .accept 10242 >>Accept Spinebreaker Post
    .target Apothecary Zelana
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,70.26,42.18,0
    .goto 100,70.26,42.18,40,0
    .goto 100,70.47,45.92,40,0
    >>Kill |cRXP_ENEMY_Netherhounds|r, |cRXP_ENEMY_Wrathguards|r, |cRXP_ENEMY_Doomwhisperers|r and |cRXP_ENEMY_Fel Handlers|r. Loot them for |cRXP_LOOT_Demonic Rune Stone|r
    .collect 28513,1,10208,1 --Demonic Rune Stone (1)
    .mob Netherhound
    .mob Wrathguard
    .mob Doomwhisperer
    .mob Fel Handler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,70.83,45.47
    >>Click the |cRXP_PICK_Portal Xilus|r
    .complete 10208,1 --Portal Xilus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,73.99,38.74
    >>Click the |cRXP_PICK_Portal Kruul|r
    .complete 10208,2 --Portal Kruul
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,65.89,43.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander To'arch|r
    .turnin 10208 >>Turn in Disrupt Their Reinforcements
    .accept 10129 >>Accept Mission: Gateways Murketh and Shaadraz
    .target Forward Commander To'arch
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .xp 60 >>Grind to level 60 (Falcon Watch needs it)
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 100,55.18,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martik Tor'seldori|r
    .accept 9498 >>Accept Falcon Watch
    .target Martik Tor'seldori
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .accept 9400 >>Accept The Assassin
    .target Nazgrel
    .xp <60,1
step << Orc Warrior/Orc Paladin/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Paladin/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Paladin/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Paladin/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Paladin/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Paladin/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Paladin/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 100,55.95,39.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Battlecryer Blackeye|r
    .accept 13409 >>Accept Hellfire Fortifications
    .target Battlecryer Blackeye
step << BloodElf
    .goto 100,55.18,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martik Tor'seldori|r
    .accept 9499 >>Accept Falcon Watch
    .target Martik Tor'seldori
    .xp <60,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,77.71,51.83
    >>Click the |cRXP_PICK_Gateway Shaadraz|r
    >>Click the |cRXP_PICK_Gateway Murketh|r
    .complete 10129,2 --Gateway Shaadraz
    .complete 10129,1 --Gateway Murketh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,65.89,43.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander To'arch|r
    .turnin 10129 >>Turn in Mission: Gateways Murketh and Shaadraz
    .accept 10388 >>Accept Return to Thrallmar
    .target Forward Commander To'arch
step
    .goto 100,61.66,81.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amilya|r
    .fp Spinebreaker Post >> Get the Spinebreaker Post Flight Path
    .target Amilya Airheart
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.14,81.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Albreck|r
    .turnin 10242 >>Turn in Spinebreaker Post while you are here
    .isQuestComplete 10242
    .target Apothecary Albreck
step << BloodElf
    .xp 60 >>Grind to level 60 (Falcon Watch needs it)
step << BloodElf
    .goto 100,55.18,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martik Tor'seldori|r
    .accept 9499 >>Accept Falcon Watch
    .target Martik Tor'seldori
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 10388 >>Turn in Return to Thrallmar while you are here
    .isQuestComplete 10388
    .target Nazgrel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.87,81.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogath the Mad|r
    .accept 10278 >>Accept The Warp Rifts
    .target Ogath the Mad
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.78,81.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Mordiba|r
    .accept 10220 >>Accept Make Them Listen
    .target Emissary Mordiba
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.14,81.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Albreck|r
    .turnin 10242 >>Turn in Spinebreaker Post
    .accept 10538 >>Accept Boiling Blood
    .target Apothecary Albreck
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,60.93,81.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelag|r
    .accept 9345 >>Accept Preparing the Salve
    .target Grelag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.20,80.62
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10809 >>Accept Wanted: Worg Master Kruush
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop10229x1
    >>|cRXP_LOOT_A Mysterious Tome|r can drop from |cRXP_ENEMY_Unyielding Knight|r. Use it to start the quest if you get one
    .collect 28552,1,10229 --A Mysterious Tome (1)
    .accept 10229 >>Accept Decipher the Tome
    .use 28552
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop10229x1
    #loop
    .goto 100,57.69,75.22,0
    .goto 100,57.69,75.22,40,0
    .goto 100,55.28,79.77,40,0
    .goto 100,53.48,77.89,40,0
    >>Kill |cRXP_ENEMY_Unyielding Footmans|r
    >>Kill |cRXP_ENEMY_Unyielding Knights|r
    >>Kill |cRXP_ENEMY_Unyielding Sorcerers|r
    .complete 10220,1 --Unyielding Footman slain (8)
    .complete 10220,2 --Unyielding Knight slain (8)
    .complete 10220,3 --Unyielding Sorcerer slain (6)
    .mob Unyielding Footman
    .mob Unyielding Knight
    .mob Unyielding Sorcerer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.74,81.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Althen the Historian|r
    .turnin 10229 >>Turn in Decipher the Tome
    .target Althen the Historian
    .isOnQuest 10229
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.78,81.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Mordiba|r
    .turnin 10220 >>Turn in Make Them Listen while you are here
    .isQuestComplete 10220
    .target Emissary Mordiba
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.74,81.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Althen the Historian|r
    .accept 10230 >>Accept The Battle Horn
    .target Althen the Historian
    .isQuestTurnedIn 10229 --any of: Decipher the Tome
    .xp <58,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.83,83.74
    >>Kill |cRXP_ENEMY_Lieutenant Commander Thalvos|r and loot |cRXP_LOOT_Unyielding Battle Horn|r
    .complete 10230,1 --Unyielding Battle Horn (1)
    .mob Lieutenant Commander Thalvos
    .isOnQuest 10230
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.74,81.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Althen the Historian|r
    .turnin 10230 >>Turn in The Battle Horn
    .target Althen the Historian
    .isOnQuest 10230
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.74,81.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Althen the Historian|r
    .accept 10250 >>Accept Bloody Vengeance
    .target Althen the Historian
    .isQuestTurnedIn 10230 --any of: The Battle Horn
    .xp <58,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.78,81.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Mordiba|r
    .turnin 10220 >>Turn in Make Them Listen
    .target Emissary Mordiba
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Bleeding Hollow Grunts|r, |cRXP_ENEMY_Bleeding Hollow Dark Shamans|r, |cRXP_ENEMY_Bleeding Hollow Peons|r and |cRXP_ENEMY_Bleeding Hollow Necrolytes|r. Loot them for |cRXP_LOOT_Bleeding Hollow Blood|r. |cRXP_WARN_Anything left is finished later|r
    .collect 30425,1,10538,1 --Bleeding Hollow Blood (1)
    .mob Bleeding Hollow Grunt
    .mob Bleeding Hollow Dark Shaman
    .mob Bleeding Hollow Peon
    .mob Bleeding Hollow Necrolyte
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,63.41,77.12
    >>Kill |cRXP_ENEMY_Urtrak|r
    .complete 10250,1 --Urtrak slain (1)
    .mob Urtrak
    .isOnQuest 10250
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along39
    .goto 100,68.34,73.51
    >>Kill |cRXP_ENEMY_Worg Master Kruush|r and loot |cRXP_LOOT_Worg Master's Head|r
    .complete 10809,1 --Worg Master's Head (1)
    .mob Worg Master Kruush
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.21,81.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darkhowl|r
    .turnin 10809 >>Turn in Wanted: Worg Master Kruush
    .accept 10792 >>Accept Zeth'Gor Must Burn!
    .target Captain Darkhowl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.74,81.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Althen the Historian|r
    .turnin 10250 >>Turn in Bloody Vengeance
    .target Althen the Historian
    .isOnQuest 10250
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.74,81.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Althen the Historian|r
    .accept 10258 >>Accept Honor the Fallen
    .target Althen the Historian
    .isQuestTurnedIn 10250 --any of: Bloody Vengeance
    .xp <58,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.66,81.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zezzak|r
    .accept 10813 >>Accept The Eyes of Grillok
    .target Zezzak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along45
    >>As you go: Pick up |cRXP_PICK_Hellfire Spineleaf|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9345,1 --Hellfire Spineleaf (12)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,69.39,75.78,0
    .goto 100,69.39,75.78,40,0
    .goto 100,69.20,69.33,40,0
    .goto 100,66.62,70.05,40,0
    >>Kill |cRXP_ENEMY_Bleeding Hollow Peon|r and loot |cRXP_LOOT_Bleeding Hollow Torch|r
    >>Kill |cRXP_ENEMY_Bleeding Hollow Grunts|r, |cRXP_ENEMY_Bleeding Hollow Dark Shamans|r, |cRXP_ENEMY_Bleeding Hollow Peons|r and |cRXP_ENEMY_Bleeding Hollow Necrolytes|r. Loot them for |cRXP_LOOT_Bleeding Hollow Blood|r
    .collect 31347,1,10792,1 --Bleeding Hollow Torch (1)
    .collect 30425,1,10538,1 --Bleeding Hollow Blood (1)
    .mob Bleeding Hollow Peon
    .mob Bleeding Hollow Grunt
    .mob Bleeding Hollow Dark Shaman
    .mob Bleeding Hollow Necrolyte
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along45
    .goto 100,69.93,70.23
    >>Kill Bleeding Hollow Peons for their torches, ignite them at Zeth'Gor's forge then throw the burning torches at Zeth'Gor Buildings.
    .complete 10792,2 --Eastern Hovel
    .target Eastern Hovel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,68.53,73.68
    >>Kill Bleeding Hollow Peons for their torches, ignite them at Zeth'Gor's forge then throw the burning torches at Zeth'Gor Buildings.
    .complete 10792,4 --Stable
    .target Stable
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,69.49,76.36
    >>Kill Bleeding Hollow Peons for their torches, ignite them at Zeth'Gor's forge then throw the burning torches at Zeth'Gor Buildings.
    .complete 10792,1 --Barracks
    .target Barracks
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,67.23,76.31
    >>Kill Bleeding Hollow Peons for their torches, ignite them at Zeth'Gor's forge then throw the burning torches at Zeth'Gor Buildings.
    .complete 10792,3 --Western Hovel
    .target Western Hovel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along50
    >>As you go: Pick up |cRXP_PICK_Hellfire Spineleaf|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9345,1 --Hellfire Spineleaf (12)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,65.21,71.20
    >>Loot the |cRXP_PICK_Cursed Cauldrons|r for |cRXP_LOOT_Boiled Blood|r
    .complete 10538,1 --Boiled Blood (12)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along50
    .goto 100,67.01,72.52
    >>Kill |cRXP_ENEMY_Eye of Grilloks|r and |cRXP_ENEMY_Eye of Grillok Quest Credit Bunnies|r
    .complete 10813,1 --Eye of Grillok (8)
    .mob Eye of Grillok
    .mob Eye of Grillok Quest Credit Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.66,81.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zezzak|r
    .turnin 10813 >>Turn in The Eyes of Grillok
    .accept 10834 >>Accept Grillok "Darkeye"
    .target Zezzak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.21,81.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darkhowl|r
    .turnin 10792 >>Turn in Zeth'Gor Must Burn!
    .target Captain Darkhowl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.14,81.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Albreck|r
    .turnin 10538 >>Turn in Boiling Blood
    .accept 10835 >>Accept Apothecary Antonivich
    .target Apothecary Albreck
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,56.92,77.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hogarth|r
    .turnin 10258 >>Turn in Honor the Fallen
    .target Commander Hogarth
    .isOnQuest 10258
step
    .goto 100,49.24,74.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
    .accept 9349 >>Accept Ravager Egg Roundup
    .target Legassi
step
    .goto 100,49.15,74.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
    .accept 10161 >>Accept In Case of Emergency...
    .target "Screaming" Screed Luckheed
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,50.20,83.20,0
    .goto 100,50.20,83.20,40,0
    .goto 100,48.20,85.00,40,0
    >>Kill |cRXP_ENEMY_Unstable Voidwalkers|r. Loot them for |cRXP_LOOT_Warp Nether|r
    .complete 10278,1 --Warp Nether (3)
    .mob Unstable Voidwalker
step
    #loop
    .goto 100,41.99,82.23,0
    .goto 100,41.99,82.23,40,0
    .goto 100,40.79,85.91,40,0
    .goto 100,38.62,88.44,40,0
    .goto 100,34.99,92.26,40,0
    >>Kill |cRXP_ENEMY_Razorfang Ravagers|r. Loot them for |cRXP_LOOT_Ravager Egg|r. It can also be picked up from |cRXP_PICK_Ravager Egg|r on the ground
    .complete 9349,1 --Ravager Egg (12)
    .mob Razorfang Ravager
step
    .goto 100,49.24,74.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
    .turnin 9349 >>Turn in Ravager Egg Roundup
    .accept 9361 >>Accept Helboar, the Other White Meat
    .turnin 9361 >>Turn in Helboar, the Other White Meat
    .accept 9356 >>Accept Smooth as Butter
    .target Legassi
step
    .goto 100,27.79,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innalia|r
    .fp Falcon Watch >> Get the Falcon Watch Flight Path
    .xp <60,1
    .target Innalia
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .turnin 9498 >>Turn in Falcon Watch while you are here
    .isQuestComplete 9498
    .target Ranger Captain Venn'ren
step << BloodElf
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .turnin 9499 >>Turn in Falcon Watch while you are here
    .isQuestComplete 9499
    .target Ranger Captain Venn'ren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along61
    >>As you go: Pick up |cRXP_PICK_Hellfire Spineleaf|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9345,1 --Hellfire Spineleaf (12)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,66.66,71.50
    >>Kill |cRXP_ENEMY_Grillok "Darkeye"|r and loot |cRXP_LOOT_Grillok's Eyepatch|r
    .complete 10834,1 --Grillok's Eyepatch (1)
    .mob Grillok "Darkeye"
step
    #completewith Along61
    >>As you go: Pick up |cRXP_PICK_Zeppelin Debris|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10161,1 --Zeppelin Debris (1)
step
    #label Along61
    #loop
    .goto 100,61.71,68.72,0
    .goto 100,61.71,68.72,40,0
    .goto 100,62.88,66.62,40,0
    .goto 100,65.45,63.50,40,0
    >>Kill |cRXP_ENEMY_Bonestripper Buzzards|r. Loot them for |cRXP_LOOT_Plump Buzzard Wing|r
    .complete 9356,1 --Plump Buzzard Wing (12)
    .mob Bonestripper Buzzard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,60.00,69.52,0
    .goto 100,60.00,69.52,40,0
    .goto 100,63.08,73.03,40,0
    .goto 100,59.58,78.63,40,0
    >>Pick up |cRXP_PICK_Hellfire Spineleaf|r from the ground
    .complete 9345,1 --Hellfire Spineleaf (12)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,60.93,81.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelag|r
    .turnin 9345 >>Turn in Preparing the Salve
    .accept 10213 >>Accept Investigate the Crash
    .target Grelag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.66,81.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zezzak|r
    .turnin 10834 >>Turn in Grillok "Darkeye" while you are here
    .isQuestComplete 10834
    .target Zezzak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.87,81.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogath the Mad|r
    .turnin 10278 >>Turn in The Warp Rifts while you are here
    .isQuestComplete 10278
    .target Ogath the Mad
step
    #loop
    .goto 100,60.01,68.23,0
    .goto 100,60.01,68.23,40,0
    .goto 100,61.31,72.75,40,0
    .goto 100,57.70,72.44,40,0
    >>Pick up |cRXP_PICK_Zeppelin Debris|r from the ground
    .complete 10161,1 --Zeppelin Debris (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.66,81.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zezzak|r
    .turnin 10834 >>Turn in Grillok "Darkeye"
    .target Zezzak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.87,81.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogath the Mad|r
    .turnin 10278 >>Turn in The Warp Rifts
    .accept 10294 >>Accept Void Ridge
    .target Ogath the Mad
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,77.86,68.59,0
    .goto 100,77.86,68.59,40,0
    .goto 100,77.21,65.65,40,0
    >>Kill |cRXP_ENEMY_Collapsing Voidwalkers|r and |cRXP_ENEMY_Vacillating Voidcallers|r. Loot them for |cRXP_LOOT_Void Ridge Soul Shard|r
    .complete 10294,1 --Void Ridge Soul Shard (40)
    .mob Collapsing Voidwalker
    .mob Vacillating Voidcaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.87,81.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogath the Mad|r
    .turnin 10294 >>Turn in Void Ridge
    .accept 10295 >>Accept From the Abyss
    .target Ogath the Mad
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,81.09,78.89
    >>Kill |cRXP_ENEMY_Void Baron Galaxis|r and loot |cRXP_LOOT_Galaxis Soul Shard|r
    .complete 10295,1 --Galaxis Soul Shard (1)
    .mob Void Baron Galaxis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,61.87,81.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogath the Mad|r
    .turnin 10295 >>Turn in From the Abyss
    .target Ogath the Mad
step
    .goto 100,49.24,74.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
    .turnin 9356 >>Turn in Smooth as Butter
    .target Legassi
step
    .goto 100,49.15,74.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
    .turnin 10213 >>Turn in Investigate the Crash << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 10161 >>Turn in In Case of Emergency...
    .accept 9351 >>Accept Voidwalkers Gone Wild
    .target "Screaming" Screed Luckheed
step
    #loop
    .goto 100,50.24,83.16,0
    .goto 100,50.24,83.16,40,0
    .goto 100,46.54,83.81,40,0
    .goto 100,45.33,83.72,40,0
    >>Kill |cRXP_ENEMY_Rogue Voidwalkers|r and |cRXP_ENEMY_Uncontrolled Voidwalkers|r. Loot them for |cRXP_LOOT_Condensed Voidwalker Essence|r
    .complete 9351,1 --Condensed Voidwalker Essence (10)
    .mob Rogue Voidwalker
    .mob Uncontrolled Voidwalker
step
    .goto 100,49.15,74.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
    .turnin 9351 >>Turn in Voidwalkers Gone Wild
    .target "Screaming" Screed Luckheed
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.38,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Carinda|r
    .accept 9374 >>Accept Arelion's Journal
    .target Magistrix Carinda
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.79,59.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Azethen|r
    .accept 9387 >>Accept Source of the Corruption
    .target Apothecary Azethen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.99,59.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ryathen the Somber|r
    .accept 9366 >>Accept In Need of Felblood
    .target Ryathen the Somber
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.05,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Calesthris Dawnstar|r
    .accept 9396 >>Accept Magic of the Arakkoa
    .target Arcanist Calesthris Dawnstar
step
    .goto 100,27.79,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innalia|r
    .fp Falcon Watch >> Get the Falcon Watch Flight Path
    .target Innalia
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .accept 9397 >>Accept Birds of a Feather
    .target Falconer Drenna Riverwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.04,60.30
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9466 >>Accept Wanted: Blacktalon the Savage
step
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .turnin 9498 >>Turn in Falcon Watch << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .turnin 9499 >>Turn in Falcon Watch << BloodElf
    .target Ranger Captain Venn'ren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .accept 10103 >>Accept Report to Zurai
    .target Ranger Captain Venn'ren
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .accept 10442 >>Accept Helping the Cenarion Post
    .target Falconer Drenna Riverwind
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .accept 9381 >>Accept Trueflight Arrows
    .target Falconer Drenna Riverwind
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,33.37,65.08
    >>Kill |cRXP_ENEMY_Blacktalon the Savage|r and loot |cRXP_LOOT_Blacktalon's Claws|r
    .complete 9466,1 --Blacktalon's Claws (1)
    .mob Blacktalon the Savage
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .accept 9340 >>Accept The Great Fissure
    .target Ranger Captain Venn'ren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .turnin 9466 >>Turn in Wanted: Blacktalon the Savage while you are here
    .isQuestComplete 9466
    .target Ranger Captain Venn'ren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .accept 10103 >>Accept Report to Zurai
    .target Ranger Captain Venn'ren
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .accept 10442 >>Accept Helping the Cenarion Post
    .target Falconer Drenna Riverwind
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .accept 9381 >>Accept Trueflight Arrows
    .target Falconer Drenna Riverwind
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,31.32,61.74,0
    .goto 100,31.32,61.74,40,0
    .goto 100,33.25,65.03,40,0
    .goto 100,36.31,60.71,40,0
    >>Kill |cRXP_ENEMY_Stonescythe Whelps|r
    >>Kill |cRXP_ENEMY_Stonescythe Alphas|r
    .complete 9340,1 --Stonescythe Whelp slain (8)
    .complete 9340,2 --Stonescythe Alpha slain (3)
    .mob Stonescythe Whelp
    .mob Stonescythe Alpha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .turnin 9340 >>Turn in The Great Fissure
    .turnin 9466 >>Turn in Wanted: Blacktalon the Savage
    .accept 9391 >>Accept Marking the Path
    .target Ranger Captain Venn'ren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .accept 10103 >>Accept Report to Zurai
    .target Ranger Captain Venn'ren
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .accept 10442 >>Accept Helping the Cenarion Post
    .target Falconer Drenna Riverwind
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .accept 9381 >>Accept Trueflight Arrows
    .target Falconer Drenna Riverwind
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,36.13,65.37
    >>Click the |cRXP_PICK_Southern Beacon|r
    .complete 9391,3 --Southern Beacon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,34.07,60.00
    >>Click the |cRXP_PICK_Central Beacon|r
    .complete 9391,2 --Central Beacon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,30.02,60.58
    >>Click the |cRXP_PICK_Western Beacon|r
    .complete 9391,1 --Western Beacon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .turnin 9391 >>Turn in Marking the Path while you are here
    .isQuestComplete 9391
    .target Ranger Captain Venn'ren
step << Orc Warrior/Orc Paladin/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Paladin/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Paladin/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Paladin/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Paladin/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Paladin/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Paladin/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 100,40.44,56.70
    >>Capture the Overlook, the Stadium and Broken Hill, then return to Battlecryer Blackeye in Thrallmar.
    .complete 13409,3 --Broken Hill Capture Credit Marker
    .target Broken Hill Capture Credit Marker
step << Orc DeathKnight/Undead DeathKnight/Tauren DeathKnight/Troll DeathKnight/BloodElf DeathKnight/Goblin DeathKnight/Pandaren DeathKnight
    .goto 100,55.95,39.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Battlecryer Blackeye|r
    .accept 13411 >>Accept Hellfire Fortifications
    .target Battlecryer Blackeye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 10388 >>Turn in Return to Thrallmar
    .accept 9400 >>Accept The Assassin
    .accept 10390 >>Accept Forge Camp: Mageddon
    .target Nazgrel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along93
    >>As you go: Kill |cRXP_ENEMY_Gan'arg Servants|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10390,1 --Gan'arg Servant slain (10)
    .mob Gan'arg Servant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,64.35,30.93
    >>Kill |cRXP_ENEMY_Razorsaw|r and loot |cRXP_LOOT_Head of Forgefiend Razorsaw|r
    .complete 10390,2 --Head of Forgefiend Razorsaw (1)
    .mob Razorsaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along93
    .goto 100,64.35,30.93
    >>Kill |cRXP_ENEMY_Razorsaw|r and loot |cRXP_LOOT_Burning Legion Missive|r. Use it to start the quest
    .collect 29590,1,10393 --Burning Legion Missive (1)
    .accept 10393 >>Accept Vile Plans
    .use 29590
    .mob Razorsaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,63.39,32.37,0
    .goto 100,63.39,32.37,40,0
    .goto 100,65.68,31.67,40,0
    >>Kill |cRXP_ENEMY_Gan'arg Servants|r
    .complete 10390,1 --Gan'arg Servant slain (10)
    .mob Gan'arg Servant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.13,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Bloodhawk|r
    .turnin 10393 >>Turn in Vile Plans
    .target Magister Bloodhawk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 10390 >>Turn in Forge Camp: Mageddon
    .accept 10391 >>Accept Cannons of Rage
    .target Nazgrel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,64.53,33.18,0
    .goto 100,64.53,33.18,40,0
    .goto 100,66.60,32.00,40,0
    >>Kill |cRXP_ENEMY_Fel Cannon MKIs|r
    .complete 10391,1 --Fel Cannon MKI slain (3)
    .mob Fel Cannon MKI
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 10391 >>Turn in Cannons of Rage
    .accept 10392 >>Accept Doorway to the Abyss
    .target Nazgrel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,52.28,36.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Antonivich|r
    .turnin 10835 >>Turn in Apothecary Antonivich
    .accept 10864 >>Accept A Burden of Souls
    .target Apothecary Antonivich
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,53.09,26.47
    >>Kill |cRXP_ENEMY_Warbringer Arix'Amal|r
    >>Kill |cRXP_ENEMY_Warbringer Arix'Amal|r and loot |cRXP_LOOT_Burning Legion Gate Key|r
    >>Click the |cRXP_PICK_Rune of Spite|r
    .complete 10392,1 --Warbringer Arix'Amal slain (1)
    .complete 10392,3 --Burning Legion Gate Key (1)
    .complete 10392,2 --Rune of Spite
    .mob Warbringer Arix'Amal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 10392 >>Turn in Doorway to the Abyss
    .accept 10136 >>Accept Cruel's Intentions
    .target Nazgrel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.13,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Bloodhawk|r
    .accept 10389 >>Accept The Agony and the Darkness
    .target Magister Bloodhawk
step
    .goto 100,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .accept 10236 >>Accept Outland Sucks!
    .target Foreman Razelcraz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along104
    >>As you go: Kill |cRXP_ENEMY_Shattered Hand Grunts|r, |cRXP_ENEMY_Shattered Hand Captains|r, |cRXP_ENEMY_Shattered Hand Berserkers|r and |cRXP_ENEMY_Shattered Hand Grenadiers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10864,1 --Shattered Hand Grunt (8)
    .mob Shattered Hand Grunt
    .mob Shattered Hand Captain
    .mob Shattered Hand Berserker
    .mob Shattered Hand Grenadier
step
    #label Along104
    #loop
    .goto 100,49.10,37.60,0
    .goto 100,49.10,37.60,40,0
    .goto 100,46.72,42.26,40,0
    >>Loot the |cRXP_PICK_Shredder Parts|r for |cRXP_LOOT_Shredder Spare Parts|r
    .complete 10236,1 --Shredder Spare Parts (6)
step
    .goto 100,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .turnin 10236 >>Turn in Outland Sucks!
    .accept 10238 >>Accept How to Serve Goblins
    .target Foreman Razelcraz
step
    #loop
    .goto 100,45.12,41.11,0
    .goto 100,45.12,41.11,40,0
    .goto 100,48.20,50.15,40,0
    .goto 100,49.59,54.50,40,0
    .goto 100,50.81,50.37,40,0
    >>Click the |cRXP_PICK_Manni's Cage|r
    >>Click the |cRXP_PICK_Moh's Cage|r
    >>Click the |cRXP_PICK_Jakk's Cage|r
    >>Kill |cRXP_ENEMY_Shattered Hand Grunts|r, |cRXP_ENEMY_Shattered Hand Captains|r, |cRXP_ENEMY_Shattered Hand Berserkers|r and |cRXP_ENEMY_Shattered Hand Grenadiers|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 10238,1 --Manni's Cage
    .complete 10238,2 --Moh's Cage
    .complete 10238,3 --Jakk's Cage
    .complete 10864,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Shattered Hand Grunt (8)
    .mob Shattered Hand Grunt << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Shattered Hand Captain << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Shattered Hand Berserker << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Shattered Hand Grenadier << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.79,53.33
    >>Use the Flaming Torch to burn the Eastern Alliance Cannon and the Western Alliance Cannon, and then return to Megzeg Nukklebust in Thrallmar.
    .complete 10087,2 --Western Cannon
    .target Western Cannon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,60.70,51.78
    >>Use the Flaming Torch to burn the Eastern Alliance Cannon and the Western Alliance Cannon, and then return to Megzeg Nukklebust in Thrallmar.
    .complete 10087,1 --Eastern Cannon
    .target Eastern Cannon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.18,38.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megzeg Nukklebust|r
    .turnin 10087 >>Turn in Burn It Up... For the Horde!
    .target Megzeg Nukklebust
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,52.28,36.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Antonivich|r
    .turnin 10864 >>Turn in A Burden of Souls
    .accept 10838 >>Accept The Demoniac Scryer
    .target Apothecary Antonivich
step
    .goto 100,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .turnin 10238 >>Turn in How to Serve Goblins
    .accept 10629 >>Accept Shizz Work
    .target Foreman Razelcraz
step
    #loop
    .goto 100,49.70,29.80,0
    .goto 100,49.70,29.80,40,0
    .goto 100,47.50,29.10,40,0
    >>Open the |cRXP_PICK_Felhound Poo|r. Loot it for |cRXP_LOOT_Shredder Keys|r
    .complete 10629,1 --Shredder Keys (1)
step
    .goto 100,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .turnin 10629 >>Turn in Shizz Work
    .accept 10630 >>Accept Beneath Thrallmar
    .target Foreman Razelcraz
step
    .goto 100,54.39,31.57
    >>Kill |cRXP_ENEMY_Urga'zz|r
    .complete 10630,1 --Urga'zz slain (1)
    .mob Urga'zz
step
    .goto 100,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .turnin 10630 >>Turn in Beneath Thrallmar
    .target Foreman Razelcraz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,44.07,51.04
    >>Kill |cRXP_ENEMY_Demoniac Scryer|r and loot |cRXP_LOOT_Demoniac Scryer Reading|r
    .complete 10838,1 --Demoniac Scryer Reading (1)
    .mob Demoniac Scryer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,40.05,37.80,0
    .goto 100,40.05,37.80,40,0
    .goto 100,41.09,33.99,40,0
    .goto 100,39.08,30.39,40,0
    >>Kill |cRXP_ENEMY_Arazzius the Cruel|r
    >>Kill |cRXP_ENEMY_Terrorfiends|r. Loot them for |cRXP_LOOT_Felblood Sample|r
    >>Kill |cRXP_ENEMY_Terrorfiends|r
    .complete 10136,1 --Arazzius the Cruel slain (1)
    .complete 9366,1 --Felblood Sample (6)
    .complete 10389,1 --Terrorfiend slain (10)
    .mob Arazzius the Cruel
    .mob Terrorfiend
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,33.61,43.52
    >>Find Krun Spinebreaker
    .complete 9400,2 --Find Krun Spinebreaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,33.62,43.53
    >>Nazgrel wants you to travel to the road north of Hellfire Citadel and look for an assassin named Krun Spinebreaker.
    .complete 9400,1 --Fel Orc Corpse
    .target Fel Orc Corpse
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,33.62,43.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel Orc Corpse|r
    .turnin 9400 >>Turn in The Assassin
    .accept 9401 >>Accept A Strange Weapon
    .target Fel Orc Corpse
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,52.28,36.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Antonivich|r
    .turnin 10838 >>Turn in The Demoniac Scryer
    .accept 10875 >>Accept Report to Nazgrel
    .target Apothecary Antonivich
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,55.13,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Bloodhawk|r
    .turnin 10389 >>Turn in The Agony and the Darkness
    .target Magister Bloodhawk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 10875 >>Turn in Report to Nazgrel
    .turnin 9401 >>Turn in A Strange Weapon
    .turnin 10136 >>Turn in Cruel's Intentions
    .accept 9405 >>Accept The Warchief's Mandate
    .accept 10876 >>Accept The Foot of the Citadel
    .target Nazgrel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.23,37.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Far Seer Regulkut|r
    .turnin 9405 >>Turn in The Warchief's Mandate
    .accept 9410 >>Accept A Spirit Guide
    .target Far Seer Regulkut
step << Orc Warrior/Orc Paladin/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Paladin/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Paladin/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Paladin/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Paladin/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Paladin/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Paladin/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 100,35.57,51.44
    >>Capture the Overlook, the Stadium and Broken Hill, then return to Battlecryer Blackeye in Thrallmar.
    .complete 13409,2 --The Stadium Capture Credit Marker
    .target The Stadium Capture Credit Marker
step << Orc DeathKnight/Undead DeathKnight/Tauren DeathKnight/Troll DeathKnight/BloodElf DeathKnight/Goblin DeathKnight/Pandaren DeathKnight
    .goto 100,40.44,56.70
    >>Capture the Overlook, the Stadium and Broken Hill, then return to Battlecryer Blackeye in Thrallmar.
    .complete 13411,3 --Broken Hill Capture Credit Marker
    .target Broken Hill Capture Credit Marker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,28.49,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Venn'ren|r
    .turnin 9391 >>Turn in Marking the Path
    .accept 10103 >>Accept Report to Zurai
    .target Ranger Captain Venn'ren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.99,59.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ryathen the Somber|r
    .turnin 9366 >>Turn in In Need of Felblood
    .accept 9370 >>Accept The Cleansing Must Be Stopped
    .target Ryathen the Somber
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along130
    >>As you go: Kill |cRXP_ENEMY_Female Kaliri Hatchling|r and loot |cRXP_LOOT_Caged Female Kaliri Hatchling|r. Kill |cRXP_ENEMY_Haal'eshi Windwalkers|r, |cRXP_ENEMY_Haal'eshi Talonguards|r and |cRXP_ENEMY_Avruus|r. Loot them for |cRXP_LOOT_Haal'eshi Scroll|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9397,1 --Caged Female Kaliri Hatchling (1)
    .complete 9396,1 --Haal'eshi Scroll (4)
    .mob Female Kaliri Hatchling
    .mob Haal'eshi Windwalker
    .mob Haal'eshi Talonguard
    .mob Avruu
step
    .goto 100,25.66,76.40
    >>Kill |cRXP_ENEMY_Avruu|r and loot |cRXP_LOOT_Avruu's Orb|r. Use it to start the quest
    .collect 23580,1,9418 --Avruu's Orb (1)
    .accept 9418 >>Accept Avruu's Orb
    .use 23580
    .mob Avruu
step
    #label Along130
    .goto 100,28.94,81.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeranas|r
    .turnin 9418 >>Turn in Avruu's Orb
    .target Aeranas
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,25.73,75.04,0
    .goto 100,25.73,75.04,40,0
    .goto 100,26.09,72.03,40,0
    >>Kill |cRXP_ENEMY_Female Kaliri Hatchling|r and loot |cRXP_LOOT_Caged Female Kaliri Hatchling|r
    >>Kill |cRXP_ENEMY_Haal'eshi Windwalkers|r, |cRXP_ENEMY_Haal'eshi Talonguards|r and |cRXP_ENEMY_Avruus|r. Loot them for |cRXP_LOOT_Haal'eshi Scroll|r
    .complete 9397,1 --Caged Female Kaliri Hatchling (1)
    .complete 9396,1 --Haal'eshi Scroll (4)
    .mob Female Kaliri Hatchling
    .mob Haal'eshi Windwalker
    .mob Haal'eshi Talonguard
    .mob Avruu
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,24.54,76.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wounded Blood Elf Pilgrim|r
    .accept 9375 >>Accept The Road to Falcon Watch
    .target Wounded Blood Elf Pilgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.09,61.92
    >>Escort Wounded Blood Elf Pilgrim to Falcon Watch
    .complete 9375,1 --Escort Wounded Blood Elf Pilgrim to Falcon Watch
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .turnin 9397 >>Turn in Birds of a Feather while you are here
    .isQuestComplete 9397
    .target Falconer Drenna Riverwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.05,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Calesthris Dawnstar|r
    .turnin 9396 >>Turn in Magic of the Arakkoa while you are here
    .isQuestComplete 9396
    .target Arcanist Calesthris Dawnstar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.16,61.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleris Dawngazer|r
    .turnin 9375 >>Turn in The Road to Falcon Watch
    .accept 9376 >>Accept A Pilgrim's Plight
    .target Taleris Dawngazer
step
    .goto 100,34.74,60.88,50,0
    .goto 100,32.20,58.92,50,0
    .goto 100,28.31,66.50
    .xp 61 >> Grind the |cRXP_ENEMY_Stonescythes|r to 61
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .accept 9381 >>Accept Trueflight Arrows
    .accept 10442 >>Accept Helping the Cenarion Post
    .target Falconer Drenna Riverwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,22.11,68.37
    >>Pick up |cRXP_PICK_Torn Pilgrim's Pack|r from the ground
    .complete 9376,1 --Torn Pilgrim's Pack (1)
step
    .goto 100,16.04,52.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amythiel Mistwalker|r
    .turnin 9724 >>Turn in Warning the Cenarion Circle
    .target Amythiel Mistwalker
    .isOnQuest 9724
step
    .goto 100,16.04,52.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amythiel Mistwalker|r
    .accept 9732 >>Accept Return to the Marsh
    .target Amythiel Mistwalker
    .isQuestTurnedIn 9724 --any of: Warning the Cenarion Circle
    .xp <60,1
step
    .goto 100,16.04,52.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amythiel Mistwalker|r
    .accept 9912 >>Accept The Cenarion Expedition
    .target Amythiel Mistwalker
step
    .goto 100,15.94,52.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahuram Stouthoof|r
    .accept 10159 >>Accept Keep Thornfang Hill Clear!
    .target Mahuram Stouthoof
step
    .goto 100,15.70,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
    .turnin 10442 >>Turn in Helping the Cenarion Post << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 9372 >>Accept Demonic Contamination
    .target Thiah Redmane
step
    #completewith Along142
    >>As you go: Kill |cRXP_ENEMY_Hulking Helboars|r and |cRXP_ENEMY_Dreadtusks|r. Loot them for |cRXP_LOOT_Helboar Blood Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9372,1 --Helboar Blood Sample (6)
    .mob Hulking Helboar
    .mob Dreadtusk
step
    #label Along142
    .goto 100,15.62,52.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
    .accept 10132 >>Accept Colossal Menace
    .target Tola'thion
step
    .goto 100,13.13,61.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morod the Windstirrer|r
    .accept 10403 >>Accept Naladu
    .target Morod the Windstirrer
step
    .goto 100,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .turnin 10403 >>Turn in Naladu
    .accept 10367 >>Accept A Traitor Among Us
    .target Naladu
step
    .goto 100,14.34,63.50
    >>Open the |cRXP_PICK_Metal Coffer|r. Loot it for |cRXP_LOOT_Sha'naar Key|r
    .complete 10367,1 --Sha'naar Key (1)
step
    .goto 100,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .turnin 10367 >>Turn in A Traitor Among Us
    .accept 10368 >>Accept The Dreghood Elders
    .target Naladu
step
    .goto 100,13.13,61.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morod the Windstirrer|r
    .complete 10368,1 --Morod the Windstirrer
    .target Morod the Windstirrer
step
    .goto 100,13.01,58.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aylaan the Waterwaker|r
    .complete 10368,3 --Aylaan the Waterwaker
    .target Aylaan the Waterwaker
step
    .goto 100,15.59,58.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akoru the Firecaller|r
    .complete 10368,2 --Akoru the Firecaller
    .target Akoru the Firecaller
step
    .goto 100,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .turnin 10368 >>Turn in The Dreghood Elders
    .accept 10369 >>Accept Arzeth's Demise
    .target Naladu
step
    .goto 100,14.32,62.18
    >>Kill |cRXP_ENEMY_Arzeth the Merciless|r
    .complete 10369,1 --Arzeth the Merciless slain (1)
    .mob Arzeth the Merciless
step
    .goto 100,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .turnin 10369 >>Turn in Arzeth's Demise
    .target Naladu
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,13.20,57.97,0
    .goto 100,13.20,57.97,40,0
    .goto 100,15.29,56.06,40,0
    >>Kill |cRXP_ENEMY_Illidari Taskmasters|r. Loot them for |cRXP_LOOT_Demonic Essence|r
    .complete 9387,1 --Demonic Essence (5)
    .mob Illidari Taskmaster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,21.00,51.43,0
    .goto 100,21.00,51.43,40,0
    .goto 100,23.53,45.20,40,0
    .goto 100,25.97,46.46,40,0
    >>Kill |cRXP_ENEMY_Bonestripper Vultures|r. Loot them for |cRXP_LOOT_Bonestripper Tail Feather|r
    .complete 9381,1 --Bonestripper Tail Feather (8)
    .mob Bonestripper Vulture
step
    #loop
    .goto 100,27.57,41.47,0
    .goto 100,27.57,41.47,40,0
    .goto 100,26.31,38.81,40,0
    .goto 100,30.88,43.32,40,0
    >>Kill |cRXP_ENEMY_Hulking Helboars|r and |cRXP_ENEMY_Dreadtusks|r. Loot them for |cRXP_LOOT_Helboar Blood Sample|r
    .complete 9372,1 --Helboar Blood Sample (6)
    .mob Hulking Helboar
    .mob Dreadtusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,31.99,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorkan Bloodfist|r
    .turnin 9410 >>Turn in A Spirit Guide
    .accept 9406 >>Accept The Mag'har
    .target Gorkan Bloodfist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,39.04,40.32
    >>Kill |cRXP_ENEMY_Draenei Anchorite|r
    .complete 9370,1 --Draenei Anchorite slain (1)
    .mob Draenei Anchorite
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,47.31,49.66
    >>Kill |cRXP_ENEMY_Hand of Kargath|r and loot |cRXP_LOOT_The Head of the Hand of Kargath|r
    .complete 10876,1 --The Head of the Hand of Kargath (1)
    .mob Hand of Kargath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,54.99,35.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 9406 >>Turn in The Mag'har
    .turnin 10876 >>Turn in The Foot of the Citadel
    .target Nazgrel
step << Orc Warrior/Orc Paladin/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Paladin/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Paladin/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Paladin/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Paladin/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Paladin/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Paladin/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 100,39.94,48.39
    >>Capture the Overlook, the Stadium and Broken Hill, then return to Battlecryer Blackeye in Thrallmar.
    .complete 13409,1 --The Overlook Capture Credit Marker
    .target The Overlook Capture Credit Marker
step << Orc DeathKnight/Undead DeathKnight/Tauren DeathKnight/Troll DeathKnight/BloodElf DeathKnight/Goblin DeathKnight/Pandaren DeathKnight
    .goto 100,39.94,48.39
    >>Capture the Overlook, the Stadium and Broken Hill, then return to Battlecryer Blackeye in Thrallmar.
    .complete 13411,1 --The Overlook Capture Credit Marker
    .target The Overlook Capture Credit Marker
step << Orc DeathKnight/Undead DeathKnight/Tauren DeathKnight/Troll DeathKnight/BloodElf DeathKnight/Goblin DeathKnight/Pandaren DeathKnight
    .goto 100,35.57,51.44
    >>Capture the Overlook, the Stadium and Broken Hill, then return to Battlecryer Blackeye in Thrallmar.
    .complete 13411,2 --The Stadium Capture Credit Marker
    .target The Stadium Capture Credit Marker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.71,60.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falconer Drenna Riverwind|r
    .turnin 9381 >>Turn in Trueflight Arrows
    .turnin 9397 >>Turn in Birds of a Feather
    .target Falconer Drenna Riverwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.05,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Calesthris Dawnstar|r
    .turnin 9396 >>Turn in Magic of the Arakkoa
    .target Arcanist Calesthris Dawnstar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.99,59.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ryathen the Somber|r
    .turnin 9370 >>Turn in The Cleansing Must Be Stopped
    .target Ryathen the Somber
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.79,59.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Azethen|r
    .turnin 9387 >>Turn in Source of the Corruption
    .target Apothecary Azethen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.16,61.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleris Dawngazer|r
    .turnin 9376 >>Turn in A Pilgrim's Plight
    .target Taleris Dawngazer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.38,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Carinda|r
    .turnin 9374 >>Turn in Arelion's Journal
    .target Magistrix Carinda
    .isQuestComplete 9374
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.38,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Carinda|r
    .accept 10286 >>Accept Arelion's Secret
    .target Magistrix Carinda
    .isQuestTurnedIn 9374 --any of: Arelion's Journal
    .xp <60,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,32.28,57.11,0
    .goto 100,32.28,57.11,40,0
    .goto 100,31.44,52.71,40,0
    .goto 100,29.42,56.84,40,0
    .goto 100,28.75,50.42,40,0
    .goto 100,26.40,58.80,40,0
    .goto 100,26.00,49.59,40,0
    .goto 100,21.57,48.94,40,0
    .goto 100,16.95,49.95,40,0
    .goto 100,12.60,49.94,40,0
    .goto 100,8.10,49.95,40,0
    .goto 100,6.05,50.78,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Aledis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10286 >>Turn in Arelion's Secret
    .unitscan Magister Aledis
    .isOnQuest 10286
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,32.28,57.11,0
    .goto 100,32.28,57.11,40,0
    .goto 100,31.44,52.71,40,0
    .goto 100,29.42,56.84,40,0
    .goto 100,28.75,50.42,40,0
    .goto 100,26.40,58.80,40,0
    .goto 100,26.00,49.59,40,0
    .goto 100,21.57,48.94,40,0
    .goto 100,16.95,49.95,40,0
    .goto 100,12.60,49.94,40,0
    .goto 100,8.10,49.95,40,0
    .goto 100,6.05,50.78,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Aledis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10287 >>Accept The Mistress Revealed
    .unitscan Magister Aledis
    .isQuestTurnedIn 10286 --any of: Arelion's Secret
    .xp <60,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.38,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Carinda|r
    .turnin 10287 >>Turn in The Mistress Revealed
    .target Magistrix Carinda
    .isOnQuest 10287
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.38,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Carinda|r
    .accept 9472 >>Accept Arelion's Mistress
    .target Magistrix Carinda
    .isQuestTurnedIn 10287 --any of: The Mistress Revealed
    .xp <60,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,27.15,62.11
    >>Interact with |cRXP_FRIENDLY_Viera Sunwhisper|r
    .complete 9472,1 --Viera Sunwhisper
    .target Viera Sunwhisper
    .isOnQuest 9472
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.38,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Carinda|r
    .turnin 9472 >>Turn in Arelion's Mistress
    .target Magistrix Carinda
    .isOnQuest 9472
step
    .goto 100,15.70,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
    .turnin 9372 >>Turn in Demonic Contamination
    .accept 10255 >>Accept Testing the Antidote
    .target Thiah Redmane
step
    #loop
    .goto 100,16.99,52.16,0
    .goto 100,16.99,52.16,40,0
    .goto 100,18.11,52.10,40,0
    .goto 100,18.66,56.61,40,0
    .goto 100,19.96,54.71,40,0
    .goto 100,21.74,55.02,40,0
    .goto 100,23.11,53.18,40,0
    .goto 100,24.61,51.82,40,0
    >>Interact with |cRXP_FRIENDLY_Hulking Helboar|r
    .complete 10255,1 --Hulking Helboar
    .target Hulking Helboar
step
    .goto 100,15.70,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
    .turnin 10255 >>Turn in Testing the Antidote
    .target Thiah Redmane
step
    #completewith Drop10134x1
    >>|cRXP_LOOT_Crimson Crystal Shard|r can drop from |cRXP_ENEMY_Raging Colossus|r. Use it to start the quest if you get one
    .collect 29476,1,10134 --Crimson Crystal Shard (1)
    .accept 10134 >>Accept Crimson Crystal Clue
    .use 29476
step
    #label Drop10134x1
    #loop
    .goto 100,13.26,43.36,0
    .goto 100,13.26,43.36,40,0
    .goto 100,13.42,38.56,40,0
    .goto 100,15.86,39.14,40,0
    >>Kill |cRXP_ENEMY_Raging Colossus|r
    .complete 10132,1 --Raging Colossus slain (8)
    .mob Raging Colossus
step
    .goto 100,15.62,52.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
    .turnin 10134 >>Turn in Crimson Crystal Clue
    .target Tola'thion
    .isOnQuest 10134
step
    .goto 100,15.62,52.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
    .turnin 10132 >>Turn in Colossal Menace
    .target Tola'thion
step
    .goto 100,15.62,52.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
    .accept 10349 >>Accept The Earthbinder
    .target Tola'thion
    .isQuestTurnedIn 10134 --any of: Crimson Crystal Clue
    .xp <61,1
step
    .goto 100,15.96,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Galandria Nightbreeze|r
    .turnin 10349 >>Turn in The Earthbinder
    .target Earthbinder Galandria Nightbreeze
    .isOnQuest 10349
step
    .goto 100,15.96,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Galandria Nightbreeze|r
    .accept 10351 >>Accept Natural Remedies
    .target Earthbinder Galandria Nightbreeze
    .isQuestTurnedIn 10349 --any of: The Earthbinder
    .xp <61,1
step
    .goto 100,13.64,39.12
    >>Kill |cRXP_ENEMY_Goliathon|r
    .complete 10351,1 --Goliathon slain (1)
    .mob Goliathon
    .isOnQuest 10351
step
    .goto 100,15.96,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Galandria Nightbreeze|r
    .turnin 10351 >>Turn in Natural Remedies
    .target Earthbinder Galandria Nightbreeze
    .isOnQuest 10351
step
    #loop
    .goto 100,12.67,47.23,0
    .goto 100,12.67,47.23,40,0
    .goto 100,9.01,49.61,40,0
    .goto 100,6.21,50.08,40,0
    >>Kill |cRXP_ENEMY_Thornfang Venomspitters|r
    >>Kill |cRXP_ENEMY_Thornfang Ravagers|r
    .complete 10159,2 --Thornfang Venomspitter slain (8)
    .complete 10159,1 --Thornfang Ravager slain (8)
    .mob Thornfang Venomspitter
    .mob Thornfang Ravager
step
    .goto 100,15.94,52.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahuram Stouthoof|r
    .turnin 10159 >>Turn in Keep Thornfang Hill Clear!
    .target Mahuram Stouthoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,40.04,37.17
    >>Pick up |cRXP_PICK_Arelion's Knapsack|r from the ground
    .collect 31955,1,9374,1 --Arelion's Knapsack (1)
step
    .goto 100,55.95,39.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Battlecryer Blackeye|r
    .turnin 13409 >>Turn in Hellfire Fortifications << Orc Warrior/Orc Paladin/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Paladin/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Paladin/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Paladin/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Paladin/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Paladin/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Paladin/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .turnin 13411 >>Turn in Hellfire Fortifications << Orc DeathKnight/Undead DeathKnight/Tauren DeathKnight/Troll DeathKnight/BloodElf DeathKnight/Goblin DeathKnight/Pandaren DeathKnight
    .target Battlecryer Blackeye
step
    +|cRXP_WARN_That is all of Hellfire Peninsula for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Zangarmarsh|r: Report to Zurai << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Zangarmarsh|r: The Cenarion Expedition, Return to the Marsh
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Arelion's Journal << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 62|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 1.0 levels of quests, starting around Earthbinder Tavgren), |cRXP_FRIENDLY_Zangarmarsh|r (about 0.5 levels of quests, starting around Ysiel Windsinger; 2 quests from here hand in there). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Hellfire Peninsula is planned from level 67.|r Load its guide for level 67 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 60 - 68 Hellfire Peninsula
#subweight -60
#name 67-68 Hellfire Peninsula
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\62-65 Terokkar Forest: around Earthbinder Tavgren;Zone Routes (Horde)\65-67 Nagrand: around Hemet Nesingwary

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,65.89,43.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander To'arch|r
    .accept 10162 >>Accept Mission: The Abyssal Shelf
    .target Forward Commander To'arch
    .isQuestTurnedIn 10129 --any of: Mission: Gateways Murketh and Shaadraz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,73.93,15.15,0
    .goto 100,73.93,15.15,40,0
    .goto 100,73.39,11.50,40,0
    >>Kill |cRXP_ENEMY_Gan'arg Peons|r
    .complete 10162,1 --Gan'arg Peon slain (20)
    .mob Gan'arg Peon
    .isOnQuest 10162
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,74.02,10.50,0
    .goto 100,74.02,10.50,40,0
    .goto 100,71.70,10.56,40,0
    .goto 100,71.18,22.67,40,0
    .goto 100,73.27,24.20,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mo'arg Overseer|r
    .complete 10162,2 --Mo'arg Overseer (5)
    .target Mo'arg Overseer
    .isOnQuest 10162
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 100,74.24,15.11,0
    .goto 100,74.24,15.11,40,0
    .goto 100,71.49,17.41,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel Cannon|r
    .complete 10162,3 --Fel Cannon (5)
    .target Fel Cannon
    .isOnQuest 10162
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,65.89,43.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander To'arch|r
    .turnin 10162 >>Turn in Mission: The Abyssal Shelf
    .target Forward Commander To'arch
    .isOnQuest 10162
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,40.04,37.17
    >>Pick up |cRXP_PICK_Arelion's Knapsack|r from the ground
    .collect 31955,1,9374,1 --Arelion's Knapsack (1)
    .isOnQuest 9374
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 100,26.38,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Carinda|r
    .turnin 9374 >>Turn in Arelion's Journal
    .target Magistrix Carinda
    .isQuestComplete 9374
step
    +|cRXP_WARN_End of the Hellfire Peninsula route.|r
step
    +|cRXP_WARN_Suggested next zones at level 67|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.5 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Terokkar Forest|r (about 0.6 levels of quests, starting around Earthbinder Tavgren), |cRXP_FRIENDLY_Nagrand|r (about 0.6 levels of quests, starting around Hemet Nesingwary). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
