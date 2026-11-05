-- 81-81 Mount Hyjal: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Mount Hyjal.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 81-81 Mount Hyjal
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step
    #completewith next
    .zone 80 >>Travel to Moonglade
    .zoneskip 80
step << Druid
    .goto 80,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .turnin 28289 >>Turn in Moonglade Calls
    .target Loganaar
    .isOnQuest 28289
step << NightElf Druid/Worgen Druid
    .goto 80,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .turnin 27273 >>Turn in An Invitation from Moonglade
    .target Loganaar
    .isOnQuest 27273
step << NightElf Druid/Worgen Druid
    .goto 80,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .accept 27356 >>Accept The Circle's Future
    .target Loganaar
step << NightElf Druid/Worgen Druid
    .goto 80,53.34,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narianna|r
    .turnin 27356 >>Turn in The Circle's Future
    .target Narianna
    .isQuestComplete 27356
step
    .goto 80,36.18,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Remulos|r
    .turnin 13073 >>Turn in The Keeper's Favor
    .target Keeper Remulos
    .isOnQuest 13073
step
    .goto 80,36.18,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Remulos|r
    .accept 13074 >>Accept Hope Within the Emerald Nightmare
    .target Keeper Remulos
    .isQuestTurnedIn 13073 --any of: The Keeper's Favor
    .xp <77,1
step
    #loop
    .goto 80,34.31,39.60,0
    .goto 80,34.31,39.60,40,0
    .goto 80,32.66,41.31,40,0
    >>Pick up |cRXP_PICK_Emerald Acorn|r from the ground
    .complete 13074,1 --Emerald Acorn (3)
    .isOnQuest 13074
step
    .goto 80,36.18,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Remulos|r
    .turnin 13074 >>Turn in Hope Within the Emerald Nightmare
    .target Keeper Remulos
    .isOnQuest 13074
step
    .goto 80,36.18,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Remulos|r
    .accept 13075 >>Accept The Boon of Remulos
    .target Keeper Remulos
    .isQuestTurnedIn 13074 --any of: Hope Within the Emerald Nightmare
    .xp <77,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 80,45.47,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Windsong|r
    .turnin 27726 >>Turn in Hero's Call: Mount Hyjal!
    .target Emissary Windsong
    .isQuestComplete 27726
step
    .goto 80,45.47,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Windsong|r
    .accept 25316 >>Accept As Hyjal Burns
    .target Emissary Windsong
step
    #completewith next
    .zone 198 >>Leave Moonglade for Mount Hyjal
    .zoneskip 198
step
    .goto 198,64.06,22.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r
    .accept 25574 >>Accept Flames from Above
    .target Tholo Whitehoof
    .isQuestTurnedIn 25370 --any of: Inciting the Elements
    .xp <80,1
step
    .goto 198,62.05,24.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysera|r
    .turnin 25316 >>Turn in As Hyjal Burns
    .target Ysera
step
    .goto 198,44.18,46.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandunel Reedwind|r
    .target Jandunel Reedwind
    .home >>Set your Hearthstone to Jandunel Reedwind's inn
step
    .goto 198,55.77,15.14
    >>Seek the Twilight Encampment north of Nordrassil and use Tholo's Horn.
    .complete 25574,1 --Emerald Flameweaver
    .target Emerald Flameweaver
    .isOnQuest 25574
step
    .goto 198,64.06,22.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tholo Whitehoof|r
    .turnin 25574 >>Turn in Flames from Above
    .target Tholo Whitehoof
    .isOnQuest 25574
step
    .goto 198,47.73,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .accept 25319 >>Accept War on the Twilight's Hammer
    .target Malfurion Stormrage
    .isQuestTurnedIn 25317 --any of: Protect the World Tree
    .xp <80,1
step
    .goto 198,47.65,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windspeaker Tamila|r
    .accept 25472 >>Accept The Flameseer's Staff
    .target Windspeaker Tamila
    .isQuestTurnedIn 25317 --any of: Protect the World Tree
    .xp <80,1
step
    #loop
    .goto 198,47.82,29.48,0
    .goto 198,47.82,29.48,40,0
    .goto 198,43.85,28.68,40,0
    .goto 198,45.36,22.73,40,0
    >>Pick up |cRXP_PICK_Charred Staff Fragment|r from the ground
    .complete 25472,1 --Charred Staff Fragment (8)
    .isOnQuest 25472
step
    #loop
    .goto 198,46.02,25.05,0
    .goto 198,46.02,25.05,40,0
    .goto 198,47.94,29.85,40,0
    >>Kill |cRXP_ENEMY_Twilight Flamecallers|r
    .complete 25319,1 --Twilight Flamecaller slain (4)
    .mob Twilight Flamecaller
    .isOnQuest 25319
step
    #loop
    .goto 198,47.61,30.15,0
    .goto 198,47.61,30.15,40,0
    .goto 198,49.53,26.97,40,0
    .goto 198,48.35,34.00,40,0
    .goto 198,44.22,29.84,40,0
    >>Kill |cRXP_ENEMY_Twilight Vanquishers|r
    .complete 25319,2 --Twilight Vanquisher slain (10)
    .mob Twilight Vanquisher
    .isOnQuest 25319
step
    .goto 198,47.73,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 25319 >>Turn in War on the Twilight's Hammer
    .target Malfurion Stormrage
    .isOnQuest 25319
step
    .goto 198,47.73,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 25472 >>Turn in The Flameseer's Staff
    .target Malfurion Stormrage
    .isOnQuest 25472
step
    .goto 198,47.73,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .accept 25323 >>Accept Flamebreaker
    .target Malfurion Stormrage
    .isQuestTurnedIn 25472 --any of: The Flameseer's Staff
    .xp <80,1
step
    .goto 198,48.52,29.63
    >>Kill |cRXP_ENEMY_Unbound Flame Spirits|r
    .complete 25323,1 --Unbound Flame Spirit slain (30)
    .mob Unbound Flame Spirit
    .isOnQuest 25323
step
    .goto 198,47.73,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 25323 >>Turn in Flamebreaker
    .target Malfurion Stormrage
    .isOnQuest 25323
step
    .goto 198,47.73,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .accept 25464 >>Accept The Return of Baron Geddon
    .target Malfurion Stormrage
    .isQuestTurnedIn 25323 --any of: Flamebreaker
    .xp <80,1
step
    .goto 198,44.07,26.90
    >>Interact with |cRXP_FRIENDLY_Baron Geddon|r
    .complete 25464,1 --Baron Geddon
    .target Baron Geddon
    .isOnQuest 25464
step
    .goto 198,47.73,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 25464 >>Turn in The Return of Baron Geddon
    .target Malfurion Stormrage
    .isOnQuest 25464
step
    .goto 198,47.65,35.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windspeaker Tamila|r
    .accept 25430 >>Accept Emerald Allies
    .target Windspeaker Tamila
    .isQuestTurnedIn 25464 --any of: The Return of Baron Geddon
    .xp <80,1
step
    .goto 198,48.45,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alysra|r
    .turnin 25430 >>Turn in Emerald Allies
    .target Alysra
    .isOnQuest 25430
step
    .goto 198,48.45,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alysra|r
    .accept 25320 >>Accept The Captured Scout
    .target Alysra
    .isQuestTurnedIn 25430 --any of: Emerald Allies
    .xp <80,1
step
    .goto 198,44.50,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Larandia|r
    .turnin 25320 >>Turn in The Captured Scout
    .target Scout Larandia
    .isOnQuest 25320
step
    .goto 198,44.50,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Larandia|r
    .accept 25321 >>Accept Twilight Captivity
    .target Scout Larandia
    .isQuestTurnedIn 25320 --any of: The Captured Scout
    .xp <80,1
step
    .goto 198,44.88,22.02
    >>Kill |cRXP_ENEMY_Twilight Overseer|r and loot |cRXP_LOOT_Twilight Overseer's Key|r
    .complete 25321,1 --Twilight Overseer's Key (1)
    .mob Twilight Overseer
    .isOnQuest 25321
step
    .goto 198,44.50,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Larandia|r
    .turnin 25321 >>Turn in Twilight Captivity
    .target Scout Larandia
    .isOnQuest 25321
step
    .goto 198,44.50,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Larandia|r
    .accept 25424 >>Accept Return to Alysra
    .target Scout Larandia
    .isQuestTurnedIn 25321 --any of: Twilight Captivity
    .xp <80,1
step
    .goto 198,48.45,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alysra|r
    .turnin 25424 >>Turn in Return to Alysra
    .target Alysra
    .isOnQuest 25424
step
    .goto 198,48.45,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alysra|r
    .accept 25324 >>Accept A Prisoner of Interest
    .target Alysra
    .isQuestTurnedIn 25424 --any of: Return to Alysra
    .xp <80,1
step
    .goto 198,56.76,18.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .turnin 25324 >>Turn in A Prisoner of Interest
    .target Captain Saynna Stormrunner
    .isOnQuest 25324
step
    .goto 198,56.76,18.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Saynna Stormrunner|r
    .accept 25325 >>Accept Through the Dream
    .target Captain Saynna Stormrunner
    .isQuestTurnedIn 25324 --any of: A Prisoner of Interest
    .xp <80,1
step
    .goto 198,52.30,17.40
    >>Arch Druid Fandral Staghelm delivered
    .complete 25325,1 --Arch Druid Fandral Staghelm delivered
    .isOnQuest 25325
step
    .goto 198,52.12,17.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alysra|r
    .turnin 25325 >>Turn in Through the Dream
    .target Alysra
    .isOnQuest 25325
step
    .goto 198,52.12,17.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alysra|r
    .accept 25578 >>Accept Return to Nordrassil
    .target Alysra
    .isQuestTurnedIn 25325 --any of: Through the Dream
    .xp <80,1
step
    .goto 198,62.05,24.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysera|r
    .turnin 25578 >>Turn in Return to Nordrassil
    .target Ysera
    .isOnQuest 25578
step
    .goto 198,62.05,24.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysera|r
    .accept 25584 >>Accept The Return of the Ancients
    .target Ysera
    .isQuestTurnedIn 25578 --any of: Return to Nordrassil
    .xp <80,1
step
    .goto 198,35.69,19.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oomla Whitehorn|r
    .turnin 25584 >>Turn in The Return of the Ancients
    .target Oomla Whitehorn
    .isOnQuest 25584
step
    .goto 198,35.69,19.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oomla Whitehorn|r
    .accept 25255 >>Accept Harrying the Hunters
    .target Oomla Whitehorn
    .isQuestTurnedIn 25584 --any of: The Return of the Ancients
    .xp <80,1
step
    .goto 198,35.75,19.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadi Falaryn|r
    .accept 25233 >>Accept End of the Supply Line
    .accept 25234 >>Accept In the Rear With the Gear
    .target Jadi Falaryn
    .isQuestTurnedIn 25584 --any of: The Return of the Ancients
    .xp <80,1
step
    #loop
    .goto 198,37.99,22.90,0
    .goto 198,37.99,22.90,40,0
    .goto 198,34.10,24.85,40,0
    >>Kill |cRXP_ENEMY_Twilight Proveditors|r
    .complete 25233,1 --Twilight Proveditor slain (4)
    .mob Twilight Proveditor
    .isOnQuest 25233
step
    #loop
    .goto 198,35.20,23.24,0
    .goto 198,35.20,23.24,40,0
    .goto 198,32.62,25.79,40,0
    >>Pick up |cRXP_PICK_Twilight Supplies|r from the ground
    .complete 25234,1 --Twilight Supplies (36)
    .isOnQuest 25234
step
    #loop
    .goto 198,37.90,23.81,0
    .goto 198,37.90,23.81,40,0
    .goto 198,40.51,22.41,40,0
    >>Kill |cRXP_ENEMY_Twilight Hunters|r
    .complete 25255,1 --Twilight Hunter slain (6)
    .mob Twilight Hunter
    .isOnQuest 25255
step
    .goto 198,35.75,19.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadi Falaryn|r
    .turnin 25233 >>Turn in End of the Supply Line
    .target Jadi Falaryn
    .isOnQuest 25233
step
    .goto 198,35.75,19.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadi Falaryn|r
    .turnin 25234 >>Turn in In the Rear With the Gear
    .target Jadi Falaryn
    .isOnQuest 25234
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,35.75,19.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadi Falaryn|r
    .accept 25268 >>Accept The Voice of Goldrinn
    .target Jadi Falaryn
    .isQuestTurnedIn 25233 --any of: End of the Supply Line
    .xp <80,1
step
    .goto 198,35.69,19.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oomla Whitehorn|r
    .turnin 25255 >>Turn in Harrying the Hunters
    .target Oomla Whitehorn
    .isOnQuest 25255
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .turnin 25268 >>Turn in The Voice of Goldrinn
    .target Ian Duran
    .isOnQuest 25268
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .accept 25271 >>Accept Goldrinn's Ferocity
    .target Ian Duran
    .isQuestTurnedIn 25268 --any of: The Voice of Goldrinn
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 198,30.38,33.19,0
    .goto 198,30.38,33.19,40,0
    .goto 198,29.01,30.00,40,0
    .goto 198,26.39,31.06,40,0
    >>Kill |cRXP_ENEMY_Lycanthoth Vandals|r. Loot them for |cRXP_LOOT_Polluted Incense|r
    .complete 25271,1 --Polluted Incense (6)
    .mob Lycanthoth Vandal
    .isOnQuest 25271
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .turnin 25271 >>Turn in Goldrinn's Ferocity
    .target Ian Duran
    .isOnQuest 25271
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .accept 25273 >>Accept Lycanthoth the Corruptor
    .target Ian Duran
    .isQuestTurnedIn 25271 --any of: Goldrinn's Ferocity
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,32.39,37.26
    >>Kill |cRXP_ENEMY_Lycanthoth|r
    .complete 25273,1 --Lycanthoth slain (1)
    .mob Lycanthoth
    .isOnQuest 25273
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,32.33,37.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Goldrinn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25273 >>Turn in Lycanthoth the Corruptor
    .unitscan Spirit of Goldrinn
    .isOnQuest 25273
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,32.33,37.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Goldrinn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25280 >>Accept The Shrine Reclaimed
    .unitscan Spirit of Goldrinn
    .isQuestTurnedIn 25273 --any of: Lycanthoth the Corruptor
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .turnin 25280 >>Turn in The Shrine Reclaimed
    .target Ian Duran
    .isOnQuest 25280
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .accept 25278 >>Accept Cleaning House
    .target Ian Duran
    .isQuestTurnedIn 25273 --any of: Lycanthoth the Corruptor
    .xp <80,1
step
    .goto 198,30.29,31.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royce Duskwhisper|r
    .accept 25300 >>Accept The Eye of Twilight
    .target Royce Duskwhisper
    .isQuestTurnedIn 25272,25273 --any of: Lycanthoth the Corruptor, Lycanthoth the Corruptor
    .xp <80,1
step
    .goto 198,30.25,31.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rio Duran|r
    .accept 25297 >>Accept From the Mouth of Madness
    .target Rio Duran
    .isQuestTurnedIn 25272,25273 --any of: Lycanthoth the Corruptor, Lycanthoth the Corruptor
    .xp <80,1
step
    .goto 198,29.68,32.93
    >>Pick up |cRXP_PICK_Bitterblossom|r from the ground
    .complete 25297,2 --Bitterblossom (1)
    .isOnQuest 25297
step
    .goto 198,26.48,35.04
    >>Pick up |cRXP_PICK_Stonebloom|r from the ground
    .complete 25297,1 --Stonebloom (1)
    .isOnQuest 25297
step
    .goto 198,28.45,35.79
    >>Pick up |cRXP_PICK_Darkflame Ember|r from the ground
    .complete 25297,3 --Darkflame Ember (1)
    .isOnQuest 25297
step
    .goto 198,28.42,36.41
    >>Click the |cRXP_PICK_Twilight Cauldron|r
    .turnin 25297 >>Turn in From the Mouth of Madness
    .isOnQuest 25297
step
    .goto 198,28.42,36.41
    >>Click the |cRXP_PICK_Twilight Cauldron|r
    .accept 25298 >>Accept Free Your Mind, the Rest Follows
    .isQuestTurnedIn 25297 --any of: From the Mouth of Madness
    .xp <80,1
step
    .goto 198,27.19,35.19
    >>Click the |cRXP_PICK_Eye of Twilight|r
    .turnin 25300 >>Turn in The Eye of Twilight
    .isOnQuest 25300
step
    .goto 198,27.19,35.19
    >>Click the |cRXP_PICK_Eye of Twilight|r
    .accept 25301 >>Accept Mastering Puppets
    .isQuestTurnedIn 25300 --any of: The Eye of Twilight
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 198,28.84,35.96,0
    .goto 198,28.84,35.96,40,0
    .goto 198,27.26,39.02,40,0
    >>Kill |cRXP_ENEMY_Hovel Shadowcasters|r and |cRXP_ENEMY_Hovel Brutes|r
    .complete 25278,1 --Hovel Shadowcaster (8)
    .mob Hovel Shadowcaster
    .mob Hovel Brute
    .isOnQuest 25278
step
    .goto 198,27.23,40.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristoff Manheim|r
    .accept 25328 >>Accept Gar'gol's Gotta Go
    .target Kristoff Manheim
step
    .goto 198,26.47,38.50
    >>Open the |cRXP_PICK_Gar'gol's Personal Treasure Chest|r. Loot it for |cRXP_LOOT_Rusted Skull Key|r
    .complete 25328,1 --Rusted Skull Key (1)
step
    .goto 198,27.23,40.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristoff Manheim|r
    .turnin 25328 >>Turn in Gar'gol's Gotta Go while you are here
    .isQuestComplete 25328
    .target Kristoff Manheim
step
    .goto 198,25.81,41.67
    >>Click the |cRXP_PICK_The Twilight Apocrypha|r
    .turnin 25301 >>Turn in Mastering Puppets
    .isOnQuest 25301
step
    .goto 198,25.81,41.67
    >>Click the |cRXP_PICK_The Twilight Apocrypha|r
    .accept 25303 >>Accept Elementary!
    .isQuestTurnedIn 25301 --any of: Mastering Puppets
    .xp <80,1
step
    .goto 198,25.96,41.81
    >>Kill |cRXP_ENEMY_Crucible of Fire|r
    .complete 25303,3 --Crucible of Fire slain (1)
    .mob Crucible of Fire
    .isOnQuest 25303
step
    .goto 198,25.69,41.66
    >>Kill |cRXP_ENEMY_Crucible of Earth|r
    .complete 25303,1 --Crucible of Earth slain (1)
    .mob Crucible of Earth
    .isOnQuest 25303
step
    .goto 198,25.80,41.83
    >>Kill |cRXP_ENEMY_Crucible of Air|r
    .complete 25303,2 --Crucible of Air slain (1)
    .mob Crucible of Air
    .isOnQuest 25303
step
    .goto 198,25.96,41.61
    >>Kill |cRXP_ENEMY_Crucible of Water|r
    .complete 25303,4 --Crucible of Water slain (1)
    .mob Crucible of Water
    .isOnQuest 25303
step
    .goto 198,25.81,41.67
    >>Click the |cRXP_PICK_The Twilight Apocrypha|r
    .turnin 25303 >>Turn in Elementary!
    .isOnQuest 25303
step
    .goto 198,25.81,41.67
    >>Click the |cRXP_PICK_The Twilight Apocrypha|r
    .accept 25312 >>Accept Return to Duskwhisper
    .isQuestTurnedIn 25303 --any of: Elementary!
    .xp <80,1
step
    #loop
    .goto 198,26.75,38.79,0
    .goto 198,26.75,38.79,40,0
    .goto 198,28.12,35.55,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twilight Servitor|r
    .complete 25298,1 --Twilight Servitor (8)
    .target Twilight Servitor
    .isOnQuest 25298
step
    .goto 198,27.23,40.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kristoff Manheim|r
    .turnin 25328 >>Turn in Gar'gol's Gotta Go
    .accept 25332 >>Accept Get Me Outta Here!
    .target Kristoff Manheim
step
    .goto 198,27.10,35.90
    >>Kristoff Escorted Out
    .complete 25332,1 --Kristoff Escorted Out
step
    .goto 198,30.29,31.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royce Duskwhisper|r
    .turnin 25332 >>Turn in Get Me Outta Here!
    .target Royce Duskwhisper
step
    .goto 198,30.29,31.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Royce Duskwhisper|r
    .turnin 25312 >>Turn in Return to Duskwhisper
    .target Royce Duskwhisper
    .isOnQuest 25312
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .turnin 25278 >>Turn in Cleaning House
    .target Ian Duran
    .isOnQuest 25278
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .accept 25352 >>Accept Sweeping the Shelf
    .accept 25353 >>Accept Lightning in a Bottle
    .target Ian Duran
    .isQuestTurnedIn 25278 --any of: Cleaning House
    .xp <80,1
step
    .goto 198,30.25,31.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rio Duran|r
    .turnin 25298 >>Turn in Free Your Mind, the Rest Follows
    .target Rio Duran
    .isOnQuest 25298
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.38,38.72
    >>Open the |cRXP_PICK_Lightning Channel|r. Loot it for |cRXP_LOOT_Charged Condenser Jar|r
    .complete 25353,1 --Charged Condenser Jar (1)
    .isOnQuest 25353
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,32.33,37.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Goldrinn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25353 >>Turn in Lightning in a Bottle
    .unitscan Spirit of Goldrinn
    .isOnQuest 25353
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,32.33,37.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Goldrinn|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25618 >>Accept Into the Maw!
    .unitscan Spirit of Goldrinn
    .isQuestTurnedIn 25353 --any of: Lightning in a Bottle
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 198,27.89,39.95,0
    .goto 198,27.89,39.95,40,0
    .goto 198,25.09,35.43,40,0
    >>Kill |cRXP_ENEMY_Twilight Stormcallers|r
    .complete 25352,1 --Twilight Stormcaller slain (8)
    .mob Twilight Stormcaller
    .isOnQuest 25352
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,26.25,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Olafson|r
    .turnin 25618 >>Turn in Into the Maw!
    .target Jordan Olafson
    .isOnQuest 25618
step
    .goto 198,26.25,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Olafson|r
    .accept 25575 >>Accept Forged of Shadow and Flame
    .accept 25577 >>Accept Crushing the Cores
    .target Jordan Olafson
step
    #completewith Along103
    >>As you go: Click the |cRXP_PICK_Twilight Arms Crate|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25575,1 --Twilight Arms Crate
step
    #completewith Along100
    >>As you go: Kill |cRXP_ENEMY_Searing Guardian|r and loot |cRXP_LOOT_Smoldering Core|r. |cRXP_WARN_Anything left is finished later|r
    .collect 55123,1,25577,1 --Smoldering Core (1)
    .mob Searing Guardian
step
    #label Along100
    .goto 198,26.32,41.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yargra Blackscar|r
    .accept 25576 >>Accept Rage of the Wolf Ancient
    .target Yargra Blackscar
step
    #completewith Along103
    >>As you go: Kill |cRXP_ENEMY_Dark Iron Laborers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25576,1 --Dark Iron Laborer slain (12)
    .mob Dark Iron Laborer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 198,27.29,39.76,0
    .goto 198,27.29,39.76,40,0
    .goto 198,29.92,39.33,40,0
    >>Kill |cRXP_ENEMY_Howling Riftdwellers|r
    .complete 25352,2 --Howling Riftdweller slain (5)
    .mob Howling Riftdweller
    .isOnQuest 25352
step
    #loop
    .goto 198,29.39,39.96,0
    .goto 198,29.39,39.96,40,0
    .goto 198,29.93,43.65,40,0
    >>Kill |cRXP_ENEMY_Searing Guardian|r and loot |cRXP_LOOT_Smoldering Core|r
    .collect 55123,1,25577,1 --Smoldering Core (1)
    .mob Searing Guardian
step
    #label Along103
    .goto 198,30.34,44.19
    >>Click the |cRXP_PICK_Twilight Anvil|r
    .complete 25577,1 --Twilight Anvil
step
    #loop
    .goto 198,29.98,43.91,0
    .goto 198,29.98,43.91,40,0
    .goto 198,28.97,40.78,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Laborers|r
    >>Click the |cRXP_PICK_Twilight Arms Crate|r
    .complete 25576,1 --Dark Iron Laborer slain (12)
    .complete 25575,1 --Twilight Arms Crate
    .mob Dark Iron Laborer
step
    .goto 198,26.32,41.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yargra Blackscar|r
    .turnin 25576 >>Turn in Rage of the Wolf Ancient
    .target Yargra Blackscar
step
    .goto 198,26.25,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Olafson|r
    .turnin 25575 >>Turn in Forged of Shadow and Flame
    .turnin 25577 >>Turn in Crushing the Cores
    .accept 25599 >>Accept Cindermaul, the Portal Master
    .target Jordan Olafson
step
    .goto 198,30.74,41.70
    >>Kill |cRXP_ENEMY_Cindermaul|r
    >>Kill |cRXP_ENEMY_Cindermaul|r and loot |cRXP_LOOT_Tome of Openings|r. It can also be picked up from |cRXP_PICK_Battered Stone Chest|r on the ground
    .complete 25599,1 --Cindermaul slain (1)
    .complete 25599,2 --Tome of Openings (1)
    .mob Cindermaul
step
    .goto 198,26.25,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Olafson|r
    .turnin 25599 >>Turn in Cindermaul, the Portal Master
    .accept 25600 >>Accept Forgemaster Pyrendius
    .target Jordan Olafson
step
    .goto 198,31.91,46.28
    >>Kill |cRXP_ENEMY_Forgemaster Pyrendius|r
    .complete 25600,1 --Forgemaster Pyrendius slain (1)
    .mob Forgemaster Pyrendius
step
    .goto 198,26.25,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Olafson|r
    .turnin 25600 >>Turn in Forgemaster Pyrendius
    .accept 25611 >>Accept Return from the Firelands << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Jordan Olafson
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .accept 25623 >>Accept Into the Maw!
    .target Ian Duran
    .isQuestTurnedIn 25353 --any of: Lightning in a Bottle
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .turnin 25352 >>Turn in Sweeping the Shelf
    .target Ian Duran
    .isOnQuest 25352
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,30.12,31.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Duran|r
    .turnin 25611 >>Turn in Return from the Firelands
    .target Ian Duran
step
    .goto 198,30.25,31.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rio Duran|r
    .accept 25630 >>Accept The Fires of Mount Hyjal
    .target Rio Duran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 198,26.25,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Olafson|r
    .turnin 25623 >>Turn in Into the Maw!
    .target Jordan Olafson
    .isOnQuest 25623
step
    .goto 198,19.03,37.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matoclaw|r
    .accept 25404 >>Accept If You're Not Against Us...
    .target Matoclaw
    .isQuestTurnedIn 25584 --any of: The Return of the Ancients
    .xp <80,1
step
    .goto 198,19.22,37.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .accept 25385 >>Accept Save the Wee Animals
    .target Mylune
    .isQuestTurnedIn 25584 --any of: The Return of the Ancients
    .xp <80,1
step
    .goto 198,18.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laina Nightsky|r
    .turnin 25630 >>Turn in The Fires of Mount Hyjal
    .target Laina Nightsky
step
    .goto 198,18.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laina Nightsky|r
    .accept 25381 >>Accept Fighting Fire With ... Anything
    .accept 25382 >>Accept Disrupting the Rituals
    .target Laina Nightsky
    .isQuestTurnedIn 25584 --any of: The Return of the Ancients
    .xp <80,1
step
    .goto 198,22.27,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrus Blackhorn|r
    .complete 25404,1 --Tyrus Blackhorn
    .target Tyrus Blackhorn
    .isOnQuest 25404
step
    .goto 198,22.27,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrus Blackhorn|r
    .turnin 25404 >>Turn in If You're Not Against Us...
    .target Tyrus Blackhorn
    .isOnQuest 25404
step
    .goto 198,22.27,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrus Blackhorn|r
    .accept 25408 >>Accept Seeds of Their Demise
    .target Tyrus Blackhorn
    .isQuestTurnedIn 25404 --any of: If You're Not Against Us...
    .xp <80,1
step
    #loop
    .goto 198,21.81,45.85,0
    .goto 198,21.81,45.85,40,0
    .goto 198,21.31,42.53,40,0
    >>Kill |cRXP_ENEMY_Wailing Weeds|r. Loot them for |cRXP_LOOT_Bileberry|r
    .complete 25408,1 --Bileberry (8)
    .mob Wailing Weed
    .isOnQuest 25408
step
    .goto 198,22.27,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrus Blackhorn|r
    .turnin 25408 >>Turn in Seeds of Their Demise
    .target Tyrus Blackhorn
    .isOnQuest 25408
step
    .goto 198,22.27,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrus Blackhorn|r
    .accept 25411 >>Accept A New Master
    .target Tyrus Blackhorn
    .isQuestTurnedIn 25408 --any of: Seeds of Their Demise
    .xp <80,1
step
    #loop
    .goto 198,14.09,43.08,0
    .goto 198,14.09,43.08,40,0
    .goto 198,12.30,38.58,40,0
    .goto 198,9.63,36.70,40,0
    >>Kill |cRXP_ENEMY_Twilight Inferno Lords|r
    .complete 25411,1 --Twilight Inferno Lord slain (8)
    .mob Twilight Inferno Lord
    .isOnQuest 25411
step
    #loop
    .goto 198,12.31,39.53,0
    .goto 198,12.31,39.53,40,0
    .goto 198,14.18,42.91,40,0
    .goto 198,14.47,45.36,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subjugated Inferno Lord|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25411 >>Turn in A New Master
    .unitscan Subjugated Inferno Lord
    .isOnQuest 25411
step
    #loop
    .goto 198,12.31,39.53,0
    .goto 198,12.31,39.53,40,0
    .goto 198,14.18,42.91,40,0
    .goto 198,14.47,45.36,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subjugated Inferno Lord|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25412 >>Accept The Name Never Spoken
    .unitscan Subjugated Inferno Lord
    .isQuestTurnedIn 25411 --any of: A New Master
    .xp <80,1
step
    .goto 198,14.29,45.39
    >>Click the |cRXP_PICK_Southern Firestone|r
    .complete 25412,3 --Southern Firestone
    .isOnQuest 25412
step
    .goto 198,11.62,41.49
    >>Click the |cRXP_PICK_Central Firestone|r
    .complete 25412,2 --Central Firestone
    .isOnQuest 25412
step
    .goto 198,9.63,36.45
    >>Click the |cRXP_PICK_Northern Firestone|r
    .complete 25412,1 --Northern Firestone
    .isOnQuest 25412
step
    #loop
    .goto 198,10.40,36.20,0
    .goto 198,10.40,36.20,40,0
    .goto 198,12.88,39.09,40,0
    >>Kill |cRXP_ENEMY_Panicked Bunnies|r and |cRXP_ENEMY_Terrified Squirrels|r. Loot them for |cRXP_LOOT_Frightened Animal|r
    .complete 25385,1 --Frightened Animal (1)
    .mob Panicked Bunny
    .mob Terrified Squirrel
    .isOnQuest 25385
step
    #loop
    .goto 198,13.25,41.33,0
    .goto 198,13.25,41.33,40,0
    .goto 198,15.47,40.78,40,0
    >>Kill |cRXP_ENEMY_Raging Firestorms|r
    .complete 25381,1 --Raging Firestorm slain (10)
    .mob Raging Firestorm
    .isOnQuest 25381
step
    #loop
    .goto 198,12.30,38.58,0
    .goto 198,12.30,38.58,40,0
    .goto 198,9.63,36.70,40,0
    >>Kill |cRXP_ENEMY_Twilight Inferno Lords|r
    .complete 25382,1 --Twilight Inferno Lord slain (6)
    .mob Twilight Inferno Lord
    .isOnQuest 25382
step
    .goto 198,19.22,37.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .turnin 25385 >>Turn in Save the Wee Animals
    .target Mylune
    .isOnQuest 25385
step
    .goto 198,19.22,37.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .accept 25392 >>Accept Oh, Deer!
    .target Mylune
    .isQuestTurnedIn 25385 --any of: Save the Wee Animals
    .xp <80,1
step
    .goto 198,18.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laina Nightsky|r
    .turnin 25382 >>Turn in Disrupting the Rituals
    .target Laina Nightsky
    .isOnQuest 25382
step
    .goto 198,18.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laina Nightsky|r
    .turnin 25381 >>Turn in Fighting Fire With ... Anything
    .target Laina Nightsky
    .isOnQuest 25381
step
    .goto 198,22.27,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrus Blackhorn|r
    .turnin 25412 >>Turn in The Name Never Spoken
    .target Tyrus Blackhorn
    .isOnQuest 25412
step
    .goto 198,22.27,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrus Blackhorn|r
    .accept 25428 >>Accept Black Heart of Flame
    .target Tyrus Blackhorn
    .isQuestTurnedIn 25412,25443 --any of: The Name Never Spoken, The Name Never Spoken
    .xp <80,1
step
    .goto 198,14.08,41.47
    >>Kill |cRXP_ENEMY_Thol'embaar|r and loot |cRXP_LOOT_Black Heart of Thol'embaar|r
    .complete 25428,1 --Black Heart of Thol'embaar (1)
    .mob Thol'embaar
    .isOnQuest 25428
step
    .goto 198,13.30,38.48
    >>Interact with |cRXP_FRIENDLY_Injured Fawns|r
    .complete 25392,1 --Injured Fawn (3)
    .target Injured Fawn
    .isOnQuest 25392
step
    .goto 198,19.22,37.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylune|r
    .turnin 25392 >>Turn in Oh, Deer!
    .target Mylune
    .isOnQuest 25392
step
    .goto 198,22.27,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrus Blackhorn|r
    .turnin 25428 >>Turn in Black Heart of Flame
    .target Tyrus Blackhorn
    .isOnQuest 25428
step
    .goto 198,18.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laina Nightsky|r
    .accept 25940 >>Accept Last Stand at Whistling Grove
    .target Laina Nightsky
    .isQuestTurnedIn 25382 --Disrupting the Rituals
    .isQuestTurnedIn 25392 --Oh, Deer!
    .isQuestTurnedIn 25428 --Black Heart of Flame
    .xp <80,1
step
    .goto 198,13.65,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Taldros|r
    .turnin 25940 >>Turn in Last Stand at Whistling Grove
    .target Keeper Taldros
    .isOnQuest 25940
step
    .goto 198,13.65,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Taldros|r
    .accept 25462 >>Accept The Bears Up There
    .target Keeper Taldros
    .isQuestTurnedIn 25382 --Disrupting the Rituals
    .isQuestTurnedIn 25392 --Oh, Deer!
    .isQuestTurnedIn 25428 --Black Heart of Flame
    .xp <80,1
step
    .goto 198,14.21,33.22
    >>Interact with |cRXP_FRIENDLY_Hyjal Bear Cub|r
    .complete 25462,1 --Hyjal Bear Cub
    .target Hyjal Bear Cub
    .isOnQuest 25462
step
    .goto 198,13.65,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Taldros|r
    .turnin 25462 >>Turn in The Bears Up There
    .target Keeper Taldros
    .isOnQuest 25462
step
    .goto 198,13.65,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Taldros|r
    .accept 25490 >>Accept Smashing Through Ashes
    .target Keeper Taldros
    .isQuestTurnedIn 25462 --any of: The Bears Up There
    .xp <80,1
step
    #loop
    .goto 198,20.39,58.84,0
    .goto 198,20.39,58.84,40,0
    .goto 198,23.95,61.41,40,0
    >>Kill |cRXP_ENEMY_Charbringers|r
    .complete 25490,1 --Charbringer slain (8)
    .mob Charbringer
    .isOnQuest 25490
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25490 >>Turn in Smashing Through Ashes
    .unitscan Arch Druid Hamuul Runetotem
    .isOnQuest 25490
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25491 >>Accept Durable Seeds
    .accept 25493 >>Accept Fresh Bait
    .unitscan Arch Druid Hamuul Runetotem
    .isQuestTurnedIn 25490 --any of: Smashing Through Ashes
    .xp <80,1
step
    .goto 198,27.05,63.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r
    .accept 25492 >>Accept Firebreak
    .target Rayne Feathersong
    .isQuestTurnedIn 25490 --any of: Smashing Through Ashes
    .xp <80,1
step
    #loop
    .goto 198,33.87,65.31,0
    .goto 198,33.87,65.31,40,0
    .goto 198,34.12,59.32,40,0
    .goto 198,36.87,53.38,40,0
    .goto 198,35.75,56.83,40,0
    >>Loot the |cRXP_PICK_Scorched Soils|r for |cRXP_LOOT_Hyjal Seedling|r
    .complete 25491,1 --Hyjal Seedling (10)
    .isOnQuest 25491
step
    #loop
    .goto 198,37.28,58.16,0
    .goto 198,37.28,58.16,40,0
    .goto 198,37.07,53.88,40,0
    .goto 198,35.22,52.74,40,0
    >>Kill |cRXP_ENEMY_Lava Surgers|r
    .complete 25492,1 --Lava Surger slain (10)
    .mob Lava Surger
    .isOnQuest 25492
step
    #loop
    .goto 198,34.75,55.63,0
    .goto 198,34.75,55.63,40,0
    .goto 198,35.51,60.09,40,0
    >>Kill |cRXP_ENEMY_Core Hound|r and loot |cRXP_LOOT_Core Hound Entrails|r
    .complete 25493,1 --Core Hound Entrails (1)
    .mob Core Hound
    .isOnQuest 25493
step
    .goto 198,27.05,63.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r
    .turnin 25492 >>Turn in Firebreak
    .target Rayne Feathersong
    .isOnQuest 25492
step
    .goto 198,27.05,63.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r
    .accept 25502 >>Accept Prepping the Soil
    .target Rayne Feathersong
    .isQuestTurnedIn 25492 --any of: Firebreak
    .xp <80,1
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25491 >>Turn in Durable Seeds
    .unitscan Arch Druid Hamuul Runetotem
    .isOnQuest 25491
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25493 >>Turn in Fresh Bait
    .unitscan Arch Druid Hamuul Runetotem
    .isOnQuest 25493
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25507 >>Accept Hell's Shells
    .unitscan Arch Druid Hamuul Runetotem
    .isQuestTurnedIn 25493 --any of: Fresh Bait
    .xp <80,1
step
    .goto 198,38.31,63.93
    >>Click the |cRXP_PICK_Flameward|r
    .complete 25502,1 --Flameward
    .isOnQuest 25502
step
    .goto 198,40.51,53.14
    >>Kill |cRXP_ENEMY_Activated Flamewards|r
    .complete 25502,2 --Activated Flameward (8)
    .mob Activated Flameward
    .isOnQuest 25502
step
    .goto 198,35.98,52.57
    >>Kill |cRXP_ENEMY_Nemesis|r and loot |cRXP_LOOT_Nemesis Shell Fragment|r
    .complete 25507,1 --Nemesis Shell Fragment (1)
    .mob Nemesis
    .isOnQuest 25507
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25655 >>Accept The Wormwing Problem
    .accept 25656 >>Accept Scrambling for Eggs
    .unitscan Thisalee Crow
    .isQuestTurnedIn 25578 --any of: Return to Nordrassil
    .xp <80,1
step
    .goto 198,44.44,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .accept 25663 >>Accept An Offering for Aviana
    .target Choluna
    .isQuestTurnedIn 25578 --any of: Return to Nordrassil
    .xp <80,1
step
    .goto 198,40.35,44.32
    >>Click the |cRXP_PICK_Aviana's Burial Circle|r
    .complete 25663,1 --Aviana's Burial Circle
    .isOnQuest 25663
step
    .goto 198,40.35,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mysterious Winged Spirit|r
    .turnin 25663 >>Turn in An Offering for Aviana
    .target Mysterious Winged Spirit
    .isOnQuest 25663
step
    .goto 198,40.35,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mysterious Winged Spirit|r
    .accept 25665 >>Accept A Plea From Beyond
    .target Mysterious Winged Spirit
    .isQuestTurnedIn 25663 --any of: An Offering for Aviana
    .xp <80,1
step
    #loop
    .goto 198,36.95,44.49,0
    .goto 198,36.95,44.49,40,0
    .goto 198,36.32,47.08,40,0
    >>Loot the |cRXP_PICK_Stolen Hyjal Eggs|r for |cRXP_LOOT_Hyjal Egg|r
    .complete 25656,1 --Hyjal Egg (8)
    .isOnQuest 25656
step
    #loop
    .goto 198,37.49,44.03,0
    .goto 198,37.49,44.03,40,0
    .goto 198,39.30,44.12,40,0
    >>Kill |cRXP_ENEMY_Wormwing Swifttalons|r and |cRXP_ENEMY_Wormwing Screechers|r
    .complete 25655,1 --Wormwing Swifttalon (8)
    .mob Wormwing Swifttalon
    .mob Wormwing Screecher
    .isOnQuest 25655
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25655 >>Turn in The Wormwing Problem
    .unitscan Thisalee Crow
    .isOnQuest 25655
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25656 >>Turn in Scrambling for Eggs
    .unitscan Thisalee Crow
    .isOnQuest 25656
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25731 >>Accept A Bird in Hand
    .unitscan Thisalee Crow
    .isQuestTurnedIn 25655 --The Wormwing Problem
    .isQuestTurnedIn 25656 --Scrambling for Eggs
    .xp <80,1
step
    .goto 198,44.44,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .turnin 25665 >>Turn in A Plea From Beyond
    .target Choluna
    .isOnQuest 25665
step
    .goto 198,44.44,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .accept 25664 >>Accept A Prayer and a Wing
    .target Choluna
    .isQuestTurnedIn 25665 --any of: A Plea From Beyond
    .xp <80,1
step
    .goto 198,40.24,37.24
    >>Kill |cRXP_ENEMY_Blaithe|r and loot |cRXP_LOOT_Ancient Feather|r
    .complete 25664,1 --Ancient Feather (1)
    .mob Blaithe
    .isOnQuest 25664
step
    .goto 198,32.81,46.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion Wormwing|r
    .complete 25731,1 --Marion Wormwing
    .target Marion Wormwing
    .isOnQuest 25731
step
    .goto 198,32.81,46.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion Wormwing|r
    .complete 25731,2 --Marion Wormwing
    .target Marion Wormwing
    .isOnQuest 25731
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25731 >>Turn in A Bird in Hand
    .unitscan Thisalee Crow
    .isOnQuest 25731
step
    .goto 198,44.44,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .turnin 25664 >>Turn in A Prayer and a Wing
    .target Choluna
    .isOnQuest 25664
step
    .goto 198,43.54,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skylord Omnuron|r
    .accept 25740 >>Accept Fact-Finding Mission
    .target Skylord Omnuron
    .isQuestTurnedIn 25664 --A Prayer and a Wing
    .isQuestTurnedIn 25731 --A Bird in Hand
    .xp <80,1
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25740 >>Turn in Fact-Finding Mission
    .unitscan Thisalee Crow
    .isOnQuest 25740
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25746 >>Accept Sethria's Brood
    .accept 25758 >>Accept A Gap in Their Armor
    .unitscan Thisalee Crow
    .isQuestTurnedIn 25740 --any of: Fact-Finding Mission
    .xp <80,1
step
    .goto 198,31.28,77.09
    >>Click the |cRXP_PICK_Codex of Shadows|r
    .accept 25763 >>Accept The Codex of Shadows
    .isQuestTurnedIn 25740 --any of: Fact-Finding Mission
    .xp <80,1
step
    #loop
    .goto 198,30.87,77.42,0
    .goto 198,30.87,77.42,40,0
    .goto 198,31.03,76.28,40,0
    .goto 198,31.91,90.10,40,0
    .goto 198,30.82,79.58,40,0
    >>Pick up |cRXP_PICK_Twilight Armor Plate|r from the ground
    .complete 25758,1 --Twilight Armor Plate (8)
    .isOnQuest 25758
step
    #loop
    .goto 198,31.36,77.43,0
    .goto 198,31.36,77.43,40,0
    .goto 198,30.19,81.17,40,0
    >>Kill |cRXP_ENEMY_Twilight Dragonkin Armorers|r and |cRXP_ENEMY_Twilight Dragonkins|r
    .complete 25746,1 --Twilight Dragonkin Armorer (8)
    .mob Twilight Dragonkin Armorer
    .mob Twilight Dragonkin
    .isOnQuest 25746
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25746 >>Turn in Sethria's Brood
    .unitscan Thisalee Crow
    .isOnQuest 25746
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25758 >>Turn in A Gap in Their Armor
    .unitscan Thisalee Crow
    .isOnQuest 25758
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25763 >>Turn in The Codex of Shadows
    .unitscan Thisalee Crow
    .isOnQuest 25763
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25761 >>Accept Disassembly
    .unitscan Thisalee Crow
    .isQuestTurnedIn 25758 --any of: A Gap in Their Armor
    .xp <80,1
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25764 >>Accept Egg Hunt
    .unitscan Thisalee Crow
    .isQuestTurnedIn 25763 --any of: The Codex of Shadows
    .xp <80,1
step
    #loop
    .goto 198,29.89,77.07,0
    .goto 198,29.89,77.07,40,0
    .goto 198,30.87,78.87,40,0
    .goto 198,30.21,80.83,40,0
    .goto 198,31.81,81.48,40,0
    >>Disable the Shadow Cloak Generators until you unveil Aviana's Egg. Once the egg is unveiled, defend it until the Druids of the Talon can carry it to safety.
    .complete 25764,1 --Aviana's Egg
    .target Aviana's Egg
    .isOnQuest 25764
step
    #loop
    .goto 198,30.13,77.55,0
    .goto 198,30.13,77.55,40,0
    .goto 198,31.69,75.84,40,0
    >>Kill |cRXP_ENEMY_Twilight Juggernauts|r
    .complete 25761,1 --Twilight Juggernaut slain (3)
    .mob Twilight Juggernaut
    .isOnQuest 25761
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25761 >>Turn in Disassembly
    .unitscan Thisalee Crow
    .isOnQuest 25761
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25764 >>Turn in Egg Hunt
    .unitscan Thisalee Crow
    .isOnQuest 25764
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25776 >>Accept Sethria's Demise
    .unitscan Thisalee Crow
    .isQuestTurnedIn 25746 --Sethria's Brood
    .isQuestTurnedIn 25761 --Disassembly
    .isQuestTurnedIn 25764 --Egg Hunt
    .xp <80,1
step
    .goto 198,35.53,97.97
    >>Kill |cRXP_ENEMY_Sethria|r
    .complete 25776,1 --Sethria slain (1)
    .mob Sethria
    .isOnQuest 25776
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25776 >>Turn in Sethria's Demise
    .unitscan Thisalee Crow
    .isOnQuest 25776
step
    .goto 198,42.18,45.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thisalee Crow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25795 >>Accept Return to the Shrine
    .unitscan Thisalee Crow
    .isQuestTurnedIn 25776 --any of: Sethria's Demise
    .xp <80,1
step
    .goto 198,27.05,63.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne Feathersong|r
    .turnin 25502 >>Turn in Prepping the Soil
    .target Rayne Feathersong
    .isOnQuest 25502
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25507 >>Turn in Hell's Shells
    .unitscan Arch Druid Hamuul Runetotem
    .isOnQuest 25507
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25510 >>Accept Tortolla Speaks
    .unitscan Arch Druid Hamuul Runetotem
    .isQuestTurnedIn 25507 --any of: Hell's Shells
    .xp <80,1
step
    .goto 198,24.64,55.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .turnin 25510 >>Turn in Tortolla Speaks
    .target Tortolla
    .isOnQuest 25510
step
    .goto 198,24.64,55.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .accept 25514 >>Accept Breaking the Bonds
    .accept 25519 >>Accept Children of Tortolla
    .target Tortolla
    .isQuestTurnedIn 25510 --any of: Tortolla Speaks
    .xp <80,1
step
    .goto 198,25.25,54.80
    >>Disable the two Rods of Subjugation that bind Tortolla.
    .complete 25514,2 --Rod of Subjugation 02
    .target Rod of Subjugation 02
    .isOnQuest 25514
step
    #loop
    .goto 198,25.09,56.35,0
    .goto 198,25.09,56.35,40,0
    .goto 198,23.01,57.26,40,0
    >>Kill |cRXP_ENEMY_Tortolla's Eggs|r and |cRXP_ENEMY_Child of Tortollas|r
    .complete 25519,1 --Tortolla's Egg (8)
    .mob Tortolla's Egg
    .mob Child of Tortolla
    .isOnQuest 25519
step
    .goto 198,23.90,55.90
    >>Disable the two Rods of Subjugation that bind Tortolla.
    .complete 25514,1 --Rod of Subjugation 01
    .target Rod of Subjugation 01
    .isOnQuest 25514
step
    .goto 198,24.64,55.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .turnin 25514 >>Turn in Breaking the Bonds
    .target Tortolla
    .isOnQuest 25514
step
    .goto 198,24.64,55.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .turnin 25519 >>Turn in Children of Tortolla
    .target Tortolla
    .isOnQuest 25519
step
    .goto 198,24.64,55.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .accept 25520 >>Accept An Ancient Awakens
    .target Tortolla
    .isQuestTurnedIn 25514 --Breaking the Bonds
    .isQuestTurnedIn 25519 --Children of Tortolla
    .xp <80,1
step
    #completewith next
    .hs >>Hearth to Jandunel Reedwind's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 198,44.44,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .turnin 25795 >>Turn in Return to the Shrine
    .target Choluna
    .isOnQuest 25795
step
    .goto 198,44.44,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .accept 25807 >>Accept An Ancient Reborn
    .target Choluna
    .isQuestTurnedIn 25795 --any of: Return to the Shrine
    .xp <80,1
step
    .goto 198,44.34,47.97
    >>Use the Herald's Incense before Aviana's Egg at the Shrine of Aviana.
    .complete 25807,1 --Aviana's Egg
    .target Aviana's Egg
    .isOnQuest 25807
step
    .goto 198,44.33,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aviana|r
    .turnin 25807 >>Turn in An Ancient Reborn
    .target Aviana
    .isOnQuest 25807
step
    .goto 198,44.14,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morthis Whisperwing|r
    .accept 25810 >>Accept The Hatchery Must Burn
    .target Morthis Whisperwing
    .isQuestTurnedIn 25807 --any of: An Ancient Reborn
    .xp <78,1
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .turnin 25810 >>Turn in The Hatchery Must Burn
    .target Farden Talonshrike
    .isOnQuest 25810
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .accept 25523 >>Accept Flight in the Firelands
    .target Farden Talonshrike
    .isQuestTurnedIn 25810 --any of: The Hatchery Must Burn
    .xp <80,1
step
    .goto 198,37.22,56.08
    >>Open the |cRXP_PICK_Twilight Weapon Rack|r. Loot it for |cRXP_LOOT_Twilight Firelance|r
    .collect 52716,1,25523,1 --Twilight Firelance (1)
    .isOnQuest 25523
step
    .goto 198,35.23,51.86
    >>Click the |cRXP_PICK_Guardian Flag|r
    .complete 25523,1 --Guardian Flag
    .isOnQuest 25523
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .turnin 25523 >>Turn in Flight in the Firelands
    .target Farden Talonshrike
    .isOnQuest 25523
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .accept 25525 >>Accept Wave One
    .target Farden Talonshrike
    .isQuestTurnedIn 25523 --any of: Flight in the Firelands
    .xp <80,1
step
    .goto 198,37.22,56.08
    >>Open the |cRXP_PICK_Twilight Weapon Rack|r. Loot it for |cRXP_LOOT_Twilight Firelance|r
    .collect 52716,1,25525,1 --Twilight Firelance (1)
    .isOnQuest 25525
step
    #loop
    .goto 198,37.15,53.98,0
    .goto 198,37.15,53.98,40,0
    .goto 198,35.03,55.48,40,0
    >>Kill |cRXP_ENEMY_Twilight Buzzards|r and |cRXP_ENEMY_Twilight Knight Riders|r
    .complete 25525,1 --Twilight Buzzard (8)
    .mob Twilight Buzzard
    .mob Twilight Knight Rider
    .isOnQuest 25525
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .turnin 25525 >>Turn in Wave One
    .target Farden Talonshrike
    .isOnQuest 25525
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .accept 25544 >>Accept Wave Two
    .target Farden Talonshrike
    .isQuestTurnedIn 25525 --any of: Wave One
    .xp <80,1
step
    .goto 198,37.22,56.08
    >>Open the |cRXP_PICK_Twilight Weapon Rack|r. Loot it for |cRXP_LOOT_Twilight Firelance|r
    .collect 52716,1,25544,1 --Twilight Firelance (1)
    .isOnQuest 25544
step
    #loop
    .goto 198,34.93,54.92,0
    .goto 198,34.93,54.92,40,0
    .goto 198,34.78,53.07,40,0
    .goto 198,37.58,50.06,40,0
    >>Kill |cRXP_ENEMY_Twilight Firebirds|r and |cRXP_ENEMY_Twilight Lancers|r
    .complete 25544,1 --Twilight Firebird (8)
    .mob Twilight Firebird
    .mob Twilight Lancer
    .isOnQuest 25544
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .turnin 25544 >>Turn in Wave Two
    .target Farden Talonshrike
    .isOnQuest 25544
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .accept 25560 >>Accept Egg Wave
    .target Farden Talonshrike
    .isQuestTurnedIn 25544 --any of: Wave Two
    .xp <80,1
step
    .goto 198,37.22,56.08
    >>Open the |cRXP_PICK_Twilight Weapon Rack|r. Loot it for |cRXP_LOOT_Twilight Firelance|r
    .collect 52716,1,25560,1 --Twilight Firelance (1)
    .isOnQuest 25560
step
    #loop
    .goto 198,36.71,52.98,0
    .goto 198,36.71,52.98,40,0
    .goto 198,34.93,52.24,40,0
    .goto 198,36.30,46.65,40,0
    >>Kill |cRXP_ENEMY_Firelands Eggs|r
    .complete 25560,1 --Firelands Egg slain (40)
    .mob Firelands Egg
    .isOnQuest 25560
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .turnin 25560 >>Turn in Egg Wave
    .target Farden Talonshrike
    .isOnQuest 25560
step
    .goto 198,37.22,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farden Talonshrike|r
    .accept 25832 >>Accept Return to Aviana
    .target Farden Talonshrike
    .isQuestTurnedIn 25560 --any of: Egg Wave
    .xp <80,1
step
    .goto 198,44.33,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aviana|r
    .turnin 25832 >>Turn in Return to Aviana
    .target Aviana
    .isOnQuest 25832
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25520 >>Turn in An Ancient Awakens
    .unitscan Arch Druid Hamuul Runetotem
    .isOnQuest 25520
step
    .goto 198,62.05,24.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysera|r
    .accept 25830 >>Accept The Last Living Lorekeeper
    .target Ysera
    .isQuestTurnedIn 25520 --An Ancient Awakens
    .isQuestTurnedIn 25807 --An Ancient Reborn
    .xp <80,1
step
    .goto 198,27.40,55.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nordu|r
    .turnin 25830 >>Turn in The Last Living Lorekeeper
    .target Nordu
    .isOnQuest 25830
step
    .goto 198,27.40,55.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nordu|r
    .accept 25842 >>Accept Firefight
    .target Nordu
    .isQuestTurnedIn 25830 --any of: The Last Living Lorekeeper
    .xp <80,1
step
    #loop
    .goto 198,26.47,53.06,0
    .goto 198,26.47,53.06,40,0
    .goto 198,28.65,50.61,40,0
    >>Kill |cRXP_ENEMY_Fiery Tormentors|r
    .complete 25842,1 --Fiery Tormentor slain (5)
    .mob Fiery Tormentor
    .isOnQuest 25842
step
    .goto 198,27.40,55.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nordu|r
    .turnin 25842 >>Turn in Firefight
    .target Nordu
    .isOnQuest 25842
step
    .goto 198,27.40,55.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nordu|r
    .accept 25372 >>Accept Aessina's Miracle
    .target Nordu
    .isQuestTurnedIn 25842 --any of: Firefight
    .xp <80,1
step
    .goto 198,27.12,62.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25372 >>Turn in Aessina's Miracle
    .unitscan Arch Druid Hamuul Runetotem
    .isOnQuest 25372
step
    #loop
    .goto 198,19.53,37.81,0
    .goto 198,19.53,37.81,40,0
    .goto 198,27.08,54.49,40,0
    .goto 198,27.17,62.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Hamuul Runetotem|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25843 >>Accept Tortolla's Revenge
    .unitscan Arch Druid Hamuul Runetotem
    .isQuestTurnedIn 25372 --any of: Aessina's Miracle
    .xp <80,1
step
    .goto 198,41.87,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .turnin 25843 >>Turn in Tortolla's Revenge
    .target Tortolla
    .isOnQuest 25843
step
    .goto 198,41.87,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .accept 25904 >>Accept The Hammer and the Key
    .target Tortolla
    .isQuestTurnedIn 25372 --any of: Aessina's Miracle
    .xp <80,1
step
    .goto 198,42.25,60.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Niden|r
    .accept 25899 >>Accept Breakthrough
    .accept 25881 >>Accept Lost Wardens
    .target Niden
    .isQuestTurnedIn 25372 --any of: Aessina's Miracle
    .xp <80,1
step
    #loop
    .goto 198,50.39,58.31,0
    .goto 198,50.39,58.31,40,0
    .goto 198,53.58,56.12,40,0
    .goto 198,56.78,59.26,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lost Warden|r
    .complete 25881,1 --Lost Warden (8)
    .target Lost Warden
    .isOnQuest 25881
step
    .goto 198,56.85,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logram|r
    .accept 25901 >>Accept Hyjal Recycling Program
    .target Logram
    .isQuestTurnedIn 25372 --any of: Aessina's Miracle
    .xp <80,1
step
    .goto 198,57.12,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Irontree|r
    .turnin 25881 >>Turn in Lost Wardens
    .target Captain Irontree
    .isOnQuest 25881
step
    .goto 198,57.12,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Irontree|r
    .accept 25886 >>Accept Pressing the Advantage
    .target Captain Irontree
    .isQuestTurnedIn 25881 --any of: Lost Wardens
    .xp <80,1
step
    #loop
    .goto 198,55.92,57.84,0
    .goto 198,55.92,57.84,40,0
    .goto 198,57.18,53.07,40,0
    >>Pick up |cRXP_PICK_Warden's Arrow|r from the ground
    .complete 25901,1 --Warden's Arrow (15)
    .isOnQuest 25901
step
    #loop
    .goto 198,54.82,57.71,0
    .goto 198,54.82,57.71,40,0
    .goto 198,52.48,53.48,40,0
    .goto 198,50.98,56.77,40,0
    >>Kill |cRXP_ENEMY_Twilight Scorchlords|r
    .complete 25899,1 --Twilight Scorchlord slain (10)
    .mob Twilight Scorchlord
    .isOnQuest 25899
step
    .goto 198,57.12,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Irontree|r
    .turnin 25899 >>Turn in Breakthrough
    .target Captain Irontree
    .isOnQuest 25899
step
    #loop
    .goto 198,56.16,58.67,0
    .goto 198,56.16,58.67,40,0
    .goto 198,53.77,54.83,40,0
    .goto 198,49.00,53.14,40,0
    >>Kill |cRXP_ENEMY_Twilight Field Captain|r and loot |cRXP_LOOT_Glyph of Opening|r
    .complete 25904,1 --Glyph of Opening (1)
    .mob Twilight Field Captain
    .isOnQuest 25904
step
    #loop
    .goto 198,59.83,58.32,0
    .goto 198,59.83,58.32,40,0
    .goto 198,62.15,58.11,40,0
    >>Kill |cRXP_ENEMY_Twilight Field Captains|r
    .complete 25886,1 --Twilight Field Captain slain (4)
    .mob Twilight Field Captain
    .isOnQuest 25886
step
    .goto 198,41.87,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .turnin 25904 >>Turn in The Hammer and the Key
    .target Tortolla
    .isOnQuest 25904
step
    .goto 198,41.87,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .accept 25906 >>Accept The Third Flamegate
    .target Tortolla
    .isQuestTurnedIn 25904 --any of: The Hammer and the Key
    .xp <80,1
step
    .goto 198,56.85,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logram|r
    .turnin 25901 >>Turn in Hyjal Recycling Program
    .target Logram
    .isOnQuest 25901
step
    .goto 198,57.12,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Irontree|r
    .turnin 25886 >>Turn in Pressing the Advantage
    .target Captain Irontree
    .isOnQuest 25886
step
    .goto 198,64.27,53.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garunda Mountainpeak|r
    .turnin 25906 >>Turn in The Third Flamegate
    .target Garunda Mountainpeak
    .isOnQuest 25906
step
    .goto 198,64.27,53.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garunda Mountainpeak|r
    .accept 25910 >>Accept The Time for Mercy has Passed
    .accept 25915 >>Accept The Strength of Tortolla
    .target Garunda Mountainpeak
    .isQuestTurnedIn 25906 --any of: The Third Flamegate
    .xp <80,1
step
    #loop
    .goto 198,65.83,57.07,0
    .goto 198,65.83,57.07,40,0
    .goto 198,66.12,59.99,40,0
    >>Click the |cRXP_PICK_Nemesis Crystal|r
    .complete 25915,1 --Nemesis Crystal
    .isOnQuest 25915
step
    #loop
    .goto 198,64.10,56.97,0
    .goto 198,64.10,56.97,40,0
    .goto 198,62.61,54.54,40,0
    >>Kill |cRXP_ENEMY_Shadowflame Masters|r
    .complete 25910,1 --Shadowflame Master slain (4)
    .mob Shadowflame Master
    .isOnQuest 25910
step
    #loop
    .goto 198,62.01,53.24,0
    .goto 198,62.01,53.24,40,0
    .goto 198,62.25,57.26,40,0
    .goto 198,64.26,58.31,40,0
    >>Kill |cRXP_ENEMY_Molten Tormentors|r
    .complete 25910,2 --Molten Tormentor slain (10)
    .mob Molten Tormentor
    .isOnQuest 25910
step
    .goto 198,64.27,53.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garunda Mountainpeak|r
    .turnin 25910 >>Turn in The Time for Mercy has Passed
    .target Garunda Mountainpeak
    .isOnQuest 25910
step
    .goto 198,64.27,53.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garunda Mountainpeak|r
    .turnin 25915 >>Turn in The Strength of Tortolla
    .target Garunda Mountainpeak
    .isOnQuest 25915
step
    .goto 198,64.27,53.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garunda Mountainpeak|r
    .accept 25923 >>Accept Finish Nemesis
    .target Garunda Mountainpeak
    .isQuestTurnedIn 25915 --any of: The Strength of Tortolla
    .xp <80,1
step
    .goto 198,62.62,62.27
    >>Kill |cRXP_ENEMY_Nemesis|r
    .complete 25923,1 --Nemesis slain (1)
    .mob Nemesis
    .isOnQuest 25923
step
    .goto 198,64.27,53.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garunda Mountainpeak|r
    .turnin 25923 >>Turn in Finish Nemesis
    .target Garunda Mountainpeak
    .isOnQuest 25923
step
    .goto 198,64.27,53.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garunda Mountainpeak|r
    .accept 25928 >>Accept Tortolla's Triumph
    .target Garunda Mountainpeak
    .isQuestTurnedIn 25923 --any of: Finish Nemesis
    .xp <80,1
step
    .goto 198,41.87,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .turnin 25928 >>Turn in Tortolla's Triumph
    .target Tortolla
    .isOnQuest 25928
step
    .goto 198,41.87,60.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortolla|r
    .accept 25653 >>Accept The Ancients are With Us
    .target Tortolla
    .isQuestTurnedIn 25928 --any of: Tortolla's Triumph
    .xp <80,1
step
    .goto 198,62.05,24.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysera|r
    .turnin 25653 >>Turn in The Ancients are With Us
    .target Ysera
    .isOnQuest 25653
step
    .goto 198,62.05,24.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysera|r
    .accept 25597 >>Accept Commander Jarod Shadowsong
    .target Ysera
    .isQuestTurnedIn 25653 --any of: The Ancients are With Us
    .xp <80,1
step
    .goto 198,63.25,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiala Whitemane|r
    .accept 25985 >>Accept Wings Over Mount Hyjal
    .target Tiala Whitemane
    .isQuestTurnedIn 25578 --any of: Return to Nordrassil
    .xp <80,1
step
    .goto 198,71.91,58.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Ortell|r
    .turnin 25597 >>Turn in Commander Jarod Shadowsong
    .target Elementalist Ortell
    .isOnQuest 25597
step
    .goto 198,71.91,58.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Ortell|r
    .accept 25274 >>Accept Signed in Blood
    .target Elementalist Ortell
    .isQuestTurnedIn 25597 --any of: Commander Jarod Shadowsong
    .xp <80,1
step
    .goto 198,73.56,60.68
    >>Kill |cRXP_ENEMY_Twilight Recruit|r and loot |cRXP_LOOT_Twilight Recruitment Papers|r
    .complete 25274,1 --Twilight Recruitment Papers (1)
    .mob Twilight Recruit
    .isOnQuest 25274
step
    .goto 198,71.91,58.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Ortell|r
    .turnin 25274 >>Turn in Signed in Blood
    .target Elementalist Ortell
    .isOnQuest 25274
step
    .goto 198,71.91,58.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elementalist Ortell|r
    .accept 25276 >>Accept Your New Identity
    .target Elementalist Ortell
    .isQuestTurnedIn 25274 --any of: Signed in Blood
    .xp <80,1
step
    .goto 198,76.93,62.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Condenna the Pitiless|r
    .turnin 25276 >>Turn in Your New Identity
    .target Condenna the Pitiless
    .isOnQuest 25276
step
    .goto 198,76.93,62.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Condenna the Pitiless|r
    .accept 25223 >>Accept Trial By Fire
    .accept 25224 >>Accept In Bloom
    .target Condenna the Pitiless
    .isQuestTurnedIn 25276 --any of: Your New Identity
    .xp <80,1
step
    .goto 198,77.05,62.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Cargall|r
    .accept 25330 >>Accept Waste of Flesh
    .target Instructor Cargall
    .isQuestTurnedIn 25276 --any of: Your New Identity
    .xp <80,1
step
    #loop
    .goto 198,79.24,63.25,0
    .goto 198,79.24,63.25,40,0
    .goto 198,82.04,63.35,40,0
    >>Interact with |cRXP_FRIENDLY_Immolated Supplicants|r
    .complete 25330,1 --Immolated Supplicant (4)
    .target Immolated Supplicant
    .isOnQuest 25330
step
    #loop
    .goto 198,84.46,62.92,0
    .goto 198,84.46,62.92,40,0
    .goto 198,84.86,59.02,40,0
    .goto 198,86.32,57.37,40,0
    >>Pick up |cRXP_PICK_Flame Blossom|r from the ground
    .complete 25224,1 --Flame Blossom (5)
    .isOnQuest 25224
step
    .goto 198,76.25,64.39
    >>Kill |cRXP_ENEMY_Fiery Instructors|r
    .complete 25223,1 --Fiery Instructor slain (8)
    .mob Fiery Instructor
    .isOnQuest 25223
step
    .goto 198,77.05,62.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Cargall|r
    .turnin 25330 >>Turn in Waste of Flesh
    .target Instructor Cargall
    .isOnQuest 25330
step
    .goto 198,76.93,62.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Condenna the Pitiless|r
    .turnin 25223 >>Turn in Trial By Fire
    .target Condenna the Pitiless
    .isOnQuest 25223
step
    .goto 198,76.93,62.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Condenna the Pitiless|r
    .turnin 25224 >>Turn in In Bloom
    .target Condenna the Pitiless
    .isOnQuest 25224
step
    .goto 198,76.93,62.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Condenna the Pitiless|r
    .accept 25291 >>Accept Twilight Training
    .target Condenna the Pitiless
    .isQuestTurnedIn 25223 --Trial By Fire
    .isQuestTurnedIn 25224 --In Bloom
    .isQuestTurnedIn 25330 --Waste of Flesh
    .xp <80,1
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .turnin 25291 >>Turn in Twilight Training
    .target Instructor Mylva
    .isOnQuest 25291
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .accept 25509 >>Accept Physical Training: Forced Labor
    .target Instructor Mylva
    .isQuestTurnedIn 25291 --any of: Twilight Training
    .xp <80,1
step
    .goto 198,88.26,58.56
    >>Click the |cRXP_PICK_Outhouse Hideout|r
    .accept 25296 >>Accept Gather the Intelligence
    .isQuestTurnedIn 25291 --any of: Twilight Training
    .xp <80,1
step
    .goto 198,90.15,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Devoran|r
    .accept 25294 >>Accept Walking the Dog
    .target Instructor Devoran
    .isQuestTurnedIn 25291 --any of: Twilight Training
    .xp <80,1
step
    .goto 198,89.51,55.46
    >>Open the |cRXP_PICK_Crate of Scrolls|r. Loot it for |cRXP_LOOT_Twilight Communique|r
    .complete 25296,1 --Twilight Communique (1)
    .isOnQuest 25296
step
    .goto 198,91.98,51.52
    >>Pick up |cRXP_PICK_Hyjal Battleplans|r from the ground
    .complete 25296,2 --Hyjal Battleplans (1)
    .isOnQuest 25296
step
    #loop
    .goto 198,84.48,55.32,0
    .goto 198,84.48,55.32,40,0
    .goto 198,83.13,52.04,40,0
    >>Kill |cRXP_ENEMY_Spinescale Basilisks|r and |cRXP_ENEMY_Spinescale Matriarches|r. Loot them for |cRXP_LOOT_Charred Basilisk Meat|r
    .collect 52708,1,25294,1 --Charred Basilisk Meat (1)
    .mob Spinescale Basilisk
    .mob Spinescale Matriarch
    .isOnQuest 25294
step
    .goto 198,74.75,63.19
    >>Click the |cRXP_PICK_Darkwhisper Lodestone|r
    .complete 25509,1 --Darkwhisper Lodestone
    .isOnQuest 25509
step
    .goto 198,89.72,56.35
    >>Interact with |cRXP_FRIENDLY_Spawn of Smolderos|r
    .complete 25294,1 --Spawn of Smolderos
    .target Spawn of Smolderos
    .isOnQuest 25294
step
    .goto 198,90.15,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Devoran|r
    .turnin 25294 >>Turn in Walking the Dog
    .target Instructor Devoran
    .isOnQuest 25294
step
    .goto 198,90.15,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Devoran|r
    .accept 25494 >>Accept A Champion's Collar
    .target Instructor Devoran
    .isQuestTurnedIn 25294 --any of: Walking the Dog
    .xp <78,1
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .turnin 25509 >>Turn in Physical Training: Forced Labor
    .target Instructor Mylva
    .isOnQuest 25509
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .accept 25499 >>Accept Agility Training: Run Like Hell!
    .target Instructor Mylva
    .isQuestTurnedIn 25509 --any of: Physical Training: Forced Labor
    .xp <80,1
step
    .goto 198,88.26,58.56
    >>Click the |cRXP_PICK_Outhouse Hideout|r
    .turnin 25296 >>Turn in Gather the Intelligence
    .isOnQuest 25296
step
    .goto 198,88.26,58.56
    >>Click the |cRXP_PICK_Outhouse Hideout|r
    .accept 25308 >>Accept Seeds of Discord
    .isQuestTurnedIn 25296 --any of: Gather the Intelligence
    .xp <80,1
step
    .goto 198,89.58,59.09
    >>Run away from the Blazing Trainer within the Forge of Supplication for 1 minute.
    .complete 25499,1 --Blazing Trainer Credit (1)
    .isOnQuest 25499
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .turnin 25499 >>Turn in Agility Training: Run Like Hell!
    .target Instructor Mylva
    .isOnQuest 25499
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .accept 25299 >>Accept Mental Training: Speaking the Truth to Power
    .target Instructor Mylva
    .isQuestTurnedIn 25499 --any of: Agility Training: Run Like Hell!
    .xp <80,1
step
    .goto 198,89.39,58.83
    >>Use the Orb of Ascension and answer 10 answers correctly.
    .complete 25299,1 --Orb of Ascension
    .target Orb of Ascension
    .isOnQuest 25299
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .turnin 25299 >>Turn in Mental Training: Speaking the Truth to Power
    .target Instructor Mylva
    .isOnQuest 25299
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .accept 25309 >>Accept Spiritual Training: Mercy is for the Weak
    .target Instructor Mylva
    .isQuestTurnedIn 25299 --any of: Mental Training: Speaking the Truth to Power
    .xp <80,1
step
    .goto 198,92.02,48.76
    >>Kill |cRXP_ENEMY_Failed Supplicants|r
    .complete 25309,1 --Failed Supplicant slain (5)
    .mob Failed Supplicant
    .isOnQuest 25309
step
    .goto 198,84.67,46.91
    >>Kill |cRXP_ENEMY_Spinescale Matriarch|r and loot |cRXP_LOOT_Spiked Basilisk Hide|r
    .complete 25494,1 --Spiked Basilisk Hide (1)
    .mob Spinescale Matriarch
    .isOnQuest 25494
step
    .goto 198,76.63,48.92
    >>Kill |cRXP_ENEMY_High Cultist Azennios|r
    .complete 25308,1 --High Cultist Azennios slain (1)
    .mob High Cultist Azennios
    .isOnQuest 25308
step
    .goto 198,88.26,58.56
    >>Click the |cRXP_PICK_Outhouse Hideout|r
    .turnin 25308 >>Turn in Seeds of Discord
    .isOnQuest 25308
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .turnin 25309 >>Turn in Spiritual Training: Mercy is for the Weak
    .target Instructor Mylva
    .isOnQuest 25309
step
    .goto 198,90.15,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Devoran|r
    .turnin 25494 >>Turn in A Champion's Collar
    .target Instructor Devoran
    .isOnQuest 25494
step
    .goto 198,90.15,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Devoran|r
    .accept 25496 >>Accept Grudge Match
    .target Instructor Devoran
    .isQuestTurnedIn 25494 --any of: A Champion's Collar
    .xp <80,1
step
    .goto 198,77.79,51.45
    >>Kill |cRXP_ENEMY_Gromm'ko|r
    .complete 25496,1 --Gromm'ko slain (1)
    .mob Gromm'ko
    .isOnQuest 25496
step
    .goto 198,90.15,56.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Devoran|r
    .turnin 25496 >>Turn in Grudge Match
    .target Instructor Devoran
    .isOnQuest 25496
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .accept 25310 >>Accept The Greater of Two Evils
    .accept 25311 >>Accept Twilight Territory
    .target Instructor Mylva
    .isQuestTurnedIn 25309 --Spiritual Training: Mercy is for the Weak
    .isQuestTurnedIn 25496 --Grudge Match
    .xp <80,1
step
    #completewith next
    .hs >>Hearth to Jandunel Reedwind's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 198,44.44,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choluna|r
    .turnin 25985 >>Turn in Wings Over Mount Hyjal
    .target Choluna
    .isOnQuest 25985
step
    .goto 198,64.75,64.65
    >>Kill |cRXP_ENEMY_Garnoth, Fist of the Legion|r
    .complete 25310,1 --Garnoth, Fist of the Legion slain (1)
    .mob Garnoth, Fist of the Legion
    .isOnQuest 25310
step
    #loop
    .goto 198,67.45,64.92,0
    .goto 198,67.45,64.92,40,0
    .goto 198,68.98,69.03,40,0
    >>Kill |cRXP_ENEMY_Horrorguards|r
    .complete 25311,1 --Horrorguard slain (10)
    .mob Horrorguard
    .isOnQuest 25311
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .turnin 25310 >>Turn in The Greater of Two Evils
    .target Instructor Mylva
    .isOnQuest 25310
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .turnin 25311 >>Turn in Twilight Territory
    .target Instructor Mylva
    .isOnQuest 25311
step
    .goto 198,88.26,58.56
    >>Click the |cRXP_PICK_Outhouse Hideout|r
    .accept 25314 >>Accept Speech Writing for Dummies
    .isQuestTurnedIn 25308 --Seeds of Discord
    .isQuestTurnedIn 25310 --The Greater of Two Evils
    .isQuestTurnedIn 25311 --Twilight Territory
    .xp <80,1
step
    .goto 198,78.74,56.97
    >>Kill |cRXP_ENEMY_Okrog|r
    .complete 25314,1 --Okrog slain (1)
    .mob Okrog
    .isOnQuest 25314
step
    .goto 198,88.26,58.56
    >>Click the |cRXP_PICK_Outhouse Hideout|r
    .turnin 25314 >>Turn in Speech Writing for Dummies
    .isOnQuest 25314
step
    .goto 198,88.26,58.56
    >>Click the |cRXP_PICK_Outhouse Hideout|r
    .accept 25601 >>Accept Head of the Class
    .isQuestTurnedIn 25314 --any of: Speech Writing for Dummies
    .xp <80,1
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .turnin 25601 >>Turn in Head of the Class
    .target Instructor Mylva
    .isOnQuest 25601
step
    .goto 198,89.58,59.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Mylva|r
    .accept 25315 >>Accept Graduation Speech
    .target Instructor Mylva
    .isQuestTurnedIn 25601 --any of: Head of the Class
    .xp <80,1
step
    .goto 198,95.20,51.33
    >>Click the |cRXP_PICK_Initiation Podium|r
    .complete 25315,1 --Initiation Podium
    .isOnQuest 25315
step
    .goto 198,95.35,51.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .turnin 25315 >>Turn in Graduation Speech
    .target Commander Jarod Shadowsong
    .isOnQuest 25315
step
    .goto 198,95.35,51.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .accept 25531 >>Accept Twilight Riot
    .target Commander Jarod Shadowsong
    .isQuestTurnedIn 25315 --any of: Graduation Speech
    .xp <80,1
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .turnin 25531 >>Turn in Twilight Riot
    .target Commander Jarod Shadowsong
    .isOnQuest 25531
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .accept 25608 >>Accept Slash and Burn
    .target Commander Jarod Shadowsong
    .isQuestTurnedIn 25531 --any of: Twilight Riot
    .xp <80,1
step
    #loop
    .goto 198,80.64,66.14,0
    .goto 198,80.64,66.14,40,0
    .goto 198,79.44,60.58,40,0
    >>Kill |cRXP_ENEMY_Twilight Stormwakers|r
    .complete 25608,1 --Twilight Stormwaker slain (8)
    .mob Twilight Stormwaker
    .isOnQuest 25608
step
    #loop
    .goto 198,83.68,63.83,0
    .goto 198,83.68,63.83,40,0
    .goto 198,84.41,59.75,40,0
    .goto 198,84.26,55.86,40,0
    >>Kill |cRXP_ENEMY_Twilight Initiates|r, |cRXP_ENEMY_Twilight Enforcers|r, |cRXP_ENEMY_Fiery Instructors|r and |cRXP_ENEMY_Twilight Cultists|r
    .complete 25608,2 --Twilight Initiate (8)
    .mob Twilight Initiate
    .mob Twilight Enforcer
    .mob Fiery Instructor
    .mob Twilight Cultist
    .isOnQuest 25608
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .turnin 25608 >>Turn in Slash and Burn
    .target Commander Jarod Shadowsong
    .isOnQuest 25608
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .accept 25548 >>Accept Might of the Firelord
    .target Commander Jarod Shadowsong
    .isQuestTurnedIn 25608 --any of: Slash and Burn
    .xp <80,1
step
    .goto 198,71.92,74.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarius|r
    .accept 25554 >>Accept Secrets of the Flame
    .target Cenarius
    .isQuestTurnedIn 25608 --any of: Slash and Burn
    .xp <80,1
step
    .goto 198,59.66,80.80
    >>Open the |cRXP_PICK_Burning Litanies|r. Loot it for |cRXP_LOOT_The Burning Litanies|r
    .complete 25554,2 --The Burning Litanies (1)
    .isOnQuest 25554
step
    .goto 198,59.13,83.88
    >>Click the |cRXP_PICK_Pure Twilight Egg|r
    .accept 25644 >>Accept The Twilight Egg
    .isQuestTurnedIn 25608 --any of: Slash and Burn
    .xp <78,1
step
    .goto 198,56.84,83.85
    >>Pick up |cRXP_PICK_Ascendant's Codex|r from the ground
    .complete 25554,1 --Ascendant's Codex (1)
    .isOnQuest 25554
step
    .goto 198,58.14,78.89
    >>Pick up |cRXP_PICK_Tome of Flame|r from the ground
    .complete 25554,3 --Tome of Flame (1)
    .isOnQuest 25554
step
    #loop
    .goto 198,60.68,77.93,0
    .goto 198,60.68,77.93,40,0
    .goto 198,58.89,82.96,40,0
    >>Kill |cRXP_ENEMY_Flame Ascendants|r
    .complete 25548,1 --Flame Ascendant slain (4)
    .mob Flame Ascendant
    .isOnQuest 25548
step
    #loop
    .goto 198,59.66,79.99,0
    .goto 198,59.66,79.99,40,0
    .goto 198,57.85,83.51,40,0
    >>Kill |cRXP_ENEMY_Twilight Subjugators|r
    .complete 25548,2 --Twilight Subjugator slain (5)
    .mob Twilight Subjugator
    .isOnQuest 25548
step
    .goto 198,72.24,73.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aronus|r
    .turnin 25644 >>Turn in The Twilight Egg
    .target Aronus
    .isOnQuest 25644
step
    .goto 198,72.24,73.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aronus|r
    .accept 25552 >>Accept Brood of Evil
    .target Aronus
    .isQuestTurnedIn 25644 --any of: The Twilight Egg
    .xp <78,1
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .turnin 25548 >>Turn in Might of the Firelord
    .target Commander Jarod Shadowsong
    .isOnQuest 25548
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .accept 25549 >>Accept The Sanctum of the Prophets
    .target Commander Jarod Shadowsong
    .isQuestTurnedIn 25548 --any of: Might of the Firelord
    .xp <80,1
step
    .goto 198,71.92,74.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarius|r
    .turnin 25554 >>Turn in Secrets of the Flame
    .target Cenarius
    .isOnQuest 25554
step
    .goto 198,71.92,74.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarius|r
    .accept 25555 >>Accept The Gatekeeper
    .target Cenarius
    .isQuestTurnedIn 25554 --any of: Secrets of the Flame
    .xp <78,1
step
    .goto 198,57.34,67.89
    >>Kill |cRXP_ENEMY_Azralon the Gatekeeper|r
    .complete 25555,1 --Azralon the Gatekeeper slain (1)
    .mob Azralon the Gatekeeper
    .isOnQuest 25555
step
    #loop
    .goto 198,57.79,68.38,0
    .goto 198,57.79,68.38,40,0
    .goto 198,60.38,70.96,40,0
    .goto 198,54.49,66.98,40,0
    >>Kill |cRXP_ENEMY_Twilight Augurs|r
    .complete 25549,1 --Twilight Augur slain (4)
    .mob Twilight Augur
    .isOnQuest 25549
step
    .goto 198,57.03,69.29
    >>Kill |cRXP_ENEMY_Emissary of Flame|r
    .complete 25549,3 --Emissary of Flame slain (1)
    .mob Emissary of Flame
    .isOnQuest 25549
step
    .goto 198,56.08,67.50
    >>Kill |cRXP_ENEMY_Twilight Retainers|r
    .complete 25549,2 --Twilight Retainer slain (4)
    .mob Twilight Retainer
    .isOnQuest 25549
step
    .goto 198,58.94,77.69
    >>Kill |cRXP_ENEMY_Young Twilight Drakes|r and |cRXP_ENEMY_Desperionas|r. Loot them for |cRXP_LOOT_Young Twilight Drake Skull|r
    .complete 25552,1 --Young Twilight Drake Skull (1)
    .mob Young Twilight Drake
    .mob Desperiona
    .isOnQuest 25552
step
    .goto 198,71.92,74.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarius|r
    .turnin 25555 >>Turn in The Gatekeeper
    .target Cenarius
    .isOnQuest 25555
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .turnin 25549 >>Turn in The Sanctum of the Prophets
    .target Commander Jarod Shadowsong
    .isOnQuest 25549
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .accept 25550 >>Accept Magma Monarch
    .target Commander Jarod Shadowsong
    .isQuestTurnedIn 25549 --any of: The Sanctum of the Prophets
    .xp <78,1
step
    .goto 198,72.24,73.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aronus|r
    .turnin 25552 >>Turn in Brood of Evil
    .target Aronus
    .isOnQuest 25552
step
    .goto 198,72.24,73.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aronus|r
    .accept 25553 >>Accept Death to the Broodmother
    .target Aronus
    .isQuestTurnedIn 25552 --any of: Brood of Evil
    .xp <78,1
step
    .goto 198,54.12,85.24
    >>Kill |cRXP_ENEMY_Desperiona|r
    .complete 25553,1 --Desperiona slain (1)
    .mob Desperiona
    .isOnQuest 25553
step
    .goto 198,43.37,83.21
    >>Kill |cRXP_ENEMY_King Moltron|r
    .complete 25550,1 --King Moltron slain (1)
    .mob King Moltron
    .isOnQuest 25550
step
    .goto 198,72.24,73.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aronus|r
    .turnin 25553 >>Turn in Death to the Broodmother
    .target Aronus
    .isOnQuest 25553
step
    .goto 198,72.08,74.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Jarod Shadowsong|r
    .turnin 25550 >>Turn in Magma Monarch
    .target Commander Jarod Shadowsong
    .isOnQuest 25550
step
    .xp 82 >> Grind to 82 or consider running dungeons
step
    +|cRXP_WARN_End of the Mount Hyjal route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Icecrown|r: The Boon of Remulos
    >>|cRXP_FRIENDLY_Shadowfang Keep - Lower Observatory (fake ID for Shadowfang Keep), Elsewhere and back here|r: The Circle's Future << NightElf Druid/Worgen Druid
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
