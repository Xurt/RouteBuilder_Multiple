-- 50-55 Winterspring: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 50, 57).
-- Split into 3 guides, listed under "50 - 58 Winterspring" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Winterspring.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 50 - 58 Winterspring
#subweight -50
#name 50-52 Winterspring: around Donova Snowden
#next Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub

step
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .accept 28464 >>Accept Falling to Corruption
    .accept 28460 >>Accept Threat of the Winterfall
    .target Donova Snowden
step
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 28768 >>Turn in Winterspring!
    .target Donova Snowden
    .isOnQuest 28768
step
    .goto 83,25.21,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .accept 28540 >>Accept Doin' De E'ko Magic
    .target Witch Doctor Mau'ari
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
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
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
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.35,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 28285 >>Accept Meet with High Priestess Laurena
    .target Astarii Starseeker
    .xp <50,1
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
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.35,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 28285 >>Accept Meet with High Priestess Laurena
    .target Astarii Starseeker
    .xp <50,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28503 >>Accept Hero's Call: Thousand Needles!
    .accept 28543 >>Accept Hero's Call: Felwood!
    .accept 28507 >>Accept Hero's Call: Tanaris!
    .accept 28525 >>Accept Hero's Call: Un'Goro Crater!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .xp 50 >>Grind to level 50 (Meet with Ander Germaine needs it)
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 28258 >>Accept Meet with Ander Germaine
    .accept 27225 >>Accept A Summons from Ander Germaine
    .target Arias'ta Bladesinger
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .xp 50 >>Grind to level 50 (Meet with High Priestess Laurena needs it)
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.35,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 28285 >>Accept Meet with High Priestess Laurena
    .target Astarii Starseeker
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .xp 50 >>Grind to level 50 (Meet with Wulf Hansreim needs it)
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 28260 >>Accept Meet with Wulf Hansreim
    .accept 27266 >>Accept Wulf Calls
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .xp 50 >>Grind to level 50 (Meet with Lord Tony Romano needs it)
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
step << Druid
    .xp 50 >>Grind to level 50 (Moonglade Calls needs it)
step
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 28289 >>Accept Moonglade Calls << Druid
    .accept 27273 >>Accept An Invitation from Moonglade << NightElf Druid/Worgen Druid
    .target Mathrengyl Bearwalker
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
    .zone 83 >>Leave Darnassus for Winterspring
    .zoneskip 83
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 50 >>Grind to level 50 (Get Them While They're Young needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 83,46.68,17.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivern Frostwind|r
    .accept 29032 >>Accept Get Them While They're Young
    .target Rivern Frostwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 83,45.69,17.45,0
    .goto 83,45.69,17.45,40,0
    .goto 83,48.68,19.38,40,0
    .goto 83,50.56,20.20,40,0
    >>Kill |cRXP_ENEMY_Frostsaber Cubs|r. Loot them for |cRXP_LOOT_Frostsaber Cub|r
    .complete 29032,1 --Frostsaber Cub (8)
    .mob Frostsaber Cub
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 83,46.68,17.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivern Frostwind|r
    .turnin 29032 >>Turn in Get Them While They're Young
    .accept 29034 >>Accept They Grow Up So Fast
    .target Rivern Frostwind
step
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 28460 >>Turn in Threat of the Winterfall
    .turnin 28467 >>Turn in Mystery Goo
    .accept 28530 >>Accept Scalding Signs
    .accept 28469 >>Accept Winterfall Runners
    .target Donova Snowden
step
    #completewith Along28
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
    #label Along28
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
    >>Kill |cRXP_ENEMY_Deadwind Brutes|r, |cRXP_ENEMY_Restless Shades|r, |cRXP_ENEMY_Deadwind Maulers|r and |cRXP_ENEMY_Deadwind Warlocks|r. Loot them for |cRXP_LOOT_Runecloth|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 28522,1 --Winterfall Spirit Beads (10)
    .complete 29034,2 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Runecloth (20)
    .mob Winterfall Ursa
    .mob Winterfall Shaman
    .mob Winterfall Den Watcher
    .mob Winterfall Totemic
    .mob Deadwind Brute << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Restless Shade << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Deadwind Mauler << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Deadwind Warlock << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
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
    #completewith Along34
    >>As you go: Kill |cRXP_ENEMY_High Chief Winterfall|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28470,1 --High Chief Winterfall slain (1)
    .mob High Chief Winterfall
step
    #label Along34
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
    .goto 83,25.12,58.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova Snowden|r
    .turnin 28471 >>Turn in The Final Piece
    .turnin 28470 >>Turn in High Chief Winterfall
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
    #loop
    .goto 83,65.91,38.34,0
    .goto 83,65.91,38.34,40,0
    .goto 83,66.16,40.32,40,0
    .goto 83,66.87,42.39,40,0
    .goto 83,67.06,43.93,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragged Owlbeast|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28656 >>Accept Strange Life Forces
    .unitscan Ragged Owlbeast
step
    .goto 83,50.72,63.58
    >>Kill |cRXP_ENEMY_Shade of the Spiritspeaker|r and loot |cRXP_LOOT_Shard of the Spiritspeaker|r
    .complete 28537,1 --Shard of the Spiritspeaker (1)
    .mob Shade of the Spiritspeaker
step
    .goto 83,46.85,53.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelek Skykeeper|r
    .turnin 28537 >>Turn in In Pursuit of Shades
    .accept 28848 >>Accept Trailing the Spiritspeaker
    .target Kelek Skykeeper
step
    .goto 83,25.21,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Mau'ari|r
    .turnin 28656 >>Turn in Strange Life Forces
    .target Witch Doctor Mau'ari
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
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
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
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
step
    #completewith next
    .zone 83 >>Leave The Exodar for Winterspring
    .zoneskip 83
step
    #completewith next
    .hs >>Hearth to Natheril Raincaller's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .xp 51 >>Grind to level 51 (Out of Harm's Way needs it)
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
    .accept 28631 >>Accept The Perfect Horns
    .accept 28630 >>Accept Echo Three
    .accept 28629 >>Accept Are We There, Yeti?
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
    #loop
    .goto 83,70.69,51.18,0
    .goto 83,70.69,51.18,40,0
    .goto 83,70.21,53.17,40,0
    .goto 83,66.63,55.88,40,0
    >>Kill |cRXP_ENEMY_Icewhomp|r and loot |cRXP_LOOT_Icewhomp's Pristine Horns|r
    >>Kill |cRXP_ENEMY_Grolnar the Berserk|r
    >>Kill |cRXP_ENEMY_Solid Ice|r and loot |cRXP_LOOT_Pure Glacier Ice|r
    >>Kill |cRXP_ENEMY_Ice Thistle Yetis|r, |cRXP_ENEMY_Ice Thistle Matriarches|r and |cRXP_ENEMY_Ice Thistle Patriarches|r. Loot them for |cRXP_LOOT_Thick Yeti Fur|r
    .complete 28631,1 --Icewhomp's Pristine Horns (1)
    .complete 28614,1 --Grolnar the Berserk slain (1)
    .complete 28632,1 --Pure Glacier Ice (1)
    .complete 28629,1 --Thick Yeti Fur (10)
    .mob Icewhomp
    .mob Grolnar the Berserk
    .mob Solid Ice
    .mob Ice Thistle Yeti
    .mob Ice Thistle Matriarch
    .mob Ice Thistle Patriarch
step
    .goto 83,67.05,55.10
    >>Click the |cRXP_PICK_Echo Three|r
    .turnin 28630 >>Turn in Echo Three
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
    .goto 83,59.68,50.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nymn|r
    .accept 28847 >>Accept The Pursuit of Umbranse
    .target Nymn
step
    .goto 83,59.75,49.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deez Rocksnitch|r
    .accept 28674 >>Accept Starfall Village
    .target Deez Rocksnitch
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 50 - 58 Winterspring
#subweight -50
#name 52-55 Winterspring: around Jez Goodgrub
--RouteBuilder:next
#next Zone Routes (Alliance)\55-56 Silithus;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap;Zone Routes (Alliance)\53-55 Un'Goro Crater: around Garl Stormclaw

step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .accept 28637 >>Accept A Taste for Bear
    .target Francis Morcott
step
    #completewith Along90
    >>As you go: Kill |cRXP_ENEMY_Shardtooth Bears|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28637,1 --Shardtooth Bear slain (15)
    .mob Shardtooth Bear
step
    #label Along90
    .goto 83,55.97,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Guthrie|r
    .accept 28638 >>Accept The Owls Have It
    .target Jeb Guthrie
step
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Winterspring Owls|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28638,1 --Winterspring Owl slain (15)
    .mob Winterspring Owl
step
    #label Along91
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .accept 28828 >>Accept You Gotta Have Eggs
    .accept 28640 >>Accept Fresh Frostsabers
    .target Jez Goodgrub
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
    #loop
    .goto 83,57.29,30.37,0
    .goto 83,57.29,30.37,40,0
    .goto 83,59.41,33.41,40,0
    .goto 83,54.17,30.25,40,0
    >>Kill |cRXP_ENEMY_Winterspring Owls|r
    >>Kill |cRXP_ENEMY_Shardtooth Bears|r
    .complete 28638,1 --Winterspring Owl slain (15)
    .complete 28637,1 --Shardtooth Bear slain (15)
    .mob Winterspring Owl
    .mob Shardtooth Bear
step
    .goto 83,55.57,30.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28638 >>Turn in The Owls Have It
    .target ?
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .turnin 28637 >>Turn in A Taste for Bear
    .accept 28719 >>Accept A Little Gamy
    .target Francis Morcott
step
    .goto 83,55.97,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Guthrie|r
    .accept 28745 >>Accept Screechy Keen
    .target Jeb Guthrie
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .turnin 28640 >>Turn in Fresh Frostsabers
    .turnin 28828 >>Turn in You Gotta Have Eggs
    .accept 28641 >>Accept Pride of the Dinner Table
    .target Jez Goodgrub
step
    #loop
    .goto 83,45.92,19.10,0
    .goto 83,45.92,19.10,40,0
    .goto 83,47.06,15.64,40,0
    >>Kill |cRXP_ENEMY_Frostsaber Huntress|r and |cRXP_ENEMY_Frostsaber Pride Watchers|r
    .complete 28641,1 --Frostsaber Huntress (15)
    .mob Frostsaber Huntress
    .mob Frostsaber Pride Watcher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 83,46.68,17.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivern Frostwind|r
    .turnin 29034 >>Turn in They Grow Up So Fast
    .target Rivern Frostwind
    .isOnQuest 29034
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
    .isOnQuest 28701
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
step
    .goto 83,45.78,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rinno Curtainfire|r
    .accept 28706 >>Accept Spray it Forward
    .accept 28703 >>Accept Step Into My Barrow
    .target Rinno Curtainfire
step
    #completewith Along107
    >>As you go: Kill |cRXP_ENEMY_Coldlurk Burrowers|r. Kill |cRXP_ENEMY_Coldlurk Creepers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28703,2 --Coldlurk Burrower slain (5)
    .complete 28703,1 --Coldlurk Creeper slain (10)
    .mob Coldlurk Burrower
    .mob Coldlurk Creeper
step
    .goto 83,45.61,41.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remma Curtainfire|r
    .turnin 28706 >>Turn in Spray it Forward
    .accept 28707 >>Accept Spray it Again
    .target Remma Curtainfire
step
    .goto 83,46.29,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcy Curtainfire|r
    .turnin 28707 >>Turn in Spray it Again
    .accept 28710 >>Accept Spray it One More Time
    .target Marcy Curtainfire
step
    .goto 83,48.08,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sana Curtainfire|r
    .turnin 28710 >>Turn in Spray it One More Time while you are here
    .isQuestComplete 28710
    .target Sana Curtainfire
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .turnin 28701 >>Turn in Out of Harm's Way
    .target Wynd Nightchaser
    .isOnQuest 28701
step
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .turnin 28674 >>Turn in Starfall Village
    .target Wynd Nightchaser
    .isOnQuest 28674
step
    #label Along107
    .goto 83,48.67,41.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wynd Nightchaser|r
    .accept 28676 >>Accept Exterminators at Work
    .target Wynd Nightchaser
step
    #loop
    .goto 83,47.36,40.89,0
    .goto 83,47.36,40.89,40,0
    .goto 83,46.32,42.03,40,0
    >>Kill |cRXP_ENEMY_Coldlurk Burrowers|r
    >>Kill |cRXP_ENEMY_Coldlurk Creepers|r
    .complete 28703,2 --Coldlurk Burrower slain (5)
    .complete 28703,1 --Coldlurk Creeper slain (10)
    .mob Coldlurk Burrower
    .mob Coldlurk Creeper
step
    .goto 83,45.78,41.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rinno Curtainfire|r
    .turnin 28676 >>Turn in Exterminators at Work
    .turnin 28703 >>Turn in Step Into My Barrow
    .target Rinno Curtainfire
step
    .goto 83,48.08,40.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sana Curtainfire|r
    .turnin 28710 >>Turn in Spray it One More Time
    .accept 28718 >>Accept Where There's Smoke, There's Delicious Meat
    .target Sana Curtainfire
step
    #loop
    .goto 83,53.08,39.77,0
    .goto 83,53.08,39.77,40,0
    .goto 83,54.74,36.63,40,0
    >>Kill |cRXP_ENEMY_Shardtooth Maulers|r
    .complete 28719,1 --Shardtooth Mauler slain (15)
    .mob Shardtooth Mauler
step
    #loop
    .goto 83,53.73,34.17,0
    .goto 83,53.73,34.17,40,0
    .goto 83,56.04,34.86,40,0
    .goto 83,60.50,35.38,40,0
    >>Kill |cRXP_ENEMY_Winterspring Screechers|r
    .complete 28745,1 --Winterspring Screecher slain (15)
    .mob Winterspring Screecher
step
    .goto 83,55.03,32.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 28745 >>Turn in Screechy Keen
    .target ?
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .turnin 28719 >>Turn in A Little Gamy
    .accept 28639 >>Accept Ursius
    .target Francis Morcott
step
    .goto 83,55.94,28.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jez Goodgrub|r
    .turnin 28641 >>Turn in Pride of the Dinner Table
    .turnin 28718 >>Turn in Where There's Smoke, There's Delicious Meat
    .accept 28742 >>Accept Shy-Rotam
    .target Jez Goodgrub
step
    .goto 83,55.97,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Guthrie|r
    .accept 28782 >>Accept A Bird of Legend
    .target Jeb Guthrie
step
    .goto 83,59.68,40.81
    >>Kill |cRXP_ENEMY_Ursius|r
    .complete 28639,1 --Ursius slain (1)
    .mob Ursius
step
    .goto 83,53.07,36.65
    >>Kill |cRXP_ENEMY_Hell-Hoot|r
    .complete 28782,1 --Hell-Hoot slain (1)
    .mob Hell-Hoot
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
step
    .goto 83,55.90,28.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis Morcott|r
    .turnin 28639 >>Turn in Ursius
    .target Francis Morcott
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
    .xp 53 >>Grind to level 53 (Razor Beak and Antlers Pointy needs it)
step
    .goto 83,61.87,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadrag the Slicer|r
    .accept 28829 >>Accept Razor Beak and Antlers Pointy
    .target Jadrag the Slicer
step
    #completewith Along134
    >>As you go: Kill |cRXP_ENEMY_Moontouched Owlbeasts|r, |cRXP_ENEMY_Berserk Owlbeasts|r and |cRXP_ENEMY_Crazed Owlbeasts|r. |cRXP_WARN_Anything left is finished later|r
    .complete 28829,1 --Moontouched Owlbeast (12)
    .mob Moontouched Owlbeast
    .mob Berserk Owlbeast
    .mob Crazed Owlbeast
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
    #label Along134
    .goto 83,64.82,81.07
    >>Open the |cRXP_PICK_Owlbeast Moon-Totem|r. Loot it for |cRXP_LOOT_Essence of the Moon-Totem|r
    .complete 28839,3 --Essence of the Moon-Totem (1)
    .isOnQuest 28839
step
    #loop
    .goto 83,64.01,79.90,0
    .goto 83,64.01,79.90,40,0
    .goto 83,64.73,75.26,40,0
    >>Kill |cRXP_ENEMY_Moontouched Owlbeasts|r, |cRXP_ENEMY_Berserk Owlbeasts|r and |cRXP_ENEMY_Crazed Owlbeasts|r
    .complete 28829,1 --Moontouched Owlbeast (12)
    .mob Moontouched Owlbeast
    .mob Berserk Owlbeast
    .mob Crazed Owlbeast
step
    .goto 83,61.87,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadrag the Slicer|r
    .turnin 28829 >>Turn in Razor Beak and Antlers Pointy
    .accept 28830 >>Accept Chips off the Old Block
    .accept 28831 >>Accept Damn You, Frostilicus
    .target Jadrag the Slicer
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
    #loop
    .goto 83,58.93,77.53,0
    .goto 83,58.93,77.53,40,0
    .goto 83,58.34,80.80,40,0
    >>Kill |cRXP_ENEMY_Frostmaul Tumblers|r
    .complete 28830,1 --Frostmaul Tumbler slain (8)
    .mob Frostmaul Tumbler
step
    .goto 83,61.87,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jadrag the Slicer|r
    .turnin 28830 >>Turn in Chips off the Old Block
    .target Jadrag the Slicer
step
    #loop
    .goto 83,59.49,84.72,0
    .goto 83,59.49,84.72,40,0
    .goto 83,61.68,86.59,40,0
    >>Kill |cRXP_ENEMY_Ice Avatars|r and |cRXP_ENEMY_Frostilicus|r. Loot them for |cRXP_LOOT_Winterwater|r
    .complete 28840,1 --Winterwater (7)
    .mob Ice Avatar
    .mob Frostilicus
    .isOnQuest 28840
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
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .turnin 28840 >>Turn in Winterwater
    .target Haleh
    .isOnQuest 28840
step
    .goto 83,58.01,63.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haleh|r
    .accept 28842 >>Accept Umbranse's Deliverance
    .accept 28841 >>Accept The Arcane Storm Within
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
    +|cRXP_WARN_That is all of Winterspring for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
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
step
    +|cRXP_WARN_Suggested next zones at level 54|r: |cRXP_FRIENDLY_Silithus|r (about 1.0 levels of quests, starting around Huum Wildmane; 1 quest from here hands in there), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.9 levels of quests, starting around Trade Baron Silversnap), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.8 levels of quests, starting around Garl Stormclaw). Completing this step loads the guide for Silithus --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Winterspring is planned from level 57.|r Load its guide for level 57 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 50 - 58 Winterspring
#subweight -50
#name 57-58 Winterspring
--RouteBuilder:next
#next Zone Routes (Alliance)\55-56 Silithus

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 83,59.86,51.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Vizzie|r
    .accept 28857 >>Accept Blasted Lands: The Other Side of the World
    .target Innkeeper Vizzie
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28528 >>Accept Hero's Call: Silithus!
step
    +|cRXP_WARN_End of the Winterspring route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blasted Lands|r: Blasted Lands: The Other Side of the World << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Silithus|r: Hero's Call: Silithus! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 57|r: |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane; 1 quest from here hands in there). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
