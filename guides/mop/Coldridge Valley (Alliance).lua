-- 1-5 Coldridge Valley: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Coldridge Valley.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 1-5 Coldridge Valley

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,67.14,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r
    .accept 24469 >>Accept Hold the Line!
    .target Joren Ironstock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 427,66.93,41.76,0
    .goto 427,66.93,41.76,40,0
    .goto 427,69.37,38.38,40,0
    >>Kill |cRXP_ENEMY_Rockjaw Invaders|r
    .complete 24469,1 --Rockjaw Invader slain (6)
    .mob Rockjaw Invader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,67.14,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r
    .turnin 24469 >>Turn in Hold the Line!
    .accept 24470 >>Accept Give 'em What-For
    .target Joren Ironstock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,65.50,43.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 24471 >>Accept Aid for the Wounded
    .target Sten Stoutarm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,65.59,61.69
    >>Kill |cRXP_ENEMY_Rockjaw Goons|r
    .complete 24470,1 --Rockjaw Goon slain (3)
    .mob Rockjaw Goon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,75.27,53.29
    >>Interact with |cRXP_FRIENDLY_Wounded Coldridge Mountaineers|r
    .complete 24471,1 --Wounded Coldridge Mountaineer (4)
    .target Wounded Coldridge Mountaineer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,65.50,43.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 24471 >>Turn in Aid for the Wounded
    .target Sten Stoutarm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,67.14,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock|r
    .turnin 24470 >>Turn in Give 'em What-For
    .accept 24473 >>Accept Lockdown in Anvilmar
    .target Joren Ironstock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,61.49,19.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r
    .turnin 24473 >>Turn in Lockdown in Anvilmar
    .target Jona Ironstock
step << Dwarf Rogue/Gnome Rogue
    .xp 2 >>Grind to level 2 (Encrypted Rune needs it)
step << Dwarf Warlock/Gnome Warlock
    .xp 2 >>Grind to level 2 (Tainted Rune needs it)
step << Dwarf Warrior
    .xp 2 >>Grind to level 2 (Simple Rune needs it)
step << Dwarf Hunter
    .xp 2 >>Grind to level 2 (Etched Rune needs it)
step << Dwarf Priest
    .xp 2 >>Grind to level 2 (Hallowed Rune needs it)
step << Dwarf Shaman
    .xp 2 >>Grind to level 2 (Empowered Rune needs it)
step << Dwarf Mage
    .xp 2 >>Grind to level 2 (Arcane Rune needs it)
step << Dwarf Paladin
    .xp 2 >>Grind to level 2 (Consecrated Rune needs it)
step
    .goto 427,61.49,19.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r
    .accept 3109 >>Accept Encrypted Rune << Dwarf Rogue/Gnome Rogue
    .accept 3115 >>Accept Tainted Rune << Dwarf Warlock/Gnome Warlock
    .accept 3106 >>Accept Simple Rune << Dwarf Warrior
    .accept 3108 >>Accept Etched Rune << Dwarf Hunter
    .accept 3110 >>Accept Hallowed Rune << Dwarf Priest
    .accept 24494 >>Accept Empowered Rune << Dwarf Shaman
    .accept 24496 >>Accept Arcane Rune << Dwarf Mage
    .accept 24474 >>Accept First Things First: We're Gonna Need Some Beer << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 3107 >>Accept Consecrated Rune << Dwarf Paladin
    .target Jona Ironstock
step << Dwarf Warlock/Gnome Warlock
    .goto 427,61.23,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saripal Smolderbrew|r
    .turnin 3115 >>Turn in Tainted Rune
    .target Saripal Smolderbrew
step << Dwarf Warlock
    .xp 2 >>Grind to level 2 (Corruption needs it)
step << Dwarf Warlock
    .goto 427,61.23,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saripal Smolderbrew|r
    .accept 26904 >>Accept Corruption
    .target Saripal Smolderbrew
step << Dwarf Priest
    .goto 427,60.71,14.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >>Turn in Hallowed Rune
    .accept 24533 >>Accept Words of Power
    .target Branstock Khalder
step << Dwarf Shaman
    .goto 427,61.16,13.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .turnin 24494 >>Turn in Empowered Rune
    .accept 24527 >>Accept Your Path Begins Here
    .target Teo Hammerstorm
step << Dwarf Mage
    .goto 427,61.27,14.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teegli Merrowith|r
    .turnin 24496 >>Turn in Arcane Rune
    .accept 24526 >>Accept Filling Up the Spellbook
    .target Teegli Merrowith
step << Dwarf Rogue/Gnome Rogue
    .goto 427,59.53,20.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3109 >>Turn in Encrypted Rune
    .target Solm Hargrin
step << Dwarf Rogue
    .xp 2 >>Grind to level 2 (Evisceratin' the Enemy needs it)
step << Dwarf Rogue
    .goto 427,59.53,20.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .accept 24532 >>Accept Evisceratin' the Enemy
    .target Solm Hargrin
step << Dwarf Warrior
    .goto 427,61.89,18.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Turn in Simple Rune
    .accept 24531 >>Accept Getting Battle-Ready
    .target Thran Khorman
step
    .goto 427,61.70,22.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r
    .accept 24477 >>Accept Dwarven Artifacts << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Grundel Harkin
    .home >>Set your Hearthstone to Grundel Harkin's inn
step << Dwarf Paladin
    .goto 427,61.90,24.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 3107 >>Turn in Consecrated Rune
    .accept 24528 >>Accept The Power of the Light
    .target Bromos Grummner
step << Dwarf Hunter
    .goto 427,63.66,20.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Turn in Etched Rune
    .accept 24530 >>Accept Oh, A Hunter's Life For Me
    .target Thorgas Grimson
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,68.20,27.88
    >>Open the |cRXP_PICK_Keg of Gnomenbrau|r. Loot it for |cRXP_LOOT_Cask of Gnomenbrau|r
    .complete 24474,3 --Cask of Gnomenbrau (1)
step << Dwarf Warrior
    #completewith Along21
    >>As you go: Kill |cRXP_ENEMY_Training Dummies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24531,1 --Training Dummy slain (8)
    .mob Training Dummy
step << Dwarf Hunter
    #completewith Along21
    >>As you go: Kill |cRXP_ENEMY_Training Dummies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24530,1 --Training Dummy slain (8)
    .mob Training Dummy
step << Dwarf Warlock
    #completewith Along21
    >>As you go: Kill |cRXP_ENEMY_Training Dummies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26904,1 --Training Dummy slain (8)
    .mob Training Dummy
step << Dwarf Paladin
    .goto 427,62.24,29.67
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 24528,1 --Training Dummy slain (8)
    .mob Training Dummy
step << Dwarf Paladin
    .goto 427,61.90,24.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 24528 >>Turn in The Power of the Light
    .target Bromos Grummner
step
    #label Along21
    .goto 427,62.24,29.67
    >>Kill |cRXP_ENEMY_Training Dummies|r << Dwarf Rogue
    .complete 24532,1 << Dwarf Rogue --Training Dummy slain (8)
    .complete 24533,1 << Dwarf Priest --Training Dummy slain (8)
    .complete 24527,1 << Dwarf Shaman --Training Dummy slain (8)
    .complete 24526,1 << Dwarf Mage --Training Dummy slain (8)
    .mob Training Dummy << Dwarf Rogue
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,56.72,27.83
    >>Open the |cRXP_PICK_Keg of Stormhammer Stout|r. Loot it for |cRXP_LOOT_Cask of Stormhammer Stout|r
    .complete 24474,1 --Cask of Stormhammer Stout (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 427,39.96,27.20,0
    .goto 427,39.96,27.20,40,0
    .goto 427,39.12,29.53,40,0
    .goto 427,28.39,35.87,40,0
    .goto 427,26.77,37.12,40,0
    .goto 427,22.72,34.52,40,0
    .goto 427,23.22,33.48,40,0
    >>Open the |cRXP_PICK_Keg of Theramore Pale Ale|r. Loot it for |cRXP_LOOT_Cask of Theramore Pale Ale|r
    >>Pick up |cRXP_PICK_Forgotten Dwarven Artifact|r from the ground
    .complete 24474,2 --Cask of Theramore Pale Ale (1)
    .complete 24477,1 --Forgotten Dwarven Artifact (5)
step << Dwarf Priest
    .goto 427,60.71,14.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 24533 >>Turn in Words of Power
    .target Branstock Khalder
step << Dwarf Shaman
    .goto 427,61.16,13.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm|r
    .turnin 24527 >>Turn in Your Path Begins Here
    .target Teo Hammerstorm
step << Dwarf Mage
    .goto 427,61.27,14.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teegli Merrowith|r
    .turnin 24526 >>Turn in Filling Up the Spellbook
    .target Teegli Merrowith
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Grundel Harkin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,61.49,19.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r
    .turnin 24474 >>Turn in First Things First: We're Gonna Need Some Beer
    .accept 24475 >>Accept All the Other Stuff
    .target Jona Ironstock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,61.70,22.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r
    .turnin 24477 >>Turn in Dwarven Artifacts
    .accept 24486 >>Accept Make Hay While the Sun Shines
    .target Grundel Harkin
step << Dwarf Rogue
    .goto 427,59.53,20.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 24532 >>Turn in Evisceratin' the Enemy
    .target Solm Hargrin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,49.19,40.75
    >>Kill |cRXP_ENEMY_Rockjaw Scavengers|r. Loot them for |cRXP_LOOT_Priceless Rockjaw Artifact|r
    .complete 24486,1 --Priceless Rockjaw Artifact (5)
    .mob Rockjaw Scavenger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 427,61.40,70.08,0
    .goto 427,61.40,70.08,40,0
    .goto 427,64.04,72.44,40,0
    >>Kill |cRXP_ENEMY_Ragged Timber Wolfs|r and |cRXP_ENEMY_Ragged Young Wolfs|r. Loot them for |cRXP_LOOT_Ragged Wolf Hide|r
    .complete 24475,2 --Ragged Wolf Hide (4)
    .mob Ragged Timber Wolf
    .mob Ragged Young Wolf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,79.35,41.00
    >>Kill |cRXP_ENEMY_Small Crag Boars|r. Loot them for |cRXP_LOOT_Boar Haunch|r
    .complete 24475,1 --Boar Haunch (3)
    .mob Small Crag Boar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,61.70,22.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r
    .turnin 24486 >>Turn in Make Hay While the Sun Shines
    .target Grundel Harkin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,61.49,19.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r
    .turnin 24475 >>Turn in All the Other Stuff
    .accept 24487 >>Accept Whitebeard Needs Ye
    .target Jona Ironstock
step
    .goto 427,62.24,29.67
    >>Kill |cRXP_ENEMY_Training Dummies|r << Dwarf Warrior
    .complete 24531,1 << Dwarf Warrior --Training Dummy slain (8)
    .complete 24530,1 << Dwarf Hunter --Training Dummy slain (8)
    .complete 26904,1 << Dwarf Warlock --Training Dummy slain (8)
    .mob Training Dummy << Dwarf Warrior
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,42.72,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 24487 >>Turn in Whitebeard Needs Ye
    .accept 182 >>Accept The Troll Menace
    .target Grelin Whitebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,43.24,63.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Soren|r
    .accept 24489 >>Accept Trolling for Information
    .target Apprentice Soren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,41.73,63.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r
    .accept 3361 >>Accept A Refugee's Quandary
    .target Felix Whindlebolt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along39
    >>As you go: Pick up |cRXP_PICK_Felix's Chest|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 3361,2 --Felix's Chest (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along39
    #loop
    .goto 427,31.36,83.89,0
    .goto 427,31.36,83.89,40,0
    .goto 427,29.35,82.59,40,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Frostmane Troll Whelp slain (10)
    .mob Frostmane Troll Whelp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,21.30,64.05
    >>Pick up |cRXP_PICK_Felix's Box|r from the ground
    .complete 3361,1 --Felix's Box (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,20.87,67.41
    >>Stand near a Frostmane Soothsayer in each of the Frostmane camps and listen to what they have to say.
    .complete 24489,3 --Soothsayer Mirim'koa
    .target Soothsayer Mirim'koa
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along42
    >>As you go: Pick up |cRXP_PICK_Felix's Chest|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 3361,2 --Felix's Chest (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along42
    .goto 427,30.18,85.46
    >>Stand near a Frostmane Soothsayer in each of the Frostmane camps and listen to what they have to say.
    .complete 24489,2 --Soothsayer Rikkari
    .target Soothsayer Rikkari
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,30.98,84.10
    >>Pick up |cRXP_PICK_Felix's Chest|r from the ground
    .complete 3361,2 --Felix's Chest (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along44
    >>As you go: Pick up |cRXP_PICK_Felix's Bucket of Bolts|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 3361,3 --Felix's Bucket of Bolts (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along44
    .goto 427,49.12,81.59
    >>Stand near a Frostmane Soothsayer in each of the Frostmane camps and listen to what they have to say.
    .complete 24489,1 --Soothsayer Shi'kala
    .target Soothsayer Shi'kala
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,49.13,80.39
    >>Pick up |cRXP_PICK_Felix's Bucket of Bolts|r from the ground
    .complete 3361,3 --Felix's Bucket of Bolts (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,41.73,63.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt|r
    .turnin 3361 >>Turn in A Refugee's Quandary
    .target Felix Whindlebolt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,43.24,63.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Soren|r
    .turnin 24489 >>Turn in Trolling for Information
    .target Apprentice Soren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,42.72,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >>Turn in The Troll Menace
    .accept 218 >>Accept Ice and Fire
    .target Grelin Whitebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,42.72,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >>Turn in Ice and Fire
    .target Grelin Whitebeard
    .isQuestComplete 218
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,51.47,82.68
    >>Kill |cRXP_ENEMY_Frostmane Novices|r and |cRXP_ENEMY_Frostmane Blades|r
    .complete 218,2 --Frostmane Novice (10)
    .mob Frostmane Novice
    .mob Frostmane Blade
step << Dwarf Warrior
    #completewith next
    .hs >>Hearth to Grundel Harkin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Dwarf Warrior
    .goto 427,61.89,18.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 24531 >>Turn in Getting Battle-Ready
    .target Thran Khorman
step << Dwarf Warlock
    .goto 427,61.23,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saripal Smolderbrew|r
    .turnin 26904 >>Turn in Corruption while you are here
    .isQuestComplete 26904
    .target Saripal Smolderbrew
step << Dwarf Hunter
    #completewith next
    .hs >>Hearth to Grundel Harkin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Dwarf Hunter
    .goto 427,63.66,20.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 24530 >>Turn in Oh, A Hunter's Life For Me
    .target Thorgas Grimson
step << Dwarf Warlock
    #completewith next
    .hs >>Hearth to Grundel Harkin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Dwarf Warlock
    .goto 427,61.23,17.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saripal Smolderbrew|r
    .turnin 26904 >>Turn in Corruption
    .target Saripal Smolderbrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,42.72,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 24490 >>Accept A Trip to Ironforge
    .target Grelin Whitebeard
    .isQuestTurnedIn 218 --any of: Ice and Fire
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,87.51,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .turnin 24490 >>Turn in A Trip to Ironforge
    .target Hands Springsprocket
    .isOnQuest 24490
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,87.51,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .accept 24491 >>Accept Follow that Gyro-Copter!
    .target Hands Springsprocket
    .isQuestTurnedIn 24490 --any of: A Trip to Ironforge
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,69.84,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r
    .turnin 24491 >>Turn in Follow that Gyro-Copter!
    .target Milo Geartwinge
    .isOnQuest 24491
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,69.84,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r
    .accept 24492 >>Accept Pack Your Bags
    .target Milo Geartwinge
    .isQuestTurnedIn 24491 --any of: Follow that Gyro-Copter!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Grundel Harkin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,59.56,20.96
    >>Pick up |cRXP_PICK_Leftover Boar Meat|r from the ground
    .complete 24492,3 --Leftover Boar Meat (1)
    .isOnQuest 24492
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,60.08,16.48
    >>Open the |cRXP_PICK_Beer Barrel|r. Loot it for |cRXP_LOOT_Coldridge Beer Flagon|r
    .complete 24492,1 --Coldridge Beer Flagon (1)
    .isOnQuest 24492
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,61.60,13.16
    >>Open the |cRXP_PICK_Wolf-Hide Cloaks|r. Loot it for |cRXP_LOOT_Ragged Wolf-Hide Cloak|r
    .complete 24492,2 --Ragged Wolf-Hide Cloak (1)
    .isOnQuest 24492
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 427,69.84,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge|r
    .turnin 24492 >>Turn in Pack Your Bags
    .target Milo Geartwinge
    .isOnQuest 24492
step
    +|cRXP_WARN_End of the Coldridge Valley route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Frostmane Hovel and back here|r: Ice and Fire << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
]])
