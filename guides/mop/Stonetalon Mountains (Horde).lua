-- 26-30 Stonetalon Mountains: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 26, 29, 32).
-- Split into 3 guides, listed under "26 - 33 Stonetalon Mountains" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Stonetalon Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 26 - 33 Stonetalon Mountains
#subweight -26
#name 26-27 Stonetalon Mountains
--RouteBuilder:next
#next Zone Routes (Horde)\25-30 Northern Stranglethorn;Zone Routes (Horde)\26-31 Arathi Highlands;Zone Routes (Horde)\22-27 Hillsbrad Foothills: around Serge Hinott

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
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 88,56.99,89.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sark Ragetotem|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Sark Ragetotem
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 88,57.30,89.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .accept 27278 >>Accept Grimshot's Call
    .target Holt Thunderhorn
step << Tauren Druid/Troll Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade
    .target Sheal Runetotem
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 88,22.76,14.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Archmage Shymm
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 88,25.24,13.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delano Morisett|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Delano Morisett
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 88,21.99,18.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kador Cloudsong|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Kador Cloudsong
step
    .goto 88,24.56,22.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai Cross|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Malakai Cross
step
    #completewith next
    .zone 65 >>Leave Thunder Bluff for Stonetalon Mountains
    .zoneskip 65
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.27,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurboz|r
    .turnin 25945 >>Turn in We're Here to Do One Thing, Maybe Two...
    .target Saurboz
    .isQuestComplete 25945
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.27,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurboz|r
    .accept 25999 >>Accept Barrier to Entry
    .target Saurboz
    .isQuestTurnedIn 25945 --any of: We're Here to Do One Thing, Maybe Two...
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,72.99,43.75
    >>Click the |cRXP_PICK_Krom'gar "Elf Killer"|r
    .complete 25999,1 --Krom'gar "Elf Killer"
    .isOnQuest 25999
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.27,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurboz|r
    .turnin 25999 >>Turn in Barrier to Entry
    .target Saurboz
    .isOnQuest 25999
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.27,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurboz|r
    .accept 26001 >>Accept The Missing Blastgineer
    .target Saurboz
    .isQuestTurnedIn 25999 --any of: Barrier to Entry
    .xp <24,1
step
    .goto 65,74.43,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .accept 26003 >>Accept Lessons from the Lost Isles
    .target Kilag Gorefang
    .isQuestTurnedIn 25999 --any of: Barrier to Entry
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,73.29,56.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blastgineer Fuzzwhistle|r
    .turnin 26001 >>Turn in The Missing Blastgineer
    .target Blastgineer Fuzzwhistle
    .isOnQuest 26001
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,73.29,56.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blastgineer Fuzzwhistle|r
    .accept 26002 >>Accept Alliance Attack Plans
    .target Blastgineer Fuzzwhistle
    .isQuestTurnedIn 26001 --any of: The Missing Blastgineer
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,75.36,57.97
    >>Kill |cRXP_ENEMY_Huntress Davinia|r and loot |cRXP_LOOT_Alliance Attack Plans|r
    .complete 26002,1 --Alliance Attack Plans (1)
    .mob Huntress Davinia
    .isOnQuest 26002
step
    #loop
    .goto 65,72.68,53.91,0
    .goto 65,72.68,53.91,40,0
    .goto 65,75.58,55.27,40,0
    >>Kill |cRXP_ENEMY_Darnassian Scouts|r
    .complete 26003,1 --Darnassian Scout slain (12)
    .mob Darnassian Scout
    .isOnQuest 26003
step
    .goto 65,74.43,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilag Gorefang|r
    .turnin 26003 >>Turn in Lessons from the Lost Isles
    .target Kilag Gorefang
    .isOnQuest 26003
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.27,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurboz|r
    .turnin 26002 >>Turn in Alliance Attack Plans
    .target Saurboz
    .isOnQuest 26002
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.27,47.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurboz|r
    .accept 26004 >>Accept Krom'gar Fortress
    .target Saurboz
    .isQuestTurnedIn 26002 --any of: Alliance Attack Plans
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .turnin 26004 >>Turn in Krom'gar Fortress
    .target Overlord Krom'gar
    .isOnQuest 26004
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .accept 26010 >>Accept Ashes to Ashes
    .target Overlord Krom'gar
    .isQuestTurnedIn 26004 --any of: Krom'gar Fortress
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.13,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarissa|r
    .accept 26026 >>Accept Dream of a Better Tomorrow
    .target Clarissa
    .isQuestTurnedIn 26004 --any of: Krom'gar Fortress
    .xp <24,1
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,65.76,63.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spy-Mistress Anara|r
    .accept 26011 >>Accept Enemy of the Horde: Marshal Paltrow
    .target Spy-Mistress Anara
    .isQuestTurnedIn 26004 --any of: Krom'gar Fortress
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,61.98,62.88,0
    .goto 65,61.98,62.88,40,0
    .goto 65,62.01,65.59,40,0
    >>Click the |cRXP_PICK_Northwatch Tent|r
    .complete 26010,1 --Northwatch Tent
    .isOnQuest 26010
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,63.09,56.69
    >>Pick up |cRXP_PICK_Mechanized Fire|r from the ground
    .complete 26026,2 --Mechanized Fire (1)
    .isOnQuest 26026
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.18,50.04
    >>Pick up |cRXP_PICK_Mechanized Ice|r from the ground
    .complete 26026,3 --Mechanized Ice (1)
    .isOnQuest 26026
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,64.97,49.35
    >>Click the |cRXP_PICK_STAY OUT!|r
    .accept 26043 >>Accept BEWARE OF CRAGJAW!
    .isQuestTurnedIn 26004 --any of: Krom'gar Fortress
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,63.05,45.64
    >>Pick up |cRXP_PICK_BD-816 War Apparatus|r from the ground
    .complete 26026,1 --BD-816 War Apparatus (816)
    .isOnQuest 26026
step
    .goto 65,58.98,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alithia Fallowmere|r
    .accept 25741 >>Accept Preparations for the Future
    .target Alithia Fallowmere
    .isQuestTurnedIn 25669 --any of: Rumble in the Lumber... Mill
    .xp <25,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,59.94,64.24
    >>Pick up |cRXP_PICK_Mechanized Air|r from the ground
    .complete 26026,4 --Mechanized Air (1)
    .isOnQuest 26026
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,62.09,68.02
    >>Kill |cRXP_ENEMY_Marshal Paltrow|r
    .complete 26011,1 --Marshal Paltrow slain (1)
    .mob Marshal Paltrow
    .isOnQuest 26011
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.13,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarissa|r
    .turnin 26026 >>Turn in Dream of a Better Tomorrow
    .target Clarissa
    .isOnQuest 26026
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.13,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarissa|r
    .accept 26028 >>Accept Mr. D's Wild Ride
    .target Clarissa
    .isQuestTurnedIn 26026 --any of: Dream of a Better Tomorrow
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .turnin 26010 >>Turn in Ashes to Ashes
    .target Overlord Krom'gar
    .isOnQuest 26010
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .accept 26020 >>Accept Report to Bombgutz
    .target Overlord Krom'gar
    .isQuestTurnedIn 26010 --any of: Ashes to Ashes
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,65.76,63.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spy-Mistress Anara|r
    .turnin 26011 >>Turn in Enemy of the Horde: Marshal Paltrow
    .target Spy-Mistress Anara
    .isOnQuest 26011
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.23,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Blastgineer Bombgutz|r
    .turnin 26020 >>Turn in Report to Bombgutz
    .target Chief Blastgineer Bombgutz
    .isOnQuest 26020
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.23,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Blastgineer Bombgutz|r
    .accept 26044 >>Accept Where Are the Parts?
    .target Chief Blastgineer Bombgutz
    .isQuestTurnedIn 26020 --any of: Report to Bombgutz
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.15,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Dontrag|r
    .turnin 26044 >>Turn in Where Are the Parts?
    .target Sergeant Dontrag
    .isOnQuest 26044
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.18,64.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blastgineer Igore|r
    .accept 26047 >>Accept And That's Why They Call Them Peons...
    .target Blastgineer Igore
    .isQuestTurnedIn 26044 --any of: Where Are the Parts?
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.15,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Dontrag|r
    .accept 26045 >>Accept I Got Your Parts Right Here...
    .target Sergeant Dontrag
    .isQuestTurnedIn 26044 --any of: Where Are the Parts?
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.10,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Utvoch|r
    .accept 26046 >>Accept Between a Rock and a Hard Place
    .target Scout Utvoch
    .isQuestTurnedIn 26044 --any of: Where Are the Parts?
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,66.90,69.85,0
    .goto 65,66.90,69.85,40,0
    .goto 65,67.69,74.59,40,0
    .goto 65,69.38,77.36,40,0
    >>Pick up |cRXP_PICK_Spare Part|r from the ground
    .complete 26045,1 --Spare Part (10)
    .isOnQuest 26045
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,67.71,74.52,0
    .goto 65,67.71,74.52,40,0
    .goto 65,70.08,77.49,40,0
    >>Kill |cRXP_ENEMY_Raging Earth Elementals|r
    .complete 26046,1 --Raging Earth Elemental slain (12)
    .mob Raging Earth Elemental
    .isOnQuest 26046
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,66.58,66.98,0
    .goto 65,66.58,66.98,40,0
    .goto 65,68.95,62.94,40,0
    >>Interact with |cRXP_FRIENDLY_Frightened Peons|r
    .complete 26047,1 --Frightened Peon (10)
    .target Frightened Peon
    .isOnQuest 26047
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.10,64.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Utvoch|r
    .turnin 26046 >>Turn in Between a Rock and a Hard Place
    .target Scout Utvoch
    .isOnQuest 26046
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.15,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Dontrag|r
    .turnin 26045 >>Turn in I Got Your Parts Right Here...
    .target Sergeant Dontrag
    .isOnQuest 26045
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.18,64.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blastgineer Igore|r
    .turnin 26047 >>Turn in And That's Why They Call Them Peons...
    .target Blastgineer Igore
    .isOnQuest 26047
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.15,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Dontrag|r
    .accept 26048 >>Accept Spare Parts Up In Here!
    .target Sergeant Dontrag
    .isQuestTurnedIn 26045 --I Got Your Parts Right Here...
    .isQuestTurnedIn 26046 --Between a Rock and a Hard Place
    .isQuestTurnedIn 26047 --And That's Why They Call Them Peons...
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.23,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Blastgineer Bombgutz|r
    .turnin 26048 >>Turn in Spare Parts Up In Here!
    .target Chief Blastgineer Bombgutz
    .isOnQuest 26048
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.23,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Blastgineer Bombgutz|r
    .accept 26058 >>Accept In Defense of Krom'gar Fortress
    .target Chief Blastgineer Bombgutz
    .isQuestTurnedIn 26048 --any of: Spare Parts Up In Here!
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,66.24,59.38,0
    .goto 65,66.24,59.38,40,0
    .goto 65,69.36,58.20,40,0
    >>Kill |cRXP_ENEMY_Gnomebot Pounders|r
    .complete 26028,1 --Gnomebot Pounder slain (5)
    .mob Gnomebot Pounder
    .isOnQuest 26028
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,67.61,57.53,0
    .goto 65,67.61,57.53,40,0
    .goto 65,69.75,59.80,40,0
    >>Kill |cRXP_ENEMY_Gnome Engineers|r
    .complete 26028,2 --Gnome Engineer slain (20)
    .mob Gnome Engineer
    .isOnQuest 26028
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,64.99,46.96
    >>Kill |cRXP_ENEMY_Cragjaw|r and loot |cRXP_LOOT_Cragjaw's Huge Tooth|r
    .complete 26043,1 --Cragjaw's Huge Tooth (1)
    .mob Cragjaw
    .isOnQuest 26043
step
    .goto 65,58.98,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alithia Fallowmere|r
    .turnin 25741 >>Turn in Preparations for the Future
    .target Alithia Fallowmere
    .isOnQuest 25741
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,63.67,59.82,0
    .goto 65,63.67,59.82,40,0
    .goto 65,65.65,59.82,40,0
    >>Kill |cRXP_ENEMY_Gnome Wing Commanders|r
    .complete 26058,1 --Gnome Wing Commander slain (25)
    .mob Gnome Wing Commander
    .isOnQuest 26058
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,66.24,59.63,0
    .goto 65,66.24,59.63,40,0
    .goto 65,63.79,59.81,40,0
    .goto 65,63.90,63.36,40,0
    >>Kill |cRXP_ENEMY_Gnomish Bombers|r and |cRXP_ENEMY_Gnomish Flying Machines|r
    .complete 26058,2 --Gnomish Bomber (8)
    .mob Gnomish Bomber
    .mob Gnomish Flying Machine
    .isOnQuest 26058
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,65.76,63.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spy-Mistress Anara|r
    .turnin 26043 >>Turn in BEWARE OF CRAGJAW!
    .target Spy-Mistress Anara
    .isOnQuest 26043
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .turnin 26058 >>Turn in In Defense of Krom'gar Fortress
    .target Overlord Krom'gar
    .isOnQuest 26058
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .turnin 26028 >>Turn in Mr. D's Wild Ride
    .target Overlord Krom'gar
    .isOnQuest 26028
step << Tauren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .target Ahanu
    .isOnQuest 6362
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
    .isQuestTurnedIn 6362 --any of: Ride to Thunder Bluff
    .xp <5,1
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .target Tal
    .isOnQuest 6363
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .accept 6364 >>Accept Return to Varg
    .target Tal
    .isQuestTurnedIn 6363 --any of: Tal the Wind Rider Master
    .xp <5,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24550 >>Turn in Journey into Thunder Bluff
    .target Baine Bloodhoof
    .isOnQuest 24550
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 24540 >>Accept War Dance
    .target Baine Bloodhoof
    .isQuestTurnedIn 24550 --any of: Journey into Thunder Bluff
    .xp <8,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 26397 >>Accept Walk With The Earth Mother
    .target Baine Bloodhoof
    .isQuestTurnedIn 24540 --any of: War Dance
    .xp <10,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24540 >>Turn in War Dance
    .target Baine Bloodhoof
    .isQuestComplete 24540
step
    +|cRXP_WARN_That is all of Stonetalon Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: A Journey to Moonglade << Tauren Druid/Troll Druid
    >>|cRXP_FRIENDLY_Mulgore|r: Return to Varg << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: Walk With The Earth Mother << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 26|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.3 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.1 levels of quests, starting around Galen Trollbane), |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.7 levels of quests, starting around Serge Hinott). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Stonetalon Mountains is planned from level 29.|r Load its guide for level 29 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 26 - 33 Stonetalon Mountains
#subweight -26
#name 29-30 Stonetalon Mountains
--RouteBuilder:next
#next Zone Routes (Horde)\30-32 Desolace: around Sorrem;Zone Routes (Horde)\25-30 Northern Stranglethorn;Zone Routes (Horde)\26-31 Arathi Highlands

step
    .goto 65,33.09,59.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Malyk|r
    .accept 25938 >>Accept Help for Desolace
    .target Hierophant Malyk
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
step
    #loop
    .goto 65,50.12,44.01,0
    .goto 65,50.12,44.01,40,0
    .goto 65,51.84,47.92,40,0
    >>Kill |cRXP_ENEMY_Oil Pumps|r
    .complete 25878,1 --Oil Pump slain (4)
    .mob Oil Pump
    .isOnQuest 25878
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .accept 26059 >>Accept Eyes and Ears: Malaka'jin
    .target Overlord Krom'gar
    .isQuestTurnedIn 26058 --any of: In Defense of Krom'gar Fortress
    .xp <26,1
step
    .goto 65,71.06,79.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Valen|r
    .accept 25852 >>Accept All's Clear
    .target Force Commander Valen
    .isQuestTurnedIn 25851 --any of: Dances with Grimtotem
    .xp <26,1
step
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26069 >>Accept Nura Pathfinder
    .unitscan Witch Doctor Jin'Zil
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26059 >>Turn in Eyes and Ears: Malaka'jin
    .unitscan Witch Doctor Jin'Zil
    .isOnQuest 26059
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26060 >>Accept Da Voodoo: Stormer Heart
    .accept 26061 >>Accept Da Voodoo: Ram Horns
    .unitscan Witch Doctor Jin'Zil
    .isQuestTurnedIn 26059 --any of: Eyes and Ears: Malaka'jin
    .xp <26,1
step
    .goto 65,72.05,91.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denni'ka|r
    .accept 26064 >>Accept Fight On Their Stomachs
    .target Denni'ka
    .isQuestTurnedIn 26059 --any of: Eyes and Ears: Malaka'jin
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,67.30,82.37
    >>Kill |cRXP_ENEMY_Cliff Stormer|r and loot |cRXP_LOOT_Stormer Heart|r
    .complete 26060,1 --Stormer Heart (1)
    .mob Cliff Stormer
    .isOnQuest 26060
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,66.62,84.04,0
    .goto 65,66.62,84.04,40,0
    .goto 65,68.12,87.05,40,0
    .goto 65,64.21,81.42,40,0
    >>Kill |cRXP_ENEMY_Stonetalon Rams|r. Loot them for |cRXP_LOOT_Stonetalon Ram Horns|r
    .complete 26061,1 --Stonetalon Ram Horns (6)
    .mob Stonetalon Ram
    .isOnQuest 26061
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26061 >>Turn in Da Voodoo: Ram Horns
    .unitscan Witch Doctor Jin'Zil
    .isOnQuest 26061
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26060 >>Turn in Da Voodoo: Stormer Heart
    .unitscan Witch Doctor Jin'Zil
    .isOnQuest 26060
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26062 >>Accept Da Voodoo: Resonite Crystal
    .unitscan Witch Doctor Jin'Zil
    .isQuestTurnedIn 26060 --Da Voodoo: Stormer Heart
    .isQuestTurnedIn 26061 --Da Voodoo: Ram Horns
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,71.17,91.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subjugator Devo|r
    .accept 26066 >>Accept Reinforcements...
    .target Subjugator Devo
    .isQuestTurnedIn 26060 --Da Voodoo: Stormer Heart
    .isQuestTurnedIn 26061 --Da Voodoo: Ram Horns
    .xp <26,1
step
    #loop
    .goto 65,64.09,89.56,0
    .goto 65,64.09,89.56,40,0
    .goto 65,63.94,84.59,40,0
    .goto 65,60.83,82.90,40,0
    >>Loot the |cRXP_PICK_Kalimdor Eagle Nests|r for |cRXP_LOOT_Kalimdor Eagle Egg|r
    .complete 26064,1 --Kalimdor Eagle Egg (8)
    .isOnQuest 26064
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,60.83,88.26,0
    .goto 65,60.83,88.26,40,0
    .goto 65,59.31,86.75,40,0
    >>Pick up |cRXP_PICK_Resonite Crystal|r from the ground
    .complete 26062,1 --Resonite Crystal (8)
    .isOnQuest 26062
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,60.19,88.00,0
    .goto 65,60.19,88.00,40,0
    .goto 65,61.99,89.41,40,0
    >>Kill |cRXP_ENEMY_Boulderslide Rock Keepers|r, |cRXP_ENEMY_Boulderslide Geomancers|r and |cRXP_ENEMY_Boulderslide Stonepounders|r
    .complete 26066,1 --Boulderslide Rock Keeper (8)
    .mob Boulderslide Rock Keeper
    .mob Boulderslide Geomancer
    .mob Boulderslide Stonepounder
    .isOnQuest 26066
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26062 >>Turn in Da Voodoo: Resonite Crystal
    .unitscan Witch Doctor Jin'Zil
    .isOnQuest 26062
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26067 >>Accept Jin'Zil's Blessing
    .unitscan Witch Doctor Jin'Zil
    .isQuestTurnedIn 26062 --any of: Da Voodoo: Resonite Crystal
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,71.17,91.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subjugator Devo|r
    .turnin 26066 >>Turn in Reinforcements...
    .target Subjugator Devo
    .isOnQuest 26066
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,71.17,91.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subjugator Devo|r
    .accept 26068 >>Accept Kobold Fury!
    .target Subjugator Devo
    .isQuestTurnedIn 26066 --any of: Reinforcements...
    .xp <26,1
step
    .goto 65,72.05,91.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denni'ka|r
    .turnin 26064 >>Turn in Fight On Their Stomachs
    .target Denni'ka
    .isOnQuest 26064
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,71.72,84.66,0
    .goto 65,71.72,84.66,40,0
    .goto 65,73.70,84.44,40,0
    >>Interact with |cRXP_FRIENDLY_Krom'gar Marauders|r
    .complete 26067,1 --Krom'gar Marauder (12)
    .target Krom'gar Marauder
    .isOnQuest 26067
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,73.89,78.31
    >>Click the |cRXP_PICK_Horde Banner|r
    .complete 26068,1 --Horde Banner
    .isOnQuest 26068
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,71.17,91.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subjugator Devo|r
    .turnin 26068 >>Turn in Kobold Fury!
    .target Subjugator Devo
    .isOnQuest 26068
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26067 >>Turn in Jin'Zil's Blessing
    .unitscan Witch Doctor Jin'Zil
    .isOnQuest 26067
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,74.54,97.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jin'Zil|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26073 >>Accept All's Quiet on the Southern Front
    .unitscan Witch Doctor Jin'Zil
    .isQuestTurnedIn 26067 --Jin'Zil's Blessing
    .isQuestTurnedIn 26068 --Kobold Fury!
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .turnin 26073 >>Turn in All's Quiet on the Southern Front
    .target Overlord Krom'gar
    .isOnQuest 26073
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .accept 26074 >>Accept Beginning of the End
    .target Overlord Krom'gar
    .isQuestTurnedIn 26073 --any of: All's Quiet on the Southern Front
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.69,63.61
    >>Take the Krom'gar Hot Air Balloon to the Sludgewerks in Stonetalon Mountains.
    .complete 26074,1 --Krom'gar Hot Air Balloon
    .target Krom'gar Hot Air Balloon
    .isOnQuest 26074
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,52.95,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jibbly Rakit|r
    .turnin 26074 >>Turn in Beginning of the End
    .target Jibbly Rakit
    .isOnQuest 26074
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,52.95,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jibbly Rakit|r
    .accept 26075 >>Accept The Turd Problem
    .target Jibbly Rakit
    .isQuestTurnedIn 26074 --any of: Beginning of the End
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,55.57,41.24,0
    .goto 65,55.57,41.24,40,0
    .goto 65,55.03,46.48,40,0
    >>Kill |cRXP_ENEMY_Pridewing Wyverns|r and |cRXP_ENEMY_Pridewing Consorts|r
    .complete 26075,1 --Pridewing Wyvern (6)
    .mob Pridewing Wyvern
    .mob Pridewing Consort
    .isOnQuest 26075
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,52.95,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jibbly Rakit|r
    .turnin 26075 >>Turn in The Turd Problem
    .target Jibbly Rakit
    .isOnQuest 26075
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,52.95,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jibbly Rakit|r
    .accept 26076 >>Accept Spy Infestation
    .target Jibbly Rakit
    .isQuestTurnedIn 26075 --any of: The Turd Problem
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,53.16,42.08,0
    .goto 65,53.16,42.08,40,0
    .goto 65,52.85,43.93,40,0
    >>Kill |cRXP_ENEMY_Cloaked Alliance Spies|r
    .complete 26076,1 --Cloaked Alliance Spy slain (8)
    .mob Cloaked Alliance Spy
    .isOnQuest 26076
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,52.95,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jibbly Rakit|r
    .turnin 26076 >>Turn in Spy Infestation
    .target Jibbly Rakit
    .isOnQuest 26076
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,52.95,39.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jibbly Rakit|r
    .accept 26077 >>Accept Final Delivery
    .target Jibbly Rakit
    .isQuestTurnedIn 26076 --any of: Spy Infestation
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,51.06,45.65
    >>Interact with |cRXP_FRIENDLY_Krom'gar Hot Air Balloon|r
    .complete 26077,1 --Krom'gar Hot Air Balloon
    .target Krom'gar Hot Air Balloon
    .isOnQuest 26077
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.12,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Grebo|r
    .turnin 26077 >>Turn in Final Delivery
    .target General Grebo
    .isOnQuest 26077
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.12,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Grebo|r
    .accept 26082 >>Accept To Battlescar!
    .target General Grebo
    .isQuestTurnedIn 26077 --any of: Final Delivery
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,40.22,37.63,0
    .goto 65,40.22,37.63,40,0
    .goto 65,41.26,40.67,40,0
    >>Kill |cRXP_ENEMY_Darnassian Glaive Throwers|r, |cRXP_ENEMY_Stonetalon Warders|r, |cRXP_ENEMY_Battlescar Ancients|r and |cRXP_ENEMY_Draenei Paladins|r
    .complete 26082,2 --Darnassian Glaive Thrower (5)
    .mob Darnassian Glaive Thrower
    .mob Stonetalon Warder
    .mob Battlescar Ancient
    .mob Draenei Paladin
    .isOnQuest 26082
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 65,40.71,36.86,0
    .goto 65,40.71,36.86,40,0
    .goto 65,38.97,38.46,40,0
    >>Kill |cRXP_ENEMY_Darnassian Glaive Throwers|r
    .complete 26082,1 --Darnassian Glaive Thrower slain (5)
    .mob Darnassian Glaive Thrower
    .isOnQuest 26082
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
    .goto 65,39.58,30.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sareth'na|r
    .turnin 25912 >>Turn in Seen Better Days
    .target Elder Sareth'na
    .isOnQuest 25912
step
    .goto 65,39.61,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Mistress Geleneth|r
    .turnin 25913 >>Turn in Putting Them to Rest
    .target Sentinel Mistress Geleneth
    .isOnQuest 25913
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.12,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Grebo|r
    .turnin 26082 >>Turn in To Battlescar!
    .target General Grebo
    .isOnQuest 26082
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.53,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chieftain Cliffwalker|r
    .accept 26097 >>Accept Proof of Lies
    .target High Chieftain Cliffwalker
    .isQuestTurnedIn 26082 --any of: To Battlescar!
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,39.69,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orthus Cliffwalker|r
    .turnin 26097 >>Turn in Proof of Lies
    .target Orthus Cliffwalker
    .isOnQuest 26097
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,39.69,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orthus Cliffwalker|r
    .accept 26098 >>Accept Betrayal at the Grove
    .target Orthus Cliffwalker
    .isQuestTurnedIn 26097 --any of: Proof of Lies
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.53,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chieftain Cliffwalker|r
    .turnin 26098 >>Turn in Betrayal at the Grove
    .target High Chieftain Cliffwalker
    .isOnQuest 26098
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.53,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chieftain Cliffwalker|r
    .accept 26099 >>Accept Is This Justice?
    .target High Chieftain Cliffwalker
    .isQuestTurnedIn 26098 --any of: Betrayal at the Grove
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.12,32.77
    >>Kill |cRXP_ENEMY_General Grebo|r
    .complete 26099,1 --General Grebo slain (1)
    .mob General Grebo
    .isOnQuest 26099
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.02,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Masha Cliffwalker|r
    .turnin 26099 >>Turn in Is This Justice?
    .target Masha Cliffwalker
    .isOnQuest 26099
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.02,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Masha Cliffwalker|r
    .accept 26100 >>Accept The General is Dead
    .target Masha Cliffwalker
    .isQuestTurnedIn 26099 --any of: Is This Justice?
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .turnin 26100 >>Turn in The General is Dead
    .target Overlord Krom'gar
    .isOnQuest 26100
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,66.12,63.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .accept 26101 >>Accept Might Makes Right
    .target Overlord Krom'gar
    .isQuestTurnedIn 26100 --any of: The General is Dead
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.57,33.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .turnin 26101 >>Turn in Might Makes Right
    .target Overlord Krom'gar
    .isOnQuest 26101
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.57,33.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Krom'gar|r
    .accept 26115 >>Accept To Be Horde...
    .target Overlord Krom'gar
    .isQuestTurnedIn 26101 --any of: Might Makes Right
    .xp <26,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.49,33.67
    >>Learn what it means to be Horde.
    .complete 26115,1 --Garrosh Hellscream
    .target Garrosh Hellscream
    .isOnQuest 26115
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 65,45.53,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chieftain Cliffwalker|r
    .turnin 26115 >>Turn in To Be Horde...
    .target High Chieftain Cliffwalker
    .isOnQuest 26115
step
    .goto 65,45.53,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Chieftain Cliffwalker|r
    .accept 26134 >>Accept Nothing Left for You Here
    .target High Chieftain Cliffwalker
    .isQuestTurnedIn 26115 --any of: To Be Horde...
    .xp <27,1
step
    +|cRXP_WARN_That is all of Stonetalon Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Desolace|r: Help for Desolace, Nothing Left for You Here
    >>|cRXP_FRIENDLY_Southern Barrens|r: All's Clear, Nura Pathfinder
step
    +|cRXP_WARN_Suggested next zones at level 29|r: |cRXP_FRIENDLY_Desolace|r (about 2.3 levels of quests, starting around Sorrem; 2 quests from here hand in there), |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.1 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.0 levels of quests, starting around Galen Trollbane). Completing this step loads the guide for Desolace --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Stonetalon Mountains is planned from level 32.|r Load its guide for level 32 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 26 - 33 Stonetalon Mountains
#subweight -26
#name 32-33 Stonetalon Mountains
--RouteBuilder:next
#next Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah;Zone Routes (Horde)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts;Zone Routes (Horde)\26-31 Arathi Highlands

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28548 >>Accept Warchief's Command: Desolace!
step
    +|cRXP_WARN_End of the Stonetalon Mountains route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Desolace|r: Warchief's Command: Desolace! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 32|r: |cRXP_FRIENDLY_Desolace|r (about 1.5 levels of quests, starting around Cenarion Researcher Korrah), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.2 levels of quests, starting around Captain Hecklebury Smotts), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.8 levels of quests, starting around Galen Trollbane). Completing this step loads the guide for Desolace --RouteBuilder:next
]])
