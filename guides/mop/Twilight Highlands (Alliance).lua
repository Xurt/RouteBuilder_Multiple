-- 84-85 Twilight Highlands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 84, 87).
-- Split into 2 guides, listed under "84 - 88 Twilight Highlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Twilight Highlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 84 - 88 Twilight Highlands
#subweight -84
#name 84-85 Twilight Highlands: around Gurgthock
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,80.96,79.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fawkes|r
    .turnin 28832 >>Turn in Twilight Shores
    .target Lieutenant Fawkes
    .isOnQuest 28832
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,80.96,79.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fawkes|r
    .accept 28596 >>Accept Welcome to Highbank!
    .target Lieutenant Fawkes
    .isQuestTurnedIn 28832 --any of: Twilight Shores
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,81.80,78.71,0
    .goto 241,81.80,78.71,40,0
    .goto 241,80.69,75.66,40,0
    >>Kill |cRXP_ENEMY_Bilgewater Gunmans|r and |cRXP_ENEMY_Axebite Infantries|r
    .complete 28596,1 --Bilgewater Gunman (8)
    .mob Bilgewater Gunman
    .mob Axebite Infantry
    .isOnQuest 28596
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,80.96,79.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Fawkes|r
    .turnin 28596 >>Turn in Welcome to Highbank!
    .target Lieutenant Fawkes
    .isOnQuest 28596
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,78.78,76.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .accept 28597 >>Accept Burnin' at Both Ends
    .target Fargo Flintlocke
    .isQuestTurnedIn 28596 --any of: Welcome to Highbank!
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,79.64,77.03,0
    .goto 241,79.64,77.03,40,0
    .goto 241,81.23,73.64,40,0
    >>Kill |cRXP_ENEMY_Cannon Powder Barrel|r and loot |cRXP_LOOT_Cannon Powder|r
    .complete 28597,1 --Cannon Powder (1)
    .mob Cannon Powder Barrel
    .isOnQuest 28597
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,78.78,76.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .turnin 28597 >>Turn in Burnin' at Both Ends
    .target Fargo Flintlocke
    .isOnQuest 28597
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,78.78,76.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .accept 28598 >>Accept Aiming High
    .target Fargo Flintlocke
    .isQuestTurnedIn 28597 --any of: Burnin' at Both Ends
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,78.74,76.56
    >>Click the |cRXP_PICK_Flintlocke's Cannon|r
    .complete 28598,1 --Flintlocke's Cannon
    .isOnQuest 28598
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,77.17,75.31
    >>Kill |cRXP_ENEMY_Skyshredder Bomb Controller Bunny|r
    .complete 28598,2 --Skyshredder Bomb Controller Bunny (1)
    .mob Skyshredder Bomb Controller Bunny
    .isOnQuest 28598
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,78.78,76.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .turnin 28598 >>Turn in Aiming High
    .target Fargo Flintlocke
    .isOnQuest 28598
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,78.78,76.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .accept 28599 >>Accept Kurdran's Waitin'
    .target Fargo Flintlocke
    .isQuestTurnedIn 28598 --any of: Aiming High
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.09,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 28599 >>Turn in Kurdran's Waitin'
    .target Kurdran Wildhammer
    .isOnQuest 28599
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.09,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .accept 27338 >>Accept Our Boys on the Shore
    .target Kurdran Wildhammer
    .isQuestTurnedIn 28599 --any of: Kurdran's Waitin'
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.29,78.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simon Chandler|r
    .accept 27177 >>Accept Salvage Operation
    .accept 27178 >>Accept Naga Reinforcements
    .target Simon Chandler
    .isQuestTurnedIn 28599 --any of: Kurdran's Waitin'
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,75.96,79.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ephram Hardstone|r
    .accept 27200 >>Accept Siren's Song
    .target Ephram Hardstone
    .isQuestTurnedIn 28597 --any of: Burnin' at Both Ends
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,76.23,80.67
    >>Kill |cRXP_ENEMY_Ophelia|r
    .complete 27200,1 --Ophelia slain (1)
    .mob Ophelia
    .isOnQuest 27200
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,75.96,79.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ephram Hardstone|r
    .turnin 27200 >>Turn in Siren's Song
    .target Ephram Hardstone
    .isOnQuest 27200
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,75.50,80.64,0
    .goto 241,75.50,80.64,40,0
    .goto 241,72.93,83.76,40,0
    >>Loot the |cRXP_PICK_Water-Logged Crates|r for |cRXP_LOOT_Recovered Supplies|r
    .complete 27177,1 --Recovered Supplies (8)
    .isOnQuest 27177
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,77.01,81.14,0
    .goto 241,77.01,81.14,40,0
    .goto 241,75.22,77.61,40,0
    >>Kill |cRXP_ENEMY_Blackscale Myrmidons|r, |cRXP_ENEMY_Blackscale Seacallers|r and |cRXP_ENEMY_Blackscale Naga Quest Trackers|r
    .complete 27178,1 --Blackscale Myrmidon (10)
    .mob Blackscale Myrmidon
    .mob Blackscale Seacaller
    .mob Blackscale Naga Quest Tracker
    .isOnQuest 27178
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.29,78.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simon Chandler|r
    .turnin 27177 >>Turn in Salvage Operation
    .target Simon Chandler
    .isOnQuest 27177
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.29,78.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simon Chandler|r
    .turnin 27178 >>Turn in Naga Reinforcements
    .target Simon Chandler
    .isOnQuest 27178
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,76.75,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Emry|r
    .turnin 27338 >>Turn in Our Boys on the Shore
    .target Lieutenant Emry
    .isOnQuest 27338
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,76.75,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Emry|r
    .accept 27366 >>Accept Landgrab
    .accept 27341 >>Accept Scouting the Shore
    .target Lieutenant Emry
    .isQuestTurnedIn 27338 --any of: Our Boys on the Shore
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,77.01,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .accept 27433 >>Accept Shredderectomy
    .target Fargo Flintlocke
    .isQuestTurnedIn 27338 --any of: Our Boys on the Shore
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,77.50,65.20
    >>Beach Head Control Point Scouted
    .complete 27341,1 --Beach Head Control Point Scouted
    .isOnQuest 27341
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,77.23,67.09,0
    .goto 241,77.23,67.09,40,0
    .goto 241,76.03,62.51,40,0
    >>Kill |cRXP_ENEMY_Axebite Marines|r
    .complete 27366,1 --Axebite Marine slain (12)
    .mob Axebite Marine
    .isOnQuest 27366
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,71.98,65.52,0
    .goto 241,71.98,65.52,40,0
    .goto 241,72.42,69.73,40,0
    .goto 241,69.33,67.78,40,0
    >>Kill |cRXP_ENEMY_Diamond-Blade Shredders|r and |cRXP_ENEMY_Deathblade Shredders|r. Loot them for |cRXP_LOOT_Abused Shredder Parts|r
    .complete 27433,1 --Abused Shredder Parts (5)
    .mob Diamond-Blade Shredder
    .mob Deathblade Shredder
    .isOnQuest 27433
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,76.75,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Emry|r
    .turnin 27341 >>Turn in Scouting the Shore
    .target Lieutenant Emry
    .isOnQuest 27341
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,76.75,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Emry|r
    .turnin 27366 >>Turn in Landgrab
    .target Lieutenant Emry
    .isOnQuest 27366
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,76.75,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Emry|r
    .accept 27514 >>Accept Bird Down! Bird Down!
    .target Lieutenant Emry
    .isQuestTurnedIn 27341 --Scouting the Shore
    .isQuestTurnedIn 27366 --Landgrab
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,77.01,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .turnin 27433 >>Turn in Shredderectomy
    .target Fargo Flintlocke
    .isOnQuest 27433
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,77.01,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .accept 27468 >>Accept Siege Tank Rescue
    .target Fargo Flintlocke
    .isQuestTurnedIn 27433 --any of: Shredderectomy
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,73.36,71.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siege Tank Commander|r
    .complete 27468,1 --Siege Tank Commander
    .target Siege Tank Commander
    .isOnQuest 27468
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,73.42,71.08
    >>Speak with a Siege Tank Commander standing on top of a crippled Highbank Siege Tank. Defend the tank while engineers make repairs.
    .complete 27468,2 --Highbank Siege Tank
    .target Highbank Siege Tank
    .isOnQuest 27468
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,77.01,69.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fargo Flintlocke|r
    .turnin 27468 >>Turn in Siege Tank Rescue
    .target Fargo Flintlocke
    .isOnQuest 27468
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.22,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thordun Hammerblow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27514 >>Turn in Bird Down! Bird Down!
    .unitscan Thordun Hammerblow
    .isOnQuest 27514
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.22,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thordun Hammerblow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27515 >>Accept Roots'll Do 'Er
    .unitscan Thordun Hammerblow
    .isQuestTurnedIn 27514 --any of: Bird Down! Bird Down!
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,72.97,65.68,0
    .goto 241,72.97,65.68,40,0
    .goto 241,74.08,68.03,40,0
    >>Pick up |cRXP_PICK_Thorny Stankroot|r from the ground
    .complete 27515,1 --Thorny Stankroot (8)
    .isOnQuest 27515
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.22,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thordun Hammerblow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27515 >>Turn in Roots'll Do 'Er
    .unitscan Thordun Hammerblow
    .isOnQuest 27515
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.22,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thordun Hammerblow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27516 >>Accept Wings Over Highbank
    .unitscan Thordun Hammerblow
    .isQuestTurnedIn 27515 --any of: Roots'll Do 'Er
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.22,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thordun Hammerblow|r
    .complete 27516,1 --Thordun Hammerblow
    .target Thordun Hammerblow
    .isOnQuest 27516
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.09,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 27516 >>Turn in Wings Over Highbank
    .target Kurdran Wildhammer
    .isOnQuest 27516
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.09,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .accept 27537 >>Accept Any Portal in a Storm
    .target Kurdran Wildhammer
    .isQuestTurnedIn 27516 --any of: Wings Over Highbank
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.22,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thordun Hammerblow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27538 >>Accept The Perfect Poultice
    .unitscan Thordun Hammerblow
    .isQuestTurnedIn 27516 --any of: Wings Over Highbank
    .xp <84,1
step
    .goto 241,55.85,43.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naka Scaleblade|r
    .target Naka Scaleblade
    .home >>Set your Hearthstone to Naka Scaleblade's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,66.67,45.23,0
    .goto 241,66.67,45.23,40,0
    .goto 241,67.43,46.89,40,0
    .goto 241,68.88,49.67,40,0
    >>Pick up |cRXP_PICK_Verrall River Muck|r from the ground
    .complete 27538,1 --Verrall River Muck (1)
    .isOnQuest 27538
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,67.31,45.52,0
    .goto 241,67.31,45.52,40,0
    .goto 241,68.17,48.68,40,0
    >>Kill |cRXP_ENEMY_Muddied Water Elementals|r. Loot them for |cRXP_LOOT_Whirlpool Core|r
    .complete 27537,1 --Whirlpool Core (5)
    .mob Muddied Water Elemental
    .isOnQuest 27537
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.43,77.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaa|r
    .turnin 27537 >>Turn in Any Portal in a Storm
    .target Talaa
    .isOnQuest 27537
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.43,77.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaa|r
    .turnin 27538 >>Turn in The Perfect Poultice
    .target Talaa
    .isOnQuest 27538
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.43,77.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaa|r
    .accept 27545 >>Accept The Way is Open
    .target Talaa
    .isQuestTurnedIn 27537 --any of: Any Portal in a Storm
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.09,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 27545 >>Turn in The Way is Open
    .target Kurdran Wildhammer
    .isOnQuest 27545
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,79.22,78.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thordun Hammerblow|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27621 >>Accept Firebeard's Patrol
    .unitscan Thordun Hammerblow
    .isQuestTurnedIn 27545 --any of: The Way is Open
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .turnin 27621 >>Turn in Firebeard's Patrol
    .target Keegan Firebeard
    .isOnQuest 27621
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .accept 27803 >>Accept Welcome Relief
    .accept 27804 >>Accept The Only Homes We Have
    .target Keegan Firebeard
    .isQuestTurnedIn 27621 --any of: Firebeard's Patrol
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.11,57.76
    >>Open the |cRXP_PICK_Water Bucket|r. Loot it for |cRXP_LOOT_Wildhammer Water Bucket|r
    .collect 62508,1,27804,1 --Wildhammer Water Bucket (1)
    .isOnQuest 27804
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,59.63,56.43
    >>Extinguish 50 fires at Firebeard's Patrol.
    .complete 27804,1 --Firebeard's Patrol Fire Bunny
    .target Firebeard's Patrol Fire Bunny
    .isOnQuest 27804
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,59.24,54.84,0
    .goto 241,59.24,54.84,40,0
    .goto 241,58.33,58.33,40,0
    >>Kill |cRXP_ENEMY_Subjugated Firestarters|r
    .complete 27803,1 --Subjugated Firestarter slain (8)
    .mob Subjugated Firestarter
    .isOnQuest 27803
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .turnin 27803 >>Turn in Welcome Relief
    .target Keegan Firebeard
    .isOnQuest 27803
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .turnin 27804 >>Turn in The Only Homes We Have
    .target Keegan Firebeard
    .isOnQuest 27804
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .accept 27806 >>Accept Honorable Bearing
    .target Keegan Firebeard
    .isQuestTurnedIn 27803 --Welcome Relief
    .isQuestTurnedIn 27804 --The Only Homes We Have
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.42,58.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cailin Longfellow|r
    .accept 27805 >>Accept Small Comforts
    .target Cailin Longfellow
    .isQuestTurnedIn 27621 --any of: Firebeard's Patrol
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,59.81,56.22
    >>Pick up |cRXP_PICK_Meara's Dried Roses|r from the ground
    .complete 27805,1 --Meara's Dried Roses (1)
    .isOnQuest 27805
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,59.46,55.87
    >>Open the |cRXP_PICK_Aprika's Lost Doll|r. Loot it for |cRXP_LOOT_Aprika's Doll|r
    .complete 27805,3 --Aprika's Doll (1)
    .isOnQuest 27805
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,59.33,56.91
    >>Pick up |cRXP_PICK_Parlan's Ivory Hammer|r from the ground
    .complete 27805,2 --Parlan's Ivory Hammer (1)
    .isOnQuest 27805
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.42,58.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cailin Longfellow|r
    .turnin 27805 >>Turn in Small Comforts
    .target Cailin Longfellow
    .isOnQuest 27805
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,57.48,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iain Firebeard|r
    .turnin 27806 >>Turn in Honorable Bearing
    .target Iain Firebeard
    .isOnQuest 27806
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,57.48,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iain Firebeard|r
    .accept 27807 >>Accept Clan Mullan
    .accept 27808 >>Accept Stubborn as a Doyle
    .accept 27809 >>Accept Firebeard Bellows
    .target Iain Firebeard
    .isQuestTurnedIn 27806 --any of: Honorable Bearing
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.53,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mackay Firebeard|r
    .turnin 27809 >>Turn in Firebeard Bellows
    .target Mackay Firebeard
    .isOnQuest 27809
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.53,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mackay Firebeard|r
    .accept 27813 >>Accept Death Worthy of a Dragonmaw
    .target Mackay Firebeard
    .isQuestTurnedIn 27809 --any of: Firebeard Bellows
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.56,48.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ella Forgehammer|r
    .accept 28233 >>Accept The Lost Brother
    .target Ella Forgehammer
    .isQuestTurnedIn 27809 --any of: Firebeard Bellows
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.60,48.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brom Forgehammer|r
    .accept 27814 >>Accept Anything We Can Get
    .target Brom Forgehammer
    .isQuestTurnedIn 27809 --any of: Firebeard Bellows
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,63.14,47.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bahrum Forgehammer|r
    .turnin 28233 >>Turn in The Lost Brother
    .target Bahrum Forgehammer
    .isOnQuest 28233
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,63.14,47.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bahrum Forgehammer|r
    .accept 28234 >>Accept They Took Me Pants!
    .target Bahrum Forgehammer
    .isQuestTurnedIn 28233 --any of: The Lost Brother
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.30,47.20
    >>Kill |cRXP_ENEMY_Gorosh the Pant Stealer|r and loot |cRXP_LOOT_Bahrum's Pants|r
    .complete 28234,1 --Bahrum's Pants (1)
    .mob Gorosh the Pant Stealer
    .isOnQuest 28234
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.23,47.29
    >>Kill |cRXP_ENEMY_Injured Dragonmaw Stragglers|r, |cRXP_ENEMY_Gorosh the Pant Stealers|r and |cRXP_ENEMY_Dragonmaw Stragglers|r
    .complete 27813,1 --Injured Dragonmaw Straggler (6)
    .mob Injured Dragonmaw Straggler
    .mob Gorosh the Pant Stealer
    .mob Dragonmaw Straggler
    .isOnQuest 27813
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,61.82,47.17
    >>Kill |cRXP_ENEMY_Dragonmaw Stragglers|r. Loot them for |cRXP_LOOT_Dragonmaw Weapon|r. It can also be picked up from |cRXP_PICK_Dragonmaw Weapon Crate|r on the ground
    .complete 27814,1 --Dragonmaw Weapon (8)
    .mob Dragonmaw Straggler
    .isOnQuest 27814
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,63.14,47.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bahrum Forgehammer|r
    .turnin 28234 >>Turn in They Took Me Pants!
    .target Bahrum Forgehammer
    .isOnQuest 28234
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.60,48.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brom Forgehammer|r
    .turnin 27814 >>Turn in Anything We Can Get
    .target Brom Forgehammer
    .isOnQuest 27814
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.53,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mackay Firebeard|r
    .turnin 27813 >>Turn in Death Worthy of a Dragonmaw
    .target Mackay Firebeard
    .isOnQuest 27813
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,62.53,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mackay Firebeard|r
    .accept 27815 >>Accept Somethin' for the Boys
    .target Mackay Firebeard
    .isQuestTurnedIn 27813 --Death Worthy of a Dragonmaw
    .isQuestTurnedIn 27814 --Anything We Can Get
    .isQuestTurnedIn 28234 --They Took Me Pants!
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.78,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duglas Mullan|r
    .turnin 27807 >>Turn in Clan Mullan
    .target Duglas Mullan
    .isOnQuest 27807
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.78,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duglas Mullan|r
    .accept 27810 >>Accept The Fighting Spirit
    .target Duglas Mullan
    .isQuestTurnedIn 27807 --any of: Clan Mullan
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.82,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edana Mullan|r
    .accept 27811 >>Accept The Scent of Battle
    .target Edana Mullan
    .isQuestTurnedIn 27807 --any of: Clan Mullan
    .xp <84,1
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27863 >>Accept The Crucible of Carnage: The Bloodeye Bruiser!
    .target Gurgthock
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,51.10,59.80
    >>Kill |cRXP_ENEMY_Mullan Gryphon Riders|r
    .complete 27810,1 --Mullan Gryphon Rider slain (8)
    .mob Mullan Gryphon Rider
    .isOnQuest 27810
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,53.80,66.60,0
    .goto 241,53.80,66.60,40,0
    .goto 241,56.00,65.20,40,0
    .goto 241,56.80,64.00,40,0
    >>Kill |cRXP_ENEMY_Mullan Gryphons|r
    .complete 27811,1 --Mullan Gryphon (8)
    .mob Mullan Gryphon
    .isOnQuest 27811
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.82,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edana Mullan|r
    .turnin 27811 >>Turn in The Scent of Battle
    .target Edana Mullan
    .isOnQuest 27811
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.78,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duglas Mullan|r
    .turnin 27810 >>Turn in The Fighting Spirit
    .target Duglas Mullan
    .isOnQuest 27810
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.78,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duglas Mullan|r
    .accept 27812 >>Accept The Loyalty of Clan Mullan
    .target Duglas Mullan
    .isQuestTurnedIn 27810 --The Fighting Spirit
    .isQuestTurnedIn 27811 --The Scent of Battle
    .xp <84,1
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27863 >>Accept The Crucible of Carnage: The Bloodeye Bruiser!
    .target Gurgthock
step
    .goto 241,52.25,56.31
    >>Kill |cRXP_ENEMY_Hurp'derp|r
    .complete 27863,1 --Hurp'derp slain (1)
    .mob Hurp'derp
step
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27863 >>Turn in The Crucible of Carnage: The Bloodeye Bruiser!
    .target Wodin the Troll-Servant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27864 >>Accept The Crucible of Carnage: The Deadly Dragonmaw!
    .target Gurgthock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,51.25,56.44
    >>Kill |cRXP_ENEMY_Torg Drakeflayer|r
    .complete 27864,1 --Torg Drakeflayer slain (1)
    .mob Torg Drakeflayer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27864 >>Turn in The Crucible of Carnage: The Deadly Dragonmaw!
    .target Wodin the Troll-Servant
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27866 >>Accept The Crucible of Carnage: Calder's Creation!
    .target Gurgthock
step
    .goto 241,50.44,57.19
    >>Kill |cRXP_ENEMY_Cadaver Collage|r
    .complete 27866,1 --Cadaver Collage slain (1)
    .mob Cadaver Collage
step
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27866 >>Turn in The Crucible of Carnage: Calder's Creation!
    .target Wodin the Troll-Servant
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27867 >>Accept The Crucible of Carnage: The Earl of Evisceration!
    .target Gurgthock
step
    .goto 241,52.46,56.06
    >>Kill |cRXP_ENEMY_Lord Geoffery Tulvan|r
    .complete 27867,1 --Lord Geoffery Tulvan slain (1)
    .mob Lord Geoffery Tulvan
step
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27867 >>Turn in The Crucible of Carnage: The Earl of Evisceration!
    .target Wodin the Troll-Servant
step
    .goto 241,50.74,58.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurgthock|r
    .accept 27868 >>Accept The Crucible of Carnage: The Twilight Terror!
    .target Gurgthock
step
    .goto 241,52.23,56.23
    >>Kill |cRXP_ENEMY_Emberscar the Devourer|r
    .complete 27868,1 --Emberscar the Devourer slain (1)
    .mob Emberscar the Devourer
step
    .goto 241,50.74,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wodin the Troll-Servant|r
    .turnin 27868 >>Turn in The Crucible of Carnage: The Twilight Terror!
    .target Wodin the Troll-Servant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,61.48,67.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeland Doyle|r
    .turnin 27808 >>Turn in Stubborn as a Doyle
    .target Keeland Doyle
    .isOnQuest 27808
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,61.48,67.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeland Doyle|r
    .accept 27999 >>Accept The Fate of the Doyles
    .target Keeland Doyle
    .isQuestTurnedIn 27808 --any of: Stubborn as a Doyle
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,57.48,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iain Firebeard|r
    .turnin 27815 >>Turn in Somethin' for the Boys
    .target Iain Firebeard
    .isOnQuest 27815
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,57.48,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iain Firebeard|r
    .turnin 27812 >>Turn in The Loyalty of Clan Mullan
    .target Iain Firebeard
    .isOnQuest 27812
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,57.48,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iain Firebeard|r
    .turnin 27999 >>Turn in The Fate of the Doyles
    .target Iain Firebeard
    .isOnQuest 27999
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,57.48,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iain Firebeard|r
    .accept 27816 >>Accept Personal Request
    .target Iain Firebeard
    .isQuestTurnedIn 27812 --The Loyalty of Clan Mullan
    .isQuestTurnedIn 27815 --Somethin' for the Boys
    .isQuestTurnedIn 27999 --The Fate of the Doyles
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .turnin 27816 >>Turn in Personal Request
    .target Keegan Firebeard
    .isOnQuest 27816
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .accept 27817 >>Accept Dropping the Hammer
    .target Keegan Firebeard
    .isQuestTurnedIn 27816 --any of: Personal Request
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,61.59,52.43,0
    .goto 241,61.59,52.43,40,0
    .goto 241,57.92,53.08,40,0
    >>Kill |cRXP_ENEMY_Twilight Stormbenders|r
    .complete 27817,1 --Twilight Stormbender slain (12)
    .mob Twilight Stormbender
    .isOnQuest 27817
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,58.60,51.73
    >>Kill |cRXP_ENEMY_Servias Windterror|r
    .complete 27817,2 --Servias Windterror slain (1)
    .mob Servias Windterror
    .isOnQuest 27817
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .turnin 27817 >>Turn in Dropping the Hammer
    .target Keegan Firebeard
    .isOnQuest 27817
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,60.17,58.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .accept 27640 >>Accept Dunwalds Don't Die
    .accept 28001 >>Accept A Coward's Due
    .target Keegan Firebeard
    .isQuestTurnedIn 27817 --any of: Dropping the Hammer
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.91,65.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keely Dunwald|r
    .turnin 27640 >>Turn in Dunwalds Don't Die
    .target Keely Dunwald
    .isOnQuest 27640
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.91,65.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keely Dunwald|r
    .accept 27643 >>Accept Donnelly Dunwald
    .accept 27644 >>Accept Eoin Dunwald
    .target Keely Dunwald
    .isQuestTurnedIn 27640 --any of: Dunwalds Don't Die
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.91,65.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Dunwald|r
    .accept 27641 >>Accept While Meeting The Family
    .accept 27642 >>Accept Sifting Through The Wreckage
    .target Flynn Dunwald
    .isQuestTurnedIn 27640 --any of: Dunwalds Don't Die
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,46.57,59.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donnelly Dunwald|r
    .turnin 27643 >>Turn in Donnelly Dunwald
    .target Donnelly Dunwald
    .isOnQuest 27643
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,46.57,59.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donnelly Dunwald|r
    .accept 27646 >>Accept Finding Beak
    .target Donnelly Dunwald
    .isQuestTurnedIn 27643 --any of: Donnelly Dunwald
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.42,60.06
    >>Help Donnelly find Beak in Dunwald Hovel.
    .complete 27646,1 --Dunwald Hovel, South Credit
    .target Dunwald Hovel, South Credit
    .isOnQuest 27646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,46.25,54.08
    >>Help Donnelly find Beak in Dunwald Hovel.
    .complete 27646,2 --Dunwald Hovel, Northwest Credit
    .target Dunwald Hovel, Northwest Credit
    .isOnQuest 27646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,48.40,52.56
    >>Help Donnelly find Beak in Dunwald Hovel.
    .complete 27646,3 --Dunwald Hovel, East Credit
    .target Dunwald Hovel, East Credit
    .isOnQuest 27646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,46.57,59.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donnelly Dunwald|r
    .turnin 27646 >>Turn in Finding Beak
    .target Donnelly Dunwald
    .isOnQuest 27646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.78,71.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cayden Dunwald|r
    .accept 27648 >>Accept Once More Into The Fire
    .target Cayden Dunwald
    .isQuestTurnedIn 27645 --any of: Cayden Dunwald
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.78,71.73
    >>Accompany Cayden Dunwald through the somewhat obvious ambush.
    .complete 27648,1 --Cayden Dunwald
    .target Cayden Dunwald
    .isOnQuest 27648
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.78,71.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cayden Dunwald|r
    .turnin 27648 >>Turn in Once More Into The Fire
    .target Cayden Dunwald
    .isOnQuest 27648
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,53.07,74.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eoin Dunwald|r
    .turnin 27644 >>Turn in Eoin Dunwald
    .target Eoin Dunwald
    .isOnQuest 27644
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,53.07,74.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eoin Dunwald|r
    .accept 27647 >>Accept Anything But Water
    .target Eoin Dunwald
    .isQuestTurnedIn 27644 --any of: Eoin Dunwald
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,52.80,69.83
    >>Open the |cRXP_PICK_Sacred Ale Tap|r. Loot it for |cRXP_LOOT_Sacred Wildhammer Ale|r
    .complete 27647,1 --Sacred Wildhammer Ale (1)
    .isOnQuest 27647
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,52.41,70.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eoin Dunwald|r
    .turnin 27647 >>Turn in Anything But Water
    .target Eoin Dunwald
    .isOnQuest 27647
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,52.41,70.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eoin Dunwald|r
    .accept 27649 >>Accept A Steady Supply
    .target Eoin Dunwald
    .isQuestTurnedIn 27647 --any of: Anything But Water
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,46.89,72.32
    >>Open the |cRXP_PICK_Wildhammer Ale Cask|r. Loot it for |cRXP_LOOT_Wildhammer Ale|r
    .complete 27649,1 --Wildhammer Ale (1)
    .isOnQuest 27649
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,46.88,72.38,0
    .goto 241,46.88,72.38,40,0
    .goto 241,48.12,67.61,40,0
    >>Interact with |cRXP_FRIENDLY_Dunwald Victims|r
    .complete 27642,1 --Dunwald Victim (12)
    .target Dunwald Victim
    .isOnQuest 27642
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,46.91,73.03,0
    .goto 241,46.91,73.03,40,0
    .goto 241,47.41,66.88,40,0
    >>Kill |cRXP_ENEMY_Bloodgorged Ettins|r, |cRXP_ENEMY_Twilight Scavengers|r, |cRXP_ENEMY_Twilight Shadeprowlers|r and |cRXP_ENEMY_Twilight Ambushers|r
    .complete 27641,1 --Bloodgorged Ettin (8)
    .mob Bloodgorged Ettin
    .mob Twilight Scavenger
    .mob Twilight Shadeprowler
    .mob Twilight Ambusher
    .isOnQuest 27641
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,46.00,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eoin Dunwald|r
    .turnin 27649 >>Turn in A Steady Supply
    .target Eoin Dunwald
    .isOnQuest 27649
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.78,71.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cayden Dunwald|r
    .accept 27650 >>Accept Home Again
    .target Cayden Dunwald
    .isQuestTurnedIn 27646 --Finding Beak
    .isQuestTurnedIn 27648 --Once More Into The Fire
    .isQuestTurnedIn 27649 --A Steady Supply
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.91,65.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keely Dunwald|r
    .turnin 27650 >>Turn in Home Again
    .target Keely Dunwald
    .isOnQuest 27650
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.91,65.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keely Dunwald|r
    .accept 27651 >>Accept Doing It Like a Dunwald
    .target Keely Dunwald
    .isQuestTurnedIn 27650 --any of: Home Again
    .xp <84,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.91,65.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Dunwald|r
    .turnin 27641 >>Turn in While Meeting The Family
    .target Flynn Dunwald
    .isOnQuest 27641
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.91,65.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Dunwald|r
    .turnin 27642 >>Turn in Sifting Through The Wreckage
    .target Flynn Dunwald
    .isOnQuest 27642
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,50.22,71.18
    >>Kill |cRXP_ENEMY_Darunga|r
    .complete 27651,1 --Darunga slain (1)
    .mob Darunga
    .isOnQuest 27651
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.91,65.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keely Dunwald|r
    .turnin 27651 >>Turn in Doing It Like a Dunwald
    .target Keely Dunwald
    .isOnQuest 27651
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.01,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .turnin 28001 >>Turn in A Coward's Due
    .target Colin Thundermar
    .isOnQuest 28001
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.01,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .accept 27754 >>Accept Dragonmaw Takedown
    .accept 28369 >>Accept My Sister, Fanny
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.78,29.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Low Shaman Blundy|r
    .accept 27752 >>Accept Fight Like a Wildhammer
    .target Low Shaman Blundy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.78,29.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fanny Thundermar|r
    .turnin 28369 >>Turn in My Sister, Fanny
    .accept 27753 >>Accept Never Leave a Dinner Behind
    .target Fanny Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,52.40,29.28,0
    .goto 241,52.40,29.28,40,0
    .goto 241,51.42,33.17,40,0
    .goto 241,49.25,36.48,40,0
    >>Open the |cRXP_PICK_Thundermar Ale Keg|r. Loot it for |cRXP_LOOT_Keg of Thundermar Ale|r
    >>Pick up |cRXP_PICK_Wildhammer Food Stores|r from the ground
    .complete 27752,1 --Keg of Thundermar Ale (1)
    .complete 27753,1 --Wildhammer Food Stores (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,53.31,40.58,0
    .goto 241,53.31,40.58,40,0
    .goto 241,52.14,42.87,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Marauders|r, |cRXP_ENEMY_Warlord Halthars|r and |cRXP_ENEMY_Karkrog the Exterminators|r. Loot them for |cRXP_LOOT_Dragonmaw Insignia|r
    .complete 27754,1 --Dragonmaw Insignia (8)
    .mob Dragonmaw Marauder
    .mob Warlord Halthar
    .mob Karkrog the Exterminator
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.01,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .turnin 27754 >>Turn in Dragonmaw Takedown
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.78,29.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fanny Thundermar|r
    .turnin 27753 >>Turn in Never Leave a Dinner Behind
    .target Fanny Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.78,29.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Low Shaman Blundy|r
    .turnin 27752 >>Turn in Fight Like a Wildhammer
    .accept 28241 >>Accept A Vision of Twilight
    .target Low Shaman Blundy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.14,29.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nivvet Channelock|r
    .accept 28211 >>Accept Tempered in Elemental Flame
    .accept 28212 >>Accept Hot Stuff
    .accept 28215 >>Accept Potential Energy
    .target Nivvet Channelock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.01,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .accept 28216 >>Accept Magmalord Falthazar
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,42.22,24.14,0
    .goto 241,42.22,24.14,40,0
    .goto 241,41.08,22.34,40,0
    >>Kill |cRXP_ENEMY_Magmalord Falthazar|r and loot |cRXP_LOOT_Magmalord Falthazar's Head|r
    >>Kill |cRXP_ENEMY_Unbound Emberfiends|r. Loot them for |cRXP_LOOT_Molten Fury|r
    >>Pick up |cRXP_PICK_Tempered Spear|r from the ground
    .complete 28216,1 --Magmalord Falthazar's Head (1)
    .complete 28212,1 --Molten Fury (10)
    .complete 28211,1 --Tempered Spear (8)
    .mob Magmalord Falthazar
    .mob Unbound Emberfiend
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along156
    >>As you go: Kill |cRXP_ENEMY_Obsidian Stoneslave|r and loot |cRXP_LOOT_Twisted Elementium Loop|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28215,1 --Twisted Elementium Loop (1)
    .mob Obsidian Stoneslave
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along156
    .goto 241,57.93,33.50
    >>Click the |cRXP_PICK_Eye of Twilight|r
    .turnin 28241 >>Turn in A Vision of Twilight
    .accept 28242 >>Accept We All Must Sacrifice
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,55.19,28.21,0
    .goto 241,55.19,28.21,40,0
    .goto 241,52.72,28.17,40,0
    >>Kill |cRXP_ENEMY_Shaman of the Blacks|r
    .complete 28242,1 --Shaman of the Black slain (10)
    .mob Shaman of the Black
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,56.44,29.93,0
    .goto 241,56.44,29.93,40,0
    .goto 241,60.34,31.07,40,0
    >>Kill |cRXP_ENEMY_Obsidian Stoneslave|r and loot |cRXP_LOOT_Twisted Elementium Loop|r
    .complete 28215,1 --Twisted Elementium Loop (1)
    .mob Obsidian Stoneslave
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,57.93,33.50
    >>Click the |cRXP_PICK_Eye of Twilight|r
    .turnin 28242 >>Turn in We All Must Sacrifice
    .accept 28243 >>Accept The Eyes Have It
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.01,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .turnin 28216 >>Turn in Magmalord Falthazar
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.14,29.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nivvet Channelock|r
    .turnin 28211 >>Turn in Tempered in Elemental Flame
    .turnin 28212 >>Turn in Hot Stuff
    .turnin 28215 >>Turn in Potential Energy
    .target Nivvet Channelock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.14,29.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nivvet Channelock|r
    .accept 28280 >>Accept Tear Them From the Sky!
    .target Nivvet Channelock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along165
    >>As you go: Kill |cRXP_ENEMY_Dragonmaw Black Drakes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28280,1 --Dragonmaw Black Drake slain (8)
    .mob Dragonmaw Black Drake
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.78,29.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Low Shaman Blundy|r
    .turnin 28243 >>Turn in The Eyes Have It
    .accept 28244 >>Accept Eye Spy
    .target Low Shaman Blundy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.75,29.14
    >>Peer into the Eye of Twilight for Low Shaman Blundy.
    .complete 28244,1 --Eye of Twilight
    .target Eye of Twilight
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along165
    .goto 241,49.78,29.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Low Shaman Blundy|r
    .turnin 28244 >>Turn in Eye Spy
    .target Low Shaman Blundy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,49.81,29.30,0
    .goto 241,49.81,29.30,40,0
    .goto 241,48.19,28.82,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Black Drakes|r
    .complete 28280,1 --Dragonmaw Black Drake slain (8)
    .mob Dragonmaw Black Drake
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.14,29.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nivvet Channelock|r
    .turnin 28280 >>Turn in Tear Them From the Sky!
    .target Nivvet Channelock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.01,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .accept 28281 >>Accept Last Stand at Thundermar
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,48.88,29.73
    >>Kill |cRXP_ENEMY_Dragonmaw Skyclaws|r
    .complete 28281,1 --Dragonmaw Skyclaw slain (8)
    .mob Dragonmaw Skyclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.01,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .turnin 28281 >>Turn in Last Stand at Thundermar
    .accept 28282 >>Accept Narkrall, The Drake-Tamer
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,48.70,29.79
    >>Kill |cRXP_ENEMY_Narkrall Rakeclaw|r
    .complete 28282,1 --Narkrall Rakeclaw slain (1)
    .mob Narkrall Rakeclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,49.01,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .turnin 28282 >>Turn in Narkrall, The Drake-Tamer
    .accept 28294 >>Accept The Kirthaven Summit
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.33,16.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lachlan MacGraff|r
    .turnin 28294 >>Turn in The Kirthaven Summit
    .target Lachlan MacGraff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.87,17.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .accept 28346 >>Accept The Bachelor
    .target Kurdran Wildhammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.39,16.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Firebeard|r
    .turnin 28346 >>Turn in The Bachelor
    .accept 28377 >>Accept Rescue at Glopgut's Hollow
    .target Keegan Firebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,38.12,34.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .turnin 28377 >>Turn in Rescue at Glopgut's Hollow
    .accept 28378 >>Accept Find Fanny
    .accept 28379 >>Accept Ogre Bashin'
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along177
    >>As you go: Kill |cRXP_ENEMY_Glopgut Hurlers|r, |cRXP_ENEMY_Glopgut Bashers|r and |cRXP_ENEMY_Glopgut Pounders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28379,1 --Glopgut Hurler (8)
    .mob Glopgut Hurler
    .mob Glopgut Basher
    .mob Glopgut Pounder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along177
    .goto 241,34.96,31.14
    >>Find and rescue Fanny Thundermar.
    .complete 28378,1 --Fanny Thundermar
    .target Fanny Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,37.19,27.31,0
    .goto 241,37.19,27.31,40,0
    .goto 241,40.41,30.58,40,0
    >>Kill |cRXP_ENEMY_Glopgut Hurlers|r, |cRXP_ENEMY_Glopgut Bashers|r and |cRXP_ENEMY_Glopgut Pounders|r
    .complete 28379,1 --Glopgut Hurler (8)
    .mob Glopgut Hurler
    .mob Glopgut Basher
    .mob Glopgut Pounder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,38.12,34.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colin Thundermar|r
    .turnin 28379 >>Turn in Ogre Bashin'
    .turnin 28378 >>Turn in Find Fanny
    .accept 28407 >>Accept The Bachelorette
    .target Colin Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.74,17.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fanny Thundermar|r
    .turnin 28407 >>Turn in The Bachelorette
    .target Fanny Thundermar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.59,17.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Russell Brower|r
    .accept 28413 >>Accept Words and Music By...
    .target Russell Brower
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.59,17.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Russell Brower|r
    .complete 28413,1 --Russell Brower
    .target Russell Brower
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.59,17.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Russell Brower|r
    .turnin 28413 >>Turn in Words and Music By...
    .target Russell Brower
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.33,16.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lachlan MacGraff|r
    .accept 28408 >>Accept Something Bold
    .accept 28409 >>Accept Something Brewed
    .accept 28410 >>Accept Something Stolen
    .accept 28411 >>Accept Something Stewed
    .target Lachlan MacGraff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,66.55,23.83,0
    .goto 241,66.55,23.83,40,0
    .goto 241,69.00,28.54,40,0
    .goto 241,65.13,29.59,40,0
    >>Kill |cRXP_ENEMY_Highland Worgs|r. Loot them for |cRXP_LOOT_Worg Rib|r
    .complete 28411,2 --Worg Rib (5)
    .mob Highland Worg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,52.40,34.04
    >>Kill |cRXP_ENEMY_Highland Elks|r and |cRXP_ENEMY_Highland Does|r. Loot them for |cRXP_LOOT_Fresh Venison|r
    .complete 28411,1 --Fresh Venison (1)
    .mob Highland Elk
    .mob Highland Doe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,51.78,22.96
    >>Kill |cRXP_ENEMY_Tawny Owls|r. Loot them for |cRXP_LOOT_Pristine Owl Feather|r. It can also be picked up from |cRXP_PICK_Pristine Owl Feather|r on the ground
    .complete 28408,1 --Pristine Owl Feather (12)
    .mob Tawny Owl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,80.78,29.09
    >>Open the |cRXP_PICK_Crate of Fine Cloth|r. Loot it for |cRXP_LOOT_Fine Dark Cloth|r
    .complete 28410,1 --Fine Dark Cloth (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,56.05,20.40
    >>Supply Caravan Escorted
    .complete 28409,1 --Supply Caravan Escorted
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.33,16.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lachlan MacGraff|r
    .turnin 28408 >>Turn in Something Bold
    .turnin 28409 >>Turn in Something Brewed
    .turnin 28410 >>Turn in Something Stolen
    .turnin 28411 >>Turn in Something Stewed
    .target Lachlan MacGraff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.27,16.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundy MacGraff|r
    .accept 28655 >>Accept Wild, Wild, Wildhammer Wedding
    .target Grundy MacGraff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,55.51,15.72
    >>Kill |cRXP_ENEMY_The Beast Unleashed|r
    .complete 28655,1 --The Beast Unleashed slain (1)
    .mob The Beast Unleashed
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.87,17.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 28655 >>Turn in Wild, Wild, Wildhammer Wedding
    .target Kurdran Wildhammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,54.33,16.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lachlan MacGraff|r
    .accept 27374 >>Accept The Maw of Madness
    .target Lachlan MacGraff
step
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 27374 >>Turn in The Maw of Madness << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 27299 >>Accept Torn Ground
    .target Earthcaller Torunscar
step
    #loop
    .goto 241,45.68,11.27,0
    .goto 241,45.68,11.27,40,0
    .goto 241,42.18,12.93,40,0
    >>Kill |cRXP_ENEMY_Tentacle of Iso'raths|r
    .complete 27299,1 --Tentacle of Iso'rath slain (3)
    .mob Tentacle of Iso'rath
step
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 27299 >>Turn in Torn Ground
    .accept 27300 >>Accept Pushing Back
    .target Earthcaller Torunscar
step
    .goto 241,43.99,11.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Duarn|r
    .accept 27301 >>Accept Unbroken
    .target Earthmender Duarn
step
    .goto 241,44.41,11.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27302 >>Accept Simple Solutions
    .target Initiate Goldmine
step
    #completewith Along200
    >>As you go: Kill |cRXP_ENEMY_Twilight Captivator|r and loot |cRXP_LOOT_Pyreburn Oil|r. It can also be picked up from |cRXP_PICK_Barrel of Pyreburn Oil|r on the ground. Kill |cRXP_ENEMY_Twilight Captivators|r, |cRXP_ENEMY_Omak'Tuls|r and |cRXP_ENEMY_Twilight Bonebreakers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27302,1 --Pyreburn Oil (1)
    .complete 27300,1 --Twilight Captivator (8)
    .mob Twilight Captivator
    .mob Omak'Tul
    .mob Twilight Bonebreaker
step
    #label Along200
    .goto 241,44.21,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27301 >>Turn in Unbroken
    .accept 27303 >>Accept Mercy for the Bound
    .target Earthcaller Yevaa
step
    #loop
    .goto 241,43.98,15.32,0
    .goto 241,43.98,15.32,40,0
    .goto 241,42.06,15.58,40,0
    .goto 241,40.44,18.45,40,0
    >>Kill |cRXP_ENEMY_Bound Fleshburners|r. Loot them for |cRXP_LOOT_Fleshburner Heart|r
    >>Kill |cRXP_ENEMY_Twilight Captivator|r and loot |cRXP_LOOT_Pyreburn Oil|r. It can also be picked up from |cRXP_PICK_Barrel of Pyreburn Oil|r on the ground
    >>Kill |cRXP_ENEMY_Twilight Captivators|r, |cRXP_ENEMY_Omak'Tuls|r and |cRXP_ENEMY_Twilight Bonebreakers|r
    .complete 27303,1 --Fleshburner Heart (5)
    .complete 27302,1 --Pyreburn Oil (1)
    .complete 27300,1 --Twilight Captivator (8)
    .mob Bound Fleshburner
    .mob Twilight Captivator
    .mob Omak'Tul
    .mob Twilight Bonebreaker
step
    .goto 241,43.82,11.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27303 >>Turn in Mercy for the Bound
    .target Earthcaller Yevaa
step
    .goto 241,44.41,11.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27302 >>Turn in Simple Solutions
    .target Initiate Goldmine
step
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 27300 >>Turn in Pushing Back
    .accept 27376 >>Accept The Maw of Iso'rath
    .target Earthcaller Torunscar
step
    .goto 241,44.52,10.64
    >>Kill |cRXP_ENEMY_Earthen Ring Gryphons|r
    .complete 27376,1 --Earthen Ring Gryphon slain (8)
    .mob Earthen Ring Gryphon
step
    .goto 241,48.40,14.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27376 >>Turn in The Maw of Iso'rath
    .accept 27377 >>Accept Devoured
    .target Earthcaller Yevaa
step
    .goto 241,48.27,14.49
    >>Defend yourself and Earthcaller Yevaa from Iso'rath's bodily defenses.
    .complete 27377,1 --Iso'rath Nightmare Credit
    .target Iso'rath Nightmare Credit
step
    #completewith next
    .zone 276 >>Travel to The Maelstrom
    .zoneskip 276
step
    .goto 276,33.37,50.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 27203 >>Turn in The Maelstrom
    .target Thrall
    .isOnQuest 27203
step
    .goto 276,33.37,50.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 27123 >>Accept Deepholm, Realm of Earth
    .target Thrall
    .isQuestTurnedIn 27203 --any of: The Maelstrom
    .xp <81,1
step
    .goto 276,33.35,50.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 27377 >>Turn in Devoured
    .accept 27378 >>Accept The Worldbreaker
    .target Thrall
step
    .goto 276,33.35,50.39
    >>Defeat Deathwing, the Aspect of Death.
    .complete 27378,1 --Thrall
    .target Thrall
step
    #completewith next
    .zone 241 >>Leave The Maelstrom for Twilight Highlands
    .zoneskip 241
step
    .goto 241,48.70,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27378 >>Turn in The Worldbreaker
    .accept 27379 >>Accept The Terrors of Iso'rath
    .target Earthcaller Yevaa
step
    .goto 241,49.62,15.69
    >>Rescue Hargoth Dimblaze, Earthmender Duarn, Stormcaller Jalara, and Stormcaller Mylra.
    .complete 27379,2 --Tentacle of Iso'rath
    .target Tentacle of Iso'rath
step
    .goto 241,49.08,13.10
    >>Rescue Hargoth Dimblaze, Earthmender Duarn, Stormcaller Jalara, and Stormcaller Mylra.
    .complete 27379,3 --Tentacle of Iso'rath
    .target Tentacle of Iso'rath
step
    .goto 241,47.08,13.29
    >>Rescue Hargoth Dimblaze, Earthmender Duarn, Stormcaller Jalara, and Stormcaller Mylra.
    .complete 27379,1 --Tentacle of Iso'rath
    .target Tentacle of Iso'rath
step
    .goto 241,47.34,15.84
    >>Rescue Hargoth Dimblaze, Earthmender Duarn, Stormcaller Jalara, and Stormcaller Mylra.
    .complete 27379,4 --Tentacle of Iso'rath
    .target Tentacle of Iso'rath
step
    .goto 241,48.70,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27379 >>Turn in The Terrors of Iso'rath
    .target Earthcaller Yevaa
step
    +|cRXP_WARN_That is all of Twilight Highlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Deepholm|r: Deepholm, Realm of Earth
step
    +|cRXP_WARN_Suggested next zones at level 84|r: |cRXP_FRIENDLY_Deepholm|r (about 0.6 levels of quests, starting around Maruut Stonebinder; 1 quest from here hands in there). Completing this step loads the guide for Deepholm --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Twilight Highlands is planned from level 87.|r Load its guide for level 87 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 84 - 88 Twilight Highlands
#subweight -84
#name 87-88 Twilight Highlands: around Calen
--RouteBuilder:next
#next Zone Routes (Alliance)\87-88 Kun-Lai Summit: around Smokey Sootassle

step
    .goto 241,43.23,57.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nicole Gillet|r
    .target Nicole Gillet
    .home >>Set your Hearthstone to Nicole Gillet's inn
step
    .goto 241,48.70,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .accept 27380 >>Accept Nightmare
    .target Earthcaller Yevaa
    .isQuestTurnedIn 27379 --any of: The Terrors of Iso'rath
step
    .goto 241,48.34,14.46
    >>Kill |cRXP_ENEMY_Brain of Iso'rath|r
    .complete 27380,1 --Brain of Iso'rath slain (1)
    .mob Brain of Iso'rath
    .isOnQuest 27380
step
    .goto 241,44.04,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 27380 >>Turn in Nightmare
    .target Earthcaller Torunscar
    .isOnQuest 27380
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,44.08,10.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauriel Trueblade|r
    .accept 27485 >>Accept Warm Welcome
    .target Lauriel Trueblade
    .isQuestTurnedIn 27380 --any of: Nightmare
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,27.60,21.01
    >>Meet with Lirastrasza at Vermillion Redoubt.
    .complete 27485,1 --Lirastrasza
    .target Lirastrasza
    .isOnQuest 27485
step << Rogue
    .goto 241,28.97,25.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corastrasza|r
    .accept 29934 >>Accept To Ravenholdt
    .target Corastrasza
    .isQuestTurnedIn 29802 --any of: A Hidden Message
    .xp <85,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 27485 >>Turn in Warm Welcome
    .target Calen
    .isOnQuest 27485
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 27504 >>Accept Even Dragons Bleed
    .target Calen
    .isQuestTurnedIn 27485,27486 --any of: Warm Welcome, Warm Welcome
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .turnin 27504 >>Turn in Even Dragons Bleed
    .target Velastrasza
    .isOnQuest 27504
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .accept 27505 >>Accept Draconic Mending
    .target Velastrasza
    .isQuestTurnedIn 27504 --any of: Even Dragons Bleed
step
    .goto 241,29.79,31.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
    .accept 27506 >>Accept Life from Death
    .target Baleflame
    .isQuestTurnedIn 27504 --any of: Even Dragons Bleed
step
    #loop
    .goto 241,29.77,33.18,0
    .goto 241,29.77,33.18,40,0
    .goto 241,28.23,30.61,40,0
    >>Kill |cRXP_ENEMY_Vermillion Menders|r
    .complete 27505,1 --Vermillion Mender slain (5)
    .mob Vermillion Mender
    .isOnQuest 27505
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .turnin 27505 >>Turn in Draconic Mending while you are here
    .isQuestComplete 27505
    .target Velastrasza
step
    #loop
    .goto 241,27.96,32.00,0
    .goto 241,27.96,32.00,40,0
    .goto 241,29.66,32.73,40,0
    >>Kill |cRXP_ENEMY_Vermillion Menders|r and |cRXP_ENEMY_Twilight Wyrmkillers|r
    .complete 27506,1 --Vermillion Mender (8)
    .mob Vermillion Mender
    .mob Twilight Wyrmkiller
    .isOnQuest 27506
step
    .goto 241,29.79,31.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
    .turnin 27506 >>Turn in Life from Death
    .target Baleflame
    .isOnQuest 27506
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .turnin 27505 >>Turn in Draconic Mending
    .target Velastrasza
    .isOnQuest 27505
step
    .goto 241,29.85,31.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .accept 27564 >>Accept In Defense of the Redoubt
    .target Velastrasza
    .isQuestTurnedIn 27505 --Draconic Mending
    .isQuestTurnedIn 27506 --Life from Death
step << Rogue
    .goto 241,29.54,26.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mostrasz|r
    .complete 29934,1 --Mostrasz
    .target Mostrasz
    .isOnQuest 29934
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 27564 >>Turn in In Defense of the Redoubt
    .target Calen
    .isOnQuest 27564
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 27507 >>Accept Encroaching Twilight
    .accept 27509 >>Accept Breach in the Defenses
    .target Calen
    .isQuestTurnedIn 27564 --any of: In Defense of the Redoubt
step
    .goto 241,29.30,25.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .accept 27508 >>Accept Far from the Nest
    .target Lirastrasza
    .isQuestTurnedIn 27564 --any of: In Defense of the Redoubt
step
    .goto 241,17.91,16.90
    >>Click the |cRXP_PICK_Twilight Portal|r
    .complete 27509,1 --Twilight Portal
    .isOnQuest 27509
step
    #loop
    .goto 241,19.73,15.92,0
    .goto 241,19.73,15.92,40,0
    .goto 241,21.74,17.61,40,0
    .goto 241,24.06,17.88,40,0
    >>Kill |cRXP_ENEMY_Vermillion Eggs|r. Loot them for |cRXP_LOOT_Vermillion Egg|r
    .complete 27508,1 --Vermillion Egg (6)
    .mob Vermillion Egg
    .isOnQuest 27508
step
    #loop
    .goto 241,20.81,15.69,0
    .goto 241,20.81,15.69,40,0
    .goto 241,18.95,17.15,40,0
    >>Kill |cRXP_ENEMY_Twilight Flamequenchers|r and |cRXP_ENEMY_Twilight Abductors|r
    .complete 27507,1 --Twilight Flamequencher (8)
    .mob Twilight Flamequencher
    .mob Twilight Abductor
    .isOnQuest 27507
step
    .goto 241,29.30,25.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 27508 >>Turn in Far from the Nest
    .target Lirastrasza
    .isOnQuest 27508
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 27507 >>Turn in Encroaching Twilight
    .target Calen
    .isOnQuest 27507
step
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 27509 >>Turn in Breach in the Defenses
    .target Calen
    .isOnQuest 27509
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,29.33,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 28101 >>Accept Mathias' Command
    .target Calen
    .isQuestTurnedIn 27507 --Encroaching Twilight
    .isQuestTurnedIn 27508 --Far from the Nest
    .isQuestTurnedIn 27509 --Breach in the Defenses
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.99,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 28101 >>Turn in Mathias' Command
    .target Master Mathias Shaw
    .isOnQuest 28101
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.99,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 28103 >>Accept Easy Pickings
    .accept 28104 >>Accept Precious Goods
    .target Master Mathias Shaw
    .isQuestTurnedIn 28101 --any of: Mathias' Command
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.49,37.80
    >>Kill |cRXP_ENEMY_Twilight Spearwarders|r
    .complete 28103,1 --Twilight Spearwarder (8)
    .mob Twilight Spearwarder
    .isOnQuest 28103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.99,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 28103 >>Turn in Easy Pickings while you are here
    .isQuestComplete 28103
    .target Master Mathias Shaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.49,37.80
    >>Kill |cRXP_ENEMY_Twilight Spearwarder|r and loot |cRXP_LOOT_Twilight Caravan Cargo Key|r
    .complete 28104,1 --Twilight Caravan Cargo Key (1)
    .mob Twilight Spearwarder
    .isOnQuest 28104
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.54,37.94
    >>Open the |cRXP_PICK_Twilight Caravan Chest|r. Loot it for |cRXP_LOOT_Twilight's Hammer Gatestone|r
    .complete 28104,2 --Twilight's Hammer Gatestone (1)
    .isOnQuest 28104
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.99,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 28104 >>Turn in Precious Goods while you are here
    .isQuestComplete 28104
    .target Master Mathias Shaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.99,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 28103 >>Turn in Easy Pickings
    .target Master Mathias Shaw
    .isOnQuest 28103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.99,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 28104 >>Turn in Precious Goods
    .target Master Mathias Shaw
    .isOnQuest 28104
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,25.99,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 28108 >>Accept If The Key Fits
    .target Master Mathias Shaw
    .isQuestTurnedIn 28103 --Easy Pickings
    .isQuestTurnedIn 28104 --Precious Goods
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,29.31,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highbank Lieutenant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28107 >>Accept Paving the Way
    .unitscan Highbank Lieutenant
    .isQuestTurnedIn 28103 --Easy Pickings
    .isQuestTurnedIn 28104 --Precious Goods
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,29.38,51.86
    >>Lead squad from Highbank to the closed Dragonmaw Gate.
    .complete 28108,1 --Dragonmaw Gate Controller
    .target Dragonmaw Gate Controller
    .isOnQuest 28108
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,26.99,54.74,0
    .goto 241,26.99,54.74,40,0
    .goto 241,25.22,55.71,40,0
    .goto 241,22.45,56.54,40,0
    >>Kill |cRXP_ENEMY_Twilight Guardsmans|r, |cRXP_ENEMY_Twilight Stalkers|r, |cRXP_ENEMY_Twilight Earthbinders|r and |cRXP_ENEMY_Twilight Shadowmenders|r
    .complete 28107,1 --Twilight Guardsman (8)
    .mob Twilight Guardsman
    .mob Twilight Stalker
    .mob Twilight Earthbinder
    .mob Twilight Shadowmender
    .isOnQuest 28107
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,29.31,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highbank Lieutenant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28107 >>Turn in Paving the Way
    .unitscan Highbank Lieutenant
    .isOnQuest 28107
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,29.31,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highbank Lieutenant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28108 >>Turn in If The Key Fits
    .unitscan Highbank Lieutenant
    .isOnQuest 28108
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,29.31,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highbank Lieutenant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28109 >>Accept Pressing Forward
    .unitscan Highbank Lieutenant
    .isQuestTurnedIn 28108 --any of: If The Key Fits
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,22.79,56.42
    >>Bring your squad past the northern Dragonmaw Gate to the entrance of Grim Batol.
    .complete 28109,1 --Grim Batol Credit
    .target Grim Batol Credit
    .isOnQuest 28109
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,22.12,56.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 28109 >>Turn in Pressing Forward
    .target Calen
    .isOnQuest 28109
step
    .goto 241,21.77,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .accept 28712 >>Accept Enter the Dragon Queen
    .target Alexstrasza the Life-Binder
    .isQuestTurnedIn 28093,28109 --any of: Pressing Forward, Pressing Forward
step
    .goto 241,14.86,16.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28712 >>Turn in Enter the Dragon Queen
    .target Lirastrasza
    .isOnQuest 28712
step
    .goto 241,14.14,15.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 28758 >>Accept Battle of Life and Death
    .target Calen
    .isQuestTurnedIn 28712 --any of: Enter the Dragon Queen
step
    #loop
    .goto 241,20.92,46.91,0
    .goto 241,20.92,46.91,40,0
    .goto 241,19.25,51.68,40,0
    >>Kill |cRXP_ENEMY_Twilight Shadowdrakes|r
    .complete 28758,1 --Twilight Shadowdrake slain (8)
    .mob Twilight Shadowdrake
    .isOnQuest 28758
step
    .goto 241,22.12,56.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .turnin 28758 >>Turn in Battle of Life and Death
    .target Calen
    .isOnQuest 28758
step
    .goto 241,22.12,56.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calen|r
    .accept 28171 >>Accept And the Sky Streaked Red
    .target Calen
    .isQuestTurnedIn 28758 --any of: Battle of Life and Death
step
    .goto 241,22.12,56.57
    >>Kill |cRXP_ENEMY_Calen|r
    .complete 28171,1 --Calen slain (1)
    .mob Calen
    .isOnQuest 28171
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28171 >>Turn in And the Sky Streaked Red
    .target Lirastrasza
    .isOnQuest 28171
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .accept 28173 >>Accept Blackout
    .accept 28191 >>Accept A Fitting End
    .target Lirastrasza
    .isQuestTurnedIn 28171 --any of: And the Sky Streaked Red
step
    .goto 241,59.02,69.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .accept 28175 >>Accept Shining Through the Dark
    .target Velastrasza
    .isQuestTurnedIn 28171 --any of: And the Sky Streaked Red
step
    .goto 241,64.07,78.04
    >>Use Alexstrasza's Tear within the hollow beneath the Obsidian Tree.
    .complete 28175,1 --Obsidian Flower Bunny
    .target Obsidian Flower Bunny
    .isOnQuest 28175
step
    #loop
    .goto 241,65.14,79.54,0
    .goto 241,65.14,79.54,40,0
    .goto 241,66.36,74.90,40,0
    .goto 241,65.13,68.64,40,0
    .goto 241,64.41,73.79,40,0
    >>Kill |cRXP_ENEMY_Obsidian Pyrewings|r
    .complete 28173,1 --Obsidian Pyrewing slain (8)
    .mob Obsidian Pyrewing
    .isOnQuest 28173
step
    #loop
    .goto 241,64.38,71.33,0
    .goto 241,64.38,71.33,40,0
    .goto 241,62.87,70.17,40,0
    .goto 241,63.07,76.71,40,0
    >>Kill |cRXP_ENEMY_Obsidian Viletongues|r and |cRXP_ENEMY_Obsidian Charscales|r
    .complete 28191,1 --Obsidian Viletongue (8)
    .mob Obsidian Viletongue
    .mob Obsidian Charscale
    .isOnQuest 28191
step
    .goto 241,59.02,69.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velastrasza|r
    .turnin 28175 >>Turn in Shining Through the Dark
    .target Velastrasza
    .isOnQuest 28175
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28173 >>Turn in Blackout
    .target Lirastrasza
    .isOnQuest 28173
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28191 >>Turn in A Fitting End
    .target Lirastrasza
    .isOnQuest 28191
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .accept 28176 >>Accept Following the Young Home
    .target Lirastrasza
    .isQuestTurnedIn 28173 --Blackout
    .isQuestTurnedIn 28175 --Shining Through the Dark
    .isQuestTurnedIn 28191 --A Fitting End
step
    .goto 241,60.94,81.97
    >>Use the Mother's Flame on Obsidian Eggs to release whelps. Follow those hatchlings to the lair of their mother.
    .complete 28176,1 --Obsidian Hatchling Controller
    .target Obsidian Hatchling Controller
    .isOnQuest 28176
step
    .goto 241,49.82,85.49
    >>Use the Mother's Flame on Obsidian Eggs to release whelps. Follow those hatchlings to the lair of their mother.
    .complete 28176,2 --Obsidian Lair Pathing Credit
    .target Obsidian Lair Pathing Credit
    .isOnQuest 28176
step
    .goto 241,44.91,90.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
    .turnin 28176 >>Turn in Following the Young Home
    .target Baleflame
    .isOnQuest 28176
step
    .goto 241,44.91,90.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baleflame|r
    .accept 28247 >>Accept Last of Her Kind
    .target Baleflame
    .isQuestTurnedIn 28176 --any of: Following the Young Home
step
    .goto 241,45.15,91.73
    >>Kill |cRXP_ENEMY_Obsidia|r
    .complete 28247,1 --Obsidia slain (1)
    .mob Obsidia
    .isOnQuest 28247
step
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .turnin 28247 >>Turn in Last of Her Kind
    .target Lirastrasza
    .isOnQuest 28247
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,59.07,69.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lirastrasza|r
    .accept 28248 >>Accept Victors' Point
    .target Lirastrasza
    .isQuestTurnedIn 28247 --any of: Last of Her Kind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Nicole Gillet's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.37,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 28248 >>Turn in Victors' Point
    .target Kurdran Wildhammer
    .isOnQuest 28248
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.37,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .accept 27492 >>Accept Ogres & Ettins
    .target Kurdran Wildhammer
    .isQuestTurnedIn 28248 --any of: Victors' Point
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.41,57.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cassius the White|r
    .accept 27490 >>Accept SI:7 Drop
    .accept 27496 >>Accept Call in the Artillery
    .target Cassius the White
    .isQuestTurnedIn 28248 --any of: Victors' Point
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.83,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angus Stillmountain|r
    .complete 27490,1 --Angus Stillmountain
    .target Angus Stillmountain
    .isOnQuest 27490
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,39.17,64.50
    >>Get a Wildhammer Hellions squad from Angus Stillmountain and then escort them to the drop off point in the Twilight Gate.
    .complete 27490,2 --"SI:7/Kor'kron Drop" Area Trigger Kill Credit
    .target "SI:7/Kor'kron Drop" Area Trigger Kill Credit
    .isOnQuest 27490
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,39.21,62.05
    >>Use the Artillery Flare to target the Northern, Northeastern, Southwestern, and Southern buildings at the Twilight Gate.
    .complete 27496,1 --"Call in the Artillery" Northern Building Bunny
    .target "Call in the Artillery" Northern Building Bunny
    .isOnQuest 27496
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,41.03,64.17
    >>Use the Artillery Flare to target the Northern, Northeastern, Southwestern, and Southern buildings at the Twilight Gate.
    .complete 27496,2 --"Call in the Artillery" Northeastern Building Bunny
    .target "Call in the Artillery" Northeastern Building Bunny
    .isOnQuest 27496
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,39.67,69.28
    >>Use the Artillery Flare to target the Northern, Northeastern, Southwestern, and Southern buildings at the Twilight Gate.
    .complete 27496,3 --"Call in the Artillery" Southwestern Building Bunny
    .target "Call in the Artillery" Southwestern Building Bunny
    .isOnQuest 27496
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,41.51,72.60
    >>Use the Artillery Flare to target the Northern, Northeastern, Southwestern, and Southern buildings at the Twilight Gate.
    .complete 27496,4 --"Call in the Artillery" Southern Building Bunny
    .target "Call in the Artillery" Southern Building Bunny
    .isOnQuest 27496
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,39.96,66.53,0
    .goto 241,39.96,66.53,40,0
    .goto 241,39.88,63.00,40,0
    .goto 241,42.37,65.52,40,0
    >>Kill |cRXP_ENEMY_Bloodeye Magelords|r, |cRXP_ENEMY_Twilight Ettins|r and |cRXP_ENEMY_Bloodeye Brutes|r
    .complete 27492,1 --Bloodeye Magelord (8)
    .mob Bloodeye Magelord
    .mob Twilight Ettin
    .mob Bloodeye Brute
    .isOnQuest 27492
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.41,57.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cassius the White|r
    .turnin 27490 >>Turn in SI:7 Drop
    .target Cassius the White
    .isOnQuest 27490
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.41,57.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cassius the White|r
    .turnin 27496 >>Turn in Call in the Artillery
    .target Cassius the White
    .isOnQuest 27496
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.37,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 27492 >>Turn in Ogres & Ettins
    .target Kurdran Wildhammer
    .isOnQuest 27492
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.37,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .accept 27494 >>Accept Move the Mountain
    .target Kurdran Wildhammer
    .isQuestTurnedIn 27490 --SI:7 Drop
    .isQuestTurnedIn 27492 --Ogres & Ettins
    .isQuestTurnedIn 27496 --Call in the Artillery
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,38.06,66.20
    >>Click the |cRXP_PICK_Hidden Explosives|r
    .complete 27494,1 --Hidden Explosives
    .isOnQuest 27494
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.95,66.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27494 >>Turn in Move the Mountain
    .target ?
    .isOnQuest 27494
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.95,66.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27498 >>Accept Signal the Attack
    .target !
    .isQuestTurnedIn 27494 --any of: Move the Mountain
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,40.62,62.21
    >>Signal the Attack
    .complete 27498,1 --Signal the Attack
    .isOnQuest 27498
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,40.62,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27498 >>Turn in Signal the Attack
    .unitscan ?
    .isOnQuest 27498
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,40.62,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27500 >>Accept Four Heads are Better than None
    .unitscan !
    .isQuestTurnedIn 27498,27588 --any of: Signal the Attack, Signal the Attack
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,38.71,70.28
    >>Kill |cRXP_ENEMY_Beeble'phods|r. Loot them for |cRXP_LOOT_Beeble's Head|r
    .complete 27500,3 --Beeble's Head (4)
    .mob Beeble'phod
    .isOnQuest 27500
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,38.71,70.28
    >>Kill |cRXP_ENEMY_Beeble'phods|r. Loot them for |cRXP_LOOT_Phod's Head|r
    .complete 27500,2 --Phod's Head (4)
    .mob Beeble'phod
    .isOnQuest 27500
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.64,71.32
    >>Kill |cRXP_ENEMY_Za'broxes|r. Loot them for |cRXP_LOOT_Za's Head|r
    .complete 27500,1 --Za's Head (4)
    .mob Za'brox
    .isOnQuest 27500
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.64,71.32
    >>Kill |cRXP_ENEMY_Za'broxes|r. Loot them for |cRXP_LOOT_Brox's Head|r
    .complete 27500,4 --Brox's Head (4)
    .mob Za'brox
    .isOnQuest 27500
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.41,57.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cassius the White|r
    .turnin 27500 >>Turn in Four Heads are Better than None
    .target Cassius the White
    .isOnQuest 27500
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.41,57.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cassius the White|r
    .accept 27502 >>Accept Up to the Citadel
    .target Cassius the White
    .isQuestTurnedIn 27500,27608 --any of: Four Heads are Better than None, Four Heads are Better than None
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,38.93,64.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_SI:7 Squad Commander|r
    .complete 27502,1 --SI:7 Squad Commander (7)
    .target SI:7 Squad Commander
    .isOnQuest 27502
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.65,65.93
    >>Speak with the SI:7 Squad Commander and then escort the SI:7 squad.
    .complete 27502,2 --"Up to the Citadel" Kill Credit
    .target "Up to the Citadel" Kill Credit
    .isOnQuest 27502
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.63,65.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27502 >>Turn in Up to the Citadel
    .target ?
    .isOnQuest 27502
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.63,65.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27636 >>Accept Just You and Mathias
    .target !
    .isQuestTurnedIn 27502 --any of: Up to the Citadel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27636 >>Turn in Just You and Mathias
    .target Master Mathias Shaw
    .isOnQuest 27636
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 27652 >>Accept Dark Assassins
    .accept 27654 >>Accept Bring the Hammer Down
    .accept 27657 >>Accept Help from the Earthcaller
    .target Master Mathias Shaw
    .isQuestTurnedIn 27636,27637 --any of: Just You and Mathias, Just You and Mathias
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.48,88.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27657 >>Turn in Help from the Earthcaller
    .target Earthcaller Yevaa
    .isOnQuest 27657
step
    .goto 241,37.48,88.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .accept 27659 >>Accept Portal Overload
    .accept 27660 >>Accept Spirit of the Loch
    .target Earthcaller Yevaa
    .isQuestTurnedIn 27657,27658 --any of: Help from the Earthcaller, Help from the Earthcaller
step
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27662 >>Accept Unbinding
    .target Initiate Goldmine
    .isQuestTurnedIn 27657,27658 --any of: Help from the Earthcaller, Help from the Earthcaller
step
    .goto 241,38.10,80.26
    >>Kill |cRXP_ENEMY_Apexar|r and |cRXP_ENEMY_Debilitated Apexar|r
    .complete 27659,1 --Apexar (1)
    .mob Apexar
    .mob Debilitated Apexar
    .isOnQuest 27659
step
    .goto 241,44.48,81.50
    >>Kill |cRXP_ENEMY_Aetharon|r and |cRXP_ENEMY_Debilitated Aetharon|r
    .complete 27659,2 --Aetharon (1)
    .mob Aetharon
    .mob Debilitated Aetharon
    .isOnQuest 27659
step
    .goto 241,32.91,62.18
    >>Kill |cRXP_ENEMY_Edemantus|r and |cRXP_ENEMY_Debilitated Edemantus|r
    .complete 27659,3 --Edemantus (1)
    .mob Edemantus
    .mob Debilitated Edemantus
    .isOnQuest 27659
step
    .goto 241,27.64,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Countess Verrall|r
    .turnin 27660 >>Turn in Spirit of the Loch
    .target Countess Verrall
    .isOnQuest 27660
step
    .goto 241,27.64,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Countess Verrall|r
    .accept 27661 >>Accept Fire the Cannon
    .target Countess Verrall
    .isQuestTurnedIn 27660 --any of: Spirit of the Loch
step
    .goto 241,40.87,79.08
    >>Kill |cRXP_ENEMY_Lord Cannon|r
    .complete 27661,1 --Lord Cannon slain (1)
    .mob Lord Cannon
    .isOnQuest 27661
step
    .goto 241,27.64,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Countess Verrall|r
    .turnin 27661 >>Turn in Fire the Cannon
    .target Countess Verrall
    .isOnQuest 27661
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,27.64,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Countess Verrall|r
    .accept 27719 >>Accept Water of Life
    .target Countess Verrall
    .isQuestTurnedIn 27661 --any of: Fire the Cannon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,35.09,61.10
    >>Use the Water of Life to extract information from the Corpse of Forgemaster Finlay.
    .complete 27719,1 --Corpse of Forgemaster Finlay
    .target Corpse of Forgemaster Finlay
    .isOnQuest 27719
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,34.91,67.32,0
    .goto 241,34.91,67.32,40,0
    .goto 241,34.68,69.92,40,0
    .goto 241,38.19,74.73,40,0
    >>Kill |cRXP_ENEMY_Dark Assassins|r. Loot them for |cRXP_LOOT_Dark Assassin's Pendant|r
    .complete 27652,1 --Dark Assassin's Pendant (5)
    .mob Dark Assassin
    .isOnQuest 27652
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 241,36.01,70.54,0
    .goto 241,36.01,70.54,40,0
    .goto 241,36.51,67.46,40,0
    .goto 241,38.53,74.44,40,0
    >>Kill |cRXP_ENEMY_Twilight Vindicators|r, |cRXP_ENEMY_Corrupted Elementalists|r and |cRXP_ENEMY_Citadel Veterans|r
    .complete 27654,1 --Twilight Vindicator (8)
    .mob Twilight Vindicator
    .mob Corrupted Elementalist
    .mob Citadel Veteran
    .isOnQuest 27654
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27652 >>Turn in Dark Assassins
    .target Master Mathias Shaw
    .isOnQuest 27652
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27654 >>Turn in Bring the Hammer Down
    .target Master Mathias Shaw
    .isOnQuest 27654
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27719 >>Turn in Water of Life
    .target Master Mathias Shaw
    .isOnQuest 27719
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 27688 >>Accept Distract Them for Me
    .accept 27695 >>Accept The Elementium Axe
    .target Master Mathias Shaw
    .isQuestTurnedIn 27652 --Dark Assassins
    .isQuestTurnedIn 27654 --Bring the Hammer Down
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.54,70.60
    >>Kill |cRXP_ENEMY_Master Klem|r
    .complete 27688,2 --Master Klem slain (1)
    .mob Master Klem
    .isOnQuest 27688
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,40.16,84.01
    >>Kill |cRXP_ENEMY_Blindeye the Guardian|r and loot |cRXP_LOOT_The Elementium Axe|r
    .complete 27695,1 --The Elementium Axe (1)
    .mob Blindeye the Guardian
    .isOnQuest 27695
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.35,88.50
    >>Kill |cRXP_ENEMY_Dame Alys Finnsson|r
    .complete 27688,1 --Dame Alys Finnsson slain (1)
    .mob Dame Alys Finnsson
    .isOnQuest 27688
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,42.25,83.73
    >>Kill |cRXP_ENEMY_Mia the Rose|r
    .complete 27688,3 --Mia the Rose slain (1)
    .mob Mia the Rose
    .isOnQuest 27688
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27688 >>Turn in Distract Them for Me
    .target Master Mathias Shaw
    .isOnQuest 27688
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27695 >>Turn in The Elementium Axe
    .target Master Mathias Shaw
    .isOnQuest 27695
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 27700 >>Accept Dragon, Unchained
    .target Master Mathias Shaw
    .isQuestTurnedIn 27688 --Distract Them for Me
    .isQuestTurnedIn 27695 --The Elementium Axe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,32.25,68.77
    >>Use the Elementium Axe to break the chains enslaving Lirastrasza.
    .complete 27700,1 --Lirastrasza
    .target Lirastrasza
    .isOnQuest 27700
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27700 >>Turn in Dragon, Unchained
    .target Master Mathias Shaw
    .isOnQuest 27700
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 27702 >>Accept Coup de Grace
    .target Master Mathias Shaw
    .isQuestTurnedIn 27700 --any of: Dragon, Unchained
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,32.61,72.20
    >>Kill |cRXP_ENEMY_Twilight Skyterrors|r
    .complete 27702,1 --Twilight Skyterror slain (5)
    .mob Twilight Skyterror
    .isOnQuest 27702
step
    #loop
    .goto 241,37.40,73.86,0
    .goto 241,37.40,73.86,40,0
    .goto 241,38.56,78.38,40,0
    >>Kill |cRXP_ENEMY_Freed Tempests|r, |cRXP_ENEMY_Freed Infernos|r, |cRXP_ENEMY_Freed Waterspouts|r and |cRXP_ENEMY_Enslaved Tempests|r
    .complete 27662,1 --Freed Tempest (8)
    .mob Freed Tempest
    .mob Freed Inferno
    .mob Freed Waterspout
    .mob Enslaved Tempest
    .isOnQuest 27662
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27702 >>Turn in Coup de Grace
    .target Master Mathias Shaw
    .isOnQuest 27702
step
    .goto 241,37.48,88.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27659 >>Turn in Portal Overload
    .target Earthcaller Yevaa
    .isOnQuest 27659
step
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27662 >>Turn in Unbinding
    .target Initiate Goldmine
    .isOnQuest 27662
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27720 >>Accept Mr. Goldmine's Wild Ride
    .target Initiate Goldmine
    .isQuestTurnedIn 27659 --Portal Overload
    .isQuestTurnedIn 27702 --Coup de Grace
    .isQuestTurnedIn 27719 --Water of Life
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .complete 27720,1 --Initiate Goldmine
    .target Initiate Goldmine
    .isOnQuest 27720
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,38.35,93.88
    >>Ride the mine cart with Initiate Goldmine to the end of the line.
    .complete 27720,2 --"Mr. Goldmine's Wild Ride" Kill Credit
    .target "Mr. Goldmine's Wild Ride" Kill Credit
    .isOnQuest 27720
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27720 >>Turn in Mr. Goldmine's Wild Ride
    .target Initiate Goldmine
    .isOnQuest 27720
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27742 >>Accept A Little on the Side
    .accept 27743 >>Accept While We're Here
    .target Initiate Goldmine
    .isQuestTurnedIn 27720,28885 --any of: Mr. Goldmine's Wild Ride, Mr. Goldmine's Wild Ride
step
    .goto 241,37.42,93.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twilight Rune of Earth|r
    .accept 27744 >>Accept Rune Ruination
    .target Twilight Rune of Earth
    .isQuestTurnedIn 27720,28885 --any of: Mr. Goldmine's Wild Ride, Mr. Goldmine's Wild Ride
step
    .goto 241,37.42,93.24
    >>Kill |cRXP_ENEMY_Twilight Rune of Earth|r
    .complete 27744,1 --Twilight Rune of Earth slain (1)
    .mob Twilight Rune of Earth
    .isOnQuest 27744
step
    .goto 241,35.15,90.37
    >>Click the |cRXP_PICK_Twilight Rune of Water|r
    .complete 27744,2 --Twilight Rune of Water
    .isOnQuest 27744
step
    .goto 241,33.48,88.38
    >>Click the |cRXP_PICK_Twilight Rune of Air|r
    .complete 27744,3 --Twilight Rune of Air
    .isOnQuest 27744
step
    .goto 241,34.34,86.61
    >>Click the |cRXP_PICK_Twilight Rune of Fire|r
    .complete 27744,4 --Twilight Rune of Fire
    .isOnQuest 27744
step
    #loop
    .goto 241,34.17,85.77,0
    .goto 241,34.17,85.77,40,0
    .goto 241,33.84,88.67,40,0
    >>Kill |cRXP_ENEMY_Elementium Spinners|r. Loot them for |cRXP_LOOT_Elementium Shard|r. It can also be picked up from |cRXP_PICK_Elementium Shard|r on the ground
    .complete 27742,1 --Elementium Shard (6)
    .mob Elementium Spinner
    .isOnQuest 27742
step
    .goto 241,33.27,87.51
    >>Kill |cRXP_ENEMY_Twilight Miners|r and |cRXP_ENEMY_Depths Overseers|r
    .complete 27743,1 --Twilight Miner (8)
    .mob Twilight Miner
    .mob Depths Overseer
    .isOnQuest 27743
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27742 >>Turn in A Little on the Side
    .target Initiate Goldmine
    .isOnQuest 27742
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27743 >>Turn in While We're Here
    .target Initiate Goldmine
    .isOnQuest 27743
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27744 >>Turn in Rune Ruination
    .target Initiate Goldmine
    .isOnQuest 27744
step
    .goto 241,38.32,93.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27745 >>Accept A Fiery Reunion
    .target Initiate Goldmine
    .isQuestTurnedIn 27742 --A Little on the Side
    .isQuestTurnedIn 27743 --While We're Here
    .isQuestTurnedIn 27744 --Rune Ruination
step
    .goto 241,36.40,83.76
    >>Kill |cRXP_ENEMY_Magmatooth|r and loot |cRXP_LOOT_Fire Portal Controller|r
    .complete 27745,2 --Fire Portal Controller (1)
    .mob Magmatooth
    .isOnQuest 27745
step
    .goto 241,36.40,83.76
    >>Click the |cRXP_PICK_Fire Portal|r
    .complete 27745,1 --Fire Portal
    .isOnQuest 27745
step
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27745 >>Turn in A Fiery Reunion
    .target Initiate Goldmine
    .isOnQuest 27745
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .accept 27782 >>Accept Mathias Needs You
    .target Initiate Goldmine
    .isQuestTurnedIn 27745 --any of: A Fiery Reunion
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 27711 >>Accept Back to the Elementium Depths
    .target Master Mathias Shaw
    .isQuestTurnedIn 27659 --Portal Overload
    .isQuestTurnedIn 27702 --Coup de Grace
    .isQuestTurnedIn 27719 --Water of Life
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 27782 >>Turn in Mathias Needs You
    .target Master Mathias Shaw
    .isOnQuest 27782
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,36.37,65.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 27784 >>Accept The Hammer of Twilight
    .target Master Mathias Shaw
    .isQuestTurnedIn 27782 --any of: Mathias Needs You
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,37.56,88.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 27711 >>Turn in Back to the Elementium Depths
    .target Initiate Goldmine
    .isOnQuest 27711
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.39,87.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Hammer of Twilight|r
    .turnin 27784 >>Turn in The Hammer of Twilight
    .target The Hammer of Twilight
    .isOnQuest 27784
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.39,87.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Hammer of Twilight|r
    .accept 27787 >>Accept Skullcrusher the Mountain
    .target The Hammer of Twilight
    .isQuestTurnedIn 27784 --any of: The Hammer of Twilight
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.39,87.97
    >>Survive and then slay Skullcrusher the Mountain.
    .complete 27787,1 --"Skullcrusher the Mountain" Kill Credit (1)
    .isOnQuest 27787
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,45.39,87.97
    >>Kill |cRXP_ENEMY_Skullcrusher the Mountain|r
    .complete 27787,2 --Skullcrusher the Mountain slain (1)
    .mob Skullcrusher the Mountain
    .isOnQuest 27787
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Nicole Gillet's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 241,43.37,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 27787 >>Turn in Skullcrusher the Mountain
    .target Kurdran Wildhammer
    .isOnQuest 27787
step << Cata
    >>Congratulations on finishing the RestedXP 80-85 leveling guide! Thank you for using RestedXP.
    >>Remember to also visit your class trainer!
    .train 80353 >> Train |T458224:0|t[Time Warp] << Mage
    .train 77801 >> Train |T463284:0|t[Demon Soul] << Warlock
    .train 73325 >> Train |T463835:0|t[Leap of Faith] << Priest
    .train 51753 >> Train |T132171:0|t[Camouflage] << Hunter
    .train 76577 >> Train |T458733:0|t[Smoke Bomb] << Rogue
    .train 6544 >> Train |T236171:0|t[Heroic Leap] << Warrior
    .train 86150 >> Train |T135919:0|t[Guardian of Ancient Kings] << Paladin
    .train 79206 >> Train |T451170:0|t[Spiritwalker's Grace] << Shaman
    .train 88747 >> Train |T464341:0|t[Wild Mushroom] << Druid
    .train 88751 >> Train |T464342:0|t[Wild Mushroom: Detonate] << Druid
    .train 73975 >> Train |T132481:0|t[Necrotic Strike] << DK
    .train 77606 >> Train |T135888:0|t[Dark Simulacrum] << DK
step
    +|cRXP_WARN_End of the Twilight Highlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: To Ravenholdt << Rogue
step
    +|cRXP_WARN_Suggested next zones at level 87|r: |cRXP_FRIENDLY_Kun-Lai Summit|r (about 0.5 levels of quests, starting around Smokey Sootassle). Completing this step loads the guide for Kun-Lai Summit --RouteBuilder:next
]])
