-- 1-5 Camp Narache: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Camp Narache.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 1-5 Camp Narache

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,27.73,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .accept 14449 >>Accept The First Step
    .target Chief Hawkwind
step
    .goto 462,26.98,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moodan Sungrain|r
    .target Moodan Sungrain
    .home >>Set your Hearthstone to Moodan Sungrain's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,39.45,37.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 14449 >>Turn in The First Step
    .accept 14452 >>Accept Rite of Strength
    .target Grull Hawkwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 462,46.54,43.06,0
    .goto 462,46.54,43.06,40,0
    .goto 462,48.18,45.39,40,0
    .goto 462,51.57,46.43,40,0
    .goto 462,52.09,39.34,40,0
    >>Kill |cRXP_ENEMY_Bristleback Invaders|r and |cRXP_ENEMY_Bristleback Invaders|r
    .complete 14452,1 --Bristleback Invader (6)
    .mob Bristleback Invader
    .mob Bristleback Invaders
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,39.45,37.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 14452 >>Turn in Rite of Strength
    .accept 24852 >>Accept Our Tribe, Imprisoned
    .target Grull Hawkwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,49.66,32.13
    >>Open 4 Quilboar Cages.
    .complete 24852,1 --Captured Brave (4)
    .target Captured Brave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,39.45,37.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull Hawkwind|r
    .turnin 24852 >>Turn in Our Tribe, Imprisoned
    .accept 14458 >>Accept Go to Adana
    .target Grull Hawkwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,30.92,50.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adana Thunderhorn|r
    .turnin 14458 >>Turn in Go to Adana
    .accept 14455 >>Accept Stop the Thorncallers
    .accept 14456 >>Accept Rite of Courage
    .target Adana Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 462,32.65,62.27,0
    .goto 462,32.65,62.27,40,0
    .goto 462,32.62,67.82,40,0
    .goto 462,35.91,67.28,40,0
    >>Kill |cRXP_ENEMY_Bristleback Gun Thiefs|r. Loot them for |cRXP_LOOT_Stolen Rifle|r
    >>Kill |cRXP_ENEMY_Bristleback Thorncallers|r
    .complete 14456,1 --Stolen Rifle (7)
    .complete 14455,1 --Bristleback Thorncaller slain (7)
    .mob Bristleback Gun Thief
    .mob Bristleback Thorncaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,30.92,50.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adana Thunderhorn|r
    .turnin 14456 >>Turn in Rite of Courage
    .turnin 14455 >>Turn in Stop the Thorncallers
    .accept 14459 >>Accept The Battleboars
    .accept 14461 >>Accept Feed of Evil
    .target Adana Thunderhorn
step
    .goto 462,30.82,49.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rohaku Stonehoof|r
    .accept 27015 >>Accept Consecrated Note << Tauren Paladin/BloodElf Paladin
    .accept 3091 >>Accept Simple Note << Tauren Warrior
    .accept 3092 >>Accept Etched Note << Tauren Hunter
    .accept 27014 >>Accept Hallowed Note << Tauren Priest
    .accept 3093 >>Accept Rune-Inscribed Note << Tauren Shaman
    .accept 3094 >>Accept Verdant Note << Tauren Druid
    .target Rohaku Stonehoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Armored Battleboars|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14459,1 --Armored Battleboar slain (10)
    .mob Armored Battleboar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,26.36,66.36
    >>Use Adana's Torch to set fire to all 3 Troughs in the Battleboar Pens.
    .complete 14461,1 --First Trough
    .target First Trough
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,25.13,69.18
    >>Use Adana's Torch to set fire to all 3 Troughs in the Battleboar Pens.
    .complete 14461,2 --Second Trough
    .target Second Trough
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along13
    .goto 462,28.21,70.45
    >>Use Adana's Torch to set fire to all 3 Troughs in the Battleboar Pens.
    .complete 14461,3 --Third Trough
    .target Third Trough
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 462,28.61,68.70,0
    .goto 462,28.61,68.70,40,0
    .goto 462,27.72,67.42,40,0
    .goto 462,25.83,67.89,40,0
    >>Kill |cRXP_ENEMY_Armored Battleboars|r
    .complete 14459,1 --Armored Battleboar slain (10)
    .mob Armored Battleboar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,30.92,50.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adana Thunderhorn|r
    .turnin 14459 >>Turn in The Battleboars
    .turnin 14461 >>Turn in Feed of Evil
    .accept 14460 >>Accept Rite of Honor
    .target Adana Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,15.22,46.70
    >>Kill |cRXP_ENEMY_Chief Squealer Thornmantle|r and loot |cRXP_LOOT_Mane of Thornmantle|r
    .complete 14460,1 --Mane of Thornmantle (1)
    .mob Chief Squealer Thornmantle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Moodan Sungrain's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,27.73,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .turnin 14460 >>Turn in Rite of Honor
    .accept 24861 >>Accept Last Rites, First Rites
    .target Chief Hawkwind
step << Tauren Hunter
    .goto 462,28.11,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka Farshot|r
    .turnin 3092 >>Turn in Etched Note while you are here
    .isQuestComplete 3092
    .target Lanka Farshot
step << Tauren Warrior
    .goto 462,27.23,28.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .turnin 3091 >>Turn in Simple Note while you are here
    .isQuestComplete 3091
    .target Harutt Thunderhorn
step << Tauren Paladin/BloodElf Paladin
    .goto 462,27.15,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Helaku|r
    .turnin 27015 >>Turn in Consecrated Note while you are here
    .isQuestComplete 27015
    .target Sunwalker Helaku
step << Tauren Druid
    .goto 462,27.94,27.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart Mistrunner|r
    .turnin 3094 >>Turn in Verdant Note while you are here
    .isQuestComplete 3094
    .target Gart Mistrunner
step << Tauren Priest
    .goto 462,27.24,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .turnin 27014 >>Turn in Hallowed Note while you are here
    .isQuestComplete 27014
    .target Seer Ravenfeather
step << Tauren Shaman
    .goto 462,27.54,27.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela Dawnstrider|r
    .turnin 3093 >>Turn in Rune-Inscribed Note while you are here
    .isQuestComplete 3093
    .target Meela Dawnstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,27.60,27.84
    >>Use the Ceremonial Offering at Greatmother Hawkwind's grave.
    .complete 24861,1 --Mulgore Offering Credit Bunny
    .target Mulgore Offering Credit Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,27.73,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .turnin 24861 >>Turn in Last Rites, First Rites
    .accept 23733 >>Accept Rites of the Earthmother
    .target Chief Hawkwind
step << Tauren Paladin/BloodElf Paladin
    .goto 462,27.15,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Helaku|r
    .turnin 27015 >>Turn in Consecrated Note
    .accept 27023 >>Accept The Way of the Sunwalkers
    .target Sunwalker Helaku
step << Tauren Paladin/BloodElf Paladin
    .goto 462,28.91,28.48
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 27023,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Tauren Paladin/BloodElf Paladin
    .goto 462,27.15,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Helaku|r
    .turnin 27023 >>Turn in The Way of the Sunwalkers
    .target Sunwalker Helaku
step << Tauren Warrior
    .goto 462,27.23,28.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .turnin 3091 >>Turn in Simple Note
    .accept 27020 >>Accept The First Lesson
    .target Harutt Thunderhorn
step << Tauren Warrior
    .goto 462,28.91,28.48
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 27020,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Tauren Warrior
    .goto 462,27.23,28.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt Thunderhorn|r
    .turnin 27020 >>Turn in The First Lesson
    .target Harutt Thunderhorn
step << Tauren Hunter
    .goto 462,28.11,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka Farshot|r
    .turnin 3092 >>Turn in Etched Note
    .accept 27021 >>Accept The Hunter's Path
    .target Lanka Farshot
step << Tauren Hunter
    .goto 462,28.91,28.48
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 27021,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Tauren Hunter
    .goto 462,28.11,27.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka Farshot|r
    .turnin 27021 >>Turn in The Hunter's Path
    .target Lanka Farshot
step << Tauren Priest
    .goto 462,27.24,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .turnin 27014 >>Turn in Hallowed Note
    .accept 27066 >>Accept Learning the Word
    .target Seer Ravenfeather
step << Tauren Priest
    #loop
    .goto 462,28.91,28.48,0
    .goto 462,28.91,28.48,40,0
    .goto 462,27.90,24.18,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 27066,1 --Training Dummy slain (5)
    .mob Training Dummy
step << Tauren Priest
    .goto 462,27.24,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Ravenfeather|r
    .turnin 27066 >>Turn in Learning the Word
    .target Seer Ravenfeather
step << Tauren Shaman
    .goto 462,27.54,27.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela Dawnstrider|r
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .accept 27027 >>Accept Primal Strike
    .target Meela Dawnstrider
step << Tauren Shaman
    .goto 462,28.91,28.48
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 27027,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Tauren Shaman
    .goto 462,27.54,27.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela Dawnstrider|r
    .turnin 27027 >>Turn in Primal Strike
    .target Meela Dawnstrider
step << Tauren Druid
    .goto 462,27.94,27.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart Mistrunner|r
    .turnin 3094 >>Turn in Verdant Note
    .accept 27067 >>Accept Moonfire
    .target Gart Mistrunner
step << Tauren Druid
    .goto 462,28.91,28.48
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 27067,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Tauren Druid
    .goto 462,27.94,27.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart Mistrunner|r
    .turnin 27067 >>Turn in Moonfire
    .target Gart Mistrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 462,15.63,30.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dyami Windsoar|r
    .turnin 23733 >>Turn in Rites of the Earthmother
    .accept 24215 >>Accept Rite of the Winds
    .target Dyami Windsoar
step
    +|cRXP_WARN_End of the Camp Narache route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Mulgore|r: Rite of the Winds << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
]])
