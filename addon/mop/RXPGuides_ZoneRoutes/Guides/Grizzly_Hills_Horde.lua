-- 73-75 Grizzly Hills: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 73, 81).
-- Split into 2 guides, listed under "73 - 82 Grizzly Hills" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Grizzly Hills.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 73 - 82 Grizzly Hills
#subweight -73
#name 73-75 Grizzly Hills: around Drakuru
--RouteBuilder:next
#next Zone Routes (Horde)\72-75 Dragonblight;Zone Routes (Horde)\70-72 Howling Fjord: around Lurielle

step
    .goto 116,34.98,55.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aspen Grove Trader|r
    .target Aspen Grove Trader
    .home >>Set your Hearthstone to Aspen Grove Trader's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.70,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conqueror Krenna|r
    .turnin 12487 >>Turn in To Conquest Hold, But Be Careful!
    .target Conqueror Krenna
    .isOnQuest 12487
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.70,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conqueror Krenna|r
    .accept 12468 >>Accept The Conqueror's Task
    .target Conqueror Krenna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,21.01,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Nazgrim|r
    .turnin 12468 >>Turn in The Conqueror's Task
    .accept 12257 >>Accept A Show of Strength
    .accept 12256 >>Accept The Flamebinders' Secrets
    .target Sergeant Nazgrim
step
    .goto 116,22.00,64.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kragh|r
    .fp Conquest Hold >> Get the Conquest Hold flight path
    .target Kragh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.05,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidetrader Jun'ik|r
    .accept 12175 >>Accept Gray Worg Hides
    .target Hidetrader Jun'ik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.69,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Lorkran|r
    .accept 12436 >>Accept Supplemental Income
    .target Provisioner Lorkran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,11.17,76.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurtor|r
    .accept 12433 >>Accept Seeking Solvent
    .target Gurtor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,16.44,80.33
    >>Pick up |cRXP_PICK_Element 115|r from the ground
    .complete 12433,1 --Element 115 (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,11.17,76.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurtor|r
    .turnin 12433 >>Turn in Seeking Solvent
    .target Gurtor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,24.36,71.39,0
    .goto 116,24.36,71.39,40,0
    .goto 116,25.53,67.36,40,0
    >>Kill |cRXP_ENEMY_Graymist Hunters|r. Loot them for |cRXP_LOOT_Gray Worg Hide|r
    .complete 12175,1 --Gray Worg Hide (3)
    .mob Graymist Hunter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,32.33,68.45,0
    .goto 116,32.33,68.45,40,0
    .goto 116,34.30,65.11,40,0
    >>Kill |cRXP_ENEMY_Tallhorn Stags|r. Loot them for |cRXP_LOOT_Succulent Venison|r
    .complete 12436,1 --Succulent Venison (5)
    .mob Tallhorn Stag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Dragonflayer Huscarls|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12257,1 --Dragonflayer Huscarl slain (12)
    .mob Dragonflayer Huscarl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along11
    #loop
    .goto 116,29.07,74.62,0
    .goto 116,29.07,74.62,40,0
    .goto 116,26.98,73.25,40,0
    >>Kill |cRXP_ENEMY_Dragonflayer Flamebinders|r. Loot them for |cRXP_LOOT_Flame-Imbued Talisman|r
    .complete 12256,1 --Flame-Imbued Talisman (3)
    .mob Dragonflayer Flamebinder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,30.93,75.58,0
    .goto 116,30.93,75.58,40,0
    .goto 116,31.74,79.05,40,0
    >>Kill |cRXP_ENEMY_Dragonflayer Huscarls|r
    .complete 12257,1 --Dragonflayer Huscarl slain (12)
    .mob Dragonflayer Huscarl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,21.01,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Nazgrim|r
    .turnin 12257 >>Turn in A Show of Strength
    .turnin 12256 >>Turn in The Flamebinders' Secrets
    .accept 12259 >>Accept The Thane of Voldrune
    .target Sergeant Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.05,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidetrader Jun'ik|r
    .turnin 12175 >>Turn in Gray Worg Hides
    .accept 12176 >>Accept A Minor Substitution
    .target Hidetrader Jun'ik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.69,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Lorkran|r
    .turnin 12436 >>Turn in Supplemental Income
    .target Provisioner Lorkran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,27.06,72.86
    >>Kill |cRXP_ENEMY_Thane Torvald Eriksson|r
    .complete 12259,1 --Thane Torvald Eriksson slain (1)
    .mob Thane Torvald Eriksson
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,21.01,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Nazgrim|r
    .turnin 12259 >>Turn in The Thane of Voldrune
    .accept 12451 >>Accept Onward to Camp Oneqwah
    .target Sergeant Nazgrim
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.70,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conqueror Krenna|r
    .accept 12412 >>Accept My Enemy's Friend
    .target Conqueror Krenna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop12423x1
    >>|cRXP_LOOT_Mikhail's Journal|r can drop from |cRXP_ENEMY_Silverbrook Hunter|r, |cRXP_ENEMY_Vladek|r. Use it to start the quest if you get one
    .collect 37830,1,12423 --Mikhail's Journal (1)
    .accept 12423 >>Accept Mikhail's Journal
    .use 37830
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop12423x1
    >>As you go: Kill |cRXP_ENEMY_Ursus Maulers|r and |cRXP_ENEMY_Grizzly Bears|r. Loot them for |cRXP_LOOT_Grizzly Hide|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12176,1 --Grizzly Hide (6)
    .mob Ursus Mauler
    .mob Grizzly Bear
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop12423x1
    #loop
    .goto 116,36.25,67.85,0
    .goto 116,36.25,67.85,40,0
    .goto 116,37.56,70.22,40,0
    >>Kill |cRXP_ENEMY_Vladek|r
    >>Kill |cRXP_ENEMY_Silverbrook Hunters|r
    .complete 12412,2 --Vladek slain (1)
    .complete 12412,1 --Silverbrook Hunter slain (8)
    .mob Vladek
    .mob Silverbrook Hunter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,40.87,61.79,0
    .goto 116,40.87,61.79,40,0
    .goto 116,40.35,58.71,40,0
    .goto 116,45.04,56.37,40,0
    .goto 116,43.14,58.02,40,0
    >>Kill |cRXP_ENEMY_Ursus Maulers|r and |cRXP_ENEMY_Grizzly Bears|r. Loot them for |cRXP_LOOT_Grizzly Hide|r
    .complete 12176,1 --Grizzly Hide (6)
    .mob Ursus Mauler
    .mob Grizzly Bear
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.70,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conqueror Krenna|r
    .turnin 12412 >>Turn in My Enemy's Friend
    .accept 12413 >>Accept Attack on Silverbrook
    .target Conqueror Krenna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.70,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conqueror Krenna|r
    .turnin 12423 >>Turn in Mikhail's Journal
    .target Conqueror Krenna
    .isOnQuest 12423
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.70,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conqueror Krenna|r
    .accept 12424 >>Accept Gorgonna
    .target Conqueror Krenna
    .isQuestTurnedIn 12423 --any of: Mikhail's Journal
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.91,64.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorgonna|r
    .turnin 12424 >>Turn in Gorgonna
    .target Gorgonna
    .isOnQuest 12424
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.91,64.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorgonna|r
    .accept 12422 >>Accept Tactical Clemency
    .target Gorgonna
    .isQuestTurnedIn 12424 --any of: Gorgonna
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.50,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windseer Grayhorn|r
    .accept 12453 >>Accept Eyes Above
    .target Windseer Grayhorn
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.05,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidetrader Jun'ik|r
    .turnin 12176 >>Turn in A Minor Substitution
    .accept 12177 >>Accept Jun'ik's Coverup
    .target Hidetrader Jun'ik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.20,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Thurkin|r
    .accept 12208 >>Accept Good Troll Hunting
    .target Sergeant Thurkin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,31.37,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Coal|r from |cRXP_FRIENDLY_Brom Armstrong|r
    .complete 12177,1 --Coal (1)
    .target Brom Armstrong
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.69,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Simple Flour|r from |cRXP_FRIENDLY_Provisioner Lorkran|r
    .complete 12177,2 --Simple Flour (5)
    .target Provisioner Lorkran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.05,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hidetrader Jun'ik|r
    .turnin 12177 >>Turn in Jun'ik's Coverup
    .accept 12178 >>Accept Delivery to Krenna
    .target Hidetrader Jun'ik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.70,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conqueror Krenna|r
    .turnin 12178 >>Turn in Delivery to Krenna while you are here
    .isQuestComplete 12178
    .target Conqueror Krenna
step
    .goto 116,16.19,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samir|r
    .turnin 12208 >>Turn in Good Troll Hunting << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    #completewith Along51
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
    #label Along51
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,21.93,29.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Trapper|r
    .turnin 12422 >>Turn in Tactical Clemency
    .target Captured Trapper
    .isOnQuest 12422
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,24.88,32.80,0
    .goto 116,24.88,32.80,40,0
    .goto 116,24.98,37.12,40,0
    >>Kill |cRXP_ENEMY_Silverbrook Defenders|r
    .complete 12413,1 --Silverbrook Defender slain (8)
    .mob Silverbrook Defender
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.70,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conqueror Krenna|r
    .turnin 12178 >>Turn in Delivery to Krenna
    .turnin 12413 >>Turn in Attack on Silverbrook
    .target Conqueror Krenna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.91,64.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorgonna|r
    .accept 12425 >>Accept Ruuna the Blind
    .target Gorgonna
    .isQuestTurnedIn 12422 --any of: Tactical Clemency
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.50,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windseer Grayhorn|r
    .accept 12207 >>Accept Vordrassil's Fall
    .accept 12213 >>Accept The Darkness Beneath
    .accept 12453 >>Accept Eyes Above
    .target Windseer Grayhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.44,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grennix Shivwiggle|r
    .accept 12427 >>Accept The Conquest Pit: Bear Wrestling!
    .target Grennix Shivwiggle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.62,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Phaelista|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Phaelista
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,23.32,64.84
    >>Kill |cRXP_ENEMY_Ironhide|r
    .complete 12427,1 --Ironhide slain (1)
    .mob Ironhide
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.34,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bookie Vel'jen|r
    .turnin 12427 >>Turn in The Conquest Pit: Bear Wrestling!
    .target Bookie Vel'jen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.44,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grennix Shivwiggle|r
    .accept 12428 >>Accept The Conquest Pit: Mad Furbolg Fighting
    .target Grennix Shivwiggle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.62,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Phaelista|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Phaelista
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,23.32,64.84
    >>Kill |cRXP_ENEMY_Torgg Thundertotem|r
    .complete 12428,1 --Torgg Thundertotem slain (1)
    .mob Torgg Thundertotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.34,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bookie Vel'jen|r
    .turnin 12428 >>Turn in The Conquest Pit: Mad Furbolg Fighting
    .target Bookie Vel'jen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.44,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grennix Shivwiggle|r
    .accept 12429 >>Accept The Conquest Pit: Blood and Metal
    .target Grennix Shivwiggle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.62,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Phaelista|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Phaelista
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,23.32,64.84
    >>Kill |cRXP_ENEMY_Rustblood|r
    .complete 12429,1 --Rustblood slain (1)
    .mob Rustblood
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.34,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bookie Vel'jen|r
    .turnin 12429 >>Turn in The Conquest Pit: Blood and Metal
    .target Bookie Vel'jen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.44,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grennix Shivwiggle|r
    .accept 12430 >>Accept The Conquest Pit: Death Is Likely
    .target Grennix Shivwiggle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.62,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Phaelista|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Phaelista
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,23.32,64.84
    >>Kill |cRXP_ENEMY_Horgrenn Hellcleave|r
    .complete 12430,1 --Horgrenn Hellcleave slain (1)
    .mob Horgrenn Hellcleave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.34,64.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bookie Vel'jen|r
    .turnin 12430 >>Turn in The Conquest Pit: Death Is Likely
    .target Bookie Vel'jen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.44,63.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grennix Shivwiggle|r
    .accept 12431 >>Accept The Conquest Pit: Final Showdown
    .target Grennix Shivwiggle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.62,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Phaelista|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Phaelista
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,23.32,64.84
    >>Kill |cRXP_ENEMY_Conqueror Krenna|r
    .complete 12431,1 --Conqueror Krenna slain (1)
    .mob Conqueror Krenna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.91,64.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorgonna|r
    .turnin 12431 >>Turn in The Conquest Pit: Final Showdown
    .target Gorgonna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.62,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Phaelista|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Phaelista
    .xp <74,1
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along80
    >>As you go: Kill |cRXP_ENEMY_Imperial Eagles|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12453,1 --Imperial Eagle slain (6)
    .mob Imperial Eagle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along77
    >>As you go: Kill |cRXP_ENEMY_Entropic Oozes|r. Loot them for |cRXP_LOOT_Slime Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12207,1 --Slime Sample (6)
    .mob Entropic Ooze
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along77
    .goto 116,30.47,44.07
    >>Kill |cRXP_ENEMY_Vordrassil's Tears Credit|r
    >>Kill |cRXP_ENEMY_Vordrassil's Limb Credit|r
    .complete 12213,3 --Vordrassil's Tears Credit slain (1)
    .complete 12213,2 --Vordrassil's Limb Credit slain (1)
    .mob Vordrassil's Tears Credit
    .mob Vordrassil's Limb Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,34.24,49.33,0
    .goto 116,34.24,49.33,40,0
    .goto 116,39.10,50.49,40,0
    .goto 116,41.05,53.45,40,0
    >>Kill |cRXP_ENEMY_Vordrassil's Heart Credit|r
    >>Kill |cRXP_ENEMY_Entropic Oozes|r. Loot them for |cRXP_LOOT_Slime Sample|r
    .complete 12213,1 --Vordrassil's Heart Credit slain (1)
    .complete 12207,1 --Slime Sample (6)
    .mob Vordrassil's Heart Credit
    .mob Entropic Ooze
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,44.04,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna the Blind|r
    .turnin 12425 >>Turn in Ruuna the Blind
    .target Ruuna the Blind
    .isOnQuest 12425
step
    #label Along80
    .goto 116,44.04,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruuna the Blind|r
    .accept 12328 >>Accept Ruuna's Request
    .target Ruuna the Blind
    .isQuestTurnedIn 12161,12425 --any of: Ruuna the Blind, Ruuna the Blind
    .xp <73,1
step
    #loop
    .goto 116,49.94,30.91,0
    .goto 116,49.94,30.91,40,0
    .goto 116,50.20,27.95,40,0
    .goto 116,52.55,27.02,40,0
    >>Kill |cRXP_ENEMY_Fern Feeder Moth|r and loot |cRXP_LOOT_Gossamer Dust|r
    .complete 12328,1 --Gossamer Dust (1)
    .mob Fern Feeder Moth
    .isOnQuest 12328
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,44.04,49.16,0
    .goto 116,44.04,49.16,40,0
    .goto 116,43.63,52.08,40,0
    >>Kill |cRXP_ENEMY_Imperial Eagles|r
    .complete 12453,1 --Imperial Eagle slain (6)
    .mob Imperial Eagle
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
    .goto 116,64.96,46.93,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makki|r
    .fp Camp Oneqwah >> Get the Camp Oneqwah flight path
    .target Makki Wintergale
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .turnin 12451 >>Turn in Onward to Camp Oneqwah while you are here
    .isQuestComplete 12451
    .target Scout Vor'takh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.01,47.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soulok Stormfury|r
    .accept 12415 >>Accept The Horse Hollerer
    .target Soulok Stormfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .turnin 12451 >>Turn in Onward to Camp Oneqwah
    .accept 12763 >>Accept Shifting Priorities
    .target Scout Vor'takh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.26,47.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tormak the Scarred|r
    .accept 12195 >>Accept The Unexpected 'Guest'
    .target Tormak the Scarred
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along98
    >>As you go: Kill |cRXP_ENEMY_Silvercoat Stags|r. Loot them for |cRXP_LOOT_Mature Stag Horn|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12195,1 --Mature Stag Horn (5)
    .mob Silvercoat Stag
step
    .goto 116,64.80,43.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anya|r
    .turnin 12411 >>Turn in A Sister's Pledge
    .target Anya
    .isOnQuest 12411
step
    #label Along98
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,64.30,19.77
    >>Click the |cRXP_PICK_Battered Journal|r
    .accept 12026 >>Accept The Damaged Journal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.50,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windseer Grayhorn|r
    .turnin 12207 >>Turn in Vordrassil's Fall
    .turnin 12213 >>Turn in The Darkness Beneath
    .turnin 12453 >>Turn in Eyes Above
    .accept 12229 >>Accept A Possible Link
    .accept 12231 >>Accept The Bear God's Offspring
    .target Windseer Grayhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.62,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Phaelista|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Phaelista
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.20,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Paluna|r
    .turnin 12026 >>Turn in The Damaged Journal
    .accept 12054 >>Accept Deciphering the Journal
    .target Sage Paluna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,66.60,58.82
    >>Kill |cRXP_ENEMY_Grumbald One-Eye|r and loot |cRXP_LOOT_Spiritsbreath|r
    .complete 12054,1 --Spiritsbreath (1)
    .mob Grumbald One-Eye
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,66.89,62.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kodian|r
    .complete 12231,2 --Kodian
    .target Kodian
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,48.03,58.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orsonn|r
    .complete 12231,1 --Orsonn
    .target Orsonn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,49.31,57.76,0
    .goto 116,49.31,57.76,40,0
    .goto 116,52.05,53.71,40,0
    .goto 116,55.53,52.78,40,0
    >>Kill |cRXP_ENEMY_Redfang Hunters|r, |cRXP_ENEMY_Frostpaw Warriors|r, |cRXP_ENEMY_Frostpaw Shamans|r and |cRXP_ENEMY_Frostpaw Trappers|r. Loot them for |cRXP_LOOT_Crazed Furbolg Blood|r
    .complete 12229,1 --Crazed Furbolg Blood (8)
    .mob Redfang Hunter
    .mob Frostpaw Warrior
    .mob Frostpaw Shaman
    .mob Frostpaw Trapper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,67.02,49.88,0
    .goto 116,67.02,49.88,40,0
    .goto 116,66.66,46.49,40,0
    .goto 116,67.76,43.01,40,0
    >>Kill |cRXP_ENEMY_Silvercoat Stags|r. Loot them for |cRXP_LOOT_Mature Stag Horn|r
    .complete 12195,1 --Mature Stag Horn (5)
    .mob Silvercoat Stag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.20,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Paluna|r
    .turnin 12054 >>Turn in Deciphering the Journal while you are here
    .isQuestComplete 12054
    .target Sage Paluna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.26,47.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tormak the Scarred|r
    .turnin 12195 >>Turn in The Unexpected 'Guest'
    .accept 12165 >>Accept An Intriguing Plan
    .target Tormak the Scarred
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.20,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Paluna|r
    .turnin 12054 >>Turn in Deciphering the Journal
    .accept 12058 >>Accept The Runic Prophecies
    .target Sage Paluna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .accept 12073 >>Accept Pounding the Iron
    .target Scout Vor'takh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along116
    >>As you go: Kill |cRXP_ENEMY_Rune Reavers|r and |cRXP_ENEMY_Iron Rune-Shapers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12073,1 --Rune Reaver (8)
    .mob Rune Reaver
    .mob Iron Rune-Shaper
step
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .accept 11982 >>Accept Raining Down Destruction
    .target Kurun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along112
    >>As you go: Kill |cRXP_ENEMY_Highland Mustangs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12415,1 --Highland Mustang slain (15)
    .mob Highland Mustang
step
    #label Along112
    #loop
    .goto 116,66.12,13.78,0
    .goto 116,66.12,13.78,40,0
    .goto 116,67.52,12.39,40,0
    >>Pick up |cRXP_PICK_Boulder|r from the ground
    .collect 35734,1,11982,1 --Boulder (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along113
    >>As you go: Click the |cRXP_PICK_Third Rune Plate|r. Click the |cRXP_PICK_First Rune Plate|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12058,3 --Third Rune Plate
    .complete 12058,1 --First Rune Plate
step
    #label Along113
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
    #label Along116
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .turnin 12070 >>Turn in Rallying the Troops
    .accept 11985 >>Accept Into the Breach
    .target Kurun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,61.92,18.30,0
    .goto 116,61.92,18.30,40,0
    .goto 116,62.82,13.07,40,0
    >>Kill |cRXP_ENEMY_Highland Mustangs|r
    .complete 12415,1 --Highland Mustang slain (15)
    .mob Highland Mustang
step
    #loop
    .goto 116,66.28,17.42,0
    .goto 116,66.28,17.42,40,0
    .goto 116,67.58,15.28,40,0
    .goto 116,69.87,13.66,40,0
    >>Click the |cRXP_PICK_Third Rune Plate|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Click the |cRXP_PICK_First Rune Plate|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Click the |cRXP_PICK_Second Rune Plate|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Iron Thane Argrum|r
    >>Kill |cRXP_ENEMY_Rune Reavers|r and |cRXP_ENEMY_Iron Rune-Shapers|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 12058,3 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Third Rune Plate
    .complete 12058,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --First Rune Plate
    .complete 12058,2 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Second Rune Plate
    .complete 11985,1 --Iron Thane Argrum slain (1)
    .complete 12073,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Rune Reaver (8)
    .mob Iron Thane Argrum
    .mob Rune Reaver << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Iron Rune-Shaper << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .turnin 11985 >>Turn in Into the Breach
    .accept 12081 >>Accept Gavrock
    .target Kurun
step
    .goto 116,73.77,34.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harkor|r
    .turnin 12190 >>Turn in Say Hello to My Little Friend
    .accept 12113 >>Accept Nice to Meat You
    .accept 12114 >>Accept Therapy
    .target Harkor
step
    #completewith Along126
    >>As you go: Kill |cRXP_ENEMY_Longhoof Grazers|r. Loot them for |cRXP_LOOT_Shovelhorn Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,2 --Shovelhorn Steak (10)
    .mob Longhoof Grazer
step
    #completewith Along121
    >>As you go: Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    #label Along121
    .goto 116,73.91,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
    .accept 12116 >>Accept It Takes Guts....
    .target Kraz
step
    #completewith Along122
    >>As you go: Loot the |cRXP_PICK_School of Northern Salmons|r for |cRXP_LOOT_Northern Salmon|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12279,1 --Northern Salmon (6)
step
    #label Along122
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .turnin 12081 >>Turn in Gavrock
    .accept 12093 >>Accept Runes of Compulsion
    .target Gavrock
step
    .goto 116,78.60,43.80
    >>Kill |cRXP_ENEMY_Overseer Brunon|r
    .complete 12093,4 --Overseer Brunon slain (1)
    .mob Overseer Brunon
step
    .goto 116,74.90,37.50
    >>Kill |cRXP_ENEMY_Overseer Lochli|r
    .complete 12093,3 --Overseer Lochli slain (1)
    .mob Overseer Lochli
step
    #completewith Along126
    >>As you go: Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    .goto 116,72.00,34.20
    >>Kill |cRXP_ENEMY_Overseer Korgan|r
    .complete 12093,2 --Overseer Korgan slain (1)
    .mob Overseer Korgan
step
    #label Along126
    .goto 116,67.60,29.30
    >>Kill |cRXP_ENEMY_Overseer Durval|r
    .complete 12093,1 --Overseer Durval slain (1)
    .mob Overseer Durval
step
    .goto 116,84.91,23.31
    >>Kill |cRXP_ENEMY_Varlam|r
    .complete 12164,1 --Varlam slain (1)
    .mob Varlam
    .isOnQuest 12164
step
    .goto 116,87.65,26.48
    >>Kill |cRXP_ENEMY_Shade of Arugal|r
    .complete 12164,4 --Shade of Arugal slain (1)
    .mob Shade of Arugal
    .isOnQuest 12164
step
    .goto 116,86.96,26.51
    >>Kill |cRXP_ENEMY_Goremaw|r
    .complete 12164,3 --Goremaw slain (1)
    .mob Goremaw
    .isOnQuest 12164
step
    .goto 116,85.94,27.90
    >>Kill |cRXP_ENEMY_Selas|r
    .complete 12164,2 --Selas slain (1)
    .mob Selas
    .isOnQuest 12164
step
    #completewith Along131
    >>As you go: Loot the |cRXP_PICK_School of Northern Salmons|r for |cRXP_LOOT_Northern Salmon|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12279,1 --Northern Salmon (6)
step
    #label Along131
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .turnin 12093 >>Turn in Runes of Compulsion
    .accept 12094 >>Accept Latent Power
    .target Gavrock
step
    #completewith Along134
    >>As you go: Kill |cRXP_ENEMY_Longhoof Grazers|r. Loot them for |cRXP_LOOT_Shovelhorn Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,2 --Shovelhorn Steak (10)
    .mob Longhoof Grazer
step
    #completewith Along132
    >>As you go: Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Duskhowl Prowler
step
    #label Along132
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
    #completewith Along135
    >>As you go: Loot the |cRXP_PICK_School of Northern Salmons|r for |cRXP_LOOT_Northern Salmon|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12279,1 --Northern Salmon (6)
step
    #label Along134
    .goto 116,78.88,39.96
    >>Kill |cRXP_ENEMY_East Stone|r
    .complete 12094,2 --East Stone slain (1)
    .mob East Stone
step
    #label Along135
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .turnin 12094 >>Turn in Latent Power
    .accept 12099 >>Accept Free at Last
    .target Gavrock
step
    #loop
    .goto 116,79.77,36.24,0
    .goto 116,79.77,36.24,40,0
    .goto 116,77.12,36.38,40,0
    >>Loot the |cRXP_PICK_School of Northern Salmons|r for |cRXP_LOOT_Northern Salmon|r
    .complete 12279,1 --Northern Salmon (6)
step
    #completewith Along137
    >>As you go: Kill |cRXP_ENEMY_Longhoof Grazers|r. Loot them for |cRXP_LOOT_Shovelhorn Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12113,2 --Shovelhorn Steak (10)
    .mob Longhoof Grazer
step
    #label Along137
    #loop
    .goto 116,75.61,39.12,0
    .goto 116,75.61,39.12,40,0
    .goto 116,73.64,45.33,40,0
    .goto 116,79.18,45.57,40,0
    >>Interact with |cRXP_FRIENDLY_Runed Giants|r
    .complete 12099,1 --Runed Giant (4)
    .target Runed Giant
step
    #completewith Along138
    >>As you go: Kill |cRXP_ENEMY_Drakkari Protectors|r. Kill |cRXP_ENEMY_Drakkari Oracles|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12114,1 --Drakkari Protector slain (10)
    .complete 12114,2 --Drakkari Oracle slain (10)
    .mob Drakkari Protector
    .mob Drakkari Oracle
step
    #label Along138
    #loop
    .goto 116,73.04,29.77,0
    .goto 116,73.04,29.77,40,0
    .goto 116,70.47,26.90,40,0
    .goto 116,71.47,19.91,40,0
    >>Kill |cRXP_ENEMY_Drakkari Oracles|r and |cRXP_ENEMY_Drakkari Protectors|r. Loot them for |cRXP_LOOT_Sacred Mojo|r
    >>Pick up |cRXP_PICK_Drakkari Canopic Jar|r from the ground
    .collect 36758,1,12068,1 --Sacred Mojo (1)
    .complete 12116,1 --Drakkari Canopic Jar (5)
    .mob Drakkari Oracle
    .mob Drakkari Protector
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
    #completewith Along141
    >>As you go: Kill |cRXP_ENEMY_Drakkari Protectors|r. Kill |cRXP_ENEMY_Drakkari Oracles|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12114,1 --Drakkari Protector slain (10)
    .complete 12114,2 --Drakkari Oracle slain (10)
    .mob Drakkari Protector
    .mob Drakkari Oracle
step
    #label Along141
    .goto 116,73.51,24.02
    >>Harrison has escorted you to safety.
    .complete 12082,1 --Harrison has escorted you to safety.
step
    #loop
    .goto 116,70.31,22.78,0
    .goto 116,70.31,22.78,40,0
    .goto 116,69.61,27.90,40,0
    .goto 116,68.11,36.26,40,0
    .goto 116,71.57,28.80,40,0
    >>Kill |cRXP_ENEMY_Drakkari Protectors|r
    >>Kill |cRXP_ENEMY_Drakkari Oracles|r
    >>Kill |cRXP_ENEMY_Duskhowl Prowler|r and loot |cRXP_LOOT_Fibrous Worg Meat|r
    .complete 12114,1 --Drakkari Protector slain (10)
    .complete 12114,2 --Drakkari Oracle slain (10)
    .complete 12113,1 --Fibrous Worg Meat (1)
    .mob Drakkari Protector
    .mob Drakkari Oracle
    .mob Duskhowl Prowler
step
    .goto 116,71.74,26.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Drakuru|r
    .turnin 12068 >>Turn in Voices From the Dust while you are here
    .isQuestComplete 12068
    .target Image of Drakuru
step
    #loop
    .goto 116,76.07,41.10,0
    .goto 116,76.07,41.10,40,0
    .goto 116,78.72,39.66,40,0
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
    .goto 116,63.68,23.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallen Earthen Warrior|r
    .accept 11981 >>Accept Find Kurun!
    .target Fallen Earthen Warrior
step
    .goto 116,65.77,17.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurun|r
    .turnin 11981 >>Turn in Find Kurun!
    .target Kurun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.50,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windseer Grayhorn|r
    .turnin 12231 >>Turn in The Bear God's Offspring
    .turnin 12229 >>Turn in A Possible Link
    .accept 12241 >>Accept Destroy the Sapling
    .accept 12242 >>Accept Vordrassil's Seeds
    .target Windseer Grayhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.01,47.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soulok Stormfury|r
    .turnin 12415 >>Turn in The Horse Hollerer
    .target Soulok Stormfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .turnin 12073 >>Turn in Pounding the Iron
    .accept 12204 >>Accept In the Name of Loken
    .target Scout Vor'takh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.20,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Paluna|r
    .turnin 12058 >>Turn in The Runic Prophecies
    .target Sage Paluna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,52.26,46.41,0
    .goto 116,52.26,46.41,40,0
    .goto 116,50.78,41.84,40,0
    .goto 116,50.88,36.93,40,0
    >>Open the |cRXP_PICK_Vordrassil's Sapling Focus|r. Loot it for |cRXP_LOOT_Vordrassil's Ashes|r
    >>Pick up |cRXP_PICK_Vordrassil's Seed|r from the ground
    .complete 12241,1 --Vordrassil's Ashes (1)
    .complete 12242,1 --Vordrassil's Seed (8)
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.50,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windseer Grayhorn|r
    .turnin 12241 >>Turn in Destroy the Sapling
    .turnin 12242 >>Turn in Vordrassil's Seeds
    .accept 12236 >>Accept Ursoc, the Bear God
    .target Windseer Grayhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,51.80,18.20
    >>Kill |cRXP_ENEMY_Ursoc|r
    .complete 12236,1 --Ursoc slain (1)
    .mob Ursoc
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,69.10,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hugh Glass|r
    .complete 12204,1 --Hugh Glass
    .target Hugh Glass
step
    .goto 116,69.10,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hugh Glass|r
    .turnin 12279 >>Turn in A Bear of an Appetite
    .target Hugh Glass
step
    .goto 116,73.91,34.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kraz|r
    .turnin 12152 >>Turn in Jin'arrak's End
    .target Kraz
step
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .turnin 12099 >>Turn in Free at Last
    .target Gavrock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,79.76,33.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gavrock|r
    .complete 12204,2 --Gavrock
    .target Gavrock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .turnin 12204 >>Turn in In the Name of Loken
    .accept 12201 >>Accept The Overseer's Shadow
    .target Scout Vor'takh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,76.82,55.12,0
    .goto 116,76.82,55.12,40,0
    .goto 116,76.29,58.96,40,0
    >>Kill |cRXP_ENEMY_Iron Rune Overseer|r and loot |cRXP_LOOT_Overseer's Uniform|r
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 3|r
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 2|r
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 1|r
    .complete 12201,1 --Overseer's Uniform (1)
    .collect 36851,1,12165,1 --Golem Blueprint Section 3 (1)
    .collect 36850,1,12165,1 --Golem Blueprint Section 2 (1)
    .collect 36849,1,12165,1 --Golem Blueprint Section 1 (1)
    .mob Iron Rune Overseer
    .mob Iron Rune-Smith
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .turnin 12201 >>Turn in The Overseer's Shadow
    .accept 12202 >>Accept Cultivating an Image
    .target Scout Vor'takh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,76.62,54.81,0
    .goto 116,76.62,54.81,40,0
    .goto 116,75.97,57.38,40,0
    .goto 116,76.27,62.86,40,0
    >>Kill |cRXP_ENEMY_Iron Rune-Smiths|r, |cRXP_ENEMY_Rune-Smith Durars|r, |cRXP_ENEMY_Rune-Smith Kathorns|r and |cRXP_ENEMY_Runic Lightning Gunners|r
    .complete 12202,1 --Iron Rune-Smith (8)
    .mob Iron Rune-Smith
    .mob Rune-Smith Durar
    .mob Rune-Smith Kathorn
    .mob Runic Lightning Gunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .turnin 12202 >>Turn in Cultivating an Image
    .target Scout Vor'takh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .turnin 12165 >>Turn in An Intriguing Plan
    .target Prospector Rokar
    .isQuestComplete 12165
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .accept 12196 >>Accept From the Ground Up
    .target Prospector Rokar
    .isQuestTurnedIn 12165 --any of: An Intriguing Plan
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,75.52,58.25,0
    .goto 116,75.52,58.25,40,0
    .goto 116,76.21,62.38,40,0
    >>Pick up |cRXP_PICK_War Golem Part|r from the ground
    .complete 12196,1 --War Golem Part (8)
    .isOnQuest 12196
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .turnin 12196 >>Turn in From the Ground Up
    .target Prospector Rokar
    .isOnQuest 12196
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .accept 12197 >>Accept We Have the Power
    .target Prospector Rokar
    .isQuestTurnedIn 12196 --any of: From the Ground Up
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,74.89,56.91
    >>Kill |cRXP_ENEMY_Rune-Smith Durar|r and loot |cRXP_LOOT_Durar's Power Cell|r
    .complete 12197,1 --Durar's Power Cell (1)
    .mob Rune-Smith Durar
    .isOnQuest 12197
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,76.82,59.34
    >>Kill |cRXP_ENEMY_Rune-Smith Kathorn|r and loot |cRXP_LOOT_Kathorn's Power Cell|r
    .complete 12197,2 --Kathorn's Power Cell (1)
    .mob Rune-Smith Kathorn
    .isOnQuest 12197
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .turnin 12197 >>Turn in We Have the Power
    .target Prospector Rokar
    .isOnQuest 12197
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .accept 12198 >>Accept ... Or Maybe We Don't
    .target Prospector Rokar
    .isQuestTurnedIn 12197 --any of: We Have the Power
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,74.89,53.63,0
    .goto 116,74.89,53.63,40,0
    .goto 116,77.15,51.72,40,0
    .goto 116,79.26,57.12,40,0
    >>Kill |cRXP_ENEMY_Lightning Sentries|r and |cRXP_ENEMY_Depleted War Golems|r
    .complete 12198,1 --Lightning Sentry (10)
    .mob Lightning Sentry
    .mob Depleted War Golem
    .isOnQuest 12198
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .turnin 12198 >>Turn in ... Or Maybe We Don't
    .target Prospector Rokar
    .isOnQuest 12198
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .accept 12199 >>Accept Bringing Down the Iron Thane
    .target Prospector Rokar
    .isQuestTurnedIn 12198 --any of: ... Or Maybe We Don't
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,76.37,63.72
    >>Kill |cRXP_ENEMY_Iron Thane Furyhammer|r
    .complete 12199,1 --Iron Thane Furyhammer slain (1)
    .mob Iron Thane Furyhammer
    .isOnQuest 12199
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.26,47.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tormak the Scarred|r
    .turnin 12199 >>Turn in Bringing Down the Iron Thane
    .target Tormak the Scarred
    .isOnQuest 12199
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,22.50,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windseer Grayhorn|r
    .turnin 12236 >>Turn in Ursoc, the Bear God
    .target Windseer Grayhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,20.62,64.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Phaelista|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Magistrix Phaelista
step
    +|cRXP_WARN_That is all of Grizzly Hills for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: The Magical Kingdom of Dalaran << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Zul'Drak|r: Shifting Priorities << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: An Intriguing Plan << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 74|r: |cRXP_FRIENDLY_Dragonblight|r (about 0.7 levels of quests, starting around Aurastrasza), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle). Completing this step loads the guide for Dragonblight --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Grizzly Hills is planned from level 81.|r Load its guide for level 81 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 73 - 82 Grizzly Hills
#subweight -73
#name 81-82 Grizzly Hills
--RouteBuilder:next
#next Zone Routes (Horde)\82-83 Deepholm

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,75.97,57.38,0
    .goto 116,75.97,57.38,40,0
    .goto 116,76.82,55.12,40,0
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 3|r
    .collect 36851,1,12165,1 --Golem Blueprint Section 3 (1)
    .mob Iron Rune-Smith
    .isOnQuest 12165
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,75.97,57.38,0
    .goto 116,75.97,57.38,40,0
    .goto 116,76.82,55.12,40,0
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 2|r
    .collect 36850,1,12165,1 --Golem Blueprint Section 2 (1)
    .mob Iron Rune-Smith
    .isOnQuest 12165
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 116,75.97,57.38,0
    .goto 116,75.97,57.38,40,0
    .goto 116,76.82,55.12,40,0
    >>Kill |cRXP_ENEMY_Iron Rune-Smith|r and loot |cRXP_LOOT_Golem Blueprint Section 1|r
    .collect 36849,1,12165,1 --Golem Blueprint Section 1 (1)
    .mob Iron Rune-Smith
    .isOnQuest 12165
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.10,47.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Rokar|r
    .turnin 12165 >>Turn in An Intriguing Plan
    .target Prospector Rokar
    .isQuestComplete 12165
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .accept 12203 >>Accept Loken's Orders
    .target Scout Vor'takh
    .isQuestTurnedIn 12202 --any of: Cultivating an Image
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,81.60,60.34
    >>Kill |cRXP_ENEMY_Image of Loken|r
    .complete 12203,1 --Image of Loken slain (1)
    .mob Image of Loken
    .isOnQuest 12203
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 116,65.17,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Vor'takh|r
    .turnin 12203 >>Turn in Loken's Orders
    .target Scout Vor'takh
    .isOnQuest 12203
step
    +|cRXP_WARN_End of the Grizzly Hills route.|r
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
