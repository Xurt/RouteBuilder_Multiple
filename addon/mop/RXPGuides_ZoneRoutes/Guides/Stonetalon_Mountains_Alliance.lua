-- 26-30 Stonetalon Mountains: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 26, 29, 32).
-- Split into 3 guides, listed under "26 - 33 Stonetalon Mountains" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Stonetalon Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 26 - 33 Stonetalon Mountains
#subweight -26
#name 26-27 Stonetalon Mountains
--RouteBuilder:next
#next Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\26-31 Arathi Highlands

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,64.97,49.35
    >>Click the |cRXP_PICK_STAY OUT!|r
    .accept 25730 >>Accept BEWARE OF CRAGJAW!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,64.99,46.96
    >>Kill |cRXP_ENEMY_Cragjaw|r and loot |cRXP_LOOT_Cragjaw's Huge Tooth|r
    .complete 25730,1 --Cragjaw's Huge Tooth (1)
    .mob Cragjaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.87,56.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ol' Irongoat|r
    .turnin 25730 >>Turn in BEWARE OF CRAGJAW!
    .target Ol' Irongoat
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Edirah
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 27265 >>Accept Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 27270 >>Accept An Audience with the Farseer
    .target Hobahken
step
    #completewith next
    .zone 65 >>Leave The Exodar for Stonetalon Mountains
    .zoneskip 65
step
    .goto 65,65.86,64.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom'gar Quartermaster|r
    .accept 28084 >>Accept Might of the Krom'gar
    .target Krom'gar Quartermaster
    .isQuestTurnedIn 26004 --any of: Krom'gar Fortress
    .xp <24,1
step
    .goto 65,65.86,64.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom'gar Quartermaster|r
    .turnin 28084 >>Turn in Might of the Krom'gar
    .target Krom'gar Quartermaster
    .isOnQuest 28084
step
    .goto 65,64.93,82.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darn Talongrip|r
    .accept 26063 >>Accept The Queen and Her Court
    .target Darn Talongrip
step
    #loop
    .goto 65,58.56,74.46,0
    .goto 65,58.56,74.46,40,0
    .goto 65,59.19,71.95,40,0
    >>Kill |cRXP_ENEMY_Deepmoss Creepers|r, |cRXP_ENEMY_Deepmoss Venomspitters|r and |cRXP_ENEMY_Deepmoss Webspinners|r
    .complete 26063,2 --Deepmoss Creeper (8)
    .mob Deepmoss Creeper
    .mob Deepmoss Venomspitter
    .mob Deepmoss Webspinner
step
    .goto 65,56.10,70.20
    >>Kill |cRXP_ENEMY_Queen Silith|r
    .complete 26063,1 --Queen Silith slain (1)
    .mob Queen Silith
step
    .goto 65,64.93,82.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darn Talongrip|r
    .turnin 26063 >>Turn in The Queen and Her Court
    .target Darn Talongrip
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Turn in The Howling Oak
    .target Genn Greymane
    .isOnQuest 28517
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .accept 26385 >>Accept Breaking Waves of Change
    .target Genn Greymane
    .isQuestTurnedIn 28517 --any of: The Howling Oak
    .xp <8,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
step << Draenei
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .target Nurguni
    .isOnQuest 9604
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .accept 9605 >>Accept Hippogryph Master Stephanos
    .target Nurguni
    .isQuestTurnedIn 9604 --any of: On the Wings of a Hippogryph
    .xp <5,1
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
    .target Stephanos
    .isOnQuest 9605
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .accept 9606 >>Accept Return to Caregiver Chellan
    .target Stephanos
    .isQuestTurnedIn 9605 --any of: Hippogryph Master Stephanos
    .xp <5,1
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 89,43.91,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r
    .accept 26383 >>Accept Breaking Waves of Change
    .target Sentinel Cordressa Briarbow
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 27225 >>Accept A Summons from Ander Germaine
    .target Arias'ta Bladesinger
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 27266 >>Accept Wulf Calls
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 27267 >>Accept Make Contact with SI:7
    .target Erion Shadewhisper
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Priestess Alathea
step << NightElf Druid/Worgen Druid
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 27273 >>Accept An Invitation from Moonglade
    .target Mathrengyl Bearwalker
step
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27269 >>Accept The Temple of the Moon << NightElf Priest
    .accept 27274 >>Accept The Chief Surgeon << Gnome Priest
    .target Priestess Alathea
step << NightElf Priest
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 27269 >>Turn in The Temple of the Moon
    .accept 27362 >>Accept Favored of Elune
    .target Tyrande Whisperwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
step
    #completewith next
    .zone 65 >>Leave Darnassus for Stonetalon Mountains
    .zoneskip 65
step
    .goto 65,74.43,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .accept 26003 >>Accept Lessons from the Lost Isles
    .target Kilag Gorefang
    .isQuestTurnedIn 25999 --any of: Barrier to Entry
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,75.15,49.55,0
    .goto 65,75.15,49.55,40,0
    .goto 65,72.13,49.27,40,0
    >>Kill |cRXP_ENEMY_Krom'gar Incinerators|r
    .complete 25616,1 --Krom'gar Incinerator slain (10)
    .mob Krom'gar Incinerator
    .isOnQuest 25616
step
    #loop
    .goto 65,72.68,53.91,0
    .goto 65,72.68,53.91,40,0
    .goto 65,75.58,55.27,40,0
    >>Kill |cRXP_ENEMY_Darnassian Scouts|r
    .complete 26003,1 --Darnassian Scout slain (12)
    .mob Darnassian Scout
    .isOnQuest 26003
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.52,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boog the "Gear Whisperer"|r
    .turnin 25640 >>Turn in Bombs Away: Windshear Mine!
    .target Boog the "Gear Whisperer"
    .isOnQuest 25640
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.48,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Heliana|r
    .turnin 25616 >>Turn in Hellscream's Legacy
    .target Sentinel Heliana
    .isOnQuest 25616
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.48,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Heliana|r
    .accept 25646 >>Accept Windshear Mine Cleanup
    .target Sentinel Heliana
    .isQuestTurnedIn 25640 --any of: Bombs Away: Windshear Mine!
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop25647x1
    >>|cRXP_LOOT_Illegible Orc Letter|r can drop from |cRXP_ENEMY_Windshear Overseer|r. Use it to start the quest if you get one
    .collect 55181,1,25647 --Illegible Orc Letter (1)
    .accept 25647 >>Accept Illegible Orc Letter
    .use 55181
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop25647x1
    #loop
    .goto 65,72.50,61.54,0
    .goto 65,72.50,61.54,40,0
    .goto 65,70.93,63.26,40,0
    >>Kill |cRXP_ENEMY_Windshear Overseers|r
    .complete 25646,1 --Windshear Overseer slain (6)
    .mob Windshear Overseer
    .isOnQuest 25646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.52,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boog the "Gear Whisperer"|r
    .turnin 25647 >>Turn in Illegible Orc Letter
    .target Boog the "Gear Whisperer"
    .isOnQuest 25647
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.52,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boog the "Gear Whisperer"|r
    .accept 25642 >>Accept Don't Look Them in the Eyes
    .target Boog the "Gear Whisperer"
    .isQuestTurnedIn 25640 --any of: Bombs Away: Windshear Mine!
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.52,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boog the "Gear Whisperer"|r
    .accept 25649 >>Accept Minx'll Fix It
    .target Boog the "Gear Whisperer"
    .isQuestTurnedIn 25647 --any of: Illegible Orc Letter
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.48,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Heliana|r
    .turnin 25646 >>Turn in Windshear Mine Cleanup
    .target Sentinel Heliana
    .isOnQuest 25646
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,73.15,61.29,0
    .goto 65,73.15,61.29,40,0
    .goto 65,71.40,62.90,40,0
    >>Kill |cRXP_ENEMY_Krom'gar Peons|r. Loot them for |cRXP_LOOT_Azure Iron Ore|r. It can also be picked up from |cRXP_PICK_Azure Iron Ore|r on the ground
    .complete 25642,1 --Azure Iron Ore (10)
    .mob Krom'gar Peon
    .isOnQuest 25642
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.80,62.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minx|r
    .turnin 25649 >>Turn in Minx'll Fix It
    .target Minx
    .isOnQuest 25649
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.80,62.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minx|r
    .accept 25650 >>Accept Orders from High Command
    .target Minx
    .isQuestTurnedIn 25649 --any of: Minx'll Fix It
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.52,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boog the "Gear Whisperer"|r
    .turnin 25650 >>Turn in Orders from High Command
    .target Boog the "Gear Whisperer"
    .isOnQuest 25650
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.52,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boog the "Gear Whisperer"|r
    .turnin 25642 >>Turn in Don't Look Them in the Eyes
    .target Boog the "Gear Whisperer"
    .isOnQuest 25642
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.52,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boog the "Gear Whisperer"|r
    .accept 25652 >>Accept Commandeer That Balloon!
    .target Boog the "Gear Whisperer"
    .isQuestTurnedIn 25650 --any of: Orders from High Command
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,73.30,60.93
    >>Ride the Krom'gar Hot Air Balloon and attempt to stop it from destroying Windshear Hold.
    .complete 25652,1 --Krom'gar Hot Air Balloon
    .target Krom'gar Hot Air Balloon
    .isOnQuest 25652
step
    .goto 65,74.43,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .turnin 26003 >>Turn in Lessons from the Lost Isles
    .target Kilag Gorefang
    .isOnQuest 26003
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.81,45.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalen Trueshot|r
    .turnin 25613 >>Turn in Do Yourself a Favor
    .target Kalen Trueshot
    .isOnQuest 25613
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.81,45.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalen Trueshot|r
    .accept 25614 >>Accept The Only Way Down is in a Body Bag
    .target Kalen Trueshot
    .isQuestTurnedIn 25613 --any of: Do Yourself a Favor
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,74.09,46.76,0
    .goto 65,74.09,46.76,40,0
    .goto 65,73.64,51.28,40,0
    .goto 65,71.32,50.82,40,0
    >>Kill |cRXP_ENEMY_Warsong Wing Commanders|r
    .complete 25614,1 --Warsong Wing Commander slain (8)
    .mob Warsong Wing Commander
    .isOnQuest 25614
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.81,45.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalen Trueshot|r
    .turnin 25614 >>Turn in The Only Way Down is in a Body Bag
    .target Kalen Trueshot
    .isOnQuest 25614
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.81,45.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalen Trueshot|r
    .accept 25615 >>Accept Return to Stardust
    .target Kalen Trueshot
    .isQuestTurnedIn 25614 --any of: The Only Way Down is in a Body Bag
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.58,56.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Fallowmere|r
    .turnin 25652 >>Turn in Commandeer That Balloon!
    .target Lord Fallowmere
    .isOnQuest 25652
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.58,56.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Fallowmere|r
    .accept 25662 >>Accept Free Our Sisters
    .target Lord Fallowmere
    .isQuestTurnedIn 25652 --any of: Commandeer That Balloon!
    .xp <25,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.51,55.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alice|r
    .accept 25673 >>Accept Just Ask Alice
    .target Alice
    .isQuestTurnedIn 25652 --any of: Commandeer That Balloon!
    .xp <25,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.94,64.24
    >>Pick up |cRXP_PICK_Mechanized Air|r from the ground
    .complete 25673,4 --Mechanized Air (1)
    .isOnQuest 25673
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,63.09,56.69
    >>Pick up |cRXP_PICK_Mechanized Fire|r from the ground
    .complete 25673,2 --Mechanized Fire (1)
    .isOnQuest 25673
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,65.32,54.73,0
    .goto 65,65.32,54.73,40,0
    .goto 65,64.76,52.21,40,0
    .goto 65,68.05,52.13,40,0
    >>Kill |cRXP_ENEMY_Krom'gar Infantry|r and loot |cRXP_LOOT_Horde Cage Key|r
    .collect 55200,1,25662,1 --Horde Cage Key (1)
    .mob Krom'gar Infantry
    .isOnQuest 25662
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,64.95,52.27,0
    .goto 65,64.95,52.27,40,0
    .goto 65,67.25,53.30,40,0
    >>Obtain 5 Horde Cage Keys to free 5 Captured Huntresses.
    .complete 25662,1 --Captured Huntress (5)
    .target Captured Huntress
    .isOnQuest 25662
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,66.20,54.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Illiona|r
    .turnin 25662 >>Turn in Free Our Sisters
    .target Huntress Illiona
    .isOnQuest 25662
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,66.20,54.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Illiona|r
    .accept 25669 >>Accept Rumble in the Lumber... Mill
    .target Huntress Illiona
    .isQuestTurnedIn 25662 --any of: Free Our Sisters
    .xp <25,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,66.06,54.93
    >>Kill |cRXP_ENEMY_Warlord Roktrog|r and loot |cRXP_LOOT_Huntress Illiona's Cage Key|r
    .collect 55213,1,25669,1 --Huntress Illiona's Cage Key (1)
    .mob Warlord Roktrog
    .isOnQuest 25669
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,66.20,54.52
    >>Kill Warlord Roktrog and free Huntress Illiona by using Huntress Illiona's Cage Key.
    .complete 25669,1 --Huntress Illiona
    .target Huntress Illiona
    .isOnQuest 25669
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,66.18,50.04
    >>Pick up |cRXP_PICK_Mechanized Ice|r from the ground
    .complete 25673,3 --Mechanized Ice (1)
    .isOnQuest 25673
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,63.05,45.64
    >>Pick up |cRXP_PICK_BD-816 War Apparatus|r from the ground
    .complete 25673,1 --BD-816 War Apparatus (816)
    .isOnQuest 25673
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.51,55.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alice|r
    .turnin 25673 >>Turn in Just Ask Alice
    .target Alice
    .isOnQuest 25673
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.51,55.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alice|r
    .accept 25728 >>Accept Mr. P's Wild Ride
    .target Alice
    .isQuestTurnedIn 25673 --any of: Just Ask Alice
    .xp <25,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.58,56.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Fallowmere|r
    .turnin 25669 >>Turn in Rumble in the Lumber... Mill
    .target Lord Fallowmere
    .isOnQuest 25669
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.46,56.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Northwatch Captain Kosak|r
    .accept 25739 >>Accept If the Horde Don't Get You...
    .target Northwatch Captain Kosak
    .isQuestTurnedIn 25669 --any of: Rumble in the Lumber... Mill
    .xp <25,1
step
    .goto 65,58.98,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alithia Fallowmere|r
    .accept 25741 >>Accept Preparations for the Future
    .target Alithia Fallowmere
    .isQuestTurnedIn 25669 --any of: Rumble in the Lumber... Mill
    .xp <25,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.73,55.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neophyte Starcrest|r
    .accept 25767 >>Accept Capturing Memories
    .target Neophyte Starcrest
    .isQuestTurnedIn 25669 --any of: Rumble in the Lumber... Mill
    .xp <25,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.69,56.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Valdurian|r
    .accept 25766 >>Accept Arcane Legacy
    .target Arcanist Valdurian
    .isQuestTurnedIn 25669 --any of: Rumble in the Lumber... Mill
    .xp <25,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,56.10,70.20
    >>Kill |cRXP_ENEMY_Queen Silith|r
    .complete 25739,1 --Queen Silith slain (1)
    .mob Queen Silith
    .isOnQuest 25739
step
    #loop
    .goto 65,57.52,69.00,0
    .goto 65,57.52,69.00,40,0
    .goto 65,56.80,71.58,40,0
    .goto 65,54.65,74.34,40,0
    >>Kill |cRXP_ENEMY_Queen Siliths|r, |cRXP_ENEMY_Deepmoss Creepers|r, |cRXP_ENEMY_Deepmoss Webspinners|r and |cRXP_ENEMY_Deepmoss Venomspitters|r. Loot them for |cRXP_LOOT_Deepmoss Venom Sac|r
    .complete 25741,1 --Deepmoss Venom Sac (10)
    .mob Queen Silith
    .mob Deepmoss Creeper
    .mob Deepmoss Webspinner
    .mob Deepmoss Venomspitter
    .isOnQuest 25741
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,61.88,59.01,0
    .goto 65,61.88,59.01,40,0
    .goto 65,61.34,55.33,40,0
    >>Kill |cRXP_ENEMY_Goblin Technicians|r
    .complete 25728,1 --Goblin Technician slain (20)
    .mob Goblin Technician
    .isOnQuest 25728
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,62.20,55.95,0
    .goto 65,62.20,55.95,40,0
    .goto 65,61.74,59.68,40,0
    >>Kill |cRXP_ENEMY_Goblin Harvesters|r
    .complete 25728,2 --Goblin Harvester slain (5)
    .mob Goblin Harvester
    .isOnQuest 25728
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.58,56.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Fallowmere|r
    .turnin 25728 >>Turn in Mr. P's Wild Ride
    .target Lord Fallowmere
    .isOnQuest 25728
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.46,56.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Northwatch Captain Kosak|r
    .turnin 25739 >>Turn in If the Horde Don't Get You...
    .target Northwatch Captain Kosak
    .isOnQuest 25739
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.46,56.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Northwatch Captain Kosak|r
    .accept 25765 >>Accept Tell 'Em Koko Sent You
    .target Northwatch Captain Kosak
    .isQuestTurnedIn 25739 --any of: If the Horde Don't Get You...
    .xp <26,1
step
    .goto 65,58.98,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alithia Fallowmere|r
    .turnin 25741 >>Turn in Preparations for the Future
    .target Alithia Fallowmere
    .isOnQuest 25741
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,49.58,72.79,0
    .goto 65,49.58,72.79,40,0
    .goto 65,47.81,75.24,40,0
    >>Pick up |cRXP_PICK_Eldre'thar Relic|r from the ground
    .complete 25767,1 --Eldre'thar Relic (8)
    .isOnQuest 25767
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,47.64,74.20,0
    .goto 65,47.64,74.20,40,0
    .goto 65,48.66,77.57,40,0
    >>Kill |cRXP_ENEMY_Highborne Charlatans|r, |cRXP_ENEMY_Highborne Sorcerers|r, |cRXP_ENEMY_Lady Benel'deraths|r and |cRXP_ENEMY_Lord Ro'minates|r
    .complete 25766,1 --Highborne Charlatan (8)
    .mob Highborne Charlatan
    .mob Highborne Sorcerer
    .mob Lady Benel'derath
    .mob Lord Ro'minate
    .isOnQuest 25766
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .turnin 25765 >>Turn in Tell 'Em Koko Sent You
    .target Force Commander Valen
    .isOnQuest 25765
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .accept 25793 >>Accept The Deep Reaches
    .target Force Commander Valen
    .isQuestTurnedIn 25765 --any of: Tell 'Em Koko Sent You
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.04,75.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steeltoe McGee|r
    .turnin 25793 >>Turn in The Deep Reaches
    .target Steeltoe McGee
    .isOnQuest 25793
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.06,76.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Paulson|r
    .accept 25806 >>Accept They Put the Assass in... Never Mind
    .target Lieutenant Paulson
    .isQuestTurnedIn 25793 --any of: The Deep Reaches
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.05,75.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Wocard|r
    .accept 25809 >>Accept Leave No Man Behind!
    .target Corporal Wocard
    .isQuestTurnedIn 25793 --any of: The Deep Reaches
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.04,75.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steeltoe McGee|r
    .accept 25811 >>Accept Shuttin Her Down
    .target Steeltoe McGee
    .isQuestTurnedIn 25793 --any of: The Deep Reaches
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,69.51,74.38,0
    .goto 65,69.51,74.38,40,0
    .goto 65,68.98,71.26,40,0
    >>Kill |cRXP_ENEMY_Krom'gar Assassins|r
    .complete 25806,1 --Krom'gar Assassin slain (12)
    .mob Krom'gar Assassin
    .isOnQuest 25806
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,68.89,70.81,0
    .goto 65,68.89,70.81,40,0
    .goto 65,69.16,74.02,40,0
    .goto 65,71.86,76.67,40,0
    >>Interact with |cRXP_FRIENDLY_Frightened Miners|r
    .complete 25809,1 --Frightened Miner (8)
    .target Frightened Miner
    .isOnQuest 25809
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.64,76.05
    >>Click the |cRXP_PICK_Support Beam Marker|r
    .complete 25811,4 --Support Beam Marker
    .isOnQuest 25811
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.64,76.05
    >>Click the |cRXP_PICK_Support Beam Marker|r
    .complete 25811,1 --Support Beam Marker
    .isOnQuest 25811
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.64,76.05
    >>Click the |cRXP_PICK_Support Beam Marker|r
    .complete 25811,2 --Support Beam Marker
    .isOnQuest 25811
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.64,76.05
    >>Click the |cRXP_PICK_Support Beam Marker|r
    .complete 25811,3 --Support Beam Marker
    .isOnQuest 25811
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.06,76.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Paulson|r
    .turnin 25806 >>Turn in They Put the Assass in... Never Mind
    .target Lieutenant Paulson
    .isOnQuest 25806
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.06,76.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Paulson|r
    .accept 25808 >>Accept Is This Thing On?
    .target Lieutenant Paulson
    .isQuestTurnedIn 25806 --any of: They Put the Assass in... Never Mind
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.05,75.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Wocard|r
    .turnin 25809 >>Turn in Leave No Man Behind!
    .target Corporal Wocard
    .isOnQuest 25809
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.04,75.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steeltoe McGee|r
    .turnin 25811 >>Turn in Shuttin Her Down
    .target Steeltoe McGee
    .isOnQuest 25811
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.16,72.92
    >>Kill |cRXP_ENEMY_Master Assassin Kel'istra|r
    .complete 25808,1 --Master Assassin Kel'istra slain (1)
    .mob Master Assassin Kel'istra
    .isOnQuest 25808
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.06,76.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Paulson|r
    .turnin 25808 >>Turn in Is This Thing On?
    .target Lieutenant Paulson
    .isOnQuest 25808
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.06,76.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Paulson|r
    .accept 25821 >>Accept A Special Kind of Job
    .target Lieutenant Paulson
    .isQuestTurnedIn 25808 --Is This Thing On?
    .isQuestTurnedIn 25809 --Leave No Man Behind!
    .isQuestTurnedIn 25811 --Shuttin Her Down
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .turnin 25821 >>Turn in A Special Kind of Job
    .target Force Commander Valen
    .isOnQuest 25821
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .accept 25834 >>Accept Death by Proxy
    .target Force Commander Valen
    .isQuestTurnedIn 25821 --any of: A Special Kind of Job
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.91,79.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 25834 >>Turn in Death by Proxy
    .target "Cookie" McWeaksauce
    .isOnQuest 25834
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.91,79.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 25837 >>Accept A Proper Peace Offerin'
    .target "Cookie" McWeaksauce
    .isQuestTurnedIn 25834 --any of: Death by Proxy
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.73,55.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neophyte Starcrest|r
    .turnin 25767 >>Turn in Capturing Memories
    .target Neophyte Starcrest
    .isOnQuest 25767
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.69,56.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Valdurian|r
    .turnin 25766 >>Turn in Arcane Legacy
    .target Arcanist Valdurian
    .isOnQuest 25766
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,58.69,56.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Valdurian|r
    .accept 25769 >>Accept Fallowmere Beckons
    .target Arcanist Valdurian
    .isQuestTurnedIn 25766 --Arcane Legacy
    .isQuestTurnedIn 25767 --Capturing Memories
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.58,56.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Fallowmere|r
    .turnin 25769 >>Turn in Fallowmere Beckons
    .target Lord Fallowmere
    .isOnQuest 25769
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,59.58,56.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Fallowmere|r
    .accept 25768 >>Accept Bombs Away: Mirkfallon Post!
    .target Lord Fallowmere
    .isQuestTurnedIn 25769 --any of: Fallowmere Beckons
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,48.34,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Commander Barus|r
    .turnin 25768 >>Turn in Bombs Away: Mirkfallon Post!
    .target Scout Commander Barus
    .isOnQuest 25768
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,48.34,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Commander Barus|r
    .accept 25875 >>Accept Gnome on the Inside
    .target Scout Commander Barus
    .isQuestTurnedIn 25768 --any of: Bombs Away: Mirkfallon Post!
    .xp <26,1
step
    .goto 65,48.45,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Mistress Yvonia|r
    .accept 25878 >>Accept Schemin' That Sabotage
    .accept 25879 >>Accept The Lumbering Oaf Problem
    .target Scout Mistress Yvonia
    .isQuestTurnedIn 25768 --any of: Bombs Away: Mirkfallon Post!
    .xp <26,1
step
    #loop
    .goto 65,50.93,44.14,0
    .goto 65,50.93,44.14,40,0
    .goto 65,52.99,42.80,40,0
    >>Kill |cRXP_ENEMY_Goblin Pump Controller|r and loot |cRXP_LOOT_Goblin Pump Controller|r
    .collect 56140,1,25878,1 --Goblin Pump Controller (1)
    .mob Goblin Pump Controller
    .isOnQuest 25878
step
    #loop
    .goto 65,51.69,42.80,0
    .goto 65,51.69,42.80,40,0
    .goto 65,51.24,49.01,40,0
    >>Kill |cRXP_ENEMY_Lumbering Oafs|r
    .complete 25879,1 --Lumbering Oaf slain (10)
    .mob Lumbering Oaf
    .isOnQuest 25879
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,53.68,42.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Goblin" Pump Controller|r
    .turnin 25875 >>Turn in Gnome on the Inside
    .target "Goblin" Pump Controller
    .isOnQuest 25875
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,53.68,42.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Goblin" Pump Controller|r
    .accept 25876 >>Accept It's Up There!
    .target "Goblin" Pump Controller
    .isQuestTurnedIn 25875 --any of: Gnome on the Inside
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,51.01,44.59
    >>Pick up |cRXP_PICK_Krom'gar Log Book|r from the ground
    .complete 25876,1 --Krom'gar Log Book (1)
    .isOnQuest 25876
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,53.68,42.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Goblin" Pump Controller|r
    .turnin 25876 >>Turn in It's Up There!
    .target "Goblin" Pump Controller
    .isOnQuest 25876
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,53.68,42.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Goblin" Pump Controller|r
    .accept 25877 >>Accept No Time for Goodbyes!
    .target "Goblin" Pump Controller
    .isQuestTurnedIn 25876 --any of: It's Up There!
    .xp <26,1
step
    #loop
    .goto 65,50.12,44.01,0
    .goto 65,50.12,44.01,40,0
    .goto 65,51.84,47.92,40,0
    >>Kill |cRXP_ENEMY_Oil Pumps|r
    .complete 25878,1 --Oil Pump slain (4)
    .mob Oil Pump
    .isOnQuest 25878
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,48.34,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Commander Barus|r
    .turnin 25877 >>Turn in No Time for Goodbyes!
    .target Scout Commander Barus
    .isOnQuest 25877
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,48.34,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Commander Barus|r
    .accept 25880 >>Accept Warn Master Thal'darah
    .target Scout Commander Barus
    .isQuestTurnedIn 25877 --any of: No Time for Goodbyes!
    .xp <26,1
step
    .goto 65,48.45,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Mistress Yvonia|r
    .turnin 25879 >>Turn in The Lumbering Oaf Problem
    .target Scout Mistress Yvonia
    .isOnQuest 25879
step
    .goto 65,48.45,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Mistress Yvonia|r
    .turnin 25878 >>Turn in Schemin' That Sabotage
    .target Scout Mistress Yvonia
    .isOnQuest 25878
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,60.19,88.00,0
    .goto 65,60.19,88.00,40,0
    .goto 65,61.99,89.41,40,0
    >>Kill |cRXP_ENEMY_Boulderslide Rock Keepers|r, |cRXP_ENEMY_Boulderslide Geomancers|r and |cRXP_ENEMY_Boulderslide Stonepounders|r. Loot them for |cRXP_LOOT_Boulderslide Cheese|r
    .complete 25837,3 --Boulderslide Cheese (10)
    .mob Boulderslide Rock Keeper
    .mob Boulderslide Geomancer
    .mob Boulderslide Stonepounder
    .isOnQuest 25837
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,60.83,82.90,0
    .goto 65,60.83,82.90,40,0
    .goto 65,63.94,84.59,40,0
    .goto 65,64.09,89.56,40,0
    >>Loot the |cRXP_PICK_Kalimdor Eagle Nests|r for |cRXP_LOOT_Kalimdor Eagle Egg|r
    .complete 25837,1 --Kalimdor Eagle Egg (6)
    .isOnQuest 25837
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,64.21,81.42,0
    .goto 65,64.21,81.42,40,0
    .goto 65,66.62,84.04,40,0
    .goto 65,68.12,87.05,40,0
    >>Kill |cRXP_ENEMY_Stonetalon Rams|r. Loot them for |cRXP_LOOT_Ram Haunch|r
    .complete 25837,2 --Ram Haunch (8)
    .mob Stonetalon Ram
    .isOnQuest 25837
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.91,79.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 25837 >>Turn in A Proper Peace Offerin'
    .target "Cookie" McWeaksauce
    .isOnQuest 25837
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,70.91,79.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 25844 >>Accept Sating the Savage Beast
    .target "Cookie" McWeaksauce
    .isQuestTurnedIn 25837 --any of: A Proper Peace Offerin'
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.74,81.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ton Windbow|r
    .turnin 25844 >>Turn in Sating the Savage Beast
    .target Ton Windbow
    .isOnQuest 25844
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.74,81.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ton Windbow|r
    .accept 25845 >>Accept Terms of Service
    .target Ton Windbow
    .isQuestTurnedIn 25844 --any of: Sating the Savage Beast
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .turnin 25845 >>Turn in Terms of Service
    .target Force Commander Valen
    .isOnQuest 25845
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .accept 25823 >>Accept The Unrelenting Horde
    .accept 25822 >>Accept Armaments for War
    .target Force Commander Valen
    .isQuestTurnedIn 25845 --any of: Terms of Service
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,75.31,76.81,0
    .goto 65,75.31,76.81,40,0
    .goto 65,78.11,78.22,40,0
    >>Pick up |cRXP_PICK_Alliance Weapon Crate|r from the ground
    .complete 25822,1 --Alliance Weapon Crate (10)
    .isOnQuest 25822
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,75.28,77.83,0
    .goto 65,75.28,77.83,40,0
    .goto 65,77.59,75.80,40,0
    >>Kill |cRXP_ENEMY_Krom'gar Blood Guards|r and |cRXP_ENEMY_Goblin Stripminers|r
    .complete 25823,1 --Krom'gar Blood Guard (8)
    .mob Krom'gar Blood Guard
    .mob Goblin Stripminer
    .isOnQuest 25823
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .turnin 25822 >>Turn in Armaments for War
    .target Force Commander Valen
    .isOnQuest 25822
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .accept 25846 >>Accept Grundig Darkcloud, Chieftain of the Grimtotem
    .target Force Commander Valen
    .isQuestTurnedIn 25822 --any of: Armaments for War
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .turnin 25823 >>Turn in The Unrelenting Horde
    .target Force Commander Valen
    .isOnQuest 25823
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.23,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundig Darkcloud|r
    .turnin 25846 >>Turn in Grundig Darkcloud, Chieftain of the Grimtotem
    .target Grundig Darkcloud
    .isOnQuest 25846
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.23,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundig Darkcloud|r
    .accept 25847 >>Accept Grimtotem Supremacy
    .target Grundig Darkcloud
    .isQuestTurnedIn 25846 --any of: Grundig Darkcloud, Chieftain of the Grimtotem
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,72.11,83.89,0
    .goto 65,72.11,83.89,40,0
    .goto 65,73.13,83.57,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Ruffians|r, |cRXP_ENEMY_Grimtotem Mercenaries|r, |cRXP_ENEMY_Grimtotem Brutes|r and |cRXP_ENEMY_Grimtotem Sorcerers|r
    .complete 25847,1 --Grimtotem Ruffian (8)
    .mob Grimtotem Ruffian
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .isOnQuest 25847
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.23,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundig Darkcloud|r
    .turnin 25847 >>Turn in Grimtotem Supremacy
    .target Grundig Darkcloud
    .isOnQuest 25847
step
    .goto 65,72.05,91.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denni'ka|r
    .accept 26064 >>Accept Fight On Their Stomachs
    .target Denni'ka
    .isQuestTurnedIn 26059 --any of: Eyes and Ears: Malaka'jin
    .xp <26,1
step
    #loop
    .goto 65,67.93,83.62,0
    .goto 65,67.93,83.62,40,0
    .goto 65,65.25,87.31,40,0
    >>Loot the |cRXP_PICK_Kalimdor Eagle Nests|r for |cRXP_LOOT_Kalimdor Eagle Egg|r
    .complete 26064,1 --Kalimdor Eagle Egg (8)
    .isOnQuest 26064
step
    .goto 65,72.05,91.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denni'ka|r
    .turnin 26064 >>Turn in Fight On Their Stomachs
    .target Denni'ka
    .isOnQuest 26064
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9762 >>Accept The Unwritten Prophecy
    .target Prophet Velen
    .isQuestTurnedIn 9759 --any of: Ending Their World
    .xp <18,1
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9762 >>Turn in The Unwritten Prophecy
    .target Prophet Velen
    .isOnQuest 9762
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9698 >>Turn in Audience with the Prophet
    .target Prophet Velen
    .isOnQuest 9698
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9699 >>Accept Truth or Fiction
    .target Prophet Velen
    .isQuestTurnedIn 9698 --any of: Audience with the Prophet
    .xp <14,1
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
step
    #completewith next
    .zone 65 >>Leave The Exodar for Stonetalon Mountains
    .zoneskip 65
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.97,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Thal'darah|r
    .turnin 25880 >>Turn in Warn Master Thal'darah
    .target Master Thal'darah
    .isOnQuest 25880
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.97,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Thal'darah|r
    .accept 25889 >>Accept Save the Children!
    .target Master Thal'darah
    .isQuestTurnedIn 25880 --any of: Warn Master Thal'darah
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,40.62,46.41,0
    .goto 65,40.62,46.41,40,0
    .goto 65,38.24,47.47,40,0
    >>Interact with |cRXP_FRIENDLY_Helpless Young Druids|r
    .complete 25889,1 --Helpless Young Druid (5)
    .target Helpless Young Druid
    .isOnQuest 25889
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.97,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Thal'darah|r
    .turnin 25889 >>Turn in Save the Children!
    .target Master Thal'darah
    .isOnQuest 25889
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.97,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Thal'darah|r
    .accept 25891 >>Accept Last Ditch Effort
    .target Master Thal'darah
    .isQuestTurnedIn 25889 --any of: Save the Children!
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.97,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Thal'darah|r
    .complete 25891,1 --Master Thal'darah
    .target Master Thal'darah
    .isOnQuest 25891
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.97,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Thal'darah|r
    .turnin 25891 >>Turn in Last Ditch Effort
    .target Master Thal'darah
    .isOnQuest 25891
step
    .goto 65,39.58,30.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sareth'na|r
    .accept 25912 >>Accept Seen Better Days
    .target Elder Sareth'na
    .isQuestTurnedIn 25891 --any of: Last Ditch Effort
    .xp <26,1
step
    .goto 65,39.61,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Mistress Geleneth|r
    .accept 25913 >>Accept Putting Them to Rest
    .target Sentinel Mistress Geleneth
    .isQuestTurnedIn 25891 --any of: Last Ditch Effort
    .xp <26,1
step
    #loop
    .goto 65,40.77,18.16,0
    .goto 65,40.77,18.16,40,0
    .goto 65,43.28,17.33,40,0
    >>Kill |cRXP_ENEMY_Corrupted Sentinels|r. Loot them for |cRXP_LOOT_Sentinel's Glaive|r
    .complete 25913,1 --Sentinel's Glaive (8)
    .mob Corrupted Sentinel
    .isOnQuest 25913
step
    .goto 65,40.74,17.25
    >>Pick up |cRXP_PICK_Elder Sareth'na's Sketch Book|r from the ground
    .complete 25912,1 --Elder Sareth'na's Sketch Book (1)
    .isOnQuest 25912
step
    .goto 65,39.61,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Mistress Geleneth|r
    .turnin 25913 >>Turn in Putting Them to Rest
    .target Sentinel Mistress Geleneth
    .isOnQuest 25913
step
    .goto 65,39.58,30.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sareth'na|r
    .turnin 25912 >>Turn in Seen Better Days
    .target Elder Sareth'na
    .isOnQuest 25912
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >>Turn in Coming of Age
    .target Torallius the Pack Handler
    .isOnQuest 9623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .accept 9625 >>Accept Elekks Are Serious Business
    .target Torallius the Pack Handler
    .isQuestTurnedIn 9623 --any of: Coming of Age
    .xp <10,1
step << NightElf
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .turnin 6341 >>Turn in To Darnassus
    .target Sister Aquinne
    .isOnQuest 6341
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .accept 6342 >>Accept An Unexpected Gift
    .target Sister Aquinne
    .isQuestTurnedIn 6341 --any of: To Darnassus
    .xp <5,1
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .turnin 6342 >>Turn in An Unexpected Gift
    .target Leora
    .isOnQuest 6342
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .accept 6343 >>Accept Return to Nyoma
    .target Leora
    .isQuestTurnedIn 6342 --any of: An Unexpected Gift
    .xp <5,1
step
    +|cRXP_WARN_That is all of Stonetalon Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Return to Stardust, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7 << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
step
    +|cRXP_WARN_Suggested next zones at level 26|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.3 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.0 levels of quests, starting around Skuerto). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Stonetalon Mountains is planned from level 29.|r Load its guide for level 29 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 26 - 33 Stonetalon Mountains
#subweight -26
#name 29-30 Stonetalon Mountains
--RouteBuilder:next
#next Zone Routes (Alliance)\30-33 Desolace: around Cenarion Researcher Korrah;Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\26-31 Arathi Highlands

step
    .goto 65,33.09,59.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Malyk|r
    .accept 25938 >>Accept Help for Desolace
    .target Hierophant Malyk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.97,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Thal'darah|r
    .accept 25925 >>Accept Thal'darah's Vengeance
    .target Master Thal'darah
    .isQuestTurnedIn 25891 --any of: Last Ditch Effort
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.61,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Mistress Geleneth|r
    .accept 25914 >>Accept Back to the Depths!
    .target Sentinel Mistress Geleneth
    .isQuestTurnedIn 25891 --any of: Last Ditch Effort
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,42.24,28.50,0
    .goto 65,42.24,28.50,40,0
    .goto 65,42.79,25.98,40,0
    .goto 65,43.15,19.11,40,0
    >>Kill |cRXP_ENEMY_Invading Tendrils|r and |cRXP_ENEMY_Invading Crushers|r
    .complete 25914,2 --Invading Tendril (8)
    .mob Invading Tendril
    .mob Invading Crusher
    .isOnQuest 25914
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,41.24,22.76
    >>Kill |cRXP_ENEMY_Harbinger Aph'lass|r
    .complete 25914,1 --Harbinger Aph'lass slain (1)
    .mob Harbinger Aph'lass
    .isOnQuest 25914
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,39.61,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Mistress Geleneth|r
    .turnin 25914 >>Turn in Back to the Depths!
    .target Sentinel Mistress Geleneth
    .isOnQuest 25914
step
    .goto 65,45.53,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chieftain Cliffwalker|r
    .accept 26134 >>Accept Nothing Left for You Here
    .target High Chieftain Cliffwalker
    .isQuestTurnedIn 26115 --any of: To Be Horde...
    .xp <27,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,43.40,39.60,0
    .goto 65,43.40,39.60,40,0
    .goto 65,40.53,40.66,40,0
    >>Kill |cRXP_ENEMY_Krom'gar Witch Doctors|r, |cRXP_ENEMY_Krom'gar Loggers|r, |cRXP_ENEMY_Krom'gar Warriors|r and |cRXP_ENEMY_Krom'gar Peons|r
    .complete 25925,2 --Krom'gar Witch Doctor (8)
    .mob Krom'gar Witch Doctor
    .mob Krom'gar Logger
    .mob Krom'gar Warrior
    .mob Krom'gar Peon
    .isOnQuest 25925
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,43.09,40.74,0
    .goto 65,43.09,40.74,40,0
    .goto 65,40.96,42.17,40,0
    >>Kill |cRXP_ENEMY_Krom'gar Demolishers|r
    .complete 25925,1 --Krom'gar Demolisher slain (3)
    .mob Krom'gar Demolisher
    .isOnQuest 25925
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.09,59.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Malyk|r
    .turnin 25925 >>Turn in Thal'darah's Vengeance
    .target Hierophant Malyk
    .isOnQuest 25925
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.09,59.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Malyk|r
    .accept 25930 >>Accept Ascending the Vale
    .target Hierophant Malyk
    .isQuestTurnedIn 25925 --any of: Thal'darah's Vengeance
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.06,59.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salsbury the "Help"|r
    .accept 25934 >>Accept World First: Gnomegen
    .target Salsbury the "Help"
    .isQuestTurnedIn 25925 --any of: Thal'darah's Vengeance
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.01,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Houndmaster Jonathan|r
    .accept 25935 >>Accept Hungry Pups
    .target Houndmaster Jonathan
    .isQuestTurnedIn 25925 --any of: Thal'darah's Vengeance
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,30.72,69.30,0
    .goto 65,30.72,69.30,40,0
    .goto 65,32.01,71.20,40,0
    >>Kill |cRXP_ENEMY_Black Dragon Whelps|r. Loot them for |cRXP_LOOT_Black Dragon Whelp Filet|r
    .complete 25935,1 --Black Dragon Whelp Filet (6)
    .mob Black Dragon Whelp
    .isOnQuest 25935
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,31.30,73.20
    >>Ascend the Charred Vale
    .complete 25930,1 --Ascend the Charred Vale
    .isOnQuest 25930
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,31.52,67.61,0
    .goto 65,31.52,67.61,40,0
    .goto 65,27.95,67.55,40,0
    >>Kill |cRXP_ENEMY_Fissure-born Fire Elemental|r and loot |cRXP_LOOT_Blazing Heart of Fire|r
    .complete 25934,1 --Blazing Heart of Fire (1)
    .mob Fissure-born Fire Elemental
    .isOnQuest 25934
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.01,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Houndmaster Jonathan|r
    .turnin 25935 >>Turn in Hungry Pups
    .target Houndmaster Jonathan
    .isOnQuest 25935
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.06,59.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salsbury the "Help"|r
    .turnin 25934 >>Turn in World First: Gnomegen
    .target Salsbury the "Help"
    .isOnQuest 25934
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.09,59.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Malyk|r
    .turnin 25930 >>Turn in Ascending the Vale
    .target Hierophant Malyk
    .isOnQuest 25930
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.09,59.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Malyk|r
    .accept 25931 >>Accept Brood of Seldarria
    .target Hierophant Malyk
    .isQuestTurnedIn 25930 --any of: Ascending the Vale
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 65,30.81,72.27,0
    .goto 65,30.81,72.27,40,0
    .goto 65,29.21,72.51,40,0
    >>Click the |cRXP_PICK_Seldarria's Egg|r
    .complete 25931,1 --Seldarria's Egg
    .isOnQuest 25931
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,33.09,59.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Malyk|r
    .turnin 25931 >>Turn in Brood of Seldarria
    .target Hierophant Malyk
    .isOnQuest 25931
step
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26069 >>Accept Nura Pathfinder
    .unitscan Witch Doctor Jin'Zil
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.23,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundig Darkcloud|r
    .accept 25848 >>Accept Downfall
    .target Grundig Darkcloud
    .isQuestTurnedIn 25847 --any of: Grimtotem Supremacy
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,74.42,87.83
    >>Open the |cRXP_PICK_Horde General's Chest|r. Loot it for |cRXP_LOOT_Insignia of the Horde General|r
    .complete 25848,1 --Insignia of the Horde General (1)
    .isOnQuest 25848
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.23,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundig Darkcloud|r
    .turnin 25848 >>Turn in Downfall
    .target Grundig Darkcloud
    .isOnQuest 25848
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,72.23,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundig Darkcloud|r
    .accept 25851 >>Accept Dances with Grimtotem
    .target Grundig Darkcloud
    .isQuestTurnedIn 25848 --any of: Downfall
    .xp <26,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .turnin 25851 >>Turn in Dances with Grimtotem
    .target Force Commander Valen
    .isOnQuest 25851
step
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .accept 25852 >>Accept All's Clear
    .target Force Commander Valen
    .isQuestTurnedIn 25851 --any of: Dances with Grimtotem
    .xp <26,1
step
    +|cRXP_WARN_That is all of Stonetalon Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Desolace|r: Help for Desolace, Nothing Left for You Here
    >>|cRXP_FRIENDLY_Southern Barrens|r: All's Clear, Nura Pathfinder
step
    +|cRXP_WARN_Suggested next zones at level 29|r: |cRXP_FRIENDLY_Desolace|r (about 2.3 levels of quests, starting around Cenarion Researcher Korrah; 2 quests from here hand in there), |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.1 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.9 levels of quests, starting around Skuerto). Completing this step loads the guide for Desolace --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Stonetalon Mountains is planned from level 32.|r Load its guide for level 32 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 26 - 33 Stonetalon Mountains
#subweight -26
#name 32-33 Stonetalon Mountains
--RouteBuilder:next
#next Zone Routes (Alliance)\30-33 Desolace: around Cenarion Researcher Korrah;Zone Routes (Alliance)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts;Zone Routes (Alliance)\25-30 Northern Stranglethorn

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
step
    +|cRXP_WARN_End of the Stonetalon Mountains route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Southern Barrens|r: Hero's Call: Southern Barrens! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 32|r: |cRXP_FRIENDLY_Desolace|r (about 1.9 levels of quests, starting around Cenarion Researcher Korrah; 2 quests from here hand in there), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.2 levels of quests, starting around Captain Hecklebury Smotts), |cRXP_FRIENDLY_Northern Stranglethorn|r (about 0.8 levels of quests, starting around Hemet Nesingwary Jr.). Completing this step loads the guide for Desolace --RouteBuilder:next
]])
