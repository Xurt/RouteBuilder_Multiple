-- 2-11 Elwynn Forest: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Elwynn Forest.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 2-11 Elwynn Forest
--RouteBuilder:next
#next Zone Routes (Alliance)\10-13 Darkshore: around Ranger Glynda Nal'Shea

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 84 >>Travel to Stormwind City
    .zoneskip 84
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 84,63.77,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r
    .accept 332 >>Accept Wine Shop Advert
    .target Renato Gallina
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 84,62.32,67.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlan Bagley|r
    .accept 333 >>Accept Harlan Needs a Resupply
    .target Harlan Bagley
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 84,58.10,67.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rema Schneider|r
    .turnin 333 >>Turn in Harlan Needs a Resupply
    .accept 334 >>Accept Package for Thurman
    .target Rema Schneider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 84,60.28,76.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzetta Gallina|r
    .turnin 332 >>Turn in Wine Shop Advert
    .target Suzetta Gallina
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 84,52.59,83.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Schneider|r
    .turnin 334 >>Turn in Package for Thurman
    .target Thurman Schneider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 37 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 37
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >>Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 7 >>Grind to level 7 (Riverpaw Gnoll Bounty needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 11 >>Accept Riverpaw Gnoll Bounty
    .target Deputy Rainer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop123x1
    >>|cRXP_LOOT_Gold Pickup Schedule|r can drop from |cRXP_ENEMY_Riverpaw Runt|r, |cRXP_ENEMY_Gruff Swiftbite|r, |cRXP_ENEMY_Riverpaw Outrunner|r. Use it to start the quest if you get one
    .collect 1307,1,123 --Gold Pickup Schedule (1)
    .accept 123 >>Accept The Collector
    .use 1307
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop123x1
    #loop
    .goto 37,27.63,81.40,0
    .goto 37,27.63,81.40,40,0
    .goto 37,27.70,86.13,40,0
    .goto 37,31.02,80.28,40,0
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for |cRXP_LOOT_Painted Gnoll Armband|r
    .complete 11,1 --Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >>Turn in Riverpaw Gnoll Bounty
    .target Deputy Rainer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >>Turn in Report to Goldshire
    .target Marshal Dughan
    .isOnQuest 54
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 62 >>Accept The Fargodeep Mine
    .target Marshal Dughan
step << Human
    .goto 37,41.71,65.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 26393 >>Accept A Swift Message
    .target Smith Argus
step << Human
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r
    .turnin 26393 >>Turn in A Swift Message
    .accept 26394 >>Accept Continue to Stormwind
    .target Bartlett the Brave
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,43.32,65.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >>Accept Kobold Candles
    .target William Pestle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158 >>Turn in Rest and Relaxation
    .target Innkeeper Farley
    .isOnQuest 2158
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >>Accept Gold Dust Exchange
    .target Remy "Two Times"
    .xp <4,1
step
    .goto 37,44.24,65.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toddrick|r
    .target Toddrick
    .home >>Set your Hearthstone to Toddrick's inn
step << Human
    #completewith next
    .zone 84 >>Travel to Stormwind City
    .zoneskip 84
step << Human
    .goto 84,77.17,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 26394 >>Turn in Continue to Stormwind
    .target Osric Strang
step << Human
    .xp 5 >>Grind to level 5 (Dungar Longdrink needs it)
step << Human
    .goto 84,77.17,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osric Strang|r
    .accept 26395 >>Accept Dungar Longdrink
    .target Osric Strang
step << Human
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .turnin 26395 >>Turn in Dungar Longdrink
    .accept 26396 >>Accept Return to Argus
    .target Dungar Longdrink
step << Human
    #completewith next
    .zone 37 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 37
step << Human
    #completewith next
    .hs >>Hearth to Toddrick's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human
    .goto 37,41.71,65.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .turnin 26396 >>Turn in Return to Argus
    .target Smith Argus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >>Accept Gold Dust Exchange
    .target Remy "Two Times"
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,34.49,84.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >>Accept Lost Necklace
    .target "Auntie" Bernice Stonefield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,43.13,85.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >>Turn in Lost Necklace
    .accept 86 >>Accept Pie for Billy
    .target Billy Maclure
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along22
    >>As you go: Kill |cRXP_ENEMY_Stonetusk Boars|r and |cRXP_ENEMY_Rockhide Boars|r. Loot them for |cRXP_LOOT_Tender Boar Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
    .mob Rockhide Boar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,43.15,89.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >>Accept Young Lovers
    .target Maybell Maclure
step
    .goto 37,41.69,86.91
    .xp 6 >> Grind to level 6
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along22
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >>Accept Princess Must Die!
    .target Ma Stonefield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 37,32.18,85.86,0
    .goto 37,32.18,85.86,40,0
    .goto 37,31.44,80.89,40,0
    >>Kill |cRXP_ENEMY_Princess|r and loot |cRXP_LOOT_Brass Collar|r
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r and |cRXP_ENEMY_Rockhide Boars|r. Loot them for |cRXP_LOOT_Tender Boar Meat|r
    .complete 88,1 --Brass Collar (1)
    .complete 86,1 --Tender Boar Meat (4)
    .mob Princess
    .mob Stonetusk Boar
    .mob Rockhide Boar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,29.84,86.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >>Turn in Young Lovers
    .accept 111 >>Accept Speak with Gramma
    .target Tommy Joe Stonefield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >>Turn in Princess Must Die!
    .target Ma Stonefield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,34.49,84.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >>Turn in Pie for Billy
    .accept 84 >>Accept Back to Billy
    .target "Auntie" Bernice Stonefield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along27
    >>As you go: Kill |cRXP_ENEMY_Kobold Miners|r, |cRXP_ENEMY_Goldtooths|r, |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Geomancers|r. Loot them for |cRXP_LOOT_Large Candle|r. Kill |cRXP_ENEMY_Kobold Miners|r, |cRXP_ENEMY_Goldtooths|r, |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Geomancers|r. Loot them for |cRXP_LOOT_Gold Dust|r. |cRXP_WARN_Anything left is finished later|r
    .complete 60,1 --Large Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Miner
    .mob Goldtooth
    .mob Kobold Tunneler
    .mob Kobold Geomancer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along27
    .goto 37,34.94,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r
    .turnin 111 >>Turn in Speak with Gramma
    .accept 107 >>Accept Note to William
    .target Gramma Stonefield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,43.13,85.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >>Turn in Back to Billy
    .accept 87 >>Accept Goldtooth
    .target Billy Maclure
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 37,39.07,82.63,0
    .goto 37,39.07,82.63,40,0
    .goto 37,36.78,83.61,40,0
    .goto 37,41.16,78.73,40,0
    >>Kill |cRXP_ENEMY_Goldtooth|r and loot |cRXP_LOOT_Bernice's Necklace|r
    >>Kill |cRXP_ENEMY_Kobold Miners|r, |cRXP_ENEMY_Goldtooths|r, |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Geomancers|r. Loot them for |cRXP_LOOT_Large Candle|r
    >>Kill |cRXP_ENEMY_Kobold Miners|r, |cRXP_ENEMY_Goldtooths|r, |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Geomancers|r. Loot them for |cRXP_LOOT_Gold Dust|r
    .complete 87,1 --Bernice's Necklace (1)
    .complete 60,1 --Large Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Goldtooth
    .mob Kobold Miner
    .mob Kobold Tunneler
    .mob Kobold Geomancer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,40.01,81.42
    >>Scout through the Fargodeep Mine
    .complete 62,1 --Scout through the Fargodeep Mine
step
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25,20,0
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25
    .xp 6+2275 >> Grind to 2275+/3600xp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,34.49,84.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >>Turn in Goldtooth
    .target "Auntie" Bernice Stonefield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Toddrick's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 37,43.32,65.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >>Turn in Kobold Candles << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 107 >>Turn in Note to William << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 112 >>Accept Collecting Kelp << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26150 >>Accept A Visit With Maybell
    .target William Pestle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 47 >>Turn in Gold Dust Exchange
    .accept 40 >>Accept A Fishy Peril
    .target Remy "Two Times"
step << Hunter cata
    .goto 37,40.854,65.902
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Benjamin Foxworthy|r
    .trainer >> Train your class spells
    .target Benjamin Foxworthy
step << Paladin cata
    .goto 37,41.074,65.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
step << Warrior cata
    .goto 37,41.069,65.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
step << Warlock cata
    .goto 37,44.389,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Train your class spells
    .target Maximillian Crowe
step << Mage cata
    .goto 37,43.246,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Train your class spells
    .target Zaldimar Wefhellt
step << Priest cata
    .goto 37,43.282,65.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .trainer >> Train your class spells
    .target Priestess Josetta
step << Rogue cata
    .goto 37,43.872,65.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Train your class spells
    .target Keryn Sylvius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >>Turn in A Fishy Peril
    .turnin 62 >>Turn in The Fargodeep Mine
    .accept 35 >>Accept Further Concerns
    .accept 76 >>Accept The Jasperlode Mine
    .target Marshal Dughan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 37,55.43,66.80,0
    .goto 37,55.43,66.80,40,0
    .goto 37,56.24,63.57,40,0
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for |cRXP_LOOT_Crystal Kelp Frond|r
    .complete 112,1 --Crystal Kelp Frond (4)
    .mob Murloc
    .mob Murloc Streamrunner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,60.53,50.18
    >>Scout through the Jasperlode Mine
    .complete 76,1 --Scout through the Jasperlode Mine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,74.03,72.31
    >>Click the |cRXP_PICK_Bounty Board|r
    .accept 26152 >>Accept Wanted: James Clark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,73.97,72.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >>Turn in Further Concerns
    .accept 37 >>Accept Find the Lost Guards
    .accept 52 >>Accept Protect the Frontier
    .target Guard Thomas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,74.03,72.31
    >>Click the |cRXP_PICK_Bounty Board|r
    .accept 46 >>Accept Bounty on Murlocs
    .xp <7,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Young Forest Bears|r. |cRXP_WARN_Anything left is finished later|r
    .complete 52,1 --Young Forest Bear slain (8)
    .mob Young Forest Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Gray Forest Wolfs|r, |cRXP_ENEMY_Gonzalezs|r, |cRXP_ENEMY_Greypaws|r and |cRXP_ENEMY_Prowlers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 52,2 --Gray Forest Wolf (5)
    .mob Gray Forest Wolf
    .mob Gonzalez
    .mob Greypaw
    .mob Prowler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along39
    .goto 37,72.66,60.34
    >>Click the |cRXP_PICK_A half-eaten body|r
    .turnin 37 >>Turn in Find the Lost Guards
    .accept 45 >>Accept Discover Rolf's Fate
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop123x2
    >>|cRXP_LOOT_Gold Pickup Schedule|r can drop from |cRXP_ENEMY_Riverpaw Runt|r, |cRXP_ENEMY_Gruff Swiftbite|r, |cRXP_ENEMY_Riverpaw Outrunner|r. Use it to start the quest if you get one
    .collect 1307,1,123 --Gold Pickup Schedule (1)
    .accept 123 >>Accept The Collector
    .use 1307
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop123x2
    .goto 37,78.61,67.13
    >>Kill |cRXP_ENEMY_James Clark|r and loot |cRXP_LOOT_James Clark's Head|r
    .complete 26152,1 --James Clark's Head (1)
    .mob James Clark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,81.38,66.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >>Accept A Bundle of Trouble
    .target Supervisor Raelen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,81.86,66.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McCree|r
    .turnin 26152 >>Turn in Wanted: James Clark
    .target Marshal McCree
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,81.86,66.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McCree|r
    .turnin 123 >>Turn in The Collector
    .target Marshal McCree
    .isOnQuest 123
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,81.86,66.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McCree|r
    .accept 147 >>Accept Manhunt
    .target Marshal McCree
    .isQuestTurnedIn 123 --any of: The Collector
    .xp <7,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,79.80,55.50
    >>Click the |cRXP_PICK_Rolf's corpse|r
    .turnin 45 >>Turn in Discover Rolf's Fate
    .accept 71 >>Accept Report to Thomas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 37,81.40,58.80,0
    .goto 37,81.40,58.80,40,0
    .goto 37,78.40,61.40,40,0
    >>Kill |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Young Forest Bear slain (8)
    .mob Young Forest Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 37,76.26,63.50,0
    .goto 37,76.26,63.50,40,0
    .goto 37,72.26,64.82,40,0
    >>Kill |cRXP_ENEMY_Gray Forest Wolfs|r, |cRXP_ENEMY_Gonzalezs|r, |cRXP_ENEMY_Greypaws|r and |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Gray Forest Wolf (5)
    .mob Gray Forest Wolf
    .mob Gonzalez
    .mob Greypaw
    .mob Prowler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 37,77.28,59.51,0
    .goto 37,77.28,59.51,40,0
    .goto 37,80.88,53.87,40,0
    .goto 37,83.85,60.48,40,0
    >>Pick up |cRXP_PICK_Bundle of Wood|r from the ground
    .complete 5545,1 --Bundle of Wood (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,73.97,72.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 52 >>Turn in Protect the Frontier
    .turnin 71 >>Turn in Report to Thomas
    .accept 59 >>Accept Cloth and Leather Armor
    .target Guard Thomas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,74.03,72.31
    >>Click the |cRXP_PICK_Bounty Board|r
    .accept 46 >>Accept Bounty on Murlocs
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,79.46,68.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >>Accept Fine Linen Goods
    .target Sara Timberlain
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,79.46,68.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >>Turn in Cloth and Leather Armor while you are here
    .isQuestComplete 59
    .target Sara Timberlain
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along52
    >>As you go: Kill |cRXP_ENEMY_Bandits|r, |cRXP_ENEMY_Morgan the Collectors|r, |cRXP_ENEMY_Rogue Wizards|r and |cRXP_ENEMY_Ambushers|r. Loot them for |cRXP_LOOT_Linen Scrap|r. |cRXP_WARN_Anything left is finished later|r
    .complete 83,1 --Linen Scrap (6)
    .mob Bandit
    .mob Morgan the Collector
    .mob Rogue Wizard
    .mob Ambusher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along52
    .goto 37,71.01,80.77
    >>Kill |cRXP_ENEMY_Morgan the Collector|r and loot |cRXP_LOOT_The Collector's Ring|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
    .isOnQuest 147
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,79.46,68.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >>Turn in Cloth and Leather Armor
    .target Sara Timberlain
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,81.38,66.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >>Turn in A Bundle of Trouble
    .target Supervisor Raelen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 37,77.58,81.95,0
    .goto 37,77.58,81.95,40,0
    .goto 37,76.75,85.53,40,0
    >>Kill |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for |cRXP_LOOT_Torn Murloc Fin|r
    .complete 46,1 --Torn Murloc Fin (8)
    .mob Murloc Forager
    .mob Murloc Lurker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 37,70.86,78.11,0
    .goto 37,70.86,78.11,40,0
    .goto 37,68.38,81.99,40,0
    >>Kill |cRXP_ENEMY_Bandits|r, |cRXP_ENEMY_Morgan the Collectors|r, |cRXP_ENEMY_Rogue Wizards|r and |cRXP_ENEMY_Ambushers|r. Loot them for |cRXP_LOOT_Linen Scrap|r
    .complete 83,1 --Linen Scrap (6)
    .mob Bandit
    .mob Morgan the Collector
    .mob Rogue Wizard
    .mob Ambusher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,73.97,72.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 46 >>Turn in Bounty on Murlocs
    .target Guard Thomas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,79.46,68.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >>Turn in Fine Linen Goods
    .target Sara Timberlain
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,81.86,66.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McCree|r
    .turnin 147 >>Turn in Manhunt
    .target Marshal McCree
    .isOnQuest 147
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Toddrick's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,43.32,65.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >>Turn in Collecting Kelp
    .accept 114 >>Accept The Escape
    .target William Pestle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 76 >>Turn in The Jasperlode Mine
    .accept 239 >>Accept Westbrook Garrison Needs Help!
    .target Marshal Dughan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 26378 >>Accept Hero's Call: Westfall!
    .target Marshal Dughan
    .xp <9,1
step
    .goto 37,43.15,89.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 26150 >>Turn in A Visit With Maybell
    .turnin 114 >>Turn in The Escape << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Maybell Maclure
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,24.55,74.69
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 176 >>Accept Wanted:  "Hogger"
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,25.02,92.90
    >>Kill |cRXP_ENEMY_Hogger|r
    .complete 176,1 --Hogger slain (1)
    .mob Hogger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 9 >>Grind to level 9 (Furlbrow's Deed needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,24.78,95.26
    >>Click the |cRXP_PICK_Westfall Deed|r
    .accept 184 >>Accept Furlbrow's Deed
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >>Turn in Wanted:  "Hogger"
    .accept 26378 >>Accept Hero's Call: Westfall!
    .target Marshal Dughan
step << Pandaren
    #completewith next
    .zone 84 >>Travel to Stormwind City
    .zoneskip 84
step << Pandaren
    .goto 84,74.20,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .turnin 31450 >>Turn in A New Fate
    .target Aysa Cloudsinger
    .isQuestComplete 31450
step << Pandaren
    .goto 84,74.20,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r
    .accept 30987 >>Accept Joining the Alliance
    .target Aysa Cloudsinger
    .isQuestTurnedIn 31450 --any of: A New Fate
    .xp <5,1
step << Pandaren
    .goto 84,85.79,31.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Varian Wrynn|r
    .turnin 30987 >>Turn in Joining the Alliance
    .target King Varian Wrynn
    .isOnQuest 30987
step << Pandaren
    .goto 84,85.79,31.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Varian Wrynn|r
    .accept 30988 >>Accept The Alliance Way
    .target King Varian Wrynn
    .isQuestTurnedIn 30987 --any of: Joining the Alliance
    .xp <5,1
step << Pandaren
    .goto 84,85.79,31.70
    >>Walk with King Varian Wrynn.
    .complete 30988,1 --Walk With Varian Credit (1)
    .isOnQuest 30988
step << Pandaren
    .goto 84,82.59,28.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Varian Wrynn|r
    .turnin 30988 >>Turn in The Alliance Way
    .target King Varian Wrynn
    .isOnQuest 30988
step << Pandaren
    .goto 84,82.59,28.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Varian Wrynn|r
    .accept 30989 >>Accept An Old Pit Fighter
    .target King Varian Wrynn
    .isQuestTurnedIn 30988 --any of: The Alliance Way
    .xp <5,1
step << Pandaren
    .goto 84,82.59,28.08
    >>Interact with |cRXP_FRIENDLY_King Varian Wrynn|r
    .complete 30989,1 --King Varian Wrynn
    .target King Varian Wrynn
    .isOnQuest 30989
step << Pandaren
    .goto 84,85.79,31.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Varian Wrynn|r
    .turnin 30989 >>Turn in An Old Pit Fighter
    .target King Varian Wrynn
    .isOnQuest 30989
step
    +|cRXP_WARN_End of the Elwynn Forest route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Westfall|r: Furlbrow's Deed, Hero's Call: Westfall! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 9|r: |cRXP_FRIENDLY_Darkshore|r (about 1.0 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
