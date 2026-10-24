-- 5-10 Dun Morogh: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 5, 28).
-- Split into 2 guides, listed under "5 - 29 Dun Morogh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Dun Morogh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 5 - 29 Dun Morogh
#subweight -5
#name 5-11 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\10-13 Darkshore: around Ranger Glynda Nal'Shea;Zone Routes (Alliance)\11-15 Loch Modan: around Captain Rugelfuss

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,49.91,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ciara Deepstone|r
    .accept 26380 >>Accept Bound for Kharanos
    .target Ciara Deepstone
step
    #completewith next
    .zone 469 >>Travel to New Tinkertown
    .zoneskip 469
step << Gnome Warrior
    .goto 469,40.41,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Sergeant Steamcrank|r
    .accept 26425 >>Accept Meet the High Tinker
    .target Drill Sergeant Steamcrank
    .isQuestTurnedIn 26203 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Warrior
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 26425 >>Turn in Meet the High Tinker
    .target High Tinker Mekkatorque
    .isOnQuest 26425
step << Gnome Rogue
    .goto 469,38.03,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .accept 26423 >>Accept Meet the High Tinker
    .target Kelsey Steelspark
    .isQuestTurnedIn 26206 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Rogue
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 26423 >>Turn in Meet the High Tinker
    .target High Tinker Mekkatorque
    .isOnQuest 26423
step << Gnome Priest
    .goto 469,39.41,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Doc" Cogspin|r
    .accept 26422 >>Accept Meet the High Tinker
    .target "Doc" Cogspin
    .isQuestTurnedIn 26199 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Priest
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 26422 >>Turn in Meet the High Tinker
    .target High Tinker Mekkatorque
    .isOnQuest 26422
step << Gnome Mage
    .goto 469,41.09,29.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bipsi Frostflinger|r
    .accept 26421 >>Accept Meet the High Tinker
    .target Bipsi Frostflinger
    .isQuestTurnedIn 26197 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Mage
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 26421 >>Turn in Meet the High Tinker
    .target High Tinker Mekkatorque
    .isOnQuest 26421
step << Gnome Warlock
    .goto 469,37.68,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .accept 26424 >>Accept Meet the High Tinker
    .target Alamar Grimm
    .isQuestTurnedIn 26202 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Warlock
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 26424 >>Turn in Meet the High Tinker
    .target High Tinker Mekkatorque
    .isOnQuest 26424
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .accept 26208 >>Accept The Fight Continues
    .target High Tinker Mekkatorque
    .isQuestTurnedIn 26421,26422,26423,26424,26425 --any of: Meet the High Tinker, Meet the High Tinker, Meet the High Tinker, Meet the High Tinker, Meet the High Tinker
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.46,32.97
    >>Watch the holo-table in front of High Tinker Mekkatorque to learn about Operation: Gnomeregan.
    .complete 26208,1 --Operation: Gnomeregan Recap Credit
    .target Operation: Gnomeregan Recap Credit
    .isOnQuest 26208
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 26208 >>Turn in The Fight Continues
    .target High Tinker Mekkatorque
    .isOnQuest 26208
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .accept 26566 >>Accept A Triumph of Gnomish Ingenuity
    .target High Tinker Mekkatorque
    .isQuestTurnedIn 26208 --any of: The Fight Continues
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,40.61,28.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r
    .turnin 26566 >>Turn in A Triumph of Gnomish Ingenuity
    .target Engineer Grindspark
    .isOnQuest 26566
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,40.61,28.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r
    .accept 26222 >>Accept Scrounging for Parts
    .target Engineer Grindspark
    .isQuestTurnedIn 26566 --any of: A Triumph of Gnomish Ingenuity
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #loop
    .goto 469,39.17,29.16,0
    .goto 469,39.17,29.16,40,0
    .goto 469,41.39,31.81,40,0
    .goto 469,39.19,24.43,40,0
    >>Pick up |cRXP_PICK_Spare Part|r from the ground
    .complete 26222,1 --Spare Part (7)
    .isOnQuest 26222
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,40.61,28.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r
    .turnin 26222 >>Turn in Scrounging for Parts
    .target Engineer Grindspark
    .isOnQuest 26222
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,40.61,28.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r
    .accept 26205 >>Accept A Job for the Multi-Bot
    .target Engineer Grindspark
    .isQuestTurnedIn 26222 --any of: Scrounging for Parts
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,39.23,26.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tock Sprysprocket|r
    .accept 26264 >>Accept What's Left Behind
    .target Tock Sprysprocket
    .isQuestTurnedIn 26222 --any of: Scrounging for Parts
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.20,40.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r
    .accept 26265 >>Accept Dealing with the Fallout
    .target Corporal Fizzwhistle
    .isQuestTurnedIn 26222 --any of: Scrounging for Parts
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #loop
    .goto 469,37.97,41.33,0
    .goto 469,37.97,41.33,40,0
    .goto 469,39.98,40.43,40,0
    >>Kill |cRXP_ENEMY_Living Contaminations|r
    .complete 26265,1 --Living Contamination (6)
    .mob Living Contamination
    .isOnQuest 26265
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.20,40.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r
    .turnin 26265 >>Turn in Dealing with the Fallout
    .target Corporal Fizzwhistle
    .isOnQuest 26265
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.66,45.12
    >>Use the GS-9x Multi-Bot to clean up 5 Toxic Geysers at the Toxic Airfield. When you get close enough to a geyser, your GS-9x Multi-Bot will automatically begin its task.
    .complete 26205,1 --Toxic Pool (5)
    .target Toxic Pool
    .isOnQuest 26205
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #loop
    .goto 469,40.20,47.58,0
    .goto 469,40.20,47.58,40,0
    .goto 469,42.44,49.92,40,0
    .goto 469,34.73,49.32,40,0
    >>Kill |cRXP_ENEMY_Toxic Sludges|r. Loot them for |cRXP_LOOT_Recovered Possession|r
    .complete 26264,1 --Recovered Possession (6)
    .mob Toxic Sludge
    .isOnQuest 26264
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,40.61,28.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark|r
    .turnin 26205 >>Turn in A Job for the Multi-Bot
    .target Engineer Grindspark
    .isOnQuest 26205
step << Gnome Priest cata
    .goto 27,33.90,34.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Doc" Cogspin|r
    .trainer >> Train your class spells
    .target "Doc" Cogspin
step << Gnome Mage cata
    .goto 27,34.53,35.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bipsi Frostflinger|r
    .trainer >> Train your class spells
    .target Bipsi Frostflinger
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,39.23,26.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tock Sprysprocket|r
    .turnin 26264 >>Turn in What's Left Behind
    .target Tock Sprysprocket
    .isOnQuest 26264
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.38,33.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle|r
    .accept 26316 >>Accept What's Keeping Jessup?
    .target Captain Tread Sparknozzle
    .isQuestTurnedIn 26205 --any of: A Job for the Multi-Bot
    .xp <2,1
step << Gnome Warrior cata
    .goto 27,34.27,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Sergeant Steamcrank|r
    .trainer >> Train your class spells
    .target Drill Sergeant Steamcrank
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,48.75,52.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r
    .accept 26342 >>Accept Paint it Black
    .target Jarvi Shadowstep
    .isQuestTurnedIn 26339 --any of: Staging in Brewnall
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #loop
    .goto 469,53.40,47.91,0
    .goto 469,53.40,47.91,40,0
    .goto 469,54.89,44.12,40,0
    .goto 469,56.85,52.44,40,0
    >>Interact with |cRXP_FRIENDLY_Crushcog Sentry-Bots|r
    .complete 26342,1 --Crushcog Sentry-Bot (5)
    .target Crushcog Sentry-Bot
    .isOnQuest 26342
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,48.75,52.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r
    .turnin 26342 >>Turn in Paint it Black
    .target Jarvi Shadowstep
    .isOnQuest 26342
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,48.75,52.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r
    .accept 26364 >>Accept Down with Crushcog!
    .target Jarvi Shadowstep
    .isQuestTurnedIn 26342 --any of: Paint it Black
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,58.75,42.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razlo Crushcog|r
    .complete 26364,1 --Razlo Crushcog
    .target Razlo Crushcog
    .isOnQuest 26364
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,48.75,52.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r
    .turnin 26364 >>Turn in Down with Crushcog!
    .target Jarvi Shadowstep
    .isOnQuest 26364
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,48.75,52.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r
    .accept 26373 >>Accept On to Kharanos
    .target Jarvi Shadowstep
    .isQuestTurnedIn 26364 --any of: Down with Crushcog!
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,37.28,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessup McCree|r
    .turnin 26316 >>Turn in What's Keeping Jessup?
    .target Jessup McCree
    .isOnQuest 26316
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,37.28,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessup McCree|r
    .accept 26284 >>Accept Missing in Action
    .accept 26285 >>Accept Get Me Explosives Back!
    .target Jessup McCree
    .isQuestTurnedIn 26316 --any of: What's Keeping Jessup?
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #loop
    .goto 469,37.89,68.40,0
    .goto 469,37.89,68.40,40,0
    .goto 469,40.13,73.04,40,0
    >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r and |cRXP_ENEMY_Rockjaw Marauders|r. Loot them for |cRXP_LOOT_Stolen Powder Keg|r
    .complete 26285,1 --Stolen Powder Keg (7)
    .mob Rockjaw Bonepicker
    .mob Rockjaw Marauder
    .isOnQuest 26285
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #loop
    .goto 469,47.00,71.02,0
    .goto 469,47.00,71.02,40,0
    .goto 469,48.77,73.59,40,0
    >>Free 6 Captured Demolitionists from their cages around Frostmane Hold.
    .complete 26284,1 --Captured Demolitionist (6)
    .target Captured Demolitionist
    .isOnQuest 26284
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,37.28,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessup McCree|r
    .turnin 26285 >>Turn in Get Me Explosives Back!
    .target Jessup McCree
    .isOnQuest 26285
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,37.28,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessup McCree|r
    .turnin 26284 >>Turn in Missing in Action
    .target Jessup McCree
    .isOnQuest 26284
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,37.28,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessup McCree|r
    .accept 26318 >>Accept Finishin' the Job
    .target Jessup McCree
    .isQuestTurnedIn 26284 --Missing in Action
    .isQuestTurnedIn 26285 --Get Me Explosives Back!
    .xp <2,1
step
    #completewith next
    .zone 27 >>Leave New Tinkertown for Dun Morogh
    .zoneskip 27
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.71,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r
    .accept 25724 >>Accept Frostmane Aggression
    .target Captain Tharran
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 27,53.71,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r
    .turnin 26373 >>Turn in On to Kharanos
    .target Captain Tharran
    .isOnQuest 26373
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,54.20,51.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .accept 315 >>Accept The Perfect Stout
    .target Rejold Barleybrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,54.49,50.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .turnin 26380 >>Turn in Bound for Kharanos
    .target Innkeeper Belm
step << Dwarf/Gnome
    .goto 27,54.78,50.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r
    .accept 6387 >>Accept Honor Students
    .target Gremlock Pilsnor
    .xp <5,1
step
    .goto 27,70.10,48.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turuk Amberstill|r
    .target Turuk Amberstill
    .home >>Set your Hearthstone to Turuk Amberstill's inn
step << Warrior cata
    .goto 27,54.470,50.974
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r
    .trainer >> Train your class spells
    .target Granis Swiftaxe
step << Dwarf/Gnome
    .goto 27,54.78,50.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r
    .accept 6387 >>Accept Honor Students
    .target Gremlock Pilsnor
step << Rogue cata
    .goto 27,54.673,50.933
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r
    .trainer >> Train your class spells
    .target Hogral Bakkan
step << Priest cata
    .goto 27,54.455,50.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .trainer >> Train your class spells
    .target Maxan Anvol
step << Shaman cata
    .goto 27,54.605,50.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halbin Frosthammer|r
    .trainer >> Train your class spells
    .target Halbin Frosthammer
step << Mage cata
    .goto 27,54.609,50.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r
    .trainer >> Train your class spells
    .target Magis Sparkmantle
step << Paladin cata
    .goto 27,54.709,50.392
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r
    .trainer >> Train your class spells
    .target Azar Stronghammer
step << Warlock cata
    .goto 27,54.437,52.022
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Train your class spells
    .target Gimrizz Shadowcog
step << Hunter cata
    .goto 27,52.913,51.364
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Train your class spells
    .target Grif Wildheart
step << Dwarf/Gnome
    .goto 27,53.80,52.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r
    .turnin 6387 >>Turn in Honor Students while you are here
    .isQuestComplete 6387
    .target Brolan Galebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,48.77,42.48,0
    .goto 27,48.77,42.48,40,0
    .goto 27,48.86,37.86,40,0
    .goto 27,48.45,33.90,40,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for |cRXP_LOOT_Shimmerweed|r. It can also be picked up from |cRXP_PICK_Shimmerweed Basket|r on the ground
    >>Kill |cRXP_ENEMY_Frostmane Snowstriders|r
    >>Kill |cRXP_ENEMY_Frostmane Seers|r
    .complete 315,1 --Shimmerweed (7)
    .complete 25724,2 --Frostmane Snowstrider slain (7)
    .complete 25724,1 --Frostmane Seer slain (5)
    .mob Frostmane Seer
    .mob Frostmane Snowstrider
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #completewith next
    .zone 470 >>Travel to Frostmane Hold
    .zoneskip 470
    .isOnQuest 26318
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 470,28.17,49.70
    >>Kill |cRXP_ENEMY_Boss Bruggor|r
    .complete 26318,2 --Boss Bruggor (1)
    .mob Boss Bruggor
    .isOnQuest 26318
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 470,36.00,40.92
    >>Click the |cRXP_PICK_Detonator|r
    .complete 26318,1 --Detonator
    .isOnQuest 26318
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #completewith next
    .zone 27 >>Leave Frostmane Hold for Dun Morogh
    .zoneskip 27
step << Dwarf/Gnome
    .goto 27,53.80,52.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r
    .turnin 6387 >>Turn in Honor Students
    .target Brolan Galebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.71,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r
    .turnin 25724 >>Turn in Frostmane Aggression
    .accept 313 >>Accept Forced to Watch from Afar
    .accept 25667 >>Accept Culling the Wendigos
    .target Captain Tharran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.71,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Glynna|r
    .accept 25668 >>Accept Pilfered Supplies
    .target Quartermaster Glynna
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,54.20,51.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 315 >>Turn in The Perfect Stout
    .target Rejold Barleybrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,49.05,45.23,0
    .goto 27,49.05,45.23,40,0
    .goto 27,47.08,45.83,40,0
    >>Pick up |cRXP_PICK_Pilfered Supplies|r from the ground
    >>Kill |cRXP_ENEMY_Young Wendigos|r and |cRXP_ENEMY_Wendigos|r
    .complete 25668,1 --Pilfered Supplies (6)
    .complete 25667,1 --Young Wendigo (10)
    .mob Young Wendigo
    .mob Wendigo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,48.32,47.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Dunstan|r
    .complete 313,1 --Mountaineer Dunstan
    .target Mountaineer Dunstan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,49.19,47.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Lewin|r
    .complete 313,2 --Mountaineer Lewin
    .target Mountaineer Lewin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,49.32,44.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Valgrum|r
    .complete 313,3 --Mountaineer Valgrum
    .target Mountaineer Valgrum
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.71,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r
    .turnin 313 >>Turn in Forced to Watch from Afar
    .turnin 25667 >>Turn in Culling the Wendigos
    .accept 25792 >>Accept Pushing Forward
    .target Captain Tharran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.71,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Glynna|r
    .turnin 25668 >>Turn in Pilfered Supplies
    .target Quartermaster Glynna
step << cata Shaman
    .xp 7
step << Dwarf/Gnome
    .goto 27,53.80,52.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard|r
    .accept 6391 >>Accept Ride to Ironforge
    .target Brolan Galebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.26,51.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .accept 412 >>Accept Operation Recombobulation
    .target Razzle Sprysprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,57.72,57.79,0
    .goto 27,57.72,57.79,40,0
    .goto 27,56.71,61.00,40,0
    .goto 27,60.87,56.75,40,0
    >>Kill |cRXP_ENEMY_Gibblewilts|r and |cRXP_ENEMY_Frostmane Scavengers|r. Loot them for |cRXP_LOOT_Gyromechanic Gear|r
    >>Kill |cRXP_ENEMY_Constriction Totems|r
    .complete 412,1 --Gyromechanic Gear (8)
    .complete 25792,1 --Constriction Totem slain (4)
    .mob Gibblewilt
    .mob Frostmane Scavenger
    .mob Constriction Totem
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.26,51.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .turnin 412 >>Turn in Operation Recombobulation
    .target Razzle Sprysprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.71,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r
    .turnin 25792 >>Turn in Pushing Forward
    .accept 25838 >>Accept Help from Steelgrill's Depot
    .target Captain Tharran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,56.82,47.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delber Cranktoggle|r
    .turnin 25838 >>Turn in Help from Steelgrill's Depot
    .accept 25839 >>Accept The Ultrasafe Personnel Launcher
    .target Delber Cranktoggle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,56.75,46.51
    >>Interact with |cRXP_FRIENDLY_Ultrasafe Personnel Launcher|r
    .complete 25839,1 --Ultrasafe Personnel Launcher
    .target Ultrasafe Personnel Launcher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,62.50,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slamp Wobblecog|r
    .turnin 25839 >>Turn in The Ultrasafe Personnel Launcher
    .accept 25840 >>Accept Eliminate the Resistance
    .accept 25841 >>Accept Strike From Above
    .target Slamp Wobblecog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along71
    >>As you go: Kill |cRXP_ENEMY_Frostmane Warriors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25840,2 --Frostmane Warrior slain (5)
    .mob Frostmane Warrior
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,62.55,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Snevik the Blade|r
    .accept 28868 >>Accept The View from Down Here
    .target Snevik the Blade
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along72
    >>As you go: Kill |cRXP_ENEMY_Battok the Berserker|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25840,1 --Battok the Berserker slain (1)
    .mob Battok the Berserker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along71
    #loop
    .goto 27,64.30,54.22,0
    .goto 27,64.30,54.22,40,0
    .goto 27,63.23,56.76,40,0
    >>Interact with |cRXP_FRIENDLY_Frostmane Builders|r
    .complete 28868,1 --Frostmane Builder (5)
    .target Frostmane Builder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,62.55,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Snevik the Blade|r
    .turnin 28868 >>Turn in The View from Down Here while you are here
    .isQuestComplete 28868
    .target Snevik the Blade
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along72
    #loop
    .goto 27,63.18,55.32,0
    .goto 27,63.18,55.32,40,0
    .goto 27,63.59,51.12,40,0
    >>Kill |cRXP_ENEMY_Frostmane Warriors|r
    .complete 25840,2 --Frostmane Warrior slain (5)
    .mob Frostmane Warrior
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,64.51,54.25
    >>Use the Signal Flare to call in airstrikes at the northern and southern ends of Frostmane Retreat.
    .complete 25841,1 --Frostmane Retreat North
    .target Frostmane Retreat North
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,62.97,56.51
    >>Kill |cRXP_ENEMY_Battok the Berserker|r
    .complete 25840,1 --Battok the Berserker slain (1)
    .mob Battok the Berserker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,62.50,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slamp Wobblecog|r
    .turnin 25840 >>Turn in Eliminate the Resistance while you are here
    .isQuestComplete 25840
    .target Slamp Wobblecog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,63.12,57.27
    >>Use the Signal Flare to call in airstrikes at the northern and southern ends of Frostmane Retreat.
    .complete 25841,2 --Frostmane Retreat South
    .target Frostmane Retreat South
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,62.55,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Snevik the Blade|r
    .turnin 28868 >>Turn in The View from Down Here
    .target Snevik the Blade
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,62.50,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slamp Wobblecog|r
    .turnin 25840 >>Turn in Eliminate the Resistance
    .turnin 25841 >>Turn in Strike From Above
    .accept 25882 >>Accept A Hand at the Ranch
    .target Slamp Wobblecog
step
    #completewith next
    .zone 469 >>Travel to New Tinkertown
    .zoneskip 469
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,37.28,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessup McCree|r
    .turnin 26318 >>Turn in Finishin' the Job
    .target Jessup McCree
    .isOnQuest 26318
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,37.28,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessup McCree|r
    .accept 26329 >>Accept One More Thing
    .target Jessup McCree
    .isQuestTurnedIn 26318 --any of: Finishin' the Job
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock/Gnome Monk
    .goto 469,39.50,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r
    .turnin 27674 >>Turn in To the Surface
    .target Nevin Twistwrench
    .isQuestComplete 27674
step
    .goto 469,39.50,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r
    .accept 26203 >>Accept The Future of Gnomeregan << Gnome Warrior
    .accept 26206 >>Accept The Future of Gnomeregan << Gnome Rogue
    .accept 26199 >>Accept The Future of Gnomeregan << Gnome Priest
    .accept 26197 >>Accept The Future of Gnomeregan << Gnome Mage
    .target Nevin Twistwrench
    .isQuestTurnedIn 27674 --any of: To the Surface
step << Gnome Warrior
    .goto 469,40.41,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Sergeant Steamcrank|r
    .turnin 26203 >>Turn in The Future of Gnomeregan
    .target Drill Sergeant Steamcrank
    .isOnQuest 26203
step << Gnome Warrior
    .goto 469,40.41,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Sergeant Steamcrank|r
    .accept 26204 >>Accept The Arts of a Warrior
    .target Drill Sergeant Steamcrank
    .isQuestTurnedIn 26203 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Mage
    .goto 469,41.09,29.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bipsi Frostflinger|r
    .turnin 26197 >>Turn in The Future of Gnomeregan
    .target Bipsi Frostflinger
    .isOnQuest 26197
step << Gnome Mage
    .goto 469,41.09,29.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bipsi Frostflinger|r
    .accept 26198 >>Accept The Arts of a Mage
    .target Bipsi Frostflinger
    .isQuestTurnedIn 26197 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Warlock
    .goto 469,39.50,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r
    .accept 26202 >>Accept The Future of Gnomeregan
    .target Nevin Twistwrench
    .isQuestTurnedIn 27674 --any of: To the Surface
step << Gnome Warlock
    .goto 469,37.68,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .turnin 26202 >>Turn in The Future of Gnomeregan
    .target Alamar Grimm
    .isOnQuest 26202
step << Gnome Warlock
    .goto 469,37.68,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .accept 26201 >>Accept The Power of a Warlock
    .target Alamar Grimm
    .isQuestTurnedIn 26202 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 26329 >>Turn in One More Thing
    .target High Tinker Mekkatorque
    .isOnQuest 26329
step << Gnome Rogue
    .goto 469,38.03,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 26206 >>Turn in The Future of Gnomeregan
    .target Kelsey Steelspark
    .isOnQuest 26206
step << Gnome Rogue
    .goto 469,38.03,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .accept 26207 >>Accept The Arts of a Rogue
    .target Kelsey Steelspark
    .isQuestTurnedIn 26206 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.20,33.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hinkles Fastblast|r
    .accept 26333 >>Accept No Tanks!
    .target Hinkles Fastblast
    .isQuestTurnedIn 26329 --any of: One More Thing
    .xp <3,1
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .accept 26331 >>Accept Crushcog's Minions
    .target High Tinker Mekkatorque
    .isQuestTurnedIn 26329 --any of: One More Thing
    .xp <2,1
step << Gnome Priest
    .goto 469,39.41,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Doc" Cogspin|r
    .turnin 26199 >>Turn in The Future of Gnomeregan
    .target "Doc" Cogspin
    .isOnQuest 26199
step << Gnome Priest
    .goto 469,39.41,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Doc" Cogspin|r
    .accept 26200 >>Accept The Arts of a Priest
    .target "Doc" Cogspin
    .isQuestTurnedIn 26199 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Priest
    .goto 469,41.68,32.94
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26200,1 --Training Dummy slain (8)
    .mob Training Dummy
    .isOnQuest 26200
step << Gnome Mage
    .goto 469,41.68,32.94
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26198,1 --Training Dummy slain (8)
    .mob Training Dummy
    .isOnQuest 26198
step << Gnome Mage
    .goto 469,41.09,29.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bipsi Frostflinger|r
    .turnin 26198 >>Turn in The Arts of a Mage
    .target Bipsi Frostflinger
    .isOnQuest 26198
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #loop
    .goto 469,55.42,23.72,0
    .goto 469,55.42,23.72,40,0
    .goto 469,55.49,21.06,40,0
    >>Interact with |cRXP_FRIENDLY_Repaired Mechano-Tanks|r
    .complete 26333,1 --Repaired Mechano-Tank (5)
    .target Repaired Mechano-Tank
    .isOnQuest 26333
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    #loop
    .goto 469,54.84,26.16,0
    .goto 469,54.84,26.16,40,0
    .goto 469,56.26,19.43,40,0
    .goto 469,59.47,16.10,40,0
    >>Kill |cRXP_ENEMY_Crushcog Battle Suits|r and |cRXP_ENEMY_Irradiated Technicians|r
    .complete 26331,1 --Crushcog Battle Suit (8)
    .mob Crushcog Battle Suit
    .mob Irradiated Technician
    .isOnQuest 26331
step << Gnome Warrior
    .goto 469,41.68,32.94
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26204,1 --Training Dummy slain (1)
    .mob Training Dummy
    .isOnQuest 26204
step << Gnome Rogue
    .goto 469,41.68,32.94
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26207,1 --Training Dummy slain (1)
    .mob Training Dummy
    .isOnQuest 26207
step << Gnome Priest
    .goto 469,39.41,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Doc" Cogspin|r
    .turnin 26200 >>Turn in The Arts of a Priest
    .target "Doc" Cogspin
    .isOnQuest 26200
step << Gnome Warlock
    .goto 469,41.68,32.94
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26201,1 --Training Dummy slain (8)
    .mob Training Dummy
    .isOnQuest 26201
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 26331 >>Turn in Crushcog's Minions
    .target High Tinker Mekkatorque
    .isOnQuest 26331
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.20,33.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hinkles Fastblast|r
    .turnin 26333 >>Turn in No Tanks!
    .target Hinkles Fastblast
    .isOnQuest 26333
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,38.03,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .accept 26339 >>Accept Staging in Brewnall
    .target Kelsey Steelspark
    .isQuestTurnedIn 26331 --Crushcog's Minions
    .isQuestTurnedIn 26333 --No Tanks!
    .xp <2,1
step << Gnome Warrior
    .goto 469,40.41,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Sergeant Steamcrank|r
    .turnin 26204 >>Turn in The Arts of a Warrior
    .target Drill Sergeant Steamcrank
    .isOnQuest 26204
step << Gnome Rogue
    .goto 469,38.03,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 26207 >>Turn in The Arts of a Rogue
    .target Kelsey Steelspark
    .isOnQuest 26207
step << Gnome Warlock
    .goto 469,37.68,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .turnin 26201 >>Turn in The Power of a Warlock
    .target Alamar Grimm
    .isOnQuest 26201
step << Gnome Warrior/Gnome Rogue/Gnome Priest/Gnome Mage/Gnome Warlock
    .goto 469,48.75,52.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep|r
    .turnin 26339 >>Turn in Staging in Brewnall
    .target Jarvi Shadowstep
    .isOnQuest 26339
step << Gnome Monk
    .goto 469,39.50,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench|r
    .accept 31135 >>Accept The Future of Gnomeregan
    .target Nevin Twistwrench
    .isQuestTurnedIn 27674 --any of: To the Surface
step << Gnome Monk
    .goto 469,40.10,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi, Friend to the Small|r
    .turnin 31135 >>Turn in The Future of Gnomeregan
    .target Xi, Friend to the Small
    .isOnQuest 31135
step << Gnome Monk
    .goto 469,40.10,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi, Friend to the Small|r
    .accept 31137 >>Accept Meet the High Tinker
    .target Xi, Friend to the Small
    .isQuestTurnedIn 31135 --any of: The Future of Gnomeregan
    .xp <2,1
step << Gnome Monk
    .goto 469,38.82,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque|r
    .turnin 31137 >>Turn in Meet the High Tinker
    .target High Tinker Mekkatorque
    .isOnQuest 31137
step
    #completewith next
    .zone 27 >>Leave New Tinkertown for Dun Morogh
    .zoneskip 27
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,70.41,48.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Flinthammer|r
    .turnin 25882 >>Turn in A Hand at the Ranch
    .accept 25932 >>Accept It's Raid Night Every Night
    .target Sergeant Flinthammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,70.26,49.31
    >>Help Sergeant Flinthammer and his mountaineers defend Amberstill Ranch from Frostmane Raiders.
    .complete 25932,1 --Amberstill Raid Controller
    .target Amberstill Raid Controller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,70.41,48.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Flinthammer|r
    .turnin 25932 >>Turn in It's Raid Night Every Night
    .target Sergeant Flinthammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,70.64,48.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r
    .accept 25905 >>Accept Rams on the Lam
    .target Veron Amberstill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,70.28,48.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >>Accept Protecting the Herd
    .target Rudra Amberstill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,69.79,44.37
    >>Kill |cRXP_ENEMY_Vagash|r and loot |cRXP_LOOT_Fang of Vagash|r
    .complete 314,1 --Fang of Vagash (1)
    .mob Vagash
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,70.28,48.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >>Turn in Protecting the Herd
    .target Rudra Amberstill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,67.33,54.51,0
    .goto 27,67.33,54.51,40,0
    .goto 27,68.02,59.30,40,0
    .goto 27,70.33,57.55,40,0
    >>Interact with |cRXP_FRIENDLY_Stolen Rams|r
    .complete 25905,1 --Stolen Ram (6)
    .target Stolen Ram
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,70.64,48.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veron Amberstill|r
    .turnin 25905 >>Turn in Rams on the Lam
    .target Veron Amberstill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,70.41,48.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Flinthammer|r
    .accept 25933 >>Accept Help for the Quarry
    .target Sergeant Flinthammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,75.90,54.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .accept 433 >>Accept The Public Servant
    .target Senator Mehr Stonehallow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,76.19,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Drugan|r
    .accept 25937 >>Accept Priceless Treasures
    .target Prospector Drugan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along128
    >>As you go: Pick up |cRXP_PICK_Frozen Artifact|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 25937,1 --Frozen Artifact (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along128
    .goto 27,76.31,54.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 25933 >>Turn in Help for the Quarry
    .accept 432 >>Accept Those Blasted Troggs!
    .target Foreman Stonebrow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,76.99,56.86,0
    .goto 27,76.99,56.86,40,0
    .goto 27,77.94,51.61,40,0
    .goto 27,79.57,50.27,40,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r
    >>Pick up |cRXP_PICK_Frozen Artifact|r from the ground
    .complete 432,1 --Rockjaw Skullthumper slain (8)
    .complete 432,2 --Rockjaw Bonesnapper slain (8)
    .complete 25937,1 --Frozen Artifact (8)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,76.31,54.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >>Turn in Those Blasted Troggs! while you are here
    .isQuestComplete 432
    .target Foreman Stonebrow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,78.48,52.22,0
    .goto 27,78.48,52.22,40,0
    .goto 27,79.65,50.22,40,0
    >>Interact with |cRXP_FRIENDLY_Trapped Miners|r
    .complete 433,1 --Trapped Miner (7)
    .target Trapped Miner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,76.31,54.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r
    .turnin 432 >>Turn in Those Blasted Troggs!
    .target Foreman Stonebrow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,76.19,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Drugan|r
    .turnin 25937 >>Turn in Priceless Treasures
    .target Prospector Drugan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,75.90,54.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 433 >>Turn in The Public Servant
    .accept 25986 >>Accept Trouble at the Lake
    .target Senator Mehr Stonehallow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,82.64,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khurgorn Singefeather|r
    .accept 25979 >>Accept Dealing with the Surge
    .target Khurgorn Singefeather
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along135
    >>As you go: Kill |cRXP_ENEMY_Helm's Bed Surgers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25979,1 --Helm's Bed Surger slain (6)
    .mob Helm's Bed Surger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along135
    .goto 27,82.85,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Bahrum|r
    .turnin 25986 >>Turn in Trouble at the Lake
    .accept 25978 >>Accept Entombed in Ice
    .target Sergeant Bahrum
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,83.15,51.98,0
    .goto 27,83.15,51.98,40,0
    .goto 27,85.25,53.21,40,0
    >>Kill |cRXP_ENEMY_Helm's Bed Surgers|r
    >>Kill |cRXP_ENEMY_Icy Tombs|r and |cRXP_ENEMY_Frozen Mountaineers|r
    .complete 25979,1 --Helm's Bed Surger slain (6)
    .complete 25978,1 --Icy Tomb (6)
    .mob Helm's Bed Surger
    .mob Icy Tomb
    .mob Frozen Mountaineer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,82.64,48.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khurgorn Singefeather|r
    .turnin 25979 >>Turn in Dealing with the Surge
    .target Khurgorn Singefeather
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,82.85,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Bahrum|r
    .turnin 25978 >>Turn in Entombed in Ice
    .accept 25997 >>Accept Dark Iron Scheming
    .target Sergeant Bahrum
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,83.67,59.34,0
    .goto 27,83.67,59.34,40,0
    .goto 27,85.44,59.51,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r
    >>Kill |cRXP_ENEMY_Captain Beld|r and loot |cRXP_LOOT_Dark Iron Attack Plans|r
    .complete 25997,1 --Dark Iron Spy slain (5)
    .complete 25997,2 --Dark Iron Attack Plans (1)
    .mob Dark Iron Spy
    .mob Captain Beld
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,82.85,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Bahrum|r
    .turnin 25997 >>Turn in Dark Iron Scheming
    .accept 25998 >>Accept Get to the Airfield
    .target Sergeant Bahrum
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,78.26,20.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Stonebreaker|r
    .turnin 25998 >>Turn in Get to the Airfield
    .accept 26078 >>Accept Extinguish the Fires
    .target Commander Stonebreaker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,78.98,22.00,0
    .goto 27,78.98,22.00,40,0
    .goto 27,78.49,24.74,40,0
    >>Using the Firefighting Equipment, extinguish 6 fires at the Ironforge Airfield.
    .complete 26078,1 --Burning Bomber Credit
    .target Burning Bomber Credit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,78.26,20.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Stonebreaker|r
    .turnin 26078 >>Turn in Extinguish the Fires
    .accept 26085 >>Accept Rallying the Defenders
    .target Commander Stonebreaker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,77.06,30.17,0
    .goto 27,77.06,30.17,40,0
    .goto 27,76.87,33.35,40,0
    .goto 27,78.53,37.73,40,0
    >>Click the |cRXP_PICK_Loose Snow|r
    .complete 26085,1 --Loose Snow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,78.26,20.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Stonebreaker|r
    .turnin 26085 >>Turn in Rallying the Defenders
    .accept 26094 >>Accept Striking Back
    .target Commander Stonebreaker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,77.37,31.08,0
    .goto 27,77.37,31.08,40,0
    .goto 27,77.92,34.80,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Pyromancers|r, |cRXP_ENEMY_Dark Iron Invaders|r and |cRXP_ENEMY_Dark Iron Golems|r
    .complete 26094,1 --Dark Iron Pyromancer (8)
    .mob Dark Iron Pyromancer
    .mob Dark Iron Invader
    .mob Dark Iron Golem
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,78.26,20.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Stonebreaker|r
    .turnin 26094 >>Turn in Striking Back
    .accept 26102 >>Accept Grimaxe's Demise
    .target Commander Stonebreaker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,78.40,34.84
    >>Kill |cRXP_ENEMY_General Grimaxe|r
    .complete 26102,1 --General Grimaxe slain (1)
    .mob General Grimaxe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,78.26,20.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Stonebreaker|r
    .turnin 26102 >>Turn in Grimaxe's Demise
    .accept 26112 >>Accept Demanding Answers
    .target Commander Stonebreaker
step
    #completewith next
    .zone 87 >>Travel to Ironforge
    .zoneskip 87
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 87,39.77,57.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .turnin 26112 >>Turn in Demanding Answers
    .accept 26118 >>Accept Seize the Ambassador
    .target Moira Thaurissan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 87,36.61,43.21
    >>Interact with |cRXP_FRIENDLY_Ambassador Slaghammer|r
    .complete 26118,1 --Ambassador Slaghammer
    .target Ambassador Slaghammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 87,39.77,57.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .turnin 26118 >>Turn in Seize the Ambassador
    .target Moira Thaurissan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 10 >>Grind to level 10 (Reinforcements for Loch Modan needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 87,41.44,52.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .accept 26131 >>Accept Reinforcements for Loch Modan
    .target Mountaineer Barleybrew
step << Dwarf/Gnome
    .goto 87,51.52,26.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >>Turn in Ride to Ironforge
    .accept 6388 >>Accept Gryth Thurden
    .target Golnir Bouldertoe
step << Dwarf/Gnome
    .goto 87,55.50,47.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >>Turn in Gryth Thurden
    .accept 6392 >>Accept Return to Gremlock
    .target Gryth Thurden
step
    #completewith next
    .zone 27 >>Leave Ironforge for Dun Morogh
    .zoneskip 27
step << Dwarf/Gnome
    .goto 27,54.78,50.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor|r
    .turnin 6392 >>Turn in Return to Gremlock
    .target Gremlock Pilsnor
step << NightElf Hunter
    #completewith next
    .zone 87 >>Travel to Ironforge
    .zoneskip 87
step << NightElf Hunter
    .xp 10 >>Grind to level 10 (The Hunter's Path needs it)
step << NightElf Hunter
    .goto 87,70.89,83.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olmin Burningbeard|r
    .accept 6721 >>Accept The Hunter's Path
    .target Olmin Burningbeard
step << NightElf Hunter
    #completewith next
    .zone 27 >>Leave Ironforge for Dun Morogh
    .zoneskip 27
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,87.64,50.14
    >>Click the |cRXP_PICK_A Dwarven Corpse|r
    .turnin 26854 >>Turn in The Lost Pilot
    .isOnQuest 26854
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,87.64,50.14
    >>Click the |cRXP_PICK_A Dwarven Corpse|r
    .accept 26855 >>Accept A Pilot's Revenge
    .isQuestTurnedIn 26854 --any of: The Lost Pilot
    .xp <10,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,87.36,49.21
    >>Kill |cRXP_ENEMY_Mangeclaw|r and loot |cRXP_LOOT_Mangy Claw|r
    .complete 26855,1 --Mangy Claw (1)
    .mob Mangeclaw
    .isOnQuest 26855
step
    +|cRXP_WARN_That is all of Dun Morogh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Loch Modan|r: Reinforcements for Loch Modan, A Pilot's Revenge << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Teldrassil|r: The Hunter's Path << NightElf Hunter
step
    +|cRXP_WARN_Suggested next zones at level 10|r: |cRXP_FRIENDLY_Darkshore|r (about 1.1 levels of quests, starting around Ranger Glynda Nal'Shea), |cRXP_FRIENDLY_Loch Modan|r (about 0.5 levels of quests, starting around Captain Rugelfuss). Completing this step loads the guide for Darkshore --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Dun Morogh is planned from level 28.|r Load its guide for level 28 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 5 - 29 Dun Morogh
#subweight -5
#name 28-29 Dun Morogh
--RouteBuilder:next
#next Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\26-31 Arathi Highlands

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.93,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 384 >>Accept Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 27,55.20,56.77,0
    .goto 27,55.20,56.77,40,0
    .goto 27,53.27,59.84,40,0
    .goto 27,51.98,62.34,40,0
    .goto 27,50.96,56.67,40,0
    >>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for |cRXP_LOOT_Tender Boar Ribs|r
    .complete 384,1 --Tender Boar Ribs (4)
    .mob Crag Boar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,54.49,50.85
    >>Kill |cRXP_ENEMY_Innkeeper Belm|r and loot |cRXP_LOOT_Rhapsody Malt|r
    .complete 384,2 --Rhapsody Malt (1)
    .mob Innkeeper Belm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 27,53.93,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 384 >>Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    +|cRXP_WARN_End of the Dun Morogh route.|r
step
    +|cRXP_WARN_Suggested next zones at level 28|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.2 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.0 levels of quests, starting around Skuerto). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
