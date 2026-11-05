-- 11-20 Silverpine Forest: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 11, 20).
-- Split into 2 guides, listed under "11 - 21 Silverpine Forest" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Silverpine Forest.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 11 - 21 Silverpine Forest
#subweight -11
#name 11-16 Silverpine Forest: around Admiral Hatchet
--RouteBuilder:next
#next Zone Routes (Horde)\14-16 Azshara: around Assistant Greely

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.41,10.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Executor Mortuus|r
    .turnin 26964 >>Turn in Warchief's Command: Silverpine Forest!
    .target Grand Executor Mortuus
    .isOnQuest 26964
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.41,10.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Executor Mortuus|r
    .turnin 28568 >>Turn in Warchief's Command: Silverpine Forest!
    .target Grand Executor Mortuus
    .isOnQuest 28568
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.41,10.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Executor Mortuus|r
    .accept 26965 >>Accept The Warchief Cometh
    .target Grand Executor Mortuus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.28,10.28
    >>Stand by for Warchief Garrosh Hellscream's arrival.
    .complete 26965,1 --Garrosh Hellscream
    .target Garrosh Hellscream
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.41,10.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Executor Mortuus|r
    .turnin 26965 >>Turn in The Warchief Cometh
    .accept 26989 >>Accept The Gilneas Liberation Front
    .target Grand Executor Mortuus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,56.27,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Apothecary Shana T'veen|r
    .accept 26995 >>Accept Guts and Gore
    .target High Apothecary Shana T'veen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,56.77,9.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Witherbloom|r
    .accept 26992 >>Accept Agony Abounds
    .target Apothecary Witherbloom
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,55.62,13.58,0
    .goto 21,55.62,13.58,40,0
    .goto 21,60.18,9.09,40,0
    .goto 21,61.55,9.84,40,0
    .goto 21,59.88,13.71,40,0
    .goto 21,55.47,21.94,40,0
    >>Kill |cRXP_ENEMY_Worgs|r and |cRXP_ENEMY_Ferocious Grizzled Bears|r. Loot them for |cRXP_LOOT_"Clean" Beast Guts|r
    >>Kill |cRXP_ENEMY_Worgen Renegades|r
    >>Pick up |cRXP_PICK_Ferocious Doomweed|r from the ground
    .complete 26995,1 --"Clean" Beast Guts (6)
    .complete 26989,1 --Worgen Renegade slain (10)
    .complete 26992,1 --Ferocious Doomweed (8)
    .mob Worg
    .mob Ferocious Grizzled Bear
    .mob Worgen Renegade
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.41,10.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Executor Mortuus|r
    .turnin 26989 >>Turn in The Gilneas Liberation Front
    .target Grand Executor Mortuus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,56.77,9.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Witherbloom|r
    .turnin 26992 >>Turn in Agony Abounds
    .target Apothecary Witherbloom
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,56.27,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Apothecary Shana T'veen|r
    .turnin 26995 >>Turn in Guts and Gore
    .accept 26998 >>Accept Iterating Upon Success
    .target High Apothecary Shana T'veen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.91,8.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bat Handler Maggotbreath|r
    .complete 26998,1 --Bat Handler Maggotbreath
    .target Bat Handler Maggotbreath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,73.24,17.51,0
    .goto 21,73.24,17.51,40,0
    .goto 21,75.87,20.68,40,0
    >>Kill |cRXP_ENEMY_Vile Fin Tidehunters|r and |cRXP_ENEMY_Vile Fin Oracles|r
    .complete 26998,2 --Vile Fin Tidehunter (8)
    .mob Vile Fin Tidehunter
    .mob Vile Fin Oracle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,56.27,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Apothecary Shana T'veen|r
    .turnin 26998 >>Turn in Iterating Upon Success
    .target High Apothecary Shana T'veen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,58.09,8.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Commander Belmont|r
    .accept 27039 >>Accept Dangerous Intentions
    .target Deathstalker Commander Belmont
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,53.85,12.94
    >>Click the |cRXP_PICK_Abandoned Outhouse|r
    .turnin 27039 >>Turn in Dangerous Intentions
    .accept 27045 >>Accept Waiting to Exsanguinate
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,53.29,12.56
    >>Enter the Ivar Cottage and find a suitable hiding place upstairs. Then eavesdrop on Lord Darius Crowley.
    .complete 27045,1 --Armoire
    .target Armoire
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,58.09,8.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Commander Belmont|r
    .turnin 27045 >>Turn in Waiting to Exsanguinate
    .accept 27056 >>Accept Belmont's Report
    .target Deathstalker Commander Belmont
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.89,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27056 >>Turn in Belmont's Report
    .accept 27065 >>Accept The Warchief's Fleet
    .unitscan Lady Sylvanas Windrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.02,21.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Hatchet|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27065 >>Turn in The Warchief's Fleet
    .accept 27069 >>Accept Steel Thunder
    .unitscan Admiral Hatchet
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,45.76,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Torok|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27073 >>Accept Give 'em Hell!
    .unitscan Warlord Torok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.79,20.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Wormcrud|r
    .accept 27082 >>Accept Playing Dirty
    .target Apothecary Wormcrud
step
    .goto 21,44.50,22.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Salty" Gorgar|r
    .target "Salty" Gorgar
    .home >>Set your Hearthstone to "Salty" Gorgar's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,40.20,29.63,0
    .goto 21,40.20,29.63,40,0
    .goto 21,37.92,27.33,40,0
    >>Kill |cRXP_ENEMY_Bloodfang Scavengers|r
    >>Click the |cRXP_PICK_Sea Dog Crate|r
    .complete 27073,1 --Bloodfang Scavenger (10)
    .complete 27069,1 --Sea Dog Crate
    .mob Bloodfang Scavenger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along25
    >>As you go: Kill |cRXP_ENEMY_Rabid Worgs|r and |cRXP_ENEMY_Giant Rabid Bears|r. Loot them for |cRXP_LOOT_Diseased Organ|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27082,1 --Diseased Organ (8)
    .mob Rabid Worg
    .mob Giant Rabid Bear
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.02,21.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Hatchet|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27069 >>Turn in Steel Thunder
    .unitscan Admiral Hatchet
step
    #label Along25
    .goto 21,45.76,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Torok|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27073 >>Turn in Give 'em Hell! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 27095 >>Accept Skitterweb Menace
    .unitscan Warlord Torok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,42.41,18.86,0
    .goto 21,42.41,18.86,40,0
    .goto 21,46.25,17.56,40,0
    .goto 21,45.74,27.17,40,0
    .goto 21,42.30,28.55,40,0
    .goto 21,38.06,22.68,40,0
    >>Kill |cRXP_ENEMY_Rabid Worgs|r and |cRXP_ENEMY_Giant Rabid Bears|r. Loot them for |cRXP_LOOT_Diseased Organ|r
    .complete 27082,1 --Diseased Organ (8)
    .mob Rabid Worg
    .mob Giant Rabid Bear
step
    #loop
    .goto 21,37.53,15.10,0
    .goto 21,37.53,15.10,40,0
    .goto 21,34.78,15.97,40,0
    .goto 21,35.13,11.43,40,0
    >>Kill |cRXP_ENEMY_Skitterweb Strikers|r, |cRXP_ENEMY_Skitterweb Spiderlings|r and |cRXP_ENEMY_Skitterweb Lurkers|r
    .complete 27095,1 --Skitterweb Striker (8)
    .mob Skitterweb Striker
    .mob Skitterweb Spiderling
    .mob Skitterweb Lurker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.79,20.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Wormcrud|r
    .turnin 27082 >>Turn in Playing Dirty
    .accept 27088 >>Accept It's Only Poisonous if You Ingest It
    .target Apothecary Wormcrud
step
    .goto 21,45.76,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Torok|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27095 >>Turn in Skitterweb Menace
    .unitscan Warlord Torok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.02,21.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Hatchet|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27093 >>Accept Lost in the Darkness
    .unitscan Admiral Hatchet
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,39.15,28.26
    >>Kill |cRXP_ENEMY_Forest Ettin|r
    .complete 27088,1 --Forest Ettin slain (1)
    .mob Forest Ettin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,36.37,18.31,0
    .goto 21,36.37,18.31,40,0
    .goto 21,35.46,13.36,40,0
    .goto 21,35.59,10.50,40,0
    >>Kill |cRXP_ENEMY_Webbed Victims|r and |cRXP_ENEMY_Orc Sea Dogs|r
    .complete 27093,1 --Webbed Victim (8)
    .mob Webbed Victim
    .mob Orc Sea Dog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,34.87,7.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27094 >>Accept Deeper into Darkness
    .target !
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,36.02,8.81
    >>Kill |cRXP_ENEMY_Skitterweb Matriarch|r
    .complete 27094,1 --Skitterweb Matriarch slain (1)
    .mob Skitterweb Matriarch
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.79,20.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Wormcrud|r
    .turnin 27088 >>Turn in It's Only Poisonous if You Ingest It
    .target Apothecary Wormcrud
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,45.76,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Torok|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27094 >>Turn in Deeper into Darkness
    .unitscan Warlord Torok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.02,21.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Hatchet|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27093 >>Turn in Lost in the Darkness
    .accept 27096 >>Accept Orcs are in Order
    .unitscan Admiral Hatchet
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.89,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27096 >>Turn in Orcs are in Order
    .accept 27097 >>Accept Rise, Forsaken
    .unitscan Lady Sylvanas Windrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,64.86,22.11,0
    .goto 21,64.86,22.11,40,0
    .goto 21,65.62,25.79,40,0
    >>Kill |cRXP_ENEMY_Hillsbrad Refugees|r
    .complete 27097,1 --Hillsbrad Refugee (8)
    .mob Hillsbrad Refugee
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.89,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27097 >>Turn in Rise, Forsaken
    .accept 27099 >>Accept No Escape
    .unitscan Lady Sylvanas Windrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,65.71,23.79
    >>Find the Refugee Leadership inside Fenris Keep.
    .complete 27099,1 --Magistrate Henry Maleb
    .target Magistrate Henry Maleb
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.89,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27099 >>Turn in No Escape
    .accept 27098 >>Accept Lordaeron
    .unitscan Lady Sylvanas Windrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.36,10.19
    >>Accompany Lady Sylvanas Windrunner to the Sepulcher in Silverpine Forest.
    .complete 27098,1 --Lady Sylvanas Windrunner (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.89,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27098 >>Turn in Lordaeron
    .unitscan Lady Sylvanas Windrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to "Salty" Gorgar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.02,21.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Hatchet|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27231 >>Accept Reinforcements from Fenris
    .unitscan Admiral Hatchet
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,54.16,33.48,0
    .goto 21,54.16,33.48,40,0
    .goto 21,56.16,33.65,40,0
    .goto 21,53.40,37.14,40,0
    >>Kill |cRXP_ENEMY_Hillsbrad Worgens|r
    .complete 27231,1 --Hillsbrad Worgen (10)
    .mob Hillsbrad Worgen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,44.89,47.25,0
    .goto 21,44.89,47.25,40,0
    .goto 21,44.65,50.28,40,0
    .goto 21,44.95,51.35,40,0
    .goto 21,46.30,51.28,40,0
    .goto 21,48.63,50.31,40,0
    .goto 21,48.94,52.19,40,0
    .goto 21,48.72,53.72,40,0
    .goto 21,48.26,55.84,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodfang Stalker|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27181 >>Accept Excising the Taint
    .unitscan Bloodfang Stalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,45.97,49.55,0
    .goto 21,45.97,49.55,40,0
    .goto 21,46.80,52.11,40,0
    .goto 21,48.72,53.72,40,0
    >>Kill |cRXP_ENEMY_Bloodfang Stalkers|r
    .complete 27181,1 --Bloodfang Stalker slain (10)
    .mob Bloodfang Stalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.89,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27181 >>Turn in Excising the Taint
    .accept 27180 >>Accept Honor the Dead
    .accept 27193 >>Accept Seek and Destroy
    .unitscan Lady Sylvanas Windrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.19,42.67
    >>Click the |cRXP_PICK_Yuriv's Tombstone|r
    .turnin 264 >>Turn in Until Death Do Us Part
    .isOnQuest 264
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,47.37,48.80,0
    .goto 21,47.37,48.80,40,0
    .goto 21,46.75,54.48,40,0
    >>Kill |cRXP_ENEMY_Caretaker Smithers|r and loot |cRXP_LOOT_Smithers' Logbook|r
    >>Kill |cRXP_ENEMY_Veteran Forsaken Troopers|r. Loot them for |cRXP_LOOT_Forsaken Insignia|r
    .complete 27193,1 --Smithers' Logbook (1)
    .complete 27180,1 --Forsaken Insignia (6)
    .mob Caretaker Smithers
    .mob Veteran Forsaken Trooper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.89,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27193 >>Turn in Seek and Destroy
    .turnin 27180 >>Turn in Honor the Dead
    .accept 27194 >>Accept Cornered and Crushed!
    .unitscan Lady Sylvanas Windrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,45.76,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Torok|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27226 >>Accept Hair of the Dog
    .unitscan Warlord Torok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,55.89,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Forteski|r
    .turnin 27194 >>Turn in Cornered and Crushed!
    .accept 27195 >>Accept Nowhere to Run
    .target Master Forteski
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,58.27,44.98
    >>Click the |cRXP_PICK_Dynamite|r
    .complete 27195,1 --Dynamite
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,57.08,34.66,0
    .goto 21,57.08,34.66,40,0
    .goto 21,54.50,32.99,40,0
    >>Interact with |cRXP_FRIENDLY_Orc Sea Dogs|r
    .complete 27226,1 --Orc Sea Dog (8)
    .target Orc Sea Dog
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,59.17,34.20
    >>Click the |cRXP_PICK_Horde Communication Panel|r
    .turnin 27231 >>Turn in Reinforcements from Fenris
    .accept 27232 >>Accept The Waters Run Red...
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,63.22,33.75,0
    .goto 21,63.22,33.75,40,0
    .goto 21,66.05,32.84,40,0
    >>Kill |cRXP_ENEMY_Hillsbrad Worgens|r
    .complete 27232,1 --Hillsbrad Worgen slain (50)
    .mob Hillsbrad Worgen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to "Salty" Gorgar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.02,21.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Hatchet|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27232 >>Turn in The Waters Run Red...
    .unitscan Admiral Hatchet
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,45.76,41.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Torok|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27226 >>Turn in Hair of the Dog
    .unitscan Warlord Torok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.89,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27195 >>Turn in Nowhere to Run
    .accept 27290 >>Accept To Forsaken Forward Command
    .unitscan Lady Sylvanas Windrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.82,66.59
    >>Escape the Ruins of Gilneas
    .complete 27438,1 --Escape the Ruins of Gilneas
    .isOnQuest 27438
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.78,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27438 >>Turn in The Great Escape
    .target Lady Sylvanas Windrunner
    .isOnQuest 27438
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.78,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27472 >>Accept Rise, Godfrey
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27438 --any of: The Great Escape
    .xp <13,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.36,64.96
    >>Stand by Lady Sylvanas Windrunner as she initiates Lord Godfrey and his men.
    .complete 27472,1 --Lord Godfrey
    .target Lord Godfrey
    .isOnQuest 27472
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27472 >>Turn in Rise, Godfrey
    .target Lady Sylvanas Windrunner
    .isOnQuest 27472
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27474 >>Accept Breaking the Barrier
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27472 --any of: Rise, Godfrey
    .xp <14,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.89,64.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daschla|r
    .accept 27475 >>Accept Unyielding Servitors
    .target Daschla
    .isQuestTurnedIn 27472 --any of: Rise, Godfrey
    .xp <14,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,56.43,66.84,0
    .goto 21,56.43,66.84,40,0
    .goto 21,57.28,61.50,40,0
    >>Kill |cRXP_ENEMY_Elemental Servitors|r and |cRXP_ENEMY_Aquarius the Unbounds|r. Loot them for |cRXP_LOOT_Servitor Core|r
    .complete 27475,1 --Servitor Core (6)
    .mob Elemental Servitor
    .mob Aquarius the Unbound
    .isOnQuest 27475
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,63.47,64.24
    >>Pick up |cRXP_PICK_Ambermill Codex|r from the ground
    .complete 27474,1 --Ambermill Codex (1)
    .isOnQuest 27474
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.89,64.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daschla|r
    .turnin 27475 >>Turn in Unyielding Servitors
    .target Daschla
    .isOnQuest 27475
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27474 >>Turn in Breaking the Barrier
    .target Lady Sylvanas Windrunner
    .isOnQuest 27474
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27476 >>Accept Dalar Dawnweaver
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27474 --Breaking the Barrier
    .isQuestTurnedIn 27475 --Unyielding Servitors
    .xp <14,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.08,43.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .accept 27484 >>Accept Only One May Enter
    .target Dalar Dawnweaver
    .isQuestTurnedIn 27478 --any of: Relios the Relic Keeper
    .xp <14,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.08,43.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 27476 >>Turn in Dalar Dawnweaver
    .target Dalar Dawnweaver
    .isOnQuest 27476
step
    .goto 21,47.08,43.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .accept 27483 >>Accept Practical Vengeance
    .accept 27478 >>Accept Relios the Relic Keeper << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Dalar Dawnweaver
    .isQuestTurnedIn 27476 --any of: Dalar Dawnweaver
    .xp <14,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.08,43.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 27478 >>Turn in Relios the Relic Keeper
    .target Dalar Dawnweaver
    .isQuestComplete 27478
step
    .goto 21,47.08,43.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar Dawnweaver|r
    .turnin 27483 >>Turn in Practical Vengeance
    .target Dalar Dawnweaver
    .isQuestComplete 27483
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27484 >>Turn in Only One May Enter
    .target Lady Sylvanas Windrunner
    .isOnQuest 27484
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27512 >>Accept Transdimensional Warfare: Chapter I
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27484 --any of: Only One May Enter
    .xp <14,1
step
    .goto 21,51.34,66.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .accept 27510 >>Accept A Wolf in Bear's Clothing
    .target High Warlord Cromush
    .isQuestTurnedIn 27484 --any of: Only One May Enter
    .xp <14,1
step
    #loop
    .goto 21,55.29,70.04,0
    .goto 21,55.29,70.04,40,0
    .goto 21,54.81,73.02,40,0
    .goto 21,55.35,77.52,40,0
    >>Kill |cRXP_ENEMY_Inconspicuous Bears|r
    .complete 27510,1 --Inconspicuous Bear slain (10)
    .mob Inconspicuous Bear
    .isOnQuest 27510
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,58.08,69.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambermill Dimensional Portal|r
    .turnin 27512 >>Turn in Transdimensional Warfare: Chapter I
    .target Ambermill Dimensional Portal
    .isOnQuest 27512
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,58.08,69.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambermill Dimensional Portal|r
    .accept 27513 >>Accept Transdimensional Warfare: Chapter II
    .target Ambermill Dimensional Portal
    .isQuestTurnedIn 27512 --any of: Transdimensional Warfare: Chapter I
    .xp <14,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,59.34,65.29,0
    .goto 21,59.34,65.29,40,0
    .goto 21,58.23,61.83,40,0
    .goto 21,62.69,63.47,40,0
    >>Kill |cRXP_ENEMY_Ambermill Watchers|r, |cRXP_ENEMY_Ambermill Witchaloks|r, |cRXP_ENEMY_Ambermill Protectors|r and |cRXP_ENEMY_Ambermill Warders|r
    .complete 27513,1 --Ambermill Watcher (8)
    .mob Ambermill Watcher
    .mob Ambermill Witchalok
    .mob Ambermill Protector
    .mob Ambermill Warder
    .isOnQuest 27513
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27513 >>Turn in Transdimensional Warfare: Chapter II
    .target Lady Sylvanas Windrunner
    .isOnQuest 27513
step
    .goto 21,51.34,66.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r
    .turnin 27510 >>Turn in A Wolf in Bear's Clothing
    .target High Warlord Cromush
    .isOnQuest 27510
step
    +|cRXP_WARN_That is all of Silverpine Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ruins of Gilneas|r: To Forsaken Forward Command << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_Azshara|r (about 0.7 levels of quests, starting around Assistant Greely). Completing this step loads the guide for Azshara --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Silverpine Forest is planned from level 20.|r Load its guide for level 20 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 11 - 21 Silverpine Forest
#subweight -11
#name 20-21 Silverpine Forest
--RouteBuilder:next
#next Zone Routes (Horde)\20-22 Hillsbrad Foothills: around High Executor Darthalia

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,57.16,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Warlord Cromush|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 28089 >>Accept Warchief's Command: Hillsbrad Foothills!
    .unitscan High Warlord Cromush
    .isQuestTurnedIn 26965 --any of: The Warchief Cometh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27601 >>Accept Cities in Dust
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27594 --any of: On Her Majesty's Secret Service
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27518 >>Accept Transdimensional Warfare: Chapter III
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27513 --any of: Transdimensional Warfare: Chapter II
    .xp <14,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,56.64,64.36
    >>Overload Archmage Ataeric with arcane power to bring down the Transdimensional Shield.
    .complete 27518,1 --Archmage Ataeric
    .target Archmage Ataeric
    .isOnQuest 27518
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27518 >>Turn in Transdimensional Warfare: Chapter III
    .target Lady Sylvanas Windrunner
    .isOnQuest 27518
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27542 >>Accept Taking the Battlefront
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27518 --any of: Transdimensional Warfare: Chapter III
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,51.90,65.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27542 >>Turn in Taking the Battlefront
    .target Lady Sylvanas Windrunner
    .isOnQuest 27542
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 27550 >>Accept Pyrewood's Fall
    .target Lord Godfrey
    .isQuestTurnedIn 27542 --any of: Taking the Battlefront
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Ashbury|r
    .accept 27547 >>Accept Of No Consequence
    .target Baron Ashbury
    .isQuestTurnedIn 27542 --any of: Taking the Battlefront
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Walden|r
    .accept 27548 >>Accept Lessons in Fear
    .target Lord Walden
    .isQuestTurnedIn 27542 --any of: Taking the Battlefront
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,46.19,73.44
    >>Use the Bundle of Torches to torch the Pyrewood Town Hall, Pyrewood Inn and Pyrewood Chapel.
    .complete 27550,2 --Pyrewood Torch Target 002
    .target Pyrewood Torch Target 002
    .isOnQuest 27550
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,44.99,71.66
    >>Use the Bundle of Torches to torch the Pyrewood Town Hall, Pyrewood Inn and Pyrewood Chapel.
    .complete 27550,1 --Pyrewood Torch Target 001
    .target Pyrewood Torch Target 001
    .isOnQuest 27550
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,43.84,73.16
    >>Use the Bundle of Torches to torch the Pyrewood Town Hall, Pyrewood Inn and Pyrewood Chapel.
    .complete 27550,3 --Pyrewood Torch Target 003
    .target Pyrewood Torch Target 003
    .isOnQuest 27550
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,44.22,73.36,0
    .goto 21,44.22,73.36,40,0
    .goto 21,46.58,73.60,40,0
    >>Kill |cRXP_ENEMY_7th Legion Scouts|r
    .complete 27548,1 --7th Legion Scout slain (12)
    .mob 7th Legion Scout
    .isOnQuest 27548
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,44.42,74.07,0
    .goto 21,44.42,74.07,40,0
    .goto 21,46.81,73.42,40,0
    >>Interact with |cRXP_FRIENDLY_Cowering Troopers|r
    .complete 27547,1 --Cowering Trooper (8)
    .target Cowering Trooper
    .isOnQuest 27547
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Walden|r
    .turnin 27548 >>Turn in Lessons in Fear
    .target Lord Walden
    .isOnQuest 27548
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 27550 >>Turn in Pyrewood's Fall
    .target Lord Godfrey
    .isOnQuest 27550
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Ashbury|r
    .turnin 27547 >>Turn in Of No Consequence
    .target Baron Ashbury
    .isOnQuest 27547
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Walden|r
    .accept 27577 >>Accept 7th Legion Battle Plans
    .target Lord Walden
    .isQuestTurnedIn 27547 --Of No Consequence
    .isQuestTurnedIn 27548 --Lessons in Fear
    .isQuestTurnedIn 27550 --Pyrewood's Fall
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 27575 >>Accept From the Belly of the Beast
    .target Lord Godfrey
    .isQuestTurnedIn 27574 --any of: I Never Forget a Face
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 27580 >>Accept Sowing Discord
    .target Lord Godfrey
    .isQuestTurnedIn 27547 --Of No Consequence
    .isQuestTurnedIn 27548 --Lessons in Fear
    .isQuestTurnedIn 27550 --Pyrewood's Fall
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop27574x1
    >>|cRXP_LOOT_Partially Digested Head|r can drop from |cRXP_ENEMY_Marsh Crocolisk|r. Use it to start the quest if you get one
    .collect 61505,1,27574 --Partially Digested Head (1)
    .accept 27574 >>Accept I Never Forget a Face
    .use 61505
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,46.47,77.22,0
    .goto 21,46.47,77.22,40,0
    .goto 21,44.16,77.66,40,0
    .goto 21,47.44,83.08,40,0
    >>Kill |cRXP_ENEMY_Marsh Crocolisk|r and loot |cRXP_LOOT_Dempsey's Torso|r
    .complete 27575,1 --Dempsey's Torso (1)
    .mob Marsh Crocolisk
    .isOnQuest 27575
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,46.47,77.22,0
    .goto 21,46.47,77.22,40,0
    .goto 21,44.16,77.66,40,0
    .goto 21,47.44,83.08,40,0
    >>Kill |cRXP_ENEMY_Marsh Crocolisk|r and loot |cRXP_LOOT_Dempsey's Appendages|r
    .complete 27575,2 --Dempsey's Appendages (1)
    .mob Marsh Crocolisk
    .isOnQuest 27575
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop27574x1
    #loop
    .goto 21,46.47,77.22,0
    .goto 21,46.47,77.22,40,0
    .goto 21,44.16,77.66,40,0
    .goto 21,47.44,83.08,40,0
    >>Kill |cRXP_ENEMY_Marsh Crocolisk|r and loot |cRXP_LOOT_Dempsey's Giblets|r
    .complete 27575,3 --Dempsey's Giblets (1)
    .mob Marsh Crocolisk
    .isOnQuest 27575
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,45.32,84.45
    >>Accompany Lady Sylvanas Windrunner to the Battlefield and defeat the Alliance!
    .complete 27601,1 --Cities in Dust Quest Credit
    .target Cities in Dust Quest Credit
    .isOnQuest 27601
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,45.32,84.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27601 >>Turn in Cities in Dust
    .target Lady Sylvanas Windrunner
    .isOnQuest 27601
step
    .goto 21,45.32,84.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27746 >>Accept Empire of Dirt
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27601 --any of: Cities in Dust
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 21,43.07,82.26,0
    .goto 21,43.07,82.26,40,0
    .goto 21,42.71,78.16,40,0
    >>Kill |cRXP_ENEMY_Dwarven Infantries|r and |cRXP_ENEMY_General Marstones|r. Loot them for |cRXP_LOOT_7th Legion Battle Plan|r
    .complete 27577,1 --7th Legion Battle Plan (1)
    .mob Dwarven Infantry
    .mob General Marstone
    .isOnQuest 27577
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,42.25,78.99
    >>Kill |cRXP_ENEMY_General Marstone|r
    .complete 27580,1 --General Marstone slain (1)
    .mob General Marstone
    .isOnQuest 27580
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 27575 >>Turn in From the Belly of the Beast
    .target Lord Godfrey
    .isOnQuest 27575
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Walden|r
    .turnin 27577 >>Turn in 7th Legion Battle Plans
    .target Lord Walden
    .isOnQuest 27577
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 27580 >>Turn in Sowing Discord
    .target Lord Godfrey
    .isOnQuest 27580
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 21,47.91,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 27574 >>Turn in I Never Forget a Face
    .target Lord Godfrey
    .isOnQuest 27574
step
    +|cRXP_WARN_End of the Silverpine Forest route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Empire of Dirt
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 1.3 levels of quests, starting around High Executor Darthalia; 1 quest from here hands in there). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
]])
