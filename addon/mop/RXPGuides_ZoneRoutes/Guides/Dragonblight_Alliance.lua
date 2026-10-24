-- 72-75 Dragonblight: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 72, 76).
-- Split into 2 guides, listed under "72 - 77 Dragonblight" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Dragonblight.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 72 - 77 Dragonblight
#subweight -72
#name 72-74 Dragonblight: around Aurastrasza
--RouteBuilder:next
#next Zone Routes (Alliance)\71-74 Borean Tundra: around Elder Atkanok;Zone Routes (Alliance)\70-73 Howling Fjord: around Lurielle;Zone Routes (Alliance)\73-75 Grizzly Hills: around Drakuru

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.06,49.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodney Wells|r
    .accept 12440 >>Accept To Stars' Rest!
    .target Rodney Wells
    .isQuestTurnedIn 12439 --any of: A Disturbance In The West
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12298 >>Turn in High Commander Halford Wyrmbane
    .target High Commander Halford Wyrmbane
    .isOnQuest 12298
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12440 >>Turn in To Stars' Rest!
    .target Image of Archmage Modera
    .isOnQuest 12440
step
    .goto 115,29.18,55.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Palena|r
    .fp Stars' Rest >> Get the Stars' Rest Flight Path
    .target Palena Silvercloud
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12000 >>Accept Rifle the Bodies
    .target Image of Archmage Modera
    .isQuestTurnedIn 12440 --any of: To Stars' Rest!
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.18,55.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Jodi Moonsong|r
    .accept 12166 >>Accept The Liquid Fire of Elune
    .target Warden Jodi Moonsong
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12172 >>Accept Attunement to Dalaran
    .target Image of Archmage Modera
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,28.83,56.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Lanson|r
    .turnin 12157 >>Turn in The Lost Courier
    .target Courier Lanson
    .isOnQuest 12157
step
    .goto 115,59.95,53.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cielstrasza|r
    .target Cielstrasza
    .home >>Set your Hearthstone to Cielstrasza's inn
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
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .accept 12458 >>Accept Seeds of the Lashers
    .target Lord Itharius
    .xp <72,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,31.55,46.31,0
    .goto 115,31.55,46.31,40,0
    .goto 115,28.17,49.43,40,0
    >>Interact with |cRXP_FRIENDLY_Blighted Elks|r
    .complete 12166,1 --Blighted Elk (6)
    .target Blighted Elk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,28.55,49.76,0
    .goto 115,28.55,49.76,40,0
    .goto 115,30.71,46.71,40,0
    >>Interact with |cRXP_FRIENDLY_Rabid Grizzlies|r
    .complete 12166,2 --Rabid Grizzly (6)
    .target Rabid Grizzly
step
    .goto 115,24.19,60.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethenial Moonshadow|r
    .accept 12006 >>Accept Avenge this Atrocity!
    .target Ethenial Moonshadow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,23.76,60.07,0
    .goto 115,23.76,60.07,40,0
    .goto 115,22.02,54.61,40,0
    >>Kill |cRXP_ENEMY_Dead Mage Hunter|r and loot |cRXP_LOOT_Moonrest Gardens Plans|r
    .complete 12000,1 --Moonrest Gardens Plans (1)
    .mob Dead Mage Hunter
    .isOnQuest 12000
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12000 >>Turn in Rifle the Bodies
    .target Image of Archmage Modera
    .isOnQuest 12000
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12004 >>Accept Prevent the Accord
    .target Image of Archmage Modera
    .isQuestTurnedIn 12000 --any of: Rifle the Bodies
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.18,55.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Jodi Moonsong|r
    .turnin 12166 >>Turn in The Liquid Fire of Elune
    .accept 12167 >>Accept Kill the Cultists
    .target Warden Jodi Moonsong
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop12168x1
    >>|cRXP_LOOT_The Favor of Zangus|r can drop from |cRXP_ENEMY_Anub'ar Cultist|r. Use it to start the quest if you get one
    .collect 36958,1,12168 --The Favor of Zangus (1)
    .accept 12168 >>Accept The Favor of Zangus
    .use 36958
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop12168x1
    #loop
    .goto 115,24.72,46.27,0
    .goto 115,24.72,46.27,40,0
    .goto 115,23.21,39.27,40,0
    .goto 115,26.70,38.09,40,0
    >>Kill |cRXP_ENEMY_Anub'ar Cultists|r. Loot them for |cRXP_LOOT_Functional Cultist Suit|r
    .complete 12167,1 --Functional Cultist Suit (5)
    .mob Anub'ar Cultist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.18,55.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Jodi Moonsong|r
    .turnin 12167 >>Turn in Kill the Cultists
    .target Warden Jodi Moonsong
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.18,55.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Jodi Moonsong|r
    .turnin 12168 >>Turn in The Favor of Zangus
    .target Warden Jodi Moonsong
    .isOnQuest 12168
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 115,20.09,59.59
    >>The Image of Archmage Modera at Stars' Rest has asked you to become Attuned to the Ley Lines of Northrend.
    .complete 12172,1 --Attunement to Dalaran Kill Credit Bunny
    .target Attunement to Dalaran Kill Credit Bunny
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.18,55.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Jodi Moonsong|r
    .accept 12169 >>Accept The High Cultist
    .target Warden Jodi Moonsong
    .isQuestTurnedIn 12168 --any of: The Favor of Zangus
    .xp <71,1
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12172 >>Turn in Attunement to Dalaran while you are here
    .isQuestComplete 12172
    .target Image of Archmage Modera
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,28.88,49.73
    >>Kill |cRXP_ENEMY_High Cultist Zangus|r
    .complete 12169,1 --High Cultist Zangus slain (1)
    .mob High Cultist Zangus
    .isOnQuest 12169
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.18,55.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Jodi Moonsong|r
    .turnin 12169 >>Turn in The High Cultist
    .target Warden Jodi Moonsong
    .isOnQuest 12169
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,18.43,58.89
    >>Kill |cRXP_ENEMY_Wind Trader Mu'fah|r and loot |cRXP_LOOT_Wind Trader Mu'fah's Remains|r
    .complete 12004,1 --Wind Trader Mu'fah's Remains (1)
    .mob Wind Trader Mu'fah
    .isOnQuest 12004
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,19.52,58.12
    >>Kill |cRXP_ENEMY_Goramosh|r and loot |cRXP_LOOT_The Scales of Goramosh|r
    .complete 12004,2 --The Scales of Goramosh (1)
    .mob Goramosh
    .isOnQuest 12004
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,19.52,58.12
    >>Kill |cRXP_ENEMY_Goramosh|r and loot |cRXP_LOOT_Goramosh's Strange Device|r. Use it to start the quest
    .collect 36742,1,12055 --Goramosh's Strange Device (1)
    .accept 12055 >>Accept A Strange Device
    .use 36742
    .mob Goramosh
    .isQuestTurnedIn 12000 --any of: Rifle the Bodies
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12004 >>Turn in Prevent the Accord
    .target Image of Archmage Modera
    .isOnQuest 12004
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12055 >>Turn in A Strange Device
    .target Image of Archmage Modera
    .isOnQuest 12055
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12060 >>Accept Projections and Plans
    .target Image of Archmage Modera
    .isQuestTurnedIn 12055 --any of: A Strange Device
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,19.78,59.79
    >>Kill |cRXP_ENEMY_Projections and Plans Kill Credit Bunny|r
    .complete 12060,1 --Projections and Plans Kill Credit Bunny slain (1)
    .mob Projections and Plans Kill Credit Bunny
    .isOnQuest 12060
step
    #loop
    .goto 115,21.24,60.15,0
    .goto 115,21.24,60.15,40,0
    .goto 115,19.77,61.09,40,0
    >>Kill |cRXP_ENEMY_Surge Needle Sorcerers|r, |cRXP_ENEMY_Moonrest Stalkers|r, |cRXP_ENEMY_Focus Wizards|r and |cRXP_ENEMY_Dragonblight Mage Hunters|r
    .complete 12006,1 --Surge Needle Sorcerer (8)
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
    .goto 115,24.19,60.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethenial Moonshadow|r
    .turnin 12013 >>Turn in End Arcanimus
    .target Ethenial Moonshadow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12060 >>Turn in Projections and Plans
    .target Image of Archmage Modera
    .isOnQuest 12060
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12065 >>Accept The Focus on the Beach
    .target Image of Archmage Modera
    .isQuestTurnedIn 12060 --any of: Projections and Plans
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,26.32,64.86
    >>Kill |cRXP_ENEMY_Captain Emmy Malin|r and loot |cRXP_LOOT_Ley Line Focus Control Ring|r
    .collect 36751,1,12065,1 --Ley Line Focus Control Ring (1)
    .mob Captain Emmy Malin
    .isOnQuest 12065
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,26.32,64.86
    >>Kill |cRXP_ENEMY_Captain Emmy Malin|r and loot |cRXP_LOOT_Captain Malin's Letter|r. Use it to start the quest
    .collect 36756,1,12067 --Captain Malin's Letter (1)
    .accept 12067 >>Accept A Letter for Home
    .use 36756
    .mob Captain Emmy Malin
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12172 >>Turn in Attunement to Dalaran
    .target Image of Archmage Modera
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.04,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Saia Azuresteel|r
    .turnin 12067 >>Turn in A Letter for Home while you are here
    .isQuestComplete 12067
    .target Commander Saia Azuresteel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,26.49,65.29
    >>Kill |cRXP_ENEMY_The Focus on the Beach Kill Credit Bunny|r
    .complete 12065,1 --The Focus on the Beach Kill Credit Bunny slain (1)
    .mob The Focus on the Beach Kill Credit Bunny
    .isOnQuest 12065
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12065 >>Turn in The Focus on the Beach
    .target Image of Archmage Modera
    .isOnQuest 12065
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12083 >>Accept Atop the Woodlands
    .target Image of Archmage Modera
    .isQuestTurnedIn 12065 --any of: The Focus on the Beach
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.04,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Saia Azuresteel|r
    .turnin 12067 >>Turn in A Letter for Home
    .target Commander Saia Azuresteel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,28.73,57.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarendryana|r
    .accept 12092 >>Accept Strengthen the Ancients
    .target Sarendryana
    .isQuestTurnedIn 12065 --any of: The Focus on the Beach
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,30.44,61.43,0
    .goto 115,30.44,61.43,40,0
    .goto 115,32.48,60.14,40,0
    >>Kill |cRXP_ENEMY_Woodlands Walker|r and loot |cRXP_LOOT_Bark of the Walkers|r
    .collect 36786,1,12092,1 --Bark of the Walkers (1)
    .mob Woodlands Walker
    .isOnQuest 12092
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,31.73,68.32
    >>Kill |cRXP_ENEMY_Lothalor Ancients|r
    .complete 12092,1 --Lothalor Ancient slain (3)
    .mob Lothalor Ancient
    .isOnQuest 12092
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,31.42,72.04
    >>Kill |cRXP_ENEMY_Lieutenant Ta'zinni|r and loot |cRXP_LOOT_Ley Line Focus Control Amulet|r
    .collect 36779,1,12083,1 --Ley Line Focus Control Amulet (1)
    .mob Lieutenant Ta'zinni
    .isOnQuest 12083
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,32.26,71.62
    >>Kill |cRXP_ENEMY_Atop the Woodlands Kill Credit Bunny|r
    .complete 12083,1 --Atop the Woodlands Kill Credit Bunny slain (1)
    .mob Atop the Woodlands Kill Credit Bunny
    .isOnQuest 12083
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,28.73,57.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarendryana|r
    .turnin 12092 >>Turn in Strengthen the Ancients
    .target Sarendryana
    .isOnQuest 12092
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12083 >>Turn in Atop the Woodlands
    .target Image of Archmage Modera
    .isOnQuest 12083
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12098 >>Accept Search Indu'le Village
    .target Image of Archmage Modera
    .isQuestTurnedIn 12083 --any of: Atop the Woodlands
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,40.25,66.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Commander Evenstar|r
    .turnin 12098 >>Turn in Search Indu'le Village
    .target Mage-Commander Evenstar
    .isOnQuest 12098
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,40.25,66.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mage-Commander Evenstar|r
    .accept 12107 >>Accept The End of the Line
    .target Mage-Commander Evenstar
    .isQuestTurnedIn 12098 --any of: Search Indu'le Village
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,40.00,67.50
    >>Kill |cRXP_ENEMY_The End of the Line Ley Line Focus Kill Credit Bunny|r
    .complete 12107,1 --The End of the Line Ley Line Focus Kill Credit Bunny slain (1)
    .mob The End of the Line Ley Line Focus Kill Credit Bunny
    .isOnQuest 12107
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,53.70,69.29,0
    .goto 115,53.70,69.29,40,0
    .goto 115,53.61,64.17,40,0
    >>Kill |cRXP_ENEMY_The End of the Line Area Trigger Kill Credit Bunnies|r
    .complete 12107,2 --The End of the Line Area Trigger Kill Credit Bunny slain (8)
    .mob The End of the Line Area Trigger Kill Credit Bunny
    .isOnQuest 12107
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 12107 >>Turn in The End of the Line
    .target Image of Archmage Modera
    .isOnQuest 12107
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12119 >>Accept Gaining an Audience
    .target Image of Archmage Modera
    .isQuestTurnedIn 12107 --any of: The End of the Line
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,28.83,56.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Courier Lanson|r
    .accept 12171 >>Accept Of Traitors and Treason
    .target Courier Lanson
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.18,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Palena Silvercloud|r
    .turnin 12171 >>Turn in Of Traitors and Treason
    .accept 12174 >>Accept High Commander Halford Wyrmbane
    .target Palena Silvercloud
step << wotlk
    .goto 115,77.08,49.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodney|r
    .fp Wintergarde Keep >>Get the Wintergarde Keep Flight Path
    .target Rodney Wells
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12174 >>Turn in High Commander Halford Wyrmbane while you are here
    .isQuestComplete 12174
    .target High Commander Halford Wyrmbane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,48.06,74.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Skyhaven|r
    .accept 11995 >>Accept Your Presence is Required at Stars' Rest
    .target Emissary Skyhaven
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12174 >>Turn in High Commander Halford Wyrmbane
    .target High Commander Halford Wyrmbane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.10,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Commander Urik|r
    .accept 12237 >>Accept Flight of the Wintergarde Defender
    .target Gryphon Commander Urik
    .isQuestTurnedIn 12235 --any of: Naxxramas and the Fall of Wintergarde
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,79.80,49.60,0
    .goto 115,79.80,49.60,40,0
    .goto 115,82.20,50.40,40,0
    >>Kill |cRXP_ENEMY_Helpless Wintergarde Villagers|r, |cRXP_ENEMY_Helpless Wintergarde Villager (Peasants)s|r and |cRXP_ENEMY_Helpless Villager Proxies|r
    .complete 12237,1 --Helpless Wintergarde Villager (10)
    .mob Helpless Wintergarde Villager
    .mob Helpless Wintergarde Villager (Peasants)
    .mob Helpless Villager Proxy
    .isOnQuest 12237
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.10,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Commander Urik|r
    .turnin 12237 >>Turn in Flight of the Wintergarde Defender
    .target Gryphon Commander Urik
    .isOnQuest 12237
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.10,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Commander Urik|r
    .accept 12251 >>Accept Return to the High Commander
    .target Gryphon Commander Urik
    .isQuestTurnedIn 12237 --any of: Flight of the Wintergarde Defender
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12251 >>Turn in Return to the High Commander
    .target High Commander Halford Wyrmbane
    .isOnQuest 12251
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .accept 12253 >>Accept Rescue from Town Square
    .accept 12275 >>Accept The Demo-gnome
    .target High Commander Halford Wyrmbane
    .isQuestTurnedIn 12251 --any of: Return to the High Commander
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.65,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Lynore Windstryke|r
    .accept 12258 >>Accept The Fate of the Dead
    .target Commander Lynore Windstryke
    .isQuestTurnedIn 12251 --any of: Return to the High Commander
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.15,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig the Visionary|r
    .accept 12282 >>Accept Imprints on the Past
    .target Zelig the Visionary
    .isQuestTurnedIn 12251 --any of: Return to the High Commander
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.85,50.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siege Engineer Quarterflash|r
    .turnin 12275 >>Turn in The Demo-gnome
    .target Siege Engineer Quarterflash
    .isOnQuest 12275
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.85,50.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siege Engineer Quarterflash|r
    .accept 12276 >>Accept The Search for Slinkin
    .accept 12272 >>Accept The Bleeding Ore
    .target Siege Engineer Quarterflash
    .isQuestTurnedIn 12275 --any of: The Demo-gnome
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.80,50.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Leoric Von Zeldig|r
    .accept 12269 >>Accept Not In Our Mine
    .target Highlord Leoric Von Zeldig
    .isQuestTurnedIn 12275 --any of: The Demo-gnome
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.35,51.43
    >>Click the |cRXP_PICK_Wanted!|r
    .accept 12438 >>Accept Wanted: Kreug Oathbreaker
    .accept 12441 >>Accept Wanted: High Shaman Bloodpaw
    .accept 12442 >>Accept Wanted: Onslaught Commander Iustus
    .isQuestTurnedIn 12251 --any of: Return to the High Commander
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.84,50.91
    >>Pick up |cRXP_PICK_Scrying Orb|r from the ground
    .complete 12282,1 --Scrying Orb (1)
    .isOnQuest 12282
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,79.70,51.43,0
    .goto 115,79.70,51.43,40,0
    .goto 115,80.75,49.57,40,0
    >>Kill |cRXP_ENEMY_Vengeful Geists|r
    .complete 12258,1 --Vengeful Geist slain (15)
    .mob Vengeful Geist
    .isOnQuest 12258
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,80.80,49.60,0
    .goto 115,80.80,49.60,40,0
    .goto 115,79.66,51.36,40,0
    >>Kill |cRXP_ENEMY_Trapped Wintergarde Villagers|r
    .complete 12253,1 --Trapped Wintergarde Villager slain (6)
    .mob Trapped Wintergarde Villager
    .isOnQuest 12253
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,80.50,42.85,0
    .goto 115,80.50,42.85,40,0
    .goto 115,79.90,40.86,40,0
    >>Kill |cRXP_ENEMY_Risen Wintergarde Miners|r. Loot them for |cRXP_LOOT_Wintergarde Miner's Card|r
    .complete 12269,1 --Wintergarde Miner's Card (10)
    .mob Risen Wintergarde Miner
    .isOnQuest 12269
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,79.70,40.81,0
    .goto 115,79.70,40.81,40,0
    .goto 115,80.50,43.17,40,0
    >>Pick up |cRXP_PICK_Strange Ore|r from the ground
    .complete 12272,1 --Strange Ore (1)
    .isOnQuest 12272
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,81.52,42.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinkin the Demo-gnome|r
    .turnin 12276 >>Turn in The Search for Slinkin
    .target Slinkin the Demo-gnome
    .isOnQuest 12276
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,81.52,42.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slinkin the Demo-gnome|r
    .accept 12277 >>Accept Leave Nothing to Chance
    .target Slinkin the Demo-gnome
    .isQuestTurnedIn 12276 --any of: The Search for Slinkin
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,80.74,41.32
    >>Pick up |cRXP_PICK_Wintergarde Mine Bomb|r from the ground
    .collect 37465,1,12277,1 --Wintergarde Mine Bomb (1)
    .isOnQuest 12277
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,80.41,44.68
    >>Kill |cRXP_ENEMY_Upper Wintergarde Mine Shaft|r
    .complete 12277,1 --Upper Wintergarde Mine Shaft slain (1)
    .mob Upper Wintergarde Mine Shaft
    .isOnQuest 12277
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,80.15,45.25
    >>Kill |cRXP_ENEMY_Lower Wintergarde Mine Shaft|r
    .complete 12277,2 --Lower Wintergarde Mine Shaft slain (1)
    .mob Lower Wintergarde Mine Shaft
    .isOnQuest 12277
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12253 >>Turn in Rescue from Town Square
    .target High Commander Halford Wyrmbane
    .isOnQuest 12253
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .accept 12309 >>Accept Find Durkon!
    .target High Commander Halford Wyrmbane
    .isQuestTurnedIn 12253 --any of: Rescue from Town Square
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.65,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Lynore Windstryke|r
    .turnin 12258 >>Turn in The Fate of the Dead
    .target Commander Lynore Windstryke
    .isOnQuest 12258
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.15,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig the Visionary|r
    .turnin 12282 >>Turn in Imprints on the Past
    .target Zelig the Visionary
    .isOnQuest 12282
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.15,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig the Visionary|r
    .accept 12287 >>Accept Orik Trueheart and the Forgotten Shore
    .target Zelig the Visionary
    .isQuestTurnedIn 12282 --any of: Imprints on the Past
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.85,50.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siege Engineer Quarterflash|r
    .turnin 12272 >>Turn in The Bleeding Ore
    .target Siege Engineer Quarterflash
    .isOnQuest 12272
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.85,50.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siege Engineer Quarterflash|r
    .turnin 12277 >>Turn in Leave Nothing to Chance
    .target Siege Engineer Quarterflash
    .isOnQuest 12277
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.85,50.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siege Engineer Quarterflash|r
    .accept 12281 >>Accept Understanding the Scourge War Machine
    .target Siege Engineer Quarterflash
    .isQuestTurnedIn 12272 --The Bleeding Ore
    .isQuestTurnedIn 12277 --Leave Nothing to Chance
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.80,50.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Leoric Von Zeldig|r
    .turnin 12269 >>Turn in Not In Our Mine
    .target Highlord Leoric Von Zeldig
    .isOnQuest 12269
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12281 >>Turn in Understanding the Scourge War Machine
    .target High Commander Halford Wyrmbane
    .isOnQuest 12281
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.06,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cavalier Durkon|r
    .turnin 12309 >>Turn in Find Durkon!
    .target Cavalier Durkon
    .isOnQuest 12309
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.06,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cavalier Durkon|r
    .accept 12311 >>Accept The Noble's Crypt
    .target Cavalier Durkon
    .isQuestTurnedIn 12309 --any of: Find Durkon!
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.60,52.37
    >>Kill |cRXP_ENEMY_Necrolord Amarion|r
    .complete 12311,1 --Necrolord Amarion slain (1)
    .mob Necrolord Amarion
    .isOnQuest 12311
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.62,52.28
    >>Click the |cRXP_PICK_Flesh-bound Tome|r
    .accept 12312 >>Accept Secrets of the Scourge
    .isQuestTurnedIn 12309 --any of: Find Durkon!
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.06,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cavalier Durkon|r
    .turnin 12311 >>Turn in The Noble's Crypt
    .target Cavalier Durkon
    .isOnQuest 12311
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.06,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cavalier Durkon|r
    .turnin 12312 >>Turn in Secrets of the Scourge
    .target Cavalier Durkon
    .isOnQuest 12312
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.06,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cavalier Durkon|r
    .accept 12319 >>Accept Mystery of the Tome
    .target Cavalier Durkon
    .isQuestTurnedIn 12312 --any of: Secrets of the Scourge
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12319 >>Turn in Mystery of the Tome
    .target High Commander Halford Wyrmbane
    .isOnQuest 12319
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .accept 12320 >>Accept Understanding the Language of Death
    .target High Commander Halford Wyrmbane
    .isQuestTurnedIn 12319 --any of: Mystery of the Tome
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,76.81,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Eligor Dawnbringer|r
    .accept 12464 >>Accept My Old Enemy
    .target Commander Eligor Dawnbringer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,76.79,47.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inquisitor Hallard|r
    .turnin 12320 >>Turn in Understanding the Language of Death
    .target Inquisitor Hallard
    .isOnQuest 12320
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,76.79,47.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inquisitor Hallard|r
    .accept 12321 >>Accept A Righteous Sermon
    .target Inquisitor Hallard
    .isQuestTurnedIn 12320 --any of: Understanding the Language of Death
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,76.88,47.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Godfrey|r
    .complete 12321,1 --Mayor Godfrey
    .target Mayor Godfrey
    .isOnQuest 12321
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12321 >>Turn in A Righteous Sermon
    .target High Commander Halford Wyrmbane
    .isOnQuest 12321
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .accept 12325 >>Accept Into Hostile Territory
    .target High Commander Halford Wyrmbane
    .isQuestTurnedIn 12269 --Not In Our Mine
    .isQuestTurnedIn 12281 --Understanding the Scourge War Machine
    .isQuestTurnedIn 12321 --A Righteous Sermon
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,89.68,46.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke August Foehammer|r
    .turnin 12325 >>Turn in Into Hostile Territory
    .target Duke August Foehammer
    .isOnQuest 12325
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,89.68,46.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke August Foehammer|r
    .accept 12326 >>Accept Steamtank Surprise
    .target Duke August Foehammer
    .isQuestTurnedIn 12325 --any of: Into Hostile Territory
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,90.08,52.76
    >>Kill |cRXP_ENEMY_Kreug Oathbreaker|r
    .complete 12438,1 --Kreug Oathbreaker slain (1)
    .mob Kreug Oathbreaker
    .isOnQuest 12438
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,87.41,51.49,0
    .goto 115,87.41,51.49,40,0
    .goto 115,89.10,48.66,40,0
    .goto 115,83.81,49.90,40,0
    >>Interact with |cRXP_FRIENDLY_Plague Wagons|r
    .complete 12326,1 --Plague Wagon (6)
    .target Plague Wagon
    .isOnQuest 12326
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.61,49.82
    >>Use an Alliance Steam Tank to destroy 6 Plague Wagons and deliver the 7th Legion Elites to Wintergarde Mausoleum. Speak with Ambo Cash inside the Wintergarde Mausoleum in Dragonblight should you succeed.
    .complete 12326,2 --7th Legion Elite
    .target 7th Legion Elite
    .isOnQuest 12326
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.94,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo Cash|r
    .turnin 12326 >>Turn in Steamtank Surprise
    .target Ambo Cash
    .isOnQuest 12326
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.94,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo Cash|r
    .accept 12455 >>Accept Scattered To The Wind
    .target Ambo Cash
    .isQuestTurnedIn 12326 --any of: Steamtank Surprise
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.86,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yord "Calamity" Icebeard|r
    .accept 12462 >>Accept Breaking Off A Piece
    .target Yord "Calamity" Icebeard
    .isQuestTurnedIn 12326 --any of: Steamtank Surprise
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,84.98,51.44,0
    .goto 115,84.98,51.44,40,0
    .goto 115,84.53,48.79,40,0
    .goto 115,82.94,46.99,40,0
    >>Loot the |cRXP_PICK_Wintergarde Munitions Crates|r for |cRXP_LOOT_Wintergarde Munitions|r
    .complete 12455,1 --Wintergarde Munitions (8)
    .isOnQuest 12455
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.94,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo Cash|r
    .turnin 12455 >>Turn in Scattered To The Wind
    .target Ambo Cash
    .isOnQuest 12455
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.94,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo Cash|r
    .accept 12457 >>Accept The Chain Gun And You
    .target Ambo Cash
    .isQuestTurnedIn 12455 --any of: Scattered To The Wind
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.15,51.78
    >>Kill |cRXP_ENEMY_Injured 7th Legion Soldiers|r
    .complete 12457,1 --Injured 7th Legion Soldier slain (8)
    .mob Injured 7th Legion Soldier
    .isOnQuest 12457
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.94,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo Cash|r
    .turnin 12457 >>Turn in The Chain Gun And You
    .target Ambo Cash
    .isOnQuest 12457
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.94,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo Cash|r
    .accept 12463 >>Accept Plunderbeard Must Be Found!
    .target Ambo Cash
    .isQuestTurnedIn 12457 --any of: The Chain Gun And You
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,84.34,50.99
    >>Kill |cRXP_ENEMY_Necrolord X'avius|r
    .complete 12462,2 --Necrolord X'avius slain (1)
    .mob Necrolord X'avius
    .isOnQuest 12462
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,86.69,52.89
    >>Kill |cRXP_ENEMY_Necrolord Horus|r
    .complete 12462,1 --Necrolord Horus slain (1)
    .mob Necrolord Horus
    .isOnQuest 12462
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,86.05,52.83,0
    .goto 115,86.05,52.83,40,0
    .goto 115,83.25,54.26,40,0
    .goto 115,81.38,53.61,40,0
    >>Kill |cRXP_ENEMY_Tattered Abominations|r, |cRXP_ENEMY_Scourge Technicians|r, |cRXP_ENEMY_Leprous Servants|r and |cRXP_ENEMY_Naxxramas Dreadguards|r
    .complete 12462,3 --Tattered Abomination (8)
    .mob Tattered Abomination
    .mob Scourge Technician
    .mob Leprous Servant
    .mob Naxxramas Dreadguard
    .isOnQuest 12462
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.86,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yord "Calamity" Icebeard|r
    .turnin 12462 >>Turn in Breaking Off A Piece
    .target Yord "Calamity" Icebeard
    .isOnQuest 12462
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,84.17,54.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plunderbeard|r
    .turnin 12463 >>Turn in Plunderbeard Must Be Found!
    .target Plunderbeard
    .isOnQuest 12463
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,84.17,54.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plunderbeard|r
    .accept 12465 >>Accept Plunderbeard's Journal
    .target Plunderbeard
    .isQuestTurnedIn 12463 --any of: Plunderbeard Must Be Found!
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,82.68,54.14,0
    .goto 115,82.68,54.14,40,0
    .goto 115,81.04,53.07,40,0
    >>Kill |cRXP_ENEMY_Dreadbone Constructs|r and |cRXP_ENEMY_Wailing Souls|r. Loot them for |cRXP_LOOT_Page 4 of Plunderbeard's Journal|r
    .complete 12465,1 --Page 4 of Plunderbeard's Journal (4)
    .mob Dreadbone Construct
    .mob Wailing Soul
    .isOnQuest 12465
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,82.68,54.14,0
    .goto 115,82.68,54.14,40,0
    .goto 115,81.04,53.07,40,0
    >>Kill |cRXP_ENEMY_Dreadbone Constructs|r and |cRXP_ENEMY_Wailing Souls|r. Loot them for |cRXP_LOOT_Page 5 of Plunderbeard's Journal|r
    .complete 12465,2 --Page 5 of Plunderbeard's Journal (4)
    .mob Dreadbone Construct
    .mob Wailing Soul
    .isOnQuest 12465
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,82.68,54.14,0
    .goto 115,82.68,54.14,40,0
    .goto 115,81.04,53.07,40,0
    >>Kill |cRXP_ENEMY_Dreadbone Constructs|r and |cRXP_ENEMY_Wailing Souls|r. Loot them for |cRXP_LOOT_Page 6 of Plunderbeard's Journal|r
    .complete 12465,3 --Page 6 of Plunderbeard's Journal (4)
    .mob Dreadbone Construct
    .mob Wailing Soul
    .isOnQuest 12465
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,82.68,54.14,0
    .goto 115,82.68,54.14,40,0
    .goto 115,81.04,53.07,40,0
    >>Kill |cRXP_ENEMY_Dreadbone Constructs|r and |cRXP_ENEMY_Wailing Souls|r. Loot them for |cRXP_LOOT_Page 7 of Plunderbeard's Journal|r
    .complete 12465,4 --Page 7 of Plunderbeard's Journal (4)
    .mob Dreadbone Construct
    .mob Wailing Soul
    .isOnQuest 12465
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.94,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo Cash|r
    .turnin 12465 >>Turn in Plunderbeard's Journal
    .target Ambo Cash
    .isOnQuest 12465
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,85.94,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambo Cash|r
    .accept 12466 >>Accept Chasing Icestorm: The 7th Legion Front
    .target Ambo Cash
    .isQuestTurnedIn 12465 --any of: Plunderbeard's Journal
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.17,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .turnin 12287 >>Turn in Orik Trueheart and the Forgotten Shore
    .target Orik Trueheart
    .isOnQuest 12287
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.17,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .accept 12290 >>Accept The Murkweed Elixir
    .target Orik Trueheart
    .isQuestTurnedIn 12287 --any of: Orik Trueheart and the Forgotten Shore
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,90.67,72.91
    >>Kill |cRXP_ENEMY_High Shaman Bloodpaw|r
    .complete 12441,1 --High Shaman Bloodpaw slain (1)
    .mob High Shaman Bloodpaw
    .isOnQuest 12441
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,90.06,71.42,0
    .goto 115,90.06,71.42,40,0
    .goto 115,90.26,74.55,40,0
    >>Pick up |cRXP_PICK_Murkweed|r from the ground
    .complete 12290,1 --Murkweed (5)
    .isOnQuest 12290
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.17,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .turnin 12290 >>Turn in The Murkweed Elixir
    .target Orik Trueheart
    .isOnQuest 12290
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.17,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .accept 12291 >>Accept The Forgotten Tale
    .target Orik Trueheart
    .isQuestTurnedIn 12290 --any of: The Murkweed Elixir
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,87.25,66.19,0
    .goto 115,87.25,66.19,40,0
    .goto 115,83.80,69.25,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forgotten Peasant|r
    .complete 12291,1 --Forgotten Peasant (10)
    .target Forgotten Peasant
    .isOnQuest 12291
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,86.34,66.03,0
    .goto 115,86.34,66.03,40,0
    .goto 115,87.45,70.57,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forgotten Rifleman|r
    .complete 12291,2 --Forgotten Rifleman (10)
    .target Forgotten Rifleman
    .isOnQuest 12291
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,77.99,71.21,0
    .goto 115,77.99,71.21,40,0
    .goto 115,76.60,68.98,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forgotten Knight|r
    .complete 12291,3 --Forgotten Knight (10)
    .target Forgotten Knight
    .isOnQuest 12291
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,85.32,71.62,0
    .goto 115,85.32,71.62,40,0
    .goto 115,85.36,66.52,40,0
    .goto 115,88.50,74.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Forgotten Footman|r
    .complete 12291,4 --Forgotten Footman (10)
    .target Forgotten Footman
    .isOnQuest 12291
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.17,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .turnin 12291 >>Turn in The Forgotten Tale
    .target Orik Trueheart
    .isOnQuest 12291
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.17,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .accept 12301 >>Accept The Truth Shall Set Us Free
    .target Orik Trueheart
    .isQuestTurnedIn 12291 --any of: The Forgotten Tale
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,86.80,66.18
    >>Click the |cRXP_PICK_Forgotten Ruins|r
    .complete 12301,1 --Forgotten Ruins
    .isOnQuest 12301
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.17,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .turnin 12301 >>Turn in The Truth Shall Set Us Free
    .target Orik Trueheart
    .isOnQuest 12301
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.17,57.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orik Trueheart|r
    .accept 12305 >>Accept Parting Thoughts
    .target Orik Trueheart
    .isQuestTurnedIn 12301 --any of: The Truth Shall Set Us Free
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.15,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig the Visionary|r
    .turnin 12305 >>Turn in Parting Thoughts
    .target Zelig the Visionary
    .isOnQuest 12305
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.15,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig the Visionary|r
    .accept 12475 >>Accept What Secrets Men Hide
    .target Zelig the Visionary
    .isQuestTurnedIn 12305 --any of: Parting Thoughts
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .accept 12477 >>Accept The Path of Redemption
    .target High Commander Halford Wyrmbane
    .isQuestTurnedIn 12305 --any of: Parting Thoughts
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.65,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Lynore Windstryke|r
    .accept 12476 >>Accept The Return of the Crusade?
    .target Commander Lynore Windstryke
    .isQuestTurnedIn 12305 --any of: Parting Thoughts
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.58,38.13
    >>Pick up |cRXP_PICK_Onslaught Map|r from the ground
    .complete 12475,1 --Onslaught Map (1)
    .isOnQuest 12475
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,87.45,38.08
    >>Kill |cRXP_ENEMY_Onslaught Commander Iustus|r
    .complete 12442,1 --Onslaught Commander Iustus slain (1)
    .mob Onslaught Commander Iustus
    .isOnQuest 12442
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,87.05,35.65,0
    .goto 115,87.05,35.65,40,0
    .goto 115,84.36,37.29,40,0
    .goto 115,87.28,41.01,40,0
    >>Kill |cRXP_ENEMY_Onslaught Infantries|r, |cRXP_ENEMY_Onslaught Scouts|r, |cRXP_ENEMY_Onslaught Masons|r and |cRXP_ENEMY_Onslaught Commander Iustus|r
    .complete 12476,1 --Onslaught Infantry (8)
    .mob Onslaught Infantry
    .mob Onslaught Scout
    .mob Onslaught Mason
    .mob Onslaught Commander Iustus
    .isOnQuest 12476
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,84.36,37.29,0
    .goto 115,84.36,37.29,40,0
    .goto 115,87.05,35.65,40,0
    .goto 115,87.28,41.01,40,0
    >>Kill |cRXP_ENEMY_Onslaught Infantries|r, |cRXP_ENEMY_Onslaught Scouts|r and |cRXP_ENEMY_Onslaught Masons|r. Loot them for |cRXP_LOOT_The Path of Redemption|r
    .complete 12477,1 --The Path of Redemption (1)
    .mob Onslaught Infantry
    .mob Onslaught Scout
    .mob Onslaught Mason
    .isOnQuest 12477
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.15,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig the Visionary|r
    .turnin 12475 >>Turn in What Secrets Men Hide
    .target Zelig the Visionary
    .isOnQuest 12475
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.15,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig the Visionary|r
    .accept 12478 >>Accept Frostmourne Cavern
    .target Zelig the Visionary
    .isQuestTurnedIn 12475 --any of: What Secrets Men Hide
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12477 >>Turn in The Path of Redemption
    .target High Commander Halford Wyrmbane
    .isOnQuest 12477
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.65,48.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Lynore Windstryke|r
    .turnin 12476 >>Turn in The Return of the Crusade?
    .target Commander Lynore Windstryke
    .isOnQuest 12476
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.80,50.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Leoric Von Zeldig|r
    .turnin 12438 >>Turn in Wanted: Kreug Oathbreaker
    .target Highlord Leoric Von Zeldig
    .isOnQuest 12438
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.80,50.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Leoric Von Zeldig|r
    .turnin 12441 >>Turn in Wanted: High Shaman Bloodpaw
    .target Highlord Leoric Von Zeldig
    .isOnQuest 12441
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.80,50.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Leoric Von Zeldig|r
    .turnin 12442 >>Turn in Wanted: Onslaught Commander Iustus
    .target Highlord Leoric Von Zeldig
    .isOnQuest 12442
step
    .goto 115,60.32,51.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nethestrasz|r
    .fp Wyrmrest >> Get the Wyrmrest Temple Flight Path
    .target Nethestrasz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Cielstrasza's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,57.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tariolstrasz|r
    .turnin 12119 >>Turn in Gaining an Audience
    .target Tariolstrasz
    .isOnQuest 12119
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .accept 12458 >>Accept Seeds of the Lashers
    .target Lord Itharius
    .xp <72,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,57.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tariolstrasz|r
    .accept 12766 >>Accept Speak with your Ambassador
    .target Tariolstrasz
    .isQuestTurnedIn 12119 --any of: Gaining an Audience
    .xp <71,1
step
    .goto 115,60.00,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .accept 12470 >>Accept Mystery of the Infinite
    .target Chromie
    .xp <72,1
step
    .goto 115,60.07,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalice|r
    .accept 12447 >>Accept The Obsidian Dragonshrine
    .target Nalice
    .xp <72,1
step
    #completewith next
    .hs >>Hearth to Cielstrasza's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .accept 12458 >>Accept Seeds of the Lashers
    .target Lord Itharius
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
step
    .goto 115,71.71,39.21
    >>Chromie, at the top of Wyrmrest Temple, has asked you to travel to the Bronze Dragonshrine. Once inside, place the Hourglass of Eternity on the ground.
    .complete 12470,1 --Hourglass of Eternity
    .target Hourglass of Eternity
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,64.74,27.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legion Commander Tyralion|r
    .turnin 12466 >>Turn in Chasing Icestorm: The 7th Legion Front
    .target Legion Commander Tyralion
    .isOnQuest 12466
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,64.74,27.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legion Commander Tyralion|r
    .accept 12467 >>Accept Chasing Icestorm: Thel'zan's Phylactery
    .target Legion Commander Tyralion
    .isQuestTurnedIn 12466 --any of: Chasing Icestorm: The 7th Legion Front
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,64.47,26.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duane|r
    .accept 12142 >>Accept Pest Control
    .target Duane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,63.84,27.58
    >>Pick up |cRXP_PICK_Thel'zan's Phylactery|r from the ground
    .complete 12467,1 --Thel'zan's Phylactery (1)
    .isOnQuest 12467
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,65.48,42.39,0
    .goto 115,65.48,42.39,40,0
    .goto 115,64.33,47.33,40,0
    >>Kill |cRXP_ENEMY_Snowplain Zealots|r, |cRXP_ENEMY_Snowplain Shamans|r, |cRXP_ENEMY_Gormok Zealots|r and |cRXP_ENEMY_Snowplain Disciples|r
    >>Kill |cRXP_ENEMY_Magnataur Patriarches|r, |cRXP_ENEMY_Magnataur Younglings|r, |cRXP_ENEMY_Gigantaurs|r and |cRXP_ENEMY_Icefists|r
    .complete 12142,1 --Snowplain Zealot (8)
    .complete 12142,2 --Magnataur Patriarch (8)
    .mob Snowplain Zealot
    .mob Snowplain Shaman
    .mob Gormok Zealot
    .mob Snowplain Disciple
    .mob Magnataur Patriarch
    .mob Magnataur Youngling
    .mob Gigantaur
    .mob Icefist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,64.47,26.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duane|r
    .turnin 12142 >>Turn in Pest Control
    .accept 12143 >>Accept Canyon Chase
    .target Duane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,72.49,29.25
    >>Kill |cRXP_ENEMY_Chilltusk|r
    .complete 12143,1 --Chilltusk slain (1)
    .mob Chilltusk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,72.49,29.25
    >>Kill |cRXP_ENEMY_Icefist|r and loot |cRXP_LOOT_Emblazoned Battle Horn|r. Use it to start the quest
    .collect 36855,1,12146 --Emblazoned Battle Horn (1)
    .accept 12146 >>Accept Disturbing Implications
    .use 36855
    .mob Icefist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,75.08,20.21
    >>Click the |cRXP_PICK_Frostmourne Altar|r
    .complete 12478,1 --Frostmourne Altar
    .isOnQuest 12478
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12467 >>Turn in Chasing Icestorm: Thel'zan's Phylactery
    .target High Commander Halford Wyrmbane
    .isOnQuest 12467
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .accept 12472 >>Accept Finality
    .target High Commander Halford Wyrmbane
    .isQuestTurnedIn 12467 --any of: Chasing Icestorm: Thel'zan's Phylactery
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,79.15,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelig the Visionary|r
    .turnin 12478 >>Turn in Frostmourne Cavern
    .target Zelig the Visionary
    .isOnQuest 12478
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,81.17,50.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legion Commander Yorik|r
    .turnin 12472 >>Turn in Finality
    .target Legion Commander Yorik
    .isOnQuest 12472
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,81.17,50.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legion Commander Yorik|r
    .accept 12473 >>Accept An End And A Beginning
    .target Legion Commander Yorik
    .isQuestTurnedIn 12472 --any of: Finality
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,80.94,50.63
    >>Kill |cRXP_ENEMY_Thel'zan the Duskbringer|r
    .complete 12473,1 --Thel'zan the Duskbringer slain (1)
    .mob Thel'zan the Duskbringer
    .isOnQuest 12473
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .turnin 12473 >>Turn in An End And A Beginning
    .target High Commander Halford Wyrmbane
    .isOnQuest 12473
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,78.49,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Commander Halford Wyrmbane|r
    .accept 12474 >>Accept To Fordragon Hold!
    .target High Commander Halford Wyrmbane
    .isQuestTurnedIn 12473 --any of: An End And A Beginning
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,60.00,55.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauriel Trueblade|r
    .turnin 12766 >>Turn in Speak with your Ambassador
    .target Lauriel Trueblade
    .isOnQuest 12766
step
    .goto 115,60.00,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 12470 >>Turn in Mystery of the Infinite while you are here
    .isQuestComplete 12470
    .target Chromie
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,60.00,55.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lauriel Trueblade|r
    .accept 12460 >>Accept Report to the Ruby Dragonshrine
    .target Lauriel Trueblade
    .isQuestTurnedIn 12766 --any of: Speak with your Ambassador
    .xp <71,1
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12146 >>Turn in Disturbing Implications << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 12148 >>Accept One of a Kind
    .target Aurastrasza
step
    .goto 115,51.27,59.63
    >>Kill |cRXP_ENEMY_Bonesunder|r and loot |cRXP_LOOT_Emblazoned Battle Horn|r
    .complete 12148,1 --Emblazoned Battle Horn (1)
    .mob Bonesunder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,52.21,50.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
    .turnin 12460 >>Turn in Report to the Ruby Dragonshrine
    .target Ceristrasz
    .isOnQuest 12460
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,52.21,50.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
    .accept 12416 >>Accept Heated Battle
    .target Ceristrasz
    .isQuestTurnedIn 12460 --any of: Report to the Ruby Dragonshrine
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,49.80,51.40
    >>Kill |cRXP_ENEMY_Frigid Ghoul Attackers|r
    .complete 12416,1 --Frigid Ghoul Attacker slain (12)
    .mob Frigid Ghoul Attacker
    .isOnQuest 12416
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,52.60,46.30,0
    .goto 115,52.60,46.30,40,0
    .goto 115,49.50,51.20,40,0
    >>Kill |cRXP_ENEMY_Frigid Geist Attackers|r
    .complete 12416,2 --Frigid Geist Attacker slain (8)
    .mob Frigid Geist Attacker
    .isOnQuest 12416
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,49.07,49.89
    >>Kill |cRXP_ENEMY_Frigid Abomination Attacker|r
    .complete 12416,3 --Frigid Abomination Attacker slain (1)
    .mob Frigid Abomination Attacker
    .isOnQuest 12416
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,52.21,50.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
    .turnin 12416 >>Turn in Heated Battle
    .target Ceristrasz
    .isOnQuest 12416
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,52.21,50.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
    .accept 12417 >>Accept Return to the Earth
    .target Ceristrasz
    .isQuestTurnedIn 12416 --any of: Heated Battle
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,48.68,45.11,0
    .goto 115,48.68,45.11,40,0
    .goto 115,47.31,48.99,40,0
    .goto 115,46.66,50.80,40,0
    >>Pick up |cRXP_PICK_Ruby Acorn|r from the ground
    .collect 37727,1,12417,1 --Ruby Acorn (1)
    .isOnQuest 12417
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,45.88,46.65,0
    .goto 115,45.88,46.65,40,0
    .goto 115,49.24,47.10,40,0
    .goto 115,45.88,52.31,40,0
    >>Kill |cRXP_ENEMY_Ruby Keepers|r
    .complete 12417,1 --Ruby Keeper slain (8)
    .mob Ruby Keeper
    .isOnQuest 12417
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,52.21,50.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
    .turnin 12417 >>Turn in Return to the Earth
    .target Ceristrasz
    .isOnQuest 12417
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,52.21,50.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
    .accept 12418 >>Accept Through Fields of Flame
    .target Ceristrasz
    .isQuestTurnedIn 12417 --any of: Return to the Earth
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,47.64,48.97
    >>Kill |cRXP_ENEMY_Dahlia Suntouch|r
    .complete 12418,2 --Dahlia Suntouch slain (1)
    .mob Dahlia Suntouch
    .isOnQuest 12418
step
    .goto 115,47.64,48.97
    >>Kill |cRXP_ENEMY_Dahlia Suntouch|r and loot |cRXP_LOOT_Ruby Brooch|r. Use it to start the quest
    .collect 37833,1,12419 --Ruby Brooch (1)
    .accept 12419 >>Accept The Fate of the Ruby Dragonshrine
    .use 37833
    .mob Dahlia Suntouch
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 115,47.84,47.49,0
    .goto 115,47.84,47.49,40,0
    .goto 115,47.12,50.99,40,0
    >>Kill |cRXP_ENEMY_Frigid Necromancers|r
    .complete 12418,1 --Frigid Necromancer slain (6)
    .mob Frigid Necromancer
    .isOnQuest 12418
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,52.21,50.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
    .turnin 12418 >>Turn in Through Fields of Flame
    .target Ceristrasz
    .isOnQuest 12418
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,52.21,50.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ceristrasz|r
    .accept 12768 >>Accept The Steward of Wyrmrest Temple
    .target Ceristrasz
    .isQuestTurnedIn 12418 --any of: Through Fields of Flame
    .xp <71,1
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .turnin 12447 >>Turn in The Obsidian Dragonshrine
    .target Serinar
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .accept 12261 >>Accept No Place to Run
    .target Serinar
    .xp <72,1
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .accept 12262 >>Accept No One to Save You
    .target Serinar
    .xp <72,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 11995 >>Turn in Your Presence is Required at Stars' Rest
    .target Image of Archmage Modera
step
    .goto 115,35.21,30.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serinar|r
    .accept 12261 >>Accept No Place to Run
    .accept 12262 >>Accept No One to Save You
    .target Serinar
step
    #completewith Along239
    >>As you go: Kill |cRXP_ENEMY_Burning Depths Necrolytes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12262,1 --Burning Depths Necrolyte slain (6)
    .mob Burning Depths Necrolyte
step
    #label Along239
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
    >>Kill |cRXP_ENEMY_Burning Depths Necromancers|r
    >>Kill |cRXP_ENEMY_Smoldering Constructs|r
    >>Kill |cRXP_ENEMY_Smoldering Geists|r
    >>Click the |cRXP_PICK_Necromantic Rune|r
    .complete 12264,1 --Burning Depths Necromancer slain (3)
    .complete 12264,2 --Smoldering Construct slain (6)
    .complete 12264,3 --Smoldering Geist slain (6)
    .complete 12265,1 --Necromantic Rune
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
step
    .goto 115,39.51,25.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derek|r
    .fp Fordragon Hold >>Get the Fordragon Hold Flight Path
    .target Derek Rammel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,37.81,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 12474 >>Turn in To Fordragon Hold!
    .target Highlord Bolvar Fordragon
    .isOnQuest 12474
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,37.81,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .accept 12495 >>Accept Audience With The Dragon Queen
    .target Highlord Bolvar Fordragon
    .isQuestTurnedIn 12474 --any of: To Fordragon Hold!
    .xp <71,1
step
    #completewith next
    .hs >>Hearth to Cielstrasza's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12148 >>Turn in One of a Kind
    .accept 12149 >>Accept Mighty Magnataur
    .target Aurastrasza
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,57.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tariolstrasz|r
    .turnin 12768 >>Turn in The Steward of Wyrmrest Temple
    .target Tariolstrasz
    .isOnQuest 12768
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,57.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tariolstrasz|r
    .accept 12123 >>Accept Informing the Queen
    .target Tariolstrasz
    .isQuestTurnedIn 12768 --any of: The Steward of Wyrmrest Temple
    .xp <71,1
step
    .goto 115,60.07,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalice|r
    .turnin 12266 >>Turn in Tales of Destruction
    .target Nalice
step
    .goto 115,60.00,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r
    .turnin 12470 >>Turn in Mystery of the Infinite
    .target Chromie
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .turnin 12495 >>Turn in Audience With The Dragon Queen
    .target Alexstrasza the Life-Binder
    .isOnQuest 12495
step
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .accept 12497 >>Accept Galakrond and the Scourge
    .target Alexstrasza the Life-Binder
    .isQuestTurnedIn 12495,12496 --any of: Audience With The Dragon Queen, Audience With The Dragon Queen
    .xp <71,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .turnin 12123 >>Turn in Informing the Queen
    .target Alexstrasza the Life-Binder
    .isOnQuest 12123
step
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .accept 12435 >>Accept Report to Lord Devrestrasz
    .target Alexstrasza the Life-Binder
    .isQuestTurnedIn 12123,12124 --any of: Informing the Queen, Informing the Queen
    .xp <71,1
step
    .goto 115,59.79,54.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krasus|r
    .turnin 12419 >>Turn in The Fate of the Ruby Dragonshrine
    .target Krasus
step
    .goto 115,59.51,53.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torastrasza|r
    .turnin 12497 >>Turn in Galakrond and the Scourge
    .target Torastrasza
    .isOnQuest 12497
step
    .goto 115,59.51,53.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torastrasza|r
    .accept 12498 >>Accept On Ruby Wings
    .target Torastrasza
    .isQuestTurnedIn 12497 --any of: Galakrond and the Scourge
    .xp <71,1
step
    #loop
    .goto 115,62.07,72.81,0
    .goto 115,62.07,72.81,40,0
    .goto 115,65.80,73.20,40,0
    >>Kill |cRXP_ENEMY_Emerald Lashers|r. Loot them for |cRXP_LOOT_Lasher Seed|r
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
    .goto 115,65.04,73.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nishera the Garden Keeper|r
    .turnin 12454 >>Turn in Cycle of Life
    .accept 12456 >>Accept The Plume of Alystros
    .target Nishera the Garden Keeper
step
    .goto 115,64.51,78.68
    >>Kill |cRXP_ENEMY_Alystros the Verdant Keeper|r and loot |cRXP_LOOT_The Plume of Alystros|r
    .complete 12456,1 --The Plume of Alystros (1)
    .mob Alystros the Verdant Keeper
step
    .goto 115,65.04,73.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nishera the Garden Keeper|r
    .turnin 12456 >>Turn in The Plume of Alystros
    .target Nishera the Garden Keeper
step
    .goto 115,66.28,70.77
    >>Kill |cRXP_ENEMY_Bloodfeast|r
    .complete 12149,2 --Bloodfeast slain (1)
    .mob Bloodfeast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,71.10,77.88
    >>Kill |cRXP_ENEMY_High General Abbendis|r and loot |cRXP_LOOT_The Head of the High General|r
    .complete 12464,1 --The Head of the High General (1)
    .mob High General Abbendis
step
    .goto 115,66.17,51.41
    >>Kill |cRXP_ENEMY_Iceshatter|r
    .complete 12149,1 --Iceshatter slain (1)
    .mob Iceshatter
step
    .goto 115,67.62,38.47
    >>Kill |cRXP_ENEMY_Drakegore|r
    .complete 12149,3 --Drakegore slain (1)
    .mob Drakegore
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12149 >>Turn in Mighty Magnataur
    .accept 12150 >>Accept Reclusive Runemaster
    .target Aurastrasza
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 12458 >>Turn in Seeds of the Lashers while you are here
    .isQuestComplete 12458
    .target Lord Itharius
step
    .goto 115,72.76,49.68
    >>Kill |cRXP_ENEMY_Dregmar Runebrand|r
    .complete 12150,1 --Dregmar Runebrand slain (1)
    .mob Dregmar Runebrand
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,64.47,26.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duane|r
    .turnin 12143 >>Turn in Canyon Chase
    .target Duane
step
    .goto 115,51.96,29.71
    >>Kill |cRXP_ENEMY_Reanimated Frost Wyrms|r
    .complete 12459,1 --Reanimated Frost Wyrm slain (8)
    .mob Reanimated Frost Wyrm
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
    .goto 115,54.45,31.44
    >>Kill |cRXP_ENEMY_Grand Necrolord Antiok|r and loot |cRXP_LOOT_Scythe of Antiok|r. It can also be picked up from |cRXP_PICK_Scythe of Antiok|r on the ground
    .complete 12498,2 --Scythe of Antiok (1)
    .mob Grand Necrolord Antiok
    .isOnQuest 12498
step
    #loop
    .goto 115,54.56,35.04,0
    .goto 115,54.56,35.04,40,0
    .goto 115,56.62,33.45,40,0
    >>Kill |cRXP_ENEMY_Wastes Scavengers|r
    .complete 12498,1 --Wastes Scavenger slain (30)
    .mob Wastes Scavenger
    .isOnQuest 12498
step
    #loop
    .goto 115,58.87,31.25,0
    .goto 115,58.87,31.25,40,0
    .goto 115,56.63,27.57,40,0
    >>Kill |cRXP_ENEMY_Wastes Taskmaster|r
    >>Kill |cRXP_ENEMY_Wastes Diggers|r
    >>Pick up |cRXP_PICK_Composite Ore|r from the ground
    .complete 12043,1 --Wastes Taskmaster slain (1)
    .complete 12043,2 --Wastes Digger slain (12)
    .complete 12044,1 --Composite Ore (1)
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
    #completewith Along286
    >>As you go: Kill |cRXP_ENEMY_Jormungar Tunnelers|r and |cRXP_ENEMY_Dragonbone Condors|r. Loot them for |cRXP_LOOT_Thin Animal Hide|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12046,1 --Thin Animal Hide (12)
    .mob Jormungar Tunneler
    .mob Dragonbone Condor
step
    #label Along286
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
    #completewith Along290
    >>As you go: Open the |cRXP_PICK_Jormungar Meat|r. Loot it for |cRXP_LOOT_Seared Jormungar Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12049,1 --Seared Jormungar Meat (1)
step
    #label Along290
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
    #completewith Along302
    >>As you go: Kill |cRXP_ENEMY_Ice Heart Jormungar Feeders|r and |cRXP_ENEMY_Ice Heart Jormungar Spawns|r. Loot them for |cRXP_LOOT_Vial of Corrosive Spit|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12076,1 --Vial of Corrosive Spit (1)
    .mob Ice Heart Jormungar Feeder
    .mob Ice Heart Jormungar Spawn
step
    #label Along302
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
    .turnin 12080 >>Turn in Really Big Worm
    .turnin 12079 >>Turn in Stomping Grounds
    .target Ko'char the Unbreakable
step
    #completewith next
    .hs >>Hearth to Cielstrasza's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 115,60.02,55.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aurastrasza|r
    .turnin 12150 >>Turn in Reclusive Runemaster
    .accept 12151 >>Accept Wanton Warlord
    .target Aurastrasza
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
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .turnin 12498 >>Turn in On Ruby Wings
    .target Alexstrasza the Life-Binder
    .isOnQuest 12498
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,59.83,54.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alexstrasza the Life-Binder|r
    .accept 12499 >>Accept Return To Angrathar
    .target Alexstrasza the Life-Binder
    .isQuestTurnedIn 12498 --any of: On Ruby Wings
    .xp <71,1
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 12458 >>Turn in Seeds of the Lashers
    .accept 12459 >>Accept That Which Creates Can Also Destroy
    .target Lord Itharius
step
    .goto 115,59.32,54.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Devrestrasz|r
    .turnin 12435 >>Turn in Report to Lord Devrestrasz
    .target Lord Devrestrasz
    .isOnQuest 12435
step
    .goto 115,49.14,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toalu'u the Mystic|r
    .turnin 12032 >>Turn in Conversing With the Depths
    .target Toalu'u the Mystic
    .isOnQuest 12032
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,37.81,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon|r
    .turnin 12499 >>Turn in Return To Angrathar
    .target Highlord Bolvar Fordragon
    .isOnQuest 12499
step << Shaman
    .goto StormwindNew,67.52,89.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
    .train 49237 >> Train your class spells
    .xp <73,1
    .target Farseer Umbrua
step << Shaman
    .goto StormwindNew,67.52,89.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
    .train 49270 >> Train your class spells
    .xp <74,1
    .target Farseer Umbrua
step << Shaman
    .goto StormwindNew,67.52,89.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umbrua|r
    .train 49280 >> Train your class spells
    .xp <75,1
    .target Farseer Umbrua
step << Warlock
    .goto StormwindNew,42.26,81.77,20,0
    .goto StormwindNew,40.64,84.94,15,0
    .goto StormwindNew,39.88,84.19
    >>Go into The Slaughtered Lamb and go downstairs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula|r, |cRXP_FRIENDLY_Demisette|r or |cRXP_FRIENDLY_Sandahl|r
    .train 47892 >> Train your class spells
    .xp <74,1
    .target Ursula Deline
    .target Demisette Cloyce
    .target Sandahl
step << Paladin
    .goto StormwindNew,49.8,48.5,20,0
    .goto StormwindNew,49.60,49.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
    .train 48931 >> Train your class spells
    .xp <73,1
    .target Arthur the Faithful
    .target Katherine the Pure
step << Paladin
    .goto StormwindNew,49.8,48.5,20,0
    .goto StormwindNew,49.60,49.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
    .train 48805 >> Train your class spells
    .xp <74,1
    .target Arthur the Faithful
    .target Katherine the Pure
step << Paladin
    .goto StormwindNew,49.8,48.5,20,0
    .goto StormwindNew,49.60,49.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur|r or |cRXP_FRIENDLY_Katherine|r
    .train 48818 >> Train your class spells
    .xp <75,1
    .target Arthur the Faithful
    .target Katherine the Pure
step << Priest
    .goto StormwindNew,49.51,45.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    .train 48126 >> Train your class spells
    .xp <74,1
    .target Brother Joshua
step << Priest
    .goto StormwindNew,49.51,45.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    .train 48124 >> Train your class spells
    .xp <75,1
    .target Brother Joshua
step << Hunter
    .goto StormwindNew,67.3,37.1,15,0
    .goto StormwindNew,67.35,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
    .train 49044 >> Train your class spells
    .xp <73,1
    .target Einris Brightspear
step << Hunter
    .goto StormwindNew,67.3,37.1,15,0
    .goto StormwindNew,67.35,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
    .train 61846 >> Train your class spells
    .xp <74,1
    .target Einris Brightspear
step << Hunter
    .goto StormwindNew,67.3,37.1,15,0
    .goto StormwindNew,67.35,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris|r
    .train 61005 >> Train your class spells
    .xp <75,1
    .target Einris Brightspear
step << Rogue
    .goto StormwindNew,77.42,65.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .train 48667 >> Train your class spells
    .xp <73,1
    .target Osborne the Night Man
step << Warrior
    .goto StormwindNew,78.31,63.53,15,0
    .goto StormwindNew,81.66,59.50,15,0
    .goto StormwindNew,80.56,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .train 47470 >> Train your class spells
    .xp <73,1
    .target Wu Shen
    .target Ilsa Corbin
step << Warrior
    .goto StormwindNew,78.31,63.53,15,0
    .goto StormwindNew,81.66,59.50,15,0
    .goto StormwindNew,80.56,59.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .train 55694 >> Train your class spells
    .xp <75,1
    .target Wu Shen
    .target Ilsa Corbin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,76.81,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Eligor Dawnbringer|r
    .turnin 12464 >>Turn in My Old Enemy
    .target Commander Eligor Dawnbringer
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
    .goto 115,86.15,46.95
    >>Kill |cRXP_ENEMY_Turgid the Vile|r
    .complete 12459,2 --Turgid the Vile slain (1)
    .mob Turgid the Vile
step
    .goto 115,89.53,19.08
    >>Kill |cRXP_ENEMY_Overseer Deathgaze|r
    .complete 12459,3 --Overseer Deathgaze slain (1)
    .mob Overseer Deathgaze
step
    .goto 115,59.58,54.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 12459 >>Turn in That Which Creates Can Also Destroy
    .target Lord Itharius
step
    +|cRXP_WARN_Suggested next zones at level 73|r: |cRXP_FRIENDLY_Borean Tundra|r (about 0.8 levels of quests, starting around Elder Atkanok), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for Borean Tundra --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dragonblight is planned from level 76.|r Load its guide for level 76 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 72 - 77 Dragonblight
#subweight -72
#name 76-77 Dragonblight
--RouteBuilder:next
#next Zone Routes (Alliance)\76-78 Sholazar Basin;Zone Routes (Alliance)\70-73 Howling Fjord: around Lurielle;Zone Routes (Alliance)\73-75 Grizzly Hills: around Drakuru

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,29.00,55.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .accept 12794 >>Accept The Magical Kingdom of Dalaran
    .target Image of Archmage Modera
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 115,77.10,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Commander Urik|r
    .accept 12511 >>Accept The Hills Have Us
    .target Gryphon Commander Urik
step
    .goto 115,87.24,57.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tilda Darathan|r
    .accept 12542 >>Accept The Call Of The Crusade
    .target Tilda Darathan
step
    .goto 115,83.98,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Valus|r
    .turnin 12542 >>Turn in The Call Of The Crusade
    .accept 12545 >>Accept The Cleansing Of Jintha'kalar
    .target Crusader Valus
step
    #loop
    .goto 115,89.12,26.95,0
    .goto 115,89.12,26.95,40,0
    .goto 115,90.89,24.27,40,0
    >>Kill |cRXP_ENEMY_Decrepit Necromancers|r, |cRXP_ENEMY_Battered Drakkari Berserkers|r, |cRXP_ENEMY_Reanimated Drakkari Tribesmans|r and |cRXP_ENEMY_Hulking Atrocities|r
    .complete 12545,1 --Decrepit Necromancer (8)
    .mob Decrepit Necromancer
    .mob Battered Drakkari Berserker
    .mob Reanimated Drakkari Tribesman
    .mob Hulking Atrocity
step
    .goto 115,83.98,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Valus|r
    .turnin 12545 >>Turn in The Cleansing Of Jintha'kalar
    .accept 12789 >>Accept Into the Breach!
    .target Crusader Valus
step
    +|cRXP_WARN_End of the Dragonblight route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: The Magical Kingdom of Dalaran << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Grizzly Hills|r: The Hills Have Us << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Zul'Drak|r: Into the Breach!
step
    +|cRXP_WARN_Suggested next zones at level 76|r: |cRXP_FRIENDLY_Sholazar Basin|r (about 1.1 levels of quests, starting around Debaar), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for Sholazar Basin --RouteBuilder:next
]])
