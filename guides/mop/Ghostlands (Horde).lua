-- 10-21 Ghostlands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 10, 18, 22).
-- Split into 3 guides, listed under "10 - 23 Ghostlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Ghostlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 23 Ghostlands
#subweight -10
#name 10-16 Ghostlands
--RouteBuilder:next
#next Zone Routes (Horde)\14-16 Azshara: around Assistant Greely

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9148 >>Turn in Delivery to Tranquillien
    .target Arcanist Vandril
    .isOnQuest 9148
step
    .goto 95,49.16,30.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blacksmith Frances|r
    .target Blacksmith Frances
    .home >>Set your Hearthstone to Blacksmith Frances's inn
step
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .accept 9329 >>Accept The Forsaken << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .accept 9327 >>Accept The Forsaken << BloodElf
    .target Arcanist Vandril
step
    .goto 95,44.77,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Mavren|r
    .turnin 9329 >>Turn in The Forsaken << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .turnin 9327 >>Turn in The Forsaken << BloodElf
    .accept 9758 >>Accept Return to Arcanist Vandril << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target High Executor Mavren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9758 >>Turn in Return to Arcanist Vandril
    .accept 9138 >>Accept Suncrown Village
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,47.24,28.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathis Tomber|r
    .accept 9152 >>Accept Tomber's Supplies
    .target Rathis Tomber
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,60.37,16.18,0
    .goto 95,60.37,16.18,40,0
    .goto 95,58.27,10.08,40,0
    .goto 95,63.14,9.30,40,0
    >>Kill |cRXP_ENEMY_Nerubis Guards|r
    .complete 9138,1 --Nerubis Guard slain (10)
    .mob Nerubis Guard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,69.40,15.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Valanna|r
    .accept 9143 >>Accept Dealing with Zeb'Sora
    .target Ranger Valanna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,74.39,12.14,0
    .goto 95,74.39,12.14,40,0
    .goto 95,77.03,9.79,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Rippers|r and |cRXP_ENEMY_Shadowpine Witches|r. Loot them for |cRXP_LOOT_Zeb'Sora Troll Ear|r
    .complete 9143,1 --Zeb'Sora Troll Ear (6)
    .mob Shadowpine Ripper
    .mob Shadowpine Witch
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
step
    #completewith next
    .zone 95 >>Leave Silvermoon City for Ghostlands
    .zoneskip 95
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Blacksmith Frances's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 28560 >>Turn in Warchief's Command: Ghostlands!
    .turnin 9138 >>Turn in Suncrown Village
    .accept 9139 >>Accept Goldenmist Village
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,33.56,26.53
    >>Pick up |cRXP_PICK_Rathis Tomber's Supplies|r from the ground
    .complete 9152,1 --Rathis Tomber's Supplies (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,29.01,15.17,0
    .goto 95,29.01,15.17,40,0
    .goto 95,26.33,14.09,40,0
    .goto 95,25.39,17.40,40,0
    >>Kill |cRXP_ENEMY_Quel'dorei Wraiths|r
    >>Kill |cRXP_ENEMY_Quel'dorei Ghosts|r
    .complete 9139,2 --Quel'dorei Wraith slain (4)
    .complete 9139,1 --Quel'dorei Ghost slain (6)
    .mob Quel'dorei Wraith
    .mob Quel'dorei Ghost
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9139 >>Turn in Goldenmist Village
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,47.24,28.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathis Tomber|r
    .turnin 9152 >>Turn in Tomber's Supplies
    .target Rathis Tomber
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,57.55,14.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Blood Elf|r
    .accept 9315 >>Accept Anok'suten
    .target Dying Blood Elf
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,59.62,11.11
    >>Kill |cRXP_ENEMY_Anok'suten|r
    .complete 9315,1 --Anok'suten slain (1)
    .mob Anok'suten
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9315 >>Turn in Anok'suten
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,47.66,34.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renzithen|r
    .accept 9149 >>Accept The Plagued Coast
    .target Apothecary Renzithen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,21.70,34.15,0
    .goto 95,21.70,34.15,40,0
    .goto 95,18.57,32.82,40,0
    >>Kill |cRXP_ENEMY_Zombified Grimscales|r and |cRXP_ENEMY_Withered Grimscales|r. Loot them for |cRXP_LOOT_Plagued Murloc Spine|r
    .complete 9149,1 --Plagued Murloc Spine (6)
    .mob Zombified Grimscale
    .mob Withered Grimscale
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,47.66,34.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renzithen|r
    .turnin 9149 >>Turn in The Plagued Coast
    .target Apothecary Renzithen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.21,29.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Krenn'an|r
    .accept 9274 >>Accept Spirits of the Drowned
    .target Ranger Krenn'an
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.49,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Sedina|r
    .accept 9158 >>Accept Bearers of the Plague
    .target Farstrider Sedina
    .xp <11,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along23
    >>As you go: Kill |cRXP_ENEMY_Ravening Apparitions|r. Kill |cRXP_ENEMY_Vengeful Apparitions|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9274,1 --Ravening Apparition slain (8)
    .complete 9274,2 --Vengeful Apparition slain (8)
    .mob Ravening Apparition
    .mob Vengeful Apparition
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along23
    .goto 95,69.40,15.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Valanna|r
    .turnin 9143 >>Turn in Dealing with Zeb'Sora
    .accept 9146 >>Accept Report to Captain Helios
    .target Ranger Valanna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,70.65,14.55,0
    .goto 95,70.65,14.55,40,0
    .goto 95,70.33,19.85,40,0
    .goto 95,70.82,23.71,40,0
    >>Kill |cRXP_ENEMY_Ravening Apparitions|r
    >>Kill |cRXP_ENEMY_Vengeful Apparitions|r
    .complete 9274,1 --Ravening Apparition slain (8)
    .complete 9274,2 --Vengeful Apparition slain (8)
    .mob Ravening Apparition
    .mob Vengeful Apparition
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.29,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geranis Whitemorn|r
    .accept 9157 >>Accept Forgotten Rituals
    .target Geranis Whitemorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along28
    >>As you go: Loot the |cRXP_PICK_Glistening Muds|r for |cRXP_LOOT_Wavefront Medallion|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9157,1 --Wavefront Medallion (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.21,29.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Krenn'an|r
    .turnin 9274 >>Turn in Spirits of the Drowned
    .target Ranger Krenn'an
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.49,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Sedina|r
    .accept 9158 >>Accept Bearers of the Plague
    .target Farstrider Sedina
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along28
    .goto 95,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .turnin 9146 >>Turn in Report to Captain Helios
    .target Captain Helios
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,71.99,28.39,0
    .goto 95,71.99,28.39,40,0
    .goto 95,73.43,22.85,40,0
    >>Loot the |cRXP_PICK_Glistening Muds|r for |cRXP_LOOT_Wavefront Medallion|r
    .complete 9157,1 --Wavefront Medallion (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.29,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geranis Whitemorn|r
    .turnin 9157 >>Turn in Forgotten Rituals
    .accept 9174 >>Accept Vanquishing Aquantion
    .target Geranis Whitemorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,71.32,14.95
    >>Kill |cRXP_ENEMY_Aquantion|r
    .complete 9174,1 --Aquantion slain (1)
    .mob Aquantion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.29,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geranis Whitemorn|r
    .turnin 9174 >>Turn in Vanquishing Aquantion
    .target Geranis Whitemorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .accept 9140 >>Accept Windrunner Village
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,20.09,40.92,0
    .goto 95,20.09,40.92,40,0
    .goto 95,17.01,43.69,40,0
    .goto 95,21.49,46.26,40,0
    >>Kill |cRXP_ENEMY_Stonewing Slayers|r. Loot them for |cRXP_LOOT_Gargoyle Fragment|r
    >>Kill |cRXP_ENEMY_Phantasmal Seekers|r. Loot them for |cRXP_LOOT_Phantasmal Substance|r
    .complete 9140,2 --Gargoyle Fragment (4)
    .complete 9140,1 --Phantasmal Substance (6)
    .mob Stonewing Slayer
    .mob Phantasmal Seeker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Blacksmith Frances's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9140 >>Turn in Windrunner Village
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 15 >>Grind to level 15 (Spinal Dust needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .accept 9218 >>Accept Spinal Dust
    .target Magistrix Aminel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,40.75,23.48,0
    .goto 95,40.75,23.48,40,0
    .goto 95,42.69,18.81,40,0
    >>Kill |cRXP_ENEMY_Dreadbone Skeletons|r, |cRXP_ENEMY_Dreadbone Sentinels|r, |cRXP_ENEMY_Deathcage Scryers|r and |cRXP_ENEMY_Deathcage Sorcerers|r. Loot them for |cRXP_LOOT_Spinal Dust|r
    .complete 9218,1 --Spinal Dust (10)
    .mob Dreadbone Skeleton
    .mob Dreadbone Sentinel
    .mob Deathcage Scryer
    .mob Deathcage Sorcerer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .turnin 9218 >>Turn in Spinal Dust
    .target Magistrix Aminel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,68.63,32.74,0
    .goto 95,68.63,32.74,40,0
    .goto 95,69.81,37.13,40,0
    >>Kill |cRXP_ENEMY_Ghostclaw Lynxes|r
    .complete 9158,1 --Ghostclaw Lynx slain (10)
    .mob Ghostclaw Lynx
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.49,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Sedina|r
    .turnin 9158 >>Turn in Bearers of the Plague
    .accept 9159 >>Accept Curbing the Plague
    .target Farstrider Sedina
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,72.87,37.35,0
    .goto 95,72.87,37.35,40,0
    .goto 95,67.70,39.48,40,0
    .goto 95,65.71,46.27,40,0
    .goto 95,66.96,44.21,40,0
    >>Kill |cRXP_ENEMY_Vampiric Mistbats|r
    .complete 9159,1 --Vampiric Mistbat slain (10)
    .mob Vampiric Mistbat
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .accept 9216 >>Accept Rotting Hearts
    .target Magistrix Aminel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,39.66,30.84,0
    .goto 95,39.66,30.84,40,0
    .goto 95,39.20,33.59,40,0
    .goto 95,38.27,38.52,40,0
    .goto 95,38.29,42.51,40,0
    >>Kill |cRXP_ENEMY_Risen Hungerers|r and |cRXP_ENEMY_Risen Stalkers|r. Loot them for |cRXP_LOOT_Rotting Heart|r
    .complete 9216,1 --Rotting Heart (10)
    .mob Risen Hungerer
    .mob Risen Stalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,34.45,40.47,0
    .goto 95,34.45,40.47,40,0
    .goto 95,29.40,38.79,40,0
    .goto 95,27.70,41.15,40,0
    >>Kill |cRXP_ENEMY_Spindleweb Lurkers|r
    .complete 9159,2 --Spindleweb Lurker slain (8)
    .mob Spindleweb Lurker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Blacksmith Frances's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .turnin 9216 >>Turn in Rotting Hearts
    .target Magistrix Aminel
step << BloodElf Mage
    .xp 15 >>Grind to level 15 (Arcane Reavers needs it)
step << BloodElf Mage
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .accept 9487 >>Accept Arcane Reavers
    .target Arcanist Vandril
step << BloodElf Mage
    #loop
    .goto 95,77.05,20.88,0
    .goto 95,77.05,20.88,40,0
    .goto 95,79.38,18.87,40,0
    >>Kill |cRXP_ENEMY_Arcane Reavers|r. Loot them for |cRXP_LOOT_Arcane Fragment|r
    .complete 9487,1 --Arcane Fragment (10)
    .mob Arcane Reaver
step << BloodElf Mage
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9487 >>Turn in Arcane Reavers
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .accept 9282 >>Accept The Farstrider Enclave
    .target Magister Kaendris
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.49,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Sedina|r
    .turnin 9159 >>Turn in Curbing the Plague
    .target Farstrider Sedina
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Vynna|r
    .turnin 9282 >>Turn in The Farstrider Enclave
    .accept 9161 >>Accept The Traitor's Shadow
    .target Ranger Vynna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,79.64,17.70
    >>Click the |cRXP_PICK_Dusty Journal|r
    .turnin 9161 >>Turn in The Traitor's Shadow
    .accept 9162 >>Accept Hints of the Past
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Vynna|r
    .turnin 9162 >>Turn in Hints of the Past
    .accept 9172 >>Accept Report to Magister Kaendris
    .target Ranger Vynna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .turnin 9172 >>Turn in Report to Magister Kaendris
    .target Magister Kaendris
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dame Auriferous|r
    .accept 9163 >>Accept Into Occupied Territory
    .target Dame Auriferous
    .isQuestTurnedIn 9160 --any of: Investigate An'daroth
    .xp <11,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 14 >>Grind to level 14 (Troll Juju needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,44.75,32.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Maltendis|r
    .accept 9199 >>Accept Troll Juju
    .target Deathstalker Maltendis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,56.43,24.40,0
    .goto 95,56.43,24.40,40,0
    .goto 95,59.93,30.40,40,0
    .goto 95,62.78,29.37,40,0
    >>Kill |cRXP_ENEMY_Mummified Headhunters|r and |cRXP_ENEMY_Shadowpine Oracles|r. Loot them for |cRXP_LOOT_Troll Juju|r
    .complete 9199,1 --Troll Juju (8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,44.75,32.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Maltendis|r
    .turnin 9199 >>Turn in Troll Juju
    .target Deathstalker Maltendis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,44.84,32.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Valwyn|r
    .accept 9193 >>Accept Investigate the Amani Catacombs
    .target Advisor Valwyn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,10.43,22.59
    >>Pick up |cRXP_PICK_Night Elf Plans: Scrying on the Sin'dorei|r from the ground
    .complete 9163,3 --Night Elf Plans: Scrying on the Sin'dorei (1)
    .isOnQuest 9163
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,12.80,25.08
    >>Pick up |cRXP_PICK_Night Elf Plans: An'owyn|r from the ground
    .complete 9163,2 --Night Elf Plans: An'owyn (1)
    .isOnQuest 9163
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,13.69,26.84
    >>Pick up |cRXP_PICK_Night Elf Plans: An'daroth|r from the ground
    .complete 9163,1 --Night Elf Plans: An'daroth (1)
    .isOnQuest 9163
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vor'el|r
    .accept 9281 >>Accept Clearing the Way
    .target Apprentice Vor'el
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,48.95,63.94,0
    .goto 95,48.95,63.94,40,0
    .goto 95,47.42,68.41,40,0
    .goto 95,42.24,62.87,40,0
    >>Kill |cRXP_ENEMY_Ghostclaw Ravagers|r
    >>Kill |cRXP_ENEMY_Greater Spindlewebs|r
    .complete 9281,2 --Ghostclaw Ravager slain (10)
    .complete 9281,1 --Greater Spindleweb slain (10)
    .mob Ghostclaw Ravager
    .mob Greater Spindleweb
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vor'el|r
    .turnin 9281 >>Turn in Clearing the Way
    .target Apprentice Vor'el
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,62.93,32.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Lilatha|r
    .accept 9212 >>Accept Escape from the Catacombs
    .target Ranger Lilatha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.24,30.21
    >>Escort Ranger Lilatha back to the Farstrider Enclave
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .turnin 9212 >>Turn in Escape from the Catacombs
    .target Captain Helios
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.33,31.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Solanna|r
    .accept 9276 >>Accept Attack on Zeb'Tela
    .target Farstrider Solanna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,78.99,35.45,0
    .goto 95,78.99,35.45,40,0
    .goto 95,77.66,38.86,40,0
    .goto 95,80.91,39.04,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Headhunters|r
    >>Kill |cRXP_ENEMY_Shadowpine Shadowcasters|r
    .complete 9276,2 --Shadowpine Headhunter slain (8)
    .complete 9276,1 --Shadowpine Shadowcaster slain (8)
    .mob Shadowpine Headhunter
    .mob Shadowpine Shadowcaster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.33,31.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Solanna|r
    .turnin 9276 >>Turn in Attack on Zeb'Tela
    .target Farstrider Solanna
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along72
    >>As you go: Click the |cRXP_PICK_Mummified Troll Remains|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9193,1 --Mummified Troll Remains
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along72
    .goto 95,62.91,30.98
    >>Investigate the Amani Catacombs
    .complete 9193,2 --Investigate the Amani Catacombs
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,61.85,29.61,0
    .goto 95,61.85,29.61,40,0
    .goto 95,59.08,28.35,40,0
    >>Click the |cRXP_PICK_Mummified Troll Remains|r
    .complete 9193,1 --Mummified Troll Remains
step << BloodElf Mage
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .accept 9488 >>Accept A Simple Robe
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,44.84,32.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Valwyn|r
    .turnin 9193 >>Turn in Investigate the Amani Catacombs
    .target Advisor Valwyn
step
    .goto 95,44.77,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Mavren|r
    .accept 9177 >>Accept Journey to Undercity << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .accept 9180 >>Accept Journey to Undercity << BloodElf
    .target High Executor Mavren
    .isQuestTurnedIn 9175 --any of: The Lady's Necklace
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dame Auriferous|r
    .turnin 9163 >>Turn in Into Occupied Territory
    .target Dame Auriferous
    .isOnQuest 9163
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dame Auriferous|r
    .accept 9166 >>Accept Deliver the Plans to An'telas
    .target Dame Auriferous
    .isQuestTurnedIn 9163 --any of: Into Occupied Territory
    .xp <11,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Sylastor|r
    .turnin 9166 >>Turn in Deliver the Plans to An'telas
    .target Magister Sylastor
    .isOnQuest 9166
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Sylastor|r
    .accept 9169 >>Accept Deactivate An'owyn
    .target Magister Sylastor
    .isQuestTurnedIn 9166 --any of: Deliver the Plans to An'telas
    .xp <11,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .accept 9176 >>Accept The Twin Ziggurats
    .target Magister Kaendris
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,57.36,65.30,0
    .goto 95,57.36,65.30,40,0
    .goto 95,58.73,66.09,40,0
    >>Kill |cRXP_ENEMY_Sentinel Infiltrator|r and loot |cRXP_LOOT_Crystal Controlling Orb|r
    .collect 23191,1,9169,1 --Crystal Controlling Orb (1)
    .mob Sentinel Infiltrator
    .isOnQuest 9169
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,58.17,65.14
    >>Click the |cRXP_PICK_Night Elf Moon Crystal|r
    .complete 9169,1 --Night Elf Moon Crystal
    .isOnQuest 9169
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,40.36,49.76
    >>Open the |cRXP_PICK_Worn Chest|r. Loot it for |cRXP_LOOT_Stone of Flame|r
    .complete 9176,1 --Stone of Flame (1)
step
    .goto 95,34.30,47.61
    >>Open the |cRXP_PICK_Dented Chest|r. Loot it for |cRXP_LOOT_Stone of Light|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Loot the |cRXP_PICK_Battered Chests|r for |cRXP_LOOT_Linen Cloth|r << BloodElf Mage
    .complete 9176,2 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Stone of Light (1)
    .complete 9488,1 << BloodElf Mage --Linen Cloth (15)
step << BloodElf Mage
    #loop
    .goto 95,32.87,41.85,0
    .goto 95,32.87,41.85,40,0
    .goto 95,34.26,38.71,40,0
    >>Kill |cRXP_ENEMY_Spindleweb Spiders|r, |cRXP_ENEMY_Spindleweb Lurkers|r and |cRXP_ENEMY_Greater Spindlewebs|r. Loot them for |cRXP_LOOT_Spindleweb Silk Gland|r
    .complete 9488,2 --Spindleweb Silk Gland (1)
    .mob Spindleweb Spider
    .mob Spindleweb Lurker
    .mob Greater Spindleweb
step << BloodElf Mage
    #completewith next
    .hs >>Hearth to Blacksmith Frances's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << BloodElf Mage
    .goto 95,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9488 >>Turn in A Simple Robe
    .target Arcanist Vandril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .turnin 9176 >>Turn in The Twin Ziggurats
    .target Magister Kaendris
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Sylastor|r
    .turnin 9169 >>Turn in Deactivate An'owyn
    .target Magister Sylastor
    .isOnQuest 9169
step << BloodElf
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Turn in Fly to Silvermoon City
    .target Sathren Azuredawn
    .isOnQuest 9133
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .accept 9134 >>Accept Skymistress Gloaming
    .target Sathren Azuredawn
    .isQuestTurnedIn 9133 --any of: Fly to Silvermoon City
    .xp <5,1
step
    +|cRXP_WARN_That is all of Ghostlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Journey to Undercity << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Undercity|r: Journey to Undercity << BloodElf
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_Azshara|r (about 0.7 levels of quests, starting around Assistant Greely). Completing this step loads the guide for Azshara --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Ghostlands is planned from level 18.|r Load its guide for level 18 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 23 Ghostlands
#subweight -10
#name 18-20 Ghostlands
--RouteBuilder:next
#next Zone Routes (Horde)\20-22 Hillsbrad Foothills: around High Executor Darthalia

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .accept 9214 >>Accept Shadowpine Weaponry
    .target Captain Helios
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.23,31.15
    >>Click the |cRXP_PICK_Wanted Poster: Kel'gash the Wicked|r
    .accept 9215 >>Accept Bring Me Kel'gash's Head!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.33,31.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Solanna|r
    .accept 9277 >>Accept Assault on Zeb'Nowa
    .target Farstrider Solanna
    .isQuestTurnedIn 9276 --any of: Attack on Zeb'Tela
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Venustus|r
    .accept 9275 >>Accept A Little Dash of Seasoning
    .target Apothecary Venustus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,76.89,41.61,0
    .goto 95,76.89,41.61,40,0
    .goto 95,75.14,44.62,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Headhunters|r. Loot them for |cRXP_LOOT_Headhunter Axe|r
    >>Kill |cRXP_ENEMY_Shadowpine Shadowcasters|r. Loot them for |cRXP_LOOT_Shadowcaster Mace|r
    .complete 9214,1 --Headhunter Axe (3)
    .complete 9214,2 --Shadowcaster Mace (3)
    .mob Shadowpine Headhunter
    .mob Shadowpine Shadowcaster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along6
    >>As you go: Kill |cRXP_ENEMY_Shadowpine Hexxers|r. Loot them for |cRXP_LOOT_Hexxer Stave|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9214,4 --Hexxer Stave (3)
    .mob Shadowpine Hexxer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,68.65,52.28,0
    .goto 95,68.65,52.28,40,0
    .goto 95,68.04,57.17,40,0
    .goto 95,65.59,59.92,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Catlords|r. Loot them for |cRXP_LOOT_Catlord Claws|r
    .complete 9214,3 --Catlord Claws (3)
    .mob Shadowpine Catlord
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along6
    #loop
    .goto 95,68.04,57.17,0
    .goto 95,68.04,57.17,40,0
    .goto 95,65.59,59.92,40,0
    .goto 95,68.65,52.28,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Catlords|r
    .complete 9277,1 --Shadowpine Catlord slain (10)
    .mob Shadowpine Catlord
    .isOnQuest 9277
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along8
    >>As you go: Click the |cRXP_PICK_Fresh Fish Rack|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9275,3 --Fresh Fish Rack
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,67.79,55.19,0
    .goto 95,67.79,55.19,40,0
    .goto 95,67.75,58.22,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Hexxers|r. Loot them for |cRXP_LOOT_Hexxer Stave|r
    .complete 9214,4 --Hexxer Stave (3)
    .mob Shadowpine Hexxer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along8
    #loop
    .goto 95,67.79,55.19,0
    .goto 95,67.79,55.19,40,0
    .goto 95,67.75,58.22,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Hexxers|r
    .complete 9277,2 --Shadowpine Hexxer slain (10)
    .mob Shadowpine Hexxer
    .isOnQuest 9277
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,68.24,57.78
    >>Click the |cRXP_PICK_Fresh Fish Rack|r
    .complete 9275,3 --Fresh Fish Rack
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,65.11,66.74
    >>Click the |cRXP_PICK_Raw Meat Rack|r
    .complete 9275,1 --Raw Meat Rack
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,63.03,74.99
    >>Click the |cRXP_PICK_Smoked Meat Rack|r
    .complete 9275,2 --Smoked Meat Rack
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,65.29,79.46
    >>Kill |cRXP_ENEMY_Kel'gash the Wicked|r and loot |cRXP_LOOT_Head of Kel'gash the Wicked|r
    .complete 9215,1 --Head of Kel'gash the Wicked (1)
    .mob Kel'gash the Wicked
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Venustus|r
    .turnin 9275 >>Turn in A Little Dash of Seasoning
    .target Apothecary Venustus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.33,31.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Solanna|r
    .turnin 9277 >>Turn in Assault on Zeb'Nowa
    .target Farstrider Solanna
    .isOnQuest 9277
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .turnin 9215 >>Turn in Bring Me Kel'gash's Head!
    .turnin 9214 >>Turn in Shadowpine Weaponry
    .target Captain Helios
step
    .goto 95,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kalarin|r
    .target Innkeeper Kalarin
    .home >>Set your Hearthstone to Innkeeper Kalarin's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,48.35,31.67
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9156 >>Accept Wanted: Knucklerot and Luzran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Darenis|r
    .accept 9151 >>Accept The Sanctum of the Sun
    .target Magister Darenis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Idonis|r
    .turnin 9151 >>Turn in The Sanctum of the Sun
    .accept 9220 >>Accept War on Deatholme
    .target Magister Idonis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .accept 9167 >>Accept The Traitor's Destruction
    .target Magister Kaendris
    .isQuestTurnedIn 9176 --any of: The Twin Ziggurats
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along21
    >>As you go: Kill |cRXP_ENEMY_Wailers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9220,3 --Wailer slain (6)
    .mob Wailer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along21
    #loop
    .goto 95,38.23,76.64,0
    .goto 95,38.23,76.64,40,0
    .goto 95,39.40,79.61,40,0
    >>Kill |cRXP_ENEMY_Nerubis Centurions|r
    .complete 9220,2 --Nerubis Centurion slain (6)
    .mob Nerubis Centurion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 95,33.23,77.99,0
    .goto 95,33.23,77.99,40,0
    .goto 95,32.31,76.48,40,0
    .goto 95,29.58,79.85,40,0
    >>Kill |cRXP_ENEMY_Wailers|r
    >>Kill |cRXP_ENEMY_Eye of Dar'Khans|r
    .complete 9220,3 --Wailer slain (6)
    .complete 9220,1 --Eye of Dar'Khan slain (5)
    .mob Wailer
    .mob Eye of Dar'Khan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Idonis|r
    .turnin 9220 >>Turn in War on Deatholme
    .accept 9170 >>Accept Dar'Khan's Lieutenants
    .target Magister Idonis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,54.83,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Janeda|r
    .accept 9877 >>Accept A Restorative Draught
    .target Arcanist Janeda
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,47.66,34.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renzithen|r
    .turnin 9877 >>Turn in A Restorative Draught
    .accept 9164 >>Accept Captives at Deatholme
    .target Apothecary Renzithen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,41.07,47.36
    >>Kill |cRXP_ENEMY_Knucklerot|r and loot |cRXP_LOOT_Knucklerot's Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,34.33,49.96
    >>Kill |cRXP_ENEMY_Luzran|r and loot |cRXP_LOOT_Luzran's Head|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along28
    >>As you go: Kill |cRXP_ENEMY_Jurion the Deceiver|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9170,3 --Jurion the Deceiver slain (1)
    .mob Jurion the Deceiver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along28
    .goto 95,32.13,73.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Enith|r
    .complete 9164,1 --Apothecary Enith
    .target Apothecary Enith
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,32.10,74.46
    >>Kill |cRXP_ENEMY_Jurion the Deceiver|r
    .complete 9170,3 --Jurion the Deceiver slain (1)
    .mob Jurion the Deceiver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,33.04,81.26
    >>Kill |cRXP_ENEMY_Dar'Khan Drathir|r and loot |cRXP_LOOT_Dar'Khan's Head|r
    .complete 9167,1 --Dar'Khan's Head (1)
    .mob Dar'Khan Drathir
    .isOnQuest 9167
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,37.36,79.33
    >>Kill |cRXP_ENEMY_Mirdoran the Fallen|r
    .complete 9170,1 --Mirdoran the Fallen slain (1)
    .mob Mirdoran the Fallen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,41.22,83.04
    >>Kill |cRXP_ENEMY_Borgoth the Bloodletter|r
    .complete 9170,2 --Borgoth the Bloodletter slain (1)
    .mob Borgoth the Bloodletter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,40.98,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Varnis|r
    .complete 9164,2 --Apprentice Varnis
    .target Apprentice Varnis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,35.77,89.13
    >>Kill |cRXP_ENEMY_Masophet the Black|r
    .complete 9170,4 --Masophet the Black slain (1)
    .mob Masophet the Black
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,32.79,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Vedoran|r
    .complete 9164,3 --Ranger Vedoran
    .target Ranger Vedoran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Innkeeper Kalarin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,46.02,33.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Rathiel|r
    .turnin 9156 >>Turn in Wanted: Knucklerot and Luzran
    .target Deathstalker Rathiel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,54.83,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Janeda|r
    .turnin 9164 >>Turn in Captives at Deatholme
    .target Arcanist Janeda
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Idonis|r
    .turnin 9170 >>Turn in Dar'Khan's Lieutenants
    .target Magister Idonis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 95,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .turnin 9167 >>Turn in The Traitor's Destruction
    .target Magister Kaendris
    .isOnQuest 9167
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 95,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .accept 9811 >>Accept Friend of the Sin'dorei
    .target Magister Kaendris
    .isQuestTurnedIn 9167 --any of: The Traitor's Destruction
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9811 >>Turn in Friend of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9811
step << Orc/Undead/Tauren/Troll/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9812 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9811 --any of: Friend of the Sin'dorei
step
    #completewith next
    .zone 95 >>Leave Silvermoon City for Ghostlands
    .zoneskip 95
step << BloodElf
    .goto 95,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .accept 9328 >>Accept Hero of the Sin'dorei
    .target Magister Kaendris
    .isQuestTurnedIn 9167 --any of: The Traitor's Destruction
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9328 >>Turn in Hero of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9328
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9621 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9328 --any of: Hero of the Sin'dorei
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
step
    +|cRXP_WARN_That is all of Ghostlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 19|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.8 levels of quests, starting around High Executor Darthalia). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage/Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter/Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue/Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman/Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior/Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock/BloodElf Paladin/Tauren Paladin/Tauren Priest/Troll Priest/Undead Priest/BloodElf Priest/Goblin Priest
    +|cRXP_WARN_The rest of Ghostlands is planned from level 22.|r Load its guide for level 22 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage/Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter/Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue/Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman/Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior/Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock/BloodElf Paladin/Tauren Paladin/Tauren Priest/Troll Priest/Undead Priest/BloodElf Priest/Goblin Priest
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 23 Ghostlands
#subweight -10
#name 22-23 Ghostlands
--RouteBuilder:next
#next Zone Routes (Horde)\22-27 Hillsbrad Foothills: around Serge Hinott

step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 110,81.16,37.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsudar the Bastion|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Alsudar the Bastion
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 110,84.56,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .accept 27278 >>Accept Grimshot's Call
    .target Zandine
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 110,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 27279 >>Accept The Shattered Hand
    .target Zelanis
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 110,59.17,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inethven|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Inethven
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 110,73.05,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zanien|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Zanien
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 110,71.71,55.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gez'li|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Gez'li
step
    .goto 110,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Champion Bachi|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Champion Bachi
step
    .goto 110,53.09,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldrae|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Aldrae
step
    +|cRXP_WARN_End of the Ghostlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Shattered Hand << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow << Goblin Priest
step
    +|cRXP_WARN_Suggested next zones at level 22|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.9 levels of quests, starting around Serge Hinott). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
]])
