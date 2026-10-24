-- 45-47 Badlands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Badlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 45-47 Badlands
--RouteBuilder:next
#next Zone Routes (Horde)\46-48 Felwood: around Totem of Ruumbo;Zone Routes (Horde)\47-49 Searing Gorge: around Jack Rockleg

step
    .goto 15,92.64,38.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eddie Flofizzle|r
    .turnin 27762 >>Turn in Fuselight, Ho!
    .target Eddie Flofizzle
    .isOnQuest 27762
step
    .goto 15,92.64,38.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eddie Flofizzle|r
    .accept 27763 >>Accept To Fuselight Proper
    .target Eddie Flofizzle
step
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28575 >>Accept Warchief's Command: Western Plaguelands!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
    .accept 28577 >>Accept Warchief's Command: Eastern Plaguelands!
    .accept 28580 >>Accept Warchief's Command: Badlands!
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
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step
    #completewith next
    .zone 15 >>Leave Silvermoon City for Badlands
    .zoneskip 15
step
    .goto 15,65.08,38.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dolph Blastus|r
    .turnin 27763 >>Turn in To Fuselight Proper
    .accept 27774 >>Accept Easily Swayed
    .target Dolph Blastus
step
    .goto 15,64.27,38.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
    .accept 27775 >>Accept When the Going Gets Tough, Cheat
    .target Garyanne Fleezlebop
step
    .goto 15,64.35,35.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mixi Sweetride|r
    .fp >>Get the Fuselight Flight Path
    .target Mixi Sweetride
step
    #loop
    .goto 15,60.84,21.60,0
    .goto 15,60.84,21.60,40,0
    .goto 15,56.83,21.66,40,0
    .goto 15,55.88,24.22,40,0
    >>Kill |cRXP_ENEMY_Dustbelcher Instructor|r and loot |cRXP_LOOT_Instructor's Rod|r
    >>Kill |cRXP_ENEMY_Dustbelcher Instructors|r, |cRXP_ENEMY_Dustbelcher Initiates|r and |cRXP_ENEMY_Dustbelcher Trainees|r
    .complete 27775,1 --Instructor's Rod (1)
    .complete 27774,1 --Dustbelcher Instructor (8)
    .mob Dustbelcher Instructor
    .mob Dustbelcher Initiate
    .mob Dustbelcher Trainee
step
    .goto 15,64.27,38.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
    .turnin 27775 >>Turn in When the Going Gets Tough, Cheat
    .accept 27776 >>Accept It's Goat Time, Baby
    .target Garyanne Fleezlebop
step
    .goto 15,65.08,38.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dolph Blastus|r
    .turnin 27774 >>Turn in Easily Swayed
    .accept 27764 >>Accept A Strange Request
    .target Dolph Blastus
step
    #loop
    .goto 15,63.35,40.70,0
    .goto 15,63.35,40.70,40,0
    .goto 15,61.40,37.03,40,0
    .goto 15,65.51,33.67,40,0
    >>Interact with |cRXP_FRIENDLY_Billy Goats|r
    .complete 27776,1 --Billy Goat (12)
    .target Billy Goat
step
    .goto 15,64.27,38.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
    .turnin 27776 >>Turn in It's Goat Time, Baby
    .target Garyanne Fleezlebop
step
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27764 >>Turn in A Strange Request
    .accept 27765 >>Accept First Sample: Wild Eggs
    .accept 27766 >>Accept Second Sample: Whelps
    .unitscan Rhea
step
    #loop
    .goto 15,71.04,53.64,0
    .goto 15,71.04,53.64,40,0
    .goto 15,73.04,48.47,40,0
    .goto 15,71.03,42.41,40,0
    .goto 15,67.55,45.70,40,0
    >>Pick up |cRXP_PICK_Wild Black Dragon Egg|r from the ground
    >>Kill |cRXP_ENEMY_Scalding Whelps|r. Loot them for |cRXP_LOOT_Scalding Whelp Corpse|r
    .complete 27765,1 --Wild Black Dragon Egg (6)
    .complete 27766,1 --Scalding Whelp Corpse (10)
    .mob Scalding Whelp
step
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27765 >>Turn in First Sample: Wild Eggs
    .turnin 27766 >>Turn in Second Sample: Whelps
    .accept 27770 >>Accept Lifting the Veil
    .unitscan Rhea
step
    .goto 15,65.80,56.70
    >>Witness the final piece of Rhea's studies.
    .complete 27770,1 --Nyxondra
    .target Nyxondra
step
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27770 >>Turn in Lifting the Veil
    .accept 27771 >>Accept Third Sample: Implanted Eggs
    .unitscan Rhea
step
    .goto 15,65.83,56.76
    >>Pick up |cRXP_PICK_Nyxondra's Egg|r from the ground
    .complete 27771,1 --Nyxondra's Egg (3)
step
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27771 >>Turn in Third Sample: Implanted Eggs
    .accept 27769 >>Accept Rhea Revealed
    .unitscan Rhea
step
    .goto 15,66.39,55.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
    .complete 27769,1 --Rhea
    .target Rhea
step
    .goto 15,66.52,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rheastrasza|r
    .turnin 27769 >>Turn in Rhea Revealed
    .accept 27772 >>Accept The Venerable Doctor Blam
    .target Rheastrasza
step
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27772 >>Turn in The Venerable Doctor Blam
    .accept 27789 >>Accept Troggish Troubles
    .unitscan Dr. Hieronymus Blam
step
    .goto 15,49.37,55.21
    >>Enter a Blam Turret, then survive four waves of trogg attacks.
    .complete 27789,1 --Blam Turret
    .target Blam Turret
step
    .goto 15,49.37,55.21
    >>Enter a Blam Turret, then survive four waves of trogg attacks.
    .complete 27789,2 --Blam Turret
    .target Blam Turret
step
    .goto 15,49.37,55.21
    >>Enter a Blam Turret, then survive four waves of trogg attacks.
    .complete 27789,3 --Blam Turret
    .target Blam Turret
step
    .goto 15,49.37,55.21
    >>Enter a Blam Turret, then survive four waves of trogg attacks.
    .complete 27789,4 --Blam Turret
    .target Blam Turret
step
    .goto 15,52.19,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ramah Goldenray|r
    .target Ramah Goldenray
    .home >>Set your Hearthstone to Ramah Goldenray's inn
step
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27789 >>Turn in Troggish Troubles
    .accept 27881 >>Accept Bloodwatcher Point << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .unitscan Dr. Hieronymus Blam
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,52.08,51.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Examiner Tae'thelan Bloodwatcher|r
    .turnin 27881 >>Turn in Bloodwatcher Point
    .accept 27882 >>Accept It's Not About History, It's About Power
    .target High Examiner Tae'thelan Bloodwatcher
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,52.12,51.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aoren Sunglow|r
    .accept 27878 >>Accept Forcible Acquisition
    .target Aoren Sunglow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,52.25,51.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lidia Sunglow|r
    .accept 27877 >>Accept The Morons' League
    .target Lidia Sunglow
step
    .goto 15,52.41,50.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selara|r
    .fp >>Get the Bloodwatcher Point Flight Path
    .target Selara
    .subzoneskip 5524,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,53.48,38.62
    >>Kill |cRXP_ENEMY_Explorers' League Excavator|r and loot |cRXP_LOOT_Broken Chalice|r
    >>Kill |cRXP_ENEMY_Explorers' League Excavator|r and loot |cRXP_LOOT_Dusty Vase|r
    >>Kill |cRXP_ENEMY_Explorers' League Excavator|r and loot |cRXP_LOOT_Earthen Hieroglyph|r
    >>Kill |cRXP_ENEMY_Explorers' League Excavator|r and loot |cRXP_LOOT_Trogg Tool|r
    .complete 27882,1 --Broken Chalice (1)
    .complete 27882,2 --Dusty Vase (1)
    .complete 27882,3 --Earthen Hieroglyph (1)
    .complete 27882,4 --Trogg Tool (1)
    .mob Explorers' League Excavator
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,45.96,30.32,0
    .goto 15,45.96,30.32,40,0
    .goto 15,46.05,27.29,40,0
    .goto 15,39.73,24.63,40,0
    .goto 15,39.42,29.05,40,0
    >>Open the |cRXP_PICK_Angor's Coffer|r. Loot it for |cRXP_LOOT_Engraved Tablets of Golganneth|r
    >>Kill |cRXP_ENEMY_Shadowforge Tunnelers|r, |cRXP_ENEMY_Shadowforge Darkweavers|r, |cRXP_ENEMY_Shadowforge Chanters|r and |cRXP_ENEMY_Shadowforge Warriors|r. Loot them for |cRXP_LOOT_Dark Iron Head|r
    .complete 27878,1 --Engraved Tablets of Golganneth (1)
    .complete 27877,1 --Dark Iron Head (15)
    .mob Shadowforge Tunneler
    .mob Shadowforge Darkweaver
    .mob Shadowforge Chanter
    .mob Shadowforge Warrior
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Ramah Goldenray's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,52.08,51.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Examiner Tae'thelan Bloodwatcher|r
    .turnin 27882 >>Turn in It's Not About History, It's About Power
    .accept 27883 >>Accept The Warden's Pawn
    .target High Examiner Tae'thelan Bloodwatcher
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,52.12,51.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aoren Sunglow|r
    .turnin 27878 >>Turn in Forcible Acquisition
    .target Aoren Sunglow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,52.25,51.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lidia Sunglow|r
    .turnin 27877 >>Turn in The Morons' League
    .target Lidia Sunglow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,47.97,50.91
    >>Click the |cRXP_PICK_Marble Slab|r
    .accept 27886 >>Accept The Sentinel's Game
    .isQuestTurnedIn 27884 --any of: The Sentinel's Pawn
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,47.88,53.22
    >>Complete the Sentinel's Game by connecting the two red statues.
    .complete 27886,1 --Sentinel's Pawn
    .target Sentinel's Pawn
    .isOnQuest 27886
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,48.03,53.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27886 >>Turn in The Sentinel's Game
    .target ?
    .isOnQuest 27886
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.25,54.28
    >>Click the |cRXP_PICK_Stone Slab|r
    .turnin 27883 >>Turn in The Warden's Pawn
    .accept 27885 >>Accept The Warden's Game
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.25,54.27
    >>Complete the Warden's Game by teleporting the Warden's Pawns into inward-facing positions.
    .complete 27885,1 --Warden's Game Controller
    .target Warden's Game Controller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.25,54.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27885 >>Turn in The Warden's Game
    .target ?
step
    .goto 15,26.21,62.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .accept 27713 >>Accept The Day that Deathwing Came
    .target Theldurin the Lost
step
    #loop
    .goto 15,27.72,60.56,0
    .goto 15,27.72,60.56,40,0
    .goto 15,28.26,59.14,40,0
    >>Kill |cRXP_ENEMY_Dang-Blasted Rock Elementals|r
    .complete 27713,1 --Dang-Blasted Rock Elemental slain (8)
    .mob Dang-Blasted Rock Elemental
step
    .goto 15,41.94,43.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathwing|r
    .complete 27713,2 --Deathwing
    .target Deathwing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,52.08,51.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Examiner Tae'thelan Bloodwatcher|r
    .accept 27887 >>Accept Ancient Protectors
    .target High Examiner Tae'thelan Bloodwatcher
    .isQuestTurnedIn 27886 --The Sentinel's Game
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.29,52.58
    >>Kill |cRXP_ENEMY_The Warden|r
    .complete 27887,1 --The Warden slain (1)
    .mob The Warden
    .isOnQuest 27887
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.29,51.65
    >>Kill |cRXP_ENEMY_The Sentinel|r
    .complete 27887,2 --The Sentinel slain (1)
    .mob The Sentinel
    .isOnQuest 27887
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.30,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27887 >>Turn in Ancient Protectors
    .target ?
    .isOnQuest 27887
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.30,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27913 >>Accept The Titans' Trove
    .target !
    .isQuestTurnedIn 27887 --any of: Ancient Protectors
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.26,53.30
    >>Click the |cRXP_PICK_Trove of the Watchers|r
    .turnin 27913 >>Turn in The Titans' Trove
    .isOnQuest 27913
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,50.26,53.30
    >>Click the |cRXP_PICK_Trove of the Watchers|r
    .accept 27888 >>Accept Return to Blam
    .isQuestTurnedIn 27913 --any of: The Titans' Trove
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27888 >>Turn in Return to Blam
    .unitscan Dr. Hieronymus Blam
    .isOnQuest 27888
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27889 >>Accept New Kargath
    .unitscan Dr. Hieronymus Blam
    .isQuestTurnedIn 27888 --any of: Return to Blam
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27889 >>Turn in New Kargath
    .unitscan Rhea
    .isOnQuest 27889
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27890 >>Accept The Bad Dogs
    .unitscan Rhea
    .isQuestTurnedIn 27889 --any of: New Kargath
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.87,42.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amakkar|r
    .turnin 27890 >>Turn in The Bad Dogs
    .target Amakkar
    .isOnQuest 27890
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.87,42.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amakkar|r
    .accept 27891 >>Accept Amakkar, Jack of All Trades
    .target Amakkar
    .isQuestTurnedIn 27890 --any of: The Bad Dogs
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.88,42.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jurrix Whitemane|r
    .accept 27892 >>Accept Jurrix the Striker
    .target Jurrix Whitemane
    .isQuestTurnedIn 27890 --any of: The Bad Dogs
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.96,42.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gargal|r
    .accept 27893 >>Accept Gargal, the Behemoth
    .target Gargal
    .isQuestTurnedIn 27890 --any of: The Bad Dogs
    .xp <44,1
step
    .goto 15,18.50,41.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aidan Summerwind|r
    .accept 27879 >>Accept Survival of the Fattest << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 27927 >>Accept Down to the Scar
    .accept 28512 >>Accept To the Aid of the Thorium Brotherhood
    .target Aidan Summerwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,17.68,43.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorn|r
    .accept 27880 >>Accept Half-Ton Holdouts
    .target Gorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.87,42.97
    >>Use Amakkar's Kidney Shot and Amakkar's Pocket Potion.
    .complete 27891,1 --Amakkar
    .target Amakkar
    .isOnQuest 27891
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.87,42.97
    >>Use Amakkar's Kidney Shot and Amakkar's Pocket Potion.
    .complete 27891,2 --Amakkar
    .target Amakkar
    .isOnQuest 27891
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.88,42.74
    >>Use Jurrix's Fiery Blast and Jurrix's Time Warp.
    .complete 27892,1 --Jurrix Whitemane
    .target Jurrix Whitemane
    .isOnQuest 27892
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.88,42.74
    >>Use Jurrix's Fiery Blast and Jurrix's Time Warp.
    .complete 27892,2 --Jurrix Whitemane
    .target Jurrix Whitemane
    .isOnQuest 27892
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.96,42.86
    >>Use Gargal's Shield Wall and Gargal's Mighty Shout.
    .complete 27893,1 --Gargal
    .target Gargal
    .isOnQuest 27893
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.96,42.86
    >>Use Gargal's Shield Wall and Gargal's Mighty Shout.
    .complete 27893,2 --Gargal
    .target Gargal
    .isOnQuest 27893
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.96,42.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gargal|r
    .turnin 27893 >>Turn in Gargal, the Behemoth
    .target Gargal
    .isOnQuest 27893
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.88,42.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jurrix Whitemane|r
    .turnin 27892 >>Turn in Jurrix the Striker
    .target Jurrix Whitemane
    .isOnQuest 27892
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.87,42.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amakkar|r
    .turnin 27891 >>Turn in Amakkar, Jack of All Trades
    .target Amakkar
    .isOnQuest 27891
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.87,42.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amakkar|r
    .accept 27894 >>Accept The Wrath of a Dragonflight
    .target Amakkar
    .isQuestTurnedIn 27891 --Amakkar, Jack of All Trades
    .isQuestTurnedIn 27892 --Jurrix the Striker
    .isQuestTurnedIn 27893 --Gargal, the Behemoth
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,26.20,45.18
    >>Kill |cRXP_ENEMY_Kalaran the Annihilator|r
    .complete 27894,1 --Kalaran the Annihilator slain (1)
    .mob Kalaran the Annihilator
    .isOnQuest 27894
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,30.94,42.12,0
    .goto 15,30.94,42.12,40,0
    .goto 15,32.69,39.21,40,0
    >>Kill |cRXP_ENEMY_Darkflight Soldiers|r
    .complete 27894,2 --Darkflight Soldier slain (4)
    .mob Darkflight Soldier
    .isOnQuest 27894
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27894 >>Turn in The Wrath of a Dragonflight
    .unitscan Rhea
    .isOnQuest 27894
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27895 >>Accept Their Hunt Continues
    .unitscan Rhea
    .isQuestTurnedIn 27894 --any of: The Wrath of a Dragonflight
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,16.84,48.57
    >>Kill |cRXP_ENEMY_Moldarr|r
    .complete 27895,2 --Moldarr slain (1)
    .mob Moldarr
    .isOnQuest 27895
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,15.49,43.19
    >>Kill |cRXP_ENEMY_General Jirakka|r
    .complete 27895,1 --General Jirakka slain (1)
    .mob General Jirakka
    .isOnQuest 27895
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,14.59,42.73,0
    .goto 15,14.59,42.73,40,0
    .goto 15,16.19,47.00,40,0
    >>Kill |cRXP_ENEMY_Darkflight Shadowspeakers|r and |cRXP_ENEMY_Darkflight Flameblades|r
    .complete 27895,3 --Darkflight Shadowspeaker (8)
    .mob Darkflight Shadowspeaker
    .mob Darkflight Flameblade
    .isOnQuest 27895
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27895 >>Turn in Their Hunt Continues
    .unitscan Rhea
    .isOnQuest 27895
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27896 >>Accept The Sorrow and the Fury
    .unitscan Rhea
    .isQuestTurnedIn 27895 --any of: Their Hunt Continues
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,8.62,40.09
    >>Kill |cRXP_ENEMY_Nyxondras|r
    .complete 27896,1 --Nyxondra slain (12)
    .mob Nyxondra
    .isOnQuest 27896
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,8.82,41.89,0
    .goto 15,8.82,41.89,40,0
    .goto 15,10.09,42.78,40,0
    >>Kill |cRXP_ENEMY_Nyxondra's Broodlings|r
    .complete 27896,2 --Nyxondra's Broodling slain (12)
    .mob Nyxondra's Broodling
    .isOnQuest 27896
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27896 >>Turn in The Sorrow and the Fury
    .unitscan Rhea
    .isOnQuest 27896
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27897 >>Accept The Hidden Clutch
    .unitscan Rhea
    .isQuestTurnedIn 27896 --any of: The Sorrow and the Fury
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27897 >>Turn in The Hidden Clutch
    .unitscan Rhea
    .isOnQuest 27897
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27898 >>Accept Rheastrasza's Gift
    .unitscan Rhea
    .isQuestTurnedIn 27897 --any of: The Hidden Clutch
    .xp <44,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,15.96,33.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
    .complete 27898,1 --Rhea
    .target Rhea
    .isOnQuest 27898
step
    .goto 15,15.96,33.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27930 >>Accept Devastation
    .target !
    .isQuestTurnedIn 27858 --any of: Rheastrasza's Gift
    .xp <44,1
step
    .goto 15,18.85,30.29
    >>Click the |cRXP_PICK_Rhea's Final Note|r
    .turnin 27930 >>Turn in Devastation
    .isOnQuest 27930
step
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27859 >>Accept The Egg Lives On
    .unitscan Dr. Hieronymus Blam
    .isQuestTurnedIn 27930 --any of: Devastation
    .xp <44,1
step
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27859 >>Turn in The Egg Lives On
    .unitscan Dr. Hieronymus Blam
    .isOnQuest 27859
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,13.39,63.18,0
    .goto 15,13.39,63.18,40,0
    .goto 15,13.39,66.57,40,0
    .goto 15,13.52,69.78,40,0
    >>Kill |cRXP_ENEMY_Dustbelcher Shamans|r and |cRXP_ENEMY_Dustbelcher Maulers|r
    .complete 27880,1 --Dustbelcher Shaman (8)
    .mob Dustbelcher Shaman
    .mob Dustbelcher Mauler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 15,13.35,74.33,0
    .goto 15,13.35,74.33,40,0
    .goto 15,11.87,75.68,40,0
    >>Open the |cRXP_PICK_Dustbelcher Chest|r. Loot it for |cRXP_LOOT_Dustbelcher Silk|r
    >>Pick up |cRXP_PICK_Dustbelcher Meat|r from the ground
    .complete 27879,2 --Dustbelcher Silk (1)
    .complete 27879,1 --Dustbelcher Meat (1)
step
    .goto 15,26.21,62.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 27927 >>Turn in Down to the Scar
    .turnin 27713 >>Turn in The Day that Deathwing Came
    .target Theldurin the Lost
step
    .goto 15,26.28,62.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .accept 27714 >>Accept The Day that Deathwing Came: The Real Story
    .target Lucien Tosselwrench
step
    .goto 15,26.49,62.30
    >>Listen to Lucien Tosselwrench's version of the story.
    .complete 27714,1 --Lucien Tosselwrench (10)
    .target Lucien Tosselwrench
step
    #completewith Along110
    >>As you go: Click the |cRXP_PICK_The Sun|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27714,3 --The Sun
step
    #label Along110
    .goto 15,35.50,50.75
    >>Interact with |cRXP_FRIENDLY_Cloud|r
    .complete 27714,2 --Cloud
    .target Cloud
step
    .goto 15,35.50,50.75
    >>Click the |cRXP_PICK_The Sun|r
    .complete 27714,3 --The Sun
step
    .goto 15,26.28,62.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .turnin 27714 >>Turn in The Day that Deathwing Came: The Real Story
    .target Lucien Tosselwrench
step
    .goto 15,26.19,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
    .accept 27715 >>Accept The Day that Deathwing Came: What Really Happened
    .target Martek the Exiled
step
    .goto 15,26.43,62.33
    >>Kill |cRXP_ENEMY_Human Admirers|r, |cRXP_ENEMY_Orc Admirers|r, |cRXP_ENEMY_Blood Elf Admirers|r and |cRXP_ENEMY_Night Elf Admirers|r
    .complete 27715,4 --Human Admirer (8)
    .mob Human Admirer
    .mob Orc Admirer
    .mob Blood Elf Admirer
    .mob Night Elf Admirer
step
    .goto 15,41.56,44.15
    >>Listen to Martek the Exiled's version of the story.
    .complete 27715,1 --TDDC 3 Canyon Credit
    .target TDDC 3 Canyon Credit
step
    .goto 15,41.94,43.65
    >>Listen to Martek the Exiled's version of the story.
    .complete 27715,2 --Deathwing
    .target Deathwing
step
    .goto 15,41.94,43.65
    >>Listen to Martek the Exiled's version of the story.
    .complete 27715,3 --Deathwing
    .target Deathwing
step
    .goto 15,26.19,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
    .turnin 27715 >>Turn in The Day that Deathwing Came: What Really Happened
    .target Martek the Exiled
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,17.68,43.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorn|r
    .turnin 27880 >>Turn in Half-Ton Holdouts
    .target Gorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 15,18.50,41.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aidan Summerwind|r
    .turnin 27879 >>Turn in Survival of the Fattest
    .target Aidan Summerwind
step
    +|cRXP_WARN_End of the Badlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Warchief's Command: Arathi Highlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eastern Plaguelands|r: Warchief's Command: Eastern Plaguelands!, Warchief's Command: Badlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    >>|cRXP_FRIENDLY_Searing Gorge|r: To the Aid of the Thorium Brotherhood
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Warchief's Command: The Cape of Stranglethorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Hinterlands|r: Warchief's Command: The Hinterlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
    >>|cRXP_FRIENDLY_Western Plaguelands|r: Warchief's Command: Western Plaguelands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_another zone|r: Rheastrasza's Gift << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 46|r: |cRXP_FRIENDLY_Felwood|r (about 2.5 levels of quests, starting around Totem of Ruumbo), |cRXP_FRIENDLY_Searing Gorge|r (about 0.9 levels of quests, starting around Jack Rockleg; 1 quest from here hands in there). Completing this step loads the guide for Felwood --RouteBuilder:next
]])
