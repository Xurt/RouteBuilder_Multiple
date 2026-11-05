-- 1-12 Azuremyst Isle: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 1, 12, 15).
-- Split into 4 guides, listed under "1 - 16 Azuremyst Isle" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Azuremyst Isle.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Azuremyst Isle
#subweight -1
#name 1-5 Azuremyst Isle: around Proenitus
#next Zone Routes (Alliance)\5-10 Azuremyst Isle: around Daedal

step
    .goto 1943,80.42,45.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .accept 9369 >>Accept Replenishing the Healing Crystals << Human/Dwarf/NightElf/Gnome
    .accept 9371 >>Accept Botanist Taerix
    .target Proenitus
step << Human/Dwarf/NightElf/Gnome
    #completewith Along1
    >>As you go: Kill |cRXP_ENEMY_Vale Moth|r and loot |cRXP_LOOT_Vial of Moth Blood|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9369,1 --Vial of Moth Blood (1)
    .mob Vale Moth
step
    #label Along1
    .goto 1943,79.14,46.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9371 >>Turn in Botanist Taerix
    .accept 10302 >>Accept Volatile Mutations
    .target Botanist Taerix
step << Draenei
    .goto 1943,82.91,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >>Accept You Survived!
    .target Megelon
step << Shaman
    .goto 1943,79.28,49.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon]
    .target Firmanvaar
step << Warrior
    .goto 1943,79.59,49.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Kore
step << Draenei
    .goto 1943,80.42,45.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >>Turn in You Survived!
    .accept 9280 >>Accept Replenishing the Healing Crystals
    .target Proenitus
step << Priest/Mage
    .goto 1943,79.25,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ryosh|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,10
    .target Ryosh
step << Draenei
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Vale Moths|r. Loot them for |cRXP_LOOT_Vial of Moth Blood|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9280,1 --Vial of Moth Blood (8)
    .mob Vale Moth
step
    #label Along4
    #loop
    .goto 1943,77.99,42.01,0
    .goto 1943,77.99,42.01,40,0
    .goto 1943,80.61,40.99,40,0
    >>Kill |cRXP_ENEMY_Volatile Mutations|r
    >>Kill |cRXP_ENEMY_Vale Moth|r and loot |cRXP_LOOT_Vial of Moth Blood|r << Human/Dwarf/NightElf/Gnome
    .complete 10302,1 --Volatile Mutation slain (8)
    .complete 9369,1 << Human/Dwarf/NightElf/Gnome --Vial of Moth Blood (1)
    .mob Volatile Mutation
    .mob Vale Moth << Human/Dwarf/NightElf/Gnome
step << Human/Dwarf/NightElf/Gnome
    .goto 1943,80.42,45.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9369 >>Turn in Replenishing the Healing Crystals
    .target Proenitus
step
    .goto 1943,79.14,46.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 10302 >>Turn in Volatile Mutations while you are here
    .isQuestComplete 10302
    .target Botanist Taerix
step << Draenei
    #loop
    .goto 1943,76.83,44.67,0
    .goto 1943,76.83,44.67,40,0
    .goto 1943,75.98,49.16,40,0
    .goto 1943,73.41,43.73,40,0
    >>Kill |cRXP_ENEMY_Vale Moths|r. Loot them for |cRXP_LOOT_Vial of Moth Blood|r
    .complete 9280,1 --Vial of Moth Blood (8)
    .mob Vale Moth
step
    .goto 1943,80.42,45.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >>Turn in Replenishing the Healing Crystals << Draenei
    .accept 9409 >>Accept Urgent Delivery!
    .target Proenitus
step
    .goto 1943,80.13,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    .turnin 9409 >>Turn in Urgent Delivery! while you are here
    .isQuestComplete 9409
    .target Zalduun
step
    .goto 1943,79.14,46.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 10302 >>Turn in Volatile Mutations
    .accept 9293 >>Accept What Must Be Done...
    .target Botanist Taerix
step
    .goto 1943,79.07,46.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vishael|r
    .accept 9799 >>Accept Botanical Legwork
    .target Apprentice Vishael
step << Draenei Paladin
    .goto 1943,79.69,48.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    .accept 9287 >>Accept Paladin Training
    .target Aurelon
    .xp <2,1
step << Shaman
    .goto 1943,79.28,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .accept 9421 >>Accept Shaman Training
    .target Firmanvaar
    .xp <2,1
step << Draenei Warrior
    .goto 1943,79.59,49.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .accept 9289 >>Accept Warrior Training
    .target Kore
    .xp <2,1
step << Draenei Hunter
    .goto 1943,79.89,49.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
    .accept 9288 >>Accept Hunter Training
    .target Keilnei
    .xp <2,1
step
    #loop
    .goto 1943,73.33,48.04,0
    .goto 1943,73.33,48.04,40,0
    .goto 1943,73.44,52.18,40,0
    >>Kill |cRXP_ENEMY_Mutated Root Lashers|r. Loot them for |cRXP_LOOT_Lasher Sample|r
    >>Pick up |cRXP_PICK_Corrupted Flower|r from the ground
    .complete 9293,1 --Lasher Sample (10)
    .complete 9799,1 --Corrupted Flower (3)
    .mob Mutated Root Lasher
step
    .goto 1943,74.50,48.50,0
    .goto 1943,72.90,52.20,0
    .goto 1943,72.20,49.20,0
    .goto 1943,74.60,43.60,0
    .goto 1943,78.20,40.20,0
    .goto 1943,79.20,45.00,0
    .goto 1943,76.00,46.60,0
    .goto 1943,74.50,48.50,50,0
    .goto 1943,72.90,52.20,50,0
    .goto 1943,72.20,49.20,50,0
    .goto 1943,74.60,43.60,60,0
    .goto 1943,78.20,40.20,60,0
    .goto 1943,79.20,45.00,60,0
    .goto 1943,76.00,46.60,60,0
    .xp 4-420 >>Grind until you are 420xp away from level 4 (980/1400)
step
    .goto 1943,74.50,48.50,0
    .goto 1943,72.90,52.20,0
    .goto 1943,72.20,49.20,0
    .goto 1943,74.60,43.60,0
    .goto 1943,78.20,40.20,0
    .goto 1943,79.20,45.00,0
    .goto 1943,76.00,46.60,0
    .goto 1943,74.50,48.50,50,0
    .goto 1943,72.90,52.20,50,0
    .goto 1943,72.20,49.20,50,0
    .goto 1943,74.60,43.60,60,0
    .goto 1943,78.20,40.20,60,0
    .goto 1943,79.20,45.00,60,0
    .goto 1943,76.00,46.60,60,0
    .xp 4-500 >>Grind until you are 500xp away from level 4 (900/1400)
step
    .goto 1943,79.14,46.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9293 >>Turn in What Must Be Done...
    .accept 9294 >>Accept Healing the Lake
    .target Botanist Taerix
step
    .goto 1943,79.07,46.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 9799 >>Turn in Botanical Legwork
    .target Apprentice Vishael
step << Draenei Paladin
    .goto 1943,79.69,48.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    .accept 9287 >>Accept Paladin Training
    .turnin 9287 >>Turn in Paladin Training
    .target Aurelon
step << Paladin
    .goto 1943,79.70,48.24,7,0
    .goto 1943,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_may patrol slightly|r
    .train 465 >>Train |T135893:0|t[Devotion Aura]
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Aurelon
step << Draenei Mage
    .goto 1943,79.58,48.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
    .accept 9290 >>Accept Mage Training
    .turnin 9290 >>Turn in Mage Training
    .target Valaatu
step << Mage
    .goto 1943,79.58,48.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valaatu|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Valaatu
step
    .goto 1943,80.13,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    .turnin 9409 >>Turn in Urgent Delivery!
    .accept 9283 >>Accept Rescue the Survivors! << Draenei
    .accept 9291 >>Accept Priest Training << Draenei Priest
    .turnin 9291 >>Turn in Priest Training << Draenei Priest
    .target Zalduun
step
    .goto 1943,80.25,48.46,10,0
    .goto 1943,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrols slightly|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude] << Priest
    .train 2052 >> Train |T135929:0|t[Lesser Heal] << Priest
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain] << Priest
    .target Zalduun
step << Draenei Warrior
    .goto 1943,79.59,49.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .accept 9289 >>Accept Warrior Training
    .turnin 9289 >>Turn in Warrior Training
    .target Kore
step << Warrior
    .goto 1943,79.59,49.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kore|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Kore
step << Draenei Hunter
    .goto 1943,79.89,49.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
    .accept 9288 >>Accept Hunter Training
    .turnin 9288 >>Turn in Hunter Training
    .target Keilnei
step << Hunter
    .goto 1943,79.89,49.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keilnei|r
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
    .target Keilnei
step << Shaman
    .goto 1943,79.28,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .accept 9421 >>Accept Shaman Training
    .turnin 9421 >>Turn in Shaman Training
    .accept 9449 >>Accept Call of Earth
    .target Firmanvaar
step << Shaman
    .goto 1943,79.28,49.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .target Firmanvaar
step << Shaman
    .goto 1943,71.80,40.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of the Vale|r
    .turnin 9449 >>Turn in Call of Earth
    .accept 9450 >>Accept Call of Earth
    .target Spirit of the Vale
step << Shaman
    .goto 1943,70.04,36.61
    >>Kill |cRXP_ENEMY_Restless Spirit of Earths|r
    .complete 9450,1 --Restless Spirit of Earth slain (4)
    .mob Restless Spirit of Earth
step << Shaman
    .goto 1943,71.80,40.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of the Vale|r
    .turnin 9450 >>Turn in Call of Earth
    .accept 9451 >>Accept Call of Earth
    .target Spirit of the Vale
step << Shaman
    .goto 1943,79.28,49.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 9451 >>Turn in Call of Earth
    .target Firmanvaar
step
    .goto 1943,79.42,51.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .accept 9305 >>Accept Spare Parts
    .target Technician Zhanaa
step
    .goto 1943,79.49,51.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .accept 9303 >>Accept Inoculation
    .target Vindicator Aldar
step
    .goto 1943,77.22,59.00
    >>Click the |cRXP_PICK_Irradiated Power Crystal|r
    .complete 9294,1 --Disperse the Neutralizing Agent
step
    #loop
    .goto 1943,86.64,63.65,0
    .goto 1943,86.64,63.65,40,0
    .goto 1943,85.66,67.55,40,0
    >>Pick up |cRXP_PICK_Emitter Spare Part|r from the ground
    .complete 9305,1 --Emitter Spare Part (4)
step
    #loop
    .goto 1943,86.21,66.17,0
    .goto 1943,86.21,66.17,40,0
    .goto 1943,85.50,67.35,40,0
    .goto 1943,80.18,60.73,40,0
    >>Interact with |cRXP_FRIENDLY_Nestlewood Owlkins|r
    .complete 9303,1 --Nestlewood Owlkin (6)
    .target Nestlewood Owlkin
step
    .goto 1943,79.14,46.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >>Turn in Healing the Lake
    .target Botanist Taerix
step
    .xp 3 >>Grind to level 3 (Vindicator Aldar needs it)
step
    .goto 1943,79.14,46.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Taerix|r
    .accept 10304 >>Accept Vindicator Aldar
    .target Botanist Taerix
step
    .goto 1943,79.42,51.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9305 >>Turn in Spare Parts
    .target Technician Zhanaa
step
    .goto 1943,79.49,51.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 10304 >>Turn in Vindicator Aldar
    .turnin 9303 >>Turn in Inoculation
    .accept 9309 >>Accept The Missing Scout
    .target Vindicator Aldar
step
    .goto 1943,72.00,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >>Turn in The Missing Scout
    .accept 10303 >>Accept The Blood Elves
    .target Tolaan
step
    #loop
    .goto 1943,70.56,62.76,0
    .goto 1943,70.56,62.76,40,0
    .goto 1943,69.85,65.27,40,0
    >>Kill |cRXP_ENEMY_Blood Elf Scouts|r
    .complete 10303,1 --Blood Elf Scout slain (10)
    .mob Blood Elf Scout
step
    .goto 1943,72.00,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >>Turn in The Blood Elves
    .accept 9311 >>Accept Blood Elf Spy
    .target Tolaan
step
    .goto 1943,69.27,65.78
    >>Kill |cRXP_ENEMY_Surveyor Candress|r
    .complete 9311,1 --Surveyor Candress slain (1)
    .mob Surveyor Candress
step
    .goto 1943,69.27,65.78
    >>Kill |cRXP_ENEMY_Surveyor Candress|r and loot |cRXP_LOOT_Blood Elf Plans|r. Use it to start the quest
    .collect 24414,1,9798 --Blood Elf Plans (1)
    .accept 9798 >>Accept Blood Elf Plans
    .use 24414
    .mob Surveyor Candress
step << Draenei
    #loop
    .goto 1943,72.42,62.14,0
    .goto 1943,72.42,62.14,40,0
    .goto 1943,74.21,62.88,40,0
    .goto 1943,74.92,61.06,40,0
    .goto 1943,76.28,60.66,40,0
    >>Interact with |cRXP_FRIENDLY_Draenei Survivor|r
    .complete 9283,1 --Draenei Survivor
    .target Draenei Survivor
step
    .goto 1943,69.42,64.61
    .xp 6-1450 >>Grind |cRXP_ENEMY_Blood Elf Scouts|r until you are 1450xp away from level 6 (1350/2800). Let yourself get low hp on the last few mobs, we're death skipping after
step
    .goto 1943,69.42,64.61
    .xp 6-1230 >>Grind |cRXP_ENEMY_Blood Elf Scouts|r until you are 1230xp away from level 6 (1570/2800). Let yourself get low hp on the last few mobs, we're death skipping after
step << Draenei
    .goto 1943,80.13,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalduun|r
    .turnin 9283 >>Turn in Rescue the Survivors!
    .target Zalduun
step
    .goto 1943,79.49,51.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9311 >>Turn in Blood Elf Spy
    .turnin 9798 >>Turn in Blood Elf Plans
    .accept 9312 >>Accept The Emitter
    .target Vindicator Aldar
step
    .goto 1943,79.42,51.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9312 >>Turn in The Emitter
    .accept 9313 >>Accept Travel to Azure Watch
    .target Technician Zhanaa
step
    .goto 1943,64.49,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >>Accept Word from Azure Watch
    .target Aeun
step
    .goto 1943,61.05,54.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >>Accept Red Snapper - Very Tasty!
    .target Diktynna
step << Draenei
    #loop
    .goto 1943,40.27,71.21,0
    .goto 1943,40.27,71.21,40,0
    .goto 1943,56.83,59.81,40,0
    .goto 1943,42.86,57.14,40,0
    .goto 1943,55.20,47.40,40,0
    .goto 1943,53.60,42.60,40,0
    .goto 1943,58.60,41.60,40,0
    .goto 1943,39.60,37.80,40,0
    .goto 1943,46.60,31.90,40,0
    .goto 1943,55.20,28.60,40,0
    .goto 1943,37.84,18.12,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draenei Youngling|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9612 >>Accept A Hearty Thanks!
    .unitscan Draenei Youngling
step << Draenei
    .goto 1943,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .accept 9463 >>Accept Medicinal Purpose
    .target Anchorite Fateema
step << Draenei
    .goto 1943,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >>Turn in A Hearty Thanks!
    .target Exarch Menelaous
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Azuremyst Isle
#subweight -1
#name 5-10 Azuremyst Isle: around Daedal
--RouteBuilder:next
#next Zone Routes (Alliance)\5-10 Elwynn Forest: around Marshal Dughan;Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver;Zone Routes (Alliance)\10-12 Bloodmyst Isle: around Morae

step
    .goto 1943,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9455 >>Turn in Strange Findings
    .target Exarch Menelaous
    .isOnQuest 9455
step << Draenei
    .goto 1943,48.39,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .accept 9505 >>Accept The Prophecy of Velen
    .target Daedal
    .isQuestTurnedIn 9473 --any of: An Alternative Alternative
step
    .goto 1943,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .accept 9456 >>Accept Nightstalker Clean Up, Isle 2...
    .target Exarch Menelaous
    .isQuestTurnedIn 9455 --any of: Strange Findings
    .xp <5,1
step
    .goto 1943,48.71,50.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Dyvuun|r
    .turnin 9313 >>Turn in Travel to Azure Watch
    .target Technician Dyvuun
    .isOnQuest 9313
step
    .goto 1943,48.37,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9314 >>Turn in Word from Azure Watch
    .target Caregiver Chellan
    .isOnQuest 9314
step << Priest
    .goto 1943,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >>Accept Help Tavara
    .target Guvan
    .xp <5,1
step
    .goto 1943,61.05,54.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .target Diktynna
    .home >>Set your Hearthstone to Diktynna's inn
step << Draenei
    .goto 1943,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9505 >>Turn in The Prophecy of Velen
    .target Admiral Odesyus
step
    .goto 1943,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >>Accept A Small Start
    .target Admiral Odesyus
    .xp <5,1
step
    .goto 1943,46.69,70.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >>Accept Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
    .xp <5,1
step << Priest
    .goto 1943,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >>Accept Help Tavara
    .target Guvan
step << Priest
    .goto 1943,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Guvan
step << Mage
    .goto 1943,49.87,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Semid
step << Hunter
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .train 3044 >> Train |T132218:0|t[Arcane Shot]
    .train 1130 >> Train |T132212:0|t[Hunter's Mark]
    .target Acteon
step << Warrior/Paladin
    .goto 1943,48.96,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Dulvi
step << Warrior/Paladin
    .goto 1943,48.77,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from him|r
    .collect 2901,1
    .target Ziz
    .train 2575,3
step << Priest
    .goto 1943,56.22,48.88
    >>Interact with |cRXP_FRIENDLY_Tavara|r
    .complete 9586,1 --Tavara
    .target Tavara
step
    .goto 1943,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >>Accept A Small Start
    .target Admiral Odesyus
step
    .goto 1943,46.69,70.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >>Accept Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
step << Warrior/Paladin
    .goto 1943,46.36,71.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blacksmith Calypso|r
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_and|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Blacksmith Calypso
    .train 2575,3
step
    .goto 1943,58.60,66.38
    >>Pick up |cRXP_PICK_Nautical Map|r from the ground
    >>Pick up |cRXP_PICK_Nautical Compass|r from the ground
    .complete 9506,2 --Nautical Map (1)
    .complete 9506,1 --Nautical Compass (1)
step
    #loop
    .goto 1943,56.75,70.48,0
    .goto 1943,56.75,70.48,40,0
    .goto 1943,54.52,70.61,40,0
    .goto 1943,51.95,70.94,40,0
    >>Kill |cRXP_ENEMY_Skittering Crawlers|r and |cRXP_ENEMY_Barbed Crawlers|r. Loot them for |cRXP_LOOT_Skittering Crawler Meat|r
    .complete 9512,1 --Skittering Crawler Meat (6)
    .mob Skittering Crawler
    .mob Barbed Crawler
step
    .goto 1943,46.69,70.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >>Turn in Cookie's Jumbo Gumbo
    .target "Cookie" McWeaksauce
step
    .goto 1943,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9506 >>Turn in A Small Start
    .target Admiral Odesyus
step
    .goto 1943,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9513 >>Accept Reclaiming the Ruins
    .target Priestess Kyleen Il'dinare
    .xp <6,1
step
    .goto 1943,47.24,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >>Accept Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
    .xp <6,1
step
    .xp 6 >>Grind to level 6 (A Cry For Help needs it)
step
    .goto 1943,13.62,73.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magwin|r
    .accept 9528 >>Accept A Cry For Help
    .target Magwin
step
    .goto 1943,16.38,94.14
    >>Magwin Escorted to Safety
    .complete 9528,1 --Magwin Escorted to Safety
step
    .goto 1943,16.60,94.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 9528 >>Turn in A Cry For Help
    .target Cowlen
step
    .goto 1943,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9530 >>Accept I've Got a Plant
    .target Admiral Odesyus
step
    .goto 1943,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9513 >>Accept Reclaiming the Ruins
    .target Priestess Kyleen Il'dinare
step
    .goto 1943,47.24,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >>Accept Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step
    .goto 1943,45.93,65.66
    >>Pick up |cRXP_PICK_Hollowed Out Tree|r from the ground
    .complete 9530,1 --Hollowed Out Tree (1)
step
    #loop
    .goto 1943,50.40,63.50,0
    .goto 1943,50.40,63.50,40,0
    .goto 1943,51.50,66.00,40,0
    .goto 1943,50.10,57.50,40,0
    >>Pick up |cRXP_PICK_Pile of Leaves|r from the ground
    .complete 9530,2 --Pile of Leaves (5)
step << Draenei
    #loop
    .goto 1943,52.09,64.15,0
    .goto 1943,52.09,64.15,40,0
    .goto 1943,53.96,64.82,40,0
    .goto 1943,51.75,61.22,40,0
    >>Kill |cRXP_ENEMY_Root Trappers|r. Loot them for |cRXP_LOOT_Root Trapper Vine|r
    .complete 9463,1 --Root Trapper Vine (6)
    .mob Root Trapper
    .isOnQuest 9463
step
    .goto 1943,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9530 >>Turn in I've Got a Plant
    .accept 9531 >>Accept Tree's Company
    .target Admiral Odesyus
step
    .xp 8-950 >> Grind until you are 950xp away from level 8 (3550/4500)
    >>|cRXP_WARN_Try to finish near Azure Watch|r
step
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .accept 9454 >>Accept The Great Moongraze Hunt
    .target Acteon
step << Draenei
    .goto 1943,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .turnin 9463 >>Turn in Medicinal Purpose while you are here
    .isQuestComplete 9463
    .target Anchorite Fateema
step << Priest
    .goto 1943,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >>Turn in Help Tavara while you are here
    .isQuestComplete 9586
    .target Guvan
step
    #loop
    .goto 1943,49.70,41.29,0
    .goto 1943,49.70,41.29,40,0
    .goto 1943,53.42,42.55,40,0
    >>Kill |cRXP_ENEMY_Moongraze Stags|r and |cRXP_ENEMY_Moongraze Bucks|r. Loot them for |cRXP_LOOT_Moongraze Stag Tenderloin|r
    .complete 9454,1 --Moongraze Stag Tenderloin (6)
    .mob Moongraze Stag
    .mob Moongraze Buck
step
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 9454 >>Turn in The Great Moongraze Hunt
    .accept 10324 >>Accept The Great Moongraze Hunt
    .target Acteon
step << Hunter
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .train 5116 >> Train |T135860:0|t[Concussive Shot]
    .train 14260 >> Train |T132223:0|t[Raptor Strike]
    .target Acteon
step << Draenei
    .goto 1943,48.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Fateema|r
    .turnin 9463 >>Turn in Medicinal Purpose
    .target Anchorite Fateema
    .isOnQuest 9463
step << Draenei
    .goto 1943,48.39,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .accept 9473 >>Accept An Alternative Alternative
    .target Daedal
    .isQuestTurnedIn 9463 --any of: Medicinal Purpose
step << Shaman
    .goto 1943,48.05,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .trainer >> Train your class spells
    .target Tuluun
    .subzoneskip 3576,1
step
    .goto 1943,48.96,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >>Accept The Missing Fisherman
    .target Dulvi
step
    .goto 1943,49.38,50.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cryptographer Aurren|r
    .accept 9538 >>Accept Learning the Language
    .target Cryptographer Aurren
step
    .goto 1943,49.29,51.07
    >>Stillpine Furbolg Language Primer Read
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto 1943,49.44,50.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Akida|r
    .turnin 9538 >>Turn in Learning the Language
    .accept 9539 >>Accept Totem of Coo
    .target Totem of Akida
step << Priest
    .goto 1943,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >>Turn in Help Tavara
    .target Guvan
step << Priest
    .goto 1943,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .trainer >> Train your class spells
    .target Guvan
step << Paladin
    .goto 1943,48.36,49.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .trainer >> Train your class spells
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto 1943,49.87,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .trainer >> Train your class spells
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto 1943,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Ruada
    .subzoneskip 3576,1
step
    #completewith Along80
    >>As you go: Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for |cRXP_LOOT_Moongraze Buck Hide|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10324,1 --Moongraze Buck Hide (6)
    .mob Moongraze Buck
step
    #label Along80
    .goto 1943,55.23,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Coo|r
    .turnin 9539 >>Turn in Totem of Coo
    .accept 9540 >>Accept Totem of Tikti
    .target Totem of Coo
step << Draenei
    #loop
    .goto 1943,51.60,34.83,0
    .goto 1943,51.60,34.83,40,0
    .goto 1943,47.55,34.45,40,0
    .goto 1943,46.26,38.66,40,0
    >>Loot the |cRXP_PICK_Azure Snapdragons|r for |cRXP_LOOT_Azure Snapdragon Bulb|r
    .complete 9473,1 --Azure Snapdragon Bulb (5)
    .isOnQuest 9473
step
    .goto 1943,64.47,39.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Tikti|r
    .turnin 9540 >>Turn in Totem of Tikti
    .accept 9541 >>Accept Totem of Yor
    .target Totem of Tikti
step
    #loop
    .goto 1943,62.15,41.89,0
    .goto 1943,62.15,41.89,40,0
    .goto 1943,60.84,44.59,40,0
    .goto 1943,61.06,48.58,40,0
    .goto 1943,62.93,68.84,40,0
    .goto 1943,63.12,64.86,40,0
    .goto 1943,61.89,51.57,40,0
    >>Loot the |cRXP_PICK_School of Red Snappers|r for |cRXP_LOOT_Red Snapper|r
    .complete 9452,1 --Red Snapper (10)
    .isOnQuest 9452
step
    .goto 1943,63.12,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Yor|r
    .turnin 9541 >>Turn in Totem of Yor while you are here
    .isQuestComplete 9541
    .target Totem of Yor
step
    .goto 1943,61.05,54.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >>Turn in Red Snapper - Very Tasty!
    .target Diktynna
    .isOnQuest 9452
step
    .goto 1943,61.05,54.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diktynna|r
    .accept 9453 >>Accept Find Acteon!
    .target Diktynna
    .isQuestTurnedIn 9452 --any of: Red Snapper - Very Tasty!
step
    .goto 1943,63.12,67.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Yor|r
    .turnin 9541 >>Turn in Totem of Yor
    .accept 9542 >>Accept Totem of Vark
    .target Totem of Yor
step
    .goto 1943,28.11,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Totem of Vark|r
    .turnin 9542 >>Turn in Totem of Vark
    .accept 9544 >>Accept The Prophecy of Akida
    .target Totem of Vark
step
    #loop
    .goto 1943,27.50,62.23,0
    .goto 1943,27.50,62.23,40,0
    .goto 1943,27.06,67.14,40,0
    >>Kill |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r and |cRXP_ENEMY_Bristlelimb Ursas|r. Loot them for |cRXP_LOOT_Bristlelimb Key|r
    .collect 23801,1,9544,1 --Bristlelimb Key (1)
    .mob Bristlelimb Furbolg
    .mob Bristlelimb Windcaller
    .mob Bristlelimb Ursa
step
    #loop
    .goto 1943,25.04,66.59,0
    .goto 1943,25.04,66.59,40,0
    .goto 1943,27.35,62.20,40,0
    >>Free 8 Stillpine Captives from cages found in Bristlelimb Village. Return to Arugoo of the Stillpine at Azure Watch when you have completed this task.
    .complete 9544,1 --Stillpine Captive (8)
    .target Stillpine Captive
step
    #completewith Drop9455x1
    >>|cRXP_LOOT_Faintly Glowing Crystal|r can drop from |cRXP_ENEMY_Infected Nightstalker Runt|r. Use it to start the quest if you get one
    .collect 23678,1,9455 --Faintly Glowing Crystal (1)
    .accept 9455 >>Accept Strange Findings
    .use 23678
step
    #completewith Drop9455x1
    >>As you go: Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for |cRXP_LOOT_Moongraze Buck Hide|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10324,1 --Moongraze Buck Hide (6)
    .mob Moongraze Buck
step
    #label Drop9455x1
    #loop
    .goto 1943,31.01,61.21,0
    .goto 1943,31.01,61.21,40,0
    .goto 1943,34.00,57.47,40,0
    >>Kill |cRXP_ENEMY_Infected Nightstalker Runts|r
    .complete 9456,1 --Infected Nightstalker Runt slain (8)
    .mob Infected Nightstalker Runt
    .isOnQuest 9456
step
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Wrathscale Myrmidons|r. Kill |cRXP_ENEMY_Wrathscale Nagas|r. Kill |cRXP_ENEMY_Wrathscale Sirens|r. Pick up |cRXP_PICK_Ancient Relic|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9513,1 --Wrathscale Myrmidon slain (5)
    .complete 9513,2 --Wrathscale Naga slain (5)
    .complete 9513,3 --Wrathscale Siren slain (5)
    .complete 9523,1 --Ancient Relic (8)
    .mob Wrathscale Myrmidon
    .mob Wrathscale Naga
    .mob Wrathscale Siren
step
    #label Along91
    #loop
    .goto 1943,25.72,71.19,0
    .goto 1943,25.72,71.19,40,0
    .goto 1943,26.76,73.47,40,0
    >>Kill |cRXP_ENEMY_Moongraze Bucks|r. Loot them for |cRXP_LOOT_Moongraze Buck Hide|r
    .complete 10324,1 --Moongraze Buck Hide (6)
    .mob Moongraze Buck
step
    #completewith Drop9514x1
    >>|cRXP_LOOT_Rune Covered Tablet|r can drop from |cRXP_ENEMY_Wrathscale Naga|r, |cRXP_ENEMY_Wrathscale Myrmidon|r, |cRXP_ENEMY_Wrathscale Siren|r. Use it to start the quest if you get one
    .collect 23759,1,9514 --Rune Covered Tablet (1)
    .accept 9514 >>Accept Rune Covered Tablet
    .use 23759
step
    #label Drop9514x1
    #loop
    .goto 1943,28.80,79.56,0
    .goto 1943,28.80,79.56,40,0
    .goto 1943,31.48,77.48,40,0
    .goto 1943,33.98,79.42,40,0
    .goto 1943,31.67,80.08,40,0
    >>Kill |cRXP_ENEMY_Wrathscale Myrmidons|r
    >>Kill |cRXP_ENEMY_Wrathscale Nagas|r
    >>Kill |cRXP_ENEMY_Wrathscale Sirens|r
    >>Pick up |cRXP_PICK_Ancient Relic|r from the ground
    .complete 9513,1 --Wrathscale Myrmidon slain (5)
    .complete 9513,2 --Wrathscale Naga slain (5)
    .complete 9513,3 --Wrathscale Siren slain (5)
    .complete 9523,1 --Ancient Relic (8)
    .mob Wrathscale Myrmidon
    .mob Wrathscale Naga
    .mob Wrathscale Siren
step
    .goto 1943,18.48,84.35
    >>Click the |cRXP_PICK_Naga Flag|r
    .complete 9531,1 --Naga Flag
step
    .goto 1943,16.60,94.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >>Turn in The Missing Fisherman
    .accept 9527 >>Accept All That Remains
    .target Cowlen
step
    #loop
    .goto 1943,13.72,89.56,0
    .goto 1943,13.72,89.56,40,0
    .goto 1943,11.97,86.70,40,0
    .goto 1943,9.37,82.56,40,0
    >>Kill |cRXP_ENEMY_Deranged Owlbeasts|r, |cRXP_ENEMY_Aberrant Owlbeasts|r and |cRXP_ENEMY_Raving Owlbeasts|r. Loot them for |cRXP_LOOT_Remains of Cowlen's Family|r
    .complete 9527,1 --Remains of Cowlen's Family (1)
    .mob Deranged Owlbeast
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
step
    .goto 1943,16.60,94.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >>Turn in All That Remains
    .target Cowlen
step
    .goto 1943,47.24,69.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .turnin 9523 >>Turn in Precious and Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step
    .goto 1943,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >>Turn in Tree's Company
    .accept 9537 >>Accept Show Gnomercy
    .target Admiral Odesyus
step
    .goto 1943,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9513 >>Turn in Reclaiming the Ruins
    .target Priestess Kyleen Il'dinare
step
    .goto 1943,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9514 >>Turn in Rune Covered Tablet
    .target Priestess Kyleen Il'dinare
    .isOnQuest 9514
step
    .goto 1943,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9515 >>Accept Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
    .isQuestTurnedIn 9514 --any of: Rune Covered Tablet
    .xp <6,1
step
    .goto 1943,49.81,69.90
    >>Kill |cRXP_ENEMY_Engineer "Spark" Overgrind|r and loot |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Traitor's Communication (1)
    .mob Engineer "Spark" Overgrind
step
    .goto 1943,47.04,70.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9537 >>Turn in Show Gnomercy
    .accept 9602 >>Accept Deliver Them From Evil...
    .target Admiral Odesyus
step
    .goto 1943,24.79,74.04
    >>Kill |cRXP_ENEMY_Warlord Sriss'tiz|r
    .complete 9515,1 --Warlord Sriss'tiz slain (1)
    .mob Warlord Sriss'tiz
    .isOnQuest 9515
step
    .goto 1943,49.90,51.90
    .xp 9+3070 >> Grind until 3070+/6500xp
step << Draenei
    .goto 1943,48.39,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >>Turn in An Alternative Alternative while you are here
    .isQuestComplete 9473
    .target Daedal
step
    .goto 1943,49.37,51.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .turnin 9544 >>Turn in The Prophecy of Akida while you are here
    .isQuestComplete 9544
    .target Arugoo of the Stillpine
step
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >>Turn in Find Acteon! while you are here
    .isQuestComplete 9453
    .target Acteon
step
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 10324 >>Turn in The Great Moongraze Hunt while you are here
    .isQuestComplete 10324
    .target Acteon
step
    .goto 1943,47.13,70.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9515 >>Turn in Warlord Sriss'tiz
    .target Priestess Kyleen Il'dinare
    .isOnQuest 9515
step
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >>Turn in Find Acteon!
    .target Acteon
    .isOnQuest 9453
step
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .turnin 10324 >>Turn in The Great Moongraze Hunt
    .target Acteon
step
    .goto 1943,49.37,51.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .turnin 9544 >>Turn in The Prophecy of Akida
    .accept 9559 >>Accept Stillpine Hold
    .target Arugoo of the Stillpine
step << Draenei
    .goto 1943,48.39,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >>Turn in An Alternative Alternative
    .target Daedal
    .isOnQuest 9473
step
    .goto 1943,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9456 >>Turn in Nightstalker Clean Up, Isle 2...
    .target Exarch Menelaous
    .isOnQuest 9456
step
    .goto 1943,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9602 >>Turn in Deliver Them From Evil...
    .target Exarch Menelaous
step << Hunter
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .trainer >> Train your class spells
    .target Acteon
step << Priest
    .goto 1943,48.60,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guvan|r
    .trainer >> Train your class spells
    .target Guvan
    .subzoneskip 3576,1
step << Warrior
    .goto 1943,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .trainer >> Train your class spells
    .target Ruada
step << Hunter
    .goto 1947,53.79,86.11,30,0
    .goto 1947,44.24,86.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ganaar|r
    .trainer >> Train your pet spells
    .target Ganaar
step << Hunter
    .goto 1947,53.36,85.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handiir|r
    .train 202 >> Train 2h Swords
    .target Handiir
step
    .goto 1943,44.76,23.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .accept 9560 >>Accept Beasts of the Apocalypse!
    .target Moordo
step
    .goto 1943,44.62,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurf|r
    .accept 9562 >>Accept Murlocs... Why Here? Why Now?
    .target Gurf
step
    .goto 1943,46.69,20.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .turnin 9559 >>Turn in Stillpine Hold
    .target High Chief Stillpine
step
    #loop
    .goto 1943,54.44,18.07,0
    .goto 1943,54.44,18.07,40,0
    .goto 1943,55.21,21.87,40,0
    >>Kill |cRXP_ENEMY_Ravager Specimens|r. Loot them for |cRXP_LOOT_Ravager Hide|r
    .complete 9560,1 --Ravager Hide (8)
    .mob Ravager Specimen
step
    .goto 1943,44.76,23.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .turnin 9560 >>Turn in Beasts of the Apocalypse!
    .target Moordo
step
    .goto 1943,46.90,21.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .accept 9573 >>Accept Chieftain Oomooroo
    .target Stillpine the Younger
step
    .goto 1943,46.69,20.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9565 >>Accept Search Stillpine Hold
    .target High Chief Stillpine
step
    #loop
    .goto 1943,47.40,14.12,0
    .goto 1943,47.40,14.12,40,0
    .goto 1943,49.11,10.51,40,0
    >>Kill |cRXP_ENEMY_Chieftain Oomooroo|r
    >>Kill |cRXP_ENEMY_Crazed Wildkins|r
    .complete 9573,1 --Chieftain Oomooroo slain (1)
    .complete 9573,2 --Crazed Wildkin slain (9)
    .mob Chieftain Oomooroo
    .mob Crazed Wildkin
step
    .goto 1943,50.58,11.57
    >>Click the |cRXP_PICK_Blood Crystal|r
    .turnin 9565 >>Turn in Search Stillpine Hold
    .accept 9566 >>Accept Blood Crystals
step
    .goto 1943,46.69,20.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .turnin 9566 >>Turn in Blood Crystals
    .target High Chief Stillpine
step
    .goto 1943,46.90,21.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine the Younger|r
    .turnin 9573 >>Turn in Chieftain Oomooroo
    .target Stillpine the Younger
step
    .goto 1943,46.96,22.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parkat Steelfur|r
    .vendor >> |cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch]
    .target Parkat Steelfur
    .subzoneskip 3572,1
step
    #completewith Along123
    >>As you go: Kill |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r, |cRXP_ENEMY_Siltfin Hunters|r and |cRXP_ENEMY_Murgurgulas|r. Loot them for |cRXP_LOOT_Stillpine Grain|r. It can also be picked up from |cRXP_PICK_Stillpine Grain|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9562,1 --Stillpine Grain (5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
    .mob Murgurgula
step
    #label Along123
    .goto 1943,35.01,21.98
    >>Kill |cRXP_ENEMY_Murgurgula|r and loot |cRXP_LOOT_Gurf's Dignity|r. Use it to start the quest
    .collect 23850,1,9564 --Gurf's Dignity (1)
    .accept 9564 >>Accept Gurf's Dignity
    .use 23850
    .mob Murgurgula
step
    #loop
    .goto 1943,34.18,21.32,0
    .goto 1943,34.18,21.32,40,0
    .goto 1943,32.87,26.47,40,0
    >>Kill |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r, |cRXP_ENEMY_Siltfin Hunters|r and |cRXP_ENEMY_Murgurgulas|r. Loot them for |cRXP_LOOT_Stillpine Grain|r. It can also be picked up from |cRXP_PICK_Stillpine Grain|r on the ground
    .complete 9562,1 --Stillpine Grain (5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
    .mob Murgurgula
step
    .goto 1943,44.62,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurf|r
    .turnin 9562 >>Turn in Murlocs... Why Here? Why Now?
    .turnin 9564 >>Turn in Gurf's Dignity
    .target Gurf
step << Draenei
    #completewith next
    .zone 1947 >>Travel to The Exodar
    .zoneskip 1947
    .isOnQuest 9604
step << Draenei
    .goto 1947,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .target Nurguni
    .isOnQuest 9604
step
    +|cRXP_WARN_Suggested next zones at level 9|r: |cRXP_FRIENDLY_Elwynn Forest|r (about 1.7 levels of quests, starting around Marshal Dughan), |cRXP_FRIENDLY_Darkshore|r (about 1.4 levels of quests, starting around Thundris Windweaver), |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.4 levels of quests, starting around Morae; 1 quest from here hands in there). Completing this step loads the guide for Elwynn Forest --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Azuremyst Isle is planned from level 12.|r Load its guide for level 12 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Azuremyst Isle
#subweight -1
#name 12-13 Azuremyst Isle: around Ruada
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver;Zone Routes (Alliance)\10-12 Bloodmyst Isle: around Morae;Zone Routes (Alliance)\10-13 Westfall: around Farmer Saldean

step << Mage
    .goto 1943,49.87,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Semid|r
    .accept 9595 >>Accept Control
    .target Semid
step
    .goto 1943,48.37,49.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Chellan|r
    .target Caregiver Chellan
    .home >>Set your Hearthstone to Caregiver Chellan's inn
step
    .goto 1943,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .accept 9623 >>Accept Coming of Age
    .target Exarch Menelaous
step << Warrior
    .goto 1943,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .accept 9582 >>Accept Strength of One
    .target Ruada
step << Mage
    #loop
    .goto 1943,34.00,25.40,0
    .goto 1943,34.00,25.40,40,0
    .goto 1943,34.40,22.80,40,0
    .goto 1943,34.20,14.60,40,0
    >>Kill |cRXP_ENEMY_Quel'dorei Magewraiths|r
    .complete 9595,1 --Quel'dorei Magewraith slain (8)
    .mob Quel'dorei Magewraith
step << Draenei Hunter
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .accept 9757 >>Accept Seek Huntress Kella Nightbow
    .target Acteon
step << Draenei Hunter
    .goto 1943,24.18,54.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9757 >>Turn in Seek Huntress Kella Nightbow
    .accept 9591 >>Accept Taming the Beast
    .target Huntress Kella Nightbow
step << Draenei Hunter
    #loop
    .goto 1943,45.19,3.38,0
    .goto 1943,45.19,3.38,40,0
    .goto 1943,45.42,3.15,40,0
    .goto 1943,46.38,3.75,40,0
    .goto 1943,46.89,3.16,40,0
    .goto 1943,48.00,4.23,40,0
    .goto 1943,49.13,2.92,40,0
    >>Interact with |cRXP_FRIENDLY_Barbed Crawler|r
    .complete 9591,1 --Barbed Crawler
    .target Barbed Crawler
step << Draenei Hunter
    .goto 1943,24.18,54.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9591 >>Turn in Taming the Beast
    .accept 9592 >>Accept Taming the Beast
    .target Huntress Kella Nightbow
step << Draenei Shaman
    #completewith next
    .zone 1947 >>Travel to The Exodar
    .zoneskip 1947
step << Draenei Shaman
    .goto 1947,32.25,23.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sulaa|r
    .accept 9462 >>Accept Call of Fire
    .target Sulaa
step << Draenei Shaman
    #completewith next
    .zone 1943 >>Leave The Exodar for Azuremyst Isle
    .zoneskip 1943
step << Draenei Shaman
    #completewith next
    .hs >>Hearth to Caregiver Chellan's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Draenei Shaman
    .goto 1943,48.05,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .turnin 9462 >>Turn in Call of Fire
    .accept 9464 >>Accept Call of Fire
    .target Tuluun
step
    #completewith next
    .zone 1947 >>Travel to The Exodar
    .zoneskip 1947
step << Draenei
    .goto 1947,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .accept 9605 >>Accept Hippogryph Master Stephanos
    .target Nurguni
    .isQuestTurnedIn 9604 --any of: On the Wings of a Hippogryph
    .xp <10,1
step
    .goto 1947,53.59,90.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feera|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if she doesn't have one|r
    .target Feera
    .zoneskip The Exodar,1
step << Draenei
    .goto 1947,68.34,63.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
    .target Stephanos
    .isOnQuest 9605
step << Draenei
    .goto 1947,68.34,63.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .accept 9606 >>Accept Return to Topher Loaal
    .target Stephanos
    .isQuestTurnedIn 9605 --any of: Hippogryph Master Stephanos
    .xp <10,1
step
    .goto 1947,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >>Turn in Coming of Age
    .accept 9625 >>Accept Elekks Are Serious Business
    .target Torallius the Pack Handler
step
    #completewith next
    .zone 1943 >>Leave The Exodar for Azuremyst Isle
    .zoneskip 1943
step << Warrior
    .goto 1943,54.03,9.95
    >>Kill |cRXP_ENEMY_Death Ravager|r
    .complete 9582,1 --Death Ravager slain (1)
    .mob Death Ravager
step << Mage
    #completewith next
    .zone 1947 >>Travel to The Exodar
    .zoneskip 1947
step << Mage
    .goto 1947,46.35,63.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bati|r
    .turnin 9595 >>Turn in Control
    .target Bati
step << Mage
    #completewith next
    .zone 1943 >>Leave The Exodar for Azuremyst Isle
    .zoneskip 1943
step << Draenei Hunter
    #loop
    .goto 1943,42.85,26.19,0
    .goto 1943,42.85,26.19,40,0
    .goto 1943,41.17,26.17,40,0
    .goto 1943,39.28,26.74,40,0
    .goto 1943,38.63,24.44,40,0
    >>Interact with |cRXP_FRIENDLY_Greater Timberstrider|r
    .complete 9592,1 --Greater Timberstrider
    .target Greater Timberstrider
step << Draenei Hunter
    .goto 1943,24.18,54.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9592 >>Turn in Taming the Beast
    .accept 9593 >>Accept Taming the Beast
    .target Huntress Kella Nightbow
step << Draenei Hunter
    #loop
    .goto 1943,40.11,35.61,0
    .goto 1943,40.11,35.61,40,0
    .goto 1943,42.37,36.06,40,0
    .goto 1943,41.39,34.21,40,0
    .goto 1943,39.71,33.29,40,0
    .goto 1943,42.26,32.58,40,0
    .goto 1943,43.30,30.97,40,0
    .goto 1943,44.52,31.53,40,0
    .goto 1943,42.77,29.64,40,0
    .goto 1943,42.29,28.05,40,0
    .goto 1943,42.31,25.25,40,0
    >>Interact with |cRXP_FRIENDLY_Nightstalker|r
    .complete 9593,1 --Nightstalker
    .target Nightstalker
step << Draenei Hunter
    .goto 1943,24.18,54.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Kella Nightbow|r
    .turnin 9593 >>Turn in Taming the Beast
    .accept 9675 >>Accept Beast Training
    .target Huntress Kella Nightbow
step << Draenei Hunter
    #completewith next
    .zone 1947 >>Travel to The Exodar
    .zoneskip 1947
step << Draenei Hunter
    .goto 1947,44.18,86.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ganaar|r
    .turnin 9675 >>Turn in Beast Training
    .target Ganaar
step << Draenei Hunter
    #completewith next
    .zone 1943 >>Leave The Exodar for Azuremyst Isle
    .zoneskip 1943
step << Draenei Shaman
    .goto 1943,59.65,17.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Temper|r
    .turnin 9464 >>Turn in Call of Fire
    .accept 9465 >>Accept Call of Fire
    .target Temper
step << Draenei Shaman
    #loop
    .goto 1943,47.89,15.34,0
    .goto 1943,47.89,15.34,40,0
    .goto 1943,48.10,12.28,40,0
    >>Kill |cRXP_ENEMY_Crazed Wildkin|r and loot |cRXP_LOOT_Ritual Torch|r
    .complete 9465,1 --Ritual Torch (1)
    .mob Crazed Wildkin
step
    .goto 1943,46.97,22.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .accept 9570 >>Accept The Kurken is Lurkin'
    .target Kurz the Revelator
    .isQuestTurnedIn 9565,9573 --any of: Search Stillpine Hold, Chieftain Oomooroo
step
    .goto 1943,49.95,12.81
    >>Kill |cRXP_ENEMY_The Kurken|r and loot |cRXP_LOOT_The Kurken's Hide|r
    .complete 9570,1 --The Kurken's Hide (1)
    .mob The Kurken
    .isOnQuest 9570
step
    .goto 1943,46.97,22.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .turnin 9570 >>Turn in The Kurken is Lurkin'
    .target Kurz the Revelator
    .isOnQuest 9570
step
    .goto 1943,46.97,22.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurz the Revelator|r
    .accept 9571 >>Accept The Kurken's Hide
    .target Kurz the Revelator
    .isQuestTurnedIn 9570 --any of: The Kurken is Lurkin'
step
    .goto 1943,46.69,20.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >>Accept Warn Your People
    .target High Chief Stillpine
    .isQuestTurnedIn 9566 --Blood Crystals
    .isQuestTurnedIn 9570 --The Kurken is Lurkin'
step
    .goto 1943,44.76,23.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moordo|r
    .turnin 9571 >>Turn in The Kurken's Hide
    .target Moordo
    .isOnQuest 9571
step << Draenei Shaman
    .goto 1943,59.65,17.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Temper|r
    .turnin 9465 >>Turn in Call of Fire
    .accept 9467 >>Accept Call of Fire
    .target Temper
step
    #completewith next
    .hs >>Hearth to Caregiver Chellan's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1943,47.11,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9622 >>Turn in Warn Your People
    .target Exarch Menelaous
    .isOnQuest 9622
step << Paladin
    .goto 1947,38.37,82.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .target Jol
    .trainer >> Train your class spells
step << Warrior
    .goto 1943,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >>Turn in Strength of One
    .accept 10350 >>Accept Behomat
    .target Ruada
step << Warrior
    .goto 1943,50.02,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruada|r
    .trainer >> Train your class spells
    .target Ruada
    .subzoneskip 3576,1
step << Hunter
    .goto 1943,49.78,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acteon|r
    .trainer >> Train your class spells
    .target Acteon
    .subzoneskip 3576,1
step << Warrior
    #completewith next
    .zone 1947 >>Travel to The Exodar
    .zoneskip 1947
step << Warrior
    .goto 1947,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
step << Warrior
    .goto 1947,55.58,82.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .trainer >> Train your class spells
    .target Behomat
step << Warrior/Shaman/Paladin
    .goto 1947,53.36,85.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handiir|r
    .train 199 >> Train 2h Maces << Warrior/Shaman
    .train 202 >> Train 2h Swords << Paladin
    .target Handiir
step << Paladin
    .goto 1947,38.37,82.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .trainer >> Train your class spells
    .target Jol
step << Warrior
    #completewith next
    .zone 1943 >>Leave The Exodar for Azuremyst Isle
    .zoneskip 1943
step << NightElf Druid
    .goto 1943,24.45,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalannius|r
    .accept 5924 >>Accept Heeding the Call
    .target Shalannius
step << Draenei Shaman
    .goto 1943,11.36,82.34
    >>Kill |cRXP_ENEMY_Hauteur|r and loot |cRXP_LOOT_Hauteur's Ashes|r
    .complete 9467,1 --Hauteur's Ashes (1)
    .mob Hauteur
step << Draenei Shaman
    .goto 1943,59.65,17.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Temper|r
    .turnin 9467 >>Turn in Call of Fire
    .accept 9468 >>Accept Call of Fire
    .target Temper
step << Draenei Shaman
    .goto 1943,48.05,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >>Turn in Call of Fire
    .accept 9461 >>Accept Call of Fire
    .target Tuluun
step << Draenei Shaman
    #completewith next
    .zone 1947 >>Travel to The Exodar
    .zoneskip 1947
step << Draenei Shaman
    .goto 1947,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9461 >>Turn in Call of Fire
    .accept 9555 >>Accept Call of Fire
    .target Prophet Velen
step << Draenei Shaman
    .goto 1947,29.78,33.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    .turnin 9555 >>Turn in Call of Fire
    .target Farseer Nobundo
step << Shaman
    .goto 1947,31.27,27.65,15,0
    .goto 1947,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Nobundo|r
    >>|cRXP_FRIENDLY_Farseer Nobundo|r |cRXP_WARN_patrols slightly|r
    .target Farseer Nobundo
    .trainer >> Train your class spells
step
    +|cRXP_WARN_That is all of Azuremyst Isle for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Return to Topher Loaal << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business
    >>|cRXP_FRIENDLY_Darnassus|r: Heeding the Call << NightElf Druid
step
    +|cRXP_WARN_Suggested next zones at level 12|r: |cRXP_FRIENDLY_Darkshore|r (about 2.2 levels of quests, starting around Thundris Windweaver), |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.0 levels of quests, starting around Morae; 1 quest from here hands in there), |cRXP_FRIENDLY_Westfall|r (about 0.9 levels of quests, starting around Farmer Saldean). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Azuremyst Isle is planned from level 15.|r Load its guide for level 15 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Azuremyst Isle
#subweight -1
#name 15-16 Azuremyst Isle
--RouteBuilder:next
#next Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver

step << Human Paladin/Dwarf Paladin/Draenei Paladin
    .goto 1943,48.36,49.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tullas|r
    .accept 10366 >>Accept Jol
    .target Tullas
step
    #completewith next
    .zone 1947 >>Travel to The Exodar
    .zoneskip 1947
step
    .goto 1947,63.51,67.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dugiru|r
    .accept 7792 >>Accept A Donation of Wool
    .target Dugiru
step
    .goto 1947,63.51,67.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dugiru|r
    .turnin 7792 >>Turn in A Donation of Wool
    .target Dugiru
    .isQuestComplete 7792
step
    .goto 1947,38.37,82.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jol|r
    .turnin 10366 >>Turn in Jol << Human Paladin/Dwarf Paladin/Draenei Paladin
    .accept 9598 >>Accept Redemption << Draenei Paladin
    .target Jol
step << Draenei Paladin
    .goto 1947,38.37,82.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jol|r
    >>|cRXP_WARN_The database has no objectives for Redemption. Skip this step if the quest is not finished|r
    .turnin 9598 >>Turn in Redemption
    .target Jol
    .isOnQuest 9598
step << Draenei Paladin
    .goto 1947,38.37,82.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jol|r
    .accept 9600 >>Accept Redemption
    .target Jol
    .isQuestTurnedIn 9598 --any of: Redemption
    .xp <12,1
step << Draenei Paladin
    .goto 1947,38.37,82.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jol|r
    .turnin 9600 >>Turn in Redemption
    .target Jol
    .isQuestComplete 9600
step
    +|cRXP_WARN_End of the Azuremyst Isle route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills and back here|r: A Donation of Wool
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.9 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Darkshore|r (about 1.7 levels of quests, starting around Thundris Windweaver; 1 quest from here hands in there). Completing this step loads the guide for Bloodmyst Isle --RouteBuilder:next
]])
