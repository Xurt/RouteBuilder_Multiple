-- 1-10 The Wandering Isle: Zone Routes (Pandaren).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/The Wandering Isle.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Pandaren
#version 1
#group Zone Routes (Pandaren)
#name 1-10 The Wandering Isle
--RouteBuilder:next
#next Zone Routes (Horde)\1-5 Camp Narache;Zone Routes (Horde)\1-5 Valley of Trials

step << Pandaren Warrior
    .goto 378,56.45,17.64
    >>Click the |cRXP_PICK_To Be A Pandaren|r
    .accept 30045 >>Accept Much to Learn
step << Pandaren Warrior
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30045 >>Turn in Much to Learn
    .accept 30038 >>Accept The Lesson of the Iron Bough
    .unitscan Master Shang Xi
step << Pandaren Warrior
    #loop
    .goto 378,57.23,19.23,0
    .goto 378,57.23,19.23,40,0
    .goto 378,58.67,16.32,40,0
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Sword|r
    .collect 73210,1,30038,1 --Trainee's Sword (1)
step << Pandaren Warrior
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Sword.
    .complete 30038,1 --Main Weapon Equipped Credit (1)
step << Pandaren Warrior
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Sword.
    .complete 30038,2 --Off Weapon Equipped Credit (1)
step << Pandaren Hunter
    .goto 378,56.45,17.64
    >>Click the |cRXP_PICK_To Be A Pandaren|r
    .accept 30041 >>Accept Much to Learn
step
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30038 >>Turn in The Lesson of the Iron Bough << Pandaren Warrior
    .turnin 30041 >>Turn in Much to Learn << Pandaren Hunter
    .accept 30034 >>Accept The Lesson of the Iron Bough << Pandaren Hunter
    .unitscan Master Shang Xi
step << Pandaren Hunter
    #loop
    .goto 378,57.23,19.23,0
    .goto 378,57.23,19.23,40,0
    .goto 378,58.67,16.32,40,0
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Crossbow|r
    .collect 73211,1,30034,1 --Trainee's Crossbow (1)
step << Pandaren Hunter
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Crossbow.
    .complete 30034,1 --Main Weapon Equipped Credit (1)
step << Pandaren Rogue
    .goto 378,56.45,17.64
    >>Click the |cRXP_PICK_To Be A Pandaren|r
    .accept 30043 >>Accept Much to Learn
step
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30034 >>Turn in The Lesson of the Iron Bough << Pandaren Hunter
    .turnin 30043 >>Turn in Much to Learn << Pandaren Rogue
    .accept 30036 >>Accept The Lesson of the Iron Bough << Pandaren Rogue
    .unitscan Master Shang Xi
step << Pandaren Rogue
    #loop
    .goto 378,57.23,19.23,0
    .goto 378,57.23,19.23,40,0
    .goto 378,58.67,16.32,40,0
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Dagger|r
    .collect 73212,1,30036,1 --Trainee's Dagger (1)
    .collect 73208,1,30036,1 --Trainee's Dagger (1)
step << Pandaren Rogue
    .goto 378,56.67,18.18
    >>Retrieve and equip a pair of Trainee's Daggers.
    .complete 30036,1 --Main Weapon Equipped Credit (1)
step << Pandaren Rogue
    .goto 378,56.67,18.18
    >>Retrieve and equip a pair of Trainee's Daggers.
    .complete 30036,2 --Off Weapon Equipped Credit (1)
step
    .goto 378,56.45,17.64
    >>Click the |cRXP_PICK_To Be A Pandaren|r
    .accept 30042 >>Accept Much to Learn << Pandaren Priest
    .accept 30044 >>Accept Much to Learn << Pandaren Shaman
step
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30036 >>Turn in The Lesson of the Iron Bough << Pandaren Rogue
    .turnin 30042 >>Turn in Much to Learn << Pandaren Priest
    .turnin 30044 >>Turn in Much to Learn << Pandaren Shaman
    .accept 30035 >>Accept The Lesson of the Iron Bough << Pandaren Priest
    .accept 30037 >>Accept The Lesson of the Iron Bough << Pandaren Shaman
    .unitscan Master Shang Xi
step << Pandaren Priest
    #completewith Along28
    >>As you go: Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Mace|r. Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Book of Prayers|r. |cRXP_WARN_Anything left is finished later|r
    .collect 73207,1,30035,1 --Trainee's Mace (1)
    .collect 76393,1,30035,1 --Trainee's Book of Prayers (1)
step << Pandaren Shaman
    #loop
    .goto 378,57.23,19.23,0
    .goto 378,57.23,19.23,40,0
    .goto 378,58.67,16.32,40,0
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Axe|r
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Shield|r
    .collect 76391,1,30037,1 --Trainee's Axe (1)
    .collect 73213,1,30037,1 --Trainee's Shield (1)
step << Pandaren Shaman
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Axe and a Trainee's Shield.
    .complete 30037,1 --Main Weapon Equipped Credit (1)
step << Pandaren Shaman
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Axe and a Trainee's Shield.
    .complete 30037,2 --Off Weapon Equipped Credit (1)
step << Pandaren Mage
    .goto 378,56.45,17.64
    >>Click the |cRXP_PICK_To Be A Pandaren|r
    .accept 30040 >>Accept Much to Learn
step
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30037 >>Turn in The Lesson of the Iron Bough << Pandaren Shaman
    .turnin 30040 >>Turn in Much to Learn << Pandaren Mage
    .accept 30033 >>Accept The Lesson of the Iron Bough << Pandaren Mage
    .unitscan Master Shang Xi
step << Pandaren Mage
    #loop
    .goto 378,57.23,19.23,0
    .goto 378,57.23,19.23,40,0
    .goto 378,58.67,16.32,40,0
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Hand Fan|r
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Spellblade|r
    .collect 76392,1,30033,1 --Trainee's Hand Fan (1)
    .collect 76390,1,30033,1 --Trainee's Spellblade (1)
step << Pandaren Mage
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Spellblade and a Trainee's Hand Fan.
    .complete 30033,1 --Main Weapon Equipped Credit (1)
step << Pandaren Mage
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Spellblade and a Trainee's Hand Fan.
    .complete 30033,2 --Off Weapon Equipped Credit (1)
step << Pandaren Monk
    .goto 378,56.45,17.64
    >>Click the |cRXP_PICK_To Be A Pandaren|r
    .accept 30039 >>Accept Much to Learn
step
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30033 >>Turn in The Lesson of the Iron Bough << Pandaren Mage
    .turnin 30039 >>Turn in Much to Learn << Pandaren Monk
    .accept 30027 >>Accept The Lesson of the Iron Bough << Pandaren Monk
    .unitscan Master Shang Xi
step << Pandaren Monk
    #loop
    .goto 378,57.23,19.23,0
    .goto 378,57.23,19.23,40,0
    .goto 378,58.67,16.32,40,0
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Staff|r
    .collect 73209,1,30027,1 --Trainee's Staff (1)
step << Pandaren Monk
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Staff.
    .complete 30027,1 --Main Weapon Equipped Credit (1)
step
    #label Along28
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30027 >>Turn in The Lesson of the Iron Bough << Pandaren Monk
    .accept 29406 >>Accept The Lesson of the Sandy Fist << Pandaren
    .unitscan Master Shang Xi
step
    #loop
    .goto 378,58.21,17.88,0
    .goto 378,58.21,17.88,40,0
    .goto 378,57.85,20.06,40,0
    >>Kill |cRXP_ENEMY_Training Targets|r << Pandaren
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Mace|r << Pandaren Priest
    >>Open the |cRXP_PICK_Weapon Rack|r. Loot it for |cRXP_LOOT_Trainee's Book of Prayers|r << Pandaren Priest
    .complete 29406,1 << Pandaren --Training Target (5)
    .collect 73207,1,30035,1 << Pandaren Priest --Trainee's Mace (1)
    .collect 76393,1,30035,1 << Pandaren Priest --Trainee's Book of Prayers (1)
    .mob Training Target << Pandaren
step << Pandaren Priest
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Mace and a Trainee's Book of Prayers.
    .complete 30035,2 --Off Weapon Equipped Credit (1)
step << Pandaren
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29406 >>Turn in The Lesson of the Sandy Fist
    .accept 29524 >>Accept The Lesson of Stifled Pride
    .unitscan Master Shang Xi
step << Pandaren Priest
    .goto 378,56.67,18.18
    >>Retrieve and equip a Trainee's Mace and a Trainee's Book of Prayers.
    .complete 30035,1 --Main Weapon Equipped Credit (1)
step << Pandaren Priest
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30035 >>Turn in The Lesson of the Iron Bough
    .unitscan Master Shang Xi
step << Pandaren
    #loop
    .goto 378,60.37,19.64,0
    .goto 378,60.37,19.64,40,0
    .goto 378,62.66,25.45,40,0
    >>Kill |cRXP_ENEMY_Tushui Trainees|r and |cRXP_ENEMY_Huojin Trainees|r
    .complete 29524,1 --Tushui Trainee (6)
    .mob Tushui Trainee
    .mob Huojin Trainee
step << Pandaren
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29524 >>Turn in The Lesson of Stifled Pride
    .accept 29408 >>Accept The Lesson of the Burning Scroll
    .unitscan Master Shang Xi
step << Pandaren
    #completewith Along36
    >>As you go: Click the |cRXP_PICK_Edict of Temperance|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29408,2 --Edict of Temperance
step << Pandaren
    #label Along36
    .goto 378,59.69,19.11
    >>Snatch the flame from Master Shang Xi's palm, then burn the Edict of Temperance.
    .complete 29408,1 --Master Shang Xi
    .target Master Shang Xi
step << Pandaren
    .goto 378,59.95,20.43
    >>Click the |cRXP_PICK_Edict of Temperance|r
    .complete 29408,2 --Edict of Temperance
step << Pandaren
    #loop
    .goto 378,56.67,18.18,0
    .goto 378,56.67,18.18,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,65.98,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29408 >>Turn in The Lesson of the Burning Scroll
    .accept 29409 >>Accept The Disciple's Challenge
    .unitscan Master Shang Xi
step << Pandaren
    .goto 378,67.78,22.75
    >>Kill |cRXP_ENEMY_Jaomin Ro|r
    .complete 29409,1 --Jaomin Ro slain (1)
    .mob Jaomin Ro
step << Pandaren
    #loop
    .goto 378,65.98,22.81,0
    .goto 378,65.98,22.81,40,0
    .goto 378,59.69,19.11,40,0
    .goto 378,56.67,18.18,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29409 >>Turn in The Disciple's Challenge
    .accept 29410 >>Accept Aysa of the Tushui
    .unitscan Master Shang Xi
step << Pandaren
    .goto 378,55.11,32.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Lorvo|r
    .turnin 29410 >>Turn in Aysa of the Tushui
    .accept 29419 >>Accept The Missing Driver
    .accept 29424 >>Accept Items of Utmost Importance
    .target Merchant Lorvo
step << Pandaren
    #completewith Along42
    >>As you go: Kill |cRXP_ENEMY_Amberleaf Scamps|r. Loot them for |cRXP_LOOT_Stolen Training Supplies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29424,1 --Stolen Training Supplies (6)
    .mob Amberleaf Scamp
step << Pandaren
    #label Along42
    .goto 378,54.12,20.89
    >>Rescue the Cart Driver.
    .complete 29419,1 --Min Dimwind
    .target Min Dimwind
step << Pandaren
    #loop
    .goto 378,53.07,24.31,0
    .goto 378,53.07,24.31,40,0
    .goto 378,54.57,27.54,40,0
    >>Kill |cRXP_ENEMY_Amberleaf Scamps|r. Loot them for |cRXP_LOOT_Stolen Training Supplies|r
    .complete 29424,1 --Stolen Training Supplies (6)
    .mob Amberleaf Scamp
step << Pandaren
    .goto 378,55.11,32.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Lorvo|r
    .turnin 29419 >>Turn in The Missing Driver
    .turnin 29424 >>Turn in Items of Utmost Importance
    .target Merchant Lorvo
step << Pandaren
    .goto 378,55.10,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 29414 >>Accept The Way of the Tushui
    .target Aysa Cloudsinger
step << Pandaren
    .goto 378,57.89,36.55
    >>Protect Aysa while she meditates.
    .complete 29414,1 --Aysa Cloudsinger
    .target Aysa Cloudsinger
step << Pandaren
    .goto 378,57.54,34.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29414 >>Turn in The Way of the Tushui
    .accept 29522 >>Accept Ji of the Huojin
    .target Master Shang Xi
step << Pandaren
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29522 >>Turn in Ji of the Huojin
    .accept 29417 >>Accept The Way of the Huojin
    .target Ji Firepaw
step << Pandaren
    #loop
    .goto 378,49.52,20.02,0
    .goto 378,49.52,20.02,40,0
    .goto 378,48.97,22.91,40,0
    .goto 378,47.31,17.53,40,0
    >>Kill |cRXP_ENEMY_Fe-Feng Brewthiefs|r, |cRXP_ENEMY_Fe-Feng Leapers|r and |cRXP_ENEMY_Fe-Feng Hozens|r
    .complete 29417,1 --Fe-Feng Brewthief (8)
    .mob Fe-Feng Brewthief
    .mob Fe-Feng Leaper
    .mob Fe-Feng Hozen
step << Pandaren
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29417 >>Turn in The Way of the Huojin
    .accept 29418 >>Accept Kindling the Fire
    .accept 29523 >>Accept Fanning the Flames
    .target Ji Firepaw
step << Pandaren
    #loop
    .goto 378,46.30,28.03,0
    .goto 378,46.30,28.03,40,0
    .goto 378,49.12,30.79,40,0
    >>Kill |cRXP_ENEMY_Living Air|r and loot |cRXP_LOOT_Fluttering Breeze|r
    >>Loot the |cRXP_PICK_Loose Dogwood Roots|r for |cRXP_LOOT_Dry Dogwood Root|r
    .complete 29523,1 --Fluttering Breeze (1)
    .complete 29418,1 --Dry Dogwood Root (5)
    .mob Living Air
step << Pandaren
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29418 >>Turn in Kindling the Fire
    .turnin 29523 >>Turn in Fanning the Flames
    .target Ji Firepaw
step << Pandaren
    .goto 378,50.28,21.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r
    .accept 29420 >>Accept The Spirit's Guardian
    .target Master Shang Xi
step << Pandaren
    .goto 378,38.81,25.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Li Fei|r
    .turnin 29420 >>Turn in The Spirit's Guardian
    .accept 29664 >>Accept The Challenger's Fires
    .target Master Li Fei
step << Pandaren
    .goto 378,38.71,25.40
    >>Click the |cRXP_PICK_Brazier of the Flickering Flame|r
    >>Click the |cRXP_PICK_Brazier of the Violet Flame|r
    >>Click the |cRXP_PICK_Brazier of the Red Flame|r
    >>Click the |cRXP_PICK_Brazier of the Blue Flame|r
    .complete 29664,1 --Brazier of the Flickering Flame
    .complete 29664,4 --Brazier of the Violet Flame
    .complete 29664,2 --Brazier of the Red Flame
    .complete 29664,3 --Brazier of the Blue Flame
step << Pandaren
    .goto 378,38.81,25.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Li Fei|r
    .turnin 29664 >>Turn in The Challenger's Fires
    .accept 29421 >>Accept Only the Worthy Shall Pass
    .target Master Li Fei
step << Pandaren
    .goto 378,38.87,24.62
    >>Kill |cRXP_ENEMY_Master Li Fei|r
    .complete 29421,1 --Master Li Fei slain (1)
    .mob Master Li Fei
step << Pandaren
    .goto 378,38.81,25.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Li Fei|r
    .turnin 29421 >>Turn in Only the Worthy Shall Pass
    .accept 29422 >>Accept Huo, the Spirit of Fire
    .target Master Li Fei
step << Pandaren
    .goto 378,39.45,29.65
    >>Interact with |cRXP_FRIENDLY_Huo|r
    .complete 29422,1 --Huo
    .target Huo
step << Pandaren
    .goto 378,39.42,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huo|r
    .turnin 29422 >>Turn in Huo, the Spirit of Fire
    .accept 29423 >>Accept The Passion of Shen-zin Su
    .target Huo
step << Pandaren
    .goto 378,51.41,46.39
    >>Bring the Spirit of Fire to the Temple of Five Dawns.
    .complete 29423,1 --Master Shang Xi
    .target Master Shang Xi
step << Pandaren
    .goto 378,51.41,46.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29423 >>Turn in The Passion of Shen-zin Su
    .accept 29521 >>Accept The Singing Pools
    .target Master Shang Xi
step << Pandaren !DK
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whittler Dewei|r
    .train 2366 >> Train Herbalism
    .target Whittler Dewei
step << Pandaren !DK
    .isOnQuest 29521
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whittler Dewei|r
    .train 2575 >> Train Mining
    .target Whittler Dewei
step
    .goto 378,51.83,46.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cheng Dawnscrive|r
    .target Cheng Dawnscrive
    .home >>Set your Hearthstone to Cheng Dawnscrive's inn
step
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whittler Dewei|r
    .train 2366 >> Train Herbalism
    .target Whittler Dewei
step
    .isOnQuest 29521
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whittler Dewei|r
    .train 2575 >> Train Mining
    .target Whittler Dewei
step << Pandaren
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .accept 29662 >>Accept Stronger Than Reeds
    .target Jojo Ironbrow
step << Pandaren
    #loop
    .goto 378,65.59,42.61,0
    .goto 378,65.59,42.61,40,0
    .goto 378,78.61,42.81,40,0
    .goto 378,79.81,39.31,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29521 >>Turn in The Singing Pools
    .accept 29661 >>Accept The Lesson of Dry Fur
    .accept 29663 >>Accept The Lesson of the Balanced Rock
    .unitscan Aysa Cloudsinger
step << Pandaren
    #loop
    .goto 378,62.01,45.88,0
    .goto 378,62.01,45.88,40,0
    .goto 378,62.02,49.02,40,0
    .goto 378,64.93,50.00,40,0
    >>Click the |cRXP_PICK_Training Bell|r
    >>Kill |cRXP_ENEMY_Tushui Monks|r
    >>Pick up |cRXP_PICK_Hard Tearwood Reed|r from the ground
    .complete 29661,1 --Training Bell
    .complete 29663,1 --Tushui Monk (6)
    .complete 29662,1 --Hard Tearwood Reed (8)
    .mob Tushui Monk
step << Pandaren
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29662 >>Turn in Stronger Than Reeds
    .target Jojo Ironbrow
step << Pandaren
    #loop
    .goto 378,65.59,42.61,0
    .goto 378,65.59,42.61,40,0
    .goto 378,78.61,42.81,40,0
    .goto 378,79.81,39.31,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29661 >>Turn in The Lesson of Dry Fur
    .turnin 29663 >>Turn in The Lesson of the Balanced Rock
    .accept 29676 >>Accept Finding an Old Friend
    .unitscan Aysa Cloudsinger
step << Pandaren
    #loop
    .goto 378,70.62,38.73,0
    .goto 378,70.62,38.73,40,0
    .goto 378,78.49,42.86,40,0
    .goto 378,79.94,39.31,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Liang|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29676 >>Turn in Finding an Old Friend
    .accept 29666 >>Accept The Sting of Learning
    .accept 29677 >>Accept The Sun Pearl
    .unitscan Old Man Liang
step << Pandaren
    #loop
    .goto 378,71.51,46.65,0
    .goto 378,71.51,46.65,40,0
    .goto 378,70.60,50.90,40,0
    >>Kill |cRXP_ENEMY_Water Pincers|r
    .complete 29666,1 --Water Pincer slain (6)
    .mob Water Pincer
step << Pandaren
    .goto 378,76.23,46.90
    >>Open the |cRXP_PICK_Ancient Clam|r. Loot it for |cRXP_LOOT_Sun Pearl|r
    .complete 29677,1 --Sun Pearl (1)
step << Pandaren
    #loop
    .goto 378,79.94,39.31,0
    .goto 378,79.94,39.31,40,0
    .goto 378,78.49,42.86,40,0
    .goto 378,70.62,38.73,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Liang|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29666 >>Turn in The Sting of Learning
    .turnin 29677 >>Turn in The Sun Pearl
    .accept 29678 >>Accept Shu, the Spirit of Water
    .unitscan Old Man Liang
step << Pandaren
    .goto 378,79.70,39.07
    >>Coax Shu, the spirit of water, into a game.
    .complete 29678,1 --Crossing Rocks Credit
    .target Crossing Rocks Credit
step << Pandaren
    .goto 378,79.03,37.80
    >>Coax Shu, the spirit of water, into a game.
    .complete 29678,2 --Water Spirit Coaxed Credit
    .target Water Spirit Coaxed Credit
step << Pandaren
    .goto 378,79.03,37.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 29678 >>Turn in Shu, the Spirit of Water
    .target ?
step << Pandaren
    #loop
    .goto 378,79.81,39.31,0
    .goto 378,79.81,39.31,40,0
    .goto 378,78.61,42.81,40,0
    .goto 378,65.59,42.61,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29679 >>Accept A New Friend
    .unitscan Aysa Cloudsinger
step << Pandaren
    .goto 378,78.77,37.52
    >>Water walk into 5 of Shu's Water Spouts.
    .complete 29679,1 --Water Spout Bunny (5)
    .target Water Spout Bunny
step << Pandaren
    #loop
    .goto 378,79.81,39.31,0
    .goto 378,79.81,39.31,40,0
    .goto 378,78.61,42.81,40,0
    .goto 378,65.59,42.61,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29679 >>Turn in A New Friend
    .accept 29680 >>Accept The Source of Our Livelihood
    .unitscan Aysa Cloudsinger
step << Pandaren
    .goto 378,79.20,45.32
    >>Kill |cRXP_ENEMY_Delivery Cart|r
    .complete 29680,1 --Delivery Cart slain (1)
    .mob Delivery Cart
step << Pandaren
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29680 >>Turn in The Source of Our Livelihood
    .accept 29769 >>Accept Rascals
    .target Ji Firepaw
step << Pandaren
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gao Summerdraft|r
    .accept 29770 >>Accept Still Good!
    .target Gao Summerdraft
step << Pandaren
    #completewith Along82
    >>As you go: Kill |cRXP_ENEMY_Plump Carrotcrunchers|r and |cRXP_ENEMY_Plump Virmens|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29769,1 --Plump Carrotcruncher (10)
    .mob Plump Carrotcruncher
    .mob Plump Virmen
step << Pandaren
    #label Along82
    #loop
    .goto 378,68.67,77.09,0
    .goto 378,68.67,77.09,40,0
    .goto 378,70.93,80.90,40,0
    >>Pick up |cRXP_PICK_Uprooted Turnip|r from the ground
    .complete 29770,1 --Uprooted Turnip (3)
step << Pandaren
    #loop
    .goto 378,74.72,73.95,0
    .goto 378,74.72,73.95,40,0
    .goto 378,73.66,71.09,40,0
    .goto 378,77.89,71.34,40,0
    >>Pick up |cRXP_PICK_Pilfered Pumpkin|r from the ground
    >>Kill |cRXP_ENEMY_Plump Carrotcrunchers|r. Loot them for |cRXP_LOOT_Stolen Carrot|r. It can also be picked up from |cRXP_PICK_Stolen Carrot|r on the ground
    >>Kill |cRXP_ENEMY_Plump Carrotcrunchers|r and |cRXP_ENEMY_Plump Virmens|r
    .complete 29770,3 --Pilfered Pumpkin (3)
    .complete 29770,2 --Stolen Carrot (3)
    .complete 29769,1 --Plump Carrotcruncher (10)
    .mob Plump Carrotcruncher
    .mob Plump Virmen
step << Pandaren
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gao Summerdraft|r
    .turnin 29770 >>Turn in Still Good!
    .target Gao Summerdraft
step << Pandaren
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29769 >>Turn in Rascals
    .accept 29768 >>Accept Missing Mallet
    .target Ji Firepaw
step << Pandaren
    .goto 378,69.16,66.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .accept 29771 >>Accept Stronger Than Wood
    .target Jojo Ironbrow
step << Pandaren
    #loop
    .goto 378,63.06,77.31,0
    .goto 378,63.06,77.31,40,0
    .goto 378,62.28,79.90,40,0
    >>Pick up |cRXP_PICK_Dai-Lo Recess Mallet|r from the ground
    >>Loot the |cRXP_PICK_Discarded Wood Planks|r for |cRXP_LOOT_Discarded Wood Plank|r
    .complete 29768,1 --Dai-Lo Recess Mallet (1)
    .complete 29771,1 --Discarded Wood Plank (12)
step << Pandaren
    .goto 378,69.16,66.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29771 >>Turn in Stronger Than Wood
    .target Jojo Ironbrow
step << Pandaren
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29768 >>Turn in Missing Mallet
    .accept 29772 >>Accept Raucous Rousing
    .target Ji Firepaw
step << Pandaren
    .goto 378,68.95,64.79
    >>Click the |cRXP_PICK_Break Gong|r
    .complete 29772,1 --Break Gong
step << Pandaren
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29772 >>Turn in Raucous Rousing
    .accept 29774 >>Accept Not In the Face!
    .target Ji Firepaw
step << Pandaren
    .goto 378,68.84,64.88
    >>Request Shu's help in waking Wugou, the spirit of earth.
    .complete 29774,2 --Wugou
    .target Wugou
step << Pandaren
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shu|r
    .complete 29774,1 --Shu
    .target Shu
step << Pandaren
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29774 >>Turn in Not In the Face!
    .accept 29775 >>Accept The Spirit and Body of Shen-zin Su
    .target Ji Firepaw
step << Pandaren
    .goto 378,67.90,67.26
    >>Kill |cRXP_ENEMY_Delivery Cart|r
    .complete 29775,1 --Delivery Cart slain (1)
    .mob Delivery Cart
step << Pandaren
    #completewith next
    .hs >>Hearth to Cheng Dawnscrive's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Pandaren
    .goto 378,51.41,46.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29775 >>Turn in The Spirit and Body of Shen-zin Su
    .accept 29776 >>Accept Morning Breeze Village
    .target Master Shang Xi
step << Pandaren
    .goto 378,30.98,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29776 >>Turn in Morning Breeze Village
    .accept 29778 >>Accept Rewritten Wisdoms
    .target Ji Firepaw
step << Pandaren
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .accept 29783 >>Accept Stronger Than Stone
    .target Jojo Ironbrow
step << Pandaren
    .goto 378,31.78,39.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaopai|r
    .accept 29777 >>Accept Tools of the Enemy
    .target Elder Shaopai
step << Pandaren
    #loop
    .goto 378,29.10,47.51,0
    .goto 378,29.10,47.51,40,0
    .goto 378,29.19,50.91,40,0
    .goto 378,32.39,55.26,40,0
    .goto 378,32.05,49.77,40,0
    >>Click the |cRXP_PICK_Defaced Scroll of Wisdom|r
    >>Loot the |cRXP_PICK_Abandoned Stone Blocks|r for |cRXP_LOOT_Abandoned Stone Block|r
    >>Kill |cRXP_ENEMY_Fe-Feng Wisemans|r. Loot them for |cRXP_LOOT_Paint Soaked Brush|r
    .complete 29778,1 --Defaced Scroll of Wisdom
    .complete 29783,1 --Abandoned Stone Block (12)
    .complete 29777,1 --Paint Soaked Brush (8)
    .mob Fe-Feng Wiseman
step << Pandaren
    .goto 378,31.78,39.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaopai|r
    .turnin 29777 >>Turn in Tools of the Enemy
    .target Elder Shaopai
step << Pandaren
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29783 >>Turn in Stronger Than Stone
    .target Jojo Ironbrow
step << Pandaren
    .goto 378,30.98,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29778 >>Turn in Rewritten Wisdoms
    .accept 29779 >>Accept The Direct Solution
    .accept 29780 >>Accept Do No Evil
    .accept 29781 >>Accept Monkey Advisory Warning
    .target Ji Firepaw
step << Pandaren
    #completewith Along105
    >>As you go: Loot the |cRXP_PICK_Stolen Fireworks|r for |cRXP_LOOT_Stolen Firework Bundle|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29781,1 --Stolen Firework Bundle (8)
step << Pandaren
    #completewith Along104
    >>As you go: Kill |cRXP_ENEMY_Fe-Feng Firethiefs|r and |cRXP_ENEMY_Fe-Feng Ruffians|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29779,1 --Fe-Feng Firethief (20)
    .mob Fe-Feng Firethief
    .mob Fe-Feng Ruffian
step << Pandaren
    #label Along104
    .goto 378,26.42,33.65
    >>Click the |cRXP_PICK_Jade Tiger Pillar|r
    .accept 29782 >>Accept Stronger Than Bone
step << Pandaren
    #label Along105
    .goto 378,21.03,34.37
    >>Kill |cRXP_ENEMY_Ruk-Ruk|r
    .complete 29780,1 --Ruk-Ruk slain (1)
    .mob Ruk-Ruk
step << Pandaren
    #loop
    .goto 378,24.93,29.98,0
    .goto 378,24.93,29.98,40,0
    .goto 378,26.58,30.15,40,0
    .goto 378,26.18,35.00,40,0
    >>Kill |cRXP_ENEMY_Fe-Feng Firethiefs|r and |cRXP_ENEMY_Fe-Feng Ruffians|r
    >>Loot the |cRXP_PICK_Stolen Fireworks|r for |cRXP_LOOT_Stolen Firework Bundle|r
    .complete 29779,1 --Fe-Feng Firethief (20)
    .complete 29781,1 --Stolen Firework Bundle (8)
    .mob Fe-Feng Firethief
    .mob Fe-Feng Ruffian
step << Pandaren
    .goto 378,30.98,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29779 >>Turn in The Direct Solution
    .turnin 29780 >>Turn in Do No Evil
    .turnin 29781 >>Turn in Monkey Advisory Warning
    .accept 29784 >>Accept Balanced Perspective
    .target Ji Firepaw
step << Pandaren
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29782 >>Turn in Stronger Than Bone
    .target Jojo Ironbrow
step << Pandaren
    .goto 378,24.78,69.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29784 >>Turn in Balanced Perspective
    .accept 29785 >>Accept Dafeng, the Spirit of Air
    .unitscan Aysa Cloudsinger
step << Pandaren
    .goto 378,24.64,69.80
    >>Speak to Dafeng, the spirit of air, in the Chamber of Whispers.
    .complete 29785,1 --Dafeng
    .target Dafeng
step << Pandaren
    .goto 378,24.64,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dafeng|r
    .turnin 29785 >>Turn in Dafeng, the Spirit of Air
    .target Dafeng
step << Pandaren
    .goto 378,24.78,69.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29786 >>Accept Battle for the Skies
    .unitscan Aysa Cloudsinger
step << Pandaren
    .goto 378,30.37,60.22
    >>Kill |cRXP_ENEMY_Zhao-Ren|r
    .complete 29786,1 --Zhao-Ren slain (1)
    .mob Zhao-Ren
step << Pandaren
    .goto 378,30.00,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29786 >>Turn in Battle for the Skies
    .accept 29787 >>Accept Worthy of Passing
    .target Master Shang Xi
step << Pandaren
    .goto 378,22.71,52.81
    >>Kill |cRXP_ENEMY_Guardian of the Elders|r
    .complete 29787,1 --Guardian of the Elders slain (1)
    .mob Guardian of the Elders
step << Pandaren
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29787 >>Turn in Worthy of Passing
    .accept 29788 >>Accept Unwelcome Nature
    .accept 29789 >>Accept Small, But Significant
    .target Master Shang Xi
step << Pandaren
    #loop
    .goto 378,21.50,54.61,0
    .goto 378,21.50,54.61,40,0
    .goto 378,22.10,45.69,40,0
    .goto 378,18.66,40.23,40,0
    .goto 378,19.12,45.68,40,0
    >>Kill |cRXP_ENEMY_Thornbranch Scamps|r
    >>Loot the |cRXP_PICK_Kun-pai Ritual Charms|r for |cRXP_LOOT_Kun-Pai Ritual Charm|r
    .complete 29788,1 --Thornbranch Scamp slain (8)
    .complete 29789,1 --Kun-Pai Ritual Charm (8)
    .mob Thornbranch Scamp
step << Pandaren
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r
    .turnin 29788 >>Turn in Unwelcome Nature
    .turnin 29789 >>Turn in Small, But Significant
    .accept 29790 >>Accept Passing Wisdom
    .target Master Shang Xi
step << Pandaren
    .goto 378,19.46,51.22
    >>Listen to Master Shang Xi.
    .complete 29790,1 --Master Shang Xi
    .target Master Shang Xi
step << Pandaren
    .goto 378,15.79,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29790 >>Turn in Passing Wisdom
    .accept 29791 >>Accept The Suffering of Shen-zin Su
    .target Aysa Cloudsinger
step << Pandaren
    .goto 378,15.56,48.89
    >>Kill |cRXP_ENEMY_Shang Xi's Hot Air Balloon|r
    .complete 29791,1 --Shang Xi's Hot Air Balloon slain (1)
    .mob Shang Xi's Hot Air Balloon
step << Pandaren
    .goto 378,15.79,49.11
    >>Board the Hot Air Balloon and Speak to Shen-zin Su.
    .complete 29791,2 --Speak with Shen-zin Su Credit (1)
step << Pandaren
    .goto 378,51.31,48.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaopai|r
    .turnin 29791 >>Turn in The Suffering of Shen-zin Su
    .accept 29792 >>Accept Bidden to Greatness
    .target Elder Shaopai
step << Pandaren
    .goto 378,51.59,61.29
    >>Click the |cRXP_PICK_Mandori Village Gate|r
    .complete 29792,1 --Mandori Village Gate
step << Pandaren
    .goto 378,52.26,68.52
    >>Click the |cRXP_PICK_Pei-Wu Forest Gate|r
    .complete 29792,2 --Pei-Wu Forest Gate
step << Pandaren
    .goto 378,50.07,76.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei Palerage|r
    .turnin 29792 >>Turn in Bidden to Greatness
    .accept 30591 >>Accept Preying on the Predators
    .target Wei Palerage
step << Pandaren
    .goto 378,50.22,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korga Strongmane|r
    .accept 29795 >>Accept Stocking Stalks
    .target Korga Strongmane
step << Pandaren
    #loop
    .goto 378,53.91,75.42,0
    .goto 378,53.91,75.42,40,0
    .goto 378,55.52,77.44,40,0
    >>Kill |cRXP_ENEMY_Pei-Wu Tigers|r
    .complete 30591,1 --Pei-Wu Tiger slain (9)
    .mob Pei-Wu Tiger
step << Pandaren
    #loop
    .goto 378,47.72,72.18,0
    .goto 378,47.72,72.18,40,0
    .goto 378,46.21,75.73,40,0
    >>Pick up |cRXP_PICK_Broken Bamboo Stalk|r from the ground
    .complete 29795,1 --Broken Bamboo Stalk (10)
step << Pandaren
    .goto 378,50.07,76.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei Palerage|r
    .turnin 30591 >>Turn in Preying on the Predators
    .target Wei Palerage
step << Pandaren
    .goto 378,50.22,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korga Strongmane|r
    .turnin 29795 >>Turn in Stocking Stalks
    .accept 30589 >>Accept Wrecking the Wreck
    .target Korga Strongmane
step << Pandaren
    .goto 378,36.32,72.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makael Bay|r
    .turnin 30589 >>Turn in Wrecking the Wreck
    .accept 30590 >>Accept Handle With Care
    .target Makael Bay
step << Pandaren
    .goto 378,36.36,72.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 29793 >>Accept Evil from the Seas
    .target Ji Firepaw
step << Pandaren
    #loop
    .goto 378,38.33,74.34,0
    .goto 378,38.33,74.34,40,0
    .goto 378,36.76,76.95,40,0
    .goto 378,39.48,78.62,40,0
    >>Kill |cRXP_ENEMY_Darkened Terrors|r and |cRXP_ENEMY_Darkened Horrors|r
    >>Loot the |cRXP_PICK_Explosive Bundles|r for |cRXP_LOOT_Packed Explosion Charge|r
    .complete 29793,1 --Darkened Terror (8)
    .complete 30590,1 --Packed Explosion Charge (6)
    .mob Darkened Terror
    .mob Darkened Horror
step << Pandaren
    .goto 378,36.32,72.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makael Bay|r
    .turnin 30590 >>Turn in Handle With Care
    .target Makael Bay
step << Pandaren
    .goto 378,36.36,72.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29793 >>Turn in Evil from the Seas
    .accept 29796 >>Accept Urgent News
    .target Ji Firepaw
step << Pandaren
    .goto 378,42.22,86.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delora Lionheart|r
    .turnin 29796 >>Turn in Urgent News
    .accept 29794 >>Accept None Left Behind
    .accept 29797 >>Accept Medical Supplies
    .target Delora Lionheart
step << Pandaren
    .goto 378,42.29,86.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .accept 29665 >>Accept From Bad to Worse
    .target Jojo Ironbrow
step << Pandaren
    #completewith Along139
    >>As you go: Kill |cRXP_ENEMY_Deepscale Tormentors|r. Loot the |cRXP_PICK_Alliance Medical Crates|r for |cRXP_LOOT_Alliance Medical Supplies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29665,1 --Deepscale Tormentor slain (8)
    .complete 29797,1 --Alliance Medical Supplies (8)
    .mob Deepscale Tormentor
step << Pandaren
    #label Along139
    #loop
    .goto 378,38.43,83.09,0
    .goto 378,38.43,83.09,40,0
    .goto 378,36.90,88.35,40,0
    >>Interact with |cRXP_FRIENDLY_Injured Sailors|r
    .complete 29794,1 --Injured Sailor (3)
    .target Injured Sailor
step << Pandaren
    #loop
    .goto 378,36.69,87.87,0
    .goto 378,36.69,87.87,40,0
    .goto 378,37.41,84.01,40,0
    >>Kill |cRXP_ENEMY_Deepscale Tormentors|r
    >>Loot the |cRXP_PICK_Alliance Medical Crates|r for |cRXP_LOOT_Alliance Medical Supplies|r
    .complete 29665,1 --Deepscale Tormentor slain (8)
    .complete 29797,1 --Alliance Medical Supplies (8)
    .mob Deepscale Tormentor
step << Pandaren
    .goto 378,42.22,86.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delora Lionheart|r
    .turnin 29794 >>Turn in None Left Behind
    .turnin 29797 >>Turn in Medical Supplies
    .target Delora Lionheart
step << Pandaren
    .goto 378,42.29,86.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .turnin 29665 >>Turn in From Bad to Worse
    .accept 29798 >>Accept An Ancient Evil
    .target Jojo Ironbrow
step << Pandaren
    .goto 378,36.37,84.47
    >>Kill |cRXP_ENEMY_Vordraka, the Deep Sea Nightmare|r
    .complete 29798,1 --Vordraka, the Deep Sea Nightmare slain (1)
    .mob Vordraka, the Deep Sea Nightmare
step << Pandaren
    .goto 378,36.51,84.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 29798 >>Turn in An Ancient Evil
    .accept 30767 >>Accept Risking It All
    .target Aysa Cloudsinger
step << Pandaren
    .goto 378,36.43,87.53
    >>Remove the thorn from Shen-zin Su.
    .complete 30767,1 --Explosion Triggered Credit
    .target Explosion Triggered Credit
step << Pandaren
    .goto 378,39.30,86.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 30767 >>Turn in Risking It All
    .accept 29799 >>Accept The Healing of Shen-zin Su
    .target Ji Firepaw
step << Pandaren
    .goto 378,38.27,85.42
    >>Kill |cRXP_ENEMY_Horde Druid|r and |cRXP_ENEMY_Alliance Priest|r
    .complete 29799,1 --Horde Druid (1)
    .mob Horde Druid
    .mob Alliance Priest
step << Pandaren
    .goto 378,39.30,86.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 29799 >>Turn in The Healing of Shen-zin Su
    .target Ji Firepaw
step << Pandaren
    .goto 378,38.78,86.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 29800 >>Accept New Allies
    .target Ji Firepaw
step << Pandaren
    .goto 378,41.62,85.49
    >>Kill |cRXP_ENEMY_Delivery Cart|r
    .complete 29800,1 --Delivery Cart slain (1)
    .mob Delivery Cart
step << Pandaren
    #completewith next
    .hs >>Hearth to Cheng Dawnscrive's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Pandaren
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Master Shang Xi|r
    .turnin 29800 >>Turn in New Allies
    .accept 31450 >>Accept A New Fate
    .target Spirit of Master Shang Xi
step << Pandaren
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Master Shang Xi|r
    .complete 31450,1 --Spirit of Master Shang Xi
    .target Spirit of Master Shang Xi
step
    +|cRXP_WARN_End of the The Wandering Isle route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: A New Fate << Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 1|r: |cRXP_FRIENDLY_Camp Narache|r (about 2.7 levels of quests), |cRXP_FRIENDLY_Valley of Trials|r (about 2.0 levels of quests, starting around Gornek). Completing this step loads the guide for Camp Narache --RouteBuilder:next
]])
