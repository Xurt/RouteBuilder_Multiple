-- 85-90 The Jade Forest: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 85, 88).
-- Split into 2 guides, listed under "85 - 89 The Jade Forest" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/The Jade Forest.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 85 - 89 The Jade Forest
#subweight -85
#name 85-86 The Jade Forest: around Master Stone Fist

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.77,10.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 29690 >>Turn in Into the Mists
    .target General Nazgrim
    .isQuestComplete 29690
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.77,10.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 31765 >>Accept Paint it Red!
    .target General Nazgrim
    .isQuestTurnedIn 29690 --any of: Into the Mists
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,32.94,11.19,0
    .goto 371,32.94,11.19,40,0
    .goto 371,33.03,7.11,40,0
    >>Kill |cRXP_ENEMY_Thunder Hold Cannons|r
    .complete 31765,1 --Thunder Hold Cannon slain (9)
    .mob Thunder Hold Cannon
    .isOnQuest 31765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,32.78,6.98,0
    .goto 371,32.78,6.98,40,0
    .goto 371,34.02,11.76,40,0
    >>Kill |cRXP_ENEMY_Thunder Hold Laborers|r and |cRXP_ENEMY_Thunder Hold Soldiers|r
    .complete 31765,2 --Thunder Hold Laborer (8)
    .mob Thunder Hold Laborer
    .mob Thunder Hold Soldier
    .isOnQuest 31765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.01,11.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .turnin 31765 >>Turn in Paint it Red!
    .target Rivett Clutchpop
    .isOnQuest 31765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.01,11.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .accept 31766 >>Accept Touching Ground
    .target Rivett Clutchpop
    .isQuestTurnedIn 31765 --any of: Paint it Red!
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.43,10.69
    >>Click the |cRXP_PICK_Rappelling Rope|r
    .complete 31766,1 --Rappelling Rope
    .isOnQuest 31766
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.68,11.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31766 >>Turn in Touching Ground
    .target General Nazgrim
    .isOnQuest 31766
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.68,11.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 31767 >>Accept Finish Them!
    .accept 31768 >>Accept Fire Is Always the Answer
    .target General Nazgrim
    .isQuestTurnedIn 31766 --any of: Touching Ground
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,33.60,13.40,0
    .goto 371,33.60,13.40,40,0
    .goto 371,34.49,13.01,40,0
    .goto 371,33.66,12.10,40,0
    .goto 371,34.99,11.61,40,0
    .goto 371,35.11,9.45,40,0
    .goto 371,33.68,9.69,40,0
    .goto 371,35.59,7.41,40,0
    .goto 371,34.45,7.32,40,0
    .goto 371,33.22,6.16,40,0
    .goto 371,32.14,5.96,40,0
    >>Interact with |cRXP_FRIENDLY_Thunder Hold Munitions|r
    .complete 31768,1 --Thunder Hold Munitions
    .target Thunder Hold Munitions
    .isOnQuest 31768
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,34.40,7.60,0
    .goto 371,34.40,7.60,40,0
    .goto 371,33.60,12.20,40,0
    >>Kill |cRXP_ENEMY_Thunder Hold Menders|r, |cRXP_ENEMY_Thunder Hold Lieutenants|r, |cRXP_ENEMY_Thunder Hold Sharp-Shooters|r and |cRXP_ENEMY_Thunder Hold Armsmans|r
    .complete 31767,1 --Thunder Hold Mender (8)
    .mob Thunder Hold Mender
    .mob Thunder Hold Lieutenant
    .mob Thunder Hold Sharp-Shooter
    .mob Thunder Hold Armsman
    .isOnQuest 31767
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,34.78,10.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31767 >>Turn in Finish Them!
    .target General Nazgrim
    .isOnQuest 31767
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,34.78,10.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31768 >>Turn in Fire Is Always the Answer
    .target General Nazgrim
    .isOnQuest 31768
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,34.78,10.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 31769 >>Accept The Final Blow!
    .target General Nazgrim
    .isQuestTurnedIn 31767 --Finish Them!
    .isQuestTurnedIn 31768 --Fire Is Always the Answer
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,33.97,9.96
    >>Slay Captain Doren in Thunder Hold.
    .complete 31769,1 --Alliance Barricade
    .target Alliance Barricade
    .isOnQuest 31769
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,34.72,9.95
    >>Slay Captain Doren in Thunder Hold.
    .complete 31769,2 --Alliance Barricade
    .target Alliance Barricade
    .isOnQuest 31769
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,34.93,10.63
    >>Slay Captain Doren in Thunder Hold.
    .complete 31769,3 --Alliance Barricade
    .target Alliance Barricade
    .isOnQuest 31769
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,33.60,10.60
    >>Slay Captain Doren in Thunder Hold.
    .complete 31769,4 --Captain Doren
    .target Captain Doren
    .isOnQuest 31769
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,33.65,10.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31769 >>Turn in The Final Blow!
    .target General Nazgrim
    .isOnQuest 31769
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,33.65,10.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 29694 >>Accept Regroup!
    .accept 31770 >>Accept You're Either With Us Or...
    .target General Nazgrim
    .isQuestTurnedIn 31769 --any of: The Final Blow!
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,33.71,10.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .accept 31771 >>Accept Face to Face With Consequence
    .target Taran Zhu
    .isQuestTurnedIn 31769 --any of: The Final Blow!
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,34.21,10.84,0
    .goto 371,34.21,10.84,40,0
    .goto 371,33.57,7.07,40,0
    >>Kill |cRXP_ENEMY_Sha Harbingers|r
    .complete 31771,2 --Sha Harbinger slain (7)
    .mob Sha Harbinger
    .isOnQuest 31771
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,34.08,10.29,0
    .goto 371,34.08,10.29,40,0
    .goto 371,33.32,6.67,40,0
    >>Kill |cRXP_ENEMY_Sha Haunts|r
    .complete 31771,1 --Sha Haunt slain (20)
    .mob Sha Haunt
    .isOnQuest 31771
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,32.06,13.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .complete 29694,1 --Shademaster Kiryn
    .target Shademaster Kiryn
    .isOnQuest 29694
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.53,7.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sue-Ji the Tender|r
    .accept 31773 >>Accept Prowler Problems
    .target Sue-Ji the Tender
    .isQuestTurnedIn 31769 --any of: The Final Blow!
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.58,11.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorrok|r
    .complete 29694,3 --Sergeant Gorrok
    .target Sergeant Gorrok
    .isOnQuest 29694
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.52,7.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .complete 29694,2 --Rivett Clutchpop
    .target Rivett Clutchpop
    .isOnQuest 29694
step
    .goto 371,30.40,7.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellie Honeypaw|r
    .accept 31772 >>Accept Priorities!
    .target Ellie Honeypaw
    .isQuestTurnedIn 31769 --any of: The Final Blow!
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.43,8.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
    .complete 29694,4 --Shokia
    .target Shokia
    .isOnQuest 29694
step
    #loop
    .goto 371,30.47,11.13,0
    .goto 371,30.47,11.13,40,0
    .goto 371,31.80,13.48,40,0
    >>Click the |cRXP_PICK_Barrel of Honeybrew|r
    .complete 31772,1 --Barrel of Honeybrew
    .isOnQuest 31772
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,31.12,11.63,0
    .goto 371,31.12,11.63,40,0
    .goto 371,31.26,14.20,40,0
    >>Kill |cRXP_ENEMY_Sha-Infested Prowlers|r
    .complete 31773,1 --Sha-Infested Prowler slain (10)
    .mob Sha-Infested Prowler
    .isOnQuest 31773
step
    .goto 371,29.38,13.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellie Honeypaw|r
    .turnin 31772 >>Turn in Priorities!
    .target Ellie Honeypaw
    .isOnQuest 31772
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.18,13.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Honeydew|r
    .complete 31770,1 --Mayor Honeydew
    .target Mayor Honeydew
    .isOnQuest 31770
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.18,13.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Honeydew|r
    .turnin 31770 >>Turn in You're Either With Us Or...
    .target Mayor Honeydew
    .isOnQuest 31770
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.13,13.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 31771 >>Turn in Face to Face With Consequence
    .target Taran Zhu
    .isOnQuest 31771
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.13,13.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
    .turnin 31773 >>Turn in Prowler Problems
    .target Taran Zhu
    .isOnQuest 31773
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.13,13.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorrok|r
    .turnin 29694 >>Turn in Regroup!
    .target Sergeant Gorrok
    .isOnQuest 29694
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.13,13.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorrok|r
    .accept 31774 >>Accept Seeking Zin'jun
    .target Sergeant Gorrok
    .isQuestTurnedIn 29694 --Regroup!
    .isQuestTurnedIn 31770 --You're Either With Us Or...
    .isQuestTurnedIn 31771 --Face to Face With Consequence
    .isQuestTurnedIn 31773 --Prowler Problems
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.14,17.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zin'Jun|r
    .turnin 31774 >>Turn in Seeking Zin'jun
    .target Zin'Jun
    .isOnQuest 31774
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.14,17.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zin'Jun|r
    .accept 29765 >>Accept Cryin' My Eyes Out
    .target Zin'Jun
    .isQuestTurnedIn 31774 --any of: Seeking Zin'jun
    .xp <85,1
step
    .goto 371,30.89,17.52
    >>Click the |cRXP_PICK_Ancient Statue|r
    .accept 29743 >>Accept Monstrosity
    .isQuestTurnedIn 31774 --any of: Seeking Zin'jun
    .xp <85,1
step
    .goto 371,29.20,19.09
    >>Click the |cRXP_PICK_Ancient Statue Torso|r
    .complete 29743,1 --Ancient Statue Torso
    .isOnQuest 29743
step
    .goto 371,28.48,22.13
    >>Click the |cRXP_PICK_Ancient Statue Shoulder|r
    .complete 29743,3 --Ancient Statue Shoulder
    .isOnQuest 29743
step
    .goto 371,29.97,22.48
    >>Click the |cRXP_PICK_Ancient Statue Head|r
    .complete 29743,4 --Ancient Statue Head
    .isOnQuest 29743
step
    .goto 371,30.12,21.39
    >>Click the |cRXP_PICK_Ancient Statue Arm|r
    .complete 29743,2 --Ancient Statue Arm
    .isOnQuest 29743
step
    .goto 371,29.38,21.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 29743 >>Turn in Monstrosity
    .target ?
    .isOnQuest 29743
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,29.77,20.96,0
    .goto 371,29.77,20.96,40,0
    .goto 371,28.47,18.63,40,0
    >>Kill |cRXP_ENEMY_Hozen Groundpounder|r and loot |cRXP_LOOT_Zin'Jun's Rifle|r
    .complete 29765,1 --Zin'Jun's Rifle (1)
    .mob Hozen Groundpounder
    .isOnQuest 29765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,28.47,18.63,0
    .goto 371,28.47,18.63,40,0
    .goto 371,29.77,20.96,40,0
    >>Kill |cRXP_ENEMY_Hozen Groundpounder|r and loot |cRXP_LOOT_Zin'Jun's Left Eye|r
    .complete 29765,2 --Zin'Jun's Left Eye (1)
    .mob Hozen Groundpounder
    .isOnQuest 29765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,28.47,18.63,0
    .goto 371,28.47,18.63,40,0
    .goto 371,29.77,20.96,40,0
    >>Kill |cRXP_ENEMY_Hozen Groundpounder|r and loot |cRXP_LOOT_Zin'Jun's Right Eye|r
    .complete 29765,3 --Zin'Jun's Right Eye (1)
    .mob Hozen Groundpounder
    .isOnQuest 29765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,28.47,18.63,0
    .goto 371,28.47,18.63,40,0
    .goto 371,29.77,20.96,40,0
    >>Kill |cRXP_ENEMY_Hozen Groundpounder|r and loot |cRXP_LOOT_Snuff's Corpse|r
    .complete 29765,4 --Snuff's Corpse (1)
    .mob Hozen Groundpounder
    .isOnQuest 29765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.14,17.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zin'Jun|r
    .turnin 29765 >>Turn in Cryin' My Eyes Out
    .target Zin'Jun
    .isOnQuest 29765
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.14,17.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zin'Jun|r
    .accept 29804 >>Accept Seein' Red
    .target Zin'Jun
    .isQuestTurnedIn 29765 --any of: Cryin' My Eyes Out
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.97,22.26
    >>Kill |cRXP_ENEMY_Konk|r
    .complete 29804,1 --Konk slain (1)
    .mob Konk
    .isOnQuest 29804
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.66,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 29804 >>Turn in Seein' Red
    .target General Nazgrim
    .isOnQuest 29804
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.66,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 31775 >>Accept Assault on the Airstrip
    .accept 31776 >>Accept Strongarm Tactics
    .target General Nazgrim
    .isQuestTurnedIn 29804 --any of: Seein' Red
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.40,21.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Zin|r
    .accept 31778 >>Accept Unreliable Allies
    .target Merchant Zin
    .isQuestTurnedIn 29804 --any of: Seein' Red
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.11,24.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 31777 >>Accept Choppertunity
    .unitscan Rivett Clutchpop
    .isQuestTurnedIn 29804 --any of: Seein' Red
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.36,24.27
    >>Kill |cRXP_ENEMY_Master Engineer Cogswing|r and |cRXP_ENEMY_Gyro-Mechanic Lavenderp|r
    .complete 31776,1 --Master Engineer Cogswing (1)
    .mob Master Engineer Cogswing
    .mob Gyro-Mechanic Lavenderp
    .isOnQuest 31776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.34,24.26
    >>Kill |cRXP_ENEMY_Gyro-Mechanic Lavenderp|r
    .complete 31776,2 --Gyro-Mechanic Lavenderp (1)
    .mob Gyro-Mechanic Lavenderp
    .isOnQuest 31776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,30.80,24.40,0
    .goto 371,30.80,24.40,40,0
    .goto 371,28.50,23.90,40,0
    >>Pick up |cRXP_PICK_Requisitioned Firework Launcher|r from the ground
    .collect 89163,1,31777,1 --Requisitioned Firework Launcher (1)
    .isOnQuest 31777
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.40,23.00
    >>Kill |cRXP_ENEMY_Morgus Grimhatchet|r
    .complete 31776,3 --Morgus Grimhatchet (1)
    .mob Morgus Grimhatchet
    .isOnQuest 31776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.80,23.00
    >>Kill |cRXP_ENEMY_Corporal Jackson Silver|r
    .complete 31776,4 --Corporal Jackson Silver (1)
    .mob Corporal Jackson Silver
    .isOnQuest 31776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.40,24.40
    >>Kill |cRXP_ENEMY_Strongarm Gyrocopters|r
    .complete 31777,1 --Strongarm Gyrocopter slain (12)
    .mob Strongarm Gyrocopter
    .isOnQuest 31777
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,27.89,24.23,0
    .goto 371,27.89,24.23,40,0
    .goto 371,29.60,23.20,40,0
    >>Kill |cRXP_ENEMY_Strongarm Airmans|r, |cRXP_ENEMY_Strongarm Medics|r, |cRXP_ENEMY_Strongarm Lieutenants|r and |cRXP_ENEMY_Strongarm Aces|r
    .complete 31775,1 --Strongarm Airman (8)
    .mob Strongarm Airman
    .mob Strongarm Medic
    .mob Strongarm Lieutenant
    .mob Strongarm Ace
    .isOnQuest 31775
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,28.40,23.80,0
    .goto 371,28.40,23.80,40,0
    .goto 371,29.60,23.20,40,0
    >>Kill |cRXP_ENEMY_Pandaren Volunteers|r
    .complete 31778,1 --Pandaren Volunteer (12)
    .mob Pandaren Volunteer
    .isOnQuest 31778
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.11,24.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31777 >>Turn in Choppertunity
    .unitscan Rivett Clutchpop
    .isOnQuest 31777
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.40,21.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Zin|r
    .turnin 31778 >>Turn in Unreliable Allies
    .target Merchant Zin
    .isOnQuest 31778
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.66,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31775 >>Turn in Assault on the Airstrip
    .target General Nazgrim
    .isOnQuest 31775
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.66,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31776 >>Turn in Strongarm Tactics
    .target General Nazgrim
    .isOnQuest 31776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,31.66,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 31779 >>Accept The Darkness Within
    .target General Nazgrim
    .isQuestTurnedIn 31775 --Assault on the Airstrip
    .isQuestTurnedIn 31776 --Strongarm Tactics
    .isQuestTurnedIn 31777 --Choppertunity
    .isQuestTurnedIn 31778 --Unreliable Allies
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,25.80,23.80
    >>Kill |cRXP_ENEMY_Captain Doren|r
    .complete 31779,1 --Captain Doren slain (1)
    .mob Captain Doren
    .isOnQuest 31779
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.57,24.27
    >>Click the |cRXP_PICK_Flagpole|r
    .turnin 31779 >>Turn in The Darkness Within
    .isOnQuest 31779
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.57,24.27
    >>Click the |cRXP_PICK_Flagpole|r
    .accept 31999 >>Accept Nazgrim's Command
    .isQuestTurnedIn 31779 --any of: The Darkness Within
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.42,24.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 31999 >>Turn in Nazgrim's Command
    .target General Nazgrim
    .isOnQuest 31999
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.19,24.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .accept 29815 >>Accept Forensic Science
    .target Shademaster Kiryn
    .isQuestTurnedIn 31999 --any of: Nazgrim's Command
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.11,24.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 29821 >>Accept Missed Me By... That Much!
    .unitscan Rivett Clutchpop
    .isQuestTurnedIn 31999 --any of: Nazgrim's Command
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,22.90,30.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Empty Package|r
    .turnin 29821 >>Turn in Missed Me By... That Much!
    .target Empty Package
    .isOnQuest 29821
step
    .goto 371,22.90,30.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Empty Package|r
    .accept 31112 >>Accept They're So Thorny!
    .target Empty Package
    .isQuestTurnedIn 29821 --any of: Missed Me By... That Much!
    .xp <85,1
step
    #loop
    .goto 371,24.63,27.61,0
    .goto 371,24.63,27.61,40,0
    .goto 371,25.82,25.84,40,0
    >>Kill |cRXP_ENEMY_Water Sprites|r. Loot them for |cRXP_LOOT_Emergency Supplies|r
    .complete 31112,1 --Emergency Supplies (5)
    .mob Water Sprite
    .isOnQuest 31112
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,26.45,26.19,0
    .goto 371,26.45,26.19,40,0
    .goto 371,24.80,26.55,40,0
    >>Kill |cRXP_ENEMY_Lurching Blossoms|r. Loot them for |cRXP_LOOT_Viscous Chlorophyll|r
    .complete 29815,1 --Viscous Chlorophyll (8)
    .mob Lurching Blossom
    .isOnQuest 29815
step
    .goto 371,28.11,24.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 31112 >>Turn in They're So Thorny!
    .unitscan Rivett Clutchpop
    .isOnQuest 31112
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.19,24.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .turnin 29815 >>Turn in Forensic Science
    .target Shademaster Kiryn
    .isOnQuest 29815
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.19,24.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .accept 29827 >>Accept Acid Rain
    .target Shademaster Kiryn
    .isQuestTurnedIn 29815 --any of: Forensic Science
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.80,26.40
    >>Kill |cRXP_ENEMY_Hozen Gutrippers|r
    .complete 29827,1 --Hozen Gutripper slain (25)
    .mob Hozen Gutripper
    .isOnQuest 29827
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.60,26.40
    >>Kill |cRXP_ENEMY_Hozen Nibstabbers|r
    .complete 29827,2 --Hozen Nibstabber slain (25)
    .mob Hozen Nibstabber
    .isOnQuest 29827
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.19,24.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .turnin 29827 >>Turn in Acid Rain
    .target Shademaster Kiryn
    .isOnQuest 29827
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.42,24.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 29822 >>Accept Lay of the Land
    .target General Nazgrim
    .isQuestTurnedIn 29827 --any of: Acid Rain
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,32.03,27.95
    >>Visit the Shrine of the Sun, the Shrine of the Moon, and Kill Dook Ookem.
    .complete 29822,1 --Quest - Jade Forest (Lay of the Land Kill Credit 01) - JSB
    .target Quest - Jade Forest (Lay of the Land Kill Credit 01) - JSB
    .isOnQuest 29822
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.81,30.31
    >>Kill |cRXP_ENEMY_Yoggtord|r and |cRXP_ENEMY_Dook Ookem|r
    .complete 29822,3 --Yoggtord (1)
    .mob Yoggtord
    .mob Dook Ookem
    .isOnQuest 29822
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,26.19,32.32
    >>Visit the Shrine of the Sun, the Shrine of the Moon, and Kill Dook Ookem.
    .complete 29822,2 --Quest - Jade Forest (Lay of the Land Kill Credit 02) - JSB
    .target Quest - Jade Forest (Lay of the Land Kill Credit 02) - JSB
    .isOnQuest 29822
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.59,32.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 29822 >>Turn in Lay of the Land
    .target Lorewalker Cho
    .isOnQuest 29822
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.59,32.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31121 >>Accept Stay a While, and Listen
    .target Lorewalker Cho
    .isQuestTurnedIn 29822 --any of: Lay of the Land
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.68,32.56
    >>Click the |cRXP_PICK_Cho's Teapot|r
    .complete 31121,1 --Cho's Teapot
    .isOnQuest 31121
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.59,32.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31121 >>Turn in Stay a While, and Listen
    .target Lorewalker Cho
    .isOnQuest 31121
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.59,32.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31132 >>Accept A Mile in My Shoes
    .target Lorewalker Cho
    .isQuestTurnedIn 31121 --any of: Stay a While, and Listen
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.84,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31132 >>Turn in A Mile in My Shoes
    .target Lorewalker Cho
    .isOnQuest 31132
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.84,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31134 >>Accept If These Stones Could Speak
    .target Lorewalker Cho
    .isQuestTurnedIn 31132 --any of: A Mile in My Shoes
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.89,33.67
    >>Click the |cRXP_PICK_Stone Monolith|r
    .complete 31134,1 --Stone Monolith
    .isOnQuest 31134
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.63,33.76
    >>Click the |cRXP_PICK_Stone Monolith|r
    .complete 31134,2 --Stone Monolith
    .isOnQuest 31134
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.57,34.16
    >>Click the |cRXP_PICK_Stone Monolith|r
    .complete 31134,3 --Stone Monolith
    .isOnQuest 31134
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.84,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31134 >>Turn in If These Stones Could Speak
    .target Lorewalker Cho
    .isOnQuest 31134
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.84,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31152 >>Accept Peering Into the Past
    .target Lorewalker Cho
    .isQuestTurnedIn 31134 --any of: If These Stones Could Speak
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.00,32.40
    >>Lorewalker Cho escorted to Circle of Stone
    .complete 31152,1 --Lorewalker Cho escorted to Circle of Stone
    .isOnQuest 31152
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.82,32.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31152 >>Turn in Peering Into the Past
    .target Lorewalker Cho
    .isOnQuest 31152
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.82,32.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31167 >>Accept Family Tree
    .target Lorewalker Cho
    .isQuestTurnedIn 31152 --any of: Peering Into the Past
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.78,32.48
    >>Click the |cRXP_PICK_Incense Bundle|r
    .complete 31167,1 --Incense Bundle
    .isOnQuest 31167
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.82,32.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31167 >>Turn in Family Tree
    .target Lorewalker Cho
    .isOnQuest 31167
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.82,32.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 29879 >>Accept Swallowed Whole
    .target Lorewalker Cho
    .isQuestTurnedIn 31167 --any of: Family Tree
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,23.00,35.80
    >>Kill |cRXP_ENEMY_Speckled Trouts|r. Loot them for |cRXP_LOOT_Speckled Trout|r
    .complete 29879,2 --Speckled Trout (5)
    .mob Speckled Trout
    .isOnQuest 29879
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,24.40,36.20,0
    .goto 371,24.40,36.20,40,0
    .goto 371,22.80,33.40,40,0
    >>Kill |cRXP_ENEMY_Engorged Crocolisks|r
    .complete 29879,1 --Engorged Crocolisk slain (8)
    .mob Engorged Crocolisk
    .isOnQuest 29879
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,26.29,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooki Tooki|r
    .turnin 29879 >>Turn in Swallowed Whole
    .target Tooki Tooki
    .isOnQuest 29879
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,26.29,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooki Tooki|r
    .accept 29935 >>Accept Orders are Orders
    .target Tooki Tooki
    .isQuestTurnedIn 29879 --any of: Swallowed Whole
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,25.88,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bo Bo|r
    .accept 29933 >>Accept The Bees' Knees
    .target Bo Bo
    .isQuestTurnedIn 31167 --any of: Family Tree
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,25.96,38.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nibi Nibi|r
    .accept 29924 >>Accept Kill Kher Shan
    .target Nibi Nibi
    .isQuestTurnedIn 31167 --any of: Family Tree
    .xp <85,1
step
    .goto 371,28.19,38.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeek Jeek|r
    .accept 31241 >>Accept Wicked Wikkets
    .target Jeek Jeek
    .isQuestTurnedIn 29879 --any of: Swallowed Whole
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,30.82,41.28
    >>Kill |cRXP_ENEMY_Jack Arrow|r and loot |cRXP_LOOT_Captain Jack's Head|r. Use it to start the quest
    .collect 85783,1,31261 --Captain Jack's Head (1)
    .accept 31261 >>Accept Captain Jack's Dead
    .use 85783
    .mob Jack Arrow
step
    #loop
    .goto 371,30.69,41.41,0
    .goto 371,30.69,41.41,40,0
    .goto 371,32.58,40.47,40,0
    >>Kill |cRXP_ENEMY_Battleworn Paratroopers|r. Loot them for |cRXP_LOOT_Alliance Service Medallion|r
    .complete 31241,1 --Alliance Service Medallion (6)
    .mob Battleworn Paratrooper
    .isOnQuest 31241
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,33.32,41.95
    >>Kill |cRXP_ENEMY_Kher Shan|r
    .complete 29924,1 --Kher Shan slain (1)
    .mob Kher Shan
    .isOnQuest 29924
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,33.37,41.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 29924 >>Turn in Kill Kher Shan
    .target ?
    .isOnQuest 29924
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,32.29,45.42,0
    .goto 371,32.29,45.42,40,0
    .goto 371,29.05,44.09,40,0
    >>Kill |cRXP_ENEMY_Tigerflies|r. Loot them for |cRXP_LOOT_Bug Leg|r
    .complete 29933,1 --Bug Leg (30)
    .mob Tigerfly
    .isOnQuest 29933
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .turnin 29935 >>Turn in Orders are Orders
    .target Chief Kah Kah
    .isOnQuest 29935
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .turnin 31261 >>Turn in Captain Jack's Dead
    .target Chief Kah Kah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .turnin 29933 >>Turn in The Bees' Knees
    .target Chief Kah Kah
    .isOnQuest 29933
step
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .turnin 31241 >>Turn in Wicked Wikkets
    .target Chief Kah Kah
    .isOnQuest 31241
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .accept 29936 >>Accept Instant Messaging
    .target Chief Kah Kah
    .isQuestTurnedIn 29935 --any of: Orders are Orders
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.98,46.79
    >>Kill |cRXP_ENEMY_Signal Flare|r
    .complete 29936,1 --Signal Flare slain (1)
    .mob Signal Flare
    .isOnQuest 29936
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.26,47.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 29936 >>Turn in Instant Messaging
    .target General Nazgrim
    .isOnQuest 29936
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.26,47.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 29941 >>Accept Beyond the Horizon
    .target General Nazgrim
    .isQuestTurnedIn 29936 --any of: Instant Messaging
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.35,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
    .complete 29941,1 --Shokia
    .target Shokia
    .isOnQuest 29941
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .complete 29941,4 --Chief Kah Kah
    .target Chief Kah Kah
    .isOnQuest 29941
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.10,48.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .complete 29941,3 --Shademaster Kiryn
    .target Shademaster Kiryn
    .isOnQuest 29941
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.57,50.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorrok|r
    .complete 29941,2 --Sergeant Gorrok
    .target Sergeant Gorrok
    .isOnQuest 29941
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.26,47.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 29941 >>Turn in Beyond the Horizon
    .target General Nazgrim
    .isOnQuest 29941
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .accept 29937 >>Accept Furious Fowl
    .target Rivett Clutchpop
    .isQuestTurnedIn 29941 --any of: Beyond the Horizon
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .accept 31239 >>Accept What's in a Name Name?
    .target Chief Kah Kah
    .isQuestTurnedIn 29941 --any of: Beyond the Horizon
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,29.05,46.27,0
    .goto 371,29.05,46.27,40,0
    .goto 371,33.31,45.43,40,0
    >>Kill |cRXP_ENEMY_Riverstride Jinyus|r
    .complete 31239,1 --Riverstride Jinyu slain (7)
    .mob Riverstride Jinyu
    .isOnQuest 31239
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,29.90,51.59,0
    .goto 371,29.90,51.59,40,0
    .goto 371,31.53,53.79,40,0
    .goto 371,27.64,52.33,40,0
    >>Kill |cRXP_ENEMY_Hungry Bloodtalon|r and loot |cRXP_LOOT_Fistful of Bird Guts|r
    .complete 29937,1 --Fistful of Bird Guts (1)
    .mob Hungry Bloodtalon
    .isOnQuest 29937
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .turnin 29937 >>Turn in Furious Fowl
    .target Rivett Clutchpop
    .isOnQuest 29937
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .accept 29939 >>Accept Boom Bait
    .target Rivett Clutchpop
    .isQuestTurnedIn 29937 --any of: Furious Fowl
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.03,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eekle Eekle|r
    .accept 29942 >>Accept Silly Wikket, Slickies are for Hozen
    .target Eekle Eekle
    .isQuestTurnedIn 29937 --Furious Fowl
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,26.52,55.65
    >>Loot the |cRXP_PICK_Dead Deepriver Slickies|r for |cRXP_LOOT_Exploded Slicky|r
    .complete 29939,1 --Exploded Slicky (5)
    .isOnQuest 29939
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,26.84,55.64
    >>Kill |cRXP_ENEMY_Muck Snappers|r. Loot them for |cRXP_LOOT_Snapper Steak|r
    .complete 29942,1 --Snapper Steak (4)
    .mob Muck Snapper
    .isOnQuest 29942
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.03,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eekle Eekle|r
    .turnin 29942 >>Turn in Silly Wikket, Slickies are for Hozen
    .target Eekle Eekle
    .isOnQuest 29942
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .turnin 29939 >>Turn in Boom Bait
    .target Rivett Clutchpop
    .isOnQuest 29939
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.99,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
    .turnin 31239 >>Turn in What's in a Name Name?
    .target Chief Kah Kah
    .isOnQuest 31239
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .accept 29971 >>Accept The Scouts Return
    .target Rivett Clutchpop
    .isQuestTurnedIn 29939 --Boom Bait
    .isQuestTurnedIn 29942 --Silly Wikket, Slickies are for Hozen
    .isQuestTurnedIn 31239 --What's in a Name Name?
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.64,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
    .turnin 29971 >>Turn in The Scouts Return
    .target Shokia
    .isOnQuest 29971
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.60,47.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
    .accept 29730 >>Accept Scouting Report: Hostile Natives
    .target Riko
    .isQuestTurnedIn 29971 --any of: The Scouts Return
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,38.93,46.00
    >>Listen to Riko's report.
    .complete 29730,1 --Lifelike Jade Statue
    .target Lifelike Jade Statue
    .isOnQuest 29730
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,39.24,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Widow Greenpaw|r
    .complete 29730,2 --Widow Greenpaw
    .target Widow Greenpaw
    .isOnQuest 29730
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,38.30,45.40
    >>Click the |cRXP_PICK_STAY OUT - NO VISITORS|r
    .complete 29730,3 --STAY OUT - NO VISITORS
    .isOnQuest 29730
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.60,47.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
    .turnin 29730 >>Turn in Scouting Report: Hostile Natives
    .target Riko
    .isOnQuest 29730
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.65,47.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .accept 29731 >>Accept Scouting Report: On the Right Track
    .target Shademaster Kiryn
    .isQuestTurnedIn 29730 --any of: Scouting Report: Hostile Natives
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,48.60,60.00
    >>Listen to Kiryn's report.
    .complete 29731,1 --Young Alliance Soldier
    .target Young Alliance Soldier
    .isOnQuest 29731
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.65,47.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
    .turnin 29731 >>Turn in Scouting Report: On the Right Track
    .target Shademaster Kiryn
    .isOnQuest 29731
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.60,47.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
    .accept 29823 >>Accept Scouting Report: The Friend of My Enemy
    .target Riko
    .isQuestTurnedIn 29731 --any of: Scouting Report: On the Right Track
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,49.76,70.56
    >>Kill |cRXP_ENEMY_Alliance Scout|r
    .complete 29823,1 --Alliance Scout slain (1)
    .mob Alliance Scout
    .isOnQuest 29823
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.60,47.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
    .turnin 29823 >>Turn in Scouting Report: The Friend of My Enemy
    .target Riko
    .isOnQuest 29823
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.64,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
    .accept 29824 >>Accept Scouting Report: Like Jinyu in a Barrel
    .target Shokia
    .isQuestTurnedIn 29823 --any of: Scouting Report: The Friend of My Enemy
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.64,47.37
    >>Listen to Shokia's report.
    .complete 29824,1 --Shademaster Kiryn
    .isOnQuest 29824
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.64,47.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
    .turnin 29824 >>Turn in Scouting Report: Like Jinyu in a Barrel
    .target Shokia
    .isOnQuest 29824
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.26,47.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 29943 >>Accept Guerrillas in our Midst
    .target General Nazgrim
    .isQuestTurnedIn 29824 --any of: Scouting Report: Like Jinyu in a Barrel
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .accept 29968 >>Accept Green-ish Energy
    .target Rivett Clutchpop
    .isQuestTurnedIn 29824 --any of: Scouting Report: Like Jinyu in a Barrel
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,29.94,49.99,0
    .goto 371,29.94,49.99,40,0
    .goto 371,30.26,53.90,40,0
    >>Pick up |cRXP_PICK_Green Branch|r from the ground
    .complete 29968,1 --Green Branch (7)
    .isOnQuest 29968
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 371,31.00,52.80,0
    .goto 371,31.00,52.80,40,0
    .goto 371,29.40,52.40,40,0
    >>Kill |cRXP_ENEMY_Alliance Infiltrators|r
    .complete 29943,1 --Alliance Infiltrator slain (8)
    .mob Alliance Infiltrator
    .isOnQuest 29943
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.26,47.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 29943 >>Turn in Guerrillas in our Midst
    .target General Nazgrim
    .isOnQuest 29943
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.26,47.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 29966 >>Accept Burning Down the House
    .target General Nazgrim
    .isQuestTurnedIn 29943 --any of: Guerrillas in our Midst
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.40,54.25
    >>Click the |cRXP_PICK_Campfire|r
    .complete 29966,1 --Campfire
    .isOnQuest 29966
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .turnin 29968 >>Turn in Green-ish Energy
    .target Rivett Clutchpop
    .isOnQuest 29968
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .accept 29967 >>Accept Boom Goes the Doonamite!
    .target Rivett Clutchpop
    .isQuestTurnedIn 29968 --any of: Green-ish Energy
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.30,47.79
    >>Speak to Rivett east of Grookin Hill. Use his Methane Grenades to fend off the Jinyu attack.
    .complete 29967,1 --Jinyu Tactician (1)
    .isOnQuest 29967
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.98,49.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .turnin 29967 >>Turn in Boom Goes the Doonamite!
    .target Rivett Clutchpop
    .isOnQuest 29967
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.26,47.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 29966 >>Turn in Burning Down the House
    .target General Nazgrim
    .isOnQuest 29966
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.26,47.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 30015 >>Accept Dawn's Blossom
    .target General Nazgrim
    .isQuestTurnedIn 29967 --any of: Boom Goes the Doonamite!
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,46.82,46.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30015 >>Turn in Dawn's Blossom
    .target Lorewalker Cho
    .isOnQuest 30015
step << Horde
    .goto 371,47.047,46.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keg Runner Lee|r
    .fp Dawn's Blossom >> Get the Dawn's Blossom flight path
    .target Keg Runner Lee
    .subzoneskip 5930,1
step
    .goto 371,47.16,46.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
    .accept 31230 >>Accept Welcome to Dawn's Blossom
    .target Toya
    .isQuestTurnedIn 29922,30015 --any of: In Search of Wisdom, Dawn's Blossom
    .xp <85,1
step
    .goto 371,48.32,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Misteye|r
    .accept 29576 >>Accept An Air of Worry
    .target Old Man Misteye
    .xp <85,1
step
    .goto 371,47.14,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai Wanderbrew|r
    .complete 31230,3 --Kai Wanderbrew
    .target Kai Wanderbrew
    .isOnQuest 31230
step
    .goto 371,48.49,44.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Windfur|r
    .complete 31230,1 --Master Windfur
    .target Master Windfur
    .isOnQuest 31230
step
    .goto 371,45.72,43.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peiji Goldendraft|r
    .complete 31230,2 --Peiji Goldendraft
    .target Peiji Goldendraft
    .isOnQuest 31230
step
    .goto 371,37.49,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Blanche|r
    .target Brewmaster Blanche
    .home >>Set your Hearthstone to Brewmaster Blanche's inn
step
    .goto 371,47.16,46.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
    .turnin 31230 >>Turn in Welcome to Dawn's Blossom
    .target Toya
    .isOnQuest 31230
step
    .goto 371,46.65,46.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .accept 29716 >>Accept The Double Hozen Dare
    .target An Windfur
    .isQuestTurnedIn 31230 --any of: Welcome to Dawn's Blossom
    .xp <85,1
step
    .goto 371,46.46,45.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzu the Ironbelly|r
    .accept 29865 >>Accept The Silkwood Road
    .target Tzu the Ironbelly
    .isQuestTurnedIn 31230 --any of: Welcome to Dawn's Blossom
    .xp <85,1
step
    .goto 371,46.63,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
    .accept 29866 >>Accept The Threads that Stick
    .target Lo Wanderbrew
    .isQuestTurnedIn 31230 --any of: Welcome to Dawn's Blossom
    .xp <85,1
step
    .goto 371,48.32,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Misteye|r
    .accept 29576 >>Accept An Air of Worry
    .target Old Man Misteye
    .xp <85,1
step
    #loop
    .goto 371,44.90,48.08,0
    .goto 371,44.90,48.08,40,0
    .goto 371,43.34,48.88,40,0
    >>Loot the |cRXP_PICK_Silk Patches|r for |cRXP_LOOT_Pristine Silk Strand|r
    .complete 29866,1 --Pristine Silk Strand (7)
    .isOnQuest 29866
step
    #loop
    .goto 371,44.00,49.20,0
    .goto 371,44.00,49.20,40,0
    .goto 371,42.20,50.00,40,0
    >>Kill |cRXP_ENEMY_Silkwood Stalkers|r
    .complete 29865,1 --Silkwood Stalker slain (8)
    .mob Silkwood Stalker
    .isOnQuest 29865
step
    .goto 371,39.47,47.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .accept 29717 >>Accept Down Kitty!
    .target An Windfur
    .isQuestTurnedIn 31230 --any of: Welcome to Dawn's Blossom
    .xp <85,1
step
    #loop
    .goto 371,37.34,44.65,0
    .goto 371,37.34,44.65,40,0
    .goto 371,38.15,43.34,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scared Pandaren Cub|r
    .complete 29716,1 --Scared Pandaren Cub (6)
    .target Scared Pandaren Cub
    .isOnQuest 29716
step
    #loop
    .goto 371,38.19,43.27,0
    .goto 371,38.19,43.27,40,0
    .goto 371,36.61,44.63,40,0
    >>Kill |cRXP_ENEMY_Jade Guardians|r
    .complete 29717,1 --Jade Guardian slain (8)
    .mob Jade Guardian
    .isOnQuest 29717
step
    .goto 371,46.65,46.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .turnin 29716 >>Turn in The Double Hozen Dare
    .target An Windfur
    .isOnQuest 29716
step
    .goto 371,46.65,46.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .turnin 29717 >>Turn in Down Kitty!
    .target An Windfur
    .isOnQuest 29717
step
    .goto 371,46.65,46.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .accept 29723 >>Accept The Jade Witch
    .target An Windfur
    .isQuestTurnedIn 29716 --any of: The Double Hozen Dare
    .xp <85,1
step
    .goto 371,48.32,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Misteye|r
    .accept 29576 >>Accept An Air of Worry
    .target Old Man Misteye
    .xp <85,1
step
    .goto 371,39.34,46.22
    >>Kill |cRXP_ENEMY_Widow Greenpaw|r
    .complete 29723,1 --Widow Greenpaw slain (1)
    .mob Widow Greenpaw
    .isOnQuest 29723
step
    .goto 371,47.77,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
    .turnin 29723 >>Turn in The Jade Witch
    .target An Windfur
    .isOnQuest 29723
step
    .goto 371,46.63,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
    .turnin 29866 >>Turn in The Threads that Stick
    .target Lo Wanderbrew
    .isOnQuest 29866
step
    .goto 371,46.46,45.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzu the Ironbelly|r
    .turnin 29865 >>Turn in The Silkwood Road
    .target Tzu the Ironbelly
    .isOnQuest 29865
step
    .goto 371,47.14,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai Wanderbrew|r
    .accept 29993 >>Accept Find the Boy
    .target Kai Wanderbrew
    .isQuestTurnedIn 29866 --any of: The Threads that Stick
    .xp <85,1
step
    .goto 371,47.16,46.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
    .accept 29925 >>Accept All We Can Spare
    .target Toya
    .isQuestTurnedIn 29723 --any of: The Jade Witch
    .xp <85,1
step
    .goto 371,49.65,45.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Yufi|r
    .accept 29617 >>Accept Tian Monastery
    .target Apprentice Yufi
step
    .goto 371,48.32,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Misteye|r
    .accept 29576 >>Accept An Air of Worry
    .target Old Man Misteye
    .xp <85,1
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
    .turnin 29617 >>Turn in Tian Monastery
    .target Lin Tenderpaw
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
    .accept 29618 >>Accept The High Elder
    .target Lin Tenderpaw
    .xp <85,1
step
    .goto 371,50.91,27.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 29925 >>Turn in All We Can Spare
    .target Lorewalker Cho
    .isOnQuest 29925
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .accept 29928 >>Accept I Have No Jade And I Must Scream
    .target Foreman Mann
    .isQuestTurnedIn 29925 --any of: All We Can Spare
    .xp <85,1
step
    .goto 371,48.23,31.50
    >>Kill |cRXP_ENEMY_Puckish Sprites|r. Loot them for |cRXP_LOOT_Chunk of Jade|r. It can also be picked up from |cRXP_PICK_Chunk of Jade|r on the ground
    .complete 29928,1 --Chunk of Jade (15)
    .mob Puckish Sprite
    .isOnQuest 29928
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .turnin 29928 >>Turn in I Have No Jade And I Must Scream
    .target Foreman Mann
    .isOnQuest 29928
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .accept 29926 >>Accept Calamity Jade
    .accept 29927 >>Accept Mann's Man
    .target Foreman Mann
    .isQuestTurnedIn 29928 --any of: I Have No Jade And I Must Scream
    .xp <85,1
step
    #completewith next
    .zone 372 >>Travel to Greenstone Quarry
    .zoneskip 372
step
    .goto 372,60.90,36.40
    >>Locate Hao Mann at the Greenstone Quarry.
    .complete 29927,1 --Hao Mann
    .target Hao Mann
    .isOnQuest 29927
step
    .goto 372,60.90,36.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
    .turnin 29927 >>Turn in Mann's Man
    .target Hao Mann
    .isOnQuest 29927
step
    .goto 372,60.90,36.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
    .accept 29929 >>Accept Trapped!
    .target Hao Mann
    .isQuestTurnedIn 29927 --any of: Mann's Man
    .xp <85,1
step
    #completewith next
    .zone 371 >>Leave Greenstone Quarry for The Jade Forest
    .zoneskip 371
step
    .goto 371,56.26,57.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hisek the Swarmkeeper|r
    .turnin 31441 >>Turn in Corruption Runs Deep
    .target Hisek the Swarmkeeper
    .isQuestComplete 31441
step
    #completewith next
    .zone 373 >>Travel to Greenstone Quarry Lower Quarry(fake ID cave in The Jade Forest)
    .zoneskip 373
step
    #loop
    .goto 373,63.18,61.09,0
    .goto 373,63.18,61.09,40,0
    .goto 373,67.39,45.10,40,0
    .goto 373,62.58,36.13,40,0
    .goto 373,52.99,32.97,40,0
    .goto 373,53.03,43.78,40,0
    >>Interact with |cRXP_FRIENDLY_Greenstone Miners|r
    .complete 29929,1 --Greenstone Miner (8)
    .target Greenstone Miner
    .isOnQuest 29929
step
    .goto 373,49.41,64.86
    >>Kill |cRXP_ENEMY_Greenstone Nibblers|r
    .complete 29926,1 --Greenstone Nibbler slain (12)
    .mob Greenstone Nibbler
    .isOnQuest 29926
step
    .goto 373,59.29,56.09
    >>Kill |cRXP_ENEMY_Greenstone Gorgers|r
    .complete 29926,2 --Greenstone Gorger slain (6)
    .mob Greenstone Gorger
    .isOnQuest 29926
step
    #completewith next
    .zone 371 >>Leave Greenstone Quarry Lower Quarry(fake ID cave in The Jade Forest) for The Jade Forest
    .zoneskip 371
step
    .goto 371,46.30,29.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
    .turnin 29929 >>Turn in Trapped!
    .target Hao Mann
    .isOnQuest 29929
step
    .goto 371,46.30,29.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
    .accept 29930 >>Accept What's Mined Is Yours
    .target Hao Mann
    .isQuestTurnedIn 29929 --any of: Trapped!
    .xp <85,1
step
    .goto 371,46.27,29.47
    >>Kill |cRXP_ENEMY_Jade Cart|r
    .complete 29930,1 --Jade Cart slain (1)
    .mob Jade Cart
    .isOnQuest 29930
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .turnin 29926 >>Turn in Calamity Jade
    .target Foreman Mann
    .isOnQuest 29926
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .turnin 29930 >>Turn in What's Mined Is Yours
    .target Foreman Mann
    .isOnQuest 29930
step
    .goto 371,50.94,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
    .accept 29931 >>Accept The Serpent's Heart
    .target Foreman Mann
    .isQuestTurnedIn 29930 --any of: What's Mined Is Yours
    .xp <85,1
step
    .goto 371,48.93,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outcast Sprite|r
    .accept 29745 >>Accept The Sprites' Plight
    .target Outcast Sprite
step
    #completewith Along219
    >>As you go: Kill |cRXP_ENEMY_Stonebound Destroyers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29745,1 --Stonebound Destroyer slain (10)
    .mob Stonebound Destroyer
step
    #label Along219
    .goto 371,46.95,20.53
    >>Slay 10 Stonebound Destroyer the Woods of the Lost and discover their source.
    .complete 29745,2 --Mogu Ruins Discovery Kill Credit
    .target Mogu Ruins Discovery Kill Credit
step
    #loop
    .goto 371,48.18,21.30,0
    .goto 371,48.18,21.30,40,0
    .goto 371,49.28,23.04,40,0
    >>Kill |cRXP_ENEMY_Stonebound Destroyers|r
    .complete 29745,1 --Stonebound Destroyer slain (10)
    .mob Stonebound Destroyer
step
    .goto 371,49.04,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .turnin 29745 >>Turn in The Sprites' Plight
    .target !
step
    .goto 371,48.57,20.62
    >>Click the |cRXP_PICK_Shattered Destroyer|r
    .accept 29747 >>Accept Break the Cycle
    .accept 29748 >>Accept Simulacrumble
step
    #loop
    .goto 371,48.35,19.03,0
    .goto 371,48.35,19.03,40,0
    .goto 371,46.97,16.44,40,0
    >>Kill |cRXP_ENEMY_Shan'ze Spiritbinders|r
    >>Click the |cRXP_PICK_Vacant Destroyer|r
    .complete 29747,1 --Shan'ze Spiritbinder slain (8)
    .complete 29748,1 --Vacant Destroyer
    .mob Shan'ze Spiritbinder
step
    .goto 371,47.73,16.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 29747 >>Turn in Break the Cycle
    .turnin 29748 >>Turn in Simulacrumble
    .target ?
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
    .accept 29618 >>Accept The High Elder
    .target Lin Tenderpaw
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r
    .turnin 29618 >>Turn in The High Elder
    .target High Elder Cloudfall
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
    .accept 29619 >>Accept A Courteous Guest
    .target Lin Tenderpaw
step
    .goto 371,45.66,27.44
    >>Kill |cRXP_ENEMY_Greenwood Thiefs|r. Loot them for |cRXP_LOOT_Ripe Orange|r. It can also be picked up from |cRXP_PICK_Ripe Orange|r on the ground
    .complete 29619,1 --Ripe Orange (8)
    .mob Greenwood Thief
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
    .turnin 29619 >>Turn in A Courteous Guest
    .accept 29620 >>Accept The Great Banquet
    .target Lin Tenderpaw
step
    .isOnQuest 29620
    .goto 371,43.575,24.532
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Studious Chu|r
    .fp Tian Monastery >> Get the Tian Monastery flight path
    .target Studious Chu
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r
    .complete 29620,1 --High Elder Cloudfall
    .target High Elder Cloudfall
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r
    .turnin 29620 >>Turn in The Great Banquet
    .target High Elder Cloudfall
step
    .goto 371,43.13,23.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao|r
    .accept 29622 >>Accept Your Training Starts Now
    .accept 29626 >>Accept Groundskeeper Wu
    .target Xiao
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29626 >>Turn in Groundskeeper Wu while you are here
    .isQuestComplete 29626
    .target Groundskeeper Wu
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r
    .accept 29632 >>Accept Becoming Battle-Ready
    .target Master Stone Fist
step
    .goto 371,43.70,24.97
    >>Kill |cRXP_ENEMY_Tian Pupils|r
    .complete 29632,1 --Tian Pupil slain (8)
    .mob Tian Pupil
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r
    .turnin 29632 >>Turn in Becoming Battle-Ready
    .accept 29633 >>Accept Zhi-Zhi, the Dextrous
    .accept 29634 >>Accept Husshun, the Wizened
    .target Master Stone Fist
step
    .goto 371,43.06,26.00
    >>Kill |cRXP_ENEMY_Zhi-Zhi|r
    >>Kill |cRXP_ENEMY_Husshun|r
    .complete 29633,1 --Zhi-Zhi slain (1)
    .complete 29634,1 --Husshun slain (1)
    .mob Zhi-Zhi
    .mob Husshun
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .turnin 29622 >>Turn in Your Training Starts Now while you are here
    .isQuestComplete 29622
    .target Instructor Xann
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r
    .turnin 29633 >>Turn in Zhi-Zhi, the Dextrous
    .turnin 29634 >>Turn in Husshun, the Wizened
    .accept 29635 >>Accept Xiao, the Eater
    .target Master Stone Fist
step
    .goto 371,43.13,23.63
    >>Kill |cRXP_ENEMY_Xiao|r
    .complete 29635,1 --Xiao slain (1)
    .mob Xiao
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r
    .turnin 29635 >>Turn in Xiao, the Eater
    .accept 29636 >>Accept A Test of Endurance
    .target Master Stone Fist
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .turnin 29622 >>Turn in Your Training Starts Now
    .target Instructor Xann
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .accept 29623 >>Accept Perfection
    .target Instructor Xann
    .xp <85,1
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29626 >>Turn in Groundskeeper Wu
    .accept 29627 >>Accept A Proper Weapon
    .target Groundskeeper Wu
step
    #completewith Along243
    >>As you go: Pick up |cRXP_PICK_Rattan Switch|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 29627,1 --Rattan Switch (6)
step
    .goto 371,41.40,24.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Black Walnut Extract|r from |cRXP_FRIENDLY_June Whiteblossom|r
    .complete 29627,2 --Black Walnut Extract (1)
    .target June Whiteblossom
step
    #label Along243
    .goto 371,41.78,24.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Triple-Bittered Ale|r from |cRXP_FRIENDLY_Brewmaster Lei Kanglei|r
    .complete 29627,3 --Triple-Bittered Ale (3)
    .target Brewmaster Lei Kanglei
step
    #loop
    .goto 371,42.39,24.71,0
    .goto 371,42.39,24.71,40,0
    .goto 371,40.56,24.80,40,0
    >>Pick up |cRXP_PICK_Rattan Switch|r from the ground
    .complete 29627,1 --Rattan Switch (6)
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .turnin 29636 >>Turn in A Test of Endurance while you are here
    .isQuestComplete 29636
    .target Instructor Myang
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29627 >>Turn in A Proper Weapon
    .accept 29629 >>Accept A Steady Hand
    .accept 29630 >>Accept And a Heavy Fist
    .accept 29628 >>Accept A Strong Back
    .target Groundskeeper Wu
step
    #completewith Along247
    >>As you go: Kill |cRXP_ENEMY_Greenwood Tricksters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29630,1 --Greenwood Trickster slain (10)
    .mob Greenwood Trickster
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .turnin 29636 >>Turn in A Test of Endurance
    .target Instructor Myang
step
    #label Along247
    .goto 371,38.01,23.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Shan Long|r
    .accept 29631 >>Accept Burning Bright
    .target Guard Shan Long
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .accept 29637 >>Accept The Rumpus
    .target Instructor Myang
    .xp <85,1
step
    #loop
    .goto 371,35.00,21.40,0
    .goto 371,35.00,21.40,40,0
    .goto 371,37.60,18.20,40,0
    >>Open the |cRXP_PICK_Blushleaf Cluster|r. Loot it for |cRXP_LOOT_Blushleaf Extract|r
    >>Kill |cRXP_ENEMY_Greenwood Tricksters|r
    >>Kill |cRXP_ENEMY_Waxwood Matriarches|r and |cRXP_ENEMY_Waxwood Hunters|r
    .complete 29629,1 --Blushleaf Extract (1)
    .complete 29630,1 --Greenwood Trickster slain (10)
    .complete 29631,1 --Waxwood Matriarch (8)
    .mob Greenwood Trickster
    .mob Waxwood Matriarch
    .mob Waxwood Hunter
step
    .goto 371,41.62,23.70
    >>Obtain a Boiling Cauldron from Mother Wu in the Waxwood Forest, then return to Groundskeeper Wu in the Tian Monastery.
    .complete 29628,1 --Groundskeeper Wu
    .target Groundskeeper Wu
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29629 >>Turn in A Steady Hand while you are here
    .isQuestComplete 29629
    .target Groundskeeper Wu
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29630 >>Turn in And a Heavy Fist while you are here
    .isQuestComplete 29630
    .target Groundskeeper Wu
step
    .goto 371,37.74,17.57
    >>Click the |cRXP_PICK_Boiling Cauldron|r
    .complete 29628,2 --Boiling Cauldron
step
    .goto 371,38.01,23.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Shan Long|r
    .turnin 29631 >>Turn in Burning Bright
    .target Guard Shan Long
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r
    .turnin 29629 >>Turn in A Steady Hand
    .turnin 29630 >>Turn in And a Heavy Fist
    .turnin 29628 >>Turn in A Strong Back
    .target Groundskeeper Wu
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .accept 29637 >>Accept The Rumpus
    .target Instructor Myang
step
    .goto 371,39.00,23.18
    >>Survive the Melee
    .complete 29637,1 --Survive the Melee
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r
    .turnin 29637 >>Turn in The Rumpus
    .target Instructor Myang
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .accept 29623 >>Accept Perfection
    .target Instructor Xann
step
    .goto 371,41.36,27.57
    >>Survive the Melee
    .complete 29623,1 --Survive the Melee
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .turnin 29623 >>Turn in Perfection
    .accept 29624 >>Accept Attention
    .target Instructor Xann
step
    .goto 371,41.00,27.00
    >>Kill |cRXP_ENEMY_Training Bags|r
    .complete 29624,1 --Training Bag (2)
    .mob Training Bag
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .turnin 29624 >>Turn in Attention
    .target Instructor Xann
step
    .xp 85 >>Grind to level 85 (Flying Colors needs it)
step
    .goto 371,41.60,28.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r
    .accept 29639 >>Accept Flying Colors
    .target Instructor Xann
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r
    .turnin 29639 >>Turn in Flying Colors
    .target High Elder Cloudfall
step
    .goto 371,54.92,45.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Wei|r
    .turnin 29993 >>Turn in Find the Boy
    .target Inkmaster Wei
    .isOnQuest 29993
step
    .goto 371,54.92,45.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Wei|r
    .accept 29995 >>Accept Shrine of the Dawn
    .target Inkmaster Wei
    .isQuestTurnedIn 29993 --any of: Find the Boy
    .xp <85,1
step
    .goto 371,54.89,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Glenzu|r
    .accept 29881 >>Accept The Perfect Color
    .target Inkmaster Glenzu
step
    .goto 371,55.31,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r
    .accept 29882 >>Accept Quill of Stingers
    .target Inkmaster Jo Po
step
    #loop
    .goto 371,55.98,43.07,0
    .goto 371,55.98,43.07,40,0
    .goto 371,52.91,45.46,40,0
    >>Loot the |cRXP_PICK_Freshly Fallen Petals|r for |cRXP_LOOT_Freshly Fallen Petal|r
    >>Kill |cRXP_ENEMY_Orchard Wasps|r. Loot them for |cRXP_LOOT_Wasp Stinger|r
    .complete 29881,1 --Freshly Fallen Petal (8)
    .complete 29882,1 --Wasp Stinger (6)
    .mob Orchard Wasp
step
    .goto 371,55.31,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r
    .turnin 29882 >>Turn in Quill of Stingers while you are here
    .isQuestComplete 29882
    .target Inkmaster Jo Po
step
    .goto 371,54.89,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Glenzu|r
    .turnin 29881 >>Turn in The Perfect Color
    .target Inkmaster Glenzu
step
    .goto 371,55.31,45.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r
    .turnin 29882 >>Turn in Quill of Stingers
    .target Inkmaster Jo Po
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,57.55,45.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r
    .turnin 31375 >>Turn in The Order of the Cloud Serpent
    .target Instructor Skythorn
    .isOnQuest 31375
step
    .goto 371,48.32,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Misteye|r
    .accept 29576 >>Accept An Air of Worry
    .target Old Man Misteye
step
    .goto 371,52.57,38.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syra Goldendraft|r
    .turnin 29995 >>Turn in Shrine of the Dawn
    .target Syra Goldendraft
    .isOnQuest 29995
step
    .goto 371,52.57,38.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syra Goldendraft|r
    .accept 29920 >>Accept Getting Permission
    .target Syra Goldendraft
    .isQuestTurnedIn 29995 --any of: Shrine of the Dawn
    .xp <85,1
step
    .goto 371,54.09,38.46
    >>Kill |cRXP_ENEMY_Pandriarch Bramblestaff|r
    .complete 29920,2 --Pandriarch Bramblestaff slain (1)
    .mob Pandriarch Bramblestaff
    .isOnQuest 29920
step
    .goto 371,53.59,36.73
    >>Kill |cRXP_ENEMY_Pandriarch Goldendraft|r
    .complete 29920,3 --Pandriarch Goldendraft slain (1)
    .mob Pandriarch Goldendraft
    .isOnQuest 29920
step
    .goto 371,52.54,35.57
    >>Kill |cRXP_ENEMY_Pandriarch Windfur|r
    .complete 29920,1 --Pandriarch Windfur slain (1)
    .mob Pandriarch Windfur
    .isOnQuest 29920
step
    .goto 371,52.59,38.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
    .turnin 29920 >>Turn in Getting Permission
    .target Lo Wanderbrew
    .isOnQuest 29920
step
    .goto 371,48.31,61.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
    .turnin 29931 >>Turn in The Serpent's Heart
    .target Foreman Raike
    .isOnQuest 29931
step
    .goto 371,48.31,61.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
    .accept 30495 >>Accept Love's Labor
    .target Foreman Raike
    .isQuestTurnedIn 29931 --any of: The Serpent's Heart
    .xp <85,1
step
    .goto 371,48.18,60.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitemaster Shoku|r
    .complete 30495,3 --Kitemaster Shoku
    .target Kitemaster Shoku
    .isOnQuest 30495
step
    .goto 371,47.58,60.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Emi|r
    .complete 30495,4 --Taskmaster Emi
    .target Taskmaster Emi
    .isOnQuest 30495
step
    .goto 371,46.94,60.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Sawa|r
    .complete 30495,2 --Surveyor Sawa
    .target Surveyor Sawa
    .isOnQuest 30495
step
    .goto 371,46.40,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Dinh|r
    .complete 30495,1 --Historian Dinh
    .target Historian Dinh
    .isOnQuest 30495
step
    .goto 371,48.31,61.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
    .turnin 30495 >>Turn in Love's Labor
    .target Foreman Raike
    .isOnQuest 30495
step
    .goto 371,48.31,61.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
    .accept 29932 >>Accept The Temple of the Jade Serpent
    .target Foreman Raike
    .isQuestTurnedIn 30495 --any of: Love's Labor
    .xp <85,1
step
    .goto 371,55.84,57.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
    .complete 29932,1 --Elder Sage Wind-Yi
    .target Elder Sage Wind-Yi
    .isOnQuest 29932
step
    .goto 371,58.13,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
    .turnin 29932 >>Turn in The Temple of the Jade Serpent
    .target Elder Sage Rain-Zhu
    .isOnQuest 29932
step
    .goto 371,58.13,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
    .accept 29997 >>Accept The Scryer's Dilemma
    .accept 29998 >>Accept The Librarian's Quandary
    .target Elder Sage Rain-Zhu
    .isQuestTurnedIn 29932 --any of: The Temple of the Jade Serpent
    .xp <85,1
step
    .goto 371,58.03,59.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .accept 29999 >>Accept The Rider's Bind
    .accept 30005 >>Accept Lighting Up the Sky
    .target Fei
    .isQuestTurnedIn 29932 --any of: The Temple of the Jade Serpent
    .xp <85,1
step
    .goto 371,58.20,61.20
    >>Interact with |cRXP_FRIENDLY_Playful Crimson Serpents|r
    .complete 29999,2 --Playful Crimson Serpent (4)
    .target Playful Crimson Serpent
    .isOnQuest 29999
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .turnin 29998 >>Turn in The Librarian's Quandary
    .target Lorewalker Stonestep
    .isOnQuest 29998
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .accept 30001 >>Accept Moth-Ridden
    .accept 30002 >>Accept Pages of History
    .target Lorewalker Stonestep
    .isQuestTurnedIn 29998 --any of: The Librarian's Quandary
    .xp <85,1
step
    .goto 371,56.00,60.20
    >>Interact with |cRXP_FRIENDLY_Playful Gold Serpents|r
    .complete 29999,4 --Playful Gold Serpent (4)
    .target Playful Gold Serpent
    .isOnQuest 29999
step
    .goto 371,56.31,60.10
    >>Kill |cRXP_ENEMY_Bookworms|r
    .complete 30002,1 --Bookworm slain (12)
    .mob Bookworm
    .isOnQuest 30002
step
    .goto 371,56.60,60.60
    >>Kill |cRXP_ENEMY_Dappled Moths|r
    .complete 30001,1 --Dappled Moth slain (8)
    .mob Dappled Moth
    .isOnQuest 30001
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .turnin 30001 >>Turn in Moth-Ridden
    .target Lorewalker Stonestep
    .isOnQuest 30001
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .turnin 30002 >>Turn in Pages of History
    .target Lorewalker Stonestep
    .isOnQuest 30002
step
    .goto 371,56.26,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
    .accept 30004 >>Accept Everything In Its Place
    .target Lorewalker Stonestep
    .isQuestTurnedIn 30001 --Moth-Ridden
    .isQuestTurnedIn 30002 --Pages of History
    .xp <85,1
step
    .goto 371,56.40,58.40
    >>Interact with |cRXP_FRIENDLY_Playful Emerald Serpents|r
    .complete 29999,3 --Playful Emerald Serpent (4)
    .target Playful Emerald Serpent
    .isOnQuest 29999
step
    .goto 371,56.80,55.60
    >>Kill |cRXP_ENEMY_Water Fiend|r and loot |cRXP_LOOT_Scryer's Staff|r
    .complete 29997,1 --Scryer's Staff (1)
    .mob Water Fiend
    .isOnQuest 29997
step
    .goto 371,57.57,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Mari|r
    .turnin 29997 >>Turn in The Scryer's Dilemma
    .target Wise Mari
    .isOnQuest 29997
step
    .goto 371,57.57,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Mari|r
    .accept 30011 >>Accept A New Vision
    .target Wise Mari
    .isQuestTurnedIn 29997 --any of: The Scryer's Dilemma
    .xp <85,1
step
    .goto 371,59.20,56.80
    >>Interact with |cRXP_FRIENDLY_Playful Azure Serpents|r
    .complete 29999,1 --Playful Azure Serpent (4)
    .target Playful Azure Serpent
    .isOnQuest 29999
step
    #loop
    .goto 371,58.30,58.20,0
    .goto 371,58.30,58.20,40,0
    .goto 371,57.50,61.40,40,0
    >>Click the |cRXP_PICK_Firework Launcher|r
    .complete 30005,1 --Firework Launcher
    .isOnQuest 30005
step
    .goto 371,58.13,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
    .turnin 30004 >>Turn in Everything In Its Place
    .target Elder Sage Rain-Zhu
    .isOnQuest 30004
step
    .goto 371,58.13,58.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
    .turnin 30011 >>Turn in A New Vision
    .target Elder Sage Rain-Zhu
    .isOnQuest 30011
step
    .goto 371,58.03,59.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .turnin 29999 >>Turn in The Rider's Bind
    .target Fei
    .isOnQuest 29999
step
    .goto 371,58.03,59.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .turnin 30005 >>Turn in Lighting Up the Sky
    .target Fei
    .isOnQuest 30005
step
    .goto 371,58.03,59.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .accept 30000 >>Accept The Jade Serpent
    .target Fei
    .isQuestTurnedIn 29999 --The Rider's Bind
    .isQuestTurnedIn 30004 --Everything In Its Place
    .isQuestTurnedIn 30005 --Lighting Up the Sky
    .isQuestTurnedIn 30011 --A New Vision
    .xp <85,1
step
    .goto 371,58.03,59.01
    >>Listen to the Jade Serpent.
    .complete 30000,1 --Kill Credit: Jade Serpent (1)
    .isOnQuest 30000
step
    .goto 371,55.84,57.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
    .turnin 30000 >>Turn in The Jade Serpent
    .target Elder Sage Wind-Yi
    .isOnQuest 30000
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,55.84,57.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
    .accept 30499 >>Accept Get Back Here!
    .target Elder Sage Wind-Yi
    .isQuestTurnedIn 30000 --any of: The Jade Serpent
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.03,47.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 30499 >>Turn in Get Back Here!
    .target General Nazgrim
    .isOnQuest 30499
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.03,47.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .accept 30484 >>Accept Gauging Our Progress
    .accept 30466 >>Accept Sufficient Motivation
    .target General Nazgrim
    .isQuestTurnedIn 30000 --any of: The Jade Serpent
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.00,48.00
    >>Kill |cRXP_ENEMY_Lazy Hozens|r
    .complete 30466,2 --Lazy Hozen (10)
    .mob Lazy Hozen
    .isOnQuest 30466
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.41,47.79
    >>Kill |cRXP_ENEMY_Rivett Clutchpop|r and loot |cRXP_LOOT_Rivett Clutchpop's Report|r
    .complete 30484,2 --Rivett Clutchpop's Report (1)
    .mob Rivett Clutchpop
    .isOnQuest 30484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,29.16,50.89
    >>Kill |cRXP_ENEMY_Shademaster Kiryn|r and loot |cRXP_LOOT_Shademaster Kiryn's Report|r
    .complete 30484,1 --Shademaster Kiryn's Report (1)
    .mob Shademaster Kiryn
    .isOnQuest 30484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.40,51.80
    >>Kill |cRXP_ENEMY_Shokia|r and loot |cRXP_LOOT_Shokia's Report|r
    .complete 30484,3 --Shokia's Report (1)
    .mob Shokia
    .isOnQuest 30484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,27.00,54.94
    >>Kill |cRXP_ENEMY_Riko|r and loot |cRXP_LOOT_Riko's Report|r
    .complete 30484,4 --Riko's Report (1)
    .mob Riko
    .isOnQuest 30484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.11,47.39
    >>Open the |cRXP_PICK_Barrel of Slickies|r. Loot it for |cRXP_LOOT_Bucket of Slicky Water|r
    .complete 30466,1 --Bucket of Slicky Water (1)
    .isOnQuest 30466
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.03,47.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 30466 >>Turn in Sufficient Motivation
    .target General Nazgrim
    .isOnQuest 30466
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.03,47.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
    .turnin 30484 >>Turn in Gauging Our Progress
    .target General Nazgrim
    .isOnQuest 30484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,28.22,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 30485 >>Accept Last Piece of the Puzzle
    .target Lorewalker Cho
    .isQuestTurnedIn 30466 --Sufficient Motivation
    .isQuestTurnedIn 30484 --Gauging Our Progress
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,44.49,66.91
    >>Click the |cRXP_PICK_Cho Family Shrine|r
    .complete 30485,1 --Cho Family Shrine
    .isOnQuest 30485
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,44.78,67.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30485 >>Turn in Last Piece of the Puzzle
    .target Lorewalker Cho
    .isOnQuest 30485
step
    .goto 371,44.78,67.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 31303 >>Accept The Seal is Broken
    .target Lorewalker Cho
    .isQuestTurnedIn 30485,31362 --any of: Last Piece of the Puzzle, Last Piece of the Puzzle
    .xp <85,1
step
    #loop
    .goto 371,46.58,58.95,0
    .goto 371,46.58,58.95,40,0
    .goto 371,46.93,62.54,40,0
    .goto 371,48.37,62.03,40,0
    .goto 371,48.67,58.91,40,0
    .goto 371,49.36,60.79,40,0
    >>Seal 12 Sha Fissures to banish the Sha of Doubt.
    .complete 31303,1 --Sha of Doubt Portal
    .target Sha of Doubt Portal
    .isOnQuest 31303
step
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 31303 >>Turn in The Seal is Broken
    .target Lorewalker Cho
    .isOnQuest 31303
step
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .accept 30500 >>Accept Residual Fallout
    .accept 30502 >>Accept Jaded Heart
    .accept 30504 >>Accept Emergency Response << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Lorewalker Cho
    .isQuestTurnedIn 31303 --any of: The Seal is Broken
    .xp <85,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,48.13,61.77
    >>Interact with |cRXP_FRIENDLY_General Nazgrim|r
    .complete 30504,1 --General Nazgrim
    .target General Nazgrim
    .isOnQuest 30504
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,47.24,62.54
    >>Interact with |cRXP_FRIENDLY_Shademaster Kiryn|r
    .complete 30504,2 --Shademaster Kiryn
    .target Shademaster Kiryn
    .isOnQuest 30504
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,46.87,60.71
    >>Interact with |cRXP_FRIENDLY_Shokia|r
    .complete 30504,3 --Shokia
    .target Shokia
    .isOnQuest 30504
step
    .goto 371,47.35,59.73
    >>Pick up |cRXP_PICK_Celestial Jade|r from the ground
    .collect 80074,1,30502,1 --Celestial Jade (1)
    .isOnQuest 30502
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,48.02,59.08
    >>Interact with |cRXP_FRIENDLY_Rivett Clutchpop|r
    .complete 30504,4 --Rivett Clutchpop
    .target Rivett Clutchpop
    .isOnQuest 30504
step
    #loop
    .goto 371,47.87,58.20,0
    .goto 371,47.87,58.20,40,0
    .goto 371,47.02,62.54,40,0
    >>Kill |cRXP_ENEMY_Sha Remnants|r
    .complete 30502,1 --Sha Remnant (6)
    .mob Sha Remnant
    .isOnQuest 30502
step
    #loop
    .goto 371,48.51,61.09,0
    .goto 371,48.51,61.09,40,0
    .goto 371,46.44,60.01,40,0
    >>Kill |cRXP_ENEMY_Sha Echos|r
    .complete 30500,1 --Sha Echo slain (10)
    .mob Sha Echo
    .isOnQuest 30500
step
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30500 >>Turn in Residual Fallout
    .target Lorewalker Cho
    .isOnQuest 30500
step
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30502 >>Turn in Jaded Heart
    .target Lorewalker Cho
    .isOnQuest 30502
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,49.30,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
    .turnin 30504 >>Turn in Emergency Response
    .target Lorewalker Cho
    .isOnQuest 30504
step
    .goto 371,49.30,61.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .accept 30648 >>Accept Moving On
    .target Fei
    .isQuestTurnedIn 30504,31319 --any of: Emergency Response, Emergency Response
    .xp <85,1
step
    .goto 371,49.30,61.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
    .complete 30648,1 --Fei
    .target Fei
    .isOnQuest 30648
step
    .goto 371,43.49,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .turnin 29576 >>Turn in An Air of Worry
    .accept 29578 >>Accept Defiance
    .accept 29579 >>Accept Rally the Survivors
    .target Shao the Defiant
step
    #completewith Along343
    >>As you go: Kill |cRXP_ENEMY_Gormali Incinerators|r. Kill |cRXP_ENEMY_Gormali Raiders|r. Kill |cRXP_ENEMY_Nectarbreeze Farmers|r and |cRXP_ENEMY_Rally Survivor Kill Credits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 29578,1 --Gormali Incinerator slain (8)
    .complete 29578,2 --Gormali Raider (8)
    .complete 29579,1 --Nectarbreeze Farmer (5)
    .mob Gormali Incinerator
    .mob Gormali Raider
    .mob Nectarbreeze Farmer
    .mob Rally Survivor Kill Credit
step
    .goto 371,43.25,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r
    .accept 29580 >>Accept Orchard-Supplied Hardware
    .accept 29585 >>Accept Spitfire
    .target Gentle Mother Hanae
step
    #completewith Along343
    >>As you go: Pick up |cRXP_PICK_Orchard Tool|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 29580,1 --Orchard Tool (6)
step
    #label Along343
    #loop
    .goto 371,44.46,75.54,0
    .goto 371,44.46,75.54,40,0
    .goto 371,44.44,72.40,40,0
    >>Interact with |cRXP_FRIENDLY_Orchard Fires|r
    .complete 29585,1 --Orchard Fire (12)
    .target Orchard Fire
step
    .goto 371,43.25,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r
    .turnin 29585 >>Turn in Spitfire while you are here
    .isQuestComplete 29585
    .target Gentle Mother Hanae
step
    #loop
    .goto 371,43.99,72.22,0
    .goto 371,43.99,72.22,40,0
    .goto 371,43.74,75.01,40,0
    >>Pick up |cRXP_PICK_Orchard Tool|r from the ground
    >>Kill |cRXP_ENEMY_Gormali Incinerators|r
    >>Kill |cRXP_ENEMY_Gormali Raiders|r
    >>Kill |cRXP_ENEMY_Nectarbreeze Farmers|r and |cRXP_ENEMY_Rally Survivor Kill Credits|r
    .complete 29580,1 --Orchard Tool (6)
    .complete 29578,1 --Gormali Incinerator slain (8)
    .complete 29578,2 --Gormali Raider (8)
    .complete 29579,1 --Nectarbreeze Farmer (5)
    .mob Gormali Incinerator
    .mob Gormali Raider
    .mob Nectarbreeze Farmer
    .mob Rally Survivor Kill Credit
step
    .goto 371,43.25,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r
    .turnin 29580 >>Turn in Orchard-Supplied Hardware while you are here
    .isQuestComplete 29580
    .target Gentle Mother Hanae
step
    .goto 371,43.49,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .turnin 29578 >>Turn in Defiance
    .turnin 29579 >>Turn in Rally the Survivors
    .target Shao the Defiant
step
    .goto 371,43.25,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r
    .turnin 29580 >>Turn in Orchard-Supplied Hardware
    .turnin 29585 >>Turn in Spitfire
    .target Gentle Mother Hanae
step
    .goto 371,43.21,75.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Traumatized Nectarbreeze Farmer|r
    .accept 29586 >>Accept The Splintered Path
    .target Traumatized Nectarbreeze Farmer
step
    .goto 371,41.00,73.97
    >>Follow the path of fallen trees from the northwest corner of Nectarbreeze Orchard and find the mogu raiders camp.
    .complete 29586,1 --Shao the Defiant
    .target Shao the Defiant
step
    .goto 371,41.00,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .turnin 29586 >>Turn in The Splintered Path
    .accept 29587 >>Accept Unbound
    .accept 29670 >>Accept Maul Gormal
    .target Shao the Defiant
step
    #loop
    .goto 371,39.84,74.74,0
    .goto 371,39.84,74.74,40,0
    .goto 371,38.00,76.80,40,0
    >>Kill |cRXP_ENEMY_Subjugator Gormal|r
    >>Kill |cRXP_ENEMY_Captured Nectarbreeze Farmers|r
    .complete 29670,1 --Subjugator Gormal slain (1)
    .complete 29587,1 --Captured Nectarbreeze Farmer (10)
    .mob Subjugator Gormal
    .mob Captured Nectarbreeze Farmer
step
    .goto 371,41.00,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r
    .turnin 29587 >>Turn in Unbound
    .turnin 29670 >>Turn in Maul Gormal
    .target Shao the Defiant
step
    +|cRXP_WARN_That is all of The Jade Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Valley of the Four Winds|r: Moving On
step
    +|cRXP_WARN_The rest of The Jade Forest is planned from level 88.|r Load its guide for level 88 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 85 - 89 The Jade Forest
#subweight -85
#name 88-89 The Jade Forest: around Pei-Zhi

step
    .goto 371,41.78,24.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Lei Kanglei|r
    .target Brewmaster Lei Kanglei
    .home >>Set your Hearthstone to Brewmaster Lei Kanglei's inn
step
    .goto 371,44.20,14.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29749 >>Accept An Urgent Plea
    .target Pei-Zhi
    .isQuestTurnedIn 29747 --Break the Cycle
    .isQuestTurnedIn 29748 --Simulacrumble
step
    .goto 371,44.20,14.94
    >>Kill |cRXP_ENEMY_Pei-Zhi|r
    .complete 29749,1 --Pei-Zhi slain (1)
    .mob Pei-Zhi
    .isOnQuest 29749
step
    .goto 371,44.23,14.90
    >>Pick up |cRXP_PICK_Staff of Pei-Zhi|r from the ground
    .complete 29749,2 --Staff of Pei-Zhi (1)
    .isOnQuest 29749
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29749 >>Turn in An Urgent Plea
    .target Pei-Zhi
    .isOnQuest 29749
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29750 >>Accept Vessels of the Spirit
    .accept 29751 >>Accept Ritual Artifacts
    .accept 29752 >>Accept The Wayward Dead
    .target Pei-Zhi
    .isQuestTurnedIn 29749 --any of: An Urgent Plea
step
    .goto 371,42.68,15.75
    >>Pick up |cRXP_PICK_Jade Cong|r from the ground
    .complete 29751,1 --Jade Cong (1)
    .isOnQuest 29751
step
    .goto 371,42.27,17.09
    >>Pick up |cRXP_PICK_Pungent Ritual Candle|r from the ground
    .complete 29751,3 --Pungent Ritual Candle (1)
    .isOnQuest 29751
step
    .goto 371,41.63,14.30
    >>Pick up |cRXP_PICK_Chipped Ritual Bowl|r from the ground
    .complete 29751,2 --Chipped Ritual Bowl (1)
    .isOnQuest 29751
step
    .goto 371,41.41,16.05
    >>Interact with |cRXP_FRIENDLY_Wayward Ancestors|r
    .complete 29752,1 --Wayward Ancestor (10)
    .target Wayward Ancestor
    .isOnQuest 29752
step
    #loop
    .goto 371,42.23,16.89,0
    .goto 371,42.23,16.89,40,0
    .goto 371,41.03,13.99,40,0
    >>Kill |cRXP_ENEMY_Shan'ze Spiritclaws|r. Loot them for |cRXP_LOOT_Spirit Bottle|r
    .complete 29750,1 --Spirit Bottle (8)
    .mob Shan'ze Spiritclaw
    .isOnQuest 29750
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29750 >>Turn in Vessels of the Spirit
    .target Pei-Zhi
    .isOnQuest 29750
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29751 >>Turn in Ritual Artifacts
    .target Pei-Zhi
    .isOnQuest 29751
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29752 >>Turn in The Wayward Dead
    .target Pei-Zhi
    .isOnQuest 29752
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29753 >>Accept Back to Nature
    .target Pei-Zhi
    .isQuestTurnedIn 29750 --any of: Vessels of the Spirit
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29756 >>Accept A Humble Offering
    .target Pei-Zhi
    .isQuestTurnedIn 29750 --Vessels of the Spirit
    .isQuestTurnedIn 29751 --Ritual Artifacts
    .isQuestTurnedIn 29752 --The Wayward Dead
step
    .goto 371,44.24,15.02
    >>Throw Spirit Bottles on the ground in Tideview Thicket to release 8 Beast Spirits.
    .complete 29753,1 --Peaceful Beast Spirit (8)
    .isOnQuest 29753
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29753 >>Turn in Back to Nature while you are here
    .isQuestComplete 29753
    .target Pei-Zhi
step
    .goto 371,38.72,11.52
    >>Pick up |cRXP_PICK_Tidemist Cap|r from the ground
    .complete 29756,1 --Tidemist Cap (10)
    .isOnQuest 29756
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29753 >>Turn in Back to Nature
    .target Pei-Zhi
    .isOnQuest 29753
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29756 >>Turn in A Humble Offering
    .target Pei-Zhi
    .isOnQuest 29756
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .accept 29754 >>Accept To Bridge Earth and Sky
    .target Pei-Zhi
    .isQuestTurnedIn 29753 --Back to Nature
    .isQuestTurnedIn 29756 --A Humble Offering
step
    .goto 371,43.83,12.53
    >>Protect Pei-Zhi during his ritual at the Terrace of Ten Thunders.
    .complete 29754,1 --Pei-Zhi
    .target Pei-Zhi
    .isOnQuest 29754
step
    .goto 371,43.77,12.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 29754 >>Turn in To Bridge Earth and Sky
    .target ?
    .isOnQuest 29754
step
    .goto 371,43.85,12.47
    >>Click the |cRXP_PICK_The Tan-Chao|r
    .accept 29755 >>Accept Pei-Back
    .isQuestTurnedIn 29754 --any of: To Bridge Earth and Sky
step
    .goto 371,42.48,10.31
    >>Kill |cRXP_ENEMY_Shan Jitong|r
    .complete 29755,1 --Shan Jitong slain (1)
    .mob Shan Jitong
    .isOnQuest 29755
step
    .goto 371,43.83,12.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r
    .turnin 29755 >>Turn in Pei-Back
    .target Pei-Zhi
    .isOnQuest 29755
step
    .goto 371,48.16,34.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Graceful Swan|r
    .accept 31279 >>Accept Everything I Know About Cooking
    .target Graceful Swan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,45.72,43.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peiji Goldendraft|r
    .accept 31393 >>Accept Temple of the White Tiger
    .target Peiji Goldendraft
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 371,45.72,43.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Grummle|r
    .accept 31255 >>Accept The Road to Kun-Lai
    .target Messenger Grummle
step
    .goto 371,45.78,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolo|r
    .accept 32018 >>Accept His Name Was... Stormstout
    .target Bolo
step
    +|cRXP_WARN_That is all of The Jade Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Kun-Lai Summit|r: The Road to Kun-Lai, Temple of the White Tiger << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Valley of the Four Winds|r: His Name Was... Stormstout, Everything I Know About Cooking
step
    +|cRXP_WARN_End of the The Jade Forest route.|r
]])
