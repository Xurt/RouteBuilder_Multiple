-- 50-55 Winterspring: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 50, 57).
-- Split into 3 guides, listed under "50 - 58 Winterspring" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Winterspring.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 50 - 58 Winterspring
#subweight -50
#name 50-52 Winterspring: around Donova Snowden
#next Zone Routes (Horde)\52-54 Winterspring: around Rinno Curtainfire

step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .xp 50 >>Grind to level 50 (Meet with Ureda needs it)
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 88,22.76,14.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
    .accept 28300 >>Accept Meet with Ureda
    .accept 27277 >>Accept An Audience with Ureda
    .target Archmage Shymm
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .xp 50 >>Grind to level 50 (Meet with Zevrost needs it)
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 88,25.24,13.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delano Morisett|r
    .accept 28299 >>Accept Meet with Zevrost
    .accept 27282 >>Accept Zevrost's Behest
    .target Delano Morisett
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .xp 50 >>Grind to level 50 (Meet with Kardris Dreamseeker needs it)
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 88,21.99,18.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kador Cloudsong|r
    .accept 28301 >>Accept Meet with Kardris Dreamseeker
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Kador Cloudsong
step << Undead Priest
    .xp 50 >>Grind to level 50 (Meet with Dark Cleric Cecille needs it)
step << Tauren Priest
    .xp 50 >>Grind to level 50 (Meet with Seer Liwatha needs it)
step << Troll Priest
    .xp 50 >>Grind to level 50 (Meet with Shadow-Walker Zuru needs it)
step << BloodElf Priest
    .xp 50 >>Grind to level 50 (Meet with Tyelis needs it)
step << Goblin Priest
    .xp 50 >>Grind to level 50 (Meet with Brother Silverhallow needs it)
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
step
    #completewith next
    .zone 83 >>Leave Thunder Bluff for Winterspring
    .zoneskip 83
step
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 28768 >>Turn in Winterspring!
    .target Donova Snowden
    .isOnQuest 28768
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
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
    .accept 28542 >>Accept Warchief's Command: Felwood!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28548 >>Accept Warchief's Command: Desolace!
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28510 >>Accept Warchief's Command: Feralas!
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
    .accept 28504 >>Accept Warchief's Command: Thousand Needles!
    .accept 28509 >>Accept Warchief's Command: Tanaris!
    .accept 28526 >>Accept Warchief's Command: Un'Goro Crater!
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
step << Tauren Paladin/BloodElf Paladin
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 28302 >>Accept Meet with Sunwalker Atohmo
    .target Aponi Brightmane
    .xp <50,1
step << BloodElf Paladin
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 28303 >>Accept Meet with Master Pyreanor
    .target Aponi Brightmane
    .xp <50,1
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .xp 50 >>Grind to level 50 (Meet with Grezz Ragefist needs it)
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 88,56.99,89.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sark Ragetotem|r
    .accept 28290 >>Accept Meet with Grezz Ragefist
    .accept 27281 >>Accept Grezz Ragefist
    .target Sark Ragetotem
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .xp 50 >>Grind to level 50 (Meet with Ormak Grimshot needs it)
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 88,57.30,89.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .accept 28297 >>Accept Meet with Ormak Grimshot
    .accept 27278 >>Accept Grimshot's Call
    .target Holt Thunderhorn
step << BloodElf Paladin
    .xp 50 >>Grind to level 50 (Meet with Master Pyreanor needs it)
step << Tauren Paladin/BloodElf Paladin
    .xp 50 >>Grind to level 50 (Meet with Sunwalker Atohmo needs it)
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
    .zone 83 >>Leave Thunder Bluff for Winterspring
    .zoneskip 83
step
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .accept 28464 >>Accept Falling to Corruption
    .accept 28460 >>Accept Threat of the Winterfall
    .target Donova Snowden
step
    .goto 83,25.21,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .accept 28540 >>Accept Doin' De E'ko Magic
    .target Witch Doctor Mau'ari
step
    #loop
    .goto 83,23.32,49.19,0
    .goto 83,23.32,49.19,40,0
    .goto 83,24.37,47.48,40,0
    .goto 83,27.32,48.85,40,0
    >>Kill |cRXP_ENEMY_Winterfall Den Watchers|r, |cRXP_ENEMY_Winterfall Totemics|r, |cRXP_ENEMY_Winterfall Pathfinders|r and |cRXP_ENEMY_Winterfall Runners|r
    .complete 28460,1 --Winterfall Den Watcher (8)
    .mob Winterfall Den Watcher
    .mob Winterfall Totemic
    .mob Winterfall Pathfinder
    .mob Winterfall Runner
step
    .goto 83,24.47,47.61
    >>Click the |cRXP_PICK_Winterfall Cauldron|r
    .turnin 28464 >>Turn in Falling to Corruption
    .accept 28467 >>Accept Mystery Goo
step
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 28467 >>Turn in Mystery Goo
    .turnin 28460 >>Turn in Threat of the Winterfall
    .accept 28469 >>Accept Winterfall Runners
    .accept 28530 >>Accept Scalding Signs
    .target Donova Snowden
step
    #completewith Along21
    >>As you go: Kill |cRXP_ENEMY_Winterfall Runner|r and loot |cRXP_LOOT_Winterfall Crate|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28469,1 --Winterfall Crate (1)
    .mob Winterfall Runner
step
    .goto 83,21.04,46.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
    .turnin 28521 >>Turn in Speak to Salfa
    .target Salfa
    .isOnQuest 28521
step
    #label Along21
    .goto 83,21.04,46.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
    .accept 28524 >>Accept Delivery for Donova
    .accept 28522 >>Accept Winterfall Activity
    .target Salfa
step
    .goto 83,21.24,46.13
    >>Kill |cRXP_ENEMY_Winterfall Runner|r and loot |cRXP_LOOT_Winterfall Crate|r
    .complete 28469,1 --Winterfall Crate (1)
    .mob Winterfall Runner
step
    #loop
    .goto 83,23.32,49.19,0
    .goto 83,23.32,49.19,40,0
    .goto 83,24.37,47.48,40,0
    .goto 83,27.32,48.85,40,0
    >>Kill |cRXP_ENEMY_Winterfall Ursas|r, |cRXP_ENEMY_Winterfall Shamans|r, |cRXP_ENEMY_Winterfall Den Watchers|r and |cRXP_ENEMY_Winterfall Totemics|r. Loot them for |cRXP_LOOT_Winterfall Spirit Beads|r
    .complete 28522,1 --Winterfall Spirit Beads (10)
    .mob Winterfall Ursa
    .mob Winterfall Shaman
    .mob Winterfall Den Watcher
    .mob Winterfall Totemic
step
    .goto 83,21.04,46.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salfa|r
    .turnin 28522 >>Turn in Winterfall Activity
    .target Salfa
step
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 28469 >>Turn in Winterfall Runners
    .turnin 28524 >>Turn in Delivery for Donova
    .accept 28470 >>Accept High Chief Winterfall
    .target Donova Snowden
step
    #loop
    .goto 83,32.24,49.33,0
    .goto 83,32.24,49.33,40,0
    .goto 83,34.54,49.73,40,0
    >>Kill |cRXP_ENEMY_Scalding Springsurges|r and |cRXP_ENEMY_Boiling Springbubbles|r. Loot them for |cRXP_LOOT_Suspicious Green Sludge|r
    .complete 28530,1 --Suspicious Green Sludge (1)
    .mob Scalding Springsurge
    .mob Boiling Springbubble
step
    #completewith Along27
    >>As you go: Kill |cRXP_ENEMY_High Chief Winterfall|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28470,1 --High Chief Winterfall slain (1)
    .mob High Chief Winterfall
step
    #label Along27
    .goto 83,36.95,55.59
    >>Kill |cRXP_ENEMY_High Chief Winterfall|r and loot |cRXP_LOOT_Crudely-Written Log|r. Use it to start the quest
    .collect 12842,1,28471 --Crudely-Written Log (1)
    .accept 28471 >>Accept The Final Piece
    .use 12842
    .mob High Chief Winterfall
step
    .goto 83,36.95,55.59
    >>Kill |cRXP_ENEMY_High Chief Winterfall|r
    .complete 28470,1 --High Chief Winterfall slain (1)
    .mob High Chief Winterfall
step
    .goto 83,28.93,58.60
    >>Kill |cRXP_ENEMY_Rimepelt|r and loot |cRXP_LOOT_Rimepelt's Heart|r
    .complete 28540,1 --Rimepelt's Heart (1)
    .mob Rimepelt
step
    .goto 83,25.21,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 28540 >>Turn in Doin' De E'ko Magic
    .target Witch Doctor Mau'ari
step
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 28470 >>Turn in High Chief Winterfall
    .turnin 28471 >>Turn in The Final Piece
    .turnin 28530 >>Turn in Scalding Signs
    .accept 28472 >>Accept Words of the High Chief
    .target Donova Snowden
step
    .goto 83,46.85,53.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28472 >>Turn in Words of the High Chief
    .accept 28479 >>Accept The Ruins of Kel'Theril
    .target Kelek Skykeeper
step
    .goto 83,50.71,54.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaldorei Spirit|r
    .turnin 28479 >>Turn in The Ruins of Kel'Theril
    .accept 28513 >>Accept Pride of the Highborne
    .target Kaldorei Spirit
step
    .goto 83,49.03,53.72
    >>Kill |cRXP_ENEMY_Anguished Highbornes|r, |cRXP_ENEMY_Suffering Highbornes|r and |cRXP_ENEMY_Released Highborne Spirits|r
    .complete 28513,1 --Anguished Highborne (8)
    .mob Anguished Highborne
    .mob Suffering Highborne
    .mob Released Highborne Spirit
step
    .goto 83,50.71,54.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaldorei Spirit|r
    .turnin 28513 >>Turn in Pride of the Highborne
    .accept 28534 >>Accept Descendants of the Highborne
    .target Kaldorei Spirit
step
    .goto 83,50.80,55.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'dorei Spirit|r
    .turnin 28534 >>Turn in Descendants of the Highborne
    .accept 28518 >>Accept Legacy of the High Elves
    .target Quel'dorei Spirit
step
    .goto 83,53.98,57.87
    >>Kill |cRXP_ENEMY_Archmage Maenius|r and loot |cRXP_LOOT_Memory of Zin-Malor|r
    .complete 28518,1 --Memory of Zin-Malor (1)
    .mob Archmage Maenius
step
    .goto 83,50.80,55.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'dorei Spirit|r
    .turnin 28518 >>Turn in Legacy of the High Elves
    .accept 28535 >>Accept Descendants of the High Elves
    .target Quel'dorei Spirit
step
    .goto 83,50.69,55.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sin'dorei Spirit|r
    .turnin 28535 >>Turn in Descendants of the High Elves
    .accept 28519 >>Accept Pain of the Blood Elves
    .target Sin'dorei Spirit
step
    #loop
    .goto 83,50.88,57.29,0
    .goto 83,50.88,57.29,40,0
    .goto 83,49.15,57.19,40,0
    >>Kill |cRXP_ENEMY_Wretched Spectres|r and |cRXP_ENEMY_Wretched Spirits|r
    .complete 28519,1 --Wretched Spectre (8)
    .mob Wretched Spectre
    .mob Wretched Spirit
step
    .goto 83,50.69,55.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sin'dorei Spirit|r
    .turnin 28519 >>Turn in Pain of the Blood Elves
    .accept 28536 >>Accept The Curse of Zin-Malor
    .target Sin'dorei Spirit
step
    .goto 83,46.85,53.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28536 >>Turn in The Curse of Zin-Malor
    .accept 28537 >>Accept In Pursuit of Shades
    .target Kelek Skykeeper
step
    .goto 83,50.72,63.58
    >>Kill |cRXP_ENEMY_Shade of the Spiritspeaker|r and loot |cRXP_LOOT_Shard of the Spiritspeaker|r
    .complete 28537,1 --Shard of the Spiritspeaker (1)
    .mob Shade of the Spiritspeaker
step
    #loop
    .goto 83,67.06,43.93,0
    .goto 83,67.06,43.93,40,0
    .goto 83,66.87,42.39,40,0
    .goto 83,66.16,40.32,40,0
    .goto 83,65.91,38.34,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged Owlbeast|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28656 >>Accept Strange Life Forces
    .unitscan Ragged Owlbeast
step
    .xp 51 >>Grind to level 51 (A Taste for Bear needs it)
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .accept 28637 >>Accept A Taste for Bear
    .target Francis Morcott
step
    .goto 83,55.97,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Guthrie|r
    .accept 28638 >>Accept The Owls Have It
    .target Jeb Guthrie
    .xp <51,1
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .accept 28640 >>Accept Fresh Frostsabers
    .target Jez Goodgrub
    .xp <51,1
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .accept 28828 >>Accept You Gotta Have Eggs
    .target Jez Goodgrub
    .xp <51,1
step
    .goto 83,48.42,41.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Natheril Raincaller|r
    .target Natheril Raincaller
    .home >>Set your Hearthstone to Natheril Raincaller's inn
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .accept 28676 >>Accept Exterminators at Work
    .target Wynd Nightchaser
    .xp <51,1
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .accept 28701 >>Accept Out of Harm's Way
    .target Wynd Nightchaser
    .xp <51,1
step
    .goto 83,45.78,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rinno Curtainfire|r
    .accept 28706 >>Accept Spray it Forward
    .target Rinno Curtainfire
step
    .goto 83,45.61,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remma Curtainfire|r
    .turnin 28706 >>Turn in Spray it Forward
    .target Remma Curtainfire
step
    .goto 83,45.61,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remma Curtainfire|r
    .accept 28707 >>Accept Spray it Again
    .target Remma Curtainfire
    .xp <51,1
step
    .goto 83,45.78,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rinno Curtainfire|r
    .accept 28703 >>Accept Step Into My Barrow
    .target Rinno Curtainfire
    .xp <51,1
step
    #loop
    .goto 83,32.55,57.00,0
    .goto 83,32.55,57.00,40,0
    .goto 83,29.30,57.93,40,0
    .goto 83,27.59,57.76,40,0
    >>Kill |cRXP_ENEMY_Shardtooth Bears|r
    .complete 28637,1 --Shardtooth Bear slain (15)
    .mob Shardtooth Bear
step
    .goto 83,25.21,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 28656 >>Turn in Strange Life Forces
    .target Witch Doctor Mau'ari
step
    #completewith next
    .hs >>Hearth to Natheril Raincaller's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .accept 28701 >>Accept Out of Harm's Way
    .target Wynd Nightchaser
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .accept 28676 >>Accept Exterminators at Work
    .target Wynd Nightchaser
    .xp <51,1
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .turnin 28637 >>Turn in A Taste for Bear
    .target Francis Morcott
step
    .goto 83,55.97,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Guthrie|r
    .accept 28638 >>Accept The Owls Have It
    .target Jeb Guthrie
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .accept 28719 >>Accept A Little Gamy
    .target Francis Morcott
    .xp <51,1
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .accept 28640 >>Accept Fresh Frostsabers
    .target Jez Goodgrub
    .xp <51,1
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .accept 28828 >>Accept You Gotta Have Eggs
    .target Jez Goodgrub
    .xp <51,1
step
    #loop
    .goto 83,56.68,29.49,0
    .goto 83,56.68,29.49,40,0
    .goto 83,59.03,32.73,40,0
    >>Kill |cRXP_ENEMY_Winterspring Owls|r
    .complete 28638,1 --Winterspring Owl slain (15)
    .mob Winterspring Owl
step
    .goto 83,46.85,53.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28537 >>Turn in In Pursuit of Shades
    .accept 28848 >>Accept Trailing the Spiritspeaker
    .target Kelek Skykeeper
step
    .goto 83,59.87,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilith the Lithe|r
    .accept 28609 >>Accept Hammer Time
    .target Lilith the Lithe
step
    .goto 83,59.75,49.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deez Rocksnitch|r
    .turnin 28609 >>Turn in Hammer Time
    .accept 28610 >>Accept Rubble Trouble
    .target Deez Rocksnitch
step
    .goto 83,59.68,50.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nymn|r
    .turnin 28848 >>Turn in Trailing the Spiritspeaker
    .target Nymn
step
    #loop
    .goto 83,58.40,58.28,0
    .goto 83,58.40,58.28,40,0
    .goto 83,60.62,58.56,40,0
    >>Kill |cRXP_ENEMY_Frostshard Rumblers|r. Loot them for |cRXP_LOOT_Prime Rubble Chunk|r
    .complete 28610,1 --Prime Rubble Chunk (6)
    .mob Frostshard Rumbler
step
    .goto 83,59.75,49.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deez Rocksnitch|r
    .turnin 28610 >>Turn in Rubble Trouble
    .accept 28618 >>Accept Boulder Delivery
    .target Deez Rocksnitch
step
    .goto 83,59.87,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilith the Lithe|r
    .turnin 28618 >>Turn in Boulder Delivery
    .target Lilith the Lithe
step
    .goto 83,59.81,49.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilram|r
    .accept 28624 >>Accept Kilram's Boast
    .target Kilram
step
    .goto 83,59.75,49.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deez Rocksnitch|r
    .turnin 28624 >>Turn in Kilram's Boast
    .accept 28625 >>Accept Chop Chop
    .target Deez Rocksnitch
step
    .goto 83,55.65,53.50
    >>Kill |cRXP_ENEMY_Frostleaf Treant|r and loot |cRXP_LOOT_Fresh-Cut Frostwood|r
    .complete 28625,1 --Fresh-Cut Frostwood (1)
    .mob Frostleaf Treant
step
    .goto 83,59.75,49.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deez Rocksnitch|r
    .turnin 28625 >>Turn in Chop Chop
    .accept 28626 >>Accept Tree Delivery
    .target Deez Rocksnitch
step
    .goto 83,59.81,49.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilram|r
    .turnin 28626 >>Turn in Tree Delivery
    .target Kilram
step
    .goto 83,59.77,49.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seril Scourgebane|r
    .accept 28627 >>Accept Seril's Boast
    .target Seril Scourgebane
step
    .goto 83,59.75,49.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deez Rocksnitch|r
    .turnin 28627 >>Turn in Seril's Boast
    .accept 28632 >>Accept Fresh From The Hills
    .target Deez Rocksnitch
step
    .goto 83,59.31,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .accept 28629 >>Accept Are We There, Yeti?
    .accept 28630 >>Accept Echo Three
    .accept 28631 >>Accept The Perfect Horns
    .target Umi Rumplesnicker
step
    .goto 83,65.32,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burndl|r
    .accept 28614 >>Accept Bearzerker
    .target Burndl
step
    .goto 83,65.37,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tanrir|r
    .accept 28615 >>Accept Turning the Earth
    .target Tanrir
step
    #completewith Along72
    >>As you go: Kill |cRXP_ENEMY_Ice Thistle Yetis|r, |cRXP_ENEMY_Ice Thistle Matriarches|r and |cRXP_ENEMY_Ice Thistle Patriarches|r. Loot them for |cRXP_LOOT_Thick Yeti Fur|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28629,1 --Thick Yeti Fur (10)
    .mob Ice Thistle Yeti
    .mob Ice Thistle Matriarch
    .mob Ice Thistle Patriarch
step
    #label Along72
    .goto 83,67.05,55.10
    >>Click the |cRXP_PICK_Echo Three|r
    .turnin 28630 >>Turn in Echo Three
step
    #loop
    .goto 83,66.63,55.88,0
    .goto 83,66.63,55.88,40,0
    .goto 83,70.21,53.17,40,0
    .goto 83,70.69,51.18,40,0
    >>Kill |cRXP_ENEMY_Ice Thistle Yetis|r, |cRXP_ENEMY_Ice Thistle Matriarches|r and |cRXP_ENEMY_Ice Thistle Patriarches|r. Loot them for |cRXP_LOOT_Thick Yeti Fur|r
    >>Kill |cRXP_ENEMY_Solid Ice|r and loot |cRXP_LOOT_Pure Glacier Ice|r
    >>Kill |cRXP_ENEMY_Grolnar the Berserk|r
    >>Kill |cRXP_ENEMY_Icewhomp|r and loot |cRXP_LOOT_Icewhomp's Pristine Horns|r
    .complete 28629,1 --Thick Yeti Fur (10)
    .complete 28632,1 --Pure Glacier Ice (1)
    .complete 28614,1 --Grolnar the Berserk slain (1)
    .complete 28631,1 --Icewhomp's Pristine Horns (1)
    .mob Ice Thistle Yeti
    .mob Ice Thistle Matriarch
    .mob Ice Thistle Patriarch
    .mob Solid Ice
    .mob Grolnar the Berserk
    .mob Icewhomp
step
    .goto 83,66.52,48.21
    >>Interact with |cRXP_FRIENDLY_Winterfall Earth Totems|r
    .complete 28615,1 --Winterfall Earth Totem (4)
    .target Winterfall Earth Totem
step
    .goto 83,65.32,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burndl|r
    .turnin 28614 >>Turn in Bearzerker while you are here
    .isQuestComplete 28614
    .target Burndl
step
    .goto 83,65.37,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tanrir|r
    .turnin 28615 >>Turn in Turning the Earth
    .target Tanrir
step
    .goto 83,65.32,46.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burndl|r
    .turnin 28614 >>Turn in Bearzerker
    .target Burndl
step
    .goto 83,59.75,49.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deez Rocksnitch|r
    .turnin 28632 >>Turn in Fresh From The Hills
    .accept 28628 >>Accept Ice Delivery
    .target Deez Rocksnitch
step
    .goto 83,59.77,49.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seril Scourgebane|r
    .turnin 28628 >>Turn in Ice Delivery
    .target Seril Scourgebane
step
    .goto 83,59.31,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .turnin 28629 >>Turn in Are We There, Yeti?
    .turnin 28631 >>Turn in The Perfect Horns
    .accept 28722 >>Accept Yetiphobia
    .target Umi Rumplesnicker
step
    .goto 83,60.07,50.93
    >>Interact with |cRXP_FRIENDLY_Legacki|r
    .complete 28722,1 --Legacki
    .target Legacki
step
    .goto 83,59.31,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umi Rumplesnicker|r
    .turnin 28722 >>Turn in Yetiphobia
    .target Umi Rumplesnicker
step
    .goto 83,59.75,49.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deez Rocksnitch|r
    .accept 28674 >>Accept Starfall Village
    .target Deez Rocksnitch
step
    .goto 83,59.68,50.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nymn|r
    .accept 28847 >>Accept The Pursuit of Umbranse
    .target Nymn
step
    #completewith next
    .hs >>Hearth to Natheril Raincaller's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    #loop
    .goto 83,47.72,41.02,0
    .goto 83,47.72,41.02,40,0
    .goto 83,46.35,42.22,40,0
    >>Loot the |cRXP_PICK_Ancient Urns|r for |cRXP_LOOT_Starfall Relic|r
    .complete 28701,1 --Starfall Relic (5)
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .turnin 28674 >>Turn in Starfall Village while you are here
    .isQuestComplete 28674
    .target Wynd Nightchaser
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .turnin 28701 >>Turn in Out of Harm's Way while you are here
    .isQuestComplete 28701
    .target Wynd Nightchaser
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 50 - 58 Winterspring
#subweight -50
#name 52-54 Winterspring: around Rinno Curtainfire
--RouteBuilder:next
#next Zone Routes (Horde)\55-56 Silithus;Zone Routes (Horde)\52-55 Swamp of Sorrows: around Trade Baron Silversnap;Zone Routes (Horde)\53-55 Un'Goro Crater: around Mor'vek

step
    .goto 83,45.61,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remma Curtainfire|r
    .accept 28707 >>Accept Spray it Again
    .target Remma Curtainfire
    .isQuestTurnedIn 28706 --any of: Spray it Forward
step
    .goto 83,46.29,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcy Curtainfire|r
    .turnin 28707 >>Turn in Spray it Again
    .target Marcy Curtainfire
    .isOnQuest 28707
step
    .goto 83,46.29,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcy Curtainfire|r
    .accept 28710 >>Accept Spray it One More Time
    .target Marcy Curtainfire
    .isQuestTurnedIn 28707 --any of: Spray it Again
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .turnin 28674 >>Turn in Starfall Village
    .target Wynd Nightchaser
    .isOnQuest 28674
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .accept 28676 >>Accept Exterminators at Work
    .target Wynd Nightchaser
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .turnin 28701 >>Turn in Out of Harm's Way
    .target Wynd Nightchaser
    .isOnQuest 28701
step
    .goto 83,48.08,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sana Curtainfire|r
    .turnin 28710 >>Turn in Spray it One More Time
    .target Sana Curtainfire
    .isOnQuest 28710
step
    .goto 83,48.08,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sana Curtainfire|r
    .accept 28718 >>Accept Where There's Smoke, There's Delicious Meat
    .target Sana Curtainfire
    .isQuestTurnedIn 28710 --any of: Spray it One More Time
step
    .goto 83,45.78,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rinno Curtainfire|r
    .turnin 28676 >>Turn in Exterminators at Work
    .accept 28703 >>Accept Step Into My Barrow
    .target Rinno Curtainfire
step
    .goto 83,47.36,40.89
    >>Kill |cRXP_ENEMY_Coldlurk Creepers|r
    >>Kill |cRXP_ENEMY_Coldlurk Burrowers|r
    .complete 28703,1 --Coldlurk Creeper slain (10)
    .complete 28703,2 --Coldlurk Burrower slain (5)
    .mob Coldlurk Creeper
    .mob Coldlurk Burrower
step
    .goto 83,45.78,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rinno Curtainfire|r
    .turnin 28703 >>Turn in Step Into My Barrow
    .target Rinno Curtainfire
step
    .goto 83,55.57,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28638 >>Turn in The Owls Have It
    .target ?
    .isOnQuest 28638
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .accept 28719 >>Accept A Little Gamy
    .target Francis Morcott
    .isQuestTurnedIn 28637 --any of: A Taste for Bear
step
    .goto 83,55.97,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Guthrie|r
    .accept 28745 >>Accept Screechy Keen
    .target Jeb Guthrie
    .isQuestTurnedIn 28638 --any of: The Owls Have It
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .accept 28640 >>Accept Fresh Frostsabers
    .accept 28828 >>Accept You Gotta Have Eggs
    .target Jez Goodgrub
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .turnin 28718 >>Turn in Where There's Smoke, There's Delicious Meat
    .target Jez Goodgrub
    .isOnQuest 28718
step
    #loop
    .goto 83,53.09,20.13,0
    .goto 83,53.09,20.13,40,0
    .goto 83,50.32,20.65,40,0
    .goto 83,49.17,24.06,40,0
    >>Kill |cRXP_ENEMY_Frostsaber Stalkers|r and |cRXP_ENEMY_Frostsabers|r
    .complete 28640,1 --Frostsaber Stalker (8)
    .mob Frostsaber Stalker
    .mob Frostsaber
step
    #loop
    .goto 83,57.46,24.41,0
    .goto 83,57.46,24.41,40,0
    .goto 83,58.68,26.39,40,0
    >>Loot the |cRXP_PICK_Chillwind Eggs|r for |cRXP_LOOT_Chillwind Egg|r
    .complete 28828,1 --Chillwind Egg (40)
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .turnin 28640 >>Turn in Fresh Frostsabers
    .turnin 28828 >>Turn in You Gotta Have Eggs
    .accept 28641 >>Accept Pride of the Dinner Table
    .target Jez Goodgrub
step
    #loop
    .goto 83,47.10,26.92,0
    .goto 83,47.10,26.92,40,0
    .goto 83,47.15,30.13,40,0
    >>Kill |cRXP_ENEMY_Frostsaber Huntress|r and |cRXP_ENEMY_Frostsaber Pride Watchers|r
    .complete 28641,1 --Frostsaber Huntress (15)
    .mob Frostsaber Huntress
    .mob Frostsaber Pride Watcher
step
    #loop
    .goto 83,54.74,36.63,0
    .goto 83,54.74,36.63,40,0
    .goto 83,53.08,39.77,40,0
    >>Kill |cRXP_ENEMY_Shardtooth Maulers|r
    .complete 28719,1 --Shardtooth Mauler slain (15)
    .mob Shardtooth Mauler
    .isOnQuest 28719
step
    #loop
    .goto 83,53.73,34.17,0
    .goto 83,53.73,34.17,40,0
    .goto 83,56.04,34.86,40,0
    .goto 83,60.50,35.38,40,0
    >>Kill |cRXP_ENEMY_Winterspring Screechers|r
    .complete 28745,1 --Winterspring Screecher slain (15)
    .mob Winterspring Screecher
    .isOnQuest 28745
step
    .goto 83,55.03,32.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28745 >>Turn in Screechy Keen
    .target ?
    .isOnQuest 28745
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .turnin 28719 >>Turn in A Little Gamy
    .target Francis Morcott
    .isOnQuest 28719
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .accept 28639 >>Accept Ursius
    .target Francis Morcott
    .isQuestTurnedIn 28719 --any of: A Little Gamy
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .turnin 28641 >>Turn in Pride of the Dinner Table
    .accept 28742 >>Accept Shy-Rotam
    .target Jez Goodgrub
step
    .goto 83,55.97,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Guthrie|r
    .accept 28782 >>Accept A Bird of Legend
    .target Jeb Guthrie
    .isQuestTurnedIn 28745 --any of: Screechy Keen
step
    .goto 83,59.68,40.81
    >>Kill |cRXP_ENEMY_Ursius|r
    .complete 28639,1 --Ursius slain (1)
    .mob Ursius
    .isOnQuest 28639
step
    .goto 83,53.07,36.65
    >>Kill |cRXP_ENEMY_Hell-Hoot|r
    .complete 28782,1 --Hell-Hoot slain (1)
    .mob Hell-Hoot
    .isOnQuest 28782
step
    .goto 83,46.10,17.60
    >>Kill |cRXP_ENEMY_Shy-Rotam|r
    .complete 28742,1 --Shy-Rotam slain (1)
    .mob Shy-Rotam
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .turnin 28742 >>Turn in Shy-Rotam
    .target Jez Goodgrub
step
    .goto 83,55.97,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Guthrie|r
    .turnin 28782 >>Turn in A Bird of Legend
    .target Jeb Guthrie
    .isOnQuest 28782
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .turnin 28639 >>Turn in Ursius
    .target Francis Morcott
    .isOnQuest 28639
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .accept 28837 >>Accept Altered Beasts
    .target Haleh
    .isQuestTurnedIn 28848 --any of: Trailing the Spiritspeaker
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 28847 >>Turn in The Pursuit of Umbranse
    .target Haleh
    .isOnQuest 28847
step
    #loop
    .goto 83,56.37,62.28,0
    .goto 83,56.37,62.28,40,0
    .goto 83,54.66,66.39,40,0
    >>Kill |cRXP_ENEMY_Altered Beasts|r. Loot them for |cRXP_LOOT_Mana-Addled Brain|r
    .complete 28837,1 --Mana-Addled Brain (5)
    .mob Altered Beast
    .isOnQuest 28837
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 28837 >>Turn in Altered Beasts
    .target Haleh
    .isOnQuest 28837
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .accept 28838 >>Accept The Owlbeasts' Defense
    .target Haleh
    .isQuestTurnedIn 28837 --any of: Altered Beasts
step
    .goto 83,57.13,75.44
    >>Open the |cRXP_PICK_Abandoned Research Samples|r. Loot it for |cRXP_LOOT_Owlbeast Dreamcatcher|r
    .complete 28838,1 --Owlbeast Dreamcatcher (1)
    .isOnQuest 28838
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 28838 >>Turn in The Owlbeasts' Defense
    .target Haleh
    .isOnQuest 28838
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .accept 28839 >>Accept Magic Prehistoric
    .target Haleh
    .isQuestTurnedIn 28838 --any of: The Owlbeasts' Defense
step
    .goto 83,65.07,73.82
    >>Open the |cRXP_PICK_Owlbeast Claw-Totem|r. Loot it for |cRXP_LOOT_Essence of the Claw-Totem|r
    .complete 28839,1 --Essence of the Claw-Totem (1)
    .isOnQuest 28839
step
    .goto 83,65.64,77.64
    >>Open the |cRXP_PICK_Owlbeast Life-Totem|r. Loot it for |cRXP_LOOT_Essence of the Life-Totem|r
    .complete 28839,2 --Essence of the Life-Totem (1)
    .isOnQuest 28839
step
    .goto 83,64.82,81.07
    >>Open the |cRXP_PICK_Owlbeast Moon-Totem|r. Loot it for |cRXP_LOOT_Essence of the Moon-Totem|r
    .complete 28839,3 --Essence of the Moon-Totem (1)
    .isOnQuest 28839
step
    .xp 53 >>Grind to level 53 (Razor Beak and Antlers Pointy needs it)
step
    .goto 83,61.87,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadrag the Slicer|r
    .accept 28829 >>Accept Razor Beak and Antlers Pointy
    .target Jadrag the Slicer
step
    #loop
    .goto 83,62.78,75.15,0
    .goto 83,62.78,75.15,40,0
    .goto 83,62.78,76.94,40,0
    .goto 83,57.16,75.35,40,0
    >>Kill |cRXP_ENEMY_Moontouched Owlbeasts|r, |cRXP_ENEMY_Berserk Owlbeasts|r and |cRXP_ENEMY_Crazed Owlbeasts|r
    .complete 28829,1 --Moontouched Owlbeast (12)
    .mob Moontouched Owlbeast
    .mob Berserk Owlbeast
    .mob Crazed Owlbeast
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 28839 >>Turn in Magic Prehistoric
    .target Haleh
    .isOnQuest 28839
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .accept 28840 >>Accept Winterwater
    .target Haleh
    .isQuestTurnedIn 28839 --any of: Magic Prehistoric
step
    .goto 83,61.87,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadrag the Slicer|r
    .turnin 28829 >>Turn in Razor Beak and Antlers Pointy
    .accept 28830 >>Accept Chips off the Old Block
    .accept 28831 >>Accept Damn You, Frostilicus
    .target Jadrag the Slicer
step
    #loop
    .goto 83,61.46,83.15,0
    .goto 83,61.46,83.15,40,0
    .goto 83,62.58,83.11,40,0
    >>Kill |cRXP_ENEMY_Frostmaul Tumblers|r
    .complete 28830,1 --Frostmaul Tumbler slain (8)
    .mob Frostmaul Tumbler
step
    #loop
    .goto 83,61.68,86.59,0
    .goto 83,61.68,86.59,40,0
    .goto 83,59.49,84.72,40,0
    >>Kill |cRXP_ENEMY_Ice Avatars|r and |cRXP_ENEMY_Frostilicus|r. Loot them for |cRXP_LOOT_Winterwater|r
    .complete 28840,1 --Winterwater (7)
    .mob Ice Avatar
    .mob Frostilicus
    .isOnQuest 28840
step
    .goto 83,61.87,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadrag the Slicer|r
    .turnin 28830 >>Turn in Chips off the Old Block
    .target Jadrag the Slicer
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 28840 >>Turn in Winterwater
    .target Haleh
    .isOnQuest 28840
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .accept 28841 >>Accept The Arcane Storm Within
    .accept 28842 >>Accept Umbranse's Deliverance
    .target Haleh
    .isQuestTurnedIn 28840 --any of: Winterwater
step
    #loop
    .goto 83,52.83,64.87,0
    .goto 83,52.83,64.87,40,0
    .goto 83,52.08,69.18,40,0
    >>Use the Empowered Dreamcatcher to close 5 Arcane Tesseracts within Mazthoril.
    .complete 28841,1 --Arcane Tesseract (5)
    .target Arcane Tesseract
    .isOnQuest 28841
step
    .goto 83,49.56,70.26
    >>Kill |cRXP_ENEMY_Umbranse the Spiritspeaker|r
    .complete 28842,1 --Umbranse the Spiritspeaker slain (1)
    .mob Umbranse the Spiritspeaker
    .isOnQuest 28842
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 28842 >>Turn in Umbranse's Deliverance
    .target Haleh
    .isOnQuest 28842
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 28841 >>Turn in The Arcane Storm Within
    .target Haleh
    .isOnQuest 28841
step
    .goto 83,63.26,85.99
    >>Kill |cRXP_ENEMY_Frostilicus|r
    .complete 28831,1 --Frostilicus slain (1)
    .mob Frostilicus
step
    .goto 83,61.87,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadrag the Slicer|r
    .turnin 28831 >>Turn in Damn You, Frostilicus
    .target Jadrag the Slicer
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade << Tauren Druid/Troll Druid
    .accept 28289 >>Accept Moonglade Calls << Druid
    .target Sheal Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,75.65,31.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 2965 >>Turn in Portents of Uldum
    .target Nara Wildmane
    .isOnQuest 2965
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
    +|cRXP_WARN_That is all of Winterspring for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    >>|cRXP_FRIENDLY_Dustwallow Marsh and back here|r: Deadmire << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 54|r: |cRXP_FRIENDLY_Silithus|r (about 1.0 levels of quests, starting around Huum Wildmane; 1 quest from here hands in there), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.9 levels of quests, starting around Trade Baron Silversnap), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.8 levels of quests, starting around Mor'vek). Completing this step loads the guide for Silithus --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Winterspring is planned from level 57.|r Load its guide for level 57 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 50 - 58 Winterspring
#subweight -50
#name 57-58 Winterspring
--RouteBuilder:next
#next Zone Routes (Horde)\55-56 Silithus;Zone Routes (Horde)\53-55 Un'Goro Crater: around Mor'vek

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 83,59.86,51.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .accept 28858 >>Accept Blasted Lands: The Other Side of the World
    .target Innkeeper Vizzie
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor Stonehoof|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
    .isQuestComplete 1205
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28527 >>Accept Warchief's Command: Silithus!
step
    +|cRXP_WARN_End of the Winterspring route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blasted Lands|r: Blasted Lands: The Other Side of the World << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Silithus|r: Warchief's Command: Silithus! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 57|r: |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane; 1 quest from here hands in there), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Mor'vek). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
