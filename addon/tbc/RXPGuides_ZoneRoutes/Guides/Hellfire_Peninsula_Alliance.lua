-- 58-63 Hellfire Peninsula: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 58, 63, 67).
-- Split into 3 guides, listed under "58 - 68 Hellfire Peninsula" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Hellfire Peninsula.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 58 - 68 Hellfire Peninsula
#subweight -58
#name 58-61 Hellfire Peninsula: around Assistant Klatu

step
    .goto 1944,87.34,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Duron|r
    .turnin 10119 >>Turn in Through the Dark Portal
    .target Commander Duron
    .isOnQuest 10119
step
    .goto 1944,87.34,50.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Duron|r
    .accept 10288 >>Accept Arrival in Outland
    .target Commander Duron
step
    .goto 1944,87.36,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amish Wildhammer|r
    .turnin 10288 >>Turn in Arrival in Outland
    .accept 10140 >>Accept Journey to Honor Hold
    .target Amish Wildhammer
step
    .goto 1944,54.81,62.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Isildor|r
    .turnin 10140 >>Turn in Journey to Honor Hold
    .accept 10254 >>Accept Force Commander Danath
    .target Marshal Isildor
step
    .goto 1944,54.03,63.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaston|r
    .target Gaston
    .home >>Set your Hearthstone to Gaston's inn
step
    .goto 1944,54.67,63.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Markus Scylan|r
    .vendor >>|cRXP_BUY_Buy some gems from |cRXP_FRIENDLY_Markus Scylan|r for later quest gear rewards if you wish|r
    .target Markus Scylan
    .subzoneskip 3538,1
step
    .goto 1944,56.64,66.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
    .turnin 10254 >>Turn in Force Commander Danath
    .accept 10160 >>Accept Know your Enemy
    .accept 10141 >>Accept The Legion Reborn
    .target Force Commander Danath Trollbane
step
    .goto 1944,51.12,60.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumphry|r
    .accept 10055 >>Accept Waste Not, Want Not
    .target Dumphry
step
    .goto 1944,50.91,60.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Amadi|r
    .turnin 10160 >>Turn in Know your Enemy
    .accept 10482 >>Accept Fel Orc Scavengers
    .target Lieutenant Amadi
step
    #loop
    .goto 1944,57.94,53.04,0
    .goto 1944,57.94,53.04,40,0
    .goto 1944,60.69,51.04,40,0
    .goto 1944,59.67,47.05,40,0
    .goto 1944,56.16,48.06,40,0
    >>Kill |cRXP_ENEMY_Bonechewer Mutants|r, |cRXP_ENEMY_Bonechewer Raiders|r, |cRXP_ENEMY_Bonechewer Peons|r and |cRXP_ENEMY_Bonechewer Scavengers|r
    >>Open the |cRXP_PICK_Salvageable Metal|r. Loot it for |cRXP_LOOT_Salvaged Metal|r
    >>Open the |cRXP_PICK_Salvageable Wood|r. Loot it for |cRXP_LOOT_Salvaged Wood|r
    .complete 10482,1 --Bonechewer Mutant (8)
    .complete 10055,1 --Salvaged Metal (1)
    .complete 10055,2 --Salvaged Wood (1)
    .mob Bonechewer Mutant
    .mob Bonechewer Raider
    .mob Bonechewer Peon
    .mob Bonechewer Scavenger
step
    .goto 1944,51.12,60.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumphry|r
    .turnin 10055 >>Turn in Waste Not, Want Not
    .accept 10078 >>Accept Laying Waste to the Unwanted
    .target Dumphry
step
    .goto 1944,50.91,60.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Amadi|r
    .turnin 10482 >>Turn in Fel Orc Scavengers
    .accept 10483 >>Accept Ill Omens
    .target Lieutenant Amadi
step
    .goto 1944,61.72,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Altumus|r
    .turnin 10141 >>Turn in The Legion Reborn
    .accept 10142 >>Accept The Path of Anguish
    .target Sergeant Altumus
step
    #loop
    .goto 1944,66.24,56.21,0
    .goto 1944,66.24,56.21,40,0
    .goto 1944,68.38,58.22,40,0
    >>Kill |cRXP_ENEMY_Dreadcaller|r
    >>Kill |cRXP_ENEMY_Flamewaker Imps|r
    >>Kill |cRXP_ENEMY_Infernal Warbringers|r
    .complete 10142,1 --Dreadcaller slain (1)
    .complete 10142,2 --Flamewaker Imp slain (4)
    .complete 10142,3 --Infernal Warbringer slain (6)
    .mob Dreadcaller
    .mob Flamewaker Imp
    .mob Infernal Warbringer
step
    .goto 1944,61.72,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Altumus|r
    .turnin 10142 >>Turn in The Path of Anguish
    .accept 10143 >>Accept Expedition Point
    .target Sergeant Altumus
step
    #loop
    .goto 1944,66.62,70.05,0
    .goto 1944,66.62,70.05,40,0
    .goto 1944,69.20,69.33,40,0
    .goto 1944,69.39,75.78,40,0
    >>Kill |cRXP_ENEMY_Bleeding Hollow Grunts|r, |cRXP_ENEMY_Bleeding Hollow Dark Shamans|r, |cRXP_ENEMY_Bleeding Hollow Peons|r and |cRXP_ENEMY_Bleeding Hollow Necrolytes|r. Loot them for |cRXP_LOOT_Cursed Talisman|r
    .complete 10483,1 --Cursed Talisman (1)
    .mob Bleeding Hollow Grunt
    .mob Bleeding Hollow Dark Shaman
    .mob Bleeding Hollow Peon
    .mob Bleeding Hollow Necrolyte
step
    .goto 1944,70.96,63.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Ironridge|r
    .turnin 10483 >>Turn in Ill Omens
    .accept 10484 >>Accept Cursed Talismans
    .target Corporal Ironridge
step
    .goto 1944,71.34,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander Kingston|r
    .turnin 10143 >>Turn in Expedition Point
    .accept 10144 >>Accept Disrupt Their Reinforcements
    .target Forward Commander Kingston
step
    .goto 1944,71.40,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Dabir'ee|r
    .accept 10895 >>Accept Zeth'Gor Must Burn!
    .target Wing Commander Dabir'ee
step
    #loop
    .goto 1944,72.41,58.52,0
    .goto 1944,72.41,58.52,40,0
    .goto 1944,71.12,54.63,40,0
    >>Click the |cRXP_PICK_Portal Kaalez|r
    >>Kill |cRXP_ENEMY_Netherhounds|r, |cRXP_ENEMY_Wrathguards|r, |cRXP_ENEMY_Doomwhisperers|r and |cRXP_ENEMY_Fel Handlers|r. Loot them for |cRXP_LOOT_Demonic Rune Stone|r
    .complete 10144,2 --Portal Kaalez
    .collect 28513,1,10144,1 --Demonic Rune Stone (1)
    .mob Netherhound
    .mob Wrathguard
    .mob Doomwhisperer
    .mob Fel Handler
step
    .goto 1944,71.46,55.16
    >>Click the |cRXP_PICK_Portal Grimh|r
    .complete 10144,1 --Portal Grimh
step
    .goto 1944,71.34,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander Kingston|r
    .turnin 10144 >>Turn in Disrupt Their Reinforcements
    .accept 10146 >>Accept Mission: The Murketh and Shaadraz Gateways
    .target Forward Commander Kingston
step
    .goto 1944,77.71,51.83
    >>Click the |cRXP_PICK_Gateway Shaadraz|r
    >>Click the |cRXP_PICK_Gateway Murketh|r
    .complete 10146,2 --Gateway Shaadraz
    .complete 10146,1 --Gateway Murketh
step
    .goto 1944,71.34,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forward Commander Kingston|r
    .turnin 10146 >>Turn in Mission: The Murketh and Shaadraz Gateways
    .accept 10340 >>Accept Shatter Point
    .target Forward Commander Kingston
step
    .goto 1944,70.13,69.06
    >>Kill |cRXP_ENEMY_Zeth'Gor Quest Credit Marker, They Must Burn, Tower Forge|r
    >>Kill |cRXP_ENEMY_Zeth'Gor Quest Credit Marker, They Must Burn, Tower Foothill|r
    .complete 10895,3 --Forge Tower Marked (1)
    .complete 10895,4 --Foothill Tower Marked (1)
    .mob Zeth'Gor Quest Credit Marker, They Must Burn, Tower Forge
    .mob Zeth'Gor Quest Credit Marker, They Must Burn, Tower Foothill
step
    .goto 1944,66.46,76.47
    >>Kill |cRXP_ENEMY_Zeth'Gor Quest Credit Marker, They Must Burn, Tower South|r
    .complete 10895,2 --Southern Tower Marked (1)
    .mob Zeth'Gor Quest Credit Marker, They Must Burn, Tower South
step
    #loop
    .goto 1944,69.39,75.78,0
    .goto 1944,69.39,75.78,40,0
    .goto 1944,69.20,69.33,40,0
    .goto 1944,66.62,70.05,40,0
    >>Kill |cRXP_ENEMY_Zeth'Gor Quest Credit Marker, They Must Burn, Tower North|r
    >>Kill |cRXP_ENEMY_Bleeding Hollow Grunts|r, |cRXP_ENEMY_Bleeding Hollow Dark Shamans|r, |cRXP_ENEMY_Bleeding Hollow Peons|r and |cRXP_ENEMY_Bleeding Hollow Necrolytes|r. Loot them for |cRXP_LOOT_Cursed Talisman|r
    .complete 10895,1 --Northern Tower Marked (1)
    .complete 10484,1 --Cursed Talisman (12)
    .mob Zeth'Gor Quest Credit Marker, They Must Burn, Tower North
    .mob Bleeding Hollow Grunt
    .mob Bleeding Hollow Dark Shaman
    .mob Bleeding Hollow Peon
    .mob Bleeding Hollow Necrolyte
step
    .goto 1944,70.96,63.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Ironridge|r
    .turnin 10484 >>Turn in Cursed Talismans
    .accept 10485 >>Accept Warlord of the Bleeding Hollow
    .target Corporal Ironridge
step
    .goto 1944,71.40,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Dabir'ee|r
    .turnin 10895 >>Turn in Zeth'Gor Must Burn!
    .target Wing Commander Dabir'ee
step
    .goto 1944,70.08,77.09
    >>Kill |cRXP_ENEMY_Warlord Morkh|r and loot |cRXP_LOOT_Morkh's Shattered Armor|r
    .complete 10485,1 --Morkh's Shattered Armor (1)
    .mob Warlord Morkh
step
    .goto 1944,70.96,63.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Ironridge|r
    .turnin 10485 >>Turn in Warlord of the Bleeding Hollow
    .accept 10903 >>Accept Return to Honor Hold
    .target Corporal Ironridge
step
    .goto 1944,78.42,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Runetog Wildhammer|r
    .turnin 10340 >>Turn in Shatter Point
    .accept 10344 >>Accept Wing Commander Gryphongar
    .target Runetog Wildhammer
step
    .goto 1944,79.34,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Gryphongar|r
    .turnin 10344 >>Turn in Wing Commander Gryphongar
    .target Wing Commander Gryphongar
step
    .goto 1944,53.09,26.47
    >>Kill |cRXP_ENEMY_Warbringer Arix'Amal|r and loot |cRXP_LOOT_Burning Legion Missive|r. Use it to start the quest
    .collect 29588,1,10395 --Burning Legion Missive (1)
    .accept 10395 >>Accept The Dark Missive
    .use 29588
    .mob Warbringer Arix'Amal
step
    #completewith next
    .hs >>Hearth to Gaston's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1944,54.29,63.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Malgor Devidicus|r
    .accept 10058 >>Accept An Old Gift
    .target Father Malgor Devidicus
step
    .goto 1944,54.32,63.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Klatu|r
    .turnin 10903 >>Turn in Return to Honor Hold
    .accept 10909 >>Accept Fel Spirits
    .accept 10916 >>Accept Digging for Prayer Beads
    .target Assistant Klatu
step
    .goto 1944,56.69,66.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warp-Scryer Kryv|r
    .turnin 10395 >>Turn in The Dark Missive
    .accept 10399 >>Accept The Heart of Darkness
    .accept 10047 >>Accept The Path of Glory
    .target Warp-Scryer Kryv
step
    .goto 1944,56.73,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Chadwick|r
    .accept 9575 >>Accept Weaken the Ramparts
    .target Lieutenant Chadwick
step
    .goto 1944,54.02,63.30
    >>Open the |cRXP_PICK_Fei Fei's Cache|r. Loot it for |cRXP_LOOT_Draenei Prayer Beads|r
    .complete 10916,1 --Draenei Prayer Beads (1)
step
    .goto 1944,54.32,63.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Klatu|r
    .turnin 10916 >>Turn in Digging for Prayer Beads while you are here
    .isQuestComplete 10916
    .target Assistant Klatu
step
    .goto 1944,50.88,60.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Honor Guard Wesilow|r
    .accept 10050 >>Accept Unyielding Souls
    .target Honor Guard Wesilow
step
    .goto 1944,52.02,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Biggums|r
    .accept 9355 >>Accept A Job for an Intelligent Man
    .accept 10079 >>Accept When This Mine's a-Rockin'
    .target Foreman Biggums
step
    #loop
    .goto 1944,54.10,63.42,0
    .goto 1944,54.10,63.42,40,0
    .goto 1944,55.58,61.84,40,0
    >>Kill |cRXP_ENEMY_Gan'arg Sappers|r
    .complete 10079,1 --Gan'arg Sapper slain (12)
    .mob Gan'arg Sapper
step
    #completewith Along43
    >>As you go: Kill |cRXP_ENEMY_Marauding Crust Bursters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9355,1 --Marauding Crust Burster slain (15)
    .mob Marauding Crust Burster
step
    .goto 1944,52.02,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Biggums|r
    .turnin 10079 >>Turn in When This Mine's a-Rockin'
    .accept 10099 >>Accept The Mastermind
    .target Foreman Biggums
step
    .goto 1944,56.21,61.52
    >>Kill |cRXP_ENEMY_Z'kral|r
    .complete 10099,1 --Z'kral slain (1)
    .mob Z'kral
step
    #label Along43
    .goto 1944,52.02,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Biggums|r
    .turnin 10099 >>Turn in The Mastermind
    .target Foreman Biggums
step
    #completewith Drop9373x1
    >>|cRXP_LOOT_Eroded Leather Case|r can drop from |cRXP_ENEMY_Marauding Crust Burster|r, |cRXP_ENEMY_Tunneler|r. Use it to start the quest if you get one
    .collect 23338,1,9373 --Eroded Leather Case (1)
    .accept 9373 >>Accept Missing Missive
    .use 23338
step
    #label Drop9373x1
    #loop
    .goto 1944,47.92,63.19,0
    .goto 1944,47.92,63.19,40,0
    .goto 1944,45.34,67.49,40,0
    .goto 1944,50.01,68.33,40,0
    >>Kill |cRXP_ENEMY_Marauding Crust Bursters|r
    .complete 9355,1 --Marauding Crust Burster slain (15)
    .mob Marauding Crust Burster
step
    .goto 1944,49.24,74.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
    .accept 9349 >>Accept Ravager Egg Roundup
    .target Legassi
step
    .goto 1944,49.15,74.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
    .accept 10161 >>Accept In Case of Emergency...
    .target "Screaming" Screed Luckheed
step
    #loop
    .goto 1944,54.19,80.63,0
    .goto 1944,54.19,80.63,40,0
    .goto 1944,55.28,79.77,40,0
    .goto 1944,54.19,86.32,40,0
    >>Pick up |cRXP_PICK_Mysteries of the Light|r from the ground
    >>Kill |cRXP_ENEMY_Unyielding Footmans|r
    >>Kill |cRXP_ENEMY_Unyielding Sorcerers|r
    >>Kill |cRXP_ENEMY_Unyielding Knights|r
    .complete 10058,1 --Mysteries of the Light (1)
    .complete 10050,1 --Unyielding Footman slain (8)
    .complete 10050,2 --Unyielding Sorcerer slain (10)
    .complete 10050,3 --Unyielding Knight slain (5)
    .mob Unyielding Footman
    .mob Unyielding Sorcerer
    .mob Unyielding Knight
step
    #loop
    .goto 1944,41.92,85.09,0
    .goto 1944,41.92,85.09,40,0
    .goto 1944,39.23,88.37,40,0
    >>Kill |cRXP_ENEMY_Razorfang Ravagers|r. Loot them for |cRXP_LOOT_Ravager Egg|r. It can also be picked up from |cRXP_PICK_Ravager Egg|r on the ground
    .complete 9349,1 --Ravager Egg (12)
    .mob Razorfang Ravager
step
    .goto 1944,54.29,63.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Malgor Devidicus|r
    .turnin 10058 >>Turn in An Old Gift
    .target Father Malgor Devidicus
step
    .goto 1944,50.88,60.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Honor Guard Wesilow|r
    .turnin 10050 >>Turn in Unyielding Souls
    .accept 10057 >>Accept Looking to the Leadership
    .target Honor Guard Wesilow
step
    .goto 1944,52.02,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Biggums|r
    .turnin 9355 >>Turn in A Job for an Intelligent Man
    .target Foreman Biggums
step
    .goto 1944,45.00,74.40
    >>Kill |cRXP_ENEMY_Fel Spirits|r
    .complete 10909,1 --Jules Avenged (10)
    .mob Fel Spirit
step
    #completewith Along55
    >>As you go: Pick up |cRXP_PICK_Zeppelin Debris|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10161,1 --Zeppelin Debris (1)
step
    .goto 1944,49.24,74.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
    .turnin 9349 >>Turn in Ravager Egg Roundup
    .accept 9361 >>Accept Helboar, the Other White Meat
    .target Legassi
step
    .goto 1944,49.24,74.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
    .turnin 9361 >>Turn in Helboar, the Other White Meat while you are here
    .isQuestComplete 9361
    .target Legassi
step
    .goto 1944,56.40,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunny|r
    .accept 9589 >>Accept The Blood is Life
    .target Gunny
    .isQuestTurnedIn 9587 --any of: Dark Tidings
    .xp <59,1
step
    #label Along55
    .goto 1944,49.24,74.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
    .turnin 9361 >>Turn in Helboar, the Other White Meat
    .accept 9356 >>Accept Smooth as Butter
    .target Legassi
step
    .goto 1944,53.67,81.10
    >>Kill |cRXP_ENEMY_Arch Mage Xintor|r
    >>Kill |cRXP_ENEMY_Lieutenant Commander Thalvos|r
    .complete 10057,1 --Arch Mage Xintor slain (1)
    .complete 10057,2 --Lieutenant Commander Thalvos slain (1)
    .mob Arch Mage Xintor
    .mob Lieutenant Commander Thalvos
step
    #loop
    .goto 1944,61.59,66.03,0
    .goto 1944,61.59,66.03,40,0
    .goto 1944,63.64,67.86,40,0
    .goto 1944,65.45,63.50,40,0
    >>Kill |cRXP_ENEMY_Bonestripper Buzzards|r. Loot them for |cRXP_LOOT_Plump Buzzard Wing|r
    >>Pick up |cRXP_PICK_Zeppelin Debris|r from the ground
    .complete 9356,1 --Plump Buzzard Wing (12)
    .complete 10161,1 --Zeppelin Debris (1)
    .mob Bonestripper Buzzard
step << Hunter
    .goto 1944,54.22,63.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sid Limbardi|r
    .vendor >> |cRXP_BUY_Ensure to stock up on more ammo for a long segment ahead|r
    .target Sid Limbardi
    .zoneskip Hellfire Peninsula,1
step
    .goto 1944,54.32,63.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Klatu|r
    .turnin 10909 >>Turn in Fel Spirits
    .turnin 10916 >>Turn in Digging for Prayer Beads
    .accept 10935 >>Accept The Exorcism of Colonel Jules
    .target Assistant Klatu
step
    .goto 1944,53.93,63.64
    >>Speak with Anchorite Barada. Use the prayer beads to help with the ritual, and then speak with Colonel Jules when he is saved. Finally, return to Assistant Klatu.
    .complete 10935,1 --Colonel Jules
    .target Colonel Jules
step
    .goto 1944,54.32,63.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Klatu|r
    .turnin 10935 >>Turn in The Exorcism of Colonel Jules
    .accept 10936 >>Accept Trollbane is Looking for You
    .target Assistant Klatu
step
    .goto 1944,54.22,63.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sid Limbardi|r
    .accept 9558 >>Accept The Longbeards
    .target Sid Limbardi
step
    .goto 1944,56.64,66.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
    .turnin 10936 >>Turn in Trollbane is Looking for You
    .accept 10937 >>Accept Drill the Drillmaster
    .target Force Commander Danath Trollbane
step
    .goto 1944,50.88,60.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Honor Guard Wesilow|r
    .turnin 10057 >>Turn in Looking to the Leadership
    .target Honor Guard Wesilow
step
    .goto 1944,48.07,56.17
    >>Kill |cRXP_ENEMY_Drillmaster Zurok|r
    .complete 10937,1 --Drillmaster Zurok slain (1)
    .mob Drillmaster Zurok
step
    #loop
    .goto 1944,55.35,50.04,0
    .goto 1944,55.35,50.04,40,0
    .goto 1944,57.86,50.05,40,0
    >>Click the |cRXP_PICK_Trampled Skeleton|r
    .complete 10047,1 --Cleanse Trampled Skeleton
step
    .goto 1944,58.49,47.67
    >>Use the Flaming Torch to burn the Horde Blade Throwers overlooking the Path of Glory. Then, bring the Flaming Torch to Dumphry in Honor Hold.
    .complete 10078,1 --Invis Horde Siege Engine - East
    .target Invis Horde Siege Engine - East
step
    .goto 1944,55.69,47.67
    >>Use the Flaming Torch to burn the Horde Blade Throwers overlooking the Path of Glory. Then, bring the Flaming Torch to Dumphry in Honor Hold.
    .complete 10078,2 --Invis Horde Siege Engine - East 02
    .target Invis Horde Siege Engine - East 02
step
    .goto 1944,53.56,48.35
    >>Use the Flaming Torch to burn the Horde Blade Throwers overlooking the Path of Glory. Then, bring the Flaming Torch to Dumphry in Honor Hold.
    .complete 10078,3 --Invis Horde Siege Engine - West
    .target Invis Horde Siege Engine - West
step
    .goto 1944,52.65,47.92
    >>Use the Flaming Torch to burn the Horde Blade Throwers overlooking the Path of Glory. Then, bring the Flaming Torch to Dumphry in Honor Hold.
    .complete 10078,4 --Invis Horde Siege Engine - West 02
    .target Invis Horde Siege Engine - West 02
step
    .goto 1944,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .accept 10236 >>Accept Outland Sucks!
    .target Foreman Razelcraz
step
    #loop
    .goto 1944,48.41,37.94,0
    .goto 1944,48.41,37.94,40,0
    .goto 1944,47.28,42.35,40,0
    >>Loot the |cRXP_PICK_Shredder Parts|r for |cRXP_LOOT_Shredder Spare Parts|r
    .complete 10236,1 --Shredder Spare Parts (6)
step
    .goto 1944,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .turnin 10236 >>Turn in Outland Sucks!
    .accept 10238 >>Accept How to Serve Goblins
    .target Foreman Razelcraz
step
    #loop
    .goto 1944,45.11,41.10,0
    .goto 1944,45.11,41.10,40,0
    .goto 1944,46.43,45.18,40,0
    >>Click the |cRXP_PICK_Manni's Cage|r
    >>Click the |cRXP_PICK_Moh's Cage|r
    >>Click the |cRXP_PICK_Jakk's Cage|r
    .complete 10238,1 --Manni Saved
    .complete 10238,2 --Moh Saved
    .complete 10238,3 --Jakk Saved
step
    .goto 1944,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .turnin 10238 >>Turn in How to Serve Goblins
    .accept 10629 >>Accept Shizz Work
    .target Foreman Razelcraz
step
    #loop
    .goto 1944,49.70,29.80,0
    .goto 1944,49.70,29.80,40,0
    .goto 1944,47.50,29.10,40,0
    >>Open the |cRXP_PICK_Felhound Poo|r. Loot it for |cRXP_LOOT_Shredder Keys|r
    .complete 10629,1 --Shredder Keys (1)
step
    .goto 1944,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .turnin 10629 >>Turn in Shizz Work
    .accept 10630 >>Accept Beneath Thrallmar
    .target Foreman Razelcraz
step
    .goto 1944,54.39,31.57
    >>Kill |cRXP_ENEMY_Urga'zz|r
    .complete 10630,1 --Urga'zz slain (1)
    .mob Urga'zz
step
    .goto 1944,51.37,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Razelcraz|r
    .turnin 10630 >>Turn in Beneath Thrallmar
    .target Foreman Razelcraz
step
    .goto 1944,23.36,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vanura|r
    .accept 9398 >>Accept Deadly Predators
    .target Scout Vanura
step
    .goto 1944,23.00,40.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Obadei|r
    .accept 9390 >>Accept In Search of Sedai
    .target Anchorite Obadei
step
    .goto 1944,23.42,36.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
    .accept 9426 >>Accept The Pools of Aggonar
    .target Amaan the Wise
step
    .goto 1944,26.90,37.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sedai's Corpse|r
    .turnin 9390 >>Turn in In Search of Sedai
    .accept 9423 >>Accept Return to Obadei
    .target Sedai's Corpse
step
    .goto 1944,23.00,40.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Obadei|r
    .turnin 9423 >>Turn in Return to Obadei
    .target Anchorite Obadei
step
    .goto 1944,23.14,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makuru|r
    .accept 9424 >>Accept Makuru's Vengeance
    .target Makuru
step
    #loop
    .goto 1944,34.14,32.02,0
    .goto 1944,34.14,32.02,40,0
    .goto 1944,35.69,28.72,40,0
    >>Kill |cRXP_ENEMY_Mag'har Grunts|r and |cRXP_ENEMY_Debilitated Mag'har Grunts|r. Loot them for |cRXP_LOOT_Mag'har Ancestral Beads|r
    .complete 9424,1 --Mag'har Ancestral Beads (10)
    .mob Mag'har Grunt
    .mob Debilitated Mag'har Grunt
step
    #loop
    .goto 1944,39.35,30.48,0
    .goto 1944,39.35,30.48,40,0
    .goto 1944,41.09,33.99,40,0
    .goto 1944,39.64,36.78,40,0
    >>Kill |cRXP_ENEMY_Terrorfiends|r
    >>Kill |cRXP_ENEMY_Blistering Rots|r
    .complete 10399,1 --Terrorfiend slain (10)
    .complete 9426,2 --Blistering Rot slain (6)
    .complete 9426,1 --Terrorfiend slain (6)
    .mob Terrorfiend
    .mob Blistering Rot
step
    .goto 1944,23.14,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makuru|r
    .turnin 9424 >>Turn in Makuru's Vengeance
    .target Makuru
step
    .goto 1944,23.00,40.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Obadei|r
    .accept 9543 >>Accept Atonement
    .target Anchorite Obadei
step
    .goto 1944,23.42,36.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
    .turnin 9543 >>Turn in Atonement
    .turnin 9426 >>Turn in The Pools of Aggonar
    .accept 9430 >>Accept Sha'naar Relics
    .target Amaan the Wise
step
    #loop
    .goto 1944,31.32,61.74,0
    .goto 1944,31.32,61.74,40,0
    .goto 1944,33.25,65.03,40,0
    .goto 1944,36.31,60.71,40,0
    >>Kill |cRXP_ENEMY_Stonescythe Alphas|r
    >>Kill |cRXP_ENEMY_Stonescythe Whelps|r
    .complete 9398,1 --Stonescythe Alpha slain (4)
    .complete 9398,2 --Stonescythe Whelp slain (8)
    .mob Stonescythe Alpha
    .mob Stonescythe Whelp
step
    .goto 1944,23.89,72.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremni Longbeard|r
    .turnin 9558 >>Turn in The Longbeards
    .accept 9417 >>Accept The Arakkoa Threat
    .accept 9385 >>Accept Rampaging Ravagers
    .target Gremni Longbeard
step
    .goto 1944,23.97,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirren Longbeard|r
    .accept 9563 >>Accept Gaining Mirren's Trust
    .target Mirren Longbeard
step
    #loop
    .goto 1944,22.07,70.50,0
    .goto 1944,22.07,70.50,40,0
    .goto 1944,22.43,66.71,40,0
    >>Kill |cRXP_ENEMY_Quillfang Ravagers|r
    .complete 9385,1 --Quillfang Ravager slain (10)
    .mob Quillfang Ravager
step
    .goto 1944,25.66,76.40
    >>Kill |cRXP_ENEMY_Avruu|r and loot |cRXP_LOOT_Avruu's Orb|r. Use it to start the quest
    .collect 23580,1,9418 --Avruu's Orb (1)
    .accept 9418 >>Accept Avruu's Orb
    .use 23580
    .mob Avruu
step
    .goto 1944,28.94,81.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeranas|r
    .turnin 9418 >>Turn in Avruu's Orb
    .target Aeranas
step
    #loop
    .goto 1944,27.47,79.29,0
    .goto 1944,27.47,79.29,40,0
    .goto 1944,25.66,76.32,40,0
    .goto 1944,26.09,72.03,40,0
    >>Kill |cRXP_ENEMY_Haal'eshi Windwalkers|r
    >>Kill |cRXP_ENEMY_Haal'eshi Talonguards|r
    .complete 9417,1 --Haal'eshi Windwalker slain (4)
    .complete 9417,2 --Haal'eshi Talonguard slain (6)
    .mob Haal'eshi Windwalker
    .mob Haal'eshi Talonguard
step
    .goto 1944,23.89,72.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremni Longbeard|r
    .turnin 9417 >>Turn in The Arakkoa Threat
    .turnin 9385 >>Turn in Rampaging Ravagers
    .target Gremni Longbeard
step
    .goto 1944,23.97,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirren Longbeard|r
    .turnin 9563 >>Turn in Gaining Mirren's Trust
    .target Mirren Longbeard
    .isQuestComplete 9563
step
    .goto 1944,23.97,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirren Longbeard|r
    .accept 9420 >>Accept The Finest Down
    .target Mirren Longbeard
    .isQuestTurnedIn 9563 --any of: Gaining Mirren's Trust
    .xp <60,1
step
    #loop
    .goto 1944,25.72,75.09,0
    .goto 1944,25.72,75.09,40,0
    .goto 1944,27.55,77.86,40,0
    >>Kill |cRXP_ENEMY_Female Kaliri Hatchlings|r, |cRXP_ENEMY_Kaliri Matriarches|r and |cRXP_ENEMY_Kaliri Swoopers|r. Loot them for |cRXP_LOOT_Kaliri Feather|r
    .complete 9420,1 --Kaliri Feather (8)
    .mob Female Kaliri Hatchling
    .mob Kaliri Matriarch
    .mob Kaliri Swooper
    .isOnQuest 9420
step
    .goto 1944,23.97,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirren Longbeard|r
    .turnin 9420 >>Turn in The Finest Down
    .target Mirren Longbeard
    .isOnQuest 9420
step
    .goto 1944,13.13,61.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morod the Windstirrer|r
    .accept 10403 >>Accept Naladu
    .target Morod the Windstirrer
step
    .goto 1944,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .turnin 10403 >>Turn in Naladu
    .accept 10367 >>Accept A Traitor Among Us
    .target Naladu
step
    .goto 1944,14.34,63.50
    >>Open the |cRXP_PICK_Metal Coffer|r. Loot it for |cRXP_LOOT_Sha'naar Key|r
    .complete 10367,1 --Sha'naar Key (1)
step
    .goto 1944,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .turnin 10367 >>Turn in A Traitor Among Us
    .accept 10368 >>Accept The Dreghood Elders
    .target Naladu
step
    .goto 1944,13.13,61.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morod the Windstirrer|r
    .complete 10368,1 --Morod the Windstirrer
    .target Morod the Windstirrer
step
    .goto 1944,13.01,58.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aylaan the Waterwaker|r
    .complete 10368,3 --Aylaan the Waterwaker
    .target Aylaan the Waterwaker
step
    .goto 1944,15.59,58.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akoru the Firecaller|r
    .complete 10368,2 --Akoru the Firecaller
    .target Akoru the Firecaller
step
    .goto 1944,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .turnin 10368 >>Turn in The Dreghood Elders
    .target Naladu
step
    #loop
    .goto 1944,13.63,60.67,0
    .goto 1944,13.63,60.67,40,0
    .goto 1944,15.24,57.58,40,0
    >>Pick up |cRXP_PICK_Sha'naar Relic|r from the ground
    .complete 9430,1 --Sha'naar Relic (10)
step
    .goto 1944,15.70,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
    .turnin 9373 >>Turn in Missing Missive
    .target Thiah Redmane
    .isOnQuest 9373
step
    .goto 1944,16.04,52.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amythiel Mistwalker|r
    .turnin 9724 >>Turn in Warning the Cenarion Circle
    .target Amythiel Mistwalker
    .isOnQuest 9724
step
    .goto 1944,16.04,52.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amythiel Mistwalker|r
    .accept 9732 >>Accept Return to the Marsh
    .target Amythiel Mistwalker
    .isQuestTurnedIn 9724 --any of: Warning the Cenarion Circle
    .xp <60,1
step << Mage
    .isOnQuest 9732,9957,9697,9790,9787,9776,9793
    .zoneskip Shattrath City
    .train 33690,3
step
    .goto 1944,23.42,36.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
    .turnin 9430 >>Turn in Sha'naar Relics
    .accept 9545 >>Accept The Seer's Relic
    .target Amaan the Wise
step
    .goto 1944,23.36,37.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vanura|r
    .turnin 9398 >>Turn in Deadly Predators
    .target Scout Vanura
step
    .goto 1944,25.19,37.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuma|r
    .fp Temple of Telhamat >> Get the Temple of Telhamat flight path
    .fly Honor Hold >> Fly to Honor Hold
    .target Kuma
    .zoneskip Hellfire Peninsula,1
step
    #completewith next
    .hs >>Hearth to Gaston's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1944,56.69,66.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warp-Scryer Kryv|r
    .turnin 10047 >>Turn in The Path of Glory
    .turnin 10399 >>Turn in The Heart of Darkness
    .accept 10093 >>Accept The Temple of Telhamat
    .target Warp-Scryer Kryv
step
    .goto 1944,56.64,66.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
    .turnin 10937 >>Turn in Drill the Drillmaster
    .target Force Commander Danath Trollbane
step
    .goto 1944,56.40,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunny|r
    .turnin 9575 >>Turn in Weaken the Ramparts
    .target Gunny
    .isQuestComplete 9575
step
    .goto 1944,56.40,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunny|r
    .accept 9607 >>Accept Heart of Rage
    .target Gunny
    .isQuestTurnedIn 9575 --any of: Weaken the Ramparts
    .xp <59,1
step
    .goto 1944,45.89,51.93
    >>Fully Investigate The Blood Furnace
    .complete 9607,1 --Fully Investigate The Blood Furnace
    .isOnQuest 9607
step
    .goto 1944,56.64,66.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
    .turnin 9607 >>Turn in Heart of Rage
    .target Force Commander Danath Trollbane
    .isOnQuest 9607
step
    .goto 1944,56.40,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunny|r
    .turnin 9589 >>Turn in The Blood is Life
    .target Gunny
    .isQuestComplete 9589
step
    .goto 1944,51.12,60.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumphry|r
    .turnin 10078 >>Turn in Laying Waste to the Unwanted
    .target Dumphry
step
    .goto 1944,49.24,74.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legassi|r
    .turnin 9356 >>Turn in Smooth as Butter
    .target Legassi
step
    .goto 1944,49.15,74.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
    .turnin 10161 >>Turn in In Case of Emergency...
    .accept 9351 >>Accept Voidwalkers Gone Wild
    .target "Screaming" Screed Luckheed
step
    #loop
    .goto 1944,50.24,83.16,0
    .goto 1944,50.24,83.16,40,0
    .goto 1944,46.54,83.81,40,0
    .goto 1944,45.33,83.72,40,0
    >>Kill |cRXP_ENEMY_Rogue Voidwalkers|r and |cRXP_ENEMY_Uncontrolled Voidwalkers|r. Loot them for |cRXP_LOOT_Condensed Voidwalker Essence|r
    .complete 9351,1 --Condensed Voidwalker Essence (10)
    .mob Rogue Voidwalker
    .mob Uncontrolled Voidwalker
step
    .goto 1944,49.15,74.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Screaming" Screed Luckheed|r
    .turnin 9351 >>Turn in Voidwalkers Gone Wild
    .target "Screaming" Screed Luckheed
step
    .goto 1944,26.90,37.43
    >>Interact with |cRXP_FRIENDLY_Sedai's Corpse|r
    .complete 9545,1 --Sedai's Corpse
    .target Sedai's Corpse
step
    .goto 1944,23.42,36.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
    .turnin 10093 >>Turn in The Temple of Telhamat
    .turnin 9545 >>Turn in The Seer's Relic
    .target Amaan the Wise
step
    +|cRXP_WARN_That is all of Hellfire Peninsula for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Zangarmarsh|r: Return to the Marsh
    >>|cRXP_FRIENDLY_Blasted Lands and back here|r: Gaining Mirren's Trust
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Weaken the Ramparts
step
    +|cRXP_WARN_The rest of Hellfire Peninsula is planned from level 63.|r Load its guide for level 63 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 58 - 68 Hellfire Peninsula
#subweight -58
#name 63-64 Hellfire Peninsula: around Thiah Redmane
--RouteBuilder:next
#next Zone Routes (Alliance)\62-64 Terokkar Forest: around Jenai Starwhisper;Zone Routes (Alliance)\62-63 Zangarmarsh: around Ysiel Windsinger

step
    .goto 1944,26.88,59.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Bazil Olof'tazun|r
    .target Innkeeper Bazil Olof'tazun
    .home >>Set your Hearthstone to Innkeeper Bazil Olof'tazun's inn
step
    .goto 1944,56.64,66.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
    .accept 10400 >>Accept Overlord
    .target Force Commander Danath Trollbane
    .isQuestTurnedIn 10395 --any of: The Dark Missive
step
    .goto 1944,56.40,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunny|r
    .turnin 9575 >>Turn in Weaken the Ramparts
    .target Gunny
    .isQuestComplete 9575
step
    .goto 1944,23.09,40.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikan|r
    .accept 9399 >>Accept Cruel Taskmasters
    .accept 9490 >>Accept The Rock Flayer Matriarch
    .target Ikan
step
    .goto 1944,43.82,31.55
    >>Kill |cRXP_ENEMY_Arazzius the Cruel|r
    .complete 10400,1 --Arazzius the Cruel slain (1)
    .mob Arazzius the Cruel
    .isOnQuest 10400
step
    .goto 1944,23.42,36.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
    .accept 10443 >>Accept Helping the Cenarion Post
    .target Amaan the Wise
step
    .goto 1944,23.42,36.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
    .accept 9427 >>Accept Cleansing the Waters
    .target Amaan the Wise
    .isQuestTurnedIn 9426 --any of: The Pools of Aggonar
step
    .goto 1944,40.22,31.09
    >>Kill |cRXP_ENEMY_Aggonis|r
    .complete 9427,1 --Aggonar's Presence Cleansed (1)
    .mob Aggonis
    .isOnQuest 9427
step
    .goto 1944,33.37,65.08
    >>Kill |cRXP_ENEMY_Blacktalon the Savage|r and loot |cRXP_LOOT_Blacktalon's Claws|r
    .complete 9490,1 --Blacktalon's Claws (1)
    .mob Blacktalon the Savage
step
    .goto 1944,23.97,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirren Longbeard|r
    .turnin 9563 >>Turn in Gaining Mirren's Trust
    .target Mirren Longbeard
    .isQuestComplete 9563
step
    .goto 1944,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .accept 10369 >>Accept Arzeth's Demise
    .target Naladu
    .isQuestTurnedIn 10368 --any of: The Dreghood Elders
step
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Illidari Taskmasters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9399,1 --Illidari Taskmaster slain (4)
    .mob Illidari Taskmaster
step
    #label Along11
    .goto 1944,14.32,62.18
    >>Kill |cRXP_ENEMY_Arzeth the Merciless|r
    .complete 10369,1 --Arzeth the Merciless slain (1)
    .mob Arzeth the Merciless
    .isOnQuest 10369
step
    .goto 1944,16.27,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naladu|r
    .turnin 10369 >>Turn in Arzeth's Demise
    .target Naladu
    .isOnQuest 10369
step
    #loop
    .goto 1944,13.20,57.97,0
    .goto 1944,13.20,57.97,40,0
    .goto 1944,15.29,56.06,40,0
    >>Kill |cRXP_ENEMY_Illidari Taskmasters|r
    .complete 9399,1 --Illidari Taskmaster slain (4)
    .mob Illidari Taskmaster
step
    .goto 1944,16.04,52.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amythiel Mistwalker|r
    .accept 9912 >>Accept The Cenarion Expedition
    .target Amythiel Mistwalker
step
    .goto 1944,15.94,52.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahuram Stouthoof|r
    .accept 10159 >>Accept Keep Thornfang Hill Clear!
    .target Mahuram Stouthoof
step
    .goto 1944,15.70,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
    .turnin 10443 >>Turn in Helping the Cenarion Post
    .accept 9372 >>Accept Demonic Contamination
    .target Thiah Redmane
step
    #completewith Along17
    >>As you go: Kill |cRXP_ENEMY_Hulking Helboars|r and |cRXP_ENEMY_Dreadtusks|r. Loot them for |cRXP_LOOT_Helboar Blood Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9372,1 --Helboar Blood Sample (6)
    .mob Hulking Helboar
    .mob Dreadtusk
step
    #label Along17
    .goto 1944,15.62,52.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
    .accept 10132 >>Accept Colossal Menace
    .target Tola'thion
step
    #completewith Drop10134x1
    >>|cRXP_LOOT_Crimson Crystal Shard|r can drop from |cRXP_ENEMY_Raging Colossus|r. Use it to start the quest if you get one
    .collect 29476,1,10134 --Crimson Crystal Shard (1)
    .accept 10134 >>Accept Crimson Crystal Clue
    .use 29476
step
    #label Drop10134x1
    #loop
    .goto 1944,18.45,44.70,0
    .goto 1944,18.45,44.70,40,0
    .goto 1944,19.16,42.22,40,0
    >>Kill |cRXP_ENEMY_Raging Colossus|r
    .complete 10132,1 --Raging Colossus slain (8)
    .mob Raging Colossus
step
    .goto 1944,23.42,36.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaan the Wise|r
    .turnin 9427 >>Turn in Cleansing the Waters
    .target Amaan the Wise
    .isOnQuest 9427
step
    .goto 1944,23.21,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsaana|r
    .accept 9383 >>Accept An Ambitious Plan
    .target Elsaana
step
    .goto 1944,23.21,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsaana|r
    .turnin 9383 >>Turn in An Ambitious Plan
    .target Elsaana
    .isQuestComplete 9383
step
    .goto 1944,23.09,40.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikan|r
    .turnin 9399 >>Turn in Cruel Taskmasters
    .turnin 9490 >>Turn in The Rock Flayer Matriarch
    .target Ikan
step
    .goto 1944,56.64,66.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Force Commander Danath Trollbane|r
    .turnin 10400 >>Turn in Overlord
    .target Force Commander Danath Trollbane
    .isOnQuest 10400
step
    #loop
    .goto 1944,23.98,52.22,0
    .goto 1944,23.98,52.22,40,0
    .goto 1944,21.19,55.99,40,0
    .goto 1944,17.39,53.31,40,0
    >>Kill |cRXP_ENEMY_Hulking Helboars|r and |cRXP_ENEMY_Dreadtusks|r. Loot them for |cRXP_LOOT_Helboar Blood Sample|r
    .complete 9372,1 --Helboar Blood Sample (6)
    .mob Hulking Helboar
    .mob Dreadtusk
step
    .goto 1944,15.70,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
    .turnin 9372 >>Turn in Demonic Contamination
    .accept 10255 >>Accept Testing the Antidote
    .target Thiah Redmane
step
    .goto 1944,15.62,52.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
    .turnin 10132 >>Turn in Colossal Menace
    .target Tola'thion
step
    .goto 1944,15.62,52.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
    .turnin 10134 >>Turn in Crimson Crystal Clue
    .target Tola'thion
    .isOnQuest 10134
step
    .goto 1944,15.62,52.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tola'thion|r
    .accept 10349 >>Accept The Earthbinder
    .target Tola'thion
    .isQuestTurnedIn 10134 --any of: Crimson Crystal Clue
    .xp <61,1
step
    .goto 1944,15.96,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Galandria Nightbreeze|r
    .turnin 10349 >>Turn in The Earthbinder
    .target Earthbinder Galandria Nightbreeze
    .isOnQuest 10349
step
    .goto 1944,15.96,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Galandria Nightbreeze|r
    .accept 10351 >>Accept Natural Remedies
    .target Earthbinder Galandria Nightbreeze
    .isQuestTurnedIn 10349 --any of: The Earthbinder
    .xp <61,1
step
    #loop
    .goto 1944,16.99,52.16,0
    .goto 1944,16.99,52.16,40,0
    .goto 1944,18.11,52.10,40,0
    .goto 1944,18.66,56.61,40,0
    .goto 1944,19.96,54.71,40,0
    .goto 1944,21.74,55.02,40,0
    .goto 1944,23.11,53.18,40,0
    .goto 1944,24.61,51.82,40,0
    >>Interact with |cRXP_FRIENDLY_Hulking Helboar|r
    .complete 10255,1 --Hulking Helboar
    .target Hulking Helboar
step
    .goto 1944,13.64,39.12
    >>Kill |cRXP_ENEMY_Goliathon|r
    .complete 10351,1 --Fallen Sky Ridge Revitalized (1)
    .mob Goliathon
    .isOnQuest 10351
step
    .goto 1944,15.96,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Galandria Nightbreeze|r
    .turnin 10351 >>Turn in Natural Remedies
    .target Earthbinder Galandria Nightbreeze
    .isOnQuest 10351
step
    .goto 1944,15.70,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thiah Redmane|r
    .turnin 10255 >>Turn in Testing the Antidote
    .target Thiah Redmane
step
    #loop
    .goto 1944,12.67,47.23,0
    .goto 1944,12.67,47.23,40,0
    .goto 1944,9.01,49.61,40,0
    .goto 1944,6.21,50.08,40,0
    >>Kill |cRXP_ENEMY_Thornfang Ravagers|r
    >>Kill |cRXP_ENEMY_Thornfang Venomspitters|r
    .complete 10159,1 --Thornfang Ravager slain (8)
    .complete 10159,2 --Thornfang Venomspitter slain (8)
    .mob Thornfang Ravager
    .mob Thornfang Venomspitter
step
    .goto 1944,15.94,52.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahuram Stouthoof|r
    .turnin 10159 >>Turn in Keep Thornfang Hill Clear!
    .target Mahuram Stouthoof
step
    +|cRXP_WARN_That is all of Hellfire Peninsula for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Zangarmarsh|r: The Cenarion Expedition
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: An Ambitious Plan
step
    +|cRXP_WARN_Suggested next zones at level 63|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.8 levels of quests, starting around Jenai Starwhisper), |cRXP_FRIENDLY_Zangarmarsh|r (about 0.6 levels of quests, starting around Ysiel Windsinger; 2 quests from here hand in there). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Hellfire Peninsula is planned from level 67.|r Load its guide for level 67 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 58 - 68 Hellfire Peninsula
#subweight -58
#name 67-68 Hellfire Peninsula
--RouteBuilder:next
#next Zone Routes (Alliance)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Alliance)\65-66 Nagrand: around Huntress Bintook

step
    .goto 1944,79.34,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Gryphongar|r
    .accept 10163 >>Accept Mission: The Abyssal Shelf
    .target Wing Commander Gryphongar
    .isQuestTurnedIn 10146 --any of: Mission: The Murketh and Shaadraz Gateways
step
    #loop
    .goto 1944,73.93,15.15,0
    .goto 1944,73.93,15.15,40,0
    .goto 1944,73.39,11.50,40,0
    >>Kill |cRXP_ENEMY_Gan'arg Peons|r
    .complete 10163,1 --Gan'arg Peon slain (20)
    .mob Gan'arg Peon
    .isOnQuest 10163
step
    #loop
    .goto 1944,74.02,10.50,0
    .goto 1944,74.02,10.50,40,0
    .goto 1944,71.70,10.56,40,0
    .goto 1944,71.18,22.67,40,0
    .goto 1944,73.27,24.20,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mo'arg Overseer|r
    .complete 10163,2 --Mo'arg Overseer (5)
    .target Mo'arg Overseer
    .isOnQuest 10163
step
    #loop
    .goto 1944,74.24,15.11,0
    .goto 1944,74.24,15.11,40,0
    .goto 1944,71.49,17.41,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel Cannon|r
    .complete 10163,3 --Fel Cannon Destroyed (5)
    .target Fel Cannon
    .isOnQuest 10163
step
    .goto 1944,79.34,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Gryphongar|r
    .turnin 10163 >>Turn in Mission: The Abyssal Shelf
    .target Wing Commander Gryphongar
    .isOnQuest 10163
step
    .goto 1944,79.34,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Gryphongar|r
    .accept 10382 >>Accept Go to the Front
    .target Wing Commander Gryphongar
    .isQuestTurnedIn 10163 --any of: Mission: The Abyssal Shelf
step
    .goto 1944,68.29,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
    .turnin 10382 >>Turn in Go to the Front
    .target Field Marshal Brock
    .isOnQuest 10382
step
    .goto 1944,68.29,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
    .accept 10394 >>Accept Disruption - Forge Camp: Mageddon
    .target Field Marshal Brock
    .isQuestTurnedIn 10382 --any of: Go to the Front
step
    .goto 1944,64.35,30.93
    >>Kill |cRXP_ENEMY_Razorsaw|r
    .complete 10394,2 --Razorsaw slain (1)
    .mob Razorsaw
    .isOnQuest 10394
step
    #loop
    .goto 1944,63.39,32.37,0
    .goto 1944,63.39,32.37,40,0
    .goto 1944,65.68,31.67,40,0
    >>Kill |cRXP_ENEMY_Gan'arg Servants|r
    .complete 10394,1 --Gan'arg Servant slain (10)
    .mob Gan'arg Servant
    .isOnQuest 10394
step
    .goto 1944,68.29,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
    .turnin 10394 >>Turn in Disruption - Forge Camp: Mageddon
    .target Field Marshal Brock
    .isOnQuest 10394
step
    .goto 1944,68.29,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
    .accept 10396 >>Accept Enemy of my Enemy...
    .target Field Marshal Brock
    .isQuestTurnedIn 10394 --any of: Disruption - Forge Camp: Mageddon
step
    #loop
    .goto 1944,66.60,32.00,0
    .goto 1944,66.60,32.00,40,0
    .goto 1944,64.53,33.18,40,0
    >>Kill |cRXP_ENEMY_Fel Cannon MKIs|r
    .complete 10396,1 --Fel Cannon MKI slain (3)
    .mob Fel Cannon MKI
    .isOnQuest 10396
step
    .goto 1944,68.29,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
    .turnin 10396 >>Turn in Enemy of my Enemy...
    .target Field Marshal Brock
    .isOnQuest 10396
step
    .goto 1944,68.29,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
    .accept 10397 >>Accept Invasion Point: Annihilator
    .target Field Marshal Brock
    .isQuestTurnedIn 10396 --any of: Enemy of my Enemy...
step
    .goto 1944,53.09,26.47
    >>Kill |cRXP_ENEMY_Warbringer Arix'Amal|r
    .complete 10397,1 --Warbringer Arix'Amal slain (1)
    .mob Warbringer Arix'Amal
    .isOnQuest 10397
step
    .goto 1944,53.09,26.47
    >>Kill |cRXP_ENEMY_Warbringer Arix'Amal|r and loot |cRXP_LOOT_Burning Legion Gate Key|r
    .complete 10397,3 --Burning Legion Gate Key (1)
    .mob Warbringer Arix'Amal
    .isOnQuest 10397
step
    .goto 1944,53.04,27.72
    >>Click the |cRXP_PICK_Forge Camp: Portal Glyph|r
    .complete 10397,2 --Close Burning Legion Gate
    .isOnQuest 10397
step
    .goto 1944,68.29,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Marshal Brock|r
    .turnin 10397 >>Turn in Invasion Point: Annihilator
    .target Field Marshal Brock
    .isOnQuest 10397
step
    .goto 1944,56.40,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunny|r
    .turnin 9575 >>Turn in Weaken the Ramparts
    .target Gunny
    .isQuestComplete 9575
step
    .goto 1944,23.97,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirren Longbeard|r
    .turnin 9563 >>Turn in Gaining Mirren's Trust
    .target Mirren Longbeard
    .isQuestComplete 9563
step
    .goto 1944,23.21,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsaana|r
    .turnin 9383 >>Turn in An Ambitious Plan
    .target Elsaana
    .isQuestComplete 9383
step
    +|cRXP_WARN_End of the Hellfire Peninsula route.|r
step
    +|cRXP_WARN_Suggested next zones at level 67|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.3 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Nagrand|r (about 0.6 levels of quests, starting around Huntress Bintook). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
