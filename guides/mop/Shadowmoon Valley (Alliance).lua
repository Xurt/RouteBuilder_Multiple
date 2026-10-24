-- 69-70 Shadowmoon Valley: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 69, 72).
-- Split into 2 guides, listed under "69 - 73 Shadowmoon Valley" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Shadowmoon Valley.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 69 - 73 Shadowmoon Valley
#subweight -69
#name 69-70 Shadowmoon Valley: around Earthmender Torlok
--RouteBuilder:next
#next Zone Routes (Alliance)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Alliance)\70-73 Howling Fjord: around Lurielle;Zone Routes (Alliance)\65-68 Nagrand

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,38.79,54.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphonrider Kieran|r
    .accept 10569 >>Accept The Sketh'lon Wreckage
    .target Gryphonrider Kieran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .accept 10562 >>Accept Besieged!
    .target Wing Commander Nuainn
    .isQuestTurnedIn 11044 --any of: Visions of Destruction
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,38.22,53.96
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10648 >>Accept Wanted: Uvuros, Scourge of Shadowmoon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.61,56.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brunn Flamebeard|r
    .turnin 11043 >>Turn in Building a Better Gryphon
    .target Brunn Flamebeard
    .isOnQuest 11043
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.13,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorus the Judicator|r
    .turnin 11045 >>Turn in Zorus the Judicator
    .target Zorus the Judicator
    .isOnQuest 11045
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.13,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorus the Judicator|r
    .accept 10642 >>Accept A Ghost in the Machine
    .target Zorus the Judicator
    .isQuestTurnedIn 11045 --any of: Zorus the Judicator
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.37,56.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Sophurus|r
    .accept 10680 >>Accept The Hand of Gul'dan
    .target Earthmender Sophurus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.21,56.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thane Yoregar|r
    .accept 10703 >>Accept Put On Yer Kneepads...
    .accept 10772 >>Accept The Path of Conquest
    .target Thane Yoregar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.54,55.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnomus|r
    .accept 10661 >>Accept Spleendid!
    .target Gnomus
step
    .goto 104,36.80,54.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Ironshaper|r
    .target Daggle Ironshaper
    .home >>Set your Hearthstone to Daggle Ironshaper's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along10
    >>As you go: Kill |cRXP_ENEMY_Scorchshell Pincers|r, |cRXP_ENEMY_Felboars|r, |cRXP_ENEMY_Vilewing Chimaeras|r and |cRXP_ENEMY_Shadow Serpents|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10703,1 --Scorchshell Pincer (8)
    .mob Scorchshell Pincer
    .mob Felboar
    .mob Vilewing Chimaera
    .mob Shadow Serpent
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along10
    #loop
    .goto 104,36.51,44.36,0
    .goto 104,36.51,44.36,40,0
    .goto 104,39.71,45.34,40,0
    .goto 104,36.04,38.41,40,0
    >>Kill |cRXP_ENEMY_Felfire Diemetradons|r. Loot them for |cRXP_LOOT_Felfire Spleen|r
    .complete 10661,1 --Felfire Spleen (8)
    .mob Felfire Diemetradon
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10680 >>Turn in The Hand of Gul'dan << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 10458 >>Accept Enraged Spirits of Fire and Earth
    .target Earthmender Torlok
step
    #loop
    .goto 104,42.80,42.84,0
    .goto 104,42.80,42.84,40,0
    .goto 104,44.59,40.29,40,0
    .goto 104,47.86,41.14,40,0
    >>Kill |cRXP_ENEMY_Enraged Earth Spirits|r
    >>Kill |cRXP_ENEMY_Enraged Fire Spirits|r
    .complete 10458,1 --Enraged Earth Spirit slain (8)
    .complete 10458,2 --Enraged Fire Spirit slain (8)
    .mob Enraged Earth Spirit
    .mob Enraged Fire Spirit
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10458 >>Turn in Enraged Spirits of Fire and Earth
    .accept 10480 >>Accept Enraged Spirits of Water
    .target Earthmender Torlok
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,38.37,47.38,0
    .goto 104,38.37,47.38,40,0
    .goto 104,36.46,51.00,40,0
    .goto 104,40.74,52.86,40,0
    >>Kill |cRXP_ENEMY_Infernal Attacker (1)s|r and |cRXP_ENEMY_Infernal Attackers|r
    .complete 10562,1 --Infernal Attacker (1) (8)
    .mob Infernal Attacker (1)
    .mob Infernal Attacker
    .isOnQuest 10562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .turnin 10562 >>Turn in Besieged!
    .target Wing Commander Nuainn
    .isOnQuest 10562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .accept 10563 >>Accept To Legion Hold
    .target Wing Commander Nuainn
    .isQuestTurnedIn 10562 --any of: Besieged!
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.54,55.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnomus|r
    .turnin 10661 >>Turn in Spleendid!
    .accept 10677 >>Accept The Second Course...
    .target Gnomus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,36.00,46.90,0
    .goto 104,36.00,46.90,40,0
    .goto 104,35.98,41.03,40,0
    >>Kill |cRXP_ENEMY_Scorchshell Pincers|r, |cRXP_ENEMY_Felboars|r, |cRXP_ENEMY_Vilewing Chimaeras|r and |cRXP_ENEMY_Shadow Serpents|r
    .complete 10703,1 --Scorchshell Pincer (8)
    .mob Scorchshell Pincer
    .mob Felboar
    .mob Vilewing Chimaera
    .mob Shadow Serpent
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,36.09,30.79,0
    .goto 104,36.09,30.79,40,0
    .goto 104,39.71,30.35,40,0
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 2|r
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 3|r
    >>Kill |cRXP_ENEMY_Dark Conclave Shadowmancers|r, |cRXP_ENEMY_Dark Conclave Ravenguards|r and |cRXP_ENEMY_Dark Conclave Hawkeyes|r. Loot them for |cRXP_LOOT_Sketh'lon Commander's Journal - Page 1|r
    .complete 10569,2 --Sketh'lon Commander's Journal - Page 2 (1)
    .complete 10569,3 --Sketh'lon Commander's Journal - Page 3 (1)
    .complete 10569,1 --Sketh'lon Commander's Journal - Page 1 (1)
    .mob Dark Conclave Shadowmancer
    .mob Dark Conclave Ravenguard
    .mob Dark Conclave Hawkeye
step
    #loop
    .goto 104,50.24,24.89,0
    .goto 104,50.24,24.89,40,0
    .goto 104,47.96,22.16,40,0
    .goto 104,53.87,27.47,40,0
    >>Kill |cRXP_ENEMY_Greater Felfire Diemetradon|r and loot |cRXP_LOOT_Overdeveloped Felfire Gizzard|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Enraged Water Spirits|r
    .complete 10677,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Overdeveloped Felfire Gizzard (1)
    .complete 10480,1 --Enraged Water Spirit slain (8)
    .mob Greater Felfire Diemetradon << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Enraged Water Spirit
step
    .goto 104,51.87,18.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Wilda|r
    .accept 10451 >>Accept Escape from Coilskar Cistern
    .target Earthmender Wilda
step
    .goto 104,53.14,25.17
    >>Earthmender Wilda Escorted to Safety
    .complete 10451,1 --Earthmender Wilda Escorted to Safety
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Daggle Ironshaper's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.54,55.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnomus|r
    .turnin 10677 >>Turn in The Second Course...
    .accept 10678 >>Accept The Main Course!
    .target Gnomus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.21,56.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thane Yoregar|r
    .turnin 10703 >>Turn in Put On Yer Kneepads...
    .target Thane Yoregar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,38.79,54.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphonrider Kieran|r
    .turnin 10569 >>Turn in The Sketh'lon Wreckage
    .accept 10759 >>Accept Find the Deserter
    .target Gryphonrider Kieran
step
    #loop
    .goto 104,35.39,36.68,0
    .goto 104,35.39,36.68,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.38,41.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10759 >>Turn in Find the Deserter << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 10777 >>Accept Asghar's Totem
    .unitscan Parshah
step
    .goto 104,39.65,29.33
    >>Kill |cRXP_ENEMY_Asghar|r and loot |cRXP_LOOT_Sketh'lon War Totem|r
    .complete 10777,1 --Sketh'lon War Totem (1)
    .mob Asghar
step
    #loop
    .goto 104,35.39,36.68,0
    .goto 104,35.39,36.68,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.38,41.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10777 >>Turn in Asghar's Totem
    .accept 10778 >>Accept The Rod of Lianthe
    .unitscan Parshah
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10480 >>Turn in Enraged Spirits of Water
    .turnin 10451 >>Turn in Escape from Coilskar Cistern
    .accept 10481 >>Accept Enraged Spirits of Air
    .target Earthmender Torlok
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,56.10,44.33
    >>Kill |cRXP_ENEMY_Felspine the Greater|r and loot |cRXP_LOOT_Felspine's Hide|r
    .complete 10678,1 --Felspine's Hide (1)
    .mob Felspine the Greater
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,54.84,49.39
    >>Kill |cRXP_ENEMY_Uvuros|r and loot |cRXP_LOOT_Uvuros' Fiery Mane|r
    .complete 10648,1 --Uvuros' Fiery Mane (1)
    .mob Uvuros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,52.45,59.19
    >>The Path of Conquest Discovered
    .complete 10772,1 --The Path of Conquest Discovered
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildhammer Gryphon Rider|r
    .turnin 10772 >>Turn in The Path of Conquest
    .accept 10773 >>Accept Breaching the Path
    .target Wildhammer Gryphon Rider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along35
    >>As you go: Kill |cRXP_ENEMY_Eclipsion Cavaliers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10773,2 --Eclipsion Cavalier slain (10)
    .mob Eclipsion Cavalier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,52.51,59.24,0
    .goto 104,52.51,59.24,40,0
    .goto 104,52.86,63.59,40,0
    .goto 104,52.31,67.45,40,0
    >>Kill |cRXP_ENEMY_Son of Coroks|r
    >>Kill |cRXP_ENEMY_Eclipsion Soldiers|r
    .complete 10773,3 --Son of Corok slain (5)
    .complete 10773,1 --Eclipsion Soldier slain (20)
    .mob Son of Corok
    .mob Eclipsion Soldier
step
    #label Along35
    .goto 104,51.61,64.92
    >>Kill |cRXP_ENEMY_Val'zareq the Conqueror|r and loot |cRXP_LOOT_The Journal of Val'zareq|r. Use it to start the quest
    .collect 31345,1,10793 --The Journal of Val'zareq (1)
    .accept 10793 >>Accept The Journal of Val'zareq: Portends of War
    .use 31345
    .mob Val'zareq the Conqueror
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,51.29,65.18,0
    .goto 104,51.29,65.18,40,0
    .goto 104,53.02,60.51,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Cavaliers|r
    .complete 10773,2 --Eclipsion Cavalier slain (10)
    .mob Eclipsion Cavalier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildhammer Gryphon Rider|r
    .turnin 10773 >>Turn in Breaching the Path
    .accept 10774 >>Accept Blood Elf + Giant = ???
    .target Wildhammer Gryphon Rider
step
    #loop
    .goto 104,61.11,67.21,0
    .goto 104,61.11,67.21,40,0
    .goto 104,62.17,61.79,40,0
    >>Kill |cRXP_ENEMY_Enraged Air Spirits|r
    .complete 10481,1 --Enraged Air Spirit slain (8)
    .mob Enraged Air Spirit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,52.95,69.64
    >>Kill |cRXP_ENEMY_Chancellor Bloodleaf|r and loot |cRXP_LOOT_Illidan's Command|r
    >>Kill |cRXP_ENEMY_Chancellor Bloodleaf|r
    >>Kill |cRXP_ENEMY_Corok the Mighty|r
    .complete 10774,3 --Illidan's Command (1)
    .complete 10774,1 --Chancellor Bloodleaf slain (1)
    .complete 10774,2 --Corok the Mighty slain (1)
    .mob Chancellor Bloodleaf
    .mob Corok the Mighty
step
    .goto 104,51.38,72.79
    >>Click the |cRXP_PICK_Crystal Prison|r
    .turnin 10793 >>Turn in The Journal of Val'zareq: Portends of War
    .accept 10781 >>Accept Battle of the Crimson Watch
step
    .goto 104,51.75,72.79
    >>Crimson Sigil Forces Annihilated
    .complete 10781,1 --Crimson Sigil Forces Annihilated
step
    #loop
    .goto 104,45.94,70.47,0
    .goto 104,45.94,70.47,40,0
    .goto 104,45.98,66.72,40,0
    >>Open the |cRXP_PICK_Lianthe's Strongbox|r. Loot it for |cRXP_LOOT_Rod of Lianthe|r
    >>Kill |cRXP_ENEMY_Eclipsion Centurions|r, |cRXP_ENEMY_Eclipsion Archmages|r and |cRXP_ENEMY_Eclipsion Bloodwarders|r. Loot them for |cRXP_LOOT_Lianthe's Key|r
    .complete 10778,2 --Rod of Lianthe (1)
    .complete 10778,1 --Lianthe's Key (1)
    .mob Eclipsion Centurion
    .mob Eclipsion Archmage
    .mob Eclipsion Bloodwarder
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10481 >>Turn in Enraged Spirits of Air
    .accept 10513 >>Accept Oronok Torn-heart
    .target Earthmender Torlok
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10513 >>Turn in Oronok Torn-heart
    .accept 10514 >>Accept I Was A Lot Of Things...
    .target Oronok Torn-heart
step
    #loop
    .goto 104,52.31,19.04,0
    .goto 104,52.31,19.04,40,0
    .goto 104,55.01,15.97,40,0
    >>Pick up |cRXP_PICK_Shadowmoon Tuber|r from the ground
    .complete 10514,1 --Shadowmoon Tuber (10)
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10514 >>Turn in I Was A Lot Of Things...
    .accept 10515 >>Accept A Lesson Learned
    .target Oronok Torn-heart
step
    #loop
    .goto 104,57.28,19.47,0
    .goto 104,57.28,19.47,40,0
    .goto 104,57.08,15.22,40,0
    >>Click the |cRXP_PICK_Ravenous Flayer Egg|r
    .complete 10515,1 --Ravenous Flayer Egg
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10515 >>Turn in A Lesson Learned
    .accept 10519 >>Accept The Cipher of Damnation - Truth and History
    .target Oronok Torn-heart
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .complete 10519,1 --Oronok Torn-heart
    .target Oronok Torn-heart
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10519 >>Turn in The Cipher of Damnation - Truth and History
    .accept 10527 >>Accept Ar'tor, Son of Oronok
    .accept 10521 >>Accept Grom'tor, Son of Oronok
    .accept 10546 >>Accept Borak, Son of Oronok
    .target Oronok Torn-heart
step
    .goto 104,44.62,23.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10521 >>Turn in Grom'tor, Son of Oronok
    .accept 10522 >>Accept The Cipher of Damnation - Grom'tor's Charge
    .target Grom'tor, Son of Oronok
step
    #loop
    .goto 104,45.63,26.70,0
    .goto 104,45.63,26.70,40,0
    .goto 104,47.95,28.59,40,0
    .goto 104,47.49,31.46,40,0
    >>Kill |cRXP_ENEMY_Coilskar Defenders|r, |cRXP_ENEMY_Coilskar Sirens|r and |cRXP_ENEMY_Coilskar Waterkeepers|r. Loot them for |cRXP_LOOT_Coilskar Chest Key|r
    .collect 30426,1,10522,1 --Coilskar Chest Key (1)
    .mob Coilskar Defender
    .mob Coilskar Siren
    .mob Coilskar Waterkeeper
step
    #loop
    .goto 104,47.03,29.26,0
    .goto 104,47.03,29.26,40,0
    .goto 104,45.88,26.34,40,0
    >>Open the |cRXP_PICK_Coilskar Chest|r. Loot it for |cRXP_LOOT_First Fragment of the Cipher of Damnation|r
    .complete 10522,1 --First Fragment of the Cipher of Damnation (1)
step
    .goto 104,44.62,23.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grom'tor, Son of Oronok|r
    .turnin 10522 >>Turn in The Cipher of Damnation - Grom'tor's Charge
    .accept 10523 >>Accept The Cipher of Damnation - The First Fragment Recovered
    .target Grom'tor, Son of Oronok
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10523 >>Turn in The Cipher of Damnation - The First Fragment Recovered
    .target Oronok Torn-heart
step
    #loop
    .goto 104,35.39,36.68,0
    .goto 104,35.39,36.68,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.38,41.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10778 >>Turn in The Rod of Lianthe
    .accept 10780 >>Accept Sketh'lon Feathers
    .unitscan Parshah
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,23.60,36.89
    >>Click the |cRXP_PICK_Legion Communication Device|r
    .complete 10563,1 --Legion Communication Device
    .isOnQuest 10563
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,23.18,35.15
    >>Kill |cRXP_ENEMY_Overseer Ripsaw|r and loot |cRXP_LOOT_Illidari-Bane Shard|r. Use it to start the quest
    .collect 30756,1,10621 --Illidari-Bane Shard (1)
    .accept 10621 >>Accept Illidari-Bane Shard
    .use 30756
    .mob Overseer Ripsaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Daggle Ironshaper's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.54,55.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnomus|r
    .turnin 10678 >>Turn in The Main Course!
    .target Gnomus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.82,54.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ordinn Thunderfist|r
    .turnin 10621 >>Turn in Illidari-Bane Shard
    .accept 10626 >>Accept Capture the Weapons
    .target Ordinn Thunderfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,38.26,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warcaller Beersnout|r
    .turnin 10648 >>Turn in Wanted: Uvuros, Scourge of Shadowmoon
    .target Warcaller Beersnout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .turnin 10563 >>Turn in To Legion Hold
    .target Wing Commander Nuainn
    .isOnQuest 10563
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .accept 10572 >>Accept Setting Up the Bomb
    .target Wing Commander Nuainn
    .isQuestTurnedIn 10563 --any of: To Legion Hold
    .xp <67,1
step
    #loop
    .goto 104,43.52,55.83,0
    .goto 104,43.52,55.83,40,0
    .goto 104,44.78,58.30,40,0
    .goto 104,43.69,61.70,40,0
    >>Pick up |cRXP_PICK_Sketh'lon Feather|r from the ground
    .complete 10780,1 --Sketh'lon Feather (8)
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10550 >>Turn in The Bundle of Bloodthistle
    .target Borak, Son of Oronok
    .isOnQuest 10550
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10570 >>Accept To Catch A Thistlehead
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10550 --any of: The Bundle of Bloodthistle
    .xp <68,1
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10546 >>Turn in Borak, Son of Oronok
    .accept 10547 >>Accept Of Thistleheads and Eggs...
    .target Borak, Son of Oronok
step
    .goto 104,48.96,57.60
    >>Kill |cRXP_ENEMY_Envoy Icarius|r and loot |cRXP_LOOT_Stormrage Missive|r
    .complete 10570,1 --Stormrage Missive (1)
    .mob Envoy Icarius
    .isOnQuest 10570
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10570 >>Turn in To Catch A Thistlehead
    .target Borak, Son of Oronok
    .isOnQuest 10570
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10576 >>Accept The Shadowmoon Shuffle
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10570 --any of: To Catch A Thistlehead
    .xp <68,1
step
    #loop
    .goto 104,49.20,59.72,0
    .goto 104,49.20,59.72,40,0
    .goto 104,48.59,63.46,40,0
    >>Kill |cRXP_ENEMY_Eclipsion Centurions|r, |cRXP_ENEMY_Eclipsion Blood Knights|r, |cRXP_ENEMY_Eclipsion Archmages|r and |cRXP_ENEMY_Eclipsion Bloodwarders|r. Loot them for |cRXP_LOOT_Eclipsion Armor|r
    .complete 10576,1 --Eclipsion Armor (1)
    .mob Eclipsion Centurion
    .mob Eclipsion Blood Knight
    .mob Eclipsion Archmage
    .mob Eclipsion Bloodwarder
    .isOnQuest 10576
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10576 >>Turn in The Shadowmoon Shuffle
    .target Borak, Son of Oronok
    .isOnQuest 10576
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10577 >>Accept What Illidan Wants, Illidan Gets...
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10576 --any of: The Shadowmoon Shuffle
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildhammer Gryphon Rider|r
    .turnin 10774 >>Turn in Blood Elf + Giant = ???
    .accept 10775 >>Accept Tabards of the Illidari
    .target Wildhammer Gryphon Rider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,52.57,59.25,0
    .goto 104,52.57,59.25,40,0
    .goto 104,52.89,63.02,40,0
    >>Kill |cRXP_ENEMY_Val'zareq the Conquerors|r, |cRXP_ENEMY_Eclipsion Soldiers|r, |cRXP_ENEMY_Eclipsion Spellbinders|r and |cRXP_ENEMY_Eclipsion Cavaliers|r. Loot them for |cRXP_LOOT_Illidari Tabard|r
    .complete 10775,1 --Illidari Tabard (10)
    .mob Val'zareq the Conqueror
    .mob Eclipsion Soldier
    .mob Eclipsion Spellbinder
    .mob Eclipsion Cavalier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,52.45,59.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildhammer Gryphon Rider|r
    .turnin 10775 >>Turn in Tabards of the Illidari
    .accept 10776 >>Accept Dissension Amongst the Ranks...
    .target Wildhammer Gryphon Rider
step
    .goto 104,46.45,71.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Commander Ruusk|r
    .complete 10577,1 --Grand Commander Ruusk
    .target Grand Commander Ruusk
    .isOnQuest 10577
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,41.23,71.44,0
    .goto 104,41.23,71.44,40,0
    .goto 104,40.00,71.27,40,0
    .goto 104,36.87,70.25,40,0
    >>Kill |cRXP_ENEMY_Crazed Colossus|r
    .complete 10776,1 --Crazed Colossus slain (5)
    .mob Crazed Colossus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.21,56.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thane Yoregar|r
    .turnin 10776 >>Turn in Dissension Amongst the Ranks...
    .target Thane Yoregar
step
    .goto 104,29.63,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10527 >>Turn in Ar'tor, Son of Oronok
    .accept 10528 >>Accept Demonic Crystal Prisons
    .target Ar'tor, Son of Oronok
step
    .goto 104,28.30,47.61
    >>Kill |cRXP_ENEMY_Painmistress Gabrissa|r and loot |cRXP_LOOT_Crystalline Key|r
    .complete 10528,1 --Crystalline Key (1)
    .mob Painmistress Gabrissa
step
    .goto 104,29.63,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10528 >>Turn in Demonic Crystal Prisons
    .target Ar'tor, Son of Oronok
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .accept 10537 >>Accept Lohn'goron, Bow of the Torn-heart
    .target Spirit of Ar'tor
step
    #loop
    .goto 104,29.09,48.62,0
    .goto 104,29.09,48.62,40,0
    .goto 104,31.31,50.51,40,0
    .goto 104,33.50,47.95,40,0
    >>Kill |cRXP_ENEMY_Illidari Dreadbringers|r, |cRXP_ENEMY_Illidari Painlashers|r, |cRXP_ENEMY_Illidari Shocktroopers|r and |cRXP_ENEMY_Illidari Shadowstalkers|r. Loot them for |cRXP_LOOT_Lohn'goron, Bow of the Torn-Heart|r
    .complete 10537,1 --Lohn'goron, Bow of the Torn-Heart (1)
    .mob Illidari Dreadbringer
    .mob Illidari Painlasher
    .mob Illidari Shocktrooper
    .mob Illidari Shadowstalker
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10537 >>Turn in Lohn'goron, Bow of the Torn-heart
    .accept 10540 >>Accept The Cipher of Damnation - Ar'tor's Charge
    .target Spirit of Ar'tor
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10540 >>Turn in The Cipher of Damnation - Ar'tor's Charge
    .target Spirit of Ar'tor
    .isQuestComplete 10540
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .accept 10541 >>Accept The Cipher of Damnation - The Second Fragment Recovered
    .target Spirit of Ar'tor
    .isQuestTurnedIn 10540 --any of: The Cipher of Damnation - Ar'tor's Charge
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,23.34,38.04
    >>Kill |cRXP_ENEMY_Morgroron|r and loot |cRXP_LOOT_Morgroron's Glaive|r
    >>Kill |cRXP_ENEMY_Makazradon|r and loot |cRXP_LOOT_Makazradon's Glaive|r
    .complete 10626,2 --Morgroron's Glaive (1)
    .complete 10626,1 --Makazradon's Glaive (1)
    .mob Morgroron
    .mob Makazradon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,22.21,35.55
    >>Open the |cRXP_PICK_Fel Reaver Armor Plating|r. Loot it for |cRXP_LOOT_Fel Reaver Armor Plate|r
    .complete 10572,2 --Fel Reaver Armor Plate (1)
    .isOnQuest 10572
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,30.24,37.31,0
    .goto 104,30.24,37.31,40,0
    .goto 104,32.08,36.57,40,0
    >>Loot the |cRXP_PICK_Ever-burning Ashes|r for |cRXP_LOOT_Ever-Burning Ash|r
    .complete 10642,1 --Ever-Burning Ash (15)
    .isOnQuest 10642
step
    #loop
    .goto 104,35.38,41.75,0
    .goto 104,35.38,41.75,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.39,36.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10780 >>Turn in Sketh'lon Feathers
    .accept 10782 >>Accept Imbuing the Headpiece
    .turnin 10782 >>Turn in Imbuing the Headpiece
    .accept 10808 >>Accept Thwart the Dark Conclave
    .unitscan Parshah
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,26.30,41.27
    >>Pick up |cRXP_PICK_Fel Reaver Power Core|r from the ground
    .complete 10572,1 --Fel Reaver Power Core (1)
    .isOnQuest 10572
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.82,54.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ordinn Thunderfist|r
    .turnin 10626 >>Turn in Capture the Weapons
    .accept 10662 >>Accept The Hermit Smith
    .target Ordinn Thunderfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.13,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorus the Judicator|r
    .turnin 10642 >>Turn in A Ghost in the Machine
    .target Zorus the Judicator
    .isOnQuest 10642
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.13,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorus the Judicator|r
    .accept 10643 >>Accept Harbingers of Shadowmoon
    .target Zorus the Judicator
    .isQuestTurnedIn 10642 --any of: A Ghost in the Machine
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,35.99,56.41,0
    .goto 104,35.99,56.41,40,0
    .goto 104,38.50,57.25,40,0
    >>Kill |cRXP_ENEMY_Shadowmoon Harbingers|r
    .complete 10643,1 --Shadowmoon Harbinger slain (12)
    .mob Shadowmoon Harbinger
    .isOnQuest 10643
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.13,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorus the Judicator|r
    .turnin 10643 >>Turn in Harbingers of Shadowmoon
    .target Zorus the Judicator
    .isOnQuest 10643
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.13,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorus the Judicator|r
    .accept 10644 >>Accept Teron Gorefiend - Lore and Legend
    .target Zorus the Judicator
    .isQuestTurnedIn 10643 --any of: Harbingers of Shadowmoon
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .turnin 10572 >>Turn in Setting Up the Bomb
    .target Wing Commander Nuainn
    .isOnQuest 10572
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .accept 10564 >>Accept Blast the Infernals!
    .target Wing Commander Nuainn
    .isQuestTurnedIn 10572 --any of: Setting Up the Bomb
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,22.65,39.88
    >>Use the Fel Bomb while standing on the green glyph in Legion Hold, then report to Wing Commander Nuainn at Wildhammer Stronghold.
    .complete 10564,1 --Invis Legion Hold Glyph
    .target Invis Legion Hold Glyph
    .isOnQuest 10564
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .turnin 10564 >>Turn in Blast the Infernals!
    .target Wing Commander Nuainn
    .isOnQuest 10564
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .accept 10573 >>Accept The Deathforge
    .target Wing Commander Nuainn
    .isQuestTurnedIn 10564 --any of: Blast the Infernals!
    .xp <67,1
step
    .goto 104,40.36,61.21
    >>Slay the Dark Conclave Ritualists and use the Staff of Parshah to end the Dark Conclave's summoning ritual, then return to Parshah in the Magma Fields.
    .complete 10808,1 --Summoned Old God
    .target Summoned Old God
step
    #loop
    .goto 104,44.31,59.44,0
    .goto 104,44.31,59.44,40,0
    .goto 104,44.23,56.40,40,0
    >>Pick up |cRXP_PICK_Rotten Arakkoa Egg|r from the ground
    .complete 10547,1 --Rotten Arakkoa Egg (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.45,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormer Ewan Wildwing|r
    .turnin 10573 >>Turn in The Deathforge
    .target Stormer Ewan Wildwing
    .isOnQuest 10573
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.45,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormer Ewan Wildwing|r
    .accept 10582 >>Accept Minions of the Shadow Council
    .target Stormer Ewan Wildwing
    .isQuestTurnedIn 10573 --any of: The Deathforge
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,39.17,39.52,0
    .goto 104,39.17,39.52,40,0
    .goto 104,39.55,35.72,40,0
    >>Kill |cRXP_ENEMY_Deathforge Guardians|r
    .complete 10582,1 --Deathforge Guardian slain (10)
    .mob Deathforge Guardian
    .isOnQuest 10582
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,38.72,40.02,0
    .goto 104,38.72,40.02,40,0
    .goto 104,41.85,36.56,40,0
    >>Kill |cRXP_ENEMY_Deathforge Summoners|r
    .complete 10582,2 --Deathforge Summoner slain (5)
    .mob Deathforge Summoner
    .isOnQuest 10582
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.45,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormer Ewan Wildwing|r
    .turnin 10582 >>Turn in Minions of the Shadow Council
    .target Stormer Ewan Wildwing
    .isOnQuest 10582
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.45,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormer Ewan Wildwing|r
    .accept 10583 >>Accept The Fate of Flanis
    .accept 10585 >>Accept The Summoning Chamber
    .target Stormer Ewan Wildwing
    .isQuestTurnedIn 10582 --any of: Minions of the Shadow Council
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.80,38.73
    >>Kill |cRXP_ENEMY_Infernal Oversoul|r
    .complete 10585,1 --Infernal Oversoul slain (1)
    .mob Infernal Oversoul
    .isOnQuest 10585
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,34.62,39.89
    >>Kill |cRXP_ENEMY_Flanis Swiftwing|r and loot |cRXP_LOOT_Flanis' Pack|r
    .complete 10583,1 --Flanis' Pack (1)
    .mob Flanis Swiftwing
    .isOnQuest 10583
step
    #loop
    .goto 104,35.38,41.75,0
    .goto 104,35.38,41.75,40,0
    .goto 104,35.30,38.93,40,0
    .goto 104,35.39,36.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parshah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10808 >>Turn in Thwart the Dark Conclave
    .unitscan Parshah
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,36.78,41.78
    >>Kill |cRXP_ENEMY_Deathforge Tinkerers|r and |cRXP_ENEMY_Deathforge Smiths|r. Loot them for |cRXP_LOOT_Elemental Displacer|r
    .complete 10585,2 --Elemental Displacer (1)
    .mob Deathforge Tinkerer
    .mob Deathforge Smith
    .isOnQuest 10585
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.45,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormer Ewan Wildwing|r
    .turnin 10585 >>Turn in The Summoning Chamber
    .target Stormer Ewan Wildwing
    .isOnQuest 10585
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.45,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormer Ewan Wildwing|r
    .turnin 10583 >>Turn in The Fate of Flanis
    .target Stormer Ewan Wildwing
    .isOnQuest 10583
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.45,41.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormer Ewan Wildwing|r
    .accept 10586 >>Accept Bring Down the Warbringer!
    .target Stormer Ewan Wildwing
    .isQuestTurnedIn 10583 --The Fate of Flanis
    .isQuestTurnedIn 10585 --The Summoning Chamber
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,38.95,46.89
    >>Kill |cRXP_ENEMY_Warbringer Razuun|r
    .complete 10586,1 --Warbringer Razuun slain (1)
    .mob Warbringer Razuun
    .isOnQuest 10586
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,38.95,46.89
    >>Kill |cRXP_ENEMY_Warbringer Razuun|r and loot |cRXP_LOOT_Razuun's Orders|r
    .complete 10586,2 --Razuun's Orders (1)
    .mob Warbringer Razuun
    .isOnQuest 10586
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .turnin 10586 >>Turn in Bring Down the Warbringer!
    .target Wing Commander Nuainn
    .isOnQuest 10586
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .accept 10589 >>Accept Gaining Access
    .target Wing Commander Nuainn
    .isQuestTurnedIn 10586 --any of: Bring Down the Warbringer!
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,22.95,34.50,0
    .goto 104,22.95,34.50,40,0
    .goto 104,24.78,30.28,40,0
    >>Kill |cRXP_ENEMY_Mo'arg Weaponsmith|r and loot |cRXP_LOOT_Legion Teleporter Control|r
    .complete 10589,1 --Legion Teleporter Control (1)
    .mob Mo'arg Weaponsmith
    .isOnQuest 10589
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .turnin 10589 >>Turn in Gaining Access
    .target Wing Commander Nuainn
    .isOnQuest 10589
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.50,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wing Commander Nuainn|r
    .accept 10766 >>Accept Invasion Point: Cataclysm
    .target Wing Commander Nuainn
    .isQuestTurnedIn 10589 --any of: Gaining Access
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.80,22.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plexi|r
    .turnin 10766 >>Turn in Invasion Point: Cataclysm
    .target Plexi
    .isOnQuest 10766
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.80,22.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plexi|r
    .accept 10606 >>Accept The Art of Fel Reaver Maintenance
    .target Plexi
    .isQuestTurnedIn 10766 --any of: Invasion Point: Cataclysm
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.39,19.57
    >>Kill |cRXP_ENEMY_Doctor Gutricks|r and |cRXP_ENEMY_Doctor Maleficus|r. Loot them for |cRXP_LOOT_The Doctor's Key|r
    .complete 10606,2 --The Doctor's Key (1)
    .mob Doctor Gutrick
    .mob Doctor Maleficus
    .isOnQuest 10606
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,39.38,19.48
    >>Open the |cRXP_PICK_The Doctor's Strongbox|r. Loot it for |cRXP_LOOT_The Art of Fel Reaver Maintenance|r
    .complete 10606,1 --The Art of Fel Reaver Maintenance (1)
    .isOnQuest 10606
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.80,22.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plexi|r
    .turnin 10606 >>Turn in The Art of Fel Reaver Maintenance
    .target Plexi
    .isOnQuest 10606
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.80,22.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plexi|r
    .accept 10612 >>Accept The Fel and the Furious
    .target Plexi
    .isQuestTurnedIn 10606 --any of: The Art of Fel Reaver Maintenance
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,38.94,21.43,0
    .goto 104,38.94,21.43,40,0
    .goto 104,35.54,22.33,40,0
    >>Click the |cRXP_PICK_Deathforged Infernal|r
    .complete 10612,1 --Deathforged Infernal
    .isOnQuest 10612
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.80,22.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plexi|r
    .turnin 10612 >>Turn in The Fel and the Furious
    .target Plexi
    .isOnQuest 10612
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,40.80,22.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plexi|r
    .accept 10744 >>Accept News of Victory
    .target Plexi
    .isQuestTurnedIn 10612 --any of: The Fel and the Furious
    .xp <67,1
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10577 >>Turn in What Illidan Wants, Illidan Gets...
    .target Borak, Son of Oronok
    .isOnQuest 10577
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10578 >>Accept The Cipher of Damnation - Borak's Charge
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10577 --any of: What Illidan Wants, Illidan Gets...
    .xp <68,1
step
    .goto 104,57.28,50.70
    >>Kill |cRXP_ENEMY_Ruul the Darkener|r and loot |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
    .complete 10578,1 --Third Fragment of the Cipher of Damnation (1)
    .mob Ruul the Darkener
    .isOnQuest 10578
step
    .goto 104,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .accept 10622 >>Accept Proof of Allegiance
    .target Sanoru
    .isQuestTurnedIn 10575,10686 --any of: The Warden's Cage, The Warden's Cage
    .xp <68,1
step
    .goto 104,58.03,49.13
    >>Kill |cRXP_ENEMY_Zandras|r
    .complete 10622,1 --Zandras slain (1)
    .mob Zandras
    .isOnQuest 10622
step
    .goto 104,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .turnin 10622 >>Turn in Proof of Allegiance
    .target Sanoru
    .isOnQuest 10622
step
    .goto 104,57.33,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanoru|r
    .accept 10628 >>Accept Akama
    .target Sanoru
    .isQuestTurnedIn 10622 --any of: Proof of Allegiance
    .xp <68,1
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10706 >>Turn in A Mysterious Portent
    .target Akama
    .isOnQuest 10706
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10944 >>Turn in The Secret Compromised
    .target Akama
    .isOnQuest 10944
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .accept 10707 >>Accept The Ata'mal Terrace
    .target Akama
    .isQuestTurnedIn 10706 --any of: A Mysterious Portent
    .xp <68,1
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10628 >>Turn in Akama
    .target Akama
    .isOnQuest 10628
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .turnin 10578 >>Turn in The Cipher of Damnation - Borak's Charge
    .target Borak, Son of Oronok
    .isOnQuest 10578
step
    .goto 104,47.56,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borak, Son of Oronok|r
    .accept 10579 >>Accept The Cipher of Damnation - The Third Fragment Recovered
    .target Borak, Son of Oronok
    .isQuestTurnedIn 10578 --any of: The Cipher of Damnation - Borak's Charge
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10644 >>Turn in Teron Gorefiend - Lore and Legend
    .target Ancient Shadowmoon Spirit
    .isOnQuest 10644
step
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .accept 10634 >>Accept Divination: Gorefiend's Armor
    .accept 10636 >>Accept Divination: Gorefiend's Truncheon
    .accept 10635 >>Accept Divination: Gorefiend's Cloak
    .target Ancient Shadowmoon Spirit
    .isQuestTurnedIn 10633,10644 --any of: Teron Gorefiend - Lore and Legend, Teron Gorefiend - Lore and Legend
    .xp <67,1
step
    .goto 104,67.04,87.07
    >>Kill |cRXP_ENEMY_Vhel'kur|r and loot |cRXP_LOOT_Gorefiend's Armor|r
    .complete 10634,1 --Gorefiend's Armor (1)
    .mob Vhel'kur
    .isOnQuest 10634
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Daggle Ironshaper's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,35.80,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 10744 >>Turn in News of Victory
    .target Kurdran Wildhammer
    .isOnQuest 10744
step
    .goto 104,34.10,47.35
    >>Kill |cRXP_ENEMY_Ghostrider of Karabor|r and loot |cRXP_LOOT_Gorefiend's Truncheon|r
    .complete 10636,1 --Gorefiend's Truncheon (1)
    .mob Ghostrider of Karabor
    .isOnQuest 10636
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10541 >>Turn in The Cipher of Damnation - The Second Fragment Recovered
    .target Oronok Torn-heart
    .isOnQuest 10541
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .turnin 10579 >>Turn in The Cipher of Damnation - The Third Fragment Recovered
    .target Oronok Torn-heart
    .isOnQuest 10579
step
    .goto 104,72.33,34.83
    >>Kill |cRXP_ENEMY_Shadowlord Deathwail|r and loot |cRXP_LOOT_Heart of Fury|r
    .complete 10707,1 --Heart of Fury (1)
    .mob Shadowlord Deathwail
    .isOnQuest 10707
step
    .goto 104,65.34,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    .turnin 10949 >>Turn in Entry Into the Black Temple
    .target Xi'ri
    .isOnQuest 10949
step
    #loop
    .goto 104,64.38,48.24,0
    .goto 104,64.38,48.24,40,0
    .goto 104,64.04,51.62,40,0
    >>Kill |cRXP_ENEMY_Cleric of Karabor|r and loot |cRXP_LOOT_Gorefiend's Cloak|r
    .complete 10635,1 --Gorefiend's Cloak (1)
    .mob Cleric of Karabor
    .isOnQuest 10635
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .turnin 10707 >>Turn in The Ata'mal Terrace
    .target Akama
    .isOnQuest 10707
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .accept 11052 >>Accept Akama's Promise
    .target Akama
    .isQuestTurnedIn 10707 --any of: The Ata'mal Terrace
    .xp <68,1
step
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10635 >>Turn in Divination: Gorefiend's Cloak
    .target Ancient Shadowmoon Spirit
    .isOnQuest 10635
step
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10634 >>Turn in Divination: Gorefiend's Armor
    .target Ancient Shadowmoon Spirit
    .isOnQuest 10634
step
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .turnin 10636 >>Turn in Divination: Gorefiend's Truncheon
    .target Ancient Shadowmoon Spirit
    .isOnQuest 10636
step
    +|cRXP_WARN_That is all of Shadowmoon Valley for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shattrath City|r: Of Thistleheads and Eggs..., Battle of the Crimson Watch, Akama's Promise
    >>|cRXP_FRIENDLY_Terokkar Forest|r: The Hermit Smith << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Cipher of Damnation - Ar'tor's Charge
step
    +|cRXP_WARN_Suggested next zones at level 69|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.3 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Howling Fjord|r (about 0.6 levels of quests, starting around Lurielle), |cRXP_FRIENDLY_Nagrand|r (about 0.5 levels of quests, starting around Hemet Nesingwary). Completing this step loads the guide for Netherstorm --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Shadowmoon Valley is planned from level 72.|r Load its guide for level 72 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 69 - 73 Shadowmoon Valley
#subweight -69
#name 72-73 Shadowmoon Valley: around Karynaku
--RouteBuilder:next
#next Zone Routes (Alliance)\71-74 Borean Tundra: around Elder Atkanok;Zone Routes (Alliance)\72-74 Dragonblight: around Aurastrasza;Zone Routes (Alliance)\70-73 Howling Fjord: around Lurielle

step
    #loop
    .goto 104,59.19,58.69,0
    .goto 104,59.19,58.69,40,0
    .goto 104,61.22,59.20,40,0
    .goto 104,62.21,59.88,40,0
    .goto 104,62.32,59.59,40,0
    .goto 104,62.82,60.08,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordenai|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10804 >>Accept Kindness
    .unitscan Mordenai
step
    #loop
    .goto 104,60.08,57.69,0
    .goto 104,60.08,57.69,40,0
    .goto 104,62.37,60.81,40,0
    .goto 104,63.12,54.43,40,0
    >>Kill |cRXP_ENEMY_Rocknail Flayer|r and loot |cRXP_LOOT_Rocknail Flayer Carcass|r
    >>Kill |cRXP_ENEMY_Rocknail Ripper|r and loot |cRXP_LOOT_Rocknail Flayer Giblets|r
    .collect 31372,1,10804,1 --Rocknail Flayer Carcass (1)
    .collect 31373,1,10804,1 --Rocknail Flayer Giblets (1)
    .mob Rocknail Flayer
    .mob Rocknail Ripper
step
    #loop
    .goto 104,60.20,58.28,0
    .goto 104,60.20,58.28,40,0
    .goto 104,63.79,57.39,40,0
    >>Mordenai at Netherwing Fields in Shadowmoon Valley wants you to feed 8 Mature Netherwing Drakes.
    .complete 10804,1 --Mature Netherwing Drake (8)
    .target Mature Netherwing Drake
step
    #loop
    .goto 104,62.82,60.08,0
    .goto 104,62.82,60.08,40,0
    .goto 104,62.32,59.59,40,0
    .goto 104,62.21,59.88,40,0
    .goto 104,61.22,59.20,40,0
    .goto 104,59.19,58.69,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordenai|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10804 >>Turn in Kindness
    .accept 10811 >>Accept Seek Out Neltharaku
    .unitscan Mordenai
step
    #loop
    .goto 104,57.59,53.95,0
    .goto 104,57.59,53.95,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,71.92,61.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10811 >>Turn in Seek Out Neltharaku
    .accept 10814 >>Accept Neltharaku's Tale
    .unitscan Neltharaku
step
    .goto 104,61.31,59.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r
    .complete 10814,1 --Neltharaku
    .target Neltharaku
step
    #loop
    .goto 104,57.59,53.95,0
    .goto 104,57.59,53.95,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,71.92,61.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10814 >>Turn in Neltharaku's Tale
    .accept 10836 >>Accept Infiltrating Dragonmaw Fortress
    .unitscan Neltharaku
step
    #loop
    .goto 104,68.17,61.21,0
    .goto 104,68.17,61.21,40,0
    .goto 104,70.48,63.54,40,0
    >>Kill |cRXP_ENEMY_Dragonmaw Wranglers|r, |cRXP_ENEMY_Dragonmaw Subjugators|r, |cRXP_ENEMY_Dragonmaw Drake-Riders|r and |cRXP_ENEMY_Dragonmaw Shamans|r
    .complete 10836,1 --Dragonmaw Wrangler (8)
    .mob Dragonmaw Wrangler
    .mob Dragonmaw Subjugator
    .mob Dragonmaw Drake-Rider
    .mob Dragonmaw Shaman
step
    #loop
    .goto 104,71.92,61.50,0
    .goto 104,71.92,61.50,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,57.59,53.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10836 >>Turn in Infiltrating Dragonmaw Fortress
    .accept 10837 >>Accept To Netherwing Ledge!
    .unitscan Neltharaku
step
    #loop
    .goto 104,69.32,80.80,0
    .goto 104,69.32,80.80,40,0
    .goto 104,71.95,82.61,40,0
    .goto 104,68.20,85.75,40,0
    >>Pick up |cRXP_PICK_Nethervine Crystal|r from the ground
    .complete 10837,1 --Nethervine Crystal (12)
step
    .goto 104,65.43,90.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistress of the Mines|r
    .accept 11082 >>Accept Seeker of Truth
    .target Mistress of the Mines
    .isQuestTurnedIn 11081 --any of: The Great Murkblood Revolt
    .xp <70,1
step
    #loop
    .goto 104,69.33,80.46,0
    .goto 104,69.33,80.46,40,0
    .goto 104,71.10,80.71,40,0
    .goto 104,74.73,84.68,40,0
    >>Kill |cRXP_ENEMY_Murkblood Overseers|r
    .complete 11082,2 --Murkblood Overseer (8)
    .mob Murkblood Overseer
    .isOnQuest 11082
step
    #loop
    .goto 104,69.33,80.46,0
    .goto 104,69.33,80.46,40,0
    .goto 104,71.10,80.71,40,0
    >>Kill |cRXP_ENEMY_Murkblood Overseer|r and loot |cRXP_LOOT_Hand of the Overseer|r
    .complete 11082,1 --Hand of the Overseer (1)
    .mob Murkblood Overseer
    .isOnQuest 11082
step
    .goto 104,65.43,90.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mistress of the Mines|r
    .turnin 11082 >>Turn in Seeker of Truth
    .target Mistress of the Mines
    .isOnQuest 11082
step
    #loop
    .goto 104,71.92,61.50,0
    .goto 104,71.92,61.50,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,57.59,53.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10837 >>Turn in To Netherwing Ledge!
    .accept 10854 >>Accept The Force of Neltharaku
    .unitscan Neltharaku
step
    #loop
    .goto 104,68.63,61.40,0
    .goto 104,68.63,61.40,40,0
    .goto 104,72.23,62.75,40,0
    >>Interact with |cRXP_FRIENDLY_Enslaved Netherwing Drakes|r
    .complete 10854,1 --Enslaved Netherwing Drake (5)
    .target Enslaved Netherwing Drake
step
    #loop
    .goto 104,71.92,61.50,0
    .goto 104,71.92,61.50,40,0
    .goto 104,70.62,64.03,40,0
    .goto 104,69.46,63.26,40,0
    .goto 104,69.21,61.26,40,0
    .goto 104,68.29,58.30,40,0
    .goto 104,65.39,60.82,40,0
    .goto 104,63.61,60.94,40,0
    .goto 104,61.97,60.03,40,0
    .goto 104,59.39,53.63,40,0
    .goto 104,57.16,56.20,40,0
    .goto 104,57.59,53.95,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neltharaku|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10854 >>Turn in The Force of Neltharaku
    .accept 10858 >>Accept Karynaku
    .unitscan Neltharaku
step
    .goto 104,69.86,61.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karynaku|r
    .turnin 10858 >>Turn in Karynaku
    .accept 10866 >>Accept Zuluhed the Whacked << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Karynaku
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,71.00,62.20
    >>Kill |cRXP_ENEMY_Zuluhed the Whacked|r and loot |cRXP_LOOT_Zuluhed's Key|r
    >>Kill |cRXP_ENEMY_Zuluhed the Whacked|r
    .collect 31664,1,10866,1 --Zuluhed's Key (1)
    .complete 10866,2 --Zuluhed the Whacked (1)
    .mob Zuluhed the Whacked
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,69.84,61.29
    >>Click the |cRXP_PICK_Zuluhed's Chains|r
    .complete 10866,1 --Zuluhed's Chains
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,69.86,61.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karynaku|r
    .turnin 10866 >>Turn in Zuluhed the Whacked
    .accept 10870 >>Accept Ally of the Netherwing
    .target Karynaku
step << Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 104,62.82,60.08,0
    .goto 104,62.82,60.08,40,0
    .goto 104,62.32,59.59,40,0
    .goto 104,62.21,59.88,40,0
    .goto 104,61.22,59.20,40,0
    .goto 104,59.19,58.69,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordenai|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10870 >>Turn in Ally of the Netherwing
    .unitscan Mordenai
step << Human
    .goto 104,69.86,61.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karynaku|r
    .accept 10872 >>Accept Zuluhed the Whacked
    .target Karynaku
step << Human
    .goto 104,71.00,62.20
    >>Kill |cRXP_ENEMY_Zuluhed the Whacked|r and loot |cRXP_LOOT_Zuluhed's Key|r
    >>Kill |cRXP_ENEMY_Zuluhed the Whacked|r
    .collect 31664,1,10872,1 --Zuluhed's Key (1)
    .complete 10872,2 --Zuluhed the Whacked (1)
    .mob Zuluhed the Whacked
step << Human
    .goto 104,69.84,61.29
    >>Click the |cRXP_PICK_Zuluhed's Chains|r
    .complete 10872,1 --Zuluhed's Chains
step << Human
    .goto 104,69.86,61.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karynaku|r
    .turnin 10872 >>Turn in Zuluhed the Whacked
    .accept 10871 >>Accept Ally of the Netherwing
    .target Karynaku
step << Human
    #loop
    .goto 104,62.82,60.08,0
    .goto 104,62.82,60.08,40,0
    .goto 104,62.32,59.59,40,0
    .goto 104,62.21,59.88,40,0
    .goto 104,61.22,59.20,40,0
    .goto 104,59.19,58.69,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordenai|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10871 >>Turn in Ally of the Netherwing
    .unitscan Mordenai
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,58.23,70.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Shadowmoon Spirit|r
    .accept 10645 >>Accept Teron Gorefiend, I am...
    .target Ancient Shadowmoon Spirit
    .isQuestTurnedIn 10634 --Divination: Gorefiend's Armor
    .isQuestTurnedIn 10635 --Divination: Gorefiend's Cloak
    .isQuestTurnedIn 10636 --Divination: Gorefiend's Truncheon
    .xp <67,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,58.10,70.58
    >>Kill |cRXP_ENEMY_Karsius the Ancient Watcher|r
    .complete 10645,1 --Karsius the Ancient Watcher slain (1)
    .mob Karsius the Ancient Watcher
    .isOnQuest 10645
step
    .goto 104,56.32,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roldemar|r
    .target Roldemar
    .home >>Set your Hearthstone to Roldemar's inn
step
    .goto 104,58.11,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akama|r
    .accept 10948 >>Accept The Hostage Soul
    .target Akama
    .isQuestTurnedIn 10947 --any of: An Artifact From the Past
    .xp <70,1
step
    .goto 104,65.34,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    .accept 13429 >>Accept A Distraction for Akama
    .target Xi'ri
    .isQuestTurnedIn 10949 --any of: Entry Into the Black Temple
    .xp <70,1
step
    .goto 104,66.29,44.06
    >>Help Akama and Maiev enter the Black Temple.
    .complete 13429,1 --Help Akama and Maiev enter the Black Temple.
    .isOnQuest 13429
step
    .goto 104,65.34,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi'ri|r
    .turnin 13429 >>Turn in A Distraction for Akama
    .target Xi'ri
    .isOnQuest 13429
step
    .goto 104,53.95,23.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oronok Torn-heart|r
    .accept 10588 >>Accept The Cipher of Damnation
    .target Oronok Torn-heart
    .isQuestTurnedIn 10541 --The Cipher of Damnation - The Second Fragment Recovered
    .isQuestTurnedIn 10579 --The Cipher of Damnation - The Third Fragment Recovered
    .xp <68,1
    .isQuestTurnedIn 10523 --The Cipher of Damnation - The First Fragment Recovered
step
    .goto 104,43.20,46.20
    >>Kill |cRXP_ENEMY_Cyrukh the Firelord|r
    .complete 10588,1 --Cyrukh the Firelord slain (1)
    .mob Cyrukh the Firelord
    .isOnQuest 10588
step
    .goto 104,42.19,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10588 >>Turn in The Cipher of Damnation
    .target Earthmender Torlok
    .isOnQuest 10588
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 104,37.13,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zorus the Judicator|r
    .turnin 10645 >>Turn in Teron Gorefiend, I am...
    .target Zorus the Judicator
    .isOnQuest 10645
step
    .goto 104,29.53,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Ar'tor|r
    .turnin 10540 >>Turn in The Cipher of Damnation - Ar'tor's Charge
    .target Spirit of Ar'tor
    .isQuestComplete 10540
step
    +|cRXP_WARN_End of the Shadowmoon Valley route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shattrath City|r: The Hostage Soul
step
    +|cRXP_WARN_Suggested next zones at level 72|r: |cRXP_FRIENDLY_Borean Tundra|r (about 0.9 levels of quests, starting around Elder Atkanok), |cRXP_FRIENDLY_Dragonblight|r (about 0.7 levels of quests, starting around Aurastrasza), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle). Completing this step loads the guide for Borean Tundra --RouteBuilder:next
]])
