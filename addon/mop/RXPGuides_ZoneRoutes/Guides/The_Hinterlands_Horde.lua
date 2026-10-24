-- 31-35 The Hinterlands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 31, 37).
-- Split into 2 guides, listed under "31 - 38 The Hinterlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/The Hinterlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 31 - 38 The Hinterlands
#subweight -31
#name 31-35 The Hinterlands: around Elder Torntusk
--RouteBuilder:next
#next Zone Routes (Horde)\35-39 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah;Zone Routes (Horde)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts

step
    .goto 26,78.18,81.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
    .turnin 26430 >>Turn in Revantusk Village
    .target Elder Torntusk
    .isOnQuest 26430
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 31 >>Grind to level 31 (Start Taking Back needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .accept 26306 >>Accept Start Taking Back
    .target Primal Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along2
    >>As you go: Kill |cRXP_ENEMY_Vilebranch Witch Doctors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26306,2 --Vilebranch Witch Doctor slain (5)
    .mob Vilebranch Witch Doctor
step
    #label Along2
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .target Eliza Darkgrin
    .home >>Set your Hearthstone to Eliza Darkgrin's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .accept 26310 >>Accept All That Skitters
    .target Eliza Darkgrin
    .xp <31,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .accept 26366 >>Accept Heads Up
    .target Primal Torntusk
    .xp <31,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.79,66.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kotonga|r
    .accept 26357 >>Accept Faces of Evil
    .target Kotonga
    .xp <31,1
step
    #completewith Drop485x1
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop485x1
    #loop
    .goto 26,65.23,68.42,0
    .goto 26,65.23,68.42,40,0
    .goto 26,67.68,70.83,40,0
    >>Kill |cRXP_ENEMY_Vilebranch Witch Doctors|r
    >>Kill |cRXP_ENEMY_Vilebranch Headhunters|r
    .complete 26306,2 --Vilebranch Witch Doctor slain (5)
    .complete 26306,1 --Vilebranch Headhunter slain (5)
    .mob Vilebranch Witch Doctor
    .mob Vilebranch Headhunter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 26306 >>Turn in Start Taking Back while you are here
    .isQuestComplete 26306
    .target Primal Torntusk
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 110,81.16,37.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsudar the Bastion|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Alsudar the Bastion
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 110,84.56,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .accept 27278 >>Accept Grimshot's Call
    .target Zandine
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 110,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 27279 >>Accept The Shattered Hand
    .target Zelanis
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 110,59.17,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inethven|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Inethven
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 110,73.05,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zanien|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Zanien
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 110,71.71,55.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gez'li|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Gez'li
step
    .goto 110,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Champion Bachi|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Champion Bachi
step
    .goto 110,53.09,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldrae|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Aldrae
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9811 >>Turn in Friend of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9811
step << Orc/Undead/Tauren/Troll/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9812 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9811 --any of: Friend of the Sin'dorei
    .xp <15,1
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9328 >>Turn in Hero of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9328
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9621 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9328 --any of: Hero of the Sin'dorei
    .xp <15,1
step
    #completewith next
    .zone 26 >>Leave Silvermoon City for The Hinterlands
    .zoneskip 26
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Eliza Darkgrin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 26306 >>Turn in Start Taking Back
    .target Primal Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .accept 26307 >>Accept Death to the Vilebranch
    .target Primal Torntusk
    .xp <31,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .accept 26366 >>Accept Heads Up
    .target Primal Torntusk
    .xp <31,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.79,66.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kotonga|r
    .accept 26357 >>Accept Faces of Evil
    .target Kotonga
    .xp <31,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .accept 26310 >>Accept All That Skitters
    .target Eliza Darkgrin
    .xp <31,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,77.30,79.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grognard|r
    .accept 26225 >>Accept Pupellyverbos Port
    .target Grognard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along24
    >>As you go: Pick up |cRXP_PICK_Pupellyverbos Port|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 26225,1 --Pupellyverbos Port (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,78.14,81.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lard|r
    .accept 26212 >>Accept Lard Lost His Lunch
    .target Lard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,78.18,81.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
    .turnin 28574 >>Turn in Warchief's Command: The Hinterlands!
    .accept 26238 >>Accept The Savage Dwarves
    .accept 26263 >>Accept Thornar Thunderclash
    .target Elder Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,80.33,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katoom the Angler|r
    .accept 26211 >>Accept Snapjaws, Mon!
    .accept 26210 >>Accept Gammerita, Mon!
    .target Katoom the Angler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,79.16,79.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .accept 26223 >>Accept Stalking the Stalkers
    .target Huntsman Markhor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along24
    .goto 26,78.80,78.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mystic Yayo'jin|r
    .accept 26240 >>Accept Stomp To My Beat
    .target Mystic Yayo'jin
step
    #completewith Drop485x2
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 26,76.28,70.82,0
    .goto 26,76.28,70.82,40,0
    .goto 26,77.81,65.55,40,0
    .goto 26,80.03,61.51,40,0
    >>Kill |cRXP_ENEMY_Gammerita|r and loot |cRXP_LOOT_Katoom's Best Lure|r
    >>Kill |cRXP_ENEMY_Saltwater Snapjaws|r
    >>Pick up |cRXP_PICK_Pupellyverbos Port|r from the ground
    .complete 26210,1 --Katoom's Best Lure (1)
    .complete 26211,1 --Saltwater Snapjaw slain (10)
    .complete 26225,1 --Pupellyverbos Port (1)
    .mob Gammerita
    .mob Saltwater Snapjaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop485x2
    #loop
    .goto 26,77.47,52.44,0
    .goto 26,77.47,52.44,40,0
    .goto 26,75.78,49.65,40,0
    >>Kill |cRXP_ENEMY_Silvermane Stalkers|r
    .complete 26223,1 --Silvermane Stalker slain (8)
    .mob Silvermane Stalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,84.60,41.20
    >>Kill |cRXP_ENEMY_Vilebranch Kidnapper|r and loot |cRXP_LOOT_Lard's Lunch|r
    .complete 26212,1 --Lard's Lunch (1)
    .mob Vilebranch Kidnapper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,79.16,79.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .turnin 26223 >>Turn in Stalking the Stalkers
    .accept 26224 >>Accept Hunt the Savages
    .target Huntsman Markhor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,80.33,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katoom the Angler|r
    .turnin 26211 >>Turn in Snapjaws, Mon!
    .turnin 26210 >>Turn in Gammerita, Mon!
    .target Katoom the Angler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,78.14,81.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lard|r
    .turnin 26212 >>Turn in Lard Lost His Lunch
    .target Lard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,77.30,79.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grognard|r
    .turnin 26225 >>Turn in Pupellyverbos Port
    .target Grognard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Wildhammer Shamans|r and |cRXP_ENEMY_Wildhammer Warriors|r. Kill |cRXP_ENEMY_Thornar Thunderclash|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26238,1 --Wildhammer Shaman (8)
    .complete 26263,1 --Thornar Thunderclash slain (1)
    .mob Wildhammer Shaman
    .mob Wildhammer Warrior
    .mob Thornar Thunderclash
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along32
    #loop
    .goto 26,72.11,50.03,0
    .goto 26,72.11,50.03,40,0
    .goto 26,73.10,48.30,40,0
    >>Interact with |cRXP_FRIENDLY_Revantusk Stalker|r
    .complete 26240,1 --Revantusk Stalker
    .target Revantusk Stalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 26,72.68,49.02,0
    .goto 26,72.68,49.02,40,0
    .goto 26,71.14,50.30,40,0
    >>Kill |cRXP_ENEMY_Wildhammer Shamans|r and |cRXP_ENEMY_Wildhammer Warriors|r
    >>Kill |cRXP_ENEMY_Thornar Thunderclash|r
    .complete 26238,1 --Wildhammer Shaman (8)
    .complete 26263,1 --Thornar Thunderclash slain (1)
    .mob Wildhammer Shaman
    .mob Wildhammer Warrior
    .mob Thornar Thunderclash
step
    #completewith Drop485x3
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop485x3
    #loop
    .goto 26,64.20,50.40,0
    .goto 26,64.20,50.40,40,0
    .goto 26,64.60,55.60,40,0
    .goto 26,60.20,55.40,40,0
    >>Kill |cRXP_ENEMY_Savage Owlbeasts|r
    .complete 26224,1 --Savage Owlbeast slain (10)
    .mob Savage Owlbeast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,78.80,78.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mystic Yayo'jin|r
    .turnin 26240 >>Turn in Stomp To My Beat
    .target Mystic Yayo'jin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,79.16,79.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Markhor|r
    .turnin 26224 >>Turn in Hunt the Savages
    .target Huntsman Markhor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,78.18,81.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
    .turnin 26263 >>Turn in Thornar Thunderclash
    .turnin 26238 >>Turn in The Savage Dwarves
    .accept 26268 >>Accept Skulk Rock Supplies
    .accept 26267 >>Accept Skulk Rock Clean-Up
    .target Elder Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,78.04,78.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malcom Fendelson|r
    .accept 26283 >>Accept Prime Slime
    .target Malcom Fendelson
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.79,66.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kotonga|r
    .accept 26357 >>Accept Faces of Evil
    .target Kotonga
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .accept 26366 >>Accept Heads Up
    .accept 26307 >>Accept Death to the Vilebranch
    .target Primal Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .accept 26310 >>Accept All That Skitters
    .target Eliza Darkgrin
step
    #completewith Drop485x4
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along44
    >>As you go: Kill |cRXP_ENEMY_Skittering Spiderlings|r. Loot them for |cRXP_LOOT_Skittering Spiderling|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26310,1 --Skittering Spiderling (8)
    .mob Skittering Spiderling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 26,67.11,71.94,0
    .goto 26,67.11,71.94,40,0
    .goto 26,64.00,70.59,40,0
    .goto 26,63.80,66.79,40,0
    >>Kill |cRXP_ENEMY_Vilebranch Berserkers|r
    >>Kill |cRXP_ENEMY_Vilebranch Shadowcasters|r
    .complete 26307,1 --Vilebranch Berserker slain (5)
    .complete 26307,2 --Vilebranch Shadowcaster slain (5)
    .mob Vilebranch Berserker
    .mob Vilebranch Shadowcaster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop485x4
    #loop
    .goto 26,59.97,42.85,0
    .goto 26,59.97,42.85,40,0
    .goto 26,56.85,43.31,40,0
    >>Loot the |cRXP_PICK_Ooze-coated Supply Crates|r for |cRXP_LOOT_Ooze-Coated Supply Crate|r
    >>Kill |cRXP_ENEMY_Jade Oozes|r
    >>Kill |cRXP_ENEMY_The Direglob|r and loot |cRXP_LOOT_Direglob Sample|r
    .complete 26268,1 --Ooze-Coated Supply Crate (5)
    .complete 26267,1 --Jade Ooze slain (10)
    .complete 26283,1 --Direglob Sample (1)
    .mob Jade Ooze
    .mob The Direglob
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Eliza Darkgrin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along44
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 26307 >>Turn in Death to the Vilebranch
    .accept 26308 >>Accept It's Ours Now
    .target Primal Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along45
    >>As you go: Kill |cRXP_ENEMY_Vilebranch Blood Drinkers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26308,2 --Vilebranch Blood Drinker slain (5)
    .mob Vilebranch Blood Drinker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along45
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
    .complete 26357,1 --Jintha'Alor Tiki Mask Fire Bunny
    .target Jintha'Alor Tiki Mask Fire Bunny
step
    #completewith Drop485x5
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 26,66.81,79.95,0
    .goto 26,66.81,79.95,40,0
    .goto 26,64.59,82.18,40,0
    .goto 26,62.86,78.17,40,0
    >>Kill |cRXP_ENEMY_Vilebranch Soul Eaters|r
    >>Kill |cRXP_ENEMY_Vilebranch Blood Drinkers|r
    .complete 26308,1 --Vilebranch Soul Eater slain (5)
    .complete 26308,2 --Vilebranch Blood Drinker slain (5)
    .mob Vilebranch Soul Eater
    .mob Vilebranch Blood Drinker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop485x5
    #loop
    .goto 26,66.07,69.70,0
    .goto 26,66.07,69.70,40,0
    .goto 26,68.45,69.24,40,0
    .goto 26,64.97,66.48,40,0
    >>Kill |cRXP_ENEMY_Skittering Spiderlings|r. Loot them for |cRXP_LOOT_Skittering Spiderling|r
    >>Kill |cRXP_ENEMY_Umboda Three-Heads|r and loot |cRXP_LOOT_Umboda's Head|r
    .complete 26310,1 --Skittering Spiderling (8)
    .complete 26366,1 --Umboda's Head (1)
    .mob Skittering Spiderling
    .mob Umboda Three-Heads
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.79,66.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kotonga|r
    .turnin 26357 >>Turn in Faces of Evil
    .target Kotonga
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 26366 >>Turn in Heads Up
    .turnin 26308 >>Turn in It's Ours Now
    .accept 26367 >>Accept Ongo'longo's Revenge
    .target Primal Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .turnin 26310 >>Turn in All That Skitters
    .accept 26309 >>Accept Dark Vessels
    .target Eliza Darkgrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,62.18,75.30
    >>Kill |cRXP_ENEMY_Ongo'longo|r
    .complete 26367,1 --Ongo'longo slain (1)
    .mob Ongo'longo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.57,66.97
    >>Pick up |cRXP_PICK_Vessel of Tainted Blood|r from the ground
    .complete 26309,1 --Vessel of Tainted Blood (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .turnin 26309 >>Turn in Dark Vessels while you are here
    .isQuestComplete 26309
    .target Eliza Darkgrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 26367 >>Turn in Ongo'longo's Revenge
    .accept 26363 >>Accept Summit of Fate
    .target Primal Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .turnin 26309 >>Turn in Dark Vessels
    .accept 26368 >>Accept Venomous Secrets
    .target Eliza Darkgrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 26,59.35,76.25,0
    .goto 26,59.35,76.25,40,0
    .goto 26,60.26,77.85,40,0
    >>Kill |cRXP_ENEMY_Sacrificed Vilebranches|r. Loot them for |cRXP_LOOT_Spider Idol|r
    .complete 26363,1 --Spider Idol (8)
    .mob Sacrificed Vilebranch
step
    #completewith Drop485x6
    >>|cRXP_LOOT_OOX-09/HL Distress Beacon|r can drop from |cRXP_ENEMY_Saltwater Snapjaw|r, |cRXP_ENEMY_Vilebranch Axe Thrower|r, |cRXP_ENEMY_Vilebranch Witch Doctor|r. Use it to start the quest if you get one
    .collect 8704,1,485 --OOX-09/HL Distress Beacon (1)
    .accept 485 >>Accept Find OOX-09/HL!
    .use 8704
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop485x6
    #loop
    .goto 26,57.60,80.78,0
    .goto 26,57.60,80.78,40,0
    .goto 26,56.40,84.88,40,0
    >>Kill |cRXP_ENEMY_Spawn of Shadras|r. Loot them for |cRXP_LOOT_Shadra-Spawn Venom Sample|r
    .complete 26368,1 --Shadra-Spawn Venom Sample (6)
    .mob Spawn of Shadra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .turnin 26368 >>Turn in Venomous Secrets
    .target Eliza Darkgrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 26363 >>Turn in Summit of Fate
    .accept 26369 >>Accept Hunt the Keeper
    .target Primal Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,78.04,78.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malcom Fendelson|r
    .turnin 26283 >>Turn in Prime Slime
    .target Malcom Fendelson
step
    .goto 26,78.18,81.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Torntusk|r
    .turnin 26268 >>Turn in Skulk Rock Supplies << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 26267 >>Turn in Skulk Rock Clean-Up << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 26432 >>Accept The Fall of Jintha'Alor
    .target Elder Torntusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,57.38,86.30
    >>Kill |cRXP_ENEMY_Morta'gya the Keeper|r and loot |cRXP_LOOT_Tablet of Shadra|r
    .complete 26369,1 --Tablet of Shadra (1)
    .mob Morta'gya the Keeper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,31.82,58.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Surlis|r
    .accept 26382 >>Accept Can't Make An Omelette Without...
    .target Apothecary Surlis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,31.86,58.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkcleric Marnal|r
    .accept 26381 >>Accept The Eye of Shadra
    .target Darkcleric Marnal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Eliza Darkgrin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 26,67.81,66.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Primal Torntusk|r
    .turnin 26369 >>Turn in Hunt the Keeper << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 26432 >>Turn in The Fall of Jintha'Alor
    .target Primal Torntusk
step
    .goto 26,67.64,66.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eliza Darkgrin|r
    .accept 26384 >>Accept Darkcleric Marnal
    .target Eliza Darkgrin
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 26,47.04,40.25,0
    .goto 26,47.04,40.25,40,0
    .goto 26,45.05,42.08,40,0
    >>Open the |cRXP_PICK_Cache of Shadra|r. Loot it for |cRXP_LOOT_Eye of Shadra|r
    >>Pick up |cRXP_PICK_Shadraspawn Egg|r from the ground
    .complete 26381,1 --Eye of Shadra (1)
    .complete 26382,1 --Shadraspawn Egg (5)
step
    .goto 26,31.86,58.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkcleric Marnal|r
    .turnin 26381 >>Turn in The Eye of Shadra << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 26384 >>Turn in Darkcleric Marnal
    .accept 26406 >>Accept The Fang of Shadra << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Darkcleric Marnal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,31.82,58.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Surlis|r
    .turnin 26382 >>Turn in Can't Make An Omelette Without...
    .accept 26387 >>Accept Starvation Diet
    .target Apothecary Surlis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,48.52,53.18
    >>Kill |cRXP_ENEMY_Cocooned Victims|r
    >>Open the |cRXP_PICK_Cache of Shadra|r. Loot it for |cRXP_LOOT_Fang of Shadra|r
    .complete 26387,1 --Cocooned Victim slain (6)
    .complete 26406,1 --Fang of Shadra (1)
    .mob Cocooned Victim
step
    .goto 26,57.81,50.20
    >>Escort OOX-09/HL to safety
    .complete 836,1 --Escort OOX-09/HL to safety
    .isOnQuest 836
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,31.86,58.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkcleric Marnal|r
    .turnin 26406 >>Turn in The Fang of Shadra
    .accept 26418 >>Accept The Shell of Shadra
    .target Darkcleric Marnal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,31.82,58.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Surlis|r
    .turnin 26387 >>Turn in Starvation Diet
    .target Apothecary Surlis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,48.44,67.75
    >>Kill |cRXP_ENEMY_Qiaga the Keeper|r and loot |cRXP_LOOT_Shell of Shadra|r
    .complete 26418,1 --Shell of Shadra (1)
    .mob Qiaga the Keeper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,31.86,58.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkcleric Marnal|r
    .turnin 26418 >>Turn in The Shell of Shadra
    .accept 26558 >>Accept Summoning Shadra
    .target Darkcleric Marnal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,32.09,67.20
    >>Use the Idol of Shadra at the Northwestern, Southwestern, and Eastern Temples in Shadra'Alor.
    .complete 26558,1 --Shadra'Alor Northwest Altar Bunny
    .target Shadra'Alor Northwest Altar Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,32.52,76.22
    >>Use the Idol of Shadra at the Northwestern, Southwestern, and Eastern Temples in Shadra'Alor.
    .complete 26558,3 --Shadra'Alor Southwest Altar Bunny
    .target Shadra'Alor Southwest Altar Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,37.10,71.55
    >>Use the Idol of Shadra at the Northwestern, Southwestern, and Eastern Temples in Shadra'Alor.
    .complete 26558,2 --Shadra'Alor East Altar Bunny
    .target Shadra'Alor East Altar Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,35.65,68.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Lookout|r
    .turnin 26558 >>Turn in Summoning Shadra
    .accept 26419 >>Accept Shadra the Venom Queen
    .target Deathstalker Lookout
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,34.16,70.74
    >>Kill |cRXP_ENEMY_Shadra|r
    .complete 26419,1 --Shadra slain (1)
    .mob Shadra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,31.86,58.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkcleric Marnal|r
    .turnin 26419 >>Turn in Shadra the Venom Queen
    .target Darkcleric Marnal
step << BloodElf
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Turn in Fly to Silvermoon City
    .target Sathren Azuredawn
    .isOnQuest 9133
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .accept 9134 >>Accept Skymistress Gloaming
    .target Sathren Azuredawn
    .isQuestTurnedIn 9133 --any of: Fly to Silvermoon City
    .xp <5,1
step
    +|cRXP_WARN_That is all of The Hinterlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Warchief's Command: Arathi Highlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Warchief's Command: Ghostlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Warchief's Command: Northern Stranglethorn Vale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Shattered Hand << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
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
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Warchief's Command: The Cape of Stranglethorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Rescue OOX-09/HL!
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 34|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.5 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Desolace|r (about 1.3 levels of quests, starting around Cenarion Researcher Korrah), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.1 levels of quests, starting around Captain Hecklebury Smotts; 1 quest from here hands in there). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of The Hinterlands is planned from level 37.|r Load its guide for level 37 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 31 - 38 The Hinterlands
#subweight -31
#name 37-38 The Hinterlands
--RouteBuilder:next
#next Zone Routes (Horde)\35-39 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah;Zone Routes (Horde)\37-40 Dustwallow Marsh: around Tabetha

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 26,31.86,58.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkcleric Marnal|r
    .accept 28508 >>Accept The Battle for Andorhal
    .target Darkcleric Marnal
step
    +|cRXP_WARN_End of the The Hinterlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Western Plaguelands|r: The Battle for Andorhal << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 37|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.5 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Desolace|r (about 1.1 levels of quests, starting around Cenarion Researcher Korrah), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.0 levels of quests, starting around Tabetha). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
]])
