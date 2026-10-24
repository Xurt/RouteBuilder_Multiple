-- 31-35 The Hinterlands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/The Hinterlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 31-35 The Hinterlands
--RouteBuilder:next
#next Zone Routes (Alliance)\35-37 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Alliance)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts;Zone Routes (Alliance)\33-36 Desolace: around Karnum Marshweaver

step
    .goto 26,65.95,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grella Stonefist|r
    .target Grella Stonefist
    .home >>Set your Hearthstone to Grella Stonefist's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,66.24,44.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dron Blastbrew|r
    .accept 26485 >>Accept Snapjaws, Lad!
    .accept 26486 >>Accept 99 Bottles of Booze on the Beach
    .target Dron Blastbrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,66.36,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerr Ironsight|r
    .accept 26462 >>Accept The Wicked Revantusk
    .accept 26483 >>Accept Gan'dranda
    .target Kerr Ironsight
step
    #completewith Drop485x1
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 26,72.11,50.03,0
    .goto 26,72.11,50.03,40,0
    .goto 26,72.61,52.87,40,0
    >>Kill |cRXP_ENEMY_Revantusk Hexxers|r and |cRXP_ENEMY_Revantusk Stalkers|r
    >>Kill |cRXP_ENEMY_Gan'dranda|r
    .complete 26462,1 --Revantusk Hexxer (8)
    .complete 26483,1 --Gan'dranda slain (1)
    .mob Revantusk Hexxer
    .mob Revantusk Stalker
    .mob Gan'dranda
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop485x1
    #loop
    .goto 26,78.25,63.22,0
    .goto 26,78.25,63.22,40,0
    .goto 26,77.51,66.43,40,0
    .goto 26,76.28,70.82,40,0
    .goto 26,79.86,73.30,40,0
    .goto 26,80.82,61.89,40,0
    >>Pick up |cRXP_PICK_Pupellyverbos Port|r from the ground
    >>Kill |cRXP_ENEMY_Saltwater Snapjaws|r. Loot them for |cRXP_LOOT_Snapjaw Gizzard|r
    .complete 26486,1 --Pupellyverbos Port (1)
    .complete 26485,1 --Snapjaw Gizzard (8)
    .mob Saltwater Snapjaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.89,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doran Steelwing|r
    .accept 26497 >>Accept Vilebranch Scum
    .accept 26518 >>Accept Heads Up
    .target Doran Steelwing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.73,59.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .accept 26523 >>Accept All That Skitters
    .accept 26521 >>Accept Faces of Evil
    .target Fraggar Thundermantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along7
    >>As you go: Kill |cRXP_ENEMY_Skittering Spiderlings|r. Loot them for |cRXP_LOOT_Skittering Spiderling|r. Kill |cRXP_ENEMY_Vilebranch Witch Doctors|r. Kill |cRXP_ENEMY_Vilebranch Headhunters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26523,1 --Skittering Spiderling (8)
    .complete 26497,2 --Vilebranch Witch Doctor slain (5)
    .complete 26497,1 --Vilebranch Headhunter slain (5)
    .mob Skittering Spiderling
    .mob Vilebranch Witch Doctor
    .mob Vilebranch Headhunter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along7
    #loop
    .goto 26,64.87,65.18,0
    .goto 26,64.87,65.18,40,0
    .goto 26,63.70,66.84,40,0
    .goto 26,64.89,68.38,40,0
    .goto 26,64.27,69.98,40,0
    .goto 26,65.74,68.60,40,0
    .goto 26,66.48,70.85,40,0
    .goto 26,68.16,69.53,40,0
    .goto 26,65.66,72.63,40,0
    >>Use the Tiki Torch to set fire to 8 Tiki Masks at Jintha'Alor.
    .complete 26521,1 --Jintha'Alor Tiki Mask Fire Bunny
    .target Jintha'Alor Tiki Mask Fire Bunny
step
    #completewith Drop485x2
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop485x2
    #loop
    .goto 26,65.70,70.39,0
    .goto 26,65.70,70.39,40,0
    .goto 26,64.97,66.48,40,0
    .goto 26,68.45,69.24,40,0
    >>Kill |cRXP_ENEMY_Skittering Spiderlings|r. Loot them for |cRXP_LOOT_Skittering Spiderling|r
    >>Kill |cRXP_ENEMY_Vilebranch Witch Doctors|r
    >>Kill |cRXP_ENEMY_Vilebranch Headhunters|r
    .complete 26523,1 --Skittering Spiderling (8)
    .complete 26497,2 --Vilebranch Witch Doctor slain (5)
    .complete 26497,1 --Vilebranch Headhunter slain (5)
    .mob Skittering Spiderling
    .mob Vilebranch Witch Doctor
    .mob Vilebranch Headhunter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Grella Stonefist's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,66.36,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerr Ironsight|r
    .turnin 26462 >>Turn in The Wicked Revantusk
    .turnin 26483 >>Turn in Gan'dranda
    .accept 26492 >>Accept Skulk Rock Supplies
    .accept 26491 >>Accept Skulk Rock Clean-Up
    .target Kerr Ironsight
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,66.24,44.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dron Blastbrew|r
    .turnin 26486 >>Turn in 99 Bottles of Booze on the Beach
    .turnin 26485 >>Turn in Snapjaws, Lad!
    .accept 26490 >>Accept Prime Slime
    .target Dron Blastbrew
step
    #completewith Drop485x3
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop485x3
    #loop
    .goto 26,59.97,42.85,0
    .goto 26,59.97,42.85,40,0
    .goto 26,56.85,43.31,40,0
    >>Loot the |cRXP_PICK_Ooze-coated Supply Crates|r for |cRXP_LOOT_Ooze-Coated Supply Crate|r
    >>Kill |cRXP_ENEMY_Jade Oozes|r
    >>Kill |cRXP_ENEMY_The Direglob|r and loot |cRXP_LOOT_Direglob Sample|r
    .complete 26492,1 --Ooze-Coated Supply Crate (5)
    .complete 26491,1 --Jade Ooze slain (10)
    .complete 26490,1 --Direglob Sample (1)
    .mob Jade Ooze
    .mob The Direglob
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,66.24,44.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dron Blastbrew|r
    .turnin 26490 >>Turn in Prime Slime
    .target Dron Blastbrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,66.36,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerr Ironsight|r
    .turnin 26492 >>Turn in Skulk Rock Supplies
    .turnin 26491 >>Turn in Skulk Rock Clean-Up
    .accept 26496 >>Accept Down with the Vilebranch
    .target Kerr Ironsight
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.89,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doran Steelwing|r
    .turnin 26497 >>Turn in Vilebranch Scum
    .turnin 26496 >>Turn in Down with the Vilebranch
    .accept 26498 >>Accept Death to the Vilebranch
    .target Doran Steelwing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.73,59.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .turnin 26523 >>Turn in All That Skitters
    .turnin 26521 >>Turn in Faces of Evil
    .accept 26524 >>Accept Dark Vessels
    .target Fraggar Thundermantle
step
    #completewith Drop485x4
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop485x4
    >>As you go: Pick up |cRXP_PICK_Vessel of Tainted Blood|r from the ground. Kill |cRXP_ENEMY_Vilebranch Berserkers|r. Kill |cRXP_ENEMY_Vilebranch Shadowcasters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26524,1 --Vessel of Tainted Blood (1)
    .complete 26498,1 --Vilebranch Berserker slain (5)
    .complete 26498,2 --Vilebranch Shadowcaster slain (5)
    .mob Vilebranch Berserker
    .mob Vilebranch Shadowcaster
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop485x4
    .goto 26,65.15,64.93
    >>Kill |cRXP_ENEMY_Umboda Three-Heads|r and loot |cRXP_LOOT_Umboda's Head|r
    .complete 26518,1 --Umboda's Head (1)
    .mob Umboda Three-Heads
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.89,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doran Steelwing|r
    .turnin 26518 >>Turn in Heads Up
    .accept 26515 >>Accept Ongo'longo's Revenge
    .target Doran Steelwing
step
    #completewith Drop485x5
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop485x5
    #loop
    .goto 26,63.80,66.79,0
    .goto 26,63.80,66.79,40,0
    .goto 26,64.00,70.59,40,0
    .goto 26,67.11,71.94,40,0
    >>Pick up |cRXP_PICK_Vessel of Tainted Blood|r from the ground
    >>Kill |cRXP_ENEMY_Vilebranch Berserkers|r
    >>Kill |cRXP_ENEMY_Vilebranch Shadowcasters|r
    .complete 26524,1 --Vessel of Tainted Blood (1)
    .complete 26498,1 --Vilebranch Berserker slain (5)
    .complete 26498,2 --Vilebranch Shadowcaster slain (5)
    .mob Vilebranch Berserker
    .mob Vilebranch Shadowcaster
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,62.18,75.30
    >>Kill |cRXP_ENEMY_Ongo'longo|r
    .complete 26515,1 --Ongo'longo slain (1)
    .mob Ongo'longo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.89,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doran Steelwing|r
    .turnin 26498 >>Turn in Death to the Vilebranch
    .turnin 26515 >>Turn in Ongo'longo's Revenge
    .accept 26516 >>Accept It's Ours Now
    .target Doran Steelwing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.73,59.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .turnin 26524 >>Turn in Dark Vessels
    .accept 26517 >>Accept Summit of Fate
    .target Fraggar Thundermantle
step
    #completewith Drop485x6
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop485x6
    #loop
    .goto 26,60.54,67.59,0
    .goto 26,60.54,67.59,40,0
    .goto 26,58.41,68.10,40,0
    >>Kill |cRXP_ENEMY_Vilebranch Soul Eaters|r
    >>Kill |cRXP_ENEMY_Vilebranch Blood Drinkers|r
    .complete 26516,1 --Vilebranch Soul Eater slain (5)
    .complete 26516,2 --Vilebranch Blood Drinker slain (5)
    .mob Vilebranch Soul Eater
    .mob Vilebranch Blood Drinker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 26,59.35,76.25,0
    .goto 26,59.35,76.25,40,0
    .goto 26,60.26,77.85,40,0
    >>Kill |cRXP_ENEMY_Sacrificed Vilebranches|r. Loot them for |cRXP_LOOT_Spider Idol|r
    .complete 26517,1 --Spider Idol (8)
    .mob Sacrificed Vilebranch
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.89,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doran Steelwing|r
    .turnin 26516 >>Turn in It's Ours Now
    .target Doran Steelwing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.73,59.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .turnin 26517 >>Turn in Summit of Fate
    .accept 26525 >>Accept Venomous Secrets
    .accept 26526 >>Accept Hunt the Keeper
    .target Fraggar Thundermantle
step
    #completewith Drop485x7
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop485x7
    #loop
    .goto 26,57.60,80.78,0
    .goto 26,57.60,80.78,40,0
    .goto 26,56.40,84.88,40,0
    >>Kill |cRXP_ENEMY_Spawn of Shadras|r
    >>Kill |cRXP_ENEMY_Morta'gya the Keeper|r and loot |cRXP_LOOT_Tablet of Shadra|r
    .complete 26525,1 --Spawn of Shadra slain (8)
    .complete 26526,1 --Tablet of Shadra (1)
    .mob Spawn of Shadra
    .mob Morta'gya the Keeper
step
    .goto 26,78.18,81.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
    .turnin 26430 >>Turn in Revantusk Village
    .target Elder Torntusk
    .isOnQuest 26430
step
    .goto 26,78.18,81.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
    .accept 26432 >>Accept The Fall of Jintha'Alor
    .target Elder Torntusk
    .isQuestTurnedIn 26267 --Skulk Rock Clean-Up
    .isQuestTurnedIn 26268 --Skulk Rock Supplies
    .xp <31,1
step
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 26432 >>Turn in The Fall of Jintha'Alor
    .target Primal Torntusk
    .isOnQuest 26432
step
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .accept 26384 >>Accept Darkcleric Marnal
    .target Eliza Darkgrin
    .isQuestTurnedIn 26369 --any of: Hunt the Keeper
    .xp <31,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.73,59.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .turnin 26526 >>Turn in Hunt the Keeper
    .turnin 26525 >>Turn in Venomous Secrets
    .target Fraggar Thundermantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,63.99,59.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Yoro|r
    .accept 27725 >>Accept Quel'Danil Lodge
    .target Tracker Yoro
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,32.15,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Traska|r
    .turnin 27725 >>Turn in Quel'Danil Lodge
    .accept 27626 >>Accept The Highvale Documents
    .accept 27625 >>Accept In Defense of Quel'Danil
    .target Anchorite Traska
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 26,32.51,45.55,0
    .goto 26,32.51,45.55,40,0
    .goto 26,30.71,50.81,40,0
    .goto 26,28.56,46.05,40,0
    >>Pick up |cRXP_PICK_Highvale Report|r from the ground
    >>Pick up |cRXP_PICK_Highvale Notes|r from the ground
    >>Pick up |cRXP_PICK_Highvale Records|r from the ground
    >>Kill |cRXP_ENEMY_Deathstalker Invaders|r
    .complete 27626,1 --Highvale Report (1)
    .complete 27626,3 --Highvale Notes (1)
    .complete 27626,2 --Highvale Records (1)
    .complete 27625,1 --Deathstalker Invader slain (16)
    .mob Deathstalker Invader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,32.15,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Traska|r
    .turnin 27625 >>Turn in In Defense of Quel'Danil
    .turnin 27626 >>Turn in The Highvale Documents
    .target Anchorite Traska
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,30.68,47.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilda Cloudcaller|r
    .accept 26641 >>Accept Can't Make An Omelette Without...
    .accept 26528 >>Accept The Eye of Shadra
    .target Gilda Cloudcaller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 26,45.05,42.08,0
    .goto 26,45.05,42.08,40,0
    .goto 26,47.04,40.25,40,0
    >>Pick up |cRXP_PICK_Shadraspawn Egg|r from the ground
    >>Open the |cRXP_PICK_Cache of Shadra|r. Loot it for |cRXP_LOOT_Eye of Shadra|r
    .complete 26641,1 --Shadraspawn Egg (5)
    .complete 26528,1 --Eye of Shadra (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,30.68,47.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilda Cloudcaller|r
    .turnin 26528 >>Turn in The Eye of Shadra
    .turnin 26641 >>Turn in Can't Make An Omelette Without...
    .accept 26643 >>Accept Starvation Diet
    .accept 26529 >>Accept The Fang of Shadra
    .target Gilda Cloudcaller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,48.52,53.18
    >>Kill |cRXP_ENEMY_Cocooned Victims|r
    >>Open the |cRXP_PICK_Cache of Shadra|r. Loot it for |cRXP_LOOT_Fang of Shadra|r
    .complete 26643,1 --Cocooned Victim slain (6)
    .complete 26529,1 --Fang of Shadra (1)
    .mob Cocooned Victim
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,30.68,47.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilda Cloudcaller|r
    .turnin 26643 >>Turn in Starvation Diet
    .turnin 26529 >>Turn in The Fang of Shadra
    .accept 26530 >>Accept The Shell of Shadra
    .target Gilda Cloudcaller
step
    .goto 26,31.86,58.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkcleric Marnal|r
    .turnin 26384 >>Turn in Darkcleric Marnal
    .target Darkcleric Marnal
    .isOnQuest 26384
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,48.44,67.75
    >>Kill |cRXP_ENEMY_Qiaga the Keeper|r and loot |cRXP_LOOT_Shell of Shadra|r
    .complete 26530,1 --Shell of Shadra (1)
    .mob Qiaga the Keeper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,30.68,47.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilda Cloudcaller|r
    .turnin 26530 >>Turn in The Shell of Shadra
    .accept 26531 >>Accept Summoning Shadra
    .target Gilda Cloudcaller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,32.09,67.20
    >>Use the Idol of Shadra at the Northwestern, Southwestern, and Eastern Temples in Shadra'Alor.
    .complete 26531,1 --Shadra'Alor Northwest Altar Bunny
    .target Shadra'Alor Northwest Altar Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,32.52,76.22
    >>Use the Idol of Shadra at the Northwestern, Southwestern, and Eastern Temples in Shadra'Alor.
    .complete 26531,3 --Shadra'Alor Southwest Altar Bunny
    .target Shadra'Alor Southwest Altar Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,37.10,71.55
    >>Use the Idol of Shadra at the Northwestern, Southwestern, and Eastern Temples in Shadra'Alor.
    .complete 26531,2 --Shadra'Alor East Altar Bunny
    .target Shadra'Alor East Altar Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,34.36,67.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildhammer Lookout|r
    .turnin 26531 >>Turn in Summoning Shadra
    .accept 26532 >>Accept Shadra the Venom Queen
    .target Wildhammer Lookout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,34.16,70.74
    >>Kill |cRXP_ENEMY_Shadra|r
    .complete 26532,1 --Shadra slain (1)
    .mob Shadra
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,9.90,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 26542 >>Turn in Hero's Call: The Hinterlands!
    .target Gryphon Master Talonaxe
    .isOnQuest 26542
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,9.90,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 26532 >>Turn in Shadra the Venom Queen
    .accept 26546 >>Accept Razorbeak Friends
    .accept 26547 >>Accept A Mangy Threat
    .target Gryphon Master Talonaxe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,9.90,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 28505 >>Accept The Battle for Andorhal
    .target Gryphon Master Talonaxe
    .xp <34,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along51
    >>As you go: Kill |cRXP_ENEMY_Mangy Silvermanes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26547,1 --Mangy Silvermane slain (8)
    .mob Mangy Silvermane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along51
    #loop
    .goto 26,14.60,50.00,0
    .goto 26,14.60,50.00,40,0
    .goto 26,14.20,52.60,40,0
    .goto 26,12.00,53.80,40,0
    >>Interact with |cRXP_FRIENDLY_Trained Razorbeaks|r
    .complete 26546,1 --Trained Razorbeak (7)
    .target Trained Razorbeak
step
    #completewith Drop485x8
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop485x8
    #loop
    .goto 26,15.62,54.04,0
    .goto 26,15.62,54.04,40,0
    .goto 26,18.52,55.78,40,0
    .goto 26,20.38,57.44,40,0
    >>Kill |cRXP_ENEMY_Mangy Silvermanes|r
    .complete 26547,1 --Mangy Silvermane slain (8)
    .mob Mangy Silvermane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,9.90,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 26547 >>Turn in A Mangy Threat
    .turnin 26546 >>Turn in Razorbeak Friends
    .target Gryphon Master Talonaxe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 34 >>Grind to level 34 (The Battle for Andorhal needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,9.90,44.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 28505 >>Accept The Battle for Andorhal
    .accept 26548 >>Accept Out to the Front
    .target Gryphon Master Talonaxe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Grella Stonefist's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 26,66.36,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerr Ironsight|r
    .turnin 26548 >>Turn in Out to the Front
    .target Kerr Ironsight
step
    .goto 26,49.35,37.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .turnin 485 >>Turn in Find OOX-09/HL!
    .target Homing Robot OOX-09/HL
    .isOnQuest 485
step
    .goto 26,49.35,37.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .accept 836 >>Accept Rescue OOX-09/HL!
    .target Homing Robot OOX-09/HL
    .isQuestTurnedIn 485 --any of: Find OOX-09/HL!
    .xp <30,1
step
    .goto 26,57.81,50.20
    >>Escort OOX-09/HL to safety
    .complete 836,1 --Escort OOX-09/HL to safety
    .isOnQuest 836
step
    +|cRXP_WARN_End of the The Hinterlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Rescue OOX-09/HL!
    >>|cRXP_FRIENDLY_Western Plaguelands|r: The Battle for Andorhal << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 34|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.5 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.1 levels of quests, starting around Captain Hecklebury Smotts; 1 quest from here hands in there), |cRXP_FRIENDLY_Desolace|r (about 0.9 levels of quests, starting around Karnum Marshweaver). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
]])
