-- 20-25 Wetlands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Wetlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 20-25 Wetlands
--RouteBuilder:next
#next Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\26-31 Arathi Highlands

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,49.95,79.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Rharen|r
    .turnin 28565 >>Turn in Hero's Call: Wetlands!
    .target Mountaineer Rharen
    .isOnQuest 28565
step
    .goto 56,49.95,79.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Rharen|r
    .turnin 26137 >>Turn in Checking on the Boys
    .target Mountaineer Rharen
    .isOnQuest 26137
step
    .goto 56,49.95,79.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Rharen|r
    .accept 25395 >>Accept The Stolen Keg
    .target Mountaineer Rharen
step
    .goto 56,49.91,79.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Grugelm|r
    .accept 25211 >>Accept Cleaning Hovel
    .target Mountaineer Grugelm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.51,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forba Slabchisel|r
    .accept 25721 >>Accept Fight the Flood
    .target Forba Slabchisel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.47,71.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Thurdan|r
    .accept 25722 >>Accept Sedimentary, My Dear
    .target Surveyor Thurdan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.84,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dunlor Marblebeard|r
    .accept 25723 >>Accept Thresh Out of Luck
    .target Dunlor Marblebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,61.76,70.52,0
    .goto 56,61.76,70.52,40,0
    .goto 56,63.61,72.73,40,0
    .goto 56,61.18,66.49,40,0
    >>Kill |cRXP_ENEMY_Displaced Threshadons|r. Loot them for |cRXP_LOOT_Threshadon Chunk|r
    >>Loot the |cRXP_PICK_Sediment Deposits|r for |cRXP_LOOT_Flood Sediment Sample|r
    >>Kill |cRXP_ENEMY_Flood Elementals|r
    .complete 25723,1 --Threshadon Chunk (8)
    .complete 25722,1 --Flood Sediment Sample (8)
    .complete 25721,1 --Flood Elemental slain (10)
    .mob Displaced Threshadon
    .mob Flood Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.84,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dunlor Marblebeard|r
    .turnin 25723 >>Turn in Thresh Out of Luck
    .accept 25725 >>Accept Fenbush Berries
    .target Dunlor Marblebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along10
    >>As you go: Loot the |cRXP_PICK_Fenberries|r for |cRXP_LOOT_Handful of Fenberries|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25725,1 --Handful of Fenberries (15)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.47,71.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Thurdan|r
    .turnin 25722 >>Turn in Sedimentary, My Dear
    .accept 25726 >>Accept A Dumpy Job
    .target Surveyor Thurdan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along10
    >>As you go: Kill |cRXP_ENEMY_Silty Oozeling|r and loot |cRXP_LOOT_Dumpy Level|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25726,1 --Dumpy Level (1)
    .mob Silty Oozeling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along10
    .goto 56,57.51,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forba Slabchisel|r
    .turnin 25721 >>Turn in Fight the Flood
    .accept 25727 >>Accept Drungeld Glowerglare
    .target Forba Slabchisel
step
    #loop
    .goto 56,49.13,79.03,0
    .goto 56,49.13,79.03,40,0
    .goto 56,47.63,75.44,40,0
    >>Pick up |cRXP_PICK_Mountaineer's Ale|r from the ground
    >>Kill |cRXP_ENEMY_Dragonmaw Grunts|r and |cRXP_ENEMY_Dragonmaw Scouts|r
    .complete 25395,1 --Mountaineer's Ale (1)
    .complete 25211,1 --Dragonmaw Grunt (8)
    .mob Dragonmaw Grunt
    .mob Dragonmaw Scout
step
    .goto 56,49.91,79.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Grugelm|r
    .turnin 25211 >>Turn in Cleaning Hovel
    .target Mountaineer Grugelm
step
    .goto 56,49.95,79.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Rharen|r
    .turnin 25395 >>Turn in The Stolen Keg
    .accept 25770 >>Accept Keg Run
    .target Mountaineer Rharen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,54.71,72.79,0
    .goto 56,54.71,72.79,40,0
    .goto 56,57.34,73.79,40,0
    >>Kill |cRXP_ENEMY_Silty Oozeling|r and loot |cRXP_LOOT_Dumpy Level|r
    .complete 25726,1 --Dumpy Level (1)
    .mob Silty Oozeling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along16
    >>As you go: Loot the |cRXP_PICK_Fenberries|r for |cRXP_LOOT_Handful of Fenberries|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25725,1 --Handful of Fenberries (15)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.47,71.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Thurdan|r
    .turnin 25726 >>Turn in A Dumpy Job
    .accept 25734 >>Accept Down In Thelgen Rock
    .target Surveyor Thurdan
step
    #label Along16
    .goto 56,57.51,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forba Slabchisel|r
    .turnin 25770 >>Turn in Keg Run
    .target Forba Slabchisel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,58.94,71.36,0
    .goto 56,58.94,71.36,40,0
    .goto 56,60.46,66.47,40,0
    .goto 56,62.37,77.19,40,0
    .goto 56,61.75,75.63,40,0
    >>Loot the |cRXP_PICK_Fenberries|r for |cRXP_LOOT_Handful of Fenberries|r
    >>Kill |cRXP_ENEMY_Drungeld Glowerglare|r and loot |cRXP_LOOT_Glowerglare's Beard|r
    .complete 25725,1 --Handful of Fenberries (15)
    .complete 25727,1 --Glowerglare's Beard (1)
    .mob Drungeld Glowerglare
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.84,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dunlor Marblebeard|r
    .turnin 25725 >>Turn in Fenbush Berries
    .accept 25735 >>Accept Incendicite Ore
    .target Dunlor Marblebeard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.51,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forba Slabchisel|r
    .turnin 25727 >>Turn in Drungeld Glowerglare
    .accept 25733 >>Accept Get Out Of Here, Stalkers
    .target Forba Slabchisel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,57.09,66.82,0
    .goto 56,57.09,66.82,40,0
    .goto 56,55.34,64.35,40,0
    >>Kill |cRXP_ENEMY_Leech Stalkers|r
    .complete 25733,1 --Leech Stalker slain (7)
    .mob Leech Stalker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,50.77,62.18,0
    .goto 56,50.77,62.18,40,0
    .goto 56,49.77,60.19,40,0
    .goto 56,46.47,62.12,40,0
    >>Open the |cRXP_PICK_Incendicite Mineral Vein|r. Loot it for |cRXP_LOOT_Incendicite Ore|r
    >>Kill |cRXP_ENEMY_Cave Stalkers|r
    .complete 25735,1 --Incendicite Ore (1)
    .complete 25733,2 --Cave Stalker slain (7)
    .mob Cave Stalker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,47.88,66.10
    >>Open the |cRXP_PICK_Thelgen Seismograph|r. Loot it for |cRXP_LOOT_Thelgen Seismic Record|r
    .complete 25734,1 --Thelgen Seismic Record (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,47.47,65.42
    >>Kill |cRXP_ENEMY_Torrention|r and loot |cRXP_LOOT_Floodsurge Core|r. Use it to start the quest
    .collect 55243,1,25736 --Floodsurge Core (1)
    .accept 25736 >>Accept The Floodsurge Core
    .use 55243
    .mob Torrention
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 21 >>Grind to level 21 (When Archaeology Attacks needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.93,39.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 25849 >>Accept When Archaeology Attacks
    .target Prospector Whelgar
step
    .goto 56,38.71,39.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cedric Bronzeflint|r
    .target Cedric Bronzeflint
    .home >>Set your Hearthstone to Cedric Bronzeflint's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.84,39.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .accept 25853 >>Accept Tooling Around
    .target Merrin Rockweaver
    .xp <21,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.62,39.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 25850 >>Accept Strike the Earth!
    .target Ormer Ironbraid
    .xp <21,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,35.73,43.52,0
    .goto 56,35.73,43.52,40,0
    .goto 56,35.21,49.80,40,0
    .goto 56,31.80,49.86,40,0
    >>Kill |cRXP_ENEMY_Living Fossils|r and |cRXP_ENEMY_Sarltooths|r. Loot them for |cRXP_LOOT_Fossilized Bone|r
    .complete 25849,1 --Fossilized Bone (20)
    .mob Living Fossil
    .mob Sarltooth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.47,71.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Thurdan|r
    .turnin 25734 >>Turn in Down In Thelgen Rock
    .target Surveyor Thurdan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,57.84,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dunlor Marblebeard|r
    .turnin 25735 >>Turn in Incendicite Ore
    .target Dunlor Marblebeard
step
    .goto 56,57.51,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forba Slabchisel|r
    .turnin 25733 >>Turn in Get Out Of Here, Stalkers << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 25736 >>Turn in The Floodsurge Core << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25777 >>Accept Onwards to Menethil
    .target Forba Slabchisel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,10.95,59.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .accept 25815 >>Accept The Third Fleet
    .target First Mate Fitzsimmons
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,10.55,61.62
    >>Open the |cRXP_PICK_Fitzsimmon's Mead|r. Loot it for |cRXP_LOOT_Fitzsimmons' Mead|r
    .complete 25815,1 --Fitzsimmons' Mead (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,10.95,59.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Fitzsimmons|r
    .turnin 25815 >>Turn in The Third Fleet
    .accept 25816 >>Accept Cursed to Roam
    .target First Mate Fitzsimmons
step
    .goto 56,11.86,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derina Rumdnul|r
    .accept 25820 >>Accept A Mother's Worries
    .target Derina Rumdnul
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,11.09,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .accept 25800 >>Accept When Life Gives You Crabs
    .target Karl Boran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Ocean Crawlers|r and |cRXP_ENEMY_Harbor Crawlers|r. Loot them for |cRXP_LOOT_Meaty Crawler Claw|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25800,1 --Meaty Crawler Claw (5)
    .mob Ocean Crawler
    .mob Harbor Crawler
step
    .goto 56,10.52,55.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 25777 >>Turn in Onwards to Menethil
    .accept 25780 >>Accept Assault on Menethil Keep << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Captain Stoutfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,10.02,57.63
    >>Kill |cRXP_ENEMY_Horghast Flarecrazed|r
    .complete 25780,1 --Horghast Flarecrazed slain (1)
    .mob Horghast Flarecrazed
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along37
    .goto 56,10.52,55.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .turnin 25780 >>Turn in Assault on Menethil Keep
    .target Captain Stoutfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,10.48,51.04,0
    .goto 56,10.48,51.04,40,0
    .goto 56,13.48,52.67,40,0
    .goto 56,16.13,52.14,40,0
    .goto 56,13.61,54.83,40,0
    >>Kill |cRXP_ENEMY_Ocean Crawlers|r and |cRXP_ENEMY_Harbor Crawlers|r. Loot them for |cRXP_LOOT_Meaty Crawler Claw|r
    .complete 25800,1 --Meaty Crawler Claw (5)
    .mob Ocean Crawler
    .mob Harbor Crawler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,11.09,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 25800 >>Turn in When Life Gives You Crabs
    .accept 25802 >>Accept Reclaiming Goods
    .accept 25801 >>Accept Claws from the Deep
    .target Karl Boran
step
    #loop
    .goto 56,14.31,53.36,0
    .goto 56,14.31,53.36,40,0
    .goto 56,15.96,50.63,40,0
    .goto 56,17.55,53.45,40,0
    >>Kill |cRXP_ENEMY_Ocean Shredfins|r and |cRXP_ENEMY_Harbor Shredfins|r
    .complete 25820,1 --Ocean Shredfin (10)
    .mob Ocean Shredfin
    .mob Harbor Shredfin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along43
    >>As you go: Kill |cRXP_ENEMY_Bluegill Murlocs|r, |cRXP_ENEMY_Bluegill Oracles|r, |cRXP_ENEMY_Bluegill Puddlejumpers|r and |cRXP_ENEMY_Bluegill Foragers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25801,2 --Bluegill Murloc (12)
    .mob Bluegill Murloc
    .mob Bluegill Oracle
    .mob Bluegill Puddlejumper
    .mob Bluegill Forager
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,15.21,41.45
    >>Kill |cRXP_ENEMY_Gobbler|r and loot |cRXP_LOOT_Gobbler's Head|r
    .complete 25801,1 --Gobbler's Head (1)
    .mob Gobbler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,13.52,41.38
    >>Click the |cRXP_PICK_Damaged Crate|r
    .turnin 25802 >>Turn in Reclaiming Goods
    .accept 25803 >>Accept The Search Continues
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along43
    .goto 56,13.60,38.22
    >>Click the |cRXP_PICK_Sealed Barrel|r
    .turnin 25803 >>Turn in The Search Continues
    .accept 25804 >>Accept Search More Hovels
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,14.36,36.82,0
    .goto 56,14.36,36.82,40,0
    .goto 56,13.52,33.73,40,0
    .goto 56,11.27,36.12,40,0
    .goto 56,14.47,41.90,40,0
    >>Kill |cRXP_ENEMY_Bluegill Murlocs|r, |cRXP_ENEMY_Bluegill Oracles|r, |cRXP_ENEMY_Bluegill Puddlejumpers|r and |cRXP_ENEMY_Bluegill Foragers|r
    .complete 25801,2 --Bluegill Murloc (12)
    .mob Bluegill Murloc
    .mob Bluegill Oracle
    .mob Bluegill Puddlejumper
    .mob Bluegill Forager
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,13.94,34.81
    >>Click the |cRXP_PICK_Half-buried Barrel|r
    .turnin 25804 >>Turn in Search More Hovels
    .accept 25805 >>Accept Return the Statuette
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,15.23,29.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Snellig|r
    .turnin 25816 >>Turn in Cursed to Roam
    .accept 25817 >>Accept The Cursed Crew
    .target First Mate Snellig
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,13.56,30.13,0
    .goto 56,13.56,30.13,40,0
    .goto 56,13.48,27.89,40,0
    .goto 56,14.55,23.69,40,0
    >>Kill |cRXP_ENEMY_Cursed Sailors|r
    >>Kill |cRXP_ENEMY_Cursed Marines|r
    .complete 25817,1 --Cursed Sailor slain (5)
    .complete 25817,2 --Cursed Marine slain (5)
    .mob Cursed Sailor
    .mob Cursed Marine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,15.23,29.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Snellig|r
    .turnin 25817 >>Turn in The Cursed Crew
    .accept 25818 >>Accept Lifting the Curse
    .target First Mate Snellig
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,15.03,23.74
    >>Kill |cRXP_ENEMY_Captain Halyndor|r and loot |cRXP_LOOT_Intrepid Strongbox Key|r
    .complete 25818,1 --Intrepid Strongbox Key (1)
    .mob Captain Halyndor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,14.38,24.04
    >>Click the |cRXP_PICK_Intrepid's Locked Strongbox|r
    .turnin 25818 >>Turn in Lifting the Curse
    .accept 25819 >>Accept The Eye of Paleth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.77,26.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .accept 25856 >>Accept Crocolisk Hides
    .target James Halloran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.93,26.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shilah Slabchisel|r
    .accept 25864 >>Accept Dinosaur Crisis
    .target Shilah Slabchisel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.82,25.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
    .accept 25854 >>Accept I'll Call Him Bitey
    .target Fradd Swiftgear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,30.27,21.15,0
    .goto 56,30.27,21.15,40,0
    .goto 56,32.19,16.58,40,0
    .goto 56,34.83,19.22,40,0
    >>Kill |cRXP_ENEMY_Highland Razormaws|r, |cRXP_ENEMY_Highland Scytheclaws|r and |cRXP_ENEMY_Highland Raptor Kill Credits|r
    >>Pick up |cRXP_PICK_Wobbling Raptor Egg|r from the ground
    .complete 25864,1 --Highland Razormaw (8)
    .complete 25854,1 --Wobbling Raptor Egg (6)
    .mob Highland Razormaw
    .mob Highland Scytheclaw
    .mob Highland Raptor Kill Credit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.82,25.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
    .turnin 25854 >>Turn in I'll Call Him Bitey
    .accept 25855 >>Accept Gizmos and Gadgets
    .target Fradd Swiftgear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.93,26.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shilah Slabchisel|r
    .turnin 25864 >>Turn in Dinosaur Crisis
    .accept 25865 >>Accept The Mosshide Job
    .target Shilah Slabchisel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along58
    >>As you go: Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mystics|r. Loot them for |cRXP_LOOT_Ironforge Ingot|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25865,1 --Ironforge Ingot (8)
    .mob Mosshide Gnoll
    .mob Mosshide Mystic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,31.57,30.02,0
    .goto 56,31.57,30.02,40,0
    .goto 56,31.16,32.91,40,0
    .goto 56,35.85,31.63,40,0
    >>Pick up |cRXP_PICK_Swiftgear Gizmo|r from the ground
    .complete 25855,1 --Swiftgear Gizmo (7)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along58
    #loop
    .goto 56,29.73,37.57,0
    .goto 56,29.73,37.57,40,0
    .goto 56,25.00,32.20,40,0
    .goto 56,25.68,29.23,40,0
    >>Kill |cRXP_ENEMY_Wetlands Crocolisks|r. Loot them for |cRXP_LOOT_Marshy Crocolisk Hide|r
    .complete 25856,1 --Marshy Crocolisk Hide (10)
    .mob Wetlands Crocolisk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.77,26.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 25856 >>Turn in Crocolisk Hides
    .accept 25857 >>Accept Hunting Horrorjaw
    .target James Halloran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.82,25.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fradd Swiftgear|r
    .turnin 25855 >>Turn in Gizmos and Gadgets
    .target Fradd Swiftgear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,31.04,22.22
    >>Kill |cRXP_ENEMY_Horrorjaw|r and loot |cRXP_LOOT_Horrorjaw's Hide|r
    .complete 25857,1 --Horrorjaw's Hide (1)
    .mob Horrorjaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,31.04,28.89,0
    .goto 56,31.04,28.89,40,0
    .goto 56,29.82,31.32,40,0
    .goto 56,32.26,34.66,40,0
    >>Kill |cRXP_ENEMY_Mosshide Gnolls|r and |cRXP_ENEMY_Mosshide Mystics|r. Loot them for |cRXP_LOOT_Ironforge Ingot|r
    .complete 25865,1 --Ironforge Ingot (8)
    .mob Mosshide Gnoll
    .mob Mosshide Mystic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.77,26.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .turnin 25857 >>Turn in Hunting Horrorjaw
    .target James Halloran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.93,26.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shilah Slabchisel|r
    .turnin 25865 >>Turn in The Mosshide Job
    .accept 25866 >>Accept Dark Iron Trappers
    .accept 25867 >>Accept Gnoll Escape
    .target Shilah Slabchisel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,38.79,31.90,0
    .goto 56,38.79,31.90,40,0
    .goto 56,40.33,30.07,40,0
    .goto 56,40.81,24.43,40,0
    >>Kill |cRXP_ENEMY_Dark Iron Trappers|r and |cRXP_ENEMY_Rufus Darkshots|r. Loot them for |cRXP_LOOT_Trapper's Key|r
    >>Kill |cRXP_ENEMY_Dark Iron Trappers|r
    .collect 56081,1,25867,1 --Trapper's Key (1)
    .complete 25866,1 --Dark Iron Trapper slain (10)
    .mob Dark Iron Trapper
    .mob Rufus Darkshot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,43.04,32.56,0
    .goto 56,43.04,32.56,40,0
    .goto 56,43.84,34.86,40,0
    .goto 56,45.17,31.66,40,0
    .goto 56,45.43,34.95,40,0
    .goto 56,45.74,34.26,40,0
    >>Obtain Trapper's Keys from Dark Iron Trappers and use them to free 6 Gnolls from the Gnoll Cages.
    .complete 25867,1 --Captured Mosshide
    .target Captured Mosshide
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.93,26.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shilah Slabchisel|r
    .turnin 25866 >>Turn in Dark Iron Trappers
    .turnin 25867 >>Turn in Gnoll Escape
    .accept 25868 >>Accept Yorla Darksnare
    .target Shilah Slabchisel
step
    .goto 56,11.86,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derina Rumdnul|r
    .turnin 25820 >>Turn in A Mother's Worries
    .target Derina Rumdnul
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glorin Steelbrow|r
    .turnin 25819 >>Turn in The Eye of Paleth
    .target Glorin Steelbrow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,11.09,57.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karl Boran|r
    .turnin 25805 >>Turn in Return the Statuette
    .turnin 25801 >>Turn in Claws from the Deep
    .target Karl Boran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,10.52,55.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Stoutfist|r
    .accept 26980 >>Accept Swiftgear Station
    .target Captain Stoutfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Cedric Bronzeflint's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.84,39.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .accept 25853 >>Accept Tooling Around
    .target Merrin Rockweaver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.93,39.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 25849 >>Turn in When Archaeology Attacks
    .accept 26189 >>Accept The Angerfang Menace
    .target Prospector Whelgar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.62,39.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .accept 25850 >>Accept Strike the Earth!
    .target Ormer Ironbraid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,34.56,45.16,0
    .goto 56,34.56,45.16,40,0
    .goto 56,33.29,48.28,40,0
    .goto 56,38.31,51.61,40,0
    >>Pick up |cRXP_PICK_Archaeologist's Tools|r from the ground
    >>Kill |cRXP_ENEMY_Paleolithic Elementals|r
    .complete 25853,1 --Archaeologist's Tools (6)
    .complete 25850,1 --Paleolithic Elemental slain (7)
    .mob Paleolithic Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,52.11,48.76,0
    .goto 56,52.11,48.76,40,0
    .goto 56,53.18,54.49,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Raiders|r, |cRXP_ENEMY_Dragonmaw Swamprunners|r, |cRXP_ENEMY_Dragonmaw Centurions|r and |cRXP_ENEMY_Dragonmaw Shadowwarders|r
    >>Kill |cRXP_ENEMY_Gorfax Angerfang|r
    .complete 26189,2 --Dragonmaw Raider (8)
    .complete 26189,1 --Gorfax Angerfang slain (1)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Centurion
    .mob Dragonmaw Shadowwarder
    .mob Gorfax Angerfang
step
    .goto 56,49.80,18.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .accept 26327 >>Accept Anvilmar the Hero
    .target Longbraid the Grim
step
    .goto 56,49.44,17.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thargas Anvilmar|r
    .turnin 26327 >>Turn in Anvilmar the Hero
    .accept 26127 >>Accept The Twilight's Hammer Revealed << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Thargas Anvilmar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,47.69,16.08,0
    .goto 56,47.69,16.08,40,0
    .goto 56,46.94,17.46,40,0
    >>Kill |cRXP_ENEMY_Twilight Converts|r
    .complete 26127,1 --Twilight Convert slain (8)
    .mob Twilight Convert
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,49.44,17.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thargas Anvilmar|r
    .turnin 26127 >>Turn in The Twilight's Hammer Revealed
    .accept 26128 >>Accept The Battle of Thandol Span
    .target Thargas Anvilmar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,51.12,9.14
    >>Kill |cRXP_ENEMY_Calamoth Ashbeard|r
    .complete 26128,1 --Calamoth Ashbeard slain (1)
    .mob Calamoth Ashbeard
step
    .goto 56,49.44,17.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thargas Anvilmar|r
    .turnin 26128 >>Turn in The Battle of Thandol Span << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26139 >>Accept Into Arathi
    .target Thargas Anvilmar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,41.23,21.96
    >>Kill |cRXP_ENEMY_Yorla Darksnare|r
    .complete 25868,1 --Yorla Darksnare slain (1)
    .mob Yorla Darksnare
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,26.93,26.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shilah Slabchisel|r
    .turnin 25868 >>Turn in Yorla Darksnare
    .turnin 26980 >>Turn in Swiftgear Station
    .accept 26981 >>Accept Whelgar's Retreat
    .target Shilah Slabchisel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.62,39.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormer Ironbraid|r
    .turnin 25850 >>Turn in Strike the Earth!
    .target Ormer Ironbraid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.84,39.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrin Rockweaver|r
    .turnin 25853 >>Turn in Tooling Around
    .target Merrin Rockweaver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,38.93,39.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 26981 >>Turn in Whelgar's Retreat
    .turnin 26189 >>Turn in The Angerfang Menace
    .accept 26195 >>Accept Who Wards The Greenwarden
    .target Prospector Whelgar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,56.33,40.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .accept 25926 >>Accept Mired in Hatred
    .target Rethiel the Greenwarden
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,56.43,39.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ferilon Leafborn|r
    .turnin 26195 >>Turn in Who Wards The Greenwarden
    .target Ferilon Leafborn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,56.36,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Iczelia|r
    .accept 26120 >>Accept The Crazed Dragonmaw
    .target Huntress Iczelia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,55.06,33.96,0
    .goto 56,55.06,33.96,40,0
    .goto 56,53.15,35.79,40,0
    >>Kill |cRXP_ENEMY_Mouldering Mirebeasts|r
    .complete 25926,1 --Mouldering Mirebeast slain (10)
    .mob Mouldering Mirebeast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,56.33,40.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 25926 >>Turn in Mired in Hatred
    .accept 25927 >>Accept The Threat of Flame
    .target Rethiel the Greenwarden
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,56.43,39.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ferilon Leafborn|r
    .accept 25939 >>Accept For Peat's Sake
    .target Ferilon Leafborn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,57.28,33.95,0
    .goto 56,57.28,33.95,40,0
    .goto 56,61.10,30.29,40,0
    .goto 56,62.78,35.05,40,0
    >>Kill |cRXP_ENEMY_Rampant Fire Elementals|r
    .complete 25927,1 --Rampant Fire Elemental slain (8)
    .mob Rampant Fire Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,63.48,27.21,0
    .goto 56,63.48,27.21,40,0
    .goto 56,62.13,26.52,40,0
    .goto 56,61.64,29.03,40,0
    .goto 56,60.70,28.07,40,0
    .goto 56,59.97,29.08,40,0
    .goto 56,58.94,28.30,40,0
    .goto 56,57.71,25.62,40,0
    .goto 56,57.37,28.91,40,0
    .goto 56,56.80,26.82,40,0
    >>Interact with |cRXP_FRIENDLY_Marsh Fire Bunny|r
    .complete 25939,1 --Marsh Fire Bunny
    .target Marsh Fire Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 56,61.13,44.81,0
    .goto 56,61.13,44.81,40,0
    .goto 56,62.80,45.95,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Whelpstealers|r
    .complete 26120,1 --Dragonmaw Whelpstealer slain (12)
    .mob Dragonmaw Whelpstealer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,56.33,40.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rethiel the Greenwarden|r
    .turnin 25927 >>Turn in The Threat of Flame
    .target Rethiel the Greenwarden
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,56.43,39.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ferilon Leafborn|r
    .turnin 25939 >>Turn in For Peat's Sake
    .accept 26196 >>Accept Longbraid the Grim
    .target Ferilon Leafborn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,56.36,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Iczelia|r
    .turnin 26120 >>Turn in The Crazed Dragonmaw
    .target Huntress Iczelia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 56,49.80,18.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longbraid the Grim|r
    .turnin 26196 >>Turn in Longbraid the Grim
    .target Longbraid the Grim
step
    +|cRXP_WARN_End of the Wetlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Into Arathi
step
    +|cRXP_WARN_Suggested next zones at level 25|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.4 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.8 levels of quests, starting around Skuerto; 1 quest from here hands in there). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
