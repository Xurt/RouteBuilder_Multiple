-- 86-88 Krasarang Wilds: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 86, 89).
-- Split into 2 guides, listed under "86 - 90 Krasarang Wilds" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Krasarang Wilds.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 86 - 90 Krasarang Wilds
#subweight -86
#name 86-87 Krasarang Wilds: around Ken-Ken
--RouteBuilder:next
#next Zone Routes (Alliance)\87-88 Kun-Lai Summit: around Smokey Sootassle

step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .turnin 29873 >>Turn in Ken-Ken
    .target Ken-Ken
    .isOnQuest 29873
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .accept 30079 >>Accept What's Eating Zhu's Watch?
    .target Ken-Ken
step
    .goto 418,75.84,7.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
    .accept 30080 >>Accept Finding Yi-Mo
    .target Mei Barrelbottom
    .xp <86,1
step
    .goto 418,75.84,7.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
    .complete 30079,4 --Mei Barrelbottom
    .target Mei Barrelbottom
step
    .goto 418,75.84,7.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
    .accept 30080 >>Accept Finding Yi-Mo
    .target Mei Barrelbottom
step
    .goto 418,29.28,51.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supplies Kodo|r. |cRXP_WARN_This NPC walks a patrol route|r
    .unitscan Supplies Kodo
    .home >>Set your Hearthstone to Supplies Kodo's inn
step
    .goto 418,75.44,9.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yun|r
    .complete 30079,3 --Yun
    .target Yun
step
    .goto 418,76.60,8.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Despondent Warden of Zhu|r
    .complete 30079,1 --Despondent Warden of Zhu
    .target Despondent Warden of Zhu
step
    .isOnQuest 30079,30080
    .goto 418,76.74,8.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gee Hung|r
    .fp Zhu's Watch >>Get the Zhu's Watch flight path
    .target Gee Hung
    .subzoneskip 6000,1
step
    .goto 418,77.54,8.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunni|r
    .complete 30079,2 --Sunni
    .target Sunni
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .turnin 30079 >>Turn in What's Eating Zhu's Watch? while you are here
    .isQuestComplete 30079
    .target Ken-Ken
step
    .goto 418,81.31,6.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yi-Mo Longbrow|r
    .complete 30080,1 --Yi-Mo Longbrow
    .target Yi-Mo Longbrow
step
    .goto 418,81.31,6.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yi-Mo Longbrow|r
    .turnin 30080 >>Turn in Finding Yi-Mo
    .accept 30082 >>Accept Cheer Up, Yi-Mo
    .target Yi-Mo Longbrow
step
    .goto 418,81.31,6.84
    >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow|r
    .complete 30082,1 --Yi-Mo Longbrow
    .target Yi-Mo Longbrow
step
    .goto 418,75.84,7.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
    .turnin 30082 >>Turn in Cheer Up, Yi-Mo
    .accept 30091 >>Accept Tears of Pandaria
    .target Mei Barrelbottom
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .turnin 30079 >>Turn in What's Eating Zhu's Watch?
    .accept 30081 >>Accept Materia Medica
    .target Ken-Ken
step
    #loop
    .goto 418,75.73,11.07,0
    .goto 418,75.73,11.07,40,0
    .goto 418,72.32,10.11,40,0
    >>Kill |cRXP_ENEMY_Weeping Horrors|r
    >>Kill |cRXP_ENEMY_Weeping Horrors|r. Loot them for |cRXP_LOOT_Salty Core|r
    >>Loot the |cRXP_PICK_Rain-Slick Honeycombs|r for |cRXP_LOOT_Chunk of Honeycomb|r
    >>Pick up |cRXP_PICK_Slick Mudfish|r from the ground
    .complete 30091,1 --Weeping Horror slain (12)
    .complete 30081,1 --Salty Core (4)
    .complete 30081,3 --Chunk of Honeycomb (4)
    .complete 30081,2 --Slick Mudfish (4)
    .mob Weeping Horror
step
    .goto 418,75.84,7.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
    .turnin 30091 >>Turn in Tears of Pandaria
    .accept 30083 >>Accept Securing the Province
    .accept 30084 >>Accept Borderlands
    .target Mei Barrelbottom
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .turnin 30081 >>Turn in Materia Medica
    .accept 30088 >>Accept Why So Serious?
    .target Ken-Ken
step
    .goto 418,71.28,8.89
    >>Kill |cRXP_ENEMY_Wildscale Herbalist|r and |cRXP_ENEMY_Wildscale Saurok|r
    .complete 30083,1 --Wildscale Herbalist (1)
    .mob Wildscale Herbalist
    .mob Wildscale Saurok
step
    #loop
    .goto 418,71.23,17.56,0
    .goto 418,71.23,17.56,40,0
    .goto 418,72.75,18.20,40,0
    >>Click the |cRXP_PICK_Memorial Flame of Rin|r
    >>Click the |cRXP_PICK_Memorial Flame of Zhu|r
    >>Click the |cRXP_PICK_Memorial Flame of Po|r
    >>Kill |cRXP_ENEMY_Krasari Stalkers|r. Loot them for |cRXP_LOOT_Huge Panther Fang|r
    .complete 30084,3 --Memorial Flame of Rin
    .complete 30084,1 --Memorial Flame of Zhu
    .complete 30084,2 --Memorial Flame of Po
    .complete 30088,1 --Huge Panther Fang (18)
    .mob Krasari Stalker
step
    .goto 418,75.84,7.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
    .turnin 30083 >>Turn in Securing the Province
    .turnin 30084 >>Turn in Borderlands
    .target Mei Barrelbottom
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .turnin 30088 >>Turn in Why So Serious?
    .target Ken-Ken
    .isQuestComplete 30088
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .accept 30089 >>Accept Apply Directly to the Forehead
    .target Ken-Ken
    .isQuestTurnedIn 30088 --any of: Why So Serious?
    .xp <86,1
step
    .goto 418,76.60,8.80
    >>Interact with |cRXP_FRIENDLY_Despondent Warden of Zhu|r
    .complete 30089,1 --Despondent Warden of Zhu
    .target Despondent Warden of Zhu
    .isOnQuest 30089
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .turnin 30089 >>Turn in Apply Directly to the Forehead
    .target Ken-Ken
    .isOnQuest 30089
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .accept 30090 >>Accept Zhu's Despair
    .target Ken-Ken
    .isQuestTurnedIn 30089 --any of: Apply Directly to the Forehead
    .xp <86,1
step
    .goto 418,76.60,7.80
    >>Kill |cRXP_ENEMY_Essence of Despairs|r
    .complete 30090,1 --Essence of Despair slain (8)
    .mob Essence of Despair
    .isOnQuest 30090
step
    .goto 418,76.49,8.78
    >>Interact with |cRXP_FRIENDLY_Yi-Mo Longbrow|r
    .complete 30090,2 --Yi-Mo Longbrow
    .target Yi-Mo Longbrow
    .isOnQuest 30090
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .turnin 30090 >>Turn in Zhu's Despair
    .target Ken-Ken
    .isOnQuest 30090
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,75.84,7.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
    .accept 30178 >>Accept Into the Wilds
    .target Mei Barrelbottom
    .isQuestTurnedIn 30090 --any of: Zhu's Despair
    .xp <86,1
step
    .goto 418,67.63,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
    .accept 30352 >>Accept Crane Mastery
    .accept 30353 >>Accept Profit Mastery
    .target Daggle Bombstrider
step << Horde
    .isOnQuest 30352,30123,30124
    .goto 418,59.20,24.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lira Skysplitter|r
    .fp Thunder Cleft >>Get the Thunder Cleft flight path
    .target Lira Skysplitter
    .subzoneskip 6007,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,67.38,32.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 30274 >>Accept The Arcanic Oubliette
    .target !
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along30
    >>As you go: Click the |cRXP_PICK_Southwest Oubliette Shackle|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30274,3 --Southwest Oubliette Shackle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along30
    .goto 418,67.94,31.54
    >>Click the |cRXP_PICK_Northeast Oubliette Shackle|r
    >>Click the |cRXP_PICK_Northwest Oubliette Shackle|r
    .complete 30274,1 --Northeast Oubliette Shackle
    .complete 30274,2 --Northwest Oubliette Shackle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,66.20,30.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhu's Watch Courier|r
    .complete 30178,1 --Zhu's Watch Courier
    .target Zhu's Watch Courier
    .isOnQuest 30178
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,66.71,33.69
    >>Click the |cRXP_PICK_Southwest Oubliette Shackle|r
    .complete 30274,3 --Southwest Oubliette Shackle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.45,32.64,0
    .goto 418,67.45,32.64,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,15.09,39.42,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30274 >>Turn in The Arcanic Oubliette
    .accept 30344 >>Accept The Lost Dynasty
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,67.45,32.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .accept 30384 >>Accept Blind Them!
    .target Lyalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.36,32.75,0
    .goto 418,67.36,32.75,40,0
    .goto 418,66.41,32.54,40,0
    .goto 418,25.20,34.54,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 29874 >>Turn in Kang Bramblestaff
    .unitscan Kang Bramblestaff
    .isOnQuest 29874
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.36,32.75,0
    .goto 418,67.36,32.75,40,0
    .goto 418,66.41,32.54,40,0
    .goto 418,25.20,34.54,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30350 >>Accept Squirmy Delight
    .unitscan Kang Bramblestaff
step << Alliance
    .isOnQuest 30350,30384,30344
    .goto 418,67.769,32.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tylen Moonfeather|r
    .fp The Incursion >> Get The Incursion flight path
    .target Tylen Moonfeather
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Jungle Skitterers|r. Loot them for |cRXP_LOOT_Intact Skitterer Glands|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30350,1 --Intact Skitterer Glands (5)
    .mob Jungle Skitterer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along37
    .goto 418,64.90,24.76
    >>Kill |cRXP_ENEMY_Sunwalker Scout|r
    .complete 30384,1 --Sunwalker Scout slain (1)
    .mob Sunwalker Scout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along39
    >>As you go: Loot the |cRXP_PICK_Ancient Dynastic Tablets|r for |cRXP_LOOT_Dynastic Tablet|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30344,1 --Dynastic Tablet (6)
step
    #loop
    .goto 418,67.48,26.03,0
    .goto 418,67.48,26.03,40,0
    .goto 418,64.95,25.04,40,0
    .goto 418,65.26,29.59,40,0
    >>Kill |cRXP_ENEMY_Jungle Skitterers|r. Loot them for |cRXP_LOOT_Intact Skitterer Glands|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Carp Hunters|r
    >>Kill |cRXP_ENEMY_Krasari Huntress|r and loot |cRXP_LOOT_Vial of Tiger Blood|r
    .complete 30350,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Intact Skitterer Glands (5)
    .complete 30352,1 --Carp Hunter slain (12)
    .complete 30353,1 --Vial of Tiger Blood (1)
    .mob Jungle Skitterer << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Carp Hunter
    .mob Krasari Huntress
step
    #label Along39
    .goto 418,67.63,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
    .turnin 30352 >>Turn in Crane Mastery
    .turnin 30353 >>Turn in Profit Mastery
    .accept 31262 >>Accept Crane Mastery: Needlebeak
    .accept 31260 >>Accept Profit Mastery: Chasheen
    .target Daggle Bombstrider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,68.90,23.31,0
    .goto 418,68.90,23.31,40,0
    .goto 418,67.44,21.65,40,0
    >>Loot the |cRXP_PICK_Ancient Dynastic Tablets|r for |cRXP_LOOT_Dynastic Tablet|r
    .complete 30344,1 --Dynastic Tablet (6)
step
    .goto 418,62.87,20.45
    >>Kill |cRXP_ENEMY_Needlebeak|r and loot |cRXP_LOOT_The Needlebeak|r
    .complete 31262,1 --The Needlebeak (1)
    .mob Needlebeak
step
    .goto 418,61.70,32.14
    >>Kill |cRXP_ENEMY_Chasheen|r and loot |cRXP_LOOT_Ancient Tiger's Blood|r
    .complete 31260,1 --Ancient Tiger's Blood (1)
    .mob Chasheen
step
    .goto 418,67.63,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
    .turnin 31262 >>Turn in Crane Mastery: Needlebeak
    .turnin 31260 >>Turn in Profit Mastery: Chasheen
    .target Daggle Bombstrider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.45,32.64,0
    .goto 418,67.45,32.64,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,15.09,39.42,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30344 >>Turn in The Lost Dynasty
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,67.45,32.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .turnin 30384 >>Turn in Blind Them!
    .target Lyalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.36,32.75,0
    .goto 418,67.36,32.75,40,0
    .goto 418,66.41,32.54,40,0
    .goto 418,25.20,34.54,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30350 >>Turn in Squirmy Delight
    .accept 30351 >>Accept Lotus Tea
    .unitscan Kang Bramblestaff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,67.45,32.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .accept 30349 >>Accept Threat from Dojan
    .target Lyalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.45,32.64,0
    .goto 418,67.45,32.64,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,15.09,39.42,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30346 >>Accept Where are the Pools
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along49
    >>As you go: Loot the |cRXP_PICK_Imperial Lotus|r for |cRXP_LOOT_Imperial Lotus Leaves|r. Kill |cRXP_ENEMY_Dojani Reclaimers|r. Kill |cRXP_ENEMY_Dojani Enforcers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30351,1 --Imperial Lotus Leaves (20)
    .complete 30349,2 --Dojani Reclaimer slain (6)
    .complete 30349,3 --Dojani Enforcer slain (4)
    .mob Dojani Reclaimer
    .mob Dojani Enforcer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along49
    .goto 418,55.52,34.47
    >>Kill |cRXP_ENEMY_Dojani Dominator|r and loot |cRXP_LOOT_Dojani Orders|r
    .complete 30346,1 --Dojani Orders (1)
    .mob Dojani Dominator
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.45,32.64,0
    .goto 418,67.45,32.64,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,15.09,39.42,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30346 >>Turn in Where are the Pools
    .accept 30347 >>Accept The Pools of Youth
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,52.02,33.03
    >>Open the |cRXP_PICK_Water of Youth|r. Loot it for |cRXP_LOOT_The Water of Youth|r
    .complete 30347,1 --The Water of Youth (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,53.35,36.63,0
    .goto 418,53.35,36.63,40,0
    .goto 418,54.61,39.72,40,0
    >>Loot the |cRXP_PICK_Imperial Lotus|r for |cRXP_LOOT_Imperial Lotus Leaves|r
    >>Kill |cRXP_ENEMY_Dojani Surveyors|r
    >>Kill |cRXP_ENEMY_Dojani Reclaimers|r
    >>Kill |cRXP_ENEMY_Dojani Enforcers|r
    .complete 30351,1 --Imperial Lotus Leaves (20)
    .complete 30349,1 --Dojani Surveyor slain (8)
    .complete 30349,2 --Dojani Reclaimer slain (6)
    .complete 30349,3 --Dojani Enforcer slain (4)
    .mob Dojani Surveyor
    .mob Dojani Reclaimer
    .mob Dojani Enforcer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.36,32.75,0
    .goto 418,67.36,32.75,40,0
    .goto 418,66.41,32.54,40,0
    .goto 418,25.20,34.54,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30351 >>Turn in Lotus Tea
    .unitscan Kang Bramblestaff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,67.45,32.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .turnin 30349 >>Turn in Threat from Dojan
    .target Lyalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.45,32.64,0
    .goto 418,67.45,32.64,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,15.09,39.42,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30347 >>Turn in The Pools of Youth
    .accept 30348 >>Accept Immortality?
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,67.45,32.64
    >>Observe Vaeldrin as he tests the water of youth.
    .complete 30348,1 --Lorekeeper Vaeldrin
    .target Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,67.45,32.64,0
    .goto 418,67.45,32.64,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,15.09,39.42,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30348 >>Turn in Immortality?
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,67.45,32.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .accept 30363 >>Accept Going on the Offensive
    .target Lyalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along60
    >>As you go: Kill |cRXP_ENEMY_Incursion Sentinel|r and loot |cRXP_LOOT_Sentinel Scout's Report|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30363,1 --Sentinel Scout's Report (1)
    .mob Incursion Sentinel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,44.20,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
    .turnin 30178 >>Turn in Into the Wilds
    .target Koro Mistwalker
    .isOnQuest 30178
step
    #label Along60
    .goto 418,44.20,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
    .accept 30269 >>Accept Unsafe Passage
    .target Koro Mistwalker
    .isQuestTurnedIn 30133,30178 --any of: Into the Wilds, Into the Wilds
    .xp <86,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,43.92,43.39
    >>Kill |cRXP_ENEMY_Incursion Sentinel|r and loot |cRXP_LOOT_Sentinel Scout's Report|r
    .complete 30363,1 --Sentinel Scout's Report (1)
    .mob Incursion Sentinel
step
    .goto 418,43.86,36.77
    >>Accompany Koro to Crane Wing Refuge
    .complete 30269,1 --Accompany Koro to Crane Wing Refuge
    .isOnQuest 30269
step
    .goto 418,40.58,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
    .turnin 30269 >>Turn in Unsafe Passage
    .target Koro Mistwalker
    .isOnQuest 30269
step
    .goto 418,40.58,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
    .accept 30270 >>Accept Blinding the Riverblades
    .accept 30694 >>Accept Tread Lightly
    .target Koro Mistwalker
    .isQuestTurnedIn 30269 --any of: Unsafe Passage
    .xp <86,1
step
    .goto 418,40.49,34.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .accept 30268 >>Accept The Murksweats
    .target Anduin Wrynn
    .isQuestTurnedIn 30269 --any of: Unsafe Passage
    .xp <86,1
step
    .goto 418,43.55,32.98
    >>Click the |cRXP_PICK_Riverblade Spike Trap|r
    .complete 30694,1 --Riverblade Spike Trap
    .isOnQuest 30694
step
    #loop
    .goto 418,37.75,40.67,0
    .goto 418,37.75,40.67,40,0
    .goto 418,35.50,36.51,40,0
    >>Kill |cRXP_ENEMY_Murkscale Strikers|r. Loot them for |cRXP_LOOT_Murkscale Head|r
    .complete 30268,1 --Murkscale Head (6)
    .mob Murkscale Striker
    .isOnQuest 30268
step
    #loop
    .goto 418,47.28,36.67,0
    .goto 418,47.28,36.67,40,0
    .goto 418,46.13,30.18,40,0
    >>Kill |cRXP_ENEMY_Riverblade Pathstalkers|r
    .complete 30270,1 --Riverblade Pathstalker slain (8)
    .mob Riverblade Pathstalker
    .isOnQuest 30270
step
    .goto 418,40.49,34.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 30268 >>Turn in The Murksweats
    .target Anduin Wrynn
    .isOnQuest 30268
step
    .goto 418,40.58,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
    .turnin 30270 >>Turn in Blinding the Riverblades
    .target Koro Mistwalker
    .isOnQuest 30270
step
    .goto 418,40.58,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
    .turnin 30694 >>Turn in Tread Lightly
    .target Koro Mistwalker
    .isOnQuest 30694
step
    .goto 418,40.58,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
    .accept 30695 >>Accept Ahead on the Way
    .accept 30272 >>Accept Striking the Rain
    .target Koro Mistwalker
    .isQuestTurnedIn 30268 --The Murksweats
    .isQuestTurnedIn 30270 --Blinding the Riverblades
    .isQuestTurnedIn 30694 --Tread Lightly
    .xp <86,1
step
    .goto 418,40.63,33.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .accept 30271 >>Accept Sha Can Awe
    .target Anduin Wrynn
    .isQuestTurnedIn 30268 --The Murksweats
    .isQuestTurnedIn 30270 --Blinding the Riverblades
    .isQuestTurnedIn 30694 --Tread Lightly
    .xp <86,1
step
    .goto 418,43.11,54.52
    >>Kill |cRXP_ENEMY_Maw of Despair|r and |cRXP_ENEMY_Kill Credit: Groundskeeping (East)|r
    .complete 30695,2 --Maw of Despair (1)
    .mob Maw of Despair
    .mob Kill Credit: Groundskeeping (East)
    .isOnQuest 30695
step
    .goto 418,37.92,54.29
    >>Kill |cRXP_ENEMY_Maw of Despair|r and |cRXP_ENEMY_Kill Credit: Groundskeeping (West)|r
    .complete 30695,1 --Maw of Despair (1)
    .mob Maw of Despair
    .mob Kill Credit: Groundskeeping (West)
    .isOnQuest 30695
step
    #loop
    .goto 418,40.40,54.80,0
    .goto 418,40.40,54.80,40,0
    .goto 418,40.53,50.31,40,0
    .goto 418,40.16,46.67,40,0
    >>Kill |cRXP_ENEMY_Haunt of Despairs|r, |cRXP_ENEMY_Incarnation of Despairs|r and |cRXP_ENEMY_Source of Despairs|r
    .complete 30272,1 --Haunt of Despair (18)
    .mob Haunt of Despair
    .mob Incarnation of Despair
    .mob Source of Despair
    .isOnQuest 30272
step
    #loop
    .goto 418,39.79,48.35,0
    .goto 418,39.79,48.35,40,0
    .goto 418,42.41,50.50,40,0
    >>Kill |cRXP_ENEMY_Hopeless Monks|r, |cRXP_ENEMY_Hopeless Acolytes|r and |cRXP_ENEMY_Kill Credit: Sha Can Awes|r
    .complete 30271,1 --Hopeless Monk (10)
    .mob Hopeless Monk
    .mob Hopeless Acolyte
    .mob Kill Credit: Sha Can Awe
    .isOnQuest 30271
step
    .goto 418,40.63,33.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 30271 >>Turn in Sha Can Awe
    .target Anduin Wrynn
    .isOnQuest 30271
step
    .goto 418,40.63,33.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 30272 >>Turn in Striking the Rain
    .target Anduin Wrynn
    .isOnQuest 30272
step
    .goto 418,40.63,33.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 30695 >>Turn in Ahead on the Way
    .target Anduin Wrynn
    .isOnQuest 30695
step
    .goto 418,40.63,33.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .accept 30273 >>Accept In the House of the Red Crane
    .target Anduin Wrynn
    .isQuestTurnedIn 30271 --Sha Can Awe
    .isQuestTurnedIn 30272 --Striking the Rain
    .isQuestTurnedIn 30695 --Ahead on the Way
    .xp <86,1
step
    .goto 418,40.40,54.60
    >>Kill |cRXP_ENEMY_Sha of Despair|r
    .complete 30273,1 --Sha of Despair slain (1)
    .mob Sha of Despair
    .isOnQuest 30273
step
    .goto 418,40.42,49.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chi-Ji|r
    .turnin 30273 >>Turn in In the House of the Red Crane
    .target Chi-Ji
    .isOnQuest 30273
step << Horde Horde
    .goto 418,29.001,50.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Munch Windhoof|r
    .fp Dawnchaser Retreat >> Get the Dawnchaser Retreat flight path
    .target Munch Windhoof
    .subzoneskip 6013,1
step
    .goto 418,51.66,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Tuna|r
    .accept 30667 >>Accept Particular Plumage
    .target Tony Tuna
step
    .goto 418,51.53,76.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
    .accept 30666 >>Accept Sudden, Unexpected Crocolisk Aggression
    .target Jay Cloudfall
step
    #completewith Along86
    >>As you go: Kill |cRXP_ENEMY_Dusky Lories|r. Loot them for |cRXP_LOOT_Dusky Tailfeather|r. Kill |cRXP_ENEMY_Mortbreath Skulkers|r and |cRXP_ENEMY_Mortbreath Snappers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30667,3 --Dusky Tailfeather (6)
    .complete 30666,1 --Mortbreath Skulker (8)
    .mob Dusky Lory
    .mob Mortbreath Skulker
    .mob Mortbreath Snapper
step
    #label Along86
    .goto 418,44.75,65.64
    >>Kill |cRXP_ENEMY_Emerald Lories|r. Loot them for |cRXP_LOOT_Emerald Tailfeather|r
    .complete 30667,1 --Emerald Tailfeather (6)
    .mob Emerald Lory
step
    #loop
    .goto 418,45.59,66.53,0
    .goto 418,45.59,66.53,40,0
    .goto 418,46.99,69.69,40,0
    .goto 418,48.79,71.24,40,0
    >>Kill |cRXP_ENEMY_Crimson Lories|r. Loot them for |cRXP_LOOT_Crimson Tailfeather|r
    >>Kill |cRXP_ENEMY_Dusky Lories|r. Loot them for |cRXP_LOOT_Dusky Tailfeather|r
    >>Kill |cRXP_ENEMY_Mortbreath Skulkers|r and |cRXP_ENEMY_Mortbreath Snappers|r
    .complete 30667,2 --Crimson Tailfeather (6)
    .complete 30667,3 --Dusky Tailfeather (6)
    .complete 30666,1 --Mortbreath Skulker (8)
    .mob Crimson Lory
    .mob Dusky Lory
    .mob Mortbreath Skulker
    .mob Mortbreath Snapper
step
    .goto 418,51.66,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Tuna|r
    .turnin 30667 >>Turn in Particular Plumage
    .target Tony Tuna
step
    .goto 418,51.53,76.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
    .turnin 30666 >>Turn in Sudden, Unexpected Crocolisk Aggression
    .accept 30668 >>Accept Build Your Own Raft
    .target Jay Cloudfall
step
    .goto 418,52.41,76.14
    >>Pick up |cRXP_PICK_Tough Kelp|r from the ground
    >>Pick up |cRXP_PICK_Spare Plank|r from the ground
    .complete 30668,2 --Tough Kelp (1)
    .complete 30668,1 --Spare Plank (4)
step
    .goto 418,51.53,76.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
    .turnin 30668 >>Turn in Build Your Own Raft
    .accept 30669 >>Accept The Lorewalker on the Lake
    .target Jay Cloudfall
step
    .goto 418,51.67,76.57
    >>Click the |cRXP_PICK_Your Raft|r
    .complete 30669,1 --Your Raft
step
    .goto 418,45.98,78.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Ana Wu|r
    .turnin 30669 >>Turn in The Lorewalker on the Lake
    .accept 30671 >>Accept Wisdom Has A Price
    .accept 30691 >>Accept Misery
    .target Wise Ana Wu
step
    .goto 418,46.20,83.20
    >>Kill |cRXP_ENEMY_Nahassa|r
    .complete 30691,1 --Nahassa slain (1)
    .mob Nahassa
step
    #completewith Along95
    >>As you go: Kill |cRXP_ENEMY_Great Grey Sharks|r and |cRXP_ENEMY_Nayeli Hammerheads|r. Loot them for |cRXP_LOOT_Shark Fillet|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30671,1 --Shark Fillet (5)
    .mob Great Grey Shark
    .mob Nayeli Hammerhead
step
    #label Along95
    .goto 418,45.98,78.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Ana Wu|r
    .turnin 30691 >>Turn in Misery
    .target Wise Ana Wu
step
    #loop
    .goto 418,46.80,79.60,0
    .goto 418,46.80,79.60,40,0
    .goto 418,44.80,79.20,40,0
    .goto 418,49.40,79.20,40,0
    >>Kill |cRXP_ENEMY_Great Grey Sharks|r and |cRXP_ENEMY_Nayeli Hammerheads|r. Loot them for |cRXP_LOOT_Shark Fillet|r
    .complete 30671,1 --Shark Fillet (5)
    .mob Great Grey Shark
    .mob Nayeli Hammerhead
step
    .goto 418,45.98,78.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Ana Wu|r
    .turnin 30671 >>Turn in Wisdom Has A Price
    .accept 30672 >>Accept Balance
    .target Wise Ana Wu
step
    #completewith Along98
    >>As you go: Kill |cRXP_ENEMY_Unga Fish-Getters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30672,1 --Unga Fish-Getter slain (10)
    .mob Unga Fish-Getter
step
    #label Along98
    .goto 418,48.62,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 30674 >>Accept Balance Without Violence
    .target !
step
    #completewith Drop30675x1
    >>|cRXP_LOOT_Confusing Treasure Map|r can drop from |cRXP_ENEMY_Unga Fish-Getter|r, |cRXP_ENEMY_Unga Treasure-Hider|r. Use it to start the quest if you get one
    .collect 80827,1,30675 --Confusing Treasure Map (1)
    .accept 30675 >>Accept Buried Hozen Treasure
    .use 80827
step
    #label Drop30675x1
    #loop
    .goto 418,48.38,85.72,0
    .goto 418,48.38,85.72,40,0
    .goto 418,51.82,84.11,40,0
    >>Kill |cRXP_ENEMY_Unga Fish-Getters|r
    .complete 30672,1 --Unga Fish-Getter slain (10)
    .mob Unga Fish-Getter
step
    #loop
    .goto 418,52.03,84.65,0
    .goto 418,52.03,84.65,40,0
    .goto 418,42.51,86.73,40,0
    .goto 418,41.13,88.09,40,0
    .goto 418,41.37,88.05,40,0
    >>Interact with |cRXP_FRIENDLY_Flailing Carps|r
    .complete 30674,1 --Flailing Carp (6)
    .target Flailing Carp
step
    .goto 418,41.99,88.46
    >>Open the |cRXP_PICK_Lump of Sand|r. Loot it for |cRXP_LOOT_Buried Hozen Treasure|r
    .complete 30675,1 --Buried Hozen Treasure (1)
step
    .goto 418,48.62,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 30674 >>Turn in Balance Without Violence
    .target ?
step
    .goto 418,48.62,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 30675 >>Turn in Buried Hozen Treasure
    .target ?
    .isOnQuest 30675
step
    .goto 418,51.53,76.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
    .turnin 30672 >>Turn in Balance
    .target Jay Cloudfall
step << Horde
    .goto 418,29.001,50.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Munch Windhoof|r
    .fp Dawnchaser Retreat >> Get the Dawnchaser Retreat flight path
    .target Munch Windhoof
    .subzoneskip 6013,1
step
    .goto 418,29.67,39.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tired Shushen|r
    .accept 30168 >>Accept Thieving Raiders
    .accept 30169 >>Accept Raid Leader Slovan
    .target Tired Shushen
step
    #completewith Along106
    >>As you go: Kill |cRXP_ENEMY_Riverblade Slayers|r and |cRXP_ENEMY_Riverblade Flesh-hunters|r. Loot them for |cRXP_LOOT_Pillaged Jinyu Loot|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30168,1 --Pillaged Jinyu Loot (1)
    .mob Riverblade Slayer
    .mob Riverblade Flesh-hunter
step
    #label Along106
    .goto 418,31.80,28.99
    >>Kill |cRXP_ENEMY_Slovan|r
    .complete 30169,1 --Slovan slain (1)
    .mob Slovan
step
    #loop
    .goto 418,33.51,42.57,0
    .goto 418,33.51,42.57,40,0
    .goto 418,29.89,42.83,40,0
    >>Kill |cRXP_ENEMY_Riverblade Slayers|r and |cRXP_ENEMY_Riverblade Flesh-hunters|r. Loot them for |cRXP_LOOT_Pillaged Jinyu Loot|r
    .complete 30168,1 --Pillaged Jinyu Loot (1)
    .mob Riverblade Slayer
    .mob Riverblade Flesh-hunter
step
    .goto 418,29.67,39.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tired Shushen|r
    .turnin 30168 >>Turn in Thieving Raiders
    .turnin 30169 >>Turn in Raid Leader Slovan
    .target Tired Shushen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,24.70,34.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .turnin 30363 >>Turn in Going on the Offensive
    .accept 30356 >>Accept Sever Their Supply Line
    .accept 30354 >>Accept No Sister Left Behind
    .target Lyalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,25.20,34.54,0
    .goto 418,25.20,34.54,40,0
    .goto 418,66.41,32.54,40,0
    .goto 418,67.36,32.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30355 >>Accept Re-Reclaim
    .unitscan Kang Bramblestaff
step << Alliance
    .goto 418,25.141,33.461
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maylen Moonfeather|r
    .fp Sentinel Basecamp >> Get the Sentinel Basecamp flight path
    .target Maylen Moonfeather
    .subzoneskip 6016,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,26.26,40.89,0
    .goto 418,26.26,40.89,40,0
    .goto 418,23.85,41.72,40,0
    .goto 418,26.22,46.71,40,0
    >>Kill |cRXP_ENEMY_Captive Travellers|r and |cRXP_ENEMY_Captive Sentinels|r
    >>Pick up |cRXP_PICK_Mogu Artifact|r from the ground
    >>Kill |cRXP_ENEMY_Korjan Reclaimers|r
    .complete 30354,1 --Captive Traveller (8)
    .complete 30355,1 --Mogu Artifact (10)
    .complete 30356,1 --Korjan Reclaimer slain (8)
    .mob Captive Traveller
    .mob Captive Sentinel
    .mob Korjan Reclaimer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,25.20,34.54,0
    .goto 418,25.20,34.54,40,0
    .goto 418,66.41,32.54,40,0
    .goto 418,67.36,32.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30355 >>Turn in Re-Reclaim
    .unitscan Kang Bramblestaff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,24.70,34.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .turnin 30354 >>Turn in No Sister Left Behind
    .turnin 30356 >>Turn in Sever Their Supply Line
    .target Lyalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,29.06,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Han|r
    .accept 30361 >>Accept The Mantid
    .target Ambassador Han
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along116
    >>As you go: Kill |cRXP_ENEMY_Ik'thik Vanguards|r and |cRXP_ENEMY_Ik'thik Precursors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 30361,1 --Ik'thik Vanguard (8)
    .mob Ik'thik Vanguard
    .mob Ik'thik Precursor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,15.09,39.42,0
    .goto 418,15.09,39.42,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,67.45,32.64,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 30357 >>Accept The Stoneplow Convoy
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along116
    #loop
    .goto 418,15.92,36.63,0
    .goto 418,15.92,36.63,40,0
    .goto 418,14.23,35.62,40,0
    >>Interact with |cRXP_FRIENDLY_Stoneplow Envoys|r
    .complete 30357,1 --Stoneplow Envoy (7)
    .target Stoneplow Envoy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,16.97,36.75,0
    .goto 418,16.97,36.75,40,0
    .goto 418,15.96,41.48,40,0
    >>Kill |cRXP_ENEMY_Ik'thik Vanguards|r and |cRXP_ENEMY_Ik'thik Precursors|r
    .complete 30361,1 --Ik'thik Vanguard (8)
    .mob Ik'thik Vanguard
    .mob Ik'thik Precursor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,15.70,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Len|r
    .turnin 30361 >>Turn in The Mantid
    .target Ambassador Len
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,15.09,39.42,0
    .goto 418,15.09,39.42,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,67.45,32.64,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30357 >>Turn in The Stoneplow Convoy
    .accept 30359 >>Accept The Lord Reclaimer
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,23.59,48.69
    >>Kill |cRXP_ENEMY_Groundbreaker Brojai|r
    .complete 30359,1 --Groundbreaker Brojai slain (1)
    .mob Groundbreaker Brojai
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 418,15.09,39.42,0
    .goto 418,15.09,39.42,40,0
    .goto 418,24.69,33.99,40,0
    .goto 418,67.45,32.64,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 30359 >>Turn in The Lord Reclaimer
    .accept 30445 >>Accept The Waters of Youth
    .unitscan Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,24.69,33.99
    >>Give Vaeldrin's message to Lyalia.
    .complete 30445,1 --Lorekeeper Vaeldrin
    .target Lorekeeper Vaeldrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,24.70,34.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .turnin 30445 >>Turn in The Waters of Youth
    .target Lyalia
step << Alliance Alliance
    .goto 418,25.141,33.461
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maylen Moonfeather|r
    .fp Sentinel Basecamp >> Get the Sentinel Basecamp flight path
    .target Maylen Moonfeather
    .subzoneskip 6016,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,24.70,34.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
    .accept 30360 >>Accept Warn Stoneplow
    .target Lyalia
    .isQuestTurnedIn 30273 --In the House of the Red Crane
    .xp <86,1
step
    +|cRXP_WARN_That is all of Krasarang Wilds for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Valley of the Four Winds|r: Warn Stoneplow << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Valley of the Four Winds and back here|r: Why So Serious?
step
    +|cRXP_WARN_Suggested next zones at level 86|r: |cRXP_FRIENDLY_Kun-Lai Summit|r (about 0.6 levels of quests, starting around Smokey Sootassle). Completing this step loads the guide for Kun-Lai Summit --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Krasarang Wilds is planned from level 89.|r Load its guide for level 89 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 86 - 90 Krasarang Wilds
#subweight -86
#name 89-90 Krasarang Wilds

step
    #loop
    .goto 418,71.22,16.25,0
    .goto 418,71.22,16.25,40,0
    .goto 418,74.02,18.60,40,0
    >>Kill |cRXP_ENEMY_Krasari Stalkers|r. Loot them for |cRXP_LOOT_Huge Panther Fang|r
    .complete 30088,1 --Huge Panther Fang (18)
    .mob Krasari Stalker
    .isOnQuest 30088
step
    .goto 418,76.21,7.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
    .turnin 30088 >>Turn in Why So Serious?
    .target Ken-Ken
    .isQuestComplete 30088
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,40.46,33.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Grummle|r
    .accept 31254 >>Accept The Road to Kun-Lai
    .target Messenger Grummle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 418,52.44,77.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leni Kelpenstout|r
    .accept 31392 >>Accept Temple of the White Tiger
    .target Leni Kelpenstout
step
    +|cRXP_WARN_End of the Krasarang Wilds route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Kun-Lai Summit|r: The Road to Kun-Lai, Temple of the White Tiger << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
]])
