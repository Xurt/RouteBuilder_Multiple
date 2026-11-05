-- 61-65 Zangarmarsh: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 61, 65).
-- Split into 2 guides, listed under "61 - 66 Zangarmarsh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Zangarmarsh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 61 - 66 Zangarmarsh
#subweight -61
#name 61-63 Zangarmarsh: around Ysiel Windsinger
--RouteBuilder:next
#next Zone Routes (Horde)\62-65 Terokkar Forest: around Earthbinder Tavgren

step
    .xp 61 >>Grind to level 61 (Warden Hamoot needs it)
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9778 >>Accept Warden Hamoot
    .target Ysiel Windsinger
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
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9716 >>Accept Disturbance at Umbrafen Lake
    .target Ysiel Windsinger
    .xp <61,1
step
    .goto 102,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9778 >>Turn in Warden Hamoot
    .accept 9728 >>Accept A Warm Welcome
    .target Warden Hamoot
step
    .goto 102,64.55,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alliance Field Scout|r
    .target Alliance Field Scout
    .home >>Set your Hearthstone to Alliance Field Scout's inn
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
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .accept 9716 >>Accept Disturbance at Umbrafen Lake
    .target Ysiel Windsinger
step
    .goto 102,84.76,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gur'zil|r
    .fp Swamprat Post >> Get the Swamprat Post Flight Path
    .target Gur'zil
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .turnin 10103 >>Turn in Report to Zurai
    .target Zurai
    .isOnQuest 10103
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .accept 9774 >>Accept Thick Hydra Scales
    .target Zurai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .accept 9770 >>Accept Menacing Marshfangs
    .target Reavij
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .accept 9769 >>Accept There's No Explanation for Fashion
    .accept 9773 >>Accept No More Mushrooms!
    .target Magasha
step
    .goto 102,68.63,48.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
    .accept 10355 >>Accept Withered Flesh
    .target Ruam
    .isQuestTurnedIn 9827 --any of: Withered Basidium
    .xp <60,1
step
    #completewith Drop9731x1
    >>|cRXP_LOOT_Drain Schematics|r can drop from |cRXP_ENEMY_Bloodscale Enchantress|r, |cRXP_ENEMY_Bloodscale Slavedriver|r, |cRXP_ENEMY_Steam Pump Overseer|r. Use it to start the quest if you get one
    .collect 24330,1,9731 --Drain Schematics (1)
    .accept 9731 >>Accept Drain Schematics
    .use 24330
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop9731x1
    >>|cRXP_LOOT_Withered Basidium|r can drop from |cRXP_ENEMY_Withered Giant|r. Use it to start the quest if you get one
    .collect 24484,1,9828 --Withered Basidium (1)
    .accept 9828 >>Accept Withered Basidium
    .use 24484
step
    #label Drop9731x1
    #loop
    .goto 102,60.21,41.93,0
    .goto 102,60.21,41.93,40,0
    .goto 102,58.28,44.94,40,0
    .goto 102,58.00,38.26,40,0
    .goto 102,60.41,36.57,40,0
    >>Kill |cRXP_ENEMY_Darkcrest Taskmasters|r, |cRXP_ENEMY_Darkcrest Sirens|r, |cRXP_ENEMY_Bloodscale Enchantress|r and |cRXP_ENEMY_Bloodscale Slavedrivers|r. Loot them for |cRXP_LOOT_Unidentified Plant Parts|r. It can also be picked up from |cRXP_PICK_Ragveil|r on the ground
    .complete 9802,1 --Unidentified Plant Parts (10)
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
    .mob Bloodscale Enchantress
    .mob Bloodscale Slavedriver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,51.98,41.68,0
    .goto 102,51.98,41.68,40,0
    .goto 102,51.11,37.45,40,0
    .goto 102,48.69,42.35,40,0
    >>Kill |cRXP_ENEMY_Mire Hydras|r, |cRXP_ENEMY_Fenclaw Thrashers|r, |cRXP_ENEMY_Mrageshes|r and |cRXP_ENEMY_Parched Hydras|r. Loot them for |cRXP_LOOT_Thick Hydra Scale|r
    .complete 9774,1 --Thick Hydra Scale (12)
    .mob Mire Hydra
    .mob Fenclaw Thrasher
    .mob Mragesh
    .mob Parched Hydra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Umbrafen Eels|r. Loot them for |cRXP_LOOT_Eel Filet|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9773,1 --Eel Filet (8)
    .mob Umbrafen Eel
step
    #label Along16
    .goto 102,70.89,80.51
    >>Umbrafen Lake Investigated
    .complete 9716,1 --Umbrafen Lake Investigated
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,73.59,72.95,0
    .goto 102,73.59,72.95,40,0
    .goto 102,76.75,68.45,40,0
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along22
    >>As you go: Kill |cRXP_ENEMY_Umbraglow Stingers|r, |cRXP_ENEMY_Marshlight Bleeders|r, |cRXP_ENEMY_Blackstings|r and |cRXP_ENEMY_Bogflare Needlers|r. Loot them for |cRXP_LOOT_Diaphanous Wing|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9769,1 --Diaphanous Wing (8)
    .mob Umbraglow Stinger
    .mob Marshlight Bleeder
    .mob Blacksting
    .mob Bogflare Needler
step
    .goto 102,79.76,71.09
    >>Escort Kayra Longmane to safety
    .complete 9752,1 --Escort Kayra Longmane to safety
step
    #label Along22
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .turnin 9774 >>Turn in Thick Hydra Scales
    .accept 9771 >>Accept Searching for Scout Jyoba
    .accept 9775 >>Accept Report to Shadow Hunter Denjai
    .accept 9796 >>Accept News from Zangarmarsh
    .target Zurai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .turnin 9773 >>Turn in No More Mushrooms!
    .accept 9899 >>Accept A Job Undone
    .target Magasha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Marshfang Rippers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9770,1 --Marshfang Ripper slain (10)
    .mob Marshfang Ripper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along32
    .goto 102,78.01,45.41
    >>Kill |cRXP_ENEMY_Sporewing|r
    .complete 9899,1 --Sporewing slain (1)
    .mob Sporewing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,84.64,50.34,0
    .goto 102,84.64,50.34,40,0
    .goto 102,85.47,49.10,40,0
    >>Kill |cRXP_ENEMY_Marshfang Rippers|r
    .complete 9770,1 --Marshfang Ripper slain (10)
    .mob Marshfang Ripper
step
    #loop
    .goto 102,82.66,43.27,0
    .goto 102,82.66,43.27,40,0
    .goto 102,82.76,39.85,40,0
    >>Kill |cRXP_ENEMY_Parched Hydras|r. Loot them for |cRXP_LOOT_Parched Hydra Sample|r
    .complete 10355,1 --Parched Hydra Sample (5)
    .mob Parched Hydra
    .isOnQuest 10355
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,80.75,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jyoba|r
    .turnin 9771 >>Turn in Searching for Scout Jyoba
    .accept 9772 >>Accept Jyoba's Report
    .target Scout Jyoba
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop9828x2
    >>|cRXP_LOOT_Withered Basidium|r can drop from |cRXP_ENEMY_Withered Giant|r. Use it to start the quest if you get one
    .collect 24484,1,9828 --Withered Basidium (1)
    .accept 9828 >>Accept Withered Basidium
    .use 24484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop9828x2
    #loop
    .goto 102,80.90,32.92,0
    .goto 102,80.90,32.92,40,0
    .goto 102,84.00,35.19,40,0
    .goto 102,84.79,40.20,40,0
    >>Kill |cRXP_ENEMY_Withered Giant|r and loot |cRXP_LOOT_Scout Jyoba's Report|r
    .complete 9772,1 --Scout Jyoba's Report (1)
    .mob Withered Giant
step
    #completewith next
    .hs >>Hearth to Alliance Field Scout's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 102,65.15,40.91
    >>Kill |cRXP_ENEMY_Rajis Fyashe|r
    .complete 9817,1 --Rajis Fyashe slain (1)
    .mob Rajis Fyashe
step
    .goto 102,61.97,40.84
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,3 --Serpent Steam Pump Credit Marker
    .target Serpent Steam Pump Credit Marker
step
    .goto 102,63.11,64.10
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,4 --Lagoon Steam Pump Credit Marker
    .target Lagoon Steam Pump Credit Marker
step
    .goto 102,65.10,68.67
    >>Kill |cRXP_ENEMY_Rajah Haghazed|r
    .complete 9730,1 --Rajah Haghazed slain (1)
    .mob Rajah Haghazed
step
    .goto 102,70.60,80.29
    >>Ysiel Windsinger wants you to use the Ironvine Seeds on the Steam Pump Controls at Serpent Lake, Umbrafen Lake, Marshlight Lake and the Lagoon. Then return to her at the Cenarion Refuge in Zangarmarsh with any leftover seeds you have.
    .complete 9720,1 --Umbrafen Steam Pump Credit Marker
    .target Umbrafen Steam Pump Credit Marker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,77.37,81.54,0
    .goto 102,77.37,81.54,40,0
    .goto 102,78.66,80.23,40,0
    .goto 102,82.64,72.29,40,0
    .goto 102,79.46,73.14,40,0
    >>Kill |cRXP_ENEMY_Umbraglow Stingers|r, |cRXP_ENEMY_Marshlight Bleeders|r, |cRXP_ENEMY_Blackstings|r and |cRXP_ENEMY_Bogflare Needlers|r. Loot them for |cRXP_LOOT_Diaphanous Wing|r
    .complete 9769,1 --Diaphanous Wing (8)
    .mob Umbraglow Stinger
    .mob Marshlight Bleeder
    .mob Blacksting
    .mob Bogflare Needler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .turnin 9769 >>Turn in There's No Explanation for Fashion
    .target Magasha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .turnin 9899 >>Turn in A Job Undone while you are here
    .isQuestComplete 9899
    .target Magasha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .turnin 9770 >>Turn in Menacing Marshfangs while you are here
    .isQuestComplete 9770
    .target Reavij
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .turnin 9772 >>Turn in Jyoba's Report while you are here
    .isQuestComplete 9772
    .target Zurai
step
    #loop
    .goto 102,73.22,93.98,0
    .goto 102,73.22,93.98,40,0
    .goto 102,71.91,97.15,40,0
    >>Kill |cRXP_ENEMY_Lord Klaq|r
    >>Pick up |cRXP_PICK_Ikeyen's Belongings|r from the ground
    >>Kill |cRXP_ENEMY_Marsh Lurkers|r
    >>Kill |cRXP_ENEMY_Marsh Dredgers|r
    .complete 9894,1 --Lord Klaq slain (1)
    .complete 9788,1 --Ikeyen's Belongings (1)
    .complete 10096,2 --Marsh Lurker slain (10)
    .complete 10096,1 --Marsh Dredger slain (10)
    .mob Lord Klaq
    .mob Marsh Lurker
    .mob Marsh Dredger
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
    .turnin 9817 >>Turn in Leader of the Bloodscale
    .target Warden Hamoot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.36,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magasha|r
    .turnin 9899 >>Turn in A Job Undone
    .target Magasha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .turnin 9770 >>Turn in Menacing Marshfangs
    .accept 9898 >>Accept The Respect of Another
    .target Reavij
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,85.28,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurai|r
    .turnin 9772 >>Turn in Jyoba's Report
    .target Zurai
step
    .goto 102,33.07,51.07
    >>Talk to |cRXP_FRIENDLY_Du'ga|r
    .fp Zabra'jin >> Get the Zabra'jin Flight Path
    .target Du'ga
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.38,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Janidi|r
    .accept 9846 >>Accept Spirits of the Feralfen
    .target Seer Janidi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9775 >>Turn in Report to Shadow Hunter Denjai while you are here
    .isQuestComplete 9775
    .target Shadow Hunter Denjai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.89,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Tor'gash|r
    .accept 9814 >>Accept Burstcap Mushrooms, Mon!
    .target Witch Doctor Tor'gash
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.25,49.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurjaya|r
    .accept 9845 >>Accept Angling to Beat the Competition
    .target Zurjaya
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.00,49.33
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10117 >>Accept Wanted: Chieftain Mummaki
    .accept 9820 >>Accept WANTED: Boss Grog'ak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,31.63,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gambarinka|r
    .accept 9841 >>Accept Stinging the Stingers
    .target Gambarinka
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
    .goto 102,15.10,61.21
    >>Investigate the Spawning Glen
    .complete 9701,1 --Investigate the Spawning Glen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .turnin 9828 >>Turn in Withered Basidium
    .target Reavij
    .isOnQuest 9828
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
    .goto 102,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9702 >>Turn in A Question of Gluttony
    .accept 9708 >>Accept Familiar Fungi
    .target Watcher Leesa'oh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,25.67,54.29,0
    .goto 102,25.67,54.29,40,0
    .goto 102,28.39,52.47,40,0
    .goto 102,28.80,45.58,40,0
    >>Pick up |cRXP_PICK_Burstcap Mushroom|r from the ground
    .complete 9814,1 --Burstcap Mushroom (6)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along68
    >>As you go: Kill |cRXP_ENEMY_Feralfen Hunters|r, |cRXP_ENEMY_Feralfen Mystics|r and |cRXP_ENEMY_Feralfen Druids|r. Loot them for |cRXP_LOOT_Feralfen Protection Totem|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9846,1 --Feralfen Protection Totem (10)
    .mob Feralfen Hunter
    .mob Feralfen Mystic
    .mob Feralfen Druid
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along68
    .goto 102,49.75,60.06
    >>Kill |cRXP_ENEMY_Blacksting|r and loot |cRXP_LOOT_Blacksting's Stinger|r
    .complete 9898,1 --Blacksting's Stinger (1)
    .mob Blacksting
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,46.16,60.48,0
    .goto 102,46.16,60.48,40,0
    .goto 102,43.24,63.37,40,0
    >>Kill |cRXP_ENEMY_Feralfen Hunters|r, |cRXP_ENEMY_Feralfen Mystics|r and |cRXP_ENEMY_Feralfen Druids|r. Loot them for |cRXP_LOOT_Feralfen Protection Totem|r
    .complete 9846,1 --Feralfen Protection Totem (10)
    .mob Feralfen Hunter
    .mob Feralfen Mystic
    .mob Feralfen Druid
step
    .goto 102,50.44,40.91
    >>Drain Located
    .complete 9731,1 --Drain Located
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,51.98,41.68,0
    .goto 102,51.98,41.68,40,0
    .goto 102,51.11,37.45,40,0
    .goto 102,48.69,42.35,40,0
    >>Kill |cRXP_ENEMY_Fenclaw Thrashers|r
    .complete 9845,1 --Fenclaw Thrasher slain (10)
    .mob Fenclaw Thrasher
step
    #loop
    .goto 102,35.42,34.49,0
    .goto 102,35.42,34.49,40,0
    .goto 102,36.22,28.32,40,0
    .goto 102,33.71,28.43,40,0
    >>Kill |cRXP_ENEMY_Boss Grog'ak|r and loot |cRXP_LOOT_Boss Grog'ak's Head|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Ango'rosh Ogres|r, |cRXP_ENEMY_Ango'rosh Shamans|r, |cRXP_ENEMY_Boss Grog'aks|r and |cRXP_ENEMY_Ango'rosh Sentries|r. Loot them for |cRXP_LOOT_Mushroom Sample|r
    .complete 9820,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Boss Grog'ak's Head (1)
    .complete 9708,1 --Mushroom Sample (15)
    .mob Boss Grog'ak
    .mob Ango'rosh Ogre
    .mob Ango'rosh Shaman
    .mob Ango'rosh Sentry
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,25.61,31.67,0
    .goto 102,25.61,31.67,40,0
    .goto 102,21.88,31.13,40,0
    >>Kill |cRXP_ENEMY_Marshlight Bleeders|r
    .complete 9841,1 --Marshlight Bleeder slain (8)
    .mob Marshlight Bleeder
step
    #completewith Along74
    >>As you go: Kill |cRXP_ENEMY_Rajis Fyashes|r, |cRXP_ENEMY_Rajah Haghazeds|r, |cRXP_ENEMY_Darkcrest Taskmasters|r and |cRXP_ENEMY_Darkcrest Sirens|r. Loot them for |cRXP_LOOT_Naga Claws|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9728,1 --Naga Claws (30)
    .mob Rajis Fyashe
    .mob Rajah Haghazed
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
step
    #label Along74
    .goto 102,25.40,42.86
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
    .goto 102,24.70,42.44,0
    .goto 102,24.70,42.44,40,0
    .goto 102,27.07,41.50,40,0
    .goto 102,27.06,45.20,40,0
    >>Kill |cRXP_ENEMY_Rajis Fyashes|r, |cRXP_ENEMY_Rajah Haghazeds|r, |cRXP_ENEMY_Darkcrest Taskmasters|r and |cRXP_ENEMY_Darkcrest Sirens|r. Loot them for |cRXP_LOOT_Naga Claws|r
    .complete 9728,1 --Naga Claws (30)
    .mob Rajis Fyashe
    .mob Rajah Haghazed
    .mob Darkcrest Taskmaster
    .mob Darkcrest Siren
step
    .goto 102,79.09,65.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Hamoot|r
    .turnin 9728 >>Turn in A Warm Welcome
    .target Warden Hamoot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,31.63,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gambarinka|r
    .turnin 9841 >>Turn in Stinging the Stingers
    .accept 9842 >>Accept The Sharpest Blades
    .target Gambarinka
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9820 >>Turn in WANTED: Boss Grog'ak while you are here
    .isQuestComplete 9820
    .target Shadow Hunter Denjai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.25,49.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurjaya|r
    .turnin 9845 >>Turn in Angling to Beat the Competition
    .accept 9903 >>Accept The Biggest of Them All
    .accept 9904 >>Accept Pursuing Terrorclaw
    .target Zurjaya
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.89,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Tor'gash|r
    .turnin 9814 >>Turn in Burstcap Mushrooms, Mon!
    .accept 9816 >>Accept Have You Ever Seen One of These?
    .target Witch Doctor Tor'gash
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.38,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Janidi|r
    .turnin 9846 >>Turn in Spirits of the Feralfen
    .accept 9847 >>Accept A Spirit Ally?
    .target Seer Janidi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along81
    >>As you go: Kill |cRXP_ENEMY_Marshfang Slicers|r and |cRXP_ENEMY_"Count" Ungulas|r. Loot them for |cRXP_LOOT_Marshfang Slicer Blade|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9842,1 --Marshfang Slicer Blade (10)
    .mob Marshfang Slicer
    .mob "Count" Ungula
step
    #label Along81
    .goto 102,32.81,59.53
    >>Kill |cRXP_ENEMY_"Count" Ungula|r and loot |cRXP_LOOT_"Count" Ungula's Mandible|r. Use it to start the quest
    .collect 25459,1,9911 --"Count" Ungula's Mandible (1)
    .accept 9911 >>Accept The Count of the Marshes
    .use 25459
    .mob "Count" Ungula
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,32.81,59.53,0
    .goto 102,32.81,59.53,40,0
    .goto 102,35.07,59.12,40,0
    .goto 102,34.13,62.14,40,0
    .goto 102,26.07,56.09,40,0
    >>Kill |cRXP_ENEMY_Marshfang Slicers|r and |cRXP_ENEMY_"Count" Ungulas|r. Loot them for |cRXP_LOOT_Marshfang Slicer Blade|r
    .complete 9842,1 --Marshfang Slicer Blade (10)
    .mob Marshfang Slicer
    .mob "Count" Ungula
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,44.29,66.90
    >>Kill |cRXP_ENEMY_Feralfen Serpent Spirit|r
    .complete 9847,1 --Feralfen Serpent Spirit slain (1)
    .mob Feralfen Serpent Spirit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.38,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Janidi|r
    .turnin 9847 >>Turn in A Spirit Ally?
    .target Seer Janidi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,31.63,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gambarinka|r
    .turnin 9842 >>Turn in The Sharpest Blades
    .target Gambarinka
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9775 >>Turn in Report to Shadow Hunter Denjai
    .turnin 9820 >>Turn in WANTED: Boss Grog'ak
    .accept 9822 >>Accept Impending Attack
    .target Shadow Hunter Denjai
step
    .goto 102,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9708 >>Turn in Familiar Fungi
    .turnin 9911 >>Turn in The Count of the Marshes
    .accept 9709 >>Accept Stealing Back the Mushrooms
    .target Watcher Leesa'oh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,22.31,45.78
    >>Kill |cRXP_ENEMY_Terrorclaw|r
    .complete 9904,1 --Terrorclaw slain (1)
    .mob Terrorclaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,19.88,27.09
    >>Pick up |cRXP_PICK_Ango'rosh Attack Plans|r from the ground
    .complete 9822,1 --Ango'rosh Attack Plans (1)
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
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9720 >>Turn in Balance Must Be Preserved
    .target Ysiel Windsinger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.25,49.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurjaya|r
    .turnin 9904 >>Turn in Pursuing Terrorclaw
    .target Zurjaya
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9822 >>Turn in Impending Attack
    .accept 9823 >>Accept Us or Them
    .accept 10118 >>Accept Message to the Daggerfen
    .target Shadow Hunter Denjai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,42.23,41.42
    >>Kill |cRXP_ENEMY_Mragesh|r
    .complete 9903,1 --Mragesh slain (1)
    .mob Mragesh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along96
    >>As you go: Kill |cRXP_ENEMY_Daggerfen Assassins|r. Kill |cRXP_ENEMY_Daggerfen Muckdwellers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10118,1 --Daggerfen Assassin slain (3)
    .complete 10118,2 --Daggerfen Muckdweller slain (15)
    .mob Daggerfen Assassin
    .mob Daggerfen Muckdweller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along96
    .goto 102,26.78,22.61
    >>Click the |cRXP_PICK_Murloc Cage|r
    .complete 9816,1 --Murloc Cage
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 102,26.62,22.82,0
    .goto 102,26.62,22.82,40,0
    .goto 102,25.07,25.19,40,0
    .goto 102,23.35,22.21,40,0
    >>Kill |cRXP_ENEMY_Chieftain Mummaki|r and loot |cRXP_LOOT_Chieftain Mummaki's Totem|r
    >>Kill |cRXP_ENEMY_Daggerfen Assassins|r
    >>Kill |cRXP_ENEMY_Daggerfen Muckdwellers|r
    .complete 10117,1 --Chieftain Mummaki's Totem (1)
    .complete 10118,1 --Daggerfen Assassin slain (3)
    .complete 10118,2 --Daggerfen Muckdweller slain (15)
    .mob Chieftain Mummaki
    .mob Daggerfen Assassin
    .mob Daggerfen Muckdweller
step
    #loop
    .goto 102,19.90,7.24,0
    .goto 102,19.90,7.24,40,0
    .goto 102,20.40,4.44,40,0
    .goto 102,17.87,7.95,40,0
    >>Kill |cRXP_ENEMY_Overlord Gorefist|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Ango'rosh Maulers|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Ango'rosh Souleaters|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Ango'rosh Maulers|r, |cRXP_ENEMY_Ango'rosh Souleaters|r, |cRXP_ENEMY_Overlord Gorefists|r and |cRXP_ENEMY_Captain Kroshes|r. Loot them for |cRXP_LOOT_Box of Mushrooms|r. It can also be picked up from |cRXP_PICK_Box of Mushrooms|r on the ground
    .complete 9823,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Overlord Gorefist slain (1)
    .complete 9823,2 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Ango'rosh Mauler slain (10)
    .complete 9823,3 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Ango'rosh Souleater slain (10)
    .complete 9709,1 --Box of Mushrooms (10)
    .mob Overlord Gorefist
    .mob Ango'rosh Mauler
    .mob Ango'rosh Souleater
    .mob Captain Krosh
step
    .goto 102,23.32,66.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Leesa'oh|r
    .turnin 9709 >>Turn in Stealing Back the Mushrooms
    .target Watcher Leesa'oh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .turnin 9823 >>Turn in Us or Them
    .turnin 10118 >>Turn in Message to the Daggerfen
    .turnin 10117 >>Turn in Wanted: Chieftain Mummaki
    .target Shadow Hunter Denjai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.25,49.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zurjaya|r
    .turnin 9903 >>Turn in The Biggest of Them All
    .target Zurjaya
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.89,48.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Tor'gash|r
    .turnin 9816 >>Turn in Have You Ever Seen One of These?
    .target Witch Doctor Tor'gash
step
    #loop
    .goto 102,79.49,44.84,0
    .goto 102,79.49,44.84,40,0
    .goto 102,83.63,44.65,40,0
    .goto 102,84.00,37.28,40,0
    >>Kill |cRXP_ENEMY_Withered Bog Lords|r. Loot them for |cRXP_LOOT_Withered Bog Lord Sample|r
    .complete 10355,2 --Withered Bog Lord Sample (5)
    .mob Withered Bog Lord
    .isOnQuest 10355
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,84.96,54.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reavij|r
    .turnin 9898 >>Turn in The Respect of Another
    .target Reavij
step
    .goto 102,78.40,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysiel Windsinger|r
    .turnin 9732 >>Turn in Return to the Marsh
    .target Ysiel Windsinger
    .isOnQuest 9732
step
    .goto 102,68.63,48.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruam|r
    .turnin 10355 >>Turn in Withered Flesh
    .target Ruam
    .isOnQuest 10355
step
    +|cRXP_WARN_That is all of Zangarmarsh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hellfire Peninsula|r: Warning the Cenarion Circle
    >>|cRXP_FRIENDLY_Terokkar Forest|r: News from Zangarmarsh << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 62|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 1.0 levels of quests, starting around Earthbinder Tavgren). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Zangarmarsh is planned from level 65.|r Load its guide for level 65 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 61 - 66 Zangarmarsh
#subweight -61
#name 65-66 Zangarmarsh
--RouteBuilder:next
#next Zone Routes (Horde)\62-65 Terokkar Forest: around Earthbinder Tavgren;Zone Routes (Horde)\65-67 Nagrand: around Hemet Nesingwary

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,32.01,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Gazgrigg|r
    .accept 9797 >>Accept Reinforcements for Garadar
    .target Messenger Gazgrigg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 102,30.74,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Denjai|r
    .accept 9795 >>Accept The Ogre Threat
    .target Shadow Hunter Denjai
step
    +|cRXP_WARN_End of the Zangarmarsh route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blade's Edge Mountains|r: The Ogre Threat << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Nagrand|r: Reinforcements for Garadar << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 65|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.8 levels of quests, starting around Earthbinder Tavgren), |cRXP_FRIENDLY_Nagrand|r (about 0.7 levels of quests, starting around Hemet Nesingwary). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
]])
