-- 50-52 Burning Steppes: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 50, 55).
-- Split into 2 guides, listed under "50 - 56 Burning Steppes" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Burning Steppes.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 50 - 56 Burning Steppes
#subweight -50
#name 50-53 Burning Steppes: around Colonel Troteman
--RouteBuilder:next
#next Zone Routes (Alliance)\51-53 Un'Goro Crater: around Garl Stormclaw;Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,16.98,51.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mouton Flamestar|r
    .turnin 28514 >>Turn in Mouton Flamestar
    .target Mouton Flamestar
    .isOnQuest 28514
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,16.98,51.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mouton Flamestar|r
    .accept 28172 >>Accept Done Nothing Wrong
    .target Mouton Flamestar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,17.26,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28666 >>Turn in Hero's Call: Burning Steppes!
    .target John J. Keeshan
    .isOnQuest 28666
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,17.26,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 28174 >>Accept Burning Vengeance
    .target John J. Keeshan
step
    .goto 36,17.80,52.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hans Oreflight|r
    .fp Flamestar Post>>Get the Flamestar Post Flight Path
    .target Hans Oreflight
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along5
    >>As you go: Kill |cRXP_ENEMY_Blackrock Whelpers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28174,1 --Blackrock Whelper slain (5)
    .mob Blackrock Whelper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Flamescale Broodlings|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28174,2 --Flamescale Broodling slain (5)
    .mob Flamescale Broodling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along4
    #loop
    .goto 36,17.48,60.47,0
    .goto 36,17.48,60.47,40,0
    .goto 36,17.36,67.78,40,0
    >>Kill |cRXP_ENEMY_Fettered Green Whelpling|r and loot |cRXP_LOOT_Freed Green Whelpling|r
    >>Kill |cRXP_ENEMY_Fettered Blue Whelpling|r and loot |cRXP_LOOT_Freed Blue Whelpling|r
    .complete 28172,2 --Freed Green Whelpling (1)
    .complete 28172,3 --Freed Blue Whelpling (1)
    .mob Fettered Green Whelpling
    .mob Fettered Blue Whelpling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along5
    #loop
    .goto 36,21.26,61.48,0
    .goto 36,21.26,61.48,40,0
    .goto 36,21.51,67.67,40,0
    >>Kill |cRXP_ENEMY_Fettered Bronze Whelpling|r and loot |cRXP_LOOT_Freed Bronze Whelpling|r
    >>Kill |cRXP_ENEMY_Fettered Red Whelpling|r and loot |cRXP_LOOT_Freed Red Whelpling|r
    .complete 28172,4 --Freed Bronze Whelpling (1)
    .complete 28172,1 --Freed Red Whelpling (1)
    .mob Fettered Bronze Whelpling
    .mob Fettered Red Whelpling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 36,24.48,59.80,0
    .goto 36,24.48,59.80,40,0
    .goto 36,24.03,65.01,40,0
    .goto 36,24.95,67.99,40,0
    >>Kill |cRXP_ENEMY_Blackrock Whelpers|r
    >>Kill |cRXP_ENEMY_Flamescale Broodlings|r
    .complete 28174,1 --Blackrock Whelper slain (5)
    .complete 28174,2 --Flamescale Broodling slain (5)
    .mob Blackrock Whelper
    .mob Flamescale Broodling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,17.26,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28174 >>Turn in Burning Vengeance
    .accept 28177 >>Accept Stocking Up
    .accept 28178 >>Accept A Future Project
    .accept 28179 >>Accept Mud Hunter
    .target John J. Keeshan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,16.98,51.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mouton Flamestar|r
    .turnin 28172 >>Turn in Done Nothing Wrong
    .target Mouton Flamestar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 36,16.29,43.26,0
    .goto 36,16.29,43.26,40,0
    .goto 36,17.87,42.16,40,0
    .goto 36,20.62,42.32,40,0
    >>Pick up |cRXP_PICK_Obsidian-Flecked Mud|r from the ground
    .complete 28179,1 --Obsidian-Flecked Mud (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 36,20.34,51.40,0
    .goto 36,20.34,51.40,40,0
    .goto 36,24.32,47.42,40,0
    .goto 36,25.81,52.17,40,0
    >>Kill |cRXP_ENEMY_Ember Worgs|r and |cRXP_ENEMY_Giant Ember Worgs|r. Loot them for |cRXP_LOOT_Ember Worg Hide|r
    >>Kill |cRXP_ENEMY_Venomtip Scorpids|r. Loot them for |cRXP_LOOT_Razor-Sharp Scorpid Barb|r
    .complete 28178,1 --Ember Worg Hide (11)
    .complete 28177,1 --Razor-Sharp Scorpid Barb (5)
    .mob Ember Worg
    .mob Giant Ember Worg
    .mob Venomtip Scorpid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,17.26,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28177 >>Turn in Stocking Up
    .turnin 28178 >>Turn in A Future Project
    .turnin 28179 >>Turn in Mud Hunter
    .accept 28180 >>Accept The Sand, the Cider, and the Orb
    .target John J. Keeshan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,8.39,35.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 28180 >>Turn in The Sand, the Cider, and the Orb
    .accept 28181 >>Accept Warlocks Have the Neatest Stuff
    .accept 28182 >>Accept Shadow Boxing
    .target Gorzeeki Wildeyes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Blackrock Warlock|r and loot |cRXP_LOOT_Clear Glass Orb|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28181,1 --Clear Glass Orb (1)
    .mob Blackrock Warlock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along13
    .goto 36,5.14,30.92
    >>Pick up |cRXP_PICK_Slumber Sand|r from the ground
    >>Pick up |cRXP_PICK_Fel Slider Cider|r from the ground
    .complete 28181,2 --Slumber Sand (1)
    .complete 28181,3 --Fel Slider Cider (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 36,6.00,31.48,0
    .goto 36,6.00,31.48,40,0
    .goto 36,9.92,29.68,40,0
    >>Kill |cRXP_ENEMY_Ner'gosh the Shadow|r
    >>Kill |cRXP_ENEMY_Blackrock Warlock|r and loot |cRXP_LOOT_Clear Glass Orb|r
    .complete 28182,1 --Ner'gosh the Shadow slain (1)
    .complete 28181,1 --Clear Glass Orb (1)
    .mob Ner'gosh the Shadow
    .mob Blackrock Warlock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,8.39,35.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorzeeki Wildeyes|r
    .turnin 28181 >>Turn in Warlocks Have the Neatest Stuff
    .turnin 28182 >>Turn in Shadow Boxing
    .accept 28183 >>Accept Return to Keeshan
    .target Gorzeeki Wildeyes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,17.26,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28183 >>Turn in Return to Keeshan
    .accept 28184 >>Accept Chiselgrip, the Heart of the Steppes
    .target John J. Keeshan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 36,30.40,52.89,0
    .goto 36,30.40,52.89,40,0
    .goto 36,33.16,52.98,40,0
    >>Kill |cRXP_ENEMY_Blackrock Sorcerers|r, |cRXP_ENEMY_Blackrock Slayers|r, |cRXP_ENEMY_Smolderthorn Shamans|r and |cRXP_ENEMY_Smolderthorn Assassins|r
    .complete 28184,1 --Blackrock Sorcerer (8)
    .mob Blackrock Sorcerer
    .mob Blackrock Slayer
    .mob Smolderthorn Shaman
    .mob Smolderthorn Assassin
step
    .goto 36,46.81,44.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stebben Oreknuckle|r
    .turnin 28184 >>Turn in Chiselgrip, the Heart of the Steppes << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 28225 >>Accept Prove Yer Allegiance
    .accept 28226 >>Accept Scrapped Golems
    .target Stebben Oreknuckle
step
    .goto 36,46.13,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimly Singefeather|r
    .fp Chiselgrip>>Get the Chiselgrip Flight Path
    .target Grimly Singefeather
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,46.39,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 28254 >>Accept A Needle in a Hellhole
    .target John J. Keeshan
step
    .goto 36,45.45,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelaron Direneedle|r
    .turnin 28254 >>Turn in A Needle in a Hellhole << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 28202 >>Accept A Perfect Costume << Human/Dwarf
    .target Thelaron Direneedle
step << Human/Dwarf
    .goto 36,45.45,46.34
    >>Interact with |cRXP_FRIENDLY_Thelaron Direneedle|r
    .complete 28202,1 --Thelaron Direneedle
    .target Thelaron Direneedle
step << Human/Dwarf
    .goto 36,46.39,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28202 >>Turn in A Perfect Costume
    .target John J. Keeshan
step << Draenei/Worgen
    .goto 36,45.45,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelaron Direneedle|r
    .accept 28203 >>Accept A Perfect Costume
    .target Thelaron Direneedle
step << Draenei/Worgen
    .goto 36,45.45,46.34
    >>Interact with |cRXP_FRIENDLY_Thelaron Direneedle|r
    .complete 28203,1 --Thelaron Direneedle
    .target Thelaron Direneedle
step << Draenei/Worgen
    .goto 36,46.39,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28203 >>Turn in A Perfect Costume
    .target John J. Keeshan
step << NightElf
    .goto 36,45.45,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelaron Direneedle|r
    .accept 28205 >>Accept A Perfect Costume
    .target Thelaron Direneedle
step << NightElf
    .goto 36,45.45,46.34
    >>Interact with |cRXP_FRIENDLY_Thelaron Direneedle|r
    .complete 28205,1 --Thelaron Direneedle
    .target Thelaron Direneedle
step << NightElf
    .goto 36,46.39,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28205 >>Turn in A Perfect Costume
    .target John J. Keeshan
step << Gnome
    .goto 36,45.45,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelaron Direneedle|r
    .accept 28204 >>Accept A Perfect Costume
    .target Thelaron Direneedle
step << Gnome
    .goto 36,45.45,46.34
    >>Interact with |cRXP_FRIENDLY_Thelaron Direneedle|r
    .complete 28204,1 --Thelaron Direneedle
    .target Thelaron Direneedle
step
    .goto 36,46.39,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28204 >>Turn in A Perfect Costume << Gnome
    .accept 28239 >>Accept Into the Black Tooth Hovel << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .target John J. Keeshan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,46.33,45.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 28253 >>Accept Taking the Horn For Ourselves
    .turnin 28253 >>Turn in Taking the Horn For Ourselves
    .target Colonel Troteman
step
    #loop
    .goto 36,51.90,38.92,0
    .goto 36,51.90,38.92,40,0
    .goto 36,52.13,35.05,40,0
    >>Kill |cRXP_ENEMY_Thaurissan Spies|r, |cRXP_ENEMY_Thaurissan Firewalkers|r and |cRXP_ENEMY_Thaurissan Agents|r
    >>Loot the |cRXP_PICK_War Reaver Parts|r for |cRXP_LOOT_Obsidian Piston|r
    >>Loot the |cRXP_PICK_War Reaver Parts|r for |cRXP_LOOT_Thorium Gearshaft|r
    >>Loot the |cRXP_PICK_War Reaver Parts|r for |cRXP_LOOT_Flux Exhaust Sieve|r
    >>Open the |cRXP_PICK_War Reaver Parts|r. Loot it for |cRXP_LOOT_Stone Power Core|r
    .complete 28225,1 --Thaurissan Spy (8)
    .complete 28226,1 --Obsidian Piston (3)
    .complete 28226,3 --Thorium Gearshaft (3)
    .complete 28226,2 --Flux Exhaust Sieve (3)
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,46.39,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 28265 >>Accept General Thorg'izog
    .target John J. Keeshan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,30.67,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28265 >>Turn in General Thorg'izog
    .accept 28266 >>Accept Trial by Magma
    .target General Thorg'izog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,31.10,34.00
    >>Kill |cRXP_ENEMY_Magma Lord Kolob|r
    .complete 28266,1 --Magma Lord Kolob slain (1)
    .mob Magma Lord Kolob
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,30.67,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28266 >>Turn in Trial by Magma
    .accept 28278 >>Accept I Am the Law and I Am the Lash
    .target General Thorg'izog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #loop
    .goto 36,34.77,37.40,0
    .goto 36,34.77,37.40,40,0
    .goto 36,35.46,34.93,40,0
    >>Kill |cRXP_ENEMY_Blackrock Soldiers|r, |cRXP_ENEMY_Smolderthorn Assassins|r and |cRXP_ENEMY_Firegut Flamespeakers|r
    .complete 28278,1 --Blackrock Soldier (8)
    .mob Blackrock Soldier
    .mob Smolderthorn Assassin
    .mob Firegut Flamespeaker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,30.67,33.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28278 >>Turn in I Am the Law and I Am the Lash
    .target General Thorg'izog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,46.33,45.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 28279 >>Accept Abuse of Power
    .target Colonel Troteman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #loop
    .goto 36,39.65,37.52,0
    .goto 36,39.65,37.52,40,0
    .goto 36,35.82,35.55,40,0
    >>Kill |cRXP_ENEMY_Blackrock Sergeants|r
    .complete 28279,1 --Blackrock Sergeant slain (5)
    .mob Blackrock Sergeant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,46.33,45.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 28279 >>Turn in Abuse of Power
    .accept 28286 >>Accept Enough Damage For One Day
    .turnin 28286 >>Turn in Enough Damage For One Day
    .accept 28310 >>Accept Morgan's Vigil
    .target Colonel Troteman
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgus Stoutarm|r
    .goto 36,72.089,65.686
    .fp Morgan's Vigil >> Get the Morgan's Vigil flight path
    .target Borgus Stoutarm
step << Horde
    .goto 36,54.16,24.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahgruk|r
    .fp Flame Crest>>Get the Flame Crest Flight Path
    .target Vahgruk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,71.86,67.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
    .turnin 28310 >>Turn in Morgan's Vigil while you are here
    .isQuestComplete 28310
    .target Oralius
step
    .goto 36,54.13,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gruna|r
    .target Gruna
    .home >>Set your Hearthstone to Gruna's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,71.86,67.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
    .turnin 28310 >>Turn in Morgan's Vigil
    .accept 28415 >>Accept SEVEN! YUP!
    .target Oralius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.64,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 28311 >>Accept Blackened Ashes
    .accept 28312 >>Accept Latent Demons of the Land
    .accept 28313 >>Accept A Heap of Delicious Worg
    .target Colonel Troteman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #loop
    .goto 36,66.37,70.03,0
    .goto 36,66.37,70.03,40,0
    .goto 36,64.23,66.48,40,0
    >>Kill |cRXP_ENEMY_Flamekin Spitters|r, |cRXP_ENEMY_Flamekin Torchers|r and |cRXP_ENEMY_Flamekin Ragers|r. Loot them for |cRXP_LOOT_Fallen Flamekin|r
    >>Kill |cRXP_ENEMY_Flameflies|r. Loot them for |cRXP_LOOT_Flamefly|r
    .complete 28312,1 --Fallen Flamekin (18)
    .complete 28415,1 --Flamefly (7)
    .mob Flamekin Spitter
    .mob Flamekin Torcher
    .mob Flamekin Rager
    .mob Flamefly
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #loop
    .goto 36,62.58,57.16,0
    .goto 36,62.58,57.16,40,0
    .goto 36,61.59,53.08,40,0
    >>Kill |cRXP_ENEMY_Greater Obsidian Elemental|r and loot |cRXP_LOOT_Obsidian Ashes|r
    .complete 28311,1 --Obsidian Ashes (1)
    .mob Greater Obsidian Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #loop
    .goto 36,72.91,52.85,0
    .goto 36,72.91,52.85,40,0
    .goto 36,73.78,59.20,40,0
    >>Kill |cRXP_ENEMY_Giant Ember Worgs|r. Loot them for |cRXP_LOOT_Worg Cutlet|r
    .complete 28313,1 --Worg Cutlet (40)
    .mob Giant Ember Worg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.64,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 28311 >>Turn in Blackened Ashes
    .turnin 28312 >>Turn in Latent Demons of the Land
    .turnin 28313 >>Turn in A Heap of Delicious Worg
    .target Colonel Troteman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.55,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 28314 >>Accept Blood Tour
    .accept 28315 >>Accept Draconic Vanguard
    .accept 28316 >>Accept A Deal With a Dragon
    .target John J. Keeshan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,71.86,67.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
    .turnin 28415 >>Turn in SEVEN! YUP!
    .target Oralius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #loop
    .goto 36,65.48,60.74,0
    .goto 36,65.48,60.74,40,0
    .goto 36,63.32,57.47,40,0
    >>Kill |cRXP_ENEMY_Black Wyrmkins|r and |cRXP_ENEMY_Black Dragonspawns|r
    >>Kill |cRXP_ENEMY_Whelptamer Akumi|r
    .complete 28314,1 --Black Wyrmkin (8)
    .complete 28315,1 --Whelptamer Akumi slain (1)
    .mob Black Wyrmkin
    .mob Black Dragonspawn
    .mob Whelptamer Akumi
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,75.43,37.22
    >>Kill |cRXP_ENEMY_Tugnar Goremaw|r
    .complete 28315,4 --Tugnar Goremaw slain (1)
    .mob Tugnar Goremaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,72.33,27.44
    >>Kill |cRXP_ENEMY_Terromath the Seared|r
    .complete 28315,2 --Terromath the Seared slain (1)
    .mob Terromath the Seared
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,82.11,31.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acride|r
    .turnin 28316 >>Turn in A Deal With a Dragon
    .target Acride
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,79.80,50.89
    >>Kill |cRXP_ENEMY_Minyoth|r
    .complete 28315,3 --Minyoth slain (1)
    .mob Minyoth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.55,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 28314 >>Turn in Blood Tour
    .turnin 28315 >>Turn in Draconic Vanguard
    .target John J. Keeshan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.64,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 28326 >>Accept Placing the Pawns
    .turnin 28326 >>Turn in Placing the Pawns
    .accept 28317 >>Accept A Delivery for Thorg'izog
    .accept 28318 >>Accept A Delivery for Neeralak
    .accept 28319 >>Accept A Delivery for Xi'lun
    .target Colonel Troteman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,66.52,40.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Thorg'izog|r
    .turnin 28317 >>Turn in A Delivery for Thorg'izog
    .target General Thorg'izog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,70.16,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlock Xi'lun|r
    .turnin 28319 >>Turn in A Delivery for Xi'lun
    .target High Warlock Xi'lun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,69.68,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dragon-Lord Neeralak|r
    .turnin 28318 >>Turn in A Delivery for Neeralak
    .target Dragon-Lord Neeralak
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.64,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 28327 >>Accept Locked and Loaded
    .turnin 28327 >>Turn in Locked and Loaded
    .target Colonel Troteman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.55,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John J. Keeshan|r
    .accept 28320 >>Accept Assault on Dreadmaul Rock
    .target John J. Keeshan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #loop
    .goto 36,66.29,60.29,0
    .goto 36,66.29,60.29,40,0
    .goto 36,71.23,54.13,40,0
    .goto 36,68.32,54.29,40,0
    .goto 36,63.89,49.32,40,0
    >>Kill |cRXP_ENEMY_Blackrock Invaders|r
    .complete 28320,1 --Blackrock Invader slain (200)
    .mob Blackrock Invader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.64,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 28320 >>Turn in Assault on Dreadmaul Rock
    .accept 28321 >>Accept Glory Amidst Chaos
    .target Colonel Troteman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,70.17,47.30
    >>Kill |cRXP_ENEMY_Dragon-Lord Neeralak|r
    >>Kill |cRXP_ENEMY_High Warlock Xi'lun|r
    .complete 28321,2 --Dragon-Lord Neeralak slain (1)
    .complete 28321,3 --High Warlock Xi'lun slain (1)
    .mob Dragon-Lord Neeralak
    .mob High Warlock Xi'lun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,66.52,40.52
    >>Kill |cRXP_ENEMY_General Thorg'izog|r
    .complete 28321,1 --General Thorg'izog slain (1)
    .mob General Thorg'izog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,73.64,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 28321 >>Turn in Glory Amidst Chaos
    .accept 28322 >>Accept The Spoils of War
    .target Colonel Troteman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #completewith next
    .hs >>Hearth to Gruna's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,54.79,24.41
    >>Click the |cRXP_PICK_Crate of Left Over Supplies|r
    .turnin 28322 >>Turn in The Spoils of War
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,45.32,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Kaoshin|r
    .turnin 28239 >>Turn in Into the Black Tooth Hovel
    .accept 28245 >>Accept Grunt Work
    .target Quartermaster Kaoshin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,45.40,51.82
    >>Click the |cRXP_PICK_Blackrock Boots|r
    .complete 28245,1 --Blackrock Boots
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,45.32,51.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Kaoshin|r
    .turnin 28245 >>Turn in Grunt Work
    .accept 28252 >>Accept The Kodocaller's Horn
    .target Quartermaster Kaoshin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,46.33,45.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 28246 >>Accept Strategic Cuts
    .target Colonel Troteman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,44.99,52.50
    >>Kill |cRXP_ENEMY_Voodooist Timan|r
    .complete 28246,3 --Voodooist Timan slain (1)
    .mob Voodooist Timan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,43.37,60.05
    >>Kill |cRXP_ENEMY_Gorlop|r
    .complete 28246,1 --Gorlop slain (1)
    .mob Gorlop
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    #loop
    .goto 36,44.39,58.77,0
    .goto 36,44.39,58.77,40,0
    .goto 36,42.27,63.21,40,0
    >>Interact with |cRXP_FRIENDLY_Blackrock War Kodos|r
    .complete 28252,1 --Blackrock War Kodo (7)
    .target Blackrock War Kodo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,44.62,61.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28252 >>Turn in The Kodocaller's Horn
    .target ?
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,39.29,54.92
    >>Kill |cRXP_ENEMY_Worgmistress Othana|r
    .complete 28246,2 --Worgmistress Othana slain (1)
    .mob Worgmistress Othana
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen
    .goto 36,46.33,45.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 28246 >>Turn in Strategic Cuts
    .target Colonel Troteman
step
    +|cRXP_WARN_Suggested next zones at level 52|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 1.8 levels of quests, starting around Garl Stormclaw), |cRXP_FRIENDLY_Winterspring|r (about 1.4 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 1.0 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Burning Steppes is planned from level 55.|r Load its guide for level 55 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 50 - 56 Burning Steppes
#subweight -50
#name 55-56 Burning Steppes
--RouteBuilder:next
#next Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\55-56 Silithus;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 36,71.86,67.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oralius|r
    .accept 28569 >>Accept The Bogpaddle Bullet
    .target Oralius
step
    +|cRXP_WARN_End of the Burning Steppes route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Swamp of Sorrows|r: The Bogpaddle Bullet << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 55|r: |cRXP_FRIENDLY_Winterspring|r (about 1.2 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.8 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Winterspring --RouteBuilder:next
]])
