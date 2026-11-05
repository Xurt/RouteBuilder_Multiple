-- 81-81 Abyssal Depths: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Abyssal Depths.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 81-81 Abyssal Depths
--RouteBuilder:next
#next Zone Routes (Horde)\82-83 Deepholm

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,46.60,41.25,0
    .goto 204,46.60,41.25,40,0
    .goto 204,46.66,44.23,40,0
    .goto 204,48.91,47.21,40,0
    .goto 204,51.01,47.35,40,0
    .goto 204,52.18,48.76,40,0
    .goto 204,53.87,42.27,40,0
    .goto 204,55.18,46.24,40,0
    .goto 204,57.12,43.03,40,0
    .goto 204,58.39,44.09,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alliance Sea-Scout|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26124 >>Accept Secure Seabrush
    .unitscan Alliance Sea-Scout
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,57.12,43.03
    >>Kill |cRXP_ENEMY_Alliance Sea-Scouts|r
    .complete 26124,1 --Alliance Sea-Scout slain (7)
    .mob Alliance Sea-Scout
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,53.83,61.91
    >>Board the Verne from The Stygian Bounty and aid in securing Tenebrous Cavern.
    .complete 26221,2 --Ozumat
    .target Ozumat
    .isOnQuest 26221
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.42,61.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Jewels" Verne|r
    .turnin 26221 >>Turn in Full Circle
    .target Captain "Jewels" Verne
    .isQuestComplete 26221
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .accept 26122 >>Accept Environmental Awareness
    .target Fiasco Sizzlegrin
    .isQuestTurnedIn 26221 --any of: Full Circle
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.54,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Toldrek|r
    .turnin 26124 >>Turn in Secure Seabrush
    .target Blood Guard Toldrek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,52.42,59.46,0
    .goto 204,52.42,59.46,40,0
    .goto 204,56.08,59.64,40,0
    >>Kill |cRXP_ENEMY_Scourgut Remoras|r. Loot them for |cRXP_LOOT_Remora Oil|r
    .complete 26122,2 --Remora Oil (4)
    .mob Scourgut Remora
    .isOnQuest 26122
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,54.13,60.33,0
    .goto 204,54.13,60.33,40,0
    .goto 204,55.74,62.12,40,0
    >>Kill |cRXP_ENEMY_Seabrush Terrapins|r. Loot them for |cRXP_LOOT_Terrapin Oil|r
    .complete 26122,1 --Terrapin Oil (4)
    .mob Seabrush Terrapin
    .isOnQuest 26122
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,55.36,61.64,0
    .goto 204,55.36,61.64,40,0
    .goto 204,52.40,63.94,40,0
    >>Kill |cRXP_ENEMY_Spinescale Hammerheads|r. Loot them for |cRXP_LOOT_Hammerhead Oil|r
    .complete 26122,3 --Hammerhead Oil (4)
    .mob Spinescale Hammerhead
    .isOnQuest 26122
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .turnin 26122 >>Turn in Environmental Awareness
    .target Fiasco Sizzlegrin
    .isOnQuest 26122
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .accept 26126 >>Accept The Perfect Fuel
    .target Fiasco Sizzlegrin
    .isQuestTurnedIn 26122 --any of: Environmental Awareness
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.49,60.41
    >>Click the |cRXP_PICK_Fuel Sampling Station|r
    .complete 26126,1 --Fuel Sampling Station
    .isOnQuest 26126
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .turnin 26126 >>Turn in The Perfect Fuel
    .target Fiasco Sizzlegrin
    .isOnQuest 26126
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.42,61.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Jewels" Verne|r
    .accept 26086 >>Accept Orako
    .target Captain "Jewels" Verne
    .isQuestTurnedIn 26126 --any of: The Perfect Fuel
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .turnin 26086 >>Turn in Orako
    .target Orako
    .isOnQuest 26086
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .accept 26087 >>Accept "Glow-Juice"
    .target Orako
    .isQuestTurnedIn 26086 --any of: Orako
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,46.27,52.53,0
    .goto 204,46.27,52.53,40,0
    .goto 204,44.28,55.98,40,0
    >>Kill |cRXP_ENEMY_Pyreshell Scuttlers|r and |cRXP_ENEMY_Luxscale Groupers|r. Loot them for |cRXP_LOOT_Glow-Juice|r
    .complete 26087,1 --Glow-Juice (6)
    .mob Pyreshell Scuttler
    .mob Luxscale Grouper
    .isOnQuest 26087
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .turnin 26087 >>Turn in "Glow-Juice"
    .target Orako
    .isOnQuest 26087
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .accept 26088 >>Accept Here Fishie Fishie
    .accept 26089 >>Accept Die Fishman Die
    .target Orako
    .isQuestTurnedIn 26087 --any of: "Glow-Juice"
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,42.76,55.61,0
    .goto 204,42.76,55.61,40,0
    .goto 204,46.19,55.33,40,0
    .goto 204,47.39,51.35,40,0
    >>Kill |cRXP_ENEMY_Underlight Nibblers|r. Loot them for |cRXP_LOOT_Underlight Nibbler|r
    .complete 26088,1 --Underlight Nibbler (30)
    .mob Underlight Nibbler
    .isOnQuest 26088
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop26090x1
    >>|cRXP_LOOT_Enormous Eel Egg|r can drop from |cRXP_ENEMY_Coldlight Hunter|r, |cRXP_ENEMY_Coldlight Oracle|r. Use it to start the quest if you get one
    .collect 56812,1,26090 --Enormous Eel Egg (1)
    .accept 26090 >>Accept I Brought You This Egg
    .use 56812
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,46.36,53.22,0
    .goto 204,46.36,53.22,40,0
    .goto 204,47.01,55.50,40,0
    .goto 204,45.61,58.42,40,0
    >>Kill |cRXP_ENEMY_Coldlight Oracles|r
    .complete 26089,2 --Coldlight Oracle slain (4)
    .mob Coldlight Oracle
    .isOnQuest 26089
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop26090x1
    #loop
    .goto 204,46.23,55.37,0
    .goto 204,46.23,55.37,40,0
    .goto 204,45.55,58.42,40,0
    >>Kill |cRXP_ENEMY_Coldlight Hunters|r
    .complete 26089,1 --Coldlight Hunter slain (4)
    .mob Coldlight Hunter
    .isOnQuest 26089
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .turnin 26089 >>Turn in Die Fishman Die
    .target Orako
    .isOnQuest 26089
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .turnin 26088 >>Turn in Here Fishie Fishie
    .target Orako
    .isOnQuest 26088
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .turnin 26090 >>Turn in I Brought You This Egg
    .target Orako
    .isOnQuest 26090
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .accept 26092 >>Accept Orako's Report
    .target Orako
    .isQuestTurnedIn 26088 --Here Fishie Fishie
    .isQuestTurnedIn 26089 --Die Fishman Die
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .accept 26091 >>Accept Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo
    .target Orako
    .isQuestTurnedIn 26090 --any of: I Brought You This Egg
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,43.42,56.95
    >>Kill |cRXP_ENEMY_Weakened Great-Eels|r and |cRXP_ENEMY_Devious Great-Eels|r
    .complete 26091,2 --Weakened Great-Eel (8)
    .mob Weakened Great-Eel
    .mob Devious Great-Eel
    .isOnQuest 26091
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,43.42,56.95
    >>Use the Eel-splosive Device near a Devious Great-eel in Underlight Canyon, then defeat the Weakened Great-Eel.
    .complete 26091,1 --Devious Great-Eel
    .target Devious Great-Eel
    .isOnQuest 26091
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.42,61.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Jewels" Verne|r
    .turnin 26092 >>Turn in Orako's Report
    .target Captain "Jewels" Verne
    .isOnQuest 26092
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.45,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gertrude|r
    .accept 25974 >>Accept Sira'kess Slaying
    .accept 25980 >>Accept A Standard Day for Azrajar
    .target Sergeant Gertrude
    .isQuestTurnedIn 26092 --any of: Orako's Report
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .accept 25982 >>Accept Those Aren't Masks
    .target Fiasco Sizzlegrin
    .isQuestTurnedIn 26092 --any of: Orako's Report
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.54,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Toldrek|r
    .accept 25976 >>Accept Treasure Reclamation
    .target Blood Guard Toldrek
    .isQuestTurnedIn 26092 --any of: Orako's Report
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,52.45,21.29
    >>Plant the Horde Standard in Fathom-Caller Azrajar's corpse.
    .complete 25980,1 --Fathom-Caller Azrajar
    .target Fathom-Caller Azrajar
    .isOnQuest 25980
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,51.05,16.93,0
    .goto 204,51.05,16.93,40,0
    .goto 204,48.69,19.28,40,0
    >>Kill |cRXP_ENEMY_Sira'kess Sea Witches|r, |cRXP_ENEMY_Sira'kess Tide Priestess|r, |cRXP_ENEMY_Fathom-Caller Azrajars|r and |cRXP_ENEMY_Sira'kess Guardians|r
    .complete 25974,1 --Sira'kess Sea Witch (8)
    .mob Sira'kess Sea Witch
    .mob Sira'kess Tide Priestess
    .mob Fathom-Caller Azrajar
    .mob Sira'kess Guardian
    .isOnQuest 25974
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,50.48,20.94,0
    .goto 204,50.48,20.94,40,0
    .goto 204,47.32,17.76,40,0
    .goto 204,46.23,14.56,40,0
    >>Kill |cRXP_ENEMY_Merciless Ones|r and |cRXP_ENEMY_Taken Gilblins|r. Loot them for |cRXP_LOOT_Merciless Head|r
    .complete 25982,1 --Merciless Head (6)
    .mob Merciless One
    .mob Taken Gilblin
    .isOnQuest 25982
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,41.98,23.60,0
    .goto 204,41.98,23.60,40,0
    .goto 204,41.44,27.29,40,0
    .goto 204,37.51,24.41,40,0
    >>Kill |cRXP_ENEMY_Deepfin Scroungers|r. Loot them for |cRXP_LOOT_Deepfin Plunder|r. It can also be picked up from |cRXP_PICK_Deepfin Plunder|r on the ground
    .complete 25976,1 --Deepfin Plunder (6)
    .mob Deepfin Scrounger
    .isOnQuest 25976
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.86,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orako|r
    .turnin 26091 >>Turn in Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo
    .target Orako
    .isOnQuest 26091
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.45,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gertrude|r
    .turnin 25974 >>Turn in Sira'kess Slaying
    .target Sergeant Gertrude
    .isOnQuest 25974
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.45,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gertrude|r
    .turnin 25980 >>Turn in A Standard Day for Azrajar
    .target Sergeant Gertrude
    .isOnQuest 25980
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .turnin 25982 >>Turn in Those Aren't Masks
    .target Fiasco Sizzlegrin
    .isOnQuest 25982
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .accept 25988 >>Accept Put It On
    .target Fiasco Sizzlegrin
    .isQuestTurnedIn 25982 --any of: Those Aren't Masks
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>Witness what occurs when you place the Merciless One on your head.
    .complete 25988,1 --Merciless One in Control of You
    .isOnQuest 25988
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .turnin 25988 >>Turn in Put It On
    .target Fiasco Sizzlegrin
    .isOnQuest 25988
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.46,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiasco Sizzlegrin|r
    .accept 25984 >>Accept Promontory Point
    .target Fiasco Sizzlegrin
    .isQuestTurnedIn 25988 --any of: Put It On
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.54,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Toldrek|r
    .turnin 25976 >>Turn in Treasure Reclamation
    .target Blood Guard Toldrek
    .isOnQuest 25976
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26072 >>Accept Into the Totem
    .unitscan Erunak Stonespeaker
    .isQuestTurnedIn 25987,25988 --any of: Put It On, Put It On
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.66,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 25984 >>Turn in Promontory Point
    .target Legionnaire Nazgrim
    .isOnQuest 25984
step
    .goto 204,40.92,35.92
    >>Kill |cRXP_ENEMY_Faceless Defilers|r
    .complete 26072,1 --Faceless Defiler (5)
    .mob Faceless Defiler
    .isOnQuest 26072
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26072 >>Turn in Into the Totem
    .unitscan Erunak Stonespeaker
    .isOnQuest 26072
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26111 >>Accept ... It Will Come
    .unitscan Erunak Stonespeaker
    .isQuestTurnedIn 26072 --any of: Into the Totem
    .xp <80,1
step
    .goto 204,51.63,60.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26096 >>Accept Scalding Shrooms
    .unitscan Wavespeaker Tulra
    .isQuestTurnedIn 25987,25988 --any of: Put It On, Put It On
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.66,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .accept 26057 >>Accept The Wavespeaker
    .accept 26071 >>Accept Clearing the Defiled
    .target Legionnaire Nazgrim
    .isQuestTurnedIn 25988 --any of: Put It On
    .xp <80,1
step
    #loop
    .goto 204,42.20,33.90,0
    .goto 204,42.20,33.90,40,0
    .goto 204,43.60,32.95,40,0
    >>Pick up |cRXP_PICK_Scalding Shroom|r from the ground
    .complete 26096,1 --Scalding Shroom (5)
    .isOnQuest 26096
step
    .goto 204,47.14,27.39
    >>Kill |cRXP_ENEMY_Ick'thys the Unfathomable|r and loot |cRXP_LOOT_The Brain of the Unfathomable|r
    .complete 26111,1 --The Brain of the Unfathomable (1)
    .mob Ick'thys the Unfathomable
    .isOnQuest 26111
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,48.65,27.59,0
    .goto 204,48.65,27.59,40,0
    .goto 204,44.98,26.31,40,0
    >>Kill |cRXP_ENEMY_Chasm Stalkers|r, |cRXP_ENEMY_Deep Remoras|r and |cRXP_ENEMY_Crushing Eels|r
    .complete 26071,1 --Chasm Stalker (8)
    .mob Chasm Stalker
    .mob Deep Remora
    .mob Crushing Eel
    .isOnQuest 26071
step
    .goto 204,51.63,60.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Tulra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26096 >>Turn in Scalding Shrooms
    .unitscan Wavespeaker Tulra
    .isOnQuest 26096
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26111 >>Turn in ... It Will Come
    .unitscan Erunak Stonespeaker
    .isOnQuest 26111
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26130 >>Accept Unplug L'ghorek
    .unitscan Erunak Stonespeaker
    .isQuestTurnedIn 26111 --any of: ... It Will Come
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.66,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .accept 26133 >>Accept Fiends from the Netherworld
    .target Legionnaire Nazgrim
    .isQuestTurnedIn 26111 --any of: ... It Will Come
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.66,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 26071 >>Turn in Clearing the Defiled
    .target Legionnaire Nazgrim
    .isOnQuest 26071
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,37.58,49.20,0
    .goto 204,37.58,49.20,40,0
    .goto 204,36.58,51.81,40,0
    >>Kill |cRXP_ENEMY_Nether Fiends|r
    .complete 26133,1 --Nether Fiend slain (8)
    .mob Nether Fiend
    .isOnQuest 26133
step
    .goto 204,34.60,54.45
    >>Kill |cRXP_ENEMY_Sku'Bu|r
    .complete 26130,2 --Sku'Bu slain (1)
    .mob Sku'Bu
    .isOnQuest 26130
step
    .goto 204,29.59,52.99
    >>Kill |cRXP_ENEMY_Neph'Lahim|r
    .complete 26130,3 --Neph'Lahim slain (1)
    .mob Neph'Lahim
    .isOnQuest 26130
step
    .goto 204,36.30,47.00
    >>Kill |cRXP_ENEMY_Ur'Goz|r
    .complete 26130,1 --Ur'Goz slain (1)
    .mob Ur'Goz
    .isOnQuest 26130
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,42.66,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 26133 >>Turn in Fiends from the Netherworld
    .target Legionnaire Nazgrim
    .isOnQuest 26133
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26130 >>Turn in Unplug L'ghorek
    .unitscan Erunak Stonespeaker
    .isOnQuest 26130
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26140 >>Accept Communing with the Ancient
    .unitscan Erunak Stonespeaker
    .isQuestTurnedIn 26130 --any of: Unplug L'ghorek
    .xp <80,1
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26140 >>Turn in Communing with the Ancient
    .target L'ghorek
    .isOnQuest 26140
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .accept 26141 >>Accept Runestones of Binding
    .accept 26142 >>Accept Ascend No More!
    .target L'ghorek
    .isQuestTurnedIn 26140 --any of: Communing with the Ancient
    .xp <80,1
step
    .goto 204,34.59,62.02
    >>Click the |cRXP_PICK_Ancient Conduit|r
    .complete 26142,1 --Ancient Conduit
    .isOnQuest 26142
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 204,33.60,64.37,0
    .goto 204,33.60,64.37,40,0
    .goto 204,32.04,64.44,40,0
    >>Rescue 5 Horde Prisoners.
    .complete 26149,1 --Horde Prisoner (5)
    .target Horde Prisoner
    .isOnQuest 26149
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop26149x1
    >>|cRXP_LOOT_Twilight Cage Key|r can drop from |cRXP_ENEMY_Twilight Champion|r, |cRXP_ENEMY_Twilight Candidate|r. Use it to start the quest if you get one
    .collect 57118,1,26149 --Twilight Cage Key (1)
    .accept 26149 >>Accept Prisoners
    .use 57118
step
    #label Drop26149x1
    #loop
    .goto 204,34.59,64.60,0
    .goto 204,34.59,64.60,40,0
    .goto 204,32.51,61.57,40,0
    >>Kill |cRXP_ENEMY_Twilight Candidates|r. Loot them for |cRXP_LOOT_Runestone of Binding|r
    .complete 26141,1 --Runestone of Binding (7)
    .mob Twilight Candidate
    .isOnQuest 26141
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26141 >>Turn in Runestones of Binding
    .target L'ghorek
    .isOnQuest 26141
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26149 >>Turn in Prisoners
    .target L'ghorek
    .isOnQuest 26149
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26142 >>Turn in Ascend No More!
    .target L'ghorek
    .isOnQuest 26142
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .accept 26154 >>Accept Twilight Extermination
    .target L'ghorek
    .isQuestTurnedIn 26141 --Runestones of Binding
    .isQuestTurnedIn 26142 --Ascend No More!
    .xp <80,1
step
    #loop
    .goto 204,36.57,53.18,0
    .goto 204,36.57,53.18,40,0
    .goto 204,33.89,50.26,40,0
    .goto 204,31.09,52.60,40,0
    >>Kill |cRXP_ENEMY_Faceless Overseers|r
    .complete 26154,3 --Faceless Overseer (10)
    .mob Faceless Overseer
    .isOnQuest 26154
step
    .goto 204,34.83,54.02
    >>Interact with |cRXP_FRIENDLY_Bound Torrent|r
    .complete 26154,1 --Bound Torrent
    .target Bound Torrent
    .isOnQuest 26154
step
    #loop
    .goto 204,34.77,52.13,0
    .goto 204,34.77,52.13,40,0
    .goto 204,35.97,54.86,40,0
    >>Kill |cRXP_ENEMY_Twilight Devotees|r
    .complete 26154,2 --Twilight Devotee (50)
    .mob Twilight Devotee
    .isOnQuest 26154
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26154 >>Turn in Twilight Extermination
    .target L'ghorek
    .isOnQuest 26154
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .accept 26143 >>Accept All that Rises
    .target L'ghorek
    .isQuestTurnedIn 26154 --any of: Twilight Extermination
    .xp <80,1
step
    .goto 204,33.10,55.80
    >>Kill |cRXP_ENEMY_Hallazeal the Ascended|r
    .complete 26143,1 --Hallazeal the Ascended slain (1)
    .mob Hallazeal the Ascended
    .isOnQuest 26143
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26143 >>Turn in All that Rises
    .target L'ghorek
    .isOnQuest 26143
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .accept 26182 >>Accept Back to the Tenebrous Cavern
    .target L'ghorek
    .isQuestTurnedIn 26143 --any of: All that Rises
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26182 >>Turn in Back to the Tenebrous Cavern
    .unitscan Erunak Stonespeaker
    .isOnQuest 26182
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26194 >>Accept Defending the Rift
    .unitscan Erunak Stonespeaker
    .isQuestTurnedIn 26182 --any of: Back to the Tenebrous Cavern
    .xp <80,1
step
    .goto 204,52.61,27.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r
    .accept 26065 >>Accept Free Wil'hai
    .target Wavespeaker Valoren
    .isQuestTurnedIn 26019,26090 --any of: Enormous Eel Egg, I Brought You This Egg
    .xp <80,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,52.61,27.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r
    .turnin 26057 >>Turn in The Wavespeaker
    .target Wavespeaker Valoren
    .isOnQuest 26057
step
    .goto 204,56.31,26.93
    >>Slay all of the Tentacle Horrors to free Wil'hai.
    .complete 26065,1 --Wil'hai
    .target Wil'hai
    .isOnQuest 26065
step
    .goto 204,52.61,27.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r
    .turnin 26065 >>Turn in Free Wil'hai
    .target Wavespeaker Valoren
    .isOnQuest 26065
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,69.57,34.79
    >>Fight in the Battle for the Abyssal Breach
    .complete 26194,1 --Fight in the Battle for the Abyssal Breach
    .isOnQuest 26194
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 204,69.76,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legionnaire Nazgrim|r
    .turnin 26194 >>Turn in Defending the Rift
    .target Legionnaire Nazgrim
    .isOnQuest 26194
step
    +|cRXP_WARN_End of the Abyssal Depths route.|r
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
