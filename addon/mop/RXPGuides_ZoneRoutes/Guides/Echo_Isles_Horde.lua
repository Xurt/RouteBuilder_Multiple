-- 2-4 Echo Isles: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Echo Isles.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 2-4 Echo Isles

step
    .goto 463,57.16,62.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gora'tin|r
    .target Gora'tin
    .home >>Set your Hearthstone to Gora'tin's inn
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 24607 >>Accept The Rise of the Darkspear
    .target Jin'thala
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 463,52.55,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 24607 >>Turn in The Rise of the Darkspear
    .accept 24639 >>Accept The Basics: Hitting Things
    .target Nortet
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24639,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 463,52.55,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 24639 >>Turn in The Basics: Hitting Things
    .accept 24641 >>Accept A Rough Start
    .target Nortet
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    #loop
    .goto 463,55.14,60.54,0
    .goto 463,55.14,60.54,40,0
    .goto 463,51.41,62.85,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 24641,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 463,52.55,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 24641 >>Turn in A Rough Start
    .accept 24642 >>Accept Proving Pit
    .target Nortet
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    #completewith Along7
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24642,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    #label Along7
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 24642,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 24642,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 463,52.55,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 24642 >>Turn in Proving Pit
    .accept 24640 >>Accept The Arts of a Warrior
    .target Nortet
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24640,1 --Tiki Target slain (3)
    .mob Tiki Target
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 463,52.55,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 24640 >>Turn in The Arts of a Warrior
    .accept 24643 >>Accept More Than Expected
    .target Nortet
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 24643 >>Turn in More Than Expected
    .target Vol'jin
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 24776 >>Accept The Rise of the Darkspear
    .target Jin'thala
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 463,56.38,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24776 >>Turn in The Rise of the Darkspear
    .accept 24777 >>Accept The Basics: Hitting Things
    .target Ortezza
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    #loop
    .goto 463,56.66,49.54,0
    .goto 463,56.66,49.54,40,0
    .goto 463,55.47,53.38,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24777,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 463,56.38,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24777 >>Turn in The Basics: Hitting Things
    .accept 24779 >>Accept A Rough Start
    .target Ortezza
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    #loop
    .goto 463,55.34,39.92,0
    .goto 463,55.34,39.92,40,0
    .goto 463,52.11,41.96,40,0
    .goto 463,49.77,39.67,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 24779,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 463,56.38,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24779 >>Turn in A Rough Start
    .accept 24780 >>Accept Proving Pit
    .target Ortezza
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24780,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    #label Along19
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 24780,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 24780,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 463,56.38,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24780 >>Turn in Proving Pit
    .accept 24778 >>Accept The Arts of a Hunter
    .target Ortezza
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    #loop
    .goto 463,56.66,49.54,0
    .goto 463,56.66,49.54,40,0
    .goto 463,55.47,53.38,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24778,1 --Tiki Target slain (3)
    .mob Tiki Target
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 463,56.38,50.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24778 >>Turn in The Arts of a Hunter
    .accept 24781 >>Accept More Than Expected
    .target Ortezza
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 24781 >>Turn in More Than Expected
    .target Vol'jin
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 24770 >>Accept The Rise of the Darkspear
    .target Jin'thala
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 463,52.89,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24770 >>Turn in The Rise of the Darkspear
    .accept 24771 >>Accept The Basics: Hitting Things
    .target Legati
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24771,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 463,52.89,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24771 >>Turn in The Basics: Hitting Things
    .accept 24773 >>Accept A Rough Start
    .target Legati
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    #loop
    .goto 463,52.11,41.96,0
    .goto 463,52.11,41.96,40,0
    .goto 463,49.77,39.67,40,0
    .goto 463,55.34,39.92,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 24773,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 463,52.89,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24773 >>Turn in A Rough Start
    .accept 24774 >>Accept Proving Pit
    .target Legati
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    #completewith Along31
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24774,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    #label Along31
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 24774,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 24774,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 463,52.89,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24774 >>Turn in Proving Pit
    .accept 24772 >>Accept The Arts of a Rogue
    .target Legati
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24772,1 --Tiki Target slain (3)
    .mob Tiki Target
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 463,52.89,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24772 >>Turn in The Arts of a Rogue
    .accept 24775 >>Accept More Than Expected
    .target Legati
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 24775 >>Turn in More Than Expected
    .target Vol'jin
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 24782 >>Accept The Rise of the Darkspear
    .target Jin'thala
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24782 >>Turn in The Rise of the Darkspear
    .accept 24783 >>Accept The Basics: Hitting Things
    .target Tunari
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    #loop
    .goto 463,56.66,49.54,0
    .goto 463,56.66,49.54,40,0
    .goto 463,55.47,53.38,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24783,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24783 >>Turn in The Basics: Hitting Things
    .accept 24785 >>Accept A Rough Start
    .target Tunari
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    #loop
    .goto 463,55.34,39.92,0
    .goto 463,55.34,39.92,40,0
    .goto 463,52.11,41.96,40,0
    .goto 463,49.77,39.67,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 24785,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24785 >>Turn in A Rough Start
    .accept 24786 >>Accept Proving Pit
    .target Tunari
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    #completewith Along43
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24786,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    #label Along43
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 24786,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 24786,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24786 >>Turn in Proving Pit
    .accept 24784 >>Accept Learnin' tha Word
    .target Tunari
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    #loop
    .goto 463,56.66,49.54,0
    .goto 463,56.66,49.54,40,0
    .goto 463,55.47,53.38,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24784,1 --Tiki Target slain (5)
    .mob Tiki Target
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    .goto 463,58.04,49.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24784 >>Turn in Learnin' tha Word
    .accept 24787 >>Accept More Than Expected
    .target Tunari
step << Orc Priest/Undead Priest/Tauren Priest/Troll Priest/BloodElf Priest/Goblin Priest/Pandaren Priest
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 24787 >>Turn in More Than Expected
    .target Vol'jin
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 24750 >>Accept The Rise of the Darkspear
    .target Jin'thala
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 463,59.69,52.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24750 >>Turn in The Rise of the Darkspear
    .accept 24751 >>Accept The Basics: Hitting Things
    .target Soratha
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    #loop
    .goto 463,60.39,48.99,0
    .goto 463,60.39,48.99,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,55.47,53.38,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24751,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 463,59.69,52.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24751 >>Turn in The Basics: Hitting Things
    .accept 24753 >>Accept A Rough Start
    .target Soratha
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    #loop
    .goto 463,55.34,39.92,0
    .goto 463,55.34,39.92,40,0
    .goto 463,52.11,41.96,40,0
    .goto 463,49.77,39.67,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 24753,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 463,59.69,52.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24753 >>Turn in A Rough Start
    .accept 24754 >>Accept Proving Pit
    .target Soratha
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    #completewith Along55
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24754,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    #label Along55
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 24754,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 24754,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 463,59.69,52.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24754 >>Turn in Proving Pit
    .accept 24752 >>Accept The Arts of a Mage
    .target Soratha
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    #loop
    .goto 463,60.39,48.99,0
    .goto 463,60.39,48.99,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,55.47,53.38,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24752,1 --Tiki Target slain (3)
    .mob Tiki Target
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 463,59.69,52.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24752 >>Turn in The Arts of a Mage
    .accept 24755 >>Accept More Than Expected
    .target Soratha
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 24755 >>Turn in More Than Expected
    .target Vol'jin
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 31159 >>Accept The Rise of the Darkspear
    .target Jin'thala
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    .goto 463,52.57,51.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r
    .turnin 31159 >>Turn in The Rise of the Darkspear
    .accept 31158 >>Accept The Basics: Hitting Things
    .target Zabrax
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 31158,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    .goto 463,52.57,51.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r
    .turnin 31158 >>Turn in The Basics: Hitting Things
    .accept 31160 >>Accept A Rough Start
    .target Zabrax
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    #loop
    .goto 463,52.11,41.96,0
    .goto 463,52.11,41.96,40,0
    .goto 463,49.77,39.67,40,0
    .goto 463,55.34,39.92,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 31160,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    .goto 463,52.57,51.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r
    .turnin 31160 >>Turn in A Rough Start
    .accept 31161 >>Accept Proving Pit
    .target Zabrax
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    #completewith Along67
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 31161,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    #label Along67
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 31161,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 31161,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    .goto 463,52.57,51.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r
    .turnin 31161 >>Turn in Proving Pit
    .accept 31162 >>Accept The Arts of a Monk
    .target Zabrax
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    #loop
    .goto 463,52.97,49.26,0
    .goto 463,52.97,49.26,40,0
    .goto 463,50.24,48.75,40,0
    .goto 463,51.28,55.00,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 31162,1 --Tiki Target slain (8)
    .mob Tiki Target
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    .goto 463,52.57,51.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zabrax|r
    .turnin 31162 >>Turn in The Arts of a Monk
    .accept 31163 >>Accept More Than Expected
    .target Zabrax
step << Orc Monk/Undead Monk/Tauren Monk/Troll Monk/BloodElf Monk/Goblin Monk/Pandaren Monk
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 31163 >>Turn in More Than Expected
    .target Vol'jin
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 26272 >>Accept The Rise of the Darkspear
    .target Jin'thala
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 463,50.04,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26272 >>Turn in The Rise of the Darkspear
    .accept 26273 >>Accept The Basics: Hitting Things
    .target Voldreka
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 26273,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 463,50.04,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26273 >>Turn in The Basics: Hitting Things
    .accept 26275 >>Accept A Rough Start
    .target Voldreka
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    #loop
    .goto 463,52.11,41.96,0
    .goto 463,52.11,41.96,40,0
    .goto 463,49.77,39.67,40,0
    .goto 463,55.34,39.92,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 26275,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 463,50.04,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26275 >>Turn in A Rough Start
    .accept 26276 >>Accept Proving Pit
    .target Voldreka
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    #completewith Along79
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26276,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    #label Along79
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 26276,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 26276,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 463,50.04,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26276 >>Turn in Proving Pit
    .accept 26274 >>Accept The Arts of a Warlock
    .target Voldreka
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 26274,1 --Tiki Target slain (3)
    .mob Tiki Target
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 463,50.04,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26274 >>Turn in The Arts of a Warlock
    .accept 26277 >>Accept More Than Expected
    .target Voldreka
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 26277 >>Turn in More Than Expected
    .target Vol'jin
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 24758 >>Accept The Rise of the Darkspear
    .target Jin'thala
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 463,50.08,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24758 >>Turn in The Rise of the Darkspear
    .accept 24759 >>Accept The Basics: Hitting Things
    .target Nekali
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24759,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 463,50.08,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24759 >>Turn in The Basics: Hitting Things
    .accept 24761 >>Accept A Rough Start
    .target Nekali
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    #loop
    .goto 463,52.11,41.96,0
    .goto 463,52.11,41.96,40,0
    .goto 463,49.77,39.67,40,0
    .goto 463,55.34,39.92,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 24761,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 463,50.08,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24761 >>Turn in A Rough Start
    .accept 24762 >>Accept Proving Pit
    .target Nekali
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24762,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    #label Along91
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 24762,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 24762,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 463,50.08,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24762 >>Turn in Proving Pit
    .accept 24760 >>Accept The Arts of a Shaman
    .target Nekali
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24760,1 --Tiki Target slain (3)
    .mob Tiki Target
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 463,50.08,52.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24760 >>Turn in The Arts of a Shaman
    .accept 24763 >>Accept More Than Expected
    .target Nekali
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 24763 >>Turn in More Than Expected
    .target Vol'jin
step << Tauren Druid/Troll Druid
    .goto 463,42.83,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
    .accept 24764 >>Accept The Rise of the Darkspear
    .target Jin'thala
step
    .goto 463,58.06,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24764 >>Turn in The Rise of the Darkspear << Tauren Druid/Troll Druid
    .accept 24765 >>Accept The Basics: Hitting Things << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    .target Zen'tabra
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Targets|r
    .complete 24765,1 --Tiki Target slain (6)
    .mob Tiki Target
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    .goto 463,58.06,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24765 >>Turn in The Basics: Hitting Things
    .accept 24767 >>Accept A Rough Start
    .target Zen'tabra
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    #loop
    .goto 463,55.34,39.92,0
    .goto 463,55.34,39.92,40,0
    .goto 463,52.11,41.96,40,0
    .goto 463,49.77,39.67,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for |cRXP_LOOT_Wildmane Cat Pelt|r
    .complete 24767,1 --Wildmane Cat Pelt (6)
    .mob Wildmane Cat
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    .goto 463,58.06,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24767 >>Turn in A Rough Start
    .accept 24768 >>Accept Proving Pit
    .target Zen'tabra
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    #completewith Along103
    >>As you go: Kill |cRXP_ENEMY_Captive Spitescale Scout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24768,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    #label Along103
    .goto 463,57.49,52.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 24768,1 --Darkspear Jailor
    .target Darkspear Jailor
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    .goto 463,56.89,51.93
    >>Kill |cRXP_ENEMY_Captive Spitescale Scout|r
    .complete 24768,2 --Captive Spitescale Scout slain (1)
    .mob Captive Spitescale Scout
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    .goto 463,58.06,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24768 >>Turn in Proving Pit
    .accept 24766 >>Accept The Arts of a Druid
    .target Zen'tabra
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    #loop
    .goto 463,55.47,53.38,0
    .goto 463,55.47,53.38,40,0
    .goto 463,56.66,49.54,40,0
    .goto 463,60.39,48.99,40,0
    >>Kill |cRXP_ENEMY_Tiki Target|r
    .complete 24766,1 --Tiki Target slain (1)
    .mob Tiki Target
step << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    .goto 463,58.06,54.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24766 >>Turn in The Arts of a Druid
    .accept 24769 >>Accept More Than Expected
    .target Zen'tabra
step
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 24769 >>Turn in More Than Expected << Orc Druid/Undead Druid/Tauren Druid/Troll Druid/BloodElf Druid/Goblin Druid/Pandaren Druid
    .accept 25064 >>Accept Moraya << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .target Vol'jin
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,60.53,62.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora'jin|r
    .accept 25037 >>Accept Crab Fishin'
    .target Tora'jin
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,60.53,62.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora'jin|r
    .turnin 25037 >>Turn in Crab Fishin'
    .target Tora'jin
    .isQuestComplete 25037
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,56.82,63.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r
    .turnin 25064 >>Turn in Moraya
    .accept 24622 >>Accept A Troll's Truest Companion
    .target Moraya
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,45.58,85.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kijara|r
    .turnin 24622 >>Turn in A Troll's Truest Companion
    .accept 24623 >>Accept Saving the Young
    .target Kijara
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,45.73,85.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tegashi|r
    .accept 24625 >>Accept Consort of the Sea Witch
    .accept 24624 >>Accept Mercy for the Lost
    .target Tegashi
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    #loop
    .goto 463,34.13,71.92,0
    .goto 463,34.13,71.92,40,0
    .goto 463,35.10,67.50,40,0
    .goto 463,36.46,64.17,40,0
    >>Kill |cRXP_ENEMY_Naj'tess|r and loot |cRXP_LOOT_Naj'tess' Orb of Corruption|r
    >>Kill |cRXP_ENEMY_Corrupted Bloodtalons|r
    .complete 24625,1 --Naj'tess' Orb of Corruption (1)
    .complete 24624,1 --Corrupted Bloodtalon slain (8)
    .mob Naj'tess
    .mob Corrupted Bloodtalon
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    #loop
    .goto 463,36.27,68.31,0
    .goto 463,36.27,68.31,40,0
    .goto 463,38.55,66.04,40,0
    .goto 463,32.33,70.65,40,0
    >>Interact with |cRXP_FRIENDLY_Lost Bloodtalon Hatchlings|r
    .complete 24623,1 --Lost Bloodtalon Hatchling (12)
    .target Lost Bloodtalon Hatchling
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,45.73,85.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tegashi|r
    .turnin 24625 >>Turn in Consort of the Sea Witch
    .turnin 24624 >>Turn in Mercy for the Lost
    .target Tegashi
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,45.58,85.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kijara|r
    .turnin 24623 >>Turn in Saving the Young
    .accept 24626 >>Accept Young and Vicious
    .target Kijara
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,45.02,85.47
    >>Interact with |cRXP_FRIENDLY_Swiftclaw|r
    .complete 24626,1 --Swiftclaw
    .target Swiftclaw
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    #completewith next
    .hs >>Hearth to Gora'tin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,53.35,63.86
    >>Capture Swiftclaw and bring him back to the pens near Darkspear Hold.
    .complete 24626,2 --Swiftclaw
    .target Swiftclaw
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,56.82,63.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r
    .turnin 24626 >>Turn in Young and Vicious
    .target Moraya
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,58.96,66.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortunga|r
    .accept 25035 >>Accept Breaking the Line
    .target Tortunga
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,58.91,23.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r
    .turnin 25035 >>Turn in Breaking the Line
    .accept 24812 >>Accept No More Mercy
    .accept 24813 >>Accept Territorial Fetish
    .target Morakki
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    #loop
    .goto 463,60.56,37.20,0
    .goto 463,60.56,37.20,40,0
    .goto 463,62.98,39.02,40,0
    >>Kill |cRXP_ENEMY_Spitescale Sirens|r, |cRXP_ENEMY_Manifestation of the Sea Witches|r and |cRXP_ENEMY_Spitescale Wavethrashers|r
    .complete 24812,1 --Spitescale Siren (12)
    .mob Spitescale Siren
    .mob Manifestation of the Sea Witch
    .mob Spitescale Wavethrasher
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,58.91,23.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r
    .turnin 24812 >>Turn in No More Mercy
    .target Morakki
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,58.91,23.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r
    .turnin 24813 >>Turn in Territorial Fetish
    .target Morakki
    .isQuestComplete 24813
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,58.91,23.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r
    .accept 24814 >>Accept An Ancient Enemy
    .target Morakki
    .isQuestTurnedIn 24813 --Territorial Fetish
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,62.22,17.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .complete 24814,1 --Vol'jin
    .target Vol'jin
    .isOnQuest 24814
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,60.40,15.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zar'jira|r
    .complete 24814,2 --Zar'jira
    .target Zar'jira
    .isOnQuest 24814
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .turnin 24814 >>Turn in An Ancient Enemy
    .target Vol'jin
    .isOnQuest 24814
step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 463,61.57,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r
    .accept 25073 >>Accept Sen'jin Village
    .target Vol'jin
    .isQuestTurnedIn 24814 --any of: An Ancient Enemy
step
    +|cRXP_WARN_End of the Echo Isles route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Durotar|r: Sen'jin Village << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    >>|cRXP_FRIENDLY_Durotar and back here|r: Crab Fishin' << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    >>|cRXP_FRIENDLY_Spitescale Cavern and back here|r: Territorial Fetish << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
]])
