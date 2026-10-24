-- 69-70 Shadowmoon Valley: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/tbc/Shadowmoon Valley.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#name 69-70 Shadowmoon Valley
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth

step
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 11048 >>Turn in Kroghan's Report
    .target Blood Guard Gulmok
    .isOnQuest 11048
step
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .accept 10595 >>Accept Besieged!
    .target Blood Guard Gulmok
step
    .goto 1948,31.02,29.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kargrul|r
    .accept 10760 >>Accept The Sketh'lon Wreckage
    .target Sergeant Kargrul
step
    .goto 1948,30.34,29.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drek'Gol|r
    .fp Shadowmoon Village >> Get the Shadowmoon Village flight path
    .target Drek'Gol
    .subzoneskip 3744,1
step
    .goto 1948,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .accept 10660 >>Accept What Strange Creatures...
    .target Researcher Tiorus
step
    .goto 1948,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 11046 >>Turn in Chief Apothecary Hildagard
    .target Chief Apothecary Hildagard
    .isOnQuest 11046
step
    .goto 1948,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .accept 10750 >>Accept The Path of Conquest
    .target Overlord Or'barokh
step
    #completewith Along8
    >>As you go: Kill |cRXP_ENEMY_Infernal Attacker (1)s|r and |cRXP_ENEMY_Infernal Attackers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10595,1 --Infernal Attacker (1) (8)
    .mob Infernal Attacker (1)
    .mob Infernal Attacker
step
    .goto 1948,29.09,29.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dama Wildmane|r
    .turnin 11047 >>Turn in The Apprentice's Request
    .target Dama Wildmane
    .isOnQuest 11047
step
    .goto 1948,29.31,29.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olrokk|r
    .turnin 11498 >>Turn in Learning to Fly
    .target Olrokk
    .isOnQuest 11498
step
    #label Along8
    .goto 1948,30.44,30.81
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10647 >>Accept Wanted: Uvuros, Scourge of Shadowmoon
step
    .goto 1948,36.80,54.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Ironshaper|r
    .target Daggle Ironshaper
    .home >>Set your Hearthstone to Daggle Ironshaper's inn
step
    .goto 1948,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .accept 10624 >>Accept A Haunted History
    .target Chief Apothecary Hildagard
step
    .goto 1948,28.49,26.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Splinthoof|r
    .accept 10681 >>Accept The Hand of Gul'dan
    .target Earthmender Splinthoof
step
    .goto 1948,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .accept 10702 >>Accept A Grunt's Work...
    .target Overlord Or'barokh
step
    #completewith Along15
    >>As you go: Pick up |cRXP_PICK_Ever-burning Ash|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10624,1 --Ever-burning Ash (15)
step
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Felfire Diemetradons|r. Loot them for |cRXP_LOOT_Felfire Spleen|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10660,1 --Felfire Spleen (8)
    .mob Felfire Diemetradon
step
    #label Along13
    #loop
    .goto 1948,30.39,34.47,0
    .goto 1948,30.39,34.47,40,0
    .goto 1948,33.52,35.62,40,0
    >>Kill |cRXP_ENEMY_Infernal Attacker (1)s|r and |cRXP_ENEMY_Infernal Attackers|r
    .complete 10595,1 --Infernal Attacker (1) (8)
    .mob Infernal Attacker (1)
    .mob Infernal Attacker
step
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10595 >>Turn in Besieged! while you are here
    .isQuestComplete 10595
    .target Blood Guard Gulmok
step
    #loop
    .goto 1948,36.09,30.79,0
    .goto 1948,36.09,30.79,40,0
    .goto 1948,39.71,30.35,40,0
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 1|r
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 2|r
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 3|r
    .complete 10760,1 --Sketh'lon Commander's Journal - Page 1 (1)
    .complete 10760,2 --Sketh'lon Commander's Journal - Page 2 (1)
    .complete 10760,3 --Sketh'lon Commander's Journal - Page 3 (1)
    .mob Dark Conclave Shadowmancer
    .mob Dark Conclave Ravenguard
    .mob Dark Conclave Hawkeye
step
    #label Along15
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10595 >>Turn in Besieged!
    .accept 10596 >>Accept To Legion Hold
    .target Blood Guard Gulmok
step
    .goto 1948,31.02,29.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kargrul|r
    .turnin 10760 >>Turn in The Sketh'lon Wreckage
    .accept 10761 >>Accept Find the Deserter
    .target Sergeant Kargrul
step
    .goto 1948,23.60,36.89
    >>Click the |cRXP_PICK_Legion Communication Device|r
    .complete 10596,1 --Legion Communication Device
step
    #completewith Along18
    >>As you go: Pick up |cRXP_PICK_Ever-burning Ash|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10624,1 --Ever-burning Ash (15)
step
    #label Along18
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10596 >>Turn in To Legion Hold
    .accept 10597 >>Accept Setting Up the Bomb
    .target Blood Guard Gulmok
step
    #completewith Along19
    >>As you go: Open the |cRXP_PICK_Fel Reaver Armor Plating|r. Loot it for |cRXP_LOOT_Fel Reaver Armor Plate|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10597,2 --Fel Reaver Armor Plate (1)
step
    #label Along19
    .goto 1948,23.18,35.15
    >>Kill |cRXP_ENEMY_Overseer Ripsaw|r and loot |cRXP_LOOT_Illidari-Bane Shard|r. Use it to start the quest
    .collect 30579,1,10623 --Illidari-Bane Shard (1)
    .accept 10623 >>Accept Illidari-Bane Shard
    .use 30579
    .mob Overseer Ripsaw
step
    .goto 1948,22.21,35.55
    >>Open the |cRXP_PICK_Fel Reaver Armor Plating|r. Loot it for |cRXP_LOOT_Fel Reaver Armor Plate|r
    .complete 10597,2 --Fel Reaver Armor Plate (1)
step
    .goto 1948,26.30,41.27
    >>Pick up |cRXP_PICK_Fel Reaver Power Core|r from the ground
    .complete 10597,1 --Fel Reaver Power Core (1)
step
    #completewith Along22
    >>As you go: Pick up |cRXP_PICK_Ever-burning Ash|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10624,1 --Ever-burning Ash (15)
step
    #label Along22
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10597 >>Turn in Setting Up the Bomb
    .accept 10598 >>Accept Blast the Infernals!
    .target Blood Guard Gulmok
step
    .goto 1948,29.79,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grokom Deatheye|r
    .turnin 10623 >>Turn in Illidari-Bane Shard
    .accept 10627 >>Accept Capture the Weapons
    .target Grokom Deatheye
step
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Morgroron|r and loot |cRXP_LOOT_Morgroron's Glaive|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10627,2 --Morgroron's Glaive (1)
    .mob Morgroron
step
    #label Along24
    .goto 1948,22.65,39.88
    >>Use the Fel Bomb while standing on the green glyph in Legion Hold to destroy the infernals, then report to Blood Guard Gulmok at Shadowmoon Village.
    .complete 10598,1 --Invis Legion Hold Glyph
    .target Invis Legion Hold Glyph
step
    .goto 1948,23.34,38.04
    >>Kill |cRXP_ENEMY_Morgroron|r and loot |cRXP_LOOT_Morgroron's Glaive|r
    >>Kill |cRXP_ENEMY_Makazradon|r and loot |cRXP_LOOT_Makazradon's Glaive|r
    .complete 10627,2 --Morgroron's Glaive (1)
    .complete 10627,1 --Makazradon's Glaive (1)
    .mob Morgroron
    .mob Makazradon
step
    #loop
    .goto 1948,36.51,44.36,0
    .goto 1948,36.51,44.36,40,0
    .goto 1948,38.45,40.52,40,0
    .goto 1948,41.40,41.18,40,0
    >>Kill |cRXP_ENEMY_Scorchshell Pincers|r, |cRXP_ENEMY_Felboars|r, |cRXP_ENEMY_Vilewing Chimaeras|r and |cRXP_ENEMY_Barrier Hills Felboar [PH] not useds|r
    >>Kill |cRXP_ENEMY_Felfire Diemetradons|r. Loot them for |cRXP_LOOT_Felfire Spleen|r
    >>Pick up |cRXP_PICK_Ever-burning Ash|r from the ground
    .complete 10702,1 --Scorchshell Pincer (8)
    .complete 10660,1 --Felfire Spleen (8)
    .complete 10624,1 --Ever-burning Ash (15)
    .mob Scorchshell Pincer
    .mob Felboar
    .mob Vilewing Chimaera
    .mob Barrier Hills Felboar [PH] not used
    .mob Felfire Diemetradon
step
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10598 >>Turn in Blast the Infernals!
    .accept 10599 >>Accept The Deathforge
    .target Blood Guard Gulmok
step
    .goto 1948,29.79,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grokom Deatheye|r
    .turnin 10627 >>Turn in Capture the Weapons
    .accept 10663 >>Accept The Hermit Smith
    .target Grokom Deatheye
step
    .goto 1948,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .turnin 10660 >>Turn in What Strange Creatures...
    .accept 10672 >>Accept Frankly, It Makes No Sense...
    .target Researcher Tiorus
step
    .goto 1948,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 10624 >>Turn in A Haunted History
    .accept 10625 >>Accept Spectrecles
    .target Chief Apothecary Hildagard
step
    #completewith Along31
    >>As you go: Kill |cRXP_ENEMY_Shadowmoon Zealots|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10625,1 --Shadowmoon Zealot slain (12)
    .mob Shadowmoon Zealot
step
    #label Along31
    .goto 1948,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .turnin 10702 >>Turn in A Grunt's Work...
    .target Overlord Or'barokh
step
    #loop
    .goto 1948,31.20,28.34,0
    .goto 1948,31.20,28.34,40,0
    .goto 1948,30.04,30.92,40,0
    >>Kill |cRXP_ENEMY_Shadowmoon Zealots|r
    .complete 10625,1 --Shadowmoon Zealot slain (12)
    .mob Shadowmoon Zealot
step
    .goto 1948,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 10625 >>Turn in Spectrecles
    .accept 10633 >>Accept Teron Gorefiend - Lore and Legend
    .target Chief Apothecary Hildagard
step
    #loop
    .goto 1948,35.39,36.68,0
    .goto 1948,35.39,36.68,40,0
    .goto 1948,35.30,38.93,40,0
    .goto 1948,35.38,41.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10761 >>Turn in Find the Deserter
    .accept 10777 >>Accept Asghar's Totem
    .unitscan Parshah
step
    .goto 1948,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10599 >>Turn in The Deathforge
    .accept 10600 >>Accept Minions of the Shadow Council
    .target Scout Zagran
step
    .goto 1948,39.65,29.33
    >>Kill |cRXP_ENEMY_Asghar|r and loot |cRXP_LOOT_Sketh'lon War Totem|r
    .complete 10777,1 --Sketh'lon War Totem (1)
    .mob Asghar
step
    #loop
    .goto 1948,39.55,35.72,0
    .goto 1948,39.55,35.72,40,0
    .goto 1948,39.17,39.52,40,0
    >>Kill |cRXP_ENEMY_Deathforge Summoners|r
    >>Kill |cRXP_ENEMY_Deathforge Guardians|r
    .complete 10600,2 --Deathforge Summoner slain (5)
    .complete 10600,1 --Deathforge Guardian slain (10)
    .mob Deathforge Summoner
    .mob Deathforge Guardian
step
    .goto 1948,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10600 >>Turn in Minions of the Shadow Council
    .accept 10602 >>Accept The Summoning Chamber
    .accept 10601 >>Accept The Fate of Kagrosh
    .target Scout Zagran
step
    #completewith Along41
    >>As you go: Kill |cRXP_ENEMY_Deathforge Tinkerers|r and |cRXP_ENEMY_Deathforge Smiths|r. Loot them for |cRXP_LOOT_Elemental Displacer|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10602,2 --Elemental Displacer (1)
    .mob Deathforge Tinkerer
    .mob Deathforge Smith
step
    .goto 1948,35.19,40.18
    >>Kill |cRXP_ENEMY_Kagrosh|r and loot |cRXP_LOOT_Kagrosh's Pack|r
    .complete 10601,1 --Kagrosh's Pack (1)
    .mob Kagrosh
step
    #completewith Along40
    >>As you go: Kill |cRXP_ENEMY_Infernal Oversoul|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10602,1 --End Infernal Summoning Ritual (1)
    .mob Infernal Oversoul
step
    #label Along40
    .goto 1948,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10601 >>Turn in The Fate of Kagrosh
    .target Scout Zagran
step
    #label Along41
    #loop
    .goto 1948,35.39,36.68,0
    .goto 1948,35.39,36.68,40,0
    .goto 1948,35.30,38.93,40,0
    .goto 1948,35.38,41.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10777 >>Turn in Asghar's Totem
    .accept 10778 >>Accept The Rod of Lianthe
    .unitscan Parshah
step
    .goto 1948,36.78,41.78
    >>Kill |cRXP_ENEMY_Deathforge Tinkerers|r and |cRXP_ENEMY_Deathforge Smiths|r. Loot them for |cRXP_LOOT_Elemental Displacer|r
    .complete 10602,2 --Elemental Displacer (1)
    .mob Deathforge Tinkerer
    .mob Deathforge Smith
step
    .goto 1948,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10681 >>Turn in The Hand of Gul'dan
    .accept 10458 >>Accept Enraged Spirits of Fire and Earth
    .target Earthmender Torlok
step
    #loop
    .goto 1948,44.94,38.12,0
    .goto 1948,44.94,38.12,40,0
    .goto 1948,47.86,41.14,40,0
    .goto 1948,48.66,36.43,40,0
    >>Kill |cRXP_ENEMY_Enraged Earth Spirits|r
    >>Kill |cRXP_ENEMY_Enraged Fire Spirits|r
    .complete 10458,1 --Enraged Earth Spirit slain (8)
    .complete 10458,2 --Enraged Fire Spirit slain (8)
    .mob Enraged Earth Spirit
    .mob Enraged Fire Spirit
step
    .goto 1948,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10458 >>Turn in Enraged Spirits of Fire and Earth
    .accept 10480 >>Accept Enraged Spirits of Water
    .target Earthmender Torlok
step
    .goto 1948,63.33,30.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maddix|r
    .fp Altar of Sha'tar >> Get the Altar of Sha'tar flight path
    .target Maddix
    .subzoneskip 3754,1
step
    #loop
    .goto 1948,57.73,52.02,0
    .goto 1948,57.73,52.02,40,0
    .goto 1948,60.13,41.73,40,0
    .goto 1948,61.47,41.11,40,0
    >>Interact with |cRXP_FRIENDLY_Greater Felfire Diemetradons|r
    .complete 10672,1 --Greater Felfire Diemetradon (8)
    .target Greater Felfire Diemetradon
step
    #loop
    .goto 1948,49.27,22.66,0
    .goto 1948,49.27,22.66,40,0
    .goto 1948,45.81,26.73,40,0
    .goto 1948,44.80,28.74,40,0
    >>Kill |cRXP_ENEMY_Enraged Water Spirits|r
    .complete 10480,1 --Enraged Water Spirit slain (5)
    .mob Enraged Water Spirit
step
    .goto 1948,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10480 >>Turn in Enraged Spirits of Water
    .accept 10481 >>Accept Enraged Spirits of Air
    .target Earthmender Torlok
step
    .goto 1948,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .turnin 10672 >>Turn in Frankly, It Makes No Sense...
    .accept 10673 >>Accept Felspine the Greater
    .target Researcher Tiorus
step
    .goto 1948,37.80,38.73
    >>Kill |cRXP_ENEMY_Infernal Oversoul|r
    .complete 10602,1 --End Infernal Summoning Ritual (1)
    .mob Infernal Oversoul
step
    .goto 1948,38.59,38.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Zagran|r
    .turnin 10602 >>Turn in The Summoning Chamber
    .accept 10603 >>Accept Bring Down the Warbringer!
    .target Scout Zagran
step
    .goto 1948,52.45,59.19
    >>The Path of Conquest Discovered
    .complete 10750,1 --The Path of Conquest Discovered
step
    .goto 1948,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Wind Rider|r
    .turnin 10750 >>Turn in The Path of Conquest
    .accept 10751 >>Accept Breaching the Path
    .target Kor'kron Wind Rider
step
    #loop
    .goto 1948,62.17,61.79,0
    .goto 1948,62.17,61.79,40,0
    .goto 1948,64.95,61.72,40,0
    .goto 1948,61.11,67.21,40,0
    >>Kill |cRXP_ENEMY_Enraged Air Spirits|r
    .complete 10481,1 --Enraged Air Spirit slain (10)
    .mob Enraged Air Spirit
step
    .goto 1948,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10633 >>Turn in Teron Gorefiend - Lore and Legend
    .accept 10634 >>Accept Divination: Gorefiend's Armor
    .accept 10636 >>Accept Divination: Gorefiend's Truncheon
    .accept 10635 >>Accept Divination: Gorefiend's Cloak
    .target Ancient Shadowmoon Spirit
step
    #loop
    .goto 1948,45.94,70.47,0
    .goto 1948,45.94,70.47,40,0
    .goto 1948,45.98,66.72,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Centurions|r, |cRXP_ENEMY_Eclipsion Archmages|r and |cRXP_ENEMY_Eclipsion Bloodwarders|r. Loot them for |cRXP_LOOT_Lianthe's Key|r
    >>Open the |cRXP_PICK_Lianthe's Strongbox|r. Loot it for |cRXP_LOOT_Rod of Lianthe|r
    .complete 10778,1 --Lianthe's Key (1)
    .complete 10778,2 --Rod of Lianthe (1)
    .mob Eclipsion Centurion
    .mob Eclipsion Archmage
    .mob Eclipsion Bloodwarder
step
    #completewith Along57
    >>As you go: Kill |cRXP_ENEMY_Eclipsion Soldiers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10751,1 --Eclipsion Soldier slain (20)
    .mob Eclipsion Soldier
step
    #label Along57
    #loop
    .goto 1948,51.87,63.73,0
    .goto 1948,51.87,63.73,40,0
    .goto 1948,52.99,67.30,40,0
    .goto 1948,52.54,59.25,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Cavaliers|r
    >>Kill |cRXP_ENEMY_Eclipsion Spellbinders|r
    .complete 10751,2 --Eclipsion Cavalier slain (10)
    .complete 10751,3 --Eclipsion Spellbinder slain (10)
    .mob Eclipsion Cavalier
    .mob Eclipsion Spellbinder
step
    #loop
    .goto 1948,64.04,51.62,0
    .goto 1948,64.04,51.62,40,0
    .goto 1948,64.38,48.24,40,0
    >>Kill |cRXP_ENEMY_Cleric of Karabor|r and loot |cRXP_LOOT_Gorefiend's Cloak|r
    .complete 10635,1 --Gorefiend's Cloak (1)
    .mob Cleric of Karabor
step
    .goto 1948,56.10,44.33
    >>Kill |cRXP_ENEMY_Felspine the Greater|r and loot |cRXP_LOOT_Felspine's Hide|r
    .complete 10673,1 --Felspine's Hide (1)
    .mob Felspine the Greater
step
    .goto 1948,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10635 >>Turn in Divination: Gorefiend's Cloak
    .target Ancient Shadowmoon Spirit
step
    .goto 1948,67.04,87.07
    >>Kill |cRXP_ENEMY_Vhel'kur|r and loot |cRXP_LOOT_Gorefiend's Armor|r
    .complete 10634,1 --Gorefiend's Armor (1)
    .mob Vhel'kur
step
    .goto 1948,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10634 >>Turn in Divination: Gorefiend's Armor
    .target Ancient Shadowmoon Spirit
step
    #loop
    .goto 1948,53.28,67.64,0
    .goto 1948,53.28,67.64,40,0
    .goto 1948,52.66,64.14,40,0
    .goto 1948,52.51,59.24,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Soldiers|r
    .complete 10751,1 --Eclipsion Soldier slain (20)
    .mob Eclipsion Soldier
step
    .goto 1948,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10481 >>Turn in Enraged Spirits of Air
    .accept 10513 >>Accept Oronok Torn-heart
    .target Earthmender Torlok
step
    .goto 1948,34.10,47.35
    >>Kill |cRXP_ENEMY_Ghostrider of Karabor|r and loot |cRXP_LOOT_Gorefiend's Truncheon|r
    .complete 10636,1 --Gorefiend's Truncheon (1)
    .mob Ghostrider of Karabor
step
    #loop
    .goto 1948,35.38,41.75,0
    .goto 1948,35.38,41.75,40,0
    .goto 1948,35.30,38.93,40,0
    .goto 1948,35.39,36.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10778 >>Turn in The Rod of Lianthe
    .accept 10780 >>Accept Sketh'lon Feathers
    .unitscan Parshah
step
    .goto 1948,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10513 >>Turn in Oronok Torn-heart
    .accept 10514 >>Accept I Was A Lot Of Things...
    .target Oronok Torn-heart
step
    #loop
    .goto 1948,52.31,19.04,0
    .goto 1948,52.31,19.04,40,0
    .goto 1948,55.01,15.97,40,0
    >>Pick up |cRXP_PICK_Shadowmoon Tuber|r from the ground
    .complete 10514,1 --Shadowmoon Tuber (10)
step
    .goto 1948,51.87,18.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Wilda|r
    .accept 10451 >>Accept Escape from Coilskar Cistern
    .target Earthmender Wilda
step
    .goto 1948,53.14,25.17
    >>Earthmender Wilda Escorted to Safety
    .complete 10451,1 --Earthmender Wilda Escorted to Safety
step
    .goto 1948,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10514 >>Turn in I Was A Lot Of Things...
    .accept 10515 >>Accept A Lesson Learned
    .target Oronok Torn-heart
step
    .goto 1948,56.78,15.93
    >>Click the |cRXP_PICK_Ravenous Flayer Egg|r
    .complete 10515,1 --Ravenous Flayer Egg Destroyed
step
    .goto 1948,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10515 >>Turn in A Lesson Learned
    .accept 10519 >>Accept The Cipher of Damnation - Truth and History
    .target Oronok Torn-heart
step
    .goto 1948,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .complete 10519,1 --Oronok Torn-heart
    .target Oronok Torn-heart
step
    .goto 1948,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10519 >>Turn in The Cipher of Damnation - Truth and History
    .accept 10521 >>Accept Grom'tor, Son of Oronok
    .accept 10527 >>Accept Ar'tor, Son of Oronok
    .accept 10546 >>Accept Borak, Son of Oronok
    .target Oronok Torn-heart
step
    .goto 1948,44.62,23.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10521 >>Turn in Grom'tor, Son of Oronok
    .accept 10522 >>Accept The Cipher of Damnation - Grom'tor's Charge
    .target Grom'tor, Son of Oronok
step
    #loop
    .goto 1948,45.63,26.70,0
    .goto 1948,45.63,26.70,40,0
    .goto 1948,47.95,28.59,40,0
    .goto 1948,47.49,31.46,40,0
    >>Kill |cRXP_ENEMY_Coilskar Defenders|r, |cRXP_ENEMY_Coilskar Sirens|r and |cRXP_ENEMY_Coilskar Waterkeepers|r. Loot them for |cRXP_LOOT_Coilskar Chest Key|r
    .collect 30426,1,10522,1 --Coilskar Chest Key (1)
    .mob Coilskar Defender
    .mob Coilskar Siren
    .mob Coilskar Waterkeeper
step
    #loop
    .goto 1948,47.03,29.26,0
    .goto 1948,47.03,29.26,40,0
    .goto 1948,45.88,26.34,40,0
    >>Open the |cRXP_PICK_Coilskar Chest|r. Loot it for |cRXP_LOOT_First Fragment of the Cipher of Damnation|r
    .complete 10522,1 --First Fragment of the Cipher of Damnation (1)
step
    .goto 1948,44.62,23.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10522 >>Turn in The Cipher of Damnation - Grom'tor's Charge
    .accept 10523 >>Accept The Cipher of Damnation - The First Fragment Recovered
    .target Grom'tor, Son of Oronok
step
    .goto 1948,30.07,28.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Tiorus|r
    .turnin 10673 >>Turn in Felspine the Greater
    .target Researcher Tiorus
step
    .goto 1948,29.63,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10527 >>Turn in Ar'tor, Son of Oronok
    .accept 10528 >>Accept Demonic Crystal Prisons
    .target Ar'tor, Son of Oronok
step
    .goto 1948,28.30,47.61
    >>Kill |cRXP_ENEMY_Painmistress Gabrissa|r and loot |cRXP_LOOT_Crystalline Key|r
    .complete 10528,1 --Crystalline Key (1)
    .mob Painmistress Gabrissa
step
    .goto 1948,29.63,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10528 >>Turn in Demonic Crystal Prisons
    .target Ar'tor, Son of Oronok
step
    .goto 1948,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .accept 10537 >>Accept Lohn'goron, Bow of the Torn-heart
    .target Spirit of Ar'tor
step
    #loop
    .goto 1948,28.79,53.92,0
    .goto 1948,28.79,53.92,40,0
    .goto 1948,30.25,57.81,40,0
    >>Kill |cRXP_ENEMY_Illidari Dreadbringers|r, |cRXP_ENEMY_Illidari Painlashers|r, |cRXP_ENEMY_Illidari Shocktroopers|r and |cRXP_ENEMY_Illidari Shadowstalkers|r. Loot them for |cRXP_LOOT_Lohn'goron, Bow of the Torn-heart|r
    .complete 10537,1 --Lohn'goron, Bow of the Torn-heart (1)
    .mob Illidari Dreadbringer
    .mob Illidari Painlasher
    .mob Illidari Shocktrooper
    .mob Illidari Shadowstalker
step
    .goto 1948,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10537 >>Turn in Lohn'goron, Bow of the Torn-heart
    .accept 10540 >>Accept The Cipher of Damnation - Ar'tor's Charge
    .target Spirit of Ar'tor
step
    .goto 1948,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10540 >>Turn in The Cipher of Damnation - Ar'tor's Charge
    .target Spirit of Ar'tor
    .isQuestComplete 10540
step
    .goto 1948,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .accept 10541 >>Accept The Cipher of Damnation - The Second Fragment Recovered
    .target Spirit of Ar'tor
    .isQuestTurnedIn 10540 --any of: The Cipher of Damnation - Ar'tor's Charge
    .xp <68,1
step
    .goto 1948,38.95,46.89
    >>Kill |cRXP_ENEMY_Warbringer Razuun|r and loot |cRXP_LOOT_Razuun's Orders|r
    >>Kill |cRXP_ENEMY_Warbringer Razuun|r
    .complete 10603,2 --Razuun's Orders (1)
    .complete 10603,1 --Warbringer Razuun slain (1)
    .mob Warbringer Razuun
step
    .goto 1948,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10451 >>Turn in Escape from Coilskar Cistern
    .target Earthmender Torlok
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10546 >>Turn in Borak, Son of Oronok
    .accept 10547 >>Accept Of Thistleheads and Eggs...
    .target Borak, Son of Oronok
step
    #loop
    .goto 1948,45.03,57.59,0
    .goto 1948,45.03,57.59,40,0
    .goto 1948,43.29,56.03,40,0
    .goto 1948,43.69,61.70,40,0
    >>Pick up |cRXP_PICK_Sketh'lon Feather|r from the ground
    >>Pick up |cRXP_PICK_Rotten Arakkoa Egg|r from the ground
    .complete 10780,1 --Sketh'lon Feather (8)
    .complete 10547,1 --Rotten Arakkoa Egg (1)
step
    #loop
    .goto 1948,35.38,41.75,0
    .goto 1948,35.38,41.75,40,0
    .goto 1948,35.30,38.93,40,0
    .goto 1948,35.39,36.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10780 >>Turn in Sketh'lon Feathers
    .accept 10782 >>Accept Imbuing the Headpiece
    .turnin 10782 >>Turn in Imbuing the Headpiece
    .accept 10808 >>Accept Thwart the Dark Conclave
    .unitscan Parshah
step
    .goto 1948,54.84,49.39
    >>Kill |cRXP_ENEMY_Uvuros|r and loot |cRXP_LOOT_Uvuros's Fiery Mane|r
    .complete 10647,1 --Uvuros's Fiery Mane (1)
    .mob Uvuros
step
    .goto 1948,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Wind Rider|r
    .turnin 10751 >>Turn in Breaching the Path
    .accept 10765 >>Accept When Worlds Collide...
    .target Kor'kron Wind Rider
step
    .goto 1948,52.95,69.64
    >>Kill |cRXP_ENEMY_Chancellor Bloodleaf|r and loot |cRXP_LOOT_Illidan's Command|r
    >>Kill |cRXP_ENEMY_Chancellor Bloodleaf|r
    >>Kill |cRXP_ENEMY_Corok the Mighty|r
    .complete 10765,3 --Illidan's Command (1)
    .complete 10765,1 --Chancellor Bloodleaf slain (1)
    .complete 10765,2 --Corok the Mighty slain (1)
    .mob Chancellor Bloodleaf
    .mob Corok the Mighty
step
    .goto 1948,51.61,64.92
    >>Kill |cRXP_ENEMY_Val'zareq the Conqueror|r and loot |cRXP_LOOT_The Journal of Val'zareq|r. Use it to start the quest
    .collect 31345,1,10793 --The Journal of Val'zareq (1)
    .accept 10793 >>Accept The Journal of Val'zareq: Portends of War
    .use 31345
    .mob Val'zareq the Conqueror
step
    .goto 1948,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Wind Rider|r
    .turnin 10765 >>Turn in When Worlds Collide...
    .accept 10768 >>Accept Tabards of the Illidari
    .target Kor'kron Wind Rider
step
    #loop
    .goto 1948,52.57,59.25,0
    .goto 1948,52.57,59.25,40,0
    .goto 1948,52.89,63.02,40,0
    >>Kill |cRXP_ENEMY_Val'zareq the Conquerors|r, |cRXP_ENEMY_Eclipsion Soldiers|r, |cRXP_ENEMY_Eclipsion Spellbinders|r and |cRXP_ENEMY_Eclipsion Cavaliers|r. Loot them for |cRXP_LOOT_Illidari Tabard|r
    .complete 10768,1 --Illidari Tabard (10)
    .mob Val'zareq the Conqueror
    .mob Eclipsion Soldier
    .mob Eclipsion Spellbinder
    .mob Eclipsion Cavalier
step
    .goto 1948,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Wind Rider|r
    .turnin 10768 >>Turn in Tabards of the Illidari
    .accept 10769 >>Accept Dissension Amongst the Ranks...
    .target Kor'kron Wind Rider
step
    .goto 1948,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10636 >>Turn in Divination: Gorefiend's Truncheon
    .accept 10639 >>Accept Teron Gorefiend, I am...
    .target Ancient Shadowmoon Spirit
step
    .goto 1948,58.23,70.79
    >>The Ancient Shadowmoon Spirit has used you as a pawn! Now that you have collected the items he required, he has revealed himself to be Teron Gorefiend. To break free of his possession, you must do his bidding and slay Karsius the Ancient Watcher.
    .complete 10639,1 --Karsius the Ancient Watcher (1)
step
    .goto 1948,51.38,72.79
    >>Click the |cRXP_PICK_Crystal Prison|r
    .turnin 10793 >>Turn in The Journal of Val'zareq: Portends of War
    .accept 10781 >>Accept Battle of the Crimson Watch
step
    .goto 1948,51.75,72.79
    >>Crimson Sigil Forces Annihilated
    .complete 10781,1 --Crimson Sigil Forces Annihilated
step
    #loop
    .goto 1948,41.23,71.44,0
    .goto 1948,41.23,71.44,40,0
    .goto 1948,40.00,71.27,40,0
    .goto 1948,36.87,70.25,40,0
    >>Kill |cRXP_ENEMY_Crazed Colossus|r
    .complete 10769,1 --Crazed Colossus slain while in disguise (5)
    .mob Crazed Colossus
step
    .goto 1948,40.36,61.21
    >>Slay the Dark Conclave Ritualists and use the Staff of Parshah to end the Dark Conclave's summoning ritual, then return to Parshah in the Magma Fields.
    .complete 10808,1 --Summoned Old God
    .target Summoned Old God
step
    #loop
    .goto 1948,35.38,41.75,0
    .goto 1948,35.38,41.75,40,0
    .goto 1948,35.30,38.93,40,0
    .goto 1948,35.39,36.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10808 >>Turn in Thwart the Dark Conclave
    .unitscan Parshah
step
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10603 >>Turn in Bring Down the Warbringer!
    .accept 10604 >>Accept Gaining Access
    .target Blood Guard Gulmok
step
    .goto 1948,30.35,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warcaller Sardon Truslice|r
    .turnin 10647 >>Turn in Wanted: Uvuros, Scourge of Shadowmoon
    .target Warcaller Sardon Truslice
step
    .goto 1948,29.96,27.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Apothecary Hildagard|r
    .turnin 10639 >>Turn in Teron Gorefiend, I am...
    .target Chief Apothecary Hildagard
step
    .goto 1948,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .turnin 10769 >>Turn in Dissension Amongst the Ranks...
    .target Overlord Or'barokh
step
    #loop
    .goto 1948,24.78,30.28,0
    .goto 1948,24.78,30.28,40,0
    .goto 1948,22.95,34.50,40,0
    >>Kill |cRXP_ENEMY_Mo'arg Weaponsmith|r and loot |cRXP_LOOT_Legion Teleporter Control|r
    .complete 10604,1 --Legion Teleporter Control (1)
    .mob Mo'arg Weaponsmith
step
    .goto 1948,30.45,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gulmok|r
    .turnin 10604 >>Turn in Gaining Access
    .accept 10767 >>Accept Invasion Point: Cataclysm
    .target Blood Guard Gulmok
step
    .goto 1948,27.49,21.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nakansi|r
    .turnin 10767 >>Turn in Invasion Point: Cataclysm
    .accept 10611 >>Accept The Art of Fel Reaver Maintenance
    .target Nakansi
step
    .goto 1948,28.99,20.35
    >>Kill |cRXP_ENEMY_Doctor Gutricks|r and |cRXP_ENEMY_Doctor Maleficus|r. Loot them for |cRXP_LOOT_The Doctor's Key|r
    >>Open the |cRXP_PICK_The Doctor's Strongbox|r. Loot it for |cRXP_LOOT_The Art of Fel Reaver Maintenance|r
    .complete 10611,2 --The Doctor's Key (1)
    .complete 10611,1 --The Art of Fel Reaver Maintenance (1)
    .mob Doctor Gutrick
    .mob Doctor Maleficus
step
    .goto 1948,27.49,21.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nakansi|r
    .turnin 10611 >>Turn in The Art of Fel Reaver Maintenance
    .accept 10613 >>Accept The Fel and the Furious
    .target Nakansi
step
    #loop
    .goto 1948,29.62,19.14,0
    .goto 1948,29.62,19.14,40,0
    .goto 1948,32.45,21.41,40,0
    >>Click the |cRXP_PICK_Deathforged Infernal|r
    .complete 10613,1 --Deathforged Infernal
step
    .goto 1948,27.49,21.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nakansi|r
    .turnin 10613 >>Turn in The Fel and the Furious
    .accept 10745 >>Accept News of Victory
    .target Nakansi
step
    .goto 1948,28.39,26.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Or'barokh|r
    .turnin 10745 >>Turn in News of Victory
    .target Overlord Or'barokh
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10550 >>Turn in The Bundle of Bloodthistle
    .target Borak, Son of Oronok
    .isOnQuest 10550
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10570 >>Accept To Catch A Thistlehead
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10550 --any of: The Bundle of Bloodthistle
    .xp <68,1
step
    .goto 1948,48.96,57.60
    >>Kill |cRXP_ENEMY_Envoy Icarius|r and loot |cRXP_LOOT_Stormrage Missive|r
    .complete 10570,1 --Stormrage Missive (1)
    .mob Envoy Icarius
    .isOnQuest 10570
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10570 >>Turn in To Catch A Thistlehead
    .target Borak, Son of Oronok
    .isOnQuest 10570
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10576 >>Accept The Shadowmoon Shuffle
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10570 --any of: To Catch A Thistlehead
    .xp <68,1
step
    #loop
    .goto 1948,45.98,66.72,0
    .goto 1948,45.98,66.72,40,0
    .goto 1948,45.94,70.47,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Centurions|r, |cRXP_ENEMY_Eclipsion Blood Knights|r, |cRXP_ENEMY_Eclipsion Archmages|r and |cRXP_ENEMY_Eclipsion Bloodwarders|r. Loot them for |cRXP_LOOT_Eclipsion Armor|r
    .complete 10576,1 --Eclipsion Armor (6)
    .mob Eclipsion Centurion
    .mob Eclipsion Blood Knight
    .mob Eclipsion Archmage
    .mob Eclipsion Bloodwarder
    .isOnQuest 10576
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10576 >>Turn in The Shadowmoon Shuffle
    .target Borak, Son of Oronok
    .isOnQuest 10576
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10577 >>Accept What Illidan Wants, Illidan Gets...
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10576 --any of: The Shadowmoon Shuffle
    .xp <68,1
step
    .goto 1948,46.45,71.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Commander Ruusk|r
    .complete 10577,1 --Grand Commander Ruusk
    .target Grand Commander Ruusk
    .isOnQuest 10577
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10577 >>Turn in What Illidan Wants, Illidan Gets...
    .target Borak, Son of Oronok
    .isOnQuest 10577
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10578 >>Accept The Cipher of Damnation - Borak's Charge
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10577 --any of: What Illidan Wants, Illidan Gets...
    .xp <68,1
step
    .goto 1948,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10523 >>Turn in The Cipher of Damnation - The First Fragment Recovered
    .target Oronok Torn-heart
step
    .goto 1948,56.32,57.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Alieshor|r
    .fp Sanctum of the Stars >> Get the Sanctum of the Stars flight path
    .target Alieshor
    .subzoneskip 3938,1
step
    .goto 1948,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10541 >>Turn in The Cipher of Damnation - The Second Fragment Recovered
    .target Oronok Torn-heart
    .isOnQuest 10541
step
    .goto 1948,67.64,36.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Gorlunk|r
    .accept 10755 >>Accept Entry Into the Citadel
    .target Smith Gorlunk
step
    .goto 1948,57.28,50.70
    >>Kill |cRXP_ENEMY_Ruul the Darkener|r and loot |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
    .complete 10578,1 --Third Fragment of the Cipher of Damnation (1)
    .mob Ruul the Darkener
    .isOnQuest 10578
step
    .goto 1948,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .accept 10622 >>Accept Proof of Allegiance
    .target Sanoru
    .isQuestTurnedIn 10575,10686 --any of: The Warden's Cage, The Warden's Cage
    .xp <68,1
step
    .goto 1948,58.03,49.13
    >>Kill |cRXP_ENEMY_Zandras|r
    .complete 10622,1 --Zandras slain (1)
    .mob Zandras
    .isOnQuest 10622
step
    .goto 1948,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .turnin 10622 >>Turn in Proof of Allegiance
    .target Sanoru
    .isOnQuest 10622
step
    .goto 1948,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .accept 10628 >>Accept Akama
    .target Sanoru
    .isQuestTurnedIn 10622 --any of: Proof of Allegiance
    .xp <68,1
step
    .goto 1948,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .accept 10707 >>Accept The Ata'mal Terrace
    .target Akama
    .isQuestTurnedIn 10706 --any of: A Mysterious Portent
    .xp <68,1
step
    .goto 1948,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10628 >>Turn in Akama
    .target Akama
    .isOnQuest 10628
step
    .goto 1948,65.34,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    .turnin 10949 >>Turn in Entry Into the Black Temple
    .target Xi'ri
    .isOnQuest 10949
step
    .goto 1948,72.33,34.83
    >>Kill |cRXP_ENEMY_Shadowlord Deathwail|r and loot |cRXP_LOOT_Heart of Fury|r
    .complete 10707,1 --Heart of Fury (1)
    .mob Shadowlord Deathwail
    .isOnQuest 10707
step
    .goto 1948,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10707 >>Turn in The Ata'mal Terrace
    .target Akama
    .isOnQuest 10707
step
    .goto 1948,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .accept 11052 >>Accept Akama's Promise
    .target Akama
    .isQuestTurnedIn 10707 --any of: The Ata'mal Terrace
    .xp <68,1
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10578 >>Turn in The Cipher of Damnation - Borak's Charge
    .target Borak, Son of Oronok
    .isOnQuest 10578
step
    .goto 1948,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10579 >>Accept The Cipher of Damnation - The Third Fragment Recovered
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10578 --any of: The Cipher of Damnation - Borak's Charge
    .xp <68,1
step
    .goto 1948,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10579 >>Turn in The Cipher of Damnation - The Third Fragment Recovered
    .target Oronok Torn-heart
    .isOnQuest 10579
step
    +|cRXP_WARN_That is all of Shadowmoon Valley for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hellfire Peninsula|r: Entry Into the Citadel
    >>|cRXP_FRIENDLY_Shattrath City|r: Of Thistleheads and Eggs..., Battle of the Crimson Watch, Akama's Promise
    >>|cRXP_FRIENDLY_Terokkar Forest|r: The Hermit Smith
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Cipher of Damnation - Ar'tor's Charge
step
    +|cRXP_WARN_End of the Shadowmoon Valley route.|r
step
    +|cRXP_WARN_Suggested next zones at level 69|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.2 levels of quests, starting around Image of Archmage Vargoth). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
