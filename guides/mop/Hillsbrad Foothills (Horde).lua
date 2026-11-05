-- 20-25 Hillsbrad Foothills: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 2 guides, listed under "20 - 27 Hillsbrad Foothills" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Hillsbrad Foothills.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 20 - 27 Hillsbrad Foothills
#subweight -20
#name 20-22 Hillsbrad Foothills: around High Executor Darthalia
#next Zone Routes (Horde)\22-27 Hillsbrad Foothills: around Serge Hinott

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 28089 >>Turn in Warchief's Command: Hillsbrad Foothills!
    .target High Executor Darthalia
    .isOnQuest 28089
step
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 27746 >>Turn in Empire of Dirt
    .target High Executor Darthalia
    .isOnQuest 27746
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .accept 28096 >>Accept Welcome to the Machine
    .target High Executor Darthalia
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,30.05,63.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumass|r
    .complete 28096,1 --Dumass
    .target Dumass
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,30.04,63.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johnny Awesome|r
    .complete 28096,3 --Johnny Awesome
    .target Johnny Awesome
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,30.14,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .complete 28096,2 --Kingslayer Orkus
    .target Kingslayer Orkus
step
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 28096 >>Turn in Welcome to the Machine << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 28111 >>Accept Trouble at Azurelode
    .target High Executor Darthalia
step
    .goto 25,29.21,64.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Underhill|r
    .accept 28115 >>Accept Past Their Prime
    .accept 28114 >>Accept Glorious Harvest
    .target Apothecary Underhill
step
    #loop
    .goto 25,29.57,67.67,0
    .goto 25,29.57,67.67,40,0
    .goto 25,31.44,69.94,40,0
    >>Kill |cRXP_ENEMY_Infested Bears|r
    >>Kill |cRXP_ENEMY_Creeper Eggs|r. Loot them for |cRXP_LOOT_Creeper Egg|r
    .complete 28115,1 --Infested Bear slain (8)
    .complete 28114,1 --Creeper Egg (60)
    .mob Infested Bear
    .mob Creeper Egg
step
    .goto 25,33.30,73.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keyton|r
    .turnin 28111 >>Turn in Trouble at Azurelode
    .accept 28144 >>Accept Thieving Little Monsters! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 28138 >>Accept Human Infestation << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Captain Keyton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along10
    >>As you go: Kill |cRXP_ENEMY_Hillsbrad Miners|r, |cRXP_ENEMY_Hillsbrad Sentries|r, |cRXP_ENEMY_Hillsbrad Foremans|r and |cRXP_ENEMY_Captured Hillsbrad Humans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28138,1 --Hillsbrad Miner (8)
    .mob Hillsbrad Miner
    .mob Hillsbrad Sentry
    .mob Hillsbrad Foreman
    .mob Captured Hillsbrad Human
step
    #label Along10
    .goto 25,33.28,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spider-Handler Sarus|r
    .turnin 28114 >>Turn in Glorious Harvest
    .turnin 28115 >>Turn in Past Their Prime
    .accept 28146 >>Accept Coastal Delicacies! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Spider-Handler Sarus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 25,31.56,75.99,0
    .goto 25,31.56,75.99,40,0
    .goto 25,32.92,81.21,40,0
    >>Kill |cRXP_ENEMY_Torn Fin Muckdwellers|r, |cRXP_ENEMY_Torn Fin Coastrunners|r and |cRXP_ENEMY_Muckgills|r
    >>Pick up |cRXP_PICK_Forsaken Camp "Supplies"|r from the ground
    .complete 28146,1 --Torn Fin Muckdweller (8)
    .complete 28144,1 --Forsaken Camp "Supplies" (1)
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Muckgill
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,32.13,76.10
    >>Kill |cRXP_ENEMY_Muckgill|r and loot |cRXP_LOOT_Muckgill's Flipper|r. Use it to start the quest
    .collect 63090,1,28154 --Muckgill's Flipper (1)
    .accept 28154 >>Accept Muckgill's Flipper or Something...
    .use 63090
    .mob Muckgill
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,33.30,73.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keyton|r
    .turnin 28144 >>Turn in Thieving Little Monsters! while you are here
    .isQuestComplete 28144
    .target Captain Keyton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,33.30,73.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keyton|r
    .turnin 28154 >>Turn in Muckgill's Flipper or Something... while you are here
    .isQuestComplete 28154
    .target Captain Keyton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along15
    >>As you go: Kill |cRXP_ENEMY_Hillsbrad Miners|r, |cRXP_ENEMY_Hillsbrad Sentries|r, |cRXP_ENEMY_Hillsbrad Foremans|r and |cRXP_ENEMY_Captured Hillsbrad Humans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28138,1 --Hillsbrad Miner (8)
    .mob Hillsbrad Miner
    .mob Hillsbrad Sentry
    .mob Hillsbrad Foreman
    .mob Captured Hillsbrad Human
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,33.28,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spider-Handler Sarus|r
    .turnin 28146 >>Turn in Coastal Delicacies!
    .target Spider-Handler Sarus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,33.30,73.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keyton|r
    .turnin 28154 >>Turn in Muckgill's Flipper or Something...
    .turnin 28144 >>Turn in Thieving Little Monsters!
    .target Captain Keyton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along15
    .goto 25,36.63,70.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumass|r
    .accept 28156 >>Accept Deep Mine Rescue
    .target Dumass
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 25,35.73,69.94,0
    .goto 25,35.73,69.94,40,0
    .goto 25,33.64,72.64,40,0
    >>Kill |cRXP_ENEMY_Hillsbrad Miners|r, |cRXP_ENEMY_Hillsbrad Sentries|r, |cRXP_ENEMY_Hillsbrad Foremans|r and |cRXP_ENEMY_Captured Hillsbrad Humans|r
    .complete 28138,1 --Hillsbrad Miner (8)
    .mob Hillsbrad Miner
    .mob Hillsbrad Sentry
    .mob Hillsbrad Foreman
    .mob Captured Hillsbrad Human
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,33.27,73.41
    >>Escort Dumass to Safety!
    .complete 28156,1 --Escort Dumass to Safety!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,33.30,73.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keyton|r
    .turnin 28156 >>Turn in Deep Mine Rescue
    .turnin 28138 >>Turn in Human Infestation
    .target Captain Keyton
step
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .accept 28168 >>Accept Trouble at the Sludge Fields
    .target High Executor Darthalia
step
    .goto 25,33.53,49.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brazie the Botanist|r
    .accept 28733 >>Accept Basic Botany
    .target Brazie the Botanist
step
    .goto 25,33.53,49.35
    >>Survive a Massive Wave of Zombies.
    .complete 28733,1 --PvG Tutorial Complete (1)
step
    .goto 25,33.53,49.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brazie the Botanist|r
    .turnin 28733 >>Turn in Basic Botany
    .accept 28617 >>Accept Flower Power
    .target Brazie the Botanist
step
    .goto 25,33.53,49.35
    >>Survive a Massive Wave of Zombies.
    .complete 28617,1 --PvG Level 2 - Flower Power Complete (1)
step
    .goto 25,33.53,49.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brazie the Botanist|r
    .turnin 28617 >>Turn in Flower Power
    .accept 28744 >>Accept Ghouls Hate My Grains
    .target Brazie the Botanist
step
    .goto 25,33.53,49.35
    >>Survive 2 Massive Waves of Zombies.
    .complete 28744,1 --PvG Level 3 - Ghouls Hate My Grains Massive Complete (1)
step
    .goto 25,33.53,49.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brazie the Botanist|r
    .turnin 28744 >>Turn in Ghouls Hate My Grains
    .accept 28747 >>Accept Someone Setup the Pumpkin Bomb
    .target Brazie the Botanist
step
    .goto 25,33.53,49.35
    >>Survive 2 Massive Waves of Zombies.
    .complete 28747,1 --PvG Level 4 - Someone Setup the Pumpkin Bomb Massive Complete (1)
step
    .goto 25,33.53,49.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brazie the Botanist|r
    .turnin 28747 >>Turn in Someone Setup the Pumpkin Bomb
    .accept 28748 >>Accept Lawn of the Dead
    .target Brazie the Botanist
step
    .goto 25,33.53,49.35
    >>Defeat Warden Stillwater.
    .complete 28748,1 --PvG Level Boss Complete (1)
step
    .goto 25,33.53,49.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brazie the Botanist|r
    .turnin 28748 >>Turn in Lawn of the Dead
    .target Brazie the Botanist
step
    .goto 25,36.18,61.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Stillwater|r
    .turnin 28168 >>Turn in Trouble at the Sludge Fields
    .accept 28192 >>Accept No One Here Gets Out Alive << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Warden Stillwater
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.30,61.15
    >>Assess the situation at the Sludge Fields
    .complete 28192,1 --Assess the situation at the Sludge Fields
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.18,61.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Stillwater|r
    .turnin 28192 >>Turn in No One Here Gets Out Alive
    .accept 28197 >>Accept Discretion is Key
    .target Warden Stillwater
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.34,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flesh-Shaper Arnauld|r
    .accept 28199 >>Accept For Science!
    .target Flesh-Shaper Arnauld
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along38
    >>As you go: Kill |cRXP_ENEMY_Risen Hillsbrad Farmers|r and |cRXP_ENEMY_Risen Hillsbrad Peasants|r. Loot them for |cRXP_LOOT_Flesh Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28199,1 --Flesh Sample (6)
    .mob Risen Hillsbrad Farmer
    .mob Risen Hillsbrad Peasant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along36
    >>As you go: Kill |cRXP_ENEMY_Citizen Wilkes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28197,1 --Citizen Wilkes slain (1)
    .mob Citizen Wilkes
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,39.72,63.04
    >>Click the |cRXP_PICK_Shovel|r
    .accept 28189 >>Accept Do the Right Thing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along40
    >>As you go: Kill |cRXP_ENEMY_Clerk Horrace Whitesteed|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28197,2 --Clerk Horrace Whitesteed slain (1)
    .mob Clerk Horrace Whitesteed
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along36
    .goto 25,39.25,64.25
    >>Interact with |cRXP_FRIENDLY_Human Seedlings|r
    .complete 28189,1 --Human Seedling (15)
    .target Human Seedling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,39.18,63.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28189 >>Turn in Do the Right Thing while you are here
    .isQuestComplete 28189
    .target ?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,38.99,64.75
    >>Kill |cRXP_ENEMY_Citizen Wilkes|r
    .complete 28197,1 --Citizen Wilkes slain (1)
    .mob Citizen Wilkes
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along38
    .goto 25,39.18,63.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28189 >>Turn in Do the Right Thing
    .target ?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 25,40.46,61.92,0
    .goto 25,40.46,61.92,40,0
    .goto 25,37.47,64.35,40,0
    >>Kill |cRXP_ENEMY_Risen Hillsbrad Farmers|r and |cRXP_ENEMY_Risen Hillsbrad Peasants|r. Loot them for |cRXP_LOOT_Flesh Sample|r
    .complete 28199,1 --Flesh Sample (6)
    .mob Risen Hillsbrad Farmer
    .mob Risen Hillsbrad Peasant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along40
    .goto 25,38.16,63.21
    >>Kill |cRXP_ENEMY_Clerk Horrace Whitesteed|r and loot |cRXP_LOOT_The Battle for Hillsbrad|r. Use it to start the quest
    .collect 63250,1,28196 --The Battle for Hillsbrad (1)
    .accept 28196 >>Accept The Battle for Hillsbrad
    .use 63250
    .mob Clerk Horrace Whitesteed
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,38.16,63.21
    >>Kill |cRXP_ENEMY_Clerk Horrace Whitesteed|r
    .complete 28197,2 --Clerk Horrace Whitesteed slain (1)
    .mob Clerk Horrace Whitesteed
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.34,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flesh-Shaper Arnauld|r
    .turnin 28199 >>Turn in For Science!
    .target Flesh-Shaper Arnauld
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.18,61.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Stillwater|r
    .turnin 28197 >>Turn in Discretion is Key
    .turnin 28196 >>Turn in The Battle for Hillsbrad
    .accept 28206 >>Accept A Lost Lad
    .target Warden Stillwater
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.64,61.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johnny Awesome|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28206 >>Turn in A Lost Lad
    .unitscan Johnny Awesome
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,40.35,59.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Lydon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28209 >>Accept Freedom for Lydon
    .unitscan Master Apothecary Lydon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,39.05,59.66
    >>Kill |cRXP_ENEMY_Infected Sludge Guard|r and loot |cRXP_LOOT_Lydon's Cage Key|r
    .complete 28209,1 --Lydon's Cage Key (1)
    .mob Infected Sludge Guard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,40.35,59.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Lydon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28209 >>Turn in Freedom for Lydon
    .accept 28230 >>Accept Protocol
    .unitscan Master Apothecary Lydon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.64,61.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johnny Awesome|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28231 >>Accept Do it for Twinkles
    .unitscan Johnny Awesome
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,38.88,57.41
    >>Kill |cRXP_ENEMY_Blacksmith Verringtan|r
    >>Kill |cRXP_ENEMY_The Ray-Getz-Kalaba Monstrosity|r
    .complete 28231,1 --Blacksmith Verringtan slain (1)
    .complete 28230,1 --The Ray-Getz-Kalaba Monstrosity slain (1)
    .mob Blacksmith Verringtan
    .mob The Ray-Getz-Kalaba Monstrosity
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,40.22,59.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johnny Awesome|r
    .turnin 28231 >>Turn in Do it for Twinkles
    .target Johnny Awesome
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,40.23,59.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Lydon|r
    .turnin 28230 >>Turn in Protocol
    .accept 28235 >>Accept Burnside Must Fall
    .target Master Apothecary Lydon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.54,58.04
    >>Kill |cRXP_ENEMY_Magistrate Burnside|r
    .complete 28235,1 --Magistrate Burnside slain (1)
    .mob Magistrate Burnside
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,40.23,59.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Lydon|r
    .turnin 28235 >>Turn in Burnside Must Fall
    .accept 28237 >>Accept A Blight Upon the Land
    .target Master Apothecary Lydon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,36.42,61.17
    >>Kill |cRXP_ENEMY_Warden Stillwater|r and loot |cRXP_LOOT_Head of Warden Stillwater|r
    .complete 28237,1 --Head of Warden Stillwater (1)
    .mob Warden Stillwater
step
    .goto 25,40.35,59.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Lydon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28237 >>Turn in A Blight Upon the Land << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 28251 >>Accept Trouble at Southshore
    .unitscan Master Apothecary Lydon
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 20 - 27 Hillsbrad Foothills
#subweight -20
#name 22-27 Hillsbrad Foothills: around Serge Hinott
--RouteBuilder:next
#next Zone Routes (Horde)\25-30 Northern Stranglethorn;Zone Routes (Horde)\26-31 Arathi Highlands

step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .accept 28325 >>Accept Green Living
    .accept 28324 >>Accept Studies in Lethality
    .target Serge Hinott
step
    #completewith Along61
    >>As you go: Pick up |cRXP_PICK_Used Blight Canister|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 28325,1 --Used Blight Canister (8)
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .turnin 28251 >>Turn in Trouble at Southshore
    .target Serge Hinott
    .isOnQuest 28251
step
    .goto 25,49.15,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helcular|r
    .accept 28331 >>Accept Helcular's Rod Giveth...
    .accept 28332 >>Accept Helcular's Command
    .target Helcular
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,48.20,72.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angry Blight Slime|r
    .accept 28329 >>Accept Angry Scrubbing Bubbles
    .target Angry Blight Slime
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,48.20,72.23
    >>Kill |cRXP_ENEMY_Angry Blight Slimes|r
    .complete 28329,1 --Angry Blight Slime slain (5)
    .mob Angry Blight Slime
step
    #label Along61
    .goto 25,49.28,71.16
    >>Interact with |cRXP_FRIENDLY_Blight Slime|r
    .complete 28324,1 --Blight Slime
    .target Blight Slime
step
    #loop
    .goto 25,49.62,69.15,0
    .goto 25,49.62,69.15,40,0
    .goto 25,51.68,70.69,40,0
    >>Pick up |cRXP_PICK_Used Blight Canister|r from the ground
    .complete 28325,1 --Used Blight Canister (8)
step
    #completewith Along63
    >>As you go: Kill |cRXP_ENEMY_Bloodfang Forsaken Hunters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28332,1 --Bloodfang Forsaken Hunter (15)
    .mob Bloodfang Forsaken Hunter
step
    #label Along63
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .turnin 28329 >>Turn in Angry Scrubbing Bubbles << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 28324 >>Turn in Studies in Lethality
    .turnin 28325 >>Turn in Green Living
    .accept 28330 >>Accept Trail of Filth
    .target Serge Hinott
step
    #loop
    .goto 25,46.62,67.99,0
    .goto 25,46.62,67.99,40,0
    .goto 25,44.56,68.13,40,0
    >>Kill |cRXP_ENEMY_Bloodfang Forsaken Hunters|r
    .complete 28332,1 --Bloodfang Forsaken Hunter (15)
    .mob Bloodfang Forsaken Hunter
step
    #loop
    .goto 25,45.72,70.04,0
    .goto 25,45.72,70.04,40,0
    .goto 25,45.79,67.01,40,0
    .goto 25,48.32,63.45,40,0
    >>Interact with |cRXP_FRIENDLY_Dark Rangers|r
    .complete 28331,1 --Dark Ranger (8)
    .target Dark Ranger
step
    .goto 25,47.86,72.23
    >>Kill |cRXP_ENEMY_Chet the Slime-Breeder|r
    .complete 28330,1 --Chet the Slime-Breeder slain (1)
    .mob Chet the Slime-Breeder
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .turnin 28330 >>Turn in Trail of Filth
    .target Serge Hinott
step
    .goto 25,49.15,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helcular|r
    .turnin 28331 >>Turn in Helcular's Rod Giveth...
    .turnin 28332 >>Turn in Helcular's Command
    .accept 28344 >>Accept Can You Smell What the Lok'tar is Cooking?
    .target Helcular
step
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .turnin 28344 >>Turn in Can You Smell What the Lok'tar is Cooking?
    .target Kingslayer Orkus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .accept 28345 >>Accept *Gurgle* HELP! *Gurgle*
    .target Kingslayer Orkus
    .isQuestTurnedIn 28096 --any of: Welcome to the Machine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,49.99,74.38
    >>Orkus Safely Escorted Out of the Water
    .complete 28345,1 --Orkus Safely Escorted Out of the Water
    .isOnQuest 28345
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .turnin 28345 >>Turn in *Gurgle* HELP! *Gurgle*
    .target Kingslayer Orkus
    .isOnQuest 28345
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .accept 28348 >>Accept Stormpike Rendezvous
    .target Kingslayer Orkus
    .isQuestTurnedIn 28345 --any of: *Gurgle* HELP! *Gurgle*
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,49.99,74.38
    >>Learn about the Stormpike rendezvous
    .complete 28348,1 --Learn about the Stormpike rendezvous
    .isOnQuest 28348
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .turnin 28348 >>Turn in Stormpike Rendezvous
    .target Kingslayer Orkus
    .isOnQuest 28348
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .accept 28354 >>Accept Kasha Will Fly Again
    .target Kingslayer Orkus
    .isQuestTurnedIn 28348 --any of: Stormpike Rendezvous
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.80,74.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudsnout Gnoll|r
    .accept 28355 >>Accept Terrible Little Creatures
    .target Mudsnout Gnoll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.48,73.78
    >>Kill |cRXP_ENEMY_Mudsnout Shamans|r and |cRXP_ENEMY_Mudsnout Gnolls|r
    .complete 28355,1 --Mudsnout Shaman (8)
    .mob Mudsnout Shaman
    .mob Mudsnout Gnoll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,58.47,73.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28355 >>Turn in Terrible Little Creatures
    .target ?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,58.06,73.60
    >>Pick up |cRXP_PICK_Mudsnout Blossom|r from the ground
    .complete 28354,1 --Mudsnout Blossom (8)
    .isOnQuest 28354
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .turnin 28354 >>Turn in Kasha Will Fly Again
    .target Kingslayer Orkus
    .isOnQuest 28354
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .accept 28375 >>Accept The Road to Purgation
    .target Kingslayer Orkus
    .isQuestTurnedIn 28354 --any of: Kasha Will Fly Again
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .xp <24,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .xp <24,1
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 110,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 27279 >>Accept The Shattered Hand
    .target Zelanis
step
    .goto 110,53.09,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldrae|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Aldrae
step
    #completewith next
    .zone 25 >>Leave Silvermoon City for Hillsbrad Foothills
    .zoneskip 25
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,29.24,83.89
    >>The Road to Purgation taken
    .complete 28375,1 --The Road to Purgation taken
    .isOnQuest 28375
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,29.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .turnin 28375 >>Turn in The Road to Purgation
    .target Kingslayer Orkus
    .isOnQuest 28375
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,29.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .accept 28397 >>Accept They Will Never Expect This...
    .target Kingslayer Orkus
    .isQuestTurnedIn 28375 --any of: The Road to Purgation
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,28.21,83.73
    >>Kill |cRXP_ENEMY_Bloodfang Sentries|r
    .complete 28397,2 --Bloodfang Sentry (8)
    .mob Bloodfang Sentry
    .isOnQuest 28397
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 25,27.72,84.13,0
    .goto 25,27.72,84.13,40,0
    .goto 25,24.60,87.63,40,0
    >>Kill |cRXP_ENEMY_Stormpike Mountaineers|r and |cRXP_ENEMY_Stormpike Ram Riders|r
    .complete 28397,1 --Stormpike Mountaineer (8)
    .mob Stormpike Mountaineer
    .mob Stormpike Ram Rider
    .isOnQuest 28397
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,29.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .turnin 28397 >>Turn in They Will Never Expect This...
    .target Kingslayer Orkus
    .isOnQuest 28397
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,27.35,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .accept 28400 >>Accept Heroes of the Horde!
    .target Kingslayer Orkus
    .isQuestTurnedIn 28397 --any of: They Will Never Expect This...
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,27.20,86.37
    >>Kill |cRXP_ENEMY_Stormpike Battle Master|r and loot |cRXP_LOOT_Alliance Battle Plans|r
    .complete 28400,1 --Alliance Battle Plans (1)
    .mob Stormpike Battle Master
    .isOnQuest 28400
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 28571 >>Turn in Warchief's Command: Hillsbrad Foothills!
    .target High Executor Darthalia
step
    .goto 25,50.00,57.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hartman|r
    .target Sergeant Hartman
    .home >>Set your Hearthstone to Sergeant Hartman's inn
step
    .goto 25,56.74,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Duskingdawn|r
    .accept 28495 >>Accept A Fighting Chance
    .target Advisor Duskingdawn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.47,46.87
    >>Become Heroes of the Horde
    .complete 28400,2 --Become Heroes of the Horde
    .isOnQuest 28400
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 28400 >>Turn in Heroes of the Horde! while you are here
    .isQuestComplete 28400
    .target High Warlord Cromush
step
    .goto 25,57.68,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
    .accept 28620 >>Accept Eastpoint Tower
    .target Krusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 28400 >>Turn in Heroes of the Horde!
    .target High Warlord Cromush
    .isOnQuest 28400
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .accept 28587 >>Accept Aid of the Frostwolf
    .target High Warlord Cromush
    .isQuestTurnedIn 28400 --any of: Heroes of the Horde!
step
    .goto 25,56.99,45.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .accept 28484 >>Accept The Heart of the Matter
    .target Keeper Bel'varil
step
    .goto 25,57.16,45.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .accept 28487 >>Accept Humbert's Personal Problems
    .target Deathguard Humbert
step
    .goto 25,57.19,45.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Samsa|r
    .accept 28485 >>Accept Yetimus the Yeti Lord
    .target Deathguard Samsa
step
    .goto 25,57.70,45.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derak Nightfall|r
    .accept 28489 >>Accept Stagwiches
    .target Derak Nightfall
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,58.70,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voggah Deathgrip|r
    .turnin 28587 >>Turn in Aid of the Frostwolf
    .target Voggah Deathgrip
    .isOnQuest 28587
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,58.70,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voggah Deathgrip|r
    .accept 28600 >>Accept Matters of Loyalty
    .target Voggah Deathgrip
    .isQuestTurnedIn 28587 --any of: Aid of the Frostwolf
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,58.44,34.34
    >>Learn of Matters of Loyalty
    .complete 28600,1 --Learn of Matters of Loyalty
    .isOnQuest 28600
step
    #completewith next
    .hs >>Hearth to Sergeant Hartman's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    #completewith Along120
    >>As you go: Kill |cRXP_ENEMY_Cave Yetis|r and |cRXP_ENEMY_Ferocious Yetis|r. Loot them for |cRXP_LOOT_Beating Yeti Heart|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28484,1 --Beating Yeti Heart (12)
    .mob Cave Yeti
    .mob Ferocious Yeti
step
    #loop
    .goto 25,48.15,56.18,0
    .goto 25,48.15,56.18,40,0
    .goto 25,50.42,53.25,40,0
    >>Kill |cRXP_ENEMY_Hill Stag|r and loot |cRXP_LOOT_Juicy Stag Meat|r
    .complete 28489,1 --Juicy Stag Meat (1)
    .mob Hill Stag
step
    #label Along120
    #loop
    .goto 25,49.68,54.56,0
    .goto 25,49.68,54.56,40,0
    .goto 25,48.11,55.41,40,0
    >>Interact with |cRXP_FRIENDLY_Hill Fawns|r
    .complete 28495,1 --Hill Fawn (10)
    .target Hill Fawn
step
    #loop
    .goto 25,46.59,54.30,0
    .goto 25,46.59,54.30,40,0
    .goto 25,45.01,52.26,40,0
    >>Kill |cRXP_ENEMY_Cave Yetis|r and |cRXP_ENEMY_Ferocious Yetis|r. Loot them for |cRXP_LOOT_Beating Yeti Heart|r
    >>Pick up |cRXP_PICK_Humbert's Pants|r from the ground
    >>Pick up |cRXP_PICK_Humbert's Helm|r from the ground
    >>Pick up |cRXP_PICK_Humbert's Sword|r from the ground
    .complete 28484,1 --Beating Yeti Heart (12)
    .complete 28487,3 --Humbert's Pants (1)
    .complete 28487,2 --Humbert's Helm (1)
    .complete 28487,1 --Humbert's Sword (1)
    .mob Cave Yeti
    .mob Ferocious Yeti
step
    .goto 25,56.74,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Duskingdawn|r
    .turnin 28495 >>Turn in A Fighting Chance
    .target Advisor Duskingdawn
step
    .goto 25,56.99,45.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .turnin 28484 >>Turn in The Heart of the Matter while you are here
    .isQuestComplete 28484
    .target Keeper Bel'varil
step
    .goto 25,57.16,45.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .turnin 28487 >>Turn in Humbert's Personal Problems while you are here
    .isQuestComplete 28487
    .target Deathguard Humbert
step
    .goto 25,57.70,45.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derak Nightfall|r
    .turnin 28489 >>Turn in Stagwiches while you are here
    .isQuestComplete 28489
    .target Derak Nightfall
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 28600 >>Turn in Matters of Loyalty
    .target High Warlord Cromush
    .isOnQuest 28600
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .accept 28506 >>Accept March of the Stormpike
    .target High Warlord Cromush
    .isQuestTurnedIn 28600 --any of: Matters of Loyalty
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.03,46.26
    >>See the March of the Stormpike
    .complete 28506,1 --See the March of the Stormpike
    .isOnQuest 28506
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 28506 >>Turn in March of the Stormpike
    .target High Warlord Cromush
    .isOnQuest 28506
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .accept 28556 >>Accept Breaking the Hand
    .target High Warlord Cromush
    .isQuestTurnedIn 28506 --any of: March of the Stormpike
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.27,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melisara|r
    .accept 28538 >>Accept Cry of the Banshee
    .target Melisara
    .isQuestTurnedIn 28506 --any of: March of the Stormpike
step
    .goto 25,56.99,45.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .turnin 28484 >>Turn in The Heart of the Matter
    .target Keeper Bel'varil
step
    .goto 25,57.16,45.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .turnin 28487 >>Turn in Humbert's Personal Problems
    .target Deathguard Humbert
step
    .goto 25,57.70,45.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derak Nightfall|r
    .turnin 28489 >>Turn in Stagwiches
    .target Derak Nightfall
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 25,55.55,40.03,0
    .goto 25,55.55,40.03,40,0
    .goto 25,54.83,35.93,40,0
    >>Kill |cRXP_ENEMY_SI:7 Operatives|r and |cRXP_ENEMY_SI:7 Assassins|r
    .complete 28538,1 --SI:7 Operative (8)
    .mob SI:7 Operative
    .mob SI:7 Assassin
    .isOnQuest 28538
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,55.54,38.43
    >>Plant a Goblin Pocket-Nuke at Sofera's Naze, Corrahn's Dagger, the Headland and Gavin's Naze.
    .complete 28556,1 --Sofera's Naze Credit
    .target Sofera's Naze Credit
    .isOnQuest 28556
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.27,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melisara|r
    .turnin 28538 >>Turn in Cry of the Banshee
    .target Melisara
    .isOnQuest 28538
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.27,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melisara|r
    .accept 28566 >>Accept Decimation
    .target Melisara
    .isQuestTurnedIn 28538 --any of: Cry of the Banshee
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 25,49.62,46.61,0
    .goto 25,49.62,46.61,40,0
    .goto 25,49.53,48.44,40,0
    >>Kill |cRXP_ENEMY_Stormpike Soldiers|r
    .complete 28566,2 --Stormpike Soldier slain (12)
    .mob Stormpike Soldier
    .isOnQuest 28566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,49.40,46.73
    >>Kill |cRXP_ENEMY_Captain Iceheart|r
    .complete 28566,1 --Captain Iceheart slain (1)
    .mob Captain Iceheart
    .isOnQuest 28566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,49.37,46.50
    >>Plant a Goblin Pocket-Nuke at Sofera's Naze, Corrahn's Dagger, the Headland and Gavin's Naze.
    .complete 28556,2 --Corrahn's Dagger Credit
    .target Corrahn's Dagger Credit
    .isOnQuest 28556
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.27,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melisara|r
    .turnin 28566 >>Turn in Decimation
    .target Melisara
    .isOnQuest 28566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.27,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melisara|r
    .accept 28603 >>Accept Infiltration
    .target Melisara
    .isQuestTurnedIn 28566 --any of: Decimation
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.20,40.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilith|r
    .accept 28604 >>Accept Deception and Trickery
    .target Lilith
    .isQuestTurnedIn 28566 --any of: Decimation
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,44.51,49.07
    >>Kill |cRXP_ENEMY_Instructor Rufus|r
    .complete 28603,1 --Instructor Rufus slain (1)
    .mob Instructor Rufus
    .isOnQuest 28603
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,43.87,51.00
    >>Use the Barrel of Water to Poison 30 Stormpike Trainees.
    .complete 28604,1 --Stormpike Trainee (30)
    .target Stormpike Trainee
    .isOnQuest 28604
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,44.08,50.47
    >>Kill |cRXP_ENEMY_Captain Crudbeard|r
    .complete 28603,3 --Captain Crudbeard slain (1)
    .mob Captain Crudbeard
    .isOnQuest 28603
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,43.43,49.92
    >>Kill |cRXP_ENEMY_Drill Sergeant Magnus|r
    .complete 28603,2 --Drill Sergeant Magnus slain (1)
    .mob Drill Sergeant Magnus
    .isOnQuest 28603
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,43.95,48.93
    >>Plant a Goblin Pocket-Nuke at Sofera's Naze, Corrahn's Dagger, the Headland and Gavin's Naze.
    .complete 28556,3 --The Headland Credit
    .target The Headland Credit
    .isOnQuest 28556
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,50.20,40.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilith|r
    .turnin 28604 >>Turn in Deception and Trickery
    .target Lilith
    .isOnQuest 28604
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.27,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melisara|r
    .turnin 28603 >>Turn in Infiltration
    .target Melisara
    .isOnQuest 28603
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.27,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melisara|r
    .accept 28605 >>Accept Domination
    .target Melisara
    .isQuestTurnedIn 28603 --Infiltration
    .isQuestTurnedIn 28604 --Deception and Trickery
step
    .goto 25,47.26,50.06
    >>Kill |cRXP_ENEMY_Yetimus the Yeti Lord|r and loot |cRXP_LOOT_Yetimus' Twisted Horn|r
    .complete 28485,1 --Yetimus' Twisted Horn (1)
    .mob Yetimus the Yeti Lord
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,39.48,48.93
    >>Plant a Goblin Pocket-Nuke at Sofera's Naze, Corrahn's Dagger, the Headland and Gavin's Naze.
    .complete 28556,4 --Gavin's Naze Credit
    .target Gavin's Naze Credit
    .isOnQuest 28556
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,40.27,47.76
    >>Kill |cRXP_ENEMY_Stormpike Engineers|r
    .complete 28605,1 --Stormpike Engineer slain (10)
    .mob Stormpike Engineer
    .isOnQuest 28605
step
    .goto 25,57.19,45.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Samsa|r
    .turnin 28485 >>Turn in Yetimus the Yeti Lord
    .target Deathguard Samsa
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.27,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melisara|r
    .turnin 28605 >>Turn in Domination
    .target Melisara
    .isOnQuest 28605
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 28556 >>Turn in Breaking the Hand
    .target High Warlord Cromush
    .isOnQuest 28556
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .accept 28616 >>Accept Stormpike Apocalypse
    .target High Warlord Cromush
    .isQuestTurnedIn 28556 --Breaking the Hand
    .isQuestTurnedIn 28605 --Domination
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.03,46.26
    >>Witness the Stormpike Apocalypse
    .complete 28616,1 --Witness the Stormpike Apocalypse
    .isOnQuest 28616
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,57.08,46.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 28616 >>Turn in Stormpike Apocalypse
    .target High Warlord Cromush
    .isOnQuest 28616
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,59.88,63.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Jekyll|r
    .accept 28635 >>Accept A Haunting in Hillsbrad
    .accept 28643 >>Accept The Durnholde Challenge: Zephyrus
    .target Captain Jekyll
step
    .goto 25,60.03,63.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nils Beerot|r
    .turnin 28620 >>Turn in Eastpoint Tower
    .accept 28634 >>Accept Extinction << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Nils Beerot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 25,59.58,68.68,0
    .goto 25,59.58,68.68,40,0
    .goto 25,61.56,74.02,40,0
    .goto 25,67.00,69.92,40,0
    >>Kill |cRXP_ENEMY_Rampaging Owlbeasts|r
    .complete 28634,1 --Rampaging Owlbeast slain (12)
    .mob Rampaging Owlbeast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,61.90,84.50
    >>Search Dun Garok for Evidence of a Haunting
    .complete 28635,1 --Search Dun Garok for Evidence of a Haunting
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,61.62,84.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ironhill's Ghost|r
    .turnin 28635 >>Turn in A Haunting in Hillsbrad
    .accept 28636 >>Accept Silence of the Dwarves
    .target Captain Ironhill's Ghost
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 25,61.40,86.01,0
    .goto 25,61.40,86.01,40,0
    .goto 25,63.24,85.79,40,0
    >>Kill |cRXP_ENEMY_Dun Garok Spirits|r
    .complete 28636,1 --Dun Garok Spirit slain (10)
    .mob Dun Garok Spirit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,68.46,59.63
    >>Kill |cRXP_ENEMY_Zephyrus|r
    .complete 28643,1 --Zephyrus slain (1)
    .mob Zephyrus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,60.03,63.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nils Beerot|r
    .turnin 28634 >>Turn in Extinction
    .target Nils Beerot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,59.88,63.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Jekyll|r
    .turnin 28636 >>Turn in Silence of the Dwarves
    .turnin 28643 >>Turn in The Durnholde Challenge: Zephyrus
    .accept 28644 >>Accept The Durnholde Challenge: Teracula
    .target Captain Jekyll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,67.25,59.42
    >>Kill |cRXP_ENEMY_Teracula|r
    .complete 28644,1 --Teracula slain (1)
    .mob Teracula
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,59.88,63.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Jekyll|r
    .turnin 28644 >>Turn in The Durnholde Challenge: Teracula
    .accept 28645 >>Accept The Durnholde Challenge: Bloodvenom
    .target Captain Jekyll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,66.16,60.63
    >>Kill |cRXP_ENEMY_Bloodvenom|r
    .complete 28645,1 --Bloodvenom slain (1)
    .mob Bloodvenom
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,59.88,63.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Jekyll|r
    .turnin 28645 >>Turn in The Durnholde Challenge: Bloodvenom
    .accept 28646 >>Accept The Durnholde Challenge: Infernus
    .target Captain Jekyll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,68.39,62.78
    >>Kill |cRXP_ENEMY_Infernus|r
    .complete 28646,1 --Infernus slain (1)
    .mob Infernus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,59.88,63.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Jekyll|r
    .turnin 28646 >>Turn in The Durnholde Challenge: Infernus
    .accept 28647 >>Accept The Durnholde Challenge: D-1000
    .target Captain Jekyll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,70.31,61.01
    >>Kill |cRXP_ENEMY_D-1000|r
    .complete 28647,1 --D-1000 slain (1)
    .mob D-1000
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 25,59.88,63.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Jekyll|r
    .turnin 28647 >>Turn in The Durnholde Challenge: D-1000
    .target Captain Jekyll
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
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
    +|cRXP_WARN_End of the Hillsbrad Foothills route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Warchief's Command: Arathi Highlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Warchief's Command: Ghostlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 26|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.3 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.1 levels of quests, starting around Galen Trollbane). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
