-- 72-75 Dragonblight: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Dragonblight.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 72-75 Dragonblight
--RouteBuilder:next
#next Zone Routes (Horde)\70-72 Howling Fjord: around Lurielle;Zone Routes (Horde)\73-75 Grizzly Hills: around Drakuru

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,10.29,53.83
    >>Secure Passage to Dragonblight
    .complete 11930,1 --Secure Passage to Dragonblight
    .isOnQuest 11930
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,12.75,51.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wartook Iceborn|r
    .turnin 11930 >>Turn in Across Transborea
    .target Wartook Iceborn
    .isOnQuest 11930
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,12.75,51.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wartook Iceborn|r
    .accept 11977 >>Accept A Tauren Among Taunka
    .target Wartook Iceborn
    .isQuestTurnedIn 11930 --any of: Across Transborea
    .xp <71,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,14.21,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Roh'kill|r
    .accept 11980 >>Accept Pride of the Horde
    .target Blood Guard Roh'kill
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,13.30,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Brighthoof|r
    .turnin 11977 >>Turn in A Tauren Among Taunka
    .target Emissary Brighthoof
    .isOnQuest 11977
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,13.30,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Brighthoof|r
    .accept 11978 >>Accept Into the Fold
    .target Emissary Brighthoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,16.27,51.36,0
    .goto 115,16.27,51.36,40,0
    .goto 115,17.66,48.28,40,0
    .goto 115,16.01,46.42,40,0
    >>Kill |cRXP_ENEMY_Anub'ar Ambushers|r
    >>Pick up |cRXP_PICK_Horde Armaments|r from the ground
    .complete 11980,1 --Anub'ar Ambusher slain (15)
    .complete 11978,1 --Horde Armaments (10)
    .mob Anub'ar Ambusher
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,14.21,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Roh'kill|r
    .turnin 11980 >>Turn in Pride of the Horde
    .target Blood Guard Roh'kill
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,13.30,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Brighthoof|r
    .turnin 11978 >>Turn in Into the Fold
    .accept 11983 >>Accept Blood Oath of the Horde
    .target Emissary Brighthoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,13.31,48.58
    >>Kill |cRXP_ENEMY_Taunka'le Refugees|r
    .complete 11983,1 --Taunka'le Refugee (8)
    .mob Taunka'le Refugee
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,13.30,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Brighthoof|r
    .turnin 11983 >>Turn in Blood Oath of the Horde
    .accept 12008 >>Accept Agmar's Hammer
    .target Emissary Brighthoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.32,46.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Torvus|r
    .accept 12033 >>Accept Message from the West
    .target Messenger Torvus
    .isQuestTurnedIn 11916 --any of: Hellscream's Champion
    .xp <71,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.17,46.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Agmar|r
    .turnin 12008 >>Turn in Agmar's Hammer while you are here
    .isQuestComplete 12008
    .target Overlord Agmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.36,46.67
    >>Click the |cRXP_PICK_Burning Brazier|r
    .complete 12033,1 --Burning Brazier
    .isOnQuest 12033
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.32,46.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Torvus|r
    .turnin 12033 >>Turn in Message from the West
    .target Messenger Torvus
    .isOnQuest 12033
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.68,46.55
    >>Click the |cRXP_PICK_Wanted!|r
    .accept 12089 >>Accept Wanted: Magister Keldonus
    .accept 12090 >>Accept Wanted: Gigantaur
    .accept 12091 >>Accept Wanted: Dreadtalon
step
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .accept 12173 >>Accept Attunement to Dalaran << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .accept 11999 >>Accept Rifle the Bodies << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.17,46.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Agmar|r
    .turnin 12008 >>Turn in Agmar's Hammer
    .accept 12034 >>Accept Victory Nears...
    .target Overlord Agmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .turnin 12034 >>Turn in Victory Nears... while you are here
    .isQuestComplete 12034
    .target Senior Sergeant Juktok
step
    .goto 115,59.32,53.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lethecus|r
    .target Lethecus
    .home >>Set your Hearthstone to Lethecus's inn
step
    .goto 115,37.51,45.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narzun|r
    .fp Agmar's Hammer >> Get the Agmar's Hammer flight path
    .target Narzun Skybreaker
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .accept 12458 >>Accept Seeds of the Lashers
    .target Lord Itharius
    .xp <72,1
step
    .goto 115,60.07,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalice|r
    .accept 12447 >>Accept The Obsidian Dragonshrine
    .target Nalice
    .xp <72,1
step
    .goto 115,60.00,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .accept 12470 >>Accept Mystery of the Infinite
    .target Chromie
    .xp <72,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .turnin 12034 >>Turn in Victory Nears...
    .accept 12036 >>Accept From the Depths of Azjol-Nerub
    .target Senior Sergeant Juktok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.61,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borus Ironbender|r
    .accept 12039 >>Accept Black Blood of Yogg-Saron
    .target Borus Ironbender
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,35.81,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gort|r
    .accept 12056 >>Accept Marked for Death: High Cultist Zangus
    .target Captain Gort
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.08,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soar Hawkfury|r
    .accept 12100 >>Accept Containing the Rot
    .target Soar Hawkfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along26
    >>As you go: Loot the |cRXP_PICK_Black Blood of Yogg-Sarons|r for |cRXP_LOOT_Black Blood of Yogg-Saron Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12039,1 --Black Blood of Yogg-Saron Sample (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along22
    >>As you go: Kill |cRXP_ENEMY_High Cultist Zangus|r and loot |cRXP_LOOT_Head of High Cultist Zangus|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12056,1 --Head of High Cultist Zangus (1)
    .mob High Cultist Zangus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along22
    #loop
    .goto 115,28.17,49.43,0
    .goto 115,28.17,49.43,40,0
    .goto 115,24.55,49.19,40,0
    >>Kill |cRXP_ENEMY_Blighted Elks|r, |cRXP_ENEMY_Rabid Grizzlies|r and |cRXP_ENEMY_Infected Wildlifes|r
    >>Kill |cRXP_ENEMY_Blighted Elks|r and |cRXP_ENEMY_Rabid Grizzlies|r. Loot them for |cRXP_LOOT_Rot Resistant Organ|r
    .complete 12100,2 --Blighted Elk (8)
    .complete 12100,1 --Rot Resistant Organ (1)
    .mob Blighted Elk
    .mob Rabid Grizzly
    .mob Infected Wildlife
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,26.18,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilix the Unraveler|r
    .accept 12040 >>Accept An Enemy in Arthas
    .target Kilix the Unraveler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Anub'ar Underlords|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12040,1 --Anub'ar Underlord slain (6)
    .mob Anub'ar Underlord
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along24
    .goto 115,26.26,50.01
    >>Pit of Narjun Explored
    .complete 12036,1 --Pit of Narjun Explored
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,26.14,49.08,0
    .goto 115,26.14,49.08,40,0
    .goto 115,27.98,48.28,40,0
    >>Kill |cRXP_ENEMY_High Cultist Zangus|r and loot |cRXP_LOOT_Head of High Cultist Zangus|r
    >>Kill |cRXP_ENEMY_Anub'ar Underlords|r
    .complete 12056,1 --Head of High Cultist Zangus (1)
    .complete 12040,1 --Anub'ar Underlord slain (6)
    .mob High Cultist Zangus
    .mob Anub'ar Underlord
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along26
    .goto 115,26.18,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilix the Unraveler|r
    .turnin 12040 >>Turn in An Enemy in Arthas
    .accept 12041 >>Accept The Lost Empire
    .target Kilix the Unraveler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,26.46,49.11,0
    .goto 115,26.46,49.11,40,0
    .goto 115,28.55,48.48,40,0
    >>Loot the |cRXP_PICK_Black Blood of Yogg-Sarons|r for |cRXP_LOOT_Black Blood of Yogg-Saron Sample|r
    .complete 12039,1 --Black Blood of Yogg-Saron Sample (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Dead Mage Hunter|r and loot |cRXP_LOOT_Moonrest Gardens Plans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11999,1 --Moonrest Gardens Plans (1)
    .mob Dead Mage Hunter
step
    .goto 115,24.19,60.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethenial Moonshadow|r
    .accept 12006 >>Accept Avenge this Atrocity!
    .target Ethenial Moonshadow
step
    #loop
    .goto 115,21.32,62.50,0
    .goto 115,21.32,62.50,40,0
    .goto 115,19.42,60.18,40,0
    >>Kill |cRXP_ENEMY_Magister Keldonus|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Surge Needle Sorcerers|r, |cRXP_ENEMY_Moonrest Stalkers|r, |cRXP_ENEMY_Focus Wizards|r and |cRXP_ENEMY_Dragonblight Mage Hunters|r
    .complete 12089,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Magister Keldonus slain (1)
    .complete 12006,1 --Surge Needle Sorcerer (8)
    .mob Magister Keldonus << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .mob Surge Needle Sorcerer
    .mob Moonrest Stalker
    .mob Focus Wizard
    .mob Dragonblight Mage Hunter
step
    .goto 115,24.19,60.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethenial Moonshadow|r
    .turnin 12006 >>Turn in Avenge this Atrocity!
    .accept 12013 >>Accept End Arcanimus
    .target Ethenial Moonshadow
step
    .goto 115,20.02,59.64
    >>Kill |cRXP_ENEMY_Arcanimus|r
    .complete 12013,1 --Arcanimus slain (1)
    .mob Arcanimus
step
    #label Along32
    .goto 115,24.19,60.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethenial Moonshadow|r
    .turnin 12013 >>Turn in End Arcanimus
    .target Ethenial Moonshadow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,25.84,58.66
    >>Kill |cRXP_ENEMY_Dead Mage Hunter|r and loot |cRXP_LOOT_Moonrest Gardens Plans|r
    .complete 11999,1 --Moonrest Gardens Plans (1)
    .mob Dead Mage Hunter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.17,46.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Agmar|r
    .turnin 12041 >>Turn in The Lost Empire
    .target Overlord Agmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .turnin 11999 >>Turn in Rifle the Bodies
    .accept 12005 >>Accept Prevent the Accord
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .turnin 12036 >>Turn in From the Depths of Azjol-Nerub
    .accept 12053 >>Accept The Might of the Horde
    .target Senior Sergeant Juktok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.61,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borus Ironbender|r
    .turnin 12039 >>Turn in Black Blood of Yogg-Saron
    .accept 12048 >>Accept Scourge Armaments
    .target Borus Ironbender
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.08,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soar Hawkfury|r
    .turnin 12100 >>Turn in Containing the Rot
    .accept 12101 >>Accept The Good Doctor...
    .target Soar Hawkfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.08,48.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Sintar Malefious|r
    .turnin 12101 >>Turn in The Good Doctor...
    .accept 12102 >>Accept In Search of the Ruby Lilac
    .accept 12189 >>Accept Imbeciles Abound!
    .target Doctor Sintar Malefious
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,35.81,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gort|r
    .turnin 12056 >>Turn in Marked for Death: High Cultist Zangus
    .turnin 12089 >>Turn in Wanted: Magister Keldonus
    .target Captain Gort
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,35.81,46.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Icemist|r
    .accept 12063 >>Accept Strength of Icemist
    .target Greatmother Icemist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Anub'ar Cultists|r, |cRXP_ENEMY_Anub'ar Slayers|r, |cRXP_ENEMY_Anok'ra the Manipulators|r and |cRXP_ENEMY_Tivax the Breakers|r. Loot them for |cRXP_LOOT_Scourge Armament|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12048,1 --Scourge Armament (8)
    .mob Anub'ar Cultist
    .mob Anub'ar Slayer
    .mob Anok'ra the Manipulator
    .mob Tivax the Breaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,22.60,41.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Banthok Icemist|r
    .turnin 12063 >>Turn in Strength of Icemist
    .accept 12064 >>Accept Chains of the Anub'ar
    .target Banthok Icemist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop12057x1
    >>|cRXP_LOOT_Flesh-Bound Tome|r can drop from |cRXP_ENEMY_Anub'ar Cultist|r, |cRXP_ENEMY_Anok'ra the Manipulator|r, |cRXP_ENEMY_Tivax the Breaker|r. Use it to start the quest if you get one
    .collect 36744,1,12057 --Flesh-Bound Tome (1)
    .accept 12057 >>Accept The Flesh-Bound Tome
    .use 36744
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop12057x1
    >>As you go: Kill |cRXP_ENEMY_Sinok the Shadowrager|r and loot |cRXP_LOOT_Sinok's Key Fragment|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12064,3 --Sinok's Key Fragment (1)
    .mob Sinok the Shadowrager
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop12057x1
    .goto 115,24.94,43.92
    >>Kill |cRXP_ENEMY_Anok'ra the Manipulator|r and loot |cRXP_LOOT_Anok'ra's Key Fragment|r
    >>Kill |cRXP_ENEMY_Tivax the Breaker|r and loot |cRXP_LOOT_Tivax's Key Fragment|r
    .complete 12064,1 --Anok'ra's Key Fragment (1)
    .complete 12064,2 --Tivax's Key Fragment (1)
    .mob Anok'ra the Manipulator
    .mob Tivax the Breaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,25.24,41.16
    >>Senior Sergeant Juktok at Agmar's Hammer in the Dragonblight wants you to use the Warsong Battle Standard at Icemist Village and defend it against attackers.
    .complete 12053,1 --Warsong Battle Standard
    .target Warsong Battle Standard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop12057x2
    >>|cRXP_LOOT_Flesh-Bound Tome|r can drop from |cRXP_ENEMY_Anub'ar Cultist|r, |cRXP_ENEMY_Anok'ra the Manipulator|r, |cRXP_ENEMY_Tivax the Breaker|r. Use it to start the quest if you get one
    .collect 36744,1,12057 --Flesh-Bound Tome (1)
    .accept 12057 >>Accept The Flesh-Bound Tome
    .use 36744
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop12057x2
    .goto 115,25.70,44.19
    >>Kill |cRXP_ENEMY_Sinok the Shadowrager|r and loot |cRXP_LOOT_Sinok's Key Fragment|r
    .complete 12064,3 --Sinok's Key Fragment (1)
    .mob Sinok the Shadowrager
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along46
    .goto 115,22.60,41.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Banthok Icemist|r
    .turnin 12064 >>Turn in Chains of the Anub'ar
    .accept 12069 >>Accept Return of the High Chief
    .target Banthok Icemist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop12057x3
    >>|cRXP_LOOT_Flesh-Bound Tome|r can drop from |cRXP_ENEMY_Anub'ar Cultist|r, |cRXP_ENEMY_Anok'ra the Manipulator|r, |cRXP_ENEMY_Tivax the Breaker|r. Use it to start the quest if you get one
    .collect 36744,1,12057 --Flesh-Bound Tome (1)
    .accept 12057 >>Accept The Flesh-Bound Tome
    .use 36744
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop12057x3
    #loop
    .goto 115,22.67,42.25,0
    .goto 115,22.67,42.25,40,0
    .goto 115,24.82,45.22,40,0
    .goto 115,26.19,44.48,40,0
    >>Kill |cRXP_ENEMY_Under-King Anub'et'kan|r and loot |cRXP_LOOT_Fragment of Anub'et'kan's Husk|r. It can also be picked up from |cRXP_PICK_Anub'et'kan's Carapace|r on the ground
    >>Kill |cRXP_ENEMY_Anub'ar Cultists|r, |cRXP_ENEMY_Anub'ar Slayers|r, |cRXP_ENEMY_Anok'ra the Manipulators|r and |cRXP_ENEMY_Tivax the Breakers|r. Loot them for |cRXP_LOOT_Scourge Armament|r
    .complete 12069,1 --Fragment of Anub'et'kan's Husk (1)
    .complete 12048,1 --Scourge Armament (8)
    .mob Under-King Anub'et'kan
    .mob Anub'ar Cultist
    .mob Anub'ar Slayer
    .mob Anok'ra the Manipulator
    .mob Tivax the Breaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,19.52,58.12
    >>Kill |cRXP_ENEMY_Wind Trader Mu'fah|r and loot |cRXP_LOOT_Wind Trader Mu'fah's Remains|r
    >>Kill |cRXP_ENEMY_Goramosh|r and loot |cRXP_LOOT_The Scales of Goramosh|r
    .complete 12005,1 --Wind Trader Mu'fah's Remains (1)
    .complete 12005,2 --The Scales of Goramosh (1)
    .mob Wind Trader Mu'fah
    .mob Goramosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,19.52,58.12
    >>Kill |cRXP_ENEMY_Goramosh|r and loot |cRXP_LOOT_Goramosh's Strange Device|r. Use it to start the quest
    .collect 36746,1,12059 --Goramosh's Strange Device (1)
    .accept 12059 >>Accept A Strange Device
    .use 36746
    .mob Goramosh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .turnin 12005 >>Turn in Prevent the Accord
    .turnin 12059 >>Turn in A Strange Device
    .accept 12061 >>Accept Projections and Plans
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .turnin 12053 >>Turn in The Might of the Horde while you are here
    .isQuestComplete 12053
    .target Senior Sergeant Juktok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.61,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borus Ironbender|r
    .turnin 12048 >>Turn in Scourge Armaments while you are here
    .isQuestComplete 12048
    .target Borus Ironbender
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.17,46.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Agmar|r
    .turnin 12069 >>Turn in Return of the High Chief
    .accept 12140 >>Accept All Hail Roanauk!
    .target Overlord Agmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .accept 12488 >>Accept The High Executor Needs You
    .target Senior Sergeant Juktok
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.25,45.44
    >>Kill |cRXP_ENEMY_Roanauk Icemist|r
    .complete 12140,1 --Roanauk Icemist slain (1)
    .mob Roanauk Icemist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.17,46.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Agmar|r
    .turnin 12140 >>Turn in All Hail Roanauk! while you are here
    .isQuestComplete 12140
    .target Overlord Agmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .turnin 12053 >>Turn in The Might of the Horde
    .accept 12071 >>Accept Attack by Air!
    .target Senior Sergeant Juktok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.61,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borus Ironbender|r
    .turnin 12048 >>Turn in Scourge Armaments
    .target Borus Ironbender
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,35.81,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gort|r
    .turnin 12057 >>Turn in The Flesh-Bound Tome
    .target Captain Gort
    .isOnQuest 12057
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,35.81,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gort|r
    .accept 12115 >>Accept Koltira and the Language of Death
    .target Captain Gort
    .isQuestTurnedIn 12057 --any of: The Flesh-Bound Tome
    .xp <71,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.11,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 12115 >>Turn in Koltira and the Language of Death
    .target Koltira Deathweaver
    .isOnQuest 12115
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.11,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .accept 12125 >>Accept In Service of Blood
    .accept 12126 >>Accept In Service of the Unholy
    .accept 12127 >>Accept In Service of Frost
    .target Koltira Deathweaver
    .isQuestTurnedIn 12115 --any of: Koltira and the Language of Death
    .xp <71,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.21,45.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valnok Windrager|r
    .turnin 12071 >>Turn in Attack by Air!
    .accept 12072 >>Accept Blightbeasts be Damned!
    .target Valnok Windrager
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .accept 12488 >>Accept The High Executor Needs You
    .target Senior Sergeant Juktok
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,26.82,46.68,0
    .goto 115,26.82,46.68,40,0
    .goto 115,23.16,46.88,40,0
    .goto 115,24.19,38.69,40,0
    >>Kill |cRXP_ENEMY_Anub'ar Blightbeasts|r
    .complete 12072,1 --Anub'ar Blightbeast slain (25)
    .mob Anub'ar Blightbeast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,19.78,59.79
    >>Kill |cRXP_ENEMY_Projections and Plans Kill Credit Bunny|r
    .complete 12061,1 --Projections and Plans Kill Credit Bunny slain (1)
    .mob Projections and Plans Kill Credit Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .turnin 12061 >>Turn in Projections and Plans
    .accept 12066 >>Accept The Focus on the Beach
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.17,46.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Agmar|r
    .turnin 12140 >>Turn in All Hail Roanauk!
    .target Overlord Agmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.21,45.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valnok Windrager|r
    .turnin 12072 >>Turn in Blightbeasts be Damned!
    .target Valnok Windrager
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .accept 12488 >>Accept The High Executor Needs You
    .target Senior Sergeant Juktok
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,26.32,64.86
    >>Kill |cRXP_ENEMY_Captain Emmy Malin|r and loot |cRXP_LOOT_Ley Line Focus Control Ring|r
    .collect 36751,1,12066,1 --Ley Line Focus Control Ring (1)
    .mob Captain Emmy Malin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,26.49,65.29
    >>Kill |cRXP_ENEMY_The Focus on the Beach Kill Credit Bunny|r
    .complete 12066,1 --The Focus on the Beach Kill Credit Bunny slain (1)
    .mob The Focus on the Beach Kill Credit Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .turnin 12066 >>Turn in The Focus on the Beach
    .accept 12084 >>Accept Atop the Woodlands
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.51,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthwarden Grife|r
    .accept 12096 >>Accept Strengthen the Ancients
    .target Earthwarden Grife
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .accept 12488 >>Accept The High Executor Needs You
    .target Senior Sergeant Juktok
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,35.89,61.86,0
    .goto 115,35.89,61.86,40,0
    .goto 115,35.45,64.59,40,0
    >>Kill |cRXP_ENEMY_Woodlands Walker|r and loot |cRXP_LOOT_Bark of the Walkers|r
    .collect 36786,1,12096,1 --Bark of the Walkers (1)
    .mob Woodlands Walker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,32.23,65.17
    >>Kill |cRXP_ENEMY_Lothalor Ancients|r
    .complete 12096,1 --Lothalor Ancient slain (3)
    .mob Lothalor Ancient
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along71
    >>As you go: Kill |cRXP_ENEMY_Lieutenant Ta'zinni|r and loot |cRXP_LOOT_Ley Line Focus Control Amulet|r. |cRXP_WARN_Anything left is finished later|r
    .collect 36779,1,12084,1 --Ley Line Focus Control Amulet (1)
    .mob Lieutenant Ta'zinni
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along71
    .goto 115,31.42,72.04
    >>Kill |cRXP_ENEMY_Lieutenant Ta'zinni|r and loot |cRXP_LOOT_Lieutenant Ta'zinni's Letter|r. Use it to start the quest
    .collect 36780,1,12085 --Lieutenant Ta'zinni's Letter (1)
    .accept 12085 >>Accept A Letter for Home
    .use 36780
    .mob Lieutenant Ta'zinni
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,31.42,72.04
    >>Kill |cRXP_ENEMY_Lieutenant Ta'zinni|r and loot |cRXP_LOOT_Ley Line Focus Control Amulet|r
    .collect 36779,1,12084,1 --Ley Line Focus Control Amulet (1)
    .mob Lieutenant Ta'zinni
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,32.26,71.62
    >>Kill |cRXP_ENEMY_Atop the Woodlands Kill Credit Bunny|r
    .complete 12084,1 --Atop the Woodlands Kill Credit Bunny slain (1)
    .mob Atop the Woodlands Kill Credit Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,36.17,69.55,0
    .goto 115,36.17,69.55,40,0
    .goto 115,38.88,69.97,40,0
    .goto 115,39.48,64.12,40,0
    >>Kill |cRXP_ENEMY_Deranged Indu'le Villagers|r
    .complete 12125,1 --Deranged Indu'le Villager slain (8)
    .mob Deranged Indu'le Villager
    .isOnQuest 12125
step
    .goto 115,48.00,74.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Ko'nani|r
    .turnin 12117 >>Turn in Travel to Moa'ki Harbor
    .target Elder Ko'nani
    .isOnQuest 12117
step
    .goto 115,48.00,74.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Ko'nani|r
    .accept 11958 >>Accept Let Nothing Go To Waste
    .target Elder Ko'nani
    .isQuestTurnedIn 12117 --any of: Travel to Moa'ki Harbor
    .xp <71,1
step
    .goto 115,48.00,74.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Ko'nani|r
    .turnin 12118 >>Turn in Travel to Moa'ki Harbor
    .target Elder Ko'nani
    .isOnQuest 12118
step
    #loop
    .goto 115,50.26,68.97,0
    .goto 115,50.26,68.97,40,0
    .goto 115,47.46,65.04,40,0
    .goto 115,50.75,61.77,40,0
    >>Kill |cRXP_ENEMY_Snowfall Glade Reavers|r, |cRXP_ENEMY_Snowfall Glade Wolvars|r, |cRXP_ENEMY_Snowfall Glade Den Mothers|r and |cRXP_ENEMY_Snowfall Glade Shamans|r. Loot them for |cRXP_LOOT_Stolen Moa'ki Goods|r
    .complete 11958,1 --Stolen Moa'ki Goods (6)
    .mob Snowfall Glade Reaver
    .mob Snowfall Glade Wolvar
    .mob Snowfall Glade Den Mother
    .mob Snowfall Glade Shaman
    .isOnQuest 11958
step
    .goto 115,48.00,74.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Ko'nani|r
    .turnin 11958 >>Turn in Let Nothing Go To Waste
    .target Elder Ko'nani
    .isOnQuest 11958
step
    .goto 115,48.00,74.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Ko'nani|r
    .accept 11959 >>Accept Slay Loguhn
    .target Elder Ko'nani
    .isQuestTurnedIn 11958 --any of: Let Nothing Go To Waste
    .xp <71,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,47.20,58.04
    >>Kill |cRXP_ENEMY_Gigantaur|r
    .complete 12090,1 --Gigantaur slain (1)
    .mob Gigantaur
step
    .goto 115,46.32,59.14
    >>Kill |cRXP_ENEMY_Loguhn|r and loot |cRXP_LOOT_Blood of Loguhn|r
    .collect 35688,1,11959,1 --Blood of Loguhn (1)
    .mob Loguhn
    .isOnQuest 11959
step
    .goto 115,46.32,59.14
    >>Interact with |cRXP_FRIENDLY_Loguhn|r
    .complete 11959,1 --Loguhn
    .target Loguhn
    .isOnQuest 11959
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,47.69,49.07
    >>Pick up |cRXP_PICK_Ruby Lilac|r from the ground
    .complete 12102,1 --Ruby Lilac (1)
step
    .goto 115,47.64,48.97
    >>Kill |cRXP_ENEMY_Dahlia Suntouch|r and loot |cRXP_LOOT_Ruby Brooch|r. Use it to start the quest
    .collect 37833,1,12419 --Ruby Brooch (1)
    .accept 12419 >>Accept The Fate of the Ruby Dragonshrine
    .use 37833
    .mob Dahlia Suntouch
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,47.44,51.82
    >>Kill |cRXP_ENEMY_Duke Vallenhal|r
    .complete 12126,1 --Duke Vallenhal slain (1)
    .mob Duke Vallenhal
    .isOnQuest 12126
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,46.29,43.03
    >>Kill |cRXP_ENEMY_Dreadtalon|r
    .complete 12091,1 --Dreadtalon slain (1)
    .mob Dreadtalon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .turnin 12084 >>Turn in Atop the Woodlands
    .accept 12106 >>Accept Search Indu'le Village
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.17,46.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Agmar|r
    .turnin 12085 >>Turn in A Letter for Home
    .target Overlord Agmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.11,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 12125 >>Turn in In Service of Blood
    .target Koltira Deathweaver
    .isOnQuest 12125
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.11,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 12126 >>Turn in In Service of the Unholy
    .target Koltira Deathweaver
    .isOnQuest 12126
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.51,47.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthwarden Grife|r
    .turnin 12096 >>Turn in Strengthen the Ancients
    .target Earthwarden Grife
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,35.81,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gort|r
    .turnin 12090 >>Turn in Wanted: Gigantaur
    .turnin 12091 >>Turn in Wanted: Dreadtalon
    .accept 12095 >>Accept To Dragon's Fall
    .target Captain Gort
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.08,48.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Sintar Malefious|r
    .turnin 12102 >>Turn in In Search of the Ruby Lilac
    .accept 12104 >>Accept Return to Soar
    .target Doctor Sintar Malefious
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.08,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soar Hawkfury|r
    .turnin 12104 >>Turn in Return to Soar
    .accept 12111 >>Accept Where the Wild Things Roam
    .target Soar Hawkfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .accept 12488 >>Accept The High Executor Needs You
    .target Senior Sergeant Juktok
    .xp <73,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,36.73,51.88,0
    .goto 115,36.73,51.88,40,0
    .goto 115,38.11,54.26,40,0
    .goto 115,34.47,50.46,40,0
    >>Kill |cRXP_ENEMY_Snowfall Elks|r
    >>Kill |cRXP_ENEMY_Arctic Grizzlies|r
    .complete 12111,1 --Snowfall Elk slain (5)
    .complete 12111,2 --Arctic Grizzly slain (5)
    .mob Snowfall Elk
    .mob Arctic Grizzly
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.08,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soar Hawkfury|r
    .turnin 12111 >>Turn in Where the Wild Things Roam
    .target Soar Hawkfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .accept 12488 >>Accept The High Executor Needs You
    .target Senior Sergeant Juktok
    .xp <73,1
step
    .goto 115,48.00,74.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Ko'nani|r
    .turnin 11959 >>Turn in Slay Loguhn
    .target Elder Ko'nani
    .isOnQuest 11959
step
    .goto 115,47.99,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
    .accept 12009 >>Accept Tua'kea's Crab Traps
    .target Tua'kea
    .isQuestTurnedIn 11959 --any of: Slay Loguhn
    .xp <71,1
step
    .goto 115,49.14,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toalu'u the Mystic|r
    .accept 12028 >>Accept Spiritual Insight
    .target Toalu'u the Mystic
    .isQuestTurnedIn 11959 --any of: Slay Loguhn
    .xp <71,1
step
    .goto 115,48.94,75.75
    >>Click the |cRXP_PICK_Toalu'u's Brazier|r
    .complete 12028,1 --Toalu'u's Brazier
    .isOnQuest 12028
step
    .goto 115,49.14,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toalu'u the Mystic|r
    .turnin 12028 >>Turn in Spiritual Insight
    .target Toalu'u the Mystic
    .isOnQuest 12028
step
    .goto 115,49.14,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toalu'u the Mystic|r
    .accept 12030 >>Accept Elder Mana'loa
    .target Toalu'u the Mystic
    .isQuestTurnedIn 12028 --any of: Spiritual Insight
    .xp <71,1
step
    .goto 115,47.72,79.99
    >>Click the |cRXP_PICK_Wrecked Crab Trap|r
    .accept 12011 >>Accept Signs of Big Watery Trouble
    .isQuestTurnedIn 11959 --any of: Slay Loguhn
    .xp <71,1
step
    .goto 115,47.99,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
    .turnin 12011 >>Turn in Signs of Big Watery Trouble
    .target Tua'kea
    .isOnQuest 12011
step
    .goto 115,47.99,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
    .accept 12016 >>Accept The Bait
    .target Tua'kea
    .isQuestTurnedIn 12011 --any of: Signs of Big Watery Trouble
    .xp <71,1
step
    .goto 115,41.96,79.90
    >>Kill |cRXP_ENEMY_Kili'uas|r. Loot them for |cRXP_LOOT_The Flesh of "Two Huge Pincers"|r
    .complete 12016,1 --The Flesh of "Two Huge Pincers" (2)
    .mob Kili'ua
    .isOnQuest 12016
step
    #loop
    .goto 115,45.32,79.81,0
    .goto 115,45.32,79.81,40,0
    .goto 115,48.73,80.29,40,0
    .goto 115,49.41,79.00,40,0
    >>Pick up |cRXP_PICK_Tua'kea Crab Trap|r from the ground
    .complete 12009,1 --Tua'kea Crab Trap (1)
    .isOnQuest 12009
step
    .goto 115,47.99,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
    .turnin 12009 >>Turn in Tua'kea's Crab Traps
    .target Tua'kea
    .isOnQuest 12009
step
    .goto 115,47.99,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
    .turnin 12016 >>Turn in The Bait
    .target Tua'kea
    .isOnQuest 12016
step
    .goto 115,47.99,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
    .accept 12017 >>Accept Meat on the Hook
    .target Tua'kea
    .isQuestTurnedIn 12016 --any of: The Bait
    .xp <71,1
step
    .goto 115,46.60,78.00
    >>Kill |cRXP_ENEMY_Tu'u'gwar|r
    .complete 12017,1 --Tu'u'gwar slain (1)
    .mob Tu'u'gwar
    .isOnQuest 12017
step
    .goto 115,47.99,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tua'kea|r
    .turnin 12017 >>Turn in Meat on the Hook
    .target Tua'kea
    .isOnQuest 12017
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,40.25,66.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Commander Evenstar|r
    .turnin 12106 >>Turn in Search Indu'le Village
    .accept 12110 >>Accept The End of the Line
    .target Mage-Commander Evenstar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,40.00,67.50
    >>Kill |cRXP_ENEMY_The End of the Line Ley Line Focus Kill Credit Bunny|r
    .complete 12110,1 --The End of the Line Ley Line Focus Kill Credit Bunny slain (1)
    .mob The End of the Line Ley Line Focus Kill Credit Bunny
step
    .goto 115,36.64,64.96
    >>Click the |cRXP_PICK_Elder Mana'loa|r
    .turnin 12030 >>Turn in Elder Mana'loa
    .isOnQuest 12030
step
    .goto 115,36.64,64.96
    >>Click the |cRXP_PICK_Elder Mana'loa|r
    .accept 12031 >>Accept Freedom for the Lingering
    .isQuestTurnedIn 12030 --any of: Elder Mana'loa
    .xp <71,1
step
    #loop
    .goto 115,37.13,64.77,0
    .goto 115,37.13,64.77,40,0
    .goto 115,38.81,70.96,40,0
    .goto 115,41.45,69.32,40,0
    >>Kill |cRXP_ENEMY_Indu'le Mystics|r, |cRXP_ENEMY_Indu'le Warriors|r and |cRXP_ENEMY_Indu'le Fishermans|r
    .complete 12031,1 --Indu'le Mystic (8)
    .mob Indu'le Mystic
    .mob Indu'le Warrior
    .mob Indu'le Fisherman
    .isOnQuest 12031
step
    .goto 115,36.64,64.96
    >>Click the |cRXP_PICK_Elder Mana'loa|r
    .turnin 12031 >>Turn in Freedom for the Lingering
    .isOnQuest 12031
step
    .goto 115,36.64,64.96
    >>Click the |cRXP_PICK_Elder Mana'loa|r
    .accept 12032 >>Accept Conversing With the Depths
    .isQuestTurnedIn 12031 --any of: Freedom for the Lingering
    .xp <71,1
step
    .goto 115,34.18,86.05
    >>Commune with The Pearl of the Depths and do as the sea-goddess Oacha'noa instructs.
    .complete 12032,1 --Oacha'noa
    .target Oacha'noa
    .isOnQuest 12032
step
    .goto 115,49.14,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toalu'u the Mystic|r
    .turnin 12032 >>Turn in Conversing With the Depths
    .target Toalu'u the Mystic
    .isOnQuest 12032
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,53.70,69.29,0
    .goto 115,53.70,69.29,40,0
    .goto 115,53.61,64.17,40,0
    >>Kill |cRXP_ENEMY_The End of the Line Area Trigger Kill Credit Bunnies|r
    .complete 12110,2 --The End of the Line Area Trigger Kill Credit Bunny slain (8)
    .mob The End of the Line Area Trigger Kill Credit Bunny
step
    .goto 115,60.32,51.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nethestrasz|r
    .fp Wyrmrest Temple >> Get the Wyrmrest Temple flight path
    .target Nethestrasz
step
    .goto 115,59.79,54.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krasus|r
    .turnin 12419 >>Turn in The Fate of the Ruby Dragonshrine while you are here
    .isQuestComplete 12419
    .target Krasus
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .accept 12458 >>Accept Seeds of the Lashers
    .target Lord Itharius
step
    .goto 115,59.79,54.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krasus|r
    .turnin 12419 >>Turn in The Fate of the Ruby Dragonshrine
    .target Krasus
step
    .goto 115,60.00,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .accept 12470 >>Accept Mystery of the Infinite
    .target Chromie
step
    .goto 115,60.07,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalice|r
    .accept 12447 >>Accept The Obsidian Dragonshrine
    .target Nalice
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,67.17,56.20,0
    .goto 115,67.17,56.20,40,0
    .goto 115,67.37,52.42,40,0
    >>Kill |cRXP_ENEMY_Ice Revenants|r
    .complete 12127,1 --Ice Revenant slain (8)
    .mob Ice Revenant
    .isOnQuest 12127
step
    .goto 115,76.48,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junter|r
    .fp Venomspite >> Get the Venomspite flight path
    .target Junter Weiss
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.67,62.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Middleton|r
    .turnin 12189 >>Turn in Imbeciles Abound! while you are here
    .isQuestComplete 12189
    .target Chief Plaguebringer Middleton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,75.97,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Bartlett|r
    .accept 12303 >>Accept Funding the War Effort
    .accept 12209 >>Accept Materiel Plunder
    .target Quartermaster Bartlett
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.96,62.86
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 12205 >>Accept Wanted: The Scarlet Onslaught
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.00,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Vicky Levine|r
    .accept 12206 >>Accept Blighted Last Rites
    .target Apothecary Vicky Levine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.04,63.04
    >>Interact with |cRXP_FRIENDLY_Scarlet Onslaught Prisoner|r
    .complete 12206,1 --Scarlet Onslaught Prisoner
    .target Scarlet Onslaught Prisoner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.00,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Vicky Levine|r
    .turnin 12206 >>Turn in Blighted Last Rites
    .accept 12211 >>Accept Let Them Not Rise!
    .target Apothecary Vicky Levine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.67,62.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Middleton|r
    .turnin 12189 >>Turn in Imbeciles Abound!
    .accept 12188 >>Accept The Forsaken Blight and You: How Not to Die
    .target Chief Plaguebringer Middleton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.67,62.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Middleton|r
    .turnin 12182 >>Turn in To Venomspite!
    .target Chief Plaguebringer Middleton
    .isOnQuest 12182
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along137
    >>As you go: Kill |cRXP_ENEMY_Forgotten Captains|r, |cRXP_ENEMY_Forgotten Knights|r, |cRXP_ENEMY_Forgotten Riflemans|r and |cRXP_ENEMY_Forgotten Peasants|r. Loot them for |cRXP_LOOT_Ectoplasmic Residue|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12188,1 --Ectoplasmic Residue (10)
    .mob Forgotten Captain
    .mob Forgotten Knight
    .mob Forgotten Rifleman
    .mob Forgotten Peasant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,79.35,65.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Hansen|r
    .accept 12304 >>Accept Beachfront Property
    .target Surveyor Hansen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along137
    >>As you go: Kill |cRXP_ENEMY_Forgotten Knights|r, |cRXP_ENEMY_Forgotten Riflemans|r, |cRXP_ENEMY_Forgotten Peasants|r and |cRXP_ENEMY_Forgotten Footmans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12304,1 --Forgotten Knight (8)
    .mob Forgotten Knight
    .mob Forgotten Rifleman
    .mob Forgotten Peasant
    .mob Forgotten Footman
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along137
    #loop
    .goto 115,84.06,73.40,0
    .goto 115,84.06,73.40,40,0
    .goto 115,85.09,71.83,40,0
    >>Pick up |cRXP_PICK_Forgotten Treasure|r from the ground
    .complete 12303,1 --Forgotten Treasure (6)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,80.36,73.48,0
    .goto 115,80.36,73.48,40,0
    .goto 115,79.00,77.02,40,0
    .goto 115,77.54,69.17,40,0
    >>Kill |cRXP_ENEMY_Forgotten Knights|r, |cRXP_ENEMY_Forgotten Riflemans|r, |cRXP_ENEMY_Forgotten Peasants|r and |cRXP_ENEMY_Forgotten Footmans|r
    >>Kill |cRXP_ENEMY_Forgotten Captains|r, |cRXP_ENEMY_Forgotten Knights|r, |cRXP_ENEMY_Forgotten Riflemans|r and |cRXP_ENEMY_Forgotten Peasants|r. Loot them for |cRXP_LOOT_Ectoplasmic Residue|r
    .complete 12304,1 --Forgotten Knight (8)
    .complete 12188,1 --Ectoplasmic Residue (10)
    .mob Forgotten Knight
    .mob Forgotten Rifleman
    .mob Forgotten Peasant
    .mob Forgotten Footman
    .mob Forgotten Captain
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,79.35,65.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Hansen|r
    .turnin 12304 >>Turn in Beachfront Property
    .target Surveyor Hansen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,71.39,71.64,0
    .goto 115,71.39,71.64,40,0
    .goto 115,69.99,72.45,40,0
    .goto 115,67.99,75.67,40,0
    >>Loot the |cRXP_PICK_Scarlet Onslaught Armor Stands|r for |cRXP_LOOT_Scarlet Onslaught Armor|r
    >>Loot the |cRXP_PICK_Scarlet Onslaught Weapon Racks|r for |cRXP_LOOT_Scarlet Onslaught Weapon|r
    >>Kill |cRXP_ENEMY_Onslaught Raven Priests|r, |cRXP_ENEMY_Onslaught Footmans|r, |cRXP_ENEMY_Onslaught Knights|r and |cRXP_ENEMY_Onslaught Workmans|r
    >>Kill |cRXP_ENEMY_Onslaught Raven Priests|r, |cRXP_ENEMY_[PH] New Hearthglen Scarlet Footmans|r, |cRXP_ENEMY_Onslaught Knights|r and |cRXP_ENEMY_Onslaught Workmans|r
    .complete 12209,1 --Scarlet Onslaught Armor (8)
    .complete 12209,2 --Scarlet Onslaught Weapon (8)
    .complete 12211,1 --Onslaught Raven Priest (8)
    .complete 12205,1 --Onslaught Raven Priest (8)
    .mob Onslaught Raven Priest
    .mob Onslaught Footman
    .mob Onslaught Knight
    .mob Onslaught Workman
    .mob [PH] New Hearthglen Scarlet Footman
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.77,63.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Wroth|r
    .turnin 12205 >>Turn in Wanted: The Scarlet Onslaught
    .target High Executor Wroth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.73,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spy Mistress Repine|r
    .accept 12245 >>Accept No Mercy for the Captured
    .target Spy Mistress Repine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.00,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Vicky Levine|r
    .turnin 12211 >>Turn in Let Them Not Rise!
    .target Apothecary Vicky Levine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.80,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Molder|r
    .accept 12230 >>Accept Stealing from the Siegesmiths
    .target Deathguard Molder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.67,62.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Middleton|r
    .turnin 12188 >>Turn in The Forsaken Blight and You: How Not to Die
    .accept 12200 >>Accept Emerald Dragon Tears
    .target Chief Plaguebringer Middleton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,75.97,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Bartlett|r
    .turnin 12303 >>Turn in Funding the War Effort
    .turnin 12209 >>Turn in Materiel Plunder
    .target Quartermaster Bartlett
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,75.93,61.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Bauer|r
    .accept 12214 >>Accept Fresh Remounts
    .target Hansel Bauer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,72.60,67.30,0
    .goto 115,72.60,67.30,40,0
    .goto 115,72.63,72.58,40,0
    >>Kill |cRXP_ENEMY_Onslaught Knight|r and loot |cRXP_LOOT_Onslaught Riding Crop|r
    >>Kill |cRXP_ENEMY_Chancellor Amai|r
    >>Kill |cRXP_ENEMY_Deathguard Schneider|r
    >>Kill |cRXP_ENEMY_Engineer Burke|r
    .collect 37202,1,12214,1 --Onslaught Riding Crop (1)
    .complete 12245,4 --Chancellor Amai slain (1)
    .complete 12245,1 --Deathguard Schneider slain (1)
    .complete 12245,3 --Engineer Burke slain (1)
    .mob Onslaught Knight
    .mob Chancellor Amai
    .mob Deathguard Schneider
    .mob Engineer Burke
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,69.37,73.96
    >>Kill |cRXP_ENEMY_Senior Scrivener Barriga|r
    .complete 12245,2 --Senior Scrivener Barriga slain (1)
    .mob Senior Scrivener Barriga
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along152
    >>As you go: Pick up |cRXP_PICK_Emerald Dragon Tear|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12200,1 --Emerald Dragon Tear (8)
step
    #completewith Along152
    >>As you go: Kill |cRXP_ENEMY_Emerald Lashers|r. Loot them for |cRXP_LOOT_Lasher Seed|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12458,1 --Lasher Seed (3)
    .mob Emerald Lasher
step
    .goto 115,65.04,73.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nishera the Garden Keeper|r
    .accept 12454 >>Accept Cycle of Life
    .target Nishera the Garden Keeper
step
    .goto 115,63.96,73.17
    >>Kill |cRXP_ENEMY_Emerald Skytalons|r
    .complete 12454,1 --Emerald Skytalon slain (5)
    .mob Emerald Skytalon
step
    #label Along152
    .goto 115,65.04,73.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nishera the Garden Keeper|r
    .turnin 12454 >>Turn in Cycle of Life
    .accept 12456 >>Accept The Plume of Alystros
    .target Nishera the Garden Keeper
step
    #loop
    .goto 115,62.98,75.27,0
    .goto 115,62.98,75.27,40,0
    .goto 115,62.14,72.78,40,0
    >>Kill |cRXP_ENEMY_Alystros the Verdant Keeper|r and loot |cRXP_LOOT_The Plume of Alystros|r
    >>Pick up |cRXP_PICK_Emerald Dragon Tear|r from the ground << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Kill |cRXP_ENEMY_Emerald Lashers|r. Loot them for |cRXP_LOOT_Lasher Seed|r
    .complete 12456,1 --The Plume of Alystros (1)
    .complete 12200,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Emerald Dragon Tear (8)
    .complete 12458,1 --Lasher Seed (3)
    .mob Alystros the Verdant Keeper
    .mob Emerald Lasher
step
    .goto 115,65.04,73.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nishera the Garden Keeper|r
    .turnin 12456 >>Turn in The Plume of Alystros
    .target Nishera the Garden Keeper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,67.55,74.44,0
    .goto 115,67.55,74.44,40,0
    .goto 115,69.20,79.50,40,0
    .goto 115,72.34,81.34,40,0
    >>Kill |cRXP_ENEMY_Onslaught Knights|r, |cRXP_ENEMY_Onslaught Warhorses|r, |cRXP_ENEMY_Fresh Remounts Kill Credit Bunnies|r and |cRXP_ENEMY_Hansel Bauers|r
    .complete 12214,1 --Onslaught Knight (8)
    .mob Onslaught Knight
    .mob Onslaught Warhorse
    .mob Fresh Remounts Kill Credit Bunny
    .mob Hansel Bauer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,75.93,61.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel Bauer|r
    .turnin 12214 >>Turn in Fresh Remounts
    .target Hansel Bauer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.77,63.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Wroth|r
    .turnin 12245 >>Turn in No Mercy for the Captured
    .accept 12252 >>Accept Torture the Torturer
    .target High Executor Wroth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.67,62.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Middleton|r
    .turnin 12200 >>Turn in Emerald Dragon Tears
    .accept 12218 >>Accept Spread the Good Word
    .target Chief Plaguebringer Middleton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,69.80,72.00
    >>Interact with |cRXP_FRIENDLY_Torturer LeCraft|r
    .complete 12252,1 --Torturer LeCraft
    .target Torturer LeCraft
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,69.80,72.00
    >>Interact with |cRXP_FRIENDLY_Torturer LeCraft|r
    .complete 12252,2 --Torturer LeCraft
    .target Torturer LeCraft
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,69.80,72.00
    >>Kill |cRXP_ENEMY_Torturer LeCraft|r and loot |cRXP_LOOT_Torturer's Rod|r. Use it to start the quest
    .collect 37432,1,12271 --Torturer's Rod (1)
    .accept 12271 >>Accept The Rod of Compulsion
    .use 37432
    .mob Torturer LeCraft
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,83.74,54.71,0
    .goto 115,83.74,54.71,40,0
    .goto 115,85.66,55.28,40,0
    .goto 115,84.72,47.77,40,0
    >>Kill |cRXP_ENEMY_Hungering Dead|r
    >>Kill |cRXP_ENEMY_Scourge Siegesmiths|r. Loot them for |cRXP_LOOT_Siegesmith Bomb|r. It can also be picked up from |cRXP_PICK_Siegesmith Bomb|r on the ground
    .complete 12218,1 --Hungering Dead slain (30)
    .complete 12230,1 --Siegesmith Bomb (6)
    .mob Hungering Dead
    .mob Scourge Siegesmith
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.80,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Molder|r
    .turnin 12230 >>Turn in Stealing from the Siegesmiths
    .accept 12232 >>Accept Bombard the Ballistae
    .target Deathguard Molder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.00,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Vicky Levine|r
    .accept 12240 >>Accept A Means to an End
    .target Apothecary Vicky Levine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.67,62.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Middleton|r
    .turnin 12218 >>Turn in Spread the Good Word
    .accept 12221 >>Accept The Forsaken Blight
    .target Chief Plaguebringer Middleton
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.77,63.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Wroth|r
    .turnin 12252 >>Turn in Torture the Torturer
    .turnin 12271 >>Turn in The Rod of Compulsion
    .accept 12273 >>Accept The Denouncement
    .target High Executor Wroth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.73,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spy Mistress Repine|r
    .accept 12234 >>Accept Need to Know
    .target Spy Mistress Repine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along168
    >>As you go: Click the |cRXP_PICK_New Hearthglen Ballista|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12232,1 --New Hearthglen Ballista
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along168
    #loop
    .goto 115,73.42,72.63,0
    .goto 115,73.42,72.63,40,0
    .goto 115,71.60,80.42,40,0
    >>Kill |cRXP_ENEMY_Lead Cannoneer Zierhut|r
    >>Pick up |cRXP_PICK_Scarlet Onslaught Daily Orders: Beach|r from the ground
    >>Pick up |cRXP_PICK_Scarlet Onslaught Daily Orders: Abbey|r from the ground
    .complete 12273,2 --Lead Cannoneer Zierhut slain (1)
    .complete 12234,3 --Scarlet Onslaught Daily Orders: Beach (1)
    .complete 12234,1 --Scarlet Onslaught Daily Orders: Abbey (1)
    .mob Lead Cannoneer Zierhut
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,71.21,73.01,0
    .goto 115,71.21,73.01,40,0
    .goto 115,68.40,74.10,40,0
    .goto 115,73.11,68.09,40,0
    >>Kill |cRXP_ENEMY_Blacksmith Goodman|r
    >>Pick up |cRXP_PICK_Scarlet Onslaught Daily Orders: Barracks|r from the ground
    >>Kill |cRXP_ENEMY_Commander Jordan|r
    >>Kill |cRXP_ENEMY_Foreman Kaleiki|r
    >>Kill |cRXP_ENEMY_Stable Master Mercer|r
    >>Click the |cRXP_PICK_New Hearthglen Ballista|r
    .complete 12273,3 --Blacksmith Goodman slain (1)
    .complete 12234,2 --Scarlet Onslaught Daily Orders: Barracks (1)
    .complete 12273,1 --Commander Jordan slain (1)
    .complete 12240,1 --Foreman Kaleiki slain (1)
    .complete 12273,4 --Stable Master Mercer slain (1)
    .complete 12232,1 --New Hearthglen Ballista
    .mob Blacksmith Goodman
    .mob Commander Jordan
    .mob Foreman Kaleiki
    .mob Stable Master Mercer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.80,62.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Molder|r
    .turnin 12232 >>Turn in Bombard the Ballistae
    .target Deathguard Molder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.00,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Vicky Levine|r
    .turnin 12240 >>Turn in A Means to an End
    .accept 12243 >>Accept Fire Upon the Waters
    .target Apothecary Vicky Levine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.77,63.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Wroth|r
    .turnin 12273 >>Turn in The Denouncement
    .target High Executor Wroth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.73,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spy Mistress Repine|r
    .turnin 12234 >>Turn in Need to Know
    .accept 12239 >>Accept The Spy in New Hearthglen
    .target Spy Mistress Repine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,73.58,73.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Skully|r
    .turnin 12239 >>Turn in The Spy in New Hearthglen
    .accept 12254 >>Accept Without a Prayer
    .target Agent Skully
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,69.20,76.69
    >>Kill |cRXP_ENEMY_Bishop Street|r and loot |cRXP_LOOT_Bishop Street's Prayer Book|r
    .complete 12254,1 --Bishop Street's Prayer Book (1)
    .mob Bishop Street
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,73.58,73.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Skully|r
    .turnin 12254 >>Turn in Without a Prayer
    .accept 12260 >>Accept The Perfect Dissemblance
    .target Agent Skully
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,72.58,73.11,0
    .goto 115,72.58,73.11,40,0
    .goto 115,69.57,75.49,40,0
    >>Kill |cRXP_ENEMY_Onslaught Raven Priests|r
    .complete 12260,1 --Onslaught Raven Priest slain (8)
    .mob Onslaught Raven Priest
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,73.58,73.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Skully|r
    .turnin 12260 >>Turn in The Perfect Dissemblance
    .accept 12274 >>Accept A Fall From Grace
    .target Agent Skully
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,73.51,74.29
    >>Click the |cRXP_PICK_Abbey Bell Rope|r
    >>Kill |cRXP_ENEMY_High Abbot Landgren|r
    .complete 12274,1 --Abbey Bell Rope
    .complete 12274,2 --High Abbot Landgren (1)
    .mob High Abbot Landgren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,73.58,73.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Skully|r
    .turnin 12274 >>Turn in A Fall From Grace while you are here
    .isQuestComplete 12274
    .target Agent Skully
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,71.81,82.70
    >>Kill |cRXP_ENEMY_Fire Upon the Waters Kill Credit Bunny|r
    >>Kill |cRXP_ENEMY_Captain Shely|r and loot |cRXP_LOOT_Captain Shely's Rutters|r
    .complete 12243,1 --Fire Upon the Waters Kill Credit Bunny slain (1)
    .complete 12243,2 --Captain Shely's Rutters (1)
    .mob Fire Upon the Waters Kill Credit Bunny
    .mob Captain Shely
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,73.58,73.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Skully|r
    .turnin 12274 >>Turn in A Fall From Grace
    .accept 12283 >>Accept The Truth Will Out
    .target Agent Skully
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,68.28,76.98
    >>Pick up |cRXP_PICK_The Diary of High General Abbendis|r from the ground
    .complete 12283,1 --The Diary of High General Abbendis (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,77.00,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Vicky Levine|r
    .turnin 12243 >>Turn in Fire Upon the Waters
    .target Apothecary Vicky Levine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.77,63.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Wroth|r
    .turnin 12283 >>Turn in The Truth Will Out
    .accept 12285 >>Accept Do Unto Others
    .target High Executor Wroth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,71.10,77.88
    >>Kill |cRXP_ENEMY_High General Abbendis|r and loot |cRXP_LOOT_The Head of the High General|r
    .complete 12285,1 --The Head of the High General (1)
    .mob High General Abbendis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.77,63.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Wroth|r
    .turnin 12285 >>Turn in Do Unto Others
    .target High Executor Wroth
step
    .goto 115,71.71,39.21
    >>Chromie, at the top of Wyrmrest Temple, has asked you to travel to the Bronze Dragonshrine. Once inside, place the Hourglass of Eternity on the ground.
    .complete 12470,1 --Hourglass of Eternity
    .target Hourglass of Eternity
step
    #completewith next
    .hs >>Hearth to Lethecus's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 12458 >>Turn in Seeds of the Lashers
    .accept 12459 >>Accept That Which Creates Can Also Destroy
    .target Lord Itharius
step
    .goto 115,60.00,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 12470 >>Turn in Mystery of the Infinite
    .target Chromie
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .turnin 12110 >>Turn in The End of the Line
    .accept 12122 >>Accept Gaining an Audience
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.62,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Sergeant Juktok|r
    .accept 12488 >>Accept The High Executor Needs You
    .target Senior Sergeant Juktok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.08,48.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Sintar Malefious|r
    .turnin 12221 >>Turn in The Forsaken Blight while you are here
    .isQuestComplete 12221
    .target Doctor Sintar Malefious
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Image of Archmage Aethas Sunreaver
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.77,63.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Wroth|r
    .turnin 12488 >>Turn in The High Executor Needs You
    .target High Executor Wroth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.11,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 12127 >>Turn in In Service of Frost
    .target Koltira Deathweaver
    .isOnQuest 12127
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.11,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .accept 12132 >>Accept The Power to Destroy
    .target Koltira Deathweaver
    .isQuestTurnedIn 12125 --In Service of Blood
    .isQuestTurnedIn 12126 --In Service of the Unholy
    .isQuestTurnedIn 12127 --In Service of Frost
    .xp <71,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Image of Archmage Aethas Sunreaver
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,37.91,46.92,0
    .goto 115,37.91,46.92,40,0
    .goto 115,36.00,47.92,40,0
    >>Kill |cRXP_ENEMY_Shadowy Tormentors|r
    .complete 12132,1 --Shadowy Tormentor slain (6)
    .mob Shadowy Tormentor
    .isOnQuest 12132
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.11,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 12132 >>Turn in The Power to Destroy
    .target Koltira Deathweaver
    .isOnQuest 12132
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,37.11,46.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .accept 12136 >>Accept The Translated Tome
    .target Koltira Deathweaver
    .isQuestTurnedIn 12132 --any of: The Power to Destroy
    .xp <71,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,35.81,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gort|r
    .turnin 12136 >>Turn in The Translated Tome
    .target Captain Gort
    .isOnQuest 12136
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,36.08,48.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Sintar Malefious|r
    .turnin 12221 >>Turn in The Forsaken Blight
    .target Doctor Sintar Malefious
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.17,46.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Agmar|r
    .accept 12224 >>Accept The Kor'kron Vanguard!
    .target Overlord Agmar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Image of Archmage Aethas Sunreaver
    .xp <74,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,46.68,33.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kontokanis|r
    .accept 12144 >>Accept Pest Control
    .target Kontokanis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,47.19,33.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokhan|r
    .turnin 12095 >>Turn in To Dragon's Fall
    .accept 12097 >>Accept Sarathstra, Scourge of the North
    .target Rokhan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,51.08,32.75
    >>Kill |cRXP_ENEMY_Sarathstra|r and loot |cRXP_LOOT_Sarathstra's Frozen Heart|r
    .complete 12097,1 --Sarathstra's Frozen Heart (1)
    .mob Sarathstra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,35.81,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Gort|r
    .turnin 12097 >>Turn in Sarathstra, Scourge of the North
    .target Captain Gort
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .turnin 12447 >>Turn in The Obsidian Dragonshrine
    .accept 12261 >>Accept No Place to Run
    .accept 12262 >>Accept No One to Save You
    .target Serinar
step
    #completewith Along206
    >>As you go: Kill |cRXP_ENEMY_Burning Depths Necrolytes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12262,1 --Burning Depths Necrolyte slain (6)
    .mob Burning Depths Necrolyte
step
    #label Along206
    .goto 115,35.21,30.05
    >>Place a Destructive Ward at the end of the path leading out of Obsidian Dragonshrine, where the road starts to give way to snow. Protect the ward until it is fully charged, then return to Serinar.
    .complete 12261,1 --Destructive Ward (1)
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .turnin 12261 >>Turn in No Place to Run while you are here
    .isQuestComplete 12261
    .target Serinar
step
    #loop
    .goto 115,35.10,30.12,0
    .goto 115,35.10,30.12,40,0
    .goto 115,38.27,32.20,40,0
    .goto 115,40.89,31.90,40,0
    >>Kill |cRXP_ENEMY_Burning Depths Necrolytes|r
    >>Kill |cRXP_ENEMY_Smoldering Skeletons|r
    .complete 12262,1 --Burning Depths Necrolyte slain (6)
    .complete 12262,2 --Smoldering Skeleton (10)
    .mob Burning Depths Necrolyte
    .mob Smoldering Skeleton
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .turnin 12261 >>Turn in No Place to Run
    .turnin 12262 >>Turn in No One to Save You
    .accept 12263 >>Accept The Best of Intentions
    .target Serinar
step
    .goto 115,31.76,30.46
    >>Uncover the Magmawyrm Resurrection Chamber
    .complete 12263,1 --Uncover the Magmawyrm Resurrection Chamber
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .turnin 12263 >>Turn in The Best of Intentions
    .accept 12264 >>Accept Culling the Damned
    .accept 12265 >>Accept Defiling the Defilers
    .target Serinar
step
    #loop
    .goto 115,33.92,26.94,0
    .goto 115,33.92,26.94,40,0
    .goto 115,32.11,29.40,40,0
    >>Click the |cRXP_PICK_Necromantic Rune|r
    >>Kill |cRXP_ENEMY_Burning Depths Necromancers|r
    >>Kill |cRXP_ENEMY_Smoldering Constructs|r
    >>Kill |cRXP_ENEMY_Smoldering Geists|r
    .complete 12265,1 --Necromantic Rune
    .complete 12264,1 --Burning Depths Necromancer slain (3)
    .complete 12264,2 --Smoldering Construct slain (6)
    .complete 12264,3 --Smoldering Geist slain (6)
    .mob Burning Depths Necromancer
    .mob Smoldering Construct
    .mob Smoldering Geist
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .turnin 12264 >>Turn in Culling the Damned
    .turnin 12265 >>Turn in Defiling the Defilers
    .accept 12267 >>Accept Neltharion's Flame
    .target Serinar
step
    .goto 115,30.65,33.10
    >>Kill |cRXP_ENEMY_Neltharion's Flame Control Bunny|r
    >>Kill |cRXP_ENEMY_Rothin the Decaying|r
    .complete 12267,1 --Neltharion's Flame Control Bunny slain (1)
    .complete 12267,2 --Rothin the Decaying slain (1)
    .mob Neltharion's Flame Control Bunny
    .mob Rothin the Decaying
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .turnin 12267 >>Turn in Neltharion's Flame
    .accept 12266 >>Accept Tales of Destruction
    .target Serinar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,40.71,18.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang the Younger|r
    .turnin 12224 >>Turn in The Kor'kron Vanguard!
    .accept 12496 >>Accept Audience With The Dragon Queen
    .target Saurfang the Younger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,47.99,74.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Envoy Ripfang|r
    .accept 11996 >>Accept Your Presence is Required at Agmar's Hammer
    .target Envoy Ripfang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,55.80,58.39,0
    .goto 115,55.80,58.39,40,0
    .goto 115,55.33,50.41,40,0
    >>Kill |cRXP_ENEMY_Snowplain Zealots|r, |cRXP_ENEMY_Snowplain Shamans|r, |cRXP_ENEMY_Gormok Zealots|r and |cRXP_ENEMY_Snowplain Disciples|r
    >>Kill |cRXP_ENEMY_Magnataur Patriarches|r, |cRXP_ENEMY_Magnataur Younglings|r, |cRXP_ENEMY_Gigantaurs|r and |cRXP_ENEMY_Icefists|r
    .complete 12144,1 --Snowplain Zealot (8)
    .complete 12144,2 --Magnataur Patriarch (8)
    .mob Snowplain Zealot
    .mob Snowplain Shaman
    .mob Gormok Zealot
    .mob Snowplain Disciple
    .mob Magnataur Patriarch
    .mob Magnataur Youngling
    .mob Gigantaur
    .mob Icefist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,57.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tariolstrasz|r
    .turnin 12122 >>Turn in Gaining an Audience
    .accept 12767 >>Accept Speak with your Ambassador
    .target Tariolstrasz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,58.10,55.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golluck Rockfist|r
    .turnin 12767 >>Turn in Speak with your Ambassador
    .accept 12461 >>Accept Report to the Ruby Dragonshrine
    .target Golluck Rockfist
step
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .turnin 12496 >>Turn in Audience With The Dragon Queen << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 12497 >>Accept Galakrond and the Scourge
    .target Alexstrasza the Life-Binder
step
    .goto 115,60.07,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalice|r
    .turnin 12266 >>Turn in Tales of Destruction
    .target Nalice
step
    .goto 115,59.51,53.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torastrasza|r
    .turnin 12497 >>Turn in Galakrond and the Scourge
    .accept 12498 >>Accept On Ruby Wings
    .target Torastrasza
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,42.97,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vargastrasz|r
    .turnin 12461 >>Turn in Report to the Ruby Dragonshrine
    .accept 12448 >>Accept Heated Battle
    .target Vargastrasz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,43.00,51.20
    >>Kill |cRXP_ENEMY_Frigid Ghoul Attackers|r
    >>Kill |cRXP_ENEMY_Frigid Geist Attackers|r
    >>Kill |cRXP_ENEMY_Frigid Abomination Attacker|r
    .complete 12448,1 --Frigid Ghoul Attacker slain (12)
    .complete 12448,2 --Frigid Geist Attacker slain (8)
    .complete 12448,3 --Frigid Abomination Attacker slain (1)
    .mob Frigid Ghoul Attacker
    .mob Frigid Geist Attacker
    .mob Frigid Abomination Attacker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,42.97,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vargastrasz|r
    .turnin 12448 >>Turn in Heated Battle
    .accept 12449 >>Accept Return to the Earth
    .target Vargastrasz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,46.66,50.80,0
    .goto 115,46.66,50.80,40,0
    .goto 115,47.31,48.99,40,0
    .goto 115,48.68,45.11,40,0
    >>Pick up |cRXP_PICK_Ruby Acorn|r from the ground
    .collect 37727,1,12449,1 --Ruby Acorn (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,45.88,46.65,0
    .goto 115,45.88,46.65,40,0
    .goto 115,49.24,47.10,40,0
    .goto 115,45.88,52.31,40,0
    >>Kill |cRXP_ENEMY_Ruby Keepers|r
    .complete 12449,1 --Ruby Keeper slain (8)
    .mob Ruby Keeper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,42.97,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vargastrasz|r
    .turnin 12449 >>Turn in Return to the Earth
    .accept 12450 >>Accept Through Fields of Flame
    .target Vargastrasz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 115,46.69,49.74,0
    .goto 115,46.69,49.74,40,0
    .goto 115,47.84,47.49,40,0
    >>Kill |cRXP_ENEMY_Dahlia Suntouch|r
    >>Kill |cRXP_ENEMY_Frigid Necromancers|r
    .complete 12450,2 --Dahlia Suntouch slain (1)
    .complete 12450,1 --Frigid Necromancer slain (6)
    .mob Dahlia Suntouch
    .mob Frigid Necromancer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,42.97,50.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vargastrasz|r
    .turnin 12450 >>Turn in Through Fields of Flame
    .accept 12769 >>Accept The Steward of Wyrmrest Temple
    .target Vargastrasz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .turnin 11996 >>Turn in Your Presence is Required at Agmar's Hammer
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 74 >>Grind to level 74 (The Magical Kingdom of Dalaran needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .accept 12791 >>Accept The Magical Kingdom of Dalaran
    .target Image of Archmage Aethas Sunreaver
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 115,20.09,59.59
    >>The Image of Archmage Aethas Sunreaver at Agmar's Hammer has asked you to become Attuned to the Ley Lines of Northrend.
    .complete 12173,1 --Attunement to Dalaran Kill Credit Bunny
    .target Attunement to Dalaran Kill Credit Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Lethecus's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,57.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tariolstrasz|r
    .turnin 12769 >>Turn in The Steward of Wyrmrest Temple
    .accept 12124 >>Accept Informing the Queen
    .target Tariolstrasz
step
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .turnin 12124 >>Turn in Informing the Queen << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 12435 >>Accept Report to Lord Devrestrasz
    .target Alexstrasza the Life-Binder
step
    .goto 115,59.32,54.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Devrestrasz|r
    .turnin 12435 >>Turn in Report to Lord Devrestrasz
    .target Lord Devrestrasz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,46.68,33.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kontokanis|r
    .turnin 12144 >>Turn in Pest Control
    .accept 12145 >>Accept Canyon Chase
    .target Kontokanis
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,42.41,39.63
    >>Kill |cRXP_ENEMY_Icefist|r
    .complete 12145,1 --Icefist slain (1)
    .mob Icefist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,42.41,39.63
    >>Kill |cRXP_ENEMY_Icefist|r and loot |cRXP_LOOT_Emblazoned Battle Horn|r. Use it to start the quest
    .collect 36856,1,12147 --Emblazoned Battle Horn (1)
    .accept 12147 >>Accept Disturbing Implications
    .use 36856
    .mob Icefist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,46.68,33.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kontokanis|r
    .turnin 12145 >>Turn in Canyon Chase
    .target Kontokanis
step
    .goto 115,48.46,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nozzlerust Supply Runner|r
    .accept 12469 >>Accept Return to Sender
    .target Nozzlerust Supply Runner
step
    .goto 115,54.50,23.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narf|r
    .accept 12043 >>Accept Nozzlerust Defense
    .target Narf
step
    .goto 115,54.70,23.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zivlix|r
    .accept 12045 >>Accept Shaved Ice
    .target Zivlix
step
    .goto 115,55.02,23.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xink|r
    .turnin 12469 >>Turn in Return to Sender
    .accept 12044 >>Accept Stocking Up
    .target Xink
step
    #loop
    .goto 115,52.82,17.55,0
    .goto 115,52.82,17.55,40,0
    .goto 115,49.87,19.95,40,0
    .goto 115,48.14,16.97,40,0
    >>Kill |cRXP_ENEMY_Crystalline Ice Elementals|r. Loot them for |cRXP_LOOT_Ice Shard Cluster|r
    .complete 12045,1 --Ice Shard Cluster (4)
    .mob Crystalline Ice Elemental
step
    #completewith Along245
    >>As you go: Kill |cRXP_ENEMY_Wastes Taskmaster|r. Kill |cRXP_ENEMY_Wastes Diggers|r. Pick up |cRXP_PICK_Composite Ore|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12043,1 --Wastes Taskmaster slain (1)
    .complete 12043,2 --Wastes Digger slain (12)
    .complete 12044,1 --Composite Ore (1)
    .mob Wastes Taskmaster
    .mob Wastes Digger
step
    #label Along245
    #loop
    .goto 115,51.07,27.87,0
    .goto 115,51.07,27.87,40,0
    .goto 115,52.53,30.66,40,0
    >>Kill |cRXP_ENEMY_Reanimated Frost Wyrms|r
    >>Kill |cRXP_ENEMY_Grand Necrolord Antiok|r and loot |cRXP_LOOT_Scythe of Antiok|r. It can also be picked up from |cRXP_PICK_Scythe of Antiok|r on the ground
    .complete 12459,1 --Reanimated Frost Wyrm slain (8)
    .complete 12498,2 --Scythe of Antiok (1)
    .mob Reanimated Frost Wyrm
    .mob Grand Necrolord Antiok
step
    #loop
    .goto 115,54.56,35.04,0
    .goto 115,54.56,35.04,40,0
    .goto 115,58.87,31.25,40,0
    .goto 115,56.63,27.57,40,0
    >>Kill |cRXP_ENEMY_Wastes Scavengers|r
    >>Kill |cRXP_ENEMY_Wastes Taskmaster|r
    >>Kill |cRXP_ENEMY_Wastes Diggers|r
    >>Pick up |cRXP_PICK_Composite Ore|r from the ground
    .complete 12498,1 --Wastes Scavenger slain (30)
    .complete 12043,1 --Wastes Taskmaster slain (1)
    .complete 12043,2 --Wastes Digger slain (12)
    .complete 12044,1 --Composite Ore (1)
    .mob Wastes Scavenger
    .mob Wastes Taskmaster
    .mob Wastes Digger
step
    .goto 115,54.50,23.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narf|r
    .turnin 12043 >>Turn in Nozzlerust Defense
    .target Narf
step
    .goto 115,54.70,23.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zivlix|r
    .turnin 12045 >>Turn in Shaved Ice
    .accept 12046 >>Accept Soft Packaging
    .target Zivlix
step
    #completewith Along249
    >>As you go: Kill |cRXP_ENEMY_Jormungar Tunnelers|r and |cRXP_ENEMY_Dragonbone Condors|r. Loot them for |cRXP_LOOT_Thin Animal Hide|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12046,1 --Thin Animal Hide (12)
    .mob Jormungar Tunneler
    .mob Dragonbone Condor
step
    #label Along249
    .goto 115,55.02,23.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xink|r
    .turnin 12044 >>Turn in Stocking Up
    .target Xink
step
    #loop
    .goto 115,51.59,22.70,0
    .goto 115,51.59,22.70,40,0
    .goto 115,49.15,23.01,40,0
    .goto 115,51.91,26.42,40,0
    >>Kill |cRXP_ENEMY_Jormungar Tunnelers|r and |cRXP_ENEMY_Dragonbone Condors|r. Loot them for |cRXP_LOOT_Thin Animal Hide|r
    .complete 12046,1 --Thin Animal Hide (12)
    .mob Jormungar Tunneler
    .mob Dragonbone Condor
step
    .goto 115,54.70,23.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zivlix|r
    .turnin 12046 >>Turn in Soft Packaging
    .accept 12047 >>Accept Something That Doesn't Melt
    .target Zivlix
step
    .goto 115,55.02,23.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xink|r
    .accept 12049 >>Accept Hard to Swallow
    .target Xink
step
    #completewith Along253
    >>As you go: Open the |cRXP_PICK_Jormungar Meat|r. Loot it for |cRXP_LOOT_Seared Jormungar Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12049,1 --Seared Jormungar Meat (1)
step
    #label Along253
    #loop
    .goto 115,53.27,25.17,0
    .goto 115,53.27,25.17,40,0
    .goto 115,59.59,26.10,40,0
    .goto 115,63.02,29.38,40,0
    .goto 115,60.53,27.66,40,0
    >>Pick up |cRXP_PICK_Splintered Bone Chunk|r from the ground
    .complete 12047,1 --Splintered Bone Chunk (12)
step
    #loop
    .goto 115,58.64,23.76,0
    .goto 115,58.64,23.76,40,0
    .goto 115,61.82,22.78,40,0
    >>Open the |cRXP_PICK_Jormungar Meat|r. Loot it for |cRXP_LOOT_Seared Jormungar Meat|r
    .complete 12049,1 --Seared Jormungar Meat (1)
step
    .goto 115,54.70,23.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zivlix|r
    .turnin 12047 >>Turn in Something That Doesn't Melt
    .target Zivlix
step
    .goto 115,55.02,23.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xink|r
    .turnin 12049 >>Turn in Hard to Swallow
    .accept 12050 >>Accept Lumber Hack
    .target Xink
step
    .goto 115,54.50,23.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narf|r
    .accept 12052 >>Accept Harp on This!
    .target Narf
step
    .goto 115,45.59,9.33
    >>Kill |cRXP_ENEMY_Mistress of the Coldwinds|r
    .complete 12052,1 --Mistress of the Coldwind slain (15)
    .mob Mistress of the Coldwind
step
    #loop
    .goto 115,50.39,18.04,0
    .goto 115,50.39,18.04,40,0
    .goto 115,52.60,19.50,40,0
    >>Kill |cRXP_ENEMY_Coldwind Waste Huntress|r and |cRXP_ENEMY_Coldwind Witches|r
    >>Loot the |cRXP_PICK_Coldwind Trees|r for |cRXP_LOOT_Coldwind Lumber|r
    .complete 12052,2 --Coldwind Waste Huntress (8)
    .complete 12050,1 --Coldwind Lumber (50)
    .mob Coldwind Waste Huntress
    .mob Coldwind Witch
step
    .goto 115,55.02,23.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xink|r
    .turnin 12050 >>Turn in Lumber Hack
    .target Xink
step
    .goto 115,54.50,23.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narf|r
    .turnin 12052 >>Turn in Harp on This!
    .accept 12112 >>Accept Stiff Negotiations
    .target Narf
step
    .goto 115,59.40,18.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r
    .turnin 12112 >>Turn in Stiff Negotiations
    .accept 12075 >>Accept Slim Pickings
    .target Zort
step
    .goto 115,56.16,11.93
    >>Kill |cRXP_ENEMY_Ravaged Crystalline Ice Giant|r and loot |cRXP_LOOT_Sample of Rockflesh|r
    .complete 12075,1 --Sample of Rockflesh (1)
    .mob Ravaged Crystalline Ice Giant
step
    .goto 115,59.40,18.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r
    .turnin 12075 >>Turn in Slim Pickings
    .accept 12076 >>Accept Messy Business
    .target Zort
step
    #completewith Along265
    >>As you go: Kill |cRXP_ENEMY_Ice Heart Jormungar Feeders|r and |cRXP_ENEMY_Ice Heart Jormungar Spawns|r. Loot them for |cRXP_LOOT_Vial of Corrosive Spit|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12076,1 --Vial of Corrosive Spit (1)
    .mob Ice Heart Jormungar Feeder
    .mob Ice Heart Jormungar Spawn
step
    #label Along265
    .goto 115,58.98,17.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ko'char the Unbreakable|r
    .accept 12079 >>Accept Stomping Grounds
    .target Ko'char the Unbreakable
step
    .goto 115,59.39,16.78
    >>Kill |cRXP_ENEMY_Ice Heart Jormungar Feeders|r and |cRXP_ENEMY_Ice Heart Jormungar Spawns|r. Loot them for |cRXP_LOOT_Vial of Corrosive Spit|r
    .complete 12076,1 --Vial of Corrosive Spit (1)
    .mob Ice Heart Jormungar Feeder
    .mob Ice Heart Jormungar Spawn
step
    .goto 115,59.40,18.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r
    .turnin 12076 >>Turn in Messy Business
    .accept 12077 >>Accept Apply This Twice A Day
    .target Zort
step
    .goto 115,58.98,17.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ko'char the Unbreakable|r
    .turnin 12077 >>Turn in Apply This Twice A Day
    .accept 12080 >>Accept Really Big Worm
    .target Ko'char the Unbreakable
step
    .goto 115,59.40,18.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r
    .accept 12078 >>Accept Worm Wrangler
    .target Zort
step
    #loop
    .goto 115,56.17,11.17,0
    .goto 115,56.17,11.17,40,0
    .goto 115,53.84,12.78,40,0
    .goto 115,50.78,17.44,40,0
    >>Kill |cRXP_ENEMY_Ice Heart Jormungar Feeders|r
    >>Pick up |cRXP_PICK_Captured Jormungar Spawn|r from the ground
    >>Kill |cRXP_ENEMY_Rattlebore|r
    .complete 12079,1 --Ice Heart Jormungar Feeder slain (8)
    .complete 12078,1 --Captured Jormungar Spawn (3)
    .complete 12080,1 --Rattlebore slain (1)
    .mob Ice Heart Jormungar Feeder
    .mob Rattlebore
step
    .goto 115,59.40,18.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zort|r
    .turnin 12078 >>Turn in Worm Wrangler
    .target Zort
step
    .goto 115,58.98,17.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ko'char the Unbreakable|r
    .turnin 12079 >>Turn in Stomping Grounds
    .turnin 12080 >>Turn in Really Big Worm
    .target Ko'char the Unbreakable
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Lethecus's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12147 >>Turn in Disturbing Implications << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 12148 >>Accept One of a Kind
    .target Aurastrasza
step
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .turnin 12498 >>Turn in On Ruby Wings while you are here
    .isQuestComplete 12498
    .target Alexstrasza the Life-Binder
step
    .goto 115,51.27,59.63
    >>Kill |cRXP_ENEMY_Bonesunder|r and loot |cRXP_LOOT_Emblazoned Battle Horn|r
    .complete 12148,1 --Emblazoned Battle Horn (1)
    .mob Bonesunder
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12148 >>Turn in One of a Kind
    .accept 12149 >>Accept Mighty Magnataur
    .target Aurastrasza
step
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .turnin 12498 >>Turn in On Ruby Wings
    .accept 12500 >>Accept Return To Angrathar << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Alexstrasza the Life-Binder
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 115,38.05,46.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Aethas Sunreaver|r
    .turnin 12173 >>Turn in Attunement to Dalaran
    .target Image of Archmage Aethas Sunreaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,40.71,18.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang the Younger|r
    .turnin 12500 >>Turn in Return To Angrathar
    .target Saurfang the Younger
step
    .goto 115,25.61,51.30,0
    .goto 115,87.90,41.21,50,0
    .goto 115,87.00,42.19,50,0
    .goto 115,86.45,40.12,50,0
    .goto 115,85.51,41.24,50,0
    .goto 115,83.78,41.98,50,0
    .goto 115,84.14,40.72,50,0
    .goto 115,84.49,37.06,50,0
    .goto 115,87.64,35.43,50,0
    .goto 115,87.90,41.21,50,0
    .xp 73 >> Grind the |cRXP_ENEMY_Scarlet Onslaught|r to level 73. Alternatively, do Azjol-Nerub and its quests
step
    .goto 115,67.62,38.47
    >>Kill |cRXP_ENEMY_Drakegore|r
    .complete 12149,3 --Drakegore slain (1)
    .mob Drakegore
step
    .goto 115,66.17,51.41
    >>Kill |cRXP_ENEMY_Iceshatter|r
    .complete 12149,1 --Iceshatter slain (1)
    .mob Iceshatter
step
    .goto 115,66.28,70.77
    >>Kill |cRXP_ENEMY_Bloodfeast|r
    .complete 12149,2 --Bloodfeast slain (1)
    .mob Bloodfeast
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12149 >>Turn in Mighty Magnataur
    .accept 12150 >>Accept Reclusive Runemaster
    .target Aurastrasza
step
    .goto 115,72.76,49.68
    >>Kill |cRXP_ENEMY_Dregmar Runebrand|r
    .complete 12150,1 --Dregmar Runebrand slain (1)
    .mob Dregmar Runebrand
step
    .goto 115,83.98,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Valus|r
    .accept 12545 >>Accept The Cleansing Of Jintha'kalar
    .target Crusader Valus
step
    #loop
    .goto 115,86.84,20.15,0
    .goto 115,86.84,20.15,40,0
    .goto 115,88.86,19.76,40,0
    >>Kill |cRXP_ENEMY_Decrepit Necromancers|r, |cRXP_ENEMY_Battered Drakkari Berserkers|r, |cRXP_ENEMY_Reanimated Drakkari Tribesmans|r and |cRXP_ENEMY_Hulking Atrocities|r
    >>Kill |cRXP_ENEMY_Overseer Deathgaze|r
    .complete 12545,1 --Decrepit Necromancer (8)
    .complete 12459,3 --Overseer Deathgaze slain (1)
    .mob Decrepit Necromancer
    .mob Battered Drakkari Berserker
    .mob Reanimated Drakkari Tribesman
    .mob Hulking Atrocity
    .mob Overseer Deathgaze
step
    .goto 115,83.98,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Valus|r
    .turnin 12545 >>Turn in The Cleansing Of Jintha'kalar
    .accept 12789 >>Accept Into the Breach!
    .target Crusader Valus
step
    .goto 115,86.15,46.95
    >>Kill |cRXP_ENEMY_Turgid the Vile|r
    .complete 12459,2 --Turgid the Vile slain (1)
    .mob Turgid the Vile
step
    .goto 115,87.24,57.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tilda Darathan|r
    .accept 12542 >>Accept The Call Of The Crusade
    .target Tilda Darathan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 115,76.77,63.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Wroth|r
    .accept 12487 >>Accept To Conquest Hold, But Be Careful!
    .target High Executor Wroth
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12150 >>Turn in Reclusive Runemaster
    .accept 12151 >>Accept Wanton Warlord
    .target Aurastrasza
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 12459 >>Turn in That Which Creates Can Also Destroy
    .target Lord Itharius
step
    .goto 115,57.10,75.60
    >>Kill |cRXP_ENEMY_Grom'thar the Thunderbringer|r and loot |cRXP_LOOT_Grom'thar's Head|r
    .complete 12151,1 --Grom'thar's Head (1)
    .mob Grom'thar the Thunderbringer
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12151 >>Turn in Wanton Warlord
    .target Aurastrasza
step
    .goto 115,83.98,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Valus|r
    .turnin 12542 >>Turn in The Call Of The Crusade
    .target Crusader Valus
step
    +|cRXP_WARN_End of the Dragonblight route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: The Magical Kingdom of Dalaran << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Grizzly Hills|r: To Conquest Hold, But Be Careful! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Zul'Drak|r: Into the Breach!
step
    +|cRXP_WARN_Suggested next zones at level 74|r: |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for Howling Fjord --RouteBuilder:next
]])
