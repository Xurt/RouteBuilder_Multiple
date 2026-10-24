-- 1-3 Kezan: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 1, 4).
-- Split into 2 guides, listed under "1 - 5 Kezan" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Kezan.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 5 Kezan
#subweight -1
#name 1-2 Kezan

step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14138 >>Accept Taking Care of Business
    .unitscan Sassy Hardwrench
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,63.03,77.81,0
    .goto 194,63.03,77.81,40,0
    .goto 194,60.22,74.56,40,0
    .goto 194,21.63,13.47,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14138 >>Turn in Taking Care of Business
    .accept 14069 >>Accept Good Help is Hard to Find
    .accept 14075 >>Accept Trouble in the Mines
    .unitscan Foreman Dampwick
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,67.47,82.25,0
    .goto 194,67.47,82.25,40,0
    .goto 194,69.80,81.35,40,0
    .goto 194,71.32,77.70,40,0
    >>Interact with |cRXP_FRIENDLY_Defiant Trolls|r
    .complete 14069,1 --Defiant Troll (8)
    .target Defiant Troll
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,63.03,77.81,0
    .goto 194,63.03,77.81,40,0
    .goto 194,60.22,74.56,40,0
    .goto 194,21.63,13.47,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14069 >>Turn in Good Help is Hard to Find
    .unitscan Foreman Dampwick
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,63.03,77.81,0
    .goto 194,63.03,77.81,40,0
    .goto 194,60.22,74.56,40,0
    .goto 194,21.63,13.47,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14075 >>Turn in Trouble in the Mines
    .unitscan Foreman Dampwick
    .isQuestComplete 14075
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,63.03,77.81,0
    .goto 194,63.03,77.81,40,0
    .goto 194,60.22,74.56,40,0
    .goto 194,21.63,13.47,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25473 >>Accept Kaja'Cola
    .unitscan Foreman Dampwick
    .isQuestTurnedIn 14075 --Trouble in the Mines
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 25473 >>Turn in Kaja'Cola
    .unitscan Sassy Hardwrench
    .isOnQuest 25473
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28349 >>Accept Megs in Marketing
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 25473 --any of: Kaja'Cola
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,60.08,78.23,0
    .goto 194,60.08,78.23,40,0
    .goto 194,58.23,76.45,40,0
    .goto 194,21.62,12.91,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28349 >>Turn in Megs in Marketing
    .unitscan Megs Dreadshredder
    .isOnQuest 28349
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,60.08,78.23,0
    .goto 194,60.08,78.23,40,0
    .goto 194,58.23,76.45,40,0
    .goto 194,21.62,12.91,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14071 >>Accept Rolling with my Homies
    .unitscan Megs Dreadshredder
    .isQuestTurnedIn 28349 --any of: Megs in Marketing
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,58.23,76.45
    >>Drive the Hot Rod around and pickup your friends: Ace, Gobber, and Izzy.
    .complete 14071,1 --"Rolling with my Homies" Keys to the Hot Rod Used Kill Credit (1)
    .isOnQuest 14071
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,58.16,86.27
    >>Drive the Hot Rod around and pickup your friends: Ace, Gobber, and Izzy.
    .complete 14071,2 --Izzy
    .target Izzy
    .isOnQuest 14071
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,59.74,49.80
    >>Drive the Hot Rod around and pickup your friends: Ace, Gobber, and Izzy.
    .complete 14071,4 --Gobber
    .target Gobber
    .isOnQuest 14071
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,47.86,37.43
    >>Drive the Hot Rod around and pickup your friends: Ace, Gobber, and Izzy.
    .complete 14071,3 --Ace
    .target Ace
    .isOnQuest 14071
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,60.08,78.23,0
    .goto 194,60.08,78.23,40,0
    .goto 194,58.23,76.45,40,0
    .goto 194,21.62,12.91,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14071 >>Turn in Rolling with my Homies
    .unitscan Megs Dreadshredder
    .isOnQuest 14071
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,60.08,78.23,0
    .goto 194,60.08,78.23,40,0
    .goto 194,58.23,76.45,40,0
    .goto 194,21.62,12.91,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 24567 >>Accept Report for Tryouts
    .unitscan Megs Dreadshredder
    .isQuestTurnedIn 14071 --any of: Rolling with my Homies
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14070 >>Accept Do it Yourself
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 14071 --any of: Rolling with my Homies
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,56.32,76.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chip Endale|r
    .accept 26711 >>Accept Off to the Bank
    .target Chip Endale
    .isQuestTurnedIn 14071 --any of: Rolling with my Homies
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,45.24,74.73
    >>Kill |cRXP_ENEMY_Bruno Flameretardant|r
    .complete 14070,1 --Bruno Flameretardant slain (1)
    .mob Bruno Flameretardant
    .isOnQuest 14070
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,41.64,81.91
    >>Kill |cRXP_ENEMY_Sudsy Magee|r
    .complete 14070,4 --Sudsy Magee slain (1)
    .mob Sudsy Magee
    .isOnQuest 14070
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,35.06,77.83
    >>Kill |cRXP_ENEMY_Jack the Hammer|r
    .complete 14070,3 --Jack the Hammer slain (1)
    .mob Jack the Hammer
    .isOnQuest 14070
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,36.84,69.95
    >>Kill |cRXP_ENEMY_Frankie Gearslipper|r
    .complete 14070,2 --Frankie Gearslipper slain (1)
    .mob Frankie Gearslipper
    .isOnQuest 14070
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,31.11,71.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_FBoK Bank Teller|r
    .turnin 26711 >>Turn in Off to the Bank
    .target FBoK Bank Teller
    .isOnQuest 26711
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,31.11,71.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_FBoK Bank Teller|r
    .accept 14109 >>Accept The New You
    .target FBoK Bank Teller
    .isQuestTurnedIn 26712 --any of: Off to the Bank
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,37.64,55.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Hip New Outfit|r from |cRXP_FRIENDLY_Szabo|r
    .complete 14109,2 --Hip New Outfit (1)
    .target Szabo
    .isOnQuest 14109
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,34.80,45.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Shiny Bling|r from |cRXP_FRIENDLY_Gappy Silvertooth|r
    .complete 14109,1 --Shiny Bling (1)
    .target Gappy Silvertooth
    .isOnQuest 14109
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,40.36,45.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Cool Shades|r from |cRXP_FRIENDLY_Missa Spekkies|r
    .complete 14109,3 --Cool Shades (1)
    .target Missa Spekkies
    .isOnQuest 14109
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,48.75,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .turnin 24567 >>Turn in Report for Tryouts
    .target Coach Crosscheck
    .isOnQuest 24567
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,48.75,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .accept 24488 >>Accept The Replacements
    .target Coach Crosscheck
    .isQuestTurnedIn 24567 --any of: Report for Tryouts
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    #loop
    .goto 194,39.98,79.59,0
    .goto 194,39.98,79.59,40,0
    .goto 194,28.27,59.93,40,0
    .goto 194,29.28,59.41,40,0
    .goto 194,29.80,57.09,40,0
    >>Pick up |cRXP_PICK_Replacement Parts|r from the ground
    .complete 24488,1 --Replacement Parts (6)
    .isOnQuest 24488
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,48.75,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .turnin 24488 >>Turn in The Replacements
    .target Coach Crosscheck
    .isOnQuest 24488
step
    .hs >>Hearth to KTC Headquarters
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14070 >>Turn in Do it Yourself
    .unitscan Sassy Hardwrench
    .isOnQuest 14070
step << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
    .goto 194,56.31,77.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Candy Cane|r
    .turnin 14109 >>Turn in The New You
    .target Candy Cane
    .isOnQuest 14109
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Slinky|r
    .train 2098 >> Train |T132292:0|t[Eviscerate] << Cata
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Warrior-Matic NX-01|r
    .train 100 >> |T132337:0|t[Charge] << Cata
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bamm|r
    .train 56641 >>Train |T132213:0|t[Steady Shot] << Cata
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maxx|r
    .train 73899 >>Train |T460956:0|t[Primal Strike] << Cata
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Fizz|r
    .train 5143 >>Train |T136096:0|t[Arcane Missiles] << Cata
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Evol|r
    .train 348 >>Train |T135817:0|t[Immolate] << Cata
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Goldskimmer|r
    .train 2061 >>Train |T135907:0|t[Flash Heal] << Cata
    .target Sister Goldskimmer
step
    +|cRXP_WARN_That is all of Kezan for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Kaja'mine N and back here|r: Trouble in the Mines << Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock
step << Goblin Hunter/Goblin Mage/Goblin Priest/Goblin Rogue/Goblin Shaman/Goblin Warlock/Orc Warrior/Goblin Warrior
    +|cRXP_WARN_The rest of Kezan is planned from level 4.|r Load its guide for level 4 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Goblin Hunter/Goblin Mage/Goblin Priest/Goblin Rogue/Goblin Shaman/Goblin Warlock/Orc Warrior/Goblin Warrior
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 5 Kezan
#subweight -1
#name 4-5 Kezan

step << Orc Warrior/Goblin Warrior
    .goto 194,60.33,77.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .accept 14013 >>Accept Charge
    .target Warrior-Matic NX-01
step << Orc Warrior/Goblin Warrior
    .goto 194,60.83,77.97
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 14013,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Orc Warrior/Goblin Warrior
    .goto 194,60.33,77.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warrior-Matic NX-01|r
    .turnin 14013 >>Turn in Charge
    .target Warrior-Matic NX-01
step << Goblin Hunter
    .goto 194,60.47,77.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .accept 14007 >>Accept Steady Shot
    .target Bamm Megabomb
step << Goblin Hunter
    .goto 194,60.83,77.97
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 14007,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Goblin Hunter
    .goto 194,60.47,77.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bamm Megabomb|r
    .turnin 14007 >>Turn in Steady Shot
    .target Bamm Megabomb
step << Goblin Rogue
    #loop
    .goto 194,59.46,77.71,0
    .goto 194,59.46,77.71,40,0
    .goto 194,58.85,75.30,40,0
    .goto 194,58.28,73.02,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14010 >>Accept Eviscerate
    .unitscan Slinky Sharpshiv
step << Goblin Rogue
    .goto 194,60.83,77.97
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 14010,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Goblin Rogue
    #loop
    .goto 194,59.46,77.71,0
    .goto 194,59.46,77.71,40,0
    .goto 194,58.85,75.30,40,0
    .goto 194,58.28,73.02,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14010 >>Turn in Eviscerate
    .unitscan Slinky Sharpshiv
step << Goblin Priest
    .goto 194,57.78,77.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .accept 14009 >>Accept Learning the Word
    .target Sister Goldskimmer
step << Goblin Priest
    .goto 194,60.83,77.97
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 14009,1 --Training Dummy slain (5)
    .mob Training Dummy
step << Goblin Priest
    .goto 194,57.78,77.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Goldskimmer|r
    .turnin 14009 >>Turn in Learning the Word
    .target Sister Goldskimmer
step << Goblin Shaman
    .goto 194,59.74,76.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .accept 14011 >>Accept Primal Strike
    .target Maxx Avalanche
step << Goblin Shaman
    .goto 194,60.83,77.97
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 14011,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Goblin Shaman
    .goto 194,59.74,76.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx Avalanche|r
    .turnin 14011 >>Turn in Primal Strike
    .target Maxx Avalanche
step << Goblin Mage
    .goto 194,59.43,73.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .accept 14008 >>Accept Frost Nova
    .target Fizz Lighter
step << Goblin Mage
    .goto 194,60.83,77.97
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 14008,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Goblin Mage
    .goto 194,59.43,73.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizz Lighter|r
    .turnin 14008 >>Turn in Frost Nova
    .target Fizz Lighter
step << Goblin Warlock
    .goto 194,57.89,74.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .accept 14012 >>Accept Corruption
    .target Evol Fingers
step << Goblin Warlock
    .goto 194,60.83,77.97
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 14012,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Goblin Warlock
    .goto 194,57.89,74.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evol Fingers|r
    .turnin 14012 >>Turn in Corruption
    .target Evol Fingers
step << Goblin
    #loop
    .goto 194,63.03,77.81,0
    .goto 194,63.03,77.81,40,0
    .goto 194,60.22,74.56,40,0
    .goto 194,21.63,13.47,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14075 >>Turn in Trouble in the Mines
    .unitscan Foreman Dampwick
    .isQuestComplete 14075
step << Goblin
    .goto 194,48.75,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .accept 24502 >>Accept Necessary Roughness
    .target Coach Crosscheck
    .isQuestTurnedIn 24488 --any of: The Replacements
step << Goblin
    .goto 194,47.70,57.74
    >>Kill |cRXP_ENEMY_Bilgewater Buccaneer|r
    .complete 24502,1 --Bilgewater Buccaneer slain (1)
    .mob Bilgewater Buccaneer
    .isOnQuest 24502
step << Goblin
    .goto 194,47.55,61.67
    >>Kill |cRXP_ENEMY_Steamwheedle Sharks|r
    .complete 24502,2 --Steamwheedle Shark slain (8)
    .mob Steamwheedle Shark
    .isOnQuest 24502
step << Goblin
    .goto 194,47.70,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 24502 >>Turn in Necessary Roughness
    .target ?
    .isOnQuest 24502
step << Goblin
    .goto 194,48.75,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .accept 28414 >>Accept Fourth and Goal
    .target Coach Crosscheck
    .isQuestTurnedIn 24502 --any of: Necessary Roughness
step << Goblin
    .goto 194,47.83,72.66
    >>Get in the Bilgewater Buccaneer and score the winning goal by kicking the Footbomb through the smokestacks behind the opposing goal.
    .complete 28414,1 --Fourth And Goal Target
    .target Fourth And Goal Target
    .isOnQuest 28414
step << Goblin
    .goto 194,48.75,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .turnin 28414 >>Turn in Fourth and Goal
    .target Coach Crosscheck
    .isOnQuest 28414
step << Goblin
    .goto 194,48.75,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coach Crosscheck|r
    .accept 24520 >>Accept Give Sassy the News
    .target Coach Crosscheck
    .isQuestTurnedIn 28414 --any of: Fourth and Goal
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 24520 >>Turn in Give Sassy the News
    .unitscan Sassy Hardwrench
    .isOnQuest 24520
step << Goblin Hunter
    .goto 194,56.31,77.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Candy Cane|r
    .accept 14113 >>Accept Life of the Party
    .target Candy Cane
    .isQuestTurnedIn 14109 --The New You
    .isQuestTurnedIn 24520 --Give Sassy the News
step << Goblin Hunter
    #loop
    .goto 194,59.33,80.77,0
    .goto 194,59.33,80.77,40,0
    .goto 194,60.65,86.88,40,0
    .goto 194,56.37,86.10,40,0
    >>Kill |cRXP_ENEMY_Kezan Partygoers|r
    .complete 14113,1 --Kezan Partygoer (10)
    .mob Kezan Partygoer
    .isOnQuest 14113
step << Goblin Hunter
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14113 >>Turn in Life of the Party
    .unitscan Sassy Hardwrench
    .isOnQuest 14113
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14115 >>Accept Pirate Party Crashers
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 14113,14153 --any of: Life of the Party, Life of the Party
step << Goblin
    #loop
    .goto 194,56.02,79.93,0
    .goto 194,56.02,79.93,40,0
    .goto 194,58.07,80.17,40,0
    .goto 194,61.33,81.41,40,0
    >>Kill |cRXP_ENEMY_Pirate Party Crashers|r
    .complete 14115,1 --Pirate Party Crasher slain (12)
    .mob Pirate Party Crasher
    .isOnQuest 14115
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14115 >>Turn in Pirate Party Crashers
    .unitscan Sassy Hardwrench
    .isOnQuest 14115
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14116 >>Accept The Uninvited Guest
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 14115 --any of: Pirate Party Crashers
step << Goblin
    .goto 194,20.84,13.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14116 >>Turn in The Uninvited Guest
    .unitscan Trade Prince Gallywix
    .isOnQuest 14116
step << Goblin
    .goto 194,20.84,13.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14120 >>Accept A Bazillion Macaroons?!
    .unitscan Trade Prince Gallywix
    .isQuestTurnedIn 14116 --any of: The Uninvited Guest
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14120 >>Turn in A Bazillion Macaroons?!
    .unitscan Sassy Hardwrench
    .isOnQuest 14120
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14122 >>Accept The Great Bank Heist
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 14120 --any of: A Bazillion Macaroons?!
step << Goblin
    #loop
    .goto 194,60.08,78.23,0
    .goto 194,60.08,78.23,40,0
    .goto 194,58.23,76.45,40,0
    .goto 194,21.62,12.91,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14121 >>Accept Robbing Hoods
    .unitscan Megs Dreadshredder
    .isQuestTurnedIn 14120 --any of: A Bazillion Macaroons?!
step << Goblin
    #loop
    .goto 194,63.03,77.81,0
    .goto 194,63.03,77.81,40,0
    .goto 194,60.22,74.56,40,0
    .goto 194,21.63,13.47,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14124 >>Accept Liberate the Kaja'mite
    .unitscan Foreman Dampwick
    .isQuestTurnedIn 14120 --any of: A Bazillion Macaroons?!
step << Goblin
    .goto 194,72.65,78.12
    >>Pick up |cRXP_PICK_Kaja'mite Chunk|r from the ground
    .complete 14124,1 --Kaja'mite Chunk (12)
    .isOnQuest 14124
step << Goblin
    #loop
    .goto 194,59.46,77.71,0
    .goto 194,59.46,77.71,40,0
    .goto 194,58.85,75.30,40,0
    .goto 194,58.28,73.02,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14123 >>Accept Waltz Right In
    .unitscan Slinky Sharpshiv
    .isQuestTurnedIn 14120 --any of: A Bazillion Macaroons?!
step << Goblin
    .goto 194,29.89,71.33
    >>Crack the vault at the First Bank of Kezan to retrieve your Personal Riches.
    .complete 14122,1 --First Bank of Kezan Vault
    .target First Bank of Kezan Vault
    .isOnQuest 14122
step << Goblin
    .goto 194,29.38,70.35
    >>Open the |cRXP_PICK_First Bank of Kezan Vault|r. Loot it for |cRXP_LOOT_Personal Riches|r
    .complete 14122,2 --Personal Riches (1)
    .isOnQuest 14122
step << Goblin
    .goto 194,36.34,43.20
    >>Kill |cRXP_ENEMY_Hired Looters|r. Loot them for |cRXP_LOOT_Stolen Loot|r
    .complete 14121,1 --Stolen Loot (12)
    .mob Hired Looter
    .isOnQuest 14121
step << Goblin
    .goto 194,20.00,30.64
    >>Pick up |cRXP_PICK_The Ultimate Bomb|r from the ground
    .complete 14123,3 --The Ultimate Bomb (1)
    .isOnQuest 14123
step << Goblin
    .goto 194,12.84,35.20
    >>Pick up |cRXP_PICK_The Goblin Lisa|r from the ground
    .complete 14123,2 --The Goblin Lisa (1)
    .isOnQuest 14123
step << Goblin
    .goto 194,16.70,46.33
    >>Pick up |cRXP_PICK_Maldy's Falcon|r from the ground
    .complete 14123,1 --Maldy's Falcon (1)
    .isOnQuest 14123
step << Goblin
    #loop
    .goto 194,58.28,73.02,0
    .goto 194,58.28,73.02,40,0
    .goto 194,58.85,75.30,40,0
    .goto 194,59.46,77.71,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinky Sharpshiv|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14123 >>Turn in Waltz Right In
    .unitscan Slinky Sharpshiv
    .isOnQuest 14123
step << Goblin
    #loop
    .goto 194,63.03,77.81,0
    .goto 194,63.03,77.81,40,0
    .goto 194,60.22,74.56,40,0
    .goto 194,21.63,13.47,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Dampwick|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14124 >>Turn in Liberate the Kaja'mite
    .unitscan Foreman Dampwick
    .isOnQuest 14124
step << Goblin
    #loop
    .goto 194,60.08,78.23,0
    .goto 194,60.08,78.23,40,0
    .goto 194,58.23,76.45,40,0
    .goto 194,21.62,12.91,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14121 >>Turn in Robbing Hoods
    .unitscan Megs Dreadshredder
    .isOnQuest 14121
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14122 >>Turn in The Great Bank Heist
    .unitscan Sassy Hardwrench
    .isOnQuest 14122
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14125 >>Accept 447
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 14121 --Robbing Hoods
    .isQuestTurnedIn 14122 --The Great Bank Heist
    .isQuestTurnedIn 14123 --Waltz Right In
    .isQuestTurnedIn 14124 --Liberate the Kaja'mite
step << Goblin
    .goto 194,55.95,76.62
    >>Click the |cRXP_PICK_Defective Generator|r
    .complete 14125,1 --Defective Generator
    .isOnQuest 14125
step << Goblin
    .goto 194,56.05,74.57
    >>Click the |cRXP_PICK_Leaky Stove|r
    .complete 14125,2 --Leaky Stove
    .isOnQuest 14125
step << Goblin
    .goto 194,56.62,74.78
    >>Click the |cRXP_PICK_Flammable Bed|r
    .complete 14125,3 --Flammable Bed
    .isOnQuest 14125
step << Goblin
    .goto 194,59.25,77.01
    >>Overload the Defective Generator, Activate the Leaky Stove, Drop a Cigar on the Flammable Bed, and use the Gasbot to set KTC Headquarters ablaze!
    .complete 14125,4 --Gasbot
    .target Gasbot
    .isOnQuest 14125
step << Goblin
    .goto 194,59.60,76.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Claims Adjuster|r
    .turnin 14125 >>Turn in 447
    .target Claims Adjuster
    .isOnQuest 14125
step << Goblin
    .goto 194,56.44,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14126 >>Accept Life Savings
    .unitscan Sassy Hardwrench
    .isQuestTurnedIn 14125 --any of: 447
step << Goblin
    .goto 194,20.84,13.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Prince Gallywix|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14126 >>Turn in Life Savings
    .unitscan Trade Prince Gallywix
    .isOnQuest 14126
step
    +|cRXP_WARN_End of the Kezan route.|r
]])
