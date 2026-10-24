-- 1-5 Ammen Vale: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Ammen Vale.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 1-5 Ammen Vale

step << Human/Dwarf/NightElf/Gnome/Worgen/Pandaren
    .goto 468,52.74,35.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .accept 9369 >>Accept Replenishing the Healing Crystals
    .target Proenitus
step << Human/Dwarf/NightElf/Gnome/Worgen/Pandaren
    #loop
    .goto 468,50.18,32.89,0
    .goto 468,50.18,32.89,40,0
    .goto 468,51.87,29.93,40,0
    >>Kill |cRXP_ENEMY_Vale Moth|r and loot |cRXP_LOOT_Vial of Moth Blood|r
    .complete 9369,1 --Vial of Moth Blood (1)
    .mob Vale Moth
step << Draenei
    .goto 468,52.74,35.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >>Turn in You Survived!
    .target Proenitus
    .isOnQuest 9279
step
    .goto 468,52.74,35.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9369 >>Turn in Replenishing the Healing Crystals << Human/Dwarf/NightElf/Gnome/Worgen/Pandaren
    .accept 9280 >>Accept Replenishing the Healing Crystals << Draenei
    .target Proenitus
step << Draenei
    #loop
    .goto 468,47.28,34.64,0
    .goto 468,47.28,34.64,40,0
    .goto 468,45.21,30.39,40,0
    .goto 468,46.74,25.47,40,0
    >>Kill |cRXP_ENEMY_Vale Moths|r. Loot them for |cRXP_LOOT_Vial of Moth Blood|r
    .complete 9280,1 --Vial of Moth Blood (8)
    .mob Vale Moth
step
    .goto 468,52.74,35.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >>Turn in Replenishing the Healing Crystals << Draenei
    .accept 9409 >>Accept Urgent Delivery! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 9371 >>Accept Botanist Taerix << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Proenitus
step
    .goto 468,49.87,37.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9371 >>Turn in Botanist Taerix << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 10302 >>Accept Volatile Mutations << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 10304 >>Accept Vindicator Aldar
    .target Botanist Taerix
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 468,47.59,30.40,0
    .goto 468,47.59,30.40,40,0
    .goto 468,45.86,26.04,40,0
    .goto 468,42.63,25.45,40,0
    >>Kill |cRXP_ENEMY_Volatile Mutations|r
    .complete 10302,1 --Volatile Mutation slain (8)
    .mob Volatile Mutation
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,49.87,37.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 10302 >>Turn in Volatile Mutations
    .accept 9293 >>Accept What Must Be Done...
    .target Botanist Taerix
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,49.72,37.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vishael|r
    .accept 9799 >>Accept Botanical Legwork
    .target Apprentice Vishael
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 468,40.26,42.04,0
    .goto 468,40.26,42.04,40,0
    .goto 468,35.02,40.97,40,0
    .goto 468,35.71,46.32,40,0
    .goto 468,36.97,50.65,40,0
    >>Kill |cRXP_ENEMY_Mutated Root Lashers|r. Loot them for |cRXP_LOOT_Lasher Sample|r
    >>Pick up |cRXP_PICK_Corrupted Flower|r from the ground
    .complete 9293,1 --Lasher Sample (10)
    .complete 9799,1 --Corrupted Flower (3)
    .mob Mutated Root Lasher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,49.87,37.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9293 >>Turn in What Must Be Done...
    .accept 9294 >>Accept Healing the Lake
    .target Botanist Taerix
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,49.72,37.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 9799 >>Turn in Botanical Legwork
    .target Apprentice Vishael
step
    .goto 468,52.10,42.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    .turnin 9409 >>Turn in Urgent Delivery! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 9283 >>Accept Rescue the Survivors! << Draenei
    .accept 26970 >>Accept Learning the Word << Draenei Priest
    .target Zalduun
step
    .goto 468,50.13,47.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ryosh|r
    .target Ryosh
    .home >>Set your Hearthstone to Ryosh's inn
step
    .goto 468,50.65,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 10304 >>Turn in Vindicator Aldar while you are here
    .isQuestComplete 10304
    .target Vindicator Aldar
step << Draenei Warrior
    .goto 468,50.87,43.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .accept 26958 >>Accept Your First Lesson
    .target Kore
step << Draenei Paladin
    .goto 468,51.11,41.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    .accept 26966 >>Accept The Light's Power
    .target Aurelon
step << Draenei Hunter
    .goto 468,51.54,44.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
    .accept 26963 >>Accept Steadying Your Shot
    .target Keilnei
step << Draenei Priest
    .goto 468,51.72,36.90
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26970,1 --Training Dummy slain (8)
    .mob Training Dummy
step << Draenei Priest
    .goto 468,52.10,42.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    .turnin 26970 >>Turn in Learning the Word
    .target Zalduun
step << Draenei Shaman
    .goto 468,50.18,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .accept 26969 >>Accept Primal Strike
    .target Firmanvaar
step << Draenei Mage
    .goto 468,50.86,42.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
    .accept 26968 >>Accept Frost Nova
    .target Valaatu
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,50.50,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .accept 9305 >>Accept Spare Parts
    .target Technician Zhanaa
step
    .goto 468,50.65,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 10304 >>Turn in Vindicator Aldar
    .accept 9303 >>Accept Inoculation << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Vindicator Aldar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,45.58,65.24
    >>Click the |cRXP_PICK_Irradiated Power Crystal|r
    .complete 9294,1 --Irradiated Power Crystal
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 468,64.47,84.39,0
    .goto 468,64.47,84.39,40,0
    .goto 468,63.51,87.84,40,0
    >>Pick up |cRXP_PICK_Emitter Spare Part|r from the ground
    .complete 9305,1 --Emitter Spare Part (4)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,65.69,81.30
    >>Interact with |cRXP_FRIENDLY_Nestlewood Owlkins|r
    .complete 9303,1 --Nestlewood Owlkin (6)
    .target Nestlewood Owlkin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,49.87,37.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >>Turn in Healing the Lake
    .target Botanist Taerix
step << Draenei Warrior
    .goto 468,51.72,36.90
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26958,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Draenei Warrior
    .goto 468,50.87,43.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .turnin 26958 >>Turn in Your First Lesson
    .target Kore
step << Draenei Paladin
    .goto 468,51.72,36.90
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26966,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Draenei Paladin
    .goto 468,51.11,41.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    .turnin 26966 >>Turn in The Light's Power
    .target Aurelon
step << Draenei Hunter
    .goto 468,51.72,36.90
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26963,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Draenei Hunter
    .goto 468,51.54,44.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
    .turnin 26963 >>Turn in Steadying Your Shot
    .target Keilnei
step << Draenei Shaman
    .goto 468,51.72,36.90
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26969,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Draenei Shaman
    .goto 468,50.18,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 26969 >>Turn in Primal Strike
    .target Firmanvaar
step << Draenei Mage
    .goto 468,51.72,36.90
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26968,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Draenei Mage
    .goto 468,50.86,42.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
    .turnin 26968 >>Turn in Frost Nova
    .target Valaatu
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,50.50,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9305 >>Turn in Spare Parts
    .target Technician Zhanaa
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,50.65,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9303 >>Turn in Inoculation
    .accept 9309 >>Accept The Missing Scout
    .target Vindicator Aldar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,33.89,69.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >>Turn in The Missing Scout
    .accept 10303 >>Accept The Blood Elves
    .target Tolaan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 468,33.07,73.41,0
    .goto 468,33.07,73.41,40,0
    .goto 468,29.23,70.56,40,0
    .goto 468,28.19,76.82,40,0
    >>Kill |cRXP_ENEMY_Blood Elf Scouts|r
    .complete 10303,1 --Blood Elf Scout slain (10)
    .mob Blood Elf Scout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,33.89,69.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >>Turn in The Blood Elves
    .accept 9311 >>Accept Blood Elf Spy
    .target Tolaan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,27.78,80.43
    >>Kill |cRXP_ENEMY_Surveyor Candress|r
    .complete 9311,1 --Surveyor Candress slain (1)
    .mob Surveyor Candress
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,27.78,80.43
    >>Kill |cRXP_ENEMY_Surveyor Candress|r and loot |cRXP_LOOT_Blood Elf Plans|r. Use it to start the quest
    .collect 24414,1,9798 --Blood Elf Plans (1)
    .accept 9798 >>Accept Blood Elf Plans
    .use 24414
    .mob Surveyor Candress
step << Draenei
    .goto 468,48.89,56.60
    >>Interact with |cRXP_FRIENDLY_Draenei Survivor|r
    .complete 9283,1 --Draenei Survivor
    .target Draenei Survivor
step << Draenei
    .goto 468,52.10,42.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    .turnin 9283 >>Turn in Rescue the Survivors!
    .target Zalduun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Ryosh's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,50.65,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9311 >>Turn in Blood Elf Spy
    .turnin 9798 >>Turn in Blood Elf Plans
    .accept 9312 >>Accept The Emitter
    .target Vindicator Aldar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 468,50.50,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9312 >>Turn in The Emitter
    .accept 9313 >>Accept Travel to Azure Watch
    .target Technician Zhanaa
step
    +|cRXP_WARN_End of the Ammen Vale route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Travel to Azure Watch << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
]])
