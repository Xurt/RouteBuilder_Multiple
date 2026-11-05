-- 3-4 Deathknell: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Deathknell.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 3-4 Deathknell

step << Undead
    .goto 465,46.62,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .turnin 28653 >>Turn in Shadow Priest Sarvis
    .target Shadow Priest Sarvis
    .isOnQuest 28653
step << Undead
    .goto 465,43.42,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .accept 28652 >>Accept Caretaker Caice
    .target Undertaker Mordo
    .isQuestTurnedIn 26799 --any of: Those That Couldn't Be Saved
step << Undead
    .goto 465,43.42,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .turnin 24959 >>Turn in Fresh out of the Grave
    .target Undertaker Mordo
    .isOnQuest 24959
step << Undead
    .goto 465,43.42,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .accept 28608 >>Accept The Shadow Grave
    .target Undertaker Mordo
    .isQuestTurnedIn 24959 --any of: Fresh out of the Grave
step << Undead
    .goto 465,43.42,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .accept 26799 >>Accept Those That Couldn't Be Saved
    .target Undertaker Mordo
    .isQuestTurnedIn 28608 --any of: The Shadow Grave
step << Undead
    .goto 465,45.92,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Caice|r
    .turnin 28652 >>Turn in Caretaker Caice
    .target Caretaker Caice
    .isOnQuest 28652
step << Undead
    .goto 465,45.92,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Caice|r
    .accept 24960 >>Accept The Wakening
    .target Caretaker Caice
    .isQuestTurnedIn 28608 --any of: The Shadow Grave
step << Undead
    #loop
    .goto 465,45.44,75.79,0
    .goto 465,45.44,75.79,40,0
    .goto 465,41.52,74.15,40,0
    .goto 465,42.28,71.00,40,0
    >>Kill |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --Mindless Zombie slain (6)
    .mob Mindless Zombie
    .isOnQuest 26799
step << Undead
    .goto 465,43.42,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .turnin 26799 >>Turn in Those That Couldn't Be Saved
    .target Undertaker Mordo
    .isOnQuest 26799
step << Undead
    .goto 465,43.42,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undertaker Mordo|r
    .turnin 28608 >>Turn in The Shadow Grave
    .target Undertaker Mordo
    .isQuestComplete 28608
step << Undead
    .goto 465,45.92,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Caice|r
    .accept 25089 >>Accept Beyond the Graves
    .target Caretaker Caice
    .isQuestTurnedIn 24960 --any of: The Wakening
step << Undead
    .goto 465,45.92,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Caice|r
    .turnin 24960 >>Turn in The Wakening
    .target Caretaker Caice
    .isQuestComplete 24960
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,46.62,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .accept 26801 >>Accept Scourge on our Perimeter
    .target Shadow Priest Sarvis
step << Undead
    .goto 465,49.87,56.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .turnin 25089 >>Turn in Beyond the Graves
    .target Deathguard Saltain
    .isOnQuest 25089
step << Undead
    .goto 465,49.87,56.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .accept 26800 >>Accept Recruitment
    .target Deathguard Saltain
    .isQuestTurnedIn 25089 --any of: Beyond the Graves
step << Undead
    .goto 465,54.20,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal Stern|r
    .accept 28651 >>Accept Novice Elreth
    .target Dannal Stern
    .isQuestTurnedIn 24964,24965,24966,24967,24968,24969,31147 --any of: The Thrill of the Hunt, Magic Training, Of Light and Shadows, Stab!, Dark Deeds, Charging into Battle, Tiger Palm
    .xp <2,1
step << Undead
    #loop
    .goto 465,55.05,52.20,0
    .goto 465,55.05,52.20,40,0
    .goto 465,60.58,50.55,40,0
    >>Interact with |cRXP_FRIENDLY_Scarlet Corpses|r
    .complete 26800,1 --Scarlet Corpse (6)
    .target Scarlet Corpse
    .isOnQuest 26800
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 465,48.25,47.72,0
    .goto 465,48.25,47.72,40,0
    .goto 465,49.84,42.47,40,0
    .goto 465,52.20,46.31,40,0
    >>Kill |cRXP_ENEMY_Wretched Ghouls|r and |cRXP_ENEMY_Rattlecage Skeletons|r
    .complete 26801,1 --Wretched Ghoul (8)
    .mob Wretched Ghoul
    .mob Rattlecage Skeleton
step << Undead
    .goto 465,49.87,56.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .turnin 26800 >>Turn in Recruitment
    .target Deathguard Saltain
    .isOnQuest 26800
step << Undead
    .goto 465,49.87,56.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Saltain|r
    .accept 28653 >>Accept Shadow Priest Sarvis
    .target Deathguard Saltain
    .isQuestTurnedIn 26800 --any of: Recruitment
step
    .goto 465,46.62,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .turnin 26801 >>Turn in Scourge on our Perimeter << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 3095 >>Accept Simple Scroll << Undead Warrior
    .accept 24962 >>Accept Trail-Worn Scroll << Undead Hunter
    .accept 3096 >>Accept Encrypted Scroll << Undead Rogue
    .accept 3097 >>Accept Hallowed Scroll << Undead Priest
    .accept 3098 >>Accept Glyphic Scroll << Undead Mage
    .accept 3099 >>Accept Tainted Scroll << Undead Warlock
    .target Shadow Priest Sarvis
step << Undead Warlock
    .goto 465,46.93,59.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Turn in Tainted Scroll while you are here
    .isQuestComplete 3099
    .target Maximillion
step << Undead Mage
    .goto 465,47.03,58.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .turnin 3098 >>Turn in Glyphic Scroll while you are here
    .isQuestComplete 3098
    .target Isabella
step << Undead
    .goto 465,46.74,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .turnin 28651 >>Turn in Novice Elreth
    .target Novice Elreth
    .isOnQuest 28651
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,46.74,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .accept 24961 >>Accept The Truth of the Grave
    .target Novice Elreth
step << Undead Hunter
    .goto 465,49.18,56.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xavier the Huntsman|r
    .turnin 24962 >>Turn in Trail-Worn Scroll
    .accept 24964 >>Accept The Thrill of the Hunt
    .target Xavier the Huntsman
step << Undead Priest
    .goto 465,47.75,58.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Duesten|r
    .turnin 3097 >>Turn in Hallowed Scroll
    .accept 24966 >>Accept Of Light and Shadows
    .target Dark Cleric Duesten
step << Undead Priest
    .goto 465,49.28,61.93
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 24966,1 --Training Dummy slain (5)
    .mob Training Dummy
step << Undead Mage
    .goto 465,47.03,58.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .turnin 3098 >>Turn in Glyphic Scroll
    .accept 24965 >>Accept Magic Training
    .target Isabella
step << Undead Priest
    .goto 465,47.75,58.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Duesten|r
    .turnin 24966 >>Turn in Of Light and Shadows while you are here
    .isQuestComplete 24966
    .target Dark Cleric Duesten
step << Undead Mage
    .goto 465,49.28,61.93
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 24965,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Undead Warlock
    .goto 465,46.93,59.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Turn in Tainted Scroll
    .accept 24968 >>Accept Dark Deeds
    .target Maximillion
step << Undead Mage
    .goto 465,47.03,58.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .turnin 24965 >>Turn in Magic Training while you are here
    .isQuestComplete 24965
    .target Isabella
step << Undead Warlock
    .goto 465,49.28,61.93
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 24968,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,54.36,57.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .complete 24961,1 --Lilian Voss
    .target Lilian Voss
step << Undead Warrior
    .goto 465,54.20,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal Stern|r
    .turnin 3095 >>Turn in Simple Scroll while you are here
    .isQuestComplete 3095
    .target Dannal Stern
step << Undead Rogue
    .goto 465,53.66,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Trias|r
    .turnin 3096 >>Turn in Encrypted Scroll while you are here
    .isQuestComplete 3096
    .target David Trias
step
    .goto 465,53.02,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blacksmith Rand|r
    .target Blacksmith Rand
    .home >>Set your Hearthstone to Blacksmith Rand's inn
step << Undead Warrior
    .goto 465,54.20,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal Stern|r
    .turnin 3095 >>Turn in Simple Scroll
    .accept 24969 >>Accept Charging into Battle
    .target Dannal Stern
step << Undead Warrior
    .goto 465,49.28,61.93
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 24969,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Undead Warrior
    .goto 465,54.20,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannal Stern|r
    .turnin 24969 >>Turn in Charging into Battle
    .target Dannal Stern
step << Undead Hunter
    .goto 465,49.28,61.93
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 24964,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Undead Hunter
    .goto 465,49.18,56.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xavier the Huntsman|r
    .turnin 24964 >>Turn in The Thrill of the Hunt
    .target Xavier the Huntsman
step << Undead Rogue
    .goto 465,53.66,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Trias|r
    .turnin 3096 >>Turn in Encrypted Scroll
    .accept 24967 >>Accept Stab!
    .target David Trias
step << Undead Rogue
    .goto 465,49.28,61.93
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 24967,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Undead Rogue
    .goto 465,53.66,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Trias|r
    .turnin 24967 >>Turn in Stab!
    .target David Trias
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,46.74,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Novice Elreth|r
    .turnin 24961 >>Turn in The Truth of the Grave
    .accept 28672 >>Accept The Executor In the Field
    .target Novice Elreth
step << Undead Priest
    .goto 465,47.75,58.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Cleric Duesten|r
    .turnin 24966 >>Turn in Of Light and Shadows
    .target Dark Cleric Duesten
step << Undead Mage
    .goto 465,47.03,58.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isabella|r
    .turnin 24965 >>Turn in Magic Training
    .target Isabella
step << Undead Warlock
    .goto 465,46.93,59.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillion|r
    .turnin 24968 >>Turn in Dark Deeds
    .target Maximillion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,55.47,37.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .turnin 28672 >>Turn in The Executor In the Field
    .accept 26802 >>Accept The Damned
    .target Executor Arren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along45
    >>As you go: Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Ragged Scavengers|r. Loot them for |cRXP_LOOT_Scavenger Paw|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26802,1 --Scavenger Paw (4)
    .mob Young Scavenger
    .mob Ragged Scavenger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along45
    .goto 465,58.67,22.18
    >>Kill |cRXP_ENEMY_Duskbats|r and |cRXP_ENEMY_Mangy Duskbats|r. Loot them for |cRXP_LOOT_Duskbat Wing|r
    .complete 26802,2 --Duskbat Wing (4)
    .mob Duskbat
    .mob Mangy Duskbat
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 465,61.70,17.78,0
    .goto 465,61.70,17.78,40,0
    .goto 465,63.50,24.15,40,0
    >>Kill |cRXP_ENEMY_Young Scavengers|r and |cRXP_ENEMY_Ragged Scavengers|r. Loot them for |cRXP_LOOT_Scavenger Paw|r
    .complete 26802,1 --Scavenger Paw (4)
    .mob Young Scavenger
    .mob Ragged Scavenger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,55.47,37.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .turnin 26802 >>Turn in The Damned
    .accept 24973 >>Accept Night Web's Hollow
    .target Executor Arren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,55.47,37.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .turnin 24973 >>Turn in Night Web's Hollow
    .target Executor Arren
    .isQuestComplete 24973
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 465,39.63,22.68,0
    .goto 465,39.63,22.68,40,0
    .goto 465,35.46,20.67,40,0
    >>Kill |cRXP_ENEMY_Young Night Web Spiders|r
    .complete 24973,1 --Young Night Web Spider slain (8)
    .mob Young Night Web Spider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,55.47,37.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Arren|r
    .accept 24970 >>Accept No Better Than the Zombies
    .target Executor Arren
    .isQuestTurnedIn 24973 --any of: Night Web's Hollow
    .xp <3,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,70.06,69.70
    >>Kill |cRXP_ENEMY_Marshal Redpath|r
    .complete 24971,1 --Marshal Redpath slain (1)
    .mob Marshal Redpath
    .isOnQuest 24971
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 465,71.19,66.60,0
    .goto 465,71.19,66.60,40,0
    .goto 465,73.89,65.32,40,0
    .goto 465,72.43,59.29,40,0
    >>Kill |cRXP_ENEMY_Rotbrain Magus|r and |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --Rotbrain Magus (8)
    .mob Rotbrain Magus
    .mob Rotbrain Berserker
    .isOnQuest 24971
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,46.62,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .turnin 24971 >>Turn in Assault on the Rotbrain Encampment
    .target Shadow Priest Sarvis
    .isOnQuest 24971
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 465,46.62,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Priest Sarvis|r
    .accept 24972 >>Accept Vital Intelligence
    .target Shadow Priest Sarvis
    .isQuestTurnedIn 24971 --any of: Assault on the Rotbrain Encampment
    .xp <2,1
step
    +|cRXP_WARN_End of the Deathknell route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Tirisfal Glades|r: No Better Than the Zombies, Vital Intelligence << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Night Web's Hollow and back here|r: Night Web's Hollow << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
]])
