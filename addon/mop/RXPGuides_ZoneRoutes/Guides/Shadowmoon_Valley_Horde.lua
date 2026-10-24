-- 69-70 Shadowmoon Valley: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 69, 73).
-- Split into 2 guides, listed under "69 - 74 Shadowmoon Valley" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Shadowmoon Valley.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 69 - 74 Shadowmoon Valley
#subweight -69
#name 69-70 Shadowmoon Valley: around Earthmender Torlok
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\70-72 Howling Fjord: around Lurielle

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 11048 >>Turn in Kroghan's Report
    .target Blood Guard Gulmok
    .isOnQuest 11048
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .accept 10595 >>Accept Besieged!
    .target Blood Guard Gulmok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along2
    >>As you go: Kill |cRXP_ENEMY_Infernal Attacker (1)s|r and |cRXP_ENEMY_Infernal Attackers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10595,1 --Infernal Attacker (1) (8)
    .mob Infernal Attacker (1)
    .mob Infernal Attacker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along2
    .goto 104,29.09,29.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dama Wildmane|r
    .turnin 11047 >>Turn in The Apprentice's Request
    .target Dama Wildmane
    .isOnQuest 11047
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,27.51,29.30
    >>Kill |cRXP_ENEMY_Infernal Attacker (1)s|r and |cRXP_ENEMY_Infernal Attackers|r
    .complete 10595,1 --Infernal Attacker (1) (8)
    .mob Infernal Attacker (1)
    .mob Infernal Attacker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .accept 10702 >>Accept A Grunt's Work...
    .accept 10750 >>Accept The Path of Conquest
    .target Overlord Or'barokh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,28.49,26.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Splinthoof|r
    .accept 10681 >>Accept The Hand of Gul'dan
    .target Earthmender Splinthoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 11046 >>Turn in Chief Apothecary Hildagard
    .target Chief Apothecary Hildagard
    .isOnQuest 11046
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .accept 10624 >>Accept A Haunted History
    .target Chief Apothecary Hildagard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .accept 10660 >>Accept What Strange Creatures...
    .target Researcher Tiorus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,31.02,29.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kargrul|r
    .accept 10760 >>Accept The Sketh'lon Wreckage
    .target Sergeant Kargrul
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.44,30.81
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10647 >>Accept Wanted: Uvuros, Scourge of Shadowmoon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along11
    >>As you go: Loot the |cRXP_PICK_Ever-burning Ashes|r for |cRXP_LOOT_Ever-Burning Ash|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10624,1 --Ever-Burning Ash (15)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along11
    .goto 104,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10595 >>Turn in Besieged!
    .accept 10596 >>Accept To Legion Hold
    .target Blood Guard Gulmok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Felfire Diemetradons|r. Loot them for |cRXP_LOOT_Felfire Spleen|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10660,1 --Felfire Spleen (8)
    .mob Felfire Diemetradon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along12
    #loop
    .goto 104,31.67,34.55,0
    .goto 104,31.67,34.55,40,0
    .goto 104,32.08,36.57,40,0
    .goto 104,33.86,29.22,40,0
    >>Loot the |cRXP_PICK_Ever-burning Ashes|r for |cRXP_LOOT_Ever-Burning Ash|r
    .complete 10624,1 --Ever-Burning Ash (15)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,34.18,27.93,0
    .goto 104,34.18,27.93,40,0
    .goto 104,39.71,30.35,40,0
    .goto 104,36.09,30.79,40,0
    .goto 104,31.76,37.20,40,0
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 1|r
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 2|r
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 3|r
    >>Kill |cRXP_ENEMY_Felfire Diemetradons|r. Loot them for |cRXP_LOOT_Felfire Spleen|r
    .complete 10760,1 --Sketh'lon Commander's Journal - Page 1 (1)
    .complete 10760,2 --Sketh'lon Commander's Journal - Page 2 (1)
    .complete 10760,3 --Sketh'lon Commander's Journal - Page 3 (1)
    .complete 10660,1 --Felfire Spleen (8)
    .mob Dark Conclave Shadowmancer
    .mob Dark Conclave Ravenguard
    .mob Dark Conclave Hawkeye
    .mob Felfire Diemetradon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,31.02,29.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kargrul|r
    .turnin 10760 >>Turn in The Sketh'lon Wreckage
    .accept 10761 >>Accept Find the Deserter
    .target Sergeant Kargrul
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 10624 >>Turn in A Haunted History
    .accept 10625 >>Accept Spectrecles
    .target Chief Apothecary Hildagard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Shadowmoon Zealots|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10625,1 --Shadowmoon Zealot slain (12)
    .mob Shadowmoon Zealot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along16
    .goto 104,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .turnin 10660 >>Turn in What Strange Creatures...
    .target Researcher Tiorus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,31.20,28.34,0
    .goto 104,31.20,28.34,40,0
    .goto 104,30.04,30.92,40,0
    >>Kill |cRXP_ENEMY_Shadowmoon Zealots|r
    .complete 10625,1 --Shadowmoon Zealot slain (12)
    .mob Shadowmoon Zealot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 10625 >>Turn in Spectrecles while you are here
    .isQuestComplete 10625
    .target Chief Apothecary Hildagard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .accept 10672 >>Accept Frankly, It Makes No Sense...
    .target Researcher Tiorus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 10625 >>Turn in Spectrecles
    .accept 10633 >>Accept Teron Gorefiend - Lore and Legend
    .target Chief Apothecary Hildagard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along20
    >>As you go: Click the |cRXP_PICK_Legion Communication Device|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10596,1 --Legion Communication Device
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along20
    .goto 104,23.18,35.15
    >>Kill |cRXP_ENEMY_Overseer Ripsaw|r and loot |cRXP_LOOT_Illidari-Bane Shard|r. Use it to start the quest
    .collect 30579,1,10623 --Illidari-Bane Shard (1)
    .accept 10623 >>Accept Illidari-Bane Shard
    .use 30579
    .mob Overseer Ripsaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,23.60,36.89
    >>Click the |cRXP_PICK_Legion Communication Device|r
    .complete 10596,1 --Legion Communication Device
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,29.79,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grokom Deatheye|r
    .turnin 10623 >>Turn in Illidari-Bane Shard
    .accept 10627 >>Accept Capture the Weapons
    .target Grokom Deatheye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10596 >>Turn in To Legion Hold
    .accept 10597 >>Accept Setting Up the Bomb
    .target Blood Guard Gulmok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,33.82,37.90,0
    .goto 104,33.82,37.90,40,0
    .goto 104,33.32,42.51,40,0
    .goto 104,29.48,43.76,40,0
    >>Kill |cRXP_ENEMY_Scorchshell Pincers|r, |cRXP_ENEMY_Felboars|r, |cRXP_ENEMY_Vilewing Chimaeras|r and |cRXP_ENEMY_Shadow Serpents|r
    .complete 10702,1 --Scorchshell Pincer (8)
    .mob Scorchshell Pincer
    .mob Felboar
    .mob Vilewing Chimaera
    .mob Shadow Serpent
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,26.30,41.27
    >>Pick up |cRXP_PICK_Fel Reaver Power Core|r from the ground
    .complete 10597,1 --Fel Reaver Power Core (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,22.68,35.30
    >>Kill |cRXP_ENEMY_Morgroron|r and loot |cRXP_LOOT_Morgroron's Glaive|r
    >>Open the |cRXP_PICK_Fel Reaver Armor Plating|r. Loot it for |cRXP_LOOT_Fel Reaver Armor Plate|r
    >>Kill |cRXP_ENEMY_Makazradon|r and loot |cRXP_LOOT_Makazradon's Glaive|r
    .complete 10627,2 --Morgroron's Glaive (1)
    .complete 10597,2 --Fel Reaver Armor Plate (1)
    .complete 10627,1 --Makazradon's Glaive (1)
    .mob Morgroron
    .mob Makazradon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .turnin 10702 >>Turn in A Grunt's Work...
    .target Overlord Or'barokh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,29.79,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grokom Deatheye|r
    .turnin 10627 >>Turn in Capture the Weapons
    .accept 10663 >>Accept The Hermit Smith
    .target Grokom Deatheye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10597 >>Turn in Setting Up the Bomb
    .accept 10598 >>Accept Blast the Infernals!
    .target Blood Guard Gulmok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,22.65,39.88
    >>Use the Fel Bomb while standing on the green glyph in Legion Hold to destroy the infernals, then report to Blood Guard Gulmok at Shadowmoon Village.
    .complete 10598,1 --Invis Legion Hold Glyph
    .target Invis Legion Hold Glyph
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10598 >>Turn in Blast the Infernals!
    .accept 10599 >>Accept The Deathforge
    .target Blood Guard Gulmok
step
    #loop
    .goto 104,35.39,36.68,0
    .goto 104,35.39,36.68,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.38,41.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10761 >>Turn in Find the Deserter << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 10777 >>Accept Asghar's Totem
    .unitscan Parshah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10599 >>Turn in The Deathforge
    .accept 10600 >>Accept Minions of the Shadow Council
    .target Scout Zagran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along34
    >>As you go: Kill |cRXP_ENEMY_Deathforge Guardians|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10600,1 --Deathforge Guardian slain (10)
    .mob Deathforge Guardian
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along34
    #loop
    .goto 104,38.72,40.02,0
    .goto 104,38.72,40.02,40,0
    .goto 104,41.85,36.56,40,0
    >>Kill |cRXP_ENEMY_Deathforge Summoners|r
    .complete 10600,2 --Deathforge Summoner slain (5)
    .mob Deathforge Summoner
step
    .goto 104,39.65,29.33
    >>Kill |cRXP_ENEMY_Asghar|r and loot |cRXP_LOOT_Sketh'lon War Totem|r
    .complete 10777,1 --Sketh'lon War Totem (1)
    .mob Asghar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,39.55,35.72,0
    .goto 104,39.55,35.72,40,0
    .goto 104,39.17,39.52,40,0
    >>Kill |cRXP_ENEMY_Deathforge Guardians|r
    .complete 10600,1 --Deathforge Guardian slain (10)
    .mob Deathforge Guardian
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10600 >>Turn in Minions of the Shadow Council
    .accept 10601 >>Accept The Fate of Kagrosh
    .accept 10602 >>Accept The Summoning Chamber
    .target Scout Zagran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,37.80,38.73,0
    .goto 104,37.80,38.73,40,0
    .goto 104,36.77,41.43,40,0
    >>Kill |cRXP_ENEMY_Infernal Oversoul|r
    >>Kill |cRXP_ENEMY_Deathforge Tinkerers|r and |cRXP_ENEMY_Deathforge Smiths|r. Loot them for |cRXP_LOOT_Elemental Displacer|r
    >>Kill |cRXP_ENEMY_Kagrosh|r and loot |cRXP_LOOT_Kagrosh's Pack|r
    .complete 10602,1 --Infernal Oversoul slain (1)
    .complete 10602,2 --Elemental Displacer (1)
    .complete 10601,1 --Kagrosh's Pack (1)
    .mob Infernal Oversoul
    .mob Deathforge Tinkerer
    .mob Deathforge Smith
    .mob Kagrosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10601 >>Turn in The Fate of Kagrosh while you are here
    .isQuestComplete 10601
    .target Scout Zagran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10602 >>Turn in The Summoning Chamber while you are here
    .isQuestComplete 10602
    .target Scout Zagran
step
    #loop
    .goto 104,35.39,36.68,0
    .goto 104,35.39,36.68,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.38,41.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10777 >>Turn in Asghar's Totem
    .accept 10778 >>Accept The Rod of Lianthe
    .unitscan Parshah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10602 >>Turn in The Summoning Chamber
    .turnin 10601 >>Turn in The Fate of Kagrosh
    .accept 10603 >>Accept Bring Down the Warbringer!
    .target Scout Zagran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,38.95,46.89
    >>Kill |cRXP_ENEMY_Warbringer Razuun|r and loot |cRXP_LOOT_Razuun's Orders|r
    >>Kill |cRXP_ENEMY_Warbringer Razuun|r
    .complete 10603,2 --Razuun's Orders (1)
    .complete 10603,1 --Warbringer Razuun slain (1)
    .mob Warbringer Razuun
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10681 >>Turn in The Hand of Gul'dan << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 10458 >>Accept Enraged Spirits of Fire and Earth
    .target Earthmender Torlok
step
    #loop
    .goto 104,42.80,42.84,0
    .goto 104,42.80,42.84,40,0
    .goto 104,44.59,40.29,40,0
    .goto 104,47.86,41.14,40,0
    >>Kill |cRXP_ENEMY_Enraged Earth Spirits|r
    >>Kill |cRXP_ENEMY_Enraged Fire Spirits|r
    .complete 10458,1 --Enraged Earth Spirit slain (8)
    .complete 10458,2 --Enraged Fire Spirit slain (8)
    .mob Enraged Earth Spirit
    .mob Enraged Fire Spirit
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10458 >>Turn in Enraged Spirits of Fire and Earth
    .accept 10480 >>Accept Enraged Spirits of Water
    .target Earthmender Torlok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,50.98,29.97,0
    .goto 104,50.98,29.97,40,0
    .goto 104,54.68,28.87,40,0
    .goto 104,48.64,23.93,40,0
    >>Interact with |cRXP_FRIENDLY_Greater Felfire Diemetradons|r
    .complete 10672,1 --Greater Felfire Diemetradon (8)
    .target Greater Felfire Diemetradon
step
    #loop
    .goto 104,49.27,22.66,0
    .goto 104,49.27,22.66,40,0
    .goto 104,53.87,27.47,40,0
    >>Kill |cRXP_ENEMY_Enraged Water Spirits|r
    .complete 10480,1 --Enraged Water Spirit slain (8)
    .mob Enraged Water Spirit
step
    .goto 104,51.87,18.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Wilda|r
    .accept 10451 >>Accept Escape from Coilskar Cistern
    .target Earthmender Wilda
step
    .goto 104,53.14,25.17
    >>Earthmender Wilda Escorted to Safety
    .complete 10451,1 --Earthmender Wilda Escorted to Safety
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,54.84,49.39
    >>Kill |cRXP_ENEMY_Uvuros|r and loot |cRXP_LOOT_Uvuros' Fiery Mane|r
    .complete 10647,1 --Uvuros' Fiery Mane (1)
    .mob Uvuros
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,52.45,59.19
    >>The Path of Conquest Discovered
    .complete 10750,1 --The Path of Conquest Discovered
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Wind Rider|r
    .turnin 10750 >>Turn in The Path of Conquest
    .accept 10751 >>Accept Breaching the Path
    .target Kor'kron Wind Rider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along53
    >>As you go: Kill |cRXP_ENEMY_Eclipsion Cavaliers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10751,2 --Eclipsion Cavalier slain (10)
    .mob Eclipsion Cavalier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,52.57,59.25,0
    .goto 104,52.57,59.25,40,0
    .goto 104,52.94,63.82,40,0
    .goto 104,52.99,67.30,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Spellbinders|r
    >>Kill |cRXP_ENEMY_Eclipsion Soldiers|r
    .complete 10751,3 --Eclipsion Spellbinder slain (10)
    .complete 10751,1 --Eclipsion Soldier slain (20)
    .mob Eclipsion Spellbinder
    .mob Eclipsion Soldier
step
    #label Along53
    .goto 104,51.61,64.92
    >>Kill |cRXP_ENEMY_Val'zareq the Conqueror|r and loot |cRXP_LOOT_The Journal of Val'zareq|r. Use it to start the quest
    .collect 31345,1,10793 --The Journal of Val'zareq (1)
    .accept 10793 >>Accept The Journal of Val'zareq: Portends of War
    .use 31345
    .mob Val'zareq the Conqueror
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,51.29,65.18,0
    .goto 104,51.29,65.18,40,0
    .goto 104,53.02,60.51,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Cavaliers|r
    .complete 10751,2 --Eclipsion Cavalier slain (10)
    .mob Eclipsion Cavalier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Wind Rider|r
    .turnin 10751 >>Turn in Breaching the Path
    .accept 10765 >>Accept When Worlds Collide...
    .target Kor'kron Wind Rider
step
    #loop
    .goto 104,48.59,63.46,0
    .goto 104,48.59,63.46,40,0
    .goto 104,49.20,59.72,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Centurions|r, |cRXP_ENEMY_Eclipsion Archmages|r and |cRXP_ENEMY_Eclipsion Bloodwarders|r. Loot them for |cRXP_LOOT_Lianthe's Key|r
    .complete 10778,1 --Lianthe's Key (1)
    .mob Eclipsion Centurion
    .mob Eclipsion Archmage
    .mob Eclipsion Bloodwarder
step
    .goto 104,47.55,71.69
    >>Open the |cRXP_PICK_Lianthe's Strongbox|r. Loot it for |cRXP_LOOT_Rod of Lianthe|r
    .complete 10778,2 --Rod of Lianthe (1)
step
    .goto 104,51.38,72.79
    >>Click the |cRXP_PICK_Crystal Prison|r
    .turnin 10793 >>Turn in The Journal of Val'zareq: Portends of War
    .accept 10781 >>Accept Battle of the Crimson Watch
step
    .goto 104,51.75,72.79
    >>Crimson Sigil Forces Annihilated
    .complete 10781,1 --Crimson Sigil Forces Annihilated
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,52.95,69.64
    >>Kill |cRXP_ENEMY_Corok the Mighty|r
    >>Kill |cRXP_ENEMY_Chancellor Bloodleaf|r and loot |cRXP_LOOT_Illidan's Command|r
    >>Kill |cRXP_ENEMY_Chancellor Bloodleaf|r
    .complete 10765,2 --Corok the Mighty slain (1)
    .complete 10765,3 --Illidan's Command (1)
    .complete 10765,1 --Chancellor Bloodleaf slain (1)
    .mob Corok the Mighty
    .mob Chancellor Bloodleaf
step
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10633 >>Turn in Teron Gorefiend - Lore and Legend << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 10634 >>Accept Divination: Gorefiend's Armor
    .accept 10635 >>Accept Divination: Gorefiend's Cloak
    .accept 10636 >>Accept Divination: Gorefiend's Truncheon
    .target Ancient Shadowmoon Spirit
step
    .goto 104,67.04,87.07
    >>Kill |cRXP_ENEMY_Vhel'kur|r and loot |cRXP_LOOT_Gorefiend's Armor|r
    .complete 10634,1 --Gorefiend's Armor (1)
    .mob Vhel'kur
step
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10634 >>Turn in Divination: Gorefiend's Armor
    .target Ancient Shadowmoon Spirit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Wind Rider|r
    .turnin 10765 >>Turn in When Worlds Collide...
    .accept 10768 >>Accept Tabards of the Illidari
    .target Kor'kron Wind Rider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,52.57,59.25,0
    .goto 104,52.57,59.25,40,0
    .goto 104,52.89,63.02,40,0
    >>Kill |cRXP_ENEMY_Val'zareq the Conquerors|r, |cRXP_ENEMY_Eclipsion Soldiers|r, |cRXP_ENEMY_Eclipsion Spellbinders|r and |cRXP_ENEMY_Eclipsion Cavaliers|r. Loot them for |cRXP_LOOT_Illidari Tabard|r
    .complete 10768,1 --Illidari Tabard (10)
    .mob Val'zareq the Conqueror
    .mob Eclipsion Soldier
    .mob Eclipsion Spellbinder
    .mob Eclipsion Cavalier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Wind Rider|r
    .turnin 10768 >>Turn in Tabards of the Illidari
    .accept 10769 >>Accept Dissension Amongst the Ranks...
    .target Kor'kron Wind Rider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,41.23,71.44,0
    .goto 104,41.23,71.44,40,0
    .goto 104,40.00,71.27,40,0
    .goto 104,36.87,70.25,40,0
    >>Kill |cRXP_ENEMY_Crazed Colossus|r
    .complete 10769,1 --Crazed Colossus slain (5)
    .mob Crazed Colossus
step
    .goto 104,36.80,54.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Ironshaper|r
    .target Daggle Ironshaper
    .home >>Set your Hearthstone to Daggle Ironshaper's inn
step
    .goto 104,34.10,47.35
    >>Kill |cRXP_ENEMY_Ghostrider of Karabor|r and loot |cRXP_LOOT_Gorefiend's Truncheon|r
    .complete 10636,1 --Gorefiend's Truncheon (1)
    .mob Ghostrider of Karabor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10603 >>Turn in Bring Down the Warbringer!
    .accept 10604 >>Accept Gaining Access
    .target Blood Guard Gulmok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.35,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warcaller Sardon Truslice|r
    .turnin 10647 >>Turn in Wanted: Uvuros, Scourge of Shadowmoon
    .target Warcaller Sardon Truslice
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .turnin 10672 >>Turn in Frankly, It Makes No Sense...
    .accept 10673 >>Accept Felspine the Greater
    .target Researcher Tiorus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .turnin 10769 >>Turn in Dissension Amongst the Ranks...
    .target Overlord Or'barokh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,24.78,30.28,0
    .goto 104,24.78,30.28,40,0
    .goto 104,22.95,34.50,40,0
    >>Kill |cRXP_ENEMY_Mo'arg Weaponsmith|r and loot |cRXP_LOOT_Legion Teleporter Control|r
    .complete 10604,1 --Legion Teleporter Control (1)
    .mob Mo'arg Weaponsmith
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10604 >>Turn in Gaining Access
    .accept 10767 >>Accept Invasion Point: Cataclysm
    .target Blood Guard Gulmok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,27.49,21.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nakansi|r
    .turnin 10767 >>Turn in Invasion Point: Cataclysm
    .accept 10611 >>Accept The Art of Fel Reaver Maintenance
    .target Nakansi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,28.99,20.35
    >>Kill |cRXP_ENEMY_Doctor Gutricks|r and |cRXP_ENEMY_Doctor Maleficus|r. Loot them for |cRXP_LOOT_The Doctor's Key|r
    >>Open the |cRXP_PICK_The Doctor's Strongbox|r. Loot it for |cRXP_LOOT_The Art of Fel Reaver Maintenance|r
    .complete 10611,2 --The Doctor's Key (1)
    .complete 10611,1 --The Art of Fel Reaver Maintenance (1)
    .mob Doctor Gutrick
    .mob Doctor Maleficus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,27.49,21.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nakansi|r
    .turnin 10611 >>Turn in The Art of Fel Reaver Maintenance
    .accept 10613 >>Accept The Fel and the Furious
    .target Nakansi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,29.62,19.14,0
    .goto 104,29.62,19.14,40,0
    .goto 104,32.45,21.41,40,0
    >>Click the |cRXP_PICK_Deathforged Infernal|r
    .complete 10613,1 --Deathforged Infernal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,27.49,21.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nakansi|r
    .turnin 10613 >>Turn in The Fel and the Furious
    .accept 10745 >>Accept News of Victory
    .target Nakansi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .turnin 10745 >>Turn in News of Victory
    .target Overlord Or'barokh
step
    #loop
    .goto 104,35.38,41.75,0
    .goto 104,35.38,41.75,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.39,36.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10778 >>Turn in The Rod of Lianthe
    .accept 10780 >>Accept Sketh'lon Feathers
    .unitscan Parshah
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10480 >>Turn in Enraged Spirits of Water
    .turnin 10451 >>Turn in Escape from Coilskar Cistern
    .accept 10481 >>Accept Enraged Spirits of Air
    .target Earthmender Torlok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,56.10,44.33
    >>Kill |cRXP_ENEMY_Felspine the Greater|r and loot |cRXP_LOOT_Felspine's Hide|r
    .complete 10673,1 --Felspine's Hide (1)
    .mob Felspine the Greater
step
    #loop
    .goto 104,64.04,51.62,0
    .goto 104,64.04,51.62,40,0
    .goto 104,64.38,48.24,40,0
    >>Kill |cRXP_ENEMY_Cleric of Karabor|r and loot |cRXP_LOOT_Gorefiend's Cloak|r
    .complete 10635,1 --Gorefiend's Cloak (1)
    .mob Cleric of Karabor
step
    #loop
    .goto 104,65.77,62.48,0
    .goto 104,65.77,62.48,40,0
    .goto 104,61.70,65.84,40,0
    >>Kill |cRXP_ENEMY_Enraged Air Spirits|r
    .complete 10481,1 --Enraged Air Spirit slain (8)
    .mob Enraged Air Spirit
step
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10635 >>Turn in Divination: Gorefiend's Cloak
    .turnin 10636 >>Turn in Divination: Gorefiend's Truncheon
    .accept 10639 >>Accept Teron Gorefiend, I am... << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Ancient Shadowmoon Spirit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,58.10,70.58
    >>Kill |cRXP_ENEMY_Karsius the Ancient Watcher|r
    .complete 10639,1 --Karsius the Ancient Watcher slain (1)
    .mob Karsius the Ancient Watcher
step
    #loop
    .goto 104,43.69,61.70,0
    .goto 104,43.69,61.70,40,0
    .goto 104,44.78,58.30,40,0
    .goto 104,43.52,55.83,40,0
    >>Pick up |cRXP_PICK_Sketh'lon Feather|r from the ground
    .complete 10780,1 --Sketh'lon Feather (8)
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10481 >>Turn in Enraged Spirits of Air
    .accept 10513 >>Accept Oronok Torn-heart
    .target Earthmender Torlok
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10513 >>Turn in Oronok Torn-heart
    .accept 10514 >>Accept I Was A Lot Of Things...
    .target Oronok Torn-heart
step
    #loop
    .goto 104,52.31,19.04,0
    .goto 104,52.31,19.04,40,0
    .goto 104,55.01,15.97,40,0
    >>Pick up |cRXP_PICK_Shadowmoon Tuber|r from the ground
    .complete 10514,1 --Shadowmoon Tuber (10)
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10514 >>Turn in I Was A Lot Of Things...
    .accept 10515 >>Accept A Lesson Learned
    .target Oronok Torn-heart
step
    #loop
    .goto 104,57.28,19.47,0
    .goto 104,57.28,19.47,40,0
    .goto 104,57.08,15.22,40,0
    >>Click the |cRXP_PICK_Ravenous Flayer Egg|r
    .complete 10515,1 --Ravenous Flayer Egg
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10515 >>Turn in A Lesson Learned
    .accept 10519 >>Accept The Cipher of Damnation - Truth and History
    .target Oronok Torn-heart
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .complete 10519,1 --Oronok Torn-heart
    .target Oronok Torn-heart
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10519 >>Turn in The Cipher of Damnation - Truth and History
    .accept 10521 >>Accept Grom'tor, Son of Oronok
    .accept 10527 >>Accept Ar'tor, Son of Oronok
    .accept 10546 >>Accept Borak, Son of Oronok
    .target Oronok Torn-heart
step
    .goto 104,44.62,23.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10521 >>Turn in Grom'tor, Son of Oronok
    .accept 10522 >>Accept The Cipher of Damnation - Grom'tor's Charge
    .target Grom'tor, Son of Oronok
step
    #loop
    .goto 104,45.63,26.70,0
    .goto 104,45.63,26.70,40,0
    .goto 104,47.95,28.59,40,0
    .goto 104,47.49,31.46,40,0
    >>Kill |cRXP_ENEMY_Coilskar Defenders|r, |cRXP_ENEMY_Coilskar Sirens|r and |cRXP_ENEMY_Coilskar Waterkeepers|r. Loot them for |cRXP_LOOT_Coilskar Chest Key|r
    .collect 30426,1,10522,1 --Coilskar Chest Key (1)
    .mob Coilskar Defender
    .mob Coilskar Siren
    .mob Coilskar Waterkeeper
step
    #loop
    .goto 104,47.03,29.26,0
    .goto 104,47.03,29.26,40,0
    .goto 104,45.88,26.34,40,0
    >>Open the |cRXP_PICK_Coilskar Chest|r. Loot it for |cRXP_LOOT_First Fragment of the Cipher of Damnation|r
    .complete 10522,1 --First Fragment of the Cipher of Damnation (1)
step
    .goto 104,44.62,23.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10522 >>Turn in The Cipher of Damnation - Grom'tor's Charge
    .accept 10523 >>Accept The Cipher of Damnation - The First Fragment Recovered
    .target Grom'tor, Son of Oronok
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10523 >>Turn in The Cipher of Damnation - The First Fragment Recovered
    .target Oronok Torn-heart
step
    #loop
    .goto 104,35.39,36.68,0
    .goto 104,35.39,36.68,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.38,41.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10780 >>Turn in Sketh'lon Feathers
    .accept 10782 >>Accept Imbuing the Headpiece
    .turnin 10782 >>Turn in Imbuing the Headpiece
    .accept 10808 >>Accept Thwart the Dark Conclave
    .unitscan Parshah
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10546 >>Turn in Borak, Son of Oronok
    .accept 10547 >>Accept Of Thistleheads and Eggs...
    .target Borak, Son of Oronok
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10550 >>Turn in The Bundle of Bloodthistle
    .target Borak, Son of Oronok
    .isOnQuest 10550
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10570 >>Accept To Catch A Thistlehead
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10550 --any of: The Bundle of Bloodthistle
    .xp <68,1
step
    .goto 104,48.96,57.60
    >>Kill |cRXP_ENEMY_Envoy Icarius|r and loot |cRXP_LOOT_Stormrage Missive|r
    .complete 10570,1 --Stormrage Missive (1)
    .mob Envoy Icarius
    .isOnQuest 10570
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10570 >>Turn in To Catch A Thistlehead
    .target Borak, Son of Oronok
    .isOnQuest 10570
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10576 >>Accept The Shadowmoon Shuffle
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10570 --any of: To Catch A Thistlehead
    .xp <68,1
step
    #loop
    .goto 104,49.20,59.72,0
    .goto 104,49.20,59.72,40,0
    .goto 104,48.59,63.46,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Centurions|r, |cRXP_ENEMY_Eclipsion Blood Knights|r, |cRXP_ENEMY_Eclipsion Archmages|r and |cRXP_ENEMY_Eclipsion Bloodwarders|r. Loot them for |cRXP_LOOT_Eclipsion Armor|r
    .complete 10576,1 --Eclipsion Armor (1)
    .mob Eclipsion Centurion
    .mob Eclipsion Blood Knight
    .mob Eclipsion Archmage
    .mob Eclipsion Bloodwarder
    .isOnQuest 10576
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10576 >>Turn in The Shadowmoon Shuffle
    .target Borak, Son of Oronok
    .isOnQuest 10576
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10577 >>Accept What Illidan Wants, Illidan Gets...
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10576 --any of: The Shadowmoon Shuffle
    .xp <68,1
step
    #loop
    .goto 104,44.23,56.40,0
    .goto 104,44.23,56.40,40,0
    .goto 104,44.31,59.44,40,0
    >>Pick up |cRXP_PICK_Rotten Arakkoa Egg|r from the ground
    .complete 10547,1 --Rotten Arakkoa Egg (10)
step
    .goto 104,40.36,61.21
    >>Slay the Dark Conclave Ritualists and use the Staff of Parshah to end the Dark Conclave's summoning ritual, then return to Parshah in the Magma Fields.
    .complete 10808,1 --Summoned Old God
    .target Summoned Old God
step
    .goto 104,46.45,71.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Commander Ruusk|r
    .complete 10577,1 --Grand Commander Ruusk
    .target Grand Commander Ruusk
    .isOnQuest 10577
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10577 >>Turn in What Illidan Wants, Illidan Gets...
    .target Borak, Son of Oronok
    .isOnQuest 10577
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10578 >>Accept The Cipher of Damnation - Borak's Charge
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10577 --any of: What Illidan Wants, Illidan Gets...
    .xp <68,1
step
    .goto 104,57.28,50.70
    >>Kill |cRXP_ENEMY_Ruul the Darkener|r and loot |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
    .complete 10578,1 --Third Fragment of the Cipher of Damnation (1)
    .mob Ruul the Darkener
    .isOnQuest 10578
step
    .goto 104,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .accept 10622 >>Accept Proof of Allegiance
    .target Sanoru
    .isQuestTurnedIn 10575,10686 --any of: The Warden's Cage, The Warden's Cage
    .xp <68,1
step
    .goto 104,58.03,49.13
    >>Kill |cRXP_ENEMY_Zandras|r
    .complete 10622,1 --Zandras slain (1)
    .mob Zandras
    .isOnQuest 10622
step
    .goto 104,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .turnin 10622 >>Turn in Proof of Allegiance
    .target Sanoru
    .isOnQuest 10622
step
    .goto 104,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .accept 10628 >>Accept Akama
    .target Sanoru
    .isQuestTurnedIn 10622 --any of: Proof of Allegiance
    .xp <68,1
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10944 >>Turn in The Secret Compromised
    .target Akama
    .isOnQuest 10944
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10628 >>Turn in Akama
    .target Akama
    .isOnQuest 10628
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10706 >>Turn in A Mysterious Portent
    .target Akama
    .isOnQuest 10706
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .accept 10707 >>Accept The Ata'mal Terrace
    .target Akama
    .isQuestTurnedIn 10706 --any of: A Mysterious Portent
    .xp <68,1
step
    .goto 104,65.34,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    .turnin 10949 >>Turn in Entry Into the Black Temple
    .target Xi'ri
    .isOnQuest 10949
step
    .goto 104,72.33,34.83
    >>Kill |cRXP_ENEMY_Shadowlord Deathwail|r and loot |cRXP_LOOT_Heart of Fury|r
    .complete 10707,1 --Heart of Fury (1)
    .mob Shadowlord Deathwail
    .isOnQuest 10707
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10707 >>Turn in The Ata'mal Terrace
    .target Akama
    .isOnQuest 10707
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .accept 11052 >>Accept Akama's Promise
    .target Akama
    .isQuestTurnedIn 10707 --any of: The Ata'mal Terrace
    .xp <68,1
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10578 >>Turn in The Cipher of Damnation - Borak's Charge
    .target Borak, Son of Oronok
    .isOnQuest 10578
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10579 >>Accept The Cipher of Damnation - The Third Fragment Recovered
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10578 --any of: The Cipher of Damnation - Borak's Charge
    .xp <68,1
step
    .goto 104,29.63,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10527 >>Turn in Ar'tor, Son of Oronok
    .accept 10528 >>Accept Demonic Crystal Prisons
    .target Ar'tor, Son of Oronok
step
    .goto 104,28.30,47.61
    >>Kill |cRXP_ENEMY_Painmistress Gabrissa|r and loot |cRXP_LOOT_Crystalline Key|r
    .complete 10528,1 --Crystalline Key (1)
    .mob Painmistress Gabrissa
step
    .goto 104,29.63,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10528 >>Turn in Demonic Crystal Prisons
    .target Ar'tor, Son of Oronok
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .accept 10537 >>Accept Lohn'goron, Bow of the Torn-heart
    .target Spirit of Ar'tor
step
    #loop
    .goto 104,29.09,48.62,0
    .goto 104,29.09,48.62,40,0
    .goto 104,31.31,50.51,40,0
    .goto 104,33.50,47.95,40,0
    >>Kill |cRXP_ENEMY_Illidari Dreadbringers|r, |cRXP_ENEMY_Illidari Painlashers|r, |cRXP_ENEMY_Illidari Shocktroopers|r and |cRXP_ENEMY_Illidari Shadowstalkers|r. Loot them for |cRXP_LOOT_Lohn'goron, Bow of the Torn-Heart|r
    .complete 10537,1 --Lohn'goron, Bow of the Torn-Heart (1)
    .mob Illidari Dreadbringer
    .mob Illidari Painlasher
    .mob Illidari Shocktrooper
    .mob Illidari Shadowstalker
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10537 >>Turn in Lohn'goron, Bow of the Torn-heart
    .accept 10540 >>Accept The Cipher of Damnation - Ar'tor's Charge
    .target Spirit of Ar'tor
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10540 >>Turn in The Cipher of Damnation - Ar'tor's Charge
    .target Spirit of Ar'tor
    .isQuestComplete 10540
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .accept 10541 >>Accept The Cipher of Damnation - The Second Fragment Recovered
    .target Spirit of Ar'tor
    .isQuestTurnedIn 10540 --any of: The Cipher of Damnation - Ar'tor's Charge
    .xp <68,1
step
    #loop
    .goto 104,35.38,41.75,0
    .goto 104,35.38,41.75,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.39,36.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10808 >>Turn in Thwart the Dark Conclave
    .unitscan Parshah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .turnin 10673 >>Turn in Felspine the Greater
    .target Researcher Tiorus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 10639 >>Turn in Teron Gorefiend, I am...
    .target Chief Apothecary Hildagard
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10541 >>Turn in The Cipher of Damnation - The Second Fragment Recovered
    .target Oronok Torn-heart
    .isOnQuest 10541
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10579 >>Turn in The Cipher of Damnation - The Third Fragment Recovered
    .target Oronok Torn-heart
    .isOnQuest 10579
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .accept 10588 >>Accept The Cipher of Damnation
    .target Oronok Torn-heart
    .isQuestTurnedIn 10541 --The Cipher of Damnation - The Second Fragment Recovered
    .isQuestTurnedIn 10579 --The Cipher of Damnation - The Third Fragment Recovered
    .xp <68,1
step
    .goto 104,43.20,46.20
    >>Kill |cRXP_ENEMY_Cyrukh the Firelord|r
    .complete 10588,1 --Cyrukh the Firelord slain (1)
    .mob Cyrukh the Firelord
    .isOnQuest 10588
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10588 >>Turn in The Cipher of Damnation
    .target Earthmender Torlok
    .isOnQuest 10588
step
    +|cRXP_WARN_That is all of Shadowmoon Valley for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shattrath City|r: Of Thistleheads and Eggs..., Battle of the Crimson Watch, Akama's Promise
    >>|cRXP_FRIENDLY_Terokkar Forest|r: The Hermit Smith << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Cipher of Damnation - Ar'tor's Charge
step
    +|cRXP_WARN_Suggested next zones at level 70|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.1 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Howling Fjord|r (about 0.6 levels of quests, starting around Lurielle). Completing this step loads the guide for Netherstorm --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Shadowmoon Valley is planned from level 73.|r Load its guide for level 73 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 69 - 74 Shadowmoon Valley
#subweight -69
#name 73-74 Shadowmoon Valley: around Neltharaku
--RouteBuilder:next
#next Zone Routes (Horde)\72-75 Dragonblight;Zone Routes (Horde)\70-72 Howling Fjord: around Lurielle;Zone Routes (Horde)\73-75 Grizzly Hills: around Drakuru

step
    #loop
    .goto 104,59.19,58.69,0
    .goto 104,59.19,58.69,40,0
    .goto 104,61.22,59.20,40,0
    .goto 104,62.21,59.88,40,0
    .goto 104,62.32,59.59,40,0
    .goto 104,62.82,60.08,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordenai|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10804 >>Accept Kindness
    .unitscan Mordenai
step
    #loop
    .goto 104,60.08,57.69,0
    .goto 104,60.08,57.69,40,0
    .goto 104,62.37,60.81,40,0
    .goto 104,63.12,54.43,40,0
    >>Kill |cRXP_ENEMY_Rocknail Flayer|r and loot |cRXP_LOOT_Rocknail Flayer Carcass|r
    >>Kill |cRXP_ENEMY_Rocknail Ripper|r and loot |cRXP_LOOT_Rocknail Flayer Giblets|r
    .collect 31372,1,10804,1 --Rocknail Flayer Carcass (1)
    .collect 31373,1,10804,1 --Rocknail Flayer Giblets (1)
    .mob Rocknail Flayer
    .mob Rocknail Ripper
step
    #loop
    .goto 104,60.20,58.28,0
    .goto 104,60.20,58.28,40,0
    .goto 104,63.79,57.39,40,0
    >>Mordenai at Netherwing Fields in Shadowmoon Valley wants you to feed 8 Mature Netherwing Drakes.
    .complete 10804,1 --Mature Netherwing Drake (8)
    .target Mature Netherwing Drake
step
    #loop
    .goto 104,62.82,60.08,0
    .goto 104,62.82,60.08,40,0
    .goto 104,62.32,59.59,40,0
    .goto 104,62.21,59.88,40,0
    .goto 104,61.22,59.20,40,0
    .goto 104,59.19,58.69,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordenai|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10804 >>Turn in Kindness
    .accept 10811 >>Accept Seek Out Neltharaku
    .unitscan Mordenai
step
    #loop
    .goto 104,57.59,53.95,0
    .goto 104,57.59,53.95,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,71.92,61.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10811 >>Turn in Seek Out Neltharaku
    .accept 10814 >>Accept Neltharaku's Tale
    .unitscan Neltharaku
step
    .goto 104,61.31,59.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r
    .complete 10814,1 --Neltharaku
    .target Neltharaku
step
    #loop
    .goto 104,57.59,53.95,0
    .goto 104,57.59,53.95,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,71.92,61.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10814 >>Turn in Neltharaku's Tale
    .accept 10836 >>Accept Infiltrating Dragonmaw Fortress
    .unitscan Neltharaku
step
    #loop
    .goto 104,68.17,61.21,0
    .goto 104,68.17,61.21,40,0
    .goto 104,70.48,63.54,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Wranglers|r, |cRXP_ENEMY_Dragonmaw Subjugators|r, |cRXP_ENEMY_Dragonmaw Drake-Riders|r and |cRXP_ENEMY_Dragonmaw Shamans|r
    .complete 10836,1 --Dragonmaw Wrangler (8)
    .mob Dragonmaw Wrangler
    .mob Dragonmaw Subjugator
    .mob Dragonmaw Drake-Rider
    .mob Dragonmaw Shaman
step
    #loop
    .goto 104,71.92,61.50,0
    .goto 104,71.92,61.50,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,57.59,53.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10836 >>Turn in Infiltrating Dragonmaw Fortress
    .accept 10837 >>Accept To Netherwing Ledge!
    .unitscan Neltharaku
step
    #loop
    .goto 104,69.32,80.80,0
    .goto 104,69.32,80.80,40,0
    .goto 104,71.95,82.61,40,0
    .goto 104,68.20,85.75,40,0
    >>Pick up |cRXP_PICK_Nethervine Crystal|r from the ground
    .complete 10837,1 --Nethervine Crystal (12)
step
    .goto 104,65.43,90.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistress of the Mines|r
    .accept 11082 >>Accept Seeker of Truth
    .target Mistress of the Mines
    .isQuestTurnedIn 11081 --any of: The Great Murkblood Revolt
    .xp <70,1
step
    #loop
    .goto 104,69.33,80.46,0
    .goto 104,69.33,80.46,40,0
    .goto 104,71.10,80.71,40,0
    .goto 104,74.73,84.68,40,0
    >>Kill |cRXP_ENEMY_Murkblood Overseers|r
    .complete 11082,2 --Murkblood Overseer (8)
    .mob Murkblood Overseer
    .isOnQuest 11082
step
    #loop
    .goto 104,69.33,80.46,0
    .goto 104,69.33,80.46,40,0
    .goto 104,71.10,80.71,40,0
    >>Kill |cRXP_ENEMY_Murkblood Overseer|r and loot |cRXP_LOOT_Hand of the Overseer|r
    .complete 11082,1 --Hand of the Overseer (1)
    .mob Murkblood Overseer
    .isOnQuest 11082
step
    .goto 104,65.43,90.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistress of the Mines|r
    .turnin 11082 >>Turn in Seeker of Truth
    .target Mistress of the Mines
    .isOnQuest 11082
step
    #loop
    .goto 104,71.92,61.50,0
    .goto 104,71.92,61.50,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,57.59,53.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10837 >>Turn in To Netherwing Ledge!
    .accept 10854 >>Accept The Force of Neltharaku
    .unitscan Neltharaku
step
    #loop
    .goto 104,68.63,61.40,0
    .goto 104,68.63,61.40,40,0
    .goto 104,72.23,62.75,40,0
    >>Interact with |cRXP_FRIENDLY_Enslaved Netherwing Drakes|r
    .complete 10854,1 --Enslaved Netherwing Drake (5)
    .target Enslaved Netherwing Drake
step
    #loop
    .goto 104,71.92,61.50,0
    .goto 104,71.92,61.50,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,57.59,53.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10854 >>Turn in The Force of Neltharaku
    .accept 10858 >>Accept Karynaku
    .unitscan Neltharaku
step
    .goto 104,69.86,61.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karynaku|r
    .turnin 10858 >>Turn in Karynaku
    .accept 10866 >>Accept Zuluhed the Whacked << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Karynaku
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,71.00,62.20
    >>Kill |cRXP_ENEMY_Zuluhed the Whacked|r
    >>Kill |cRXP_ENEMY_Zuluhed the Whacked|r and loot |cRXP_LOOT_Zuluhed's Key|r
    .complete 10866,2 --Zuluhed the Whacked (1)
    .collect 31664,1,10866,1 --Zuluhed's Key (1)
    .mob Zuluhed the Whacked
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,69.84,61.29
    >>Click the |cRXP_PICK_Zuluhed's Chains|r
    .complete 10866,1 --Zuluhed's Chains
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 104,69.86,61.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karynaku|r
    .turnin 10866 >>Turn in Zuluhed the Whacked
    .accept 10870 >>Accept Ally of the Netherwing
    .target Karynaku
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 104,62.82,60.08,0
    .goto 104,62.82,60.08,40,0
    .goto 104,62.32,59.59,40,0
    .goto 104,62.21,59.88,40,0
    .goto 104,61.22,59.20,40,0
    .goto 104,59.19,58.69,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordenai|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10870 >>Turn in Ally of the Netherwing
    .unitscan Mordenai
step
    .goto 104,65.34,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    .accept 13429 >>Accept A Distraction for Akama
    .target Xi'ri
    .isQuestTurnedIn 10949 --any of: Entry Into the Black Temple
    .xp <70,1
step
    .goto 104,66.29,44.06
    >>Help Akama and Maiev enter the Black Temple.
    .complete 13429,1 --Help Akama and Maiev enter the Black Temple.
    .isOnQuest 13429
step
    .goto 104,65.34,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    .turnin 13429 >>Turn in A Distraction for Akama
    .target Xi'ri
    .isOnQuest 13429
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .accept 10948 >>Accept The Hostage Soul
    .target Akama
    .isQuestTurnedIn 10947 --any of: An Artifact From the Past
    .xp <70,1
step
    .goto 104,56.32,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roldemar|r
    .target Roldemar
    .home >>Set your Hearthstone to Roldemar's inn
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10540 >>Turn in The Cipher of Damnation - Ar'tor's Charge
    .target Spirit of Ar'tor
    .isQuestComplete 10540
step
    +|cRXP_WARN_End of the Shadowmoon Valley route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shattrath City|r: The Hostage Soul
step
    +|cRXP_WARN_Suggested next zones at level 73|r: |cRXP_FRIENDLY_Dragonblight|r (about 0.8 levels of quests, starting around Aurastrasza), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for Dragonblight --RouteBuilder:next
]])
