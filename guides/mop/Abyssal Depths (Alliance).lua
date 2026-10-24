-- 81-81 Abyssal Depths: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Abyssal Depths.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 81-81 Abyssal Depths
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,53.83,61.91
    >>Board the Pincer X2 from Voldrin's Hold and aid in securing Darkbreak Cove.
    .complete 26219,2 --Ozumat
    .target Ozumat
    .isOnQuest 26219
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,54.44,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Glovaal|r
    .turnin 26219 >>Turn in Full Circle
    .target Captain Glovaal
    .isQuestComplete 26219
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .accept 26103 >>Accept Bio-Fuel
    .target Engineer Hexascrub
    .isQuestTurnedIn 26219 --any of: Full Circle
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,55.74,62.12,0
    .goto 204,55.74,62.12,40,0
    .goto 204,54.13,60.33,40,0
    >>Kill |cRXP_ENEMY_Seabrush Terrapins|r. Loot them for |cRXP_LOOT_Terrapin Oil|r
    .complete 26103,1 --Terrapin Oil (4)
    .mob Seabrush Terrapin
    .isOnQuest 26103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,56.08,59.64,0
    .goto 204,56.08,59.64,40,0
    .goto 204,52.42,59.46,40,0
    >>Kill |cRXP_ENEMY_Scourgut Remoras|r. Loot them for |cRXP_LOOT_Remora Oil|r
    .complete 26103,2 --Remora Oil (4)
    .mob Scourgut Remora
    .isOnQuest 26103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,52.40,63.94,0
    .goto 204,52.40,63.94,40,0
    .goto 204,55.36,61.64,40,0
    >>Kill |cRXP_ENEMY_Spinescale Hammerheads|r. Loot them for |cRXP_LOOT_Hammerhead Oil|r
    .complete 26103,3 --Hammerhead Oil (4)
    .mob Spinescale Hammerhead
    .isOnQuest 26103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .turnin 26103 >>Turn in Bio-Fuel
    .target Engineer Hexascrub
    .isOnQuest 26103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .accept 26106 >>Accept Fuel-ology 101
    .target Engineer Hexascrub
    .isQuestTurnedIn 26103 --any of: Bio-Fuel
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,56.27,61.71,0
    .goto 204,56.27,61.71,40,0
    .goto 204,55.84,64.59,40,0
    .goto 204,52.10,59.36,40,0
    .goto 204,52.80,63.82,40,0
    .goto 204,49.56,61.46,40,0
    .goto 204,47.12,69.78,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hellscream Seadog|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26105 >>Accept Claim Korthun's End
    .unitscan Hellscream Seadog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,52.08,62.22
    >>Kill |cRXP_ENEMY_Hellscream Seadogs|r
    .complete 26105,1 --Hellscream Seadog slain (7)
    .mob Hellscream Seadog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,51.49,60.41
    >>Click the |cRXP_PICK_Fuel Sampling Station|r
    .complete 26106,1 --Fuel Sampling Station
    .isOnQuest 26106
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .turnin 26106 >>Turn in Fuel-ology 101
    .target Engineer Hexascrub
    .isOnQuest 26106
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.61,73.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorlan Trueblade|r
    .turnin 26105 >>Turn in Claim Korthun's End
    .target Jorlan Trueblade
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,54.44,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Glovaal|r
    .accept 26014 >>Accept The Brothers Digsong
    .target Captain Glovaal
    .isQuestTurnedIn 26106 --any of: Fuel-ology 101
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .turnin 26014 >>Turn in The Brothers Digsong
    .target Humphrey Digsong
    .isOnQuest 26014
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .accept 26015 >>Accept Phosphora Hunting
    .target Humphrey Digsong
    .isQuestTurnedIn 26014 --any of: The Brothers Digsong
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,46.27,52.53,0
    .goto 204,46.27,52.53,40,0
    .goto 204,44.28,55.98,40,0
    >>Kill |cRXP_ENEMY_Pyreshell Scuttlers|r and |cRXP_ENEMY_Luxscale Groupers|r. Loot them for |cRXP_LOOT_Underlight Phosphora|r
    .complete 26015,1 --Underlight Phosphora (6)
    .mob Pyreshell Scuttler
    .mob Luxscale Grouper
    .isOnQuest 26015
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .turnin 26015 >>Turn in Phosphora Hunting
    .target Humphrey Digsong
    .isOnQuest 26015
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .accept 26017 >>Accept A Lure
    .accept 26018 >>Accept Coldlights Out
    .target Humphrey Digsong
    .isQuestTurnedIn 26015 --any of: Phosphora Hunting
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop26019x1
    >>|cRXP_LOOT_Enormous Eel Egg|r can drop from |cRXP_ENEMY_Coldlight Hunter|r, |cRXP_ENEMY_Coldlight Oracle|r. Use it to start the quest if you get one
    .collect 56571,1,26019 --Enormous Eel Egg (1)
    .accept 26019 >>Accept Enormous Eel Egg
    .use 56571
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,46.36,53.22,0
    .goto 204,46.36,53.22,40,0
    .goto 204,47.01,55.50,40,0
    .goto 204,45.61,58.42,40,0
    >>Kill |cRXP_ENEMY_Coldlight Oracles|r
    .complete 26018,2 --Coldlight Oracle slain (4)
    .mob Coldlight Oracle
    .isOnQuest 26018
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop26019x1
    #loop
    .goto 204,46.23,55.37,0
    .goto 204,46.23,55.37,40,0
    .goto 204,45.55,58.42,40,0
    >>Kill |cRXP_ENEMY_Coldlight Hunters|r
    .complete 26018,1 --Coldlight Hunter slain (4)
    .mob Coldlight Hunter
    .isOnQuest 26018
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,46.19,55.33,0
    .goto 204,46.19,55.33,40,0
    .goto 204,47.39,51.35,40,0
    .goto 204,42.76,55.61,40,0
    >>Kill |cRXP_ENEMY_Underlight Nibblers|r. Loot them for |cRXP_LOOT_Underlight Nibbler|r
    .complete 26017,1 --Underlight Nibbler (30)
    .mob Underlight Nibbler
    .isOnQuest 26017
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .turnin 26019 >>Turn in Enormous Eel Egg
    .target Humphrey Digsong
    .isOnQuest 26019
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .turnin 26017 >>Turn in A Lure
    .target Humphrey Digsong
    .isOnQuest 26017
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .accept 26021 >>Accept The Brothers Digsong 2: Eel-Egg-Trick Boogaloo
    .target Humphrey Digsong
    .isQuestTurnedIn 26019 --any of: Enormous Eel Egg
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .turnin 26018 >>Turn in Coldlights Out
    .target Humphrey Digsong
    .isOnQuest 26018
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .accept 26080 >>Accept One Last Favor
    .target Humphrey Digsong
    .isQuestTurnedIn 26017 --A Lure
    .isQuestTurnedIn 26018 --Coldlights Out
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,43.42,56.95
    >>Kill |cRXP_ENEMY_Weakened Great-Eels|r and |cRXP_ENEMY_Devious Great-Eels|r
    .complete 26021,2 --Weakened Great-Eel (8)
    .mob Weakened Great-Eel
    .mob Devious Great-Eel
    .isOnQuest 26021
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,43.42,56.95
    >>Use the Eel-splosive Device near a Devious Great-Eel in Underlight Canyon, then defeat the Weakened Great-Eel.
    .complete 26021,1 --Devious Great-Eel
    .target Devious Great-Eel
    .isOnQuest 26021
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,54.44,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Glovaal|r
    .turnin 26080 >>Turn in One Last Favor
    .target Captain Glovaal
    .isOnQuest 26080
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.46,72.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant "Foxy" Topper|r
    .accept 25977 >>Accept A Standard Day for Azrajar
    .accept 25950 >>Accept Sira'kess Slaying
    .target Lieutenant "Foxy" Topper
    .isQuestTurnedIn 26080 --any of: One Last Favor
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.61,73.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorlan Trueblade|r
    .accept 25975 >>Accept Treasure Reclamation
    .target Jorlan Trueblade
    .isQuestTurnedIn 26080 --any of: One Last Favor
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .accept 25981 >>Accept Those Aren't Masks
    .target Engineer Hexascrub
    .isQuestTurnedIn 26080 --any of: One Last Favor
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,47.36,49.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humphrey Digsong|r
    .turnin 26021 >>Turn in The Brothers Digsong 2: Eel-Egg-Trick Boogaloo
    .target Humphrey Digsong
    .isOnQuest 26021
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,43.50,21.04,0
    .goto 204,43.50,21.04,40,0
    .goto 204,42.46,18.01,40,0
    >>Kill |cRXP_ENEMY_Merciless Ones|r and |cRXP_ENEMY_Taken Gilblins|r. Loot them for |cRXP_LOOT_Merciless Head|r
    .complete 25981,1 --Merciless Head (6)
    .mob Merciless One
    .mob Taken Gilblin
    .isOnQuest 25981
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,44.36,16.21,0
    .goto 204,44.36,16.21,40,0
    .goto 204,42.97,14.80,40,0
    .goto 204,39.70,16.56,40,0
    >>Kill |cRXP_ENEMY_Deepfin Scroungers|r. Loot them for |cRXP_LOOT_Deepfin Plunder|r. It can also be picked up from |cRXP_PICK_Deepfin Plunder|r on the ground
    .complete 25975,1 --Deepfin Plunder (6)
    .mob Deepfin Scrounger
    .isOnQuest 25975
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,42.34,15.09,0
    .goto 204,42.34,15.09,40,0
    .goto 204,45.46,16.96,40,0
    >>Kill |cRXP_ENEMY_Sira'kess Sea Witches|r, |cRXP_ENEMY_Sira'kess Tide Priestess|r, |cRXP_ENEMY_Fathom-Caller Azrajars|r and |cRXP_ENEMY_Sira'kess Guardians|r
    .complete 25950,1 --Sira'kess Sea Witch (8)
    .mob Sira'kess Sea Witch
    .mob Sira'kess Tide Priestess
    .mob Fathom-Caller Azrajar
    .mob Sira'kess Guardian
    .isOnQuest 25950
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,52.45,21.29
    >>Plant the Alliance Standard in Fathom-Caller Azrajar's corpse.
    .complete 25977,1 --Fathom-Caller Azrajar
    .target Fathom-Caller Azrajar
    .isOnQuest 25977
step
    .goto 204,52.61,27.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r
    .accept 26065 >>Accept Free Wil'hai
    .target Wavespeaker Valoren
    .isQuestTurnedIn 26019,26090 --any of: Enormous Eel Egg, I Brought You This Egg
    .xp <80,1
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.61,73.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorlan Trueblade|r
    .turnin 25975 >>Turn in Treasure Reclamation
    .target Jorlan Trueblade
    .isOnQuest 25975
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .turnin 25981 >>Turn in Those Aren't Masks
    .target Engineer Hexascrub
    .isOnQuest 25981
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .accept 25987 >>Accept Put It On
    .target Engineer Hexascrub
    .isQuestTurnedIn 25981 --any of: Those Aren't Masks
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>Witness what occurs when you place the Merciless One on your head.
    .complete 25987,1 --Merciless One in Control of You
    .isOnQuest 25987
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .turnin 25987 >>Turn in Put It On
    .target Engineer Hexascrub
    .isOnQuest 25987
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.50,72.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Hexascrub|r
    .accept 25983 >>Accept Promontory Point
    .target Engineer Hexascrub
    .isQuestTurnedIn 25987 --any of: Put It On
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.46,72.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant "Foxy" Topper|r
    .turnin 25950 >>Turn in Sira'kess Slaying
    .target Lieutenant "Foxy" Topper
    .isOnQuest 25950
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,55.46,72.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant "Foxy" Topper|r
    .turnin 25977 >>Turn in A Standard Day for Azrajar
    .target Lieutenant "Foxy" Topper
    .isOnQuest 25977
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26072 >>Accept Into the Totem
    .unitscan Erunak Stonespeaker
    .isQuestTurnedIn 25987,25988 --any of: Put It On, Put It On
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,43.03,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .turnin 25983 >>Turn in Promontory Point
    .target Captain Taylor
    .isOnQuest 25983
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,43.03,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .accept 26056 >>Accept The Wavespeaker
    .accept 26070 >>Accept Clearing the Defiled
    .target Captain Taylor
    .isQuestTurnedIn 25987 --any of: Put It On
    .xp <80,1
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
step
    #loop
    .goto 204,41.33,37.02,0
    .goto 204,41.33,37.02,40,0
    .goto 204,43.60,32.95,40,0
    .goto 204,45.58,37.91,40,0
    >>Pick up |cRXP_PICK_Scalding Shroom|r from the ground
    .complete 26096,1 --Scalding Shroom (5)
    .isOnQuest 26096
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,52.90,34.56,0
    .goto 204,52.90,34.56,40,0
    .goto 204,49.67,29.42,40,0
    >>Kill |cRXP_ENEMY_Chasm Stalkers|r, |cRXP_ENEMY_Deep Remoras|r and |cRXP_ENEMY_Crushing Eels|r
    .complete 26070,1 --Chasm Stalker (8)
    .mob Chasm Stalker
    .mob Deep Remora
    .mob Crushing Eel
    .isOnQuest 26070
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,52.61,27.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavespeaker Valoren|r
    .turnin 26056 >>Turn in The Wavespeaker
    .target Wavespeaker Valoren
    .isOnQuest 26056
step
    .goto 204,47.14,27.39
    >>Kill |cRXP_ENEMY_Ick'thys the Unfathomable|r and loot |cRXP_LOOT_The Brain of the Unfathomable|r
    .complete 26111,1 --The Brain of the Unfathomable (1)
    .mob Ick'thys the Unfathomable
    .isOnQuest 26111
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,43.03,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .turnin 26070 >>Turn in Clearing the Defiled
    .target Captain Taylor
    .isOnQuest 26070
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,43.03,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .accept 26132 >>Accept Fiends from the Netherworld
    .target Captain Taylor
    .isQuestTurnedIn 26111 --any of: ... It Will Come
    .xp <80,1
step
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26130 >>Accept Unplug L'ghorek
    .unitscan Erunak Stonespeaker
    .isQuestTurnedIn 26111 --any of: ... It Will Come
    .xp <80,1
step
    .goto 204,36.30,47.00
    >>Kill |cRXP_ENEMY_Ur'Goz|r
    .complete 26130,1 --Ur'Goz slain (1)
    .mob Ur'Goz
    .isOnQuest 26130
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,34.85,44.70,0
    .goto 204,34.85,44.70,40,0
    .goto 204,33.77,49.35,40,0
    >>Kill |cRXP_ENEMY_Nether Fiends|r
    .complete 26132,1 --Nether Fiend slain (8)
    .mob Nether Fiend
    .isOnQuest 26132
step
    .goto 204,29.59,52.99
    >>Kill |cRXP_ENEMY_Neph'Lahim|r
    .complete 26130,3 --Neph'Lahim slain (1)
    .mob Neph'Lahim
    .isOnQuest 26130
step
    .goto 204,34.60,54.45
    >>Kill |cRXP_ENEMY_Sku'Bu|r
    .complete 26130,2 --Sku'Bu slain (1)
    .mob Sku'Bu
    .isOnQuest 26130
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,43.03,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Taylor|r
    .turnin 26132 >>Turn in Fiends from the Netherworld
    .target Captain Taylor
    .isOnQuest 26132
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
    #loop
    .goto 204,28.09,57.22,0
    .goto 204,28.09,57.22,40,0
    .goto 204,28.71,61.50,40,0
    >>Click the |cRXP_PICK_Ancient Conduit|r
    .complete 26142,1 --Ancient Conduit
    .isOnQuest 26142
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop26144x1
    >>|cRXP_LOOT_Twilight Cage Key|r can drop from |cRXP_ENEMY_Twilight Champion|r, |cRXP_ENEMY_Twilight Candidate|r. Use it to start the quest if you get one
    .collect 57102,1,26144 --Twilight Cage Key (1)
    .accept 26144 >>Accept Prisoners
    .use 57102
step
    #label Drop26144x1
    #loop
    .goto 204,28.12,56.53,0
    .goto 204,28.12,56.53,40,0
    .goto 204,28.95,59.85,40,0
    >>Kill |cRXP_ENEMY_Twilight Candidates|r. Loot them for |cRXP_LOOT_Runestone of Binding|r
    .complete 26141,1 --Runestone of Binding (7)
    .mob Twilight Candidate
    .isOnQuest 26141
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 204,28.27,56.05,0
    .goto 204,28.27,56.05,40,0
    .goto 204,27.08,54.66,40,0
    .goto 204,31.20,59.36,40,0
    >>Rescue 5 Alliance Prisoners.
    .complete 26144,1 --Alliance Prisoner (5)
    .target Alliance Prisoner
    .isOnQuest 26144
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26142 >>Turn in Ascend No More!
    .target L'ghorek
    .isOnQuest 26142
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26144 >>Turn in Prisoners
    .target L'ghorek
    .isOnQuest 26144
step
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .turnin 26141 >>Turn in Runestones of Binding
    .target L'ghorek
    .isOnQuest 26141
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
    .goto 204,34.77,52.13,0
    .goto 204,34.77,52.13,40,0
    .goto 204,35.97,54.86,40,0
    >>Kill |cRXP_ENEMY_Twilight Devotees|r
    .complete 26154,2 --Twilight Devotee (50)
    .mob Twilight Devotee
    .isOnQuest 26154
step
    .goto 204,34.83,54.02
    >>Interact with |cRXP_FRIENDLY_Bound Torrent|r
    .complete 26154,1 --Bound Torrent
    .target Bound Torrent
    .isOnQuest 26154
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,38.75,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_L'ghorek|r
    .accept 26181 >>Accept Back to Darkbreak Cove
    .target L'ghorek
    .isQuestTurnedIn 26143 --any of: All that Rises
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26181 >>Turn in Back to Darkbreak Cove
    .unitscan Erunak Stonespeaker
    .isOnQuest 26181
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,51.57,60.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erunak Stonespeaker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26193 >>Accept Defending the Rift
    .unitscan Erunak Stonespeaker
    .isQuestTurnedIn 26181 --any of: Back to Darkbreak Cove
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 204,69.57,34.79
    >>Fight in the Battle for the Abyssal Breach
    .complete 26193,1 --Fight in the Battle for the Abyssal Breach
    .isOnQuest 26193
step
    +|cRXP_WARN_End of the Abyssal Depths route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_another zone|r: Defending the Rift << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
