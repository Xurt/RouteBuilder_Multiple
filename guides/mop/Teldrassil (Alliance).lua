-- 5-12 Teldrassil: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Teldrassil.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 5-12 Teldrassil
--RouteBuilder:next
#next Zone Routes (Alliance)\10-13 Darkshore: around Ranger Glynda Nal'Shea;Zone Routes (Alliance)\11-15 Loch Modan: around Captain Rugelfuss

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,59.47,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >>Accept Zenn's Bidding
    .target Zenn Foulhoof
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .accept 2438 >>Accept The Emerald Dreamcatcher
    .target Tallonkai Swiftroot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >>Accept A Troubling Breeze
    .target Athridas Bearmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Strigid Owls|r, |cRXP_ENEMY_Strigid Screechers|r and |cRXP_ENEMY_Strigid Hunters|r. Loot them for |cRXP_LOOT_Strigid Owl Feather|r. |cRXP_WARN_Anything left is finished later|r
    .complete 488,2 --Strigid Owl Feather (2)
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159 >>Turn in Dolanaar Delivery
    .target Innkeeper Keldamyr
    .isOnQuest 2159
step
    #label Along4
    .goto 57,55.07,49.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narret Shadowgrove|r
    .target Narret Shadowgrove
    .home >>Set your Hearthstone to Narret Shadowgrove's inn
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iranis Shadebloom|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .skipgossip 47420,2,3,2
    .target Iranis Shadebloom
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
    .trainer >> Train your class spells
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Irriende|r
    .trainer >> Train your class spells
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .trainer >> Train your class spells
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Train your class spells
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Train your class spells
    .target Jannok Breezesong
step << NightElf Hunter
    .goto 57,56.28,51.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6722 >>Turn in The Hunter's Path
    .target Dazalar
    .isOnQuest 6722
step << NightElf Hunter
    .goto 57,56.28,51.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6721 >>Turn in The Hunter's Path
    .target Dazalar
    .isOnQuest 6721
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 28731 >>Turn in Teldrassil: Passing Awareness
    .unitscan Corithras Moonrage
    .isOnQuest 28731
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 929 >>Accept Teldrassil: The Refusal of the Aspects
    .unitscan Corithras Moonrage
    .isQuestTurnedIn 28731 --any of: Teldrassil: Passing Awareness
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
    .trainer >> Train your class spells
    .target Kal
step << NightElf
    .goto 57,56.73,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Accept Reminders of Home
    .target Nyoma
    .xp <5,1
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 57,62.10,50.76
    >>Open the |cRXP_PICK_Starbreeze Moonwell|r. Loot it for |cRXP_LOOT_Filled Jade Phial|r
    .complete 929,1 --Filled Jade Phial (1)
    .isOnQuest 929
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,64.59,51.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaerolas Talvethren|r
    .turnin 475 >>Turn in A Troubling Breeze
    .accept 476 >>Accept Gnarlpine Corruption
    .target Gaerolas Talvethren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,66.10,52.00
    >>Open the |cRXP_PICK_Tallonkai's Dresser|r. Loot it for |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Emerald Dreamcatcher (1)
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 929 >>Turn in Teldrassil: The Refusal of the Aspects
    .unitscan Corithras Moonrage
    .isOnQuest 929
step << NightElf
    .goto 57,56.73,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Accept Reminders of Home
    .target Nyoma
    .xp <5,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >>Turn in Gnarlpine Corruption
    .target Athridas Bearmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 2438 >>Turn in The Emerald Dreamcatcher
    .accept 2459 >>Accept Ferocitas the Dream Eater
    .target Tallonkai Swiftroot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,60.66,47.35,0
    .goto 57,60.66,47.35,40,0
    .goto 57,64.19,47.54,40,0
    .goto 57,62.21,61.13,40,0
    .goto 57,60.99,52.15,40,0
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Webwood Venomfangs|r, |cRXP_ENEMY_Webwood Silkspinners|r and |cRXP_ENEMY_Giant Webwood Spiders|r. Loot them for |cRXP_LOOT_Webwood Spider Silk|r
    >>Kill |cRXP_ENEMY_Elder Nightsabers|r, |cRXP_ENEMY_Feral Nightsabers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Nightsaber Stalkers|r. Loot them for |cRXP_LOOT_Nightsaber Fang|r
    >>Kill |cRXP_ENEMY_Strigid Owls|r, |cRXP_ENEMY_Strigid Screechers|r and |cRXP_ENEMY_Strigid Hunters|r. Loot them for |cRXP_LOOT_Strigid Owl Feather|r
    .complete 488,3 --Webwood Spider Silk (2)
    .complete 488,1 --Nightsaber Fang (2)
    .complete 488,2 --Strigid Owl Feather (2)
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .mob Webwood Silkspinner
    .mob Giant Webwood Spider
    .mob Elder Nightsaber
    .mob Feral Nightsaber
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,59.47,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >>Turn in Zenn's Bidding
    .target Zenn Foulhoof
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,67.28,46.87
    >>Kill |cRXP_ENEMY_Ferocitas the Dream Eater|r and loot |cRXP_LOOT_Gnarlpine Necklace|r
    .collect 8049,1,2459,1 --Gnarlpine Necklace (1)
    .mob Ferocitas the Dream Eater
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,68.22,45.81,0
    .goto 57,68.22,45.81,40,0
    .goto 57,66.07,45.37,40,0
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    .complete 2459,1 --Gnarlpine Mystic slain (7)
    .mob Gnarlpine Mystic
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.76,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >>Accept Seek Redemption!
    .target Syral Bladeleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,56.99,55.47,0
    .goto 57,56.99,55.47,40,0
    .goto 57,55.18,57.21,40,0
    .goto 57,53.68,59.06,40,0
    >>Pick up |cRXP_PICK_Fel Cone|r from the ground
    .complete 489,1 --Fel Cone (3)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,59.47,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >>Turn in Seek Redemption!
    .target Zenn Foulhoof
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.76,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 13946 >>Accept Nature's Reprisal
    .target Syral Bladeleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .accept 932 >>Accept Twisted Hatred
    .target Tallonkai Swiftroot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,53.63,45.02,0
    .goto 57,53.63,45.02,40,0
    .goto 57,52.59,43.92,40,0
    >>Kill |cRXP_ENEMY_Rascal Sprites|r, |cRXP_ENEMY_Shadow Sprites|r, |cRXP_ENEMY_Dark Sprites|r and |cRXP_ENEMY_Vicious Grells|r
    >>Kill |cRXP_ENEMY_Lord Melenas|r and loot |cRXP_LOOT_Melenas' Head|r
    .complete 13946,1 --Rascal Sprite (12)
    .complete 932,1 --Melenas' Head (1)
    .mob Rascal Sprite
    .mob Shadow Sprite
    .mob Dark Sprite
    .mob Vicious Grell
    .mob Lord Melenas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.76,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .turnin 13946 >>Turn in Nature's Reprisal
    .target Syral Bladeleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 932 >>Turn in Twisted Hatred
    .target Tallonkai Swiftroot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 483 >>Accept The Relics of Wakening
    .target Athridas Bearmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.66,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Kyra Starsong|r
    .accept 13945 >>Accept Resident Danger
    .target Sentinel Kyra Starsong
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along29
    >>As you go: Kill |cRXP_ENEMY_Gnarlpine Shamans|r, |cRXP_ENEMY_Gnarlpine Augurs|r and |cRXP_ENEMY_Gnarlpine Defenders|r. Open the |cRXP_PICK_Chest of Nesting|r. Loot it for |cRXP_LOOT_Rune of Nesting|r. Open the |cRXP_PICK_Chest of the Black Feather|r. Loot it for |cRXP_LOOT_Black Feather Quill|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13945,1 --Gnarlpine Shaman (8)
    .complete 483,4 --Rune of Nesting (1)
    .complete 483,2 --Black Feather Quill (1)
    .mob Gnarlpine Shaman
    .mob Gnarlpine Augur
    .mob Gnarlpine Defender
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along29
    .goto 57,45.03,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r
    .accept 2541 >>Accept The Sleeping Druid
    .target Oben Rageclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,45.25,52.62,0
    .goto 57,45.25,52.62,40,0
    .goto 57,46.62,46.32,40,0
    .goto 57,48.65,46.80,40,0
    >>Kill |cRXP_ENEMY_Gnarlpine Shaman|r and loot |cRXP_LOOT_Shaman Voodoo Charm|r
    >>Kill |cRXP_ENEMY_Gnarlpine Shamans|r, |cRXP_ENEMY_Gnarlpine Augurs|r and |cRXP_ENEMY_Gnarlpine Defenders|r
    >>Open the |cRXP_PICK_Chest of Nesting|r. Loot it for |cRXP_LOOT_Rune of Nesting|r
    >>Open the |cRXP_PICK_Chest of the Black Feather|r. Loot it for |cRXP_LOOT_Black Feather Quill|r
    >>Open the |cRXP_PICK_Chest of the Sky|r. Loot it for |cRXP_LOOT_Sapphire of Sky|r
    >>Open the |cRXP_PICK_Chest of the Raven Claw|r. Loot it for |cRXP_LOOT_Raven Claw Talisman|r
    .complete 2541,1 --Shaman Voodoo Charm (1)
    .complete 13945,1 --Gnarlpine Shaman (8)
    .complete 483,4 --Rune of Nesting (1)
    .complete 483,2 --Black Feather Quill (1)
    .complete 483,3 --Sapphire of Sky (1)
    .complete 483,1 --Raven Claw Talisman (1)
    .mob Gnarlpine Shaman
    .mob Gnarlpine Augur
    .mob Gnarlpine Defender
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,45.03,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r
    .turnin 2541 >>Turn in The Sleeping Druid
    .accept 2561 >>Accept Druid of the Claw
    .target Oben Rageclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,45.75,52.82
    >>Interact with |cRXP_FRIENDLY_Rageclaw|r
    .complete 2561,1 --Rageclaw
    .target Rageclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,45.03,53.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r
    .turnin 2561 >>Turn in Druid of the Claw
    .target Oben Rageclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 483 >>Turn in The Relics of Wakening
    .accept 486 >>Accept Ursal the Mauler
    .target Athridas Bearmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.66,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Kyra Starsong|r
    .turnin 13945 >>Turn in Resident Danger
    .target Sentinel Kyra Starsong
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,49.35,44.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    .accept 487 >>Accept The Road to Darnassus
    .target Moon Priestess Amara
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,49.73,42.21,0
    .goto 57,49.73,42.21,40,0
    .goto 57,51.73,37.96,40,0
    .goto 57,49.71,33.63,40,0
    >>Kill |cRXP_ENEMY_Gnarlpine Ambushers|r
    >>Kill |cRXP_ENEMY_Ursal the Mauler|r
    .complete 487,1 --Gnarlpine Ambusher slain (8)
    .complete 486,1 --Ursal the Mauler slain (1)
    .mob Gnarlpine Ambusher
    .mob Ursal the Mauler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,49.35,44.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r
    .turnin 487 >>Turn in The Road to Darnassus
    .target Moon Priestess Amara
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 486 >>Turn in Ursal the Mauler
    .target Athridas Bearmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.76,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 997 >>Accept Denalan's Earth
    .target Syral Bladeleaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 2459 >>Turn in Ferocitas the Dream Eater
    .target Tallonkai Swiftroot
    .isQuestComplete 2459
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.94,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 997 >>Turn in Denalan's Earth
    .accept 918 >>Accept Timberling Seeds
    .accept 919 >>Accept Timberling Sprouts
    .unitscan Denalan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along43
    >>As you go: Kill |cRXP_ENEMY_Timberlings|r, |cRXP_ENEMY_Timberling Bark Rippers|r, |cRXP_ENEMY_Timberling Tramplers|r and |cRXP_ENEMY_Timberling Mire Beasts|r. Loot them for |cRXP_LOOT_Timberling Seed|r. |cRXP_WARN_Anything left is finished later|r
    .complete 918,1 --Timberling Seed (8)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along43
    .goto 57,57.64,63.03
    >>Click the |cRXP_PICK_Strange Fruited Plant|r
    .accept 930 >>Accept The Glowing Fruit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,59.38,61.11,0
    .goto 57,59.38,61.11,40,0
    .goto 57,59.95,57.73,40,0
    .goto 57,56.84,57.21,40,0
    >>Kill |cRXP_ENEMY_Timberlings|r, |cRXP_ENEMY_Timberling Bark Rippers|r, |cRXP_ENEMY_Timberling Tramplers|r and |cRXP_ENEMY_Timberling Mire Beasts|r. Loot them for |cRXP_LOOT_Timberling Seed|r
    >>Pick up |cRXP_PICK_Timberling Sprout|r from the ground
    .complete 918,1 --Timberling Seed (8)
    .complete 919,1 --Timberling Sprout (12)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.94,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 918 >>Turn in Timberling Seeds
    .turnin 919 >>Turn in Timberling Sprouts
    .turnin 930 >>Turn in The Glowing Fruit
    .accept 922 >>Accept Rellian Greenspyre
    .unitscan Denalan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,52.04,63.66
    >>Kill |cRXP_ENEMY_Blackmoss the Fetid|r and loot |cRXP_LOOT_Moss-Twined Heart|r. Use it to start the quest
    .collect 5179,1,927 --Moss-Twined Heart (1)
    .accept 927 >>Accept The Moss-twined Heart
    .use 5179
    .mob Blackmoss the Fetid
step << NightElf
    .goto 57,56.73,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Accept Reminders of Home
    .target Nyoma
step << Worgen
    .goto 57,55.23,89.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .accept 28517 >>Accept The Howling Oak
    .target Krennan Aranas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 7383 >>Accept Teldrassil: The Burden of the Kaldorei
    .unitscan Corithras Moonrage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.94,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 927 >>Turn in The Moss-twined Heart
    .unitscan Denalan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.96,44.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >>Turn in Rellian Greenspyre while you are here
    .isQuestComplete 922
    .target Rellian Greenspyre
step << NightElf
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fidelio|r
    .turnin 6344 >>Turn in Reminders of Home
    .accept 6341 >>Accept To Darnassus
    .target Fidelio
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.96,44.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >>Turn in Rellian Greenspyre
    .accept 923 >>Accept Mossy Tumors
    .target Rellian Greenspyre
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along54
    >>As you go: Open the |cRXP_PICK_Oracle Glade Moonwell|r. Loot it for |cRXP_LOOT_Filled Amethyst Phial|r. |cRXP_WARN_Anything left is finished later|r
    .complete 7383,1 --Filled Amethyst Phial (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,39.50,29.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >>Accept The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along54
    >>As you go: Kill |cRXP_ENEMY_Bloodfeather Harpies|r, |cRXP_ENEMY_Bloodfeather Rogues|r, |cRXP_ENEMY_Bloodfeather Sorceress|r and |cRXP_ENEMY_Bloodfeather Furies|r. Loot them for |cRXP_LOOT_Bloodfeather Belt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 937,1 --Bloodfeather Belt (6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along54
    .goto 57,39.18,29.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >>Accept Tears of the Moon
    .target Priestess A'moora
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,44.55,29.75,0
    .goto 57,44.55,29.75,40,0
    .goto 57,45.20,23.80,40,0
    >>Kill |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r and |cRXP_ENEMY_Elder Timberlings|r. Loot them for |cRXP_LOOT_Mossy Tumor|r
    .complete 923,1 --Mossy Tumor (5)
    .mob Timberling Trampler
    .mob Timberling Mire Beast
    .mob Elder Timberling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,40.66,22.16
    >>Kill |cRXP_ENEMY_Lady Sathrah|r and loot |cRXP_LOOT_Silvery Spinnerets|r
    .complete 2518,1 --Silvery Spinnerets (1)
    .mob Lady Sathrah
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along58
    >>As you go: Kill |cRXP_ENEMY_Bloodfeather Harpies|r, |cRXP_ENEMY_Bloodfeather Rogues|r, |cRXP_ENEMY_Bloodfeather Sorceress|r and |cRXP_ENEMY_Bloodfeather Furies|r. Loot them for |cRXP_LOOT_Bloodfeather Belt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 937,1 --Bloodfeather Belt (6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,37.16,25.34
    >>Click the |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >>Accept The Shimmering Frond
step
    #label Along58
    .goto 57,34.49,27.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    .accept 938 >>Accept Mist
    .target Mist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 57,35.61,26.81,0
    .goto 57,35.61,26.81,40,0
    .goto 57,37.13,23.86,40,0
    .goto 57,36.95,30.78,40,0
    >>Kill |cRXP_ENEMY_Bloodfeather Harpies|r, |cRXP_ENEMY_Bloodfeather Rogues|r, |cRXP_ENEMY_Bloodfeather Sorceress|r and |cRXP_ENEMY_Bloodfeather Furies|r. Loot them for |cRXP_LOOT_Bloodfeather Belt|r
    .complete 937,1 --Bloodfeather Belt (6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along62
    >>As you go: Open the |cRXP_PICK_Oracle Glade Moonwell|r. Loot it for |cRXP_LOOT_Filled Amethyst Phial|r. |cRXP_WARN_Anything left is finished later|r
    .complete 7383,1 --Filled Amethyst Phial (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,39.18,29.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >>Turn in Tears of the Moon
    .target Priestess A'moora
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,39.50,29.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >>Turn in The Enchanted Glade while you are here
    .isQuestComplete 937
    .target Sentinel Arynia Cloudsbreak
step
    .goto 57,39.50,29.86
    >>Lead Mist safely to Sentinel Arynia Cloudsbreak
    .complete 938,1 --Lead Mist safely to Sentinel Arynia Cloudsbreak
step
    #label Along62
    .goto 57,39.50,29.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >>Turn in Mist
    .turnin 937 >>Turn in The Enchanted Glade << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Sentinel Arynia Cloudsbreak
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,40.48,29.94
    >>Open the |cRXP_PICK_Oracle Glade Moonwell|r. Loot it for |cRXP_LOOT_Filled Amethyst Phial|r
    .complete 7383,1 --Filled Amethyst Phial (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.96,44.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >>Turn in Mossy Tumors
    .target Rellian Greenspyre
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.94,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 931 >>Turn in The Shimmering Frond
    .accept 941 >>Accept Planting the Heart
    .accept 2499 >>Accept Oakenscowl
    .unitscan Denalan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.91,43.99
    >>Click the |cRXP_PICK_Sprouted Frond|r
    .accept 2399 >>Accept The Sprouted Fronds
    .turnin 2399 >>Turn in The Sprouted Fronds
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,47.38,35.20
    >>Kill |cRXP_ENEMY_Oakenscowl|r and loot |cRXP_LOOT_Gargantuan Tumor|r
    .complete 2499,1 --Gargantuan Tumor (1)
    .mob Oakenscowl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.94,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 2499 >>Turn in Oakenscowl
    .unitscan Denalan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 7383 >>Turn in Teldrassil: The Burden of the Kaldorei
    .accept 933 >>Accept Teldrassil: The Coming Dawn
    .unitscan Corithras Moonrage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,43.92,58.55
    >>Open the |cRXP_PICK_Pools of Arlithrien Moonwell|r. Loot it for |cRXP_LOOT_Filled Tourmaline Phial|r
    .complete 933,1 --Filled Tourmaline Phial (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,42.52,58.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 933 >>Turn in Teldrassil: The Coming Dawn
    .accept 14005 >>Accept The Vengeance of Elune
    .target Tarindrella
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,40.71,69.33
    >>Kill |cRXP_ENEMY_Bough of Corruption|r
    .complete 14005,1 --Bough of Corruption slain (1)
    .mob Bough of Corruption
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,42.52,58.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 14005 >>Turn in The Vengeance of Elune
    .accept 935 >>Accept The Waters of Teldrassil
    .target Tarindrella
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 935 >>Turn in The Waters of Teldrassil
    .accept 14039 >>Accept Home of the Kaldorei
    .unitscan Corithras Moonrage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 57,59.83,59.89
    >>Click the |cRXP_PICK_Denalan's Planter|r
    .turnin 941 >>Turn in Planting the Heart
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 89,43.91,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r
    .accept 26383 >>Accept Breaking Waves of Change
    .target Sentinel Cordressa Briarbow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei while you are here
    .isQuestComplete 14039
    .target Tyrande Whisperwind
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Turn in The Howling Oak
    .accept 26385 >>Accept Breaking Waves of Change
    .target Genn Greymane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .turnin 6341 >>Turn in To Darnassus
    .accept 6342 >>Accept An Unexpected Gift
    .target Sister Aquinne
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .turnin 6342 >>Turn in An Unexpected Gift
    .accept 6343 >>Accept Return to Nyoma
    .target Leora
step
    #completewith next
    .zone 57 >>Leave Darnassus for Teldrassil
    .zoneskip 57
step << NightElf
    #completewith next
    .hs >>Hearth to Narret Shadowgrove's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << NightElf
    .goto 57,56.73,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyoma|r
    .turnin 6343 >>Turn in Return to Nyoma
    .target Nyoma
step
    +|cRXP_WARN_End of the Teldrassil route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Darkshore and back here|r: Ferocitas the Dream Eater << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 11|r: |cRXP_FRIENDLY_Darkshore|r (about 1.0 levels of quests, starting around Ranger Glynda Nal'Shea), |cRXP_FRIENDLY_Loch Modan|r (about 0.7 levels of quests, starting around Captain Rugelfuss). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
