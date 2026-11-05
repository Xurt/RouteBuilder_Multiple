-- 50-52 Burning Steppes: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 50, 55).
-- Split into 2 guides, listed under "50 - 56 Burning Steppes" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Burning Steppes.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 50 - 56 Burning Steppes
#subweight -50
#name 50-53 Burning Steppes: around Eitrigg
--RouteBuilder:next
#next Zone Routes (Horde)\51-53 Un'Goro Crater: around Mor'vek;Zone Routes (Horde)\52-54 Winterspring: around Rinno Curtainfire;Zone Routes (Horde)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,16.98,51.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mouton Flamestar|r
    .turnin 28515 >>Turn in Mouton Flamestar
    .target Mouton Flamestar
    .isOnQuest 28515
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,16.98,51.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mouton Flamestar|r
    .accept 28417 >>Accept Done Nothing Wrong
    .target Mouton Flamestar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,17.47,51.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariok|r
    .accept 28418 >>Accept Burning Vengeance
    .target Ariok
step
    .goto 36,17.80,52.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hans Oreflight|r
    .fp >>Get the Flamestar Post Flight Path
    .target Hans Oreflight
    .subzoneskip 5651,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Fettered Green Whelpling|r and loot |cRXP_LOOT_Freed Green Whelpling|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28417,2 --Freed Green Whelpling (1)
    .mob Fettered Green Whelpling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along3
    >>As you go: Kill |cRXP_ENEMY_Flamescale Broodlings|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28418,2 --Flamescale Broodling slain (5)
    .mob Flamescale Broodling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along3
    #loop
    .goto 36,18.56,58.77,0
    .goto 36,18.56,58.77,40,0
    .goto 36,17.14,64.10,40,0
    >>Kill |cRXP_ENEMY_Blackrock Whelpers|r
    .complete 28418,1 --Blackrock Whelper slain (5)
    .mob Blackrock Whelper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Fettered Bronze Whelpling|r and loot |cRXP_LOOT_Freed Bronze Whelpling|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28417,4 --Freed Bronze Whelpling (1)
    .mob Fettered Bronze Whelpling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along4
    #loop
    .goto 36,24.48,59.80,0
    .goto 36,24.48,59.80,40,0
    .goto 36,24.97,66.33,40,0
    .goto 36,24.78,69.33,40,0
    >>Kill |cRXP_ENEMY_Flamescale Broodlings|r
    .complete 28418,2 --Flamescale Broodling slain (5)
    .mob Flamescale Broodling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 36,17.36,67.78,0
    .goto 36,17.36,67.78,40,0
    .goto 36,17.48,60.47,40,0
    >>Kill |cRXP_ENEMY_Fettered Green Whelpling|r and loot |cRXP_LOOT_Freed Green Whelpling|r
    >>Kill |cRXP_ENEMY_Fettered Blue Whelpling|r and loot |cRXP_LOOT_Freed Blue Whelpling|r
    .complete 28417,2 --Freed Green Whelpling (1)
    .complete 28417,3 --Freed Blue Whelpling (1)
    .mob Fettered Green Whelpling
    .mob Fettered Blue Whelpling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 36,21.26,61.48,0
    .goto 36,21.26,61.48,40,0
    .goto 36,21.51,67.67,40,0
    >>Kill |cRXP_ENEMY_Fettered Bronze Whelpling|r and loot |cRXP_LOOT_Freed Bronze Whelpling|r
    >>Kill |cRXP_ENEMY_Fettered Red Whelpling|r and loot |cRXP_LOOT_Freed Red Whelpling|r
    .complete 28417,4 --Freed Bronze Whelpling (1)
    .complete 28417,1 --Freed Red Whelpling (1)
    .mob Fettered Bronze Whelpling
    .mob Fettered Red Whelpling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,17.47,51.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariok|r
    .turnin 28418 >>Turn in Burning Vengeance
    .accept 28419 >>Accept Stocking Up
    .accept 28420 >>Accept A Future Project
    .accept 28421 >>Accept Mud Hunter
    .target Ariok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,16.98,51.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mouton Flamestar|r
    .turnin 28417 >>Turn in Done Nothing Wrong
    .target Mouton Flamestar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 36,16.29,43.26,0
    .goto 36,16.29,43.26,40,0
    .goto 36,17.87,42.16,40,0
    .goto 36,20.62,42.32,40,0
    >>Pick up |cRXP_PICK_Obsidian-Flecked Mud|r from the ground
    .complete 28421,1 --Obsidian-Flecked Mud (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 36,12.19,44.26,0
    .goto 36,12.19,44.26,40,0
    .goto 36,8.12,54.11,40,0
    .goto 36,9.94,56.99,40,0
    >>Kill |cRXP_ENEMY_Venomtip Scorpids|r. Loot them for |cRXP_LOOT_Razor-Sharp Scorpid Barb|r
    >>Kill |cRXP_ENEMY_Ember Worgs|r and |cRXP_ENEMY_Giant Ember Worgs|r. Loot them for |cRXP_LOOT_Ember Worg Hide|r
    .complete 28419,1 --Razor-Sharp Scorpid Barb (5)
    .complete 28420,1 --Ember Worg Hide (11)
    .mob Venomtip Scorpid
    .mob Ember Worg
    .mob Giant Ember Worg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,17.47,51.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariok|r
    .turnin 28419 >>Turn in Stocking Up
    .turnin 28420 >>Turn in A Future Project
    .turnin 28421 >>Turn in Mud Hunter
    .accept 28422 >>Accept The Sand, the Cider, and the Orb
    .target Ariok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,8.39,35.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 28422 >>Turn in The Sand, the Cider, and the Orb
    .accept 28423 >>Accept Warlocks Have the Neatest Stuff
    .accept 28424 >>Accept Shadow Boxing
    .target Gorzeeki Wildeyes
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 36,6.00,31.48,0
    .goto 36,6.00,31.48,40,0
    .goto 36,9.92,29.68,40,0
    >>Kill |cRXP_ENEMY_Blackrock Warlock|r and loot |cRXP_LOOT_Clear Glass Orb|r
    >>Pick up |cRXP_PICK_Slumber Sand|r from the ground
    >>Pick up |cRXP_PICK_Fel Slider Cider|r from the ground
    >>Kill |cRXP_ENEMY_Ner'gosh the Shadow|r
    .complete 28423,1 --Clear Glass Orb (1)
    .complete 28423,2 --Slumber Sand (1)
    .complete 28423,3 --Fel Slider Cider (1)
    .complete 28424,1 --Ner'gosh the Shadow slain (1)
    .mob Blackrock Warlock
    .mob Ner'gosh the Shadow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,8.39,35.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 28423 >>Turn in Warlocks Have the Neatest Stuff
    .turnin 28424 >>Turn in Shadow Boxing
    .accept 28425 >>Accept Return to Ariok
    .target Gorzeeki Wildeyes
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,17.47,51.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariok|r
    .turnin 28425 >>Turn in Return to Ariok
    .accept 28426 >>Accept Chiselgrip, the Heart of the Steppes
    .target Ariok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 36,35.60,50.11,0
    .goto 36,35.60,50.11,40,0
    .goto 36,35.57,56.89,40,0
    .goto 36,38.96,55.42,40,0
    >>Kill |cRXP_ENEMY_Blackrock Sorcerers|r, |cRXP_ENEMY_Blackrock Slayers|r, |cRXP_ENEMY_Smolderthorn Shamans|r and |cRXP_ENEMY_Smolderthorn Assassins|r
    .complete 28426,1 --Blackrock Sorcerer (8)
    .mob Blackrock Sorcerer
    .mob Blackrock Slayer
    .mob Smolderthorn Shaman
    .mob Smolderthorn Assassin
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
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
    .accept 28575 >>Accept Warchief's Command: Western Plaguelands!
    .accept 28577 >>Accept Warchief's Command: Eastern Plaguelands!
    .accept 28580 >>Accept Warchief's Command: Badlands!
    .accept 28581 >>Accept Warchief's Command: Searing Gorge!
    .accept 28667 >>Accept Warchief's Command: Burning Steppes!
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .xp 50 >>Grind to level 50 (Meet with Grezz Ragefist needs it)
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 110,81.16,37.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsudar the Bastion|r
    .accept 27281 >>Accept Grezz Ragefist
    .accept 28290 >>Accept Meet with Grezz Ragefist
    .target Alsudar the Bastion
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .xp 50 >>Grind to level 50 (Meet with Ormak Grimshot needs it)
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 110,84.56,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .accept 27278 >>Accept Grimshot's Call
    .accept 28297 >>Accept Meet with Ormak Grimshot
    .target Zandine
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .xp 50 >>Grind to level 50 (Meet with Gordul needs it)
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 110,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 28298 >>Accept Meet with Gordul
    .accept 27279 >>Accept The Shattered Hand
    .target Zelanis
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .xp 50 >>Grind to level 50 (Meet with Ureda needs it)
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 110,59.17,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inethven|r
    .accept 27277 >>Accept An Audience with Ureda
    .accept 28300 >>Accept Meet with Ureda
    .target Inethven
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .xp 50 >>Grind to level 50 (Meet with Zevrost needs it)
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 110,73.05,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zanien|r
    .accept 27282 >>Accept Zevrost's Behest
    .accept 28299 >>Accept Meet with Zevrost
    .target Zanien
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .xp 50 >>Grind to level 50 (Meet with Kardris Dreamseeker needs it)
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 110,71.71,55.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gez'li|r
    .accept 28301 >>Accept Meet with Kardris Dreamseeker
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Gez'li
step << BloodElf Paladin
    .xp 50 >>Grind to level 50 (Meet with Master Pyreanor needs it)
step << Tauren Paladin/BloodElf Paladin
    .xp 50 >>Grind to level 50 (Meet with Sunwalker Atohmo needs it)
step
    .goto 110,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Champion Bachi|r
    .accept 28303 >>Accept Meet with Master Pyreanor << BloodElf Paladin
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 28302 >>Accept Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Champion Bachi
step << Undead Priest
    .xp 50 >>Grind to level 50 (Meet with Dark Cleric Cecille needs it)
step << Tauren Priest
    .xp 50 >>Grind to level 50 (Meet with Seer Liwatha needs it)
step << Troll Priest
    .xp 50 >>Grind to level 50 (Meet with Shadow-Walker Zuru needs it)
step << BloodElf Priest
    .xp 50 >>Grind to level 50 (Meet with Tyelis needs it)
step << Goblin Priest
    .xp 50 >>Grind to level 50 (Meet with Brother Silverhallow needs it)
step
    .goto 110,53.09,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldrae|r
    .accept 28304 >>Accept Meet with Dark Cleric Cecille << Undead Priest
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 28308 >>Accept Meet with Seer Liwatha << Tauren Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 28309 >>Accept Meet with Shadow-Walker Zuru << Troll Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 28307 >>Accept Meet with Tyelis << BloodElf Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28323 >>Accept Meet with Brother Silverhallow << Goblin Priest
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
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
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
step
    #completewith next
    .zone 36 >>Leave Silvermoon City for Burning Steppes
    .zoneskip 36
step
    .goto 36,46.81,44.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stebben Oreknuckle|r
    .turnin 28426 >>Turn in Chiselgrip, the Heart of the Steppes << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 28225 >>Accept Prove Yer Allegiance
    .accept 28226 >>Accept Scrapped Golems
    .target Stebben Oreknuckle
step
    .goto 36,46.13,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimly Singefeather|r
    .fp >>Get the Ruins of Thaurissan Flight Path
    .target Grimly Singefeather
    .subzoneskip 250,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 28427 >>Accept A Needle in a Hellhole
    .target Eitrigg
step
    .goto 36,45.45,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelaron Direneedle|r
    .turnin 28427 >>Turn in A Needle in a Hellhole << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 28431 >>Accept A Perfect Costume << Troll/BloodElf
    .target Thelaron Direneedle
step << Troll/BloodElf
    .goto 36,45.45,46.34
    >>Interact with |cRXP_FRIENDLY_Thelaron Direneedle|r
    .complete 28431,1 --Thelaron Direneedle
    .target Thelaron Direneedle
step << Troll/BloodElf
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28431 >>Turn in A Perfect Costume
    .target Eitrigg
step << Orc/Undead
    .goto 36,45.45,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelaron Direneedle|r
    .accept 28428 >>Accept A Perfect Costume
    .target Thelaron Direneedle
step << Orc/Undead
    .goto 36,45.45,46.34
    >>Interact with |cRXP_FRIENDLY_Thelaron Direneedle|r
    .complete 28428,1 --Thelaron Direneedle
    .target Thelaron Direneedle
step << Orc/Undead
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28428 >>Turn in A Perfect Costume
    .target Eitrigg
step << Tauren
    .goto 36,45.45,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelaron Direneedle|r
    .accept 28429 >>Accept A Perfect Costume
    .target Thelaron Direneedle
step << Tauren
    .goto 36,45.45,46.34
    >>Interact with |cRXP_FRIENDLY_Thelaron Direneedle|r
    .complete 28429,1 --Thelaron Direneedle
    .target Thelaron Direneedle
step << Tauren
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28429 >>Turn in A Perfect Costume
    .target Eitrigg
step << Goblin
    .goto 36,45.45,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelaron Direneedle|r
    .accept 28430 >>Accept A Perfect Costume
    .target Thelaron Direneedle
step << Goblin
    .goto 36,45.45,46.34
    >>Interact with |cRXP_FRIENDLY_Thelaron Direneedle|r
    .complete 28430,1 --Thelaron Direneedle
    .target Thelaron Direneedle
step
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28430 >>Turn in A Perfect Costume << Goblin
    .accept 28432 >>Accept Into the Black Tooth Hovel << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .target Eitrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,45.32,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Kaoshin|r
    .turnin 28432 >>Turn in Into the Black Tooth Hovel
    .accept 28433 >>Accept Grunt Work
    .target Quartermaster Kaoshin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,43.37,60.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorlop|r
    .accept 28434 >>Accept Strategic Cuts
    .target Gorlop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,35.22,55.36
    >>Click the |cRXP_PICK_Blackrock Boots|r
    .complete 28433,1 --Blackrock Boots
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,44.99,52.50
    >>Kill |cRXP_ENEMY_Voodooist Timan|r
    .complete 28434,3 --Voodooist Timan slain (1)
    .mob Voodooist Timan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,45.32,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Kaoshin|r
    .turnin 28433 >>Turn in Grunt Work while you are here
    .isQuestComplete 28433
    .target Quartermaster Kaoshin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,39.29,54.92
    >>Kill |cRXP_ENEMY_Worgmistress Othana|r
    .complete 28434,2 --Worgmistress Othana slain (1)
    .mob Worgmistress Othana
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,43.37,60.05
    >>Kill |cRXP_ENEMY_Gorlop|r
    .complete 28434,1 --Gorlop slain (1)
    .mob Gorlop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28434 >>Turn in Strategic Cuts
    .accept 28436 >>Accept Taking the Horn For Ourselves
    .target Eitrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,45.32,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Kaoshin|r
    .turnin 28433 >>Turn in Grunt Work
    .accept 28435 >>Accept The Kodocaller's Horn
    .target Quartermaster Kaoshin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,45.32,51.75
    >>Use the Horn of the Callers to call 7 Blackrock War Kodos back to camp. If a kodo turns hostile, fight it until it submits.
    .complete 28435,1 --Kodo Horn Credit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #loop
    .goto 36,45.07,62.03,0
    .goto 36,45.07,62.03,40,0
    .goto 36,44.39,58.77,40,0
    .goto 36,44.31,61.35,40,0
    .goto 36,44.01,61.53,40,0
    .goto 36,43.72,63.26,40,0
    .goto 36,42.27,63.21,40,0
    .goto 36,41.75,60.46,40,0
    .goto 36,40.49,61.94,40,0
    >>Interact with |cRXP_FRIENDLY_Blackrock War Kodo|r
    .complete 28436,1 --Blackrock War Kodo
    .target Blackrock War Kodo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,44.62,61.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28436 >>Turn in Taking the Horn For Ourselves
    .target ?
step
    #loop
    .goto 36,51.90,38.92,0
    .goto 36,51.90,38.92,40,0
    .goto 36,52.13,35.05,40,0
    >>Kill |cRXP_ENEMY_Thaurissan Spies|r, |cRXP_ENEMY_Thaurissan Firewalkers|r and |cRXP_ENEMY_Thaurissan Agents|r
    >>Loot the |cRXP_PICK_War Reaver Parts|r for |cRXP_LOOT_Obsidian Piston|r
    >>Loot the |cRXP_PICK_War Reaver Parts|r for |cRXP_LOOT_Flux Exhaust Sieve|r
    >>Loot the |cRXP_PICK_War Reaver Parts|r for |cRXP_LOOT_Thorium Gearshaft|r
    >>Open the |cRXP_PICK_War Reaver Parts|r. Loot it for |cRXP_LOOT_Stone Power Core|r
    .complete 28225,1 --Thaurissan Spy (8)
    .complete 28226,1 --Obsidian Piston (3)
    .complete 28226,2 --Flux Exhaust Sieve (3)
    .complete 28226,3 --Thorium Gearshaft (3)
    .complete 28226,4 --Stone Power Core (1)
    .mob Thaurissan Spy
    .mob Thaurissan Firewalker
    .mob Thaurissan Agent
step
    .goto 36,46.81,44.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stebben Oreknuckle|r
    .turnin 28225 >>Turn in Prove Yer Allegiance
    .turnin 28226 >>Turn in Scrapped Golems
    .accept 28227 >>Accept Golem Training
    .target Stebben Oreknuckle
step
    #loop
    .goto 36,46.75,45.87,0
    .goto 36,46.75,45.87,40,0
    .goto 36,45.04,44.15,40,0
    >>Kill |cRXP_ENEMY_Chiseled Golems|r
    .complete 28227,1 --Chiseled Golem slain (4)
    .mob Chiseled Golem
step
    .goto 36,46.81,44.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stebben Oreknuckle|r
    .turnin 28227 >>Turn in Golem Training
    .target Stebben Oreknuckle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 28437 >>Accept General Thorg'izog
    .target Eitrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,30.67,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28437 >>Turn in General Thorg'izog
    .accept 28438 >>Accept Trial by Magma
    .target General Thorg'izog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,31.10,34.00
    >>Kill |cRXP_ENEMY_Magma Lord Kolob|r
    .complete 28438,1 --Magma Lord Kolob slain (1)
    .mob Magma Lord Kolob
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,30.67,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28438 >>Turn in Trial by Magma
    .accept 28439 >>Accept I Am the Law and I Am the Lash
    .target General Thorg'izog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 28440 >>Accept Abuse of Power
    .target Eitrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,30.67,33.71
    >>Use the Blackrock Cudgel of Discipline on 20 troops in the Fields of Honor. If one of the troops discovers your disguise, cudgel him to death before he can unmask you.
    .complete 28439,1 --Cudgel Credit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,30.67,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28439 >>Turn in I Am the Law and I Am the Lash while you are here
    .isQuestComplete 28439
    .target General Thorg'izog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #loop
    .goto 36,34.45,35.18,0
    .goto 36,34.45,35.18,40,0
    .goto 36,32.77,38.65,40,0
    >>Kill |cRXP_ENEMY_Blackrock Sergeants|r
    .complete 28440,1 --Blackrock Sergeant slain (5)
    .mob Blackrock Sergeant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28440 >>Turn in Abuse of Power
    .accept 28441 >>Accept Enough Damage For One Day
    .target Eitrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28441 >>Turn in Enough Damage For One Day while you are here
    .isQuestComplete 28441
    .target Eitrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,30.67,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28439 >>Turn in I Am the Law and I Am the Lash
    .target General Thorg'izog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,17.47,51.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariok|r
    .turnin 28667 >>Turn in Warchief's Command: Burning Steppes!
    .target Ariok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,44.54,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28441 >>Turn in Enough Damage For One Day
    .accept 28442 >>Accept Flame Crest
    .target Eitrigg
step
    .goto 36,54.16,24.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
    .fp >>Get the Flame Crest Flight Path
    .target Vahgruk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,54.95,22.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kibler|r
    .turnin 28442 >>Turn in Flame Crest while you are here
    .isQuestComplete 28442
    .target Kibler
step
    .goto 36,54.13,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gruna|r
    .target Gruna
    .home >>Set your Hearthstone to Gruna's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,54.95,22.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kibler|r
    .turnin 28442 >>Turn in Flame Crest
    .accept 28491 >>Accept Not Fireflies, Flameflies
    .target Kibler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_Flameflies|r. Loot them for |cRXP_LOOT_Flamefly|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28491,1 --Flamefly (7)
    .mob Flamefly
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 28443 >>Accept Blackened Ashes
    .accept 28444 >>Accept Latent Demons of the Land
    .accept 28445 >>Accept A Heap of Delicious Worg
    .target Eitrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #label Along76
    #loop
    .goto 36,55.08,27.22,0
    .goto 36,55.08,27.22,40,0
    .goto 36,53.05,25.84,40,0
    .goto 36,54.96,31.26,40,0
    .goto 36,60.48,32.55,40,0
    >>Kill |cRXP_ENEMY_Flamekin Spitters|r, |cRXP_ENEMY_Flamekin Torchers|r and |cRXP_ENEMY_Flamekin Ragers|r. Loot them for |cRXP_LOOT_Fallen Flamekin|r
    .complete 28444,1 --Fallen Flamekin (18)
    .mob Flamekin Spitter
    .mob Flamekin Torcher
    .mob Flamekin Rager
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #loop
    .goto 36,72.91,52.85,0
    .goto 36,72.91,52.85,40,0
    .goto 36,73.78,59.20,40,0
    >>Kill |cRXP_ENEMY_Giant Ember Worgs|r. Loot them for |cRXP_LOOT_Worg Cutlet|r
    .complete 28445,1 --Worg Cutlet (40)
    .mob Giant Ember Worg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #loop
    .goto 36,60.80,44.33,0
    .goto 36,60.80,44.33,40,0
    .goto 36,59.03,44.06,40,0
    .goto 36,62.86,38.33,40,0
    >>Kill |cRXP_ENEMY_Greater Obsidian Elemental|r and loot |cRXP_LOOT_Obsidian Ashes|r
    .complete 28443,1 --Obsidian Ashes (1)
    .mob Greater Obsidian Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,68.20,48.79
    >>Kill |cRXP_ENEMY_Flameflies|r. Loot them for |cRXP_LOOT_Flamefly|r
    .complete 28491,1 --Flamefly (7)
    .mob Flamefly
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #completewith next
    .hs >>Hearth to Gruna's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28443 >>Turn in Blackened Ashes
    .turnin 28444 >>Turn in Latent Demons of the Land
    .turnin 28445 >>Turn in A Heap of Delicious Worg
    .target Eitrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,54.77,24.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariok|r
    .accept 28446 >>Accept Blood Tour
    .accept 28447 >>Accept Draconic Vanguard
    .accept 28448 >>Accept A Deal With a Dragon
    .target Ariok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,54.95,22.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kibler|r
    .turnin 28491 >>Turn in Not Fireflies, Flameflies
    .target Kibler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #completewith Along87
    >>As you go: Kill |cRXP_ENEMY_Black Wyrmkins|r and |cRXP_ENEMY_Black Dragonspawns|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28446,1 --Black Wyrmkin (8)
    .mob Black Wyrmkin
    .mob Black Dragonspawn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,72.33,27.44
    >>Kill |cRXP_ENEMY_Terromath the Seared|r
    .complete 28447,2 --Terromath the Seared slain (1)
    .mob Terromath the Seared
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,75.43,37.22
    >>Kill |cRXP_ENEMY_Tugnar Goremaw|r
    .complete 28447,4 --Tugnar Goremaw slain (1)
    .mob Tugnar Goremaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,82.11,31.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acride|r
    .turnin 28448 >>Turn in A Deal With a Dragon
    .target Acride
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,79.80,50.89
    >>Kill |cRXP_ENEMY_Minyoth|r
    .complete 28447,3 --Minyoth slain (1)
    .mob Minyoth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #label Along87
    .goto 36,64.94,59.77
    >>Kill |cRXP_ENEMY_Whelptamer Akumi|r
    .complete 28447,1 --Whelptamer Akumi slain (1)
    .mob Whelptamer Akumi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    #loop
    .goto 36,75.94,39.12,0
    .goto 36,75.94,39.12,40,0
    .goto 36,75.96,33.62,40,0
    .goto 36,77.74,31.45,40,0
    >>Kill |cRXP_ENEMY_Black Wyrmkins|r and |cRXP_ENEMY_Black Dragonspawns|r
    .complete 28446,1 --Black Wyrmkin (8)
    .mob Black Wyrmkin
    .mob Black Dragonspawn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin
    .goto 36,54.88,24.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariok|r
    .turnin 28446 >>Turn in Blood Tour
    .turnin 28447 >>Turn in Draconic Vanguard
    .target Ariok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 28452 >>Accept A Delivery for Xi'lun
    .accept 28451 >>Accept A Delivery for Neeralak
    .accept 28450 >>Accept A Delivery for Thorg'izog
    .target Eitrigg
    .isQuestTurnedIn 28449 --any of: Placing the Pawns
    .xp <49,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,66.52,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28450 >>Turn in A Delivery for Thorg'izog
    .target General Thorg'izog
    .isOnQuest 28450
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,70.16,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlock Xi'lun|r
    .turnin 28452 >>Turn in A Delivery for Xi'lun
    .target High Warlock Xi'lun
    .isOnQuest 28452
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,69.68,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dragon-Lord Neeralak|r
    .turnin 28451 >>Turn in A Delivery for Neeralak
    .target Dragon-Lord Neeralak
    .isOnQuest 28451
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Gruna's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 28453 >>Accept Locked and Loaded
    .target Eitrigg
    .isQuestTurnedIn 28450 --A Delivery for Thorg'izog
    .isQuestTurnedIn 28451 --A Delivery for Neeralak
    .isQuestTurnedIn 28452 --A Delivery for Xi'lun
    .xp <49,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28453 >>Turn in Locked and Loaded
    .target Eitrigg
    .isOnQuest 28453
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.77,24.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariok|r
    .accept 28454 >>Accept Assault on Dreadmaul Rock
    .target Ariok
    .isQuestTurnedIn 28453 --any of: Locked and Loaded
    .xp <49,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 36,62.61,44.75,0
    .goto 36,62.61,44.75,40,0
    .goto 36,63.71,48.07,40,0
    .goto 36,64.63,51.25,40,0
    >>Kill |cRXP_ENEMY_Blackrock Invaders|r
    .complete 28454,1 --Blackrock Invader slain (200)
    .mob Blackrock Invader
    .isOnQuest 28454
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Gruna's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28454 >>Turn in Assault on Dreadmaul Rock
    .target Eitrigg
    .isOnQuest 28454
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 28455 >>Accept Glory Amidst Chaos
    .target Eitrigg
    .isQuestTurnedIn 28454 --any of: Assault on Dreadmaul Rock
    .xp <49,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,69.68,42.95
    >>Kill |cRXP_ENEMY_Dragon-Lord Neeralak|r
    .complete 28455,2 --Dragon-Lord Neeralak slain (1)
    .mob Dragon-Lord Neeralak
    .isOnQuest 28455
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,66.52,40.52
    >>Kill |cRXP_ENEMY_General Thorg'izog|r
    .complete 28455,1 --General Thorg'izog slain (1)
    .mob General Thorg'izog
    .isOnQuest 28455
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,70.16,47.25
    >>Kill |cRXP_ENEMY_High Warlock Xi'lun|r
    .complete 28455,3 --High Warlock Xi'lun slain (1)
    .mob High Warlock Xi'lun
    .isOnQuest 28455
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 28455 >>Turn in Glory Amidst Chaos
    .target Eitrigg
    .isOnQuest 28455
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.69,24.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 28456 >>Accept The Spoils of War
    .target Eitrigg
    .isQuestTurnedIn 28455 --any of: Glory Amidst Chaos
    .xp <49,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.79,24.41
    >>Click the |cRXP_PICK_Crate of Left Over Supplies|r
    .turnin 28456 >>Turn in The Spoils of War
    .isOnQuest 28456
step
    +|cRXP_WARN_That is all of Burning Steppes for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Warchief's Command: Arathi Highlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eastern Plaguelands|r: Warchief's Command: Eastern Plaguelands!, Warchief's Command: Badlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Warchief's Command: Ghostlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Warchief's Command: Northern Stranglethorn Vale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda, Meet with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call, Meet with Ormak Grimshot << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Shattered Hand, Meet with Gordul << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls, Meet with Kardris Dreamseeker << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist, Meet with Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest, Meet with Zevrost << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor, Meet with Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun, Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call, Meet with Seer Liwatha << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker, Meet with Shadow-Walker Zuru << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille, Meet with Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar, Meet with Tyelis << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow, Meet with Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_Searing Gorge|r: Warchief's Command: Searing Gorge! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Warchief's Command: The Cape of Stranglethorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Hinterlands|r: Warchief's Command: The Hinterlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
    >>|cRXP_FRIENDLY_Western Plaguelands|r: Warchief's Command: Western Plaguelands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_another zone|r: The Kodocaller's Horn << Orc/Undead/Tauren/Troll/BloodElf/Goblin
step
    +|cRXP_WARN_Suggested next zones at level 52|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 1.8 levels of quests, starting around Mor'vek), |cRXP_FRIENDLY_Winterspring|r (about 1.3 levels of quests, starting around Rinno Curtainfire), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.9 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Burning Steppes is planned from level 55.|r Load its guide for level 55 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 50 - 56 Burning Steppes
#subweight -50
#name 55-56 Burning Steppes
--RouteBuilder:next
#next Zone Routes (Horde)\52-54 Winterspring: around Rinno Curtainfire;Zone Routes (Horde)\55-56 Silithus;Zone Routes (Horde)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 36,54.95,22.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kibler|r
    .accept 28570 >>Accept The Bogpaddle Bullet
    .target Kibler
step
    +|cRXP_WARN_End of the Burning Steppes route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Swamp of Sorrows|r: The Bogpaddle Bullet << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 55|r: |cRXP_FRIENDLY_Winterspring|r (about 1.2 levels of quests, starting around Rinno Curtainfire), |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.8 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Winterspring --RouteBuilder:next
]])
