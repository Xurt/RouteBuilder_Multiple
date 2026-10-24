-- 10-15 Westfall: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 10, 17).
-- Split into 2 guides, listed under "10 - 18 Westfall" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Westfall.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 18 Westfall
#subweight -10
#name 10-15 Westfall: around Marshal Gryan Stoutmantle
--RouteBuilder:next
#next Zone Routes (Alliance)\13-15 Darkshore: around Keeper Karithus;Zone Routes (Alliance)\11-15 Loch Modan: around Captain Rugelfuss

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.26,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28562 >>Turn in Hero's Call: Westfall!
    .unitscan Lieutenant Horatio Laine
    .isOnQuest 28562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.26,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 184 >>Turn in Furlbrow's Deed
    .unitscan Lieutenant Horatio Laine
    .isOnQuest 184
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.26,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26378 >>Turn in Hero's Call: Westfall!
    .unitscan Lieutenant Horatio Laine
    .isOnQuest 26378
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.26,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26209 >>Accept Murder Was The Case That They Gave Me
    .unitscan Lieutenant Horatio Laine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 52,58.47,18.02,0
    .goto 52,58.47,18.02,40,0
    .goto 52,56.67,19.27,40,0
    >>Kill |cRXP_ENEMY_Transient|r, |cRXP_ENEMY_Homeless Stormwind Citizen|r and |cRXP_ENEMY_West Plains Drifter|r
    .complete 26209,1 --Transient (1)
    .complete 26209,2 --Transient (1)
    .complete 26209,3 --Transient (1)
    .complete 26209,4 --Transient (1)
    .mob Transient
    .mob Homeless Stormwind Citizen
    .mob West Plains Drifter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.26,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26209 >>Turn in Murder Was The Case That They Gave Me
    .accept 26213 >>Accept Hot On the Trail: The Riverpaw Clan
    .accept 26214 >>Accept Hot On the Trail: Murlocs
    .unitscan Lieutenant Horatio Laine
step
    #completewith Drop26353x1
    >>|cRXP_LOOT_Captain Sanders' Treasure Map|r can drop from |cRXP_ENEMY_Murloc Coastrunner|r, |cRXP_ENEMY_Murloc Tidehunter|r, |cRXP_ENEMY_Murloc Warrior|r. Use it to start the quest if you get one
    .collect 1357,1,26353 --Captain Sanders' Treasure Map (1)
    .accept 26353 >>Accept Captain Sanders' Hidden Treasure
    .use 1357
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop26353x1
    #loop
    .goto 52,57.01,13.29,0
    .goto 52,57.01,13.29,40,0
    .goto 52,56.01,9.49,40,0
    .goto 52,52.77,10.17,40,0
    >>Kill |cRXP_ENEMY_Murloc Coastrunners|r, |cRXP_ENEMY_Murloc Hunters|r and |cRXP_ENEMY_Murloc Raiders|r. Loot them for |cRXP_LOOT_Murloc Clue|r
    >>Kill |cRXP_ENEMY_Riverpaw Gnolls|r, |cRXP_ENEMY_Riverpaw Scouts|r and |cRXP_ENEMY_Kobold Diggers|r. Loot them for |cRXP_LOOT_Riverpaw Gnoll Clue|r
    .complete 26214,1 --Murloc Clue (1)
    .complete 26213,1 --Riverpaw Gnoll Clue (1)
    .mob Murloc Coastrunner
    .mob Murloc Hunter
    .mob Murloc Raider
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Kobold Digger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.26,47.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26213 >>Turn in Hot On the Trail: The Riverpaw Clan
    .turnin 26214 >>Turn in Hot On the Trail: Murlocs
    .accept 26215 >>Accept Meet Two-Shoed Lou
    .unitscan Lieutenant Horatio Laine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,49.65,19.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Two-Shoed Lou|r
    .turnin 26215 >>Turn in Meet Two-Shoed Lou
    .accept 26228 >>Accept Livin' the Life
    .target Two-Shoed Lou
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,49.59,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jimb "Candles" McHannigan|r
    .accept 26229 >>Accept "I TAKE Candle!"
    .target Jimb "Candles" McHannigan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,49.54,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Celeste|r
    .accept 26230 >>Accept Feast or Famine
    .target Mama Celeste
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 52,51.08,19.94,0
    .goto 52,51.08,19.94,40,0
    .goto 52,51.00,24.61,40,0
    .goto 52,54.34,29.28,40,0
    >>Pick up |cRXP_PICK_Fresh Dirt|r from the ground
    >>Kill |cRXP_ENEMY_Coyote Packleaders|r and |cRXP_ENEMY_Coyotes|r. Loot them for |cRXP_LOOT_Coyote Tail|r
    .complete 26230,2 --Fresh Dirt (1)
    .complete 26230,1 --Coyote Tail (6)
    .mob Coyote Packleader
    .mob Coyote
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Kobold Diggers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26229,1 --Kobold Digger slain (12)
    .mob Kobold Digger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along12
    .goto 52,46.25,18.99
    >>Livin' the Life!
    .complete 26228,1 --Livin' the Life!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 52,45.36,20.41,0
    .goto 52,45.36,20.41,40,0
    .goto 52,44.31,25.41,40,0
    >>Kill |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --Kobold Digger slain (12)
    .mob Kobold Digger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,49.59,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jimb "Candles" McHannigan|r
    .turnin 26229 >>Turn in "I TAKE Candle!"
    .target Jimb "Candles" McHannigan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,49.65,19.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Two-Shoed Lou|r
    .turnin 26228 >>Turn in Livin' the Life
    .accept 26232 >>Accept Lou's Parting Thoughts
    .target Two-Shoed Lou
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,49.54,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Celeste|r
    .turnin 26230 >>Turn in Feast or Famine
    .target Mama Celeste
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,48.08,19.78
    >>Eavesdrop on the Thugs out behind the farmhouse at Furlbrow's Pumpkin Farm in Westfall.
    .complete 26232,1 --Furlbrow Murder Info 004
    .target Furlbrow Murder Info 004
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,49.75,19.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26232 >>Turn in Lou's Parting Thoughts
    .accept 26236 >>Accept Shakedown at the Saldean's
    .target Lieutenant Horatio Laine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .turnin 26236 >>Turn in Shakedown at the Saldean's
    .accept 26237 >>Accept Times are Tough
    .target Farmer Saldean
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .accept 26241 >>Accept Westfall Stew
    .target Salma Saldean
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop26252x1
    >>|cRXP_LOOT_Harvest Watcher Heart|r can drop from |cRXP_ENEMY_Harvest Watcher|r. Use it to start the quest if you get one
    .collect 57935,1,26252 --Harvest Watcher Heart (1)
    .accept 26252 >>Accept Heart of the Watcher
    .use 57935
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Goretusks|r, |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Hulking Goretusks|r. Loot them for |cRXP_LOOT_Goretusk Flank|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26241,2 --Goretusk Flank (6)
    .mob Goretusk
    .mob Young Goretusk
    .mob Hulking Goretusk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop26252x1
    #loop
    .goto 52,54.86,34.08,0
    .goto 52,54.86,34.08,40,0
    .goto 52,53.47,30.93,40,0
    >>Kill |cRXP_ENEMY_Harvest Watchers|r
    >>Pick up |cRXP_PICK_Okra|r from the ground
    .complete 26237,1 --Harvest Watcher slain (10)
    .complete 26241,1 --Okra (6)
    .mob Harvest Watcher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .turnin 26237 >>Turn in Times are Tough
    .target Farmer Saldean
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .turnin 26252 >>Turn in Heart of the Watcher
    .target Farmer Saldean
    .isOnQuest 26252
step
    #label Along24
    .goto 52,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 26257 >>Accept It's Alive!
    .target Farmer Saldean
    .isQuestTurnedIn 26252 --any of: Heart of the Watcher
    .xp <10,1
step
    .goto 52,49.55,32.77
    >>Interact with |cRXP_FRIENDLY_Overloaded Harvest Golem|r
    .complete 26257,1 --Overloaded Harvest Golem
    .target Overloaded Harvest Golem
    .isOnQuest 26257
step
    #loop
    .goto 52,44.86,33.76,0
    .goto 52,44.86,33.76,40,0
    .goto 52,44.46,36.75,40,0
    >>Kill |cRXP_ENEMY_Energized Harvest Reapers|r
    .complete 26257,2 --Energized Harvest Reaper slain (25)
    .mob Energized Harvest Reaper
    .isOnQuest 26257
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 52,43.44,47.00,0
    .goto 52,43.44,47.00,40,0
    .goto 52,43.95,50.68,40,0
    .goto 52,46.59,50.47,40,0
    >>Kill |cRXP_ENEMY_Goretusks|r, |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Hulking Goretusks|r. Loot them for |cRXP_LOOT_Goretusk Flank|r
    >>Kill |cRXP_ENEMY_Greater Fleshrippers|r, |cRXP_ENEMY_Young Fleshrippers|r and |cRXP_ENEMY_Fleshrippers|r. Loot them for |cRXP_LOOT_Stringy Fleshripper Meat|r
    .complete 26241,2 --Goretusk Flank (6)
    .complete 26241,3 --Stringy Fleshripper Meat (6)
    .mob Goretusk
    .mob Young Goretusk
    .mob Hulking Goretusk
    .mob Greater Fleshripper
    .mob Young Fleshripper
    .mob Fleshripper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 26241 >>Turn in Westfall Stew
    .target Salma Saldean
step
    .goto 52,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .turnin 26257 >>Turn in It's Alive!
    .target Farmer Saldean
    .isOnQuest 26257
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 26270 >>Accept You Have Our Thanks
    .target Farmer Saldean
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 26270 >>Turn in You Have Our Thanks
    .accept 26266 >>Accept Hope for the People
    .target Salma Saldean
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.97,47.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hope Saldean|r
    .turnin 26266 >>Turn in Hope for the People
    .accept 26271 >>Accept Feeding the Hungry and the Hopeless
    .target Hope Saldean
step
    .goto 52,56.39,47.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .accept 26371 >>Accept The Legend of Captain Grayson
    .target Scout Galiaan
step
    .goto 52,56.46,47.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 26287 >>Accept The Westfall Brigade
    .target Captain Danuvin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .turnin 26370 >>Turn in Return to Sentinel Hill
    .target Marshal Gryan Stoutmantle
    .isOnQuest 26370
step
    .goto 52,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .accept 26761 >>Accept Threat to the Kingdom
    .target Marshal Gryan Stoutmantle
    .isQuestTurnedIn 26370 --any of: Return to Sentinel Hill
    .xp <12,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .accept 26286 >>Accept In Defense of Westfall
    .target Marshal Gryan Stoutmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .accept 26322 >>Accept Rise of the Brotherhood
    .target Marshal Gryan Stoutmantle
    .isQuestTurnedIn 26320 --any of: A Vision of the Past
    .xp <12,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Transients|r, |cRXP_ENEMY_Homeless Stormwind Citizens|r and |cRXP_ENEMY_Small-time Hustlers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26271,1 --Transient (8)
    .mob Transient
    .mob Homeless Stormwind Citizen
    .mob Small-time Hustler
step
    #label Along39
    #loop
    .goto 52,53.77,48.14,0
    .goto 52,53.77,48.14,40,0
    .goto 52,54.52,44.12,40,0
    >>Kill |cRXP_ENEMY_Riverpaw Brutes|r, |cRXP_ENEMY_Riverpaw Bandits|r and |cRXP_ENEMY_Riverpaw Herbalists|r
    >>Kill |cRXP_ENEMY_Riverpaw Brutes|r, |cRXP_ENEMY_Riverpaw Bandits|r and |cRXP_ENEMY_Riverpaw Herbalists|r. Loot them for |cRXP_LOOT_Gnoll Attack Orders|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 26287,1 --Riverpaw Brute (8)
    .complete 26286,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Gnoll Attack Orders (1)
    .mob Riverpaw Brute
    .mob Riverpaw Bandit
    .mob Riverpaw Herbalist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 52,53.09,56.47,0
    .goto 52,53.09,56.47,40,0
    .goto 52,56.77,57.67,40,0
    >>Kill |cRXP_ENEMY_Transients|r, |cRXP_ENEMY_Homeless Stormwind Citizens|r and |cRXP_ENEMY_Small-time Hustlers|r
    .complete 26271,1 --Transient (8)
    .mob Transient
    .mob Homeless Stormwind Citizen
    .mob Small-time Hustler
step
    .goto 52,56.46,47.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .turnin 26287 >>Turn in The Westfall Brigade
    .accept 26288 >>Accept Jango Spothide
    .target Captain Danuvin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.97,47.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hope Saldean|r
    .turnin 26271 >>Turn in Feeding the Hungry and the Hopeless
    .target Hope Saldean
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .turnin 26286 >>Turn in In Defense of Westfall
    .accept 26289 >>Accept Find Agent Kearnen
    .target Marshal Gryan Stoutmantle
step
    #loop
    .goto 52,61.84,69.45,0
    .goto 52,61.84,69.45,40,0
    .goto 52,60.81,74.47,40,0
    .goto 52,64.81,73.09,40,0
    >>Kill |cRXP_ENEMY_Jango Spothide|r
    >>Kill |cRXP_ENEMY_Riverpaw Mystics|r
    >>Kill |cRXP_ENEMY_Riverpaw Taskmasters|r
    .complete 26288,3 --Jango Spothide slain (1)
    .complete 26288,1 --Riverpaw Mystic slain (5)
    .complete 26288,2 --Riverpaw Taskmaster slain (5)
    .mob Jango Spothide
    .mob Riverpaw Mystic
    .mob Riverpaw Taskmaster
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,68.33,70.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .turnin 26289 >>Turn in Find Agent Kearnen
    .accept 26290 >>Accept Secrets of the Tower
    .target Agent Kearnen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,70.54,74.02
    >>Enter Mortwake's Tower and find Helix Gearbreaker.
    .complete 26290,1 --Helix Gearbreaker
    .target Helix Gearbreaker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,68.33,70.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .turnin 26290 >>Turn in Secrets of the Tower
    .accept 26291 >>Accept Big Trouble in Moonbrook
    .target Agent Kearnen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .turnin 26291 >>Turn in Big Trouble in Moonbrook
    .accept 26292 >>Accept To Moonbrook!
    .target Marshal Gryan Stoutmantle
step
    .goto 52,56.46,47.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .turnin 26288 >>Turn in Jango Spothide
    .target Captain Danuvin
step
    .goto 52,52.23,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christopher Hewen|r
    .target Christopher Hewen
    .home >>Set your Hearthstone to Christopher Hewen's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,42.10,64.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Alpert|r
    .turnin 26292 >>Turn in To Moonbrook!
    .accept 26295 >>Accept Propaganda
    .target Captain Alpert
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 52,41.59,66.39,0
    .goto 52,41.59,66.39,40,0
    .goto 52,43.27,69.89,40,0
    >>Pick up |cRXP_PICK_Mysterious Propaganda|r from the ground
    >>Pick up |cRXP_PICK_Informational Pamphlet|r from the ground
    >>Open the |cRXP_PICK_The Moonbrook Times|r. Loot it for |cRXP_LOOT_Issue of the Moonbrook Times|r
    >>Pick up |cRXP_PICK_Secret Journal|r from the ground
    .complete 26295,4 --Mysterious Propaganda (1)
    .complete 26295,1 --Informational Pamphlet (1)
    .complete 26295,2 --Issue of the Moonbrook Times (1)
    .complete 26295,3 --Secret Journal (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,42.10,64.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Alpert|r
    .turnin 26295 >>Turn in Propaganda
    .accept 26297 >>Accept The Dawning of a New Day
    .target Captain Alpert
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,43.92,69.27
    >>Gather information from the Moonbrook Rally.
    .complete 26297,1 --Shadowy Figure
    .target Shadowy Figure
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,42.10,64.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Alpert|r
    .turnin 26297 >>Turn in The Dawning of a New Day
    .accept 26319 >>Accept Secrets Revealed
    .target Captain Alpert
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,42.98,65.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thoralius the Wise|r
    .turnin 26319 >>Turn in Secrets Revealed
    .accept 26320 >>Accept A Vision of the Past
    .target Thoralius the Wise
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,30.50,85.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 26347 >>Accept Keeper of the Flame
    .target Captain Grayson
step
    .goto 52,30.50,85.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 26371 >>Turn in The Legend of Captain Grayson while you are here
    .isQuestComplete 26371
    .target Captain Grayson
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.29,47.52
    >>Rise of the Brotherhood witnessed
    .complete 26322,1 --Rise of the Brotherhood witnessed
    .isOnQuest 26322
step
    .goto 52,30.50,85.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 26371 >>Turn in The Legend of Captain Grayson
    .accept 26348 >>Accept The Coast Isn't Clear << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26349 >>Accept The Coastal Menace << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Captain Grayson
step
    #completewith Drop26353x2
    >>|cRXP_LOOT_Captain Sanders' Treasure Map|r can drop from |cRXP_ENEMY_Murloc Coastrunner|r, |cRXP_ENEMY_Murloc Tidehunter|r, |cRXP_ENEMY_Murloc Warrior|r. Use it to start the quest if you get one
    .collect 1357,1,26353 --Captain Sanders' Treasure Map (1)
    .accept 26353 >>Accept Captain Sanders' Hidden Treasure
    .use 1357
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along60
    >>As you go: Kill |cRXP_ENEMY_Murloc Tidehunters|r. Kill |cRXP_ENEMY_Murloc Oracles|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26348,1 --Murloc Tidehunter slain (7)
    .complete 26348,2 --Murloc Oracle slain (7)
    .mob Murloc Tidehunter
    .mob Murloc Oracle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along60
    .goto 52,33.39,83.59
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r and loot |cRXP_LOOT_Scale of Old Murk-Eye|r
    .complete 26349,1 --Scale of Old Murk-Eye (1)
    .mob Old Murk-Eye
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop26353x2
    #loop
    .goto 52,27.01,74.35,0
    .goto 52,27.01,74.35,40,0
    .goto 52,27.46,71.16,40,0
    >>Kill |cRXP_ENEMY_Murloc Tidehunters|r
    >>Kill |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --Murloc Tidehunter slain (7)
    .complete 26348,2 --Murloc Oracle slain (7)
    .mob Murloc Tidehunter
    .mob Murloc Oracle
step
    .goto 52,25.91,47.76
    >>Click the |cRXP_PICK_Captain's Footlocker|r
    .turnin 26353 >>Turn in Captain Sanders' Hidden Treasure
    .isOnQuest 26353
step
    .goto 52,25.91,47.76
    >>Click the |cRXP_PICK_Captain's Footlocker|r
    .accept 26354 >>Accept Captain Sanders' Hidden Treasure
    .isQuestTurnedIn 26353 --any of: Captain Sanders' Hidden Treasure
    .xp <9,1
step
    .goto 52,40.52,47.79
    >>Click the |cRXP_PICK_Broken Barrel|r
    .turnin 26354 >>Turn in Captain Sanders' Hidden Treasure
    .isOnQuest 26354
step
    .goto 52,40.52,47.79
    >>Click the |cRXP_PICK_Broken Barrel|r
    .accept 26355 >>Accept Captain Sanders' Hidden Treasure
    .isQuestTurnedIn 26354 --any of: Captain Sanders' Hidden Treasure
    .xp <9,1
step
    .goto 52,40.63,17.03
    >>Click the |cRXP_PICK_Old Jug|r
    .turnin 26355 >>Turn in Captain Sanders' Hidden Treasure
    .isOnQuest 26355
step
    .goto 52,40.63,17.03
    >>Click the |cRXP_PICK_Old Jug|r
    .accept 26356 >>Accept Captain Sanders' Hidden Treasure
    .isQuestTurnedIn 26355 --any of: Captain Sanders' Hidden Treasure
    .xp <9,1
step
    .goto 52,25.97,16.91
    >>Click the |cRXP_PICK_Locked Chest|r
    .turnin 26356 >>Turn in Captain Sanders' Hidden Treasure
    .isOnQuest 26356
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 52,36.25,40.43,0
    .goto 52,36.25,40.43,40,0
    .goto 52,36.86,46.00,40,0
    .goto 52,39.38,46.04,40,0
    >>Kill |cRXP_ENEMY_Chasm Slimes|r. Loot them for |cRXP_LOOT_Chasm Ooze|r
    .complete 26347,1 --Chasm Ooze (5)
    .mob Chasm Slime
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,30.50,85.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 26347 >>Turn in Keeper of the Flame
    .turnin 26348 >>Turn in The Coast Isn't Clear
    .turnin 26349 >>Turn in The Coastal Menace
    .target Captain Grayson
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .turnin 26320 >>Turn in A Vision of the Past
    .target Marshal Gryan Stoutmantle
    .isQuestComplete 26320
step
    +|cRXP_WARN_That is all of Westfall for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Redridge Mountains|r: Threat to the Kingdom
    >>|cRXP_FRIENDLY_Stormwind City|r: Rise of the Brotherhood << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_another zone and back here|r: A Vision of the Past << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 14|r: |cRXP_FRIENDLY_Darkshore|r (about 0.9 levels of quests, starting around Keeper Karithus), |cRXP_FRIENDLY_Loch Modan|r (about 0.6 levels of quests, starting around Captain Rugelfuss). Completing this step loads the guide for Darkshore --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Westfall is planned from level 17.|r Load its guide for level 17 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 18 Westfall
#subweight -10
#name 17-18 Westfall
--RouteBuilder:next
#next Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.46,47.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 26365 >>Accept Hero's Call: Redridge Mountains!
    .target Captain Danuvin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 52,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .turnin 26320 >>Turn in A Vision of the Past
    .target Marshal Gryan Stoutmantle
    .isQuestComplete 26320
step
    +|cRXP_WARN_End of the Westfall route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Redridge Mountains|r: Hero's Call: Redridge Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 17|r: |cRXP_FRIENDLY_Darkshore|r (about 0.8 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
