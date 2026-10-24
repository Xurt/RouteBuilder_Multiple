-- 1-10 Tirisfal Glades: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Tirisfal Glades.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 1-10 Tirisfal Glades

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,52.81,26.35
    >>Kill |cRXP_ENEMY_Captain Dargol|r and loot |cRXP_LOOT_Dargol's Skull|r. Use it to start the quest
    .collect 3082,1,25030 --Dargol's Skull (1)
    .accept 25030 >>Accept The Haunted Mills
    .use 3082
    .mob Captain Dargol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,54.59,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 25030 >>Turn in The Haunted Mills
    .target Coleman Farthing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 4 >>Grind to level 4 (A Putrid Task needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,52.55,54.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .accept 25090 >>Accept A Putrid Task
    .target Deathguard Dillinger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,52.90,53.10,0
    .goto 18,52.90,53.10,40,0
    .goto 18,54.42,50.51,40,0
    >>Kill |cRXP_ENEMY_Rotting Dead|r and |cRXP_ENEMY_Ravaged Corpses|r. Loot them for |cRXP_LOOT_Putrid Claw|r
    .complete 25090,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,52.55,54.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .turnin 25090 >>Turn in A Putrid Task
    .target Deathguard Dillinger
step << Undead
    .goto 18,29.43,70.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agatha|r
    .accept 24959 >>Accept Fresh out of the Grave
    .target Agatha
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .train 5143 >>Train |T136096:0|t[Arcane Missiles] << Cata
    .target Isabella
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xavier|r
    .train 56641 >>Train |T132213:0|t[Steady Shot] << Cata
    .target Xavier the Huntsman
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duesten|r
    .train 2061 >>Train |T135907:0|t[Flash Heal] << Cata
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Train |T135817:0|t[Immolate] << Cata
    .target Maximillion
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .train 2098 >>Train |T132292:0|t[Eviscerate] << Cata
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal|r
    .train 100 >>Train |T132337:0|t[Charge] << Cata
    .target Dannal Stern
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,35.76,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darnell|r
    .turnin 24970 >>Turn in No Better Than the Zombies
    .target Darnell
    .isOnQuest 24970
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,35.76,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darnell|r
    .accept 24971 >>Accept Assault on the Rotbrain Encampment
    .target Darnell
    .isQuestTurnedIn 24970 --any of: No Better Than the Zombies
    .xp <2,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .turnin 24972 >>Turn in Vital Intelligence
    .target Deathguard Simmer
    .isOnQuest 24972
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .accept 24978 >>Accept Reaping the Reapers
    .target Deathguard Simmer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 24975 >>Accept Fields of Grief
    .target Apothecary Johaan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedrick Calston|r
    .accept 24974 >>Accept Ever So Lonely
    .target Sedrick Calston
step << Hunter Cata
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darna|r outside
    .train 2973 >>Train your class spells
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karla|r outside
    .train 34428 >>Train your class spells
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah|r outside
    .train 2136 >>Train your class spells
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Claressa|r outside
    .train 589 >>Train your class spells
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maressa|r outside
    .train 87389 >>Train your class spells
    .target Maressa Milner
    .xp <5,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,39.67,51.55,0
    .goto 18,39.67,51.55,40,0
    .goto 18,37.58,51.47,40,0
    .goto 18,35.29,51.42,40,0
    >>Pick up |cRXP_PICK_Tirisfal Pumpkin|r from the ground
    >>Kill |cRXP_ENEMY_Tirisfal Farmhands|r, |cRXP_ENEMY_Farmer Sollidens|r and |cRXP_ENEMY_Tirisfal Farmers|r
    .complete 24975,1 --Tirisfal Pumpkin (10)
    .complete 24978,1 --Tirisfal Farmhand (10)
    .mob Tirisfal Farmhand
    .mob Farmer Solliden
    .mob Tirisfal Farmer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,35.56,44.27,0
    .goto 18,35.56,44.27,40,0
    .goto 18,36.43,40.60,40,0
    >>Kill |cRXP_ENEMY_Vile Fin Puddlejumper|r and |cRXP_ENEMY_Vile Fin Minor Oracle|r
    .complete 24974,1 --Vile Fin Puddlejumper (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .turnin 24978 >>Turn in Reaping the Reapers
    .target Deathguard Simmer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .turnin 24975 >>Turn in Fields of Grief
    .target Apothecary Johaan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.65
    >>Kill |cRXP_ENEMY_Sedrick Calston|r
    .complete 24974,2 --Sedrick Calston (1)
    .mob Sedrick Calston
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedrick Calston|r
    .turnin 24974 >>Turn in Ever So Lonely
    .target Sedrick Calston
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 5 >>Grind to level 5 (Variety is the Spice of Death needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 24976 >>Accept Variety is the Spice of Death
    .target Apothecary Johaan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .accept 24980 >>Accept The Scarlet Palisade
    .target Deathguard Simmer
    .xp <5,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,49.46,52.92,0
    .goto 18,49.46,52.92,40,0
    .goto 18,49.61,54.84,40,0
    >>Loot the |cRXP_PICK_Marrowpetal Stalks|r for |cRXP_LOOT_Marrowpetal|r
    .complete 24976,1 --Marrowpetal (4)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,35.45,45.88,0
    .goto 18,35.45,45.88,40,0
    .goto 18,34.20,41.72,40,0
    .goto 18,35.65,38.62,40,0
    >>Pick up |cRXP_PICK_Xavren's Thorn|r from the ground
    >>Kill |cRXP_ENEMY_Briny Sea Cucumbers|r. Loot them for |cRXP_LOOT_Briny Sea Cucumber|r
    .complete 24976,2 --Xavren's Thorn (4)
    .complete 24976,3 --Briny Sea Cucumber (8)
    .mob Briny Sea Cucumber
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .turnin 24976 >>Turn in Variety is the Spice of Death
    .target Apothecary Johaan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .accept 24980 >>Accept The Scarlet Palisade
    .target Deathguard Simmer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 24977 >>Accept Johaan's Experiment
    .target Apothecary Johaan
    .xp <5,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.95,53.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordo|r
    .accept 25038 >>Accept Gordo's Task
    .target Gordo
    .xp <5,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop24979x1
    >>|cRXP_LOOT_A Scarlet Letter|r can drop from |cRXP_ENEMY_Scarlet Warrior|r. Use it to start the quest if you get one
    .collect 52079,1,24979 --A Scarlet Letter (1)
    .accept 24979 >>Accept A Scarlet Letter
    .use 52079
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop24979x1
    #loop
    .goto 18,36.66,48.19,0
    .goto 18,36.66,48.19,40,0
    .goto 18,33.73,49.42,40,0
    .goto 18,32.21,46.72,40,0
    >>Kill |cRXP_ENEMY_Scarlet Warriors|r
    .complete 24980,1 --Scarlet Warrior slain (10)
    .mob Scarlet Warrior
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,31.70,46.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .complete 24979,1 --Lilian Voss
    .target Lilian Voss
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .turnin 24980 >>Turn in The Scarlet Palisade
    .target Deathguard Simmer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.75,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Simmer|r
    .turnin 24979 >>Turn in A Scarlet Letter
    .target Deathguard Simmer
    .isOnQuest 24979
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan|r
    .accept 24977 >>Accept Johaan's Experiment
    .target Apothecary Johaan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.70,52.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Scarlet Zealot|r
    .turnin 24977 >>Turn in Johaan's Experiment
    .target Captured Scarlet Zealot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,44.95,53.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordo|r
    .accept 25038 >>Accept Gordo's Task
    .target Gordo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,49.66,54.93,0
    .goto 18,49.66,54.93,40,0
    .goto 18,49.03,60.24,40,0
    >>Pick up |cRXP_PICK_Gloom Weed|r from the ground
    .complete 25038,1 --Gloom Weed (3)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,52.55,54.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Dillinger|r
    .accept 24982 >>Accept The New Forsaken
    .target Deathguard Dillinger
step << Undead
    .goto 18,60.13,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Morris|r
    .accept 6321 >>Accept Supplying Brill
    .target Deathguard Morris
step << Undead
    .goto 18,58.84,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anette Williams|r
    .turnin 6321 >>Turn in Supplying Brill while you are here
    .isQuestComplete 6321
    .target Anette Williams
step
    #loop
    .goto 18,56.76,52.23,0
    .goto 18,56.76,52.23,40,0
    .goto 18,58.33,50.30,40,0
    .goto 18,58.34,50.70,40,0
    .goto 18,59.25,51.57,40,0
    .goto 18,59.35,49.03,40,0
    .goto 18,60.82,52.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamlin Atkins|r. |cRXP_WARN_This NPC walks a patrol route|r
    .unitscan Hamlin Atkins
    .home >>Set your Hearthstone to Hamlin Atkins's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,59.93,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junior Apothecary Holland|r
    .turnin 25038 >>Turn in Gordo's Task
    .target Junior Apothecary Holland
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,60.54,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .accept 24981 >>Accept A Thorn in our Side
    .target Executor Zygand
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.08,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .turnin 24982 >>Turn in The New Forsaken
    .accept 24983 >>Accept Forsaken Duties
    .target Magistrate Sevren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,59.93,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junior Apothecary Holland|r
    .accept 24990 >>Accept Darkhound Pounding
    .target Junior Apothecary Holland
    .xp <6,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 6 >>Grind to level 6 (Graverobbers needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.61,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Crispin|r
    .accept 24997 >>Accept Graverobbers
    .target Apprentice Crispin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.65,34.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Jerrod|r
    .accept 24994 >>Accept Doom Weed
    .target Apothecary Jerrod
    .xp <6,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,58.56,42.05,0
    .goto 18,58.56,42.05,40,0
    .goto 18,56.61,39.70,40,0
    .goto 18,54.88,42.48,40,0
    >>Kill |cRXP_ENEMY_Rot Hide Gnolls|r, |cRXP_ENEMY_Rot Hide Mongrels|r and |cRXP_ENEMY_Rot Hide Graverobbers|r. Loot them for |cRXP_LOOT_Embalming Ichor|r
    >>Kill |cRXP_ENEMY_Rot Hide Graverobbers|r
    .complete 24997,3 --Embalming Ichor (1)
    .complete 24997,1 --Rot Hide Graverobber slain (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,59.42,35.51,0
    .goto 18,59.42,35.51,40,0
    .goto 18,58.44,31.75,40,0
    >>Kill |cRXP_ENEMY_Rot Hide Mongrels|r
    .complete 24997,2 --Rot Hide Mongrel slain (8)
    .mob Rot Hide Mongrel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.61,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Crispin|r
    .turnin 24997 >>Turn in Graverobbers
    .target Apprentice Crispin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.65,34.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Jerrod|r
    .accept 24994 >>Accept Doom Weed
    .target Apothecary Jerrod
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.61,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Crispin|r
    .accept 24998 >>Accept Maggot Eye
    .target Apprentice Crispin
    .xp <6,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,57.67,34.37,0
    .goto 18,57.67,34.37,40,0
    .goto 18,58.14,41.60,40,0
    .goto 18,55.29,41.50,40,0
    >>Pick up |cRXP_PICK_Doom Weed|r from the ground
    .complete 24994,1 --Doom Weed (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.65,34.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Jerrod|r
    .turnin 24994 >>Turn in Doom Weed
    .target Apothecary Jerrod
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.65,34.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Jerrod|r
    .accept 24995 >>Accept Off the Scales
    .target Apothecary Jerrod
    .xp <6,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.61,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Crispin|r
    .accept 24999 >>Accept Planting the Seed of Fear
    .target Apprentice Crispin
    .xp <6,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.61,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Crispin|r
    .accept 24998 >>Accept Maggot Eye
    .target Apprentice Crispin
    .xp <6,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,59.93,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junior Apothecary Holland|r
    .accept 24990 >>Accept Darkhound Pounding
    .target Junior Apothecary Holland
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Linnea|r
    .turnin 24983 >>Turn in Forsaken Duties
    .target Deathguard Linnea
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,65.25,60.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen Dedmar|r
    .accept 24988 >>Accept The Chill of Death
    .target Gretchen Dedmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,58.02,61.49,0
    .goto 18,58.02,61.49,40,0
    .goto 18,53.54,63.57,40,0
    .goto 18,50.71,61.71,40,0
    .goto 18,49.21,59.63,40,0
    >>Kill |cRXP_ENEMY_Decrepit Darkhounds|r, |cRXP_ENEMY_Cursed Darkhounds|r and |cRXP_ENEMY_Ravenous Darkhounds|r. Loot them for |cRXP_LOOT_Darkhound Blood|r
    >>Kill |cRXP_ENEMY_Greater Duskbats|r and |cRXP_ENEMY_Vampiric Duskbats|r. Loot them for |cRXP_LOOT_Duskbat Pelt|r
    .complete 24990,1 --Darkhound Blood (1)
    .complete 24988,1 --Duskbat Pelt (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .mob Ravenous Darkhound
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,59.93,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junior Apothecary Holland|r
    .turnin 24990 >>Turn in Darkhound Pounding
    .accept 24996 >>Accept Holland's Experiment
    .target Junior Apothecary Holland
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,60.04,52.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Mountaineer|r
    .turnin 24996 >>Turn in Holland's Experiment
    .target Captured Mountaineer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,59.93,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junior Apothecary Holland|r
    .accept 24991 >>Accept Garren's Haunt
    .target Junior Apothecary Holland
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,65.25,60.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen Dedmar|r
    .turnin 24988 >>Turn in The Chill of Death
    .target Gretchen Dedmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Linnea|r
    .accept 24989 >>Accept Return to the Magistrate
    .target Deathguard Linnea
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,52.77,68.24,0
    .goto 18,52.77,68.24,40,0
    .goto 18,50.54,67.75,40,0
    >>Kill |cRXP_ENEMY_Scarlet Missionaries|r
    >>Kill |cRXP_ENEMY_Scarlet Zealots|r
    >>Kill |cRXP_ENEMY_Scarlet Missionaries|r, |cRXP_ENEMY_Scarlet Zealots|r and |cRXP_ENEMY_Captain Perrines|r. Loot them for |cRXP_LOOT_Urgent Scarlet Memorandum|r
    .complete 24981,2 --Scarlet Missionary slain (3)
    .complete 24981,1 --Scarlet Zealot slain (3)
    .complete 24981,3 --Urgent Scarlet Memorandum (1)
    .mob Scarlet Missionary
    .mob Scarlet Zealot
    .mob Captain Perrine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Hamlin Atkins's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,60.54,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 24981 >>Turn in A Thorn in our Side
    .target Executor Zygand
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.08,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .turnin 24989 >>Turn in Return to the Magistrate
    .target Magistrate Sevren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.65,34.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Jerrod|r
    .turnin 24991 >>Turn in Garren's Haunt
    .accept 24995 >>Accept Off the Scales
    .target Apothecary Jerrod
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.61,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Crispin|r
    .accept 24999 >>Accept Planting the Seed of Fear
    .accept 24998 >>Accept Maggot Eye
    .target Apprentice Crispin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,61.66,27.86,0
    .goto 18,61.66,27.86,40,0
    .goto 18,58.45,27.59,40,0
    >>Kill |cRXP_ENEMY_Vile Fin Murlocs|r, |cRXP_ENEMY_Vile Fin Puddlejumpers|r, |cRXP_ENEMY_Vile Fin Minor Oracles|r and |cRXP_ENEMY_Vile Fin Muckdwellers|r. Loot them for |cRXP_LOOT_Vile Fin Scale|r
    .complete 24995,1 --Vile Fin Scale (5)
    .mob Vile Fin Murloc
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,59.78,27.45
    >>Chase 12 Vile Fin Tadpoles until they pass out in fear.
    .complete 24999,1 --Vile Fin Tadpole (12)
    .target Vile Fin Tadpole
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,58.66,30.77
    >>Kill |cRXP_ENEMY_Maggot Eye|r and loot |cRXP_LOOT_Maggot Eye's Paw|r
    .complete 24998,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.61,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Crispin|r
    .turnin 24998 >>Turn in Maggot Eye
    .turnin 24999 >>Turn in Planting the Seed of Fear
    .target Apprentice Crispin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.65,34.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Jerrod|r
    .turnin 24995 >>Turn in Off the Scales
    .accept 25031 >>Accept Head for the Mills
    .target Apothecary Jerrod
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,54.59,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 25031 >>Turn in Head for the Mills
    .accept 25003 >>Accept The Family Crypt
    .target Coleman Farthing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,52.07,32.59,0
    .goto 18,52.07,32.59,40,0
    .goto 18,51.97,26.97,40,0
    >>Kill |cRXP_ENEMY_Wailing Ancestors|r
    >>Kill |cRXP_ENEMY_Rotting Ancestors|r
    .complete 25003,1 --Wailing Ancestor slain (5)
    .complete 25003,2 --Rotting Ancestor slain (5)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,54.59,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 25003 >>Turn in The Family Crypt
    .accept 25029 >>Accept Deaths in the Family
    .accept 25004 >>Accept The Mills Overrun
    .target Coleman Farthing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,50.52,31.70,0
    .goto 18,50.52,31.70,40,0
    .goto 18,48.84,34.37,40,0
    .goto 18,47.66,30.85,40,0
    >>Kill |cRXP_ENEMY_Darkeye Bonecasters|r. Loot them for |cRXP_LOOT_Blackened Skull|r
    >>Kill |cRXP_ENEMY_Rattlecage Soldiers|r and |cRXP_ENEMY_Cracked Skull Soldiers|r. Loot them for |cRXP_LOOT_Notched Rib|r
    >>Kill |cRXP_ENEMY_Thurman Agamand|r and loot |cRXP_LOOT_Thurman's Remains|r
    >>Kill |cRXP_ENEMY_Gregor Agamand|r and loot |cRXP_LOOT_Gregor's Remains|r
    >>Kill |cRXP_ENEMY_Devlin Agamand|r and loot |cRXP_LOOT_Devlin's Remains|r
    >>Kill |cRXP_ENEMY_Nissa Agamand|r and loot |cRXP_LOOT_Nissa's Remains|r
    .complete 25004,2 --Blackened Skull (3)
    .complete 25004,1 --Notched Rib (5)
    .complete 25029,3 --Thurman's Remains (1)
    .complete 25029,2 --Gregor's Remains (1)
    .complete 25029,4 --Devlin's Remains (1)
    .complete 25029,1 --Nissa's Remains (1)
    .mob Darkeye Bonecaster
    .mob Rattlecage Soldier
    .mob Cracked Skull Soldier
    .mob Thurman Agamand
    .mob Gregor Agamand
    .mob Devlin Agamand
    .mob Nissa Agamand
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,54.59,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman Farthing|r
    .turnin 25004 >>Turn in The Mills Overrun
    .turnin 25029 >>Turn in Deaths in the Family
    .accept 25005 >>Accept Speak with Sevren
    .target Coleman Farthing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.08,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .turnin 25005 >>Turn in Speak with Sevren
    .accept 25006 >>Accept The Grasp Weakens
    .target Magistrate Sevren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,62.07,52.80
    >>Kill |cRXP_ENEMY_Shadow of Agamand|r
    .complete 25006,1 --Shadow of Agamand slain (1)
    .mob Shadow of Agamand
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,61.08,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Sevren|r
    .turnin 25006 >>Turn in The Grasp Weakens
    .accept 25007 >>Accept East... Always to the East
    .target Magistrate Sevren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,60.54,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .accept 26964 >>Accept Warchief's Command: Silverpine Forest!
    .target Executor Zygand
    .xp <9,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,83.28,69.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .accept 25056 >>Accept Grisly Grizzlies
    .target Apothecary Dithers
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,83.26,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 25007 >>Turn in East... Always to the East
    .accept 25009 >>Accept At War With The Scarlet Crusade
    .target High Executor Derrington
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,79.43,66.20,0
    .goto 18,79.43,66.20,40,0
    .goto 18,79.95,56.37,40,0
    .goto 18,77.14,55.17,40,0
    >>Kill |cRXP_ENEMY_Plagued Bruins|r. Loot them for |cRXP_LOOT_Plagued Bruin Hide|r
    >>Kill |cRXP_ENEMY_Scarlet Friars|r
    >>Kill |cRXP_ENEMY_Scarlet Zealots|r
    .complete 25056,1 --Plagued Bruin Hide (5)
    .complete 25009,2 --Scarlet Friar slain (4)
    .complete 25009,1 --Scarlet Zealot slain (3)
    .mob Plagued Bruin
    .mob Scarlet Friar
    .mob Scarlet Zealot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,83.26,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 25009 >>Turn in At War With The Scarlet Crusade
    .accept 25010 >>Accept A Deadly New Ally
    .target High Executor Derrington
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,83.28,69.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 25056 >>Turn in Grisly Grizzlies
    .accept 25013 >>Accept A Little Oomph
    .target Apothecary Dithers
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 18,83.08,56.12,0
    .goto 18,83.08,56.12,40,0
    .goto 18,85.12,52.50,40,0
    .goto 18,85.18,48.37,40,0
    >>Kill |cRXP_ENEMY_Vicious Night Web Spider|r and loot |cRXP_LOOT_Vicious Night Web Spider Venom|r
    .complete 25013,1 --Vicious Night Web Spider Venom (1)
    .mob Vicious Night Web Spider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,87.50,43.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Sanders|r
    .turnin 25010 >>Turn in A Deadly New Ally
    .accept 25046 >>Accept A Daughter's Embrace
    .target Lieutenant Sanders
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,79.44,25.12
    >>Bring Lilian Voss to her father in the tower at Crusader's Run.
    .complete 25046,1 --High Priest Benedictus Voss
    .target High Priest Benedictus Voss
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,83.26,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Derrington|r
    .turnin 25046 >>Turn in A Daughter's Embrace
    .accept 25011 >>Accept To Bigger and Better Things
    .target High Executor Derrington
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,83.28,69.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Dithers|r
    .turnin 25013 >>Turn in A Little Oomph
    .target Apothecary Dithers
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,83.57,69.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timothy Cunningham|r
    .turnin 25011 >>Turn in To Bigger and Better Things
    .accept 25012 >>Accept Take to the Skies
    .target Timothy Cunningham
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Hamlin Atkins's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,60.54,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .turnin 25012 >>Turn in Take to the Skies
    .target Executor Zygand
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 9 >>Grind to level 9 (Warchief's Command: Silverpine Forest! needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 18,60.54,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Zygand|r
    .accept 26964 >>Accept Warchief's Command: Silverpine Forest!
    .target Executor Zygand
step << Undead
    .goto 18,58.84,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anette Williams|r
    .turnin 6321 >>Turn in Supplying Brill
    .accept 6323 >>Accept Ride to the Undercity
    .target Anette Williams
step << Undead
    #completewith next
    .zone 998 >>Travel to Undercity
    .zoneskip 998
step << Undead
    .goto 998,61.49,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordon Wendham|r
    .turnin 6323 >>Turn in Ride to the Undercity
    .accept 6322 >>Accept Michael Garrett
    .target Gordon Wendham
step << Undead
    .goto 998,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael Garrett|r
    .turnin 6322 >>Turn in Michael Garrett
    .accept 6324 >>Accept Return to Morris
    .target Michael Garrett
step << Undead
    #completewith next
    .zone 18 >>Leave Undercity for Tirisfal Glades
    .zoneskip 18
step << Undead
    .goto 18,60.13,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Morris|r
    .turnin 6324 >>Turn in Return to Morris
    .target Deathguard Morris
step
    +|cRXP_WARN_End of the Tirisfal Glades route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Deathknell|r: Fresh out of the Grave << Undead
    >>|cRXP_FRIENDLY_Deathknell|r: Assault on the Rotbrain Encampment << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Warchief's Command: Silverpine Forest! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
]])
