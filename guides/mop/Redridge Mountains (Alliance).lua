-- 15-20 Redridge Mountains: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 15, 20).
-- Split into 2 guides, listed under "15 - 21 Redridge Mountains" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Redridge Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 15 - 21 Redridge Mountains
#subweight -15
#name 15-18 Redridge Mountains
--RouteBuilder:next
#next Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step
    .goto 49,29.41,53.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Lakeshire >> Get the Lakeshire flight path
    .target Ariena Stormfeather
    .xp <21,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,16.03,64.63
    >>Click the |cRXP_PICK_Wanted!|r
    .accept 26504 >>Accept Wanted: Redridge Gnolls
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,15.62,65.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy Parker|r
    .accept 26506 >>Accept Franks and Beans
    .target Darcy Parker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,15.32,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Captain Parker|r
    .turnin 26365 >>Turn in Hero's Call: Redridge Mountains!
    .target Watch Captain Parker
    .isOnQuest 26365
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,15.32,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Captain Parker|r
    .turnin 28563 >>Turn in Hero's Call: Redridge Mountains!
    .target Watch Captain Parker
    .isOnQuest 28563
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,15.32,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Captain Parker|r
    .accept 26503 >>Accept Still Assessing the Threat
    .target Watch Captain Parker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,17.30,63.86,0
    .goto 49,17.30,63.86,40,0
    .goto 49,20.37,66.10,40,0
    .goto 49,17.17,55.20,40,0
    .goto 49,13.60,66.35,40,0
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for |cRXP_LOOT_Tarantula Eyes|r
    >>Kill |cRXP_ENEMY_Dire Condors|r. Loot them for |cRXP_LOOT_Condor Giblets|r
    .complete 26506,1 --Tarantula Eyes (4)
    .complete 26506,2 --Condor Giblets (4)
    .mob Tarantula
    .mob Dire Condor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along7
    >>As you go: Kill |cRXP_ENEMY_Redridge Brutes|r, |cRXP_ENEMY_Redridge Thrashers|r and |cRXP_ENEMY_Redridge Mongrels|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26504,1 --Redridge Brute (15)
    .mob Redridge Brute
    .mob Redridge Thrasher
    .mob Redridge Mongrel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.03,74.88
    >>Pick up |cRXP_PICK_Gnoll Orders|r from the ground
    .complete 26503,2 --Gnoll Orders (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along7
    .goto 49,30.56,62.71
    >>Pick up |cRXP_PICK_Gnoll Strategy Guide|r from the ground
    .complete 26503,3 --Gnoll Strategy Guide (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,29.35,56.48,0
    .goto 49,29.35,56.48,40,0
    .goto 49,31.77,55.33,40,0
    >>Kill |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Goretusk Kidney|r
    .complete 26506,3 --Goretusk Kidney (4)
    .mob Great Goretusk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,19.07,59.19,0
    .goto 49,19.07,59.19,40,0
    .goto 49,16.20,55.26,40,0
    >>Open the |cRXP_PICK_Gnoll Battle Plan|r. Loot it for |cRXP_LOOT_Gnoll Battle Plans|r
    >>Kill |cRXP_ENEMY_Redridge Brutes|r, |cRXP_ENEMY_Redridge Thrashers|r and |cRXP_ENEMY_Redridge Mongrels|r
    .complete 26503,1 --Gnoll Battle Plans (1)
    .complete 26504,1 --Redridge Brute (15)
    .mob Redridge Brute
    .mob Redridge Thrasher
    .mob Redridge Mongrel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,15.62,65.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy Parker|r
    .turnin 26506 >>Turn in Franks and Beans
    .target Darcy Parker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,15.32,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Captain Parker|r
    .turnin 26504 >>Turn in Wanted: Redridge Gnolls
    .turnin 26503 >>Turn in Still Assessing the Threat
    .accept 26505 >>Accept Parker's Report
    .target Watch Captain Parker
step
    .goto 49,29.41,53.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Lakeshire >> Get the Lakeshire flight path
    .target Ariena Stormfeather
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.34,48.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn|r
    .accept 26508 >>Accept Nida's Necklace
    .target Shawn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,29.74,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 1097 >>Accept Elmore's Task
    .target Verner Osgood
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.68,40.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 26511 >>Accept Lake Everstill Clean Up
    .target Bailiff Conacher
step
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26761 >>Turn in Threat to the Kingdom
    .target Magistrate Solomon
    .isOnQuest 26761
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26505 >>Turn in Parker's Report
    .accept 26510 >>Accept We Must Prepare!
    .target Magistrate Solomon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,37.82,42.15,0
    .goto 49,37.82,42.15,40,0
    .goto 49,41.66,46.95,40,0
    >>Kill |cRXP_ENEMY_Murloc Nightcrawlers|r, |cRXP_ENEMY_Murloc Tidecallers|r, |cRXP_ENEMY_Murloc Minor Tidecallers|r and |cRXP_ENEMY_Murloc Scouts|r
    >>Pick up |cRXP_PICK_Gnomecorder|r from the ground
    .complete 26511,1 --Murloc Nightcrawler (10)
    .complete 26510,1 --Gnomecorder (1)
    .mob Murloc Nightcrawler
    .mob Murloc Tidecaller
    .mob Murloc Minor Tidecaller
    .mob Murloc Scout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.68,40.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .turnin 26511 >>Turn in Lake Everstill Clean Up
    .target Bailiff Conacher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26510 >>Turn in We Must Prepare!
    .accept 26512 >>Accept Tuning the Gnomecorder
    .target Magistrate Solomon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,31.86,44.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 26513 >>Accept Like a Fart in the Wind
    .target Marshal Marris
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,32.30,39.50
    >>Test the Gnomecorder at the Lakeshire Graveyard
    .complete 26512,1 --Test the Gnomecorder at the Lakeshire Graveyard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26512 >>Turn in Tuning the Gnomecorder
    .accept 26514 >>Accept Canyon Romp
    .target Magistrate Solomon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,23.43,26.45
    >>Pick up |cRXP_PICK_Redridge Supply Crate|r from the ground
    .complete 26513,1 --Redridge Supply Crate (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop26519x1
    >>|cRXP_LOOT_Dirt-Stained Scroll|r can drop from |cRXP_ENEMY_Redridge Mystic|r, |cRXP_ENEMY_Redridge Alpha|r, |cRXP_ENEMY_Redridge Basher|r. Use it to start the quest if you get one
    .collect 58898,1,26519 --Dirt-Stained Scroll (1)
    .accept 26519 >>Accept He Who Controls the Ettins
    .use 58898
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop26519x1
    #loop
    .goto 49,20.43,26.76,0
    .goto 49,20.43,26.76,40,0
    .goto 49,21.86,33.83,40,0
    .goto 49,27.62,36.92,40,0
    .goto 49,27.44,27.85,40,0
    >>Kill |cRXP_ENEMY_Redridge Mystics|r, |cRXP_ENEMY_Redridge Alphas|r, |cRXP_ENEMY_Redridge Bashers|r and |cRXP_ENEMY_Redridge Drudgers|r. Loot them for |cRXP_LOOT_Redridge Gnoll Collar|r
    .complete 26514,1 --Redridge Gnoll Collar (10)
    .mob Redridge Mystic
    .mob Redridge Alpha
    .mob Redridge Basher
    .mob Redridge Drudger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26514 >>Turn in Canyon Romp
    .accept 26544 >>Accept They've Wised Up...
    .target Magistrate Solomon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,19.30,18.86,0
    .goto 49,19.30,18.86,40,0
    .goto 49,17.07,19.61,40,0
    >>Kill |cRXP_ENEMY_Blackrock Overseer|r and loot |cRXP_LOOT_Blackrock Orc Missive|r
    .complete 26544,1 --Blackrock Orc Missive (1)
    .mob Blackrock Overseer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26544 >>Turn in They've Wised Up...
    .accept 26545 >>Accept Yowler Must Die!
    .target Magistrate Solomon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,17.94,18.57
    >>Kill |cRXP_ENEMY_Ardo Dirtpaw|r
    .complete 26519,1 --Ardo Dirtpaw slain (1)
    .mob Ardo Dirtpaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,17.84,18.62
    >>Click the |cRXP_PICK_Ettin Control Orb|r
    .turnin 26519 >>Turn in He Who Controls the Ettins
    .isOnQuest 26519
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,17.84,18.62
    >>Click the |cRXP_PICK_Ettin Control Orb|r
    .accept 26520 >>Accept Saving Foreman Oslow
    .isQuestTurnedIn 26519 --any of: He Who Controls the Ettins
    .xp <14,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.87,21.98
    >>Kill |cRXP_ENEMY_Yowler|r
    >>Kill |cRXP_ENEMY_Yowler|r and loot |cRXP_LOOT_Blackrock Invasion Plans|r
    .complete 26545,1 --Yowler slain (1)
    .complete 26545,2 --Blackrock Invasion Plans (1)
    .mob Yowler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,31.48,44.34
    >>Use the Ettin Control Orb to control an Ettin and then use the Ettin Control Orb on your Subdued Canyon Ettin to lift the Huge Boulder off of Foreman Oslow at Lakeshire.
    .complete 26520,1 --Foreman Oslow
    .target Foreman Oslow
    .isOnQuest 26520
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,31.86,44.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 26513 >>Turn in Like a Fart in the Wind
    .target Marshal Marris
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26545 >>Turn in Yowler Must Die!
    .target Magistrate Solomon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26520 >>Turn in Saving Foreman Oslow
    .target Magistrate Solomon
    .isOnQuest 26520
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.66,40.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 26567 >>Accept John J. Keeshan
    .target Colonel Troteman
    .isQuestTurnedIn 26520 --Saving Foreman Oslow
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,22.04,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Accept An Unwelcome Guest
    .target Martie Jainrose
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,17.47,44.80
    >>Kill |cRXP_ENEMY_Bellygrub|r and loot |cRXP_LOOT_Bellygrub's Tusk|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,22.04,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Turn in An Unwelcome Guest
    .target Martie Jainrose
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,27.09,50.94
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Nida's Necklace|r
    .complete 26508,1 --Nida's Necklace (1)
step
    .train 33388,1
    .goto 49,29.41,53.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Eastvale Logging Camp >> Fly to Eastvale Logging Camp
    .target Ariena Stormfeather
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.28,48.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Turn in Nida's Necklace
    .target Nida
step
    .goto 49,26.51,42.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Franklin Hamar|r
    .target Franklin Hamar
    .home >>Set your Hearthstone to Franklin Hamar's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.30,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26567 >>Turn in John J. Keeshan
    .target John J. Keeshan
    .isOnQuest 26567
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.30,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 26568 >>Accept This Ain't My War
    .target John J. Keeshan
    .isQuestTurnedIn 26567 --any of: John J. Keeshan
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.66,40.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26568 >>Turn in This Ain't My War
    .target Colonel Troteman
    .isOnQuest 26568
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.66,40.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 26571 >>Accept Weapons of War
    .accept 26586 >>Accept In Search of Bravo Company
    .target Colonel Troteman
    .isQuestTurnedIn 26568 --any of: This Ain't My War
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,29.65,44.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .accept 26569 >>Accept Surveying Equipment
    .target Foreman Oslow
    .isQuestTurnedIn 26568 --any of: This Ain't My War
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,31.86,44.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 26570 >>Accept Render's Army
    .target Marshal Marris
    .isQuestTurnedIn 26568 --any of: This Ain't My War
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,47.53,41.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r
    .turnin 26586 >>Turn in In Search of Bravo Company
    .target Messner
    .isOnQuest 26586
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,47.53,41.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r
    .accept 26587 >>Accept Breaking Out is Hard to Do
    .target Messner
    .isQuestTurnedIn 26586 --any of: In Search of Bravo Company
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,51.52,41.40
    >>Kill |cRXP_ENEMY_Homurk|r and loot |cRXP_LOOT_Keeshan's Survival Knife|r
    .complete 26571,2 --Keeshan's Survival Knife (1)
    .mob Homurk
    .isOnQuest 26571
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,51.68,41.34
    >>Kill |cRXP_ENEMY_Murdunk|r and loot |cRXP_LOOT_Keeshan's Bow|r
    .complete 26571,1 --Keeshan's Bow (1)
    .mob Murdunk
    .isOnQuest 26571
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Franklin Hamar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.66,40.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26571 >>Turn in Weapons of War
    .target Colonel Troteman
    .isOnQuest 26571
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.66,40.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 26573 >>Accept His Heart Must Be In It
    .target Colonel Troteman
    .isQuestTurnedIn 26571 --any of: Weapons of War
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,49.24,38.00
    >>Open the |cRXP_PICK_Blackrock Key Pouch|r. Loot it for |cRXP_LOOT_Messner's Cage Key|r
    .complete 26587,1 --Messner's Cage Key (1)
    .isOnQuest 26587
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,47.53,41.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r
    .turnin 26587 >>Turn in Breaking Out is Hard to Do
    .target Messner
    .isOnQuest 26587
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,47.65,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r
    .accept 26560 >>Accept Jorgensen
    .target Messner
    .isQuestTurnedIn 26587 --any of: Breaking Out is Hard to Do
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,43.55,10.82
    >>Kill |cRXP_ENEMY_Utroka the Keymistress|r and loot |cRXP_LOOT_Jorgensen's Cage Key|r
    .complete 26560,1 --Jorgensen's Cage Key (1)
    .mob Utroka the Keymistress
    .isOnQuest 26560
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,33.54,11.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgensen|r
    .turnin 26560 >>Turn in Jorgensen
    .target Jorgensen
    .isOnQuest 26560
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,33.65,11.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgensen|r
    .accept 26561 >>Accept Krakauer
    .target Jorgensen
    .isQuestTurnedIn 26560 --any of: Jorgensen
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.06,10.45
    >>Kill |cRXP_ENEMY_Ritualist Tarak|r
    .complete 26561,1 --Ritualist Tarak slain (1)
    .mob Ritualist Tarak
    .isOnQuest 26561
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.59,10.53
    >>Open the |cRXP_PICK_Blackrock Coffer|r. Loot it for |cRXP_LOOT_Keeshan's Red Headband|r
    .complete 26573,1 --Keeshan's Red Headband (1)
    .isOnQuest 26573
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.59,10.53
    >>Open the |cRXP_PICK_Blackrock Coffer|r. Loot it for |cRXP_LOOT_Keeshan's Jade Amulet|r
    .complete 26573,2 --Keeshan's Jade Amulet (1)
    .isOnQuest 26573
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,25.91,10.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakauer|r
    .turnin 26561 >>Turn in Krakauer
    .target Krakauer
    .isOnQuest 26561
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.22,10.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakauer|r
    .accept 26562 >>Accept And Last But Not Least... Danforth
    .target Krakauer
    .isQuestTurnedIn 26561 --any of: Krakauer
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,27.57,16.86
    >>Kill |cRXP_ENEMY_Overlord Barbarius|r
    .complete 26562,1 --Overlord Barbarius slain (1)
    .mob Overlord Barbarius
    .isOnQuest 26562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,27.57,16.86
    >>Kill |cRXP_ENEMY_Overlord Barbarius|r and loot |cRXP_LOOT_Blackrock Lever Key|r
    .complete 26562,2 --Blackrock Lever Key (1)
    .mob Overlord Barbarius
    .isOnQuest 26562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.33,17.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danforth|r
    .turnin 26562 >>Turn in And Last But Not Least... Danforth
    .target Danforth
    .isOnQuest 26562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.33,17.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danforth|r
    .accept 26563 >>Accept Return of the Bravo Company
    .target Danforth
    .isQuestTurnedIn 26562 --any of: And Last But Not Least... Danforth
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,27.54,16.85,0
    .goto 49,27.54,16.85,40,0
    .goto 49,29.19,11.20,40,0
    .goto 49,30.87,9.21,40,0
    >>Kill |cRXP_ENEMY_Blackrock Renegades|r, |cRXP_ENEMY_Blackrock Scouts|r, |cRXP_ENEMY_Blackrock Summoners|r and |cRXP_ENEMY_Murdunks|r
    .complete 26570,1 --Blackrock Renegade (25)
    .mob Blackrock Renegade
    .mob Blackrock Scout
    .mob Blackrock Summoner
    .mob Murdunk
    .isOnQuest 26570
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,41.16,17.88
    >>Kill |cRXP_ENEMY_Blackrock Trackers|r. Loot them for |cRXP_LOOT_Blackrock Spyglass|r
    .complete 26569,1 --Blackrock Spyglass (5)
    .mob Blackrock Tracker
    .isOnQuest 26569
step
    .goto 49,26.456,42.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kimberly Hiett|r in the Lakeshire Inn
    .vendor >>Vendor and Repair
    .target Kimberly Hiett
    .isOnQuest 26573
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.66,40.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26563 >>Turn in Return of the Bravo Company
    .target Colonel Troteman
    .isOnQuest 26563
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.66,40.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26573 >>Turn in His Heart Must Be In It
    .target Colonel Troteman
    .isOnQuest 26573
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.66,40.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 26607 >>Accept They Drew First Blood
    .target Colonel Troteman
    .isQuestTurnedIn 26563 --Return of the Bravo Company
    .isQuestTurnedIn 26573 --His Heart Must Be In It
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.30,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26607 >>Turn in They Drew First Blood
    .target John J. Keeshan
    .isOnQuest 26607
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,29.65,44.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 26569 >>Turn in Surveying Equipment
    .target Foreman Oslow
    .isOnQuest 26569
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,31.86,44.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 26570 >>Turn in Render's Army
    .target Marshal Marris
    .isOnQuest 26570
step
    +|cRXP_WARN_That is all of Redridge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: Elmore's Task << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 17|r: |cRXP_FRIENDLY_Darkshore|r (about 0.8 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Darkshore --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Redridge Mountains is planned from level 20.|r Load its guide for level 20 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 15 - 21 Redridge Mountains
#subweight -15
#name 20-21 Redridge Mountains
--RouteBuilder:next
#next Zone Routes (Alliance)\20-22 Hillsbrad Foothills: around Helcular;Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.68,40.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 26728 >>Accept Hero's Call: Duskwood!
    .target Bailiff Conacher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,26.30,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 26616 >>Accept It's Never Over
    .target John J. Keeshan
    .isQuestTurnedIn 26607 --any of: They Drew First Blood
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,34.43,45.91
    >>Kill |cRXP_ENEMY_Keeshan's Riverboat|r
    .complete 26616,1 --Keeshan's Riverboat slain (1)
    .mob Keeshan's Riverboat
    .isOnQuest 26616
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,52.71,55.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26616 >>Turn in It's Never Over
    .target John J. Keeshan
    .isOnQuest 26616
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,52.71,55.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 26639 >>Accept Point of Contact: Brubaker
    .target John J. Keeshan
    .isQuestTurnedIn 26616 --any of: It's Never Over
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,52.81,55.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakauer|r
    .accept 26636 >>Accept Bravo Company Field Kit: Camouflage
    .target Krakauer
    .isQuestTurnedIn 26616 --any of: It's Never Over
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,53.18,56.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r
    .accept 26637 >>Accept Bravo Company Field Kit: Chloroform
    .target Messner
    .isQuestTurnedIn 26616 --any of: It's Never Over
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,53.05,55.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danforth|r
    .accept 26638 >>Accept Hunting the Hunters
    .target Danforth
    .isQuestTurnedIn 26616 --any of: It's Never Over
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,46.90,58.33
    >>Kill |cRXP_ENEMY_Muckdwellers|r. Loot them for |cRXP_LOOT_Muckdweller Gland|r
    .complete 26637,1 --Muckdweller Gland (8)
    .mob Muckdweller
    .isOnQuest 26637
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,45.94,67.03,0
    .goto 49,45.94,67.03,40,0
    .goto 49,50.32,66.03,40,0
    >>Kill |cRXP_ENEMY_Blackrock Hunters|r
    .complete 26638,1 --Blackrock Hunter slain (8)
    .mob Blackrock Hunter
    .isOnQuest 26638
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,48.75,66.66,0
    .goto 49,48.75,66.66,40,0
    .goto 49,48.56,64.17,40,0
    .goto 49,41.12,69.99,40,0
    .goto 49,42.56,70.35,40,0
    >>Pick up |cRXP_PICK_Pile of Leaves|r from the ground
    .complete 26636,1 --Pile of Leaves (5)
    .isOnQuest 26636
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,45.90,68.40,0
    .goto 49,45.90,68.40,40,0
    .goto 49,43.96,67.75,40,0
    .goto 49,41.11,69.98,40,0
    >>Pick up |cRXP_PICK_Fox Poop|r from the ground
    .complete 26636,2 --Fox Poop (5)
    .isOnQuest 26636
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,53.05,67.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brubaker|r
    .turnin 26639 >>Turn in Point of Contact: Brubaker
    .target Brubaker
    .isOnQuest 26639
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,53.05,67.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brubaker|r
    .accept 26640 >>Accept Unspeakable Atrocities
    .target Brubaker
    .isQuestTurnedIn 26639 --any of: Point of Contact: Brubaker
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,53.18,56.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messner|r
    .turnin 26637 >>Turn in Bravo Company Field Kit: Chloroform
    .target Messner
    .isOnQuest 26637
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,52.81,55.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krakauer|r
    .turnin 26636 >>Turn in Bravo Company Field Kit: Camouflage
    .target Krakauer
    .isOnQuest 26636
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,53.05,55.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danforth|r
    .turnin 26638 >>Turn in Hunting the Hunters
    .target Danforth
    .isOnQuest 26638
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,52.71,55.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26640 >>Turn in Unspeakable Atrocities
    .target John J. Keeshan
    .isOnQuest 26640
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,52.71,55.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 26646 >>Accept Prisoners of War
    .target John J. Keeshan
    .isQuestTurnedIn 26636 --Bravo Company Field Kit: Camouflage
    .isQuestTurnedIn 26637 --Bravo Company Field Kit: Chloroform
    .isQuestTurnedIn 26638 --Hunting the Hunters
    .isQuestTurnedIn 26640 --Unspeakable Atrocities
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,69.52,76.33
    >>Open the |cRXP_PICK_Blackrock Key Pouch|r. Loot it for |cRXP_LOOT_Blackrock Holding Pen Key|r
    .collect 59261,1,26646,1 --Blackrock Holding Pen Key (1)
    .isOnQuest 26646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,68.92,58.76
    >>Click the |cRXP_PICK_Blackrock Holding Pen|r
    .complete 26646,1 --Blackrock Holding Pen
    .isOnQuest 26646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,52.71,55.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26646 >>Turn in Prisoners of War
    .target John J. Keeshan
    .isOnQuest 26646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,52.71,55.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 26651 >>Accept To Win a War, You Gotta Become War
    .target John J. Keeshan
    .isQuestTurnedIn 26646 --any of: Prisoners of War
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,66.41,71.47
    >>Kill |cRXP_ENEMY_Blackrock Tower|r
    .complete 26651,2 --Blackrock Tower (1)
    .mob Blackrock Tower
    .isOnQuest 26651
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,63.80,70.54
    >>Click the |cRXP_PICK_Blackrock Explosive Device|r
    .complete 26651,1 --Blackrock Explosive Device
    .isOnQuest 26651
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26651 >>Turn in To Win a War, You Gotta Become War
    .target John J. Keeshan
    .isOnQuest 26651
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 26668 >>Accept Detonation
    .target John J. Keeshan
    .isQuestTurnedIn 26651 --any of: To Win a War, You Gotta Become War
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.19,65.64
    >>Blow up Render's Valley.
    .complete 26668,1 --Blow up Render's Valley.
    .isOnQuest 26668
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26668 >>Turn in Detonation
    .target John J. Keeshan
    .isOnQuest 26668
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 26693 >>Accept The Dark Tower
    .target John J. Keeshan
    .isQuestTurnedIn 26668 --any of: Detonation
    .xp <17,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danforth|r
    .accept 26692 >>Accept Shadowhide Extinction
    .target Danforth
    .isQuestTurnedIn 26668 --any of: Detonation
    .xp <17,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 49,69.98,48.30,0
    .goto 49,69.98,48.30,40,0
    .goto 49,71.02,42.71,40,0
    .goto 49,68.22,42.40,40,0
    >>Kill |cRXP_ENEMY_Shadowhide Darkweavers|r, |cRXP_ENEMY_Shadowhide Slayers|r, |cRXP_ENEMY_Shadowhide Brutes|r and |cRXP_ENEMY_Shadowhide Gnolls|r
    .complete 26692,1 --Shadowhide Darkweaver (20)
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
    .mob Shadowhide Brute
    .mob Shadowhide Gnoll
    .isOnQuest 26692
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danforth|r
    .turnin 26692 >>Turn in Shadowhide Extinction
    .target Danforth
    .isOnQuest 26692
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,67.54,28.90
    >>Kill |cRXP_ENEMY_General Fangore|r and loot |cRXP_LOOT_Key of Ilgalar|r
    .complete 26693,1 --Key of Ilgalar (1)
    .mob General Fangore
    .isOnQuest 26693
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26693 >>Turn in The Dark Tower
    .target John J. Keeshan
    .isOnQuest 26693
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 26694 >>Accept The Grand Magus Doane
    .target John J. Keeshan
    .isQuestTurnedIn 26693 --any of: The Dark Tower
    .xp <17,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,71.26,45.40
    >>Kill |cRXP_ENEMY_Grand Magus Doane|r
    .complete 26694,1 --Grand Magus Doane slain (1)
    .mob Grand Magus Doane
    .isOnQuest 26694
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.68,65.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26694 >>Turn in The Grand Magus Doane
    .target John J. Keeshan
    .isOnQuest 26694
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.29,66.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26708 >>Accept AHHHHHHHHHHHH! AHHHHHHHHH!!!
    .unitscan Colonel Troteman
    .isQuestTurnedIn 26694 --any of: The Grand Magus Doane
    .xp <17,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,72.28,46.80
    >>Kill |cRXP_ENEMY_Blackrock Drake Riders|r and |cRXP_ENEMY_Blackrock Invaders|r
    .complete 26708,1 --Blackrock Drake Rider (200)
    .mob Blackrock Drake Rider
    .mob Blackrock Invader
    .isOnQuest 26708
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.29,66.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26708 >>Turn in AHHHHHHHHHHHH! AHHHHHHHHH!!!
    .unitscan Colonel Troteman
    .isOnQuest 26708
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.29,66.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26713 >>Accept Showdown at Stonewatch
    .unitscan Colonel Troteman
    .isQuestTurnedIn 26708 --any of: AHHHHHHHHHHHH! AHHHHHHHHH!!!
    .xp <17,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,60.31,47.40
    >>Kill |cRXP_ENEMY_Tharil'zun|r
    .complete 26713,1 --Tharil'zun slain (1)
    .mob Tharil'zun
    .isOnQuest 26713
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,57.76,56.30
    >>Kill |cRXP_ENEMY_Gath'Ilzogg|r
    .complete 26713,2 --Gath'Ilzogg slain (1)
    .mob Gath'Ilzogg
    .isOnQuest 26713
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.29,66.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26713 >>Turn in Showdown at Stonewatch
    .unitscan Colonel Troteman
    .isOnQuest 26713
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.29,66.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26714 >>Accept Darkblaze, Brood of the Worldbreaker
    .unitscan Colonel Troteman
    .isQuestTurnedIn 26713 --any of: Showdown at Stonewatch
    .xp <17,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,59.08,56.12
    >>Kill |cRXP_ENEMY_Darkblaze|r
    .complete 26714,1 --Darkblaze slain (1)
    .mob Darkblaze
    .isOnQuest 26714
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.29,66.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26714 >>Turn in Darkblaze, Brood of the Worldbreaker
    .unitscan Colonel Troteman
    .isOnQuest 26714
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,77.29,66.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26726 >>Accept Triumphant Return
    .unitscan Colonel Troteman
    .isQuestTurnedIn 26714 --any of: Darkblaze, Brood of the Worldbreaker
    .xp <17,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 49,28.91,41.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 26726 >>Turn in Triumphant Return
    .target Magistrate Solomon
    .isOnQuest 26726
step
    +|cRXP_WARN_End of the Redridge Mountains route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Duskwood|r: Hero's Call: Duskwood! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.8 levels of quests, starting around Helcular), |cRXP_FRIENDLY_Darkshore|r (about 0.5 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
]])
