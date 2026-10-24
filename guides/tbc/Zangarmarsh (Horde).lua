-- 61-65 Zangarmarsh: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 61, 64).
-- Split into 2 guides, listed under "61 - 65 Zangarmarsh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Zangarmarsh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 61 - 65 Zangarmarsh
#subweight -61
#name 61-62 Zangarmarsh: around Ysiel Windsinger
--RouteBuilder:next
#next Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel;Zone Routes (Horde)\62-64 Terokkar Forest: around Tooki

step
    .goto 1946,80.40,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
    .accept 9747 >>Accept The Umbrafen Tribe
    .target Ikeyen
step
    .goto 1946,80.32,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
    .accept 9802 >>Accept Plants of Zangarmarsh
    .target Lauranna Thar'well
step
    #completewith Drop9731x1
    >>|cRXP_LOOT_Drain Schematics|r can drop from |cRXP_ENEMY_Bloodscale Enchantress|r, |cRXP_ENEMY_Bloodscale Slavedriver|r, |cRXP_ENEMY_Steam Pump Overseer|r. Use it to start the quest if you get one
    .collect 24330,1,9731 --Drain Schematics (1)
    .accept 9731 >>Accept Drain Schematics
    .use 24330
step
    #completewith Drop9731x1
    >>|cRXP_LOOT_Withered Basidium|r can drop from |cRXP_ENEMY_Withered Giant|r. Use it to start the quest if you get one
    .collect 24484,1,9828 --Withered Basidium (1)
    .accept 9828 >>Accept Withered Basidium
    .use 24484
step
    #label Drop9731x1
    #loop
    .goto 1946,76.03,66.17,0
    .goto 1946,76.03,66.17,40,0
    .goto 1946,72.73,68.10,40,0
    .goto 1946,68.77,60.09,40,0
    .goto 1946,71.56,61.40,40,0
    .goto 1946,73.38,59.18,40,0
    >>Kill |cRXP_ENEMY_Darkcrest Taskmasters|r, |cRXP_ENEMY_Darkcrest Sirens|r, |cRXP_ENEMY_Bloodscale Enchantress|r and |cRXP_ENEMY_Bloodscale Slavedrivers|r. Loot them for |cRXP_LOOT_Unidentified Plant Parts|r. It can also be picked up from |cRXP_PICK_Ragveil|r on the ground
    .complete 9802,1 --Unidentified Plant Parts (10)
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
    .mob Bloodscale Enchantress
    .mob Bloodscale Slavedriver
step
    .xp 61 >>Grind to level 61 (Warden Hamoot needs it)
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9778 >>Accept Warden Hamoot
    .target Ysiel Windsinger
step
    .goto 1946,80.32,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
    .turnin 9802 >>Turn in Plants of Zangarmarsh
    .target Lauranna Thar'well
step
    .goto 1946,79.08,64.88
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9817 >>Accept Leader of the Bloodscale
    .accept 9730 >>Accept Leader of the Darkcrest
step
    .goto 1946,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9778 >>Turn in Warden Hamoot
    .accept 9728 >>Accept A Warm Welcome
    .target Warden Hamoot
step
    .goto 1946,78.53,63.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lethyn Moonfire|r
    .accept 9895 >>Accept The Dying Balance
    .target Lethyn Moonfire
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9716 >>Accept Disturbance at Umbrafen Lake
    .target Ysiel Windsinger
    .xp <61,1
step
    .goto 1946,68.51,50.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loolruna|r
    .target Loolruna
    .home >>Set your Hearthstone to Loolruna's inn
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9912 >>Turn in The Cenarion Expedition
    .target Ysiel Windsinger
    .isOnQuest 9912
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9716 >>Accept Disturbance at Umbrafen Lake
    .target Ysiel Windsinger
step
    .goto 1946,84.76,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gur'zil|r
    .fp Swamprat Post >> Get the Swamprat Post Flight Path
    .target Gur'zil
step
    .goto 1946,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .turnin 10103 >>Turn in Report to Zurai
    .target Zurai
    .isOnQuest 10103
step
    .goto 1946,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .accept 9774 >>Accept Thick Hydra Scales
    .target Zurai
step
    .goto 1946,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .accept 9770 >>Accept Menacing Marshfangs
    .target Reavij
step
    .goto 1946,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .accept 9769 >>Accept There's No Explanation for Fashion
    .accept 9773 >>Accept No More Mushrooms!
    .target Magasha
step
    #loop
    .goto 1946,82.66,43.27,0
    .goto 1946,82.66,43.27,40,0
    .goto 1946,82.76,39.85,40,0
    >>Kill |cRXP_ENEMY_Mire Hydras|r, |cRXP_ENEMY_Fenclaw Thrashers|r, |cRXP_ENEMY_Mrageshes|r and |cRXP_ENEMY_Parched Hydras|r. Loot them for |cRXP_LOOT_Thick Hydra Scale|r
    .complete 9774,1 --Thick Hydra Scale (12)
    .mob Mire Hydra
    .mob Fenclaw Thrasher
    .mob Mragesh
    .mob Parched Hydra
step
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Umbrafen Eels|r. Loot them for |cRXP_LOOT_Eel Filet|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9773,1 --Eel Filet (8)
    .mob Umbrafen Eel
step
    #label Along16
    .goto 1946,70.89,80.51
    >>Umbrafen Lake Investigated
    .complete 9716,1 --Umbrafen Lake Investigated
step
    #loop
    .goto 1946,73.59,72.95,0
    .goto 1946,73.59,72.95,40,0
    .goto 1946,76.75,68.45,40,0
    >>Kill |cRXP_ENEMY_Umbrafen Eels|r. Loot them for |cRXP_LOOT_Eel Filet|r
    .complete 9773,1 --Eel Filet (8)
    .mob Umbrafen Eel
step
    #completewith Along18
    >>As you go: Kill |cRXP_ENEMY_Umbrafen Oracles|r. Kill |cRXP_ENEMY_Umbrafen Seers|r. Kill |cRXP_ENEMY_Umbrafen Witchdoctors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9747,2 --Umbrafen Oracle slain (6)
    .complete 9747,3 --Umbrafen Seer slain (8)
    .complete 9747,4 --Umbrafen Witchdoctor slain (6)
    .mob Umbrafen Oracle
    .mob Umbrafen Seer
    .mob Umbrafen Witchdoctor
step
    #label Along18
    .goto 1946,85.29,90.93
    >>Kill |cRXP_ENEMY_Kataru|r
    .complete 9747,1 --Kataru slain (1)
    .mob Kataru
step
    #loop
    .goto 1946,84.26,89.91,0
    .goto 1946,84.26,89.91,40,0
    .goto 1946,82.80,84.96,40,0
    .goto 1946,84.88,81.96,40,0
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
    .goto 1946,83.38,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayra Longmane|r
    .accept 9752 >>Accept Escape from Umbrafen
    .target Kayra Longmane
step
    #completewith Along22
    >>As you go: Kill |cRXP_ENEMY_Umbraglow Stingers|r, |cRXP_ENEMY_Marshlight Bleeders|r, |cRXP_ENEMY_Blackstings|r and |cRXP_ENEMY_Bogflare Needlers|r. Loot them for |cRXP_LOOT_Diaphanous Wing|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9769,1 --Diaphanous Wing (8)
    .mob Umbraglow Stinger
    .mob Marshlight Bleeder
    .mob Blacksting
    .mob Bogflare Needler
step
    .goto 1946,79.76,71.09
    >>Escort Kayra Longmane to safety
    .complete 9752,1 --Escort Kayra Longmane to safety
step
    #label Along22
    .goto 1946,82.07,71.39
    >>Kill |cRXP_ENEMY_Boglash|r
    .complete 9895,1 --Boglash slain (1)
    .mob Boglash
step
    .goto 1946,80.40,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
    .turnin 9747 >>Turn in The Umbrafen Tribe
    .accept 9788 >>Accept A Damp, Dark Place
    .target Ikeyen
step
    .goto 1946,80.32,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
    .accept 10096 >>Accept Saving the Sporeloks
    .target Lauranna Thar'well
step
    .goto 1946,80.37,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Blackhoof|r
    .accept 9894 >>Accept Safeguarding the Watchers
    .target Windcaller Blackhoof
step
    .goto 1946,78.53,63.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lethyn Moonfire|r
    .turnin 9895 >>Turn in The Dying Balance
    .target Lethyn Moonfire
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9752 >>Turn in Escape from Umbrafen
    .turnin 9716 >>Turn in Disturbance at Umbrafen Lake
    .accept 9718 >>Accept As the Crow Flies
    .target Ysiel Windsinger
step
    .goto 1946,78.40,62.02
    >>Use the Stormcrow Amulet and explore the lakes of Zangarmarsh
    .complete 9718,1 --Use the Stormcrow Amulet and explore the lakes of Zangarmarsh
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9718 >>Turn in As the Crow Flies
    .accept 9720 >>Accept Balance Must Be Preserved
    .target Ysiel Windsinger
step
    .goto 1946,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .turnin 9774 >>Turn in Thick Hydra Scales
    .accept 9771 >>Accept Searching for Scout Jyoba
    .target Zurai
step
    .goto 1946,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .turnin 9773 >>Turn in No More Mushrooms!
    .accept 9899 >>Accept A Job Undone
    .target Magasha
step
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Marshfang Rippers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9770,1 --Marshfang Ripper slain (10)
    .mob Marshfang Ripper
step
    #label Along32
    .goto 1946,78.01,45.41
    >>Kill |cRXP_ENEMY_Sporewing|r
    .complete 9899,1 --Sporewing slain (1)
    .mob Sporewing
step
    #loop
    .goto 1946,84.64,50.34,0
    .goto 1946,84.64,50.34,40,0
    .goto 1946,85.47,49.10,40,0
    >>Kill |cRXP_ENEMY_Marshfang Rippers|r
    .complete 9770,1 --Marshfang Ripper slain (10)
    .mob Marshfang Ripper
step
    .goto 1946,80.75,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jyoba|r
    .turnin 9771 >>Turn in Searching for Scout Jyoba
    .accept 9772 >>Accept Jyoba's Report
    .target Scout Jyoba
step
    #completewith Drop9828x2
    >>|cRXP_LOOT_Withered Basidium|r can drop from |cRXP_ENEMY_Withered Giant|r. Use it to start the quest if you get one
    .collect 24484,1,9828 --Withered Basidium (1)
    .accept 9828 >>Accept Withered Basidium
    .use 24484
step
    #label Drop9828x2
    #loop
    .goto 1946,80.90,32.92,0
    .goto 1946,80.90,32.92,40,0
    .goto 1946,83.40,36.24,40,0
    .goto 1946,85.45,39.28,40,0
    >>Kill |cRXP_ENEMY_Withered Giants|r, |cRXP_ENEMY_Withered Bog Lords|r and |cRXP_ENEMY_Starving Bog Lords|r. Loot them for |cRXP_LOOT_Scout Jyoba's Report|r
    .complete 9772,1 --Scout Jyoba's Report (1)
    .mob Withered Giant
    .mob Withered Bog Lord
    .mob Starving Bog Lord
step
    .goto 1946,65.15,40.91
    >>Kill |cRXP_ENEMY_Rajis Fyashe|r
    .complete 9817,1 --Rajis Fyashe slain (1)
    .mob Rajis Fyashe
step
    .goto 1946,61.97,40.84
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,3 --Serpent Steam Pump Credit Marker
    .target Serpent Steam Pump Credit Marker
step
    .goto 1946,63.11,64.10
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,4 --Lagoon Steam Pump Credit Marker
    .target Lagoon Steam Pump Credit Marker
step
    .goto 1946,65.10,68.67
    >>Kill |cRXP_ENEMY_Rajah Haghazed|r
    .complete 9730,1 --Rajah Haghazed slain (1)
    .mob Rajah Haghazed
step
    .goto 1946,70.60,80.29
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,1 --Umbrafen Steam Pump Credit Marker
    .target Umbrafen Steam Pump Credit Marker
step
    #loop
    .goto 1946,77.37,81.54,0
    .goto 1946,77.37,81.54,40,0
    .goto 1946,78.66,80.23,40,0
    .goto 1946,82.64,72.29,40,0
    .goto 1946,79.46,73.14,40,0
    >>Kill |cRXP_ENEMY_Umbraglow Stingers|r, |cRXP_ENEMY_Marshlight Bleeders|r, |cRXP_ENEMY_Blackstings|r and |cRXP_ENEMY_Bogflare Needlers|r. Loot them for |cRXP_LOOT_Diaphanous Wing|r
    .complete 9769,1 --Diaphanous Wing (8)
    .mob Umbraglow Stinger
    .mob Marshlight Bleeder
    .mob Blacksting
    .mob Bogflare Needler
step
    .goto 1946,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .turnin 9769 >>Turn in There's No Explanation for Fashion
    .target Magasha
step
    .goto 1946,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .turnin 9899 >>Turn in A Job Undone while you are here
    .isQuestComplete 9899
    .target Magasha
step
    .goto 1946,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .turnin 9770 >>Turn in Menacing Marshfangs while you are here
    .isQuestComplete 9770
    .target Reavij
step
    .goto 1946,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .turnin 9772 >>Turn in Jyoba's Report while you are here
    .isQuestComplete 9772
    .target Zurai
step
    #loop
    .goto 1946,73.22,93.98,0
    .goto 1946,73.22,93.98,40,0
    .goto 1946,71.91,97.15,40,0
    >>Kill |cRXP_ENEMY_Lord Klaq|r
    >>Pick up |cRXP_PICK_Ikeyen's Belongings|r from the ground
    >>Kill |cRXP_ENEMY_Marsh Dredgers|r
    >>Kill |cRXP_ENEMY_Marsh Lurkers|r
    .complete 9894,1 --Lord Klaq slain (1)
    .complete 9788,1 --Ikeyen's Belongings (1)
    .complete 10096,1 --Marsh Dredger slain (10)
    .complete 10096,2 --Marsh Lurker slain (10)
    .mob Lord Klaq
    .mob Marsh Dredger
    .mob Marsh Lurker
step
    .goto 1946,80.32,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauranna Thar'well|r
    .turnin 10096 >>Turn in Saving the Sporeloks
    .target Lauranna Thar'well
step
    .goto 1946,80.40,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikeyen|r
    .turnin 9788 >>Turn in A Damp, Dark Place
    .target Ikeyen
step
    .goto 1946,80.37,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Blackhoof|r
    .turnin 9894 >>Turn in Safeguarding the Watchers
    .target Windcaller Blackhoof
step
    .goto 1946,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9730 >>Turn in Leader of the Darkcrest
    .turnin 9817 >>Turn in Leader of the Bloodscale
    .target Warden Hamoot
step
    .goto 1946,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .turnin 9899 >>Turn in A Job Undone
    .target Magasha
step
    .goto 1946,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .turnin 9770 >>Turn in Menacing Marshfangs
    .accept 9898 >>Accept The Respect of Another
    .target Reavij
step
    .goto 1946,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .turnin 9772 >>Turn in Jyoba's Report
    .target Zurai
step
    .xp 62 >>Grind to level 62
step
    .goto 1946,33.07,51.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Du'ga|r
    .fp Zabra'jin >> Get the Zabra'jin Flight Path
    .target Du'ga
step
    .goto 1946,32.38,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Janidi|r
    .accept 9846 >>Accept Spirits of the Feralfen
    .target Seer Janidi
step
    .goto 1946,32.00,49.33
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9820 >>Accept WANTED: Boss Grog'ak
step
    .goto 1946,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .accept 9701 >>Accept Observing the Sporelings
    .target Watcher Leesa'oh
step
    .goto 1946,19.02,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahssn|r
    .accept 9739 >>Accept The Sporelings' Plight
    .accept 9743 >>Accept Natural Enemies
    .target Fahssn
step
    .goto 1946,15.10,61.21
    >>Investigate the Spawning Glen
    .complete 9701,1 --Investigate the Spawning Glen
step
    #completewith Drop9828x3
    >>|cRXP_LOOT_Withered Basidium|r can drop from |cRXP_ENEMY_Withered Giant|r. Use it to start the quest if you get one
    .collect 24484,1,9828 --Withered Basidium (1)
    .accept 9828 >>Accept Withered Basidium
    .use 24484
step
    #completewith Drop9828x3
    >>As you go: Pick up |cRXP_PICK_Mature Spore Sac|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9739,1 --Mature Spore Sac (10)
step
    #label Drop9828x3
    #loop
    .goto 1946,13.72,61.20,0
    .goto 1946,13.72,61.20,40,0
    .goto 1946,11.14,61.23,40,0
    .goto 1946,16.74,60.43,40,0
    >>Kill |cRXP_ENEMY_Withered Giants|r, |cRXP_ENEMY_Starving Fungal Giants|r, |cRXP_ENEMY_Bog Lords|r and |cRXP_ENEMY_Withered Bog Lords|r. Loot them for |cRXP_LOOT_Bog Lord Tendril|r
    .complete 9743,1 --Bog Lord Tendril (6)
    .mob Withered Giant
    .mob Starving Fungal Giant
    .mob Bog Lord
    .mob Withered Bog Lord
step
    .goto 1946,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .turnin 9828 >>Turn in Withered Basidium
    .target Reavij
    .isOnQuest 9828
step
    .goto 1946,11.07,62.42
    >>Pick up |cRXP_PICK_Mature Spore Sac|r from the ground
    .complete 9739,1 --Mature Spore Sac (10)
step
    .goto 1946,19.02,62.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fahssn|r
    .turnin 9739 >>Turn in The Sporelings' Plight
    .turnin 9743 >>Turn in Natural Enemies
    .target Fahssn
step
    .goto 1946,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9701 >>Turn in Observing the Sporelings
    .accept 9702 >>Accept A Question of Gluttony
    .target Watcher Leesa'oh
step
    #loop
    .goto 1946,27.77,64.31,0
    .goto 1946,27.77,64.31,40,0
    .goto 1946,30.77,66.55,40,0
    .goto 1946,30.92,61.18,40,0
    >>Pick up |cRXP_PICK_Discarded Nutriment|r from the ground
    .complete 9702,1 --Discarded Nutriment (1)
step
    .goto 1946,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9702 >>Turn in A Question of Gluttony
    .accept 9708 >>Accept Familiar Fungi
    .target Watcher Leesa'oh
step
    #completewith Along63
    >>As you go: Kill |cRXP_ENEMY_Feralfen Hunters|r, |cRXP_ENEMY_Feralfen Mystics|r and |cRXP_ENEMY_Feralfen Druids|r. Loot them for |cRXP_LOOT_Feralfen Protection Totem|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9846,1 --Feralfen Protection Totem (10)
    .mob Feralfen Hunter
    .mob Feralfen Mystic
    .mob Feralfen Druid
step
    #label Along63
    .goto 1946,49.75,60.06
    >>Kill |cRXP_ENEMY_Blacksting|r and loot |cRXP_LOOT_Blacksting's Stinger|r
    .complete 9898,1 --Blacksting's Stinger (1)
    .mob Blacksting
step
    #loop
    .goto 1946,46.16,60.48,0
    .goto 1946,46.16,60.48,40,0
    .goto 1946,43.24,63.37,40,0
    >>Kill |cRXP_ENEMY_Feralfen Hunters|r, |cRXP_ENEMY_Feralfen Mystics|r and |cRXP_ENEMY_Feralfen Druids|r. Loot them for |cRXP_LOOT_Feralfen Protection Totem|r
    .complete 9846,1 --Feralfen Protection Totem (10)
    .mob Feralfen Hunter
    .mob Feralfen Mystic
    .mob Feralfen Druid
step
    .goto 1946,50.44,40.91
    >>Drain Located
    .complete 9731,1 --Drain Located
step
    #loop
    .goto 1946,37.86,27.55,0
    .goto 1946,37.86,27.55,40,0
    .goto 1946,34.82,28.31,40,0
    .goto 1946,35.42,34.49,40,0
    >>Kill |cRXP_ENEMY_Boss Grog'ak|r and loot |cRXP_LOOT_Boss Grog'ak's Head|r
    >>Kill |cRXP_ENEMY_Ango'rosh Ogres|r, |cRXP_ENEMY_Ango'rosh Shamans|r, |cRXP_ENEMY_Boss Grog'aks|r and |cRXP_ENEMY_Ango'rosh Sentries|r. Loot them for |cRXP_LOOT_Mushroom Sample|r
    .complete 9820,1 --Boss Grog'ak's Head (1)
    .complete 9708,1 --Mushroom Sample (15)
    .mob Boss Grog'ak
    .mob Ango'rosh Ogre
    .mob Ango'rosh Shaman
    .mob Ango'rosh Sentry
step
    .goto 1946,32.38,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Janidi|r
    .turnin 9846 >>Turn in Spirits of the Feralfen
    .accept 9847 >>Accept A Spirit Ally?
    .target Seer Janidi
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9820 >>Turn in WANTED: Boss Grog'ak while you are here
    .isQuestComplete 9820
    .target Shadow Hunter Denjai
step
    .goto 1946,44.29,66.90
    >>Kill |cRXP_ENEMY_Feralfen Serpent Spirit|r
    .complete 9847,1 --Summon Serpent Spirit (1)
    .mob Feralfen Serpent Spirit
step
    .goto 1946,32.38,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Janidi|r
    .turnin 9847 >>Turn in A Spirit Ally?
    .target Seer Janidi
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9820 >>Turn in WANTED: Boss Grog'ak
    .target Shadow Hunter Denjai
step
    .goto 1946,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9708 >>Turn in Familiar Fungi
    .accept 9709 >>Accept Stealing Back the Mushrooms
    .target Watcher Leesa'oh
step
    .goto 1946,25.40,42.86
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,2 --Marshlight Steam Pump Credit Marker
    .target Marshlight Steam Pump Credit Marker
step
    #completewith Drop9731x2
    >>|cRXP_LOOT_Drain Schematics|r can drop from |cRXP_ENEMY_Bloodscale Enchantress|r, |cRXP_ENEMY_Bloodscale Slavedriver|r, |cRXP_ENEMY_Steam Pump Overseer|r. Use it to start the quest if you get one
    .collect 24330,1,9731 --Drain Schematics (1)
    .accept 9731 >>Accept Drain Schematics
    .use 24330
step
    #label Drop9731x2
    #loop
    .goto 1946,24.70,42.44,0
    .goto 1946,24.70,42.44,40,0
    .goto 1946,27.07,41.50,40,0
    .goto 1946,27.06,45.20,40,0
    >>Kill |cRXP_ENEMY_Rajis Fyashes|r, |cRXP_ENEMY_Rajah Haghazeds|r, |cRXP_ENEMY_Darkcrest Taskmasters|r and |cRXP_ENEMY_Darkcrest Sirens|r. Loot them for |cRXP_LOOT_Naga Claws|r
    .complete 9728,1 --Naga Claws (30)
    .mob Rajis Fyashe
    .mob Rajah Haghazed
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
step
    .goto 1946,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9728 >>Turn in A Warm Welcome
    .target Warden Hamoot
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9731 >>Turn in Drain Schematics
    .target Ysiel Windsinger
    .isOnQuest 9731
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9724 >>Accept Warning the Cenarion Circle
    .target Ysiel Windsinger
    .isQuestTurnedIn 9731 --any of: Drain Schematics
    .xp <61,1
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9720 >>Turn in Balance Must Be Preserved
    .target Ysiel Windsinger
step
    #loop
    .goto 1946,19.90,7.24,0
    .goto 1946,19.90,7.24,40,0
    .goto 1946,20.40,4.44,40,0
    .goto 1946,17.87,7.95,40,0
    >>Kill |cRXP_ENEMY_Ango'rosh Maulers|r, |cRXP_ENEMY_Ango'rosh Souleaters|r, |cRXP_ENEMY_Overlord Gorefists|r and |cRXP_ENEMY_Captain Kroshes|r. Loot them for |cRXP_LOOT_Box of Mushrooms|r. It can also be picked up from |cRXP_PICK_Box of Mushrooms|r on the ground
    .complete 9709,1 --Box of Mushrooms (10)
    .mob Ango'rosh Mauler
    .mob Ango'rosh Souleater
    .mob Overlord Gorefist
    .mob Captain Krosh
step
    .goto 1946,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9709 >>Turn in Stealing Back the Mushrooms
    .target Watcher Leesa'oh
step
    .goto 1946,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .turnin 9898 >>Turn in The Respect of Another
    .target Reavij
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9732 >>Turn in Return to the Marsh
    .target Ysiel Windsinger
    .isOnQuest 9732
step
    +|cRXP_WARN_That is all of Zangarmarsh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hellfire Peninsula|r: Warning the Cenarion Circle
step
    +|cRXP_WARN_Suggested next zones at level 61|r: |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.9 levels of quests, starting around Nazgrel; 1 quest from here hands in there), |cRXP_FRIENDLY_Terokkar Forest|r (about 0.6 levels of quests, starting around Tooki; 2 quests from here hand in there). Completing this step loads the guide for Hellfire Peninsula --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Zangarmarsh is planned from level 64.|r Load its guide for level 64 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 61 - 65 Zangarmarsh
#subweight -61
#name 64-65 Zangarmarsh: around Shadow Hunter Denjai
--RouteBuilder:next
#next Zone Routes (Horde)\62-64 Terokkar Forest: around Tooki;Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel

step
    .goto 1946,33.01,49.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horde Field Scout|r
    .target Horde Field Scout
    .home >>Set your Hearthstone to Horde Field Scout's inn
step
    .goto 1946,32.01,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Gazgrigg|r
    .accept 9797 >>Accept Reinforcements for Garadar
    .target Messenger Gazgrigg
    .xp <64,1
step
    .goto 1946,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9876 >>Accept Failed Incursion
    .target Ysiel Windsinger
    .isQuestTurnedIn 9732 --any of: Return to the Marsh
    .xp <62,1
step
    .goto 1946,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .accept 9775 >>Accept Report to Shadow Hunter Denjai
    .accept 9796 >>Accept News from Zangarmarsh
    .target Zurai
step
    #completewith next
    .hs >>Hearth to Horde Field Scout's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1946,32.89,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Tor'gash|r
    .accept 9814 >>Accept Burstcap Mushrooms, Mon!
    .target Witch Doctor Tor'gash
step
    .goto 1946,32.25,49.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurjaya|r
    .accept 9845 >>Accept Angling to Beat the Competition
    .target Zurjaya
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9775 >>Turn in Report to Shadow Hunter Denjai while you are here
    .isQuestComplete 9775
    .target Shadow Hunter Denjai
step
    .goto 1946,32.00,49.33
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10117 >>Accept Wanted: Chieftain Mummaki
step
    .goto 1946,31.63,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gambarinka|r
    .accept 9841 >>Accept Stinging the Stingers
    .target Gambarinka
step
    .goto 1946,32.01,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Gazgrigg|r
    .accept 9797 >>Accept Reinforcements for Garadar
    .target Messenger Gazgrigg
    .xp <64,1
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .accept 9795 >>Accept The Ogre Threat
    .target Shadow Hunter Denjai
    .xp <64,1
step
    #loop
    .goto 1946,31.16,54.04,0
    .goto 1946,31.16,54.04,40,0
    .goto 1946,28.39,52.47,40,0
    .goto 1946,25.67,54.29,40,0
    >>Pick up |cRXP_PICK_Burstcap Mushroom|r from the ground
    .complete 9814,1 --Burstcap Mushroom (6)
step
    #loop
    .goto 1946,48.69,42.35,0
    .goto 1946,48.69,42.35,40,0
    .goto 1946,51.98,41.68,40,0
    .goto 1946,51.11,37.45,40,0
    >>Kill |cRXP_ENEMY_Fenclaw Thrashers|r
    .complete 9845,1 --Fenclaw Thrasher slain (10)
    .mob Fenclaw Thrasher
step
    .goto 1946,52.29,35.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Jhang|r
    .turnin 9876 >>Turn in Failed Incursion
    .target Watcher Jhang
    .isOnQuest 9876
step
    #loop
    .goto 1946,25.61,31.67,0
    .goto 1946,25.61,31.67,40,0
    .goto 1946,21.88,31.13,40,0
    >>Kill |cRXP_ENEMY_Marshlight Bleeders|r
    .complete 9841,1 --Marshlight Bleeder slain (8)
    .mob Marshlight Bleeder
step
    .goto 1946,31.63,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gambarinka|r
    .turnin 9841 >>Turn in Stinging the Stingers
    .accept 9842 >>Accept The Sharpest Blades
    .target Gambarinka
step
    .goto 1946,32.25,49.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurjaya|r
    .turnin 9845 >>Turn in Angling to Beat the Competition
    .accept 9903 >>Accept The Biggest of Them All
    .accept 9904 >>Accept Pursuing Terrorclaw
    .target Zurjaya
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .accept 9795 >>Accept The Ogre Threat
    .target Shadow Hunter Denjai
    .xp <64,1
step
    .goto 1946,32.89,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Tor'gash|r
    .turnin 9814 >>Turn in Burstcap Mushrooms, Mon!
    .accept 9816 >>Accept Have You Ever Seen One of These?
    .target Witch Doctor Tor'gash
step
    .goto 1946,32.01,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Gazgrigg|r
    .accept 9797 >>Accept Reinforcements for Garadar
    .target Messenger Gazgrigg
    .xp <64,1
step
    #loop
    .goto 1946,27.29,54.91,0
    .goto 1946,27.29,54.91,40,0
    .goto 1946,32.81,59.53,40,0
    .goto 1946,34.13,62.14,40,0
    .goto 1946,35.07,59.12,40,0
    >>Kill |cRXP_ENEMY_Marshfang Slicers|r and |cRXP_ENEMY_"Count" Ungulas|r. Loot them for |cRXP_LOOT_Marshfang Slicer Blade|r
    .complete 9842,1 --Marshfang Slicer Blade (10)
    .mob Marshfang Slicer
    .mob "Count" Ungula
step
    .goto 1946,32.81,59.53
    >>Kill |cRXP_ENEMY_"Count" Ungula|r and loot |cRXP_LOOT_"Count" Ungula's Mandible|r. Use it to start the quest
    .collect 25459,1,9911 --"Count" Ungula's Mandible (1)
    .accept 9911 >>Accept The Count of the Marshes
    .use 25459
    .mob "Count" Ungula
step
    .goto 1946,31.63,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gambarinka|r
    .turnin 9842 >>Turn in The Sharpest Blades
    .target Gambarinka
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9775 >>Turn in Report to Shadow Hunter Denjai
    .target Shadow Hunter Denjai
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .accept 9822 >>Accept Impending Attack
    .target Shadow Hunter Denjai
    .isQuestTurnedIn 9820 --any of: WANTED: Boss Grog'ak
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .accept 9795 >>Accept The Ogre Threat
    .target Shadow Hunter Denjai
    .xp <64,1
step
    .goto 1946,32.01,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Gazgrigg|r
    .accept 9797 >>Accept Reinforcements for Garadar
    .target Messenger Gazgrigg
    .xp <64,1
step
    .goto 1946,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9911 >>Turn in The Count of the Marshes
    .target Watcher Leesa'oh
step
    .goto 1946,22.31,45.78
    >>Kill |cRXP_ENEMY_Terrorclaw|r
    .complete 9904,1 --Terrorclaw slain (1)
    .mob Terrorclaw
step
    .goto 1946,19.88,27.09
    >>Pick up |cRXP_PICK_Ango'rosh Attack Plans|r from the ground
    .complete 9822,1 --Ango'rosh Attack Plans (1)
    .isOnQuest 9822
step
    .goto 1946,32.25,49.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurjaya|r
    .turnin 9904 >>Turn in Pursuing Terrorclaw
    .target Zurjaya
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9822 >>Turn in Impending Attack
    .target Shadow Hunter Denjai
    .isOnQuest 9822
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .accept 9823 >>Accept Us or Them
    .accept 10118 >>Accept Message to the Daggerfen
    .target Shadow Hunter Denjai
    .isQuestTurnedIn 9822 --any of: Impending Attack
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .accept 9795 >>Accept The Ogre Threat
    .target Shadow Hunter Denjai
    .xp <64,1
step
    .goto 1946,32.01,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Gazgrigg|r
    .accept 9797 >>Accept Reinforcements for Garadar
    .target Messenger Gazgrigg
    .xp <64,1
step
    .goto 1946,42.23,41.42
    >>Kill |cRXP_ENEMY_Mragesh|r
    .complete 9903,1 --Mragesh slain (1)
    .mob Mragesh
step
    .goto 1946,26.78,22.61
    >>Click the |cRXP_PICK_Murloc Cage|r
    .complete 9816,1 --Murloc Cage
step
    .goto 1946,23.78,26.75
    >>Kill |cRXP_ENEMY_Chieftain Mummaki|r and loot |cRXP_LOOT_Chieftain Mummaki's Totem|r
    .complete 10117,1 --Chieftain Mummaki's Totem (1)
    .mob Chieftain Mummaki
step
    #loop
    .goto 1946,23.75,22.27,0
    .goto 1946,23.75,22.27,40,0
    .goto 1946,26.62,22.82,40,0
    >>Kill |cRXP_ENEMY_Daggerfen Assassins|r
    .complete 10118,1 --Daggerfen Assassin slain (3)
    .mob Daggerfen Assassin
    .isOnQuest 10118
step
    #loop
    .goto 1946,27.23,23.19,0
    .goto 1946,27.23,23.19,40,0
    .goto 1946,24.16,23.37,40,0
    >>Kill |cRXP_ENEMY_Daggerfen Muckdwellers|r
    .complete 10118,2 --Daggerfen Muckdweller slain (15)
    .mob Daggerfen Muckdweller
    .isOnQuest 10118
step
    .goto 1946,52.29,35.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Jhang|r
    .accept 9738 >>Accept Lost in Action
    .target Watcher Jhang
step
    .goto 1946,52.29,35.98
    >>Interact with |cRXP_FRIENDLY_Earthbinder Rayge|r
    .complete 9738,1 --Earthbinder Rayge
step
    .goto 1946,52.29,35.98
    >>Interact with |cRXP_FRIENDLY_Claw|r
    .complete 9738,4 --Claw
step
    .goto 1946,52.29,35.98
    >>Interact with |cRXP_FRIENDLY_Naturalist Bite|r
    .complete 9738,2 --Naturalist Bite
step
    .goto 1946,52.29,35.98
    >>Interact with |cRXP_FRIENDLY_Weeder Greenthumb|r
    .complete 9738,3 --Weeder Greenthumb
step
    .goto 1946,52.29,35.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Jhang|r
    .turnin 9738 >>Turn in Lost in Action
    .target Watcher Jhang
step
    .goto 1946,18.39,7.79
    >>Kill |cRXP_ENEMY_Overlord Gorefist|r
    .complete 9823,1 --Overlord Gorefist slain (1)
    .mob Overlord Gorefist
    .isOnQuest 9823
step
    #loop
    .goto 1946,17.69,8.56,0
    .goto 1946,17.69,8.56,40,0
    .goto 1946,19.86,6.97,40,0
    .goto 1946,20.40,4.44,40,0
    >>Kill |cRXP_ENEMY_Ango'rosh Maulers|r
    .complete 9823,2 --Ango'rosh Mauler slain (10)
    .mob Ango'rosh Mauler
    .isOnQuest 9823
step
    #loop
    .goto 1946,19.86,6.97,0
    .goto 1946,19.86,6.97,40,0
    .goto 1946,20.40,4.44,40,0
    .goto 1946,17.69,8.56,40,0
    >>Kill |cRXP_ENEMY_Ango'rosh Souleaters|r
    .complete 9823,3 --Ango'rosh Souleater slain (10)
    .mob Ango'rosh Souleater
    .isOnQuest 9823
step
    #completewith next
    .hs >>Hearth to Horde Field Scout's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 10117 >>Turn in Wanted: Chieftain Mummaki
    .accept 9795 >>Accept The Ogre Threat
    .target Shadow Hunter Denjai
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9823 >>Turn in Us or Them
    .target Shadow Hunter Denjai
    .isOnQuest 9823
step
    .goto 1946,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 10118 >>Turn in Message to the Daggerfen
    .target Shadow Hunter Denjai
    .isOnQuest 10118
step
    .goto 1946,32.25,49.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurjaya|r
    .turnin 9903 >>Turn in The Biggest of Them All
    .target Zurjaya
step
    .xp 64 >>Grind to level 64 (Reinforcements for Garadar needs it)
step
    .goto 1946,32.01,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Gazgrigg|r
    .accept 9797 >>Accept Reinforcements for Garadar
    .target Messenger Gazgrigg
step
    .goto 1946,32.89,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Tor'gash|r
    .turnin 9816 >>Turn in Have You Ever Seen One of These?
    .target Witch Doctor Tor'gash
step
    +|cRXP_WARN_End of the Zangarmarsh route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blade's Edge Mountains|r: The Ogre Threat
    >>|cRXP_FRIENDLY_Nagrand|r: Reinforcements for Garadar
    >>|cRXP_FRIENDLY_Terokkar Forest|r: News from Zangarmarsh
step
    +|cRXP_WARN_Suggested next zones at level 64|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.8 levels of quests, starting around Tooki; 2 quests from here hand in there), |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.7 levels of quests, starting around Nazgrel; 1 quest from here hands in there). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
]])
