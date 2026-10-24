-- 1-5 Sunstrider Isle: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Sunstrider Isle.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 1-5 Sunstrider Isle

step
    .goto 467,63.03,43.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shara Sunwing|r
    .target Shara Sunwing
    .home >>Set your Hearthstone to Shara Sunwing's inn
step << BloodElf
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 8325 >>Accept Reclaiming Sunstrider Isle
    .target Magistrix Erona
step << BloodElf
    #loop
    .goto 467,60.30,51.05,0
    .goto 467,60.30,51.05,40,0
    .goto 467,61.27,56.22,40,0
    .goto 467,59.63,58.04,40,0
    >>Kill |cRXP_ENEMY_Mana Wyrms|r
    .complete 8325,1 --Mana Wyrm slain (6)
    .mob Mana Wyrm
step << BloodElf
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .turnin 8325 >>Turn in Reclaiming Sunstrider Isle
    .accept 8326 >>Accept Unfortunate Measures
    .target Magistrix Erona
step << BloodElf
    #loop
    .goto 467,66.82,39.38,0
    .goto 467,66.82,39.38,40,0
    .goto 467,67.42,34.04,40,0
    >>Kill |cRXP_ENEMY_Springpaw Cubs|r and |cRXP_ENEMY_Springpaw Lynxes|r. Loot them for |cRXP_LOOT_Lynx Collar|r
    .complete 8326,1 --Lynx Collar (8)
    .mob Springpaw Cub
    .mob Springpaw Lynx
step
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .turnin 8326 >>Turn in Unfortunate Measures << BloodElf
    .accept 8327 >>Accept Report to Lanthan Perilon << BloodElf
    .accept 8329 >>Accept Warrior Training << BloodElf Warrior
    .accept 9676 >>Accept Paladin Training << BloodElf Paladin
    .target Magistrix Erona
step << BloodElf Paladin
    .goto 467,65.51,43.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jesthenis Sunstriker|r
    .turnin 9676 >>Turn in Paladin Training
    .accept 10069 >>Accept Ways of the Light
    .target Jesthenis Sunstriker
step << BloodElf Paladin
    #loop
    .goto 467,63.17,47.34,0
    .goto 467,63.17,47.34,40,0
    .goto 467,62.16,43.13,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 10069,1 --Training Dummy slain (8)
    .mob Training Dummy
step << BloodElf Paladin
    .goto 467,65.51,43.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jesthenis Sunstriker|r
    .turnin 10069 >>Turn in Ways of the Light
    .target Jesthenis Sunstriker
step << BloodElf Hunter
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 9393 >>Accept Hunter Training
    .target Magistrix Erona
step << BloodElf Hunter
    .goto 467,64.21,42.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sallina|r
    .turnin 9393 >>Turn in Hunter Training
    .accept 10070 >>Accept Steady Shot
    .target Ranger Sallina
step << BloodElf Hunter
    #loop
    .goto 467,62.16,43.13,0
    .goto 467,62.16,43.13,40,0
    .goto 467,63.17,47.34,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 10070,1 --Training Dummy slain (8)
    .mob Training Dummy
step << BloodElf Hunter
    .goto 467,64.21,42.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Sallina|r
    .turnin 10070 >>Turn in Steady Shot
    .target Ranger Sallina
step << BloodElf Rogue
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 9392 >>Accept Rogue Training
    .target Magistrix Erona
step << BloodElf Rogue
    .goto 467,63.85,42.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pathstalker Kariel|r
    .turnin 9392 >>Turn in Rogue Training
    .accept 10071 >>Accept Evisceration
    .target Pathstalker Kariel
step << BloodElf Rogue
    #loop
    .goto 467,62.16,43.13,0
    .goto 467,62.16,43.13,40,0
    .goto 467,63.17,47.34,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 10071,1 --Training Dummy slain (8)
    .mob Training Dummy
step << BloodElf Rogue
    .goto 467,63.85,42.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pathstalker Kariel|r
    .turnin 10071 >>Turn in Evisceration
    .target Pathstalker Kariel
step << BloodElf Priest
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 8564 >>Accept Priest Training
    .target Magistrix Erona
step << BloodElf Priest
    .goto 467,65.34,43.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Arena|r
    .turnin 8564 >>Turn in Priest Training
    .accept 10072 >>Accept Learning the Word
    .target Matron Arena
step << BloodElf Priest
    #loop
    .goto 467,62.16,43.13,0
    .goto 467,62.16,43.13,40,0
    .goto 467,63.17,47.34,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 10072,1 --Training Dummy slain (8)
    .mob Training Dummy
step << BloodElf Priest
    .goto 467,65.34,43.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Arena|r
    .turnin 10072 >>Turn in Learning the Word
    .target Matron Arena
step << BloodElf Mage
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 8328 >>Accept Mage Training
    .target Magistrix Erona
step << BloodElf Mage
    .goto 467,64.76,46.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Sunstriker|r
    .turnin 8328 >>Turn in Mage Training
    .accept 10068 >>Accept Frost Nova
    .target Julia Sunstriker
step << BloodElf Mage
    #loop
    .goto 467,63.17,47.34,0
    .goto 467,63.17,47.34,40,0
    .goto 467,62.16,43.13,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 10068,1 --Training Dummy slain (8)
    .mob Training Dummy
step << BloodElf Mage
    .goto 467,64.76,46.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Sunstriker|r
    .turnin 10068 >>Turn in Frost Nova
    .target Julia Sunstriker
step << BloodElf Warlock
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 8563 >>Accept Warlock Training
    .target Magistrix Erona
step << BloodElf Warlock
    .goto 467,63.86,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .turnin 8563 >>Turn in Warlock Training
    .accept 10073 >>Accept Corruption
    .target Summoner Teli'Larien
step << BloodElf Warlock
    #loop
    .goto 467,63.17,47.34,0
    .goto 467,63.17,47.34,40,0
    .goto 467,62.16,43.13,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 10073,1 --Training Dummy slain (8)
    .mob Training Dummy
step << BloodElf Warlock
    .goto 467,63.86,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Summoner Teli'Larien|r
    .turnin 10073 >>Turn in Corruption
    .target Summoner Teli'Larien
step << BloodElf Monk
    .goto 467,61.04,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 31170 >>Accept Monk Training
    .target Magistrix Erona
step << BloodElf Monk
    .goto 467,63.42,42.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao|r
    .turnin 31170 >>Turn in Monk Training
    .target Pao
step << BloodElf
    .goto 467,63.96,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .accept 8330 >>Accept Solanian's Belongings
    .accept 8345 >>Accept The Shrine of Dath'Remar
    .target Well Watcher Solanian
step << BloodElf
    .goto 467,61.82,39.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Ithanas|r
    .accept 8336 >>Accept A Fistful of Slivers
    .target Arcanist Ithanas
step << BloodElf
    .goto 467,58.46,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .accept 8346 >>Accept Thirst Unending
    .target Arcanist Helion
step << BloodElf
    .goto 467,52.87,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8327 >>Turn in Report to Lanthan Perilon
    .accept 8334 >>Accept Aggression
    .target Lanthan Perilon
step << BloodElf
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Arcane Wraiths|r, |cRXP_ENEMY_Mana Wyrms|r, |cRXP_ENEMY_Feral Tenders|r and |cRXP_ENEMY_Tainted Arcane Wraiths|r. Loot them for |cRXP_LOOT_Arcane Sliver|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8336,1 --Arcane Sliver (6)
    .mob Arcane Wraith
    .mob Mana Wyrm
    .mob Feral Tender
    .mob Tainted Arcane Wraith
step << BloodElf
    #completewith Along35
    >>As you go: Kill |cRXP_ENEMY_Mana Wyrm|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8346,1 --Mana Wyrm (1)
    .mob Mana Wyrm
step << BloodElf
    #label Along35
    .goto 467,60.05,57.13
    >>Pick up |cRXP_PICK_Solanian's Journal|r from the ground
    .complete 8330,3 --Solanian's Journal (1)
step << BloodElf
    #completewith Along36
    >>As you go: Kill |cRXP_ENEMY_Tenders|r. Kill |cRXP_ENEMY_Feral Tenders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8334,1 --Tender slain (7)
    .complete 8334,2 --Feral Tender slain (7)
    .mob Tender
    .mob Feral Tender
step << BloodElf
    #label Along36
    .goto 467,52.19,69.41
    >>Pick up |cRXP_PICK_Solanian's Scrying Orb|r from the ground
    .complete 8330,1 --Solanian's Scrying Orb (1)
step << BloodElf
    #label Along37
    #loop
    .goto 467,52.38,71.22,0
    .goto 467,52.38,71.22,40,0
    .goto 467,55.26,71.82,40,0
    .goto 467,49.87,62.08,40,0
    .goto 467,46.00,64.20,40,0
    >>Kill |cRXP_ENEMY_Tenders|r
    >>Kill |cRXP_ENEMY_Feral Tenders|r
    .complete 8334,1 --Tender slain (7)
    .complete 8334,2 --Feral Tender slain (7)
    .mob Tender
    .mob Feral Tender
step << BloodElf
    #completewith Drop8338x1
    >>|cRXP_LOOT_Tainted Arcane Sliver|r can drop from |cRXP_ENEMY_Tainted Arcane Wraith|r. Use it to start the quest if you get one
    .collect 20483,1,8338 --Tainted Arcane Sliver (1)
    .accept 8338 >>Accept Tainted Arcane Sliver
    .use 20483
step << BloodElf
    #completewith Drop8338x1
    >>As you go: Kill |cRXP_ENEMY_Mana Wyrm|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8346,1 --Mana Wyrm (1)
    .mob Mana Wyrm
step << BloodElf
    #label Drop8338x1
    #loop
    .goto 467,59.09,57.42,0
    .goto 467,59.09,57.42,40,0
    .goto 467,61.15,57.44,40,0
    .goto 467,60.72,55.19,40,0
    .goto 467,60.30,51.05,40,0
    .goto 467,56.71,43.66,40,0
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r, |cRXP_ENEMY_Mana Wyrms|r, |cRXP_ENEMY_Feral Tenders|r and |cRXP_ENEMY_Tainted Arcane Wraiths|r. Loot them for |cRXP_LOOT_Arcane Sliver|r
    .complete 8336,1 --Arcane Sliver (6)
    .mob Arcane Wraith
    .mob Mana Wyrm
    .mob Feral Tender
    .mob Tainted Arcane Wraith
step << BloodElf
    .goto 467,52.87,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8334 >>Turn in Aggression
    .accept 8335 >>Accept Felendren the Banished
    .target Lanthan Perilon
step << BloodElf
    .goto 467,35.17,40.08
    >>Click the |cRXP_PICK_Shrine of Dath'Remar|r
    .complete 8345,1 --Shrine of Dath'Remar
step << BloodElf
    .goto 467,40.44,50.48
    >>Pick up |cRXP_PICK_Scroll of Scourge Magic|r from the ground
    .complete 8330,2 --Scroll of Scourge Magic (1)
step << BloodElf
    #completewith Drop8338x2
    >>|cRXP_LOOT_Tainted Arcane Sliver|r can drop from |cRXP_ENEMY_Tainted Arcane Wraith|r. Use it to start the quest if you get one
    .collect 20483,1,8338 --Tainted Arcane Sliver (1)
    .accept 8338 >>Accept Tainted Arcane Sliver
    .use 20483
step << BloodElf
    #completewith Along42
    >>As you go: Kill |cRXP_ENEMY_Tainted Arcane Wraiths|r. Kill |cRXP_ENEMY_Felendren the Banished|r and loot |cRXP_LOOT_Felendren's Head|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8335,2 --Tainted Arcane Wraith slain (2)
    .complete 8335,3 --Felendren's Head (1)
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step << BloodElf
    #label Along42
    #loop
    .goto 467,36.90,58.05,0
    .goto 467,36.90,58.05,40,0
    .goto 467,37.68,64.64,40,0
    >>Kill |cRXP_ENEMY_Arcane Wraiths|r
    .complete 8335,1 --Arcane Wraith slain (8)
    .mob Arcane Wraith
step << BloodElf
    #label Drop8338x2
    #loop
    .goto 467,39.26,65.81,0
    .goto 467,39.26,65.81,40,0
    .goto 467,40.73,70.28,40,0
    >>Kill |cRXP_ENEMY_Tainted Arcane Wraiths|r
    >>Kill |cRXP_ENEMY_Felendren the Banished|r and loot |cRXP_LOOT_Felendren's Head|r
    .complete 8335,2 --Tainted Arcane Wraith slain (2)
    .complete 8335,3 --Felendren's Head (1)
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step << BloodElf
    #loop
    .goto 467,59.63,58.04,0
    .goto 467,59.63,58.04,40,0
    .goto 467,61.27,56.22,40,0
    .goto 467,60.30,51.05,40,0
    >>Kill |cRXP_ENEMY_Mana Wyrm|r
    .complete 8346,1 --Mana Wyrm (1)
    .mob Mana Wyrm
step << BloodElf
    .goto 467,58.46,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .turnin 8346 >>Turn in Thirst Unending
    .target Arcanist Helion
step << BloodElf
    .goto 467,58.46,38.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Helion|r
    .turnin 8338 >>Turn in Tainted Arcane Sliver
    .target Arcanist Helion
    .isOnQuest 8338
step << BloodElf
    .goto 467,61.82,39.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Ithanas|r
    .turnin 8336 >>Turn in A Fistful of Slivers
    .target Arcanist Ithanas
step << BloodElf
    .goto 467,63.96,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Well Watcher Solanian|r
    .turnin 8330 >>Turn in Solanian's Belongings
    .turnin 8345 >>Turn in The Shrine of Dath'Remar
    .target Well Watcher Solanian
step << BloodElf
    .goto 467,52.87,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8335 >>Turn in Felendren the Banished
    .accept 8347 >>Accept Aiding the Outrunners
    .target Lanthan Perilon
step
    +|cRXP_WARN_End of the Sunstrider Isle route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Eversong Woods|r: Warrior Training << BloodElf Warrior
    >>|cRXP_FRIENDLY_Eversong Woods|r: Aiding the Outrunners << BloodElf
]])
