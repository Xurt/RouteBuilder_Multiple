-- 68-70 Netherstorm: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 68, 70).
-- Split into 2 guides, listed under "68 - 71 Netherstorm" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Netherstorm.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 68 - 71 Netherstorm
#subweight -68
#name 68-70 Netherstorm: around Image of Archmage Vargoth
--RouteBuilder:next
#next Zone Routes (Horde)\69-70 Shadowmoon Valley

step
    .goto 1953,21.30,55.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netherologist Coppernickels|r
    .accept 10183 >>Accept Off To Area 52
    .target Netherologist Coppernickels
step
    .goto 1953,32.27,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boots|r
    .accept 10342 >>Accept Securing the Shaleskin Shale
    .target Boots
step
    .goto 1953,32.44,64.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
    .accept 10265 >>Accept Consortium Crystal Collection
    .target Nether-Stalker Khay'ji
step
    .goto 1953,32.68,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocket-Chief Fuselage|r
    .turnin 11036 >>Turn in Out of This World Produce!
    .target Rocket-Chief Fuselage
    .isOnQuest 11036
step
    .goto 1953,32.68,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocket-Chief Fuselage|r
    .turnin 10183 >>Turn in Off To Area 52
    .accept 10186 >>Accept You're Hired!
    .target Rocket-Chief Fuselage
step
    .goto 1953,32.09,64.65
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10261 >>Accept Wanted: Annihilator Servo!
    .accept 10701 >>Accept Breaking Down Netherock
step
    .goto 1953,46.73,56.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dealer Dunar|r
    .target Dealer Dunar
    .home >>Set your Hearthstone to Dealer Dunar's inn
step
    .goto 1953,46.67,56.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahruj|r
    .accept 10311 >>Accept Drijya Needs Your Help
    .target Gahruj
    .xp <68,1
step
    .goto 1953,31.36,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravandwyr|r
    .accept 10173 >>Accept The Archmage's Staff
    .target Ravandwyr
step
    #completewith Along10
    >>As you go: Pick up |cRXP_PICK_Etherlithium Matrix Crystal|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10186,1 --Etherlithium Matrix Crystal (10)
step
    .goto 1953,31.51,56.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bot-Specialist Alley|r
    .accept 10190 >>Accept Recharging the Batteries
    .target Bot-Specialist Alley
step
    .goto 1953,31.59,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxx A. Million Mk. V|r
    .accept 10191 >>Accept Mark V is Alive!
    .target Maxx A. Million Mk. V
step
    #label Along10
    .goto 1953,31.54,56.47
    >>Escort the Maxx A. Million Mk. V safely through the Ruins of Enkaat
    .complete 10191,1 --Escort the Maxx A. Million Mk. V safely through the Ruins of Enkaat
step
    .goto 1953,31.51,56.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bot-Specialist Alley|r
    .turnin 10191 >>Turn in Mark V is Alive! while you are here
    .isQuestComplete 10191
    .target Bot-Specialist Alley
step
    #loop
    .goto 1953,32.30,55.18,0
    .goto 1953,32.30,55.18,40,0
    .goto 1953,35.22,53.54,40,0
    >>Pick up |cRXP_PICK_Etherlithium Matrix Crystal|r from the ground
    .complete 10186,1 --Etherlithium Matrix Crystal (10)
step
    .goto 1953,31.51,56.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bot-Specialist Alley|r
    .turnin 10191 >>Turn in Mark V is Alive!
    .target Bot-Specialist Alley
step
    #loop
    .goto 1953,30.00,62.71,0
    .goto 1953,30.00,62.71,40,0
    .goto 1953,27.07,61.68,40,0
    .goto 1953,26.36,55.83,40,0
    >>Kill |cRXP_ENEMY_Shaleskin Flayers|r. Loot them for |cRXP_LOOT_Shaleskin Shale|r
    .complete 10342,1 --Shaleskin Shale (5)
    .mob Shaleskin Flayer
step
    .goto 1953,32.27,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boots|r
    .turnin 10342 >>Turn in Securing the Shaleskin Shale
    .accept 10199 >>Accept That Little Extra Kick
    .target Boots
step
    .goto 1953,32.68,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocket-Chief Fuselage|r
    .turnin 10186 >>Turn in You're Hired!
    .accept 10203 >>Accept Invaluable Asset Zapping
    .accept 10225 >>Accept Report to Engineering
    .target Rocket-Chief Fuselage
step
    .goto 1953,32.43,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Trep|r
    .turnin 10225 >>Turn in Report to Engineering
    .accept 10224 >>Accept Essence for the Engines
    .target Chief Engineer Trep
step
    #loop
    .goto 1953,36.47,60.04,0
    .goto 1953,36.47,60.04,40,0
    .goto 1953,36.10,57.67,40,0
    >>Kill |cRXP_ENEMY_Mana Wraiths|r. Loot them for |cRXP_LOOT_Mana Wraith Essence|r
    .complete 10224,1 --Mana Wraith Essence (7)
    .mob Mana Wraith
step
    .goto 1953,32.43,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Trep|r
    .turnin 10224 >>Turn in Essence for the Engines
    .accept 10226 >>Accept Elemental Power Extraction
    .target Chief Engineer Trep
step
    #loop
    .goto 1953,33.83,77.23,0
    .goto 1953,33.83,77.23,40,0
    .goto 1953,32.94,79.62,40,0
    >>Pick up |cRXP_PICK_Elemental Power|r from the ground
    .complete 10226,1 --Elemental Power (5)
step
    .goto 1953,40.80,72.60
    >>Click the |cRXP_PICK_Multi-Spectrum Terrain Analyzer|r
    >>Click the |cRXP_PICK_Hyper Rotational Dig-A-Matic|r
    >>Click the |cRXP_PICK_Big Wagon Full of Explosives|r
    >>Kill |cRXP_ENEMY_Pentatharon|r and loot |cRXP_LOOT_Arklon Crystal Artifact|r
    >>Click the |cRXP_PICK_Servo-Pneumatic Dredging Claw|r
    >>Kill |cRXP_ENEMY_Ekkorash the Inquisitor|r and loot |cRXP_LOOT_Archmage Vargoth's Staff|r
    .complete 10203,3 --Multi-Spectrum Terrain Analyzer retrieved
    .complete 10203,1 --Hyper Rotational Dig-A-Matic retrieved
    .complete 10203,4 --Big Wagon Full of Explosives retrieved
    .complete 10265,1 --Arklon Crystal Artifact (1)
    .complete 10203,2 --Servo-Pneumatic Dredging Claw retrieved
    .complete 10173,1 --Archmage Vargoth's Staff (1)
    .mob Pentatharon
    .mob Ekkorash the Inquisitor
step
    #loop
    .goto 1953,42.98,68.84,0
    .goto 1953,42.98,68.84,40,0
    .goto 1953,45.57,72.74,40,0
    >>Kill |cRXP_ENEMY_Nether Rays|r. Loot them for |cRXP_LOOT_Nether Ray Stinger|r
    .complete 10199,1 --Nether Ray Stinger (5)
    .mob Nether Ray
step
    .goto 1953,32.27,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boots|r
    .turnin 10199 >>Turn in That Little Extra Kick
    .target Boots
step
    .goto 1953,34.19,68.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lead Sapper Blastfizzle|r
    .turnin 10203 >>Turn in Invaluable Asset Zapping
    .accept 10221 >>Accept Dr. Boom!
    .target Lead Sapper Blastfizzle
step
    .goto 1953,32.43,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Trep|r
    .turnin 10226 >>Turn in Elemental Power Extraction
    .target Chief Engineer Trep
step
    .goto 1953,31.36,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravandwyr|r
    .turnin 10173 >>Turn in The Archmage's Staff
    .accept 10300 >>Accept Rebuilding the Staff
    .target Ravandwyr
step
    .goto 1953,32.44,64.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
    .turnin 10265 >>Turn in Consortium Crystal Collection
    .accept 10262 >>Accept A Heap of Ethereals
    .target Nether-Stalker Khay'ji
step
    .goto 1953,32.99,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Papa Wheeler|r
    .accept 10206 >>Accept Pick Your Part
    .target Papa Wheeler
step
    #loop
    .goto 1953,42.37,57.77,0
    .goto 1953,42.37,57.77,40,0
    .goto 1953,41.94,56.87,40,0
    .goto 1953,40.36,54.82,40,0
    .goto 1953,41.26,51.90,40,0
    .goto 1953,39.41,52.39,40,0
    .goto 1953,41.01,50.62,40,0
    >>Interact with |cRXP_FRIENDLY_Phase Hunter|r
    .complete 10190,1 --Phase Hunter
    .target Phase Hunter
step
    #completewith Along31
    >>As you go: Kill |cRXP_ENEMY_Zaxxis Raiders|r, |cRXP_ENEMY_Warp-Raider Nesaads|r and |cRXP_ENEMY_Zaxxis Stalkers|r. Loot them for |cRXP_LOOT_Zaxxis Insignia|r. Pick up |cRXP_PICK_Ethereal Technology|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10262,1 --Zaxxis Insignia (10)
    .complete 10206,1 --Ethereal Technology (1)
    .mob Zaxxis Raider
    .mob Warp-Raider Nesaad
    .mob Zaxxis Stalker
step
    .goto 1953,26.82,76.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_N. D. Meancamp|r
    .accept 10309 >>Accept It's a Fel Reaver, But with Heart
    .target N. D. Meancamp
step
    .goto 1953,26.52,78.70
    >>Kill |cRXP_ENEMY_Scrapped Fel Reaver|r and loot |cRXP_LOOT_Heart of the Fel Reaver|r
    .complete 10309,1 --Heart of the Fel Reaver (1)
    .mob Scrapped Fel Reaver
step
    #label Along31
    .goto 1953,26.82,76.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_N. D. Meancamp|r
    .turnin 10309 >>Turn in It's a Fel Reaver, But with Heart
    .target N. D. Meancamp
step
    .goto 1953,20.50,77.17
    >>Kill |cRXP_ENEMY_Netherock|r
    .complete 10701,1 --Netherock slain (1)
    .mob Netherock
step
    .goto 1953,32.68,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocket-Chief Fuselage|r
    .turnin 10701 >>Turn in Breaking Down Netherock
    .target Rocket-Chief Fuselage
step
    #loop
    .goto 1953,30.96,75.20,0
    .goto 1953,30.96,75.20,40,0
    .goto 1953,29.42,78.86,40,0
    .goto 1953,26.51,79.54,40,0
    >>Kill |cRXP_ENEMY_Zaxxis Raiders|r, |cRXP_ENEMY_Warp-Raider Nesaads|r and |cRXP_ENEMY_Zaxxis Stalkers|r. Loot them for |cRXP_LOOT_Zaxxis Insignia|r
    >>Pick up |cRXP_PICK_Ethereal Technology|r from the ground
    .complete 10262,1 --Zaxxis Insignia (10)
    .complete 10206,1 --Ethereal Technology (1)
    .mob Zaxxis Raider
    .mob Warp-Raider Nesaad
    .mob Zaxxis Stalker
step
    .goto 1953,32.44,64.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
    .turnin 10262 >>Turn in A Heap of Ethereals
    .accept 10205 >>Accept Warp-Raider Nesaad
    .target Nether-Stalker Khay'ji
step
    .goto 1953,32.99,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Papa Wheeler|r
    .turnin 10206 >>Turn in Pick Your Part
    .accept 10232 >>Accept In A Scrap With The Legion
    .accept 10333 >>Accept Help Mama Wheeler
    .target Papa Wheeler
step
    .goto 1953,20.64,68.87
    >>Kill |cRXP_ENEMY_Arcane Annihilator|r and loot |cRXP_LOOT_Annihilator Servo|r
    .complete 10261,1 --Annihilator Servo (1)
    .mob Arcane Annihilator
step
    .goto 1953,32.99,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Papa Wheeler|r
    .turnin 10261 >>Turn in Wanted: Annihilator Servo!
    .target Papa Wheeler
step
    .goto 1953,28.36,79.45
    >>Kill |cRXP_ENEMY_Warp-Raider Nesaad|r
    .complete 10205,1 --Warp-Raider Nesaad slain (1)
    .mob Warp-Raider Nesaad
step
    .goto 1953,32.44,64.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Khay'ji|r
    .turnin 10205 >>Turn in Warp-Raider Nesaad
    .accept 10266 >>Accept Request for Assistance
    .target Nether-Stalker Khay'ji
step
    #completewith Along41
    >>As you go: Kill |cRXP_ENEMY_Disembodied Vindicators|r, |cRXP_ENEMY_Disembodied Protectors|r and |cRXP_ENEMY_Disembodied Exarches|r. Loot them for |cRXP_LOOT_Flawless Crystal Shard|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10300,1 --Flawless Crystal Shard (4)
    .mob Disembodied Vindicator
    .mob Disembodied Protector
    .mob Disembodied Exarch
step
    #label Along41
    .goto 1953,31.51,56.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bot-Specialist Alley|r
    .turnin 10190 >>Turn in Recharging the Batteries
    .target Bot-Specialist Alley
step
    #loop
    .goto 1953,32.69,54.67,0
    .goto 1953,32.69,54.67,40,0
    .goto 1953,36.25,54.76,40,0
    >>Kill |cRXP_ENEMY_Disembodied Vindicators|r, |cRXP_ENEMY_Disembodied Protectors|r and |cRXP_ENEMY_Disembodied Exarches|r. Loot them for |cRXP_LOOT_Flawless Crystal Shard|r
    .complete 10300,1 --Flawless Crystal Shard (4)
    .mob Disembodied Vindicator
    .mob Disembodied Protector
    .mob Disembodied Exarch
step
    .goto 1953,35.01,59.56
    >>Kill |cRXP_ENEMY_Dr. Boom|r
    .complete 10221,1 --Dr. Boom slain (1)
    .mob Dr. Boom
step
    .goto 1953,33.75,63.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krexcil|r
    .fp Area 52 >> Get the Area 52 flight path
    .target Krexcil
    .zoneskip Netherstorm,1
step
    .goto 1953,31.36,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravandwyr|r
    .turnin 10300 >>Turn in Rebuilding the Staff
    .accept 10174 >>Accept Curse of the Violet Tower
    .target Ravandwyr
step
    .goto 1953,31.36,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Vargoth|r
    .turnin 10174 >>Turn in Curse of the Violet Tower
    .accept 10188 >>Accept The Sigil of Krasus
    .target Image of Archmage Vargoth
step
    .goto 1953,34.19,68.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lead Sapper Blastfizzle|r
    .turnin 10221 >>Turn in Dr. Boom!
    .target Lead Sapper Blastfizzle
step
    .goto 1953,57.72,84.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadell|r
    .accept 10334 >>Accept Needs More Cowbell
    .target Thadell
step
    .goto 1953,57.71,85.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Andrethan|r
    .accept 10331 >>Accept Indispensable Tools
    .target Apprentice Andrethan
step
    .goto 1953,57.58,86.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r
    .accept 10343 >>Accept The Unending Invasion
    .target Lieutenant-Sorcerer Morran
step
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .accept 10184 >>Accept Malevolent Remnants
    .accept 10185 >>Accept A Fate Worse Than Death
    .target Custodian Dieworth
step
    #completewith Along52
    >>As you go: Kill |cRXP_ENEMY_Mana Seekers|r. Kill |cRXP_ENEMY_Mageslayers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10185,1 --Mana Seeker slain (10)
    .complete 10185,2 --Mageslayer slain (10)
    .mob Mana Seeker
    .mob Mageslayer
step
    .goto 1953,55.68,87.18
    >>Pick up |cRXP_PICK_Mana Bomb Fragment|r from the ground
    .complete 10343,1 --Mana Bomb Fragment (1)
step
    #completewith Along52
    >>As you go: Kill |cRXP_ENEMY_Severed Defenders|r and |cRXP_ENEMY_Severed Spirits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10184,1 --Severed Defender (8)
    .mob Severed Defender
    .mob Severed Spirit
step
    #label Along52
    .goto 1953,57.58,86.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r
    .turnin 10343 >>Turn in The Unending Invasion
    .accept 10239 >>Accept Potential Energy Source
    .target Lieutenant-Sorcerer Morran
step
    #loop
    .goto 1953,51.18,82.08,0
    .goto 1953,51.18,82.08,40,0
    .goto 1953,48.90,81.91,40,0
    >>Kill |cRXP_ENEMY_Spellbinder Maryana|r and loot |cRXP_LOOT_Sigil of Krasus|r
    >>Pick up |cRXP_PICK_Energy Isolation Cube|r from the ground
    .complete 10188,1 --Sigil of Krasus (1)
    .complete 10239,1 --Energy Isolation Cube (10)
    .mob Spellbinder Maryana
step
    .goto 1953,31.36,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Vargoth|r
    .turnin 10188 >>Turn in The Sigil of Krasus
    .accept 10192 >>Accept Krasus's Compendium
    .target Image of Archmage Vargoth
step
    #completewith Along65
    >>As you go: Kill |cRXP_ENEMY_Severed Defenders|r and |cRXP_ENEMY_Severed Spirits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10184,1 --Severed Defender (8)
    .mob Severed Defender
    .mob Severed Spirit
step
    #completewith Along58
    >>As you go: Kill |cRXP_ENEMY_Mana Seekers|r. Kill |cRXP_ENEMY_Mageslayers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10185,1 --Mana Seeker slain (10)
    .complete 10185,2 --Mageslayer slain (10)
    .mob Mana Seeker
    .mob Mageslayer
step
    .goto 1953,57.58,86.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r
    .turnin 10239 >>Turn in Potential Energy Source
    .accept 10240 >>Accept Building a Perimeter
    .target Lieutenant-Sorcerer Morran
step
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .accept 10222 >>Accept The Sunfury Garrison
    .target Custodian Dieworth
step
    #completewith Along57
    >>As you go: Pick up |cRXP_PICK_Krasus's Compendium - Chapter 2|r from the ground. Pick up |cRXP_PICK_Krasus's Compendium - Chapter 1|r from the ground. Pick up |cRXP_PICK_Krasus's Compendium - Chapter 3|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10192,2 --Krasus's Compendium - Chapter 2 (1)
    .complete 10192,1 --Krasus's Compendium - Chapter 1 (1)
    .complete 10192,3 --Krasus's Compendium - Chapter 3 (1)
step
    #label Along57
    .goto 1953,58.06,88.65
    >>Kill |cRXP_ENEMY_Abjurist Belmara|r and loot |cRXP_LOOT_Belmara's Tome|r. Use it to start the quest
    .collect 29234,1,10305 --Belmara's Tome (1)
    .accept 10305 >>Accept Abjurist Belmara
    .use 29234
    .mob Abjurist Belmara
step
    #label Along58
    .goto 1953,58.60,89.21
    >>Pick up |cRXP_PICK_Krasus's Compendium - Chapter 2|r from the ground
    >>Pick up |cRXP_PICK_Krasus's Compendium - Chapter 1|r from the ground
    >>Pick up |cRXP_PICK_Krasus's Compendium - Chapter 3|r from the ground
    .complete 10192,2 --Krasus's Compendium - Chapter 2 (1)
    .complete 10192,1 --Krasus's Compendium - Chapter 1 (1)
    .complete 10192,3 --Krasus's Compendium - Chapter 3 (1)
step
    .goto 1953,31.36,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Vargoth|r
    .turnin 10192 >>Turn in Krasus's Compendium
    .accept 10301 >>Accept Unlocking the Compendium
    .target Image of Archmage Vargoth
step
    #completewith Along62
    >>As you go: Kill |cRXP_ENEMY_Kirin'Var Apprentice|r and loot |cRXP_LOOT_Smithing Hammer|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10331,1 --Smithing Hammer (1)
    .mob Kirin'Var Apprentice
step
    .goto 1953,59.23,85.36
    >>Use the Rune Activation Device near the East Rune, Northeast Rune, and West Rune. The runes can be found around the perimeter of Kirin'Var Village's Wizard Row and Town Square districts. Return to Lieutenant-Sorcerer Morran once you've completed the task.
    .complete 10240,1 --Invis East KV Rune
    .target Invis East KV Rune
step
    #completewith Along61
    >>As you go: Kill |cRXP_ENEMY_Mageslayers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10185,2 --Mageslayer slain (10)
    .mob Mageslayer
step
    #label Along61
    .goto 1953,59.74,87.05
    >>Kill |cRXP_ENEMY_Cohlien Frostweaver|r and loot |cRXP_LOOT_Cohlien's Cap|r. Use it to start the quest
    .collect 29236,1,10307 --Cohlien's Cap (1)
    .accept 10307 >>Accept Cohlien Frostweaver
    .use 29236
    .mob Cohlien Frostweaver
step
    #label Along62
    .goto 1953,59.79,85.72
    >>Kill |cRXP_ENEMY_Conjurer Luminrath|r and loot |cRXP_LOOT_Luminrath's Mantle|r. Use it to start the quest
    .collect 29235,1,10306 --Luminrath's Mantle (1)
    .accept 10306 >>Accept Conjurer Luminrath
    .use 29235
    .mob Conjurer Luminrath
step
    .goto 1953,61.03,84.70
    >>Kill |cRXP_ENEMY_Kirin'Var Apprentice|r and loot |cRXP_LOOT_Smithing Hammer|r
    .complete 10331,1 --Smithing Hammer (1)
    .mob Kirin'Var Apprentice
step
    #completewith Along65
    >>As you go: Kill |cRXP_ENEMY_Mana Seekers|r. Kill |cRXP_ENEMY_Mageslayers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10185,1 --Mana Seeker slain (10)
    .complete 10185,2 --Mageslayer slain (10)
    .mob Mana Seeker
    .mob Mageslayer
step
    .goto 1953,57.71,85.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Andrethan|r
    .turnin 10331 >>Turn in Indispensable Tools
    .accept 10332 >>Accept Master Smith Rhonsus
    .target Apprentice Andrethan
step
    #label Along65
    .goto 1953,57.58,86.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r
    .accept 10233 >>Accept Torching Sunfury Hold
    .target Lieutenant-Sorcerer Morran
step
    .goto 1953,57.35,82.90
    >>Use the Rune Activation Device near the East Rune, Northeast Rune, and West Rune. The runes can be found around the perimeter of Kirin'Var Village's Wizard Row and Town Square districts. Return to Lieutenant-Sorcerer Morran once you've completed the task.
    .complete 10240,2 --Invis NE KV Rune
    .target Invis NE KV Rune
step
    #completewith Along68
    >>As you go: Kill |cRXP_ENEMY_Invis BE Tents|r. Kill |cRXP_ENEMY_Spellreaver Marathelle|r and loot |cRXP_LOOT_Heliotrope Oculus|r. Kill |cRXP_ENEMY_Sunfury Archers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10233,2 --Sunfury Tent Destroyed (4)
    .complete 10301,1 --Heliotrope Oculus (1)
    .complete 10222,1 --Sunfury Archer slain (10)
    .mob Invis BE Tent
    .mob Spellreaver Marathelle
    .mob Sunfury Archer
step
    .goto 1953,56.01,80.26
    >>Kill |cRXP_ENEMY_Sunfury Flamekeeper|r and loot |cRXP_LOOT_Flaming Torch|r
    .collect 28550,1,10233,1 --Flaming Torch (1)
    .mob Sunfury Flamekeeper
step
    #label Along68
    .goto 1953,55.45,78.70
    >>Kill |cRXP_ENEMY_Invis BE Ballistas|r
    .complete 10233,1 --Sunfury Ballista Destroyed (4)
    .mob Invis BE Ballista
step
    #loop
    .goto 1953,55.94,77.92,0
    .goto 1953,55.94,77.92,40,0
    .goto 1953,56.14,79.45,40,0
    >>Kill |cRXP_ENEMY_Invis BE Tents|r
    >>Kill |cRXP_ENEMY_Spellreaver Marathelle|r and loot |cRXP_LOOT_Heliotrope Oculus|r
    >>Kill |cRXP_ENEMY_Sunfury Archers|r
    .complete 10233,2 --Sunfury Tent Destroyed (4)
    .complete 10301,1 --Heliotrope Oculus (1)
    .complete 10222,1 --Sunfury Archer slain (10)
    .mob Invis BE Tent
    .mob Spellreaver Marathelle
    .mob Sunfury Archer
step
    .goto 1953,31.36,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Vargoth|r
    .turnin 10301 >>Turn in Unlocking the Compendium
    .accept 10209 >>Accept Summoner Kanthin's Prize
    .target Image of Archmage Vargoth
step
    #completewith Along73
    >>As you go: Kill |cRXP_ENEMY_Mana Seekers|r. Kill |cRXP_ENEMY_Mageslayers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10185,1 --Mana Seeker slain (10)
    .complete 10185,2 --Mageslayer slain (10)
    .mob Mana Seeker
    .mob Mageslayer
step
    #completewith Along71
    >>As you go: Click the |cRXP_PICK_Bookshelf|r. Click the |cRXP_PICK_Footlocker|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10305,1 --Bookshelf
    .complete 10307,1 --Footlocker
step
    #label Along71
    .goto 1953,54.30,86.07
    >>Use the Rune Activation Device near the East Rune, Northeast Rune, and West Rune. The runes can be found around the perimeter of Kirin'Var Village's Wizard Row and Town Square districts. Return to Lieutenant-Sorcerer Morran once you've completed the task.
    .complete 10240,3 --Invis West KV Rune
    .target Invis West KV Rune
step
    #completewith Along73
    >>As you go: Kill |cRXP_ENEMY_Severed Defenders|r and |cRXP_ENEMY_Severed Spirits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10184,1 --Severed Defender (8)
    .mob Severed Defender
    .mob Severed Spirit
step
    #completewith Along72
    >>As you go: Click the |cRXP_PICK_Dresser|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10306,1 --Dresser
step
    #label Along72
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10222 >>Turn in The Sunfury Garrison
    .accept 10223 >>Accept Down With Daellis
    .target Custodian Dieworth
step
    #label Along73
    .goto 1953,57.58,86.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant-Sorcerer Morran|r
    .turnin 10233 >>Turn in Torching Sunfury Hold
    .turnin 10240 >>Turn in Building a Perimeter
    .target Lieutenant-Sorcerer Morran
step
    #completewith next
    .hs >>Hearth to Dealer Dunar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1953,46.67,56.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahruj|r
    .turnin 10266 >>Turn in Request for Assistance
    .accept 10267 >>Accept Rightful Repossession
    .accept 10311 >>Accept Drijya Needs Your Help
    .target Gahruj
step
    .goto 1953,46.63,56.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Wheeler|r
    .turnin 10333 >>Turn in Help Mama Wheeler
    .accept 10234 >>Accept One Demon's Trash...
    .target Mama Wheeler
step
    .goto 1953,46.45,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehrdad|r
    .accept 10348 >>Accept New Opportunities
    .accept 10417 >>Accept Run a Diagnostic!
    .target Mehrdad
step
    #completewith Along79
    >>As you go: Pick up |cRXP_PICK_Ivory Bell|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10348,1 --Ivory Bell (15)
step
    .goto 1953,46.48,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shauly Pore|r
    .accept 10433 >>Accept Keeping Up Appearances
    .target Shauly Pore
step
    #completewith Along78
    >>As you go: Kill |cRXP_ENEMY_Mo'arg Doomsmiths|r. Kill |cRXP_ENEMY_Gan'arg Engineers|r. Pick up |cRXP_PICK_Fel Reaver Part|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10232,1 --Mo'arg Doomsmith slain (5)
    .complete 10232,2 --Gan'arg Engineer slain (15)
    .complete 10234,1 --Fel Reaver Part (10)
    .mob Mo'arg Doomsmith
    .mob Gan'arg Engineer
step
    #label Along78
    .goto 1953,48.23,55.00
    >>Open the |cRXP_PICK_Diagnostic Equipment|r. Loot it for |cRXP_LOOT_Diagnostic Results|r
    .complete 10417,1 --Diagnostic Results (1)
step
    #completewith Along79
    >>As you go: Kill |cRXP_ENEMY_Ripfang Lynxes|r. Loot them for |cRXP_LOOT_Ripfang Lynx Pelt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10433,1 --Ripfang Lynx Pelt (10)
    .mob Ripfang Lynx
step
    #label Along79
    .goto 1953,46.45,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehrdad|r
    .turnin 10417 >>Turn in Run a Diagnostic!
    .accept 10418 >>Accept Deal With the Saboteurs
    .target Mehrdad
step
    #loop
    .goto 1953,47.44,53.00,0
    .goto 1953,47.44,53.00,40,0
    .goto 1953,43.93,50.66,40,0
    .goto 1953,43.58,54.95,40,0
    >>Kill |cRXP_ENEMY_Barbscale Crocolisks|r
    >>Kill |cRXP_ENEMY_Ripfang Lynxes|r. Loot them for |cRXP_LOOT_Ripfang Lynx Pelt|r
    >>Pick up |cRXP_PICK_Ivory Bell|r from the ground
    .complete 10418,1 --Barbscale Crocolisk slain (8)
    .complete 10433,1 --Ripfang Lynx Pelt (10)
    .complete 10348,1 --Ivory Bell (15)
    .mob Barbscale Crocolisk
    .mob Ripfang Lynx
step
    .goto 1953,46.48,56.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shauly Pore|r
    .turnin 10433 >>Turn in Keeping Up Appearances
    .accept 10434 >>Accept The Dynamic Duo
    .target Shauly Pore
step
    .goto 1953,46.45,56.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehrdad|r
    .turnin 10348 >>Turn in New Opportunities
    .turnin 10418 >>Turn in Deal With the Saboteurs
    .accept 10423 >>Accept To the Stormspire
    .target Mehrdad
step
    #loop
    .goto 1953,50.22,59.58,0
    .goto 1953,50.22,59.58,40,0
    .goto 1953,51.73,59.95,40,0
    >>Kill |cRXP_ENEMY_Mo'arg Doomsmiths|r
    >>Kill |cRXP_ENEMY_Gan'arg Engineers|r
    >>Pick up |cRXP_PICK_Fel Reaver Part|r from the ground
    .complete 10232,1 --Mo'arg Doomsmith slain (5)
    .complete 10232,2 --Gan'arg Engineer slain (15)
    .complete 10234,1 --Fel Reaver Part (10)
    .mob Mo'arg Doomsmith
    .mob Gan'arg Engineer
step
    .goto 1953,46.63,56.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Wheeler|r
    .turnin 10234 >>Turn in One Demon's Trash...
    .accept 10235 >>Accept Declawing Doomclaw
    .target Mama Wheeler
step
    .goto 1953,50.69,57.19
    >>Kill |cRXP_ENEMY_Doomclaw|r and loot |cRXP_LOOT_Doomclaw's Hand|r
    .complete 10235,1 --Doomclaw's Hand (1)
    .mob Doomclaw
step
    .goto 1953,46.63,56.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Wheeler|r
    .turnin 10235 >>Turn in Declawing Doomclaw
    .accept 10237 >>Accept Warn Area 52!
    .target Mama Wheeler
step
    .goto 1953,48.11,63.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drijya|r
    .turnin 10311 >>Turn in Drijya Needs Your Help
    .target Drijya
step
    .xp 68 >>Grind to level 68 (Sabotage the Warp-Gate! needs it)
step
    .goto 1953,48.11,63.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drijya|r
    .accept 10310 >>Accept Sabotage the Warp-Gate!
    .target Drijya
step << tbc
    .goto 1953,65.20,66.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harpax|r
    .fp Cosmowrench >> Get the Cosmowrench flight path
    .target Harpax
step
    .goto 1953,48.14,63.38
    >>Burning Legion warp-gate sabotaged
    .complete 10310,1 --Burning Legion warp-gate sabotaged
step
    .goto 1953,66.39,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sab'aoth|r
    .accept 10924 >>Accept Bloody Imp-ossible!
    .target Sab'aoth
step
    #loop
    .goto 1953,62.67,59.52,0
    .goto 1953,62.67,59.52,40,0
    .goto 1953,60.27,59.18,40,0
    >>Kill |cRXP_ENEMY_Warp Chaser|r and loot |cRXP_LOOT_Warp Chaser Blood|r
    .complete 10924,1 --Warp Chaser Blood (1)
    .mob Warp Chaser
step
    .goto 1953,66.39,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sab'aoth|r
    .turnin 10924 >>Turn in Bloody Imp-ossible!
    .target Sab'aoth
step
    #completewith Along92
    >>As you go: Pick up |cRXP_PICK_Box of Surveying Equipment|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10267,1 --Box of Surveying Equipment (1)
step
    #label Along92
    .goto 1953,56.07,66.40
    >>Kill |cRXP_ENEMY_Summoner Kanthin|r and loot |cRXP_LOOT_Stone of Glacius|r
    >>Kill |cRXP_ENEMY_Master Daellis Dawnstrike|r
    .complete 10209,1 --Stone of Glacius (1)
    .complete 10223,1 --Master Daellis Dawnstrike slain (1)
    .mob Summoner Kanthin
    .mob Master Daellis Dawnstrike
step
    .goto 1953,46.67,56.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahruj|r
    .turnin 10310 >>Turn in Sabotage the Warp-Gate!
    .target Gahruj
step
    .goto 1953,31.36,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Vargoth|r
    .turnin 10209 >>Turn in Summoner Kanthin's Prize
    .accept 10176 >>Accept Ar'kelos the Guardian
    .target Image of Archmage Vargoth
step
    .goto 1953,32.68,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocket-Chief Fuselage|r
    .turnin 10237 >>Turn in Warn Area 52! while you are here
    .isQuestComplete 10237
    .target Rocket-Chief Fuselage
step
    .goto 1953,32.99,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Papa Wheeler|r
    .turnin 10232 >>Turn in In A Scrap With The Legion while you are here
    .isQuestComplete 10232
    .target Papa Wheeler
step
    #loop
    .goto 1953,56.95,65.73,0
    .goto 1953,56.95,65.73,40,0
    .goto 1953,58.82,65.86,40,0
    >>Pick up |cRXP_PICK_Box of Surveying Equipment|r from the ground
    .complete 10267,1 --Box of Surveying Equipment (1)
step
    #completewith Along101
    >>As you go: Kill |cRXP_ENEMY_Mana Seekers|r. Kill |cRXP_ENEMY_Mageslayers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10185,1 --Mana Seeker slain (10)
    .complete 10185,2 --Mageslayer slain (10)
    .mob Mana Seeker
    .mob Mageslayer
step
    #completewith Along98
    >>As you go: Kill |cRXP_ENEMY_Severed Defenders|r and |cRXP_ENEMY_Severed Spirits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10184,1 --Severed Defender (8)
    .mob Severed Defender
    .mob Severed Spirit
step
    #completewith Along96
    >>As you go: Kill |cRXP_ENEMY_Ar'kelos|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10176,1 --Ar'kelos slain (1)
    .mob Ar'kelos
step
    #label Along96
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10223 >>Turn in Down With Daellis
    .target Custodian Dieworth
step
    .goto 1953,58.15,86.58
    >>Kill |cRXP_ENEMY_Ar'kelos|r
    .complete 10176,1 --Ar'kelos slain (1)
    .mob Ar'kelos
step
    #label Along98
    .goto 1953,58.34,86.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Vargoth|r
    .turnin 10176 >>Turn in Ar'kelos the Guardian
    .accept 10256 >>Accept Finding the Keymaster
    .target Archmage Vargoth
step
    #loop
    .goto 1953,59.90,84.94,0
    .goto 1953,59.90,84.94,40,0
    .goto 1953,58.64,89.19,40,0
    >>Kill |cRXP_ENEMY_Rhonsus|r
    >>Kill |cRXP_ENEMY_Severed Defenders|r and |cRXP_ENEMY_Severed Spirits|r
    .complete 10332,1 --Rhonsus slain (1)
    .complete 10184,1 --Severed Defender (8)
    .mob Rhonsus
    .mob Severed Defender
    .mob Severed Spirit
step
    #completewith Along100
    >>As you go: Click the |cRXP_PICK_Dresser|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10306,1 --Dresser
step
    #label Along100
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10184 >>Turn in Malevolent Remnants
    .accept 10312 >>Accept The Annals of Kirin'Var
    .target Custodian Dieworth
step
    #label Along101
    .goto 1953,57.71,85.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Andrethan|r
    .turnin 10332 >>Turn in Master Smith Rhonsus
    .target Apprentice Andrethan
step
    .goto 1953,60.40,88.01
    >>Kill |cRXP_ENEMY_Battle-Mage Dathric|r and loot |cRXP_LOOT_Annals of Kirin'Var|r
    .complete 10312,1 --Annals of Kirin'Var (1)
    .mob Battle-Mage Dathric
step
    .goto 1953,60.40,88.01
    >>Kill |cRXP_ENEMY_Battle-Mage Dathric|r and loot |cRXP_LOOT_Dathric's Blade|r. Use it to start the quest
    .collect 29233,1,10182 --Dathric's Blade (1)
    .accept 10182 >>Accept Battle-Mage Dathric
    .use 29233
    .mob Battle-Mage Dathric
step
    #completewith Along104
    >>As you go: Click the |cRXP_PICK_Weapon Rack|r. Click the |cRXP_PICK_Dresser|r. Kill |cRXP_ENEMY_Mana Seekers|r. Kill |cRXP_ENEMY_Mageslayers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10182,1 --Weapon Rack
    .complete 10306,1 --Dresser
    .complete 10185,1 --Mana Seeker slain (10)
    .complete 10185,2 --Mageslayer slain (10)
    .mob Mana Seeker
    .mob Mageslayer
step
    #label Along104
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10312 >>Turn in The Annals of Kirin'Var
    .accept 10316 >>Accept Searching for Evidence
    .target Custodian Dieworth
step
    #loop
    .goto 1953,56.88,86.85,0
    .goto 1953,56.88,86.85,40,0
    .goto 1953,55.31,88.38,40,0
    >>Click the |cRXP_PICK_Weapon Rack|r
    >>Click the |cRXP_PICK_Dresser|r
    >>Click the |cRXP_PICK_Bookshelf|r
    >>Click the |cRXP_PICK_Footlocker|r
    >>Kill |cRXP_ENEMY_Mana Seekers|r
    >>Kill |cRXP_ENEMY_Mageslayers|r
    .complete 10182,1 --Weapon Rack
    .complete 10306,1 --Dresser
    .complete 10305,1 --Bookshelf
    .complete 10307,1 --Footlocker
    .complete 10185,1 --Mana Seeker slain (10)
    .complete 10185,2 --Mageslayer slain (10)
    .mob Mana Seeker
    .mob Mageslayer
step
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10182 >>Turn in Battle-Mage Dathric
    .turnin 10185 >>Turn in A Fate Worse Than Death
    .turnin 10305 >>Turn in Abjurist Belmara
    .turnin 10306 >>Turn in Conjurer Luminrath
    .turnin 10307 >>Turn in Cohlien Frostweaver
    .target Custodian Dieworth
step
    .goto 1953,51.84,70.46
    >>Kill |cRXP_ENEMY_Apex|r and loot |cRXP_LOOT_Apex's Crystal Focus|r
    .collect 28786,1,10256,1 --Apex's Crystal Focus (1)
    .mob Apex
step
    .goto 1953,60.30,77.97
    >>Click the |cRXP_PICK_Necromantic Focus|r
    .turnin 10316 >>Turn in Searching for Evidence
    .accept 10314 >>Accept A Lingering Suspicion
step
    .goto 1953,59.15,78.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bessy|r
    .turnin 10334 >>Turn in Needs More Cowbell while you are here
    .isQuestComplete 10334
    .target Bessy
step
    #loop
    .goto 1953,60.09,80.62,0
    .goto 1953,60.09,80.62,40,0
    .goto 1953,62.02,79.85,40,0
    >>Kill |cRXP_ENEMY_Tormented Souls|r and |cRXP_ENEMY_Tormented Citizens|r. Loot them for |cRXP_LOOT_Loathsome Remnant|r
    .complete 10314,1 --Loathsome Remnant (10)
    .mob Tormented Soul
    .mob Tormented Citizen
step
    .goto 1953,59.15,78.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bessy|r
    .turnin 10334 >>Turn in Needs More Cowbell
    .accept 10337 >>Accept When the Cows Come Home
    .target Bessy
step
    .goto 1953,57.71,84.97
    >>Escort Bessy on her way home.
    .complete 10337,1 --Escort Bessy on her way home.
step
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10314 >>Turn in A Lingering Suspicion while you are here
    .isQuestComplete 10314
    .target Custodian Dieworth
step
    .goto 1953,57.72,84.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadell|r
    .turnin 10337 >>Turn in When the Cows Come Home
    .target Thadell
step
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10314 >>Turn in A Lingering Suspicion
    .accept 10319 >>Accept Capturing the Phylactery
    .target Custodian Dieworth
step
    .goto 1953,58.28,86.63
    >>Locate Apex and obtain Apex's Crystal Focus from him. Return to the Violet Tower and use Apex's Crystal Focus near Archmage Vargoth's Orb to discover who holds the key to breaking the tower's curse.
    .complete 10256,1 --Image of Commander Sarannis
    .target Image of Commander Sarannis
step
    .goto 1953,58.34,86.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Vargoth|r
    .turnin 10256 >>Turn in Finding the Keymaster
    .accept 10257 >>Accept Capturing the Keystone
    .target Archmage Vargoth
step
    .goto 1953,59.86,80.38
    >>Open the |cRXP_PICK_Suspicious Outhouse|r. Loot it for |cRXP_LOOT_Naberius's Phylactery|r
    .complete 10319,1 --Naberius's Phylactery (1)
step
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10319 >>Turn in Capturing the Phylactery
    .accept 10320 >>Accept Destroy Naberius!
    .target Custodian Dieworth
step
    .goto 1953,62.69,78.85
    >>Kill |cRXP_ENEMY_Naberius|r
    .complete 10320,1 --Naberius slain (1)
    .mob Naberius
step
    .goto 1953,57.50,86.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custodian Dieworth|r
    .turnin 10320 >>Turn in Destroy Naberius!
    .target Custodian Dieworth
step
    .goto 1953,58.34,86.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Vargoth|r
    .turnin 10257 >>Turn in Capturing the Keystone
    .target Archmage Vargoth
    .isQuestComplete 10257
step
    .goto 1953,32.68,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocket-Chief Fuselage|r
    .turnin 10237 >>Turn in Warn Area 52!
    .accept 10247 >>Accept Doctor Vomisa, Ph.T.
    .target Rocket-Chief Fuselage
step
    .goto 1953,32.99,64.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Papa Wheeler|r
    .turnin 10232 >>Turn in In A Scrap With The Legion
    .target Papa Wheeler
step
    .goto 1953,37.32,63.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Vomisa, Ph.T.|r
    .turnin 10247 >>Turn in Doctor Vomisa, Ph.T.
    .accept 10248 >>Accept You, Robot
    .target Doctor Vomisa, Ph.T.
step
    .goto 1953,37.69,63.48
    >>Kill |cRXP_ENEMY_Negatron|r
    .complete 10248,1 --Scrap Reaver X6000 Test Complete (1)
    .mob Negatron
step
    .goto 1953,37.32,63.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Vomisa, Ph.T.|r
    .turnin 10248 >>Turn in You, Robot
    .accept 10249 >>Accept Back to the Chief!
    .target Doctor Vomisa, Ph.T.
step
    .goto 1953,46.67,56.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahruj|r
    .turnin 10267 >>Turn in Rightful Repossession
    .accept 10268 >>Accept An Audience with the Prince
    .target Gahruj
step
    .goto 1953,42.32,32.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurine Moonblaze|r
    .accept 10426 >>Accept Flora of the Eco-Domes
    .target Aurine Moonblaze
step
    .goto 1953,43.54,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghabar|r
    .turnin 10423 >>Turn in To the Stormspire
    .accept 10424 >>Accept Diagnosis: Critical
    .target Ghabar
step
    .goto 1953,44.08,36.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zuben Elgenubi|r
    .accept 10290 >>Accept In Search of Farahlite
    .target Zuben Elgenubi
step
    .goto 1953,44.74,36.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Audi the Needle|r
    .turnin 10434 >>Turn in The Dynamic Duo
    .accept 10435 >>Accept Retrieving the Goods
    .target Audi the Needle
step
    .goto 1953,45.87,35.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Nexus-Prince Haramad|r
    .turnin 10268 >>Turn in An Audience with the Prince
    .accept 10269 >>Accept Triangulation Point One
    .target Image of Nexus-Prince Haramad
step
    .goto 1953,45.31,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grennik|r
    .fp Stormspire >> Get The Stormspire flight path
    .target Grennik
    .subzoneskip 3738,1
step
    .goto 1953,44.70,34.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Nauthis|r
    .accept 10336 >>Accept The Minions of Culuthas
    .accept 10855 >>Accept Fel Reavers, No Thanks!
    .target Nether-Stalker Nauthis
step
    .goto 1953,44.72,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zephyrion|r
    .accept 10335 >>Accept Surveying the Ruins
    .target Zephyrion
step
    #loop
    .goto 1953,41.15,32.46,0
    .goto 1953,41.15,32.46,40,0
    .goto 1953,41.22,35.42,40,0
    .goto 1953,38.09,36.13,40,0
    .goto 1953,41.12,37.78,40,0
    .goto 1953,41.79,38.61,40,0
    .goto 1953,38.20,39.69,40,0
    .goto 1953,39.56,40.62,40,0
    >>Interact with |cRXP_FRIENDLY_Farahlon Lasher|r
    .complete 10426,1 --Farahlon Lasher
    .target Farahlon Lasher
step
    .goto 1953,42.32,32.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurine Moonblaze|r
    .turnin 10426 >>Turn in Flora of the Eco-Domes
    .accept 10427 >>Accept Creatures of the Eco-Domes
    .target Aurine Moonblaze
step
    #completewith Along136
    >>As you go: Kill |cRXP_ENEMY_Talbuk Does|r and |cRXP_ENEMY_Talbuk Sires|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10427,1 --Talbuk Doe (8)
    .mob Talbuk Doe
    .mob Talbuk Sire
step
    #label Along136
    .goto 1953,47.62,26.75
    >>Open the |cRXP_PICK_Eco-Dome Sutheron Generator|r. Loot it for |cRXP_LOOT_Diagnostic Results|r
    .complete 10424,1 --Diagnostic Results (1)
step
    #loop
    .goto 1953,46.10,27.92,0
    .goto 1953,46.10,27.92,40,0
    .goto 1953,43.59,29.80,40,0
    >>Kill |cRXP_ENEMY_Talbuk Does|r and |cRXP_ENEMY_Talbuk Sires|r
    .complete 10427,1 --Talbuk Doe (8)
    .mob Talbuk Doe
    .mob Talbuk Sire
step
    .goto 1953,42.32,32.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurine Moonblaze|r
    .turnin 10427 >>Turn in Creatures of the Eco-Domes
    .accept 10429 >>Accept When Nature Goes Too Far
    .target Aurine Moonblaze
step
    .goto 1953,43.54,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghabar|r
    .turnin 10424 >>Turn in Diagnosis: Critical while you are here
    .isQuestComplete 10424
    .target Ghabar
step
    .goto 1953,44.56,28.42
    >>Kill |cRXP_ENEMY_Markaru|r and loot |cRXP_LOOT_Hulking Hydra Heart|r
    .complete 10429,1 --Hulking Hydra Heart (1)
    .mob Markaru
step
    .goto 1953,42.32,32.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurine Moonblaze|r
    .turnin 10429 >>Turn in When Nature Goes Too Far
    .target Aurine Moonblaze
step
    #loop
    .goto 1953,38.03,26.90,0
    .goto 1953,38.03,26.90,40,0
    .goto 1953,36.41,30.00,40,0
    >>Kill |cRXP_ENEMY_Gan'arg Mekgineer|r and loot |cRXP_LOOT_Condensed Nether Gas|r
    .collect 31653,1,10855,1 --Condensed Nether Gas (1)
    .mob Gan'arg Mekgineer
step
    .goto 1953,37.95,25.69
    >>Obtain 5 Condensed Nether Gas from Gan'arg Mekgineers at Forge Base: Oblivion, northwest of the Stormspire, and load them into a nearby Inactive Fel Reaver. Return to Nether-Stalker Nauthis after you've completed this task.
    .complete 10855,1 --Inactive Fel Reaver
    .target Inactive Fel Reaver
step
    .goto 1953,57.30,37.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Protectorate Vanguard|r
    .accept 10425 >>Accept Escape from the Staging Grounds
    .target Captured Protectorate Vanguard
step
    .goto 1953,58.90,32.43
    >>Captured Protectorate Vanguard Escorted
    .complete 10425,1 --Captured Protectorate Vanguard Escorted
step
    .goto 1953,59.50,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ameer|r
    .turnin 10425 >>Turn in Escape from the Staging Grounds while you are here
    .isQuestComplete 10425
    .target Commander Ameer
step
    .goto 1953,59.25,32.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flesh Handler Viridius|r
    .accept 10422 >>Accept Captain Tyralius
    .target Flesh Handler Viridius
step
    .goto 1953,58.32,31.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Trader Marid|r
    .accept 10270 >>Accept A Not-So-Modest Proposal
    .target Wind Trader Marid
step
    .goto 1953,59.25,32.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Navuud|r
    .accept 10411 >>Accept Electro-Shock Goodness!
    .target Researcher Navuud
step
    .goto 1953,59.50,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ameer|r
    .turnin 10425 >>Turn in Escape from the Staging Grounds
    .accept 10339 >>Accept The Ethereum
    .target Commander Ameer
step
    .goto 1953,60.11,31.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Dabiri|r
    .accept 10437 >>Accept Recipe for Destruction
    .target Professor Dabiri
step
    #loop
    .goto 1953,63.65,36.37,0
    .goto 1953,63.65,36.37,40,0
    .goto 1953,60.84,38.77,40,0
    .goto 1953,65.92,41.33,40,0
    >>Kill |cRXP_ENEMY_Unstable Voidwraiths|r and |cRXP_ENEMY_Voidshriekers|r. Loot them for |cRXP_LOOT_Fragment of Dimensius|r
    >>Kill |cRXP_ENEMY_Seeping Sludge Globules|r
    .complete 10437,1 --Fragment of Dimensius (8)
    .complete 10411,1 --Seeping Sludge Globule slain (30)
    .mob Unstable Voidwraith
    .mob Voidshrieker
    .mob Seeping Sludge Globule
step
    .goto 1953,59.42,45.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Araxes|r
    .accept 10345 >>Accept The Flesh Lies...
    .target Agent Araxes
step
    #completewith Along152
    >>As you go: Pick up |cRXP_PICK_Teleporter Power Pack|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10270,1 --Teleporter Power Pack (1)
step
    #label Along152
    .goto 1953,60.92,41.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Ya-six|r
    .accept 10353 >>Accept Arconus the Insatiable
    .target Agent Ya-six
step
    .goto 1953,60.16,39.78
    >>Pick up |cRXP_PICK_Teleporter Power Pack|r from the ground
    >>Kill |cRXP_ENEMY_Arconus the Insatiable|r
    .complete 10270,1 --Teleporter Power Pack (1)
    .complete 10353,1 --Arconus the Insatiable slain (1)
    .mob Arconus the Insatiable
step
    #loop
    .goto 1953,60.62,42.65,0
    .goto 1953,60.62,42.65,40,0
    .goto 1953,60.99,45.62,40,0
    >>Interact with |cRXP_FRIENDLY_Withered Corpses|r
    .complete 10345,1 --Withered Corpse (12)
    .target Withered Corpse
step
    .goto 1953,59.42,45.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Araxes|r
    .turnin 10345 >>Turn in The Flesh Lies...
    .target Agent Araxes
step
    #completewith Along163
    >>As you go: Kill |cRXP_ENEMY_Void Waste Globules|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10411,2 --Void Waste Globule slain (30)
    .mob Void Waste Globule
step
    #loop
    .goto 1953,56.38,38.07,0
    .goto 1953,56.38,38.07,40,0
    .goto 1953,57.10,35.24,40,0
    >>Kill |cRXP_ENEMY_Captain Zovax|r
    >>Kill |cRXP_ENEMY_Ethereum Assassins|r
    >>Kill |cRXP_ENEMY_Ethereum Shocktroopers|r
    >>Kill |cRXP_ENEMY_Ethereum Researchers|r
    .complete 10339,4 --Captain Zovax slain (1)
    .complete 10339,1 --Ethereum Assassin slain (5)
    .complete 10339,2 --Ethereum Shocktrooper slain (5)
    .complete 10339,3 --Ethereum Researcher slain (2)
    .mob Captain Zovax
    .mob Ethereum Assassin
    .mob Ethereum Shocktrooper
    .mob Ethereum Researcher
step
    .goto 1953,56.82,38.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Commander Ameer|r
    .turnin 10339 >>Turn in The Ethereum
    .accept 10384 >>Accept Ethereum Data
    .target Image of Commander Ameer
step
    .goto 1953,55.77,39.89
    >>Pick up |cRXP_PICK_Ethereum Data Cell|r from the ground
    .complete 10384,1 --Ethereum Data Cell (1)
step
    .goto 1953,56.82,38.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Commander Ameer|r
    .turnin 10384 >>Turn in Ethereum Data
    .accept 10385 >>Accept Potential for Brain Damage = High
    .target Image of Commander Ameer
step
    #completewith Along161
    >>As you go: Kill |cRXP_ENEMY_Ethereum Assassins|r, |cRXP_ENEMY_Ethereum Shocktroopers|r, |cRXP_ENEMY_Nexus-King Salhadaars|r and |cRXP_ENEMY_Ethereum Researchers|r. Loot them for |cRXP_LOOT_Ethereum Essence|r. |cRXP_WARN_Anything left is finished later|r
    .collect 29482,1,10385,1 --Ethereum Essence (1)
    .mob Ethereum Assassin
    .mob Ethereum Shocktrooper
    .mob Nexus-King Salhadaar
    .mob Ethereum Researcher
step
    .goto 1953,54.39,41.28
    >>Kill |cRXP_ENEMY_Warden Icoshock|r and loot |cRXP_LOOT_The Warden's Key|r
    .collect 29742,1,10422,1 --The Warden's Key (1)
    .mob Warden Icoshock
step
    #label Along161
    .goto 1953,53.30,41.43
    >>Kill |cRXP_ENEMY_Captain Tyralius|r and |cRXP_ENEMY_Ethereum Prisoner (Tyralius)|r
    .complete 10422,1 --Captain Tyralius (1)
    .mob Captain Tyralius
    .mob Ethereum Prisoner (Tyralius)
step
    #loop
    .goto 1953,54.67,42.30,0
    .goto 1953,54.67,42.30,40,0
    .goto 1953,56.24,44.40,40,0
    >>Kill |cRXP_ENEMY_Ethereum Assassins|r, |cRXP_ENEMY_Ethereum Shocktroopers|r, |cRXP_ENEMY_Nexus-King Salhadaars|r and |cRXP_ENEMY_Ethereum Researchers|r. Loot them for |cRXP_LOOT_Ethereum Essence|r
    .collect 29482,1,10385,1 --Ethereum Essence (1)
    .mob Ethereum Assassin
    .mob Ethereum Shocktrooper
    .mob Nexus-King Salhadaar
    .mob Ethereum Researcher
step
    #label Along163
    .goto 1953,54.63,43.96
    >>Kill |cRXP_ENEMY_Congealed Void Horror|r and loot |cRXP_LOOT_Vial of Void Horror Ooze|r. Use it to start the quest
    .collect 29738,1,10413 --Vial of Void Horror Ooze (1)
    .accept 10413 >>Accept The Horrors of Pollution
    .use 29738
    .mob Congealed Void Horror
step
    #loop
    .goto 1953,55.48,45.02,0
    .goto 1953,55.48,45.02,40,0
    .goto 1953,56.12,38.33,40,0
    >>Kill |cRXP_ENEMY_Void Waste Globules|r
    .complete 10411,2 --Void Waste Globule slain (30)
    .mob Void Waste Globule
step
    #loop
    .goto 1953,56.08,40.28,0
    .goto 1953,56.08,40.28,40,0
    .goto 1953,55.21,43.61,40,0
    >>Kill |cRXP_ENEMY_Ethereum Relay|r and loot |cRXP_LOOT_Ethereum Relay Data|r
    .complete 10385,1 --Ethereum Relay Data (1)
    .mob Ethereum Relay
step
    .goto 1953,56.82,38.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Commander Ameer|r
    .turnin 10385 >>Turn in Potential for Brain Damage = High
    .accept 10405 >>Accept S-A-B-O-T-A-G-E
    .target Image of Commander Ameer
step
    #loop
    .goto 1953,55.75,41.77,0
    .goto 1953,55.75,41.77,40,0
    .goto 1953,55.74,44.84,40,0
    >>Kill |cRXP_ENEMY_Ethereum Archons|r and |cRXP_ENEMY_Ethereum Overlords|r. Loot them for |cRXP_LOOT_Prepared Ethereum Wrapping|r
    .complete 10405,1 --Prepared Ethereum Wrapping (1)
    .mob Ethereum Archon
    .mob Ethereum Overlord
step
    .goto 1953,56.82,38.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Commander Ameer|r
    .turnin 10405 >>Turn in S-A-B-O-T-A-G-E
    .accept 10406 >>Accept Delivering the Message
    .target Image of Commander Ameer
step
    .goto 1953,56.42,42.66
    >>Ethereum Conduit Sabotaged
    .complete 10406,1 --Ethereum Conduit Sabotaged
step
    .goto 1953,56.82,38.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Commander Ameer|r
    .turnin 10406 >>Turn in Delivering the Message
    .target Image of Commander Ameer
step
    .goto 1953,59.25,32.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flesh Handler Viridius|r
    .turnin 10422 >>Turn in Captain Tyralius
    .target Flesh Handler Viridius
step
    .goto 1953,59.25,32.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Navuud|r
    .turnin 10413 >>Turn in The Horrors of Pollution
    .turnin 10411 >>Turn in Electro-Shock Goodness!
    .target Researcher Navuud
step
    .goto 1953,60.11,31.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Dabiri|r
    .turnin 10437 >>Turn in Recipe for Destruction
    .accept 10438 >>Accept On Nethery Wings
    .target Professor Dabiri
step
    .goto 1953,59.50,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ameer|r
    .turnin 10353 >>Turn in Arconus the Insatiable
    .target Commander Ameer
step
    .goto 1953,62.42,40.89
    >>Kill |cRXP_ENEMY_Void Conduit|r
    .complete 10438,1 --Void Conduit Destroyed (1)
    .mob Void Conduit
step
    .goto 1953,60.11,31.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Dabiri|r
    .turnin 10438 >>Turn in On Nethery Wings
    .accept 10439 >>Accept Dimensius the All-Devouring
    .target Professor Dabiri
step
    .goto 1953,66.67,33.85
    >>First triangulation point discovered
    .complete 10269,1 --First triangulation point discovered
step
    .goto 1953,71.20,38.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Wind Trader Marid|r
    .turnin 10270 >>Turn in A Not-So-Modest Proposal
    .accept 10271 >>Accept Getting Down to Business
    .target Image of Wind Trader Marid
step
    #loop
    .goto 1953,72.99,37.95,0
    .goto 1953,72.99,37.95,40,0
    .goto 1953,71.57,41.81,40,0
    .goto 1953,69.94,36.13,40,0
    >>Kill |cRXP_ENEMY_Nether Drakes|r and |cRXP_ENEMY_Nether Dragons|r. Loot them for |cRXP_LOOT_Nether Dragon Essence|r
    .complete 10271,1 --Nether Dragon Essence (8)
    .mob Nether Drake
    .mob Nether Dragon
step
    .goto 1953,70.93,38.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shrouded Figure|r
    .turnin 10271 >>Turn in Getting Down to Business
    .accept 10281 >>Accept Formal Introductions
    .target Shrouded Figure
step
    .goto 1953,71.22,35.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyri|r
    .turnin 10281 >>Turn in Formal Introductions
    .accept 10272 >>Accept A Promising Start
    .target Tyri
step
    #loop
    .goto 1953,71.71,36.21,0
    .goto 1953,71.71,36.21,40,0
    .goto 1953,72.70,40.29,40,0
    .goto 1953,72.66,42.32,40,0
    >>Pick up |cRXP_PICK_Nether Dragonkin Egg|r from the ground
    .complete 10272,1 --Nether Dragonkin Egg (15)
step
    .goto 1953,71.22,35.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyri|r
    .turnin 10272 >>Turn in A Promising Start
    .accept 10273 >>Accept Troublesome Distractions
    .target Tyri
step
    .goto 1953,60.64,32.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Saeed|r
    .complete 10439,2 --Captain Saeed
    .target Captain Saeed
step
    #completewith Along185
    >>As you go: Kill |cRXP_ENEMY_Wind Trader Marid|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10273,1 --Wind Trader Marid slain (1)
    .mob Wind Trader Marid
step
    #label Along185
    .goto 1953,58.35,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dealer Hazzin|r
    .turnin 10269 >>Turn in Triangulation Point One
    .accept 10275 >>Accept Triangulation Point Two
    .target Dealer Hazzin
step
    .goto 1953,58.32,31.66
    >>Kill |cRXP_ENEMY_Wind Trader Marid|r
    .complete 10273,1 --Wind Trader Marid slain (1)
    .mob Wind Trader Marid
step
    .goto 1953,62.41,40.88
    >>Kill |cRXP_ENEMY_Dimensius the All-Devouring|r
    .complete 10439,1 --Dimensius the All-Devouring slain (1)
    .mob Dimensius the All-Devouring
step
    .goto 1953,71.22,35.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyri|r
    .turnin 10273 >>Turn in Troublesome Distractions
    .accept 10274 >>Accept Securing the Celestial Ridge
    .target Tyri
step
    .goto 1953,72.33,44.98
    >>Kill |cRXP_ENEMY_Veraku|r
    .complete 10274,1 --Slay Veraku (1)
    .mob Veraku
step
    .goto 1953,71.22,35.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyri|r
    .turnin 10274 >>Turn in Securing the Celestial Ridge
    .target Tyri
step
    .goto 1953,60.11,31.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Dabiri|r
    .turnin 10439 >>Turn in Dimensius the All-Devouring
    .target Professor Dabiri
step
    .goto 1953,44.70,34.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Nauthis|r
    .turnin 10855 >>Turn in Fel Reavers, No Thanks!
    .accept 10856 >>Accept The Best Defense
    .target Nether-Stalker Nauthis
step
    .goto 1953,43.54,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghabar|r
    .turnin 10424 >>Turn in Diagnosis: Critical
    .accept 10430 >>Accept Testing the Prototype
    .target Ghabar
step
    .goto 1953,34.62,37.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Trader Tuluman|r
    .accept 10317 >>Accept Dealing with the Foreman
    .target Wind Trader Tuluman
step
    .goto 1953,34.50,37.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Oazul|r
    .accept 10315 >>Accept Neutralizing the Nethermancers
    .target Nether-Stalker Oazul
step
    #completewith Along198
    >>As you go: Kill |cRXP_ENEMY_Sunfury Nethermancers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10315,1 --Sunfury Nethermancer slain (15)
    .mob Sunfury Nethermancer
step
    .goto 1953,26.37,42.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Sundown|r
    .turnin 10317 >>Turn in Dealing with the Foreman
    .accept 10318 >>Accept Dealing with the Overmaster
    .target Foreman Sundown
step
    .goto 1953,26.82,35.84
    >>Kill |cRXP_ENEMY_Overmaster Grindgarr|r
    .complete 10318,1 --Overmaster Grindgarr slain (1)
    .mob Overmaster Grindgarr
step
    #label Along198
    .goto 1953,28.92,41.25
    >>Second triangulation point discovered
    .complete 10275,1 --Second triangulation point discovered
step
    #loop
    .goto 1953,30.45,40.95,0
    .goto 1953,30.45,40.95,40,0
    .goto 1953,28.40,39.05,40,0
    .goto 1953,26.12,39.14,40,0
    >>Kill |cRXP_ENEMY_Sunfury Nethermancers|r
    .complete 10315,1 --Sunfury Nethermancer slain (15)
    .mob Sunfury Nethermancer
step
    .goto 1953,34.50,37.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Oazul|r
    .turnin 10315 >>Turn in Neutralizing the Nethermancers
    .target Nether-Stalker Oazul
step
    .goto 1953,34.62,37.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Trader Tuluman|r
    .turnin 10275 >>Turn in Triangulation Point Two
    .turnin 10318 >>Turn in Dealing with the Overmaster
    .accept 10276 >>Accept Full Triangle
    .target Wind Trader Tuluman
step
    #loop
    .goto 1953,40.71,24.48,0
    .goto 1953,40.71,24.48,40,0
    .goto 1953,41.27,17.97,40,0
    .goto 1953,38.92,18.06,40,0
    >>Kill |cRXP_ENEMY_Wrathbringers|r
    .complete 10856,1 --Wrathbringer slain (12)
    .mob Wrathbringer
step
    #completewith Along203
    >>As you go: Pick up |cRXP_PICK_Dome Generator Segment|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10435,1 --Dome Generator Segment (10)
step
    #label Along203
    .goto 1953,44.69,14.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tashar|r
    .turnin 10430 >>Turn in Testing the Prototype
    .accept 10436 >>Accept All Clear!
    .target Tashar
step
    #loop
    .goto 1953,45.18,13.18,0
    .goto 1953,45.18,13.18,40,0
    .goto 1953,46.13,10.08,40,0
    >>Kill |cRXP_ENEMY_Scythetooth Raptors|r
    >>Pick up |cRXP_PICK_Dome Generator Segment|r from the ground
    .complete 10436,1 --Scythetooth Raptor slain (12)
    .complete 10435,1 --Dome Generator Segment (10)
    .mob Scythetooth Raptor
step
    .goto 1953,44.69,14.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tashar|r
    .turnin 10436 >>Turn in All Clear!
    .accept 10440 >>Accept Success!
    .target Tashar
step
    #loop
    .goto 1953,46.54,16.73,0
    .goto 1953,46.54,16.73,40,0
    .goto 1953,47.53,21.12,40,0
    >>Kill |cRXP_ENEMY_Farahlon Giants|r, |cRXP_ENEMY_Farahlon Breakers|r and |cRXP_ENEMY_Cragskaars|r. Loot them for |cRXP_LOOT_Raw Farahlite|r
    .complete 10290,1 --Raw Farahlite (1)
    .mob Farahlon Giant
    .mob Farahlon Breaker
    .mob Cragskaar
step
    #completewith Along210
    >>As you go: Kill |cRXP_ENEMY_Hound of Culuthas|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10336,1 --Hound of Culuthas slain (10)
    .mob Hound of Culuthas
step
    .goto 1953,51.66,20.47
    >>Place the three Surveying Markers and then return to Zephyrion at the Stormspire in the Netherstorm.
    .complete 10335,1 --Surveying Marker One
    .target Surveying Marker One
step
    #completewith Along210
    >>As you go: Kill |cRXP_ENEMY_Eye of Culuthas|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10336,2 --Eye of Culuthas slain (10)
    .mob Eye of Culuthas
step
    .goto 1953,53.51,21.53
    >>Kill |cRXP_ENEMY_Culuthas|r and loot |cRXP_LOOT_Ata'mal Crystal|r
    .complete 10276,1 --Ata'mal Crystal (1)
    .mob Culuthas
step
    .goto 1953,54.55,22.82
    >>Place the three Surveying Markers and then return to Zephyrion at the Stormspire in the Netherstorm.
    .complete 10335,2 --Surveying Marker Two
    .target Surveying Marker Two
step
    #label Along210
    .goto 1953,55.81,19.91
    >>Place the three Surveying Markers and then return to Zephyrion at the Stormspire in the Netherstorm.
    .complete 10335,3 --Surveying Marker Three
    .target Surveying Marker Three
step
    #loop
    .goto 1953,55.51,20.09,0
    .goto 1953,55.51,20.09,40,0
    .goto 1953,56.03,24.77,40,0
    .goto 1953,50.25,23.92,40,0
    >>Kill |cRXP_ENEMY_Hound of Culuthas|r
    >>Kill |cRXP_ENEMY_Eye of Culuthas|r
    .complete 10336,1 --Hound of Culuthas slain (10)
    .complete 10336,2 --Eye of Culuthas slain (10)
    .mob Hound of Culuthas
    .mob Eye of Culuthas
step
    .goto 1953,43.54,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghabar|r
    .turnin 10440 >>Turn in Success!
    .target Ghabar
step
    .goto 1953,44.08,36.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zuben Elgenubi|r
    .turnin 10290 >>Turn in In Search of Farahlite
    .accept 10293 >>Accept Hitting the Motherlode
    .target Zuben Elgenubi
step
    .goto 1953,44.70,34.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Nauthis|r
    .turnin 10336 >>Turn in The Minions of Culuthas
    .turnin 10856 >>Turn in The Best Defense
    .accept 10857 >>Accept Teleport This!
    .target Nether-Stalker Nauthis
step
    .goto 1953,44.72,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zephyrion|r
    .turnin 10335 >>Turn in Surveying the Ruins
    .target Zephyrion
step
    .goto 1953,44.74,36.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Audi the Needle|r
    .turnin 10435 >>Turn in Retrieving the Goods
    .target Audi the Needle
step
    .goto 1953,45.87,35.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Nexus-Prince Haramad|r
    .turnin 10276 >>Turn in Full Triangle
    .accept 10280 >>Accept Special Delivery to Shattrath City
    .target Image of Nexus-Prince Haramad
step
    .goto 1953,32.68,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rocket-Chief Fuselage|r
    .turnin 10249 >>Turn in Back to the Chief!
    .target Rocket-Chief Fuselage
step
    .goto 1953,39.20,20.43
    >>Nether-Stalker Nauthis wants you to use the Mental Interference Rod on the Mo'arg at Forge Base: Gehenna and use their Detonate Teleporter ability on the three teleporters in the forge camp.
    .complete 10857,1 --Western Gehenna Teleporter Credit
    .target Western Gehenna Teleporter Credit
step
    .goto 1953,41.08,19.42
    >>Nether-Stalker Nauthis wants you to use the Mental Interference Rod on the Mo'arg at Forge Base: Gehenna and use their Detonate Teleporter ability on the three teleporters in the forge camp.
    .complete 10857,2 --Central Gehenna Teleporter Credit
    .target Central Gehenna Teleporter Credit
step
    .goto 1953,42.28,21.08
    >>Nether-Stalker Nauthis wants you to use the Mental Interference Rod on the Mo'arg at Forge Base: Gehenna and use their Detonate Teleporter ability on the three teleporters in the forge camp.
    .complete 10857,3 --Eastern Gehenna Teleporter Credit
    .target Eastern Gehenna Teleporter Credit
step
    .goto 1953,47.58,21.15
    >>Kill |cRXP_ENEMY_Cragskaar|r and loot |cRXP_LOOT_Farahlite Core|r
    .complete 10293,1 --Farahlite Core (1)
    .mob Cragskaar
step
    .goto 1953,44.08,36.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zuben Elgenubi|r
    .turnin 10293 >>Turn in Hitting the Motherlode
    .target Zuben Elgenubi
step
    .goto 1953,44.70,34.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nether-Stalker Nauthis|r
    .turnin 10857 >>Turn in Teleport This!
    .target Nether-Stalker Nauthis
step
    +|cRXP_WARN_That is all of Netherstorm for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shattrath City|r: Special Delivery to Shattrath City
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Capturing the Keystone
step
    +|cRXP_WARN_Suggested next zones at level 69|r: |cRXP_FRIENDLY_Shadowmoon Valley|r (about 0.6 levels of quests, starting around Blood Guard Gulmok). Completing this step loads the guide for Shadowmoon Valley --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Netherstorm is planned from level 70.|r Load its guide for level 70 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 68 - 71 Netherstorm
#subweight -68
#name 70-71 Netherstorm
--RouteBuilder:next
#next Zone Routes (Horde)\69-70 Shadowmoon Valley

step
    .goto 1953,56.82,38.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Commander Ameer|r
    .accept 10408 >>Accept Nexus-King Salhadaar
    .target Image of Commander Ameer
    .isQuestTurnedIn 10406 --any of: Delivering the Message
step
    .goto 1953,53.62,42.36
    >>Kill |cRXP_ENEMY_Nexus-King Salhadaar|r
    .complete 10408,1 --Nexus-King Salhadaar slain (1)
    .mob Nexus-King Salhadaar
    .isOnQuest 10408
step
    .goto 1953,56.82,38.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Commander Ameer|r
    .turnin 10408 >>Turn in Nexus-King Salhadaar
    .target Image of Commander Ameer
    .isOnQuest 10408
step
    .goto 1953,58.34,86.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Vargoth|r
    .turnin 10257 >>Turn in Capturing the Keystone
    .target Archmage Vargoth
    .isQuestComplete 10257
step
    +|cRXP_WARN_End of the Netherstorm route.|r
step
    +|cRXP_WARN_Suggested next zones at level 70|r: |cRXP_FRIENDLY_Shadowmoon Valley|r (about 0.6 levels of quests, starting around Blood Guard Gulmok). Completing this step loads the guide for Shadowmoon Valley --RouteBuilder:next
]])
