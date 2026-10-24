-- 55-56 Silithus: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Silithus.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 55-56 Silithus
--RouteBuilder:next
#next Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap;Zone Routes (Alliance)\53-55 Un'Goro Crater: around Garl Stormclaw

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
    .turnin 28859 >>Turn in The Dunes of Silithus
    .target Windcaller Proudhorn
    .isOnQuest 28859
step
    .goto 81,54.89,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .turnin 28856 >>Turn in The Sands of Silithus
    .target Windcaller Proudhorn
    .isOnQuest 28856
step
    .goto 81,54.89,36.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windcaller Proudhorn|r
    .accept 8280 >>Accept Securing the Supply Lines
    .target Windcaller Proudhorn
step
    .goto 81,55.06,36.01
    >>Click the |cRXP_PICK_Wanted Poster: Deathclasp|r
    .accept 8283 >>Accept Wanted - Deathclasp, Terror of the Sands
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 81,54.48,32.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rifleman Torrig|r
    .accept 9415 >>Accept Report to Marshal Bluewall
    .target Rifleman Torrig
    .xp <55,1
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28543 >>Accept Hero's Call: Felwood!
    .accept 28507 >>Accept Hero's Call: Tanaris!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28528 >>Accept Hero's Call: Silithus!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28525 >>Accept Hero's Call: Un'Goro Crater!
    .accept 28503 >>Accept Hero's Call: Thousand Needles!
    .accept 28544 >>Accept Hero's Call: Winterspring!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
step << Draenei
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .target Nurguni
    .isOnQuest 9604
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .accept 9605 >>Accept Hippogryph Master Stephanos
    .target Nurguni
    .isQuestTurnedIn 9604 --any of: On the Wings of a Hippogryph
    .xp <5,1
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
    .target Stephanos
    .isOnQuest 9605
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .accept 9606 >>Accept Return to Caregiver Chellan
    .target Stephanos
    .isQuestTurnedIn 9605 --any of: Hippogryph Master Stephanos
    .xp <5,1
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 89,43.91,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r
    .accept 26383 >>Accept Breaking Waves of Change
    .target Sentinel Cordressa Briarbow
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 28258 >>Accept Meet with Ander Germaine
    .accept 27225 >>Accept A Summons from Ander Germaine
    .target Arias'ta Bladesinger
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.35,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 28285 >>Accept Meet with High Priestess Laurena
    .target Astarii Starseeker
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 28260 >>Accept Meet with Wulf Hansreim
    .accept 27266 >>Accept Wulf Calls
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 28262 >>Accept Meet with Lord Tony Romano
    .accept 27267 >>Accept Make Contact with SI:7
    .target Erion Shadewhisper
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Priestess Alathea
step
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 28289 >>Accept Moonglade Calls << Druid
    .accept 27273 >>Accept An Invitation from Moonglade << NightElf Druid/Worgen Druid
    .target Mathrengyl Bearwalker
step
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27269 >>Accept The Temple of the Moon << NightElf Priest
    .accept 27274 >>Accept The Chief Surgeon << Gnome Priest
    .target Priestess Alathea
step << NightElf Priest
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 27269 >>Turn in The Temple of the Moon
    .accept 27362 >>Accept Favored of Elune
    .target Tyrande Whisperwind
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Turn in The Howling Oak
    .target Genn Greymane
    .isOnQuest 28517
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .accept 26385 >>Accept Breaking Waves of Change
    .target Genn Greymane
    .isQuestTurnedIn 28517 --any of: The Howling Oak
    .xp <8,1
step
    #completewith next
    .zone 81 >>Leave Darnassus for Silithus
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
    .turnin 28528 >>Turn in Hero's Call: Silithus! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 8280 >>Turn in Securing the Supply Lines
    .accept 8281 >>Accept Stepping Up Security
    .target Windcaller Proudhorn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 81,54.48,32.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rifleman Torrig|r
    .accept 9415 >>Accept Report to Marshal Bluewall
    .target Rifleman Torrig
    .xp <55,1
step
    #completewith Along31
    >>As you go: Kill |cRXP_ENEMY_Stonelash Pincers|r. Loot them for |cRXP_LOOT_Stonelash Pincer Stinger|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8278,2 --Stonelash Pincer Stinger (3)
    .mob Stonelash Pincer
step
    #label Along31
    #loop
    .goto 81,58.15,51.85,0
    .goto 81,58.15,51.85,40,0
    .goto 81,60.36,54.55,40,0
    >>Kill |cRXP_ENEMY_Dredge Crushers|r
    .complete 8281,1 --Dredge Crusher slain (20)
    .mob Dredge Crusher
step
    .xp 55 >>Grind to level 55 (Scouring the Desert needs it)
step
    #completewith Along34
    >>As you go: Kill |cRXP_ENEMY_Stonelash Flayers|r. Loot them for |cRXP_LOOT_Stonelash Flayer Stinger|r. |cRXP_WARN_Anything left is finished later|r
    .complete 8278,1 --Stonelash Flayer Stinger (3)
    .mob Stonelash Flayer
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
    #label Along34
    .goto 81,54.55,62.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Kirika|r
    .turnin 9422 >>Turn in Scouring the Desert
    .target General Kirika
step
    #loop
    .goto 81,52.67,63.24,0
    .goto 81,52.67,63.24,40,0
    .goto 81,52.57,61.93,40,0
    .goto 81,50.93,69.33,40,0
    >>Kill |cRXP_ENEMY_Stonelash Flayers|r. Loot them for |cRXP_LOOT_Stonelash Flayer Stinger|r
    >>Kill |cRXP_ENEMY_Rock Stalkers|r. Loot them for |cRXP_LOOT_Rock Stalker Fang|r
    .complete 8278,1 --Stonelash Flayer Stinger (3)
    .complete 8278,3 --Rock Stalker Fang (3)
    .mob Stonelash Flayer
    .mob Rock Stalker
step
    #loop
    .goto 81,51.76,59.13,0
    .goto 81,51.76,59.13,40,0
    .goto 81,53.35,57.05,40,0
    .goto 81,55.84,55.73,40,0
    >>Kill |cRXP_ENEMY_Stonelash Pincers|r. Loot them for |cRXP_LOOT_Stonelash Pincer Stinger|r
    .complete 8278,2 --Stonelash Pincer Stinger (3)
    .mob Stonelash Pincer
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 55 >>Grind to level 55 (Report to Marshal Bluewall needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 81,54.48,32.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rifleman Torrig|r
    .accept 9415 >>Accept Report to Marshal Bluewall
    .target Rifleman Torrig
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 81,39.56,46.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Bluewall|r
    .turnin 9415 >>Turn in Report to Marshal Bluewall
    .accept 9419 >>Accept Scouring the Desert
    .target Marshal Bluewall
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 81,39.26,46.77
    >>Find and deliver Silithyst to the Silithyst Extractor, then speak with Marshal Bluewall at the Alliance encampment near Hive'Zora.
    .complete 9419,1 --Silithus Dust Turnin Quest Doodad
    .target Silithus Dust Turnin Quest Doodad
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 81,39.56,46.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Bluewall|r
    .turnin 9419 >>Turn in Scouring the Desert
    .target Marshal Bluewall
step
    .goto 81,49.23,81.59
    >>Pick up |cRXP_PICK_Noggle's Satchel|r from the ground
    >>Kill |cRXP_ENEMY_Deathclasp|r and loot |cRXP_LOOT_Deathclasp's Pincer|r
    .complete 8282,1 --Noggle's Satchel (1)
    .complete 8283,1 --Deathclasp's Pincer (1)
    .mob Deathclasp
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 28263 >>Accept Meet with Maginor Dumas
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Edirah
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 28268 >>Accept Meet with Lord Grayson Shadowbreaker
    .accept 27265 >>Accept Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 28287 >>Accept Meet with Farseer Umbrua
    .accept 27270 >>Accept An Audience with the Farseer
    .target Hobahken
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >>Turn in Coming of Age
    .target Torallius the Pack Handler
    .isOnQuest 9623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .accept 9625 >>Accept Elekks Are Serious Business
    .target Torallius the Pack Handler
    .isQuestTurnedIn 9623 --any of: Coming of Age
    .xp <10,1
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9762 >>Accept The Unwritten Prophecy
    .target Prophet Velen
    .isQuestTurnedIn 9759 --any of: Ending Their World
    .xp <18,1
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9762 >>Turn in The Unwritten Prophecy
    .target Prophet Velen
    .isOnQuest 9762
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9698 >>Turn in Audience with the Prophet
    .target Prophet Velen
    .isOnQuest 9698
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9699 >>Accept Truth or Fiction
    .target Prophet Velen
    .isQuestTurnedIn 9698 --any of: Audience with the Prophet
    .xp <14,1
step
    #completewith next
    .zone 81 >>Leave The Exodar for Silithus
    .zoneskip 81
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
    .accept 8323 >>Accept True Believers
    .accept 8287 >>Accept A Terrible Purpose
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
    .turnin 8308 >>Turn in Brann Bronzebeard's Lost Letter
    .target Rutgar Glyphshaper
    .isOnQuest 8308
step
    .goto 81,46.42,79.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rutgar Glyphshaper|r
    .turnin 8309 >>Turn in Glyph Chasing
    .accept 8314 >>Accept Unraveling the Mystery
    .target Rutgar Glyphshaper
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
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .turnin 6341 >>Turn in To Darnassus
    .target Sister Aquinne
    .isOnQuest 6341
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .accept 6342 >>Accept An Unexpected Gift
    .target Sister Aquinne
    .isQuestTurnedIn 6341 --any of: To Darnassus
    .xp <5,1
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .turnin 6342 >>Turn in An Unexpected Gift
    .target Leora
    .isOnQuest 6342
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .accept 6343 >>Accept Return to Nyoma
    .target Leora
    .isQuestTurnedIn 6342 --any of: An Unexpected Gift
    .xp <5,1
step
    +|cRXP_WARN_End of the Silithus route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Blasted Lands|r: Call of the Warmatron, Nethergarde Needs You!
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Felwood|r: Hero's Call: Felwood! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Hero's Call: Feralas!, Hero's Call: Thousand Needles! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade Calls << Druid
    >>|cRXP_FRIENDLY_Southern Barrens|r: Hero's Call: Southern Barrens! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine, Meet with Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker, Meet with Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls, Meet with Wulf Hansreim << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7, Meet with Lord Tony Romano << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer, Meet with Farseer Umbrua << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum, Meet with Maginor Dumas << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with High Priestess Laurena << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Tanaris|r: Hero's Call: Tanaris! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Hero's Call: Un'Goro Crater! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Winterspring|r: Hero's Call: Winterspring! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 56|r: |cRXP_FRIENDLY_Winterspring|r (about 1.2 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.8 levels of quests, starting around Trade Baron Silversnap), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Garl Stormclaw). Completing this step loads the guide for Winterspring --RouteBuilder:next
]])
