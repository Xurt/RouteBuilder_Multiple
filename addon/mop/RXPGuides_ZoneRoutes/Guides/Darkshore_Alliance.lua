-- 10-20 Darkshore: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 10, 22, 53).
-- Split into 5 guides, listed under "10 - 54 Darkshore" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Darkshore.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 54 Darkshore
#subweight -10
#name 10-13 Darkshore: around Ranger Glynda Nal'Shea
#next Zone Routes (Alliance)\13-15 Darkshore: around Keeper Karithus

step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 89,43.91,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r
    .accept 26383 >>Accept Breaking Waves of Change
    .target Sentinel Cordressa Briarbow
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
    #completewith next
    .zone 62 >>Leave Darnassus for Darkshore
    .zoneskip 62
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 62,51.72,17.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 26383 >>Turn in Breaking Waves of Change
    .target Dentaria Silverglade
step << Worgen
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
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
step << Worgen
    #completewith next
    .zone 62 >>Leave Darnassus for Darkshore
    .zoneskip 62
step << Worgen
    .goto 62,51.72,17.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 26385 >>Turn in Breaking Waves of Change
    .target Dentaria Silverglade
    .isOnQuest 26385
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,51.72,17.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .accept 13518 >>Accept The Last Wave of Survivors
    .target Dentaria Silverglade
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .accept 13522 >>Accept Threat from the Water
    .target Ranger Glynda Nal'Shea
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along14
    >>As you go: Kill |cRXP_ENEMY_Vile Sprays|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13522,1 --Vile Spray slain (8)
    .mob Vile Spray
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.02,18.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .complete 13518,4 --Volcor
    .target Volcor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .complete 13518,2 --Gershala Nightwhisper
    .target Gershala Nightwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,44.58,19.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .complete 13518,1 --Cerellean Whiteclaw
    .target Cerellean Whiteclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along14
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaldyn|r
    .complete 13518,3 --Shaldyn
    .target Shaldyn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,46.37,16.47,0
    .goto 62,46.37,16.47,40,0
    .goto 62,48.68,16.20,40,0
    >>Kill |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --Vile Spray slain (8)
    .mob Vile Spray
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .turnin 13522 >>Turn in Threat from the Water
    .target Ranger Glynda Nal'Shea
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,51.72,17.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 13518 >>Turn in The Last Wave of Survivors
    .target Dentaria Silverglade
step
    .goto 62,51.80,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r
    .accept 13520 >>Accept The Boon of the Seas
    .target Serendia Oakwhisper
step
    .goto 62,42.65,45.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyndri|r
    .target Kyndri
    .home >>Set your Hearthstone to Kyndri's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 13521 >>Accept Buzzbox 413
    .target Wizbang Cranktoggle
step
    #loop
    .goto 62,50.34,17.64,0
    .goto 62,50.34,17.64,40,0
    .goto 62,52.33,16.40,40,0
    .goto 62,52.95,18.79,40,0
    >>Loot the |cRXP_PICK_Encrusted Clams|r for |cRXP_LOOT_Encrusted Clam Muscle|r
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r. Loot them for |cRXP_LOOT_Corrupted Tide Crawler Flesh|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 13520,1 --Encrusted Clam Muscle (16)
    .complete 13521,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Corrupted Tide Crawler Flesh (4)
    .mob Corrupted Tide Crawler << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    .goto 62,51.80,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r
    .turnin 13520 >>Turn in The Boon of the Seas while you are here
    .isQuestComplete 13520
    .target Serendia Oakwhisper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,53.24,19.64
    >>Click the |cRXP_PICK_Buzzbox 413|r
    .turnin 13521 >>Turn in Buzzbox 413
    .accept 13527 >>Accept No Accounting for Taste
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,55.10,21.00
    >>Kill |cRXP_ENEMY_Decomposing Thistle Bear|r and loot |cRXP_LOOT_Foul Bear Carcass Sample|r
    .complete 13527,1 --Foul Bear Carcass Sample (1)
    .mob Decomposing Thistle Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .turnin 13527 >>Turn in No Accounting for Taste
    .accept 13528 >>Accept Buzzbox 723
    .target Wizbang Cranktoggle
step
    .goto 62,51.80,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r
    .turnin 13520 >>Turn in The Boon of the Seas
    .target Serendia Oakwhisper
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Irlara Morninglight|r
    .trainer >> Train your class spells
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanla Bowleaf|r
    .trainer >> Train your class spells
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Train your class spells
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Train your class spells
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kenral Nightwind|r
    .trainer >> Train your class spells
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Moonwing|r
    .trainer >> Train your class spells
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dular|r
    .trainer >> Train your class spells
    .target Dular
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,54.07,25.47,0
    .goto 62,54.07,25.47,40,0
    .goto 62,54.38,29.02,40,0
    >>Kill |cRXP_ENEMY_Corrupted Thistle Bears|r and |cRXP_ENEMY_Corrupted Thistle Bear Matriarches|r. Loot them for |cRXP_LOOT_Corrupted Thistle Bear Guts|r
    .complete 13528,1 --Corrupted Thistle Bear Guts (6)
    .mob Corrupted Thistle Bear
    .mob Corrupted Thistle Bear Matriarch
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,54.17,29.24
    >>Click the |cRXP_PICK_Buzzbox 723|r
    .turnin 13528 >>Turn in Buzzbox 723
    .accept 13554 >>Accept A Cure In The Dark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 13529 >>Accept The Corruption's Source
    .target Tharnariun Treetender
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,52.31,31.01
    >>Kill |cRXP_ENEMY_Telarius Voidstrider|r and loot |cRXP_LOOT_Writings of the Dark Herald|r. Use it to start the quest
    .collect 64450,1,28529 --Writings of the Dark Herald (1)
    .accept 28529 >>Accept Writings of the Void
    .use 64450
    .mob Telarius Voidstrider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop13557x1
    >>|cRXP_LOOT_Corruptor's Master Key|r can drop from |cRXP_ENEMY_Zenn Foulhoof|r, |cRXP_ENEMY_Vile Corruptor|r. Use it to start the quest if you get one
    .collect 44927,1,13557 --Corruptor's Master Key (1)
    .accept 13557 >>Accept Bearer of Good Fortune
    .use 44927
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along31
    >>As you go: Kill |cRXP_ENEMY_Vile Grells|r. Kill |cRXP_ENEMY_Zenn Foulhoofs|r, |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corruptors|r. Loot them for |cRXP_LOOT_Foul Ichor|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13529,2 --Vile Grell slain (8)
    .complete 13554,1 --Foul Ichor (6)
    .mob Vile Grell
    .mob Zenn Foulhoof
    .mob Vile Corruptor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop13557x1
    #loop
    .goto 62,57.26,33.75,0
    .goto 62,57.26,33.75,40,0
    .goto 62,57.94,32.46,40,0
    >>Kill |cRXP_ENEMY_Uncorrupted Duskrats|r and |cRXP_ENEMY_Uncorrupted Thistle Bears|r
    >>Kill |cRXP_ENEMY_Zenn Foulhoof|r
    .complete 13557,1 --Uncorrupted Duskrat (8)
    .complete 13529,1 --Zenn Foulhoof slain (1)
    .mob Uncorrupted Duskrat
    .mob Uncorrupted Thistle Bear
    .mob Zenn Foulhoof
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along31
    .goto 62,57.43,33.75
    >>Click the |cRXP_PICK_Disgusting Workbench|r
    .accept 13831 >>Accept A Troubling Prescription
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop13557x2
    >>|cRXP_LOOT_Corruptor's Master Key|r can drop from |cRXP_ENEMY_Zenn Foulhoof|r, |cRXP_ENEMY_Vile Corruptor|r. Use it to start the quest if you get one
    .collect 44927,1,13557 --Corruptor's Master Key (1)
    .accept 13557 >>Accept Bearer of Good Fortune
    .use 44927
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop13557x2
    #loop
    .goto 62,57.13,33.46,0
    .goto 62,57.13,33.46,40,0
    .goto 62,57.88,32.43,40,0
    >>Kill |cRXP_ENEMY_Vile Grells|r
    >>Kill |cRXP_ENEMY_Zenn Foulhoofs|r, |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corruptors|r. Loot them for |cRXP_LOOT_Foul Ichor|r
    .complete 13529,2 --Vile Grell slain (8)
    .complete 13554,1 --Foul Ichor (6)
    .mob Vile Grell
    .mob Zenn Foulhoof
    .mob Vile Corruptor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .turnin 13554 >>Turn in A Cure In The Dark
    .target Wizbang Cranktoggle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .turnin 28529 >>Turn in Writings of the Void while you are here
    .isQuestComplete 28529
    .target Ranger Glynda Nal'Shea
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 13557 >>Turn in Bearer of Good Fortune
    .target Tharnariun Treetender
    .isOnQuest 13557
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 13831 >>Turn in A Troubling Prescription
    .turnin 13529 >>Turn in The Corruption's Source
    .target Tharnariun Treetender
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,50.94,18.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .accept 13564 >>Accept A Lost Companion
    .target Volcor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,50.14,19.42
    >>Locate Grimclaw.
    .complete 13564,1 --Grimclaw
    .target Grimclaw
step
    .goto 62,50.13,19.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 13563 >>Accept A Love Eternal
    .target Cerellean Whiteclaw
step
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .turnin 28529 >>Turn in Writings of the Void << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 13562 >>Accept The Final Flame of Bashal'Aran
    .target Ranger Glynda Nal'Shea
step
    .xp 13 >>Grind to level 13 (In Aid of the Refugees needs it)
step
    .goto 62,50.31,20.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Lendra|r
    .accept 13601 >>Accept In Aid of the Refugees
    .target Sentinel Lendra
step
    #completewith Along41
    >>As you go: Click the |cRXP_PICK_The Final Flame of Bashal'Aran|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13562,1 --The Final Flame of Bashal'Aran
step
    #label Along41
    .goto 62,46.81,33.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arya Autumnlight|r
    .accept 13561 >>Accept Solace for the Highborne
    .target Arya Autumnlight
step
    #loop
    .goto 62,46.44,35.04,0
    .goto 62,46.44,35.04,40,0
    .goto 62,48.26,36.01,40,0
    >>Click the |cRXP_PICK_The Final Flame of Bashal'Aran|r
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r and loot |cRXP_LOOT_Anaya's Pendant|r
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r
    >>Kill |cRXP_ENEMY_Writhing Highbornes|r
    .complete 13562,1 --The Final Flame of Bashal'Aran
    .complete 13563,1 --Anaya Dawnrunner slain (1)
    .complete 13563,2 --Anaya's Pendant (1)
    .complete 13561,1 --Cursed Highborne slain (6)
    .complete 13561,2 --Writhing Highborne slain (6)
    .mob Anaya Dawnrunner
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 62,46.81,33.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arya Autumnlight|r
    .turnin 13561 >>Turn in Solace for the Highborne
    .target Arya Autumnlight
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.97,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .turnin 13564 >>Turn in A Lost Companion
    .accept 13566 >>Accept Ritual Materials
    .accept 13598 >>Accept Unsavory Remedies
    .target Keeper Karithus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along45
    >>As you go: Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for |cRXP_LOOT_Moonstalker Whisker|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13566,1 --Moonstalker Whisker (3)
    .mob Moonstalker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along45
    .goto 62,42.93,38.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seraphine|r
    .accept 13565 >>Accept Twice Removed
    .target Seraphine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,41.70,39.14,0
    .goto 62,41.70,39.14,40,0
    .goto 62,40.62,36.78,40,0
    .goto 62,41.22,35.43,40,0
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for |cRXP_LOOT_Moonstalker Whisker|r
    .complete 13566,1 --Moonstalker Whisker (3)
    .mob Moonstalker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along47
    >>As you go: Kill |cRXP_ENEMY_Hungry Thistle Bears|r. Loot them for |cRXP_LOOT_Thistle Bear Fur|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13566,3 --Thistle Bear Fur (3)
    .mob Hungry Thistle Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along47
    #loop
    .goto 62,44.65,37.54,0
    .goto 62,44.65,37.54,40,0
    .goto 62,44.75,40.92,40,0
    >>Kill |cRXP_ENEMY_Mottled Doe|r and loot |cRXP_LOOT_Tuft of Mottled Doe Hair|r
    .complete 13566,2 --Tuft of Mottled Doe Hair (1)
    .mob Mottled Doe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,47.90,41.45,0
    .goto 62,47.90,41.45,40,0
    .goto 62,48.38,39.04,40,0
    >>Kill |cRXP_ENEMY_Lady Janira|r
    >>Pick up |cRXP_PICK_Fuming Toadstool|r from the ground
    >>Kill |cRXP_ENEMY_Darkscale Scouts|r and |cRXP_ENEMY_Withered Ents|r
    >>Kill |cRXP_ENEMY_Hungry Thistle Bears|r. Loot them for |cRXP_LOOT_Thistle Bear Fur|r
    .complete 13565,1 --Lady Janira slain (1)
    .complete 13598,1 --Fuming Toadstool (6)
    .complete 13565,2 --Darkscale Scout (8)
    .complete 13566,3 --Thistle Bear Fur (3)
    .mob Lady Janira
    .mob Darkscale Scout
    .mob Withered Ent
    .mob Hungry Thistle Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.93,38.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seraphine|r
    .turnin 13565 >>Turn in Twice Removed
    .target Seraphine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.97,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .turnin 13566 >>Turn in Ritual Materials
    .turnin 13598 >>Turn in Unsavory Remedies
    .accept 13569 >>Accept The Ritual Bond
    .target Keeper Karithus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.79,40.18
    >>Kill |cRXP_ENEMY_Great Moonstalker Spirit|r, |cRXP_ENEMY_Great Thistle Bear Spirit|r and |cRXP_ENEMY_Great Stag Spirit|r
    .complete 13569,1 --Great Moonstalker Spirit (1)
    .mob Great Moonstalker Spirit
    .mob Great Thistle Bear Spirit
    .mob Great Stag Spirit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.97,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .turnin 13569 >>Turn in The Ritual Bond
    .target Keeper Karithus
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 54 Darkshore
#subweight -10
#name 13-15 Darkshore: around Keeper Karithus
#next Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step
    .goto 62,42.97,39.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .accept 13599 >>Accept Grimclaw's Return
    .target Keeper Karithus
    .isQuestTurnedIn 13569 --any of: The Ritual Bond
step
    .xp 13
step
    .goto 62,42.51,45.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alinya|r
    .turnin 13601 >>Turn in In Aid of the Refugees
    .target Priestess Alinya
    .isOnQuest 13601
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.51,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Selarin|r
    .accept 13542 >>Accept Against the Wind
    .target Sentinel Selarin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.68,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corvine Moonrise|r
    .accept 13543 >>Accept Three Hammers to Break
    .target Corvine Moonrise
    .xp <13,1
step
    .goto 62,42.68,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corvine Moonrise|r
    .accept 13573 >>Accept Malfurion's Return
    .target Corvine Moonrise
    .xp <13,1
step
    .goto 62,44.58,30.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Tharill|r
    .accept 13523 >>Accept Power Over the Tides
    .target Moon Priestess Tharill
step
    #loop
    .goto 62,44.31,28.96,0
    .goto 62,44.31,28.96,40,0
    .goto 62,43.12,29.63,40,0
    >>Kill |cRXP_ENEMY_Tranquil Tidal Spirits|r and |cRXP_ENEMY_Enraged Tidal Spirits|r
    .complete 13523,1 --Tranquil Tidal Spirit (6)
    .mob Tranquil Tidal Spirit
    .mob Enraged Tidal Spirit
step
    .goto 62,44.58,30.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Tharill|r
    .turnin 13523 >>Turn in Power Over the Tides
    .target Moon Priestess Tharill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 13 >>Grind to level 13 (Coaxing the Spirits needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along61
    >>As you go: Kill |cRXP_ENEMY_Frenzied Cyclone|r and loot |cRXP_LOOT_Frenzied Cyclone Bracers|r. |cRXP_WARN_Anything left is finished later|r
    .collect 44868,1,13542,1 --Frenzied Cyclone Bracers (1)
    .mob Frenzied Cyclone
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,39.08,43.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalda|r
    .accept 13547 >>Accept Coaxing the Spirits
    .target Yalda
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,40.97,41.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r
    .complete 13547,2 --Sentinel Elissa Starbreeze
    .target Sentinel Elissa Starbreeze
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along61
    .goto 62,39.30,38.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .complete 13547,1 --Thundris Windweaver
    .target Thundris Windweaver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,37.89,39.81,0
    .goto 62,37.89,39.81,40,0
    .goto 62,40.02,42.18,40,0
    >>Kill |cRXP_ENEMY_Frenzied Cyclone|r and loot |cRXP_LOOT_Frenzied Cyclone Bracers|r
    .collect 44868,1,13542,1 --Frenzied Cyclone Bracers (1)
    .mob Frenzied Cyclone
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,38.54,41.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taldan|r
    .complete 13547,3 --Taldan
    .target Taldan
step
    .goto 62,38.58,42.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13605 >>Accept The Last Refugee
    .unitscan Archaeologist Hollee
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,38.11,43.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .complete 13547,4 --Caylais Moonfeather
    .target Caylais Moonfeather
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,39.08,43.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalda|r
    .turnin 13547 >>Turn in Coaxing the Spirits
    .accept 13558 >>Accept Call Down the Thunder
    .target Yalda
step
    .goto 62,41.18,43.36
    >>Archaeologist Hollee escorted to safety.
    .complete 13605,1 --Archaeologist Hollee escorted to safety.
step
    .goto 62,42.59,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elisa Steelhand|r
    .turnin 13605 >>Turn in The Last Refugee
    .target Elisa Steelhand
step
    .goto 62,42.68,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corvine Moonrise|r
    .accept 13543 >>Accept Three Hammers to Break << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 13573 >>Accept Malfurion's Return
    .target Corvine Moonrise
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,40.80,41.50,0
    .goto 62,40.80,41.50,40,0
    .goto 62,37.85,42.75,40,0
    >>Kill |cRXP_ENEMY_Cloudtamer Wildmane|r
    >>Kill |cRXP_ENEMY_Skylord Braax|r
    >>Kill |cRXP_ENEMY_Windmaster Tzu-Tzu|r
    .complete 13543,1 --Cloudtamer Wildmane slain (1)
    .complete 13543,3 --Skylord Braax slain (1)
    .complete 13543,2 --Windmaster Tzu-Tzu slain (1)
    .mob Cloudtamer Wildmane
    .mob Skylord Braax
    .mob Windmaster Tzu-Tzu
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,39.44,42.07
    >>Interact with |cRXP_FRIENDLY_Frenzied Cyclone Bracers Kill Credit Bunny|r
    .complete 13542,1 --Frenzied Cyclone Bracers Kill Credit Bunny
    .target Frenzied Cyclone Bracers Kill Credit Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.51,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Selarin|r
    .turnin 13542 >>Turn in Against the Wind
    .target Sentinel Selarin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.68,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corvine Moonrise|r
    .turnin 13543 >>Turn in Three Hammers to Break
    .target Corvine Moonrise
step
    .goto 62,43.66,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 13573 >>Turn in Malfurion's Return
    .accept 13575 >>Accept The Land Is in Their Blood << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 13577 >>Accept The Last Wildkin << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 13579 >>Accept Protector of Ameth'Aran << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Malfurion Stormrage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.59,48.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aroom|r
    .turnin 13577 >>Turn in The Last Wildkin
    .accept 13578 >>Accept Aroom's Farewell
    .target Aroom
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,44.17,48.56,0
    .goto 62,44.17,48.56,40,0
    .goto 62,46.96,46.91,40,0
    >>Pick up |cRXP_PICK_Slain Wildkin Feather|r from the ground
    .complete 13578,1 --Slain Wildkin Feather (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.59,48.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aroom|r
    .turnin 13578 >>Turn in Aroom's Farewell
    .accept 13582 >>Accept Elune's Fire
    .target Aroom
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,46.18,51.55
    >>Kill |cRXP_ENEMY_Horoo the Flamekeeper|r and loot |cRXP_LOOT_Elune's Torch|r
    .complete 13582,1 --Elune's Torch (1)
    .mob Horoo the Flamekeeper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.59,48.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aroom|r
    .turnin 13582 >>Turn in Elune's Fire
    .accept 13583 >>Accept The Wildkin's Oath
    .target Aroom
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,40.94,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .turnin 13575 >>Turn in The Land Is in Their Blood
    .accept 13576 >>Accept Mutual Aid
    .target Elder Brownpaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,40.67,59.06,0
    .goto 62,40.67,59.06,40,0
    .goto 62,40.20,62.87,40,0
    >>Interact with |cRXP_FRIENDLY_Unbound Fire Elementals|r
    .complete 13576,1 --Unbound Fire Elemental (8)
    .target Unbound Fire Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,40.94,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .turnin 13576 >>Turn in Mutual Aid
    .accept 13580 >>Accept Soothing the Elements
    .target Elder Brownpaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,39.54,62.23
    >>Ritual of Soothing complete
    .complete 13580,1 --Ritual of Soothing complete
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,40.94,56.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .turnin 13580 >>Turn in Soothing the Elements
    .accept 13581 >>Accept The Blackwood Pledge
    .target Elder Brownpaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,44.44,56.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selenn|r
    .turnin 13579 >>Turn in Protector of Ameth'Aran
    .accept 13584 >>Accept Calming the Earth
    .target Selenn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,44.91,56.59,0
    .goto 62,44.91,56.59,40,0
    .goto 62,43.73,60.51,40,0
    >>Kill |cRXP_ENEMY_Enraged Earth Elementals|r
    .complete 13584,1 --Enraged Earth Elemental slain (8)
    .mob Enraged Earth Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,44.44,56.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selenn|r
    .turnin 13584 >>Turn in Calming the Earth
    .accept 13585 >>Accept Sworn to Protect
    .target Selenn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.66,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 13581 >>Turn in The Blackwood Pledge
    .turnin 13583 >>Turn in The Wildkin's Oath
    .turnin 13585 >>Turn in Sworn to Protect
    .accept 13586 >>Accept The Emerald Dream
    .target Malfurion Stormrage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,49.21,56.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thessera|r
    .turnin 13586 >>Turn in The Emerald Dream
    .accept 13587 >>Accept The Waking Nightmare
    .target Thessera
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,49.33,55.70
    >>Kill |cRXP_ENEMY_Nightmare Guardian|r and loot |cRXP_LOOT_Emerald Scroll|r
    .complete 13587,1 --Emerald Scroll (1)
    .mob Nightmare Guardian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,49.21,56.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thessera|r
    .turnin 13587 >>Turn in The Waking Nightmare
    .accept 13940 >>Accept Leaving the Dream
    .target Thessera
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.66,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 13940 >>Turn in Leaving the Dream
    .accept 13588 >>Accept The Eye of All Storms
    .target Malfurion Stormrage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.86,53.59
    >>Kill |cRXP_ENEMY_Twilight Portal|r
    >>Kill |cRXP_ENEMY_Twilight Riders|r
    .complete 13588,1 --Twilight Portal slain (1)
    .complete 13588,2 --Twilight Rider slain (12)
    .mob Twilight Portal
    .mob Twilight Rider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.66,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 13588 >>Turn in The Eye of All Storms
    .target Malfurion Stormrage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,36.53,41.01
    >>Click the |cRXP_PICK_Aetherion Ritual Orb|r
    >>Kill |cRXP_ENEMY_Aetherion|r and loot |cRXP_LOOT_Aetherion's Essence|r
    .complete 13558,1 --Aetherion Ritual Orb
    .complete 13558,2 --Aetherion's Essence (1)
    .mob Aetherion
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 54 Darkshore
#subweight -10
#name 15-20 Darkshore: around Ranger Glynda Nal'Shea

step
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .turnin 13562 >>Turn in The Final Flame of Bashal'Aran
    .target Ranger Glynda Nal'Shea
    .isOnQuest 13562
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .accept 13589 >>Accept The Shatterspear Invaders
    .target Ranger Glynda Nal'Shea
    .isQuestTurnedIn 13569 --any of: The Ritual Bond
step
    .goto 62,51.80,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r
    .turnin 13599 >>Turn in Grimclaw's Return
    .target Serendia Oakwhisper
    .isOnQuest 13599
step
    .goto 62,50.13,19.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 13563 >>Turn in A Love Eternal
    .target Cerellean Whiteclaw
    .isOnQuest 13563
step
    .goto 62,51.01,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 13560 >>Accept An Ocean Not So Deep
    .target Gorbold Steelhand
    .isQuestTurnedIn 13566 --Ritual Materials
    .isQuestTurnedIn 13569 --The Ritual Bond
step
    #loop
    .goto 62,55.03,9.96,0
    .goto 62,55.03,9.96,40,0
    .goto 62,53.95,8.54,40,0
    >>Kill |cRXP_ENEMY_Greymist Tidehunters|r and |cRXP_ENEMY_Greymist Warriors|r
    .complete 13560,1 --Greymist Tidehunter (8)
    .mob Greymist Tidehunter
    .mob Greymist Warrior
    .isOnQuest 13560
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .turnin 13589 >>Turn in The Shatterspear Invaders
    .target Lieutenant Morra Starbreeze
    .isOnQuest 13589
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.89,19.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 13504 >>Accept Shatterspear Laborers
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 13589 --any of: The Shatterspear Invaders
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.88,19.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .accept 13505 >>Accept Remnants of the Highborne
    .target Balthule Shadowstrike
    .isQuestTurnedIn 13589 --any of: The Shatterspear Invaders
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,61.25,13.39,0
    .goto 62,61.25,13.39,40,0
    .goto 62,62.86,15.09,40,0
    >>Kill |cRXP_ENEMY_Shatterspear Laborers|r
    .complete 13504,1 --Shatterspear Laborer slain (10)
    .mob Shatterspear Laborer
    .isOnQuest 13504
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,61.37,13.80,0
    .goto 62,61.37,13.80,40,0
    .goto 62,63.26,15.99,40,0
    >>Pick up |cRXP_PICK_Highborne Relic|r from the ground
    .complete 13505,1 --Highborne Relic (8)
    .isOnQuest 13505
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.88,19.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 13505 >>Turn in Remnants of the Highborne
    .target Balthule Shadowstrike
    .isOnQuest 13505
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.89,19.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 13504 >>Turn in Shatterspear Laborers
    .target Sentinel Tysha Moonblade
    .isOnQuest 13504
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.89,19.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 13507 >>Accept Denying Manpower
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 13504 --Shatterspear Laborers
    .isQuestTurnedIn 13505 --Remnants of the Highborne
step
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .accept 13508 >>Accept Swift Response
    .target Lieutenant Morra Starbreeze
    .isQuestTurnedIn 13506 --any of: Reason to Worry
    .xp <10,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .accept 13509 >>Accept War Supplies
    .target Lieutenant Morra Starbreeze
    .isQuestTurnedIn 13504 --any of: Shatterspear Laborers
step
    .goto 62,63.75,5.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 13508 >>Turn in Swift Response
    .target Alanndarian Nightsong
    .isOnQuest 13508
step
    .goto 62,63.75,5.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 13511 >>Accept One Bitter Wish
    .target Alanndarian Nightsong
    .isQuestTurnedIn 13508 --any of: Swift Response
    .xp <10,1
step
    .goto 62,64.11,5.30
    >>Kill |cRXP_ENEMY_Rit'ko|r
    .complete 13511,1 --Rit'ko slain (1)
    .mob Rit'ko
    .isOnQuest 13511
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,64.48,5.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Aynasha|r
    .accept 13510 >>Accept Timely Arrival
    .target Sentinel Aynasha
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,60.25,6.93
    >>Escort Sentinel Aynasha to the Dock
    .complete 13510,1 --Escort Sentinel Aynasha to the Dock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,60.64,7.18,0
    .goto 62,60.64,7.18,40,0
    .goto 62,61.41,10.59,40,0
    >>Kill |cRXP_ENEMY_Horde Enforcers|r
    .complete 13507,1 --Horde Enforcer slain (6)
    .mob Horde Enforcer
    .isOnQuest 13507
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,61.52,9.09,0
    .goto 62,61.52,9.09,40,0
    .goto 62,63.06,5.25,40,0
    >>Kill |cRXP_ENEMY_Shatterspear Mystics|r
    .complete 13507,2 --Shatterspear Mystic slain (6)
    .mob Shatterspear Mystic
    .isOnQuest 13507
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,62.20,8.98,0
    .goto 62,62.20,8.98,40,0
    .goto 62,61.89,11.07,40,0
    >>Click the |cRXP_PICK_Shatterspear Armaments|r
    .complete 13509,1 --Shatterspear Armaments
    .isOnQuest 13509
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.89,19.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 13507 >>Turn in Denying Manpower
    .target Sentinel Tysha Moonblade
    .isOnQuest 13507
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .turnin 13509 >>Turn in War Supplies
    .target Lieutenant Morra Starbreeze
    .isOnQuest 13509
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .turnin 13510 >>Turn in Timely Arrival
    .target Lieutenant Morra Starbreeze
step
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .turnin 13511 >>Turn in One Bitter Wish
    .target Lieutenant Morra Starbreeze
    .isOnQuest 13511
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .accept 13512 >>Accept Strategic Strikes
    .target Lieutenant Morra Starbreeze
    .isQuestTurnedIn 13507 --Denying Manpower
    .isQuestTurnedIn 13509 --War Supplies
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.88,19.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .accept 13513 >>Accept On the Brink
    .target Balthule Shadowstrike
    .isQuestTurnedIn 13507 --Denying Manpower
    .isQuestTurnedIn 13509 --War Supplies
step
    .goto 62,59.14,19.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathas Wildwood|r
    .accept 13844 >>Accept The Looting of Althalaxx
    .target Mathas Wildwood
    .isQuestTurnedIn 13509 --any of: War Supplies
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,61.24,20.35
    >>Kill |cRXP_ENEMY_Sheya Stormweaver|r
    .complete 13512,2 --Sheya Stormweaver slain (1)
    .mob Sheya Stormweaver
    .isOnQuest 13512
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.43,25.26
    >>Kill |cRXP_ENEMY_Shatterspear Shamans|r. Loot them for |cRXP_LOOT_Shatterspear Amulet|r
    .complete 13513,1 --Shatterspear Amulet (6)
    .mob Shatterspear Shaman
    .isOnQuest 13513
step
    .goto 62,58.23,24.02
    >>Kill |cRXP_ENEMY_Teegan Holloway|r
    .complete 13844,1 --Teegan Holloway slain (1)
    .mob Teegan Holloway
    .isOnQuest 13844
step
    .goto 62,58.28,23.97
    >>Open the |cRXP_PICK_Charred Book|r. Loot it for |cRXP_LOOT_Narassin's Tome|r
    .complete 13844,2 --Narassin's Tome (1)
    .isOnQuest 13844
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,56.70,25.98
    >>Kill |cRXP_ENEMY_Lorenth Thundercall|r
    .complete 13512,1 --Lorenth Thundercall slain (1)
    .mob Lorenth Thundercall
    .isOnQuest 13512
step
    .goto 62,59.14,19.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathas Wildwood|r
    .turnin 13844 >>Turn in The Looting of Althalaxx
    .target Mathas Wildwood
    .isOnQuest 13844
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.88,19.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 13513 >>Turn in On the Brink
    .target Balthule Shadowstrike
    .isOnQuest 13513
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .turnin 13512 >>Turn in Strategic Strikes
    .target Lieutenant Morra Starbreeze
    .isOnQuest 13512
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,58.91,19.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .accept 13590 >>Accept The Front Line
    .target Lieutenant Morra Starbreeze
    .isQuestTurnedIn 13512 --any of: Strategic Strikes
step
    .goto 62,69.09,19.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 13514 >>Accept The Ancients' Ire
    .target Kerlonian Evershade
    .isQuestTurnedIn 13512 --Strategic Strikes
    .isQuestTurnedIn 13513 --On the Brink
step
    .goto 62,70.85,16.56
    >>Kill |cRXP_ENEMY_Shatterspear Hut Fire Bunnies|r
    .complete 13514,1 --Shatterspear Hut Fire Bunny slain (8)
    .mob Shatterspear Hut Fire Bunny
    .isOnQuest 13514
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,72.28,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r
    .turnin 13590 >>Turn in The Front Line while you are here
    .isQuestComplete 13590
    .target Huntress Sandrya Moonfall
step
    #loop
    .goto 62,70.76,16.73,0
    .goto 62,70.76,16.73,40,0
    .goto 62,70.60,20.87,40,0
    >>Kill |cRXP_ENEMY_Shatterspear Priestess|r, |cRXP_ENEMY_Shatterspear Raiders|r and |cRXP_ENEMY_Shatterspear Champions|r
    .complete 13514,2 --Shatterspear Priestess (8)
    .mob Shatterspear Priestess
    .mob Shatterspear Raider
    .mob Shatterspear Champion
    .isOnQuest 13514
step
    .goto 62,69.09,19.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .turnin 13514 >>Turn in The Ancients' Ire while you are here
    .isQuestComplete 13514
    .target Kerlonian Evershade
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,72.28,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r
    .turnin 13590 >>Turn in The Front Line
    .target Huntress Sandrya Moonfall
    .isOnQuest 13590
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,72.28,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r
    .accept 13515 >>Accept Ending the Threat
    .target Huntress Sandrya Moonfall
    .isQuestTurnedIn 13590 --any of: The Front Line
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,72.84,18.07
    >>Kill |cRXP_ENEMY_Jor'kil the Soulripper|r
    .complete 13515,1 --Jor'kil the Soulripper slain (1)
    .mob Jor'kil the Soulripper
    .isOnQuest 13515
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,72.28,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r
    .turnin 13515 >>Turn in Ending the Threat while you are here
    .isQuestComplete 13515
    .target Huntress Sandrya Moonfall
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,72.84,18.07
    >>Kill |cRXP_ENEMY_Jor'kil the Soulripper|r and loot |cRXP_LOOT_Hellscream's Missive|r. Use it to start the quest
    .collect 46318,1,13591 --Hellscream's Missive (1)
    .accept 13591 >>Accept Disturbing Connections
    .use 46318
    .mob Jor'kil the Soulripper
    .isQuestTurnedIn 13590 --any of: The Front Line
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,72.28,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r
    .turnin 13515 >>Turn in Ending the Threat
    .target Huntress Sandrya Moonfall
    .isOnQuest 13515
step
    .goto 62,69.09,19.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .turnin 13514 >>Turn in The Ancients' Ire
    .target Kerlonian Evershade
    .isOnQuest 13514
step
    .goto 62,51.01,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 13560 >>Turn in An Ocean Not So Deep
    .target Gorbold Steelhand
    .isOnQuest 13560
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,50.69,19.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .turnin 13591 >>Turn in Disturbing Connections
    .target Ranger Glynda Nal'Shea
    .isOnQuest 13591
step
    .goto 62,50.31,20.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Lendra|r
    .accept 13519 >>Accept The Twilight's Hammer
    .accept 13596 >>Accept Twilight Plans
    .target Sentinel Lendra
    .isQuestTurnedIn 13591 --any of: Disturbing Connections
step
    .goto 62,50.13,19.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 13570 >>Accept Remembrance of Auberdine
    .target Cerellean Whiteclaw
    .isQuestTurnedIn 13591 --any of: Disturbing Connections
step
    .goto 62,50.13,19.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 13570 >>Turn in Remembrance of Auberdine
    .target Cerellean Whiteclaw
    .isOnQuest 13570
step
    .goto 62,43.65,31.37
    >>Kill |cRXP_ENEMY_High Cultist Azerynn|r
    .complete 13519,1 --High Cultist Azerynn slain (1)
    .mob High Cultist Azerynn
    .isOnQuest 13519
step
    #loop
    .goto 62,43.13,32.38,0
    .goto 62,43.13,32.38,40,0
    .goto 62,45.27,30.45,40,0
    >>Pick up |cRXP_PICK_Twilight Plans|r from the ground
    .complete 13596,1 --Twilight Plans (6)
    .isOnQuest 13596
step
    #loop
    .goto 62,43.10,32.49,0
    .goto 62,43.10,32.49,40,0
    .goto 62,44.64,30.83,40,0
    >>Kill |cRXP_ENEMY_Twilight Fanatics|r
    .complete 13519,2 --Twilight Fanatic slain (10)
    .mob Twilight Fanatic
    .isOnQuest 13519
step
    .goto 62,50.31,20.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Lendra|r
    .turnin 13519 >>Turn in The Twilight's Hammer
    .target Sentinel Lendra
    .isOnQuest 13519
step
    .goto 62,50.31,20.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Lendra|r
    .turnin 13596 >>Turn in Twilight Plans
    .target Sentinel Lendra
    .isOnQuest 13596
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Kyndri's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,42.68,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corvine Moonrise|r
    .turnin 13558 >>Turn in Call Down the Thunder
    .target Corvine Moonrise
    .isOnQuest 13558
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.15,75.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foriel Broadleaf|r
    .accept 13525 >>Accept What's Happening to the Blackwood Furbolg?
    .target Foriel Broadleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.30,75.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .accept 13892 >>Accept Leave No Tracks
    .target Balren of the Claw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .accept 13881 >>Accept Consumed
    .target Kathrena Winterwisp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along165
    >>As you go: Kill |cRXP_ENEMY_Consumed Thistle Bears|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13881,1 --Consumed Thistle Bear slain (6)
    .mob Consumed Thistle Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.00,79.10
    >>Watering Hole Investigated
    .complete 13881,2 --Watering Hole Investigated
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.51,81.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13525 >>Turn in What's Happening to the Blackwood Furbolg?
    .accept 13526 >>Accept The Bear's Paw
    .target Elder Brolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,44.02,81.59,0
    .goto 62,44.02,81.59,40,0
    .goto 62,44.87,85.26,40,0
    >>Pick up |cRXP_PICK_Bear's Paw|r from the ground
    .complete 13526,1 --Bear's Paw (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.51,81.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13526 >>Turn in The Bear's Paw while you are here
    .isQuestComplete 13526
    .target Elder Brolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,40.61,84.38
    >>Sneak into the Master's Glaive using the Panther Figurine and spy on the Twilight's Hammer.
    .complete 13892,1 --Foreman Balsoth
    .target Foreman Balsoth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.30,75.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13892 >>Turn in Leave No Tracks
    .accept 13948 >>Accept Stepping Up Surveillance
    .target Balren of the Claw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,39.97,84.63
    >>Sneak into the Master's Glaive using the Panther Figurine and spy on the Twilight's Hammer leaders on the platform above.
    .complete 13948,1 --Doomspeaker Trevellion
    .target Doomspeaker Trevellion
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along165
    .goto 62,43.51,81.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13526 >>Turn in The Bear's Paw
    .accept 13544 >>Accept The Bear's Blessing
    .target Elder Brolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.51,81.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13544 >>Turn in The Bear's Blessing while you are here
    .isQuestComplete 13544
    .target Elder Brolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,45.53,78.83,0
    .goto 62,45.53,78.83,40,0
    .goto 62,42.23,77.16,40,0
    >>Kill |cRXP_ENEMY_Consumed Thistle Bears|r
    .complete 13881,1 --Consumed Thistle Bear slain (6)
    .mob Consumed Thistle Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.30,75.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13948 >>Turn in Stepping Up Surveillance
    .target Balren of the Claw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.32,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larien|r
    .accept 13896 >>Accept Unearthed Knowledge
    .target Larien
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .turnin 13881 >>Turn in Consumed
    .target Kathrena Winterwisp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.51,81.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13544 >>Turn in The Bear's Blessing
    .accept 13545 >>Accept Cleansing the Afflicted
    .target Elder Brolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.58,81.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gren Tornfur|r
    .accept 13572 >>Accept Jadefire Braziers
    .target Gren Tornfur
step
    .goto 62,47.71,88.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Aynasha|r
    .accept 5713 >>Accept One Shot.  One Kill.
    .target Sentinel Aynasha
step
    .goto 62,47.65,88.97
    >>Protect Aynasha
    .complete 5713,1 --Protect Aynasha
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,45.06,86.00,0
    .goto 62,45.06,86.00,40,0
    .goto 62,44.84,82.91,40,0
    >>Click the |cRXP_PICK_Jadefire Brazier|r
    >>Kill |cRXP_ENEMY_Spirit of Corruptions|r and |cRXP_ENEMY_Corrupted Blackwoods|r
    .complete 13572,1 --Jadefire Brazier
    .complete 13545,1 --Spirit of Corruption (8)
    .mob Spirit of Corruption
    .mob Corrupted Blackwood
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.58,81.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gren Tornfur|r
    .turnin 13572 >>Turn in Jadefire Braziers
    .target Gren Tornfur
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.51,81.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13545 >>Turn in Cleansing the Afflicted
    .accept 13546 >>Accept The Defiler
    .target Elder Brolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,46.78,84.03
    >>Kill |cRXP_ENEMY_Sharax the Defiler|r
    .complete 13546,1 --Sharax the Defiler slain (1)
    .mob Sharax the Defiler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,43.51,81.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13546 >>Turn in The Defiler
    .target Elder Brolg
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,37.67,82.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .turnin 13896 >>Turn in Unearthed Knowledge
    .accept 13893 >>Accept Soggoth and Kronn
    .accept 13907 >>Accept Sweeping Clean the Ruins
    .target Archaeologist Groff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along183
    >>As you go: Kill |cRXP_ENEMY_Greymist Oracles|r, |cRXP_ENEMY_Greymist Refugees|r and |cRXP_ENEMY_Murloc Squatter Kill Credits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13907,1 --Greymist Oracle (8)
    .mob Greymist Oracle
    .mob Greymist Refugee
    .mob Murloc Squatter Kill Credit
step
    .goto 62,37.75,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .accept 13912 >>Accept Swamped Secrets
    .target Jr. Archaeologist Ferd
step
    #completewith Along183
    >>As you go: Pick up |cRXP_PICK_Mud-Crusted Ancient Disc|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 13912,1 --Mud-Crusted Ancient Disc (1)
step
    .goto 62,37.69,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .accept 13911 >>Accept The Absent-Minded Prospector
    .target Prospector Remtravel
step
    .goto 62,37.69,82.94
    >>Prospector Remtravel Escorted
    .complete 13911,1 --Prospector Remtravel Escorted
step
    #label Along183
    .goto 62,37.75,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13911 >>Turn in The Absent-Minded Prospector
    .target Jr. Archaeologist Ferd
step
    .goto 62,37.23,83.66
    >>Pick up |cRXP_PICK_Mud-Crusted Ancient Disc|r from the ground
    >>Kill |cRXP_ENEMY_Greymist Oracles|r, |cRXP_ENEMY_Greymist Refugees|r and |cRXP_ENEMY_Murloc Squatter Kill Credits|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 13912,1 --Mud-Crusted Ancient Disc (1)
    .complete 13907,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Greymist Oracle (8)
    .mob Greymist Oracle << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Greymist Refugee << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Murloc Squatter Kill Credit << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    .goto 62,37.75,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13912 >>Turn in Swamped Secrets while you are here
    .isQuestComplete 13912
    .target Jr. Archaeologist Ferd
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,37.67,82.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .turnin 13907 >>Turn in Sweeping Clean the Ruins
    .accept 13909 >>Accept Got Some Flotsam?
    .target Archaeologist Groff
step
    .goto 62,37.75,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13912 >>Turn in Swamped Secrets
    .accept 13918 >>Accept The Titans' Terminal
    .target Jr. Archaeologist Ferd
step
    .goto 62,37.75,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13918 >>Turn in The Titans' Terminal while you are here
    .isQuestComplete 13918
    .target Jr. Archaeologist Ferd
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,36.26,84.90,0
    .goto 62,36.26,84.90,40,0
    .goto 62,35.61,81.19,40,0
    >>Open the |cRXP_PICK_Greymist Debris|r. Loot it for |cRXP_LOOT_Salvageable Greymist Wreckage|r
    .complete 13909,1 --Salvageable Greymist Wreckage (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,37.67,82.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .turnin 13909 >>Turn in Got Some Flotsam?
    .accept 13910 >>Accept A New Home
    .target Archaeologist Groff
step
    .goto 62,37.75,82.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13918 >>Turn in The Titans' Terminal
    .target Jr. Archaeologist Ferd
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,35.91,81.94
    >>Click the |cRXP_PICK_Greymist Murloc Build Site|r
    .complete 13910,1 --Greymist Murloc Build Site
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,37.67,82.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .turnin 13910 >>Turn in A New Home
    .target Archaeologist Groff
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.32,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larien|r
    .turnin 13893 >>Turn in Soggoth and Kronn
    .target Larien
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.41,74.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .accept 13895 >>Accept The Slumbering Ancients
    .target Onu
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.67,71.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aros|r
    .turnin 13895 >>Turn in The Slumbering Ancients
    .target Aros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.59,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkscale Assassin|r
    .accept 13953 >>Accept Naga In Our Midst
    .target Darkscale Assassin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.30,75.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13953 >>Turn in Naga In Our Midst
    .accept 13899 >>Accept The Darkscale Warlord
    .target Balren of the Claw
step
    .goto 62,45.35,75.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felros|r
    .accept 13898 >>Accept The Tides Turn Against Us
    .target Felros
step
    .goto 62,43.66,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .accept 13902 >>Accept Mounting the Offensive
    .target Malfurion Stormrage
    .isQuestTurnedIn 13588 --any of: The Eye of All Storms
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,32.26,85.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Wrathspine|r
    .turnin 13899 >>Turn in The Darkscale Warlord
    .accept 13900 >>Accept The Offering to Azshara
    .target Warlord Wrathspine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,32.89,84.09
    >>Stop the Darkscale Priestesses from offering the Horn of the Ancients to Azshara above Nazj'vel.
    .complete 13900,1 --Azshara Event Credit [INTERNAL]
    .target Azshara Event Credit [INTERNAL]
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,32.79,84.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 13900 >>Turn in The Offering to Azshara
    .accept 13897 >>Accept The Battle for Darkshore
    .target Malfurion Stormrage
step
    #loop
    .goto 62,34.48,82.96,0
    .goto 62,34.48,82.96,40,0
    .goto 62,31.95,83.66,40,0
    >>Kill |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --Darkscale Myrmidon slain (8)
    .mob Darkscale Myrmidon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,40.74,84.35
    >>Kill |cRXP_ENEMY_Avatar of Soggoth|r
    .complete 13897,1 --Avatar of Soggoth slain (1)
    .mob Avatar of Soggoth
step
    .goto 62,45.30,75.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13897 >>Turn in The Battle for Darkshore << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26408 >>Accept Ashes in Ashenvale
    .target Balren of the Claw
step
    .goto 62,45.30,75.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13902 >>Turn in Mounting the Offensive
    .target Balren of the Claw
    .isOnQuest 13902
step
    .goto 62,45.35,75.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felros|r
    .turnin 13898 >>Turn in The Tides Turn Against Us
    .target Felros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
    .isOnQuest 14039
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
step
    +|cRXP_WARN_That is all of Darkshore for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: One Shot.  One Kill., Ashes in Ashenvale
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior/Dwarf Paladin/Draenei Paladin/Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter/Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue/Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest/NightElf Priest/Dwarf Shaman/Draenei Shaman/Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage/NightElf Druid/Worgen Druid/Gnome Priest
    +|cRXP_WARN_The rest of Darkshore is planned from level 22.|r Load its guide for level 22 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior/Dwarf Paladin/Draenei Paladin/Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter/Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue/Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest/NightElf Priest/Dwarf Shaman/Draenei Shaman/Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage/NightElf Druid/Worgen Druid/Gnome Priest
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 54 Darkshore
#subweight -10
#name 22-23 Darkshore
--RouteBuilder:next
#next Zone Routes (Alliance)\20-22 Hillsbrad Foothills: around Helcular

step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 27225 >>Accept A Summons from Ander Germaine
    .target Arias'ta Bladesinger
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 89,37.64,80.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarelvir|r
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Tarelvir
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 27266 >>Accept Wulf Calls
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 27267 >>Accept Make Contact with SI:7
    .target Erion Shadewhisper
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Priestess Alathea
step << Dwarf Paladin/Draenei Paladin
    .goto 89,43.79,78.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rukua|r
    .accept 27265 >>Accept Lord Grayson Shadowbreaker
    .target Rukua
step << Dwarf Shaman/Draenei Shaman
    .goto 89,43.95,78.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Droha|r
    .accept 27270 >>Accept An Audience with the Farseer
    .target Droha
step << NightElf Druid/Worgen Druid
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 27273 >>Accept An Invitation from Moonglade
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
step
    +|cRXP_WARN_That is all of Darkshore for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7 << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
step
    +|cRXP_WARN_Suggested next zones at level 22|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.7 levels of quests, starting around Helcular). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Darkshore is planned from level 53.|r Load its guide for level 53 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 54 Darkshore
#subweight -10
#name 53-54 Darkshore
--RouteBuilder:next
#next Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\52-55 Swamp of Sorrows: around Trade Baron Silversnap;Zone Routes (Alliance)\53-55 Un'Goro Crater: around Garl Stormclaw

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .accept 13882 >>Accept The Seeds of Life
    .target Kathrena Winterwisp
    .isQuestTurnedIn 13881 --any of: Consumed
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.41,74.86
    >>Kill |cRXP_ENEMY_Onu|r and loot |cRXP_LOOT_Seed of the Earth|r
    .complete 13882,1 --Seed of the Earth (1)
    .mob Onu
    .isOnQuest 13882
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,45.61,79.53,0
    .goto 62,45.61,79.53,40,0
    .goto 62,43.20,82.44,40,0
    .goto 62,41.61,76.48,40,0
    >>Kill |cRXP_ENEMY_Darkshore Wisp|r and loot |cRXP_LOOT_Seed of the Sky|r
    .complete 13882,3 --Seed of the Sky (1)
    .mob Darkshore Wisp
    .isOnQuest 13882
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,37.78,80.39,0
    .goto 62,37.78,80.39,40,0
    .goto 62,37.25,76.84,40,0
    >>Open the |cRXP_PICK_Glittering Shell|r. Loot it for |cRXP_LOOT_Seed of the Sea|r
    .complete 13882,2 --Seed of the Sea (1)
    .isOnQuest 13882
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .turnin 13882 >>Turn in The Seeds of Life
    .target Kathrena Winterwisp
    .isOnQuest 13882
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .accept 13925 >>Accept An Ounce of Prevention
    .target Kathrena Winterwisp
    .isQuestTurnedIn 13882 --any of: The Seeds of Life
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,43.84,73.83,0
    .goto 62,43.84,73.83,40,0
    .goto 62,40.73,75.14,40,0
    .goto 62,41.12,79.32,40,0
    >>Kill |cRXP_ENEMY_Moonstalker Matriarches|r, |cRXP_ENEMY_Grizzled Thistle Bears|r, |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Whitetail Stags|r
    .complete 13925,1 --Moonstalker Matriarch (8)
    .mob Moonstalker Matriarch
    .mob Grizzled Thistle Bear
    .mob Moonstalker Sire
    .mob Whitetail Stag
    .isOnQuest 13925
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .turnin 13925 >>Turn in An Ounce of Prevention
    .target Kathrena Winterwisp
    .isOnQuest 13925
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .accept 13885 >>Accept In Defense of Darkshore
    .target Kathrena Winterwisp
    .isQuestTurnedIn 13925 --any of: An Ounce of Prevention
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,40.23,74.18,0
    .goto 62,40.23,74.18,40,0
    .goto 62,40.17,77.42,40,0
    .goto 62,41.12,79.32,40,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Young Grizzled Thistle Bears|r
    .complete 13885,1 --Grizzled Thistle Bear (8)
    .mob Grizzled Thistle Bear
    .mob Young Grizzled Thistle Bear
    .isOnQuest 13885
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,40.82,89.05,0
    .goto 62,40.82,89.05,40,0
    .goto 62,38.48,92.91,40,0
    >>Kill |cRXP_ENEMY_Moonstalker Matriarches|r, |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Runts|r
    .complete 13885,2 --Moonstalker Matriarch (8)
    .mob Moonstalker Matriarch
    .mob Moonstalker Sire
    .mob Moonstalker Runt
    .isOnQuest 13885
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 62,45.76,68.42,0
    .goto 62,45.76,68.42,40,0
    .goto 62,43.92,63.96,40,0
    >>Kill |cRXP_ENEMY_Whitetail Stags|r and |cRXP_ENEMY_Whitetail Does|r
    .complete 13885,3 --Whitetail Stag (8)
    .mob Whitetail Stag
    .mob Whitetail Doe
    .isOnQuest 13885
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .turnin 13885 >>Turn in In Defense of Darkshore
    .target Kathrena Winterwisp
    .isOnQuest 13885
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .accept 13891 >>Accept The Devourer of Darkshore
    .target Kathrena Winterwisp
    .isQuestTurnedIn 13885 --any of: In Defense of Darkshore
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.03,79.20
    >>Kill |cRXP_ENEMY_Yoth'al the Devourer|r
    .complete 13891,1 --Yoth'al the Devourer slain (1)
    .mob Yoth'al the Devourer
    .isOnQuest 13891
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 62,45.20,74.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .turnin 13891 >>Turn in The Devourer of Darkshore
    .target Kathrena Winterwisp
    .isOnQuest 13891
step
    +|cRXP_WARN_End of the Darkshore route.|r
step
    +|cRXP_WARN_Suggested next zones at level 53|r: |cRXP_FRIENDLY_Winterspring|r (about 1.3 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Swamp of Sorrows|r (about 0.9 levels of quests, starting around Trade Baron Silversnap), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.8 levels of quests, starting around Garl Stormclaw). Completing this step loads the guide for Winterspring --RouteBuilder:next
]])
