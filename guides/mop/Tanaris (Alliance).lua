-- 45-60 Tanaris: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 5 parts (from level 45, 50, 53, 56, 59).
-- Split into 5 guides, listed under "45 - 60 Tanaris" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Tanaris.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 45 - 60 Tanaris
#subweight -45
#name 45-48 Tanaris: around Mazoga
--RouteBuilder:next
#next Zone Routes (Alliance)\46-48 Felwood: around Totem of Ruumbo;Zone Routes (Alliance)\47-49 Searing Gorge: around Jack Rockleg;Zone Routes (Alliance)\45-47 Badlands

step
    .goto 71,42.30,23.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazoga|r
    .accept 25021 >>Accept Blood to Thrive
    .target Mazoga
step
    .goto 71,42.49,24.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gus Rustflutter|r
    .accept 25521 >>Accept I'm With Scorpid
    .target Gus Rustflutter
step
    #completewith Drop351x1
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step
    #label Drop351x1
    #loop
    .goto 71,40.45,24.53,0
    .goto 71,40.45,24.53,40,0
    .goto 71,43.32,27.86,40,0
    .goto 71,45.28,26.48,40,0
    >>Kill |cRXP_ENEMY_Duneclaw Matriarches|r and |cRXP_ENEMY_Duneclaw Lashers|r. Loot them for |cRXP_LOOT_Duneclaw Stinger|r
    .complete 25521,1 --Duneclaw Stinger (6)
    .mob Duneclaw Matriarch
    .mob Duneclaw Lasher
step
    .goto 71,42.49,24.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gus Rustflutter|r
    .turnin 25521 >>Turn in I'm With Scorpid
    .accept 25522 >>Accept Gargantapid
    .target Gus Rustflutter
step
    #completewith Drop351x2
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step
    #label Drop351x2
    #loop
    .goto 71,40.51,29.90,0
    .goto 71,40.51,29.90,40,0
    .goto 71,38.12,27.33,40,0
    >>Kill |cRXP_ENEMY_Sandfury Hideskinners|r, |cRXP_ENEMY_Sandfury Axe Throwers|r and |cRXP_ENEMY_Sandfury Firecallers|r. Loot them for |cRXP_LOOT_Fistful of Blood|r
    .complete 25021,1 --Fistful of Blood (6)
    .mob Sandfury Hideskinner
    .mob Sandfury Axe Thrower
    .mob Sandfury Firecaller
step
    .goto 71,52.26,28.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Driz Plunkbow|r
    .accept 25112 >>Accept Butcherbot
    .target Driz Plunkbow
step
    .goto 71,51.23,29.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .accept 24947 >>Accept Momentum
    .target Megs Dreadshredder
    .isQuestTurnedIn 24910 --any of: Rocket Rescue
    .xp <44,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,51.21,29.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .accept 25048 >>Accept Seaside Salvage
    .accept 25049 >>Accept Puddle Stomping
    .target Kelsey Steelspark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,51.21,29.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 27446 >>Turn in Tanaris is Calling
    .target Kelsey Steelspark
    .isOnQuest 27446
step
    #loop
    .goto 71,48.80,27.41,0
    .goto 71,48.80,27.41,40,0
    .goto 71,47.04,28.60,40,0
    .goto 71,47.88,32.89,40,0
    .goto 71,48.33,38.94,40,0
    >>Interact with |cRXP_FRIENDLY_Glasshide Basilisks|r
    .complete 25112,1 --Glasshide Basilisk (10)
    .target Glasshide Basilisk
step
    .goto 71,52.26,28.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Driz Plunkbow|r
    .turnin 25112 >>Turn in Butcherbot
    .accept 25111 >>Accept Scavengers Scavenged
    .target Driz Plunkbow
step
    #loop
    .goto 71,49.52,36.12,0
    .goto 71,49.52,36.12,40,0
    .goto 71,49.83,43.91,40,0
    .goto 71,48.52,45.93,40,0
    >>Interact with |cRXP_FRIENDLY_Fire Rocs|r
    .complete 25111,1 --Fire Roc (12)
    .target Fire Roc
step
    #completewith Drop351x3
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop351x3
    #loop
    .goto 71,54.36,36.26,0
    .goto 71,54.36,36.26,40,0
    .goto 71,55.09,41.74,40,0
    .goto 71,56.30,42.82,40,0
    >>Kill |cRXP_ENEMY_Tidal Striders|r
    >>Loot the |cRXP_PICK_Steamwheedle Crates|r for |cRXP_LOOT_Steamwheedle Supplies|r
    .complete 25049,1 --Tidal Strider slain (8)
    .complete 25048,1 --Steamwheedle Supplies (7)
    .mob Tidal Strider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,51.21,29.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25049 >>Turn in Puddle Stomping
    .turnin 25048 >>Turn in Seaside Salvage
    .accept 25050 >>Accept Rocket Rescue
    .target Kelsey Steelspark
step
    .goto 71,52.26,28.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Driz Plunkbow|r
    .turnin 25111 >>Turn in Scavengers Scavenged
    .accept 25115 >>Accept Blisterpaw Butchery
    .target Driz Plunkbow
step
    #completewith Drop351x4
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step
    #label Drop351x4
    .goto 71,46.12,23.65
    >>Kill |cRXP_ENEMY_Gargantapid|r and loot |cRXP_LOOT_Gargantapid's Poison Gland|r
    .complete 25522,1 --Gargantapid's Poison Gland (1)
    .mob Gargantapid
step
    .goto 71,42.30,23.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazoga|r
    .turnin 25021 >>Turn in Blood to Thrive
    .accept 25025 >>Accept Sang'thraze the Deflector
    .target Mazoga
step
    .goto 71,42.49,24.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gus Rustflutter|r
    .turnin 25522 >>Turn in Gargantapid
    .target Gus Rustflutter
step
    #loop
    .goto 71,47.42,28.00,0
    .goto 71,47.42,28.00,40,0
    .goto 71,46.09,30.85,40,0
    >>Interact with |cRXP_FRIENDLY_Blisterpaw Hyenas|r
    .complete 25115,1 --Blisterpaw Hyena (10)
    .target Blisterpaw Hyena
step
    .goto 71,52.26,28.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Driz Plunkbow|r
    .turnin 25115 >>Turn in Blisterpaw Butchery
    .accept 25091 >>Accept Sandsorrow Watch
    .target Driz Plunkbow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 71,61.28,26.25,0
    .goto 71,61.28,26.25,40,0
    .goto 71,63.06,26.22,40,0
    >>Kill |cRXP_ENEMY_Southsea Blockaders|r
    .complete 25050,2 --Southsea Blockader slain (40)
    .mob Southsea Blockader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,66.13,23.15
    >>Deliver Liferockets to 5 Steamwheedle Survivors and use bombs to kill 40 Southsea Blockaders.
    .complete 25050,1 --Steamwheedle Survivor (5)
    .target Steamwheedle Survivor
step
    .goto 71,51.21,29.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25050 >>Turn in Rocket Rescue << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25121 >>Accept Momentum
    .target Kelsey Steelspark
step
    #completewith Drop351x5
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step
    #label Drop351x5
    .goto 71,44.87,44.86
    >>Kill |cRXP_ENEMY_Zakkaru|r and loot |cRXP_LOOT_Sealed Sang'thraze|r
    .complete 25025,1 --Sealed Sang'thraze (1)
    .mob Zakkaru
step
    .goto 71,42.46,24.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .turnin 25091 >>Turn in Sandsorrow Watch
    .target Trenton Lighthammer
step
    .goto 71,42.30,23.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazoga|r
    .turnin 25025 >>Turn in Sang'thraze the Deflector
    .accept 25026 >>Accept Darkest Mojo
    .target Mazoga
step
    #completewith Drop351x6
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step
    #label Drop351x6
    #loop
    .goto 71,38.25,23.37,0
    .goto 71,38.25,23.37,40,0
    .goto 71,36.08,24.66,40,0
    >>Kill |cRXP_ENEMY_Sandfury Zombies|r. Loot them for |cRXP_LOOT_Darkest Mojo|r
    .complete 25026,1 --Darkest Mojo (6)
    .mob Sandfury Zombie
step
    .goto 71,42.30,23.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mazoga|r
    .turnin 25026 >>Turn in Darkest Mojo
    .accept 25032 >>Accept Secrets in the Oasis
    .target Mazoga
step
    .goto 71,39.07,34.63
    >>Kill |cRXP_ENEMY_Mazoga|r
    .complete 25032,1 --Mazoga slain (1)
    .mob Mazoga
step
    .goto 71,42.46,24.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .turnin 25032 >>Turn in Secrets in the Oasis
    .target Trenton Lighthammer
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27269 >>Accept The Temple of the Moon << NightElf Priest
    .accept 27274 >>Accept The Chief Surgeon << Gnome Priest
    .target Priestess Alathea
step << NightElf Priest
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 27269 >>Turn in The Temple of the Moon
    .accept 27362 >>Accept Favored of Elune
    .target Tyrande Whisperwind
step << Draenei
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .target Nurguni
    .isOnQuest 9604
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .accept 9605 >>Accept Hippogryph Master Stephanos
    .target Nurguni
    .isQuestTurnedIn 9604 --any of: On the Wings of a Hippogryph
    .xp <5,1
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
    .target Stephanos
    .isOnQuest 9605
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .accept 9606 >>Accept Return to Caregiver Chellan
    .target Stephanos
    .isQuestTurnedIn 9605 --any of: Hippogryph Master Stephanos
    .xp <5,1
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 89,43.91,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r
    .accept 26383 >>Accept Breaking Waves of Change
    .target Sentinel Cordressa Briarbow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28543 >>Accept Hero's Call: Felwood!
    .accept 28503 >>Accept Hero's Call: Thousand Needles!
    .accept 28507 >>Accept Hero's Call: Tanaris!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 27225 >>Accept A Summons from Ander Germaine
    .target Arias'ta Bladesinger
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 27266 >>Accept Wulf Calls
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 27267 >>Accept Make Contact with SI:7
    .target Erion Shadewhisper
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Priestess Alathea
step << NightElf Druid/Worgen Druid
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 27273 >>Accept An Invitation from Moonglade
    .target Mathrengyl Bearwalker
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Turn in The Howling Oak
    .target Genn Greymane
    .isOnQuest 28517
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .accept 26385 >>Accept Breaking Waves of Change
    .target Genn Greymane
    .isQuestTurnedIn 28517 --any of: The Howling Oak
    .xp <8,1
step
    #completewith next
    .zone 71 >>Leave Darnassus for Tanaris
    .zoneskip 71
step
    .goto 71,72.20,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25121 >>Turn in Momentum
    .accept 25054 >>Accept Lootin' Plunder << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25052 >>Accept Dead Man's Chest << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Kelsey Steelspark
step
    #completewith Drop351x7
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop351x7
    #loop
    .goto 71,72.20,47.30,0
    .goto 71,72.20,47.30,40,0
    .goto 71,74.20,45.89,40,0
    >>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Swashbucklers|r and |cRXP_ENEMY_Southsea Freebooter Credit Bunnies|r
    >>Pick up |cRXP_PICK_Pirate Booty|r from the ground
    .complete 25052,1 --Southsea Pirate (15)
    .complete 25054,1 --Pirate Booty (1)
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Swashbuckler
    .mob Southsea Freebooter Credit Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,72.20,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25052 >>Turn in Dead Man's Chest while you are here
    .isQuestComplete 25052
    .target Kelsey Steelspark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,72.20,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25054 >>Turn in Lootin' Plunder while you are here
    .isQuestComplete 25054
    .target Kelsey Steelspark
step
    .goto 71,71.86,45.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .turnin 24947 >>Turn in Momentum
    .target Megs Dreadshredder
    .isOnQuest 24947
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,72.20,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25052 >>Turn in Dead Man's Chest
    .turnin 25054 >>Turn in Lootin' Plunder
    .accept 26887 >>Accept Filling Our Pockets
    .accept 25053 >>Accept To The Ground!
    .accept 26886 >>Accept Going Off-Task
    .target Kelsey Steelspark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,74.63,45.52
    >>Kill |cRXP_ENEMY_Southsea Taskmaster|r
    .complete 26886,1 --Southsea Taskmaster slain (1)
    .mob Southsea Taskmaster
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,72.94,45.99
    >>Use the Burning Rum to set fire to the Northwest Shack, the Northeast Shack, and the Southwest Shack.
    .complete 25053,3 --Lost Rigger Building 03 Bunny
    .target Lost Rigger Building 03 Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,72.20,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 26886 >>Turn in Going Off-Task
    .target Kelsey Steelspark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,71.50,46.71
    >>Use the Burning Rum to set fire to the Northwest Shack, the Northeast Shack, and the Southwest Shack.
    .complete 25053,1 --Lost Rigger Building 01 Bunny
    .target Lost Rigger Building 01 Bunny
step
    #completewith Drop351x8
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop351x8
    #loop
    .goto 71,69.66,53.48,0
    .goto 71,69.66,53.48,40,0
    .goto 71,68.59,55.57,40,0
    >>Kill |cRXP_ENEMY_Southsea Musketeers|r and |cRXP_ENEMY_Southsea Strongarms|r. Loot them for |cRXP_LOOT_Gold Filling|r
    .complete 26887,1 --Gold Filling (20)
    .mob Southsea Musketeer
    .mob Southsea Strongarm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,71.86,47.99
    >>Use the Burning Rum to set fire to the Northwest Shack, the Northeast Shack, and the Southwest Shack.
    .complete 25053,2 --Lost Rigger Building 02 Bunny
    .target Lost Rigger Building 02 Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,72.20,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 26887 >>Turn in Filling Our Pockets
    .turnin 25053 >>Turn in To The Ground!
    .accept 25166 >>Accept Captain Dreadbeard
    .target Kelsey Steelspark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,70.99,55.69
    >>Kill |cRXP_ENEMY_Captain Dreadbeard|r
    .complete 25166,1 --Captain Dreadbeard slain (1)
    .mob Captain Dreadbeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,72.20,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25166 >>Turn in Captain Dreadbeard
    .accept 26889 >>Accept All Cheered Out
    .target Kelsey Steelspark
step
    .goto 71,55.65,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeke Bootscuff|r
    .turnin 26889 >>Turn in All Cheered Out << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 24932 >>Accept Cutting Losses
    .accept 25072 >>Accept A Few Good Goblins
    .target Zeke Bootscuff
step
    #completewith Drop351x9
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step
    #completewith Along66
    >>As you go: Kill |cRXP_ENEMY_Hazzali Cocoons|r and |cRXP_ENEMY_Captured Goblin Bughunters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25072,1 --Hazzali Cocoon (8)
    .mob Hazzali Cocoon
    .mob Captured Goblin Bughunter
step
    #label Drop351x9
    #loop
    .goto 71,55.90,63.95,0
    .goto 71,55.90,63.95,40,0
    .goto 71,56.93,68.39,40,0
    .goto 71,53.02,66.24,40,0
    >>Kill |cRXP_ENEMY_Hazzali Wasps|r, |cRXP_ENEMY_Hazzali Stingers|r, |cRXP_ENEMY_Hazzali Swarmers|r and |cRXP_ENEMY_Hazzali Workers|r
    .complete 24932,1 --Hazzali Wasp (8)
    .mob Hazzali Wasp
    .mob Hazzali Stinger
    .mob Hazzali Swarmer
    .mob Hazzali Worker
step
    .goto 71,55.65,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeke Bootscuff|r
    .turnin 24932 >>Turn in Cutting Losses
    .accept 24933 >>Accept Chicken of the Desert
    .target Zeke Bootscuff
step
    .goto 71,55.23,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narain Soothfancy|r
    .accept 24931 >>Accept Gazer Tag
    .target Narain Soothfancy
step
    #completewith Drop351x10
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step
    #label Drop351x10
    #loop
    .goto 71,56.11,57.45,0
    .goto 71,56.11,57.45,40,0
    .goto 71,51.97,61.33,40,0
    .goto 71,53.42,57.19,40,0
    .goto 71,56.61,52.93,40,0
    >>Kill |cRXP_ENEMY_Glasshide Gazers|r. Loot them for |cRXP_LOOT_Ocular Crystal|r
    >>Kill |cRXP_ENEMY_Rabid Blisterpaw|r and loot |cRXP_LOOT_Hyena Chunk|r
    .complete 24931,1 --Ocular Crystal (5)
    .complete 24933,1 --Hyena Chunk (1)
    .mob Glasshide Gazer
    .mob Rabid Blisterpaw
step
    .goto 71,55.23,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narain Soothfancy|r
    .turnin 24931 >>Turn in Gazer Tag
    .target Narain Soothfancy
step
    .goto 71,55.65,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeke Bootscuff|r
    .turnin 24933 >>Turn in Chicken of the Desert
    .accept 24951 >>Accept A Great Idea
    .target Zeke Bootscuff
step
    .goto 71,55.61,60.63
    >>Use the Bootlegger Bug Bait to capture a Hazzali Swarmer.
    .complete 24951,1 --Wrangled Bug Credit Bunny
    .target Wrangled Bug Credit Bunny
step
    #label Along66
    .goto 71,55.65,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeke Bootscuff|r
    .turnin 24951 >>Turn in A Great Idea
    .accept 24953 >>Accept Just Trying to Kill Some Bugs
    .target Zeke Bootscuff
step
    .goto 71,54.67,72.11
    >>Talk to Narain Soothfancy to pilot the Mind-Controlled Swarmer into the Gaping Chasm hive.
    .complete 24953,1 --Hazzali Hive Credit Bunny
    .target Hazzali Hive Credit Bunny
step
    #loop
    .goto 71,52.46,67.00,0
    .goto 71,52.46,67.00,40,0
    .goto 71,53.45,64.89,40,0
    .goto 71,56.67,63.23,40,0
    >>Kill |cRXP_ENEMY_Hazzali Cocoons|r and |cRXP_ENEMY_Captured Goblin Bughunters|r
    .complete 25072,1 --Hazzali Cocoon (8)
    .mob Hazzali Cocoon
    .mob Captured Goblin Bughunter
step
    .goto 71,55.65,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeke Bootscuff|r
    .turnin 24953 >>Turn in Just Trying to Kill Some Bugs
    .turnin 25072 >>Turn in A Few Good Goblins
    .target Zeke Bootscuff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,55.23,60.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narain Soothfancy|r
    .accept 25061 >>Accept Land's End
    .target Narain Soothfancy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,50.05,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25061 >>Turn in Land's End
    .accept 25060 >>Accept Define "Crazy"
    .accept 25062 >>Accept What We Came For
    .target Kelsey Steelspark
step
    #completewith Drop351x11
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop351x11
    #loop
    .goto 71,52.50,90.31,0
    .goto 71,52.50,90.31,40,0
    .goto 71,51.63,93.20,40,0
    >>Kill |cRXP_ENEMY_Crazed Bilgewater Survivors|r
    >>Open the |cRXP_PICK_Bilgewater Footlocker|r. Loot it for |cRXP_LOOT_Salt-Crusted Journal|r
    .complete 25060,1 --Crazed Bilgewater Survivor slain (10)
    .complete 25062,1 --Salt-Crusted Journal (1)
    .mob Crazed Bilgewater Survivor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,50.05,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25060 >>Turn in Define "Crazy"
    .turnin 25062 >>Turn in What We Came For
    .accept 25063 >>Accept Terrapination
    .target Kelsey Steelspark
step
    #completewith Drop351x12
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop351x12
    #loop
    .goto 71,56.27,90.72,0
    .goto 71,56.27,90.72,40,0
    .goto 71,54.36,93.66,40,0
    >>Kill |cRXP_ENEMY_Surf Glider|r and loot |cRXP_LOOT_Turtle-Digested Key|r
    .complete 25063,1 --Turtle-Digested Key (1)
    .mob Surf Glider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,50.05,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25063 >>Turn in Terrapination
    .accept 25065 >>Accept You Too, Brute?
    .target Kelsey Steelspark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,53.59,89.44
    >>Kill |cRXP_ENEMY_Meatface|r and loot |cRXP_LOOT_Meatface's Locked Chest|r
    .complete 25065,1 --Meatface's Locked Chest (1)
    .mob Meatface
step
    .goto 71,50.05,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 25065 >>Turn in You Too, Brute? << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 28881 >>Accept Prospector Gunstan
    .target Kelsey Steelspark
step
    .goto 71,40.12,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Gunstan|r
    .turnin 28881 >>Turn in Prospector Gunstan
    .target Prospector Gunstan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 47 >>Grind to level 47 (Ancient Obstacles needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,40.12,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Gunstan|r
    .accept 25420 >>Accept Ancient Obstacles
    .accept 25559 >>Accept Laying Claim
    .accept 25565 >>Accept Fragments of Language
    .target Prospector Gunstan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along79
    >>As you go: Kill |cRXP_ENEMY_Sandstone Golems|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25420,1 --Sandstone Golem slain (6)
    .mob Sandstone Golem
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along79
    .goto 71,40.12,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Gunstan|r
    .turnin 25421 >>Turn in The Grand Tablet
    .target Prospector Gunstan
    .isOnQuest 25421
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,40.25,77.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flinn|r
    .accept 26895 >>Accept The Thunderdrome!
    .target Flinn
    .xp <47,1
step
    #completewith Drop351x13
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 71,41.27,72.42,0
    .goto 71,41.27,72.42,40,0
    .goto 71,40.98,70.36,40,0
    >>Kill |cRXP_ENEMY_Reliquary Diggers|r
    >>Pick up |cRXP_PICK_Ancient Hieroglyphs|r from the ground
    .complete 25559,1 --Reliquary Digger slain (8)
    .complete 25565,1 --Ancient Hieroglyphs (5)
    .mob Reliquary Digger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop351x13
    #loop
    .goto 71,37.89,76.50,0
    .goto 71,37.89,76.50,40,0
    .goto 71,36.38,76.50,40,0
    >>Kill |cRXP_ENEMY_Sandstone Golems|r
    .complete 25420,1 --Sandstone Golem slain (6)
    .mob Sandstone Golem
step
    .goto 71,33.27,77.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Examiner Andoren Dawnrise|r
    .accept 25068 >>Accept The Crumbling Past
    .target Examiner Andoren Dawnrise
    .isQuestTurnedIn 25017 --any of: Ancient Obstacles
    .xp <46,1
step
    #completewith Drop351x14
    >>|cRXP_LOOT_OOX-17/TN Distress Beacon|r can drop from |cRXP_ENEMY_Glasshide Basilisk|r, |cRXP_ENEMY_Glasshide Gazer|r, |cRXP_ENEMY_Blisterpaw Hyena|r. Use it to start the quest if you get one
    .collect 8623,1,351 --OOX-17/TN Distress Beacon (1)
    .accept 351 >>Accept Find OOX-17/TN!
    .use 8623
step
    #label Drop351x14
    .goto 71,38.02,81.76
    >>Kill |cRXP_ENEMY_Sandstone Earthens|r. Loot them for |cRXP_LOOT_Earthen Jewel|r
    .complete 25068,1 --Earthen Jewel (5)
    .mob Sandstone Earthen
    .isOnQuest 25068
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,40.12,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Gunstan|r
    .turnin 25565 >>Turn in Fragments of Language
    .turnin 25420 >>Turn in Ancient Obstacles
    .turnin 25559 >>Turn in Laying Claim
    .accept 25566 >>Accept The Secrets of Uldum
    .target Prospector Gunstan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,40.25,77.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flinn|r
    .accept 26895 >>Accept The Thunderdrome!
    .target Flinn
step
    .goto 71,59.79,64.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
    .turnin 351 >>Turn in Find OOX-17/TN!
    .target Homing Robot OOX-17/TN
    .isOnQuest 351
step
    .goto 71,59.79,64.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
    .accept 648 >>Accept Rescue OOX-17/TN!
    .target Homing Robot OOX-17/TN
    .isQuestTurnedIn 351 --any of: Find OOX-17/TN!
    .xp <43,1
step
    .goto 71,60.80,53.68
    >>Escort OOX-17/TN to safety
    .complete 648,1 --Escort OOX-17/TN to safety
    .isOnQuest 648
step
    .goto 71,44.74,52.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grohk|r
    .target Grohk
    .home >>Set your Hearthstone to Grohk's inn
step
    .goto 71,44.59,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Megs Dreadshredder|r
    .accept 25018 >>Accept Andoren Will Know
    .target Megs Dreadshredder
    .isQuestTurnedIn 25014 --any of: Sandscraper's Treasure
    .xp <46,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,51.21,29.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark|r
    .turnin 28507 >>Turn in Hero's Call: Tanaris!
    .target Kelsey Steelspark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,51.79,28.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Dealwell|r
    .turnin 26895 >>Turn in The Thunderdrome!
    .target Dr. Dealwell
step
    .xp 47 >>Grind to level 47 (Thunderdrome: The Ginormus! needs it)
step
    .goto 71,51.79,28.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Dealwell|r
    .accept 25067 >>Accept Thunderdrome: The Ginormus!
    .target Dr. Dealwell
step
    .goto 71,51.68,28.38
    >>Kill |cRXP_ENEMY_The Ginormus|r
    .complete 25067,1 --The Ginormus slain (1)
    .mob The Ginormus
step
    .goto 71,51.63,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katrina Turner|r
    .turnin 25067 >>Turn in Thunderdrome: The Ginormus!
    .target Katrina Turner
step
    .goto 71,51.79,28.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Dealwell|r
    .accept 25094 >>Accept Thunderdrome: Zumonga!
    .target Dr. Dealwell
step
    .goto 71,51.63,28.48
    >>Kill |cRXP_ENEMY_Zumonga|r
    .complete 25094,1 --Zumonga slain (1)
    .mob Zumonga
step
    .goto 71,51.63,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katrina Turner|r
    .turnin 25094 >>Turn in Thunderdrome: Zumonga!
    .target Katrina Turner
step
    .goto 71,51.79,28.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Dealwell|r
    .accept 25095 >>Accept Thunderdrome: Sarinexx!
    .target Dr. Dealwell
step
    .goto 71,51.63,28.48
    >>Kill |cRXP_ENEMY_Sarinexx|r
    .complete 25095,1 --Sarinexx slain (1)
    .mob Sarinexx
step
    .goto 71,51.63,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katrina Turner|r
    .turnin 25095 >>Turn in Thunderdrome: Sarinexx!
    .target Katrina Turner
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Edirah
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 27265 >>Accept Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 27270 >>Accept An Audience with the Farseer
    .target Hobahken
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
    .isOnQuest 14039
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
step
    #completewith next
    .zone 71 >>Leave Darnassus for Tanaris
    .zoneskip 71
step
    .goto 71,33.27,77.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Examiner Andoren Dawnrise|r
    .turnin 25018 >>Turn in Andoren Will Know
    .target Examiner Andoren Dawnrise
    .isOnQuest 25018
step
    .goto 71,33.27,77.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Examiner Andoren Dawnrise|r
    .turnin 25068 >>Turn in The Crumbling Past
    .target Examiner Andoren Dawnrise
    .isOnQuest 25068
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9762 >>Accept The Unwritten Prophecy
    .target Prophet Velen
    .isQuestTurnedIn 9759 --any of: Ending Their World
    .xp <18,1
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9762 >>Turn in The Unwritten Prophecy
    .target Prophet Velen
    .isOnQuest 9762
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9698 >>Turn in Audience with the Prophet
    .target Prophet Velen
    .isOnQuest 9698
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9699 >>Accept Truth or Fiction
    .target Prophet Velen
    .isQuestTurnedIn 9698 --any of: Audience with the Prophet
    .xp <14,1
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >>Turn in Coming of Age
    .target Torallius the Pack Handler
    .isOnQuest 9623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .accept 9625 >>Accept Elekks Are Serious Business
    .target Torallius the Pack Handler
    .isQuestTurnedIn 9623 --any of: Coming of Age
    .xp <10,1
step << NightElf
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .turnin 6341 >>Turn in To Darnassus
    .target Sister Aquinne
    .isOnQuest 6341
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .accept 6342 >>Accept An Unexpected Gift
    .target Sister Aquinne
    .isQuestTurnedIn 6341 --any of: To Darnassus
    .xp <5,1
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .turnin 6342 >>Turn in An Unexpected Gift
    .target Leora
    .isOnQuest 6342
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .accept 6343 >>Accept Return to Nyoma
    .target Leora
    .isQuestTurnedIn 6342 --any of: An Unexpected Gift
    .xp <5,1
step
    +|cRXP_WARN_That is all of Tanaris for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Felwood|r: Hero's Call: Felwood! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Hero's Call: Feralas!, Hero's Call: Thousand Needles! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Southern Barrens|r: Hero's Call: Southern Barrens! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7 << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Rescue OOX-17/TN!
    >>|cRXP_FRIENDLY_Uldum|r: The Secrets of Uldum << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 47|r: |cRXP_FRIENDLY_Felwood|r (about 2.4 levels of quests, starting around Totem of Ruumbo), |cRXP_FRIENDLY_Searing Gorge|r (about 0.8 levels of quests, starting around Jack Rockleg), |cRXP_FRIENDLY_Badlands|r (about 0.7 levels of quests, starting around Dolph Blastus). Completing this step loads the guide for Felwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Tanaris is planned from level 50.|r Load its guide for level 50 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 45 - 60 Tanaris
#subweight -45
#name 50-51 Tanaris
--RouteBuilder:next
#next Zone Routes (Alliance)\50-52 Winterspring: around Donova Snowden;Zone Routes (Alliance)\51-53 Un'Goro Crater: around Garl Stormclaw;Zone Routes (Alliance)\47-49 Searing Gorge: around Jack Rockleg

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,51.79,28.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Dealwell|r
    .accept 25513 >>Accept Thunderdrome: Grudge Match!
    .target Dr. Dealwell
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,51.65,28.45
    >>Kill |cRXP_ENEMY_Megs Dreadshredder|r
    .complete 25513,1 --Megs Dreadshredder slain (1)
    .mob Megs Dreadshredder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 71,51.63,28.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katrina Turner|r
    .turnin 25513 >>Turn in Thunderdrome: Grudge Match!
    .target Katrina Turner
step
    .goto 71,40.25,77.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flinn|r
    .accept 24911 >>Accept Tropical Paradise Beckons
    .target Flinn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28544 >>Accept Hero's Call: Winterspring!
    .accept 28525 >>Accept Hero's Call: Un'Goro Crater!
step
    +|cRXP_WARN_That is all of Tanaris for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Hero's Call: Un'Goro Crater! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Tropical Paradise Beckons
    >>|cRXP_FRIENDLY_Winterspring|r: Hero's Call: Winterspring! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 50|r: |cRXP_FRIENDLY_Winterspring|r (about 2.5 levels of quests, starting around Donova Snowden), |cRXP_FRIENDLY_Un'Goro Crater|r (about 2.0 levels of quests, starting around Garl Stormclaw; 1 quest from here hands in there), |cRXP_FRIENDLY_Searing Gorge|r (about 0.7 levels of quests, starting around Jack Rockleg). Completing this step loads the guide for Winterspring --RouteBuilder:next
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior/Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter/Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue/Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage/Dwarf Paladin/Draenei Paladin/Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest/Dwarf Shaman/Draenei Shaman/Druid
    +|cRXP_WARN_The rest of Tanaris is planned from level 53.|r Load its guide for level 53 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior/Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter/Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue/Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage/Dwarf Paladin/Draenei Paladin/Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest/Dwarf Shaman/Draenei Shaman/Druid
#version 1
#group Zone Routes (Alliance)
#subgroup 45 - 60 Tanaris
#subweight -45
#name 53-54 Tanaris
--RouteBuilder:next
#next Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap;Zone Routes (Alliance)\53-55 Un'Goro Crater: around Garl Stormclaw

step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 28258 >>Accept Meet with Ander Germaine
    .target Arias'ta Bladesinger
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.35,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 28285 >>Accept Meet with High Priestess Laurena
    .target Astarii Starseeker
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 28263 >>Accept Meet with Maginor Dumas
    .target Edirah
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 28260 >>Accept Meet with Wulf Hansreim
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 28262 >>Accept Meet with Lord Tony Romano
    .target Erion Shadewhisper
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 28268 >>Accept Meet with Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 28287 >>Accept Meet with Farseer Umbrua
    .target Hobahken
step << Druid
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Druid
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 28289 >>Accept Moonglade Calls
    .target Mathrengyl Bearwalker
step
    +|cRXP_WARN_That is all of Tanaris for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade Calls << Druid
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Wulf Hansreim << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Lord Tony Romano << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Maginor Dumas << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with High Priestess Laurena << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with Farseer Umbrua << Dwarf Shaman/Draenei Shaman
step
    +|cRXP_WARN_Suggested next zones at level 53|r: |cRXP_FRIENDLY_Winterspring|r (about 1.3 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.9 levels of quests, starting around Trade Baron Silversnap), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.8 levels of quests, starting around Garl Stormclaw). Completing this step loads the guide for Winterspring --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Tanaris is planned from level 56.|r Load its guide for level 56 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 45 - 60 Tanaris
#subweight -45
#name 56-57 Tanaris
--RouteBuilder:next
#next Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\55-56 Silithus;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28528 >>Accept Hero's Call: Silithus!
step
    +|cRXP_WARN_That is all of Tanaris for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Silithus|r: Hero's Call: Silithus! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 56|r: |cRXP_FRIENDLY_Winterspring|r (about 1.2 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.8 levels of quests, starting around Trade Baron Silversnap). Completing this step loads the guide for Winterspring --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Tanaris is planned from level 59.|r Load its guide for level 59 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 45 - 60 Tanaris
#subweight -45
#name 59-60 Tanaris
--RouteBuilder:next
#next Zone Routes (Alliance)\55-56 Silithus;Zone Routes (Alliance)\60-63 Hellfire Peninsula: around Legassi

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28708 >>Accept Hero's Call: Outland!
step
    +|cRXP_WARN_End of the Tanaris route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hellfire Peninsula|r: Hero's Call: Outland! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 59|r: |cRXP_FRIENDLY_Silithus|r (about 0.8 levels of quests, starting around Huum Wildmane), |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.6 levels of quests, starting around Legassi). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
