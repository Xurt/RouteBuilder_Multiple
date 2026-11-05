-- 10-21 Ghostlands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 10, 15, 20).
-- Split into 3 guides, listed under "10 - 21 Ghostlands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Ghostlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 21 Ghostlands
#subweight -10
#name 10-13 Ghostlands: around Arcanist Vandril
--RouteBuilder:next
#next Zone Routes (Horde)\10-13 The Barrens: around Sergra Darkthorn;Zone Routes (Horde)\7-11 Tirisfal Glades: around Apothecary Johaan;Zone Routes (Horde)\9-11 Eversong Woods: around Magistrix Landra Dawnstrider

step << Orc/Undead/Tauren/Troll
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .accept 9329 >>Accept The Forsaken
    .target Arcanist Vandril
step << Warrior
    .goto 1942,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwing|r
    .fp Tranquillien >> Get the Tranquillien flight path
    .target Skymaster Sunwing
step << Orc/Undead/Tauren/Troll
    .goto 1942,44.77,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Mavren|r
    .turnin 9329 >>Turn in The Forsaken
    .target High Executor Mavren
step << BloodElf Warlock
    .goto 1942,43.28,16.87
    >>Click the |cRXP_PICK_Voidstone|r
    .turnin 9529 >>Turn in The Stone
    .isOnQuest 9529
step << BloodElf Warlock
    .goto 1942,43.28,16.87
    >>Click the |cRXP_PICK_Voidstone|r
    .accept 9619 >>Accept The Rune of Summoning
    .isQuestTurnedIn 9529 --any of: The Stone
    .xp <10,1
step << BloodElf Warlock
    .goto 1942,27.00,15.20
    >>Kill |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 9619,1 --Summoned Voidwalker slain (1)
    .mob Summoned Voidwalker
    .isOnQuest 9619
step << BloodElf
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .accept 9327 >>Accept The Forsaken
    .target Arcanist Vandril
step
    .goto 1942,44.77,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Mavren|r
    .turnin 9327 >>Turn in The Forsaken << BloodElf
    .accept 9758 >>Accept Return to Arcanist Vandril
    .target High Executor Mavren
step
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9148 >>Turn in Delivery to Tranquillien
    .target Arcanist Vandril
    .isOnQuest 9148
step << BloodElf
    .goto 1942,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lymel|r
    .accept 9130 >>Accept Goods from Silvermoon City
    .target Quartermaster Lymel
step
    .goto 1942,49.16,30.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blacksmith Frances|r
    .target Blacksmith Frances
    .home >>Set your Hearthstone to Blacksmith Frances's inn
step
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9758 >>Turn in Return to Arcanist Vandril
    .accept 9138 >>Accept Suncrown Village
    .target Arcanist Vandril
step << BloodElf
    .goto 1942,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skymaster Sunwing|r
    .turnin 9130 >>Turn in Goods from Silvermoon City
    .accept 9133 >>Accept Fly to Silvermoon City
    .target Skymaster Sunwing
step
    .goto 1942,47.24,28.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathis Tomber|r
    .accept 9152 >>Accept Tomber's Supplies
    .target Rathis Tomber
step
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Nerubis Guards|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9138,1 --Nerubis Guard slain (10)
    .mob Nerubis Guard
step
    #label Along13
    .goto 1942,57.55,14.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Blood Elf|r
    .accept 9315 >>Accept Anok'suten
    .target Dying Blood Elf
step
    #loop
    .goto 1942,60.37,16.18,0
    .goto 1942,60.37,16.18,40,0
    .goto 1942,58.27,10.08,40,0
    .goto 1942,63.14,9.30,40,0
    >>Kill |cRXP_ENEMY_Anok'suten|r
    >>Kill |cRXP_ENEMY_Nerubis Guards|r
    .complete 9315,1 --Anok'suten slain (1)
    .complete 9138,1 --Nerubis Guard slain (10)
    .mob Anok'suten
    .mob Nerubis Guard
step
    .goto 1942,69.40,15.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Valanna|r
    .accept 9143 >>Accept Dealing with Zeb'Sora
    .target Ranger Valanna
step
    .goto 1942,72.29,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geranis Whitemorn|r
    .accept 9157 >>Accept Forgotten Rituals
    .target Geranis Whitemorn
step
    #loop
    .goto 1942,74.39,12.14,0
    .goto 1942,74.39,12.14,40,0
    .goto 1942,77.03,9.79,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Rippers|r and |cRXP_ENEMY_Shadowpine Witches|r. Loot them for |cRXP_LOOT_Zeb'Sora Troll Ear|r
    .complete 9143,1 --Zeb'Sora Troll Ear (6)
    .mob Shadowpine Ripper
    .mob Shadowpine Witch
step
    .goto 1942,72.49,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Sedina|r
    .accept 9158 >>Accept Bearers of the Plague
    .target Farstrider Sedina
step
    .goto 1942,72.21,29.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Krenn'an|r
    .accept 9274 >>Accept Spirits of the Drowned
    .target Ranger Krenn'an
    .xp <10,1
step
    #loop
    .goto 1942,68.63,32.74,0
    .goto 1942,68.63,32.74,40,0
    .goto 1942,69.81,37.13,40,0
    >>Kill |cRXP_ENEMY_Ghostclaw Lynxes|r
    .complete 9158,1 --Ghostclaw Lynx slain (10)
    .mob Ghostclaw Lynx
step
    .goto 1942,72.49,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Sedina|r
    .turnin 9158 >>Turn in Bearers of the Plague
    .accept 9159 >>Accept Curbing the Plague
    .target Farstrider Sedina
step
    #completewith Along21
    >>As you go: Loot the |cRXP_PICK_Glistening Muds|r for |cRXP_LOOT_Wavefront Medallion|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9157,1 --Wavefront Medallion (8)
step
    #label Along21
    .goto 1942,72.21,29.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Krenn'an|r
    .accept 9274 >>Accept Spirits of the Drowned
    .target Ranger Krenn'an
step
    #completewith Along25
    >>As you go: Kill |cRXP_ENEMY_Ravening Apparitions|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9274,1 --Ravening Apparition slain (8)
    .mob Ravening Apparition
step
    #loop
    .goto 1942,71.99,28.39,0
    .goto 1942,71.99,28.39,40,0
    .goto 1942,73.43,22.85,40,0
    >>Loot the |cRXP_PICK_Glistening Muds|r for |cRXP_LOOT_Wavefront Medallion|r
    .complete 9157,1 --Wavefront Medallion (8)
step
    .goto 1942,72.29,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geranis Whitemorn|r
    .turnin 9157 >>Turn in Forgotten Rituals
    .accept 9174 >>Accept Vanquishing Aquantion
    .target Geranis Whitemorn
step
    .goto 1942,71.32,14.95
    >>Kill |cRXP_ENEMY_Aquantion|r
    .complete 9174,1 --Aquantion slain (1)
    .mob Aquantion
step
    .goto 1942,71.31,14.58
    >>Kill |cRXP_ENEMY_Aquantion|r
    >>|cRXP_WARN_He has elite-level health and deals frost damage|r
    >>|cRXP_WARN_He is immune to|r |T136222:0|t[Arcane Torrent] |cRXP_WARN_and|r |T135963:0|t[Hammer of Justice] << BloodElf Paladin
    >>|cRXP_WARN_He is immune to|r |T135963:0|t[Hammer of Justice] << !BloodElf Paladin
    >>|cRXP_WARN_He is immune to|r |T136222:0|t[Arcane Torrent] |cRXP_WARN_and|r |T136183:0|t[Fear] << BloodElf Warlock
    >>|cRXP_WARN_He is immune to|r |T136183:0|t[Fear] << !BloodElf Warlock
    >>|cRXP_WARN_He is immune to|r |T136222:0|t[Arcane Torrent] |cRXP_WARN_and|r |T136184:0|t[Psychic Scream] << BloodElf Priest
    >>|cRXP_WARN_He is immune to|r |T136184:0|t[Psychic Scream] << !BloodElf Priest
    >>|cRXP_WARN_He is immune to|r |T136222:0|t[Arcane Torrent], |T135846:0|t[Frostbolt], |T135848:0|t[Frost Nova], |cRXP_WARN_and|r |T135843:0|t[Frost Armor] << BloodElf Mage
    >>|cRXP_WARN_He is immune to|r |T135846:0|t[Frostbolt], |T135848:0|t[Frost Nova], |cRXP_WARN_and|r |T135843:0|t[Frost Armor] << !BloodElf Mage
    >>|cRXP_WARN_Be sure buff yourself with|r |T136006:0|t[Dampen Magic] |cRXP_WARN_before summoning him|r << Mage
    >>|cRXP_WARN_He is immune to|r |T136222:0|t[Arcane Torrent] |cRXP_WARN_and|r |T132155:0|t[Gouge] << BloodElf Rogue
    >>|cRXP_WARN_He is immune to|r |T132155:0|t[Gouge] << !BloodElf Rogue
    >>|cRXP_WARN_He is immune to|r |T136222:0|t[Arcane Torrent] << BloodElf Hunter
    >>|cRXP_WARN_Find a group for him if needed|r << !Hunter !Warlock
    .train 8122,3 << Priest
    .train 604,3 << Mage
step
    .goto 1942,69.40,15.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Valanna|r
    .turnin 9143 >>Turn in Dealing with Zeb'Sora while you are here
    .isQuestComplete 9143
    .target Ranger Valanna
step
    #label Along25
    .goto 1942,72.29,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geranis Whitemorn|r
    .turnin 9174 >>Turn in Vanquishing Aquantion
    .target Geranis Whitemorn
step
    #loop
    .goto 1942,70.81,20.49,0
    .goto 1942,70.81,20.49,40,0
    .goto 1942,72.47,26.58,40,0
    .goto 1942,73.65,21.97,40,0
    .goto 1942,72.00,16.12,40,0
    >>Kill |cRXP_ENEMY_Ravening Apparitions|r
    >>Kill |cRXP_ENEMY_Vengeful Apparitions|r
    .complete 9274,1 --Ravening Apparition slain (8)
    .complete 9274,2 --Vengeful Apparition slain (8)
    .mob Ravening Apparition
    .mob Vengeful Apparition
step
    .goto 1942,69.40,15.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Valanna|r
    .turnin 9143 >>Turn in Dealing with Zeb'Sora
    .accept 9146 >>Accept Report to Captain Helios
    .target Ranger Valanna
step << Mage
    .goto 1942,59.47,12.43,0
    .goto 1942,59.47,12.43,30,0
    .goto 1942,59.83,10.22,30,0
    .goto 1942,58.92,9.19,30,0
    .goto 1942,60.72,9.46,30,0
    .goto 1942,61.74,9.63,30,0
    .goto 1942,62.86,11.04,30,0
    .goto 1942,63.26,9.50,30,0
    .goto 1942,62.76,12.68,30,0
    .goto 1942,63.52,13.39,30,0
    .goto 1942,62.00,14.21,30,0
    .goto 1942,60.70,14.39,30,0
    .goto 1942,60.34,16.13,30,0
    .goto 1942,59.92,13.83,30,0
    .goto 1942,62.86,11.04,30,0
    .xp 13+8440 >>Grind to 8440+/11000xp
step << Mage
    .goto 1942,59.47,12.43,0
    .goto 1942,59.47,12.43,30,0
    .goto 1942,59.83,10.22,30,0
    .goto 1942,58.92,9.19,30,0
    .goto 1942,60.72,9.46,30,0
    .goto 1942,61.74,9.63,30,0
    .goto 1942,62.86,11.04,30,0
    .goto 1942,63.26,9.50,30,0
    .goto 1942,62.76,12.68,30,0
    .goto 1942,63.52,13.39,30,0
    .goto 1942,62.00,14.21,30,0
    .goto 1942,60.70,14.39,30,0
    .goto 1942,60.34,16.13,30,0
    .goto 1942,59.92,13.83,30,0
    .goto 1942,62.86,11.04,30,0
    .xp 13+9320 >>Grind to 9320+/11000xp
step
    .goto 1942,59.47,12.43,0
    .goto 1942,59.47,12.43,30,0
    .goto 1942,59.83,10.22,30,0
    .goto 1942,58.92,9.19,30,0
    .goto 1942,60.72,9.46,30,0
    .goto 1942,61.74,9.63,30,0
    .goto 1942,62.86,11.04,30,0
    .goto 1942,63.26,9.50,30,0
    .goto 1942,62.76,12.68,30,0
    .goto 1942,63.52,13.39,30,0
    .goto 1942,62.00,14.21,30,0
    .goto 1942,60.70,14.39,30,0
    .goto 1942,60.34,16.13,30,0
    .goto 1942,59.92,13.83,30,0
    .goto 1942,62.86,11.04,30,0
    .xp 13+9280 >>Grind to 9280+/11000xp
step
    .goto 1942,59.47,12.43,0
    .goto 1942,59.47,12.43,30,0
    .goto 1942,59.83,10.22,30,0
    .goto 1942,58.92,9.19,30,0
    .goto 1942,60.72,9.46,30,0
    .goto 1942,61.74,9.63,30,0
    .goto 1942,62.86,11.04,30,0
    .goto 1942,63.26,9.50,30,0
    .goto 1942,62.76,12.68,30,0
    .goto 1942,63.52,13.39,30,0
    .goto 1942,62.00,14.21,30,0
    .goto 1942,60.70,14.39,30,0
    .goto 1942,60.34,16.13,30,0
    .goto 1942,59.92,13.83,30,0
    .goto 1942,62.86,11.04,30,0
    .xp 13+10160 >>Grind to 10160+/11000xp
step
    #completewith next
    .hs >>Hearth to Blacksmith Frances's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9315 >>Turn in Anok'suten
    .turnin 9138 >>Turn in Suncrown Village
    .accept 9139 >>Accept Goldenmist Village
    .target Arcanist Vandril
step
    .goto 1942,47.66,34.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renzithen|r
    .accept 9149 >>Accept The Plagued Coast
    .target Apothecary Renzithen
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Buy the|r |T135427:0|t[Throat Piercers] |cRXP_BUY_and the|r |T135344:0|t[Sinister Scimitar] |cRXP_BUY_from her if they're up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Buy the|r |T135344:0|t[Sinister Scimitar] |cRXP_BUY_from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Buy the|r |T135427:0|t[Throat Piercers] |cRXP_BUY_from her if it's up|r
    .vendor 16268 >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
step << BloodElf
    .goto 1942,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lymel|r
    .turnin 9135 >>Turn in Return to Quartermaster Lymel
    .target Quartermaster Lymel
    .isOnQuest 9135
step
    .goto 1942,33.55,26.55
    >>Pick up |cRXP_PICK_Rathis Tomber's Supplies|r from the ground
    .complete 9152,1 --Rathis Tomber's Supplies (1)
step << BloodElf Rogue
    .goto 1942,32.98,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keltus Darkleaf|r
    .turnin 9532 >>Turn in Find Keltus Darkleaf
    .target Keltus Darkleaf
    .isOnQuest 9532
step << BloodElf Rogue
    .goto 1942,32.98,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keltus Darkleaf|r
    .accept 9460 >>Accept Combining Forces
    .target Keltus Darkleaf
    .isQuestTurnedIn 9532 --any of: Find Keltus Darkleaf
    .xp <10,1
step << BloodElf Rogue
    .goto 1942,36.60,12.51
    >>Kill |cRXP_ENEMY_Sentinel Leader|r and loot |cRXP_LOOT_Lacy Handkerchief|r
    .complete 9460,1 --Lacy Handkerchief (1)
    .mob Sentinel Leader
    .isOnQuest 9460
step
    .goto 1942,38.21,17.44,0
    .goto 1942,38.21,17.44,35,0
    .goto 1942,36.67,17.00,35,0
    .goto 1942,35.87,14.42,35,0
    .goto 1942,34.77,12.01,35,0
    .goto 1942,35.94,11.58,35,0
    .goto 1942,38.51,13.19,35,0
    .goto 1942,37.50,14.67,35,0
    .xp 14+5200 >> Grind to 5200+/12300xp
step << BloodElf Rogue
    .goto 1942,32.98,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keltus Darkleaf|r
    .turnin 9460 >>Turn in Combining Forces
    .target Keltus Darkleaf
    .isOnQuest 9460
step << BloodElf Rogue
    .goto 1942,32.98,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keltus Darkleaf|r
    .accept 9618 >>Accept Return the Reports
    .target Keltus Darkleaf
    .isQuestTurnedIn 9460 --any of: Combining Forces
    .xp <10,1
step
    #loop
    .goto 1942,29.01,15.17,0
    .goto 1942,29.01,15.17,40,0
    .goto 1942,25.43,16.31,40,0
    .goto 1942,24.79,12.91,40,0
    >>Kill |cRXP_ENEMY_Quel'dorei Ghosts|r
    >>Kill |cRXP_ENEMY_Quel'dorei Wraiths|r
    .complete 9139,1 --Quel'dorei Ghost slain (6)
    .complete 9139,2 --Quel'dorei Wraith slain (4)
    .mob Quel'dorei Ghost
    .mob Quel'dorei Wraith
step
    #loop
    .goto 1942,19.09,19.96,0
    .goto 1942,19.09,19.96,40,0
    .goto 1942,19.91,23.94,40,0
    >>Kill |cRXP_ENEMY_Zombified Grimscales|r and |cRXP_ENEMY_Withered Grimscales|r. Loot them for |cRXP_LOOT_Plagued Murloc Spine|r
    .complete 9149,1 --Plagued Murloc Spine (6)
    .mob Zombified Grimscale
    .mob Withered Grimscale
step
    #loop
    .goto 1942,28.08,38.48,0
    .goto 1942,28.08,38.48,40,0
    .goto 1942,32.87,41.85,40,0
    .goto 1942,34.26,38.71,40,0
    >>Kill |cRXP_ENEMY_Spindleweb Lurkers|r
    .complete 9159,2 --Spindleweb Lurker slain (8)
    .mob Spindleweb Lurker
step
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9139 >>Turn in Goldenmist Village
    .accept 9140 >>Accept Windrunner Village
    .target Arcanist Vandril
step
    .goto 1942,47.24,28.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathis Tomber|r
    .turnin 9152 >>Turn in Tomber's Supplies
    .target Rathis Tomber
step
    .goto 1942,47.66,34.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renzithen|r
    .turnin 9149 >>Turn in The Plagued Coast
    .target Apothecary Renzithen
step
    .goto 1942,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dame Auriferous|r
    .accept 9163 >>Accept Into Occupied Territory
    .target Dame Auriferous
    .isQuestTurnedIn 9160 --any of: Investigate An'daroth
    .xp <11,1
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    .turnin 10372 >>Turn in A Discreet Inquiry
    .target Eralan
    .isOnQuest 10372
step
    #loop
    .goto 1942,48.45,44.85,0
    .goto 1942,48.45,44.85,40,0
    .goto 1942,44.86,47.61,40,0
    .goto 1942,50.52,50.74,40,0
    >>Kill |cRXP_ENEMY_Vampiric Mistbats|r
    .complete 9159,1 --Vampiric Mistbat slain (10)
    .mob Vampiric Mistbat
step
    #loop
    .goto 1942,20.34,48.90,0
    .goto 1942,20.34,48.90,40,0
    .goto 1942,19.78,45.60,40,0
    .goto 1942,18.14,53.95,40,0
    >>Kill |cRXP_ENEMY_Phantasmal Seekers|r. Loot them for |cRXP_LOOT_Phantasmal Substance|r
    >>Kill |cRXP_ENEMY_Stonewing Slayers|r. Loot them for |cRXP_LOOT_Gargoyle Fragment|r
    .complete 9140,1 --Phantasmal Substance (6)
    .complete 9140,2 --Gargoyle Fragment (4)
    .mob Phantasmal Seeker
    .mob Stonewing Slayer
step
    .goto 1942,12.80,25.09
    >>Pick up |cRXP_PICK_Night Elf Plans: An'owyn|r from the ground
    .complete 9163,2 --Night Elf Plans: An'owyn (1)
    .isOnQuest 9163
step
    .goto 1942,13.69,26.84
    >>Pick up |cRXP_PICK_Night Elf Plans: An'daroth|r from the ground
    .complete 9163,1 --Night Elf Plans: An'daroth (1)
    .isOnQuest 9163
step
    .goto 1942,10.44,22.58
    >>Pick up |cRXP_PICK_Night Elf Plans: Scrying on the Sin'dorei|r from the ground
    .complete 9163,3 --Night Elf Plans: Scrying on the Sin'dorei (1)
    .isOnQuest 9163
step << Priest/Druid/Rogue/Paladin
    .goto 1942,14.71,26.66,0
    .goto 1942,14.71,26.66,30,0
    .goto 1942,13.06,26.15,30,0
    .goto 1942,11.63,26.63,30,0
    .goto 1942,12.51,24.81,30,0
    .goto 1942,9.43,23.77,30,0
    .goto 1942,10.47,22.51,30,0
    .xp 15+10600 >> Grind to 10600+/13600
step
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9140 >>Turn in Windrunner Village
    .target Arcanist Vandril
step
    .goto 1942,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dame Auriferous|r
    .turnin 9163 >>Turn in Into Occupied Territory
    .target Dame Auriferous
    .isOnQuest 9163
step
    .goto 1942,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dame Auriferous|r
    .accept 9166 >>Accept Deliver the Plans to An'telas
    .target Dame Auriferous
    .isQuestTurnedIn 9163 --any of: Into Occupied Territory
    .xp <11,1
step
    .xp 16 >>Grind to level 16
step
    .goto 1942,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Sylastor|r
    .turnin 9166 >>Turn in Deliver the Plans to An'telas
    .target Magister Sylastor
    .isOnQuest 9166
step
    .goto 1942,72.49,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Sedina|r
    .turnin 9159 >>Turn in Curbing the Plague
    .target Farstrider Sedina
step
    .goto 1942,72.21,29.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Krenn'an|r
    .turnin 9274 >>Turn in Spirits of the Drowned
    .target Ranger Krenn'an
step
    .goto 1942,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .turnin 9146 >>Turn in Report to Captain Helios
    .target Captain Helios
step
    +|cRXP_WARN_That is all of Ghostlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Silvermoon City|r: Fly to Silvermoon City << BloodElf
    >>|cRXP_FRIENDLY_Silvermoon City|r: Return the Reports << BloodElf Rogue
    >>|cRXP_FRIENDLY_Silvermoon City|r: The Rune of Summoning << BloodElf Warlock
step
    +|cRXP_WARN_Suggested next zones at level 12|r: |cRXP_FRIENDLY_The Barrens|r (about 2.5 levels of quests, starting around Sergra Darkthorn), |cRXP_FRIENDLY_Tirisfal Glades|r (about 1.0 levels of quests, starting around Apothecary Johaan), |cRXP_FRIENDLY_Eversong Woods|r (about 0.7 levels of quests, starting around Magistrix Landra Dawnstrider). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Ghostlands is planned from level 15.|r Load its guide for level 15 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 21 Ghostlands
#subweight -10
#name 15-18 Ghostlands: around Eralan
--RouteBuilder:next
#next Zone Routes (Horde)\13-16 The Barrens: around Gazlowe

step
    .goto 1942,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kalarin|r
    .target Innkeeper Kalarin
    .home >>Set your Hearthstone to Innkeeper Kalarin's inn
step
    .goto 1942,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .accept 9216 >>Accept Rotting Hearts
    .target Magistrix Aminel
    .xp <15,1
step
    .goto 1942,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .accept 9218 >>Accept Spinal Dust
    .target Magistrix Aminel
    .xp <15,1
step
    .goto 1942,44.84,32.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Valwyn|r
    .accept 9193 >>Accept Investigate the Amani Catacombs
    .target Advisor Valwyn
step
    .goto 1942,44.75,32.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Maltendis|r
    .accept 9199 >>Accept Troll Juju
    .target Deathstalker Maltendis
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    .accept 9491 >>Accept Greed
    .target Eralan
step
    .goto 1942,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vor'el|r
    .accept 9281 >>Accept Clearing the Way
    .target Apprentice Vor'el
step << Orc/Undead/Tauren/Troll
    #completewith next
    .hs >>Hearth to Innkeeper Kalarin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll
    .goto 1942,44.77,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Mavren|r
    .accept 9177 >>Accept Journey to Undercity
    .target High Executor Mavren
    .isQuestTurnedIn 9175 --any of: The Lady's Necklace
    .xp <15,1
step << BloodElf
    #completewith next
    .hs >>Hearth to Innkeeper Kalarin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << BloodElf
    .goto 1942,44.77,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Mavren|r
    .accept 9180 >>Accept Journey to Undercity
    .target High Executor Mavren
    .isQuestTurnedIn 9175 --any of: The Lady's Necklace
    .xp <15,1
step
    .goto 1942,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .accept 9282 >>Accept The Farstrider Enclave
    .target Magister Kaendris
step
    .goto 1942,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Sylastor|r
    .accept 9169 >>Accept Deactivate An'owyn
    .target Magister Sylastor
    .isQuestTurnedIn 9166 --any of: Deliver the Plans to An'telas
    .xp <11,1
step
    .goto 1942,72.33,31.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Solanna|r
    .accept 9276 >>Accept Attack on Zeb'Tela
    .target Farstrider Solanna
step
    .goto 1942,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .accept 9214 >>Accept Shadowpine Weaponry
    .target Captain Helios
step
    .goto 1942,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Venustus|r
    .accept 9275 >>Accept A Little Dash of Seasoning
    .target Apothecary Venustus
step
    .goto 1942,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Vynna|r
    .turnin 9282 >>Turn in The Farstrider Enclave
    .accept 9161 >>Accept The Traitor's Shadow
    .target Ranger Vynna
step
    #completewith Along14
    >>As you go: Kill |cRXP_ENEMY_Mummified Headhunters|r and |cRXP_ENEMY_Shadowpine Oracles|r. Loot them for |cRXP_LOOT_Troll Juju|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9199,1 --Troll Juju (8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step
    #loop
    .goto 1942,64.69,28.93,0
    .goto 1942,64.69,28.93,40,0
    .goto 1942,62.92,32.59,40,0
    >>Open the |cRXP_PICK_Burial Chest|r. Loot it for |cRXP_LOOT_Pitted Gold Band|r << Rogue
    >>Click the |cRXP_PICK_Mummified Troll Remains|r
    .complete 9491,1 << Rogue --Pitted Gold Band (1)
    .complete 9193,1 --Mummified Troll Remains Burned
step
    #label Along14
    .goto 1942,62.91,30.98
    >>Investigate the Amani Catacombs
    .complete 9193,2 --Investigate the Amani Catacombs
step
    #loop
    .goto 1942,63.06,29.80,0
    .goto 1942,63.06,29.80,40,0
    .goto 1942,60.64,30.28,40,0
    >>Kill |cRXP_ENEMY_Mummified Headhunters|r and |cRXP_ENEMY_Shadowpine Oracles|r. Loot them for |cRXP_LOOT_Troll Juju|r
    .complete 9199,1 --Troll Juju (8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step
    .goto 1942,62.93,32.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Lilatha|r
    .accept 9212 >>Accept Escape from the Catacombs
    .target Ranger Lilatha
step
    .goto 1942,72.24,30.21
    >>Escort Ranger Lilatha back to the Farstrider Enclave
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
step
    .goto 1942,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .turnin 9212 >>Turn in Escape from the Catacombs
    .target Captain Helios
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice] and the |T133738:0|t[Grimoire of Consume Shadows]
    .collect 16351,1,9220,1
    .collect 16357,1,9220,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Sacrifice]
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    +Use the |T133738:0|t[Grimoire of Consume Shadows]
    .train 17767,1
    .xp <18,1
step << Rogue
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
    .subzoneskip 3488
step
    #completewith next
    .hs >>Hearth to Innkeeper Kalarin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1942,44.84,32.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Valwyn|r
    .turnin 9193 >>Turn in Investigate the Amani Catacombs
    .target Advisor Valwyn
step
    .goto 1942,44.75,32.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Maltendis|r
    .turnin 9199 >>Turn in Troll Juju
    .target Deathstalker Maltendis
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    .turnin 9491 >>Turn in Greed
    .accept 10548 >>Accept The Sad Truth
    .target Eralan
step << BloodElf Mage
    .xp 15 >>Grind to level 15 (Arcane Reavers needs it)
step << BloodElf Mage
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .accept 9487 >>Accept Arcane Reavers
    .target Arcanist Vandril
step << BloodElf Mage
    #loop
    .goto 1942,77.05,20.88,0
    .goto 1942,77.05,20.88,40,0
    .goto 1942,79.38,18.87,40,0
    >>Kill |cRXP_ENEMY_Arcane Reavers|r. Loot them for |cRXP_LOOT_Arcane Fragment|r
    .complete 9487,1 --Arcane Fragment (10)
    .mob Arcane Reaver
step
    .goto 1942,79.63,17.56
    >>Click the |cRXP_PICK_Dusty Journal|r
    .turnin 9161 >>Turn in The Traitor's Shadow
    .accept 9162 >>Accept Hints of the Past
step << BloodElf Mage
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9487 >>Turn in Arcane Reavers
    .accept 9488 >>Accept A Simple Robe
    .target Arcanist Vandril
step << BloodElf Mage
    .goto 1942,64.44,30.47
    >>Loot the |cRXP_PICK_Tattered Chests|r for |cRXP_LOOT_Linen Cloth|r
    .complete 9488,1 --Linen Cloth (15)
step
    #loop
    .goto 1942,78.99,35.45,0
    .goto 1942,78.99,35.45,40,0
    .goto 1942,77.66,38.86,40,0
    .goto 1942,80.91,39.04,40,0
    >>Kill |cRXP_ENEMY_Shadowpine Shadowcasters|r
    >>Kill |cRXP_ENEMY_Shadowpine Headhunters|r
    >>Kill |cRXP_ENEMY_Shadowpine Shadowcasters|r. Loot them for |cRXP_LOOT_Shadowcaster Mace|r
    >>Kill |cRXP_ENEMY_Shadowpine Headhunters|r. Loot them for |cRXP_LOOT_Headhunter Axe|r
    .complete 9276,1 --Shadowpine Shadowcaster slain (8)
    .complete 9276,2 --Shadowpine Headhunter slain (8)
    .complete 9214,2 --Shadowcaster Mace (3)
    .complete 9214,1 --Headhunter Axe (3)
    .mob Shadowpine Shadowcaster
    .mob Shadowpine Headhunter
step
    .goto 1942,72.33,31.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Solanna|r
    .turnin 9276 >>Turn in Attack on Zeb'Tela
    .accept 9277 >>Accept Assault on Zeb'Nowa
    .target Farstrider Solanna
step
    .goto 1942,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Vynna|r
    .turnin 9162 >>Turn in Hints of the Past
    .accept 9172 >>Accept Report to Magister Kaendris
    .target Ranger Vynna
step
    .goto 1942,68.24,57.78
    >>Click the |cRXP_PICK_Fresh Fish Rack|r
    .complete 9275,3 --Poison the Fresh Fish Rack
step
    .goto 1942,65.11,66.74
    >>Click the |cRXP_PICK_Raw Meat Rack|r
    .complete 9275,1 --Poison the Raw Meat Rack
step
    .goto 1942,63.03,74.99
    >>Click the |cRXP_PICK_Smoked Meat Rack|r
    .complete 9275,2 --Poison the Smoked Meat Rack
step
    #loop
    .goto 1942,62.62,75.28,0
    .goto 1942,62.62,75.28,40,0
    .goto 1942,61.60,70.46,40,0
    .goto 1942,62.29,66.42,40,0
    >>Open the |cRXP_PICK_Primitive Chest|r. Loot it for |cRXP_LOOT_Archeologist's Shrunken Head|r << Rogue
    >>Kill |cRXP_ENEMY_Shadowpine Catlords|r
    >>Kill |cRXP_ENEMY_Shadowpine Hexxers|r
    >>Kill |cRXP_ENEMY_Shadowpine Catlords|r. Loot them for |cRXP_LOOT_Catlord Claws|r
    >>Kill |cRXP_ENEMY_Shadowpine Hexxers|r. Loot them for |cRXP_LOOT_Hexxer Stave|r
    .complete 10548,1 << Rogue --Archeologist's Shrunken Head (1)
    .complete 9277,1 --Shadowpine Catlord slain (10)
    .complete 9277,2 --Shadowpine Hexxer slain (10)
    .complete 9214,3 --Catlord Claws (3)
    .complete 9214,4 --Hexxer Stave (3)
    .mob Shadowpine Catlord
    .mob Shadowpine Hexxer
step
    #loop
    .goto 1942,58.73,66.09,0
    .goto 1942,58.73,66.09,40,0
    .goto 1942,57.36,65.30,40,0
    >>Kill |cRXP_ENEMY_Sentinel Infiltrator|r and loot |cRXP_LOOT_Crystal Controlling Orb|r
    .collect 23191,1,9169,1 --Crystal Controlling Orb (1)
    .mob Sentinel Infiltrator
    .isOnQuest 9169
step
    .goto 1942,58.17,65.14
    >>Click the |cRXP_PICK_Night Elf Moon Crystal|r
    .complete 9169,1 --Night Elf Moon Crystal Deactivated
    .isOnQuest 9169
step
    .goto 1942,72.33,31.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farstrider Solanna|r
    .turnin 9277 >>Turn in Assault on Zeb'Nowa
    .target Farstrider Solanna
step
    .goto 1942,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .turnin 9214 >>Turn in Shadowpine Weaponry
    .target Captain Helios
step
    .goto 1942,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Venustus|r
    .turnin 9275 >>Turn in A Little Dash of Seasoning
    .target Apothecary Venustus
step << Rogue
    #completewith next
    .hs >>Hearth to Innkeeper Kalarin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    .turnin 10548 >>Turn in The Sad Truth
    .target Eralan
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Buy the|r |T135427:0|t[Throat Piercers] |cRXP_BUY_and the|r |T135344:0|t[Sinister Scimitar] |cRXP_BUY_from her if they're up|r
    >>|cRXP_WARN_Keep the|r |T135662:0|t[Leafblade Dagger] |cRXP_WARN_for later as you'll need it for a quest|r << tbc
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Buy the|r |T135344:0|t[Sinister Scimitar] |cRXP_BUY_from her if it's up|r
    >>|cRXP_WARN_Keep the|r |T135662:0|t[Leafblade Dagger] |cRXP_WARN_for later as you'll need it for a quest|r << tbc
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
step << Rogue
    .goto 1942,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Buy the|r |T135427:0|t[Throat Piercers] |cRXP_BUY_from her if it's up|r
    >>|cRXP_WARN_Keep the|r |T135662:0|t[Leafblade Dagger] |cRXP_WARN_for later as you'll need it for a quest|r << tbc
    .vendor >> Vendor Trash
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
step
    .goto 1942,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Sylastor|r
    .turnin 9169 >>Turn in Deactivate An'owyn
    .target Magister Sylastor
    .isOnQuest 9169
step
    .goto 1942,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Darenis|r
    .accept 9151 >>Accept The Sanctum of the Sun
    .target Magister Darenis
step
    .goto 1942,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Idonis|r
    .turnin 9151 >>Turn in The Sanctum of the Sun
    .accept 9220 >>Accept War on Deatholme
    .target Magister Idonis
step
    .goto 1942,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .turnin 9172 >>Turn in Report to Magister Kaendris
    .accept 9176 >>Accept The Twin Ziggurats
    .target Magister Kaendris
step
    .goto 1942,40.37,49.75
    >>Open the |cRXP_PICK_Worn Chest|r. Loot it for |cRXP_LOOT_Stone of Flame|r
    .complete 9176,1 --Stone of Flame (1)
step
    .goto 1942,34.30,47.67
    >>Open the |cRXP_PICK_Dented Chest|r. Loot it for |cRXP_LOOT_Stone of Light|r
    .complete 9176,2 --Stone of Light (1)
step << BloodElf Mage
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Spindleweb Spiders|r, |cRXP_ENEMY_Spindleweb Lurkers|r and |cRXP_ENEMY_Greater Spindlewebs|r. Loot them for |cRXP_LOOT_Spindleweb Silk Gland|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9488,2 --Spindleweb Silk Gland (1)
    .mob Spindleweb Spider
    .mob Spindleweb Lurker
    .mob Greater Spindleweb
step
    #label Along46
    #loop
    .goto 1942,26.92,57.10,0
    .goto 1942,26.92,57.10,40,0
    .goto 1942,28.03,62.18,40,0
    .goto 1942,22.96,61.46,40,0
    >>Kill |cRXP_ENEMY_Greater Spindlewebs|r
    >>Kill |cRXP_ENEMY_Ghostclaw Ravagers|r
    .complete 9281,1 --Greater Spindleweb slain (10)
    .complete 9281,2 --Ghostclaw Ravager slain (10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
step
    #loop
    .goto 1942,31.85,74.26,0
    .goto 1942,31.85,74.26,40,0
    .goto 1942,32.23,77.79,40,0
    >>Kill |cRXP_ENEMY_Eye of Dar'Khans|r
    .complete 9220,1 --Eye of Dar'Khan slain (5)
    .mob Eye of Dar'Khan
step
    #loop
    .goto 1942,37.52,78.81,0
    .goto 1942,37.52,78.81,40,0
    .goto 1942,37.28,82.64,40,0
    >>Kill |cRXP_ENEMY_Nerubis Centurions|r
    >>Kill |cRXP_ENEMY_Wailers|r
    .complete 9220,2 --Nerubis Centurion slain (6)
    .complete 9220,3 --Wailer slain (6)
    .mob Nerubis Centurion
    .mob Wailer
step << Paladin/Druid/Shaman
    .goto 1942,36.41,87.05,0
    .goto 1942,31.66,74.11,40,0
    .goto 1942,31.53,76.48,40,0
    .goto 1942,32.66,77.91,40,0
    .goto 1942,37.19,75.45,40,0
    .goto 1942,37.18,77.49,40,0
    .goto 1942,38.66,76.98,40,0
    .goto 1942,39.61,79.82,40,0
    .goto 1942,36.41,87.05,40,0
    >>Kill |cRXP_ENEMY_Eyes of Dar'Khan|r, |cRXP_ENEMY_Nerubis Centurions|r, and |cRXP_ENEMY_Wailers|r
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T135949:0|t[Purify] |cRXP_WARN_to remove it|r << Paladin
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T136067:0|t[Cure Poison] |cRXP_WARN_to remove it|r << Druid
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T136067:0|t[Cure Toxins] |cRXP_WARN_to remove it|r << Shaman
    .train 1152,3 << Paladin
    .train 8946,3 << Druid
    .train 526,3 << Shaman
step
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
    .subzoneskip 3488
step
    #completewith next
    .hs >>Hearth to Innkeeper Kalarin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1942,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .accept 9216 >>Accept Rotting Hearts
    .target Magistrix Aminel
step
    #loop
    .goto 1942,39.66,30.84,0
    .goto 1942,39.66,30.84,40,0
    .goto 1942,39.20,33.59,40,0
    .goto 1942,38.27,38.52,40,0
    .goto 1942,38.29,42.51,40,0
    >>Kill |cRXP_ENEMY_Risen Hungerers|r and |cRXP_ENEMY_Risen Stalkers|r. Loot them for |cRXP_LOOT_Rotting Heart|r
    .complete 9216,1 --Rotting Heart (10)
    .mob Risen Hungerer
    .mob Risen Stalker
step
    .goto 1942,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .turnin 9216 >>Turn in Rotting Hearts
    .accept 9218 >>Accept Spinal Dust
    .target Magistrix Aminel
step
    #loop
    .goto 1942,40.75,23.48,0
    .goto 1942,40.75,23.48,40,0
    .goto 1942,42.69,18.81,40,0
    >>Kill |cRXP_ENEMY_Dreadbone Skeletons|r, |cRXP_ENEMY_Dreadbone Sentinels|r, |cRXP_ENEMY_Deathcage Scryers|r and |cRXP_ENEMY_Deathcage Sorcerers|r. Loot them for |cRXP_LOOT_Spinal Dust|r
    .complete 9218,1 --Spinal Dust (10)
    .mob Dreadbone Skeleton
    .mob Dreadbone Sentinel
    .mob Deathcage Scryer
    .mob Deathcage Sorcerer
step
    .goto 1942,48.92,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrix Aminel|r
    .turnin 9218 >>Turn in Spinal Dust
    .target Magistrix Aminel
step
    .goto 1942,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .turnin 9176 >>Turn in The Twin Ziggurats
    .target Magister Kaendris
step
    .goto 1942,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Idonis|r
    .turnin 9220 >>Turn in War on Deatholme
    .target Magister Idonis
step
    .goto 1942,54.83,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Janeda|r
    .accept 9877 >>Accept A Restorative Draught
    .target Arcanist Janeda
step
    .goto 1942,47.66,34.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Renzithen|r
    .turnin 9877 >>Turn in A Restorative Draught
    .accept 9164 >>Accept Captives at Deatholme
    .target Apothecary Renzithen
step
    .goto 1942,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Vor'el|r
    .turnin 9281 >>Turn in Clearing the Way
    .target Apprentice Vor'el
step << BloodElf Mage
    .goto 1942,42.24,62.87
    >>Kill |cRXP_ENEMY_Spindleweb Spiders|r, |cRXP_ENEMY_Spindleweb Lurkers|r and |cRXP_ENEMY_Greater Spindlewebs|r. Loot them for |cRXP_LOOT_Spindleweb Silk Gland|r
    .complete 9488,2 --Spindleweb Silk Gland (1)
    .mob Spindleweb Spider
    .mob Spindleweb Lurker
    .mob Greater Spindleweb
step
    .goto 1942,32.13,73.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Enith|r
    .complete 9164,1 --Apothecary Enith
    .target Apothecary Enith
step
    .goto 1942,40.98,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Varnis|r
    .complete 9164,2 --Apprentice Varnis
    .target Apprentice Varnis
step
    .goto 1942,32.79,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Vedoran|r
    .complete 9164,3 --Ranger Vedoran
    .target Ranger Vedoran
step << BloodElf Mage
    #completewith next
    .hs >>Hearth to Innkeeper Kalarin's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << BloodElf Mage
    .goto 1942,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Vandril|r
    .turnin 9488 >>Turn in A Simple Robe
    .target Arcanist Vandril
step
    .goto 1942,54.83,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Janeda|r
    .turnin 9164 >>Turn in Captives at Deatholme
    .target Arcanist Janeda
step << !Troll/!wotlk !Orc/!wotlk
    .hs >> Hearth to Tranquillien
    .cooldown item,6948,>0
    .subzoneskip 3488
step
    .goto 1942,36.25,70.35,0
    .goto 1942,37.82,52.20,50,0
    .goto 1942,38.11,56.94,50,0
    .goto 1942,37.73,61.43,50,0
    .goto 1942,37.06,65.52,50,0
    .goto 1942,36.25,70.35,50,0
    .xp 20 >>Grind to 20
step
    +|cRXP_WARN_That is all of Ghostlands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Undercity|r: Journey to Undercity << Orc/Undead/Tauren/Troll
    >>|cRXP_FRIENDLY_Undercity|r: Journey to Undercity << BloodElf
step
    +|cRXP_WARN_Suggested next zones at level 17|r: |cRXP_FRIENDLY_The Barrens|r (about 0.9 levels of quests, starting around Gazlowe). Completing this step loads the guide for The Barrens --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Ghostlands is planned from level 20.|r Load its guide for level 20 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 10 - 21 Ghostlands
#subweight -10
#name 20-21 Ghostlands: around Magister Kaendris
--RouteBuilder:next
#next Zone Routes (Horde)\18-20 The Barrens: around Tonga Runetotem

step
    .goto 1942,72.23,31.15
    >>Click the |cRXP_PICK_Wanted Poster: Kel'gash the Wicked|r
    .accept 9215 >>Accept Bring Me Kel'gash's Head!
step
    .goto 1942,48.35,31.67
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9156 >>Accept Wanted: Knucklerot and Luzran
step
    .goto 1942,65.29,79.46
    >>Kill |cRXP_ENEMY_Kel'gash the Wicked|r and loot |cRXP_LOOT_Head of Kel'gash the Wicked|r
    .complete 9215,1 --Head of Kel'gash the Wicked (1)
    .mob Kel'gash the Wicked
step
    .goto 1942,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Helios|r
    .turnin 9215 >>Turn in Bring Me Kel'gash's Head!
    .target Captain Helios
step
    .goto 1942,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .accept 9167 >>Accept The Traitor's Destruction
    .target Magister Kaendris
    .isQuestTurnedIn 9176 --any of: The Twin Ziggurats
step
    .goto 1942,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Idonis|r
    .accept 9170 >>Accept Dar'Khan's Lieutenants
    .target Magister Idonis
    .isQuestTurnedIn 9220 --any of: War on Deatholme
step
    .goto 1942,41.07,47.36
    >>Kill |cRXP_ENEMY_Knucklerot|r and loot |cRXP_LOOT_Knucklerot's Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    .goto 1942,34.33,49.96
    >>Kill |cRXP_ENEMY_Luzran|r and loot |cRXP_LOOT_Luzran's Head|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    .goto 1942,46.02,33.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathstalker Rathiel|r
    .turnin 9156 >>Turn in Wanted: Knucklerot and Luzran
    .target Deathstalker Rathiel
step
    .goto 1942,32.10,74.46
    >>Kill |cRXP_ENEMY_Jurion the Deceiver|r
    .complete 9170,3 --Jurion the Deceiver slain (1)
    .mob Jurion the Deceiver
    .isOnQuest 9170
step
    .goto 1942,37.36,79.33
    >>Kill |cRXP_ENEMY_Mirdoran the Fallen|r
    .complete 9170,1 --Mirdoran the Fallen slain (1)
    .mob Mirdoran the Fallen
    .isOnQuest 9170
step
    .goto 1942,29.27,88.90
    >>Kill |cRXP_ENEMY_Masophet the Black|r
    .complete 9170,4 --Masophet the Black slain (1)
    .mob Masophet the Black
    .isOnQuest 9170
step
    .goto 1942,32.67,90.31
    >>Kill |cRXP_ENEMY_Borgoth the Bloodletter|r
    .complete 9170,2 --Borgoth the Bloodletter slain (1)
    .mob Borgoth the Bloodletter
    .isOnQuest 9170
step
    .goto 1942,33.04,81.26
    >>Kill |cRXP_ENEMY_Dar'Khan Drathir|r and loot |cRXP_LOOT_Dar'Khan's Head|r
    .complete 9167,1 --Dar'Khan's Head (1)
    .mob Dar'Khan Drathir
    .isOnQuest 9167
step
    .goto 1942,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .turnin 9167 >>Turn in The Traitor's Destruction
    .target Magister Kaendris
    .isOnQuest 9167
step
    .goto 1942,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Kaendris|r
    .accept 9811 >>Accept Friend of the Sin'dorei << Orc/Undead/Tauren/Troll
    .accept 9328 >>Accept Hero of the Sin'dorei << BloodElf
    .target Magister Kaendris
    .isQuestTurnedIn 9167 --any of: The Traitor's Destruction
step
    .goto 1942,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Idonis|r
    .turnin 9170 >>Turn in Dar'Khan's Lieutenants
    .target Magister Idonis
    .isOnQuest 9170
step
    +|cRXP_WARN_End of the Ghostlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Silvermoon City|r: Hero of the Sin'dorei << BloodElf
    >>|cRXP_FRIENDLY_Silvermoon City|r: Friend of the Sin'dorei << Orc/Undead/Tauren/Troll
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_The Barrens|r (about 0.9 levels of quests, starting around Tonga Runetotem). Completing this step loads the guide for The Barrens --RouteBuilder:next
]])
