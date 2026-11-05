-- 73-75 Grizzly Hills: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 73, 81).
-- Split into 2 guides, listed under "73 - 82 Grizzly Hills" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Grizzly Hills.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 73 - 82 Grizzly Hills
#subweight -73
#name 73-75 Grizzly Hills: around Drakuru
--RouteBuilder:next
#next Zone Routes (Alliance)\71-74 Borean Tundra: around Elder Atkanok;Zone Routes (Alliance)\72-74 Dragonblight: around Aurastrasza;Zone Routes (Alliance)\70-73 Howling Fjord: around Lurielle

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.10,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Woodsman Anderhol|r
    .accept 12212 >>Accept Replenishing the Storehouse
    .accept 12215 >>Accept Them or Us!
    .target Master Woodsman Anderhol
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along2
    >>As you go: Kill |cRXP_ENEMY_Tallhorn Stags|r. Loot them for |cRXP_LOOT_Succulent Venison|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12212,1 --Succulent Venison (8)
    .mob Tallhorn Stag
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .turnin 12511 >>Turn in The Hills Have Us
    .target Lieutenant Dumont
    .isOnQuest 12511
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along2
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .accept 12292 >>Accept Local Support
    .target Lieutenant Dumont
step
    .goto 116,59.00,28.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veira Langdon|r
    .target Veira Langdon
    .home >>Set your Hearthstone to Veira Langdon's inn
step
    .goto 116,31.31,59.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vana|r
    .fp Amberpine Lodge >> Get the Amberpine Lodge flight path
    .target Vana Grey
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.08,26.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Percy|r
    .accept 12414 >>Accept Mounting Up
    .target Squire Percy
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.42,26.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gryan Stoutmantle|r
    .accept 11998 >>Accept Softening the Blow
    .target Captain Gryan Stoutmantle
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,25.53,67.36,0
    .goto 116,25.53,67.36,40,0
    .goto 116,24.36,71.39,40,0
    >>Kill |cRXP_ENEMY_Graymist Hunters|r
    .complete 12215,1 --Graymist Hunter slain (6)
    .mob Graymist Hunter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,21.72,72.58,0
    .goto 116,21.72,72.58,40,0
    .goto 116,18.15,71.60,40,0
    >>Kill |cRXP_ENEMY_Tallhorn Stags|r. Loot them for |cRXP_LOOT_Succulent Venison|r
    .complete 12212,1 --Succulent Venison (8)
    .mob Tallhorn Stag
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,15.87,65.27
    >>Pick up |cRXP_PICK_Cedar Chest|r from the ground
    .complete 12292,1 --Cedar Chest (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .turnin 12292 >>Turn in Local Support
    .accept 12293 >>Accept Close the Deal
    .target Lieutenant Dumont
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.10,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Woodsman Anderhol|r
    .turnin 12212 >>Turn in Replenishing the Storehouse
    .turnin 12215 >>Turn in Them or Us!
    .accept 12216 >>Accept Take Their Rear!
    .accept 12217 >>Accept Eagle Eyes
    .target Master Woodsman Anderhol
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .accept 12210 >>Accept Troll Season!
    .target Lieutenant Dumont
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,34.77,55.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ivan|r
    .turnin 12293 >>Turn in Close the Deal
    .accept 12294 >>Accept A Tentative Pact
    .target Ivan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,34.65,51.26,0
    .goto 116,34.65,51.26,40,0
    .goto 116,31.66,48.15,40,0
    >>Kill |cRXP_ENEMY_Imperial Eagles|r
    .complete 12217,1 --Imperial Eagle slain (5)
    .mob Imperial Eagle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,29.13,52.07,0
    .goto 116,29.13,52.07,40,0
    .goto 116,29.19,57.06,40,0
    >>Kill |cRXP_ENEMY_Ursus Maulers|r and |cRXP_ENEMY_Grizzly Bears|r. Loot them for |cRXP_LOOT_Grizzly Flank|r
    .complete 12216,1 --Grizzly Flank (8)
    .mob Ursus Mauler
    .mob Grizzly Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .turnin 12294 >>Turn in A Tentative Pact
    .accept 12295 >>Accept An Exercise in Diplomacy
    .accept 12210 >>Accept Troll Season!
    .target Lieutenant Dumont
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.10,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Woodsman Anderhol|r
    .turnin 12217 >>Turn in Eagle Eyes
    .turnin 12216 >>Turn in Take Their Rear!
    .target Master Woodsman Anderhol
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.42,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woodsman Drake|r
    .accept 12222 >>Accept Secrets of the Flamebinders
    .accept 12223 >>Accept Thinning the Ranks
    .target Woodsman Drake
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along15
    >>As you go: Kill |cRXP_ENEMY_Dragonflayer Huscarls|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12223,1 --Dragonflayer Huscarl slain (12)
    .mob Dragonflayer Huscarl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along15
    #loop
    .goto 116,31.13,76.38,0
    .goto 116,31.13,76.38,40,0
    .goto 116,32.32,79.70,40,0
    >>Kill |cRXP_ENEMY_Dragonflayer Flamebinders|r. Loot them for |cRXP_LOOT_Flame-Imbued Talisman|r
    .complete 12222,1 --Flame-Imbued Talisman (3)
    .mob Dragonflayer Flamebinder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,28.38,76.31,0
    .goto 116,28.38,76.31,40,0
    .goto 116,29.03,72.97,40,0
    .goto 116,24.91,78.98,40,0
    >>Kill |cRXP_ENEMY_Dragonflayer Huscarls|r
    .complete 12223,1 --Dragonflayer Huscarl slain (12)
    .mob Dragonflayer Huscarl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.42,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woodsman Drake|r
    .turnin 12222 >>Turn in Secrets of the Flamebinders
    .turnin 12223 >>Turn in Thinning the Ranks
    .target Woodsman Drake
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.80,59.55
    >>Click the |cRXP_PICK_Amberseed|r
    .accept 12225 >>Accept Mmm... Amberseeds!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.10,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Woodsman Anderhol|r
    .turnin 12225 >>Turn in Mmm... Amberseeds!
    .accept 12226 >>Accept Just Passing Through
    .target Master Woodsman Anderhol
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.42,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woodsman Drake|r
    .accept 12255 >>Accept The Thane of Voldrune
    .target Woodsman Drake
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,29.53,57.20,0
    .goto 116,29.53,57.20,40,0
    .goto 116,29.84,54.05,40,0
    >>Loot the |cRXP_PICK_Blackroots|r for |cRXP_LOOT_Blackroot Stalk|r
    .complete 12226,1 --Blackroot Stalk (5)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.10,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Woodsman Anderhol|r
    .turnin 12226 >>Turn in Just Passing Through
    .accept 12227 >>Accept Doing Your Duty
    .target Master Woodsman Anderhol
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.22,58.88
    >>Open the |cRXP_PICK_Amberpine Outhouse|r. Loot it for |cRXP_LOOT_Partially Processed Amberseeds|r
    .complete 12227,1 --Partially Processed Amberseeds (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.10,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Woodsman Anderhol|r
    .turnin 12227 >>Turn in Doing Your Duty
    .target Master Woodsman Anderhol
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.42,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woodsman Drake|r
    .accept 12255 >>Accept The Thane of Voldrune
    .target Woodsman Drake
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,23.02,80.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barblefink|r
    .accept 12443 >>Accept Seeking Solvent
    .target Barblefink
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,16.44,80.33
    >>Pick up |cRXP_PICK_Element 115|r from the ground
    .complete 12443,1 --Element 115 (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,23.02,80.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barblefink|r
    .turnin 12443 >>Turn in Seeking Solvent
    .target Barblefink
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,27.06,72.86
    >>Kill |cRXP_ENEMY_Thane Torvald Eriksson|r
    .complete 12255,1 --Thane Torvald Eriksson slain (1)
    .mob Thane Torvald Eriksson
step
    .goto 116,16.19,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samir|r
    .turnin 12210 >>Turn in Troll Season! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 11984 >>Accept Filling the Cages
    .target Samir
step
    .goto 116,16.19,47.61
    >>Samir at Granite Springs wants you to use the Bounty Hunter's Cage on a drakkari troll that's been stunned by Budd.
    .complete 11984,1 --Quest Invisman - Filling the Cages (1)
step
    .goto 116,16.19,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samir|r
    .turnin 11984 >>Turn in Filling the Cages
    .target Samir
step
    .goto 116,16.43,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
    .accept 11989 >>Accept Truce?
    .target Drakuru
step
    .goto 116,16.54,47.80
    >>Pick up |cRXP_PICK_Dull Carving Knife|r from the ground
    .collect 38083,1,11989,1 --Dull Carving Knife (1)
step
    .goto 116,16.43,47.77
    >>Drakuru at Granite Springs wants you to use the Dull Carving Knife near his cage and then speak to him.
    .complete 11989,1 --Drakuru Handshake KC Bunny (1)
step
    .goto 116,16.43,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
    .turnin 11989 >>Turn in Truce?
    .accept 11990 >>Accept Vial of Visions
    .target Drakuru
step
    #completewith next
    .hs >>Hearth to Veira Langdon's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 116,59.80,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Crystal Vial|r from |cRXP_FRIENDLY_Maevin Farmoon|r
    .complete 11990,1 --Crystal Vial (1)
    .target Maevin Farmoon
step
    #loop
    .goto 116,15.01,39.77,0
    .goto 116,15.01,39.77,40,0
    .goto 116,15.52,44.94,40,0
    >>Open the |cRXP_PICK_Hazewood Bush|r. Loot it for |cRXP_LOOT_Haze Leaf|r
    >>Open the |cRXP_PICK_Waterweed|r. Loot it for |cRXP_LOOT_Waterweed Frond|r
    .complete 11990,2 --Haze Leaf (1)
    .complete 11990,3 --Waterweed Frond (1)
step
    .goto 116,16.43,47.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drakuru|r
    .turnin 11990 >>Turn in Vial of Visions
    .accept 11991 >>Accept Subject to Interpretation
    .target Drakuru
step
    .goto 116,15.73,46.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prigmon|r
    .accept 12484 >>Accept Scourgekabob
    .target Prigmon
step
    .goto 116,15.84,46.71
    >>Pick up |cRXP_PICK_Scourged Troll Mummy|r from the ground
    .collect 38149,1,12484,1 --Scourged Troll Mummy (1)
step
    .goto 116,15.73,46.69
    >>Prigmon at Granite Springs wants you to bring a Mummified Troll Carcass to Mack Fearsen and place it in the fire.
    .complete 12484,1 --Mummified Carcass KC Bunny (1)
step
    .goto 116,16.67,48.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mack Fearsen|r
    .turnin 12484 >>Turn in Scourgekabob
    .accept 12029 >>Accept Seared Scourge
    .target Mack Fearsen
step
    .goto 116,15.73,46.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prigmon|r
    .accept 12483 >>Accept Shimmercap Stew
    .target Prigmon
step
    #loop
    .goto 116,11.56,55.19,0
    .goto 116,11.56,55.19,40,0
    .goto 116,11.06,62.62,40,0
    .goto 116,13.31,62.44,40,0
    >>Loot the |cRXP_PICK_Shimmering Snowcaps|r for |cRXP_LOOT_Shimmering Snowcap|r
    >>Kill |cRXP_ENEMY_Ice Serpents|r and |cRXP_ENEMY_Serpent Defenders|r. Loot them for |cRXP_LOOT_Ice Serpent Eye|r
    .complete 12483,2 --Shimmering Snowcap (5)
    .complete 12483,1 --Ice Serpent Eye (5)
    .mob Ice Serpent
    .mob Serpent Defender
step
    .goto 116,13.24,60.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Drakuru|r
    .turnin 11991 >>Turn in Subject to Interpretation
    .accept 12007 >>Accept Sacrifices Must be Made
    .target Image of Drakuru
step
    #completewith Along49
    >>As you go: Pick up |cRXP_PICK_Sweetroot|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12483,3 --Sweetroot (5)
step
    .goto 116,14.50,38.01
    >>Kill |cRXP_ENEMY_Warlord Zim'bo|r and loot |cRXP_LOOT_Zim'bo's Mojo|r
    .collect 35836,1,12007,1 --Zim'bo's Mojo (1)
    .mob Warlord Zim'bo
step
    #loop
    .goto 116,16.18,28.30,0
    .goto 116,16.18,28.30,40,0
    .goto 116,17.48,27.91,40,0
    .goto 116,19.42,28.54,40,0
    >>Kill |cRXP_ENEMY_Drakkari Plaguebringers|r, |cRXP_ENEMY_Famished Scourge Trolls|r, |cRXP_ENEMY_Horrified Drakkari Warriors|r and |cRXP_ENEMY_Horrified Drakkari Shamans|r
    .complete 12029,1 --Drakkari Plaguebringer (8)
    .mob Drakkari Plaguebringer
    .mob Famished Scourge Troll
    .mob Horrified Drakkari Warrior
    .mob Horrified Drakkari Shaman
step
    .goto 116,18.01,36.48
    >>Open the |cRXP_PICK_Seer of Zeb'Halak|r. Loot it for |cRXP_LOOT_Eye of the Prophets|r
    .complete 12007,1 --Eye of the Prophets (1)
step
    #label Along49
    .goto 116,17.42,36.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Drakuru|r
    .turnin 12007 >>Turn in Sacrifices Must be Made
    .accept 12042 >>Accept Heart of the Ancients
    .target Image of Drakuru
step
    #loop
    .goto 116,16.98,35.39,0
    .goto 116,16.98,35.39,40,0
    .goto 116,19.09,35.06,40,0
    .goto 116,13.56,37.16,40,0
    >>Pick up |cRXP_PICK_Sweetroot|r from the ground
    .complete 12483,3 --Sweetroot (5)
step
    .goto 116,15.73,46.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prigmon|r
    .turnin 12483 >>Turn in Shimmercap Stew
    .accept 12190 >>Accept Say Hello to My Little Friend
    .target Prigmon
step
    .goto 116,16.67,48.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mack Fearsen|r
    .turnin 12029 >>Turn in Seared Scourge
    .target Mack Fearsen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,26.41,35.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Envoy Ducal|r
    .turnin 12295 >>Turn in An Exercise in Diplomacy
    .target Envoy Ducal
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,26.48,35.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergei|r
    .accept 12299 >>Accept Northern Hospitality
    .target Sergei
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along55
    >>As you go: Kill |cRXP_ENEMY_Conquest Hold Marauders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12299,1 --Conquest Hold Marauder slain (8)
    .mob Conquest Hold Marauder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along55
    .goto 116,25.61,33.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katja|r
    .accept 12307 >>Accept Wolfsbane Root
    .target Katja
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along56
    >>As you go: Click the |cRXP_PICK_Wolfsbane Root|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12307,1 --Wolfsbane Root
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along56
    #loop
    .goto 116,24.28,35.13,0
    .goto 116,24.28,35.13,40,0
    .goto 116,23.80,31.50,40,0
    >>Kill |cRXP_ENEMY_Conquest Hold Marauders|r
    .complete 12299,1 --Conquest Hold Marauder slain (8)
    .mob Conquest Hold Marauder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,26.33,38.61,0
    .goto 116,26.33,38.61,40,0
    .goto 116,29.23,35.09,40,0
    >>Click the |cRXP_PICK_Wolfsbane Root|r
    .complete 12307,1 --Wolfsbane Root
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,26.48,35.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergei|r
    .turnin 12299 >>Turn in Northern Hospitality while you are here
    .isQuestComplete 12299
    .target Sergei
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,25.61,33.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katja|r
    .turnin 12307 >>Turn in Wolfsbane Root
    .target Katja
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,26.48,35.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergei|r
    .turnin 12299 >>Turn in Northern Hospitality
    .target Sergei
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,21.93,29.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Trapper|r
    .accept 12302 >>Accept Words of Warning
    .target Captured Trapper
    .isQuestTurnedIn 12300 --any of: Test of Mettle
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,26.45,31.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caged Prisoner|r
    .turnin 12302 >>Turn in Words of Warning
    .target Caged Prisoner
    .isOnQuest 12302
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,26.45,31.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caged Prisoner|r
    .accept 12308 >>Accept Escape from Silverbrook
    .target Caged Prisoner
    .isQuestTurnedIn 12302 --any of: Words of Warning
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.37,59.14
    >>Escape from Silverbrook
    .complete 12308,1 --Escape from Silverbrook
    .isOnQuest 12308
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.42,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woodsman Drake|r
    .turnin 12255 >>Turn in The Thane of Voldrune
    .target Woodsman Drake
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .turnin 12308 >>Turn in Escape from Silverbrook
    .target Lieutenant Dumont
    .isOnQuest 12308
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .accept 12310 >>Accept A Swift Response
    .target Lieutenant Dumont
    .isQuestTurnedIn 12308 --any of: Escape from Silverbrook
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.01,59.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Haelenai|r
    .accept 12794 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Haelenai
    .xp <74,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop12105x1
    >>|cRXP_LOOT_Mikhail's Journal|r can drop from |cRXP_ENEMY_Silverbrook Hunter|r, |cRXP_ENEMY_Vladek|r. Use it to start the quest if you get one
    .collect 36940,1,12105 --Mikhail's Journal (1)
    .accept 12105 >>Accept Descent into Darkness
    .use 36940
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,36.34,68.56,0
    .goto 116,36.34,68.56,40,0
    .goto 116,37.56,70.22,40,0
    >>Kill |cRXP_ENEMY_Silverbrook Hunters|r
    .complete 12310,1 --Silverbrook Hunter slain (7)
    .mob Silverbrook Hunter
    .isOnQuest 12310
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop12105x1
    .goto 116,36.25,67.85
    >>Kill |cRXP_ENEMY_Vladek|r
    .complete 12310,2 --Vladek slain (1)
    .mob Vladek
    .isOnQuest 12310
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .turnin 12105 >>Turn in Descent into Darkness
    .target Lieutenant Dumont
    .isOnQuest 12105
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .accept 12109 >>Accept Report to Gryan Stoutmantle... Again
    .target Lieutenant Dumont
    .isQuestTurnedIn 12105 --any of: Descent into Darkness
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.83,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dumont|r
    .turnin 12310 >>Turn in A Swift Response
    .target Lieutenant Dumont
    .isOnQuest 12310
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .accept 12219 >>Accept The Failed World Tree
    .accept 12220 >>Accept A Dark Influence
    .target Hierophant Thayreen
    .isQuestTurnedIn 12310 --any of: A Swift Response
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.01,59.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Haelenai|r
    .accept 12794 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Haelenai
    .xp <74,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,30.47,44.07
    >>Kill |cRXP_ENEMY_Vordrassil's Tears Credit|r
    .complete 12220,3 --Vordrassil's Tears Credit slain (1)
    .mob Vordrassil's Tears Credit
    .isOnQuest 12220
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.39,45.76
    >>Kill |cRXP_ENEMY_Vordrassil's Limb Credit|r
    .complete 12220,2 --Vordrassil's Limb Credit slain (1)
    .mob Vordrassil's Limb Credit
    .isOnQuest 12220
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,34.24,49.33,0
    .goto 116,34.24,49.33,40,0
    .goto 116,39.10,50.49,40,0
    .goto 116,41.05,53.45,40,0
    >>Kill |cRXP_ENEMY_Entropic Oozes|r. Loot them for |cRXP_LOOT_Slime Sample|r
    .complete 12219,1 --Slime Sample (6)
    .mob Entropic Ooze
    .isOnQuest 12219
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,41.01,54.63
    >>Kill |cRXP_ENEMY_Vordrassil's Heart Credit|r
    .complete 12220,1 --Vordrassil's Heart Credit slain (1)
    .mob Vordrassil's Heart Credit
    .isOnQuest 12220
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .turnin 12219 >>Turn in The Failed World Tree
    .target Hierophant Thayreen
    .isOnQuest 12219
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .turnin 12220 >>Turn in A Dark Influence
    .target Hierophant Thayreen
    .isOnQuest 12220
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .accept 12246 >>Accept A Possible Link
    .accept 12247 >>Accept Children of Ursoc
    .target Hierophant Thayreen
    .isQuestTurnedIn 12219 --The Failed World Tree
    .isQuestTurnedIn 12220 --A Dark Influence
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.01,59.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Haelenai|r
    .accept 12794 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Haelenai
    .xp <74,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,48.03,58.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orsonn|r
    .complete 12247,1 --Orsonn
    .target Orsonn
    .isOnQuest 12247
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,66.89,62.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kodian|r
    .complete 12247,2 --Kodian
    .target Kodian
    .isOnQuest 12247
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,65.64,58.26,0
    .goto 116,65.64,58.26,40,0
    .goto 116,65.31,54.43,40,0
    >>Kill |cRXP_ENEMY_Redfang Hunters|r, |cRXP_ENEMY_Frostpaw Warriors|r, |cRXP_ENEMY_Frostpaw Shamans|r and |cRXP_ENEMY_Frostpaw Trappers|r. Loot them for |cRXP_LOOT_Crazed Furbolg Blood|r
    .complete 12246,1 --Crazed Furbolg Blood (8)
    .mob Redfang Hunter
    .mob Frostpaw Warrior
    .mob Frostpaw Shaman
    .mob Frostpaw Trapper
    .isOnQuest 12246
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .turnin 12246 >>Turn in A Possible Link
    .target Hierophant Thayreen
    .isOnQuest 12246
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .turnin 12247 >>Turn in Children of Ursoc
    .target Hierophant Thayreen
    .isOnQuest 12247
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .accept 12248 >>Accept Vordrassil's Sapling
    .accept 12250 >>Accept Vordrassil's Seeds
    .target Hierophant Thayreen
    .isQuestTurnedIn 12246 --A Possible Link
    .isQuestTurnedIn 12247 --Children of Ursoc
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.01,59.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Haelenai|r
    .accept 12794 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Haelenai
    .xp <74,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,50.73,42.66
    >>Open the |cRXP_PICK_Vordrassil's Sapling Focus|r. Loot it for |cRXP_LOOT_Vordrassil's Ashes|r
    .complete 12248,1 --Vordrassil's Ashes (1)
    .isOnQuest 12248
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,50.78,41.84,0
    .goto 116,50.78,41.84,40,0
    .goto 116,50.88,36.93,40,0
    .goto 116,52.26,46.41,40,0
    >>Pick up |cRXP_PICK_Vordrassil's Seed|r from the ground
    .complete 12250,1 --Vordrassil's Seed (8)
    .isOnQuest 12250
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .turnin 12248 >>Turn in Vordrassil's Sapling
    .target Hierophant Thayreen
    .isOnQuest 12248
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .turnin 12250 >>Turn in Vordrassil's Seeds
    .target Hierophant Thayreen
    .isOnQuest 12250
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .accept 12249 >>Accept Ursoc, the Bear God
    .target Hierophant Thayreen
    .isQuestTurnedIn 12248 --Vordrassil's Sapling
    .isQuestTurnedIn 12250 --Vordrassil's Seeds
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.01,59.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Haelenai|r
    .accept 12794 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Haelenai
    .xp <74,1
step
    .goto 116,36.95,32.35
    >>Click the |cRXP_PICK_Heart of the Ancients|r
    .turnin 12042 >>Turn in Heart of the Ancients
    .accept 12802 >>Accept My Heart is in Your Hands
step
    .goto 116,45.00,28.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Drakuru|r
    .turnin 12802 >>Turn in My Heart is in Your Hands
    .accept 12068 >>Accept Voices From the Dust
    .target Image of Drakuru
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,49.20,34.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emily|r
    .accept 12027 >>Accept Mr. Floppy's Perilous Adventure
    .target Emily
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,53.81,33.33
    >>Help Emily and Mr. Floppy return to the camp
    .complete 12027,1 --Help Emily and Mr. Floppy return to the camp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.08,26.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Percy|r
    .accept 12414 >>Accept Mounting Up
    .target Squire Percy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.08,26.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Walter|r
    .turnin 12027 >>Turn in Mr. Floppy's Perilous Adventure
    .target Squire Walter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.42,26.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gryan Stoutmantle|r
    .turnin 12109 >>Turn in Report to Gryan Stoutmantle... Again
    .target Captain Gryan Stoutmantle
    .isOnQuest 12109
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.42,26.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gryan Stoutmantle|r
    .accept 12158 >>Accept Hollowstone Mine
    .target Captain Gryan Stoutmantle
    .isQuestTurnedIn 12109 --any of: Report to Gryan Stoutmantle... Again
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.42,26.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gryan Stoutmantle|r
    .accept 11998 >>Accept Softening the Blow
    .accept 12770 >>Accept Reallocating Resources
    .target Captain Gryan Stoutmantle
step
    .goto 116,59.89,26.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samuel|r
    .fp Westfall Brigade Encampment >> Get the Westfall Brigade Encampment flight path
    .target Samuel Clearbook
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,61.79,30.25,0
    .goto 116,61.79,30.25,40,0
    .goto 116,59.64,32.91,40,0
    >>Pick up |cRXP_PICK_Wild Carrot|r from the ground
    .collect 37707,1,12414,1 --Wild Carrot (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,63.64,32.33
    >>Interact with |cRXP_FRIENDLY_Highland Mustangs|r
    .complete 12414,1 --Highland Mustang (5)
    .target Highland Mustang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.08,26.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Percy|r
    .turnin 12414 >>Turn in Mounting Up
    .target Squire Percy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,51.80,18.20
    >>Kill |cRXP_ENEMY_Ursoc|r
    .complete 12249,1 --Ursoc slain (1)
    .mob Ursoc
    .isOnQuest 12249
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,55.13,23.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Petrov|r
    .turnin 12158 >>Turn in Hollowstone Mine
    .target Petrov
    .isOnQuest 12158
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,55.13,23.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Petrov|r
    .accept 12159 >>Accept Souls at Unrest
    .target Petrov
    .isQuestTurnedIn 12158 --any of: Hollowstone Mine
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,55.80,24.19,0
    .goto 116,55.80,24.19,40,0
    .goto 116,53.29,20.86,40,0
    >>Interact with |cRXP_FRIENDLY_Undead Miners|r
    .complete 12159,1 --Undead Miner (8)
    .target Undead Miner
    .isOnQuest 12159
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,55.13,23.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Petrov|r
    .turnin 12159 >>Turn in Souls at Unrest
    .target Petrov
    .isOnQuest 12159
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,55.13,23.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Petrov|r
    .accept 12160 >>Accept A Name from the Past
    .target Petrov
    .isQuestTurnedIn 12159 --any of: Souls at Unrest
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.42,26.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gryan Stoutmantle|r
    .turnin 12160 >>Turn in A Name from the Past
    .target Captain Gryan Stoutmantle
    .isOnQuest 12160
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.17,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Arun|r
    .accept 12161 >>Accept Ruuna the Blind
    .target Private Arun
    .isQuestTurnedIn 12160 --any of: A Name from the Past
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,44.04,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna the Blind|r
    .turnin 12161 >>Turn in Ruuna the Blind
    .target Ruuna the Blind
    .isOnQuest 12161
step
    .goto 116,44.04,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna the Blind|r
    .accept 12328 >>Accept Ruuna's Request
    .target Ruuna the Blind
    .isQuestTurnedIn 12161,12425 --any of: Ruuna the Blind, Ruuna the Blind
    .xp <73,1
step
    #loop
    .goto 116,46.13,41.18,0
    .goto 116,46.13,41.18,40,0
    .goto 116,48.10,35.99,40,0
    >>Kill |cRXP_ENEMY_Fern Feeder Moth|r and loot |cRXP_LOOT_Gossamer Dust|r
    .complete 12328,1 --Gossamer Dust (1)
    .mob Fern Feeder Moth
    .isOnQuest 12328
step
    .goto 116,44.04,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna the Blind|r
    .turnin 12328 >>Turn in Ruuna's Request
    .target Ruuna the Blind
    .isOnQuest 12328
step
    .goto 116,44.04,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna the Blind|r
    .accept 12327 >>Accept Out of Body Experience
    .target Ruuna the Blind
    .isQuestTurnedIn 12328 --any of: Ruuna's Request
    .xp <73,1
step
    .goto 116,44.04,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna the Blind|r
    .accept 12329 >>Accept Fate and Coincidence
    .target Ruuna the Blind
    .isQuestTurnedIn 12327 --any of: Out of Body Experience
    .xp <73,1
step
    .goto 116,44.04,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna the Blind|r
    .turnin 12327 >>Turn in Out of Body Experience
    .target Ruuna the Blind
    .isQuestComplete 12327
step
    #loop
    .goto 116,57.60,41.20,0
    .goto 116,57.60,41.20,40,0
    .goto 116,64.80,43.40,40,0
    .goto 116,87.00,25.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12329 >>Turn in Fate and Coincidence
    .unitscan Sasha
    .isOnQuest 12329
step
    #loop
    .goto 116,57.60,41.20,0
    .goto 116,57.60,41.20,40,0
    .goto 116,64.80,43.40,40,0
    .goto 116,87.00,25.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12134 >>Accept Sasha's Hunt
    .accept 12330 >>Accept Anatoly Will Talk
    .unitscan Sasha
    .isQuestTurnedIn 12329 --any of: Fate and Coincidence
    .xp <73,1
step
    #loop
    .goto 116,61.31,42.39,0
    .goto 116,61.31,42.39,40,0
    .goto 116,61.39,46.06,40,0
    >>Kill |cRXP_ENEMY_Solstice Hunters|r
    .complete 12134,1 --Solstice Hunter slain (12)
    .mob Solstice Hunter
    .isOnQuest 12134
step
    .goto 116,57.77,41.70
    >>Tatjana Delivered
    .complete 12330,1 --Tatjana Delivered
    .isOnQuest 12330
step
    #loop
    .goto 116,57.60,41.20,0
    .goto 116,57.60,41.20,40,0
    .goto 116,64.80,43.40,40,0
    .goto 116,87.00,25.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12134 >>Turn in Sasha's Hunt
    .unitscan Sasha
    .isOnQuest 12134
step
    #loop
    .goto 116,57.60,41.20,0
    .goto 116,57.60,41.20,40,0
    .goto 116,64.80,43.40,40,0
    .goto 116,87.00,25.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12330 >>Turn in Anatoly Will Talk
    .unitscan Sasha
    .isOnQuest 12330
step
    #loop
    .goto 116,57.60,41.20,0
    .goto 116,57.60,41.20,40,0
    .goto 116,64.80,43.40,40,0
    .goto 116,87.00,25.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12411 >>Accept A Sister's Pledge
    .unitscan Sasha
    .isQuestTurnedIn 12330 --any of: Anatoly Will Talk
    .xp <73,1
step
    .goto 116,64.80,43.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anya|r
    .turnin 12411 >>Turn in A Sister's Pledge
    .target Anya
    .isOnQuest 12411
step
    #loop
    .goto 116,57.60,41.20,0
    .goto 116,57.60,41.20,40,0
    .goto 116,64.80,43.40,40,0
    .goto 116,87.00,25.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12164 >>Accept Hour of the Worg
    .unitscan Sasha
    .isQuestTurnedIn 12411 --any of: A Sister's Pledge
    .xp <73,1
step
    .goto 116,69.10,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hugh Glass|r
    .accept 12279 >>Accept A Bear of an Appetite
    .target Hugh Glass
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,69.10,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Howlin' Good Moonshine|r from |cRXP_FRIENDLY_Hugh Glass|r
    .complete 11998,1 --Howlin' Good Moonshine (1)
    .target Hugh Glass
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.80,27.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brugar Stoneshear|r
    .turnin 11998 >>Turn in Softening the Blow
    .accept 12002 >>Accept Brothers in Battle
    .target Brugar Stoneshear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along131
    >>As you go: Kill |cRXP_ENEMY_Runic Battle Golems|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12002,1 --Runic Battle Golem slain (10)
    .mob Runic Battle Golem
step
    .goto 116,63.68,23.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Earthen Warrior|r
    .accept 11981 >>Accept Find Kurun!
    .target Fallen Earthen Warrior
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along131
    .goto 116,64.30,19.77
    >>Click the |cRXP_PICK_Battered Journal|r
    .accept 11986 >>Accept The Damaged Journal
step
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .turnin 11981 >>Turn in Find Kurun! while you are here
    .isQuestComplete 11981
    .target Kurun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,64.32,20.31,0
    .goto 116,64.32,20.31,40,0
    .goto 116,64.47,24.92,40,0
    >>Kill |cRXP_ENEMY_Runic Battle Golems|r
    .complete 12002,1 --Runic Battle Golem slain (10)
    .mob Runic Battle Golem
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.76,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torthen Deepdig|r
    .turnin 11986 >>Turn in The Damaged Journal
    .accept 11988 >>Accept The Runic Keystone
    .target Torthen Deepdig
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.80,27.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brugar Stoneshear|r
    .turnin 12002 >>Turn in Brothers in Battle
    .accept 12003 >>Accept Uncovering the Tunnels
    .target Brugar Stoneshear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along137
    >>As you go: Kill |cRXP_ENEMY_Rune Reavers|r, |cRXP_ENEMY_Iron Rune-Shapers|r and |cRXP_ENEMY_Forgemaster Damraths|r. Loot them for |cRXP_LOOT_Runic Keystone Fragment|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11988,1 --Runic Keystone Fragment (5)
    .mob Rune Reaver
    .mob Iron Rune-Shaper
    .mob Forgemaster Damrath
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,63.45,28.21
    >>Kill |cRXP_ENEMY_South Building|r
    .complete 12003,3 --South Building slain (1)
    .mob South Building
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,66.59,24.34
    >>Kill |cRXP_ENEMY_East Building|r
    .complete 12003,2 --East Building slain (1)
    .mob East Building
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along137
    .goto 116,62.79,21.07
    >>Kill |cRXP_ENEMY_North Building|r
    .complete 12003,1 --North Building slain (1)
    .mob North Building
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,67.58,15.28,0
    .goto 116,67.58,15.28,40,0
    .goto 116,70.18,14.31,40,0
    >>Kill |cRXP_ENEMY_Rune Reavers|r, |cRXP_ENEMY_Iron Rune-Shapers|r and |cRXP_ENEMY_Forgemaster Damraths|r. Loot them for |cRXP_LOOT_Runic Keystone Fragment|r
    .complete 11988,1 --Runic Keystone Fragment (5)
    .mob Rune Reaver
    .mob Iron Rune-Shaper
    .mob Forgemaster Damrath
step
    #loop
    .goto 116,70.47,26.90,0
    .goto 116,70.47,26.90,40,0
    .goto 116,72.74,27.42,40,0
    .goto 116,73.13,23.85,40,0
    >>Kill |cRXP_ENEMY_Drakkari Oracles|r and |cRXP_ENEMY_Drakkari Protectors|r. Loot them for |cRXP_LOOT_Sacred Mojo|r
    .collect 36758,1,12068,1 --Sacred Mojo (1)
    .mob Drakkari Oracle
    .mob Drakkari Protector
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.76,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torthen Deepdig|r
    .turnin 11988 >>Turn in The Runic Keystone
    .accept 11993 >>Accept The Runic Prophecies
    .target Torthen Deepdig
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.80,27.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brugar Stoneshear|r
    .turnin 12003 >>Turn in Uncovering the Tunnels
    .accept 12010 >>Accept The Fate of Orlond
    .target Brugar Stoneshear
step
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .turnin 11981 >>Turn in Find Kurun!
    .accept 11982 >>Accept Raining Down Destruction
    .target Kurun
step
    #loop
    .goto 116,66.12,13.78,0
    .goto 116,66.12,13.78,40,0
    .goto 116,67.52,12.39,40,0
    >>Pick up |cRXP_PICK_Boulder|r from the ground
    .collect 35734,1,11982,1 --Boulder (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,67.49,15.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Orlond|r
    .turnin 12010 >>Turn in The Fate of Orlond while you are here
    .isQuestComplete 12010
    .target Surveyor Orlond
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along144
    >>As you go: Click the |cRXP_PICK_Third Rune Plate|r. Click the |cRXP_PICK_First Rune Plate|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11993,3 --Third Rune Plate
    .complete 11993,1 --First Rune Plate
step
    #label Along144
    #loop
    .goto 116,70.79,13.12,0
    .goto 116,70.79,13.12,40,0
    .goto 116,69.31,14.12,40,0
    .goto 116,69.73,15.35,40,0
    .goto 116,68.20,16.20,40,0
    .goto 116,66.25,15.85,40,0
    .goto 116,66.53,17.00,40,0
    .goto 116,65.12,18.87,40,0
    >>Interact with |cRXP_FRIENDLY_Iron Rune-Shaper|r
    .complete 11982,1 --Iron Rune-Shaper
    .target Iron Rune-Shaper
step
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .turnin 11982 >>Turn in Raining Down Destruction
    .accept 12070 >>Accept Rallying the Troops
    .target Kurun
step
    #loop
    .goto 116,70.60,7.80,0
    .goto 116,70.60,7.80,40,0
    .goto 116,68.59,4.89,40,0
    >>Kill |cRXP_ENEMY_Grizzly Hills Giants|r
    >>Kill |cRXP_ENEMY_Iron Rune Avengers|r
    .complete 12070,1 --Grizzly Hills Giant slain (8)
    .complete 12070,2 --Iron Rune Avenger slain (8)
    .mob Grizzly Hills Giant
    .mob Iron Rune Avenger
step
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .turnin 12070 >>Turn in Rallying the Troops
    .accept 11985 >>Accept Into the Breach
    .target Kurun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along148
    >>As you go: Click the |cRXP_PICK_Third Rune Plate|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11993,3 --Third Rune Plate
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along148
    .goto 116,67.49,15.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Orlond|r
    .turnin 12010 >>Turn in The Fate of Orlond
    .accept 12014 >>Accept Steady as a Rock?
    .target Surveyor Orlond
step
    #loop
    .goto 116,68.42,15.50,0
    .goto 116,68.42,15.50,40,0
    .goto 116,69.80,14.25,40,0
    >>Click the |cRXP_PICK_Third Rune Plate|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Click the |cRXP_PICK_First Rune Plate|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Click the |cRXP_PICK_Second Rune Plate|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Open the |cRXP_PICK_Portable Seismograph|r. Loot it for |cRXP_LOOT_Thor Modan Stability Profile|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Iron Thane Argrum|r
    >>Kill |cRXP_ENEMY_Subterranean Thresher|r and loot |cRXP_LOOT_Portable Seismograph|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 11993,3 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Third Rune Plate
    .complete 11993,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --First Rune Plate
    .complete 11993,2 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Second Rune Plate
    .complete 12014,2 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Thor Modan Stability Profile (1)
    .complete 11985,1 --Iron Thane Argrum slain (1)
    .complete 12014,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Portable Seismograph (1)
    .mob Iron Thane Argrum
    .mob Subterranean Thresher << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .turnin 11985 >>Turn in Into the Breach
    .accept 12081 >>Accept Gavrock
    .target Kurun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.76,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torthen Deepdig|r
    .turnin 11993 >>Turn in The Runic Prophecies
    .target Torthen Deepdig
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,59.80,27.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brugar Stoneshear|r
    .turnin 12014 >>Turn in Steady as a Rock?
    .accept 12128 >>Accept Check Up on Raegar
    .target Brugar Stoneshear
step
    .goto 116,73.77,34.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harkor|r
    .turnin 12190 >>Turn in Say Hello to My Little Friend
    .accept 12113 >>Accept Nice to Meat You
    .accept 12114 >>Accept Therapy
    .target Harkor
step
    #completewith Along154
    >>As you go: Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    #completewith Along154
    >>As you go: Kill |cRXP_ENEMY_Longhoof Grazers|r. Loot them for |cRXP_LOOT_Shovelhorn Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,2 --Shovelhorn Steak (10)
    .mob Longhoof Grazer
step
    #label Along154
    .goto 116,73.91,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
    .accept 12116 >>Accept It Takes Guts....
    .target Kraz
step
    #completewith Along155
    >>As you go: Loot the |cRXP_PICK_School of Northern Salmons|r for |cRXP_LOOT_Northern Salmon|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12279,1 --Northern Salmon (6)
step
    #label Along155
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .turnin 12081 >>Turn in Gavrock
    .accept 12093 >>Accept Runes of Compulsion
    .target Gavrock
step
    .goto 116,85.94,27.90
    >>Kill |cRXP_ENEMY_Selas|r
    .complete 12164,2 --Selas slain (1)
    .mob Selas
    .isOnQuest 12164
step
    .goto 116,84.91,23.31
    >>Kill |cRXP_ENEMY_Varlam|r
    .complete 12164,1 --Varlam slain (1)
    .mob Varlam
    .isOnQuest 12164
step
    .goto 116,86.96,26.51
    >>Kill |cRXP_ENEMY_Goremaw|r
    .complete 12164,3 --Goremaw slain (1)
    .mob Goremaw
    .isOnQuest 12164
step
    .goto 116,87.65,26.48
    >>Kill |cRXP_ENEMY_Shade of Arugal|r
    .complete 12164,4 --Shade of Arugal slain (1)
    .mob Shade of Arugal
    .isOnQuest 12164
step
    #completewith Along167
    >>As you go: Kill |cRXP_ENEMY_Longhoof Grazers|r. Loot them for |cRXP_LOOT_Shovelhorn Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,2 --Shovelhorn Steak (10)
    .mob Longhoof Grazer
step
    .goto 116,74.90,37.50
    >>Kill |cRXP_ENEMY_Overseer Lochli|r
    .complete 12093,3 --Overseer Lochli slain (1)
    .mob Overseer Lochli
step
    #completewith Along162
    >>As you go: Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    .goto 116,72.00,34.20
    >>Kill |cRXP_ENEMY_Overseer Korgan|r
    .complete 12093,2 --Overseer Korgan slain (1)
    .mob Overseer Korgan
step
    #label Along162
    .goto 116,67.60,29.30
    >>Kill |cRXP_ENEMY_Overseer Durval|r
    .complete 12093,1 --Overseer Durval slain (1)
    .mob Overseer Durval
step
    .goto 116,78.60,43.80
    >>Kill |cRXP_ENEMY_Overseer Brunon|r
    .complete 12093,4 --Overseer Brunon slain (1)
    .mob Overseer Brunon
step
    #completewith Along164
    >>As you go: Loot the |cRXP_PICK_School of Northern Salmons|r for |cRXP_LOOT_Northern Salmon|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12279,1 --Northern Salmon (6)
step
    #label Along164
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .turnin 12093 >>Turn in Runes of Compulsion
    .accept 12094 >>Accept Latent Power
    .target Gavrock
step
    #completewith Along165
    >>As you go: Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    #label Along165
    .goto 116,71.26,39.71
    >>Kill |cRXP_ENEMY_North Stone|r
    .complete 12094,1 --North Stone slain (1)
    .mob North Stone
step
    .goto 116,74.09,44.21
    >>Kill |cRXP_ENEMY_South Stone|r
    .complete 12094,3 --South Stone slain (1)
    .mob South Stone
step
    #completewith Along168
    >>As you go: Loot the |cRXP_PICK_School of Northern Salmons|r for |cRXP_LOOT_Northern Salmon|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12279,1 --Northern Salmon (6)
step
    #label Along167
    .goto 116,78.88,39.96
    >>Kill |cRXP_ENEMY_East Stone|r
    .complete 12094,2 --East Stone slain (1)
    .mob East Stone
step
    #label Along168
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .turnin 12094 >>Turn in Latent Power
    .accept 12099 >>Accept Free at Last
    .target Gavrock
step
    #loop
    .goto 116,78.97,33.98,0
    .goto 116,78.97,33.98,40,0
    .goto 116,79.77,36.24,40,0
    .goto 116,75.54,34.46,40,0
    >>Loot the |cRXP_PICK_School of Northern Salmons|r for |cRXP_LOOT_Northern Salmon|r
    .complete 12279,1 --Northern Salmon (6)
step
    #completewith Along171
    >>As you go: Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    #completewith Along170
    >>As you go: Kill |cRXP_ENEMY_Longhoof Grazers|r. Loot them for |cRXP_LOOT_Shovelhorn Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,2 --Shovelhorn Steak (10)
    .mob Longhoof Grazer
step
    #label Along170
    #loop
    .goto 116,72.86,37.33,0
    .goto 116,72.86,37.33,40,0
    .goto 116,69.10,31.73,40,0
    .goto 116,66.96,29.75,40,0
    >>Interact with |cRXP_FRIENDLY_Runed Giants|r
    .complete 12099,1 --Runed Giant (4)
    .target Runed Giant
step
    #label Along171
    .goto 116,69.10,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hugh Glass|r
    .turnin 12279 >>Turn in A Bear of an Appetite
    .target Hugh Glass
step
    #loop
    .goto 116,57.60,41.20,0
    .goto 116,57.60,41.20,40,0
    .goto 116,64.80,43.40,40,0
    .goto 116,87.00,25.60,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sasha|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12164 >>Turn in Hour of the Worg
    .unitscan Sasha
    .isOnQuest 12164
step
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .turnin 12099 >>Turn in Free at Last
    .target Gavrock
step
    #completewith Along174
    >>As you go: Kill |cRXP_ENEMY_Drakkari Oracles|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12114,2 --Drakkari Oracle slain (10)
    .mob Drakkari Oracle
step
    #label Along174
    .goto 116,71.47,19.91
    >>Pick up |cRXP_PICK_Drakkari Canopic Jar|r from the ground
    .complete 12116,1 --Drakkari Canopic Jar (5)
step
    .goto 116,69.49,17.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harrison Jones|r
    .accept 12082 >>Accept Dun-da-Dun-tah!
    .target Harrison Jones
step
    .goto 116,69.38,18.21
    >>Pick up |cRXP_PICK_Drakkari Tablets|r from the ground
    .complete 12068,1 --Drakkari Tablets (1)
step
    #completewith Along177
    >>As you go: Kill |cRXP_ENEMY_Drakkari Protectors|r. Kill |cRXP_ENEMY_Drakkari Oracles|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12114,1 --Drakkari Protector slain (10)
    .complete 12114,2 --Drakkari Oracle slain (10)
    .mob Drakkari Protector
    .mob Drakkari Oracle
step
    #label Along177
    .goto 116,73.51,24.02
    >>Harrison has escorted you to safety.
    .complete 12082,1 --Harrison has escorted you to safety.
step
    #completewith Along178
    >>As you go: Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    #label Along178
    #loop
    .goto 116,72.26,27.95,0
    .goto 116,72.26,27.95,40,0
    .goto 116,70.47,26.90,40,0
    .goto 116,70.31,22.78,40,0
    >>Kill |cRXP_ENEMY_Drakkari Protectors|r
    >>Kill |cRXP_ENEMY_Drakkari Oracles|r
    .complete 12114,1 --Drakkari Protector slain (10)
    .complete 12114,2 --Drakkari Oracle slain (10)
    .mob Drakkari Protector
    .mob Drakkari Oracle
step
    .goto 116,71.74,26.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Drakuru|r
    .turnin 12068 >>Turn in Voices From the Dust while you are here
    .isQuestComplete 12068
    .target Image of Drakuru
step
    #loop
    .goto 116,64.96,30.76,0
    .goto 116,64.96,30.76,40,0
    .goto 116,66.39,34.66,40,0
    .goto 116,63.00,37.64,40,0
    >>Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    #loop
    .goto 116,68.59,36.76,0
    .goto 116,68.59,36.76,40,0
    .goto 116,69.34,32.97,40,0
    .goto 116,72.13,36.41,40,0
    >>Kill |cRXP_ENEMY_Longhoof Grazers|r. Loot them for |cRXP_LOOT_Shovelhorn Steak|r
    .complete 12113,2 --Shovelhorn Steak (10)
    .mob Longhoof Grazer
step
    .goto 116,73.77,34.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harkor|r
    .turnin 12113 >>Turn in Nice to Meat You
    .turnin 12082 >>Turn in Dun-da-Dun-tah!
    .turnin 12114 >>Turn in Therapy
    .target Harkor
step
    .goto 116,73.91,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
    .turnin 12116 >>Turn in It Takes Guts....
    .accept 12120 >>Accept Drak'aguul's Mallet
    .target Kraz
step
    .goto 116,72.64,29.78
    >>Kill |cRXP_ENEMY_Drak'aguul|r and loot |cRXP_LOOT_Drakil'jin Mallet|r
    .complete 12120,1 --Drakil'jin Mallet (1)
    .mob Drak'aguul
step
    .goto 116,73.91,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
    .turnin 12120 >>Turn in Drak'aguul's Mallet
    .accept 12121 >>Accept See You on the Other Side
    .target Kraz
step
    .goto 116,71.74,26.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Drakuru|r
    .turnin 12068 >>Turn in Voices From the Dust
    .target Image of Drakuru
step
    .goto 116,71.41,23.78
    >>Kill |cRXP_ENEMY_Warlord Jin'arrak|r
    .complete 12121,1 --Warlord Jin'arrak slain (1)
    .mob Warlord Jin'arrak
step
    .goto 116,69.41,19.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'jo|r
    .turnin 12121 >>Turn in See You on the Other Side
    .accept 12137 >>Accept Chill Out, Mon
    .target Gan'jo
step
    .goto 116,71.38,19.87
    >>Open the |cRXP_PICK_Gan'jo's Chest|r. Loot it for |cRXP_LOOT_Snow of Eternal Slumber|r
    >>Pick up |cRXP_PICK_Drakkari Spirit Particles|r from the ground
    .complete 12137,1 --Snow of Eternal Slumber (1)
    .complete 12137,2 --Drakkari Spirit Particles (1)
step
    .goto 116,73.91,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
    .turnin 12137 >>Turn in Chill Out, Mon
    .accept 12152 >>Accept Jin'arrak's End
    .target Kraz
step
    .goto 116,71.26,19.66
    >>Pick up |cRXP_PICK_Sacred Drakkari Offering|r from the ground
    .collect 36870,1,12152,1 --Sacred Drakkari Offering (1)
step
    .goto 116,71.41,23.78
    >>Kill |cRXP_ENEMY_Warlord Jin'arrak|r
    .complete 12152,1 --Warlord Jin'arrak slain (1)
    .mob Warlord Jin'arrak
step
    .goto 116,73.91,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
    .turnin 12152 >>Turn in Jin'arrak's End
    .target Kraz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .turnin 12128 >>Turn in Check Up on Raegar
    .accept 12129 >>Accept The Perfect Plan
    .target Raegar Breakbrow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.97,48.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kilian|r
    .accept 12180 >>Accept The Captive Prospectors
    .target Mountaineer Kilian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along196
    >>As you go: Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 3|r. Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 2|r. Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 1|r. |cRXP_WARN_Anything left is finished later|r
    .collect 36851,1,12129,1 --Golem Blueprint Section 3 (1)
    .collect 36850,1,12129,1 --Golem Blueprint Section 2 (1)
    .collect 36849,1,12129,1 --Golem Blueprint Section 1 (1)
    .mob Iron Rune-Smith
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,77.52,53.18,0
    .goto 116,77.52,53.18,40,0
    .goto 116,74.89,53.63,40,0
    .goto 116,72.79,56.40,40,0
    >>Kill |cRXP_ENEMY_Runic War Golems|r, |cRXP_ENEMY_Lightning Sentries|r, |cRXP_ENEMY_Rune-Smith Durars|r and |cRXP_ENEMY_Rune-Smith Kathorns|r. Loot them for |cRXP_LOOT_Dun Argol Cage Key|r
    .collect 37013,1,12180,1 --Dun Argol Cage Key (1)
    .mob Runic War Golem
    .mob Lightning Sentry
    .mob Rune-Smith Durar
    .mob Rune-Smith Kathorn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along196
    .goto 116,76.46,55.42
    >>Kill |cRXP_ENEMY_Prospector Gann|r
    .complete 12180,1 --Prospector Gann slain (1)
    .mob Prospector Gann
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,76.82,55.12,0
    .goto 116,76.82,55.12,40,0
    .goto 116,76.35,58.53,40,0
    >>Kill |cRXP_ENEMY_Prospector Torgan|r
    >>Kill |cRXP_ENEMY_Prospector Varana|r
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 3|r
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 2|r
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 1|r
    .complete 12180,2 --Prospector Torgan slain (1)
    .complete 12180,3 --Prospector Varana slain (1)
    .collect 36851,1,12129,1 --Golem Blueprint Section 3 (1)
    .collect 36850,1,12129,1 --Golem Blueprint Section 2 (1)
    .collect 36849,1,12129,1 --Golem Blueprint Section 1 (1)
    .mob Prospector Torgan
    .mob Prospector Varana
    .mob Iron Rune-Smith
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.97,48.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kilian|r
    .turnin 12180 >>Turn in The Captive Prospectors
    .accept 12183 >>Accept Looking the Part
    .target Mountaineer Kilian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,78.11,59.22
    >>Kill |cRXP_ENEMY_Iron Rune Overseer|r and loot |cRXP_LOOT_Overseer's Uniform|r
    .complete 12183,1 --Overseer's Uniform (1)
    .mob Iron Rune Overseer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.97,48.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kilian|r
    .turnin 12183 >>Turn in Looking the Part
    .accept 12184 >>Accept Cultivating an Image
    .target Mountaineer Kilian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,76.62,54.81,0
    .goto 116,76.62,54.81,40,0
    .goto 116,75.97,57.38,40,0
    .goto 116,76.27,62.86,40,0
    >>Kill |cRXP_ENEMY_Iron Rune-Smiths|r, |cRXP_ENEMY_Rune-Smith Durars|r, |cRXP_ENEMY_Rune-Smith Kathorns|r and |cRXP_ENEMY_Runic Lightning Gunners|r
    .complete 12184,1 --Iron Rune-Smith (8)
    .mob Iron Rune-Smith
    .mob Rune-Smith Durar
    .mob Rune-Smith Kathorn
    .mob Runic Lightning Gunner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.97,48.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kilian|r
    .turnin 12184 >>Turn in Cultivating an Image
    .target Mountaineer Kilian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .turnin 12129 >>Turn in The Perfect Plan
    .target Raegar Breakbrow
    .isQuestComplete 12129
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .accept 12130 >>Accept Why Fabricate When You Can Appropriate?
    .target Raegar Breakbrow
    .isQuestTurnedIn 12129 --any of: The Perfect Plan
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,75.52,58.25,0
    .goto 116,75.52,58.25,40,0
    .goto 116,76.21,62.38,40,0
    >>Pick up |cRXP_PICK_War Golem Part|r from the ground
    .complete 12130,1 --War Golem Part (8)
    .isOnQuest 12130
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .turnin 12130 >>Turn in Why Fabricate When You Can Appropriate?
    .target Raegar Breakbrow
    .isOnQuest 12130
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .accept 12131 >>Accept We Have the Power
    .target Raegar Breakbrow
    .isQuestTurnedIn 12130 --any of: Why Fabricate When You Can Appropriate?
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,74.89,56.91
    >>Kill |cRXP_ENEMY_Rune-Smith Durar|r and loot |cRXP_LOOT_Durar's Power Cell|r
    .complete 12131,1 --Durar's Power Cell (1)
    .mob Rune-Smith Durar
    .isOnQuest 12131
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.82,59.34
    >>Kill |cRXP_ENEMY_Rune-Smith Kathorn|r and loot |cRXP_LOOT_Kathorn's Power Cell|r
    .complete 12131,2 --Kathorn's Power Cell (1)
    .mob Rune-Smith Kathorn
    .isOnQuest 12131
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .turnin 12131 >>Turn in We Have the Power
    .target Raegar Breakbrow
    .isOnQuest 12131
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .accept 12138 >>Accept ... Or Maybe We Don't
    .target Raegar Breakbrow
    .isQuestTurnedIn 12131 --any of: We Have the Power
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,76.34,60.78,0
    .goto 116,76.34,60.78,40,0
    .goto 116,72.92,59.70,40,0
    >>Kill |cRXP_ENEMY_Lightning Sentries|r and |cRXP_ENEMY_Depleted War Golems|r
    .complete 12138,1 --Lightning Sentry (10)
    .mob Lightning Sentry
    .mob Depleted War Golem
    .isOnQuest 12138
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .turnin 12138 >>Turn in ... Or Maybe We Don't
    .target Raegar Breakbrow
    .isOnQuest 12138
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .accept 12153 >>Accept The Iron Thane and His Anvil
    .accept 12154 >>Accept Blackout
    .target Raegar Breakbrow
    .isQuestTurnedIn 12138 --any of: ... Or Maybe We Don't
    .xp <73,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.37,63.72
    >>Kill |cRXP_ENEMY_Iron Thane Furyhammer|r
    .complete 12153,1 --Iron Thane Furyhammer slain (1)
    .mob Iron Thane Furyhammer
    .isOnQuest 12153
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.46,63.24
    >>Kill |cRXP_ENEMY_Dun Argol Power Core|r
    .complete 12154,1 --Dun Argol Power Core slain (1)
    .mob Dun Argol Power Core
    .isOnQuest 12154
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .turnin 12153 >>Turn in The Iron Thane and His Anvil
    .target Raegar Breakbrow
    .isOnQuest 12153
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .turnin 12154 >>Turn in Blackout
    .target Raegar Breakbrow
    .isOnQuest 12154
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,31.16,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Thayreen|r
    .turnin 12249 >>Turn in Ursoc, the Bear God
    .target Hierophant Thayreen
    .isOnQuest 12249
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,32.01,59.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Haelenai|r
    .accept 12794 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Haelenai
step
    +|cRXP_WARN_That is all of Grizzly Hills for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: The Magical Kingdom of Dalaran << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Zul'Drak|r: Reallocating Resources << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Perfect Plan << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 74|r: |cRXP_FRIENDLY_Borean Tundra|r (about 0.8 levels of quests, starting around Elder Atkanok), |cRXP_FRIENDLY_Dragonblight|r (about 0.7 levels of quests, starting around Aurastrasza), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle). Completing this step loads the guide for Borean Tundra --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Grizzly Hills is planned from level 81.|r Load its guide for level 81 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 73 - 82 Grizzly Hills
#subweight -73
#name 81-82 Grizzly Hills
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,76.82,55.12,0
    .goto 116,76.82,55.12,40,0
    .goto 116,75.97,57.38,40,0
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 3|r
    .collect 36851,1,12129,1 --Golem Blueprint Section 3 (1)
    .mob Iron Rune-Smith
    .isOnQuest 12129
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,75.97,57.38,0
    .goto 116,75.97,57.38,40,0
    .goto 116,76.82,55.12,40,0
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 2|r
    .collect 36850,1,12129,1 --Golem Blueprint Section 2 (1)
    .mob Iron Rune-Smith
    .isOnQuest 12129
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 116,75.97,57.38,0
    .goto 116,75.97,57.38,40,0
    .goto 116,76.82,55.12,40,0
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 1|r
    .collect 36849,1,12129,1 --Golem Blueprint Section 1 (1)
    .mob Iron Rune-Smith
    .isOnQuest 12129
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,77.08,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raegar Breakbrow|r
    .turnin 12129 >>Turn in The Perfect Plan
    .target Raegar Breakbrow
    .isQuestComplete 12129
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.97,48.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kilian|r
    .accept 12185 >>Accept Put on Your Best Face for Loken
    .target Mountaineer Kilian
    .isQuestTurnedIn 12184 --any of: Cultivating an Image
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,81.60,60.34
    >>Kill |cRXP_ENEMY_Image of Loken|r
    .complete 12185,1 --Image of Loken slain (1)
    .mob Image of Loken
    .isOnQuest 12185
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 116,76.97,48.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kilian|r
    .turnin 12185 >>Turn in Put on Your Best Face for Loken
    .target Mountaineer Kilian
    .isOnQuest 12185
step
    +|cRXP_WARN_End of the Grizzly Hills route.|r
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
