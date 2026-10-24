-- 20-25 Hillsbrad Foothills: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 20, 24).
-- Split into 2 guides, listed under "20 - 25 Hillsbrad Foothills" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Hillsbrad Foothills.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 25 Hillsbrad Foothills
#subweight -20
#name 20-22 Hillsbrad Foothills: around Helcular

step
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 27746 >>Turn in Empire of Dirt
    .target High Executor Darthalia
    .isOnQuest 27746
step
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .accept 28168 >>Accept Trouble at the Sludge Fields
    .target High Executor Darthalia
    .isQuestTurnedIn 28138 --Human Infestation
    .isQuestTurnedIn 28144 --Thieving Little Monsters!
    .isQuestTurnedIn 28146 --Coastal Delicacies!
    .xp <19,1
step
    .goto 25,29.24,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Darthalia|r
    .accept 28111 >>Accept Trouble at Azurelode
    .target High Executor Darthalia
    .isQuestTurnedIn 28096 --any of: Welcome to the Machine
    .xp <19,1
step
    .goto 25,29.21,64.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Underhill|r
    .accept 28115 >>Accept Past Their Prime
    .accept 28114 >>Accept Glorious Harvest
    .target Apothecary Underhill
    .isQuestTurnedIn 28096 --any of: Welcome to the Machine
    .xp <19,1
step
    #loop
    .goto 25,29.54,67.65,0
    .goto 25,29.54,67.65,40,0
    .goto 25,31.49,69.84,40,0
    >>Kill |cRXP_ENEMY_Infested Bears|r
    .complete 28115,1 --Infested Bear slain (8)
    .mob Infested Bear
    .isOnQuest 28115
step
    #loop
    .goto 25,31.44,69.94,0
    .goto 25,31.44,69.94,40,0
    .goto 25,29.57,67.67,40,0
    >>Kill |cRXP_ENEMY_Creeper Eggs|r. Loot them for |cRXP_LOOT_Creeper Egg|r
    .complete 28114,1 --Creeper Egg (60)
    .mob Creeper Egg
    .isOnQuest 28114
step
    .goto 25,33.28,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spider-Handler Sarus|r
    .turnin 28114 >>Turn in Glorious Harvest
    .target Spider-Handler Sarus
    .isOnQuest 28114
step
    .goto 25,33.28,73.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spider-Handler Sarus|r
    .turnin 28115 >>Turn in Past Their Prime
    .target Spider-Handler Sarus
    .isOnQuest 28115
step
    .goto 25,33.30,73.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keyton|r
    .turnin 28111 >>Turn in Trouble at Azurelode
    .target Captain Keyton
    .isOnQuest 28111
step
    .xp 20 >>Grind to level 20 (Helcular's Command needs it)
step
    .goto 25,49.15,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helcular|r
    .accept 28332 >>Accept Helcular's Command
    .target Helcular
step
    .goto 25,49.15,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helcular|r
    .accept 28331 >>Accept Helcular's Rod Giveth...
    .target Helcular
    .xp <20,1
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .accept 28324 >>Accept Studies in Lethality
    .target Serge Hinott
    .xp <20,1
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .accept 28325 >>Accept Green Living
    .target Serge Hinott
    .xp <20,1
step
    #loop
    .goto 25,48.80,65.24,0
    .goto 25,48.80,65.24,40,0
    .goto 25,49.09,61.16,40,0
    >>Kill |cRXP_ENEMY_Bloodfang Forsaken Hunters|r
    .complete 28332,1 --Bloodfang Forsaken Hunter (15)
    .mob Bloodfang Forsaken Hunter
step
    .goto 25,49.15,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helcular|r
    .turnin 28332 >>Turn in Helcular's Command
    .accept 28331 >>Accept Helcular's Rod Giveth...
    .target Helcular
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .accept 28324 >>Accept Studies in Lethality
    .target Serge Hinott
    .xp <20,1
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .accept 28325 >>Accept Green Living
    .target Serge Hinott
    .xp <20,1
step
    #loop
    .goto 25,48.34,61.82,0
    .goto 25,48.34,61.82,40,0
    .goto 25,51.96,63.61,40,0
    .goto 25,45.79,67.01,40,0
    >>Interact with |cRXP_FRIENDLY_Dark Rangers|r
    .complete 28331,1 --Dark Ranger (8)
    .target Dark Ranger
step
    .goto 25,49.15,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helcular|r
    .turnin 28331 >>Turn in Helcular's Rod Giveth...
    .accept 28344 >>Accept Can You Smell What the Lok'tar is Cooking?
    .target Helcular
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .accept 28330 >>Accept Trail of Filth
    .target Serge Hinott
    .isQuestTurnedIn 28329 --any of: Angry Scrubbing Bubbles
    .xp <20,1
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .accept 28325 >>Accept Green Living
    .accept 28324 >>Accept Studies in Lethality
    .target Serge Hinott
step
    #completewith Along17
    >>As you go: Pick up |cRXP_PICK_Used Blight Canister|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 28325,1 --Used Blight Canister (8)
step
    .goto 25,50.03,74.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kingslayer Orkus|r
    .turnin 28344 >>Turn in Can You Smell What the Lok'tar is Cooking?
    .target Kingslayer Orkus
step
    #label Along17
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
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .turnin 28325 >>Turn in Green Living
    .turnin 28324 >>Turn in Studies in Lethality
    .target Serge Hinott
step
    .goto 25,36.18,61.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Stillwater|r
    .turnin 28168 >>Turn in Trouble at the Sludge Fields
    .target Warden Stillwater
    .isOnQuest 28168
step
    .goto 25,36.11,60.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kenneth Lamb|r
    .target Kenneth Lamb
    .home >>Set your Hearthstone to Kenneth Lamb's inn
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
    .xp 21 >>Grind to level 21 (The Heart of the Matter needs it)
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
    .xp <21,1
step
    .goto 25,57.70,45.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derak Nightfall|r
    .accept 28489 >>Accept Stagwiches
    .target Derak Nightfall
    .xp <21,1
step
    .goto 25,56.74,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Duskingdawn|r
    .accept 28495 >>Accept A Fighting Chance
    .target Advisor Duskingdawn
    .xp <21,1
step
    #loop
    .goto 25,46.59,54.30,0
    .goto 25,46.59,54.30,40,0
    .goto 25,45.08,52.45,40,0
    >>Kill |cRXP_ENEMY_Cave Yetis|r and |cRXP_ENEMY_Ferocious Yetis|r. Loot them for |cRXP_LOOT_Beating Yeti Heart|r
    .complete 28484,1 --Beating Yeti Heart (12)
    .mob Cave Yeti
    .mob Ferocious Yeti
step
    .goto 25,56.99,45.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Bel'varil|r
    .turnin 28484 >>Turn in The Heart of the Matter
    .target Keeper Bel'varil
step
    .goto 25,57.70,45.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derak Nightfall|r
    .accept 28489 >>Accept Stagwiches
    .target Derak Nightfall
step
    .goto 25,57.16,45.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .accept 28487 >>Accept Humbert's Personal Problems
    .target Deathguard Humbert
    .xp <21,1
step
    .goto 25,56.74,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Duskingdawn|r
    .accept 28495 >>Accept A Fighting Chance
    .target Advisor Duskingdawn
    .xp <21,1
step
    #completewith next
    .hs >>Hearth to Kenneth Lamb's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 25,40.35,59.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Apothecary Lydon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28251 >>Accept Trouble at Southshore
    .unitscan Master Apothecary Lydon
    .isQuestTurnedIn 28237 --any of: A Blight Upon the Land
    .xp <20,1
step
    .goto 25,47.86,72.23
    >>Kill |cRXP_ENEMY_Chet the Slime-Breeder|r
    .complete 28330,1 --Chet the Slime-Breeder slain (1)
    .mob Chet the Slime-Breeder
    .isOnQuest 28330
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .turnin 28330 >>Turn in Trail of Filth
    .target Serge Hinott
    .isOnQuest 28330
step
    .goto 25,49.10,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serge Hinott|r
    .turnin 28251 >>Turn in Trouble at Southshore
    .target Serge Hinott
    .isOnQuest 28251
step
    .goto 25,54.06,55.56
    >>Kill |cRXP_ENEMY_Hill Stag|r and loot |cRXP_LOOT_Juicy Stag Meat|r
    .complete 28489,1 --Juicy Stag Meat (1)
    .mob Hill Stag
step
    .goto 25,57.70,45.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derak Nightfall|r
    .turnin 28489 >>Turn in Stagwiches
    .target Derak Nightfall
step
    .goto 25,57.16,45.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .accept 28487 >>Accept Humbert's Personal Problems
    .target Deathguard Humbert
step
    .goto 25,56.74,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Duskingdawn|r
    .accept 28495 >>Accept A Fighting Chance
    .target Advisor Duskingdawn
step
    #loop
    .goto 25,49.68,54.56,0
    .goto 25,49.68,54.56,40,0
    .goto 25,48.11,55.41,40,0
    >>Interact with |cRXP_FRIENDLY_Hill Fawns|r
    .complete 28495,1 --Hill Fawn (10)
    .target Hill Fawn
step
    .goto 25,45.09,51.34
    >>Pick up |cRXP_PICK_Humbert's Pants|r from the ground
    >>Pick up |cRXP_PICK_Humbert's Helm|r from the ground
    >>Pick up |cRXP_PICK_Humbert's Sword|r from the ground
    .complete 28487,3 --Humbert's Pants (1)
    .complete 28487,2 --Humbert's Helm (1)
    .complete 28487,1 --Humbert's Sword (1)
step
    .goto 25,56.74,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Duskingdawn|r
    .turnin 28495 >>Turn in A Fighting Chance
    .target Advisor Duskingdawn
step
    .goto 25,57.16,45.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Humbert|r
    .turnin 28487 >>Turn in Humbert's Personal Problems
    .target Deathguard Humbert
step
    +|cRXP_WARN_The rest of Hillsbrad Foothills is planned from level 24.|r Load its guide for level 24 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 20 - 25 Hillsbrad Foothills
#subweight -20
#name 24-25 Hillsbrad Foothills
--RouteBuilder:next
#next Zone Routes (Alliance)\25-30 Northern Stranglethorn

step
    .goto 25,57.19,45.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Samsa|r
    .accept 28485 >>Accept Yetimus the Yeti Lord
    .target Deathguard Samsa
step
    .goto 25,57.68,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
    .accept 28620 >>Accept Eastpoint Tower
    .target Krusk
step
    .goto 25,47.26,50.06
    >>Kill |cRXP_ENEMY_Yetimus the Yeti Lord|r and loot |cRXP_LOOT_Yetimus' Twisted Horn|r
    .complete 28485,1 --Yetimus' Twisted Horn (1)
    .mob Yetimus the Yeti Lord
step
    .goto 25,57.19,45.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Samsa|r
    .turnin 28485 >>Turn in Yetimus the Yeti Lord
    .target Deathguard Samsa
step
    .goto 25,60.03,63.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nils Beerot|r
    .turnin 28620 >>Turn in Eastpoint Tower
    .target Nils Beerot
step
    +|cRXP_WARN_End of the Hillsbrad Foothills route.|r
step
    +|cRXP_WARN_Suggested next zones at level 24|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.5 levels of quests, starting around Hemet Nesingwary Jr.). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
