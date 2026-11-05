-- 40-45 Eastern Plaguelands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 40, 46, 83).
-- Split into 4 guides, listed under "40 - 84 Eastern Plaguelands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Eastern Plaguelands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 40 - 84 Eastern Plaguelands
#subweight -40
#name 40-42 Eastern Plaguelands: around Chromie
#next Zone Routes (Horde)\42-44 Eastern Plaguelands: around Tarenar Sunstrike

step
    #loop
    .goto 23,9.02,66.52,0
    .goto 23,9.02,66.52,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,73.71,52.10,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27683 >>Turn in Into the Woods
    .unitscan Fiona
    .isOnQuest 27683
step
    #loop
    .goto 23,9.02,66.52,0
    .goto 23,9.02,66.52,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,73.71,52.10,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27367 >>Accept Gidwin Goldbraids
    .accept 27370 >>Accept Tarenar Sunstrike
    .unitscan Fiona
    .home >>Set your Hearthstone to Fiona's inn
step
    .goto 23,4.14,36.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gidwin Goldbraids|r
    .turnin 27367 >>Turn in Gidwin Goldbraids
    .accept 27368 >>Accept Just Encased
    .target Gidwin Goldbraids
step
    #loop
    .goto 23,8.50,29.46,0
    .goto 23,8.50,29.46,40,0
    .goto 23,10.11,27.47,40,0
    >>Kill |cRXP_ENEMY_Crypt Stalkers|r, |cRXP_ENEMY_Crypt Walkers|r, |cRXP_ENEMY_Crypt Horrors|r and |cRXP_ENEMY_Crypt Slayers|r. Loot them for |cRXP_LOOT_Crypt Bile|r
    .complete 27368,1 --Crypt Bile (1)
    .mob Crypt Stalker
    .mob Crypt Walker
    .mob Crypt Horror
    .mob Crypt Slayer
step
    .goto 23,4.14,36.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gidwin Goldbraids|r
    .turnin 27368 >>Turn in Just Encased
    .accept 27369 >>Accept Greasing the Wheel
    .target Gidwin Goldbraids
step
    #loop
    .goto 23,3.27,34.66,0
    .goto 23,3.27,34.66,40,0
    .goto 23,2.79,39.00,40,0
    .goto 23,3.19,44.66,40,0
    .goto 23,4.57,49.03,40,0
    >>Pick up |cRXP_PICK_Banshee's Bells|r from the ground
    .complete 27369,1 --Banshee's Bells (10)
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9328 >>Turn in Hero of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9328
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9621 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9328 --any of: Hero of the Sin'dorei
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
    .accept 28575 >>Accept Warchief's Command: Western Plaguelands!
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
    #completewith next
    .zone 23 >>Leave Silvermoon City for Eastern Plaguelands
    .zoneskip 23
step
    #completewith next
    .hs >>Hearth to Fiona's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    #loop
    .goto 23,9.02,66.52,0
    .goto 23,9.02,66.52,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,73.71,52.10,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27369 >>Turn in Greasing the Wheel
    .unitscan Fiona
step
    #loop
    .goto 23,18.37,74.84,0
    .goto 23,18.37,74.84,40,0
    .goto 23,35.26,68.86,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,74.19,53.34,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27370 >>Turn in Tarenar Sunstrike
    .accept 27371 >>Accept What I Do Best
    .unitscan Tarenar Sunstrike
step
    #loop
    .goto 23,18.70,78.23,0
    .goto 23,18.70,78.23,40,0
    .goto 23,18.97,81.13,40,0
    >>Kill |cRXP_ENEMY_Death's Step Miscreations|r
    .complete 27371,1 --Death's Step Miscreation slain (5)
    .mob Death's Step Miscreation
step
    #loop
    .goto 23,18.37,74.84,0
    .goto 23,18.37,74.84,40,0
    .goto 23,35.26,68.86,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,74.19,53.34,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27371 >>Turn in What I Do Best
    .accept 27372 >>Accept A Gift For Fiona
    .unitscan Tarenar Sunstrike
step
    #loop
    .goto 23,14.68,63.26,0
    .goto 23,14.68,63.26,40,0
    .goto 23,13.16,60.16,40,0
    .goto 23,15.65,59.12,40,0
    >>Kill |cRXP_ENEMY_Plaguehound Runts|r and |cRXP_ENEMY_Frenzied Plaguehounds|r. Loot them for |cRXP_LOOT_Plaguehound Blood|r
    .complete 27372,1 --Plaguehound Blood (1)
    .mob Plaguehound Runt
    .mob Frenzied Plaguehound
step
    #loop
    .goto 23,9.02,66.52,0
    .goto 23,9.02,66.52,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,73.71,52.10,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27372 >>Turn in A Gift For Fiona
    .accept 27373 >>Accept Onward, to Light's Hope Chapel
    .unitscan Fiona
step
    .goto 23,8.79,66.57
    >>Kill |cRXP_ENEMY_Fiona's Caravans|r
    .complete 27373,1 --Fiona's Caravan slain (8)
    .mob Fiona's Caravan
step
    #loop
    .goto 23,9.02,66.52,0
    .goto 23,9.02,66.52,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,73.71,52.10,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27373 >>Turn in Onward, to Light's Hope Chapel
    .unitscan Fiona
step
    #loop
    .goto 23,18.37,74.84,0
    .goto 23,18.37,74.84,40,0
    .goto 23,35.26,68.86,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,74.19,53.34,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27381 >>Accept Traveling Companions
    .unitscan Tarenar Sunstrike
step
    .goto 23,35.58,68.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 27383 >>Accept Little Pamela
    .target Carlin Redpath
step
    #loop
    .goto 23,35.77,68.57,0
    .goto 23,35.77,68.57,40,0
    .goto 23,53.97,53.63,40,0
    .goto 23,50.49,20.22,40,0
    .goto 23,62.23,42.63,40,0
    .goto 23,73.96,51.65,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argus Highbeacon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27382 >>Accept Rough Roads
    .unitscan Argus Highbeacon
step
    .goto 23,35.77,68.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argus Highbeacon|r
    .complete 27381,1 --Argus Highbeacon
    .target Argus Highbeacon
step
    #loop
    .goto 23,18.37,74.84,0
    .goto 23,18.37,74.84,40,0
    .goto 23,35.26,68.86,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,74.19,53.34,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27381 >>Turn in Traveling Companions
    .unitscan Tarenar Sunstrike
step
    .goto 23,35.02,68.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urk Gagbaz|r
    .accept 27432 >>Accept Zaeldarr the Outcast
    .target Urk Gagbaz
step
    .goto 23,34.86,67.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Myers|r
    .fp Crown Guard Tower>>Get the Crown Guard Tower Flight Path
    .target Janice Myers
    .subzoneskip 2263,1
step
    .goto 23,23.84,77.94
    >>Kill |cRXP_ENEMY_Zaeldarr the Outcast|r and loot |cRXP_LOOT_Zaeldarr's Head|r
    .complete 27432,1 --Zaeldarr's Head (1)
    .mob Zaeldarr the Outcast
step
    .goto 23,32.43,83.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 27383 >>Turn in Little Pamela
    .accept 27384 >>Accept Pamela's Doll
    .accept 27392 >>Accept I'm Not Supposed to Tell You This
    .target Pamela Redpath
step
    #completewith Along38
    >>As you go: Pick up |cRXP_PICK_Pamela's Doll's Left Side|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .collect 12887,1,27384,1 --Pamela's Doll's Left Side (1)
step
    #label Along38
    .goto 23,33.99,85.32
    >>Pick up |cRXP_PICK_Pamela's Doll's Head|r from the ground
    >>Pick up |cRXP_PICK_Pamela's Doll's Right Side|r from the ground
    .collect 12886,1,27384,1 --Pamela's Doll's Head (1)
    .collect 12888,1,27384,1 --Pamela's Doll's Right Side (1)
step
    .goto 23,40.28,83.82
    >>Kill |cRXP_ENEMY_The Lone Hunter|r and loot |cRXP_LOOT_Joseph's Hunting Blade|r
    .complete 27392,1 --Joseph's Hunting Blade (1)
    .mob The Lone Hunter
step
    .goto 23,35.56,83.12
    >>Pick up |cRXP_PICK_Pamela's Doll's Left Side|r from the ground
    .collect 12887,1,27384,1 --Pamela's Doll's Left Side (1)
step
    .goto 23,32.43,83.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 27392 >>Turn in I'm Not Supposed to Tell You This
    .target Pamela Redpath
step
    .goto 23,32.43,83.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 27384 >>Turn in Pamela's Doll
    .target Pamela Redpath
    .isQuestComplete 27384
step
    .goto 23,32.43,83.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 27385 >>Accept Uncle Carlin
    .target Pamela Redpath
    .isQuestTurnedIn 27384 --Pamela's Doll
    .xp <39,1
step
    #loop
    .goto 23,42.11,71.31,0
    .goto 23,42.11,71.31,40,0
    .goto 23,44.52,70.29,40,0
    .goto 23,40.20,68.06,40,0
    >>Kill |cRXP_ENEMY_Noxious Plaguebats|r, |cRXP_ENEMY_Monstrous Plaguebats|r and |cRXP_ENEMY_Plaguebats|r
    .complete 27382,1 --Noxious Plaguebat (13)
    .mob Noxious Plaguebat
    .mob Monstrous Plaguebat
    .mob Plaguebat
step
    .goto 23,35.02,68.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urk Gagbaz|r
    .turnin 27432 >>Turn in Zaeldarr the Outcast
    .target Urk Gagbaz
step
    .goto 23,35.58,68.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .turnin 27385 >>Turn in Uncle Carlin
    .target Carlin Redpath
    .isOnQuest 27385
step
    .goto 23,35.58,68.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .accept 27386 >>Accept A Strange Historian
    .target Carlin Redpath
    .isQuestTurnedIn 27385 --any of: Uncle Carlin
    .xp <39,1
step
    #loop
    .goto 23,35.77,68.57,0
    .goto 23,35.77,68.57,40,0
    .goto 23,53.97,53.63,40,0
    .goto 23,50.49,20.22,40,0
    .goto 23,62.23,42.63,40,0
    .goto 23,73.96,51.65,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argus Highbeacon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27382 >>Turn in Rough Roads
    .unitscan Argus Highbeacon
step
    .goto 23,35.26,68.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 27386 >>Turn in A Strange Historian
    .target Chromie
    .isOnQuest 27386
step
    .goto 23,35.26,68.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .accept 27387 >>Accept Villains of Darrowshire
    .accept 27388 >>Accept Heroes of Darrowshire
    .accept 27389 >>Accept Marauders of Darrowshire
    .target Chromie
    .isQuestTurnedIn 27386 --any of: A Strange Historian
    .xp <39,1
step
    .goto 23,35.02,68.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urk Gagbaz|r
    .accept 27544 >>Accept Cenarion Tenacity
    .target Urk Gagbaz
    .isQuestTurnedIn 27386 --any of: A Strange Historian
    .xp <39,1
step
    .goto 23,35.58,68.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin Redpath|r
    .complete 27388,1 --Carlin Redpath
    .target Carlin Redpath
    .isOnQuest 27388
step
    .goto 23,39.76,72.36
    >>Pick up |cRXP_PICK_Shattered Sword of Marduk|r from the ground
    .complete 27387,2 --Shattered Sword of Marduk (1)
    .isOnQuest 27387
step
    .goto 23,37.34,60.24
    >>Open the |cRXP_PICK_Horgus' Skull|r. Loot it for |cRXP_LOOT_Skull of Horgus|r
    .complete 27387,1 --Skull of Horgus (1)
    .isOnQuest 27387
step
    .goto 23,30.22,56.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne|r
    .turnin 27544 >>Turn in Cenarion Tenacity
    .target Rayne
    .isOnQuest 27544
step
    .goto 23,30.22,56.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne|r
    .accept 27420 >>Accept Postponing the Inevitable
    .accept 27421 >>Accept Amidst Death, Life
    .target Rayne
step
    #completewith Along59
    >>As you go: Kill |cRXP_ENEMY_Dark Adepts|r and |cRXP_ENEMY_Shadowmages|r. Loot them for |cRXP_LOOT_Plague Disseminator Control Rune|r. |cRXP_WARN_Anything left is finished later|r
    .collect 61037,1,27420,1 --Plague Disseminator Control Rune (1)
    .mob Dark Adept
    .mob Shadowmage
step
    .goto 23,37.55,48.29
    >>Use Rayne's Seeds in the center of the three ziggurats in the Fungal Vale.
    .complete 27421,1 --Necropolis Flower Controller SE
    .target Necropolis Flower Controller SE
step
    .goto 23,33.68,44.44
    >>Use Rayne's Seeds in the center of the three ziggurats in the Fungal Vale.
    .complete 27421,2 --Necropolis Flower Controller W
    .target Necropolis Flower Controller W
step
    #label Along59
    .goto 23,37.77,42.48
    >>Use Rayne's Seeds in the center of the three ziggurats in the Fungal Vale.
    .complete 27421,3 --Necropolis Flower Controller NE
    .target Necropolis Flower Controller NE
step
    #loop
    .goto 23,37.75,44.47,0
    .goto 23,37.75,44.47,40,0
    .goto 23,35.14,45.61,40,0
    >>Kill |cRXP_ENEMY_Dark Adepts|r and |cRXP_ENEMY_Shadowmages|r. Loot them for |cRXP_LOOT_Plague Disseminator Control Rune|r
    .collect 61037,1,27420,1 --Plague Disseminator Control Rune (1)
    .mob Dark Adept
    .mob Shadowmage
step
    #loop
    .goto 23,35.51,44.88,0
    .goto 23,35.51,44.88,40,0
    .goto 23,34.42,47.67,40,0
    >>Kill |cRXP_ENEMY_Plague Disseminators|r
    .complete 27420,1 --Plague Disseminator slain (3)
    .mob Plague Disseminator
step
    .goto 23,30.22,56.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rayne|r
    .turnin 27420 >>Turn in Postponing the Inevitable
    .turnin 27421 >>Turn in Amidst Death, Life
    .target Rayne
step
    .goto 23,22.14,68.16
    >>Pick up |cRXP_PICK_Redpath's Shield|r from the ground
    .complete 27388,3 --Redpath's Shield (1)
    .isOnQuest 27388
step
    .goto 23,22.31,68.40
    >>Pick up |cRXP_PICK_Davil's Libram|r from the ground
    .complete 27388,2 --Davil's Libram (1)
    .isOnQuest 27388
step
    .goto 23,35.26,68.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 27387 >>Turn in Villains of Darrowshire
    .target Chromie
    .isOnQuest 27387
step
    .goto 23,35.26,68.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 27388 >>Turn in Heroes of Darrowshire
    .target Chromie
    .isOnQuest 27388
step
    .goto 23,35.26,68.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 27389 >>Turn in Marauders of Darrowshire
    .target Chromie
    .isOnQuest 27389
step
    .goto 23,35.26,68.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .accept 27390 >>Accept The Battle of Darrowshire
    .target Chromie
    .isQuestTurnedIn 27387 --Villains of Darrowshire
    .isQuestTurnedIn 27388 --Heroes of Darrowshire
    .isQuestTurnedIn 27389 --Marauders of Darrowshire
    .xp <39,1
step
    .goto 23,35.07,84.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joseph Redpath|r
    .complete 27390,1 --Joseph Redpath
    .target Joseph Redpath
    .isOnQuest 27390
step
    .goto 23,32.43,83.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 27390 >>Turn in The Battle of Darrowshire
    .target Pamela Redpath
    .isOnQuest 27390
step
    .goto 23,32.43,83.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .accept 27391 >>Accept Hidden Treasures
    .target Pamela Redpath
    .isQuestTurnedIn 27390 --any of: The Battle of Darrowshire
    .xp <39,1
step
    .goto 23,32.22,83.43
    >>Click the |cRXP_PICK_Joseph's Chest|r
    .turnin 27391 >>Turn in Hidden Treasures
    .isOnQuest 27391
step
    #loop
    .goto 23,9.02,66.52,0
    .goto 23,9.02,66.52,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,73.71,52.10,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27448 >>Accept The Trek Continues
    .unitscan Fiona
step
    .goto 23,35.00,69.29
    >>Kill |cRXP_ENEMY_Fiona's Caravans|r
    .complete 27448,1 --Fiona's Caravan slain (8)
    .mob Fiona's Caravan
step
    .goto 23,52.77,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devon Manning|r
    .fp Light's Shield Tower>>Get the Light's Shield Tower Flight Path
    .target Devon Manning
step
    #loop
    .goto 23,9.02,66.52,0
    .goto 23,9.02,66.52,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,73.71,52.10,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27448 >>Turn in The Trek Continues
    .accept 27455 >>Accept Boys Will Be Boys
    .unitscan Fiona
step
    #loop
    .goto 23,53.97,53.63,0
    .goto 23,53.97,53.63,40,0
    .goto 23,52.77,51.35,40,0
    .goto 23,60.61,43.33,40,0
    .goto 23,52.62,20.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vex'tul|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27449 >>Accept Honor and Strength
    .unitscan Vex'tul
step
    .goto 23,52.82,51.64
    >>Kill |cRXP_ENEMY_Mossflayer Rogues|r
    .complete 27449,1 --Mossflayer Rogue slain (8)
    .mob Mossflayer Rogue
step
    #loop
    .goto 23,53.97,53.63,0
    .goto 23,53.97,53.63,40,0
    .goto 23,52.77,51.35,40,0
    .goto 23,60.61,43.33,40,0
    .goto 23,52.62,20.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vex'tul|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27449 >>Turn in Honor and Strength
    .unitscan Vex'tul
step
    .goto 23,53.79,53.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Calston|r
    .accept 27450 >>Accept Frederick's Fish Fancy
    .target Frederick Calston
step
    .goto 23,53.23,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .accept 27451 >>Accept To Kill With Purpose
    .accept 27452 >>Accept Dark Garb
    .target Betina Bigglezink
step
    .goto 23,53.23,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 27451 >>Turn in To Kill With Purpose while you are here
    .isQuestComplete 27451
    .target Betina Bigglezink
step
    #loop
    .goto 23,51.15,61.48,0
    .goto 23,51.15,61.48,40,0
    .goto 23,50.18,63.24,40,0
    .goto 23,46.86,63.25,40,0
    >>Kill |cRXP_ENEMY_Infectis Inchers|r. Loot them for |cRXP_LOOT_Infectis Incher|r
    >>Kill |cRXP_ENEMY_Plague Puffers|r. Loot them for |cRXP_LOOT_Plague Puffer|r
    >>Kill |cRXP_ENEMY_Infectis Scuttlers|r. Loot them for |cRXP_LOOT_Infectis Scuttler|r
    .complete 27450,2 --Infectis Incher (8)
    .complete 27450,1 --Plague Puffer (8)
    .complete 27450,3 --Infectis Scuttler (8)
    .mob Infectis Incher
    .mob Plague Puffer
    .mob Infectis Scuttler
step
    .goto 23,53.23,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 27451 >>Turn in To Kill With Purpose
    .target Betina Bigglezink
step
    .goto 23,53.79,53.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Calston|r
    .turnin 27450 >>Turn in Frederick's Fish Fancy while you are here
    .isQuestComplete 27450
    .target Frederick Calston
step
    #loop
    .goto 23,53.82,61.21,0
    .goto 23,53.82,61.21,40,0
    .goto 23,54.92,64.07,40,0
    >>Kill |cRXP_ENEMY_Vile Tutors|r and |cRXP_ENEMY_Dark Summoners|r. Loot them for |cRXP_LOOT_Death Cultist Robes|r
    >>Kill |cRXP_ENEMY_Vile Tutors|r and |cRXP_ENEMY_Dark Summoners|r. Loot them for |cRXP_LOOT_Death Cultist Headwear|r
    .complete 27452,2 --Death Cultist Robes (1)
    .complete 27452,1 --Death Cultist Headwear (1)
    .mob Vile Tutor
    .mob Dark Summoner
step
    .goto 23,53.23,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 27452 >>Turn in Dark Garb
    .accept 27453 >>Accept Catalysm
    .target Betina Bigglezink
step
    #loop
    .goto 23,56.96,72.53,0
    .goto 23,56.96,72.53,40,0
    .goto 23,54.39,73.85,40,0
    .goto 23,59.63,73.66,40,0
    >>Kill |cRXP_ENEMY_Blighted Surges|r and |cRXP_ENEMY_Plague Ravagers|r. Loot them for |cRXP_LOOT_Active Liquid Plague Agent|r
    .complete 27453,1 --Active Liquid Plague Agent (8)
    .mob Blighted Surge
    .mob Plague Ravager
step
    .goto 23,53.23,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 27453 >>Turn in Catalysm
    .accept 27454 >>Accept Just a Drop in the Bucket
    .target Betina Bigglezink
step
    .goto 23,62.53,76.45
    >>Click the |cRXP_PICK_Mereldar Plague Cauldron|r
    .complete 27454,1 --Mereldar Plague Cauldron
step
    .goto 23,53.23,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Betina Bigglezink|r
    .turnin 27454 >>Turn in Just a Drop in the Bucket
    .target Betina Bigglezink
step
    .goto 23,53.79,53.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Calston|r
    .turnin 27450 >>Turn in Frederick's Fish Fancy
    .target Frederick Calston
step
    #loop
    .goto 23,74.36,53.32,0
    .goto 23,74.36,53.32,40,0
    .goto 23,73.75,52.18,40,0
    .goto 23,34.97,68.55,40,0
    .goto 23,4.14,36.01,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gidwin Goldbraids|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27455 >>Turn in Boys Will Be Boys
    .accept 27463 >>Accept A Boyhood Dream
    .unitscan Gidwin Goldbraids
step
    .goto 23,74.92,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
    .accept 27458 >>Accept Smokey and the Bandage
    .target Smokey LaRue
step << Horde
    .goto 23,75.80,53.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Georgia|r
    .fp Light's Hope>>Get the Light's Hope Chapel Flight Path
    .target Georgia
    .subzoneskip 2268,1
step << Alliance
    .goto 23,75.852,53.412
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaelyn Steelwing|r
    .fp Light's Hope>>Get the Light's Hope Chapel Flight Path
    .target Khaelyn Steelwing
    .subzoneskip 2268,1
step
    .goto 23,75.87,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 27463 >>Turn in A Boyhood Dream
    .accept 27684 >>Accept Visitors
    .accept 27464 >>Accept Argent Call: The Trial of the Crypt
    .target Lord Maxwell Tyrosus
step
    #completewith Along93
    >>As you go: Kill |cRXP_ENEMY_Lord Raymond George|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27464,1 --Lord Raymond George slain (1)
    .mob Lord Raymond George
step
    #label Along93
    .goto 23,75.61,52.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .accept 27459 >>Accept The Brotherhood of Light
    .target Leonid Barthalomew the Revered
step
    .goto 23,76.85,51.38
    >>Kill |cRXP_ENEMY_Lord Raymond George|r
    .complete 27464,1 --Lord Raymond George slain (1)
    .mob Lord Raymond George
step
    .goto 23,75.87,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 27464 >>Turn in Argent Call: The Trial of the Crypt
    .accept 27465 >>Accept Argent Call: The Noxious Glade
    .target Lord Maxwell Tyrosus
step
    .goto 23,75.66,52.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Craftsman Omarion|r
    .accept 27467 >>Accept Buried Blades
    .target Master Craftsman Omarion
step
    #completewith Along98
    >>As you go: Kill |cRXP_ENEMY_Dread Weavers|r, |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Death Singers|r and |cRXP_ENEMY_Stitched Golems|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27465,1 --Dread Weaver (8)
    .mob Dread Weaver
    .mob Diseased Flayer
    .mob Death Singer
    .mob Stitched Golem
step
    .goto 23,73.78,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rimblat Earthshatter|r
    .accept 27456 >>Accept Gathering Some Grub(s)
    .target Rimblat Earthshatter
step
    #label Along98
    #loop
    .goto 23,73.71,52.10,0
    .goto 23,73.71,52.10,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,9.02,66.52,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27684 >>Turn in Visitors
    .unitscan Fiona
step
    #loop
    .goto 23,68.49,69.51,0
    .goto 23,68.49,69.51,40,0
    .goto 23,66.22,67.97,40,0
    .goto 23,63.37,68.78,40,0
    >>Kill |cRXP_ENEMY_Carrion Grubs|r and |cRXP_ENEMY_Carrion Devourers|r. Loot them for |cRXP_LOOT_Slab of Carrion Worm Meat|r
    .complete 27456,1 --Slab of Carrion Worm Meat (1)
    .mob Carrion Grub
    .mob Carrion Devourer
step
    .goto 23,76.08,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27459 >>Turn in The Brotherhood of Light
    .accept 27460 >>Accept Soft Landing
    .unitscan Archmage Angela Dosantos
step
    #loop
    .goto 23,75.08,77.47,0
    .goto 23,75.08,77.47,40,0
    .goto 23,77.07,77.10,40,0
    .goto 23,78.25,71.93,40,0
    >>Kill |cRXP_ENEMY_Scarlet Praetorians|r, |cRXP_ENEMY_Scarlet Clerics|r, |cRXP_ENEMY_Scarlet Curates|r and |cRXP_ENEMY_Scarlet Archmages|r
    .complete 27460,1 --Scarlet Praetorian (8)
    .mob Scarlet Praetorian
    .mob Scarlet Cleric
    .mob Scarlet Curate
    .mob Scarlet Archmage
step
    .goto 23,77.56,79.41
    >>Click the |cRXP_PICK_Crusader's Flare|r
    .turnin 27460 >>Turn in Soft Landing
    .accept 27461 >>Accept To Take the Abbey
    .accept 27462 >>Accept To Take the Barracks
step
    .goto 23,75.35,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Commander Korfax|r
    .turnin 27462 >>Turn in To Take the Barracks
    .accept 27614 >>Accept Scarlet Salvage
    .accept 27615 >>Accept The Wrathcaster
    .accept 27616 >>Accept The Huntsman
    .accept 27619 >>Accept The Commander
    .target Crusade Commander Korfax
step
    .goto 23,74.73,78.17
    >>Kill |cRXP_ENEMY_Mataus the Wrathcaster|r
    >>Open the |cRXP_PICK_Battered Chest|r. Loot it for |cRXP_LOOT_Crimson Boar|r
    >>Open the |cRXP_PICK_Battered Chest|r. Loot it for |cRXP_LOOT_Lihanna's Strand|r
    >>Open the |cRXP_PICK_Battered Chest|r. Loot it for |cRXP_LOOT_Shroud of Uther|r
    >>Open the |cRXP_PICK_Battered Chest|r. Loot it for |cRXP_LOOT_Gavinrad's Sigil|r
    >>Kill |cRXP_ENEMY_Scarlet Commander Marjhan|r
    >>Kill |cRXP_ENEMY_Huntsman Leopold|r
    .complete 27615,1 --Mataus the Wrathcaster slain (1)
    .complete 27614,1 --Crimson Boar (1)
    .complete 27614,2 --Lihanna's Strand (1)
    .complete 27614,3 --Shroud of Uther (1)
    .complete 27614,4 --Gavinrad's Sigil (1)
    .complete 27619,1 --Scarlet Commander Marjhan slain (1)
    .complete 27616,1 --Huntsman Leopold slain (1)
    .mob Mataus the Wrathcaster
    .mob Scarlet Commander Marjhan
    .mob Huntsman Leopold
step
    .goto 23,75.35,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Commander Korfax|r
    .turnin 27614 >>Turn in Scarlet Salvage
    .turnin 27615 >>Turn in The Wrathcaster
    .turnin 27616 >>Turn in The Huntsman
    .turnin 27619 >>Turn in The Commander
    .accept 27618 >>Accept Argent Upheaval
    .target Crusade Commander Korfax
step
    .goto 23,72.54,74.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Commander Eligor Dawnbringer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27461 >>Turn in To Take the Abbey
    .accept 27612 >>Accept Victory From Within
    .accept 27613 >>Accept The Assassin
    .unitscan Crusade Commander Eligor Dawnbringer
step
    .goto 23,77.85,72.60
    >>Click the |cRXP_PICK_Argent Portal|r
    >>Kill |cRXP_ENEMY_Rohan the Assassin|r
    .complete 27612,1 --Argent Portal
    .complete 27612,2 --Argent Portal
    .complete 27613,1 --Rohan the Assassin slain (1)
    .mob Rohan the Assassin
step
    .goto 23,72.54,74.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Commander Eligor Dawnbringer|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27612 >>Turn in Victory From Within
    .turnin 27613 >>Turn in The Assassin
    .accept 27617 >>Accept Befouled No More
    .unitscan Crusade Commander Eligor Dawnbringer
step
    .goto 23,76.08,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Angela Dosantos|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27618 >>Turn in Argent Upheaval
    .turnin 27617 >>Turn in Befouled No More
    .accept 27620 >>Accept Like Rats
    .unitscan Archmage Angela Dosantos
step
    .goto 23,82.33,79.41
    >>Kill |cRXP_ENEMY_Crusader Lord Valdelmar|r
    .complete 27620,1 --Crusader Lord Valdelmar slain (1)
    .mob Crusader Lord Valdelmar
step
    .goto 23,75.61,52.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leonid Barthalomew the Revered|r
    .turnin 27620 >>Turn in Like Rats
    .target Leonid Barthalomew the Revered
step
    #completewith Along114
    >>As you go: Kill |cRXP_ENEMY_Dread Weavers|r, |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Death Singers|r and |cRXP_ENEMY_Stitched Golems|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27465,1 --Dread Weaver (8)
    .mob Dread Weaver
    .mob Diseased Flayer
    .mob Death Singer
    .mob Stitched Golem
step
    .goto 23,73.78,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rimblat Earthshatter|r
    .turnin 27456 >>Turn in Gathering Some Grub(s)
    .target Rimblat Earthshatter
step
    .goto 23,71.87,45.37
    >>Kill |cRXP_ENEMY_Stephen Browman|r and loot |cRXP_LOOT_Browman's Wrappings|r
    .complete 27458,1 --Browman's Wrappings (1)
    .mob Stephen Browman
step
    #completewith Along114
    >>As you go: Kill |cRXP_ENEMY_Noxious Assassins|r and |cRXP_ENEMY_Skullmages|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27465,2 --Noxious Assassin (8)
    .mob Noxious Assassin
    .mob Skullmage
step
    #label Along114
    #loop
    .goto 23,76.16,37.19,0
    .goto 23,76.16,37.19,40,0
    .goto 23,76.62,32.76,40,0
    .goto 23,80.35,35.03,40,0
    >>Interact with |cRXP_FRIENDLY_Slain Scourge Troopers|r
    .complete 27467,1 --Slain Scourge Trooper (10)
    .target Slain Scourge Trooper
step
    #loop
    .goto 23,78.71,35.54,0
    .goto 23,78.71,35.54,40,0
    .goto 23,78.00,39.00,40,0
    .goto 23,80.58,40.66,40,0
    >>Kill |cRXP_ENEMY_Noxious Assassins|r and |cRXP_ENEMY_Skullmages|r
    >>Kill |cRXP_ENEMY_Dread Weavers|r, |cRXP_ENEMY_Diseased Flayers|r, |cRXP_ENEMY_Death Singers|r and |cRXP_ENEMY_Stitched Golems|r
    .complete 27465,2 --Noxious Assassin (8)
    .complete 27465,1 --Dread Weaver (8)
    .mob Noxious Assassin
    .mob Skullmage
    .mob Dread Weaver
    .mob Diseased Flayer
    .mob Death Singer
    .mob Stitched Golem
step
    .goto 23,75.66,52.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Craftsman Omarion|r
    .turnin 27467 >>Turn in Buried Blades
    .target Master Craftsman Omarion
step
    .goto 23,75.87,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 27465 >>Turn in Argent Call: The Noxious Glade
    .target Lord Maxwell Tyrosus
step
    #loop
    .goto 23,75.77,52.41,0
    .goto 23,75.77,52.41,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,27.63,21.14,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27466 >>Accept Argent Call: Northdale
    .unitscan Tarenar Sunstrike
step
    .goto 23,74.92,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey LaRue|r
    .turnin 27458 >>Turn in Smokey and the Bandage
    .target Smokey LaRue
step
    .goto 23,73.78,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rimblat Earthshatter|r
    .accept 27457 >>Accept An Opportune Alliance
    .target Rimblat Earthshatter
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 40 - 84 Eastern Plaguelands
#subweight -40
#name 42-44 Eastern Plaguelands: around Tarenar Sunstrike
--RouteBuilder:next
#next Zone Routes (Horde)\37-40 Dustwallow Marsh: around Tabetha

step
    #loop
    .goto 23,73.71,52.10,0
    .goto 23,73.71,52.10,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,9.02,66.52,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27457 >>Turn in An Opportune Alliance
    .unitscan Fiona
    .isOnQuest 27457
step
    #loop
    .goto 23,73.71,52.10,0
    .goto 23,73.71,52.10,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,9.02,66.52,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27466 >>Turn in Argent Call: Northdale
    .unitscan Fiona
    .isOnQuest 27466
step
    .goto 23,61.58,43.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gamella Cracklefizz|r
    .accept 27477 >>Accept The Corpulent One
    .target Gamella Cracklefizz
step
    #loop
    .goto 23,75.77,52.41,0
    .goto 23,75.77,52.41,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,27.63,21.14,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27487 >>Accept Ix'lar the Underlord
    .unitscan Tarenar Sunstrike
    .isQuestTurnedIn 27466 --any of: Argent Call: Northdale
step
    .goto 23,61.00,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deacon Andaal|r
    .accept 27479 >>Accept Righteous Indignation
    .target Deacon Andaal
step
    #loop
    .goto 23,53.97,53.63,0
    .goto 23,53.97,53.63,40,0
    .goto 23,52.77,51.35,40,0
    .goto 23,60.61,43.33,40,0
    .goto 23,52.62,20.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vex'tul|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27481 >>Accept Out of the Ziggurat
    .unitscan Vex'tul
    .isQuestTurnedIn 27449 --Honor and Strength
    .isQuestTurnedIn 27465 --Argent Call: The Noxious Glade
step
    .goto 23,61.64,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard Trueflight|r
    .fp Eastwall Tower>>Get the Eastwall Tower Flight Path
    .target Richard Trueflight
    .subzoneskip 2271,1
step
    #loop
    .goto 23,62.61,34.48,0
    .goto 23,62.61,34.48,40,0
    .goto 23,60.72,31.73,40,0
    >>Kill |cRXP_ENEMY_Scourge Guards|r, |cRXP_ENEMY_Gangled Golems|r and |cRXP_ENEMY_Nerubian Sycophants|r
    .complete 27487,2 --Scourge Guard (8)
    .mob Scourge Guard
    .mob Gangled Golem
    .mob Nerubian Sycophant
    .isOnQuest 27487
step
    .goto 23,60.01,31.65
    >>Kill |cRXP_ENEMY_Ix'lar the Underlord|r
    .complete 27487,1 --Ix'lar the Underlord slain (1)
    .mob Ix'lar the Underlord
    .isOnQuest 27487
step
    .goto 23,55.08,27.22
    >>Kill |cRXP_ENEMY_Borelgore|r
    .complete 27477,1 --Borelgore slain (1)
    .mob Borelgore
step
    #completewith Along130
    >>As you go: Kill |cRXP_ENEMY_Mossflayer Scouts|r, |cRXP_ENEMY_Mossflayer Shadowhunters|r, |cRXP_ENEMY_Mossflayer Cannibals|r and |cRXP_ENEMY_Warlord Thresh'jins|r. Loot them for |cRXP_LOOT_Mossflayer Eye|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27479,1 --Mossflayer Eye (30)
    .mob Mossflayer Scout
    .mob Mossflayer Shadowhunter
    .mob Mossflayer Cannibal
    .mob Warlord Thresh'jin
step
    #label Along130
    .goto 23,66.81,9.86
    >>Kill |cRXP_ENEMY_Warlord Thresh'jin|r and loot |cRXP_LOOT_Body of Warlord Thresh'jin|r
    .complete 27481,1 --Body of Warlord Thresh'jin (1)
    .mob Warlord Thresh'jin
    .isOnQuest 27481
step
    #loop
    .goto 23,52.62,20.48,0
    .goto 23,52.62,20.48,40,0
    .goto 23,60.61,43.33,40,0
    .goto 23,52.77,51.35,40,0
    .goto 23,53.97,53.63,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vex'tul|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27481 >>Turn in Out of the Ziggurat
    .unitscan Vex'tul
    .isOnQuest 27481
step
    #loop
    .goto 23,53.97,53.63,0
    .goto 23,53.97,53.63,40,0
    .goto 23,52.77,51.35,40,0
    .goto 23,60.61,43.33,40,0
    .goto 23,52.62,20.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vex'tul|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27482 >>Accept Into the Flames
    .unitscan Vex'tul
    .isQuestTurnedIn 27481 --any of: Out of the Ziggurat
step
    #completewith Along134
    >>As you go: Kill |cRXP_ENEMY_Mossflayer Scouts|r, |cRXP_ENEMY_Mossflayer Shadowhunters|r, |cRXP_ENEMY_Mossflayer Cannibals|r and |cRXP_ENEMY_Warlord Thresh'jins|r. Loot them for |cRXP_LOOT_Mossflayer Eye|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27479,1 --Mossflayer Eye (30)
    .mob Mossflayer Scout
    .mob Mossflayer Shadowhunter
    .mob Mossflayer Cannibal
    .mob Warlord Thresh'jin
step
    .goto 23,67.42,8.93
    >>Click the |cRXP_PICK_Bonfire|r
    .complete 27482,1 --Bonfire
    .isOnQuest 27482
step
    #label Along134
    .goto 23,67.34,9.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27482 >>Turn in Into the Flames
    .target ?
    .isOnQuest 27482
step
    #loop
    .goto 23,66.81,9.86,0
    .goto 23,66.81,9.86,40,0
    .goto 23,63.90,11.13,40,0
    >>Kill |cRXP_ENEMY_Mossflayer Scouts|r, |cRXP_ENEMY_Mossflayer Shadowhunters|r, |cRXP_ENEMY_Mossflayer Cannibals|r and |cRXP_ENEMY_Warlord Thresh'jins|r. Loot them for |cRXP_LOOT_Mossflayer Eye|r
    .complete 27479,1 --Mossflayer Eye (30)
    .mob Mossflayer Scout
    .mob Mossflayer Shadowhunter
    .mob Mossflayer Cannibal
    .mob Warlord Thresh'jin
step
    #loop
    .goto 23,73.71,52.10,0
    .goto 23,73.71,52.10,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,9.02,66.52,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27487 >>Turn in Ix'lar the Underlord
    .unitscan Fiona
    .isOnQuest 27487
step
    .goto 23,61.58,43.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gamella Cracklefizz|r
    .turnin 27477 >>Turn in The Corpulent One
    .target Gamella Cracklefizz
step
    #loop
    .goto 23,75.77,52.41,0
    .goto 23,75.77,52.41,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,27.63,21.14,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27488 >>Accept Impatience
    .unitscan Tarenar Sunstrike
    .isQuestTurnedIn 27487 --any of: Ix'lar the Underlord
step
    .goto 23,61.00,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deacon Andaal|r
    .turnin 27479 >>Turn in Righteous Indignation
    .target Deacon Andaal
step
    .goto 23,65.48,24.42
    >>Open the |cRXP_PICK_Open Prayer Book|r. Loot it for |cRXP_LOOT_Gidwin's Prayer Book|r
    .complete 27488,1 --Gidwin's Prayer Book (1)
    .isOnQuest 27488
step
    #loop
    .goto 23,75.77,52.41,0
    .goto 23,75.77,52.41,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,27.63,21.14,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27488 >>Turn in Impatience
    .unitscan Tarenar Sunstrike
    .isOnQuest 27488
step
    #loop
    .goto 23,75.77,52.41,0
    .goto 23,75.77,52.41,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,27.63,21.14,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27489 >>Accept Nobody to Blame but Myself
    .unitscan Tarenar Sunstrike
    .isQuestTurnedIn 27488 --any of: Impatience
step
    .goto 23,61.61,42.61
    >>Kill |cRXP_ENEMY_Fiona's Caravans|r
    .complete 27489,1 --Fiona's Caravan slain (8)
    .mob Fiona's Caravan
    .isOnQuest 27489
step
    #loop
    .goto 23,75.77,52.41,0
    .goto 23,75.77,52.41,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,27.63,21.14,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27489 >>Turn in Nobody to Blame but Myself
    .unitscan Tarenar Sunstrike
    .isOnQuest 27489
step
    #loop
    .goto 23,27.63,21.14,0
    .goto 23,27.63,21.14,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,75.77,52.41,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27522 >>Accept Beat it Out of Them
    .unitscan Tarenar Sunstrike
    .isQuestTurnedIn 27489 --any of: Nobody to Blame but Myself
step
    .goto 23,50.01,19.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirkian Dawnshield|r
    .accept 27521 >>Accept Wretched Hive of Scum and Villainy
    .target Kirkian Dawnshield
step
    .goto 23,51.35,21.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grayson Ironwing|r
    .fp Northpass Tower>>Get the Northpass Tower Flight Path
    .target Grayson Ironwing
    .subzoneskip 2275,1
step
    #loop
    .goto 23,52.93,16.53,0
    .goto 23,52.93,16.53,40,0
    .goto 23,55.90,16.99,40,0
    >>Kill |cRXP_ENEMY_Scourge Siege Engineers|r
    .complete 27522,1 --Scourge Siege Engineer slain (6)
    .mob Scourge Siege Engineer
    .isOnQuest 27522
step
    #loop
    .goto 23,55.90,16.99,0
    .goto 23,55.90,16.99,40,0
    .goto 23,52.93,16.53,40,0
    >>Kill |cRXP_ENEMY_Scourge Siege Engineers|r
    .complete 27522,2 --Scourge Siege Engineer slain (6)
    .mob Scourge Siege Engineer
    .isOnQuest 27522
step
    #loop
    .goto 23,55.90,16.99,0
    .goto 23,55.90,16.99,40,0
    .goto 23,52.93,16.53,40,0
    >>Kill |cRXP_ENEMY_Scourge Siege Engineers|r
    .complete 27522,3 --Scourge Siege Engineer slain (6)
    .mob Scourge Siege Engineer
    .isOnQuest 27522
step
    #loop
    .goto 23,47.90,18.20,0
    .goto 23,47.90,18.20,40,0
    .goto 23,46.53,14.67,40,0
    .goto 23,48.66,12.38,40,0
    >>Kill |cRXP_ENEMY_Wretched Rangers|r, |cRXP_ENEMY_Wretched Pathstriders|r and |cRXP_ENEMY_Wretched Woodsmans|r
    .complete 27521,1 --Wretched Ranger (8)
    .mob Wretched Ranger
    .mob Wretched Pathstrider
    .mob Wretched Woodsman
step
    #loop
    .goto 23,73.71,52.10,0
    .goto 23,73.71,52.10,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,9.02,66.52,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27522 >>Turn in Beat it Out of Them
    .unitscan Fiona
    .isOnQuest 27522
step
    #loop
    .goto 23,73.71,52.10,0
    .goto 23,73.71,52.10,40,0
    .goto 23,61.48,42.69,40,0
    .goto 23,50.54,20.16,40,0
    .goto 23,52.92,53.06,40,0
    .goto 23,34.86,69.15,40,0
    .goto 23,9.02,66.52,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiona|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27524 >>Accept Blind Fury
    .unitscan Fiona
    .isQuestTurnedIn 27522 --any of: Beat it Out of Them
step
    #loop
    .goto 23,73.96,51.65,0
    .goto 23,73.96,51.65,40,0
    .goto 23,62.23,42.63,40,0
    .goto 23,50.49,20.22,40,0
    .goto 23,53.97,53.63,40,0
    .goto 23,35.77,68.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argus Highbeacon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27532 >>Accept The Plaguewood Tower
    .unitscan Argus Highbeacon
    .isQuestTurnedIn 27522 --any of: Beat it Out of Them
step
    .goto 23,50.01,19.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirkian Dawnshield|r
    .turnin 27521 >>Turn in Wretched Hive of Scum and Villainy
    .target Kirkian Dawnshield
step
    .goto 23,48.00,23.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corpseburner Tim|r
    .accept 27523 >>Accept Duskwing, Oh How I Hate Thee...
    .target Corpseburner Tim
step
    .goto 23,46.24,33.51
    >>Kill |cRXP_ENEMY_Duskwing|r and loot |cRXP_LOOT_Patch of Duskwing's Fur|r
    .complete 27523,1 --Patch of Duskwing's Fur (1)
    .mob Duskwing
step
    .goto 23,48.00,23.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corpseburner Tim|r
    .turnin 27523 >>Turn in Duskwing, Oh How I Hate Thee...
    .target Corpseburner Tim
step
    #loop
    .goto 23,27.63,21.14,0
    .goto 23,27.63,21.14,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,75.77,52.41,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27524 >>Turn in Blind Fury
    .unitscan Tarenar Sunstrike
    .isOnQuest 27524
step
    #loop
    .goto 23,27.63,21.14,0
    .goto 23,27.63,21.14,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,75.77,52.41,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27525 >>Accept Guardians of Stratholme
    .unitscan Tarenar Sunstrike
    .isQuestTurnedIn 27524 --any of: Blind Fury
step
    .goto 23,27.65,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Kevin Frost|r
    .accept 27528 >>Accept Scourged Mass
    .accept 27529 >>Accept Defenders of Darrowshire
    .accept 27539 >>Accept Add 'em to the Pile
    .target Crusader Kevin Frost
step
    .goto 23,29.04,19.29
    >>Kill |cRXP_ENEMY_Omasum Blighthoof|r and loot |cRXP_LOOT_The Baroness' Missive|r. Use it to start the quest
    .collect 61378,1,27551 --The Baroness' Missive (1)
    .accept 27551 >>Accept The Baroness' Missive
    .use 61378
    .mob Omasum Blighthoof
    .isQuestTurnedIn 27524 --any of: Blind Fury
step
    .goto 23,29.04,19.29
    >>Kill |cRXP_ENEMY_Karthis Darkrune|r
    .complete 27525,2 --Karthis Darkrune slain (1)
    .mob Karthis Darkrune
    .isOnQuest 27525
step
    .goto 23,25.41,19.79
    >>Kill |cRXP_ENEMY_Omasum Blighthoof|r
    .complete 27525,1 --Omasum Blighthoof slain (1)
    .mob Omasum Blighthoof
    .isOnQuest 27525
step
    .goto 23,18.45,27.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Kielar Jr.|r
    .fp Plaguewood Tower>>Get the Plaguewood Tower Flight Path
    .target William Kielar Jr.
step
    .goto 23,17.55,27.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Apothecary Judkins|r
    .turnin 27532 >>Turn in The Plaguewood Tower
    .target Argent Apothecary Judkins
    .isOnQuest 27532
step
    .goto 23,17.55,27.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Apothecary Judkins|r
    .accept 27531 >>Accept Counter-Plague Research
    .accept 27535 >>Accept Just a Little Touched
    .target Argent Apothecary Judkins
step
    #completewith Along167
    >>As you go: Kill |cRXP_ENEMY_Scourge Soldiers|r and |cRXP_ENEMY_Cursed Mages|r. Loot them for |cRXP_LOOT_Stinking Skull|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27539,1 --Stinking Skull (16)
    .mob Scourge Soldier
    .mob Cursed Mage
step
    .goto 23,33.17,15.77
    >>Interact with |cRXP_FRIENDLY_Overstuffed Golems|r
    .complete 27528,1 --Overstuffed Golem (8)
    .target Overstuffed Golem
step
    #completewith Along172
    >>As you go: Pick up |cRXP_PICK_Disembodied Arm|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 27531,2 --Disembodied Arm (5)
step
    #label Along167
    #loop
    .goto 23,31.40,20.00,0
    .goto 23,31.40,20.00,40,0
    .goto 23,29.40,18.20,40,0
    .goto 23,26.60,28.40,40,0
    .goto 23,31.00,28.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darrowshire Spirit|r
    .complete 27529,1 --Darrowshire Spirit (8)
    .target Darrowshire Spirit
step
    #loop
    .goto 23,29.58,22.09,0
    .goto 23,29.58,22.09,40,0
    .goto 23,32.33,20.34,40,0
    .goto 23,37.01,19.53,40,0
    .goto 23,38.59,19.33,40,0
    >>Kill |cRXP_ENEMY_Scourge Soldiers|r and |cRXP_ENEMY_Cursed Mages|r. Loot them for |cRXP_LOOT_Stinking Skull|r
    .complete 27539,1 --Stinking Skull (16)
    .mob Scourge Soldier
    .mob Cursed Mage
step
    #loop
    .goto 23,27.63,21.14,0
    .goto 23,27.63,21.14,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,75.77,52.41,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27525 >>Turn in Guardians of Stratholme
    .unitscan Tarenar Sunstrike
    .isOnQuest 27525
step
    #loop
    .goto 23,27.63,21.14,0
    .goto 23,27.63,21.14,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,75.77,52.41,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27551 >>Turn in The Baroness' Missive
    .unitscan Tarenar Sunstrike
    .isOnQuest 27551
step
    #loop
    .goto 23,27.63,21.14,0
    .goto 23,27.63,21.14,40,0
    .goto 23,28.54,25.94,40,0
    .goto 23,50.44,20.13,40,0
    .goto 23,61.57,43.22,40,0
    .goto 23,73.80,51.99,40,0
    .goto 23,75.77,52.41,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarenar Sunstrike|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27526 >>Accept Gidwin's Fate Revealed
    .unitscan Tarenar Sunstrike
    .isQuestTurnedIn 27551 --any of: The Baroness' Missive
step
    #label Along172
    .goto 23,27.65,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Kevin Frost|r
    .turnin 27528 >>Turn in Scourged Mass
    .turnin 27529 >>Turn in Defenders of Darrowshire
    .turnin 27539 >>Turn in Add 'em to the Pile
    .target Crusader Kevin Frost
step
    .goto 23,28.45,25.90
    >>Search for Gidwin Goldbraids within the slaughterhouse in central Plaguewood.
    .complete 27526,1 --Gidwin Goldbraids
    .target Gidwin Goldbraids
    .isOnQuest 27526
step
    #loop
    .goto 23,28.45,25.90,0
    .goto 23,28.45,25.90,40,0
    .goto 23,73.75,52.17,40,0
    .goto 23,75.75,52.31,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gidwin Goldbraids|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27526 >>Turn in Gidwin's Fate Revealed
    .unitscan Gidwin Goldbraids
    .isOnQuest 27526
step
    #loop
    .goto 23,25.02,24.68,0
    .goto 23,25.02,24.68,40,0
    .goto 23,22.88,29.45,40,0
    .goto 23,25.07,34.56,40,0
    >>Open the |cRXP_PICK_Flesh Giant Foot|r. Loot it for |cRXP_LOOT_Flesh Giant Foot Scrapings|r
    >>Loot the |cRXP_PICK_Rotberry Bushes|r for |cRXP_LOOT_Rotberry|r
    >>Pick up |cRXP_PICK_Disembodied Arm|r from the ground
    .complete 27531,3 --Flesh Giant Foot Scrapings (1)
    .complete 27531,1 --Rotberry (20)
    .complete 27531,2 --Disembodied Arm (5)
step
    .goto 23,17.55,27.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Apothecary Judkins|r
    .turnin 27531 >>Turn in Counter-Plague Research
    .target Argent Apothecary Judkins
step
    .goto 23,11.34,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augustus the Touched|r
    .turnin 27535 >>Turn in Just a Little Touched
    .accept 27533 >>Accept A Fate Worse Than Butchery
    .accept 27534 >>Accept Augustus' Receipt Book
    .target Augustus the Touched
step
    #loop
    .goto 23,11.64,28.74,0
    .goto 23,11.64,28.74,40,0
    .goto 23,14.95,27.18,40,0
    >>Pick up |cRXP_PICK_Augustus' Receipt Book|r from the ground
    >>Kill |cRXP_ENEMY_Plagued Swines|r
    .complete 27534,1 --Augustus' Receipt Book (1)
    .complete 27533,1 --Plagued Swine slain (9)
    .mob Plagued Swine
step
    .goto 23,11.34,28.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augustus the Touched|r
    .turnin 27533 >>Turn in A Fate Worse Than Butchery
    .turnin 27534 >>Turn in Augustus' Receipt Book
    .target Augustus the Touched
step
    +|cRXP_WARN_That is all of Eastern Plaguelands for now.|r Quests still in your log lead on from here; pick your next zone by them
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
    >>|cRXP_FRIENDLY_The Hinterlands|r: Warchief's Command: The Hinterlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
    >>|cRXP_FRIENDLY_Western Plaguelands|r: Warchief's Command: Western Plaguelands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Pamela's Doll
step
    +|cRXP_WARN_Suggested next zones at level 43|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.6 levels of quests, starting around Tabetha). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Eastern Plaguelands is planned from level 46.|r Load its guide for level 46 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 40 - 84 Eastern Plaguelands
#subweight -40
#name 46-47 Eastern Plaguelands
--RouteBuilder:next
#next Zone Routes (Horde)\46-48 Felwood: around Totem of Ruumbo;Zone Routes (Horde)\47-49 Searing Gorge: around Jack Rockleg;Zone Routes (Horde)\45-47 Badlands

step
    .goto 23,35.56,83.12
    >>Pick up |cRXP_PICK_Pamela's Doll's Left Side|r from the ground
    .collect 12887,1,27384,1 --Pamela's Doll's Left Side (1)
    .isOnQuest 27384
step
    .goto 23,34.55,85.45
    >>Pick up |cRXP_PICK_Pamela's Doll's Right Side|r from the ground
    .collect 12888,1,27384,1 --Pamela's Doll's Right Side (1)
    .isOnQuest 27384
step
    .goto 23,33.99,85.32
    >>Pick up |cRXP_PICK_Pamela's Doll's Head|r from the ground
    .collect 12886,1,27384,1 --Pamela's Doll's Head (1)
    .isOnQuest 27384
step
    .goto 23,32.43,83.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 27384 >>Turn in Pamela's Doll
    .target Pamela Redpath
    .isQuestComplete 27384
step
    .goto 23,73.73,53.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gek Nozzlerocket|r
    .accept 27762 >>Accept Fuselight, Ho!
    .target Gek Nozzlerocket
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28580 >>Accept Warchief's Command: Badlands!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 23 >>Leave Silvermoon City for Eastern Plaguelands
    .zoneskip 23
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 23,73.73,53.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gek Nozzlerocket|r
    .turnin 28580 >>Turn in Warchief's Command: Badlands!
    .target Gek Nozzlerocket
step
    +|cRXP_WARN_That is all of Eastern Plaguelands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Badlands|r: Fuselight, Ho!
step
    +|cRXP_WARN_Suggested next zones at level 46|r: |cRXP_FRIENDLY_Felwood|r (about 2.5 levels of quests, starting around Totem of Ruumbo), |cRXP_FRIENDLY_Searing Gorge|r (about 0.9 levels of quests, starting around Jack Rockleg), |cRXP_FRIENDLY_Badlands|r (about 0.6 levels of quests, starting around Dolph Blastus; 1 quest from here hands in there). Completing this step loads the guide for Felwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Eastern Plaguelands is planned from level 83.|r Load its guide for level 83 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 40 - 84 Eastern Plaguelands
#subweight -40
#name 83-84 Eastern Plaguelands
--RouteBuilder:next
#next Zone Routes (Horde)\82-83 Deepholm

step
    .goto 23,35.58,82.90
    >>Pick up |cRXP_PICK_Pamela's Doll's Head|r from the ground
    .collect 12886,1,27384,1 --Pamela's Doll's Head (1)
    .isOnQuest 27384
step
    .goto 23,35.56,83.12
    >>Pick up |cRXP_PICK_Pamela's Doll's Left Side|r from the ground
    .collect 12887,1,27384,1 --Pamela's Doll's Left Side (1)
    .isOnQuest 27384
step
    .goto 23,34.55,85.45
    >>Pick up |cRXP_PICK_Pamela's Doll's Right Side|r from the ground
    .collect 12888,1,27384,1 --Pamela's Doll's Right Side (1)
    .isOnQuest 27384
step
    .goto 23,32.43,83.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela Redpath|r
    .turnin 27384 >>Turn in Pamela's Doll
    .target Pamela Redpath
    .isQuestComplete 27384
step
    .goto 23,27.65,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Kevin Frost|r
    .accept 27530 >>Accept The Corpsebeasts
    .target Crusader Kevin Frost
    .isQuestTurnedIn 27528 --Scourged Mass
    .isQuestTurnedIn 27529 --Defenders of Darrowshire
    .isQuestTurnedIn 27539 --Add 'em to the Pile
step
    #loop
    .goto 23,28.68,31.99,0
    .goto 23,28.68,31.99,40,0
    .goto 23,25.56,35.94,40,0
    .goto 23,32.93,32.65,40,0
    >>Kill |cRXP_ENEMY_Corpsebeast (Giant)s|r, |cRXP_ENEMY_Corpsebeast (Dog)s|r and |cRXP_ENEMY_Corpsebeast (Blob)s|r
    .complete 27530,1 --Corpsebeast (Giant) (8)
    .mob Corpsebeast (Giant)
    .mob Corpsebeast (Dog)
    .mob Corpsebeast (Blob)
    .isOnQuest 27530
step
    .goto 23,27.65,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Kevin Frost|r
    .turnin 27530 >>Turn in The Corpsebeasts
    .target Crusader Kevin Frost
    .isOnQuest 27530
step
    +|cRXP_WARN_End of the Eastern Plaguelands route.|r
step
    +|cRXP_WARN_Suggested next zones at level 83|r: |cRXP_FRIENDLY_Deepholm|r (about 0.8 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
