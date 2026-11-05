-- 1-12 Eversong Woods: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 1, 13, 28).
-- Split into 6 guides, listed under "1 - 29 Eversong Woods" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Eversong Woods.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 29 Eversong Woods
#subweight -1
#name 1-3 Eversong Woods: around Aeldon Sunbrand
#next Zone Routes (Horde)\3-7 Eversong Woods: around Instructor Antheol

step << BloodElf
    .goto 1941,38.21,20.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 8325 >>Accept Reclaiming Sunstrider Isle
    .target Magistrix Erona
step << BloodElf
    #loop
    .goto 1941,37.61,24.33,0
    .goto 1941,37.61,24.33,40,0
    .goto 1941,34.65,19.85,40,0
    >>Kill |cRXP_ENEMY_Mana Wyrms|r
    .complete 8325,1 --Mana Wyrm slain (8)
    .mob Mana Wyrm
step
    .goto 1941,38.21,20.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .turnin 8325 >>Turn in Reclaiming Sunstrider Isle << BloodElf
    .accept 8326 >>Accept Unfortunate Measures << BloodElf
    .accept 9676 >>Accept Paladin Training << Paladin
    .accept 9393 >>Accept Hunter Training << BloodElf Hunter
    .accept 9392 >>Accept Rogue Training << BloodElf Rogue
    .accept 8564 >>Accept Priest Training << BloodElf Priest
    .accept 8328 >>Accept Mage Training << BloodElf Mage
    .accept 8563 >>Accept Warlock Training << BloodElf Warlock
    .target Magistrix Erona
step << BloodElf
    #completewith Along20
    >>As you go: Kill |cRXP_ENEMY_Springpaw Cubs|r and |cRXP_ENEMY_Springpaw Lynxes|r. Loot them for |cRXP_LOOT_Lynx Collar|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8326,1 --Lynx Collar (8)
    .mob Springpaw Cub
    .mob Springpaw Lynx
step
    .goto 1941,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jesthenis Sunstriker|r
    .turnin 9676 >>Turn in Paladin Training << Paladin
    .accept 10069 >>Accept Well Watcher Solanian << BloodElf Paladin
    .target Jesthenis Sunstriker
step << BloodElf Paladin
    .goto 1941,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .turnin 10069 >>Turn in Well Watcher Solanian
    .target Well Watcher Solanian
step << BloodElf Hunter
    .goto 1941,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sallina|r
    .turnin 9393 >>Turn in Hunter Training
    .accept 10070 >>Accept Well Watcher Solanian
    .target Ranger Sallina
step << BloodElf Hunter
    .goto 1941,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .turnin 10070 >>Turn in Well Watcher Solanian
    .target Well Watcher Solanian
step << BloodElf Rogue
    .goto 1941,38.93,20.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pathstalker Kariel|r
    .turnin 9392 >>Turn in Rogue Training
    .accept 10071 >>Accept Well Watcher Solanian
    .target Pathstalker Kariel
step << BloodElf Rogue
    .goto 1941,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .turnin 10071 >>Turn in Well Watcher Solanian
    .target Well Watcher Solanian
step << BloodElf Priest
    .goto 1941,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Arena|r
    .turnin 8564 >>Turn in Priest Training
    .accept 10072 >>Accept Well Watcher Solanian
    .target Matron Arena
step << Priest
    .goto 1941,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arena|r
    .train 1243 >> Train your class spells
    .target Matron Arena
step << BloodElf Priest
    .goto 1941,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .turnin 10072 >>Turn in Well Watcher Solanian
    .target Well Watcher Solanian
step << BloodElf Mage
    .goto 1941,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Sunstriker|r
    .turnin 8328 >>Turn in Mage Training
    .accept 10068 >>Accept Well Watcher Solanian
    .target Julia Sunstriker
step << Mage
    .goto 1941,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia|r
    .train 1459 >> Train your class spells
    .target Julia Sunstriker
step << BloodElf Mage
    .goto 1941,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .turnin 10068 >>Turn in Well Watcher Solanian
    .target Well Watcher Solanian
step << BloodElf Warlock
    .goto 1941,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .turnin 8563 >>Turn in Warlock Training
    .accept 10073 >>Accept Well Watcher Solanian
    .accept 8344 >>Accept Windows to the Source
    .target Summoner Teli'Larien
step << Warlock
    .goto 1941,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teli'Larien|r
    .trainer>> Train your class spells
    .target Summoner Teli'Larien
step
    .goto 1941,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .turnin 10073 >>Turn in Well Watcher Solanian << BloodElf Warlock
    .accept 8330 >>Accept Solanian's Belongings << BloodElf
    .accept 8345 >>Accept The Shrine of Dath'Remar << BloodElf
    .target Well Watcher Solanian
step << BloodElf
    .goto 1941,38.27,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Ithanas|r
    .accept 8336 >>Accept A Fistful of Slivers
    .target Arcanist Ithanas
step << BloodElf
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Arcane Wraiths|r, |cRXP_ENEMY_Mana Wyrms|r, |cRXP_ENEMY_Feral Tenders|r and |cRXP_ENEMY_Tainted Arcane Wraiths|r. Loot them for |cRXP_LOOT_Arcane Sliver|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8336,1 --Arcane Sliver (6)
    .mob Arcane Wraith
    .mob Mana Wyrm
    .mob Feral Tender
    .mob Tainted Arcane Wraith
step << BloodElf
    #label Along16
    .goto 1941,37.18,18.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .accept 8346 >>Accept Thirst Unending
    .target Arcanist Helion
step << BloodElf
    #completewith Drop8338x1
    >>|cRXP_LOOT_Tainted Arcane Sliver|r can drop from |cRXP_ENEMY_Tainted Arcane Wraith|r. Use it to start the quest if you get one
    .collect 20483,1,8338 --Tainted Arcane Sliver (1)
    .accept 8338 >>Accept Tainted Arcane Sliver
    .use 20483
step << BloodElf
    #completewith Drop8338x1
    >>As you go: Kill |cRXP_ENEMY_Feral Tenders|r and |cRXP_ENEMY_Mana Wyrms|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8346,1 --Feral Tender (6)
    .mob Feral Tender
    .mob Mana Wyrm
step
    #label Drop8338x1
    #loop
    .goto 1941,34.65,19.85,0
    .goto 1941,34.65,19.85,40,0
    .goto 1941,31.34,21.60,40,0
    .goto 1941,30.94,27.72,40,0
    >>Kill |cRXP_ENEMY_Tainted Arcane Wraith|r and loot |cRXP_LOOT_Tainted Wraith Essence|r << BloodElf Warlock
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r, |cRXP_ENEMY_Mana Wyrms|r, |cRXP_ENEMY_Feral Tenders|r and |cRXP_ENEMY_Tainted Arcane Wraiths|r. Loot them for |cRXP_LOOT_Arcane Sliver|r << BloodElf
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r. Loot them for |cRXP_LOOT_Wraith Essence|r << BloodElf Warlock
    .complete 8344,2 << BloodElf Warlock --Tainted Wraith Essence (1)
    .complete 8336,1 << BloodElf --Arcane Sliver (6)
    .complete 8344,1 << BloodElf Warlock --Wraith Essence (4)
    .mob Tainted Arcane Wraith << BloodElf Warlock
    .mob Arcane Wraith << BloodElf
    .mob Mana Wyrm << BloodElf
    .mob Feral Tender << BloodElf
step << BloodElf
    #completewith Along18
    >>As you go: Pick up |cRXP_PICK_Solanian's Journal|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 8330,3 --Solanian's Journal (1)
step << BloodElf
    #completewith Along18
    >>As you go: Pick up |cRXP_PICK_Solanian's Scrying Orb|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 8330,1 --Solanian's Scrying Orb (1)
step << BloodElf
    #label Along18
    #loop
    .goto 1941,35.53,29.60,0
    .goto 1941,35.53,29.60,40,0
    .goto 1941,37.61,24.33,40,0
    >>Kill |cRXP_ENEMY_Feral Tenders|r and |cRXP_ENEMY_Mana Wyrms|r
    .complete 8346,1 --Feral Tender (6)
    .mob Feral Tender
    .mob Mana Wyrm
step << Warlock
    .goto 1941,30.45,29.10,0
    .goto 1941,30.45,29.10,30,0
    .goto 1941,30.01,26.67,30,0
    .goto 1941,30.43,24.94,30,0
    .goto 1941,31.70,26.46,30,0
    .goto 1941,31.98,27.94,30,0
    .goto 1941,31.54,29.52,30,0
    .xp 3+200 >> Grind to 200+/1400xp
step << BloodElf
    .goto 1941,37.18,18.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .turnin 8346 >>Turn in Thirst Unending
    .target Arcanist Helion
step << BloodElf
    #label Along20
    .goto 1941,38.27,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Ithanas|r
    .turnin 8336 >>Turn in A Fistful of Slivers
    .target Arcanist Ithanas
step << Warlock
    .goto 1941,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teli'Larien|r
    .train 172 >> Train your class spells
    .target Summoner Teli'Larien
    .xp <4,1
step << BloodElf Warlock
    .goto 1941,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .turnin 8344 >>Turn in Windows to the Source
    .target Summoner Teli'Larien
step << BloodElf
    #loop
    .goto 1941,39.99,17.99,0
    .goto 1941,39.99,17.99,40,0
    .goto 1941,40.26,20.92,40,0
    >>Kill |cRXP_ENEMY_Springpaw Cubs|r and |cRXP_ENEMY_Springpaw Lynxes|r. Loot them for |cRXP_LOOT_Lynx Collar|r
    .complete 8326,1 --Lynx Collar (8)
    .mob Springpaw Cub
    .mob Springpaw Lynx
step << BloodElf
    .goto 1941,38.21,20.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .turnin 8326 >>Turn in Unfortunate Measures
    .accept 8327 >>Accept Report to Lanthan Perilon
    .target Magistrix Erona
step << BloodElf
    .goto 1941,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8327 >>Turn in Report to Lanthan Perilon
    .accept 8334 >>Accept Aggression
    .target Lanthan Perilon
step << BloodElf
    .goto 1941,37.70,24.91
    >>Pick up |cRXP_PICK_Solanian's Journal|r from the ground
    .complete 8330,3 --Solanian's Journal (1)
step << BloodElf
    #loop
    .goto 1941,36.10,29.05,0
    .goto 1941,36.10,29.05,40,0
    .goto 1941,34.11,27.63,40,0
    >>Pick up |cRXP_PICK_Solanian's Scrying Orb|r from the ground
    >>Kill |cRXP_ENEMY_Tenders|r
    >>Kill |cRXP_ENEMY_Feral Tenders|r
    .complete 8330,1 --Solanian's Scrying Orb (1)
    .complete 8334,1 --Tender slain (7)
    .complete 8334,2 --Feral Tender slain (7)
    .mob Tender
    .mob Feral Tender
step << BloodElf
    .goto 1941,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8334 >>Turn in Aggression
    .accept 8335 >>Accept Felendren the Banished
    .target Lanthan Perilon
step << !Warlock !Rogue
    .goto 1941,36.79,19.88,0
    .goto 1941,36.79,19.88,40,0
    .goto 1941,34.64,18.82,40,0
    .goto 1941,33.78,19.46,40,0
    .goto 1941,34.17,20.59,40,0
    .xp 4-360 >> Grind to 1740+/2100xp
step << !Warlock !Rogue
    .goto 1941,36.79,19.88,0
    .goto 1941,36.79,19.88,40,0
    .goto 1941,34.64,18.82,40,0
    .goto 1941,33.78,19.46,40,0
    .goto 1941,34.17,20.59,40,0
    .xp 4-540 >> Grind to 1560+/2100xp
step << Mage
    .goto 1941,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia|r
    .train 116 >> Train your class spells
    .target Julia Sunstriker
step << Priest
    .goto 1941,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arena|r
    .train 589 >> Train your class spells
    .target Matron Arena
step << Hunter
    .goto 1941,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sallina|r
    .train 1978 >> Train your class spells
    .target Ranger Sallina
step << Paladin
    .goto 1941,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jesthenis|r
    .train 20271 >> Train your class spells
    .target Jesthenis Sunstriker
step << BloodElf
    .goto 1941,29.61,19.37
    >>Click the |cRXP_PICK_Shrine of Dath'Remar|r
    >>Pick up |cRXP_PICK_Scroll of Scourge Magic|r from the ground
    .complete 8345,1 --Shrine of Dath'Remar Read
    .complete 8330,2 --Scroll of Scourge Magic (1)
step << BloodElf
    #completewith Drop8338x2
    >>|cRXP_LOOT_Tainted Arcane Sliver|r can drop from |cRXP_ENEMY_Tainted Arcane Wraith|r. Use it to start the quest if you get one
    .collect 20483,1,8338 --Tainted Arcane Sliver (1)
    .accept 8338 >>Accept Tainted Arcane Sliver
    .use 20483
step << BloodElf
    #label Drop8338x2
    #loop
    .goto 1941,30.84,27.13,0
    .goto 1941,30.84,27.13,40,0
    .goto 1941,31.42,29.18,40,0
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r
    >>Kill |cRXP_ENEMY_Tainted Arcane Wraiths|r
    >>Kill |cRXP_ENEMY_Felendren the Banished|r and loot |cRXP_LOOT_Felendren's Head|r
    .complete 8335,1 --Arcane Wraith slain (8)
    .complete 8335,2 --Tainted Arcane Wraith slain (2)
    .complete 8335,3 --Felendren's Head (1)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step
    .hs >> Hearth to Sunstrider Isle
step << BloodElf
    .goto 1941,37.18,18.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .turnin 8338 >>Turn in Tainted Arcane Sliver
    .target Arcanist Helion
    .isOnQuest 8338
step << BloodElf
    .goto 1941,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .turnin 8330 >>Turn in Solanian's Belongings
    .turnin 8345 >>Turn in The Shrine of Dath'Remar
    .target Well Watcher Solanian
step << BloodElf
    .goto 1941,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8335 >>Turn in Felendren the Banished
    .accept 8347 >>Accept Aiding the Outrunners
    .target Lanthan Perilon
step
    .goto 1941,33.92,26.49,0
    .goto 1941,33.92,26.49,40,0
    .goto 1941,33.97,28.55,40,0
    .goto 1941,35.15,29.78,40,0
    .goto 1941,36.52,29.35,40,0
    .goto 1941,35.58,27.42,40,0
    .xp 5+1800 >> Grind to 1800+/2800xp
step
    .goto 1941,33.92,26.49,0
    .goto 1941,33.92,26.49,40,0
    .goto 1941,33.97,28.55,40,0
    .goto 1941,35.15,29.78,40,0
    .goto 1941,36.52,29.35,40,0
    .goto 1941,35.58,27.42,40,0
    .xp 5+1300 >> Grind to 1300+/2800xp
step
    .goto 1941,40.42,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outrunner Alarion|r
    .turnin 8347 >>Turn in Aiding the Outrunners << BloodElf
    .accept 9704 >>Accept Slain by the Wretched
    .target Outrunner Alarion
step
    .goto 1941,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slain Outrunner|r
    .turnin 9704 >>Turn in Slain by the Wretched
    .accept 9705 >>Accept Package Recovery
    .target Slain Outrunner
step
    .goto 1941,40.42,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outrunner Alarion|r
    .turnin 9705 >>Turn in Package Recovery
    .accept 8350 >>Accept Completing the Delivery
    .target Outrunner Alarion
step
    .goto 1941,45.97,43.35,0
    .goto 1941,45.97,43.35,40,0
    .goto 1941,46.57,35.10,40,0
    .goto 1941,43.62,34.88,40,0
    .xp 5+2690 >> Grind to 2690+/2800xp
step
    .goto 1941,45.97,43.35,0
    .goto 1941,45.97,43.35,40,0
    .goto 1941,46.57,35.10,40,0
    .goto 1941,43.62,34.88,40,0
    .xp 5+2635 >> Grind to 2635+/2800xp
step
    .goto 1941,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r
    .accept 8472 >>Accept Major Malfunction
    .target Magister Jaronis
step
    .goto 1941,48.16,47.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Delaniel|r
    .turnin 8350 >>Turn in Completing the Delivery
    .target Innkeeper Delaniel
step
    .goto 1941,47.07,47.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_[DND] TAR Pedestal - Enchantments|r. |cRXP_WARN_This NPC walks a patrol route|r
    .unitscan [DND] TAR Pedestal - Enchantments
    .home >>Set your Hearthstone to [DND] TAR Pedestal - Enchantments's inn
step << BloodElf Priest
    .goto 1941,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r
    .accept 9489 >>Accept Cleansing the Scar
    .target Ponaris
step << Priest
    .goto 1941,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r upstairs
    .train 591 >>Train your class spells
    .target Ponaris
step << Mage
    .goto 1941,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r upstairs
    .train 143 >>Train your class spells
    .target Garridel
step << Warlock
    .goto 1941,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celoenus|r upstairs
    .train 695 >>Train your class spells
    .target Celoenus
step << Warrior/Rogue
    .goto 1941,48.58,47.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanaria|r upstairs
    .train 3273 >>Train |T135966:0|t[First Aid]
    .target Kanaria
step
    .goto 1941,48.18,46.31
    >>Click the |cRXP_PICK_Wanted: Thaelis the Hungerer|r
    .accept 8468 >>Accept Wanted: Thaelis the Hungerer
step
    .goto 1941,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .accept 8463 >>Accept Unstable Mana Crystals
    .target Aeldon Sunbrand
step << Paladin
    .goto 1941,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noellene|r
    .train 639 >>Train your class spells
    .target Noellene
step << Rogue
    .goto 1941,48.58,46.29,8,0
    .goto 1941,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannaria|r upstairs
    .train 1757 >>Train your class spells
    .target Tannaria
step << Hunter
    .goto 1941,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannovia|r
    .train 3044 >>Train your class spells
    .target Hannovia
step << Rogue/Warrior
    .goto 1941,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Train 1h Swords << Rogue
    .train 202 >>Train 2h Swords << Warrior
    .target Duelist Larenis
    .money <0.11
step << Undead Warrior/Paladin/Rogue
    .goto 1941,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 9c). You'll come back later if you don't have enough yet
    .target Geron
    .train 201,3 << Rogue
step << Undead Warrior/Paladin/Rogue
    .goto 1941,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,8476,1
    .target Geron
    .money <0.0509
    .train 201,3 << Rogue
step << Rogue
    .goto 1941,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (3s 82c). You'll come back later if you don't have enough yet
    .target Geron
    .train 201,1
step << Rogue
    .goto 1941,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,8476,1
    .target Geron
    .money <0.0382
    .train 201,1
step
    #loop
    .goto 1941,45.34,40.74,0
    .goto 1941,45.34,40.74,40,0
    .goto 1941,45.02,37.68,40,0
    .goto 1941,42.05,38.97,40,0
    >>Kill |cRXP_ENEMY_Thaelis the Hungerer|r and loot |cRXP_LOOT_Thaelis's Head|r
    >>Loot the |cRXP_PICK_Unstable Mana Crystal Crates|r for |cRXP_LOOT_Unstable Mana Crystal|r
    >>Kill |cRXP_ENEMY_Arcane Patrollers|r. Loot them for |cRXP_LOOT_Arcane Core|r
    .complete 8468,1 --Thaelis's Head (1)
    .complete 8463,1 --Unstable Mana Crystal (6)
    .complete 8472,1 --Arcane Core (6)
    .mob Thaelis the Hungerer
    .mob Arcane Patroller
step
    .goto 1941,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Jaronis|r
    .turnin 8472 >>Turn in Major Malfunction
    .accept 8895 >>Accept Delivery to the North Sanctum
    .target Magister Jaronis
step
    .goto 1941,47.77,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Kan'ren|r
    .turnin 8468 >>Turn in Wanted: Thaelis the Hungerer
    .target Sergeant Kan'ren
step
    .goto 1941,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .turnin 8463 >>Turn in Unstable Mana Crystals
    .accept 9352 >>Accept Darnassian Intrusions
    .target Aeldon Sunbrand
step << Paladin
    .goto 1941,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noellene|r
    .train 853 >>Train your class spells
    .target Noellene
    .xp <8,1
step << Rogue
    .goto 1941,48.58,46.29,8,0
    .goto 1941,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannaria|r upstairs
    .train 6760 >>Train your class spells
    .target Tannaria
    .xp <8,1
step << Hunter
    .goto 1941,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Train your class spells
    .target Hannovia
    .xp <8,1
step << Mage
    .goto 1941,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r upstairs
    .train 5143 >>Train your class spells
    .target Garridel
    .xp <8,1
step << Warlock
    .goto 1941,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celoenus|r upstairs
    .train 980 >>Train your class spells
    .target Celoenus
    .xp <8,1
step << Undead Warrior/Paladin/Rogue
    .goto 1941,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,8491,1
    .target Geron
    .money <0.0509
    .train 201,3 << Rogue
step << Rogue
    .goto 1941,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,8491,1
    .target Geron
    .money <0.0382
    .train 201,1
step
    .goto 1941,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Caidanis|r
    .turnin 8895 >>Turn in Delivery to the North Sanctum
    .accept 9119 >>Accept Malfunction at the West Sanctum
    .target Ley-Keeper Caidanis
step
    .goto 1941,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Ralen|r
    .accept 9035 >>Accept Roadside Ambush
    .target Apprentice Ralen
step
    .goto 1941,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Meledor|r
    .turnin 9035 >>Turn in Roadside Ambush
    .accept 9062 >>Accept Soaked Pages
    .target Apprentice Meledor
step
    .goto 1941,44.34,61.99
    >>Open the |cRXP_PICK_Soaked Tome|r. Loot it for |cRXP_LOOT_Antheol's Elemental Grimoire|r
    .complete 9062,1 --Antheol's Elemental Grimoire (1)
step
    .goto 1941,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Meledor|r
    .turnin 9062 >>Turn in Soaked Pages
    .accept 9064 >>Accept Taking the Fall
    .target Apprentice Meledor
step << Paladin
    .goto 1954,91.19,36.94,-1
    .goto 1954,91.14,38.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithelis|r or |cRXP_FRIENDLY_Osselan|r
    .trainer >>Train your class spells
    .target Ithelis
    .target Osselan
step << !Shaman !Hunter
    .goto 1941,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >> Get the Silvermoon City flight path
    .target Skymistress Gloaming
step
    .goto 1941,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >> Get the Silvermoon City flight path
    .target Skymistress Gloaming
step
    .goto 1941,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r
    .accept 8475 >>Accept The Dead Scar
    .target Ranger Jaela
step << BloodElf Priest
    #loop
    .goto 1941,50.46,50.90,0
    .goto 1941,50.46,50.90,40,0
    .goto 1941,50.34,51.05,40,0
    .goto 1941,47.11,71.82,40,0
    .goto 1941,46.55,72.17,40,0
    .goto 1941,50.24,50.96,40,0
    >>Interact with |cRXP_FRIENDLY_Eversong Rangers|r
    .complete 9489,1 --Eversong Ranger (6)
    .target Eversong Ranger
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 29 Eversong Woods
#subweight -1
#name 3-7 Eversong Woods: around Instructor Antheol
#next Zone Routes (Horde)\7-9 Eversong Woods: around Instructor Antheol

step
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9064 >>Turn in Taking the Fall
    .target Instructor Antheol
    .isOnQuest 9064
step
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .accept 9066 >>Accept Swift Discipline
    .target Instructor Antheol
    .isQuestTurnedIn 9064 --any of: Taking the Fall
step
    #loop
    .goto 1941,50.61,56.44,0
    .goto 1941,50.61,56.44,40,0
    .goto 1941,49.91,53.47,40,0
    .goto 1941,50.72,61.28,40,0
    >>Kill |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Plaguebone Pillager slain (8)
    .mob Plaguebone Pillager
    .isOnQuest 8475
step
    .goto 1941,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Jaela|r
    .turnin 8475 >>Turn in The Dead Scar
    .target Ranger Jaela
    .isOnQuest 8475
step
    .goto 1941,45.19,56.43
    >>Interact with |cRXP_FRIENDLY_Apprentice Ralen|r
    .complete 9066,2 --Apprentice Ralen
    .target Apprentice Ralen
    .isOnQuest 9066
step
    .goto 1941,44.88,61.03
    >>Interact with |cRXP_FRIENDLY_Apprentice Meledor|r
    .complete 9066,1 --Apprentice Meledor
    .target Apprentice Meledor
    .isOnQuest 9066
step
    .goto 1941,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .turnin 9119 >>Turn in Malfunction at the West Sanctum
    .target Ley-Keeper Velania
    .isOnQuest 9119
step
    .goto 1941,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .accept 8486 >>Accept Arcane Instability
    .target Ley-Keeper Velania
    .isQuestTurnedIn 9119 --any of: Malfunction at the West Sanctum
step
    #completewith Drop8482x1
    >>|cRXP_LOOT_Incriminating Documents|r can drop from |cRXP_ENEMY_Darnassian Scout|r. Use it to start the quest if you get one
    .collect 20765,1,8482 --Incriminating Documents (1)
    .accept 8482 >>Accept Incriminating Documents
    .use 20765
step
    #label Drop8482x1
    .goto 1941,34.05,60.81
    >>Kill |cRXP_ENEMY_Darnassian Scouts|r
    .complete 9352,1 --Intruder Defeated (8)
    .mob Darnassian Scout
    .isOnQuest 9352
step
    #loop
    .goto 1941,35.72,60.72,0
    .goto 1941,35.72,60.72,40,0
    .goto 1941,34.83,58.38,40,0
    >>Kill |cRXP_ENEMY_Manawraiths|r
    .complete 8486,1 --Manawraith slain (5)
    .mob Manawraith
    .isOnQuest 8486
step
    .goto 1941,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .turnin 9352 >>Turn in Darnassian Intrusions while you are here
    .isQuestComplete 9352
    .target Ley-Keeper Velania
step
    #loop
    .goto 1941,35.32,58.39,0
    .goto 1941,35.32,58.39,40,0
    .goto 1941,35.90,59.96,40,0
    >>Kill |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,2 --Mana Stalker slain (5)
    .mob Mana Stalker
    .isOnQuest 8486
step
    .goto 1941,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .turnin 8486 >>Turn in Arcane Instability
    .target Ley-Keeper Velania
    .isOnQuest 8486
step
    .goto 1941,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ley-Keeper Velania|r
    .turnin 9352 >>Turn in Darnassian Intrusions
    .target Ley-Keeper Velania
    .isOnQuest 9352
step
    .goto 1941,29.89,58.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hathvelion Sungaze|r
    .accept 8884 >>Accept Fish Heads, Fish Heads...
    .target Hathvelion Sungaze
step
    #completewith Drop8887x1
    >>|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r can drop from |cRXP_ENEMY_Grimscale Murloc|r, |cRXP_ENEMY_Grimscale Oracle|r, |cRXP_ENEMY_Grimscale Forager|r. Use it to start the quest if you get one
    .collect 21776,1,8887 --Captain Kelisendra's Lost Rutters (1)
    .accept 8887 >>Accept Captain Kelisendra's Lost Rutters
    .use 21776
step
    #label Drop8887x1
    #loop
    .goto 1941,27.44,60.07,0
    .goto 1941,27.44,60.07,40,0
    .goto 1941,26.35,57.60,40,0
    >>Kill |cRXP_ENEMY_Grimscale Murlocs|r, |cRXP_ENEMY_Grimscale Oracles|r, |cRXP_ENEMY_Grimscale Foragers|r and |cRXP_ENEMY_Mmmrrrgggllls|r. Loot them for |cRXP_LOOT_Grimscale Murloc Head|r
    .complete 8884,1 --Grimscale Murloc Head (8)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
    .mob Grimscale Forager
    .mob Mmmrrrggglll
step << Warrior/Warlock/Hunter/Rogue
    .goto 1941,27.47,56.54,0
    .goto 1941,27.47,56.54,40,0
    .goto 1941,26.45,58.14,40,0
    .goto 1941,26.35,59.41,40,0
    .goto 1941,28.20,59.52,40,0
    .goto 1941,27.96,61.31,40,0
    .goto 1941,25.70,60.50,40,0
    .goto 1941,25.36,62.88,40,0
    .goto 1941,25.61,64.29,40,0
    .xp 7+3195 >> Grind to 3195+/4500xp
step << Warrior/Warlock/Hunter/Rogue
    .goto 1941,27.47,56.54,0
    .goto 1941,27.47,56.54,40,0
    .goto 1941,26.45,58.14,40,0
    .goto 1941,26.35,59.41,40,0
    .goto 1941,28.20,59.52,40,0
    .goto 1941,27.96,61.31,40,0
    .goto 1941,25.70,60.50,40,0
    .goto 1941,25.36,62.88,40,0
    .goto 1941,25.61,64.29,40,0
    .xp 7+2540 >> Grind to 2540+/4500xp
step
    .goto 1941,29.89,58.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hathvelion Sungaze|r
    .turnin 8884 >>Turn in Fish Heads, Fish Heads...
    .accept 8885 >>Accept The Ring of Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #completewith next
    .hs >>Hearth to [DND] TAR Pedestal - Enchantments's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1941,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .turnin 8482 >>Turn in Incriminating Documents
    .target Aeldon Sunbrand
    .isOnQuest 8482
step << BloodElf Priest
    .goto 1941,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r
    .turnin 9489 >>Turn in Cleansing the Scar while you are here
    .isQuestComplete 9489
    .target Ponaris
step
    .goto 1941,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .accept 8483 >>Accept The Dwarven Spy
    .target Aeldon Sunbrand
    .isQuestTurnedIn 8482 --any of: Incriminating Documents
    .xp <4,1
step << Rogue/Warrior
    .goto 1941,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Train 1h Swords << Rogue
    .train 202 >>Train 2h Swords << Warrior
    .target Duelist Larenis
step << Rogue
    .goto 1941,48.58,46.29,8,0
    .goto 1941,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannaria|r upstairs
    .train 6760 >>Train your class spells
    .target Tannaria
step << Hunter
    .goto 1941,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Train your class spells
    .target Hannovia
step << Warlock
    .goto 1941,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celoenus|r upstairs
    .train 980 >>Train your class spells
    .target Celoenus
step << Undead Warrior/Rogue
    .goto 1941,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 9c). You'll come back later if you don't have enough yet
    .target Geron
step
    .goto 1941,44.57,53.30
    >>Kill |cRXP_ENEMY_Prospector Anvilward|r and loot |cRXP_LOOT_Prospector Anvilward's Head|r
    .complete 8483,1 --Prospector Anvilward's Head (1)
    .mob Prospector Anvilward
    .isOnQuest 8483
step
    .goto 1941,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .turnin 9256 >>Turn in Fairbreeze Village
    .target Ranger Degolien
    .isOnQuest 9256
step
    .goto 1941,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .accept 8892 >>Accept Situation at Sunsail Anchorage
    .target Ranger Degolien
step
    .goto 1941,43.67,71.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marniel Amberlight|r
    .accept 9358 >>Accept Ranger Sareyn
    .target Marniel Amberlight
step
    .goto 1941,43.57,71.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardeyn Riverwind|r
    .accept 9258 >>Accept The Scorched Grove
    .target Ardeyn Riverwind
step
    .goto 1941,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velan Brightoak|r
    .accept 8491 >>Accept Pelt Collection
    .target Velan Brightoak
step
    .goto 1941,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .accept 9395 >>Accept Saltheril's Haven
    .accept 9254 >>Accept The Wayward Apprentice
    .target Magistrix Landra Dawnstrider
step
    .goto 1941,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Saltheril|r
    .turnin 9395 >>Turn in Saltheril's Haven
    .target Lord Saltheril
step
    .goto 1941,36.36,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kelisendra|r
    .accept 8886 >>Accept Grimscale Pirates!
    .target Captain Kelisendra
step
    .goto 1941,36.36,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velendris Whitemorn|r
    .accept 8480 >>Accept Lost Armaments
    .target Velendris Whitemorn
step
    #completewith Along81
    >>As you go: Kill |cRXP_ENEMY_Wretched Thugs|r. Kill |cRXP_ENEMY_Wretched Hooligans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8892,1 --Wretched Thug slain (5)
    .complete 8892,2 --Wretched Hooligan slain (5)
    .mob Wretched Thug
    .mob Wretched Hooligan
step
    #label Along81
    #loop
    .goto 1941,34.05,69.14,0
    .goto 1941,34.05,69.14,40,0
    .goto 1941,32.21,70.51,40,0
    >>Loot the |cRXP_PICK_Weapon Containers|r for |cRXP_LOOT_Sin'dorei Armaments|r
    .complete 8480,1 --Sin'dorei Armaments (8)
step
    .goto 1941,36.36,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velendris Whitemorn|r
    .turnin 8480 >>Turn in Lost Armaments
    .accept 9076 >>Accept Wretched Ringleader
    .target Velendris Whitemorn
step
    #loop
    .goto 1941,34.39,69.11,0
    .goto 1941,34.39,69.11,40,0
    .goto 1941,32.14,69.62,40,0
    .goto 1941,29.78,69.60,40,0
    >>Kill |cRXP_ENEMY_Aldaron the Reckless|r and loot |cRXP_LOOT_Aldaron's Head|r
    >>Kill |cRXP_ENEMY_Wretched Thugs|r
    >>Kill |cRXP_ENEMY_Wretched Hooligans|r
    .complete 9076,1 --Aldaron's Head (1)
    .complete 8892,1 --Wretched Thug slain (5)
    .complete 8892,2 --Wretched Hooligan slain (5)
    .mob Aldaron the Reckless
    .mob Wretched Thug
    .mob Wretched Hooligan
step
    #completewith Drop8887x2
    >>|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r can drop from |cRXP_ENEMY_Grimscale Murloc|r, |cRXP_ENEMY_Grimscale Oracle|r, |cRXP_ENEMY_Grimscale Forager|r. Use it to start the quest if you get one
    .collect 21776,1,8887 --Captain Kelisendra's Lost Rutters (1)
    .accept 8887 >>Accept Captain Kelisendra's Lost Rutters
    .use 21776
step
    #label Drop8887x2
    #loop
    .goto 1941,25.12,68.91,0
    .goto 1941,25.12,68.91,40,0
    .goto 1941,25.37,65.99,40,0
    .goto 1941,24.29,72.59,40,0
    >>Kill |cRXP_ENEMY_Mmmrrrggglll|r and loot |cRXP_LOOT_Ring of Mmmrrrggglll|r
    >>Kill |cRXP_ENEMY_Grimscale Murlocs|r, |cRXP_ENEMY_Grimscale Oracles|r and |cRXP_ENEMY_Mmmrrrgggllls|r. Loot them for |cRXP_LOOT_Captain Kelisendra's Cargo|r. It can also be picked up from |cRXP_PICK_Captain Kelisendra's Cargo|r on the ground
    .complete 8885,1 --Ring of Mmmrrrggglll (1)
    .complete 8886,1 --Captain Kelisendra's Cargo (6)
    .mob Mmmrrrggglll
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto 1941,36.36,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kelisendra|r
    .turnin 8887 >>Turn in Captain Kelisendra's Lost Rutters
    .target Captain Kelisendra
    .isOnQuest 8887
step
    .goto 1941,36.36,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kelisendra|r
    .turnin 8886 >>Turn in Grimscale Pirates! while you are here
    .isQuestComplete 8886
    .target Captain Kelisendra
step
    .goto 1941,36.36,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velendris Whitemorn|r
    .turnin 9076 >>Turn in Wretched Ringleader while you are here
    .isQuestComplete 9076
    .target Velendris Whitemorn
step
    .goto 1941,29.89,58.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hathvelion Sungaze|r
    .turnin 8885 >>Turn in The Ring of Mmmrrrggglll
    .target Hathvelion Sungaze
step
    .goto 1941,36.36,66.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kelisendra|r
    .turnin 8886 >>Turn in Grimscale Pirates!
    .target Captain Kelisendra
step
    .goto 1941,36.36,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velendris Whitemorn|r
    .turnin 9076 >>Turn in Wretched Ringleader
    .target Velendris Whitemorn
step
    .goto 1941,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .turnin 8892 >>Turn in Situation at Sunsail Anchorage
    .accept 9359 >>Accept Farstrider Retreat
    .target Ranger Degolien
step
    .goto 1941,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r
    .turnin 9358 >>Turn in Ranger Sareyn
    .accept 9252 >>Accept Defending Fairbreeze Village
    .target Ranger Sareyn
step
    #completewith Along96
    >>As you go: Kill |cRXP_ENEMY_Rotlimb Marauders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9252,1 --Rotlimb Marauder slain (4)
    .mob Rotlimb Marauder
step
    #loop
    .goto 1941,50.93,80.06,0
    .goto 1941,50.93,80.06,40,0
    .goto 1941,50.67,83.19,40,0
    >>Kill |cRXP_ENEMY_Darkwraiths|r
    .complete 9252,2 --Darkwraith slain (4)
    .mob Darkwraith
step
    .goto 1941,54.28,70.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .turnin 9254 >>Turn in The Wayward Apprentice
    .accept 8487 >>Accept Corrupted Soil
    .target Apprentice Mirveda
step
    #loop
    .goto 1941,52.56,69.66,0
    .goto 1941,52.56,69.66,40,0
    .goto 1941,50.80,72.16,40,0
    >>Pick up |cRXP_PICK_Tainted Soil Sample|r from the ground
    .complete 8487,1 --Tainted Soil Sample (8)
step
    .goto 1941,54.28,70.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .turnin 8487 >>Turn in Corrupted Soil
    .accept 8488 >>Accept Unexpected Results
    .target Apprentice Mirveda
step
    .goto 1941,54.06,70.63
    >>Kill |cRXP_ENEMY_Gharsul the Remorseless|r
    .complete 8488,1 --Gharsul the Remorseless slain (1)
    .mob Gharsul the Remorseless
step
    #label Along96
    .goto 1941,54.28,70.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Mirveda|r
    .turnin 8488 >>Turn in Unexpected Results
    .accept 9255 >>Accept Research Notes
    .target Apprentice Mirveda
step
    #loop
    .goto 1941,52.24,70.40,0
    .goto 1941,52.24,70.40,40,0
    .goto 1941,51.94,73.48,40,0
    >>Kill |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Rotlimb Marauder slain (4)
    .mob Rotlimb Marauder
step << !Warrior !Warlock/BloodElf
    .goto 1941,53.88,70.03,0
    .goto 1941,54.13,71.21,40,0
    .goto 1941,50.79,72.17,40,0
    .goto 1941,50.87,71.40,40,0
    .goto 1941,51.21,69.89,40,0
    .goto 1941,51.47,69.09,40,0
    .goto 1941,52.60,68.47,40,0
    .goto 1941,53.24,69.28,40,0
    .goto 1941,53.88,70.03,40,0
    .xp 9+5875 >> Grind to 5875+/6500xp
step << !Warrior !Warlock/BloodElf
    .goto 1941,53.88,70.03,0
    .goto 1941,54.13,71.21,40,0
    .goto 1941,50.79,72.17,40,0
    .goto 1941,50.87,71.40,40,0
    .goto 1941,51.21,69.89,40,0
    .goto 1941,51.47,69.09,40,0
    .goto 1941,52.60,68.47,40,0
    .goto 1941,53.24,69.28,40,0
    .goto 1941,53.88,70.03,40,0
    .xp 9+5560 >> Grind to 5560+/6500xp
step << Warrior/Undead Warlock/Orc Warlock
    .goto 1941,53.88,70.03,0
    .goto 1941,54.13,71.21,40,0
    .goto 1941,50.79,72.17,40,0
    .goto 1941,50.87,71.40,40,0
    .goto 1941,51.21,69.89,40,0
    .goto 1941,51.47,69.09,40,0
    .goto 1941,52.60,68.47,40,0
    .goto 1941,53.24,69.28,40,0
    .goto 1941,53.88,70.03,40,0
    .xp 10 >> Grind to level 10
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 29 Eversong Woods
#subweight -1
#name 7-9 Eversong Woods: around Instructor Antheol
#next Zone Routes (Horde)\9-11 Eversong Woods: around Magistrix Landra Dawnstrider

step
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9066 >>Turn in Swift Discipline
    .target Instructor Antheol
    .isOnQuest 9066
step << Mage
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .accept 9402 >>Accept Fetch!
    .target Instructor Antheol
step << Mage
    .goto 1941,54.87,56.37
    >>Pick up |cRXP_PICK_Azure Phial|r from the ground
    .complete 9402,1 --Azure Phial (1)
step << Mage
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9402 >>Turn in Fetch!
    .accept 9403 >>Accept The Purest Water
    .target Instructor Antheol
step << Orc Hunter/Troll Hunter
    .goto 1954,91.23,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ileda|r
    .train 202 >>Train 2h Swords
    .target Ileda
    .money <0.1000
step << Orc Hunter/Troll Hunter/Tauren
    .goto 1941,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >> Get the Silvermoon City flight path
    .target Skymistress Gloaming
step << BloodElf Hunter
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step << BloodElf Hunter
    .xp 10 >>Grind to level 10 (Seek the Farstriders needs it)
step << BloodElf Hunter
    .goto 1954,84.39,26.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oninath|r
    .accept 9617 >>Accept Seek the Farstriders
    .target Oninath
step << BloodElf Hunter
    #completewith next
    .zone 1941 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 1941
step << BloodElf Hunter
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 10530 >>Turn in The Hunter's Path
    .target Lieutenant Dawnrunner
    .isOnQuest 10530
step
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9359 >>Turn in Farstrider Retreat while you are here
    .isQuestComplete 9359
    .target Lieutenant Dawnrunner
step << BloodElf Hunter
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9617 >>Turn in Seek the Farstriders
    .target Lieutenant Dawnrunner
step
    .goto 1941,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .accept 8888 >>Accept The Magister's Apprentice
    .target Magister Duskwither
    .xp <8,1
step << BloodElf Priest
    .goto 1941,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r
    .turnin 9489 >>Turn in Cleansing the Scar
    .target Ponaris
    .isOnQuest 9489
step << Priest
    .goto 1941,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r upstairs
    .train 8092 >>Train your class spells
    .target Ponaris
    .xp <10,1
    .xp >12,1
step << Priest
    .goto 1941,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r upstairs
    .train 592 >>Train your class spells
    .target Ponaris
    .xp <12,1
step << Mage
    .goto 1941,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r upstairs
    .train 7300 >>Train your class spells
    .target Garridel
    .xp <10,1
    .xp >12,1
step << Mage
    .goto 1941,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r upstairs
    .train 145 >>Train your class spells
    .target Garridel
    .xp <12,1
step << Undead Warlock
    .goto 1941,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celoenus|r upstairs
    .train 707 >>Train your class spells
    .target Celoenus
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    .goto 1941,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celoenus|r upstairs
    .train 705 >>Train your class spells
    .target Celoenus
    .xp <12,1
step << BloodElf Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 707 >>Train your class spells
    .target Talionia
    .xp <10,1
    .xp >12,1
step << BloodElf Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 705 >>Train your class spells
    .target Talionia
    .xp <12,1
step << BloodElf Warlock
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step << BloodElf Warlock
    .goto 1954,74.39,47.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .turnin 10788 >>Turn in Return to Talionia
    .target Talionia
    .isOnQuest 10788
step << BloodElf Warlock
    .goto 1954,74.39,47.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .accept 9529 >>Accept The Stone
    .target Talionia
step << BloodElf Warlock
    #completewith next
    .zone 1941 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 1941
step
    .goto 1941,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .turnin 8483 >>Turn in The Dwarven Spy
    .target Aeldon Sunbrand
    .isOnQuest 8483
step
    .goto 1941,45.02,37.68
    .xp 10 >> Grind to level 10
step << Undead Warrior/Paladin/Rogue
    .goto 1941,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135321:0|t[Gladius] (5s 9c). You'll come back later if you don't have enough yet
    .target Geron
step << Paladin
    .goto 1941,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noellene|r
    .train 633 >>Train your class spells
    .target Noellene
    .xp <10,1
    .xp >12,1
step << Paladin
    .goto 1941,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noellene|r
    .train 19834 >>Train your class spells
    .target Noellene
    .xp <12,1
step << Rogue
    .goto 1941,48.58,46.29,8,0
    .goto 1941,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannaria|r upstairs
    .train 2983 >>Train your class spells
    .target Tannaria
    .xp <10,1
step << Hunter
    .goto 1941,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannovia|r
    .train 13165 >>Train your class spells
    .target Hannovia
    .xp <10,1
    .xp >12,1
step << Hunter
    .goto 1941,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannovia|r
    .train 14281 >>Train your class spells
    .target Hannovia
    .xp <12,1
step
    .goto 1941,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeldon Sunbrand|r
    .accept 9256 >>Accept Fairbreeze Village
    .target Aeldon Sunbrand
    .isQuestTurnedIn 8483 --any of: The Dwarven Spy
    .xp <6,1
step
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9359 >>Turn in Farstrider Retreat
    .target Lieutenant Dawnrunner
    .isOnQuest 9359
step
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .accept 8476 >>Accept Amani Encroachment
    .accept 9484 >>Accept Taming the Beast << BloodElf Hunter
    .target Lieutenant Dawnrunner
step
    .goto 1941,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathel Sunforge|r
    .accept 8477 >>Accept The Spearcrafter's Hammer
    .target Arathel Sunforge
step
    .goto 1941,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathel|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]. You'll get |T136248:0|t[Mining] later which will allow you to craft |T135248:0|t[Sharpening Stones] (+2 Weapon Damage for 1 hour) << Paladin/BloodElf Rogue/Undead Rogue
    >>|cRXP_WARN_You can skip|r |T136241:0|t[Blacksmithing] |cRXP_WARN_if you wish|r << Paladin/BloodElf Rogue/Undead Rogue
    .target Arathel Sunforge
step
    .goto 1941,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .accept 8888 >>Accept The Magister's Apprentice
    .target Magister Duskwither
    .xp <8,1
step << Mage
    .goto 1941,64.31,72.84
    >>Open the |cRXP_PICK_Elrendar Falls Spell Focus|r. Loot it for |cRXP_LOOT_Filled Azure Phial|r
    .complete 9403,1 --Filled Azure Phial (1)
step << BloodElf Hunter
    #loop
    .goto 1941,57.92,82.57,0
    .goto 1941,57.92,82.57,40,0
    .goto 1941,57.40,81.72,40,0
    .goto 1941,58.79,85.98,40,0
    .goto 1941,57.96,87.18,40,0
    .goto 1941,57.18,85.99,40,0
    .goto 1941,55.15,87.12,40,0
    .goto 1941,53.51,87.83,40,0
    >>Interact with |cRXP_FRIENDLY_Crazed Dragonhawk|r
    .complete 9484,1 --Crazed Dragonhawk
    .target Crazed Dragonhawk
step << BloodElf Hunter
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9484 >>Turn in Taming the Beast
    .accept 9486 >>Accept Taming the Beast
    .target Lieutenant Dawnrunner
step
    .goto 1941,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .accept 8888 >>Accept The Magister's Apprentice
    .target Magister Duskwither
    .xp <8,1
step << BloodElf Hunter
    #loop
    .goto 1941,64.86,61.15,0
    .goto 1941,64.86,61.15,40,0
    .goto 1941,66.54,61.44,40,0
    .goto 1941,66.21,57.45,40,0
    .goto 1941,67.60,58.74,40,0
    .goto 1941,68.89,58.29,40,0
    >>Interact with |cRXP_FRIENDLY_Elder Springpaw|r
    .complete 9486,1 --Elder Springpaw
    .target Elder Springpaw
step << BloodElf Hunter
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9486 >>Turn in Taming the Beast
    .accept 9485 >>Accept Taming the Beast
    .target Lieutenant Dawnrunner
step
    .goto 1941,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .accept 8888 >>Accept The Magister's Apprentice
    .target Magister Duskwither
    .xp <8,1
step
    #completewith Along122
    >>As you go: Kill |cRXP_ENEMY_Amani Berserkers|r. Kill |cRXP_ENEMY_Amani Axe Throwers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8476,1 --Amani Berserker slain (5)
    .complete 8476,2 --Amani Axe Thrower slain (5)
    .mob Amani Berserker
    .mob Amani Axe Thrower
step
    .goto 1941,70.10,72.28
    >>Kill |cRXP_ENEMY_Spearcrafter Otembe|r and loot |cRXP_LOOT_Otembe's Hammer|r
    .complete 8477,1 --Otembe's Hammer (1)
    .mob Spearcrafter Otembe
step
    .goto 1941,70.53,72.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven'jashi|r
    .accept 8479 >>Accept Zul'Marosh
    .target Ven'jashi
step
    .goto 1941,62.51,79.68
    >>Kill |cRXP_ENEMY_Chieftain Zul'Marosh|r and loot |cRXP_LOOT_Chieftain Zul'Marosh's Head|r
    .complete 8479,1 --Chieftain Zul'Marosh's Head (1)
    .mob Chieftain Zul'Marosh
step
    .goto 1941,62.51,79.68
    >>Kill |cRXP_ENEMY_Chieftain Zul'Marosh|r and loot |cRXP_LOOT_Amani Invasion Plans|r. Use it to start the quest
    .collect 23249,1,9360 --Amani Invasion Plans (1)
    .accept 9360 >>Accept Amani Invasion
    .use 23249
    .mob Chieftain Zul'Marosh
step
    #label Along122
    .goto 1941,70.53,72.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ven'jashi|r
    .turnin 8479 >>Turn in Zul'Marosh
    .target Ven'jashi
step
    #loop
    .goto 1941,69.96,71.84,0
    .goto 1941,69.96,71.84,40,0
    .goto 1941,70.10,76.10,40,0
    .goto 1941,70.88,78.00,40,0
    >>Kill |cRXP_ENEMY_Amani Berserkers|r
    >>Kill |cRXP_ENEMY_Amani Axe Throwers|r
    .complete 8476,1 --Amani Berserker slain (5)
    .complete 8476,2 --Amani Axe Thrower slain (5)
    .mob Amani Berserker
    .mob Amani Axe Thrower
step
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 8476 >>Turn in Amani Encroachment
    .turnin 9360 >>Turn in Amani Invasion
    .accept 9363 >>Accept Warning Fairbreeze Village
    .target Lieutenant Dawnrunner
step
    .goto 1941,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arathel Sunforge|r
    .turnin 8477 >>Turn in The Spearcrafter's Hammer
    .target Arathel Sunforge
step
    .goto 1941,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .accept 8888 >>Accept The Magister's Apprentice
    .target Magister Duskwither
step
    .goto 1941,67.81,56.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Loralthalis|r
    .turnin 8888 >>Turn in The Magister's Apprentice
    .accept 8889 >>Accept Deactivating the Spire
    .accept 9394 >>Accept Where's Wyllithen?
    .target Apprentice Loralthalis
step
    .goto 1941,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wyllithen|r
    .turnin 9394 >>Turn in Where's Wyllithen?
    .accept 8894 >>Accept Cleaning up the Grounds
    .target Groundskeeper Wyllithen
step
    #completewith Along130
    >>As you go: Click the |cRXP_PICK_Duskwither Spire Power Source|r. Kill |cRXP_ENEMY_Mana Serpents|r. Kill |cRXP_ENEMY_Ether Fiends|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8889,2 --Second Power Source Deactivated
    .complete 8889,3 --Third Power Source Deactivated
    .complete 8894,1 --Mana Serpent slain (6)
    .complete 8894,2 --Ether Fiend slain (6)
    .mob Mana Serpent
    .mob Ether Fiend
step
    .goto 1941,68.96,51.95
    >>Click the |cRXP_PICK_Duskwither Spire Power Source|r
    .complete 8889,1 --First Power Source Deactivated
step
    #label Along130
    .goto 1941,69.24,52.11
    >>Click the |cRXP_PICK_Magister Duskwither's Journal|r
    .accept 8891 >>Accept Abandoned Investigations
step
    #loop
    .goto 1941,68.65,51.91,0
    .goto 1941,68.65,51.91,40,0
    .goto 1941,69.45,48.38,40,0
    .goto 1941,68.92,44.58,40,0
    >>Click the |cRXP_PICK_Duskwither Spire Power Source|r
    >>Kill |cRXP_ENEMY_Mana Serpents|r
    >>Kill |cRXP_ENEMY_Ether Fiends|r
    .complete 8889,2 --Second Power Source Deactivated
    .complete 8889,3 --Third Power Source Deactivated
    .complete 8894,1 --Mana Serpent slain (6)
    .complete 8894,2 --Ether Fiend slain (6)
    .mob Mana Serpent
    .mob Ether Fiend
step
    .goto 1941,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wyllithen|r
    .turnin 8894 >>Turn in Cleaning up the Grounds
    .target Groundskeeper Wyllithen
step << Mage
    .goto 1941,69.15,50.56,0
    .goto 1941,69.15,50.56,40,0
    .goto 1941,70.02,50.62,40,0
    .goto 1941,70.58,48.16,40,0
    .goto 1941,69.97,46.28,40,0
    .goto 1941,69.50,44.69,40,0
    .goto 1941,68.29,43.31,40,0
    .goto 1941,67.61,45.28,40,0
    .goto 1941,67.13,48.48,40,0
    .goto 1941,69.01,48.22,40,0
    .xp 11+5535 >> Grind to 5535+/8700xp
step << !BloodElf/!Warlock
    .goto 1941,69.15,50.56,0
    .goto 1941,69.15,50.56,40,0
    .goto 1941,70.02,50.62,40,0
    .goto 1941,70.58,48.16,40,0
    .goto 1941,69.97,46.28,40,0
    .goto 1941,69.50,44.69,40,0
    .goto 1941,68.29,43.31,40,0
    .goto 1941,67.61,45.28,40,0
    .goto 1941,67.13,48.48,40,0
    .goto 1941,69.01,48.22,40,0
    .xp 11+6375 >> Grind to 6375+/8700xp
step << Mage
    .goto 1941,69.15,50.56,0
    .goto 1941,69.15,50.56,40,0
    .goto 1941,70.02,50.62,40,0
    .goto 1941,70.58,48.16,40,0
    .goto 1941,69.97,46.28,40,0
    .goto 1941,69.50,44.69,40,0
    .goto 1941,68.29,43.31,40,0
    .goto 1941,67.61,45.28,40,0
    .goto 1941,67.13,48.48,40,0
    .goto 1941,69.01,48.22,40,0
    .xp 11+3960 >> Grind to 3960+/8700xp
step << !BloodElf/!Warlock
    .goto 1941,69.15,50.56,0
    .goto 1941,69.15,50.56,40,0
    .goto 1941,70.02,50.62,40,0
    .goto 1941,70.58,48.16,40,0
    .goto 1941,69.97,46.28,40,0
    .goto 1941,69.50,44.69,40,0
    .goto 1941,68.29,43.31,40,0
    .goto 1941,67.61,45.28,40,0
    .goto 1941,67.13,48.48,40,0
    .goto 1941,69.01,48.22,40,0
    .xp 11+5110 >> Grind to 5110+/8700xp
step
    .goto 1941,67.81,56.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Loralthalis|r
    .turnin 8889 >>Turn in Deactivating the Spire
    .accept 8890 >>Accept Word from the Spire
    .target Apprentice Loralthalis
step
    #loop
    .goto 1941,65.44,59.85,0
    .goto 1941,65.44,59.85,40,0
    .goto 1941,63.20,63.41,40,0
    .goto 1941,59.27,57.25,40,0
    >>Kill |cRXP_ENEMY_Springpaw Stalkers|r and |cRXP_ENEMY_Elder Springpaws|r. Loot them for |cRXP_LOOT_Springpaw Pelt|r
    .complete 8491,1 --Springpaw Pelt (6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
    .isOnQuest 8491
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 29 Eversong Woods
#subweight -1
#name 9-11 Eversong Woods: around Magistrix Landra Dawnstrider
--RouteBuilder:next
#next Zone Routes (Horde)\10-13 The Barrens: around Sergra Darkthorn;Zone Routes (Horde)\4-10 Durotar: around Master Gadrin;Zone Routes (Horde)\10-13 Ghostlands: around Arcanist Vandril

step
    .goto 1941,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velan Brightoak|r
    .turnin 8491 >>Turn in Pelt Collection
    .target Velan Brightoak
    .isOnQuest 8491
step
    .goto 1941,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .turnin 9255 >>Turn in Research Notes while you are here
    .isQuestComplete 9255
    .target Magistrix Landra Dawnstrider
step
    .goto 1941,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .turnin 9363 >>Turn in Warning Fairbreeze Village while you are here
    .isQuestComplete 9363
    .target Ranger Degolien
step
    .goto 1941,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .turnin 8890 >>Turn in Word from the Spire
    .target Magister Duskwither
    .isOnQuest 8890
step
    .goto 1941,60.32,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Duskwither|r
    .turnin 8891 >>Turn in Abandoned Investigations
    .target Magister Duskwither
    .isOnQuest 8891
step << BloodElf Hunter
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9485 >>Turn in Taming the Beast
    .target Lieutenant Dawnrunner
    .isQuestComplete 9485
step << Mage
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9403 >>Turn in The Purest Water
    .target Instructor Antheol
    .isOnQuest 9403
step << Mage
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .accept 9404 >>Accept Recently Living
    .target Instructor Antheol
    .isQuestTurnedIn 9403 --any of: The Purest Water
step << Druid
    .goto 1954,72.53,56.24,10,0
    .goto 1954,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harene|r
    .train 8936 >> Train your class spells
    .target Harene Plainwalker
    .xp <12,1
    .xp >14,1
step << Druid
    .goto 1954,72.53,56.24,10,0
    .goto 1954,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harene|r
    .train 782 >> Train your class spells
    .target Harene Plainwalker
    .xp <14,1
step << Orc Warlock/Undead Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 705 >> Train your class spells
    .target Talionia
    .xp <12,1
    .xp >14,1
step << Orc Warlock/Undead Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Train your class spells
    .target Talionia
    .xp <14,1
step << BloodElf Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Make sure you've trained|r |T133644:0|t[Pick Pocket] |cRXP_WARN_and|r |T132320:0|t[Stealth] |cRXP_WARN_for a quest later|r
    .train 2983 >>Train your class spells
    .target Zelanis
    .train 2983,1
    .xp <10,1
    .xp >14,1
step << BloodElf Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Make sure you've trained|r |T133644:0|t[Pick Pocket] |cRXP_WARN_and|r |T132320:0|t[Stealth] |cRXP_WARN_for a quest later|r
    .train 1758 >>Train your class spells
    .target Zelanis
    .train 1758,1
    .xp <14,1
step << BloodElf Rogue
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step << BloodElf Rogue
    .goto 1954,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 9532 >>Accept Find Keltus Darkleaf
    .target Zelanis
step << BloodElf Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .train 921 >> Train |T133644:0|t[Pick Pocket] for a quest later
    .train 1784 >> Train |T132320:0|t[Stealth] for a quest later
    .train 921,1
    .train 1784,1
    .target Zelanis
step << BloodElf Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .train 1784 >> Train |T132320:0|t[Stealth] for a quest later
    .target Zelanis
step << BloodElf Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .train 921 >> Train |T133644:0|t[Pick Pocket] for a quest later
    .target Zelanis
step << !BloodElf Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .train 2983 >>Train your class spells
    .target Zelanis
    .xp <10,1
    .xp >14,1
step << !BloodElf Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .train 1758 >>Train your class spells
    .target Zelanis
    .xp <14,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    .goto 1954,78.90,43.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belil|r
    .train 2580 >> Train |T136248:0|t[Mining]. This will allow you to find |T135232:0|t|cRXP_LOOT_[Rough Stones]|r from nodes in order to craft |T135248:0|t[Sharpening Stones] (+2 Weapon Damage for 1 hour) << Paladin/BloodElf Rogue/Undead Rogue
    .target Belil
step << Paladin
    .goto 1954,91.19,36.94,-1
    .goto 1954,91.14,38.10,-1
    >>|cRXP_WARN_Jump onto one of the benches below to avoid walking up the stairs|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithelis|r or |cRXP_FRIENDLY_Osselan|r
    .train 19834 >>Train your class spells
    .target Ithelis
    .target Osselan
    .xp <12,1
    .xp >14,1
step << Paladin
    .goto 1954,91.19,36.94,-1
    .goto 1954,91.14,38.10,-1
    >>|cRXP_WARN_Jump onto one of the benches below to avoid walking up the stairs|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithelis|r or |cRXP_FRIENDLY_Osselan|r
    .train 647 >>Train your class spells
    .target Ithelis
    .target Osselan
    .xp <14,1
step << BloodElf Rogue
    #completewith next
    .zone 1941 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 1941
step << BloodElf Hunter
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .accept 9673 >>Accept Beast Training
    .target Lieutenant Dawnrunner
    .isQuestTurnedIn 9485 --any of: Taming the Beast
    .xp <10,1
step
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step << BloodElf Hunter
    .goto 1954,82.18,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halthenis|r
    .turnin 9673 >>Turn in Beast Training
    .target Halthenis
    .isOnQuest 9673
step << BloodElf Hunter
    .goto 1954,82.20,28.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halthenis|r
    .train 4187 >> Train your pet spells
    .target Halthenis
step << Hunter
    .goto 1954,82.39,26.09 << BloodElf
    .goto 1954,84.71,28.05 << !BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tana|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r << !BloodElf
    >>|cRXP_WARN_Drag|r |T132162:0|t[Beast Training] |cRXP_WARN_onto your Action Bars. Teach skills to your pet|r << BloodElf
    .train 14281 >> Train your class spells
    .target Tana << BloodElf
    .target Zandine << !BloodElf
    .xp <12,1
step << BloodElf
    .goto 1954,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Turn in Fly to Silvermoon City
    .target Sathren Azuredawn
    .isOnQuest 9133
step << BloodElf
    .goto 1954,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .accept 9134 >>Accept Skymistress Gloaming
    .target Sathren Azuredawn
    .isQuestTurnedIn 9133 --any of: Fly to Silvermoon City
    .xp <10,1
step
    #completewith next
    .zone 1941 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 1941
step << BloodElf
    .goto 1941,54.36,50.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymistress Gloaming|r
    .turnin 9134 >>Turn in Skymistress Gloaming
    .target Skymistress Gloaming
    .isOnQuest 9134
step << BloodElf
    .goto 1941,54.36,50.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymistress Gloaming|r
    .accept 9135 >>Accept Return to Quartermaster Lymel
    .target Skymistress Gloaming
    .isQuestTurnedIn 9134 --any of: Skymistress Gloaming
    .xp <10,1
step << BloodElf !Hunter !Warlock/Undead !Warlock !Warrior/Orc !Warrior !Warlock !Hunter/Troll !Warrior !Hunter/!Tauren
    .hs >> Hearth to Falconwing Square
    .cooldown item,6948,>0
    .subzoneskip 3665
step << Priest
    .goto 1941,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r upstairs
    .train 592 >> Train your class spells
    .target Ponaris
    .xp <12,1
    .xp >14,1
step << Priest
    .goto 1941,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ponaris|r upstairs
    .train 598 >> Train your class spells
    .target Ponaris
    .xp <14,1
step << Mage
    .goto 1941,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r upstairs
    .train 145 >> Train your class spells
    .target Garridel
    .xp <12,1
    .xp >14,1
step << Mage
    .goto 1941,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garridel|r upstairs
    .train 1449 >> Train your class spells
    .target Garridel
    .xp <14,1
step
    .goto 1941,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r
    .turnin 9252 >>Turn in Defending Fairbreeze Village
    .target Ranger Sareyn
    .isOnQuest 9252
step
    .goto 1941,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sareyn|r
    .accept 9253 >>Accept Runewarden Deryan
    .target Ranger Sareyn
    .isQuestTurnedIn 9252 --any of: Defending Fairbreeze Village
step
    .goto 1941,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .accept 9144 >>Accept Missing in the Ghostlands
    .target Magistrix Landra Dawnstrider
step
    .goto 1941,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Landra Dawnstrider|r
    .turnin 9255 >>Turn in Research Notes
    .target Magistrix Landra Dawnstrider
    .isOnQuest 9255
step
    .goto 1941,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Degolien|r
    .turnin 9363 >>Turn in Warning Fairbreeze Village
    .target Ranger Degolien
    .isOnQuest 9363
step
    .goto 1941,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larianna Riverwind|r
    .turnin 9258 >>Turn in The Scorched Grove
    .target Larianna Riverwind
    .isOnQuest 9258
step
    .goto 1941,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larianna Riverwind|r
    .accept 8473 >>Accept A Somber Task
    .target Larianna Riverwind
step
    #completewith Along155
    >>As you go: Kill |cRXP_ENEMY_Withered Green Keepers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8473,1 --Withered Green Keeper slain (10)
    .mob Withered Green Keeper
step
    #label Along155
    .goto 1941,34.93,84.46
    >>Kill |cRXP_ENEMY_Old Whitebark|r and loot |cRXP_LOOT_Old Whitebark's Pendant|r. Use it to start the quest
    .collect 23228,1,8474 --Old Whitebark's Pendant (1)
    .accept 8474 >>Accept Old Whitebark's Pendant
    .use 23228
    .mob Old Whitebark
step
    #loop
    .goto 1941,35.12,82.90,0
    .goto 1941,35.12,82.90,40,0
    .goto 1941,32.39,85.09,40,0
    >>Kill |cRXP_ENEMY_Withered Green Keepers|r
    .complete 8473,1 --Withered Green Keeper slain (10)
    .mob Withered Green Keeper
step
    .goto 1941,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larianna Riverwind|r
    .turnin 8473 >>Turn in A Somber Task
    .turnin 8474 >>Turn in Old Whitebark's Pendant
    .accept 10166 >>Accept Whitebark's Memory
    .target Larianna Riverwind
step
    .goto 1941,37.80,86.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whitebark's Spirit|r
    .turnin 10166 >>Turn in Whitebark's Memory
    .target Whitebark's Spirit
step
    .goto 1941,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runewarden Deryan|r
    .turnin 9253 >>Turn in Runewarden Deryan
    .target Runewarden Deryan
    .isOnQuest 9253
step
    .goto 1941,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runewarden Deryan|r
    .accept 8490 >>Accept Powering our Defenses
    .target Runewarden Deryan
step
    .goto 1941,44.19,85.47
    >>Place the Infused Crystal at the Eastern Runestone and protect it from the Scourge for 1 minute. Return the Infused Crystal to Runewarden Deryan in Eversong Woods for a reward.
    .complete 8490,1 --Infused Crystal
step
    .goto 1941,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runewarden Deryan|r
    .turnin 8490 >>Turn in Powering our Defenses
    .target Runewarden Deryan
step << Mage
    #loop
    .goto 1941,53.78,80.87,0
    .goto 1941,53.78,80.87,40,0
    .goto 1941,54.10,77.47,40,0
    .goto 1941,55.00,74.19,40,0
    >>Kill |cRXP_ENEMY_Eversong Green Keeper|r and loot |cRXP_LOOT_Living Branch|r
    .complete 9404,1 --Living Branch (1)
    .mob Eversong Green Keeper
    .isOnQuest 9404
step
    .goto 1941,48.98,88.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Dawnstrider|r
    .turnin 9144 >>Turn in Missing in the Ghostlands
    .target Courier Dawnstrider
step
    .goto 1941,49.02,89.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Thedra|r
    .accept 9147 >>Accept The Fallen Courier
    .target Apothecary Thedra
step
    .goto 1941,49.02,89.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Thedra|r
    .turnin 9147 >>Turn in The Fallen Courier
    .target Apothecary Thedra
    .isQuestComplete 9147
step << Mage
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Antheol|r
    .turnin 9404 >>Turn in Recently Living
    .target Instructor Antheol
    .isOnQuest 9404
step << Mage
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antheol|r
    .train 1460,1
    .target Instructor Antheol
step << Priest
    .goto 1954,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheolan|r
    .train 8122 >> Train your class spells
    .target Lotheolan
    .xp <14,1
    .xp >16,1
step << Priest
    .goto 1954,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheolan|r
    .train 8102 >> Train your class spells
    .target Lotheolan
    .xp <16,1
step << Mage
    .goto 1954,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaedana|r
    .train 1460 >> Train your class spells
    .target Zaedana
    .xp <14,1
    .xp >16,1
step << Mage
    .goto 1954,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaedana|r
    .train 2120 >> Train your class spells
    .target Zaedana
    .xp <16,1
step << !BloodElf Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Train your class spells
    .target Talionia
    .xp <14,1
step << Mage
    .goto 1941,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antheol|r
    .train 3140,1
    .target Instructor Antheol
step << Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Make sure you've trained|r |T136058:0|t[Pick Lock] |cRXP_WARN_for a quest later|r
    .train 1804 >>Train your class spells
    .target Zelanis
    .train 1804,1
    .xp <16,1
step
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step
    .goto 1954,74.39,47.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .accept 10790 >>Accept Return to Gan'rul Bloodeye << Orc Warlock
    .accept 10789 >>Accept Return to Carendin Halgar << Undead Warlock
    .target Talionia
step
    #completewith next
    .zone 1941 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 1941
step
    .goto 1941,48.98,88.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Dawnstrider|r
    .accept 9148 >>Accept Delivery to Tranquillien
    .target Courier Dawnstrider
    .isQuestTurnedIn 9147 --any of: The Fallen Courier
    .xp <9,1
step << BloodElf Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 705 >> Train your class spells
    .target Talionia
    .xp <12,1
    .xp >14,1
    .train 705,1
step << BloodElf Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Train your class spells
    .target Talionia
    .xp <14,1
    .xp >16,1
    .train 6222,1
step << BloodElf Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 1455 >> Train your class spells
    .target Talionia
    .xp <16,1
    .train 1455,1
step
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step << BloodElf Rogue
    .goto 1954,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .turnin 9618 >>Turn in Return the Reports
    .target Zelanis
    .isOnQuest 9618
step << Priest
    .goto 1954,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheolan|r
    .train 8102 >> Train your class spells
    .target Lotheolan
    .xp <16,1
    .xp >18,1
step << Priest
    .goto 1954,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheolan|r
    .train 970 >> Train your class spells
    .target Lotheolan
    .train 8102,1
    .xp <18,1
step << Mage
    .goto 1954,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaedana|r
    .train 2120 >> Train your class spells
    .target Zaedana
    .xp <16,1
    .xp >18,1
step << Mage
    .goto 1954,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaedana|r
    .train 3140 >> Train your class spells
    .target Zaedana
    .xp <18,1
step << Hunter
    .goto 1954,84.71,28.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .train 13795 >>Train your class spells << tbc
    .train 5118 >>Train your class spells << wotlk
    .target Zandine
    .xp <16,1
    .xp >18,1
step << Hunter
    .goto 1954,84.71,28.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .train 14318 >> Train your class spells
    .target Zandine
    .xp <18,1
step << Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Train your class spells
    .target Talionia
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 1014 >> Train your class spells
    .target Talionia
    .xp <18,1
step << Paladin
    .goto 1954,91.74,35.35,12,0
    .goto 1954,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bachi|r
    .train 647 >>Train your class spells
    .target Champion Bachi
    .xp <14,1
    .xp >16,1
step << Paladin
    .goto 1954,91.74,35.35,12,0
    .goto 1954,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bachi|r
    .train 7294 >>Train your class spells << tbc
    .train 62124 >>Train your class spells << wotlk
    .target Champion Bachi
    .xp <16,1
step << Paladin
    .goto 1954,91.19,36.94,-1
    .goto 1954,91.14,38.10,-1
    >>|cRXP_WARN_Jump onto one of the benches below to avoid walking up the stairs|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithelis|r or |cRXP_FRIENDLY_Osselan|r
    .train 647 >>Train your class spells
    .target Ithelis
    .target Osselan
    .xp <14,1
    .xp >16,1
step << Paladin
    .goto 1954,91.19,36.94,-1
    .goto 1954,91.14,38.10,-1
    >>|cRXP_WARN_Jump onto one of the benches below to avoid walking up the stairs|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithelis|r or |cRXP_FRIENDLY_Osselan|r
    .train 7294 >>Train your class spells << tbc
    .train 62124 >>Train your class spells << wotlk
    .target Ithelis
    .target Osselan
    .xp <16,1
step << Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Make sure you've trained|r |T136058:0|t[Pick Lock] |cRXP_WARN_for a quest later|r
    .train 1804 >>Train your class spells
    .target Zelanis
    .train 1804,1
step << Priest
    .goto 1954,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheolan|r
    .train 8102 >> Train your class spells
    .target Lotheolan
step << Mage
    .goto 1954,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaedana|r
    .train 2120 >> Train your class spells
    .target Zaedana
step << Hunter
    .goto 1954,84.71,28.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .train 13795 >>Train your class spells << tbc
    .train 5118 >>Train your class spells << wotlk
    .target Zandine
    .xp <16,1
step << Warlock TBC
    .goto 1954,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torian|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Sacrifice] |cRXP_BUY_and the|r |T133738:0|t[Grimoire of Consume Shadows] |cRXP_BUY_from him|r
    .collect 16351,1,9220,1
    .collect 16357,1,9220,1
    .target Torian
    .train 20381,1
step << Warlock TBC
    .goto 1954,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torian|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Sacrifice] |cRXP_BUY_from him|r
    .collect 16351,1,9220,1
    .target Torian
    .train 20381,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice]
    .train 20381,1
step << Warlock
    .goto 1954,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Train your class spells
    .target Talionia
step << Paladin
    .goto 1954,91.19,36.94,-1
    .goto 1954,91.14,38.10,-1
    >>|cRXP_WARN_Jump onto one of the benches below to avoid walking up the stairs|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithelis|r or |cRXP_FRIENDLY_Osselan|r
    .train 7294 >>Train your class spells << tbc
    .train 62124 >>Train your class spells << wotlk
    .target Ithelis
    .target Osselan
step << BloodElf Warlock
    .goto 1954,74.39,47.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Turn in The Rune of Summoning
    .target Talionia
    .isQuestComplete 9619
step << Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .train 1758 >>Train your class spells
    .target Zelanis
    .xp <14,1
    .xp >16,1
step << Rogue
    .goto 1954,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .train 6761 >>Train your class spells
    .target Zelanis
    .xp <16,1
step
    +|cRXP_WARN_That is all of Eversong Woods for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ghostlands|r: Return to Quartermaster Lymel << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Delivery to Tranquillien
    >>|cRXP_FRIENDLY_Ghostlands|r: The Stone << BloodElf Warlock
    >>|cRXP_FRIENDLY_Ghostlands|r: Find Keltus Darkleaf << BloodElf Rogue
    >>|cRXP_FRIENDLY_Orgrimmar|r: Return to Gan'rul Bloodeye << Orc Warlock
    >>|cRXP_FRIENDLY_Undercity|r: Return to Carendin Halgar << Undead Warlock
    >>|cRXP_FRIENDLY_Ghostlands and back here|r: The Fallen Courier
    >>|cRXP_FRIENDLY_Ghostlands and back here|r: Taming the Beast << BloodElf Hunter
step
    +|cRXP_WARN_Suggested next zones at level 10|r: |cRXP_FRIENDLY_The Barrens|r (about 2.6 levels of quests, starting around Sergra Darkthorn), |cRXP_FRIENDLY_Durotar|r (about 1.3 levels of quests, starting around Master Gadrin), |cRXP_FRIENDLY_Ghostlands|r (about 1.3 levels of quests, starting around Arcanist Vandril; 1 quest from here hands in there). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Eversong Woods is planned from level 13.|r Load its guide for level 13 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 29 Eversong Woods
#subweight -1
#name 13-14 Eversong Woods
--RouteBuilder:next
#next Zone Routes (Horde)\13-16 The Barrens: around Gazlowe;Zone Routes (Horde)\10-13 Ghostlands: around Arcanist Vandril;Zone Routes (Horde)\10-12 Silverpine Forest: around Apothecary Renferrel

step
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step
    .goto 1954,56.56,52.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorim Lightsong|r
    .accept 10359 >>Accept A Donation of Wool
    .target Sorim Lightsong
step
    .goto 1954,65.37,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Wool Cloth|r from |cRXP_FRIENDLY_Andra|r
    .complete 10359,1 --Wool Cloth (1)
    .target Andra
step
    .goto 1954,56.56,52.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorim Lightsong|r
    .turnin 10359 >>Turn in A Donation of Wool
    .target Sorim Lightsong
step
    #completewith next
    .zone 1941 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 1941
step << BloodElf Paladin
    .goto 1941,48.40,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noellene|r
    .accept 9677 >>Accept Summons from Knight-Lord Bloodvalor
    .target Noellene
step << BloodElf Paladin
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step << BloodElf Paladin
    .goto 1954,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight-Lord Bloodvalor|r
    .turnin 9677 >>Turn in Summons from Knight-Lord Bloodvalor
    .accept 9678 >>Accept The First Trial
    .target Knight-Lord Bloodvalor
step << BloodElf Paladin
    .goto 1954,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight-Lord Bloodvalor|r
    .turnin 9678 >>Turn in The First Trial
    .target Knight-Lord Bloodvalor
    .isQuestComplete 9678
step << BloodElf Paladin
    .goto 1954,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight-Lord Bloodvalor|r
    .accept 64319 >>Accept A Study in Power
    .target Knight-Lord Bloodvalor
    .isQuestTurnedIn 9678 --any of: The First Trial
    .xp <12,1
step << BloodElf Paladin
    .goto 1954,92.33,36.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Astalor Bloodsworn|r
    .turnin 64319 >>Turn in A Study in Power
    .target Magister Astalor Bloodsworn
    .isOnQuest 64319
step << BloodElf Paladin
    #completewith next
    .zone 1941 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 1941
step << BloodElf Hunter
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9485 >>Turn in Taming the Beast
    .target Lieutenant Dawnrunner
    .isQuestComplete 9485
step
    .goto 1941,49.02,89.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Thedra|r
    .turnin 9147 >>Turn in The Fallen Courier
    .target Apothecary Thedra
    .isQuestComplete 9147
step
    +|cRXP_WARN_That is all of Eversong Woods for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ghostlands and back here|r: The First Trial << BloodElf Paladin
step
    +|cRXP_WARN_Suggested next zones at level 13|r: |cRXP_FRIENDLY_The Barrens|r (about 1.2 levels of quests, starting around Gazlowe), |cRXP_FRIENDLY_Ghostlands|r (about 0.9 levels of quests, starting around Arcanist Vandril; 1 quest from here hands in there), |cRXP_FRIENDLY_Silverpine Forest|r (about 0.6 levels of quests, starting around Apothecary Renferrel). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Eversong Woods is planned from level 28.|r Load its guide for level 28 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 1 - 29 Eversong Woods
#subweight -1
#name 28-29 Eversong Woods

step
    .goto 1941,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Saltheril|r
    .accept 9067 >>Accept The Party Never Ends
    .target Lord Saltheril
step
    .goto 1941,44.04,70.35
    >>Kill |cRXP_ENEMY_Halis Dawnstrider|r and loot |cRXP_LOOT_Bundle of Fireworks|r
    .complete 9067,3 --Bundle of Fireworks (1)
    .mob Halis Dawnstrider
step
    .goto 1941,60.41,62.46
    >>Kill |cRXP_ENEMY_Zalene Firstlight|r and loot |cRXP_LOOT_Springpaw Appetizers|r
    .complete 9067,2 --Springpaw Appetizers (1)
    .mob Zalene Firstlight
step
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
step
    .goto 1954,79.50,58.52
    >>Kill |cRXP_ENEMY_Vinemaster Suntouched|r and loot |cRXP_LOOT_Suntouched Special Reserve|r
    .complete 9067,1 --Suntouched Special Reserve (1)
    .mob Vinemaster Suntouched
step
    #completewith next
    .zone 1941 >>Leave Silvermoon City for Eversong Woods
    .zoneskip 1941
step << BloodElf Hunter
    .goto 1941,60.32,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dawnrunner|r
    .turnin 9485 >>Turn in Taming the Beast
    .target Lieutenant Dawnrunner
    .isQuestComplete 9485
step
    .goto 1941,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Saltheril|r
    .turnin 9067 >>Turn in The Party Never Ends
    .target Lord Saltheril
step
    .goto 1941,49.02,89.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Thedra|r
    .turnin 9147 >>Turn in The Fallen Courier
    .target Apothecary Thedra
    .isQuestComplete 9147
step << BloodElf Paladin
    #completewith next
    .zone 1954 >>Travel to Silvermoon City
    .zoneskip 1954
    .isQuestComplete 9678
step << BloodElf Paladin
    .goto 1954,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight-Lord Bloodvalor|r
    .turnin 9678 >>Turn in The First Trial
    .target Knight-Lord Bloodvalor
    .isQuestComplete 9678
step
    +|cRXP_WARN_End of the Eversong Woods route.|r
]])
