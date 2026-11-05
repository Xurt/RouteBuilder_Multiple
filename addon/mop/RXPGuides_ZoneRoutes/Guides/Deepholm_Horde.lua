-- 82-83 Deepholm: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Deepholm.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 82-83 Deepholm

step
    #completewith next
    .zone 276 >>Travel to The Maelstrom
    .zoneskip 276
step
    .goto 276,33.35,50.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 27377 >>Turn in Devoured
    .target Thrall
    .isQuestComplete 27377
step
    .goto 276,33.37,50.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 27203 >>Turn in The Maelstrom
    .target Thrall
    .isOnQuest 27203
step
    .goto 276,33.37,50.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 27123 >>Accept Deepholm, Realm of Earth
    .target Thrall
    .isQuestTurnedIn 27203 --any of: The Maelstrom
    .xp <81,1
step
    #completewith next
    .zone 207 >>Leave The Maelstrom for Deepholm
    .zoneskip 207
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 27123 >>Turn in Deepholm, Realm of Earth
    .target Maruut Stonebinder
    .isOnQuest 27123
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .accept 26245 >>Accept Gunship Down
    .target Maruut Stonebinder
step
    .goto 207,49.68,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Kormo|r
    .accept 27136 >>Accept Elemental Energy
    .accept 26244 >>Accept The Earth Claims All
    .target Seer Kormo
step
    .goto 207,47.36,51.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dugsley Deepdelver|r
    .target Dugsley Deepdelver
    .home >>Set your Hearthstone to Dugsley Deepdelver's inn
step
    .goto 207,49.49,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .accept 26409 >>Accept Where's Goldmine?
    .target Earthcaller Yevaa
step
    .goto 207,46.53,57.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 26409 >>Turn in Where's Goldmine?
    .accept 26410 >>Accept Explosive Bonding Compound
    .accept 27135 >>Accept Something that Burns
    .target Initiate Goldmine
step
    .goto 207,54.02,58.77
    >>Kill |cRXP_ENEMY_Magmatooth|r and loot |cRXP_LOOT_The Burning Heart|r
    .complete 27135,1 --The Burning Heart (1)
    .mob Magmatooth
step
    #loop
    .goto 207,45.08,57.95,0
    .goto 207,45.08,57.95,40,0
    .goto 207,43.82,60.60,40,0
    .goto 207,42.85,55.55,40,0
    >>Kill |cRXP_ENEMY_Rockslice Flayers|r and |cRXP_ENEMY_Rockslice Rippers|r. Loot them for |cRXP_LOOT_Quartzite Resin|r
    .complete 26410,1 --Quartzite Resin (5)
    .mob Rockslice Flayer
    .mob Rockslice Ripper
step
    .goto 207,46.53,57.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 26410 >>Turn in Explosive Bonding Compound
    .turnin 27135 >>Turn in Something that Burns
    .accept 26411 >>Accept Apply and Flash Dry
    .target Initiate Goldmine
step
    .goto 207,46.56,57.24
    >>Interact with |cRXP_FRIENDLY_Flint Oremantle|r
    .complete 26411,1 --Flint Oremantle
    .target Flint Oremantle
step
    .goto 207,46.53,57.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Goldmine|r
    .turnin 26411 >>Turn in Apply and Flash Dry
    .accept 26413 >>Accept Take Him to the Earthcaller
    .target Initiate Goldmine
step
    .goto 207,49.46,53.42
    >>Introduce Flint Oremantle to Earthcaller Yevaa at the Temple of Earth.
    .complete 26413,1 --"Take Him to the Earthcaller" Kill Credit
    .target "Take Him to the Earthcaller" Kill Credit
step
    .goto 207,49.49,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 26413 >>Turn in Take Him to the Earthcaller
    .accept 26484 >>Accept To Stonehearth's Aid
    .target Earthcaller Yevaa
step
    #loop
    .goto 207,50.36,61.22,0
    .goto 207,50.36,61.22,40,0
    .goto 207,51.46,64.90,40,0
    >>Kill |cRXP_ENEMY_Energized Geodes|r and |cRXP_ENEMY_Lodestone Elementals|r
    .complete 27136,1 --Energized Geode (8)
    .mob Energized Geode
    .mob Lodestone Elemental
step
    #completewith Along20
    >>As you go: Kill |cRXP_ENEMY_Deepstone Elementals|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26244,1 --Deepstone Elemental slain (5)
    .mob Deepstone Elemental
step
    .goto 207,53.57,73.79
    >>Click the |cRXP_PICK_Captain's Log|r
    .accept 26246 >>Accept Captain's Log
step
    .goto 207,53.53,73.75
    >>Search for clues at the Storm's Fury Wreckage in Deepholm.
    .complete 26245,1 --Captain Skullshatter
    .target Captain Skullshatter
step
    .goto 207,56.07,74.17
    >>Search for clues at the Storm's Fury Wreckage in Deepholm.
    .complete 26245,2 --Slain Cannoneer
    .target Slain Cannoneer
step
    #label Along20
    .goto 207,56.71,76.45
    >>Search for clues at the Storm's Fury Wreckage in Deepholm.
    .complete 26245,3 --Unexploded Artillery Shell
    .target Unexploded Artillery Shell
step
    #loop
    .goto 207,55.49,73.79,0
    .goto 207,55.49,73.79,40,0
    .goto 207,57.42,72.12,40,0
    >>Kill |cRXP_ENEMY_Deepstone Elementals|r
    .complete 26244,1 --Deepstone Elemental slain (5)
    .mob Deepstone Elemental
step
    #completewith next
    .hs >>Hearth to Dugsley Deepdelver's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 207,49.68,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Kormo|r
    .turnin 26244 >>Turn in The Earth Claims All
    .turnin 27136 >>Turn in Elemental Energy
    .target Seer Kormo
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 26245 >>Turn in Gunship Down
    .turnin 26246 >>Turn in Captain's Log
    .accept 26247 >>Accept Diplomacy First
    .target Maruut Stonebinder
step
    #loop
    .goto 207,63.58,53.79,0
    .goto 207,63.58,53.79,40,0
    .goto 207,62.32,52.68,40,0
    .goto 207,62.23,51.41,40,0
    .goto 207,64.47,48.40,40,0
    .goto 207,61.79,46.28,40,0
    .goto 207,63.77,44.48,40,0
    .goto 207,61.22,43.46,40,0
    .goto 207,60.90,40.98,40,0
    .goto 207,60.84,38.98,40,0
    .goto 207,62.62,38.33,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26247 >>Turn in Diplomacy First
    .accept 26248 >>Accept All Our Friends Are Dead
    .accept 26249 >>Accept The Admiral's Cabin
    .unitscan Stormcaller Mylra
step
    #loop
    .goto 207,63.58,53.79,0
    .goto 207,63.58,53.79,40,0
    .goto 207,62.32,52.68,40,0
    .goto 207,62.23,51.41,40,0
    .goto 207,64.47,48.40,40,0
    .goto 207,61.79,46.28,40,0
    .goto 207,63.77,44.48,40,0
    .goto 207,61.22,43.46,40,0
    .goto 207,60.90,40.98,40,0
    .goto 207,60.84,38.98,40,0
    .goto 207,62.62,38.33,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Moody|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26249 >>Turn in The Admiral's Cabin
    .accept 26427 >>Accept Without a Captain or Crew
    .unitscan First Mate Moody
step
    .goto 207,61.79,46.28
    >>Pick up |cRXP_PICK_Spool of Rope|r from the ground
    >>Pick up |cRXP_PICK_Bottle of Whiskey|r from the ground
    >>Kill |cRXP_ENEMY_Slain Crew Members|r and |cRXP_ENEMY_Slain Crew Member's Spirits|r
    .complete 26427,2 --Spool of Rope (1)
    .complete 26427,1 --Bottle of Whiskey (1)
    .complete 26248,1 --Slain Crew Member (6)
    .mob Slain Crew Member
    .mob Slain Crew Member's Spirit
step
    #loop
    .goto 207,63.58,53.79,0
    .goto 207,63.58,53.79,40,0
    .goto 207,62.32,52.68,40,0
    .goto 207,62.23,51.41,40,0
    .goto 207,64.47,48.40,40,0
    .goto 207,61.79,46.28,40,0
    .goto 207,63.77,44.48,40,0
    .goto 207,61.22,43.46,40,0
    .goto 207,60.90,40.98,40,0
    .goto 207,60.84,38.98,40,0
    .goto 207,62.62,38.33,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Moody|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26427 >>Turn in Without a Captain or Crew
    .unitscan First Mate Moody
step
    #loop
    .goto 207,63.58,53.79,0
    .goto 207,63.58,53.79,40,0
    .goto 207,62.32,52.68,40,0
    .goto 207,62.23,51.41,40,0
    .goto 207,64.47,48.40,40,0
    .goto 207,61.79,46.28,40,0
    .goto 207,63.77,44.48,40,0
    .goto 207,61.22,43.46,40,0
    .goto 207,60.90,40.98,40,0
    .goto 207,60.84,38.98,40,0
    .goto 207,62.62,38.33,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26248 >>Turn in All Our Friends Are Dead
    .accept 26251 >>Accept Take No Prisoners
    .accept 26250 >>Accept On Second Thought, Take One Prisoner
    .unitscan Stormcaller Mylra
step
    .goto 207,64.01,45.93
    >>Kill |cRXP_ENEMY_Mor'norokk the Hateful|r
    >>Kill |cRXP_ENEMY_Twilight Saboteurs|r
    .complete 26250,1 --Mor'norokk the Hateful slain (1)
    .complete 26251,1 --Twilight Saboteur slain (6)
    .mob Mor'norokk the Hateful
    .mob Twilight Saboteur
step
    #loop
    .goto 207,62.62,38.33,0
    .goto 207,62.62,38.33,40,0
    .goto 207,60.84,38.98,40,0
    .goto 207,60.90,40.98,40,0
    .goto 207,61.22,43.46,40,0
    .goto 207,63.77,44.48,40,0
    .goto 207,61.79,46.28,40,0
    .goto 207,64.47,48.40,40,0
    .goto 207,62.23,51.41,40,0
    .goto 207,62.32,52.68,40,0
    .goto 207,63.58,53.79,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26250 >>Turn in On Second Thought, Take One Prisoner
    .turnin 26251 >>Turn in Take No Prisoners
    .accept 26254 >>Accept Some Spraining to Do
    .unitscan Stormcaller Mylra
step
    .goto 207,64.01,45.93
    >>Jump on Stormbeak and watch Mor'norokk's interrogation.
    .complete 26254,1 --Mor'norokk the Hateful
    .target Mor'norokk the Hateful
step
    #loop
    .goto 207,62.62,38.33,0
    .goto 207,62.62,38.33,40,0
    .goto 207,60.84,38.98,40,0
    .goto 207,60.90,40.98,40,0
    .goto 207,61.22,43.46,40,0
    .goto 207,63.77,44.48,40,0
    .goto 207,61.79,46.28,40,0
    .goto 207,64.47,48.40,40,0
    .goto 207,62.23,51.41,40,0
    .goto 207,62.32,52.68,40,0
    .goto 207,63.58,53.79,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26254 >>Turn in Some Spraining to Do
    .accept 26255 >>Accept Return to the Temple of Earth
    .unitscan Stormcaller Mylra
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 26255 >>Turn in Return to the Temple of Earth
    .accept 26258 >>Accept Deathwing's Fall
    .target Maruut Stonebinder
step
    .goto 207,49.68,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Kormo|r
    .accept 26259 >>Accept Blood of the Earthwarder
    .target Seer Kormo
step
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Living Blood|r and loot |cRXP_LOOT_Blood of Neltharion|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26259,1 --Blood of Neltharion (1)
    .mob Living Blood
step
    .goto 207,61.30,57.50
    >>Deathwing's Fall reached
    .complete 26258,1 --Deathwing's Fall reached
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 26258 >>Turn in Deathwing's Fall
    .accept 26256 >>Accept Bleed the Bloodshaper
    .target Maruut Stonebinder
step
    .goto 207,61.53,60.64
    >>Kill |cRXP_ENEMY_Twilight Bloodshaper|r and loot |cRXP_LOOT_Twilight Orders|r
    .complete 26256,1 --Twilight Orders (1)
    .mob Twilight Bloodshaper
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 26256 >>Turn in Bleed the Bloodshaper
    .accept 26261 >>Accept Question the Slaves
    .target Maruut Stonebinder
step
    #label Along39
    .goto 207,62.80,59.47
    >>Open the |cRXP_PICK_Slavemaster's Coffer|r. Loot it for |cRXP_LOOT_Twilight Slaver's Key|r
    .collect 60739,1,26261,1 --Twilight Slaver's Key (1)
step
    #loop
    .goto 207,64.79,58.08,0
    .goto 207,64.79,58.08,40,0
    .goto 207,65.84,60.42,40,0
    >>Interact with |cRXP_FRIENDLY_Enslaved Miners|r
    .complete 26261,1 --Enslaved Miner (6)
    .target Enslaved Miner
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 26261 >>Turn in Question the Slaves
    .accept 26260 >>Accept The Forgemaster's Log
    .target Maruut Stonebinder
step
    #loop
    .goto 207,56.66,58.04,0
    .goto 207,56.66,58.04,40,0
    .goto 207,58.98,57.80,40,0
    >>Kill |cRXP_ENEMY_Living Blood|r and loot |cRXP_LOOT_Blood of Neltharion|r
    .complete 26259,1 --Blood of Neltharion (1)
    .mob Living Blood
step
    .goto 207,63.71,55.40
    >>Click the |cRXP_PICK_Forgemaster's Log|r
    .turnin 26260 >>Turn in The Forgemaster's Log
    .accept 27007 >>Accept Silvermarsh Rendezvous
step
    .goto 207,72.30,62.30
    >>Upper Silvermarsh reached
    .complete 27007,1 --Upper Silvermarsh reached
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 27007 >>Turn in Silvermarsh Rendezvous
    .accept 27010 >>Accept Quicksilver Submersion
    .target Maruut Stonebinder
step
    .goto 207,49.68,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Kormo|r
    .turnin 26259 >>Turn in Blood of the Earthwarder while you are here
    .isQuestComplete 26259
    .target Seer Kormo
step
    .goto 207,71.75,64.27
    >>Pick up |cRXP_PICK_Trogg Crate|r from the ground
    .collect 60809,1,27010,1 --Trogg Crate (1)
step
    .goto 207,49.68,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Kormo|r
    .accept 27101 >>Accept Maziel's Revelation
    .target Seer Kormo
    .isQuestTurnedIn 27100 --any of: Twilight Research
    .xp <81,1
step
    .goto 207,74.91,64.81
    >>Obtain a Trogg Crate and use it to submerge yourself and eavesdrop on the Twilight's Hammer camp to the east.
    .complete 27010,1 --Eavesdropping Credit
    .target Eavesdropping Credit
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 27010 >>Turn in Quicksilver Submersion
    .accept 27061 >>Accept The Twilight Overlook
    .target Maruut Stonebinder
step
    .goto 207,67.20,70.18
    >>Click the |cRXP_PICK_Maziel's Journal|r
    .turnin 27101 >>Turn in Maziel's Revelation
    .isOnQuest 27101
step
    .goto 207,67.20,70.18
    >>Click the |cRXP_PICK_Maziel's Journal|r
    .accept 27102 >>Accept Maziel's Ascendancy
    .isQuestTurnedIn 27101 --any of: Maziel's Revelation
    .xp <81,1
step
    .goto 207,72.98,61.48
    >>Kill |cRXP_ENEMY_Maziel|r
    .complete 27102,1 --Maziel slain (1)
    .mob Maziel
    .isOnQuest 27102
step
    .goto 207,49.68,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Kormo|r
    .turnin 27102 >>Turn in Maziel's Ascendancy
    .target Seer Kormo
    .isOnQuest 27102
step
    .goto 207,64.47,82.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r
    .turnin 27061 >>Turn in The Twilight Overlook
    .accept 26768 >>Accept To Catch a Dragon
    .accept 26766 >>Accept Big Game, Big Bait
    .target Stormcaller Mylra
step
    #loop
    .goto 207,59.62,83.17,0
    .goto 207,59.62,83.17,40,0
    .goto 207,57.89,85.42,40,0
    >>Kill |cRXP_ENEMY_Twilight Dragonstalkers|r and |cRXP_ENEMY_Scalesworn Cultists|r. Loot them for |cRXP_LOOT_Twilight Snare|r
    >>Kill |cRXP_ENEMY_Jadecrest Basilisk|r and loot |cRXP_LOOT_Side of Basilisk Meat|r
    .complete 26768,1 --Twilight Snare (1)
    .complete 26766,1 --Side of Basilisk Meat (1)
    .mob Twilight Dragonstalker
    .mob Scalesworn Cultist
    .mob Jadecrest Basilisk
step
    .goto 207,64.47,82.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r
    .turnin 26766 >>Turn in Big Game, Big Bait
    .turnin 26768 >>Turn in To Catch a Dragon
    .accept 26771 >>Accept Testing the Trap
    .target Stormcaller Mylra
step
    .goto 207,50.92,85.28
    >>Kill |cRXP_ENEMY_Stonescale Matriarch|r
    .complete 26771,1 --Stonescale Matriarch slain (1)
    .mob Stonescale Matriarch
step
    .goto 207,64.47,82.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r
    .turnin 26771 >>Turn in Testing the Trap
    .accept 26857 >>Accept Abyssion's Minions
    .target Stormcaller Mylra
step
    .goto 207,64.57,82.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Galekk|r
    .accept 26861 >>Accept Block the Gates
    .target Seer Galekk
step
    #completewith Along61
    >>As you go: Kill |cRXP_ENEMY_Twilight Dragonspawns|r, |cRXP_ENEMY_Twilight Scalesisters|r, |cRXP_ENEMY_Scalesworn Cultists|r and |cRXP_ENEMY_Abyssion's Lair Mob Credits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26857,1 --Twilight Dragonspawn (8)
    .mob Twilight Dragonspawn
    .mob Twilight Scalesister
    .mob Scalesworn Cultist
    .mob Abyssion's Lair Mob Credit
step
    .goto 207,68.66,74.99
    >>Use the Stormstone at the Twilight Gate and Elemental Gate in Abyssion's Lair.
    .complete 26861,1 --Twilight Gate Credit
    .target Twilight Gate Credit
step
    #label Along61
    .goto 207,71.26,74.99
    >>Use the Stormstone at the Twilight Gate and Elemental Gate in Abyssion's Lair.
    .complete 26861,2 --Elemental Gate Credit
    .target Elemental Gate Credit
step
    #loop
    .goto 207,68.69,75.40,0
    .goto 207,68.69,75.40,40,0
    .goto 207,68.54,78.43,40,0
    >>Kill |cRXP_ENEMY_Twilight Dragonspawns|r, |cRXP_ENEMY_Twilight Scalesisters|r, |cRXP_ENEMY_Scalesworn Cultists|r and |cRXP_ENEMY_Abyssion's Lair Mob Credits|r
    .complete 26857,1 --Twilight Dragonspawn (8)
    .mob Twilight Dragonspawn
    .mob Twilight Scalesister
    .mob Scalesworn Cultist
    .mob Abyssion's Lair Mob Credit
step
    .goto 207,64.57,82.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Galekk|r
    .turnin 26861 >>Turn in Block the Gates
    .target Seer Galekk
step
    .goto 207,64.47,82.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormcaller Mylra|r
    .turnin 26857 >>Turn in Abyssion's Minions
    .accept 26876 >>Accept The World Pillar Fragment
    .target Stormcaller Mylra
step
    .goto 207,69.71,76.78
    >>Open the |cRXP_PICK_The First Fragment of the World Pillar|r. Loot it for |cRXP_LOOT_The Upper World Pillar Fragment|r
    .complete 26876,1 --The Upper World Pillar Fragment (1)
step
    #completewith next
    .hs >>Hearth to Dugsley Deepdelver's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 26876 >>Turn in The World Pillar Fragment
    .target Maruut Stonebinder
step
    .goto 207,49.68,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Kormo|r
    .turnin 26259 >>Turn in Blood of the Earthwarder
    .target Seer Kormo
step
    .goto 207,27.92,68.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crag Rockcrusher|r
    .turnin 26484 >>Turn in To Stonehearth's Aid
    .accept 27931 >>Accept The Quaking Fields
    .target Crag Rockcrusher
step
    .goto 207,30.65,77.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slate Quicksand|r
    .turnin 27931 >>Turn in The Quaking Fields
    .accept 27932 >>Accept The Axe of Earthly Sundering
    .accept 27933 >>Accept Elemental Ore
    .target Slate Quicksand
step
    #completewith Along70
    >>As you go: Kill |cRXP_ENEMY_Jade Ragers|r. Loot them for |cRXP_LOOT_Elemental Ore|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27933,1 --Elemental Ore (6)
    .mob Jade Rager
step
    #label Along70
    .goto 207,32.56,83.44
    >>Kill |cRXP_ENEMY_Emerald Colossus|r
    .complete 27932,1 --Emerald Colossus slain (8)
    .mob Emerald Colossus
step
    #loop
    .goto 207,38.47,84.42,0
    .goto 207,38.47,84.42,40,0
    .goto 207,39.14,88.06,40,0
    .goto 207,40.88,85.97,40,0
    >>Kill |cRXP_ENEMY_Jade Ragers|r. Loot them for |cRXP_LOOT_Elemental Ore|r
    .complete 27933,1 --Elemental Ore (6)
    .mob Jade Rager
step
    .goto 207,30.65,77.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slate Quicksand|r
    .turnin 27932 >>Turn in The Axe of Earthly Sundering
    .turnin 27933 >>Turn in Elemental Ore
    .accept 27934 >>Accept One With the Ground
    .target Slate Quicksand
step
    .goto 207,30.65,77.73
    >>Complete the One With the Ground ritual.
    .complete 27934,1 --One With the Ground Kill Credit (1)
step
    .goto 207,47.11,90.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27934 >>Turn in One With the Ground
    .target ?
step
    .goto 207,47.11,90.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27935 >>Accept Bring Down the Avalanche
    .target !
step
    .goto 207,46.94,89.10
    >>Kill |cRXP_ENEMY_Avalanchion|r
    .complete 27935,1 --Avalanchion slain (1)
    .mob Avalanchion
step
    .goto 207,27.92,68.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crag Rockcrusher|r
    .turnin 27935 >>Turn in Bring Down the Avalanche
    .accept 26499 >>Accept Stonefather's Boon
    .target Crag Rockcrusher
step
    .goto 207,28.21,69.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbreaker Dolomite|r
    .accept 26500 >>Accept We're Surrounded
    .target Earthbreaker Dolomite
step
    #completewith Along79
    >>As you go: Kill |cRXP_ENEMY_Stone Trogg Ambushers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26500,1 --Stone Trogg Ambusher slain (12)
    .mob Stone Trogg Ambusher
step
    #label Along79
    #loop
    .goto 207,29.90,73.86,0
    .goto 207,29.90,73.86,40,0
    .goto 207,31.34,71.96,40,0
    .goto 207,27.63,76.24,40,0
    >>Interact with |cRXP_FRIENDLY_Stonehearth Defenders|r
    .complete 26499,1 --Stonehearth Defender (12)
    .target Stonehearth Defender
step
    #loop
    .goto 207,30.71,73.15,0
    .goto 207,30.71,73.15,40,0
    .goto 207,30.66,69.86,40,0
    .goto 207,29.47,66.45,40,0
    >>Kill |cRXP_ENEMY_Stone Trogg Ambushers|r
    .complete 26500,1 --Stone Trogg Ambusher slain (12)
    .mob Stone Trogg Ambusher
step
    .goto 207,28.21,69.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbreaker Dolomite|r
    .turnin 26500 >>Turn in We're Surrounded
    .accept 26502 >>Accept Thunder Stones
    .target Earthbreaker Dolomite
step
    #completewith Along86
    >>As you go: Pick up |cRXP_PICK_Thunder Stone|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 26502,1 --Thunder Stone (12)
step
    .goto 207,27.92,68.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crag Rockcrusher|r
    .turnin 26499 >>Turn in Stonefather's Boon
    .accept 26501 >>Accept Sealing the Way
    .target Crag Rockcrusher
step
    .goto 207,27.47,70.30
    >>Help the Earthen Geomancers to get out of combat and then give them the Rockslide Reagents so that they can seal the Armory, Inn, Barracks, and Shrine.
    .complete 26501,1 --Sealing the Way 01 Kill Credit
    .target Sealing the Way 01 Kill Credit
step
    .goto 207,25.99,70.13
    >>Help the Earthen Geomancers to get out of combat and then give them the Rockslide Reagents so that they can seal the Armory, Inn, Barracks, and Shrine.
    .complete 26501,2 --Sealing the Way 02 Kill Credit
    .target Sealing the Way 02 Kill Credit
step
    .goto 207,25.62,68.89
    >>Help the Earthen Geomancers to get out of combat and then give them the Rockslide Reagents so that they can seal the Armory, Inn, Barracks, and Shrine.
    .complete 26501,3 --Sealing the Way 03 Kill Credit
    .target Sealing the Way 03 Kill Credit
step
    #label Along86
    .goto 207,27.48,67.49
    >>Help the Earthen Geomancers to get out of combat and then give them the Rockslide Reagents so that they can seal the Armory, Inn, Barracks, and Shrine.
    .complete 26501,4 --Sealing the Way 04 Kill Credit
    .target Sealing the Way 04 Kill Credit
step
    .goto 207,26.84,67.24
    >>Pick up |cRXP_PICK_Thunder Stone|r from the ground
    .complete 26502,1 --Thunder Stone (12)
step
    .goto 207,24.52,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gravel Longslab|r
    .turnin 26501 >>Turn in Sealing the Way
    .accept 26537 >>Accept Shatter Them!
    .target Gravel Longslab
step
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Stone Trogg Geomancers|r, |cRXP_ENEMY_Needlerock Riders|r and |cRXP_ENEMY_Stone Trogg Berserkers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26537,1 --Stone Trogg Geomancer (8)
    .mob Stone Trogg Geomancer
    .mob Needlerock Rider
    .mob Stone Trogg Berserker
step
    .goto 207,24.75,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clay Mudaxle|r
    .turnin 26502 >>Turn in Thunder Stones
    .accept 26564 >>Accept Fixer Upper
    .target Clay Mudaxle
step
    #completewith Along91
    >>As you go: Pick up |cRXP_PICK_Catapult Part|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 26564,1 --Catapult Part (6)
step
    .goto 207,24.61,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Deepvein|r
    .accept 26591 >>Accept Battlefront Triage
    .target Earthmender Deepvein
step
    #label Along91
    #loop
    .goto 207,23.33,63.83,0
    .goto 207,23.33,63.83,40,0
    .goto 207,22.03,62.00,40,0
    .goto 207,26.29,60.88,40,0
    >>Interact with |cRXP_FRIENDLY_Injured Earthens|r
    .complete 26591,1 --Injured Earthen (10)
    .target Injured Earthen
step
    .goto 207,24.61,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Deepvein|r
    .turnin 26591 >>Turn in Battlefront Triage while you are here
    .isQuestComplete 26591
    .target Earthmender Deepvein
step
    #loop
    .goto 207,25.86,59.51,0
    .goto 207,25.86,59.51,40,0
    .goto 207,23.18,60.25,40,0
    .goto 207,23.61,54.09,40,0
    >>Pick up |cRXP_PICK_Catapult Part|r from the ground
    >>Kill |cRXP_ENEMY_Stone Trogg Geomancers|r, |cRXP_ENEMY_Needlerock Riders|r and |cRXP_ENEMY_Stone Trogg Berserkers|r
    .complete 26564,1 --Catapult Part (6)
    .complete 26537,1 --Stone Trogg Geomancer (8)
    .mob Stone Trogg Geomancer
    .mob Needlerock Rider
    .mob Stone Trogg Berserker
step
    .goto 207,24.52,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gravel Longslab|r
    .turnin 26537 >>Turn in Shatter Them! while you are here
    .isQuestComplete 26537
    .target Gravel Longslab
step
    .goto 207,24.75,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clay Mudaxle|r
    .turnin 26564 >>Turn in Fixer Upper
    .target Clay Mudaxle
step
    .goto 207,24.61,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Deepvein|r
    .turnin 26591 >>Turn in Battlefront Triage
    .target Earthmender Deepvein
step
    .goto 207,24.52,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gravel Longslab|r
    .turnin 26537 >>Turn in Shatter Them!
    .accept 26625 >>Accept Troggzor the Earthinator
    .target Gravel Longslab
step
    .goto 207,22.55,56.89
    >>Kill |cRXP_ENEMY_Troggzor the Earthinator|r and loot |cRXP_LOOT_The Earthinator's Cudgel|r
    .complete 26625,1 --The Earthinator's Cudgel (1)
    .mob Troggzor the Earthinator
step
    .goto 207,24.52,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gravel Longslab|r
    .turnin 26625 >>Turn in Troggzor the Earthinator
    .target Gravel Longslab
step
    .goto 207,24.75,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clay Mudaxle|r
    .accept 27126 >>Accept Rush Delivery
    .target Clay Mudaxle
step
    .goto 207,20.71,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peak Grindstone|r
    .turnin 27126 >>Turn in Rush Delivery
    .accept 26632 >>Accept Close Escort
    .target Peak Grindstone
step
    .goto 207,21.80,51.70
    >>Earthen Catapult safely escorted
    .complete 26632,1 --Earthen Catapult safely escorted
step
    .goto 207,22.68,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyrium Lodestone|r
    .turnin 26632 >>Turn in Close Escort
    .accept 26755 >>Accept Keep Them off the Front
    .target Pyrium Lodestone
step
    #loop
    .goto 207,22.70,51.41,0
    .goto 207,22.70,51.41,40,0
    .goto 207,23.73,48.43,40,0
    >>Kill |cRXP_ENEMY_Fungal Terrors|r and |cRXP_ENEMY_Stone Trogg Reinforcements|r
    .complete 26755,1 --Fungal Terror (30)
    .mob Fungal Terror
    .mob Stone Trogg Reinforcement
step
    .goto 207,22.68,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyrium Lodestone|r
    .turnin 26755 >>Turn in Keep Them off the Front
    .accept 26762 >>Accept Reactivate the Constructs
    .target Pyrium Lodestone
step
    .goto 207,22.77,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Oremantle|r
    .accept 26770 >>Accept Mystic Masters
    .target Flint Oremantle
step
    #completewith Along105
    >>As you go: Kill |cRXP_ENEMY_Needlerock Mystics|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26770,1 --Needlerock Mystic slain (5)
    .mob Needlerock Mystic
step
    #label Along105
    #loop
    .goto 207,24.72,47.03,0
    .goto 207,24.72,47.03,40,0
    .goto 207,22.36,45.81,40,0
    >>Interact with |cRXP_FRIENDLY_Deactivated War Constructs|r
    .complete 26762,1 --Deactivated War Construct (5)
    .target Deactivated War Construct
step
    #loop
    .goto 207,22.30,45.69,0
    .goto 207,22.30,45.69,40,0
    .goto 207,24.56,47.44,40,0
    >>Kill |cRXP_ENEMY_Needlerock Mystics|r
    .complete 26770,1 --Needlerock Mystic slain (5)
    .mob Needlerock Mystic
step
    .goto 207,22.77,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flint Oremantle|r
    .turnin 26770 >>Turn in Mystic Masters
    .target Flint Oremantle
step
    .goto 207,22.68,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyrium Lodestone|r
    .turnin 26762 >>Turn in Reactivate the Constructs
    .accept 26834 >>Accept Down Into the Chasm
    .target Pyrium Lodestone
step
    .goto 207,27.59,44.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slate Quicksand|r
    .turnin 26834 >>Turn in Down Into the Chasm
    .accept 26791 >>Accept Sprout No More
    .accept 26792 >>Accept Fungal Monstrosities
    .target Slate Quicksand
step
    #completewith Along111
    >>As you go: Kill |cRXP_ENEMY_Fungal Monstrosities|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26792,2 --Fungal Monstrosity slain (5)
    .mob Fungal Monstrosity
step
    .goto 207,27.63,44.70
    >>Interact with |cRXP_FRIENDLY_War Guardian|r
    .complete 26792,1 --War Guardian
    .target War Guardian
step
    #label Along111
    .goto 207,27.63,44.70
    >>Interact with |cRXP_FRIENDLY_War Guardian|r
    .complete 26791,1 --War Guardian
    .target War Guardian
step
    #loop
    .goto 207,25.97,31.07,0
    .goto 207,25.97,31.07,40,0
    .goto 207,29.19,30.08,40,0
    .goto 207,27.94,26.66,40,0
    >>Kill |cRXP_ENEMY_Giant Mushrooms|r
    >>Kill |cRXP_ENEMY_Fungal Monstrosities|r
    .complete 26791,2 --Giant Mushroom slain (5)
    .complete 26792,2 --Fungal Monstrosity slain (5)
    .mob Giant Mushroom
    .mob Fungal Monstrosity
step
    .goto 207,27.59,44.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slate Quicksand|r
    .turnin 26791 >>Turn in Sprout No More
    .turnin 26792 >>Turn in Fungal Monstrosities
    .accept 26835 >>Accept A Slight Problem
    .target Slate Quicksand
step
    .goto 207,22.68,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyrium Lodestone|r
    .turnin 26835 >>Turn in A Slight Problem
    .accept 26836 >>Accept Rescue the Stonefather... and Flint
    .target Pyrium Lodestone
step
    .goto 207,24.48,31.13
    >>Kill |cRXP_ENEMY_Bouldergut|r
    .complete 26836,1 --Bouldergut slain (1)
    .mob Bouldergut
step
    .goto 207,22.68,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pyrium Lodestone|r
    .turnin 26836 >>Turn in Rescue the Stonefather... and Flint
    .accept 27937 >>Accept The Hero Returns
    .target Pyrium Lodestone
step
    .goto 207,28.01,68.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonefather Oremantle|r
    .turnin 27937 >>Turn in The Hero Returns
    .accept 27938 >>Accept The Middle Fragment
    .target Stonefather Oremantle
step
    .goto 207,28.06,68.70
    >>Open the |cRXP_PICK_The Stonefather's Safe|r. Loot it for |cRXP_LOOT_The Middle Fragment of the World Pillar|r
    .complete 27938,1 --The Middle Fragment of the World Pillar (1)
step
    #completewith next
    .hs >>Hearth to Dugsley Deepdelver's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 207,49.49,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .turnin 27938 >>Turn in The Middle Fragment
    .target Earthcaller Yevaa
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .accept 26326 >>Accept The Very Earth Beneath Our Feet
    .target Maruut Stonebinder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,49.49,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .accept 27953 >>Accept The Reliquary
    .target Earthcaller Yevaa
    .xp <83,1
step
    .goto 207,46.07,45.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 26326 >>Turn in The Very Earth Beneath Our Feet
    .accept 26312 >>Accept Crumbling Defenses
    .accept 26314 >>Accept On Even Ground
    .target Earthcaller Torunscar
step
    #completewith Along125
    >>As you go: Kill |cRXP_ENEMY_Servant of Therazanes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26314,1 --Servant of Therazane (3)
    .mob Servant of Therazane
step
    .goto 207,46.15,45.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Norsala|r
    .accept 26313 >>Accept Core of Our Troubles
    .target Earthmender Norsala
step
    #completewith Along125
    >>As you go: Kill |cRXP_ENEMY_Irestone Rumblers|r. Loot them for |cRXP_LOOT_Irestone Core|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26313,1 --Irestone Core (6)
    .mob Irestone Rumbler
step
    .goto 207,44.30,43.71
    >>Relieve Tawn Winterbluff, Stormcaller Mylra, and Hargoth Dimblaze by helping them to defeat their opponents.
    .complete 26312,2 --Stormcaller Mylra
    .target Stormcaller Mylra
step
    .goto 207,44.51,41.28
    >>Relieve Tawn Winterbluff, Stormcaller Mylra, and Hargoth Dimblaze by helping them to defeat their opponents.
    .complete 26312,1 --Tawn Winterbluff
    .target Tawn Winterbluff
step
    #label Along125
    .goto 207,47.61,42.81
    >>Relieve Tawn Winterbluff, Stormcaller Mylra, and Hargoth Dimblaze by helping them to defeat their opponents.
    .complete 26312,3 --Hargoth Dimblaze
    .target Hargoth Dimblaze
step
    #loop
    .goto 207,45.96,44.49,0
    .goto 207,45.96,44.49,40,0
    .goto 207,43.36,43.69,40,0
    .goto 207,44.08,47.35,40,0
    >>Kill |cRXP_ENEMY_Servant of Therazanes|r
    >>Kill |cRXP_ENEMY_Irestone Rumblers|r. Loot them for |cRXP_LOOT_Irestone Core|r
    .complete 26314,1 --Servant of Therazane (3)
    .complete 26313,1 --Irestone Core (6)
    .mob Servant of Therazane
    .mob Irestone Rumbler
step
    .goto 207,46.15,45.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Norsala|r
    .turnin 26313 >>Turn in Core of Our Troubles while you are here
    .isQuestComplete 26313
    .target Earthmender Norsala
step
    .goto 207,46.07,45.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 26312 >>Turn in Crumbling Defenses
    .turnin 26314 >>Turn in On Even Ground
    .target Earthcaller Torunscar
step
    .goto 207,46.15,45.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Norsala|r
    .turnin 26313 >>Turn in Core of Our Troubles
    .accept 26315 >>Accept Imposing Confrontation
    .target Earthmender Norsala
step
    .goto 207,48.94,40.26
    >>Read the Earthen Ring Proclamation to Boden the Imposing.
    .complete 26315,1 --Boden the Imposing
    .target Boden the Imposing
step
    .goto 207,46.15,45.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Norsala|r
    .turnin 26315 >>Turn in Imposing Confrontation
    .accept 26328 >>Accept Rocky Relations
    .target Earthmender Norsala
step
    .goto 207,56.52,42.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diamant the Patient|r
    .turnin 26328 >>Turn in Rocky Relations
    .accept 26376 >>Accept Hatred Runs Deep
    .accept 26377 >>Accept Unsolid Ground
    .target Diamant the Patient
step
    .goto 207,56.52,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartz Stonetender|r
    .accept 26375 >>Accept Loose Stones
    .target Quartz Stonetender
step
    #completewith Along135
    >>As you go: Kill |cRXP_ENEMY_Twilight Priestess|r, |cRXP_ENEMY_Twilight Laborers|r and |cRXP_ENEMY_Twilight Duskwardens|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26376,2 --Twilight Priestess (8)
    .mob Twilight Priestess
    .mob Twilight Laborer
    .mob Twilight Duskwarden
step
    #loop
    .goto 207,58.68,39.04,0
    .goto 207,58.68,39.04,40,0
    .goto 207,60.16,41.72,40,0
    .goto 207,60.76,45.82,40,0
    >>Kill |cRXP_ENEMY_Dragul Giantbutcher|r
    >>Pick up |cRXP_PICK_Jade Crystal Cluster|r from the ground
    .complete 26376,1 --Dragul Giantbutcher slain (1)
    .collect 58500,1,26377,1 --Jade Crystal Cluster (1)
    .mob Dragul Giantbutcher
step
    .goto 207,58.80,40.88
    >>Gather 6 Jade Crystal Clusters, combine them, and shatter them within the Lorthuna's Gate encampment.
    .complete 26377,1 --Agitated Tunneler
    .target Agitated Tunneler
step
    #label Along135
    #loop
    .goto 207,59.91,41.13,0
    .goto 207,59.91,41.13,40,0
    .goto 207,60.67,43.18,40,0
    >>Interact with |cRXP_FRIENDLY_Quartz Rocklings|r
    .complete 26375,1 --Quartz Rockling (6)
    .target Quartz Rockling
step
    #loop
    .goto 207,60.54,44.35,0
    .goto 207,60.54,44.35,40,0
    .goto 207,60.83,47.45,40,0
    >>Kill |cRXP_ENEMY_Twilight Priestess|r, |cRXP_ENEMY_Twilight Laborers|r and |cRXP_ENEMY_Twilight Duskwardens|r
    .complete 26376,2 --Twilight Priestess (8)
    .mob Twilight Priestess
    .mob Twilight Laborer
    .mob Twilight Duskwarden
step
    .goto 207,56.52,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartz Stonetender|r
    .turnin 26375 >>Turn in Loose Stones
    .target Quartz Stonetender
step
    .goto 207,56.52,42.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diamant the Patient|r
    .turnin 26377 >>Turn in Unsolid Ground
    .turnin 26376 >>Turn in Hatred Runs Deep
    .accept 26426 >>Accept Violent Gale
    .target Diamant the Patient
step
    .goto 207,58.45,25.68
    >>Find Felsen the Enduring and follow his instruction towards the entrance to the Crumbling Depths.
    .complete 26426,1 --Felsen the Enduring Speak Credit
    .target Felsen the Enduring Speak Credit
step
    .goto 207,58.45,25.68
    >>Find Felsen the Enduring and follow his instruction towards the entrance to the Crumbling Depths.
    .complete 26426,2 --Crumbling Depths Entrance Credit
    .target Crumbling Depths Entrance Credit
step
    .goto 207,56.52,42.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diamant the Patient|r
    .turnin 26426 >>Turn in Violent Gale
    .accept 26869 >>Accept Depth of the Depths
    .target Diamant the Patient
step
    .goto 207,66.46,20.79
    >>Click the |cRXP_PICK_Gigantic Painite Cluster|r
    .turnin 26869 >>Turn in Depth of the Depths
    .accept 26871 >>Accept A Rock Amongst Many
step
    .goto 207,56.52,42.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Diamant the Patient|r
    .turnin 26871 >>Turn in A Rock Amongst Many
    .accept 26436 >>Accept Entrenched
    .target Diamant the Patient
step
    .goto 207,34.16,34.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor the Immovable|r
    .turnin 26436 >>Turn in Entrenched
    .accept 26437 >>Accept Making Things Crystal Clear
    .accept 26438 >>Accept Intervention
    .target Kor the Immovable
step
    .goto 207,34.62,33.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berracite|r
    .accept 26439 >>Accept Putting the Pieces Together
    .target Berracite
step
    #completewith Along146
    >>As you go: Kill |cRXP_ENEMY_Jaspertip Swarmers|r, |cRXP_ENEMY_Jaspertip Ravagers|r, |cRXP_ENEMY_Jaspertip Crystal-gorgers|r and |cRXP_ENEMY_Jaspertip Borers|r. Kill |cRXP_ENEMY_Jaspertip Borers|r. Loot them for |cRXP_LOOT_Chalky Crystal Formation|r. It can also be picked up from |cRXP_PICK_Chalky Crystal Formation|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 26438,1 --Jaspertip Swarmer (8)
    .complete 26437,1 --Chalky Crystal Formation (8)
    .mob Jaspertip Swarmer
    .mob Jaspertip Ravager
    .mob Jaspertip Crystal-gorger
    .mob Jaspertip Borer
step
    #label Along146
    #loop
    .goto 207,33.09,42.09,0
    .goto 207,33.09,42.09,40,0
    .goto 207,36.13,47.06,40,0
    .goto 207,33.34,51.92,40,0
    >>Interact with |cRXP_FRIENDLY_Dormant Stonebound Elementals|r
    .complete 26439,1 --Dormant Stonebound Elemental (6)
    .target Dormant Stonebound Elemental
step
    #loop
    .goto 207,33.41,43.78,0
    .goto 207,33.41,43.78,40,0
    .goto 207,31.26,40.36,40,0
    .goto 207,30.66,47.15,40,0
    >>Kill |cRXP_ENEMY_Jaspertip Swarmers|r, |cRXP_ENEMY_Jaspertip Ravagers|r, |cRXP_ENEMY_Jaspertip Crystal-gorgers|r and |cRXP_ENEMY_Jaspertip Borers|r
    >>Kill |cRXP_ENEMY_Jaspertip Borers|r. Loot them for |cRXP_LOOT_Chalky Crystal Formation|r. It can also be picked up from |cRXP_PICK_Chalky Crystal Formation|r on the ground
    .complete 26438,1 --Jaspertip Swarmer (8)
    .complete 26437,1 --Chalky Crystal Formation (8)
    .mob Jaspertip Swarmer
    .mob Jaspertip Ravager
    .mob Jaspertip Crystal-gorger
    .mob Jaspertip Borer
step
    .goto 207,34.62,33.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berracite|r
    .turnin 26439 >>Turn in Putting the Pieces Together
    .target Berracite
step
    .goto 207,34.16,34.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor the Immovable|r
    .turnin 26437 >>Turn in Making Things Crystal Clear
    .turnin 26438 >>Turn in Intervention
    .accept 28869 >>Accept Pebble
    .target Kor the Immovable
step
    .goto 207,34.51,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pebble|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28869 >>Turn in Pebble
    .accept 26440 >>Accept Clingy
    .unitscan Pebble
step
    .goto 207,29.45,47.47
    >>Pebble brought to crystal formation
    .complete 26440,1 --Pebble brought to crystal formation
step
    .goto 207,34.51,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pebble|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26440 >>Turn in Clingy
    .accept 26441 >>Accept So Big, So Round...
    .unitscan Pebble
step
    .goto 207,34.16,34.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor the Immovable|r
    .turnin 26441 >>Turn in So Big, So Round...
    .accept 26507 >>Accept Petrified Delicacies
    .accept 26575 >>Accept Rock Bottom
    .target Kor the Immovable
step
    #loop
    .goto 207,44.40,26.52,0
    .goto 207,44.40,26.52,40,0
    .goto 207,44.72,21.80,40,0
    .goto 207,47.77,25.91,40,0
    >>Kill |cRXP_ENEMY_Gorgonite|r
    >>Kill |cRXP_ENEMY_Shalehide Basilisks|r, |cRXP_ENEMY_Petrified Stone Bats|r and |cRXP_ENEMY_Gorgonites|r. Loot them for |cRXP_LOOT_Petrified Stone Bat|r
    .complete 26575,1 --Gorgonite slain (1)
    .complete 26507,1 --Petrified Stone Bat (12)
    .mob Gorgonite
    .mob Shalehide Basilisk
    .mob Petrified Stone Bat
step
    .goto 207,34.51,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pebble|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26507 >>Turn in Petrified Delicacies
    .unitscan Pebble
step
    .goto 207,34.16,34.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor the Immovable|r
    .turnin 26575 >>Turn in Rock Bottom
    .accept 26576 >>Accept Steady Hand
    .accept 26577 >>Accept Rocky Upheaval
    .target Kor the Immovable
step
    #loop
    .goto 207,33.14,24.23,0
    .goto 207,33.14,24.23,40,0
    .goto 207,39.94,19.39,40,0
    .goto 207,55.34,12.99,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrath the Steady|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26576 >>Turn in Steady Hand
    .accept 26656 >>Accept Don't. Stop. Moving.
    .unitscan Terrath the Steady
step
    .goto 207,33.14,24.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrath the Steady|r
    .complete 26656,1 --Terrath the Steady
    .target Terrath the Steady
step
    .goto 207,39.94,19.39
    >>Interact with |cRXP_FRIENDLY_Opalescent Guardians|r
    .complete 26656,2 --Opalescent Guardian (5)
step
    #loop
    .goto 207,33.14,24.23,0
    .goto 207,33.14,24.23,40,0
    .goto 207,39.94,19.39,40,0
    .goto 207,55.34,12.99,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrath the Steady|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26656 >>Turn in Don't. Stop. Moving.
    .accept 26657 >>Accept Hard Falls
    .accept 26658 >>Accept Fragile Values
    .unitscan Terrath the Steady
step
    .goto 207,37.69,26.12
    >>Kill |cRXP_ENEMY_Stone Trogg Beast Tamer|r and loot |cRXP_LOOT_Stonework Mallet|r
    .complete 26658,1 --Stonework Mallet (1)
    .mob Stone Trogg Beast Tamer
step
    #loop
    .goto 207,35.57,20.14,0
    .goto 207,35.57,20.14,40,0
    .goto 207,36.26,17.01,40,0
    .goto 207,33.20,21.33,40,0
    >>Kill |cRXP_ENEMY_Stone Drakes|r
    .complete 26657,1 --Stone Drake slain (6)
    .mob Stone Drake
step
    #loop
    .goto 207,33.14,24.23,0
    .goto 207,33.14,24.23,40,0
    .goto 207,39.94,19.39,40,0
    .goto 207,55.34,12.99,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrath the Steady|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26658 >>Turn in Fragile Values
    .turnin 26657 >>Turn in Hard Falls
    .accept 26659 >>Accept Resonating Blow
    .unitscan Terrath the Steady
step
    .goto 207,32.60,24.47
    >>Kill |cRXP_ENEMY_Aeosera|r
    >>Click the |cRXP_PICK_Pale Resonating Crystal|r
    .complete 26659,1 --Aeosera slain (1)
    .complete 26659,2 --Pale Resonating Crystal
    .mob Aeosera
step
    #loop
    .goto 207,33.14,24.23,0
    .goto 207,33.14,24.23,40,0
    .goto 207,39.94,19.39,40,0
    .goto 207,55.34,12.99,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrath the Steady|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26659 >>Turn in Resonating Blow
    .unitscan Terrath the Steady
step
    .goto 207,55.91,12.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorsik the Tumultuous|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26577 >>Turn in Rocky Upheaval
    .accept 26579 >>Accept Gone Soft
    .accept 26580 >>Accept Familiar Intruders
    .accept 26578 >>Accept Doomshrooms
    .unitscan Gorsik the Tumultuous
step
    #completewith Along168
    >>As you go: Kill |cRXP_ENEMY_Doomshrooms|r. Kill |cRXP_ENEMY_Fungal Behemoths|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26578,1 --Doomshroom slain (10)
    .complete 26579,1 --Fungal Behemoth slain (8)
    .mob Doomshroom
    .mob Fungal Behemoth
step
    .goto 207,71.79,47.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windspeaker Lorvarius|r
    .turnin 26580 >>Turn in Familiar Intruders
    .accept 26581 >>Accept A Head Full of Wind
    .target Windspeaker Lorvarius
step
    #label Along168
    .goto 207,72.76,41.65
    >>Bring Lorvarius' wind-devil to the clouds of red mist in the Crimson Expanse, near the water, and then return with a sample.
    .complete 26581,1 --Red Mist
    .target Red Mist
step
    #loop
    .goto 207,73.15,41.23,0
    .goto 207,73.15,41.23,40,0
    .goto 207,75.82,36.38,40,0
    .goto 207,77.06,44.27,40,0
    .goto 207,69.05,46.80,40,0
    >>Kill |cRXP_ENEMY_Doomshrooms|r
    >>Kill |cRXP_ENEMY_Fungal Behemoths|r
    .complete 26578,1 --Doomshroom slain (10)
    .complete 26579,1 --Fungal Behemoth slain (8)
    .mob Doomshroom
    .mob Fungal Behemoth
step
    .goto 207,71.79,47.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windspeaker Lorvarius|r
    .turnin 26581 >>Turn in A Head Full of Wind
    .accept 26582 >>Accept Unnatural Causes
    .target Windspeaker Lorvarius
step
    .goto 207,55.91,12.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorsik the Tumultuous|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26578 >>Turn in Doomshrooms
    .turnin 26582 >>Turn in Unnatural Causes
    .turnin 26579 >>Turn in Gone Soft
    .accept 26584 >>Accept Shaken and Stirred
    .accept 26585 >>Accept Corruption Destruction
    .unitscan Gorsik the Tumultuous
step
    #completewith Along172
    >>As you go: Pick up |cRXP_PICK_Verlok Miracle-Grow|r from the ground. Kill |cRXP_ENEMY_Verlok Pillartumblers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26585,1 --Verlok Miracle-Grow (1)
    .complete 26584,1 --Verlok Pillartumbler slain (8)
    .mob Verlok Pillartumbler
step
    #label Along172
    .goto 207,68.47,26.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruberick|r
    .accept 26583 >>Accept Wrath of the Fungalmancer
    .target Ruberick
step
    #completewith Along173
    >>As you go: Kill |cRXP_ENEMY_Fungalmancer Glop|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26583,2 --Fungalmancer Glop slain (1)
    .mob Fungalmancer Glop
step
    #label Along173
    .goto 207,69.80,31.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Norsala|r
    .complete 26583,1 --Earthmender Norsala
    .target Earthmender Norsala
step
    .goto 207,69.45,33.73
    >>Kill |cRXP_ENEMY_Fungalmancer Glop|r
    .complete 26583,2 --Fungalmancer Glop slain (1)
    .mob Fungalmancer Glop
step
    #completewith Along175
    >>As you go: Pick up |cRXP_PICK_Verlok Miracle-Grow|r from the ground. Kill |cRXP_ENEMY_Verlok Pillartumblers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26585,1 --Verlok Miracle-Grow (1)
    .complete 26584,1 --Verlok Pillartumbler slain (8)
    .mob Verlok Pillartumbler
step
    #label Along175
    .goto 207,68.47,26.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruberick|r
    .turnin 26583 >>Turn in Wrath of the Fungalmancer
    .target Ruberick
step
    #loop
    .goto 207,68.11,25.05,0
    .goto 207,68.11,25.05,40,0
    .goto 207,69.89,24.77,40,0
    >>Pick up |cRXP_PICK_Verlok Miracle-Grow|r from the ground
    >>Kill |cRXP_ENEMY_Verlok Pillartumblers|r
    .complete 26585,1 --Verlok Miracle-Grow (1)
    .complete 26584,1 --Verlok Pillartumbler slain (8)
    .mob Verlok Pillartumbler
step
    .goto 207,55.91,12.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorsik the Tumultuous|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26585 >>Turn in Corruption Destruction
    .turnin 26584 >>Turn in Shaken and Stirred
    .unitscan Gorsik the Tumultuous
step
    #loop
    .goto 207,55.34,12.99,0
    .goto 207,55.34,12.99,40,0
    .goto 207,39.94,19.39,40,0
    .goto 207,33.14,24.23,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrath the Steady|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26750 >>Accept At the Stonemother's Call
    .unitscan Terrath the Steady
step
    .goto 207,56.33,12.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therazane|r
    .turnin 26750 >>Turn in At the Stonemother's Call
    .accept 26752 >>Accept Audience with the Stonemother
    .target Therazane
step
    .goto 207,56.33,12.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therazane|r
    .complete 26752,1 --Therazane
    .target Therazane
step
    .goto 207,56.06,13.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 26752 >>Turn in Audience with the Stonemother
    .accept 26827 >>Accept Rallying the Earthen Ring
    .target Earthcaller Torunscar
step
    #completewith next
    .hs >>Hearth to Dugsley Deepdelver's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    #loop
    .goto 207,47.92,49.95,0
    .goto 207,47.92,49.95,40,0
    .goto 207,51.39,52.21,40,0
    >>Kill |cRXP_ENEMY_Windspeaker Lorvarius|r, |cRXP_ENEMY_Tharm Wildfires|r, |cRXP_ENEMY_Stormcaller Jalaras|r and |cRXP_ENEMY_Tawn Winterbluffs|r
    .complete 26827,1 --Windspeaker Lorvarius (8)
    .mob Windspeaker Lorvarius
    .mob Tharm Wildfire
    .mob Stormcaller Jalara
    .mob Tawn Winterbluff
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 26827 >>Turn in Rallying the Earthen Ring
    .accept 26828 >>Accept Our Part of the Bargain
    .target Maruut Stonebinder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,49.49,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .accept 27953 >>Accept The Reliquary
    .target Earthcaller Yevaa
    .xp <83,1
step
    .goto 207,63.33,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therazane|r
    .turnin 26828 >>Turn in Our Part of the Bargain
    .accept 26829 >>Accept The Stone March
    .accept 26832 >>Accept Therazane's Mercy
    .target Therazane
step
    #completewith Along187
    >>As you go: Kill |cRXP_ENEMY_Twilight Priestess|r, |cRXP_ENEMY_Defaced Earthragers|r and |cRXP_ENEMY_Twilight Soulreapers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26829,1 --Twilight Priestess (8)
    .mob Twilight Priestess
    .mob Defaced Earthrager
    .mob Twilight Soulreaper
step
    .goto 207,62.64,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boden the Imposing|r
    .accept 26831 >>Accept The Twilight Flight
    .target Boden the Imposing
step
    .goto 207,62.43,31.79
    >>Kill |cRXP_ENEMY_High Priestess Lorthuna|r
    .complete 26832,2 --High Priestess Lorthuna slain (1)
    .mob High Priestess Lorthuna
step
    #label Along187
    .goto 207,58.90,32.92
    >>Kill |cRXP_ENEMY_Boldrich Stonerender|r
    .complete 26832,1 --Boldrich Stonerender slain (1)
    .mob Boldrich Stonerender
step
    #loop
    .goto 207,60.13,33.85,0
    .goto 207,60.13,33.85,40,0
    .goto 207,63.09,38.17,40,0
    >>Kill |cRXP_ENEMY_Zoltrik Drakebane|r
    >>Kill |cRXP_ENEMY_Twilight Priestess|r, |cRXP_ENEMY_Defaced Earthragers|r and |cRXP_ENEMY_Twilight Soulreapers|r
    .complete 26831,1 --Zoltrik Drakebane (1)
    .complete 26829,1 --Twilight Priestess (8)
    .mob Zoltrik Drakebane
    .mob Twilight Priestess
    .mob Defaced Earthrager
    .mob Twilight Soulreaper
step
    .goto 207,62.64,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boden the Imposing|r
    .turnin 26831 >>Turn in The Twilight Flight
    .target Boden the Imposing
step
    .goto 207,63.33,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therazane|r
    .turnin 26829 >>Turn in The Stone March
    .turnin 26832 >>Turn in Therazane's Mercy
    .accept 26833 >>Accept Word In Stone
    .target Therazane
step
    .goto 207,49.62,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maruut Stonebinder|r
    .turnin 26833 >>Turn in Word In Stone
    .accept 26875 >>Accept Undying Twilight
    .target Maruut Stonebinder
step
    #loop
    .goto 207,48.14,52.90,0
    .goto 207,48.14,52.90,40,0
    .goto 207,50.23,49.77,40,0
    >>Kill |cRXP_ENEMY_Twilight Heretics|r and |cRXP_ENEMY_Twilight Defilers|r
    >>Kill |cRXP_ENEMY_Desecrated Earthrager|r
    .complete 26875,2 --Twilight Heretic (8)
    .complete 26875,1 --Desecrated Earthrager slain (1)
    .mob Twilight Heretic
    .mob Twilight Defiler
    .mob Desecrated Earthrager
step
    .goto 207,49.59,52.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 26875 >>Turn in Undying Twilight
    .accept 26971 >>Accept The Binding
    .target Earthcaller Torunscar
step
    .goto 207,49.61,52.88
    >>Kill |cRXP_ENEMY_High Priestess Lorthuna|r
    .complete 26971,1 --High Priestess Lorthuna slain (1)
    .mob High Priestess Lorthuna
step
    .goto 207,49.59,52.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Torunscar|r
    .turnin 26971 >>Turn in The Binding
    .target Earthcaller Torunscar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 83 >>Grind to level 83 (The Reliquary needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,49.49,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthcaller Yevaa|r
    .accept 27953 >>Accept The Reliquary
    .target Earthcaller Yevaa
step
    .goto 207,49.74,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therazane|r
    .accept 26709 >>Accept The Stone Throne
    .target Therazane
step
    .goto 207,56.33,12.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therazane|r
    .turnin 26709 >>Turn in The Stone Throne
    .target Therazane
step
    .xp 83 >> You must be level 83 in order to begin Uldum. Grind to 83 or consider running dungeons
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,51.29,50.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Examiner Rowe|r
    .turnin 27953 >>Turn in The Reliquary
    .accept 27005 >>Accept The Twilight Plot
    .target Examiner Rowe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,51.28,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reliquary Jes'ca Darksun|r
    .accept 27008 >>Accept Fly Over
    .target Reliquary Jes'ca Darksun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 207,44.93,67.37,0
    .goto 207,44.93,67.37,40,0
    .goto 207,42.86,69.44,40,0
    .goto 207,41.00,73.38,40,0
    >>Kill |cRXP_ENEMY_Twilight Armsmans|r, |cRXP_ENEMY_Twilight Crushers|r and |cRXP_ENEMY_Twilight Cryptomancers|r. Loot them for |cRXP_LOOT_Masters' Gate Plans|r
    .complete 27005,1 --Masters' Gate Plans (1)
    .mob Twilight Armsman
    .mob Twilight Crusher
    .mob Twilight Cryptomancer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,38.79,74.40
    >>Master's Gate investigated
    .complete 27008,1 --Master's Gate investigated
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,51.29,50.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Examiner Rowe|r
    .turnin 27005 >>Turn in The Twilight Plot
    .target Examiner Rowe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,51.28,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reliquary Jes'ca Darksun|r
    .turnin 27008 >>Turn in Fly Over
    .accept 27043 >>Accept Fight Fire and Water and Air with...
    .target Reliquary Jes'ca Darksun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,51.29,50.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Examiner Rowe|r
    .accept 27041 >>Accept Decryption Made Easy
    .target Examiner Rowe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 207,39.75,65.49,0
    .goto 207,39.75,65.49,40,0
    .goto 207,37.33,69.27,40,0
    >>Kill |cRXP_ENEMY_Haethen Kaul|r
    >>Click the |cRXP_PICK_One-Time Decryption Engine|r
    .complete 27043,4 --Haethen Kaul slain (1)
    .complete 27041,1 --One-Time Decryption Engine
    .mob Haethen Kaul
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,36.00,67.38
    >>Kill |cRXP_ENEMY_Bound Fire Elemental|r
    .complete 27043,1 --Bound Fire Elemental slain (1)
    .mob Bound Fire Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along208
    >>As you go: Kill |cRXP_ENEMY_Bound Air Elemental|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27043,3 --Bound Air Elemental slain (1)
    .mob Bound Air Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along208
    .goto 207,39.60,73.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27041 >>Turn in Decryption Made Easy
    .target ?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,40.52,72.38
    >>Kill |cRXP_ENEMY_Bound Air Elemental|r
    .complete 27043,3 --Bound Air Elemental slain (1)
    .mob Bound Air Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,40.83,66.28
    >>Kill |cRXP_ENEMY_Bound Water Elemental|r
    .complete 27043,2 --Bound Water Elemental slain (1)
    .mob Bound Water Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,51.29,50.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Examiner Rowe|r
    .accept 27059 >>Accept The Wrong Sequence
    .target Examiner Rowe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,51.28,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reliquary Jes'ca Darksun|r
    .turnin 27043 >>Turn in Fight Fire and Water and Air with...
    .target Reliquary Jes'ca Darksun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,39.12,73.88
    >>Click the |cRXP_PICK_Waygate Controller|r
    .complete 27059,1 --Waygate Controller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 207,51.29,50.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Examiner Rowe|r
    .turnin 27059 >>Turn in The Wrong Sequence
    .accept 28293 >>Accept That's No Pyramid!
    .target Examiner Rowe
step
    +|cRXP_WARN_End of the Deepholm route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Orgrimmar|r: That's No Pyramid! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
]])
