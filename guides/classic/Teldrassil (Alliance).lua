-- 1-14 Teldrassil: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 1, 15).
-- Split into 4 guides, listed under "1 - 16 Teldrassil" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/classic/Teldrassil.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Teldrassil
#subweight -1
#name 1-5 Teldrassil: around Conservator Ilthalaine
#next Zone Routes (Alliance)\5-8 Teldrassil: around Corithras Moonrage

step
    .goto 1438/1,826.28,10328.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .accept 456 >>Accept The Balance of Nature
    .target Conservator Ilthalaine
step
    >>Loot the mobs you kill, make sure you have at least 10 copper worth of vendor trash, you will need it to train |T132333:0|t[Battle Shout] << Warrior
    .xp 2 >> Grind to level 2
step
    #completewith Along2
    >>As you go: Kill |cRXP_ENEMY_Young Thistle Boars|r. |cRXP_WARN_Anything left is finished later|r
    .complete 456,2 --Young Thistle Boar slain (4)
    .mob Young Thistle Boar
step
    #completewith Along1
    >>As you go: Kill |cRXP_ENEMY_Young Nightsabers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 456,1 --Young Nightsaber slain (7)
    .mob Young Nightsaber
step
    #label Along1
    .goto 1438/1,713.76,10407.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .accept 4495 >>Accept A Good Friend
    .target Dirania Silvershine
step
    #label Along2
    .goto 1438/1,763.66,10389.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 458 >>Accept The Woodland Protector
    .target Melithar Staghelm
step
    #loop
    .goto 1438/1,689.32,10320.69,0
    .goto 1438/1,689.32,10320.69,40,0
    .goto 1438/1,656.22,10390.60,40,0
    .goto 1438/1,589.01,10401.12,40,0
    >>Kill |cRXP_ENEMY_Young Nightsabers|r
    >>Kill |cRXP_ENEMY_Young Thistle Boars|r
    .complete 456,1 --Young Nightsaber slain (7)
    .complete 456,2 --Young Thistle Boar slain (4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    .goto 1438/1,826.28,10328.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 456 >>Turn in The Balance of Nature
    .accept 457 >>Accept The Balance of Nature
    .accept 3118 >>Accept Encrypted Sigil << NightElf Rogue
    .target Conservator Ilthalaine
step
    .goto 1438/1,870.07,10296.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >>Turn in The Woodland Protector while you are here
    .isQuestComplete 458
    .target Tarindrella
step << NightElf Rogue
    .goto 1438/1,777.91,10519.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 3118 >>Turn in Encrypted Sigil
    .target Frahun Shadewhisper
step
    #loop
    .goto 1438/1,642.48,10541.96,0
    .goto 1438/1,642.48,10541.96,40,0
    .goto 1438/1,689.83,10633.26,40,0
    .goto 1438/1,748.89,10648.53,40,0
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r
    >>Kill |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Mangy Nightsaber slain (7)
    .complete 457,2 --Thistle Boar slain (7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step << Hunter
    .goto 1438/1,769.77,10673.98
    .xp 4-610 >> Grind until you are 610xp away from level 4 (790/1400)
step
    .goto 1438/1,1035.04,10711.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >>Turn in A Good Friend
    .accept 3519 >>Accept A Friend in Need
    .target Iverron
step << Hunter
    .hs >> Hearth to Shadowglen
step
    .goto 1438/1,870.07,10296.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >>Turn in The Woodland Protector
    .accept 459 >>Accept The Woodland Protector
    .target Tarindrella
step
    .goto 1438/1,826.28,10328.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Conservator Ilthalaine|r
    .turnin 457 >>Turn in The Balance of Nature
    .accept 3116 >>Accept Simple Sigil << NightElf Warrior
    .accept 3117 >>Accept Etched Sigil << NightElf Hunter
    .accept 3119 >>Accept Hallowed Sigil << NightElf Priest
    .accept 3120 >>Accept Verdant Sigil << NightElf Druid
    .target Conservator Ilthalaine
step << Druid
    .goto 1438/1,779.85,10450.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,15
    .target Dellylah
step << Warrior
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keina
step << NightElf Priest
    .goto 1438/1,801.84,10458.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .turnin 3119 >>Turn in Hallowed Sigil while you are here
    .isQuestComplete 3119
    .target Shanda
step << NightElf Druid
    .goto 1438/1,829.34,10463.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 3120 >>Turn in Verdant Sigil while you are here
    .isQuestComplete 3120
    .target Mardant Strongoak
step << NightElf Warrior
    .goto 1438/1,777.91,10526.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >>Turn in Simple Sigil
    .target Alyissia
step << Warrior
    .goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .trainer >> Train your class spells
step << !Hunter
    .hs >> Hearth to Shadowglen
step
    .goto 1438/1,713.76,10407.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >>Turn in A Friend in Need
    .accept 3521 >>Accept Iverron's Antidote
    .target Dirania Silvershine
step << Druid
    .goto 1438/1,779.85,10450.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 20|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,20
    .target Dellylah
step
    .goto 1438/1,871.09,10417.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >>Accept Webwood Venom
    .target Gilshalan Windwalker
step << Hunter
    .xp 4-40
step << NightElf Hunter
    .goto 1438/1,827.81,10458.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >>Turn in Etched Sigil
    .target Ayanna Everstride
step << Hunter
    .goto 1438/1,871.60,10440.83,25,0
    .goto 1438/1,827.86,10458.51
    >>Ascend the Aldrassil Tree
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .train 1978 >>Train Serpent Sting
    .target Ayanna Everstride
step
    #loop
    .goto 1438/1,922.52,10536.53,0
    .goto 1438/1,922.52,10536.53,40,0
    .goto 1438/1,858.87,10587.44,40,0
    >>Pick up |cRXP_PICK_Moonpetal Lily|r from the ground
    .complete 3521,2 --Moonpetal Lily (4)
step
    #loop
    .goto 1438/1,874.15,10707.92,0
    .goto 1438/1,874.15,10707.92,40,0
    .goto 1438/1,926.08,10769.35,40,0
    >>Kill |cRXP_ENEMY_Webwood Spider|r and loot |cRXP_LOOT_Webwood Ichor|r
    >>Kill |cRXP_ENEMY_Webwood Spiders|r. Loot them for |cRXP_LOOT_Webwood Venom Sac|r
    .complete 3521,3 --Webwood Ichor (1)
    .complete 916,1 --Webwood Venom Sac (10)
    .mob Webwood Spider
step
    #loop
    .goto 1438/1,1033.01,10336.30,0
    .goto 1438/1,1033.01,10336.30,40,0
    .goto 1438/1,955.10,10276.57,40,0
    >>Kill |cRXP_ENEMY_Grells|r and |cRXP_ENEMY_Grellkins|r. Loot them for |cRXP_LOOT_Hyacinth Mushroom|r. It can also be picked up from |cRXP_PICK_Hyacinth Mushroom|r on the ground
    >>Kill |cRXP_ENEMY_Grells|r and |cRXP_ENEMY_Grellkins|r. Loot them for |cRXP_LOOT_Fel Moss|r
    .complete 3521,1 --Hyacinth Mushroom (7)
    .complete 459,1 --Fel Moss (8)
    .mob Grell
    .mob Grellkin
step
    .goto 1438/1,870.07,10296.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarindrella|r
    .turnin 459 >>Turn in The Woodland Protector
    .target Tarindrella
step
    .goto 1438/1,713.76,10407.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >>Turn in Iverron's Antidote
    .accept 3522 >>Accept Iverron's Antidote
    .target Dirania Silvershine
step
    .goto 1438/1,1035.04,10711.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iverron|r
    .turnin 3522 >>Turn in Iverron's Antidote
    .target Iverron
step << !Priest !Warrior
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keina|r
    .vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
    .vendor >> |cRXP_BUY_Buy 3 or 4 stacks of|r |T132382:0|t[Rough Arrows] << Hunter
    .target Keina
step << Warrior
    .goto 1438/1,778.07,10526.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .trainer >> Train your class spells
    .target Alyissia
step
    .goto 1438/1,871.09,10417.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >>Turn in Webwood Venom while you are here
    .isQuestComplete 916
    .target Gilshalan Windwalker
step << NightElf Priest
    .goto 1438/1,801.84,10458.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .turnin 3119 >>Turn in Hallowed Sigil
    .target Shanda
step << Priest
    .goto 1438/1,801.64,10458.75
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r up stairs
    .trainer >> Train your class spells
step
    .goto 1438/1,871.09,10417.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >>Turn in Webwood Venom
    .accept 917 >>Accept Webwood Egg
    .target Gilshalan Windwalker
step << NightElf Druid
    .goto 1438/1,829.34,10463.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 3120 >>Turn in Verdant Sigil
    .target Mardant Strongoak
step << Druid
    .goto 1438/1,871.60,10440.83,25,0
    .goto 1438/1,829.54,10464.01
    >>Ascend the Aldrassil Tree
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .train 8921 >>Train |T136096:0|t[Moonfire]
step << NightElf Priest
    .goto 1438/1,801.84,10458.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >>Accept In Favor of Elune
    .target Shanda
    .xp <5,1
step
    .goto 1438/1,922.52,10933.26
    >>Open the |cRXP_PICK_Webwood Eggs|r. Loot it for |cRXP_LOOT_Webwood Egg|r
    .complete 917,1 --Webwood Egg (1)
step
    .goto 1438/1,871.09,10417.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 917 >>Turn in Webwood Egg
    .accept 920 >>Accept Tenaron's Summons
    .target Gilshalan Windwalker
step
    .goto 1438/1,807.45,10492.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >>Turn in Tenaron's Summons
    .accept 921 >>Accept Crown of the Earth
    .target Tenaron Stormgrip
step << NightElf Priest
    .goto 1438/1,801.84,10458.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >>Accept In Favor of Elune
    .target Shanda
    .xp <5,1
step
    .goto 1438/1,762.13,10709.62
    >>Open the |cRXP_PICK_Shadowglen Moonwell|r. Loot it for |cRXP_LOOT_Filled Crystal Phial|r
    .complete 921,1 --Filled Crystal Phial (1)
step << NightElf Priest
    .goto 1438/1,801.84,10458.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >>Accept In Favor of Elune
    .target Shanda
step
    .goto 1438/1,807.45,10492.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >>Turn in Crown of the Earth
    .accept 928 >>Accept Crown of the Earth
    .target Tenaron Stormgrip
step
    .goto 1438/1,700.52,10214.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Accept Dolanaar Delivery
    .target Porthannius
step
    .goto 1438/1,736.16,9920.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >>Accept Zenn's Bidding
    .target Zenn Foulhoof
step << NightElf Hunter
    .goto 1438/1,928.63,9812.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6722 >>Turn in The Hunter's Path
    .target Dazalar
    .isOnQuest 6722
step << NightElf Hunter
    .goto 1438/1,928.63,9812.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6721 >>Turn in The Hunter's Path
    .target Dazalar
    .isOnQuest 6721
step << NightElf Hunter
    .goto 1438/1,928.63,9812.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6073 >>Turn in The Hunter's Path
    .target Dazalar
    .isOnQuest 6073
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Teldrassil
#subweight -1
#name 5-8 Teldrassil: around Corithras Moonrage
#next Zone Routes (Alliance)\8-11 Teldrassil: around Denalan

step
    .goto 1438/1,959.18,9872.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 997 >>Accept Denalan's Earth
    .target Syral Bladeleaf
step
    .goto 1438/1,965.29,9887.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >>Accept A Troubling Breeze
    .target Athridas Bearmantle
step << NightElf Priest
    .goto 1438/1,985.65,9905.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5622 >>Turn in In Favor of Elune
    .target Laurna Morninglight
    .isOnQuest 5622
step << NightElf Priest
    .goto 1438/1,985.65,9905.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .accept 5621 >>Accept Garments of the Moon
    .target Laurna Morninglight
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .target Laurna Morninglight
    .trainer >> Train your class spells
step << Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldia|r up stairs
    .vendor >> |cRXP_BUY_Buy and equip a|r |T135426:0|t[Small Throwing Knife]
    .target Aldia
step
    .goto 1438/1,985.14,9898.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .accept 932 >>Accept Twisted Hatred
    .accept 2438 >>Accept The Emerald Dreamcatcher
    .target Tallonkai Swiftroot
step << Hunter
    .goto 1438/1,968.85,9821.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .target Jeena Featherbow
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Windblade|r
    .trainer >> Train your class spells
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Train your class spells
    .target Jannok Breezesong
step
    .goto 1438/1,982.60,9802.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159 >>Turn in Dolanaar Delivery
    .target Innkeeper Keldamyr
    .isOnQuest 2159
step
    .goto 1438/1,982.60,9802.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .target Innkeeper Keldamyr
    .home >>Set your Hearthstone to Innkeeper Keldamyr's inn
step
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .vendor >>|cRXP_BUY_Buy 10 |T132815:0|t|cRXP_LOOT_Ice Cold Milk|r or as much as you can afford << Priest
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .train 3044 >> Train Arcane Shot << era
    .train 5116 >> Train Concussive Shot << sod
    .target Dazalar
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kal|r
    .trainer >> Train your class spells
    .target Kal
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >>Turn in Crown of the Earth
    .target Corithras Moonrage
    .isOnQuest 928
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 929 >>Accept Crown of the Earth
    .target Corithras Moonrage
    .isQuestTurnedIn 928 --any of: Crown of the Earth
step << Druid
    .goto 1438/1,875.62,9773.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malorne Bladeleaf|r
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    >>|cRXP_WARN_If you would rather purchase 5|r |T134187:0|t[Earthroot] |cRXP_WARN_from the Auction House later, skip this step|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    .target Malorne Bladeleaf
step << NightElf Priest
    .goto 1438/1,900.11,9675.88
    >>Interact with |cRXP_FRIENDLY_Sentinel Shaya|r
    .complete 5621,1 --Sentinel Shaya
    .target Sentinel Shaya
step
    .goto 1438/1,713.76,9506.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >>Turn in Denalan's Earth
    .accept 918 >>Accept Timberling Seeds
    .accept 919 >>Accept Timberling Sprouts
    .target Denalan
step
    #loop
    .goto 1438/1,756.53,9438.66,0
    .goto 1438/1,756.53,9438.66,40,0
    .goto 1438/1,751.44,9615.47,40,0
    .goto 1438/1,880.77,9621.24,40,0
    .goto 1438/1,1067.12,9446.46,40,0
    .goto 1438/1,1130.26,9354.83,40,0
    >>Kill |cRXP_ENEMY_Timberlings|r, |cRXP_ENEMY_Timberling Bark Rippers|r, |cRXP_ENEMY_Timberling Tramplers|r and |cRXP_ENEMY_Timberling Mire Beasts|r. Loot them for |cRXP_LOOT_Timberling Seed|r
    >>Pick up |cRXP_PICK_Timberling Sprout|r from the ground
    .complete 918,1 --Timberling Seed (8)
    .complete 919,1 --Timberling Sprout (12)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    .goto 1438/1,713.76,9506.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >>Turn in Timberling Seeds
    .turnin 919 >>Turn in Timberling Sprouts
    .accept 922 >>Accept Rellian Greenspyre
    .target Denalan
step
    .goto 1438/1,351.23,9806.88
    >>Open the |cRXP_PICK_Tallonkai's Dresser|r. Loot it for |cRXP_LOOT_Emerald Dreamcatcher|r
    .complete 2438,1 --Emerald Dreamcatcher (1)
step
    .goto 1438/1,440.85,9845.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaerolas Talvethren|r
    .turnin 475 >>Turn in A Troubling Breeze
    .accept 476 >>Accept Gnarlpine Corruption
    .target Gaerolas Talvethren
step
    .goto 1438/1,587.49,9859.82
    >>Open the |cRXP_PICK_Starbreeze Village Moonwell|r. Loot it for |cRXP_LOOT_Filled Jade Phial|r
    .complete 929,1 --Filled Jade Phial (1)
    .isOnQuest 929
step
    #loop
    .goto 1438/1,618.54,9785.16,0
    .goto 1438/1,618.54,9785.16,40,0
    .goto 1438/1,782.50,9693.53,40,0
    >>Kill |cRXP_ENEMY_Elder Nightsabers|r, |cRXP_ENEMY_Feral Nightsabers|r, |cRXP_ENEMY_Nightsabers|r and |cRXP_ENEMY_Nightsaber Stalkers|r. Loot them for |cRXP_LOOT_Nightsaber Fang|r
    .complete 488,1 --Nightsaber Fang (3)
    .mob Elder Nightsaber
    .mob Feral Nightsaber
    .mob Nightsaber
    .mob Nightsaber Stalker
    .isOnQuest 488
step
    .goto 1438/1,1079.85,9817.06
    >>Kill |cRXP_ENEMY_Strigid Owls|r, |cRXP_ENEMY_Strigid Screechers|r and |cRXP_ENEMY_Strigid Hunters|r. Loot them for |cRXP_LOOT_Strigid Owl Feather|r
    .complete 488,2 --Strigid Owl Feather (3)
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
    .isOnQuest 488
step
    #loop
    .goto 1438/1,747.87,9811.63,0
    .goto 1438/1,747.87,9811.63,40,0
    .goto 1438/1,712.23,9957.90,40,0
    .goto 1438/1,589.52,9687.76,40,0
    >>Kill |cRXP_ENEMY_Webwood Lurkers|r, |cRXP_ENEMY_Webwood Venomfangs|r, |cRXP_ENEMY_Webwood Silkspinners|r and |cRXP_ENEMY_Giant Webwood Spiders|r. Loot them for |cRXP_LOOT_Webwood Spider Silk|r
    .complete 488,3 --Webwood Spider Silk (3)
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .mob Webwood Silkspinner
    .mob Giant Webwood Spider
    .isOnQuest 488
step
    .goto 1438/1,736.16,9920.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >>Turn in Zenn's Bidding
    .target Zenn Foulhoof
    .isOnQuest 488
step
    .goto 1438/1,723.94,9985.05
    .xp 7+3520 >> Grind to level 7 +3520xp
step
    .xp 7+2350 >> Grind to level 7 +2350xp
step
    .goto 1438/1,963.25,9811.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Kyra Starsong|r
    .accept 489 >>Accept Seek Redemption!
    .target Sentinel Kyra Starsong
    .isQuestTurnedIn 488 --any of: Zenn's Bidding
step
    .goto 1438/1,965.29,9887.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >>Turn in Gnarlpine Corruption
    .accept 483 >>Accept The Relics of Wakening
    .target Athridas Bearmantle
step << NightElf Priest
    .goto 1438/1,985.65,9905.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5621 >>Turn in Garments of the Moon
    .target Laurna Morninglight
step
    .goto 1438/1,985.14,9898.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 2438 >>Turn in The Emerald Dreamcatcher
    .accept 2459 >>Accept Ferocitas the Dream Eater
    .target Tallonkai Swiftroot
step << Hunter
    .goto 1438/1,968.85,9821.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Buy up to 800|r |T132382:0|t[Rough Arrows]
    .target Jeena Featherbow
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .trainer >> Train your class spells
    .target Dazalar
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >>Turn in Crown of the Earth
    .target Corithras Moonrage
    .isOnQuest 929
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >>Accept Crown of the Earth
    .target Corithras Moonrage
    .isQuestTurnedIn 929 --any of: Crown of the Earth
step
    #loop
    .goto 1438/1,810.50,9752.58,0
    .goto 1438/1,810.50,9752.58,40,0
    .goto 1438/1,820.68,9948.06,40,0
    >>Pick up |cRXP_PICK_Fel Cone|r from the ground
    .complete 489,1 --Fel Cone (3)
    .isOnQuest 489
step
    .goto 1438/1,736.16,9920.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >>Turn in Seek Redemption!
    .target Zenn Foulhoof
    .isOnQuest 489
step
    .goto 1438/1,282.49,10018.65
    >>Kill |cRXP_ENEMY_Ferocitas the Dream Eater|r and loot |cRXP_LOOT_Gnarlpine Necklace|r
    .collect 8049,1,2459,1 --Gnarlpine Necklace (1)
    .mob Ferocitas the Dream Eater
step
    #loop
    .goto 1438/1,308.97,10054.62,0
    .goto 1438/1,308.97,10054.62,40,0
    .goto 1438/1,269.77,9953.83,40,0
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    .complete 2459,1 --Gnarlpine Mystic slain (7)
    .mob Gnarlpine Mystic
step
    .goto 1438/1,1202.05,10127.93
    >>Kill |cRXP_ENEMY_Lord Melenas|r and loot |cRXP_LOOT_Melenas' Head|r
    .complete 932,1 --Melenas' Head (1)
    .mob Lord Melenas
step
    #completewith Along65
    >>As you go: Open the |cRXP_PICK_Chest of the Sky|r. Loot it for |cRXP_LOOT_Sapphire of Sky|r. |cRXP_WARN_Anything left is finished later|r
    .complete 483,3 --Sapphire of Sky (1)
step
    #completewith Along65
    >>As you go: Open the |cRXP_PICK_Chest of Nesting|r. Loot it for |cRXP_LOOT_Rune of Nesting|r. |cRXP_WARN_Anything left is finished later|r
    .complete 483,4 --Rune of Nesting (1)
step
    #label Along65
    .goto 1438/1,1526.39,9741.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r
    .accept 2541 >>Accept The Sleeping Druid
    .target Oben Rageclaw
step
    #completewith Along66
    >>As you go: Kill |cRXP_ENEMY_Gnarlpine Shaman|r and loot |cRXP_LOOT_Shaman Voodoo Charm|r. |cRXP_WARN_Anything left is finished later|r
    .complete 2541,1 --Shaman Voodoo Charm (1)
    .mob Gnarlpine Shaman
step
    #label Along66
    .goto 1438/1,1538.61,9712.19
    >>Open the |cRXP_PICK_Chest of the Sky|r. Loot it for |cRXP_LOOT_Sapphire of Sky|r
    .complete 483,3 --Sapphire of Sky (1)
step
    #loop
    .goto 1438/1,1430.16,9185.82,0
    .goto 1438/1,1430.16,9185.82,40,0
    .goto 1438/1,1373.64,9186.84,40,0
    >>Kill |cRXP_ENEMY_Gnarlpine Shaman|r and loot |cRXP_LOOT_Shaman Voodoo Charm|r
    .complete 2541,1 --Shaman Voodoo Charm (1)
    .mob Gnarlpine Shaman
step
    .goto 1438/1,1645.02,9245.55
    >>Click the |cRXP_PICK_Strange Fruited Plant|r
    .accept 930 >>Accept The Glowing Fruit
step
    .goto 1438/1,1655.21,9555.06
    >>Open the |cRXP_PICK_Pools of Arlithrien Moonwell|r. Loot it for |cRXP_LOOT_Filled Tourmaline Phial|r
    .complete 933,1 --Filled Tourmaline Phial (1)
    .isOnQuest 933
step << NightElf Hunter
    #completewith next
    .zone 1457 >>Travel to Darnassus
    .zoneskip 1457
step << NightElf Hunter
    .xp 10 >>Grind to level 10 (The Hunter's Path needs it)
step << NightElf Hunter
    .goto 1457/1,2511.01,10177.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .accept 6071 >>Accept The Hunter's Path
    .target Jocaste
step << NightElf Hunter
    #completewith next
    .zone 1438 >>Leave Darnassus for Teldrassil
    .zoneskip 1438
step
    #completewith next
    .hs >>Hearth to Innkeeper Keldamyr's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >>Turn in Crown of the Earth
    .target Corithras Moonrage
    .isOnQuest 933
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 7383 >>Accept Crown of the Earth
    .target Corithras Moonrage
    .isQuestTurnedIn 933 --any of: Crown of the Earth
step
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Train Cooking
    .target Zarrin
step << Warrior/Rogue
    .goto 1438/1,999.40,9902.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Byancie
step
    .goto 1438/1,985.14,9898.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 932 >>Turn in Twisted Hatred
    .target Tallonkai Swiftroot
step << Warrior
    #loop
    .goto 1438/1,988.71,9847.94,0
    .goto 1438/1,988.71,9847.94,40,0
    .goto 1438/1,1039.63,9846.25,40,0
    .goto 1438/1,1096.14,9879.84,40,0
    .goto 1438/1,1169.46,9918.53,40,0
    .goto 1438/1,1224.45,9915.14,40,0
    .goto 1438/1,1240.24,9926.68,40,0
    .goto 1438/1,1244.82,9988.10,40,0
    .goto 1438/1,1258.57,10003.72,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 1684 >>Accept Elanaria
    .unitscan Moon Priestess Amara
step << NightElf Hunter
    .goto 1438/1,928.63,9812.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6071 >>Turn in The Hunter's Path
    .accept 6063 >>Accept Taming the Beast
    .target Dazalar
step << Hunter
    .goto 1438/1,928.83,9812.34
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .trainer >> Train your class spells
step << NightElf Hunter
    #loop
    .goto 1438/1,702.05,9752.58,0
    .goto 1438/1,702.05,9752.58,40,0
    .goto 1438/1,747.87,9811.63,40,0
    .goto 1438/1,755.51,9854.73,40,0
    .goto 1438/1,720.38,9892.40,40,0
    .goto 1438/1,686.77,9978.26,40,0
    >>Interact with |cRXP_FRIENDLY_Webwood Lurker|r
    .complete 6063,1 --Webwood Lurker
    .target Webwood Lurker
step << NightElf Hunter
    .goto 1438/1,928.63,9812.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Turn in Taming the Beast
    .accept 6101 >>Accept Taming the Beast
    .target Dazalar
step << NightElf Hunter
    #loop
    .goto 1438/1,648.08,9384.36,0
    .goto 1438/1,648.08,9384.36,40,0
    .goto 1438/1,585.45,9381.98,40,0
    .goto 1438/1,579.85,9412.86,40,0
    >>Interact with |cRXP_FRIENDLY_Nightsaber Stalker|r
    .complete 6101,1 --Nightsaber Stalker
    .target Nightsaber Stalker
step << NightElf Hunter
    .goto 1438/1,928.63,9812.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >>Turn in Taming the Beast
    .accept 6102 >>Accept Taming the Beast
    .target Dazalar
step << NightElf Hunter
    #loop
    .goto 1438/1,1800.83,9980.30,0
    .goto 1438/1,1800.83,9980.30,40,0
    .goto 1438/1,1791.66,10008.47,40,0
    .goto 1438/1,1823.74,10088.22,40,0
    .goto 1438/1,1838.00,10084.83,40,0
    .goto 1438/1,1900.12,10090.60,40,0
    >>Interact with |cRXP_FRIENDLY_Strigid Screecher|r
    .complete 6102,1 --Strigid Screecher
    .target Strigid Screecher
step << NightElf Hunter
    .goto 1438/1,928.63,9812.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >>Turn in Taming the Beast
    .accept 6103 >>Accept Training the Beast
    .target Dazalar
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dazalar|r
    .target Dazalar
    .train 1130 >> |cRXP_WARN_Make sure you have trained Hunter's Mark. You will need it to get a rune soon|r
step
    #loop
    .goto 1438/1,988.71,9847.94,0
    .goto 1438/1,988.71,9847.94,40,0
    .goto 1438/1,1039.63,9846.25,40,0
    .goto 1438/1,1096.14,9879.84,40,0
    .goto 1438/1,1169.46,9918.53,40,0
    .goto 1438/1,1224.45,9915.14,40,0
    .goto 1438/1,1240.24,9926.68,40,0
    .goto 1438/1,1244.82,9988.10,40,0
    .goto 1438/1,1258.57,10003.72,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 487 >>Accept The Road to Darnassus
    .unitscan Moon Priestess Amara
step
    #completewith Along85
    >>As you go: Open the |cRXP_PICK_Chest of Nesting|r. Loot it for |cRXP_LOOT_Rune of Nesting|r. |cRXP_WARN_Anything left is finished later|r
    .complete 483,4 --Rune of Nesting (1)
step
    .goto 1438/1,1526.39,9741.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r
    .turnin 2541 >>Turn in The Sleeping Druid
    .accept 2561 >>Accept Druid of the Claw
    .target Oben Rageclaw
step
    .goto 1438/1,1496.35,9843.19
    >>Interact with |cRXP_FRIENDLY_Rageclaw|r
    .complete 2561,1 --Rageclaw
    .target Rageclaw
step
    #label Along85
    .goto 1438/1,1526.39,9741.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oben Rageclaw|r
    .turnin 2561 >>Turn in Druid of the Claw
    .target Oben Rageclaw
step << Rogue
    .goto 1438/1,943.90,9790.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >>Accept The Apple Falls
    .target Jannok Breezesong
step
    #loop
    .goto 1438/1,1448.49,10018.31,0
    .goto 1438/1,1448.49,10018.31,40,0
    .goto 1438/1,1355.82,10013.90,40,0
    >>Kill |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Gnarlpine Ambusher slain (6)
    .mob Gnarlpine Ambusher
step
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 937 >>Accept The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
step
    .goto 1438/1,1857.35,10675.34
    >>Open the |cRXP_PICK_Oracle Glade Moonwell|r. Loot it for |cRXP_LOOT_Filled Amethyst Phial|r
    .complete 7383,1 --Filled Amethyst Phial (1)
    .isOnQuest 7383
step
    .goto 1438/1,2052.36,10855.21
    >>Click the |cRXP_PICK_Strange Fronded Plant|r
    .accept 931 >>Accept The Shimmering Frond
step
    .goto 1438/1,2208.67,10758.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mist|r
    .accept 938 >>Accept Mist
    .target Mist
step
    .goto 1438/1,1862.95,10664.14
    >>Lead Mist safely to Sentinel Arynia Cloudsbreak
    .complete 938,1 --Lead Mist safely to Sentinel Arynia Cloudsbreak
step << Hunter
    .xp 10-2670 >> Grind until you are 2670 xp off level 10 (3830/6500)
    >>|cRXP_WARN_Once you reach this xp breakpoint, skip the harpy/escort quest and go straight to Darnassus. You will have another opportunity to finish those quests later|r
step
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 938 >>Turn in Mist
    .target Sentinel Arynia Cloudsbreak
step
    #completewith next
    .zone 1457 >>Travel to Darnassus
    .zoneskip 1457
step << Warrior
    .goto 1457/1,2331.94,9994.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Turn in Elanaria
    .accept 1683 >>Accept Vorlus Vilehoof
    .target Elanaria
step << !Rogue !Hunter !Warrior
    .goto 1457/1,2224.76,10127.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Saelienne|r
    .vendor >>|cRXP_BUY_Buy some more|r |T132815:0|t|cRXP_LOOT_Ice Cold Milk|r << Priest
    .target Innkeeper Saelienne
step
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >>Turn in Rellian Greenspyre
    .accept 923 >>Accept Tumors
    .target Rellian Greenspyre
step << Rogue
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >>Turn in The Apple Falls while you are here
    .isQuestComplete 2241
    .target Syurna
step
    .goto 1457/1,2632.08,9915.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .accept 2519 >>Accept The Temple of the Moon
    .target Sister Aquinne
step
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2519 >>Turn in The Temple of the Moon
    .target Priestess A'moora
step << NightElf Hunter
    .goto 1457/1,2511.01,10177.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >>Turn in Training the Beast
    .target Jocaste
step << NightElf Druid
    .xp 10 >>Grind to level 10 (Heeding the Call needs it)
step << NightElf Druid
    .goto 1457/1,2570.38,10186.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denatharion|r
    .accept 5923 >>Accept Heeding the Call
    .target Denatharion
step << NightElf Druid
    .goto 1457/1,2564.03,10179.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5924 >>Turn in Heeding the Call
    .target Mathrengyl Bearwalker
    .isOnQuest 5924
step << NightElf Druid
    .goto 1457/1,2564.03,10179.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6125 >>Turn in Power over Poison
    .target Mathrengyl Bearwalker
    .isOnQuest 6125
step << NightElf Druid
    .goto 1457/1,2564.03,10179.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5923 >>Turn in Heeding the Call
    .accept 5921 >>Accept Moonglade
    .target Mathrengyl Bearwalker
step << Druid
    .goto 1457/1,2563.92,10179.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r on the middle level
    .trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2518 >>Accept Tears of the Moon
    .target Priestess A'moora
step << Hunter
    .goto 1438/1,968.85,9821.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >> |cRXP_BUY_Buy 4 stacks of|r |T132382:0|t[Sharp Arrows]|cRXP_BUY_. Equip them as soon as you reach level 10|r
    .target Jeena Featherbow
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >>Turn in Crown of the Earth while you are here
    .isQuestComplete 7383
    .target Corithras Moonrage
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5633 >>Turn in Returning Home
    .target Priestess Alathea
    .isOnQuest 5633
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5632 >>Turn in Returning Home
    .target Priestess Alathea
    .isOnQuest 5632
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5631 >>Turn in Returning Home
    .target Priestess Alathea
    .isOnQuest 5631
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5630 >>Turn in Returning Home
    .target Priestess Alathea
    .isOnQuest 5630
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5628 >>Turn in Returning Home
    .target Priestess Alathea
    .isOnQuest 5628
step
    #completewith next
    .zone 1438 >>Leave Darnassus for Teldrassil
    .zoneskip 1438
step
    .goto 1438/1,1553.88,9772.60
    >>Open the |cRXP_PICK_Chest of the Black Feather|r. Loot it for |cRXP_LOOT_Black Feather Quill|r
    >>Open the |cRXP_PICK_Chest of Nesting|r. Loot it for |cRXP_LOOT_Rune of Nesting|r
    .complete 483,2 --Black Feather Quill (1)
    .complete 483,4 --Rune of Nesting (1)
step
    #loop
    .goto 1438/1,1258.57,10003.72,0
    .goto 1438/1,1258.57,10003.72,40,0
    .goto 1438/1,1244.82,9988.10,40,0
    .goto 1438/1,1240.24,9926.68,40,0
    .goto 1438/1,1224.45,9915.14,40,0
    .goto 1438/1,1169.46,9918.53,40,0
    .goto 1438/1,1096.14,9879.84,40,0
    .goto 1438/1,1039.63,9846.25,40,0
    .goto 1438/1,988.71,9847.94,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moon Priestess Amara|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 487 >>Turn in The Road to Darnassus
    .unitscan Moon Priestess Amara
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >>Turn in Crown of the Earth
    .target Corithras Moonrage
    .isOnQuest 7383
step
    .goto 1438/1,956.12,9736.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 935 >>Accept Crown of the Earth
    .target Corithras Moonrage
    .isQuestTurnedIn 7383 --any of: Crown of the Earth
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Teldrassil
#subweight -1
#name 8-11 Teldrassil: around Denalan
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Terenthis;Zone Routes (Alliance)\5-10 Elwynn Forest: around Marshal Dughan;Zone Routes (Alliance)\10-13 Westfall: around Farmer Saldean

step
    .goto 1438/1,713.76,9506.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >>Turn in The Shimmering Frond
    .target Denalan
    .isOnQuest 931
step
    .goto 1438/1,713.76,9506.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 930 >>Turn in The Glowing Fruit
    .target Denalan
    .isOnQuest 930
step
    .goto 1438/1,719.87,9503.48
    >>Click the |cRXP_PICK_Sprouted Frond|r
    .accept 2399 >>Accept The Sprouted Fronds
    .isQuestTurnedIn 931 --any of: The Shimmering Frond
step
    .goto 1438/1,719.87,9503.48
    >>Click the |cRXP_PICK_Sprouted Frond|r
    .turnin 2399 >>Turn in The Sprouted Fronds
    .isOnQuest 2399
step
    .goto 1438/1,1490.24,9881.88
    >>Open the |cRXP_PICK_Chest of the Raven Claw|r. Loot it for |cRXP_LOOT_Raven Claw Talisman|r
    .complete 483,1 --Raven Claw Talisman (1)
    .isOnQuest 483
step << Warrior
    .goto 1438/1,1408.77,9672.83
    >>Kill |cRXP_ENEMY_Vorlus Vilehoof|r and loot |cRXP_LOOT_Horn of Vorlus|r
    .complete 1683,1 --Horn of Vorlus (1)
    .mob Vorlus Vilehoof
    .isOnQuest 1683
step << Hunter
    .goto 1438/1,1716.82,10324.43,0
    .goto 1438/1,1564.07,10480.54,0
    .goto 1438/1,1492.78,10765.61,0
    .goto 1438/1,1900.12,10853.85,0
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Strigid Hunter|r to tame it|r
    .train 2981 >> |cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 2)]
step << Rogue
    #completewith next
    .zone 1457 >>Travel to Darnassus
    .zoneskip 1457
step << Rogue
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >>Turn in The Apple Falls
    .target Syurna
    .isOnQuest 2241
step << Rogue
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .accept 2242 >>Accept Destiny Calls
    .target Syurna
    .isQuestTurnedIn 2241 --any of: The Apple Falls
step << Rogue
    #completewith next
    .zone 1438 >>Leave Darnassus for Teldrassil
    .zoneskip 1438
step
    .goto 1438/1,713.76,9506.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .accept 941 >>Accept Planting the Heart
    .target Denalan
    .isQuestTurnedIn 927 --any of: The Moss-twined Heart
    .xp <9,1
step
    .goto 1438/1,720.38,9502.12
    >>Click the |cRXP_PICK_Denalan's Planter|r
    .turnin 941 >>Turn in Planting the Heart
    .isOnQuest 941
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Train your class spells
    .train 5171 >> Train |T132306:0|t[Slice and Dice]
    .train 921 >> Train |T133644:0|t[Pick Pocket] as well which is needed for your level 10 Rogue quest
    .target Jannok Breezesong
step
    #loop
    .goto 1438/1,1651.13,10712.67,0
    .goto 1438/1,1651.13,10712.67,40,0
    .goto 1438/1,1581.38,10849.10,40,0
    .goto 1438/1,1579.85,10950.91,40,0
    >>Kill |cRXP_ENEMY_Timberling Tramplers|r, |cRXP_ENEMY_Timberling Mire Beasts|r and |cRXP_ENEMY_Elder Timberlings|r. Loot them for |cRXP_LOOT_Mossy Tumor|r
    .complete 923,1 --Mossy Tumor (5)
    .mob Timberling Trampler
    .mob Timberling Mire Beast
    .mob Elder Timberling
    .isOnQuest 923
step
    #loop
    .goto 1438/1,1706.63,10976.03,0
    .goto 1438/1,1706.63,10976.03,40,0
    .goto 1438/1,1798.28,10962.45,40,0
    >>Kill |cRXP_ENEMY_Lady Sathrah|r and loot |cRXP_LOOT_Silvery Spinnerets|r
    .complete 2518,1 --Silvery Spinnerets (1)
    .mob Lady Sathrah
    .isOnQuest 2518
step << Rogue
    .goto 1438/1,1925.07,11056.46
    >>Kill |cRXP_ENEMY_Sethir the Ancient|r and loot |cRXP_LOOT_Sethir's Journal|r
    .complete 2242,1 --Sethir's Journal (1)
    .mob Sethir the Ancient
    .isOnQuest 2242
step
    #loop
    .goto 1438/1,2115.49,10835.86,0
    .goto 1438/1,2115.49,10835.86,40,0
    .goto 1438/1,2174.56,10732.69,40,0
    >>Kill |cRXP_ENEMY_Bloodfeather Harpies|r, |cRXP_ENEMY_Bloodfeather Rogues|r, |cRXP_ENEMY_Bloodfeather Sorceress|r and |cRXP_ENEMY_Bloodfeather Furies|r. Loot them for |cRXP_LOOT_Bloodfeather Belt|r
    .complete 937,1 --Bloodfeather Belt (6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .isOnQuest 937
step
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .turnin 937 >>Turn in The Enchanted Glade
    .target Sentinel Arynia Cloudsbreak
    .isOnQuest 937
step
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Arynia Cloudsbreak|r
    .accept 940 >>Accept Teldrassil
    .target Sentinel Arynia Cloudsbreak
    .isQuestTurnedIn 937 --any of: The Enchanted Glade
step << Druid
    .xp 10-750
step << !Hunter !Druid
    .xp 10-3110
step << Druid
    .xp 10-850
    .goto 1438/1,1864.47,10663.80
    >>If you're still behind on xp do the harpy quest north
step << !Druid
    .xp 10-4415
step
    #completewith next
    .zone 1457 >>Travel to Darnassus
    .zoneskip 1457
step
    .goto 1457/1,2569.96,10172.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
    .turnin 940 >>Turn in Teldrassil
    .target Arch Druid Fandral Staghelm
    .isOnQuest 940
step
    .goto 1457/1,2569.96,10172.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
    .turnin 935 >>Turn in Crown of the Earth
    .target Arch Druid Fandral Staghelm
    .isOnQuest 935
step
    .goto 1457/1,2569.96,10172.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Fandral Staghelm|r
    .accept 952 >>Accept Grove of the Ancients
    .target Arch Druid Fandral Staghelm
    .isQuestTurnedIn 940 --any of: Teldrassil
step << NightElf
    .goto 1457/1,2190.33,9918.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >>Accept Nessa Shadowsong
    .target Mydrannul
step << Warrior
    .goto 1457/1,2331.94,9994.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >>Turn in Vorlus Vilehoof
    .target Elanaria
    .isOnQuest 1683
step << NightElf Druid
    .goto 1457/1,2564.03,10179.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5931 >>Turn in Back to Darnassus
    .target Mathrengyl Bearwalker
    .isOnQuest 5931
step << NightElf Druid
    .goto 1457/1,2564.03,10179.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 6001 >>Accept Body and Heart
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 5931 --any of: Back to Darnassus
    .xp <10,1
step << Hunter
    >>|cRXP_WARN_Go up the ramp to the right of|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silvaria|r
    .goto 1457/1,2491.75,10176.21
    .trainer >>Train pet spells
    .target Silvaria
step << NightElf Druid
    .goto 1457/1,2564.03,10179.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >>Turn in Body and Heart
    .target Mathrengyl Bearwalker
    .isQuestComplete 6001
step
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >>Turn in Tumors
    .target Rellian Greenspyre
    .isOnQuest 923
step
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rellian Greenspyre|r
    .accept 2498 >>Accept Return to Denalan
    .target Rellian Greenspyre
    .isQuestTurnedIn 923 --any of: Tumors
step << Rogue
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >>Turn in Destiny Calls
    .target Syurna
    .isOnQuest 2242
step
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2518 >>Turn in Tears of the Moon
    .target Priestess A'moora
    .isOnQuest 2518
step
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .accept 2520 >>Accept Sathrah's Sacrifice
    .target Priestess A'moora
    .isQuestTurnedIn 2518 --any of: Tears of the Moon
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 5627 >>Accept Stars of Elune
    .target Priestess Alathea
    .xp <10,1
step
    .goto 1457/1,2523.71,9634.28
    >>Click the |cRXP_PICK_Temple of the Moon Fountain|r
    .complete 2520,1 --Temple of the Moon Fountain
    .isOnQuest 2520
step
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess A'moora|r
    .turnin 2520 >>Turn in Sathrah's Sacrifice
    .target Priestess A'moora
    .isOnQuest 2520
step << Druid
    .goto 1457/1,2430.89,9758.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
    .train 2366 >> Train |T136065:0|t[Herbalism]
    >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
    .target Firodren Mooncaller
step << Hunter/Warrior/Priest/Sod Rogue
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .train 227 >>Train Staves << Hunter/Warrior/Priest
    .train 265 >>Train Bows << Sod Rogue
    >>If you have a Staff in your bags, equip it << Hunter
    >>If you have a Bow in your bags, equip it << Rogue
    .target Ilyenia Moonfire
step << Hunter
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariyell Skyshadow|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
    .target Ariyell Skyshadow
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 5627 >>Accept Stars of Elune
    .target Priestess Alathea
    .xp <10,1
step << Warrior
    .goto 1457/1,2331.94,9994.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .accept 1686 >>Accept The Shade of Elura
    .target Elanaria
    .isQuestTurnedIn 1639,1678,1683 --any of: Bartleby the Drunk, Vejrek, Vorlus Vilehoof
step << Warrior
    .goto 1457/1,2331.94,9994.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1686 >>Turn in The Shade of Elura
    .target Elanaria
    .isQuestComplete 1686
step << NightElf Priest
    .xp 10 >>Grind to level 10 (Stars of Elune needs it)
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 5627 >>Accept Stars of Elune
    .target Priestess Alathea
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    >>|cRXP_WARN_The database has no objectives for Stars of Elune. Skip this step if the quest is not finished|r
    .turnin 5627 >>Turn in Stars of Elune
    .target Priestess Alathea
    .isOnQuest 5627
step << Warrior
    .goto 1457/1,2331.94,9994.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .accept 1692 >>Accept Smith Mathiel
    .target Elanaria
    .isQuestTurnedIn 1686 --any of: The Shade of Elura
    .xp <10,1
step << Warrior
    .goto 1457/1,2308.55,9918.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathiel|r
    .turnin 1692 >>Turn in Smith Mathiel
    .target Mathiel
    .isOnQuest 1692
step << Warrior
    .goto 1457/1,2308.55,9918.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathiel|r
    .accept 1693 >>Accept Weapons of Elunite
    .target Mathiel
    .isQuestTurnedIn 1692 --any of: Smith Mathiel
    .xp <10,1
step << Warrior
    .goto 1457/1,2308.55,9918.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathiel|r
    .turnin 1693 >>Turn in Weapons of Elunite
    .target Mathiel
    .isOnQuest 1693
step
    #completewith next
    .zone 1438 >>Leave Darnassus for Teldrassil
    .zoneskip 1438
step
    #completewith next
    .hs >>Hearth to Innkeeper Keldamyr's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1438/1,965.29,9887.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 483 >>Turn in The Relics of Wakening
    .target Athridas Bearmantle
    .isOnQuest 483
step
    .goto 1438/1,965.29,9887.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 486 >>Accept Ursal the Mauler
    .target Athridas Bearmantle
    .isQuestTurnedIn 483 --any of: The Relics of Wakening
step << Human Priest/Dwarf Priest
    .goto 1438/1,985.65,9905.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .accept 5636 >>Accept Desperate Prayer
    .target Laurna Morninglight
    .xp <10,1
step
    .goto 1438/1,713.76,9506.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 2498 >>Turn in Return to Denalan
    .target Denalan
    .isOnQuest 2498
step
    .goto 1438/1,713.76,9506.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .accept 2499 >>Accept Oakenscowl
    .target Denalan
    .isQuestTurnedIn 2498 --any of: Return to Denalan
step
    .goto 1438/1,1077.30,9281.87
    >>Kill |cRXP_ENEMY_Oakenscowl|r and loot |cRXP_LOOT_Gargantuan Tumor|r
    .complete 2499,1 --Gargantuan Tumor (1)
    .mob Oakenscowl
    .isOnQuest 2499
step
    .goto 1438/1,713.76,9506.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denalan|r
    .turnin 2499 >>Turn in Oakenscowl
    .target Denalan
    .isOnQuest 2499
step
    .goto 1438/1,1837.49,9122.70
    >>Kill |cRXP_ENEMY_Ursal the Mauler|r
    .complete 486,1 --Ursal the Mauler slain (1)
    .mob Ursal the Mauler
    .isOnQuest 486
step << Human Priest/Dwarf Priest
    .xp 10 >>Grind to level 10 (Desperate Prayer needs it)
step << Human Priest/Dwarf Priest
    .goto 1438/1,985.65,9905.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .accept 5636 >>Accept Desperate Prayer
    .target Laurna Morninglight
step
    .goto 1438/1,965.29,9887.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 486 >>Turn in Ursal the Mauler
    .target Athridas Bearmantle
    .isOnQuest 486
step
    .goto 1438/1,985.14,9898.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 2459 >>Turn in Ferocitas the Dream Eater
    .target Tallonkai Swiftroot
    .isQuestComplete 2459
step
    .xp 10
    >>|cRXP_WARN_If you're not even close do the Lord Melenas quest|r
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laurna Morninglight|r
    .trainer >> Train your class spells
    .target Laurna Morninglight
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannok Breezesong|r
    .trainer >> Train your class spells
    .train 5171 >> Train |T132306:0|t[Slice and Dice] << !sod
    .train 921 >> Train |T133644:0|t[Pick Pocket] as well which is needed for your level 10 Rogue quest
    .target Jannok Breezesong
step << NightElf
    .goto 1438/1,950.01,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >>Turn in Nessa Shadowsong
    .accept 6341 >>Accept The Bounty of Teldrassil
    .target Nessa Shadowsong
step << NightElf
    .goto 1438/1,950.01,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >>Turn in Return to Nessa
    .target Nessa Shadowsong
    .isOnQuest 6343
step << NightElf
    .goto 1438/1,841.05,8640.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >>Turn in The Bounty of Teldrassil
    .accept 6342 >>Accept Flight to Auberdine
    .target Vesprystus
step
    +|cRXP_WARN_That is all of Teldrassil for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darkshore|r: Flight to Auberdine << NightElf
    >>|cRXP_FRIENDLY_Darkshore|r: Grove of the Ancients
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade << NightElf Druid
    >>|cRXP_FRIENDLY_Stormwind City|r: Desperate Prayer << Human Priest/Dwarf Priest
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Ferocitas the Dream Eater
    >>|cRXP_FRIENDLY_Darkshore and back here|r: The Shade of Elura << Warrior
step
    +|cRXP_WARN_Suggested next zones at level 10|r: |cRXP_FRIENDLY_Darkshore|r (about 2.2 levels of quests, starting around Terenthis; 1 quest from here hands in there), |cRXP_FRIENDLY_Elwynn Forest|r (about 1.5 levels of quests, starting around Marshal Dughan), |cRXP_FRIENDLY_Westfall|r (about 1.2 levels of quests, starting around Farmer Saldean). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Teldrassil is planned from level 15.|r Load its guide for level 15 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Teldrassil
#subweight -1
#name 15-16 Teldrassil
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Terenthis;Zone Routes (Alliance)\14-15 The Barrens: around Gazlowe

step << NightElf Druid
    #completewith next
    .zone 1457 >>Travel to Darnassus
    .zoneskip 1457
step << NightElf Druid
    .goto 1457/1,2564.03,10179.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 6121 >>Accept Lessons Anew
    .target Mathrengyl Bearwalker
step << Druid
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .trainer >> Train your class spells
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << NightElf Druid
    #completewith next
    .zone 1438 >>Leave Darnassus for Teldrassil
    .zoneskip 1438
step
    .goto 1438/1,282.49,10018.65
    >>Kill |cRXP_ENEMY_Ferocitas the Dream Eater|r and loot |cRXP_LOOT_Gnarlpine Necklace|r
    .collect 8049,1,2459,1 --Gnarlpine Necklace (1)
    .mob Ferocitas the Dream Eater
    .isOnQuest 2459
step
    #completewith next
    .zone 1457 >>Travel to Darnassus
    .zoneskip 1457
step << Warrior
    .goto 1457/1,2331.94,9994.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elanaria|r
    .turnin 1686 >>Turn in The Shade of Elura
    .target Elanaria
    .isQuestComplete 1686
step << NightElf Priest
    .goto 1457/1,2520.11,9665.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5627 >>Turn in Stars of Elune
    .target Priestess Alathea
    .isOnQuest 5627
step << NightElf Warrior
    .goto 1457/1,2316.91,9991.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .trainer >> Train your class spells
    .target Arias'ta Bladesinger
step << NightElf Warrior
    .goto 1457/1,2329.19,9908.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .train 2567 >> Train Thrown
    .target Ilyenia Moonfire
step << NightElf Rogue
    >>Enter the Cenarion Enclave
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .goto 1457/1,2601.39,10120.53,15,0
    .goto 1457/1,2546.78,10083.62
    .trainer >> Train your class spells
    .target Syurna
step
    .goto 1457/1,2607.74,9641.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 730 >>Accept Trouble In Darkshore?
    .target Chief Archaeologist Greywhisker
step << NightElf Priest
    .goto 1457/1,2537.25,9654.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
    .trainer >> Train your class spells
    .target Jandria
step
    #completewith next
    .zone 1438 >>Leave Darnassus for Teldrassil
    .zoneskip 1438
step
    #loop
    .goto 1438/1,308.97,10054.62,0
    .goto 1438/1,308.97,10054.62,40,0
    .goto 1438/1,269.77,9953.83,40,0
    >>Kill |cRXP_ENEMY_Gnarlpine Mystics|r
    .complete 2459,1 --Gnarlpine Mystic slain (7)
    .mob Gnarlpine Mystic
    .isOnQuest 2459
step
    .goto 1438/1,985.14,9898.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallonkai Swiftroot|r
    .turnin 2459 >>Turn in Ferocitas the Dream Eater
    .target Tallonkai Swiftroot
    .isQuestComplete 2459
step
    +|cRXP_WARN_End of the Teldrassil route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darkshore|r: Trouble In Darkshore?
    >>|cRXP_FRIENDLY_Moonglade|r: Lessons Anew << NightElf Druid
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_Darkshore|r (about 2.1 levels of quests, starting around Terenthis; 2 quests from here hand in there), |cRXP_FRIENDLY_The Barrens|r (about 0.6 levels of quests, starting around Gazlowe). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
