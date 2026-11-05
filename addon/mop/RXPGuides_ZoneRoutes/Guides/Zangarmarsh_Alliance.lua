-- 62-65 Zangarmarsh: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 62, 66).
-- Split into 2 guides, listed under "62 - 67 Zangarmarsh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Zangarmarsh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 62 - 67 Zangarmarsh
#subweight -62
#name 62-64 Zangarmarsh: around Ysiel Windsinger
--RouteBuilder:next
#next Zone Routes (Alliance)\62-65 Terokkar Forest: around Earthbinder Tavgren

step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9778 >>Accept Warden Hamoot
    .accept 9716 >>Accept Disturbance at Umbrafen Lake
    .target Ysiel Windsinger
step
    .goto 102,67.83,51.46
    >>Travel to Telredor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Munci|r
    .fp Telredor >> Get the Telredor flight path
    .target Munci
step
    .goto 102,80.40,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
    .accept 9747 >>Accept The Umbrafen Tribe
    .target Ikeyen
step
    .goto 102,80.32,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
    .accept 9802 >>Accept Plants of Zangarmarsh
    .target Lauranna Thar'well
step
    .goto 102,79.08,64.88
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9817 >>Accept Leader of the Bloodscale
    .accept 9730 >>Accept Leader of the Darkcrest
step
    .goto 102,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9778 >>Turn in Warden Hamoot
    .accept 9728 >>Accept A Warm Welcome
    .target Warden Hamoot
step
    .goto 102,78.53,63.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lethyn Moonfire|r
    .accept 9895 >>Accept The Dying Balance
    .target Lethyn Moonfire
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9912 >>Turn in The Cenarion Expedition
    .target Ysiel Windsinger
    .isOnQuest 9912
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.34,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
    .accept 9782 >>Accept The Dead Mire
    .target Vindicator Idaar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.20,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
    .accept 9786 >>Accept The Boha'mu Ruins
    .target Anchorite Ahuurn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.63,48.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
    .accept 9777 >>Accept Fulgor Spores
    .target Ruam
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along12
    >>As you go: Pick up |cRXP_PICK_Fulgor Spore|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9777,1 --Fulgor Spore (6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,67.81,47.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haalrun|r
    .accept 9781 >>Accept Too Many Mouths to Feed
    .target Haalrun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,67.64,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noraani|r
    .accept 9791 >>Accept Menacing Marshfangs
    .target Noraani
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.20,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
    .accept 9776 >>Accept The Orebor Harborage
    .target Anchorite Ahuurn
    .xp <62,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.34,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
    .accept 9793 >>Accept The Fate of Tuurem
    .target Vindicator Idaar
    .xp <62,1
step
    #label Along12
    .goto 102,64.55,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alliance Field Scout|r
    .target Alliance Field Scout
    .home >>Set your Hearthstone to Alliance Field Scout's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 102,65.80,47.50,0
    .goto 102,65.80,47.50,40,0
    .goto 102,67.70,53.40,40,0
    >>Pick up |cRXP_PICK_Fulgor Spore|r from the ground
    .complete 9777,1 --Fulgor Spore (6)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,80.53,43.51
    >>Open the |cRXP_PICK_Dead Mire Soil|r. Loot it for |cRXP_LOOT_Dead Mire Soil Sample|r
    .complete 9782,1 --Dead Mire Soil Sample (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 102,83.91,47.66,0
    .goto 102,83.91,47.66,40,0
    .goto 102,83.46,50.44,40,0
    .goto 102,74.72,54.47,40,0
    .goto 102,77.99,50.54,40,0
    >>Kill |cRXP_ENEMY_Marshfang Rippers|r
    .complete 9791,1 --Marshfang Ripper slain (10)
    .mob Marshfang Ripper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,67.64,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noraani|r
    .turnin 9791 >>Turn in Menacing Marshfangs
    .target Noraani
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.63,48.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
    .turnin 9777 >>Turn in Fulgor Spores while you are here
    .isQuestComplete 9777
    .target Ruam
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.34,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
    .turnin 9782 >>Turn in The Dead Mire while you are here
    .isQuestComplete 9782
    .target Vindicator Idaar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.56,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Conall|r
    .accept 9901 >>Accept Unfinished Business
    .target Prospector Conall
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.20,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
    .accept 9776 >>Accept The Orebor Harborage
    .target Anchorite Ahuurn
    .xp <62,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.34,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
    .accept 9793 >>Accept The Fate of Tuurem
    .target Vindicator Idaar
    .xp <62,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,78.01,45.41
    >>Kill |cRXP_ENEMY_Sporewing|r
    .complete 9901,1 --Sporewing slain (1)
    .mob Sporewing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,67.64,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noraani|r
    .accept 9780 >>Accept Umbrafen Eel Filets
    .target Noraani
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.63,48.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
    .turnin 9777 >>Turn in Fulgor Spores
    .target Ruam
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.56,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Conall|r
    .turnin 9901 >>Turn in Unfinished Business
    .accept 9896 >>Accept Blacksting's Bane
    .target Prospector Conall
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.34,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
    .turnin 9782 >>Turn in The Dead Mire
    .accept 9783 >>Accept An Unnatural Drought
    .target Vindicator Idaar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.34,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
    .accept 9793 >>Accept The Fate of Tuurem
    .target Vindicator Idaar
    .xp <62,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.20,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
    .accept 9776 >>Accept The Orebor Harborage
    .target Anchorite Ahuurn
    .xp <62,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop9827x1
    >>|cRXP_LOOT_Withered Basidium|r can drop from |cRXP_ENEMY_Withered Giant|r. Use it to start the quest if you get one
    .collect 24483,1,9827 --Withered Basidium (1)
    .accept 9827 >>Accept Withered Basidium
    .use 24483
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop9827x1
    #loop
    .goto 102,80.90,32.92,0
    .goto 102,80.90,32.92,40,0
    .goto 102,84.00,35.19,40,0
    .goto 102,84.79,40.20,40,0
    >>Kill |cRXP_ENEMY_Withered Giants|r
    .complete 9783,1 --Withered Giant slain (12)
    .mob Withered Giant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Mire Hydras|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9781,1 --Mire Hydra slain (10)
    .mob Mire Hydra
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along24
    #loop
    .goto 102,76.75,68.45,0
    .goto 102,76.75,68.45,40,0
    .goto 102,73.59,72.95,40,0
    >>Kill |cRXP_ENEMY_Umbrafen Eels|r. Loot them for |cRXP_LOOT_Eel Filet|r
    .complete 9780,1 --Eel Filet (8)
    .mob Umbrafen Eel
step
    #completewith Drop9731x1
    >>|cRXP_LOOT_Drain Schematics|r can drop from |cRXP_ENEMY_Bloodscale Enchantress|r, |cRXP_ENEMY_Bloodscale Slavedriver|r, |cRXP_ENEMY_Steam Pump Overseer|r. Use it to start the quest if you get one
    .collect 24330,1,9731 --Drain Schematics (1)
    .accept 9731 >>Accept Drain Schematics
    .use 24330
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop9731x1
    >>|cRXP_LOOT_Withered Basidium|r can drop from |cRXP_ENEMY_Withered Giant|r. Use it to start the quest if you get one
    .collect 24483,1,9827 --Withered Basidium (1)
    .accept 9827 >>Accept Withered Basidium
    .use 24483
step
    #completewith Along26
    >>As you go: Kill |cRXP_ENEMY_Rajis Fyashes|r, |cRXP_ENEMY_Rajah Haghazeds|r, |cRXP_ENEMY_Darkcrest Taskmasters|r and |cRXP_ENEMY_Darkcrest Sirens|r. Loot them for |cRXP_LOOT_Naga Claws|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9728,1 --Naga Claws (30)
    .mob Rajis Fyashe
    .mob Rajah Haghazed
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
step
    #label Drop9731x1
    #loop
    .goto 102,70.05,73.24,0
    .goto 102,70.05,73.24,40,0
    .goto 102,73.91,71.26,40,0
    .goto 102,73.07,83.48,40,0
    .goto 102,70.05,80.30,40,0
    >>Kill |cRXP_ENEMY_Darkcrest Taskmasters|r, |cRXP_ENEMY_Darkcrest Sirens|r, |cRXP_ENEMY_Bloodscale Enchantress|r and |cRXP_ENEMY_Bloodscale Slavedrivers|r. Loot them for |cRXP_LOOT_Unidentified Plant Parts|r. It can also be picked up from |cRXP_PICK_Ragveil|r on the ground
    .complete 9802,1 --Unidentified Plant Parts (10)
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
    .mob Bloodscale Enchantress
    .mob Bloodscale Slavedriver
step
    #label Along26
    .goto 102,70.89,80.51
    >>Umbrafen Lake Investigated
    .complete 9716,1 --Umbrafen Lake Investigated
step
    #completewith Along27
    >>As you go: Kill |cRXP_ENEMY_Umbrafen Oracles|r. Kill |cRXP_ENEMY_Umbrafen Seers|r. Kill |cRXP_ENEMY_Umbrafen Witchdoctors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9747,2 --Umbrafen Oracle slain (6)
    .complete 9747,3 --Umbrafen Seer slain (8)
    .complete 9747,4 --Umbrafen Witchdoctor slain (6)
    .mob Umbrafen Oracle
    .mob Umbrafen Seer
    .mob Umbrafen Witchdoctor
step
    #label Along27
    .goto 102,85.29,90.93
    >>Kill |cRXP_ENEMY_Kataru|r
    .complete 9747,1 --Kataru slain (1)
    .mob Kataru
step
    #loop
    .goto 102,84.26,89.91,0
    .goto 102,84.26,89.91,40,0
    .goto 102,82.80,84.96,40,0
    .goto 102,84.88,81.96,40,0
    >>Kill |cRXP_ENEMY_Umbrafen Oracles|r
    >>Kill |cRXP_ENEMY_Umbrafen Seers|r
    >>Kill |cRXP_ENEMY_Umbrafen Witchdoctors|r
    .complete 9747,2 --Umbrafen Oracle slain (6)
    .complete 9747,3 --Umbrafen Seer slain (8)
    .complete 9747,4 --Umbrafen Witchdoctor slain (6)
    .mob Umbrafen Oracle
    .mob Umbrafen Seer
    .mob Umbrafen Witchdoctor
step
    .goto 102,83.38,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayra Longmane|r
    .accept 9752 >>Accept Escape from Umbrafen
    .target Kayra Longmane
step
    .goto 102,79.76,71.09
    >>Escort Kayra Longmane to safety
    .complete 9752,1 --Escort Kayra Longmane to safety
step
    .goto 102,82.07,71.39
    >>Kill |cRXP_ENEMY_Boglash|r
    .complete 9895,1 --Boglash slain (1)
    .mob Boglash
step
    .goto 102,80.40,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
    .turnin 9747 >>Turn in The Umbrafen Tribe
    .accept 9788 >>Accept A Damp, Dark Place
    .target Ikeyen
step
    .goto 102,80.32,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
    .turnin 9802 >>Turn in Plants of Zangarmarsh
    .accept 10096 >>Accept Saving the Sporeloks
    .target Lauranna Thar'well
step
    .goto 102,80.37,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Blackhoof|r
    .accept 9894 >>Accept Safeguarding the Watchers
    .target Windcaller Blackhoof
step
    .goto 102,78.53,63.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lethyn Moonfire|r
    .turnin 9895 >>Turn in The Dying Balance
    .target Lethyn Moonfire
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9752 >>Turn in Escape from Umbrafen
    .turnin 9716 >>Turn in Disturbance at Umbrafen Lake
    .accept 9718 >>Accept As the Crow Flies
    .target Ysiel Windsinger
step
    .goto 102,78.40,62.02
    >>Use the Stormcrow Amulet and explore the lakes of Zangarmarsh
    .complete 9718,1 --Use the Stormcrow Amulet and explore the lakes of Zangarmarsh
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9718 >>Turn in As the Crow Flies
    .accept 9720 >>Accept Balance Must Be Preserved
    .target Ysiel Windsinger
step
    #loop
    .goto 102,76.60,91.94,0
    .goto 102,76.60,91.94,40,0
    .goto 102,74.54,93.52,40,0
    >>Kill |cRXP_ENEMY_Marsh Dredgers|r
    >>Kill |cRXP_ENEMY_Marsh Lurkers|r
    .complete 10096,1 --Marsh Dredger slain (10)
    .complete 10096,2 --Marsh Lurker slain (10)
    .mob Marsh Dredger
    .mob Marsh Lurker
step
    .goto 102,72.24,93.89
    >>Kill |cRXP_ENEMY_Lord Klaq|r
    >>Pick up |cRXP_PICK_Ikeyen's Belongings|r from the ground
    .complete 9894,1 --Lord Klaq slain (1)
    .complete 9788,1 --Ikeyen's Belongings (1)
    .mob Lord Klaq
step
    #completewith Along43
    >>As you go: Kill |cRXP_ENEMY_Rajis Fyashes|r, |cRXP_ENEMY_Rajah Haghazeds|r, |cRXP_ENEMY_Darkcrest Taskmasters|r and |cRXP_ENEMY_Darkcrest Sirens|r. Loot them for |cRXP_LOOT_Naga Claws|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9728,1 --Naga Claws (30)
    .mob Rajis Fyashe
    .mob Rajah Haghazed
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
step
    .goto 102,70.60,80.29
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,1 --Umbrafen Steam Pump Credit Marker
    .target Umbrafen Steam Pump Credit Marker
step
    .goto 102,65.10,68.67
    >>Kill |cRXP_ENEMY_Rajah Haghazed|r
    .complete 9730,1 --Rajah Haghazed slain (1)
    .mob Rajah Haghazed
step
    #label Along43
    .goto 102,63.11,64.10
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,4 --Lagoon Steam Pump Credit Marker
    .target Lagoon Steam Pump Credit Marker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 102,54.62,67.33,0
    .goto 102,54.62,67.33,40,0
    .goto 102,54.27,61.12,40,0
    >>Kill |cRXP_ENEMY_Mire Hydras|r
    .complete 9781,1 --Mire Hydra slain (10)
    .mob Mire Hydra
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,49.75,60.06
    >>Kill |cRXP_ENEMY_Blacksting|r and loot |cRXP_LOOT_Blacksting's Stinger|r
    .complete 9896,1 --Blacksting's Stinger (1)
    .mob Blacksting
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,44.13,68.97
    >>Explore the Boha'mu Ruins
    .complete 9786,1 --Explore the Boha'mu Ruins
step
    .goto 102,50.44,40.91
    >>Drain Located
    .complete 9731,1 --Drain Located
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.34,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Idaar|r
    .turnin 9783 >>Turn in An Unnatural Drought
    .accept 9793 >>Accept The Fate of Tuurem
    .target Vindicator Idaar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.20,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
    .turnin 9786 >>Turn in The Boha'mu Ruins
    .accept 9787 >>Accept Idols of the Feralfen
    .accept 9776 >>Accept The Orebor Harborage
    .target Anchorite Ahuurn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.56,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Conall|r
    .turnin 9896 >>Turn in Blacksting's Bane
    .target Prospector Conall
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,67.64,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noraani|r
    .turnin 9780 >>Turn in Umbrafen Eel Filets
    .target Noraani
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,67.81,47.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haalrun|r
    .turnin 9781 >>Turn in Too Many Mouths to Feed
    .accept 9790 >>Accept Diaphanous Wings
    .target Haalrun
step
    .goto 102,80.32,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
    .turnin 10096 >>Turn in Saving the Sporeloks
    .target Lauranna Thar'well
step
    .goto 102,80.40,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
    .turnin 9788 >>Turn in A Damp, Dark Place
    .target Ikeyen
step
    .goto 102,80.37,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Blackhoof|r
    .turnin 9894 >>Turn in Safeguarding the Watchers
    .target Windcaller Blackhoof
step
    .goto 102,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9730 >>Turn in Leader of the Darkcrest
    .target Warden Hamoot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,41.21,28.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timothy Daniels|r
    .accept 9848 >>Accept Secrets of the Daggerfen
    .target Timothy Daniels
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,41.74,27.24
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10116 >>Accept Wanted: Chieftain Mummaki
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,41.94,27.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikuti|r
    .turnin 9776 >>Turn in The Orebor Harborage
    .accept 9835 >>Accept Ango'rosh Encroachment
    .accept 10115 >>Accept Daggerfen Deviance
    .target Ikuti
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along60
    >>As you go: Kill |cRXP_ENEMY_Daggerfen Assassins|r. Kill |cRXP_ENEMY_Daggerfen Muckdwellers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10115,1 --Daggerfen Assassin slain (3)
    .complete 10115,2 --Daggerfen Muckdweller slain (15)
    .mob Daggerfen Assassin
    .mob Daggerfen Muckdweller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along60
    .goto 102,26.40,22.84
    >>Pick up |cRXP_PICK_Daggerfen Poison Vial|r from the ground
    .complete 9848,2 --Daggerfen Poison Vial (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 102,26.62,22.82,0
    .goto 102,26.62,22.82,40,0
    .goto 102,25.07,25.19,40,0
    .goto 102,23.35,22.21,40,0
    >>Kill |cRXP_ENEMY_Chieftain Mummaki|r and loot |cRXP_LOOT_Chieftain Mummaki's Totem|r
    >>Pick up |cRXP_PICK_Daggerfen Poison Manual|r from the ground
    >>Kill |cRXP_ENEMY_Daggerfen Assassins|r
    >>Kill |cRXP_ENEMY_Daggerfen Muckdwellers|r
    .complete 10116,1 --Chieftain Mummaki's Totem (1)
    .complete 9848,1 --Daggerfen Poison Manual (1)
    .complete 10115,1 --Daggerfen Assassin slain (3)
    .complete 10115,2 --Daggerfen Muckdweller slain (15)
    .mob Chieftain Mummaki
    .mob Daggerfen Assassin
    .mob Daggerfen Muckdweller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along62
    >>As you go: Kill |cRXP_ENEMY_Ango'rosh Ogres|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9835,2 --Ango'rosh Ogre slain (10)
    .mob Ango'rosh Ogre
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along62
    #loop
    .goto 102,32.57,28.32,0
    .goto 102,32.57,28.32,40,0
    .goto 102,35.73,27.86,40,0
    >>Kill |cRXP_ENEMY_Ango'rosh Shamans|r
    .complete 9835,1 --Ango'rosh Shaman slain (5)
    .mob Ango'rosh Shaman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 102,31.72,30.54,0
    .goto 102,31.72,30.54,40,0
    .goto 102,30.03,26.92,40,0
    .goto 102,31.58,35.33,40,0
    >>Kill |cRXP_ENEMY_Ango'rosh Ogres|r
    .complete 9835,2 --Ango'rosh Ogre slain (10)
    .mob Ango'rosh Ogre
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,41.94,27.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikuti|r
    .turnin 9835 >>Turn in Ango'rosh Encroachment
    .turnin 10115 >>Turn in Daggerfen Deviance
    .turnin 10116 >>Turn in Wanted: Chieftain Mummaki
    .accept 9839 >>Accept Overlord Gorefist
    .target Ikuti
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,41.21,28.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timothy Daniels|r
    .turnin 9848 >>Turn in Secrets of the Daggerfen
    .target Timothy Daniels
step
    .goto 102,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .accept 9701 >>Accept Observing the Sporelings
    .target Watcher Leesa'oh
step
    .goto 102,19.02,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahssn|r
    .accept 9739 >>Accept The Sporelings' Plight
    .accept 9743 >>Accept Natural Enemies
    .target Fahssn
step
    #completewith Along68
    >>As you go: Kill |cRXP_ENEMY_Withered Giants|r, |cRXP_ENEMY_Starving Fungal Giants|r, |cRXP_ENEMY_Bog Lords|r and |cRXP_ENEMY_Withered Bog Lords|r. Loot them for |cRXP_LOOT_Bog Lord Tendril|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9743,1 --Bog Lord Tendril (6)
    .mob Withered Giant
    .mob Starving Fungal Giant
    .mob Bog Lord
    .mob Withered Bog Lord
step
    #label Along68
    .goto 102,15.10,61.21
    >>Investigate the Spawning Glen
    .complete 9701,1 --Investigate the Spawning Glen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop9827x3
    >>|cRXP_LOOT_Withered Basidium|r can drop from |cRXP_ENEMY_Withered Giant|r. Use it to start the quest if you get one
    .collect 24483,1,9827 --Withered Basidium (1)
    .accept 9827 >>Accept Withered Basidium
    .use 24483
step
    #completewith Drop9827x3
    >>As you go: Pick up |cRXP_PICK_Mature Spore Sac|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9739,1 --Mature Spore Sac (10)
step
    #label Drop9827x3
    #loop
    .goto 102,13.72,61.20,0
    .goto 102,13.72,61.20,40,0
    .goto 102,11.14,61.23,40,0
    .goto 102,16.74,60.43,40,0
    >>Kill |cRXP_ENEMY_Withered Giants|r, |cRXP_ENEMY_Starving Fungal Giants|r, |cRXP_ENEMY_Bog Lords|r and |cRXP_ENEMY_Withered Bog Lords|r. Loot them for |cRXP_LOOT_Bog Lord Tendril|r
    .complete 9743,1 --Bog Lord Tendril (6)
    .mob Withered Giant
    .mob Starving Fungal Giant
    .mob Bog Lord
    .mob Withered Bog Lord
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.63,48.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
    .turnin 9827 >>Turn in Withered Basidium
    .target Ruam
    .isOnQuest 9827
step
    .goto 102,68.63,48.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
    .accept 10355 >>Accept Withered Flesh
    .target Ruam
    .isQuestTurnedIn 9827 --any of: Withered Basidium
    .xp <60,1
step
    .goto 102,11.07,62.42
    >>Pick up |cRXP_PICK_Mature Spore Sac|r from the ground
    .complete 9739,1 --Mature Spore Sac (10)
step
    .goto 102,19.02,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahssn|r
    .turnin 9739 >>Turn in The Sporelings' Plight
    .turnin 9743 >>Turn in Natural Enemies
    .target Fahssn
step
    .goto 102,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9701 >>Turn in Observing the Sporelings
    .accept 9702 >>Accept A Question of Gluttony
    .target Watcher Leesa'oh
step
    #loop
    .goto 102,27.77,64.31,0
    .goto 102,27.77,64.31,40,0
    .goto 102,30.77,66.55,40,0
    .goto 102,30.92,61.18,40,0
    >>Pick up |cRXP_PICK_Discarded Nutriment|r from the ground
    .complete 9702,1 --Discarded Nutriment (1)
step
    .goto 102,32.81,59.53
    >>Kill |cRXP_ENEMY_"Count" Ungula|r and loot |cRXP_LOOT_"Count" Ungula's Mandible|r. Use it to start the quest
    .collect 25459,1,9911 --"Count" Ungula's Mandible (1)
    .accept 9911 >>Accept The Count of the Marshes
    .use 25459
    .mob "Count" Ungula
step
    .goto 102,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9702 >>Turn in A Question of Gluttony
    .turnin 9911 >>Turn in The Count of the Marshes
    .accept 9708 >>Accept Familiar Fungi
    .target Watcher Leesa'oh
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 102,42.93,63.07,0
    .goto 102,42.93,63.07,40,0
    .goto 102,46.17,59.80,40,0
    >>Pick up |cRXP_PICK_Feralfen Idol|r from the ground
    .complete 9787,1 --Feralfen Idol (6)
step
    #loop
    .goto 102,35.42,34.49,0
    .goto 102,35.42,34.49,40,0
    .goto 102,36.22,28.32,40,0
    .goto 102,33.71,28.43,40,0
    >>Kill |cRXP_ENEMY_Ango'rosh Ogres|r, |cRXP_ENEMY_Ango'rosh Shamans|r, |cRXP_ENEMY_Boss Grog'aks|r and |cRXP_ENEMY_Ango'rosh Sentries|r. Loot them for |cRXP_LOOT_Mushroom Sample|r
    .complete 9708,1 --Mushroom Sample (15)
    .mob Ango'rosh Ogre
    .mob Ango'rosh Shaman
    .mob Boss Grog'ak
    .mob Ango'rosh Sentry
step
    .goto 102,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9708 >>Turn in Familiar Fungi
    .accept 9709 >>Accept Stealing Back the Mushrooms
    .target Watcher Leesa'oh
step
    #completewith Along81
    >>As you go: Kill |cRXP_ENEMY_Rajis Fyashes|r, |cRXP_ENEMY_Rajah Haghazeds|r, |cRXP_ENEMY_Darkcrest Taskmasters|r and |cRXP_ENEMY_Darkcrest Sirens|r. Loot them for |cRXP_LOOT_Naga Claws|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9728,1 --Naga Claws (30)
    .mob Rajis Fyashe
    .mob Rajah Haghazed
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
step
    #label Along81
    .goto 102,25.40,42.86
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,2 --Marshlight Steam Pump Credit Marker
    .target Marshlight Steam Pump Credit Marker
step
    #loop
    .goto 102,19.90,7.24,0
    .goto 102,19.90,7.24,40,0
    .goto 102,20.40,4.44,40,0
    .goto 102,17.87,7.95,40,0
    >>Kill |cRXP_ENEMY_Overlord Gorefist|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Ango'rosh Maulers|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Ango'rosh Maulers|r, |cRXP_ENEMY_Ango'rosh Souleaters|r, |cRXP_ENEMY_Overlord Gorefists|r and |cRXP_ENEMY_Captain Kroshes|r. Loot them for |cRXP_LOOT_Box of Mushrooms|r. It can also be picked up from |cRXP_PICK_Box of Mushrooms|r on the ground
    .complete 9839,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Overlord Gorefist slain (1)
    .complete 9839,2 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Ango'rosh Mauler slain (10)
    .complete 9709,1 --Box of Mushrooms (10)
    .mob Overlord Gorefist
    .mob Ango'rosh Mauler
    .mob Ango'rosh Souleater
    .mob Captain Krosh
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 102,15.70,44.17,0
    .goto 102,15.70,44.17,40,0
    .goto 102,12.48,45.32,40,0
    >>Kill |cRXP_ENEMY_Umbraglow Stingers|r, |cRXP_ENEMY_Marshlight Bleeders|r, |cRXP_ENEMY_Blackstings|r and |cRXP_ENEMY_Bogflare Needlers|r. Loot them for |cRXP_LOOT_Diaphanous Wing|r
    .complete 9790,1 --Diaphanous Wing (8)
    .mob Umbraglow Stinger
    .mob Marshlight Bleeder
    .mob Blacksting
    .mob Bogflare Needler
step
    .goto 102,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9709 >>Turn in Stealing Back the Mushrooms
    .target Watcher Leesa'oh
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,41.94,27.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikuti|r
    .turnin 9839 >>Turn in Overlord Gorefist
    .target Ikuti
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Alliance Field Scout's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.20,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
    .turnin 9787 >>Turn in Idols of the Feralfen
    .accept 9801 >>Accept Gathering the Reagents
    .target Anchorite Ahuurn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,67.81,47.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haalrun|r
    .turnin 9790 >>Turn in Diaphanous Wings
    .target Haalrun
step
    #completewith Along89
    >>As you go: Kill |cRXP_ENEMY_Rajis Fyashes|r, |cRXP_ENEMY_Rajah Haghazeds|r, |cRXP_ENEMY_Darkcrest Taskmasters|r and |cRXP_ENEMY_Darkcrest Sirens|r. Loot them for |cRXP_LOOT_Naga Claws|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9728,1 --Naga Claws (30)
    .mob Rajis Fyashe
    .mob Rajah Haghazed
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
step
    .goto 102,61.97,40.84
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,3 --Serpent Steam Pump Credit Marker
    .target Serpent Steam Pump Credit Marker
step
    #label Along89
    .goto 102,65.15,40.91
    >>Kill |cRXP_ENEMY_Rajis Fyashe|r
    .complete 9817,1 --Rajis Fyashe slain (1)
    .mob Rajis Fyashe
step
    #loop
    .goto 102,82.66,43.27,0
    .goto 102,82.66,43.27,40,0
    .goto 102,82.76,39.85,40,0
    >>Kill |cRXP_ENEMY_Parched Hydras|r. Loot them for |cRXP_LOOT_Parched Hydra Sample|r
    .complete 10355,1 --Parched Hydra Sample (5)
    .mob Parched Hydra
    .isOnQuest 10355
step
    #loop
    .goto 102,84.00,37.28,0
    .goto 102,84.00,37.28,40,0
    .goto 102,83.63,44.65,40,0
    .goto 102,79.49,44.84,40,0
    >>Kill |cRXP_ENEMY_Withered Bog Lords|r. Loot them for |cRXP_LOOT_Withered Bog Lord Sample|r
    .complete 10355,2 --Withered Bog Lord Sample (5)
    .mob Withered Bog Lord
    .isOnQuest 10355
step
    .goto 102,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9817 >>Turn in Leader of the Bloodscale
    .target Warden Hamoot
step
    .goto 102,68.63,48.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
    .turnin 10355 >>Turn in Withered Flesh
    .target Ruam
    .isOnQuest 10355
step
    #completewith Drop9731x2
    >>|cRXP_LOOT_Drain Schematics|r can drop from |cRXP_ENEMY_Bloodscale Enchantress|r, |cRXP_ENEMY_Bloodscale Slavedriver|r, |cRXP_ENEMY_Steam Pump Overseer|r. Use it to start the quest if you get one
    .collect 24330,1,9731 --Drain Schematics (1)
    .accept 9731 >>Accept Drain Schematics
    .use 24330
step
    #label Drop9731x2
    #loop
    .goto 102,65.15,40.91,0
    .goto 102,65.15,40.91,40,0
    .goto 102,62.27,41.77,40,0
    .goto 102,60.73,42.57,40,0
    >>Kill |cRXP_ENEMY_Rajis Fyashes|r, |cRXP_ENEMY_Rajah Haghazeds|r, |cRXP_ENEMY_Darkcrest Taskmasters|r and |cRXP_ENEMY_Darkcrest Sirens|r. Loot them for |cRXP_LOOT_Naga Claws|r
    .complete 9728,1 --Naga Claws (30)
    .mob Rajis Fyashe
    .mob Rajah Haghazed
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9731 >>Turn in Drain Schematics
    .target Ysiel Windsinger
    .isOnQuest 9731
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9724 >>Accept Warning the Cenarion Circle
    .target Ysiel Windsinger
    .isQuestTurnedIn 9731 --any of: Drain Schematics
    .xp <61,1
step
    .goto 102,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9728 >>Turn in A Warm Welcome
    .target Warden Hamoot
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9720 >>Turn in Balance Must Be Preserved
    .target Ysiel Windsinger
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9732 >>Turn in Return to the Marsh
    .target Ysiel Windsinger
    .isOnQuest 9732
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 102,68.12,73.05,0
    .goto 102,68.12,73.05,40,0
    .goto 102,65.41,71.02,40,0
    >>Kill |cRXP_ENEMY_Sporebats|r, |cRXP_ENEMY_Greater Sporebats|r and |cRXP_ENEMY_Young Sporebats|r. Loot them for |cRXP_LOOT_Sporebat Eye|r
    .complete 9801,1 --Sporebat Eye (4)
    .mob Sporebat
    .mob Greater Sporebat
    .mob Young Sporebat
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,67.55,62.90
    >>Kill |cRXP_ENEMY_Fen Striders|r. Loot them for |cRXP_LOOT_Fen Strider Tentacle|r
    .complete 9801,2 --Fen Strider Tentacle (4)
    .mob Fen Strider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.20,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
    .turnin 9801 >>Turn in Gathering the Reagents
    .accept 9803 >>Accept Messenger to the Feralfen
    .target Anchorite Ahuurn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,44.11,69.49
    >>Kill |cRXP_ENEMY_Elder Kuruti|r and loot |cRXP_LOOT_Elder Kuruti's Response|r
    .complete 9803,1 --Elder Kuruti's Response (1)
    .mob Elder Kuruti
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Alliance Field Scout's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,68.20,49.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Ahuurn|r
    .turnin 9803 >>Turn in Messenger to the Feralfen
    .target Anchorite Ahuurn
step
    +|cRXP_WARN_That is all of Zangarmarsh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hellfire Peninsula|r: Warning the Cenarion Circle
    >>|cRXP_FRIENDLY_Terokkar Forest|r: The Fate of Tuurem << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 63|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.9 levels of quests, starting around Earthbinder Tavgren). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Zangarmarsh is planned from level 66.|r Load its guide for level 66 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 62 - 67 Zangarmarsh
#subweight -62
#name 66-67 Zangarmarsh
--RouteBuilder:next
#next Zone Routes (Alliance)\65-68 Nagrand;Zone Routes (Alliance)\62-65 Terokkar Forest: around Earthbinder Tavgren

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 102,41.21,28.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timothy Daniels|r
    .accept 9794 >>Accept No Time for Curiosity
    .target Timothy Daniels
step
    +|cRXP_WARN_End of the Zangarmarsh route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blade's Edge Mountains|r: No Time for Curiosity << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 66|r: |cRXP_FRIENDLY_Nagrand|r (about 0.7 levels of quests, starting around Hemet Nesingwary), |cRXP_FRIENDLY_Terokkar Forest|r (about 0.7 levels of quests, starting around Earthbinder Tavgren). Completing this step loads the guide for Nagrand --RouteBuilder:next
]])
