-- 3-5 Northshire: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Northshire.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 3-5 Northshire

step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 29078 >>Accept Beating Them Back!
    .target Marshal McBride
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 29078,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 29078 >>Turn in Beating Them Back!
    .accept 29079 >>Accept Lions for Lambs
    .target Marshal McBride
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 29079,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step
    .goto 425,31.73,50.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .home >>Set your Hearthstone to Godric Rothgar's inn
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 29079 >>Turn in Lions for Lambs
    .accept 29080 >>Accept Join the Battle!
    .target Marshal McBride
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 29080 >>Turn in Join the Battle!
    .accept 29081 >>Accept They Sent Assassins
    .target Sergeant Willem
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 29082 >>Accept Fear No Evil
    .target Brother Paxton
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 425,37.80,31.10,0
    .goto 425,37.80,31.10,40,0
    .goto 425,36.94,28.64,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 29081,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,37.42,26.11
    >>Interact with |cRXP_FRIENDLY_Injured Stormwind Infantry|r
    .complete 29082,1 --Injured Stormwind Infantry
    .target Injured Stormwind Infantry
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 29082 >>Turn in Fear No Evil
    .target Brother Paxton
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 29081 >>Turn in They Sent Assassins
    .accept 29083 >>Accept The Rear is Clear
    .target Sergeant Willem
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 29083 >>Turn in The Rear is Clear << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 28766 >>Accept Beating Them Back! << Human Warrior
    .target Marshal McBride
step << Human Warrior
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 28766,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Human Warrior
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28766 >>Turn in Beating Them Back!
    .accept 28774 >>Accept Lions for Lambs
    .target Marshal McBride
step << Human Warrior
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 28774,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step << Human Warrior
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28774 >>Turn in Lions for Lambs
    .accept 3100 >>Accept Simple Letter
    .target Marshal McBride
step << Human Warrior
    .goto 425,40.87,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 3100 >>Turn in Simple Letter
    .accept 26913 >>Accept Charging into Battle
    .target Llane Beshere
step << Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .train 100 >>Train |T132337:0|t[Charge] << Cata
    .target Llane Beshere
step << Human Warrior
    .goto 425,35.55,62.24
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26913,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Human Warrior
    .goto 425,40.87,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 26913 >>Turn in Charging into Battle
    .target Llane Beshere
step << Human Warrior
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28789 >>Accept Join the Battle!
    .target Marshal McBride
step << Human Warrior
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28789 >>Turn in Join the Battle!
    .accept 28797 >>Accept They Sent Assassins
    .target Sergeant Willem
step << Human Warrior
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28813 >>Accept Fear No Evil
    .target Brother Paxton
step << Human Warrior
    .goto 425,30.49,30.94
    >>Interact with |cRXP_FRIENDLY_Injured Stormwind Infantries|r
    .complete 28813,1 --Injured Stormwind Infantry (4)
    .target Injured Stormwind Infantry
step << Human Warrior
    #loop
    .goto 425,36.94,28.64,0
    .goto 425,36.94,28.64,40,0
    .goto 425,37.80,31.10,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 28797,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
step << Human Warrior
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28813 >>Turn in Fear No Evil
    .target Brother Paxton
step << Human Warrior
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28797 >>Turn in They Sent Assassins
    .accept 28823 >>Accept The Rear is Clear
    .target Sergeant Willem
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28823 >>Turn in The Rear is Clear << Human Warrior
    .accept 28762 >>Accept Beating Them Back! << Human Paladin
    .target Marshal McBride
step << Human Paladin
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 28762,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Human Paladin
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28762 >>Turn in Beating Them Back!
    .accept 28770 >>Accept Lions for Lambs
    .target Marshal McBride
step << Human Paladin
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 28770,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step << Human Paladin
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28770 >>Turn in Lions for Lambs
    .accept 3101 >>Accept Consecrated Letter
    .target Marshal McBride
step << Human Paladin
    .goto 425,41.55,53.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >>Turn in Consecrated Letter
    .accept 26918 >>Accept The Power of the Light
    .target Brother Sammuel
step << Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .train 20154 >>Train |T135960:0|t[Seal of Righteousness] << Cata
    .train 20271 >>Train |T135959:0|t[Judgement] << Cata
    .target Brother Sammuel
step << Human Paladin
    .goto 425,35.55,62.24
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26918,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Human Paladin
    .goto 425,41.55,53.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 26918 >>Turn in The Power of the Light
    .target Brother Sammuel
step << Human Paladin
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28785 >>Accept Join the Battle!
    .target Marshal McBride
step << Human Paladin
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28785 >>Turn in Join the Battle!
    .accept 28793 >>Accept They Sent Assassins
    .target Sergeant Willem
step << Human Paladin
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28809 >>Accept Fear No Evil
    .target Brother Paxton
step << Human Paladin
    .goto 425,30.49,30.94
    >>Interact with |cRXP_FRIENDLY_Injured Stormwind Infantries|r
    .complete 28809,1 --Injured Stormwind Infantry (4)
    .target Injured Stormwind Infantry
step << Human Paladin
    #loop
    .goto 425,36.94,28.64,0
    .goto 425,36.94,28.64,40,0
    .goto 425,37.80,31.10,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 28793,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
step << Human Paladin
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28809 >>Turn in Fear No Evil
    .target Brother Paxton
step << Human Paladin
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28793 >>Turn in They Sent Assassins
    .accept 28819 >>Accept The Rear is Clear
    .target Sergeant Willem
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28819 >>Turn in The Rear is Clear << Human Paladin
    .accept 28767 >>Accept Beating Them Back! << Human Hunter
    .target Marshal McBride
step << Human Hunter
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 28767,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Human Hunter
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28767 >>Turn in Beating Them Back!
    .accept 28759 >>Accept Lions for Lambs
    .target Marshal McBride
step << Human Hunter
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 28759,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step << Human Hunter
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28759 >>Turn in Lions for Lambs
    .accept 26910 >>Accept Etched Letter
    .target Marshal McBride
step << Human Hunter
    .goto 425,34.83,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashley Blank|r
    .turnin 26910 >>Turn in Etched Letter
    .accept 26917 >>Accept The Hunter's Path
    .target Ashley Blank
step << Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashley Blank|r
    .train 56641 >>Train |T132213:0|t[Steady Shot] << Cata
    .target Ashley Blank
step << Human Hunter
    .goto 425,35.55,62.24
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26917,1 --Training Dummy slain (5)
    .mob Training Dummy
step << Human Hunter
    .goto 425,34.83,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashley Blank|r
    .turnin 26917 >>Turn in The Hunter's Path
    .target Ashley Blank
step << Human Hunter
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28780 >>Accept Join the Battle!
    .target Marshal McBride
step << Human Hunter
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28780 >>Turn in Join the Battle!
    .accept 28791 >>Accept They Sent Assassins
    .target Sergeant Willem
step << Human Hunter
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28806 >>Accept Fear No Evil
    .target Brother Paxton
step << Human Hunter
    .goto 425,30.49,30.94
    >>Interact with |cRXP_FRIENDLY_Injured Stormwind Infantries|r
    .complete 28806,1 --Injured Stormwind Infantry (4)
    .target Injured Stormwind Infantry
step << Human Hunter
    #loop
    .goto 425,36.94,28.64,0
    .goto 425,36.94,28.64,40,0
    .goto 425,37.80,31.10,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 28791,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
step << Human Hunter
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28806 >>Turn in Fear No Evil
    .target Brother Paxton
step << Human Hunter
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28791 >>Turn in They Sent Assassins
    .accept 28817 >>Accept The Rear is Clear
    .target Sergeant Willem
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28817 >>Turn in The Rear is Clear << Human Hunter
    .accept 28764 >>Accept Beating Them Back! << Human Rogue
    .target Marshal McBride
step << Human Rogue
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 28764,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Human Rogue
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28764 >>Turn in Beating Them Back!
    .accept 28772 >>Accept Lions for Lambs
    .target Marshal McBride
step << Human Rogue
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 28772,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step << Human Rogue
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28772 >>Turn in Lions for Lambs
    .accept 3102 >>Accept Encrypted Letter
    .target Marshal McBride
step << Human Rogue
    .goto 425,41.13,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >>Turn in Encrypted Letter
    .accept 26915 >>Accept The Deepest Cut
    .target Jorik Kerridan
step << Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r outside on the opposite side of the Abbey
    .train 2098 >>Train |T132292:0|t[Eviscerate] << Cata
    .target Jorik Kerridan
step << Human Rogue
    .goto 425,35.55,62.24
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26915,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Human Rogue
    .goto 425,41.13,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 26915 >>Turn in The Deepest Cut
    .target Jorik Kerridan
step << Human Rogue
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28787 >>Accept Join the Battle!
    .target Marshal McBride
step << Human Rogue
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28787 >>Turn in Join the Battle!
    .accept 28795 >>Accept They Sent Assassins
    .target Sergeant Willem
step << Human Rogue
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28811 >>Accept Fear No Evil
    .target Brother Paxton
step << Human Rogue
    .goto 425,30.49,30.94
    >>Interact with |cRXP_FRIENDLY_Injured Stormwind Infantries|r
    .complete 28811,1 --Injured Stormwind Infantry (4)
    .target Injured Stormwind Infantry
step << Human Rogue
    #loop
    .goto 425,36.94,28.64,0
    .goto 425,36.94,28.64,40,0
    .goto 425,37.80,31.10,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 28795,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
step << Human Rogue
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28811 >>Turn in Fear No Evil
    .target Brother Paxton
step << Human Rogue
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28795 >>Turn in They Sent Assassins
    .accept 28821 >>Accept The Rear is Clear
    .target Sergeant Willem
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28821 >>Turn in The Rear is Clear << Human Rogue
    .accept 28763 >>Accept Beating Them Back! << Human Priest
    .target Marshal McBride
step << Human Priest
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 28763,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Human Priest
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28763 >>Turn in Beating Them Back!
    .accept 28771 >>Accept Lions for Lambs
    .target Marshal McBride
step << Human Priest
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 28771,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step << Human Priest
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28771 >>Turn in Lions for Lambs
    .accept 3103 >>Accept Hallowed Letter
    .target Marshal McBride
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 3103 >>Turn in Hallowed Letter
    .accept 26919 >>Accept Learning the Word
    .target Priestess Anetta
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .train 2061 >>Train |T135907:0|t[Flash Heal] << Cata
    .target Priestess Anetta
step << Human Priest
    .goto 425,35.55,62.24
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26919,1 --Training Dummy slain (5)
    .mob Training Dummy
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 26919 >>Turn in Learning the Word
    .target Priestess Anetta
step << Human Priest
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28786 >>Accept Join the Battle!
    .target Marshal McBride
step << Human Priest
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28786 >>Turn in Join the Battle!
    .accept 28794 >>Accept They Sent Assassins
    .target Sergeant Willem
step << Human Priest
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28810 >>Accept Fear No Evil
    .target Brother Paxton
step << Human Priest
    .goto 425,30.49,30.94
    >>Interact with |cRXP_FRIENDLY_Injured Stormwind Infantries|r
    .complete 28810,1 --Injured Stormwind Infantry (4)
    .target Injured Stormwind Infantry
step << Human Priest
    #loop
    .goto 425,36.94,28.64,0
    .goto 425,36.94,28.64,40,0
    .goto 425,37.80,31.10,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 28794,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
step << Human Priest
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28810 >>Turn in Fear No Evil
    .target Brother Paxton
step << Human Priest
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28794 >>Turn in They Sent Assassins
    .accept 28820 >>Accept The Rear is Clear
    .target Sergeant Willem
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28820 >>Turn in The Rear is Clear << Human Priest
    .accept 28757 >>Accept Beating Them Back! << Human Mage
    .target Marshal McBride
step << Human Mage
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 28757,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Human Mage
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28757 >>Turn in Beating Them Back!
    .accept 28769 >>Accept Lions for Lambs
    .target Marshal McBride
step << Human Mage
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 28769,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step << Human Mage
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28769 >>Turn in Lions for Lambs
    .accept 3104 >>Accept Glyphic Letter
    .target Marshal McBride
step << Human Mage
    .goto 425,38.79,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >>Turn in Glyphic Letter
    .accept 26916 >>Accept Mastering the Arcane
    .target Khelden Bremen
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .train 5143 >>Train |T136096:0|t[Arcane Missiles] << Cata
    .target Khelden Bremen
step << Human Mage
    .goto 425,35.55,62.24
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26916,1 --Training Dummy slain (2)
    .mob Training Dummy
step << Human Mage
    .goto 425,38.79,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 26916 >>Turn in Mastering the Arcane
    .target Khelden Bremen
step << Human Mage
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28784 >>Accept Join the Battle!
    .target Marshal McBride
step << Human Mage
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28784 >>Turn in Join the Battle!
    .accept 28792 >>Accept They Sent Assassins
    .target Sergeant Willem
step << Human Mage
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28808 >>Accept Fear No Evil
    .target Brother Paxton
step << Human Mage
    .goto 425,30.49,30.94
    >>Interact with |cRXP_FRIENDLY_Injured Stormwind Infantries|r
    .complete 28808,1 --Injured Stormwind Infantry (4)
    .target Injured Stormwind Infantry
step << Human Mage
    #loop
    .goto 425,36.94,28.64,0
    .goto 425,36.94,28.64,40,0
    .goto 425,37.80,31.10,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 28792,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
step << Human Mage
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28808 >>Turn in Fear No Evil
    .target Brother Paxton
step << Human Mage
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28792 >>Turn in They Sent Assassins
    .accept 28818 >>Accept The Rear is Clear
    .target Sergeant Willem
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28818 >>Turn in The Rear is Clear << Human Mage
    .accept 28765 >>Accept Beating Them Back! << Human Warlock
    .target Marshal McBride
step << Human Warlock
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 28765,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Human Warlock
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28765 >>Turn in Beating Them Back!
    .accept 28773 >>Accept Lions for Lambs
    .target Marshal McBride
step << Human Warlock
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 28773,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step << Human Warlock
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28773 >>Turn in Lions for Lambs
    .accept 3105 >>Accept Tainted Letter
    .target Marshal McBride
step << Human Warlock
    .goto 425,39.54,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Turn in Tainted Letter
    .accept 26914 >>Accept Corruption
    .target Drusilla La Salle
step << Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .train 348 >>Train |T135817:0|t[Immolate] << Cata
    .target Drusilla La Salle
step << Human Warlock
    .goto 425,35.55,62.24
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26914,1 --Training Dummy slain (5)
    .mob Training Dummy
step << Human Warlock
    .goto 425,39.54,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 26914 >>Turn in Corruption
    .target Drusilla La Salle
step << Human Warlock
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28788 >>Accept Join the Battle!
    .target Marshal McBride
step << Human Warlock
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28788 >>Turn in Join the Battle!
    .accept 28796 >>Accept They Sent Assassins
    .target Sergeant Willem
step << Human Warlock
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .accept 28812 >>Accept Fear No Evil
    .target Brother Paxton
step << Human Warlock
    .goto 425,30.49,30.94
    >>Interact with |cRXP_FRIENDLY_Injured Stormwind Infantries|r
    .complete 28812,1 --Injured Stormwind Infantry (4)
    .target Injured Stormwind Infantry
step << Human Warlock
    #loop
    .goto 425,36.94,28.64,0
    .goto 425,36.94,28.64,40,0
    .goto 425,37.80,31.10,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 28796,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
step << Human Warlock
    .goto 425,35.59,37.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Paxton|r
    .turnin 28812 >>Turn in Fear No Evil
    .target Brother Paxton
step << Human Warlock
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28796 >>Turn in They Sent Assassins
    .accept 28822 >>Accept The Rear is Clear
    .target Sergeant Willem
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28822 >>Turn in The Rear is Clear << Human Warlock
    .accept 31139 >>Accept Beating Them Back! << Human Monk
    .target Marshal McBride
step << Human Monk
    #loop
    .goto 425,30.13,44.74,0
    .goto 425,30.13,44.74,40,0
    .goto 425,30.69,40.29,40,0
    >>Kill |cRXP_ENEMY_Blackrock Battle Worgs|r
    .complete 31139,1 --Blackrock Battle Worg slain (6)
    .mob Blackrock Battle Worg
step << Human Monk
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 31139 >>Turn in Beating Them Back!
    .accept 31140 >>Accept Lions for Lambs
    .target Marshal McBride
step << Human Monk
    #loop
    .goto 425,26.45,44.70,0
    .goto 425,26.45,44.70,40,0
    .goto 425,27.22,40.40,40,0
    >>Kill |cRXP_ENEMY_Blackrock Spies|r
    .complete 31140,1 --Blackrock Spy slain (8)
    .mob Blackrock Spy
step << Human Monk
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 31140 >>Turn in Lions for Lambs
    .target Marshal McBride
step << Human Monk
    .goto 425,41.24,52.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bao|r
    .accept 31143 >>Accept Join the Battle!
    .target Bao
    .isQuestTurnedIn 31142 --any of: Palm of the Tiger
step << Human Monk
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 31143 >>Turn in Join the Battle!
    .target Sergeant Willem
    .isOnQuest 31143
step << Human Monk
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .accept 31144 >>Accept They Sent Assassins
    .target Sergeant Willem
    .isQuestTurnedIn 31143 --any of: Join the Battle!
step << Human Monk
    #loop
    .goto 425,37.80,31.10,0
    .goto 425,37.80,31.10,40,0
    .goto 425,36.94,28.64,40,0
    >>Kill |cRXP_ENEMY_Goblin Assassins|r
    .complete 31144,1 --Goblin Assassin slain (8)
    .mob Goblin Assassin
    .isOnQuest 31144
step << Human Monk
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 31144 >>Turn in They Sent Assassins
    .target Sergeant Willem
    .isOnQuest 31144
step << Human Monk
    .goto 425,35.73,39.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Willem|r
    .accept 31145 >>Accept The Rear is Clear
    .target Sergeant Willem
    .isQuestTurnedIn 31144 --any of: They Sent Assassins
step << Human Monk
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 31145 >>Turn in The Rear is Clear
    .target Marshal McBride
    .isOnQuest 31145
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 26389 >>Accept Blackrock Invasion
    .target Marshal McBride
    .isQuestTurnedIn 28817,28818,28819,28820,28821,28822,28823,29083,31145 --any of: The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear
    .xp <2,1
step
    .goto 425,33.38,54.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .accept 26391 >>Accept Extinguishing Hope
    .target Milly Osworth
    .isQuestTurnedIn 28817,28818,28819,28820,28821,28822,28823,29083,31145 --any of: The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear, The Rear is Clear
    .xp <2,1
step
    #loop
    .goto 425,52.97,69.72,0
    .goto 425,52.97,69.72,40,0
    .goto 425,52.70,71.78,40,0
    >>Interact with |cRXP_FRIENDLY_Northshire Vineyards Fire Triggers|r
    .complete 26391,1 --Northshire Vineyards Fire Trigger (8)
    .target Northshire Vineyards Fire Trigger
    .isOnQuest 26391
step
    #loop
    .goto 425,52.54,77.91,0
    .goto 425,52.54,77.91,40,0
    .goto 425,53.10,81.03,40,0
    >>Kill |cRXP_ENEMY_Blackrock Invaders|r. Loot them for |cRXP_LOOT_Blackrock Orc Weapon|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
    .isOnQuest 26389
step
    #completewith next
    .hs >>Hearth to Godric Rothgar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 425,33.38,54.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 26391 >>Turn in Extinguishing Hope
    .target Milly Osworth
    .isOnQuest 26391
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26389 >>Turn in Blackrock Invasion
    .target Marshal McBride
    .isOnQuest 26389
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 26390 >>Accept Ending the Invasion!
    .target Marshal McBride
    .isQuestTurnedIn 26389 --any of: Blackrock Invasion
    .xp <2,1
step
    .goto 425,64.98,48.35
    >>Kill |cRXP_ENEMY_Kurtok the Slayer|r
    .complete 26390,1 --Kurtok the Slayer slain (1)
    .mob Kurtok the Slayer
    .isOnQuest 26390
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26390 >>Turn in Ending the Invasion!
    .target Marshal McBride
    .isOnQuest 26390
step
    .goto 425,33.54,52.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .accept 54 >>Accept Report to Goldshire
    .target Marshal McBride
    .isQuestTurnedIn 26390 --any of: Ending the Invasion!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 425,24.10,73.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >>Accept Rest and Relaxation
    .target Falkhaan Isenstrider
step
    +|cRXP_WARN_End of the Northshire route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elwynn Forest|r: Report to Goldshire
    >>|cRXP_FRIENDLY_Elwynn Forest|r: Rest and Relaxation << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
]])
