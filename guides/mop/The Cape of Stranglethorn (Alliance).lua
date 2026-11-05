-- 30-35 The Cape of Stranglethorn: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 30, 35, 58).
-- Split into 3 guides, listed under "30 - 59 The Cape of Stranglethorn" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/The Cape of Stranglethorn.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 59 The Cape of Stranglethorn
#subweight -30
#name 30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts
--RouteBuilder:next
#next Zone Routes (Alliance)\30-33 Desolace: around Cenarion Researcher Korrah;Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\26-31 Arathi Highlands

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.00,42.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goris|r
    .accept 26822 >>Accept Good-Fer-Nothin' Slither-Dogs
    .target Goris
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.24,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Hewstrike|r
    .turnin 28702 >>Turn in Hero's Call: The Cape of Stranglethorn!
    .target Bronwyn Hewstrike
    .isOnQuest 28702
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.24,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Hewstrike|r
    .turnin 26805 >>Turn in To the Cape!
    .target Bronwyn Hewstrike
    .isOnQuest 26805
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.24,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Hewstrike|r
    .accept 26825 >>Accept Dask "The Flask" Gobfizzle
    .target Bronwyn Hewstrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.31,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
    .turnin 26825 >>Turn in Dask "The Flask" Gobfizzle
    .accept 26823 >>Accept Too Big For His Britches
    .target Dask "The Flask" Gobfizzle
step
    .goto 210,55.742,41.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Swifthammer|r
    .fp Explorers' League Digsite >> Get the Explorers' League Digsite flight path
    .target Colin Swifthammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 210,59.08,30.48,0
    .goto 210,59.08,30.48,40,0
    .goto 210,60.70,30.54,40,0
    .goto 210,63.75,30.54,40,0
    >>Kill |cRXP_ENEMY_Thrashtail Basilisks|r, |cRXP_ENEMY_Ironjaw Basilisks|r and |cRXP_ENEMY_Stranglethorn Basilisks|r
    .complete 26822,1 --Thrashtail Basilisk (8)
    .mob Thrashtail Basilisk
    .mob Ironjaw Basilisk
    .mob Stranglethorn Basilisk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,65.11,24.45
    >>Kill |cRXP_ENEMY_Ironjaw Behemoth|r and loot |cRXP_LOOT_Ironjaw Humour|r
    .complete 26823,1 --Ironjaw Humour (1)
    .mob Ironjaw Behemoth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.00,42.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goris|r
    .turnin 26822 >>Turn in Good-Fer-Nothin' Slither-Dogs
    .target Goris
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.31,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
    .turnin 26823 >>Turn in Too Big For His Britches
    .accept 26817 >>Accept Perfectly Pure
    .target Dask "The Flask" Gobfizzle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.41,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linzi Hewstrike|r
    .accept 26818 >>Accept Plush Pelts
    .accept 26819 >>Accept Akiris by the Bundle
    .accept 26820 >>Accept If They're Just Going to Leave Them Lying Around...
    .target Linzi Hewstrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 210,41.93,50.50,0
    .goto 210,41.93,50.50,40,0
    .goto 210,38.82,49.92,40,0
    .goto 210,37.86,46.70,40,0
    >>Open the |cRXP_PICK_The Holy Spring|r. Loot it for |cRXP_LOOT_Pure Water|r
    >>Pick up |cRXP_PICK_Naga Icon|r from the ground
    >>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for |cRXP_LOOT_Akiris Reed|r
    .complete 26817,1 --Pure Water (1)
    .complete 26820,1 --Naga Icon (6)
    .complete 26819,1 --Akiris Reed (6)
    .mob Naga Explorer
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .accept 26599 >>Accept The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 210,41.80,72.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .accept 26597 >>Accept Stranglethorn Fever
    .target Fin Fizracket
step
    .goto 210,42.08,73.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 26593 >>Accept Scaring Shaky
    .target "Sea Wolf" MacKinley
step
    .goto 210,43.01,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 836 >>Turn in Rescue OOX-09/HL!
    .target Oglethorpe Obnoticus
    .isQuestComplete 836
step
    .goto 210,43.01,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 25476 >>Turn in Rescue OOX-22/FE!
    .target Oglethorpe Obnoticus
    .isQuestComplete 25476
step
    .goto 210,44.12,70.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargon Mortalak|r
    .target Fargon Mortalak
    .home >>Set your Hearthstone to Fargon Mortalak's inn
step
    .goto 210,41.667,74.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .fp Booty Bay>> Get the Booty Bay flight path
    .target Gyll
step
    .goto 210,54.26,65.41
    >>Click the |cRXP_PICK_Half-Buried Bottle|r
    .accept 26603 >>Accept Message in a Bottle
step
    .goto 210,54.74,65.85
    >>Kill |cRXP_ENEMY_Gorlash|r and loot |cRXP_LOOT_Smotts' Chest|r
    .complete 26599,1 --Smotts' Chest (1)
    .mob Gorlash
step
    #loop
    .goto 210,51.23,54.57,0
    .goto 210,51.23,54.57,40,0
    .goto 210,49.01,56.31,40,0
    >>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for |cRXP_LOOT_Mistvale Giblets|r
    .complete 26593,1 --Mistvale Giblets (5)
    .mob Elder Mistvale Gorilla
step
    .goto 210,52.99,50.22
    >>Kill |cRXP_ENEMY_Mokk the Savage|r and loot |cRXP_LOOT_Heart of Mokk|r
    .complete 26597,1 --Heart of Mokk (1)
    .mob Mokk the Savage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.41,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linzi Hewstrike|r
    .turnin 26819 >>Turn in Akiris by the Bundle
    .turnin 26820 >>Turn in If They're Just Going to Leave Them Lying Around...
    .accept 26808 >>Accept Maywiki
    .target Linzi Hewstrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.31,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
    .turnin 26817 >>Turn in Perfectly Pure
    .accept 26815 >>Accept Zanzil's Secret
    .target Dask "The Flask" Gobfizzle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.63,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki|r
    .turnin 26808 >>Turn in Maywiki
    .accept 26809 >>Accept Backdoor Dealings
    .target Maywiki
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Zanzil Zombies|r, |cRXP_ENEMY_Zanzil Hunters|r, |cRXP_ENEMY_Zanzil Witch Doctors|r and |cRXP_ENEMY_Zanzil Nagas|r. Loot them for |cRXP_LOOT_Zanzil's Mixture|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26815,1 --Zanzil's Mixture (1)
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Witch Doctor
    .mob Zanzil Naga
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along24
    .goto 210,61.13,43.34
    >>Place the Gurubashi Incense in front of the Totem of Hir'eek, then listen to Zanzil's plot.
    .complete 26809,1 --Zanzil the Outcast
    .target Zanzil the Outcast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,53.30,30.40
    >>Click the |cRXP_PICK_Totem of Hir'eek|r
    >>Kill |cRXP_ENEMY_Zanzil Zombies|r, |cRXP_ENEMY_Zanzil Hunters|r, |cRXP_ENEMY_Zanzil Witch Doctors|r and |cRXP_ENEMY_Zanzil Nagas|r. Loot them for |cRXP_LOOT_Zanzil's Mixture|r
    .complete 26809,2 --Totem of Hir'eek
    .complete 26815,1 --Zanzil's Mixture (1)
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Witch Doctor
    .mob Zanzil Naga
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.63,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki|r
    .turnin 26809 >>Turn in Backdoor Dealings
    .accept 26810 >>Accept Eliminate the Outcast
    .target Maywiki
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.31,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
    .turnin 26815 >>Turn in Zanzil's Secret
    .accept 26816 >>Accept Recipe for Disaster
    .accept 26824 >>Accept Results: Inconclusive
    .target Dask "The Flask" Gobfizzle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.24,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronwyn Hewstrike|r
    .turnin 26824 >>Turn in Results: Inconclusive
    .accept 26821 >>Accept Airwyn Bantamflax
    .target Bronwyn Hewstrike
step
    .goto 210,46.22,28.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stone Guard Towhide|r
    .accept 26451 >>Accept Gurubashi Challenge: Free-For-All Arena Combat
    .target Stone Guard Towhide
step
    .goto 210,46.18,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurubashi Arena Challenger|r
    .complete 26451,1 --Gurubashi Arena Challenger
    .target Gurubashi Arena Challenger
step
    .goto 210,46.22,28.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stone Guard Towhide|r
    .turnin 26451 >>Turn in Gurubashi Challenge: Free-For-All Arena Combat
    .target Stone Guard Towhide
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 210,49.54,13.70,0
    .goto 210,49.54,13.70,40,0
    .goto 210,50.23,12.43,40,0
    >>Kill |cRXP_ENEMY_Elder Shadowmaw Panthers|r. Loot them for |cRXP_LOOT_Velvety Panther Fur|r
    >>Kill |cRXP_ENEMY_Stranglethorn Tigress|r. Loot them for |cRXP_LOOT_Supple Tigress Fur|r
    .complete 26818,2 --Velvety Panther Fur (4)
    .complete 26818,1 --Supple Tigress Fur (4)
    .mob Elder Shadowmaw Panther
    .mob Stranglethorn Tigress
step
    #completewith next
    .hs >>Hearth to Fargon Mortalak's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 210,41.80,72.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .turnin 26597 >>Turn in Stranglethorn Fever
    .target Fin Fizracket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,42.45,73.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Airwyn Bantamflax|r
    .turnin 26821 >>Turn in Airwyn Bantamflax while you are here
    .isQuestComplete 26821
    .target Airwyn Bantamflax
step
    .goto 210,40.50,67.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
    .turnin 26593 >>Turn in Scaring Shaky
    .accept 26594 >>Accept Return to MacKinley
    .target "Shaky" Phillipe
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 26599 >>Turn in The Captain's Chest
    .accept 26600 >>Accept A Giant's Feast
    .target Captain Hecklebury Smotts
step
    .goto 210,42.81,68.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Crate of Grade-E Meat|r from |cRXP_FRIENDLY_Kelsey Yance|r
    .complete 26600,1 --Crate of Grade-E Meat (1)
    .target Kelsey Yance
step
    .goto 210,42.08,73.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 26594 >>Turn in Return to MacKinley
    .accept 26595 >>Accept Kill-Collect
    .target "Sea Wolf" MacKinley
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,42.45,73.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Airwyn Bantamflax|r
    .turnin 26821 >>Turn in Airwyn Bantamflax
    .target Airwyn Bantamflax
step
    .goto 210,41.03,73.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Crate of Pupellyverbos Port|r from |cRXP_FRIENDLY_Whiskey Slim|r
    .complete 26600,2 --Crate of Pupellyverbos Port (1)
    .target Whiskey Slim
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 26600 >>Turn in A Giant's Feast
    .accept 26602 >>Accept A Dish Best Served Huge
    .target Captain Hecklebury Smotts
step
    .goto 210,50.75,79.65
    >>Kill |cRXP_ENEMY_Negolash|r
    .complete 26602,1 --Negolash slain (1)
    .mob Negolash
step
    .goto 210,56.84,53.58
    >>Kill |cRXP_ENEMY_Freewheelin' Juntz Fitztittle|r and loot |cRXP_LOOT_Fitztittle's Ratcheting Torque Wrench|r
    >>Kill |cRXP_ENEMY_Ephram "Midriff" Moonfall|r and loot |cRXP_LOOT_Ephram's Jeweled Mirror|r
    .complete 26595,2 --Fitztittle's Ratcheting Torque Wrench (1)
    .complete 26595,3 --Ephram's Jeweled Mirror (1)
    .mob Freewheelin' Juntz Fitztittle
    .mob Ephram "Midriff" Moonfall
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Zanzil Witch Doctor|r and loot |cRXP_LOOT_Zanzil's Formulation|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26816,1 --Zanzil's Formulation (1)
    .mob Zanzil Witch Doctor
step
    .goto 210,59.60,49.18
    >>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r and loot |cRXP_LOOT_Maury's Clubbed Foot|r
    .complete 26595,1 --Maury's Clubbed Foot (1)
    .mob Maury "Club Foot" Wilkins
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,61.21,44.29
    >>Click the |cRXP_PICK_Zanzil's Portal|r
    .complete 26810,1 --Zanzil's Portal
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,61.21,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 26810 >>Turn in Eliminate the Outcast
    .target ?
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along46
    .goto 210,61.21,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 26811 >>Accept Through the Troll Hole
    .target !
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 210,62.14,41.76,0
    .goto 210,62.14,41.76,40,0
    .goto 210,59.46,48.72,40,0
    >>Kill |cRXP_ENEMY_Zanzil Witch Doctor|r and loot |cRXP_LOOT_Zanzil's Formulation|r
    >>Click the |cRXP_PICK_Zanzil's Portal|r
    .complete 26816,1 --Zanzil's Formulation (1)
    .complete 26811,1 --Zanzil's Portal
    .mob Zanzil Witch Doctor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.63,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maywiki|r
    .turnin 26814 >>Turn in High Priest Venoxis
    .target Maywiki
    .isQuestComplete 26814
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.41,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linzi Hewstrike|r
    .turnin 26818 >>Turn in Plush Pelts
    .target Linzi Hewstrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,55.31,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dask "The Flask" Gobfizzle|r
    .turnin 26816 >>Turn in Recipe for Disaster
    .target Dask "The Flask" Gobfizzle
step
    .goto 210,42.08,73.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 26595 >>Turn in Kill-Collect
    .target "Sea Wolf" MacKinley
step
    .goto 210,42.59,72.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .accept 26609 >>Accept The Bloodsail Buccaneers
    .target First Mate Crazz
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 26602 >>Turn in A Dish Best Served Huge
    .accept 26601 >>Accept Mok'rash the Cleaver
    .target Captain Hecklebury Smotts
step
    .goto 210,34.78,65.49
    >>Kill |cRXP_ENEMY_Mok'rash the Cleaver|r
    .complete 26601,1 --Mok'rash the Cleaver slain (1)
    .mob Mok'rash the Cleaver
step
    .goto 210,41.33,61.23
    >>Kill |cRXP_ENEMY_"Good-Boy" Bruce|r and loot |cRXP_LOOT_Weather-Beaten Coin|r. Use it to start the quest
    .collect 59143,1,26617 --Weather-Beaten Coin (1)
    .accept 26617 >>Accept An Old Sea Dog
    .use 59143
    .mob "Good-Boy" Bruce
step
    .goto 210,41.26,61.17
    >>Click the |cRXP_PICK_Bloodsail Correspondence|r
    .turnin 26609 >>Turn in The Bloodsail Buccaneers
    .accept 26610 >>Accept Bloodsail Treachery
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 26601 >>Turn in Mok'rash the Cleaver
    .target Captain Hecklebury Smotts
step
    .goto 210,42.59,72.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .turnin 26610 >>Turn in Bloodsail Treachery
    .accept 26611 >>Accept The Baron Must Be Told
    .target First Mate Crazz
step
    .goto 210,41.09,73.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 26617 >>Turn in An Old Sea Dog
    .target Fleet Master Seahorn
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26611 >>Turn in The Baron Must Be Told
    .accept 26612 >>Accept Details of the Attack
    .target Baron Revilgaz
step
    .goto 210,40.68,73.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .accept 26613 >>Accept Up to Snuff
    .target Deeg
step
    .goto 210,43.39,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .accept 26614 >>Accept Keep An Eye Out
    .target Dizzy One-Eye
step
    #completewith Along63
    >>As you go: Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Snuff|r. Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26613,1 --Snuff (1)
    .complete 26614,1 --Dizzy's Eye (1)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step
    #label Along63
    #loop
    .goto 210,41.95,82.44,0
    .goto 210,41.95,82.44,40,0
    .goto 210,40.76,82.99,40,0
    >>Pick up |cRXP_PICK_Bloodsail Orders|r from the ground
    >>Pick up |cRXP_PICK_Bloodsail Charts|r from the ground
    >>Kill |cRXP_ENEMY_Bloodsail Sea Dogs|r
    >>Kill |cRXP_ENEMY_Bloodsail Elder Magus|r
    .complete 26612,4 --Bloodsail Orders (1)
    .complete 26612,3 --Bloodsail Charts (1)
    .complete 26612,1 --Bloodsail Sea Dog slain (8)
    .complete 26612,2 --Bloodsail Elder Magus slain (8)
    .mob Bloodsail Sea Dog
    .mob Bloodsail Elder Magus
step
    .goto 210,51.15,91.22
    >>Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Snuff|r
    >>Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r
    .complete 26613,1 --Snuff (1)
    .complete 26614,1 --Dizzy's Eye (1)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step
    .goto 210,59.46,79.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 26603 >>Turn in Message in a Bottle
    .accept 26604 >>Accept Protecting Her Royal Highness Poobah
    .target Princess Poobah
step
    #loop
    .goto 210,57.37,81.30,0
    .goto 210,57.37,81.30,40,0
    .goto 210,56.73,86.79,40,0
    >>Kill |cRXP_ENEMY_Jaguero Stalkers|r
    .complete 26604,1 --Jaguero Stalker slain (5)
    .mob Jaguero Stalker
step
    .goto 210,59.46,79.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 26604 >>Turn in Protecting Her Royal Highness Poobah
    .accept 26605 >>Accept Grubby Little Paws
    .target Princess Poobah
step
    #loop
    .goto 210,63.13,79.77,0
    .goto 210,63.13,79.77,40,0
    .goto 210,63.13,77.10,40,0
    .goto 210,62.21,73.29,40,0
    >>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Tiara|r
    >>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Scepter|r
    >>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Slippers|r
    >>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Diary|r
    .complete 26605,1 --Poobah's Tiara (1)
    .complete 26605,2 --Poobah's Scepter (1)
    .complete 26605,3 --Poobah's Slippers (1)
    .complete 26605,4 --Poobah's Diary (1)
    .mob Skymane Gorilla
    .mob Skymane Bonobo
step
    .goto 210,59.46,79.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 26605 >>Turn in Grubby Little Paws
    .accept 26606 >>Accept Mukla's Demise
    .target Princess Poobah
step
    .goto 210,62.54,83.28
    >>Kill |cRXP_ENEMY_King Mukla|r and loot |cRXP_LOOT_Shackle Key|r
    .complete 26606,1 --Shackle Key (1)
    .mob King Mukla
step
    .goto 210,59.46,79.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 26606 >>Turn in Mukla's Demise
    .target Princess Poobah
step
    .goto 210,40.68,73.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .turnin 26613 >>Turn in Up to Snuff
    .target Deeg
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26612 >>Turn in Details of the Attack
    .accept 26624 >>Accept Getting In With the Bloodsail
    .target Baron Revilgaz
step
    .goto 210,43.39,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .turnin 26614 >>Turn in Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto 210,43.83,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yancey Grillsen|r
    .turnin 26624 >>Turn in Getting In With the Bloodsail
    .target Yancey Grillsen
step
    +|cRXP_WARN_That is all of The Cape of Stranglethorn for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Through the Troll Hole << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 32|r: |cRXP_FRIENDLY_Desolace|r (about 1.8 levels of quests, starting around Cenarion Researcher Korrah), |cRXP_FRIENDLY_Northern Stranglethorn|r (about 0.8 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.8 levels of quests, starting around Skuerto). Completing this step loads the guide for Desolace --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of The Cape of Stranglethorn is planned from level 35.|r Load its guide for level 35 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 59 The Cape of Stranglethorn
#subweight -30
#name 35-36 The Cape of Stranglethorn
--RouteBuilder:next
#next Zone Routes (Alliance)\35-37 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Alliance)\36-38 Dustwallow Marsh: around "Swamp Eye" Jarl;Zone Routes (Alliance)\33-36 Desolace: around Karnum Marshweaver

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,40.52,68.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Jeyne|r
    .accept 26596 >>Accept The Call of Kalimdor
    .target Corporal Jeyne
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 210,41.49,74.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_War-Mage Erallier|r
    .accept 28749 >>Accept The Battle for Andorhal
    .target War-Mage Erallier
step
    +|cRXP_WARN_That is all of The Cape of Stranglethorn for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Barrens|r: The Call of Kalimdor << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Western Plaguelands|r: The Battle for Andorhal << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 35|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.7 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.6 levels of quests, starting around "Swamp Eye" Jarl), |cRXP_FRIENDLY_Desolace|r (about 0.9 levels of quests, starting around Karnum Marshweaver). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
step
    +|cRXP_WARN_The rest of The Cape of Stranglethorn is planned from level 58.|r Load its guide for level 58 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 59 The Cape of Stranglethorn
#subweight -30
#name 58-59 The Cape of Stranglethorn: around Captain Keelhaul
--RouteBuilder:next
#next Zone Routes (Alliance)\55-56 Silithus

step
    .goto 210,43.83,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yancey Grillsen|r
    .accept 26629 >>Accept Seeing Where Your Loyalties Lie
    .target Yancey Grillsen
    .isQuestTurnedIn 26624 --any of: Getting In With the Bloodsail
step
    .goto 210,41.53,72.95
    >>Kill |cRXP_ENEMY_Fleet Master Seahorn|r and loot |cRXP_LOOT_Head of Fleet Master Seahorn|r
    .complete 26629,1 --Head of Fleet Master Seahorn (1)
    .mob Fleet Master Seahorn
    .isOnQuest 26629
step
    .goto 210,43.83,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yancey Grillsen|r
    .turnin 26629 >>Turn in Seeing Where Your Loyalties Lie
    .target Yancey Grillsen
    .isOnQuest 26629
step
    .goto 210,43.83,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yancey Grillsen|r
    .accept 26631 >>Accept Your First Day as a Pirate
    .target Yancey Grillsen
    .isQuestTurnedIn 26629 --any of: Seeing Where Your Loyalties Lie
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .turnin 26631 >>Turn in Your First Day as a Pirate
    .target Captain Keelhaul
    .isOnQuest 26631
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .accept 26633 >>Accept Swabbing Duty
    .target Captain Keelhaul
    .isQuestTurnedIn 26631 --any of: Your First Day as a Pirate
step
    .goto 210,44.43,92.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Pretty Boy" Duncan|r
    .accept 26635 >>Accept Cannonball Swim
    .target "Pretty Boy" Duncan
    .isQuestTurnedIn 26631 --any of: Your First Day as a Pirate
step
    .goto 210,44.67,92.92
    >>Pick up a Swabbie's Mop on the deck of the Riptide, then keep the deck clean for 2 minutes.
    .complete 26633,1 --Deck Stain
    .target Deck Stain
    .isOnQuest 26633
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .turnin 26633 >>Turn in Swabbing Duty while you are here
    .isQuestComplete 26633
    .target Captain Keelhaul
step
    #loop
    .goto 210,47.59,94.95,0
    .goto 210,47.59,94.95,40,0
    .goto 210,49.42,93.77,40,0
    .goto 210,50.52,95.29,40,0
    .goto 210,43.57,97.98,40,0
    >>Pick up |cRXP_PICK_Bloodsail Cannonball|r from the ground
    .complete 26635,1 --Bloodsail Cannonball (6)
    .isOnQuest 26635
step
    .goto 210,44.43,92.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Pretty Boy" Duncan|r
    .turnin 26635 >>Turn in Cannonball Swim
    .target "Pretty Boy" Duncan
    .isOnQuest 26635
step
    .goto 210,44.45,91.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garr Salthoof|r
    .accept 26634 >>Accept The Bane of Many A Pirate
    .target Garr Salthoof
    .isQuestTurnedIn 26631 --any of: Your First Day as a Pirate
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .turnin 26633 >>Turn in Swabbing Duty
    .target Captain Keelhaul
    .isOnQuest 26633
step
    .goto 210,41.10,82.51
    >>Loot the |cRXP_PICK_Lime Crates|r for |cRXP_LOOT_Bushel of Limes|r
    .complete 26634,1 --Bushel of Limes (5)
    .isOnQuest 26634
step
    .goto 210,40.81,82.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowardly Crosby|r
    .target Cowardly Crosby
    .home >>Set your Hearthstone to Cowardly Crosby's inn
step
    .goto 210,44.45,91.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garr Salthoof|r
    .turnin 26634 >>Turn in The Bane of Many A Pirate
    .target Garr Salthoof
    .isOnQuest 26634
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .accept 26644 >>Accept Attracting Attention
    .target Captain Keelhaul
    .isQuestTurnedIn 26633 --Swabbing Duty
    .isQuestTurnedIn 26634 --The Bane of Many A Pirate
    .isQuestTurnedIn 26635 --Cannonball Swim
step
    .goto 210,46.70,95.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Firallon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26644 >>Turn in Attracting Attention
    .unitscan Fleet Master Firallon
    .isOnQuest 26644
step
    .goto 210,46.58,94.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironpatch|r
    .accept 26647 >>Accept Ol' Blasty
    .target Ironpatch
    .isQuestTurnedIn 26644 --any of: Attracting Attention
step
    .goto 210,46.67,92.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Dead-Eye" Drederick McGumm|r
    .accept 26648 >>Accept Our Mortal Enemies
    .target "Dead-Eye" Drederick McGumm
    .isQuestTurnedIn 26644 --any of: Attracting Attention
step
    .goto 210,48.76,93.12
    >>Kill |cRXP_ENEMY_Smilin' Timmy Sticks|r
    .complete 26647,1 --Smilin' Timmy Sticks slain (1)
    .mob Smilin' Timmy Sticks
    .isOnQuest 26647
step
    .goto 210,46.58,94.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironpatch|r
    .turnin 26647 >>Turn in Ol' Blasty
    .target Ironpatch
    .isOnQuest 26647
step
    .goto 210,46.58,94.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironpatch|r
    .accept 26649 >>Accept Drive-By Piracy
    .target Ironpatch
    .isQuestTurnedIn 26647 --any of: Ol' Blasty
step
    #loop
    .goto 210,58.77,77.53,0
    .goto 210,58.77,77.53,40,0
    .goto 210,61.01,76.61,40,0
    .goto 210,63.60,78.64,40,0
    >>Kill |cRXP_ENEMY_Ninjas|r
    .complete 26648,1 --Ninja slain (15)
    .mob Ninja
    .isOnQuest 26648
step
    .goto 210,58.14,67.47
    >>Kill |cRXP_ENEMY_Venture Co. Oil Workers|r
    .complete 26649,1 --Venture Co. Oil Worker slain (75)
    .mob Venture Co. Oil Worker
    .isOnQuest 26649
step
    .goto 210,46.67,92.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Dead-Eye" Drederick McGumm|r
    .turnin 26648 >>Turn in Our Mortal Enemies
    .target "Dead-Eye" Drederick McGumm
    .isOnQuest 26648
step
    .goto 210,46.58,94.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironpatch|r
    .turnin 26649 >>Turn in Drive-By Piracy
    .target Ironpatch
    .isOnQuest 26649
step
    .goto 210,46.70,95.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Firallon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26650 >>Accept The Damsel's Luck
    .unitscan Fleet Master Firallon
    .isQuestTurnedIn 26649 --any of: Drive-By Piracy
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .turnin 26650 >>Turn in The Damsel's Luck
    .isOnQuest 26650
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .accept 26663 >>Accept Sinking From Within
    .accept 26662 >>Accept The Brashtide Crew
    .isQuestTurnedIn 26650 --any of: The Damsel's Luck
step
    .goto 210,51.27,91.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Long John Copper|r
    .complete 26662,1 --Long John Copper
    .target Long John Copper
    .isOnQuest 26662
step
    .goto 210,50.56,91.52
    >>Click the |cRXP_PICK_Grog Barrel|r
    .complete 26663,1 --Grog Barrel
    .isOnQuest 26663
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .accept 26664 >>Accept Making Mutiny
    .isQuestTurnedIn 26650 --any of: The Damsel's Luck
step
    .goto 210,46.82,93.74
    >>Click the |cRXP_PICK_Gunpowder Barrel|r
    .complete 26663,2 --Gunpowder Barrel
    .isOnQuest 26663
step
    .goto 210,46.74,94.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enormous Shawn Stooker|r
    .complete 26662,2 --Enormous Shawn Stooker
    .target Enormous Shawn Stooker
    .isOnQuest 26662
step
    .goto 210,46.62,94.06
    >>Kill |cRXP_ENEMY_Bloodsail Corsairs|r
    .complete 26664,1 --Bloodsail Corsair slain (9)
    .mob Bloodsail Corsair
    .isOnQuest 26664
step
    .goto 210,44.45,93.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wailing Mary Smitts|r
    .complete 26662,3 --Wailing Mary Smitts
    .target Wailing Mary Smitts
    .isOnQuest 26662
step
    .goto 210,44.65,92.76
    >>Click the |cRXP_PICK_Cannonball Crate|r
    .complete 26663,3 --Cannonball Crate
    .isOnQuest 26663
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .turnin 26663 >>Turn in Sinking From Within
    .isOnQuest 26663
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .turnin 26662 >>Turn in The Brashtide Crew
    .isOnQuest 26662
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .turnin 26664 >>Turn in Making Mutiny
    .isOnQuest 26664
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .accept 26665 >>Accept Call of Booty
    .isQuestTurnedIn 26662 --The Brashtide Crew
    .isQuestTurnedIn 26663 --Sinking From Within
    .isQuestTurnedIn 26664 --Making Mutiny
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26665 >>Turn in Call of Booty
    .target Baron Revilgaz
    .isOnQuest 26665
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 26678 >>Accept Doublerum
    .target Baron Revilgaz
    .isQuestTurnedIn 26665 --any of: Call of Booty
step
    .goto 210,40.63,73.23
    >>Click the |cRXP_PICK_Barrel of Doublerum|r
    .turnin 26678 >>Turn in Doublerum
    .isOnQuest 26678
step
    .goto 210,40.63,73.23
    >>Click the |cRXP_PICK_Barrel of Doublerum|r
    .accept 26679 >>Accept Return to Revilgaz
    .isQuestTurnedIn 26678 --any of: Doublerum
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26679 >>Turn in Return to Revilgaz
    .target Baron Revilgaz
    .isOnQuest 26679
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 26698 >>Accept Seeking Seahorn
    .accept 26695 >>Accept Prepare for Takeoff
    .target Baron Revilgaz
    .isQuestTurnedIn 26679 --any of: Return to Revilgaz
step
    .goto 210,41.09,73.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 26698 >>Turn in Seeking Seahorn
    .target Fleet Master Seahorn
    .isOnQuest 26698
step
    .goto 210,41.09,73.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .accept 26700 >>Accept The Damsel's (Bad) Luck
    .accept 26699 >>Accept Turning the Brashtide
    .target Fleet Master Seahorn
    .isQuestTurnedIn 26698 --any of: Seeking Seahorn
step
    .goto 210,42.56,69.12
    >>Pick up |cRXP_PICK_Narkk's Handbombs|r from the ground
    .complete 26695,1 --Narkk's Handbombs (1)
    .isOnQuest 26695
step
    #loop
    .goto 210,42.88,69.67,0
    .goto 210,42.88,69.67,40,0
    .goto 210,42.21,72.94,40,0
    >>Kill |cRXP_ENEMY_Brashtide Raiders|r
    .complete 26699,1 --Brashtide Raider slain (10)
    .mob Brashtide Raider
    .isOnQuest 26699
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26695 >>Turn in Prepare for Takeoff while you are here
    .isQuestComplete 26695
    .target Baron Revilgaz
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26699 >>Turn in Turning the Brashtide while you are here
    .isQuestComplete 26699
    .target Baron Revilgaz
step
    .goto 210,41.36,71.28
    >>Kill |cRXP_ENEMY_Bloodsail Corsairs|r
    .complete 26700,1 --Bloodsail Corsair slain (8)
    .mob Bloodsail Corsair
    .isOnQuest 26700
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26700 >>Turn in The Damsel's (Bad) Luck while you are here
    .isQuestComplete 26700
    .target Baron Revilgaz
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26695 >>Turn in Prepare for Takeoff
    .target Baron Revilgaz
    .isOnQuest 26695
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 26697 >>Accept The Final Voyage of the Brashtide
    .target Baron Revilgaz
    .isQuestTurnedIn 26695 --any of: Prepare for Takeoff
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26700 >>Turn in The Damsel's (Bad) Luck
    .target Baron Revilgaz
    .isOnQuest 26700
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26699 >>Turn in Turning the Brashtide
    .target Baron Revilgaz
    .isOnQuest 26699
step
    #loop
    .goto 210,37.70,68.73,0
    .goto 210,37.70,68.73,40,0
    .goto 210,39.04,66.48,40,0
    >>Kill |cRXP_ENEMY_Brashtide Attack Boats|r
    .complete 26697,2 --Brashtide Attack Boat slain (6)
    .mob Brashtide Attack Boat
    .isOnQuest 26697
step
    #loop
    .goto 210,38.68,66.68,0
    .goto 210,38.68,66.68,40,0
    .goto 210,37.67,68.66,40,0
    >>Kill |cRXP_ENEMY_Brashtide Crewmans|r
    .complete 26697,1 --Brashtide Crewman slain (8)
    .mob Brashtide Crewman
    .isOnQuest 26697
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26697 >>Turn in The Final Voyage of the Brashtide
    .target Baron Revilgaz
    .isOnQuest 26697
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 26703 >>Accept Bloodsail's End
    .target Baron Revilgaz
    .isQuestTurnedIn 26697 --The Final Voyage of the Brashtide
    .isQuestTurnedIn 26699 --Turning the Brashtide
    .isQuestTurnedIn 26700 --The Damsel's (Bad) Luck
step
    .goto 210,35.66,66.74
    >>Kill |cRXP_ENEMY_Fleet Master Firallon|r
    .complete 26703,1 --Fleet Master Firallon slain (1)
    .mob Fleet Master Firallon
    .isOnQuest 26703
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26703 >>Turn in Bloodsail's End
    .target Baron Revilgaz
    .isOnQuest 26703
step
    +|cRXP_WARN_End of the The Cape of Stranglethorn route.|r
step
    +|cRXP_WARN_Suggested next zones at level 58|r: |cRXP_FRIENDLY_Silithus|r (about 0.8 levels of quests, starting around Huum Wildmane). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
