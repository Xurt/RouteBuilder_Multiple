-- 5-11 Eversong Woods: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 5, 28).
-- Split into 2 guides, listed under "5 - 29 Eversong Woods" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Eversong Woods.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 5 - 29 Eversong Woods
#subweight -5
#name 5-12 Eversong Woods
--RouteBuilder:next
#next Zone Routes (Horde)\10-14 Azshara: around Labor Captain Grabbit

step << Hunter Cata
    .goto 94,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sallina|r
    .train 2973 >>Train |T132223:0|t[Raptor Strike]
    .target Ranger Sallina
    .xp <6,1
step << Mage Cata
    .goto 94,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Sunstriker|r
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Julia Sunstriker
    .xp <5,1
step << Paladin Cata
    .goto 94,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jesthenis Sunstriker|r
    .train 465 >>Train |T135893:0|t[Devotion Aura]
    .target Jesthenis Sunstriker
    .xp <5,1
step << Priest Cata
    .goto 94,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Arena|r
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Matron Arena
    .xp <5,1
step << Rogue Cata
    .goto 94,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pathstalker Avoker|r
    .train 1784 >>Train |T132320:0|t[Stealth]
    .target Pathstalker Avoker
    .xp <5,1
step << Warlock Cata
    .goto 94,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .train 1454 >>Train |T136126:0|t[Life Tap]
    .target Summoner Teli'Larien
    .xp <5,1
step << Warrior Cata
    .goto 94,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delios Silverblade|r
    .train 34428 >>Train |T132342:0|t[Victory Rush]
    .target Delios Silverblade
    .xp <5,1
step << BloodElf
    .goto 94,40.42,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outrunner Alarion|r
    .turnin 8347 >>Turn in Aiding the Outrunners
    .target Outrunner Alarion
    .isOnQuest 8347
step << Rogue
    .goto 94,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pathstalker Avoker|r
    .train 2098 >>Train |T132292:0|t[Eviscerate] << Cata
    .target Pathstalker Avoker
step << Warlock cata
    .goto 94,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .train 348 >>Train |T135817:0|t[Immolate] << Cata
    .target Summoner Teli'Larien
step << BloodElf Warrior
    .goto 94,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delios Silverblade|r
    .turnin 8329 >>Turn in Warrior Training
    .target Delios Silverblade
    .isOnQuest 8329
step << Warrior
    .goto 94,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delios Silverblade|r
    .train 100 >>Train |T132337:0|t[Charge] << Cata
    .target Delios Silverblade
step << BloodElf Warrior
    .goto 94,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delios Silverblade|r
    .accept 27091 >>Accept Charge!
    .target Delios Silverblade
    .isQuestTurnedIn 8329 --any of: Warrior Training
    .xp <2,1
step << BloodElf Warrior
    .goto 94,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delios Silverblade|r
    .turnin 27091 >>Turn in Charge!
    .target Delios Silverblade
    .isQuestComplete 27091
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r
    .accept 8475 >>Accept The Dead Scar
    .target Ranger Jaela
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,49.91,53.47,0
    .goto 94,49.91,53.47,40,0
    .goto 94,50.61,56.44,40,0
    .goto 94,50.72,61.28,40,0
    >>Kill |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Plaguebone Pillager slain (8)
    .mob Plaguebone Pillager
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Ralen|r
    .accept 9035 >>Accept Roadside Ambush
    .target Apprentice Ralen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Meledor|r
    .turnin 9035 >>Turn in Roadside Ambush
    .accept 9062 >>Accept Soaked Pages
    .target Apprentice Meledor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.34,61.99
    >>Open the |cRXP_PICK_Soaked Tome|r. Loot it for |cRXP_LOOT_Antheol's Elemental Grimoire|r
    .complete 9062,1 --Antheol's Elemental Grimoire (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Meledor|r
    .turnin 9062 >>Turn in Soaked Pages
    .accept 9064 >>Accept Taking the Fall
    .target Apprentice Meledor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,40.42,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outrunner Alarion|r
    .accept 9704 >>Accept Slain by the Wretched
    .target Outrunner Alarion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slain Outrunner|r
    .turnin 9704 >>Turn in Slain by the Wretched
    .accept 9705 >>Accept Package Recovery
    .target Slain Outrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,40.42,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outrunner Alarion|r
    .turnin 9705 >>Turn in Package Recovery
    .accept 8350 >>Accept Completing the Delivery
    .target Outrunner Alarion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r
    .turnin 8475 >>Turn in The Dead Scar
    .target Ranger Jaela
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r
    .accept 8472 >>Accept Major Malfunction
    .target Magister Jaronis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.16,47.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Delaniel|r
    .turnin 8350 >>Turn in Completing the Delivery
    .target Innkeeper Delaniel
step
    .goto 94,48.25,49.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chapman|r
    .target Chapman
    .home >>Set your Hearthstone to Chapman's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.18,46.31
    >>Click the |cRXP_PICK_Wanted: Thaelis the Hungerer|r
    .accept 8468 >>Accept Wanted: Thaelis the Hungerer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .accept 8463 >>Accept Unstable Mana Crystals
    .target Aeldon Sunbrand
step << Rogue
    .goto 94,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 9c). You'll come back later if you don't have enough yet
    .target Geron
step << Warrior/Paladin
    .goto 94,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Geron
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,45.34,40.74,0
    .goto 94,45.34,40.74,40,0
    .goto 94,45.02,37.68,40,0
    .goto 94,42.05,38.97,40,0
    >>Kill |cRXP_ENEMY_Thaelis the Hungerer|r and loot |cRXP_LOOT_Thaelis' Head|r
    >>Loot the |cRXP_PICK_Unstable Mana Crystal Crates|r for |cRXP_LOOT_Unstable Mana Crystal|r
    >>Kill |cRXP_ENEMY_Arcane Patrollers|r. Loot them for |cRXP_LOOT_Arcane Core|r
    .complete 8468,1 --Thaelis' Head (1)
    .complete 8463,1 --Unstable Mana Crystal (6)
    .complete 8472,1 --Arcane Core (6)
    .mob Thaelis the Hungerer
    .mob Arcane Patroller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r
    .turnin 8472 >>Turn in Major Malfunction
    .accept 8895 >>Accept Delivery to the North Sanctum
    .target Magister Jaronis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,47.77,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kan'ren|r
    .turnin 8468 >>Turn in Wanted: Thaelis the Hungerer
    .target Sergeant Kan'ren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .turnin 8463 >>Turn in Unstable Mana Crystals
    .accept 9352 >>Accept Darnassian Intrusions
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto 94,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noellene|r
    .train 635 >>Train your class spells
    .target Noellene
    .xp <7,1
    .xp >9,1
step << Paladin Cata
    .goto 94,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noellene|r
    .train 85673 >>Train your class spells
    .target Noellene
    .xp >7,1
    .xp <9,1
step << Warrior Cata
    .goto 94,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothan|r
    .train 772 >>Train your class spells
    .target Lothan Silverblade
    .xp <7,1
    .xp >9,1
step << Warrior Cata
    .goto 94,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothan|r
    .train 6343 >>Train your class spells
    .target Lothan Silverblade
    .xp >7,1
    .xp <9,1
step << Rogue Cata
    .goto 94,48.58,46.29,8,0
    .goto 94,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannaria|r upstairs
    .train 5277 >>Train your class spells
    .target Tannaria
    .xp <9,1
step << Hunter Cata
    .goto 94,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannovia|r
    .train 2973 >>Train your class spells
    .target Hannovia
    .xp <6,1
    .xp >8,1
step << Hunter Cata
    .goto 94,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Train your class spells
    .target Hannovia
    .xp <8,1
step << Priest Cata
    .goto 94,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r
    .train 588 >>Train your class spells
    .target Ponaris
    .xp <7,1
    .xp >9,1
step << Priest Cata
    .goto 94,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Train your class spells
    .target Ponaris
    .xp >7,1
    .xp <9,1
step << Mage Cata
    .goto 94,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r
    .train 116 >>Train your class spells
    .target Garridel
    .xp <7,1
    .xp >8,1
step << Mage Cata
    .goto 94,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r
    .train 122 >>Train your class spells
    .target Garridel
    .xp >7,1
    .xp <8,1
step << Warlock Cata
    .goto 94,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celoenus|r
    .train 689 >>Train your class spells
    .target Celoenus
    .xp <6,1
    .xp >8,1
step << Warlock Cata
    .goto 94,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celoenus|r
    .train 697 >>Train your class spells
    .target Celoenus
    .xp >6,1
    .xp <8,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .accept 8483 >>Accept The Dwarven Spy
    .target Aeldon Sunbrand
    .isQuestTurnedIn 8482 --any of: Incriminating Documents
    .xp <4,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9064 >>Turn in Taking the Fall
    .accept 9066 >>Accept Swift Discipline
    .target Instructor Antheol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Caidanis|r
    .turnin 8895 >>Turn in Delivery to the North Sanctum
    .accept 9119 >>Accept Malfunction at the West Sanctum
    .target Ley-Keeper Caidanis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.57,53.30
    >>Kill |cRXP_ENEMY_Prospector Anvilward|r and loot |cRXP_LOOT_Prospector Anvilward's Head|r
    .complete 8483,1 --Prospector Anvilward's Head (1)
    .mob Prospector Anvilward
    .isOnQuest 8483
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,45.19,56.43
    >>Interact with |cRXP_FRIENDLY_Apprentice Ralen|r
    .complete 9066,2 --Apprentice Ralen
    .target Apprentice Ralen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.88,61.03
    >>Interact with |cRXP_FRIENDLY_Apprentice Meledor|r
    .complete 9066,1 --Apprentice Meledor
    .target Apprentice Meledor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .turnin 9119 >>Turn in Malfunction at the West Sanctum
    .accept 8486 >>Accept Arcane Instability
    .target Ley-Keeper Velania
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop8482x1
    >>|cRXP_LOOT_Incriminating Documents|r can drop from |cRXP_ENEMY_Darnassian Scout|r. Use it to start the quest if you get one
    .collect 20765,1,8482 --Incriminating Documents (1)
    .accept 8482 >>Accept Incriminating Documents
    .use 20765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop8482x1
    #loop
    .goto 94,35.39,59.14,0
    .goto 94,35.39,59.14,40,0
    .goto 94,34.27,59.98,40,0
    >>Kill |cRXP_ENEMY_Darnassian Scouts|r
    >>Kill |cRXP_ENEMY_Manawraiths|r
    >>Kill |cRXP_ENEMY_Mana Stalkers|r
    .complete 9352,1 --Darnassian Scout slain (8)
    .complete 8486,1 --Manawraith slain (5)
    .complete 8486,2 --Mana Stalker slain (5)
    .mob Darnassian Scout
    .mob Manawraith
    .mob Mana Stalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .turnin 8486 >>Turn in Arcane Instability
    .turnin 9352 >>Turn in Darnassian Intrusions
    .target Ley-Keeper Velania
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,29.89,58.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hathvelion Sungaze|r
    .accept 8884 >>Accept Fish Heads, Fish Heads...
    .target Hathvelion Sungaze
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop8887x1
    >>|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r can drop from |cRXP_ENEMY_Grimscale Murloc|r, |cRXP_ENEMY_Grimscale Oracle|r, |cRXP_ENEMY_Grimscale Forager|r. Use it to start the quest if you get one
    .collect 21776,1,8887 --Captain Kelisendra's Lost Rutters (1)
    .accept 8887 >>Accept Captain Kelisendra's Lost Rutters
    .use 21776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop8887x1
    #loop
    .goto 94,27.44,60.07,0
    .goto 94,27.44,60.07,40,0
    .goto 94,26.35,57.60,40,0
    >>Kill |cRXP_ENEMY_Grimscale Murlocs|r, |cRXP_ENEMY_Grimscale Oracles|r, |cRXP_ENEMY_Grimscale Foragers|r and |cRXP_ENEMY_Mmmrrrgggllls|r. Loot them for |cRXP_LOOT_Grimscale Murloc Head|r
    .complete 8884,1 --Grimscale Murloc Head (8)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
    .mob Grimscale Forager
    .mob Mmmrrrggglll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,29.89,58.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hathvelion Sungaze|r
    .turnin 8884 >>Turn in Fish Heads, Fish Heads...
    .accept 8885 >>Accept The Ring of Mmmrrrggglll
    .target Hathvelion Sungaze
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Chapman's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .turnin 8483 >>Turn in The Dwarven Spy
    .target Aeldon Sunbrand
    .isOnQuest 8483
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .accept 9256 >>Accept Fairbreeze Village
    .target Aeldon Sunbrand
    .isQuestTurnedIn 8483 --any of: The Dwarven Spy
    .xp <6,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velan Brightoak|r
    .accept 8491 >>Accept Pelt Collection
    .target Velan Brightoak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .turnin 9256 >>Turn in Fairbreeze Village
    .target Ranger Degolien
    .isOnQuest 9256
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .accept 8892 >>Accept Situation at Sunsail Anchorage
    .target Ranger Degolien
step << BloodElf
    .goto 94,43.70,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathiel|r
    .accept 9130 >>Accept Goods from Silvermoon City
    .target Sathiel
step << BloodElf
    .goto 94,43.94,69.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Brightdawn|r
    .turnin 9130 >>Turn in Goods from Silvermoon City
    .accept 9133 >>Accept Fly to Silvermoon City
    .target Skymaster Brightdawn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.36,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kelisendra|r
    .accept 8886 >>Accept Grimscale Pirates!
    .target Captain Kelisendra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.36,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velendris Whitemorn|r
    .accept 8480 >>Accept Lost Armaments
    .target Velendris Whitemorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along44
    >>As you go: Kill |cRXP_ENEMY_Wretched Thugs|r. Kill |cRXP_ENEMY_Wretched Hooligans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8892,1 --Wretched Thug slain (5)
    .complete 8892,2 --Wretched Hooligan slain (5)
    .mob Wretched Thug
    .mob Wretched Hooligan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along44
    #loop
    .goto 94,34.05,69.14,0
    .goto 94,34.05,69.14,40,0
    .goto 94,32.21,70.51,40,0
    >>Loot the |cRXP_PICK_Weapon Containers|r for |cRXP_LOOT_Sin'dorei Armaments|r
    .complete 8480,1 --Sin'dorei Armaments (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.36,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velendris Whitemorn|r
    .turnin 8480 >>Turn in Lost Armaments
    .accept 9076 >>Accept Wretched Ringleader
    .target Velendris Whitemorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,34.39,69.11,0
    .goto 94,34.39,69.11,40,0
    .goto 94,32.14,69.62,40,0
    .goto 94,29.78,69.60,40,0
    >>Kill |cRXP_ENEMY_Aldaron the Reckless|r and loot |cRXP_LOOT_Aldaron's Head|r
    >>Kill |cRXP_ENEMY_Wretched Thugs|r
    >>Kill |cRXP_ENEMY_Wretched Hooligans|r
    .complete 9076,1 --Aldaron's Head (1)
    .complete 8892,1 --Wretched Thug slain (5)
    .complete 8892,2 --Wretched Hooligan slain (5)
    .mob Aldaron the Reckless
    .mob Wretched Thug
    .mob Wretched Hooligan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop8887x2
    >>|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r can drop from |cRXP_ENEMY_Grimscale Murloc|r, |cRXP_ENEMY_Grimscale Oracle|r, |cRXP_ENEMY_Grimscale Forager|r. Use it to start the quest if you get one
    .collect 21776,1,8887 --Captain Kelisendra's Lost Rutters (1)
    .accept 8887 >>Accept Captain Kelisendra's Lost Rutters
    .use 21776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop8887x2
    #loop
    .goto 94,25.12,68.91,0
    .goto 94,25.12,68.91,40,0
    .goto 94,25.37,65.99,40,0
    .goto 94,24.29,72.59,40,0
    >>Kill |cRXP_ENEMY_Mmmrrrggglll|r and loot |cRXP_LOOT_Ring of Mmmrrrggglll|r
    >>Kill |cRXP_ENEMY_Grimscale Murlocs|r, |cRXP_ENEMY_Grimscale Oracles|r and |cRXP_ENEMY_Mmmrrrgggllls|r. Loot them for |cRXP_LOOT_Captain Kelisendra's Cargo|r. It can also be picked up from |cRXP_PICK_Captain Kelisendra's Cargo|r on the ground
    .complete 8885,1 --Ring of Mmmrrrggglll (1)
    .complete 8886,1 --Captain Kelisendra's Cargo (6)
    .mob Mmmrrrggglll
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.36,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kelisendra|r
    .turnin 8887 >>Turn in Captain Kelisendra's Lost Rutters
    .target Captain Kelisendra
    .isOnQuest 8887
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.36,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kelisendra|r
    .turnin 8886 >>Turn in Grimscale Pirates! while you are here
    .isQuestComplete 8886
    .target Captain Kelisendra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.36,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velendris Whitemorn|r
    .turnin 9076 >>Turn in Wretched Ringleader while you are here
    .isQuestComplete 9076
    .target Velendris Whitemorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,29.89,58.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hathvelion Sungaze|r
    .turnin 8885 >>Turn in The Ring of Mmmrrrggglll
    .target Hathvelion Sungaze
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.36,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kelisendra|r
    .turnin 8886 >>Turn in Grimscale Pirates!
    .target Captain Kelisendra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,36.36,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velendris Whitemorn|r
    .turnin 9076 >>Turn in Wretched Ringleader
    .target Velendris Whitemorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,38.59,65.46,0
    .goto 94,38.59,65.46,40,0
    .goto 94,40.50,64.82,40,0
    .goto 94,36.70,71.03,40,0
    .goto 94,34.81,73.84,40,0
    .goto 94,29.04,72.02,40,0
    >>Kill |cRXP_ENEMY_Springpaw Stalkers|r and |cRXP_ENEMY_Elder Springpaws|r. Loot them for |cRXP_LOOT_Springpaw Pelt|r
    .complete 8491,1 --Springpaw Pelt (6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velan Brightoak|r
    .turnin 8491 >>Turn in Pelt Collection
    .target Velan Brightoak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .turnin 8892 >>Turn in Situation at Sunsail Anchorage
    .accept 9359 >>Accept Farstrider Retreat
    .target Ranger Degolien
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,43.57,71.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardeyn Riverwind|r
    .accept 9258 >>Accept The Scorched Grove
    .target Ardeyn Riverwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,43.67,71.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marniel Amberlight|r
    .accept 9358 >>Accept Ranger Sareyn
    .target Marniel Amberlight
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .accept 9395 >>Accept Saltheril's Haven
    .accept 9254 >>Accept The Wayward Apprentice
    .target Magistrix Landra Dawnstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r
    .turnin 9358 >>Turn in Ranger Sareyn
    .accept 9252 >>Accept Defending Fairbreeze Village
    .target Ranger Sareyn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along64
    >>As you go: Kill |cRXP_ENEMY_Rotlimb Marauders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9252,1 --Rotlimb Marauder slain (4)
    .mob Rotlimb Marauder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,50.93,80.06,0
    .goto 94,50.93,80.06,40,0
    .goto 94,50.67,83.19,40,0
    >>Kill |cRXP_ENEMY_Darkwraiths|r
    .complete 9252,2 --Darkwraith slain (4)
    .mob Darkwraith
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,54.28,70.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .turnin 9254 >>Turn in The Wayward Apprentice
    .accept 8487 >>Accept Corrupted Soil
    .target Apprentice Mirveda
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,52.49,70.14,0
    .goto 94,52.49,70.14,40,0
    .goto 94,52.08,66.11,40,0
    >>Pick up |cRXP_PICK_Tainted Soil Sample|r from the ground
    .complete 8487,1 --Tainted Soil Sample (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,54.28,70.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .turnin 8487 >>Turn in Corrupted Soil
    .accept 8488 >>Accept Unexpected Results
    .target Apprentice Mirveda
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,54.06,70.63
    >>Kill |cRXP_ENEMY_Gharsul the Remorseless|r
    .complete 8488,1 --Gharsul the Remorseless slain (1)
    .mob Gharsul the Remorseless
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along64
    .goto 94,54.28,70.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .turnin 8488 >>Turn in Unexpected Results
    .accept 9255 >>Accept Research Notes
    .target Apprentice Mirveda
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,52.24,70.40,0
    .goto 94,52.24,70.40,40,0
    .goto 94,51.94,73.48,40,0
    >>Kill |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Rotlimb Marauder slain (4)
    .mob Rotlimb Marauder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .turnin 9255 >>Turn in Research Notes
    .target Magistrix Landra Dawnstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r
    .turnin 9252 >>Turn in Defending Fairbreeze Village
    .accept 9253 >>Accept Runewarden Deryan
    .target Ranger Sareyn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Chapman's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .turnin 8482 >>Turn in Incriminating Documents
    .target Aeldon Sunbrand
    .isOnQuest 8482
step << Paladin Cata
    .goto 94,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noellene|r
    .train 20473 >>Train your class spells
    .target Noellene
step << Warrior Cata
    .goto 94,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lothan|r
    .train 71 >>Train your class spells
    .target Lothan Silverblade
step << Rogue Cata
    .goto 94,48.58,46.29,8,0
    .goto 94,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannaria|r upstairs
    .train 5277 >>Train your class spells
    .target Tannaria
step << Hunter Cata
    .goto 94,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannovia|r
    .train 34026 >>Train your class spells
    .target Hannovia
step << Priest Cata
    .goto 94,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Train your class spells
    .target Ponaris
step << Mage Cata
    .goto 94,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r
    .train 2139 >>Train your class spells
    .target Garridel
step << Warlock Cata
    .goto 94,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celoenus|r
    .train 1120 >>Train your class spells
    .target Celoenus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9066 >>Turn in Swift Discipline
    .target Instructor Antheol
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 94,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .accept 9402 >>Accept Fetch!
    .target Instructor Antheol
    .xp <10,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .accept 8888 >>Accept The Magister's Apprentice
    .target Magister Duskwither
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathel Sunforge|r
    .accept 8477 >>Accept The Spearcrafter's Hammer
    .target Arathel Sunforge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9359 >>Turn in Farstrider Retreat
    .accept 8476 >>Accept Amani Encroachment
    .target Lieutenant Dawnrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along74
    >>As you go: Kill |cRXP_ENEMY_Amani Berserkers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8476,1 --Amani Berserker slain (5)
    .mob Amani Berserker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,70.10,72.28,0
    .goto 94,70.10,72.28,40,0
    .goto 94,70.88,78.00,40,0
    >>Kill |cRXP_ENEMY_Amani Axe Throwers|r
    >>Kill |cRXP_ENEMY_Spearcrafter Otembe|r and loot |cRXP_LOOT_Otembe's Hammer|r
    .complete 8476,2 --Amani Axe Thrower slain (5)
    .complete 8477,1 --Otembe's Hammer (1)
    .mob Amani Axe Thrower
    .mob Spearcrafter Otembe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along74
    .goto 94,70.53,72.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven'jashi|r
    .accept 8479 >>Accept Zul'Marosh
    .target Ven'jashi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,67.81,56.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Loralthalis|r
    .accept 8890 >>Accept Word from the Spire
    .target Apprentice Loralthalis
    .isQuestTurnedIn 8889 --any of: Deactivating the Spire
    .xp <8,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,67.81,56.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Loralthalis|r
    .turnin 8888 >>Turn in The Magister's Apprentice
    .accept 9394 >>Accept Where's Wyllithen?
    .target Apprentice Loralthalis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,69.24,52.11
    >>Click the |cRXP_PICK_Magister Duskwither's Journal|r
    .accept 8891 >>Accept Abandoned Investigations
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wyllithen|r
    .turnin 9394 >>Turn in Where's Wyllithen?
    .accept 8894 >>Accept Cleaning up the Grounds
    .target Groundskeeper Wyllithen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,69.45,48.38,0
    .goto 94,69.45,48.38,40,0
    .goto 94,68.65,51.91,40,0
    .goto 94,68.92,44.58,40,0
    >>Kill |cRXP_ENEMY_Mana Serpents|r
    >>Kill |cRXP_ENEMY_Ether Fiends|r
    .complete 8894,1 --Mana Serpent slain (6)
    .complete 8894,2 --Ether Fiend slain (6)
    .mob Mana Serpent
    .mob Ether Fiend
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wyllithen|r
    .turnin 8894 >>Turn in Cleaning up the Grounds
    .target Groundskeeper Wyllithen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .turnin 8890 >>Turn in Word from the Spire
    .target Magister Duskwither
    .isOnQuest 8890
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .turnin 8891 >>Turn in Abandoned Investigations
    .target Magister Duskwither
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathel Sunforge|r
    .turnin 8477 >>Turn in The Spearcrafter's Hammer
    .target Arathel Sunforge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,63.59,78.06,0
    .goto 94,63.59,78.06,40,0
    .goto 94,62.29,79.43,40,0
    >>Kill |cRXP_ENEMY_Amani Berserkers|r
    >>Kill |cRXP_ENEMY_Chieftain Zul'Marosh|r and loot |cRXP_LOOT_Chieftain Zul'Marosh's Head|r
    .complete 8476,1 --Amani Berserker slain (5)
    .complete 8479,1 --Chieftain Zul'Marosh's Head (1)
    .mob Amani Berserker
    .mob Chieftain Zul'Marosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,62.51,79.68
    >>Kill |cRXP_ENEMY_Chieftain Zul'Marosh|r and loot |cRXP_LOOT_Amani Invasion Plans|r. Use it to start the quest
    .collect 23249,1,9360 --Amani Invasion Plans (1)
    .accept 9360 >>Accept Amani Invasion
    .use 23249
    .mob Chieftain Zul'Marosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runewarden Deryan|r
    .turnin 9253 >>Turn in Runewarden Deryan
    .accept 8490 >>Accept Powering our Defenses
    .target Runewarden Deryan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 10 >>Grind to level 10 (Missing in the Ghostlands needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .accept 9144 >>Accept Missing in the Ghostlands
    .target Magistrix Landra Dawnstrider
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .xp 10 >>Grind to level 10 (Fetch! needs it)
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 94,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .accept 9402 >>Accept Fetch!
    .target Instructor Antheol
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 94,54.87,56.37
    >>Pick up |cRXP_PICK_Azure Phial|r from the ground
    .complete 9402,1 --Azure Phial (1)
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 94,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9402 >>Turn in Fetch!
    .accept 9403 >>Accept The Purest Water
    .target Instructor Antheol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9360 >>Turn in Amani Invasion
    .turnin 8476 >>Turn in Amani Encroachment
    .accept 9363 >>Accept Warning Fairbreeze Village
    .target Lieutenant Dawnrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,70.53,72.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven'jashi|r
    .turnin 8479 >>Turn in Zul'Marosh
    .target Ven'jashi
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 94,64.31,72.84
    >>Open the |cRXP_PICK_Elrendar Falls Spell Focus|r. Loot it for |cRXP_LOOT_Filled Azure Phial|r
    .complete 9403,1 --Filled Azure Phial (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,55.57,84.17
    >>Place the Infused Crystal at the Eastern Runestone and protect it from the Scourge for 1 minute. Return the Infused Crystal to Runewarden Deryan in Eversong Woods for a reward.
    .complete 8490,1 --Infused Crystal
    .target Infused Crystal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.98,88.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Dawnstrider|r
    .turnin 9144 >>Turn in Missing in the Ghostlands
    .target Courier Dawnstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,49.02,89.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Thedra|r
    .accept 9147 >>Accept The Fallen Courier
    .target Apothecary Thedra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,49.02,89.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Thedra|r
    .turnin 9147 >>Turn in The Fallen Courier
    .target Apothecary Thedra
    .isQuestComplete 9147
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,48.98,88.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Dawnstrider|r
    .accept 9148 >>Accept Delivery to Tranquillien
    .target Courier Dawnstrider
    .isQuestTurnedIn 9147 --any of: The Fallen Courier
    .xp <9,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runewarden Deryan|r
    .turnin 8490 >>Turn in Powering our Defenses
    .target Runewarden Deryan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .turnin 9363 >>Turn in Warning Fairbreeze Village
    .target Ranger Degolien
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Saltheril|r
    .turnin 9395 >>Turn in Saltheril's Haven
    .target Lord Saltheril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larianna Riverwind|r
    .turnin 9258 >>Turn in The Scorched Grove
    .accept 8473 >>Accept A Somber Task
    .target Larianna Riverwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 94,35.12,82.90,0
    .goto 94,35.12,82.90,40,0
    .goto 94,32.39,85.09,40,0
    >>Kill |cRXP_ENEMY_Withered Green Keepers|r
    .complete 8473,1 --Withered Green Keeper slain (10)
    .mob Withered Green Keeper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,34.93,84.46
    >>Kill |cRXP_ENEMY_Old Whitebark|r and loot |cRXP_LOOT_Old Whitebark's Pendant|r. Use it to start the quest
    .collect 23228,1,8474 --Old Whitebark's Pendant (1)
    .accept 8474 >>Accept Old Whitebark's Pendant
    .use 23228
    .mob Old Whitebark
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larianna Riverwind|r
    .turnin 8473 >>Turn in A Somber Task
    .turnin 8474 >>Turn in Old Whitebark's Pendant
    .accept 10166 >>Accept Whitebark's Memory
    .target Larianna Riverwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,37.80,86.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whitebark's Spirit|r
    .turnin 10166 >>Turn in Whitebark's Memory
    .target Whitebark's Spirit
step << BloodElf
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Turn in Fly to Silvermoon City
    .accept 9134 >>Accept Skymistress Gloaming
    .target Sathren Azuredawn
step << BloodElf
    #completewith next
    .zone 94 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 94
step << BloodElf
    .goto 94,54.36,50.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymistress Gloaming|r
    .turnin 9134 >>Turn in Skymistress Gloaming
    .accept 9135 >>Accept Return to Sathiel
    .target Skymistress Gloaming
step << BloodElf
    .goto 94,43.70,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathiel|r
    .turnin 9135 >>Turn in Return to Sathiel
    .target Sathiel
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 94,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9403 >>Turn in The Purest Water
    .accept 9404 >>Accept Recently Living
    .target Instructor Antheol
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    #loop
    .goto 94,59.97,72.06,0
    .goto 94,59.97,72.06,40,0
    .goto 94,58.03,73.35,40,0
    >>Kill |cRXP_ENEMY_Eversong Green Keeper|r and loot |cRXP_LOOT_Living Branch|r
    .complete 9404,1 --Living Branch (1)
    .mob Eversong Green Keeper
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 94,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9404 >>Turn in Recently Living
    .target Instructor Antheol
step
    +|cRXP_WARN_That is all of Eversong Woods for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ghostlands|r: Delivery to Tranquillien << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Ghostlands and back here|r: The Fallen Courier << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 11|r: |cRXP_FRIENDLY_Azshara|r (about 0.6 levels of quests, starting around Labor Captain Grabbit). Completing this step loads the guide for Azshara --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Eversong Woods is planned from level 28.|r Load its guide for level 28 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 5 - 29 Eversong Woods
#subweight -5
#name 28-29 Eversong Woods
--RouteBuilder:next
#next Zone Routes (Horde)\25-30 Northern Stranglethorn;Zone Routes (Horde)\26-31 Arathi Highlands;Zone Routes (Horde)\22-27 Hillsbrad Foothills: around Serge Hinott

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Saltheril|r
    .accept 9067 >>Accept The Party Never Ends
    .target Lord Saltheril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,44.04,70.35
    >>Kill |cRXP_ENEMY_Halis Dawnstrider|r and loot |cRXP_LOOT_Bundle of Fireworks|r
    .complete 9067,3 --Bundle of Fireworks (1)
    .mob Halis Dawnstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,60.41,62.46
    >>Kill |cRXP_ENEMY_Zalene Firstlight|r and loot |cRXP_LOOT_Springpaw Appetizers|r
    .complete 9067,2 --Springpaw Appetizers (1)
    .mob Zalene Firstlight
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,79.50,58.52
    >>Kill |cRXP_ENEMY_Vinemaster Suntouched|r and loot |cRXP_LOOT_Suntouched Special Reserve|r
    .complete 9067,1 --Suntouched Special Reserve (1)
    .mob Vinemaster Suntouched
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 94 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 94
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,49.02,89.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Thedra|r
    .turnin 9147 >>Turn in The Fallen Courier
    .target Apothecary Thedra
    .isQuestComplete 9147
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 94,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Saltheril|r
    .turnin 9067 >>Turn in The Party Never Ends
    .target Lord Saltheril
step
    +|cRXP_WARN_End of the Eversong Woods route.|r
step
    +|cRXP_WARN_Suggested next zones at level 28|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.2 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.1 levels of quests, starting around Galen Trollbane), |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.6 levels of quests, starting around Serge Hinott). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
