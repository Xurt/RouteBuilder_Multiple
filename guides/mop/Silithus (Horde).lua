-- 55-56 Silithus: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Silithus.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 55-56 Silithus
--RouteBuilder:next
#next Zone Routes (Horde)\52-54 Winterspring: around Rinno Curtainfire;Zone Routes (Horde)\52-55 Swamp of Sorrows: around Trade Baron Silversnap;Zone Routes (Horde)\53-55 Un'Goro Crater: around Mor'vek

step
    .goto 81,53.27,33.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okril'lon Mage|r
    .accept 28865 >>Accept Call of the Warmatron
    .target Okril'lon Mage
step
    .goto 81,53.57,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nethergarde Mage|r
    .accept 28867 >>Accept Nethergarde Needs You!
    .target Nethergarde Mage
step
    .goto 81,53.15,35.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
    .accept 8318 >>Accept Secret Communication
    .target Bor Wildmane
step
    .goto 81,53.19,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
    .accept 8320 >>Accept Twilight Geolords
    .target Huum Wildmane
step
    .goto 81,54.89,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .accept 8280 >>Accept Securing the Supply Lines
    .target Windcaller Proudhorn
step
    .goto 81,54.89,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 28856 >>Turn in The Sands of Silithus
    .target Windcaller Proudhorn
    .isOnQuest 28856
step
    .goto 81,54.89,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 28859 >>Turn in The Dunes of Silithus
    .target Windcaller Proudhorn
    .isOnQuest 28859
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 81,53.00,34.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Bloodfist|r
    .accept 9416 >>Accept Report to General Kirika
    .target Scout Bloodfist
    .xp <55,1
step
    .goto 81,55.06,36.01
    >>Click the |cRXP_PICK_Wanted Poster: Deathclasp|r
    .accept 8283 >>Accept Wanted - Deathclasp, Terror of the Sands
step
    .goto 81,55.29,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .accept 8277 >>Accept Deadly Desert Venom
    .target Beetix Ficklespragg
step
    .goto 81,55.59,37.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kania|r
    .target Kania
    .home >>Set your Hearthstone to Kania's inn
step
    #loop
    .goto 81,55.05,29.02,0
    .goto 81,55.05,29.02,40,0
    .goto 81,58.31,29.63,40,0
    .goto 81,60.92,30.84,40,0
    >>Kill |cRXP_ENEMY_Sand Skitterers|r. Loot them for |cRXP_LOOT_Sand Skitterer Fang|r
    .complete 8277,2 --Sand Skitterer Fang (8)
    .mob Sand Skitterer
step
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Stonelash Scorpids|r. Loot them for |cRXP_LOOT_Stonelash Scorpid Stinger|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8277,1 --Stonelash Scorpid Stinger (8)
    .mob Stonelash Scorpid
step
    #label Along11
    #loop
    .goto 81,59.90,22.49,0
    .goto 81,59.90,22.49,40,0
    .goto 81,61.70,22.72,40,0
    >>Kill |cRXP_ENEMY_Dredge Strikers|r
    .complete 8280,1 --Dredge Striker slain (15)
    .mob Dredge Striker
step
    #loop
    .goto 81,57.77,20.86,0
    .goto 81,57.77,20.86,40,0
    .goto 81,61.18,18.26,40,0
    .goto 81,63.87,15.54,40,0
    .goto 81,64.65,19.54,40,0
    >>Kill |cRXP_ENEMY_Stonelash Scorpids|r. Loot them for |cRXP_LOOT_Stonelash Scorpid Stinger|r
    .complete 8277,1 --Stonelash Scorpid Stinger (8)
    .mob Stonelash Scorpid
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 88,22.76,14.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
    .accept 27277 >>Accept An Audience with Ureda
    .accept 28300 >>Accept Meet with Ureda
    .target Archmage Shymm
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 88,25.24,13.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delano Morisett|r
    .accept 27282 >>Accept Zevrost's Behest
    .accept 28299 >>Accept Meet with Zevrost
    .target Delano Morisett
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 88,21.99,18.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kador Cloudsong|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .accept 28301 >>Accept Meet with Kardris Dreamseeker
    .target Kador Cloudsong
step
    .goto 88,24.56,22.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai Cross|r
    .accept 28304 >>Accept Meet with Dark Cleric Cecille << Undead Priest
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 28308 >>Accept Meet with Seer Liwatha << Tauren Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 28309 >>Accept Meet with Shadow-Walker Zuru << Troll Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 28307 >>Accept Meet with Tyelis << BloodElf Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28323 >>Accept Meet with Brother Silverhallow << Goblin Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Malakai Cross
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,34.40,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Truthseeker|r
    .accept 2965 >>Accept Portents of Uldum
    .target Sage Truthseeker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28504 >>Accept Warchief's Command: Thousand Needles!
    .accept 28527 >>Accept Warchief's Command: Silithus!
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28526 >>Accept Warchief's Command: Un'Goro Crater!
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28542 >>Accept Warchief's Command: Felwood!
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
    .accept 28509 >>Accept Warchief's Command: Tanaris!
    .accept 28545 >>Accept Warchief's Command: Winterspring!
    .accept 28548 >>Accept Warchief's Command: Desolace!
    .accept 28510 >>Accept Warchief's Command: Feralas!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .turnin 27258 >>Turn in The Black Shield
    .target Mosarn
    .isOnQuest 27258
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .accept 27292 >>Accept Return to Krog
    .target Mosarn
    .isQuestTurnedIn 27258 --any of: The Black Shield
    .xp <34,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .accept 1205 >>Accept Deadmire
    .target Melor Stonehoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
    .isQuestComplete 1205
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 88,56.99,89.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sark Ragetotem|r
    .accept 27281 >>Accept Grezz Ragefist
    .accept 28290 >>Accept Meet with Grezz Ragefist
    .target Sark Ragetotem
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 88,57.30,89.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .accept 27278 >>Accept Grimshot's Call
    .accept 28297 >>Accept Meet with Ormak Grimshot
    .target Holt Thunderhorn
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 28303 >>Accept Meet with Master Pyreanor << BloodElf Paladin
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 28302 >>Accept Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
step
    #completewith next
    .zone 81 >>Leave Thunder Bluff for Silithus
    .zoneskip 81
step
    #completewith next
    .hs >>Hearth to Kania's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 81,55.29,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .turnin 8277 >>Turn in Deadly Desert Venom
    .accept 8278 >>Accept Noggle's Last Hope
    .target Beetix Ficklespragg
step
    .goto 81,54.89,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 8280 >>Turn in Securing the Supply Lines
    .turnin 28527 >>Turn in Warchief's Command: Silithus! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 8281 >>Accept Stepping Up Security
    .target Windcaller Proudhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 81,53.00,34.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Bloodfist|r
    .accept 9416 >>Accept Report to General Kirika
    .target Scout Bloodfist
    .xp <55,1
step
    #completewith Along29
    >>As you go: Kill |cRXP_ENEMY_Stonelash Pincers|r. Loot them for |cRXP_LOOT_Stonelash Pincer Stinger|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8278,2 --Stonelash Pincer Stinger (3)
    .mob Stonelash Pincer
step
    #label Along29
    #loop
    .goto 81,58.15,51.85,0
    .goto 81,58.15,51.85,40,0
    .goto 81,60.36,54.55,40,0
    >>Kill |cRXP_ENEMY_Dredge Crushers|r
    .complete 8281,1 --Dredge Crusher slain (20)
    .mob Dredge Crusher
step
    #loop
    .goto 81,55.84,55.73,0
    .goto 81,55.84,55.73,40,0
    .goto 81,53.35,57.05,40,0
    .goto 81,51.76,59.13,40,0
    >>Kill |cRXP_ENEMY_Stonelash Pincers|r. Loot them for |cRXP_LOOT_Stonelash Pincer Stinger|r
    .complete 8278,2 --Stonelash Pincer Stinger (3)
    .mob Stonelash Pincer
step
    #loop
    .goto 81,52.57,61.93,0
    .goto 81,52.57,61.93,40,0
    .goto 81,50.95,63.25,40,0
    >>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for |cRXP_LOOT_Rock Stalker Fang|r
    .complete 8278,3 --Rock Stalker Fang (3)
    .mob Rock Stalker
step
    #loop
    .goto 81,52.67,63.24,0
    .goto 81,52.67,63.24,40,0
    .goto 81,50.93,69.33,40,0
    .goto 81,48.01,70.56,40,0
    .goto 81,45.58,73.42,40,0
    .goto 81,41.76,76.18,40,0
    .goto 81,40.57,76.96,40,0
    >>Kill |cRXP_ENEMY_Stonelash Flayers|r. Loot them for |cRXP_LOOT_Stonelash Flayer Stinger|r
    .complete 8278,1 --Stonelash Flayer Stinger (3)
    .mob Stonelash Flayer
step
    .goto 81,55.29,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beetix Ficklespragg|r
    .turnin 8278 >>Turn in Noggle's Last Hope
    .target Beetix Ficklespragg
step
    .goto 81,55.30,36.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
    .accept 8282 >>Accept Noggle's Lost Satchel
    .target Noggle Ficklespragg
step
    .goto 81,54.89,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 8281 >>Turn in Stepping Up Security
    .target Windcaller Proudhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 55 >>Grind to level 55 (Report to General Kirika needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 81,53.00,34.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Bloodfist|r
    .accept 9416 >>Accept Report to General Kirika
    .target Scout Bloodfist
step
    #loop
    .goto 81,45.68,41.65,0
    .goto 81,45.68,41.65,40,0
    .goto 81,44.16,40.80,40,0
    >>Kill |cRXP_ENEMY_Twilight Keeper Havunths|r, |cRXP_ENEMY_Twilight Avengers|r, |cRXP_ENEMY_Twilight Geolords|r and |cRXP_ENEMY_Twilight Stonecallers|r. Loot them for |cRXP_LOOT_Encrypted Twilight Text|r
    >>Kill |cRXP_ENEMY_Twilight Geolords|r
    .complete 8318,1 --Encrypted Twilight Text (10)
    .complete 8320,1 --Twilight Geolord slain (10)
    .mob Twilight Keeper Havunth
    .mob Twilight Avenger
    .mob Twilight Geolord
    .mob Twilight Stonecaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 81,54.55,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Kirika|r
    .turnin 9416 >>Turn in Report to General Kirika
    .target General Kirika
step
    .xp 55 >>Grind to level 55 (Scouring the Desert needs it)
step
    .goto 81,54.55,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Kirika|r
    .accept 9422 >>Accept Scouring the Desert
    .target General Kirika
step
    .goto 81,54.70,62.66
    >>Find and deliver Silithyst to the Silithyst Extractor then speak with General Kirika at the Horde encampment near Hive'Regal.
    .complete 9422,1 --Silithus Dust Turnin Quest Doodad Horde
    .target Silithus Dust Turnin Quest Doodad Horde
step
    .goto 81,54.55,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Kirika|r
    .turnin 9422 >>Turn in Scouring the Desert
    .target General Kirika
step
    .goto 81,49.23,81.59
    >>Kill |cRXP_ENEMY_Deathclasp|r and loot |cRXP_LOOT_Deathclasp's Pincer|r
    >>Pick up |cRXP_PICK_Noggle's Satchel|r from the ground
    .complete 8283,1 --Deathclasp's Pincer (1)
    .complete 8282,1 --Noggle's Satchel (1)
    .mob Deathclasp
step
    #completewith next
    .hs >>Hearth to Kania's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 81,55.30,36.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Noggle Ficklespragg|r
    .turnin 8282 >>Turn in Noggle's Lost Satchel
    .target Noggle Ficklespragg
step
    .goto 81,53.19,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
    .turnin 8320 >>Turn in Twilight Geolords
    .accept 8321 >>Accept Vyral the Vile
    .target Huum Wildmane
step
    .goto 81,53.15,35.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor Wildmane|r
    .turnin 8318 >>Turn in Secret Communication
    .target Bor Wildmane
step
    .goto 81,54.55,32.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish Kozus|r
    .turnin 8283 >>Turn in Wanted - Deathclasp, Terror of the Sands
    .target Vish Kozus
step
    .goto 81,73.52,16.31
    >>Kill |cRXP_ENEMY_Vyral the Vile|r and loot |cRXP_LOOT_Vyral's Signet Ring|r
    .complete 8321,1 --Vyral's Signet Ring (1)
    .mob Vyral the Vile
step
    .goto 81,53.19,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huum Wildmane|r
    .turnin 8321 >>Turn in Vyral the Vile
    .target Huum Wildmane
step
    .goto 81,53.62,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .accept 8284 >>Accept The Twilight Mystery
    .target Geologist Larksbane
step
    .goto 81,53.21,32.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .accept 8304 >>Accept Dearest Natalia
    .target Commander Mar'alith
step
    #loop
    .goto 81,31.68,11.48,0
    .goto 81,31.68,11.48,40,0
    .goto 81,29.55,11.25,40,0
    .goto 81,29.68,16.78,40,0
    >>Pick up |cRXP_PICK_Twilight Tablet Fragment|r from the ground
    .complete 8284,1 --Twilight Tablet Fragment (8)
step
    .goto 81,53.62,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8284 >>Turn in The Twilight Mystery
    .accept 8285 >>Accept The Deserter
    .target Geologist Larksbane
step
    .goto 81,68.66,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8285 >>Turn in The Deserter
    .accept 8279 >>Accept The Twilight Lexicon
    .target Hermit Ortell
step
    .goto 81,45.78,38.99
    >>Kill |cRXP_ENEMY_Twilight Keeper Havunth|r and loot |cRXP_LOOT_Twilight Lexicon - Chapter 3|r
    .complete 8279,3 --Twilight Lexicon - Chapter 3 (1)
    .mob Twilight Keeper Havunth
step
    .goto 81,33.62,34.56
    >>Kill |cRXP_ENEMY_Twilight Keeper Mayna|r and loot |cRXP_LOOT_Twilight Lexicon - Chapter 1|r
    .complete 8279,1 --Twilight Lexicon - Chapter 1 (1)
    .mob Twilight Keeper Mayna
step
    .goto 81,24.81,77.59
    >>Kill |cRXP_ENEMY_Twilight Keeper Exeter|r and loot |cRXP_LOOT_Twilight Lexicon - Chapter 2|r
    .complete 8279,2 --Twilight Lexicon - Chapter 2 (1)
    .mob Twilight Keeper Exeter
step
    .goto 81,46.02,79.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal Stonebridge|r
    .complete 8304,1 --Frankal Stonebridge
    .target Frankal Stonebridge
step
    .goto 81,46.42,79.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .complete 8304,2 --Rutgar Glyphshaper
    .target Rutgar Glyphshaper
step
    .goto 81,68.66,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8279 >>Turn in The Twilight Lexicon
    .accept 8287 >>Accept A Terrible Purpose
    .accept 8323 >>Accept True Believers
    .target Hermit Ortell
step
    .goto 81,53.21,32.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8304 >>Turn in Dearest Natalia
    .turnin 8287 >>Turn in A Terrible Purpose
    .accept 8306 >>Accept Into The Maw of Madness
    .target Commander Mar'alith
step
    #loop
    .goto 81,45.68,41.65,0
    .goto 81,45.68,41.65,40,0
    .goto 81,44.16,40.80,40,0
    >>Kill |cRXP_ENEMY_Twilight Keeper Havunths|r, |cRXP_ENEMY_Twilight Avengers|r, |cRXP_ENEMY_Twilight Geolords|r and |cRXP_ENEMY_Twilight Stonecallers|r. Loot them for |cRXP_LOOT_Encrypted Twilight Text|r
    .complete 8323,1 --Encrypted Twilight Text (10)
    .mob Twilight Keeper Havunth
    .mob Twilight Avenger
    .mob Twilight Geolord
    .mob Twilight Stonecaller
step
    .goto 81,46.02,79.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal Stonebridge|r
    .accept 8310 >>Accept Breaking the Code
    .target Frankal Stonebridge
step
    .goto 81,46.42,79.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .accept 8309 >>Accept Glyph Chasing
    .target Rutgar Glyphshaper
step
    #completewith Drop8308x1
    >>|cRXP_LOOT_Brann Bronzebeard's Lost Letter|r can drop from |cRXP_ENEMY_Hive'Ashi Stinger|r, |cRXP_ENEMY_Hive'Ashi Worker|r, |cRXP_ENEMY_Hive'Ashi Defender|r. Use it to start the quest if you get one
    .collect 20461,1,8308 --Brann Bronzebeard's Lost Letter (1)
    .accept 8308 >>Accept Brann Bronzebeard's Lost Letter
    .use 20461
step
    #label Drop8308x1
    #loop
    .goto 81,55.36,83.40,0
    .goto 81,55.36,83.40,40,0
    .goto 81,56.05,89.74,40,0
    >>Kill |cRXP_ENEMY_Hive'Regal Ambushers|r, |cRXP_ENEMY_Hive'Regal Burrowers|r, |cRXP_ENEMY_Hive'Regal Spitfires|r and |cRXP_ENEMY_Hive'Regal Slavemakers|r. Loot them for |cRXP_LOOT_Hive'Regal Silithid Brain|r
    >>Open the |cRXP_PICK_Hive'Regal Glyphed Crystal|r. Loot it for |cRXP_LOOT_Hive'Regal Rubbing|r
    >>Kill |cRXP_ENEMY_Mistress Natalia Mar'alith|r
    .complete 8310,1 --Hive'Regal Silithid Brain (1)
    .complete 8309,1 --Hive'Regal Rubbing (1)
    .complete 8306,1 --Mistress Natalia Mar'alith slain (1)
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Slavemaker
    .mob Mistress Natalia Mar'alith
step
    .goto 81,46.02,79.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frankal Stonebridge|r
    .turnin 8310 >>Turn in Breaking the Code
    .target Frankal Stonebridge
step
    .goto 81,46.42,79.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8309 >>Turn in Glyph Chasing
    .accept 8314 >>Accept Unraveling the Mystery
    .target Rutgar Glyphshaper
step
    .goto 81,46.42,79.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8308 >>Turn in Brann Bronzebeard's Lost Letter
    .target Rutgar Glyphshaper
    .isOnQuest 8308
step
    #completewith next
    .hs >>Hearth to Kania's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 81,53.21,32.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Mar'alith|r
    .turnin 8306 >>Turn in Into The Maw of Madness
    .target Commander Mar'alith
step
    .goto 81,53.62,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geologist Larksbane|r
    .turnin 8314 >>Turn in Unraveling the Mystery
    .target Geologist Larksbane
step
    .goto 81,68.66,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit Ortell|r
    .turnin 8323 >>Turn in True Believers
    .target Hermit Ortell
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 28289 >>Accept Moonglade Calls << Druid
    .accept 27283 >>Accept A Journey to Moonglade << Tauren Druid/Troll Druid
    .target Sheal Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,75.65,31.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 2965 >>Turn in Portents of Uldum
    .target Nara Wildmane
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .target Ahanu
    .isOnQuest 6362
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
    .isQuestTurnedIn 6362 --any of: Ride to Thunder Bluff
    .xp <5,1
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .target Tal
    .isOnQuest 6363
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .accept 6364 >>Accept Return to Varg
    .target Tal
    .isQuestTurnedIn 6363 --any of: Tal the Wind Rider Master
    .xp <5,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24550 >>Turn in Journey into Thunder Bluff
    .target Baine Bloodhoof
    .isOnQuest 24550
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 24540 >>Accept War Dance
    .target Baine Bloodhoof
    .isQuestTurnedIn 24550 --any of: Journey into Thunder Bluff
    .xp <8,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 26397 >>Accept Walk With The Earth Mother
    .target Baine Bloodhoof
    .isQuestTurnedIn 24540 --any of: War Dance
    .xp <10,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24540 >>Turn in War Dance
    .target Baine Bloodhoof
    .isQuestComplete 24540
step
    +|cRXP_WARN_End of the Silithus route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Blasted Lands|r: Call of the Warmatron, Nethergarde Needs You!
    >>|cRXP_FRIENDLY_Desolace|r: Warchief's Command: Desolace! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Warchief's Command: Dustwallow Marsh!, Return to Krog, Warchief's Command: Thousand Needles! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Felwood|r: Warchief's Command: Felwood! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Warchief's Command: Feralas! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: A Journey to Moonglade << Tauren Druid/Troll Druid
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade Calls << Druid
    >>|cRXP_FRIENDLY_Mulgore|r: Return to Varg << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: Walk With The Earth Mother << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda, Meet with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call, Meet with Ormak Grimshot << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls, Meet with Kardris Dreamseeker << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist, Meet with Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest, Meet with Zevrost << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor, Meet with Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun, Meet with Sunwalker Atohmo << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call, Meet with Seer Liwatha << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker, Meet with Shadow-Walker Zuru << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille, Meet with Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar, Meet with Tyelis << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow, Meet with Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Southern Barrens|r: Warchief's Command: Southern Barrens! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Tanaris|r: Warchief's Command: Tanaris! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Warchief's Command: Un'Goro Crater! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Winterspring|r: Warchief's Command: Winterspring! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh and back here|r: Deadmire << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 56|r: |cRXP_FRIENDLY_Winterspring|r (about 1.1 levels of quests, starting around Rinno Curtainfire), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.8 levels of quests, starting around Trade Baron Silversnap), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.8 levels of quests, starting around Mor'vek). Completing this step loads the guide for Winterspring --RouteBuilder:next
]])
