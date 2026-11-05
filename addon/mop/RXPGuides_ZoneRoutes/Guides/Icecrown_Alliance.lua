-- 79-81 Icecrown: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 79, 84).
-- Split into 2 guides, listed under "79 - 85 Icecrown" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Icecrown.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 79 - 85 Icecrown
#subweight -79
#name 79-81 Icecrown: around Highlord Tirion Fordring
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Absalan the Pious|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13226 >>Accept Judgment Day Comes!
    .unitscan Absalan the Pious
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Captain Justin Bartlett|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13418 >>Turn in Preparations for War
    .unitscan High Captain Justin Bartlett
    .isOnQuest 13418
step
    .goto IcecrownGlacier,87.80,78.07
    >>|cRXP_WARN_Fly to The Argent Vanguard in Icecrown|r
    >>|cRXP_WARN_The first part of Icecrown is being done for a Trinket + Questline for later|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aedan|r
    .fp The Argent Vanguard >> Get the The Argent Vanguard flight path
    .target Aedan Moran
step
    .goto 118,87.46,75.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13226 >>Turn in Judgment Day Comes! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 13036 >>Accept Honor Above All Else
    .target Highlord Tirion Fordring
step
    .goto 118,87.10,75.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Commander Entari|r
    .turnin 13036 >>Turn in Honor Above All Else
    .accept 13008 >>Accept Scourge Tactics
    .target Crusade Commander Entari
step
    .goto 118,86.85,76.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gustav|r
    .accept 13040 >>Accept Curing The Incurable
    .target Father Gustav
step
    #completewith Along5
    >>As you go: Kill |cRXP_ENEMY_Webbed Crusaders|r and |cRXP_ENEMY_Freed Crusaders|r. Kill |cRXP_ENEMY_Forgotten Depths Ambushers|r, |cRXP_ENEMY_Forgotten Depths Acolytes|r, |cRXP_ENEMY_Carrion Fleshstrippers|r and |cRXP_ENEMY_Forgotten Depths Slayers|r. Loot them for |cRXP_LOOT_Forgotten Depths Venom Sac|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13008,1 --Webbed Crusader (8)
    .complete 13040,1 --Forgotten Depths Venom Sac (10)
    .mob Webbed Crusader
    .mob Freed Crusader
    .mob Forgotten Depths Ambusher
    .mob Forgotten Depths Acolyte
    .mob Carrion Fleshstripper
    .mob Forgotten Depths Slayer
step
    #label Along5
    .goto 118,86.06,75.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Lord Dalfors|r
    .accept 13039 >>Accept Defending The Vanguard
    .target Crusader Lord Dalfors
step
    #loop
    .goto 118,84.52,78.14,0
    .goto 118,84.52,78.14,40,0
    .goto 118,83.74,75.26,40,0
    .goto 118,83.56,72.37,40,0
    >>Kill |cRXP_ENEMY_Webbed Crusaders|r and |cRXP_ENEMY_Freed Crusaders|r
    >>Kill |cRXP_ENEMY_Forgotten Depths Ambushers|r, |cRXP_ENEMY_Forgotten Depths Acolytes|r, |cRXP_ENEMY_Carrion Fleshstrippers|r and |cRXP_ENEMY_Forgotten Depths Slayers|r
    >>Kill |cRXP_ENEMY_Forgotten Depths Ambushers|r, |cRXP_ENEMY_Forgotten Depths Acolytes|r, |cRXP_ENEMY_Carrion Fleshstrippers|r and |cRXP_ENEMY_Forgotten Depths Slayers|r. Loot them for |cRXP_LOOT_Forgotten Depths Venom Sac|r
    .complete 13008,1 --Webbed Crusader (8)
    .complete 13039,1 --Forgotten Depths Ambusher (15)
    .complete 13040,1 --Forgotten Depths Venom Sac (10)
    .mob Webbed Crusader
    .mob Freed Crusader
    .mob Forgotten Depths Ambusher
    .mob Forgotten Depths Acolyte
    .mob Carrion Fleshstripper
    .mob Forgotten Depths Slayer
step
    .goto 118,86.06,75.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Lord Dalfors|r
    .turnin 13039 >>Turn in Defending The Vanguard
    .target Crusader Lord Dalfors
step
    .goto 118,86.85,76.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gustav|r
    .turnin 13040 >>Turn in Curing The Incurable
    .target Father Gustav
step
    .goto 118,87.10,75.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Commander Entari|r
    .turnin 13008 >>Turn in Scourge Tactics
    .accept 13044 >>Accept If There Are Survivors...
    .target Crusade Commander Entari
step
    .goto 118,87.01,79.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Penumbrius|r
    .turnin 13044 >>Turn in If There Are Survivors...
    .accept 13045 >>Accept Into The Wild Green Yonder
    .target Penumbrius
step
    #loop
    .goto 118,77.73,67.62,0
    .goto 118,77.73,67.62,40,0
    .goto 118,79.11,61.43,40,0
    >>Rescue 3 Captured Argent Crusaders from Scourgeholme and drop them off at the Vanguard Infirmary at the center of the Argent Vanguard. Report to Highlord Tirion Fordring should you succeed.
    .complete 13045,1 --Captured Crusader (3)
    .target Captured Crusader
step
    .goto 118,87.46,75.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13045 >>Turn in Into The Wild Green Yonder
    .accept 13070 >>Accept A Cold Front Approaches
    .target Highlord Tirion Fordring
step
    .goto 118,85.62,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siegemaster Fezzik|r
    .turnin 13070 >>Turn in A Cold Front Approaches
    .accept 13086 >>Accept The Last Line Of Defense
    .target Siegemaster Fezzik
step
    #loop
    .goto 118,85.40,76.80,0
    .goto 118,85.40,76.80,40,0
    .goto 118,85.00,74.20,40,0
    >>Kill |cRXP_ENEMY_Frostbrood Destroyers|r
    >>Kill |cRXP_ENEMY_Frostbrood Destroyers|r, |cRXP_ENEMY_Forgotten Depths Slayers|r and |cRXP_ENEMY_Scourge Proxy Chapter IIs|r
    .complete 13086,1 --Frostbrood Destroyer slain (100)
    .complete 13086,2 --Frostbrood Destroyer (3)
    .mob Frostbrood Destroyer
    .mob Forgotten Depths Slayer
    .mob Scourge Proxy Chapter II
step
    .goto 118,85.62,76.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Siegemaster Fezzik|r
    .turnin 13086 >>Turn in The Last Line Of Defense
    .target Siegemaster Fezzik
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,86.08,75.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .accept 13104 >>Accept Once More Unto The Breach, Hero
    .target Highlord Tirion Fordring
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,83.02,72.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Ebon Watcher|r
    .turnin 13104 >>Turn in Once More Unto The Breach, Hero
    .accept 13118 >>Accept The Purging Of Scourgeholme
    .accept 13122 >>Accept The Scourgestone
    .target The Ebon Watcher
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,83.03,73.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Architect Silas|r
    .accept 13130 >>Accept The Stone That Started A Revolution
    .target Crusade Architect Silas
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,82.99,73.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Engineer Spitzpatrick|r
    .accept 13135 >>Accept It Could Kill Us All
    .target Crusade Engineer Spitzpatrick
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,82.87,72.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gustav|r
    .accept 13110 >>Accept The Restless Dead
    .target Father Gustav
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,79.20,67.50,0
    .goto 118,79.20,67.50,40,0
    .goto 118,77.96,67.77,40,0
    .goto 118,78.00,63.04,40,0
    >>Kill |cRXP_ENEMY_Forgotten Depths Underkings|r
    >>Kill |cRXP_ENEMY_Reanimated Crusaders|r
    >>Kill |cRXP_ENEMY_Forgotten Depths High Priests|r
    >>Kill |cRXP_ENEMY_Reanimated Crusaders|r, |cRXP_ENEMY_Wrathstrike Gargoyles|r, |cRXP_ENEMY_Forgotten Depths Underkings|r and |cRXP_ENEMY_Forgotten Depths High Priests|r. Loot them for |cRXP_LOOT_Scourgestone|r
    .complete 13118,2 --Forgotten Depths Underking slain (3)
    .complete 13110,1 --Reanimated Crusader slain (10)
    .complete 13118,3 --Reanimated Crusader slain (8)
    .complete 13118,1 --Forgotten Depths High Priest slain (3)
    .complete 13122,1 --Scourgestone (15)
    .mob Forgotten Depths Underking
    .mob Reanimated Crusader
    .mob Forgotten Depths High Priest
    .mob Wrathstrike Gargoyle
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,82.87,72.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gustav|r
    .turnin 13110 >>Turn in The Restless Dead
    .target Father Gustav
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,83.02,72.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Ebon Watcher|r
    .turnin 13118 >>Turn in The Purging Of Scourgeholme
    .turnin 13122 >>Turn in The Scourgestone
    .accept 13125 >>Accept The Air Stands Still
    .target The Ebon Watcher
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,79.80,61.00
    >>Kill |cRXP_ENEMY_High Priest Yath'amon|r
    >>Kill |cRXP_ENEMY_Salranax the Flesh Render|r
    .complete 13125,3 --High Priest Yath'amon slain (1)
    .complete 13125,1 --Salranax the Flesh Render slain (1)
    .mob High Priest Yath'amon
    .mob Salranax the Flesh Render
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,76.40,53.80
    >>Kill |cRXP_ENEMY_Underking Talonox|r
    .complete 13125,2 --Underking Talonox slain (1)
    .mob Underking Talonox
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #completewith next
    .zone 127 >>Travel to Crystalsong Forest
    .zoneskip 127
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 127,63.69,67.79,0
    .goto 127,63.69,67.79,40,0
    .goto 127,60.62,65.89,40,0
    .goto 127,59.67,63.70,40,0
    >>Pick up |cRXP_PICK_Crystalline Heartwood|r from the ground
    .complete 13130,1 --Crystalline Heartwood (10)
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 127,79.51,67.97,0
    .goto 127,79.51,67.97,40,0
    .goto 127,82.90,65.27,40,0
    .goto 127,80.93,61.45,40,0
    .goto 127,80.03,55.51,40,0
    >>Pick up |cRXP_PICK_Ancient Elven Masonry|r from the ground
    >>Kill |cRXP_ENEMY_Unbound Tricksters|r, |cRXP_ENEMY_Unbound Dryads|r, |cRXP_ENEMY_Unbound Ancients|r and |cRXP_ENEMY_Unbound Ents|r. Loot them for |cRXP_LOOT_Crystallized Energy|r
    .complete 13130,2 --Ancient Elven Masonry (10)
    .complete 13135,1 --Crystallized Energy (8)
    .mob Unbound Trickster
    .mob Unbound Dryad
    .mob Unbound Ancient
    .mob Unbound Ent
step << Mage wotlk
    .goto Dalaran,54.98,46.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
    .train 42914 >> Train your class spells
    .xp <78,1
    .target Jessa Weaver
step << Mage wotlk
    .goto Dalaran,54.98,46.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessa|r
    .train 43046 >> Train your class spells
    .xp <79,1
    .target Jessa Weaver
step << Druid wotlk
    .goto 80,52.53,40.57
    >>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 48465 >> Train your class spells
    .xp <78,1
    .target Loganaar
step << Druid wotlk
    .goto 80,52.53,40.57
    >>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 48378 >> Train your class spells
    .xp <79,1
    .target Loganaar
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #completewith next
    .zone 118 >>Leave Crystalsong Forest for Icecrown
    .zoneskip 118
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,82.99,73.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Engineer Spitzpatrick|r
    .turnin 13135 >>Turn in It Could Kill Us All
    .target Crusade Engineer Spitzpatrick
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,83.03,73.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusade Architect Silas|r
    .turnin 13130 >>Turn in The Stone That Started A Revolution
    .target Crusade Architect Silas
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,83.02,72.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Ebon Watcher|r
    .turnin 13125 >>Turn in The Air Stands Still
    .target The Ebon Watcher
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,82.87,72.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gustav|r
    .accept 13139 >>Accept Into The Frozen Heart Of Northrend
    .target Father Gustav
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,86.08,75.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13139 >>Turn in Into The Frozen Heart Of Northrend
    .accept 13141 >>Accept The Battle For Crusaders' Pinnacle
    .target Highlord Tirion Fordring
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,80.38,71.06
    >>Venture to Crusaders' Pinnacle and use the Blessed Banner of the Crusade atop the Pile of Crusader Skulls. Defend the banner against Scourge attack until the land atop the pinnacle is sanctified and then return to Father Gustav at the Valley of Echoes in Icecrown.
    .complete 13141,1 --Halof the Deathbringer
    .target Halof the Deathbringer
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,82.87,72.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gustav|r
    .turnin 13141 >>Turn in The Battle For Crusaders' Pinnacle
    .accept 13157 >>Accept The Crusaders' Pinnacle
    .target Father Gustav
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,79.79,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13157 >>Turn in The Crusaders' Pinnacle
    .accept 13068 >>Accept A Tale of Valor
    .target Highlord Tirion Fordring
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,79.39,72.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Ivalius|r
    .accept 13225 >>Accept The Skybreaker
    .target Marshal Ivalius
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Captain Justin Bartlett|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13225 >>Turn in The Skybreaker
    .accept 13231 >>Accept The Broken Front
    .unitscan High Captain Justin Bartlett
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,71.59,61.03,0
    .goto 118,71.59,61.03,40,0
    .goto 118,71.63,62.72,40,0
    .goto 118,67.95,61.90,40,0
    .goto 118,66.61,62.07,40,0
    .goto 118,67.84,64.55,40,0
    .goto 118,66.72,65.76,40,0
    .goto 118,69.09,68.36,40,0
    .goto 118,69.23,70.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dying Soldier|r
    .complete 13231,1 --Dying Soldier
    .target Dying Soldier
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Captain Justin Bartlett|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13231 >>Turn in The Broken Front
    .accept 13290 >>Accept Your Attention, Please
    .accept 13286 >>Accept ...All the Help We Can Get.
    .unitscan High Captain Justin Bartlett
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Boltwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13290 >>Turn in Your Attention, Please
    .unitscan Chief Engineer Boltwrench
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13286 >>Turn in ...All the Help We Can Get.
    .unitscan Thassarian
step << DeathKnight
    .goto 118,86.08,75.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .accept 13105 >>Accept Once More Unto The Breach, Hero
    .target Highlord Tirion Fordring
step << DeathKnight
    .goto 118,83.02,72.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Ebon Watcher|r
    .turnin 13105 >>Turn in Once More Unto The Breach, Hero
    .target The Ebon Watcher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 12887 >>Accept It's All Fun and Games
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13332 >>Accept Raise the Barricades
    .unitscan Thassarian
    .isQuestTurnedIn 13345 --any of: Need More Info
    .xp <77,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,50.90,38.15,0
    .goto 118,50.90,38.15,40,0
    .goto 118,49.81,41.14,40,0
    >>Kill |cRXP_ENEMY_Ebon Blade Markers|r
    .complete 13332,1 --Ebon Blade Marker slain (8)
    .mob Ebon Blade Marker
    .isOnQuest 13332
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,44.31,21.55
    >>Kill |cRXP_ENEMY_The Ocular|r
    .complete 12887,1 --The Ocular slain (1)
    .mob The Ocular
step
    .goto 118,44.15,24.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sliver|r
    .turnin 12887 >>Turn in It's All Fun and Games << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 12891 >>Accept I Have an Idea, But First...
    .target Baron Sliver
step
    #loop
    .goto 118,43.54,26.15,0
    .goto 118,43.54,26.15,40,0
    .goto 118,42.42,27.14,40,0
    >>Kill |cRXP_ENEMY_Shadow Cultist|r and loot |cRXP_LOOT_Cultist Rod|r
    >>Kill |cRXP_ENEMY_Vault Geist|r and loot |cRXP_LOOT_Geist Rope|r
    >>Kill |cRXP_ENEMY_Morbid Carcass|r, |cRXP_ENEMY_Vault Geists|r, |cRXP_ENEMY_Rabid Cannibals|r and |cRXP_ENEMY_Death Knight Masters|r. Loot them for |cRXP_LOOT_Scourge Essence|r
    >>Kill |cRXP_ENEMY_Morbid Carcass|r and loot |cRXP_LOOT_Abomination Hook|r
    .complete 12891,1 --Cultist Rod (1)
    .complete 12891,3 --Geist Rope (1)
    .complete 12891,4 --Scourge Essence (5)
    .complete 12891,2 --Abomination Hook (1)
    .mob Shadow Cultist
    .mob Vault Geist
    .mob Morbid Carcass
    .mob Rabid Cannibal
    .mob Death Knight Master
step
    .goto 118,44.15,24.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sliver|r
    .turnin 12891 >>Turn in I Have an Idea, But First... while you are here
    .isQuestComplete 12891
    .target Baron Sliver
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .accept 13168 >>Accept Parting Gifts
    .target Keritose Bloodblade
    .isQuestTurnedIn 13263,13364,13389,13403 --any of: A Short Fuse, Tirion's Gambit, A Short Fuse, Tirion's Gambit
    .xp <77,1
step
    .goto 118,44.15,24.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sliver|r
    .turnin 12891 >>Turn in I Have an Idea, But First...
    .accept 12893 >>Accept Free Your Mind
    .target Baron Sliver
step
    .goto 118,44.42,27.00
    >>Kill |cRXP_ENEMY_Vile|r
    >>Kill |cRXP_ENEMY_Lady Nightswood|r
    .complete 12893,1 --Vile slain (1)
    .complete 12893,2 --Lady Nightswood slain (1)
    .mob Vile
    .mob Lady Nightswood
step
    .goto 118,42.56,20.81
    >>Kill |cRXP_ENEMY_The Leaper|r
    .complete 12893,3 --The Leaper slain (1)
    .mob The Leaper
step
    .goto 118,44.15,24.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sliver|r
    .turnin 12893 >>Turn in Free Your Mind
    .accept 12896 >>Accept If He Cannot Be Turned << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Baron Sliver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,44.60,20.00
    >>Kill |cRXP_ENEMY_General Lightsbane|r
    .complete 12896,1 --General Lightsbane slain (1)
    .mob General Lightsbane
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13332 >>Turn in Raise the Barricades
    .unitscan Thassarian
    .isOnQuest 13332
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 12896 >>Turn in If He Cannot Be Turned
    .accept 12898 >>Accept The Shadow Vault
    .unitscan Thassarian
step
    .goto 118,42.84,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sliver|r
    .turnin 12898 >>Turn in The Shadow Vault << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 12938 >>Accept The Duke
    .accept 13106 >>Accept Blackwatch
    .target Baron Sliver
step
    .goto 118,44.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Lankral|r
    .turnin 12938 >>Turn in The Duke
    .accept 12939 >>Accept Honor Challenge
    .target Duke Lankral
step
    .goto 118,43.47,25.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Leaper|r
    .accept 12955 >>Accept Eliminate the Competition
    .target The Leaper
step
    #completewith Along61
    >>As you go: Kill |cRXP_ENEMY_Onu'zun|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12955,3 --Onu'zun slain (1)
    .mob Onu'zun
step
    #label Along61
    .goto 118,36.95,23.85
    >>Kill |cRXP_ENEMY_Efrem the Faithful|r
    >>Kill |cRXP_ENEMY_Mjordin Combatants|r
    >>Kill |cRXP_ENEMY_Tinky Wickwhistle|r
    >>Kill |cRXP_ENEMY_Sigrid Iceborn|r
    .complete 12955,2 --Efrem the Faithful slain (1)
    .complete 12939,1 --Mjordin Combatant slain (6)
    .complete 12955,4 --Tinky Wickwhistle slain (1)
    .complete 12955,1 --Sigrid Iceborn slain (1)
    .mob Efrem the Faithful
    .mob Mjordin Combatant
    .mob Tinky Wickwhistle
    .mob Sigrid Iceborn
step
    .goto 118,44.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Lankral|r
    .turnin 12939 >>Turn in Honor Challenge
    .accept 12943 >>Accept Shadow Vault Decree
    .target Duke Lankral
step
    #completewith Along63
    >>As you go: Kill |cRXP_ENEMY_Thane Ufrang the Mighty|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12943,1 --Thane Ufrang the Mighty slain (1)
    .mob Thane Ufrang the Mighty
step
    #label Along63
    .goto 118,41.04,23.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vaelen the Flayed|r
    .accept 12949 >>Accept Get the Key
    .target Vaelen the Flayed
step
    .goto 118,37.86,22.93
    >>Kill |cRXP_ENEMY_Thane Ufrang the Mighty|r
    >>Kill |cRXP_ENEMY_Onu'zun|r
    >>Kill |cRXP_ENEMY_Instructor Hroegar|r and loot |cRXP_LOOT_Key to Vaelen's Chains|r
    .complete 12943,1 --Thane Ufrang the Mighty slain (1)
    .complete 12955,3 --Onu'zun slain (1)
    .complete 12949,1 --Key to Vaelen's Chains (1)
    .mob Thane Ufrang the Mighty
    .mob Onu'zun
    .mob Instructor Hroegar
step
    .goto 118,41.04,23.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vaelen the Flayed|r
    .turnin 12949 >>Turn in Get the Key
    .accept 12951 >>Accept Let the Baron Know
    .target Vaelen the Flayed
step
    .goto 118,42.84,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sliver|r
    .turnin 12951 >>Turn in Let the Baron Know
    .accept 13085 >>Accept Vaelen Has Returned
    .target Baron Sliver
step
    .goto 118,43.14,25.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vile|r
    .accept 12992 >>Accept Crush Dem Vrykuls!
    .target Vile
step
    .goto 118,43.47,25.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Leaper|r
    .turnin 12955 >>Turn in Eliminate the Competition
    .target The Leaper
step
    .goto 118,44.19,24.69
    >>Seize Control of an Eidolon Watcher
    .complete 13168,1 --Seize Control of an Eidolon Watcher
    .isOnQuest 13168
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .turnin 13168 >>Turn in Parting Gifts
    .target Keritose Bloodblade
    .isOnQuest 13168
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .accept 13170 >>Accept Honor is for the Weak
    .accept 13169 >>Accept An Undead's Best Friend
    .accept 13171 >>Accept From Whence They Came
    .target Keritose Bloodblade
    .isQuestTurnedIn 13168 --any of: Parting Gifts
    .xp <77,1
step
    #loop
    .goto 118,39.71,35.93,0
    .goto 118,39.71,35.93,40,0
    .goto 118,37.95,37.06,40,0
    >>Kill |cRXP_ENEMY_Containment Crystals|r
    .complete 13171,1 --Containment Crystal slain (10)
    .mob Containment Crystal
    .isOnQuest 13171
step
    #loop
    .goto 118,39.94,33.52,0
    .goto 118,39.94,33.52,40,0
    .goto 118,40.77,37.76,40,0
    >>Kill |cRXP_ENEMY_Restless Lookouts|r
    .complete 13170,1 --Restless Lookout slain (20)
    .mob Restless Lookout
    .isOnQuest 13170
step
    #loop
    .goto 118,38.59,34.82,0
    .goto 118,38.59,34.82,40,0
    .goto 118,38.31,39.92,40,0
    .goto 118,37.49,42.52,40,0
    >>Interact with |cRXP_FRIENDLY_Hungering Plaguehounds|r
    .complete 13169,1 --Hungering Plaguehound (18)
    .target Hungering Plaguehound
    .isOnQuest 13169
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .turnin 13171 >>Turn in From Whence They Came
    .target Keritose Bloodblade
    .isOnQuest 13171
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .turnin 13170 >>Turn in Honor is for the Weak
    .target Keritose Bloodblade
    .isOnQuest 13170
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .turnin 13169 >>Turn in An Undead's Best Friend
    .target Keritose Bloodblade
    .isOnQuest 13169
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .accept 13174 >>Accept Amidst the Confusion
    .accept 13172 >>Accept Seeds of Chaos
    .target Keritose Bloodblade
    .isQuestTurnedIn 13169 --An Undead's Best Friend
    .isQuestTurnedIn 13170 --Honor is for the Weak
    .isQuestTurnedIn 13171 --From Whence They Came
    .xp <77,1
step
    .goto 118,43.47,25.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Leaper|r
    .accept 12999 >>Accept The Bone Witch
    .target The Leaper
step
    #loop
    .goto 118,38.68,33.52,0
    .goto 118,38.68,33.52,40,0
    .goto 118,41.41,36.45,40,0
    >>Kill |cRXP_ENEMY_Restless Lookouts|r and |cRXP_ENEMY_Risen Laborers|r
    .complete 13172,1 --Restless Lookout (8)
    .mob Restless Lookout
    .mob Risen Laborer
    .isOnQuest 13172
step
    .goto 118,39.11,33.60
    >>Pick up |cRXP_PICK_Weeping Quarry Document|r from the ground
    .complete 13174,1 --Weeping Quarry Document (1)
    .isOnQuest 13174
step
    .goto 118,39.16,36.68
    >>Pick up |cRXP_PICK_Weeping Quarry Ledger|r from the ground
    .complete 13174,2 --Weeping Quarry Ledger (1)
    .isOnQuest 13174
step
    .goto 118,38.62,39.39
    >>Pick up |cRXP_PICK_Weeping Quarry Map|r from the ground
    .complete 13174,3 --Weeping Quarry Map (1)
    .isOnQuest 13174
step
    .goto 118,37.23,41.60
    >>Pick up |cRXP_PICK_Weeping Quarry Schedule|r from the ground
    .complete 13174,4 --Weeping Quarry Schedule (1)
    .isOnQuest 13174
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .turnin 13174 >>Turn in Amidst the Confusion
    .target Keritose Bloodblade
    .isOnQuest 13174
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .turnin 13172 >>Turn in Seeds of Chaos
    .target Keritose Bloodblade
    .isOnQuest 13172
step
    .goto 118,44.06,24.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keritose Bloodblade|r
    .accept 13155 >>Accept Vereth the Cunning
    .target Keritose Bloodblade
    .isQuestTurnedIn 13172 --Seeds of Chaos
    .isQuestTurnedIn 13174 --Amidst the Confusion
    .xp <77,1
step
    .goto 118,44.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Lankral|r
    .turnin 12943 >>Turn in Shadow Vault Decree
    .accept 13084 >>Accept Vandalizing Jotunheim
    .target Duke Lankral
step
    .goto 118,43.11,21.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vaelen the Flayed|r
    .turnin 13085 >>Turn in Vaelen Has Returned
    .accept 12982 >>Accept Ebon Blade Prisoners
    .target Vaelen the Flayed
step
    #completewith Along90
    >>As you go: Click the |cRXP_PICK_Vrykul Banner|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13084,1 --Vrykul Banner
step
    #label Along90
    #loop
    .goto 118,40.47,23.91,0
    .goto 118,40.47,23.91,40,0
    .goto 118,37.37,24.17,40,0
    >>Kill |cRXP_ENEMY_Jotunheim Warriors|r, |cRXP_ENEMY_Mjordin Combatants|r, |cRXP_ENEMY_Njorndar Spear-Sisters|r and |cRXP_ENEMY_Valhalas Varguls|r. Loot them for |cRXP_LOOT_Jotunheim Cage Key|r
    >>Kill |cRXP_ENEMY_Instructor Hroegars|r, |cRXP_ENEMY_Thane Ufrang the Mighties|r, |cRXP_ENEMY_Mjordin Combatants|r and |cRXP_ENEMY_Njorndar Spear-Sisters|r
    .collect 42422,1,12982,1 --Jotunheim Cage Key (1)
    .complete 12992,1 --Instructor Hroegar (8)
    .mob Jotunheim Warrior
    .mob Mjordin Combatant
    .mob Njorndar Spear-Sister
    .mob Valhalas Vargul
    .mob Instructor Hroegar
    .mob Thane Ufrang the Mighty
step
    .goto 118,34.74,26.88
    >>Click the |cRXP_PICK_Vrykul Banner|r
    .complete 13084,1 --Vrykul Banner
step
    .goto 118,32.50,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Bone Witch|r
    .turnin 12999 >>Turn in The Bone Witch
    .accept 13092 >>Accept Reading the Bones
    .accept 13042 >>Accept Deep in the Bowels of The Underhalls
    .target The Bone Witch
step
    #completewith Along95
    >>As you go: Kill |cRXP_ENEMY_Death Knight Masters|r, |cRXP_ENEMY_Jotunheim Warriors|r, |cRXP_ENEMY_Mjordin Combatants|r and |cRXP_ENEMY_Njorndar Spear-Sisters|r. Loot them for |cRXP_LOOT_Vrykul Bones|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13092,1 --Vrykul Bones (15)
    .mob Death Knight Master
    .mob Jotunheim Warrior
    .mob Mjordin Combatant
    .mob Njorndar Spear-Sister
step
    .goto 118,34.24,36.62
    >>Kill |cRXP_ENEMY_Apprentice Osterkilgr|r and loot |cRXP_LOOT_Dr. Terrible's "Building a Better Flesh Giant"|r. Use it to start the quest
    .collect 42772,1,13043 --Dr. Terrible's "Building a Better Flesh Giant" (1)
    .accept 13043 >>Accept The Sum is Greater than the Parts
    .use 42772
    .mob Apprentice Osterkilgr
step
    .goto 118,34.24,36.62
    >>The Bone Witch in Njorndar Village has asked you to beat information out of Apprentice Osterkilgr concerning what Dr. Terrible is truly up to.
    .complete 13042,1 --Apprentice Osterkilgr
    .target Apprentice Osterkilgr
step
    #label Along95
    .goto 118,34.24,36.62
    >>The Bone Witch in Njorndar Village has asked you to beat information out of Apprentice Osterkilgr concerning what Dr. Terrible is truly up to.
    .complete 13042,2 --Apprentice Osterkilgr
    .target Apprentice Osterkilgr
step
    #loop
    .goto 118,34.42,35.43,0
    .goto 118,34.42,35.43,40,0
    .goto 118,31.61,39.06,40,0
    .goto 118,28.84,39.57,40,0
    >>Kill |cRXP_ENEMY_Dr. Terrible|r
    >>Kill |cRXP_ENEMY_Death Knight Masters|r, |cRXP_ENEMY_Jotunheim Warriors|r, |cRXP_ENEMY_Mjordin Combatants|r and |cRXP_ENEMY_Njorndar Spear-Sisters|r. Loot them for |cRXP_LOOT_Vrykul Bones|r
    .complete 13043,1 --Dr. Terrible slain (1)
    .complete 13092,1 --Vrykul Bones (15)
    .mob Dr. Terrible
    .mob Death Knight Master
    .mob Jotunheim Warrior
    .mob Mjordin Combatant
    .mob Njorndar Spear-Sister
step
    .goto 118,32.50,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Bone Witch|r
    .turnin 13043 >>Turn in The Sum is Greater than the Parts
    .turnin 13042 >>Turn in Deep in the Bowels of The Underhalls
    .turnin 13092 >>Turn in Reading the Bones
    .accept 13091 >>Accept The Art of Being a Water Terror
    .target The Bone Witch
step
    #loop
    .goto 118,31.61,39.06,0
    .goto 118,31.61,39.06,40,0
    .goto 118,28.84,39.57,40,0
    .goto 118,34.42,35.43,40,0
    >>Kill |cRXP_ENEMY_Jotunheim Sleep-Watchers|r, |cRXP_ENEMY_Jotunheim Warriors|r, |cRXP_ENEMY_Mjordin Water Magus|r and |cRXP_ENEMY_Njorndar Spear-Sisters|r
    .complete 13091,1 --Jotunheim Sleep-Watcher (8)
    .mob Jotunheim Sleep-Watcher
    .mob Jotunheim Warrior
    .mob Mjordin Water Magus
    .mob Njorndar Spear-Sister
step
    #loop
    .goto 118,29.92,38.99,0
    .goto 118,29.92,38.99,40,0
    .goto 118,28.91,35.12,40,0
    >>Kill |cRXP_ENEMY_Ebon Blade Prisoners|r
    .complete 12982,1 --Ebon Blade Prisoner (8)
    .mob Ebon Blade Prisoner
step
    .goto 118,32.50,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Bone Witch|r
    .turnin 13091 >>Turn in The Art of Being a Water Terror
    .accept 13121 >>Accept Through the Eye
    .target The Bone Witch
step
    .goto 118,26.21,62.32
    >>Click the |cRXP_PICK_Eye of the Lich King|r
    .complete 13121,1 --Eye of the Lich King
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,31.76,64.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Kamaros|r
    .accept 13221 >>Accept I'm Not Dead Yet!
    .target Father Kamaros
    .isQuestTurnedIn 13119 --Destroying the Altars
    .isQuestTurnedIn 13120 --Death's Gaze
    .xp <77,1
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .turnin 13106 >>Turn in Blackwatch
    .accept 13117 >>Accept Where Are They Coming From?
    .target Darkrider Arly
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .accept 13134 >>Accept Spill Their Blood
    .target Darkrider Arly
    .isQuestTurnedIn 13119 --Destroying the Altars
    .isQuestTurnedIn 13120 --Death's Gaze
    .xp <77,1
step
    .goto 118,35.50,66.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Olakin Sainrith|r
    .accept 13138 >>Accept I'm Smelting... Smelting!
    .accept 13140 >>Accept The Runesmiths of Malykriss
    .target Crusader Olakin Sainrith
    .isQuestTurnedIn 13136 --any of: Jagged Shards
    .xp <77,1
step
    .goto 118,37.38,71.57
    >>Click the |cRXP_PICK_Summoning Altar|r
    .complete 13117,1 --Summoning Altar
step
    #loop
    .goto 118,33.73,69.65,0
    .goto 118,33.73,69.65,40,0
    .goto 118,32.98,65.48,40,0
    >>Click the |cRXP_PICK_Embalming Fluid|r
    .complete 13134,2 --Embalming Fluid
    .isOnQuest 13134
step
    #loop
    .goto 118,31.56,68.52,0
    .goto 118,31.56,68.52,40,0
    .goto 118,34.08,68.50,40,0
    >>Click the |cRXP_PICK_Blood Orb|r
    .complete 13134,1 --Blood Orb
    .isOnQuest 13134
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .turnin 13117 >>Turn in Where Are They Coming From?
    .target Darkrider Arly
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .turnin 13134 >>Turn in Spill Their Blood
    .target Darkrider Arly
    .isOnQuest 13134
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,32.00,57.10
    >>Escort Father Kamaros to safety
    .complete 13221,1 --Escort Father Kamaros to safety
    .isOnQuest 13221
step
    .goto 118,32.50,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Bone Witch|r
    .turnin 13121 >>Turn in Through the Eye
    .accept 13133 >>Accept Find the Ancient Hero
    .target The Bone Witch
step
    .goto 118,32.50,42.95
    >>The Bone Witch at Njorndar Village wants you to return with Iskalder.
    .complete 13133,1 --Subjugated Iskalder (1)
step
    .goto 118,32.50,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Bone Witch|r
    .turnin 13133 >>Turn in Find the Ancient Hero
    .accept 13137 >>Accept Not-So-Honorable Combat
    .target The Bone Witch
step
    .goto 118,28.80,52.20
    >>Kill |cRXP_ENEMY_Possessed Iskalder|r
    .complete 13137,1 --Possessed Iskalder slain (1)
    .mob Possessed Iskalder
step
    .goto 118,32.50,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Bone Witch|r
    .turnin 13137 >>Turn in Not-So-Honorable Combat
    .accept 13142 >>Accept Banshee's Revenge
    .target The Bone Witch
step
    .goto 118,43.11,21.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vaelen the Flayed|r
    .turnin 12982 >>Turn in Ebon Blade Prisoners
    .target Vaelen the Flayed
step
    .goto 118,44.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duke Lankral|r
    .turnin 13084 >>Turn in Vandalizing Jotunheim
    .target Duke Lankral
step
    .goto 118,43.14,25.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vile|r
    .turnin 12992 >>Turn in Crush Dem Vrykuls!
    .target Vile
step
    .goto 118,42.84,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sliver|r
    .accept 12806 >>Accept To the Rise with all Due Haste!
    .target Baron Sliver
step
    .goto 118,36.11,33.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethod Feigr|r
    .accept 13059 >>Accept Revenge for the Vargul
    .target Bethod Feigr
step
    .goto 118,33.13,37.82
    >>Click the |cRXP_PICK_Thane Illskar's Spell Focus|r
    >>Kill |cRXP_ENEMY_Thane Illskar|r
    .complete 13059,1 --Thane Illskar's Spell Focus
    .complete 13059,2 --Thane Illskar (1)
    .mob Thane Illskar
step
    .goto 118,19.54,48.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .turnin 12806 >>Turn in To the Rise with all Due Haste!
    .accept 12807 >>Accept The Story Thus Far...
    .target Lord-Commander Arete
step
    #completewith Along124
    >>As you go: Kill |cRXP_ENEMY_Lord-Commander Arete|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12807,1 --Lord-Commander Arete slain (1)
    .mob Lord-Commander Arete
step
    #label Along124
    .goto 118,19.54,48.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .accept 12840 >>Accept In Strict Confidence
    .target Lord-Commander Arete
    .isQuestTurnedIn 12839 --any of: The Grand (Admiral's) Plan
    .xp <77,1
step
    .goto 118,19.54,48.15
    >>Kill |cRXP_ENEMY_Lord-Commander Arete|r
    .complete 12807,1 --Lord-Commander Arete slain (1)
    .mob Lord-Commander Arete
step
    .goto 118,19.54,48.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .turnin 12807 >>Turn in The Story Thus Far...
    .accept 12810 >>Accept Blood in the Water
    .target Lord-Commander Arete
step
    #loop
    .goto 118,14.89,44.37,0
    .goto 118,14.89,44.37,40,0
    .goto 118,13.60,48.72,40,0
    .goto 118,7.86,43.15,40,0
    >>Kill |cRXP_ENEMY_Ravenous Jaws|r
    .complete 12810,1 --Ravenous Jaws slain (10)
    .mob Ravenous Jaws
step
    .goto 118,7.03,41.92
    >>Kill |cRXP_ENEMY_Captain Hartford|r
    .complete 12840,2 --Captain Hartford slain (1)
    .mob Captain Hartford
    .isOnQuest 12840
step
    .goto 118,5.67,41.93
    >>Kill |cRXP_ENEMY_Captain Welsington|r
    .complete 12840,1 --Captain Welsington slain (1)
    .mob Captain Welsington
    .isOnQuest 12840
step
    .goto 118,17.20,56.00
    >>Kill |cRXP_ENEMY_Overthane Balargarde|r
    .complete 13142,1 --Overthane Balargarde slain (1)
    .mob Overthane Balargarde
step
    .goto 118,19.54,48.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .turnin 12810 >>Turn in Blood in the Water
    .accept 12814 >>Accept You'll Need a Gryphon
    .target Lord-Commander Arete
step
    .goto 118,19.54,48.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .turnin 12840 >>Turn in In Strict Confidence
    .target Lord-Commander Arete
    .isOnQuest 12840
step
    .goto 118,19.54,48.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .accept 12847 >>Accept Second Chances
    .target Lord-Commander Arete
    .isQuestTurnedIn 12840 --any of: In Strict Confidence
    .xp <77,1
step
    .goto 118,19.54,48.15
    >>Kill Archbishop Landgren and then summon Arete's Gate in the presence of his corpse. Speak with Lord-Commander Arete inside The Crimson Cathedral once he's completed his questioning of the archbishop's spirit.
    .complete 12847,2 --Arete's Gate Summoned Kill Credit Bunny (1)
    .isOnQuest 12847
step
    #completewith Along139
    >>As you go: Kill |cRXP_ENEMY_Onslaught Gryphon Rider|r and loot |cRXP_LOOT_Onslaught Gryphon Reins|r. |cRXP_WARN_Anything left is finished later|r
    .collect 40970,1,12814,1 --Onslaught Gryphon Reins (1)
    .mob Onslaught Gryphon Rider
step
    .goto 118,9.53,47.28
    >>Kill |cRXP_ENEMY_Archbishop Landgren|r
    .complete 12847,1 --Archbishop Landgren slain (1)
    .mob Archbishop Landgren
    .isOnQuest 12847
step
    .goto 118,9.53,47.01
    >>Arete's Gate summoned
    .complete 12847,3 --Arete's Gate summoned
    .isOnQuest 12847
step
    .goto 118,9.53,47.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .turnin 12847 >>Turn in Second Chances
    .target Lord-Commander Arete
    .isOnQuest 12847
step
    .goto 118,9.53,47.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .accept 12852 >>Accept The Admiral Revealed
    .target Lord-Commander Arete
    .isQuestTurnedIn 12847 --any of: Second Chances
    .xp <77,1
step
    #label Along139
    .goto 118,8.91,46.17
    >>Kill |cRXP_ENEMY_Grand Admiral Westwind|r
    .complete 12852,1 --Grand Admiral Westwind slain (1)
    .mob Grand Admiral Westwind
    .isOnQuest 12852
step
    #loop
    .goto 118,9.85,43.45,0
    .goto 118,9.85,43.45,40,0
    .goto 118,11.78,44.26,40,0
    .goto 118,10.13,38.66,40,0
    >>Kill |cRXP_ENEMY_Onslaught Gryphon Rider|r and loot |cRXP_LOOT_Onslaught Gryphon Reins|r
    .collect 40970,1,12814,1 --Onslaught Gryphon Reins (1)
    .mob Onslaught Gryphon Rider
step
    .goto 118,19.54,48.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord-Commander Arete|r
    .turnin 12852 >>Turn in The Admiral Revealed
    .target Lord-Commander Arete
    .isOnQuest 12852
step
    .goto 118,19.64,47.80
    >>Kill |cRXP_ENEMY_You'll Need a Gryphon Kill Credit Bunny|r and |cRXP_ENEMY_Uzo Deathcaller|r
    .complete 12814,1 --You'll Need a Gryphon Kill Credit Bunny (1)
    .mob You'll Need a Gryphon Kill Credit Bunny
    .mob Uzo Deathcaller
step
    .goto 118,19.64,47.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzo Deathcaller|r
    .turnin 12814 >>Turn in You'll Need a Gryphon
    .target Uzo Deathcaller
step
    .goto 118,32.50,42.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Bone Witch|r
    .turnin 13142 >>Turn in Banshee's Revenge
    .accept 13213 >>Accept Battle at Valhalas
    .target The Bone Witch
step
    .goto 118,30.74,28.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geirrvif|r
    .turnin 13213 >>Turn in Battle at Valhalas
    .accept 13214 >>Accept Battle at Valhalas: Fallen Heroes
    .target Geirrvif
step
    .goto 118,30.90,29.30
    >>Kill |cRXP_ENEMY_Father Jhadras|r, |cRXP_ENEMY_Masuds|r, |cRXP_ENEMY_Geness Half-Souls|r and |cRXP_ENEMY_Tallas|r
    .complete 13214,1 --Father Jhadras (8)
    .mob Father Jhadras
    .mob Masud
    .mob Geness Half-Soul
    .mob Talla
step
    .goto 118,31.57,30.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gjonner the Merciless|r
    .turnin 13214 >>Turn in Battle at Valhalas: Fallen Heroes
    .target Gjonner the Merciless
step
    .goto 118,30.74,28.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geirrvif|r
    .accept 13215 >>Accept Battle at Valhalas: Khit'rix the Dark Master
    .target Geirrvif
step
    .goto 118,30.90,29.30
    >>Kill |cRXP_ENEMY_Khit'rix the Dark Master|r
    .complete 13215,1 --Khit'rix the Dark Master slain (1)
    .mob Khit'rix the Dark Master
step
    .goto 118,31.57,30.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gjonner the Merciless|r
    .turnin 13215 >>Turn in Battle at Valhalas: Khit'rix the Dark Master
    .target Gjonner the Merciless
step
    .goto 118,30.74,28.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geirrvif|r
    .accept 13216 >>Accept Battle at Valhalas: The Return of Sigrid Iceborn
    .target Geirrvif
step
    .goto 118,30.90,29.30
    >>Kill |cRXP_ENEMY_Sigrid Iceborn|r
    .complete 13216,1 --Sigrid Iceborn slain (1)
    .mob Sigrid Iceborn
step
    .goto 118,31.57,30.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gjonner the Merciless|r
    .turnin 13216 >>Turn in Battle at Valhalas: The Return of Sigrid Iceborn
    .target Gjonner the Merciless
step
    .goto 118,30.74,28.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geirrvif|r
    .accept 13217 >>Accept Battle at Valhalas: Carnage!
    .target Geirrvif
step
    .goto 118,30.90,29.30
    >>Kill |cRXP_ENEMY_Carnage|r
    .complete 13217,1 --Carnage slain (1)
    .mob Carnage
step
    .goto 118,31.57,30.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gjonner the Merciless|r
    .turnin 13217 >>Turn in Battle at Valhalas: Carnage!
    .target Gjonner the Merciless
step
    .goto 118,30.74,28.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geirrvif|r
    .accept 13218 >>Accept Battle at Valhalas: Thane Deathblow
    .target Geirrvif
step
    .goto 118,30.90,29.30
    >>Kill |cRXP_ENEMY_Thane Banahogg|r
    .complete 13218,1 --Thane Banahogg slain (1)
    .mob Thane Banahogg
step
    .goto 118,31.57,30.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gjonner the Merciless|r
    .turnin 13218 >>Turn in Battle at Valhalas: Thane Deathblow
    .target Gjonner the Merciless
step
    .goto 118,30.74,28.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geirrvif|r
    .accept 13219 >>Accept Battle at Valhalas: Final Challenge
    .target Geirrvif
step
    .goto 118,31.21,29.74
    >>Kill |cRXP_ENEMY_Prince Sandoval|r
    .complete 13219,1 --Prince Sandoval slain (1)
    .mob Prince Sandoval
step
    .goto 118,31.57,30.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gjonner the Merciless|r
    .turnin 13219 >>Turn in Battle at Valhalas: Final Challenge
    .target Gjonner the Merciless
step
    .goto 118,36.11,33.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bethod Feigr|r
    .turnin 13059 >>Turn in Revenge for the Vargul
    .target Bethod Feigr
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13287 >>Accept Poke and Prod
    .unitscan Thassarian
step << Human Priest/Human Shaman/Human Druid/Dwarf Priest/Dwarf Shaman/Dwarf Druid/NightElf Priest/NightElf Shaman/NightElf Druid/Gnome Priest/Gnome Shaman/Gnome Druid/Draenei Priest/Draenei Shaman/Draenei Druid/Worgen Priest/Worgen Shaman/Worgen Druid/Pandaren Priest/Pandaren Shaman/Pandaren Druid
    .goto 118,74.12,31.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caladis Brightspear|r
    .accept 24795 >>Accept A Victory For The Silver Covenant
    .target Caladis Brightspear
    .isQuestTurnedIn 24595 --any of: The Purification of Quel'Delar
    .xp <80,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,79.84,30.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Bridenbrad|r
    .turnin 13068 >>Turn in A Tale of Valor
    .accept 13072 >>Accept A Hero Remains
    .target Crusader Bridenbrad
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,79.79,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13072 >>Turn in A Hero Remains
    .accept 13073 >>Accept The Keeper's Favor
    .target Highlord Tirion Fordring
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,69.08,67.59,0
    .goto 118,69.08,67.59,40,0
    .goto 118,68.60,64.71,40,0
    .goto 118,70.06,62.73,40,0
    >>Kill |cRXP_ENEMY_Hulking Abominations|r
    >>Kill |cRXP_ENEMY_Shadow Adepts|r
    >>Kill |cRXP_ENEMY_Malefic Necromancers|r
    .complete 13287,1 --Hulking Abomination slain (5)
    .complete 13287,3 --Shadow Adept slain (5)
    .complete 13287,2 --Malefic Necromancer slain (5)
    .mob Hulking Abomination
    .mob Shadow Adept
    .mob Malefic Necromancer
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Boltwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13291 >>Accept Borrowed Technology
    .unitscan Chief Engineer Boltwrench
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13287 >>Turn in Poke and Prod
    .accept 13288 >>Accept That's Abominable!
    .accept 13294 >>Accept Against the Giants
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.44,56.59,0
    .goto 118,63.44,56.59,40,0
    .goto 118,64.40,58.92,40,0
    >>Kill |cRXP_ENEMY_Pustulent Horrors|r. Loot them for |cRXP_LOOT_Pustulant Spine|r
    .complete 13294,1 --Pustulant Spine (5)
    .mob Pustulent Horror
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #completewith Along173
    >>As you go: Pick up |cRXP_PICK_Pile of Bones|r from the ground. Pick up |cRXP_PICK_Abandoned Armor|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .collect 43609,1,13291,1 --Pile of Bones (1)
    .collect 43616,1,13291,1 --Abandoned Armor (1)
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,68.18,64.49,0
    .goto 118,68.18,64.49,40,0
    .goto 118,70.46,63.80,40,0
    .goto 118,67.80,68.08,40,0
    >>Pick up |cRXP_PICK_Abandoned Helm|r from the ground
    >>Kill |cRXP_ENEMY_Hulking Abomination|r and loot |cRXP_LOOT_Chilled Abomination Guts|r
    .collect 43610,1,13291,1 --Abandoned Helm (1)
    .collect 43966,1,13288,1 --Chilled Abomination Guts (1)
    .mob Hulking Abomination
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #label Along173
    #loop
    .goto 118,69.00,65.40,0
    .goto 118,69.00,65.40,40,0
    .goto 118,70.80,67.20,40,0
    .goto 118,67.40,68.20,40,0
    >>Interact with |cRXP_FRIENDLY_Risen Alliance Soldiers|r
    .complete 13288,3 --Risen Alliance Soldier (15)
    .target Risen Alliance Soldier
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,68.71,68.49,0
    .goto 118,68.71,68.49,40,0
    .goto 118,67.44,64.02,40,0
    .goto 118,69.89,63.29,40,0
    >>Pick up |cRXP_PICK_Pile of Bones|r from the ground
    >>Pick up |cRXP_PICK_Abandoned Armor|r from the ground
    .collect 43609,1,13291,1 --Pile of Bones (1)
    .collect 43616,1,13291,1 --Abandoned Armor (1)
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,67.70,63.95
    >>Kill |cRXP_ENEMY_Frostbrood Skytalons|r
    .complete 13291,1 --Frostbrood Skytalon (3)
    .mob Frostbrood Skytalon
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,67.36,61.24,0
    .goto 118,67.36,61.24,40,0
    .goto 118,69.35,60.15,40,0
    >>Interact with |cRXP_FRIENDLY_Icy Ghouls|r
    .complete 13288,1 --Icy Ghoul (15)
    .target Icy Ghoul
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,67.05,61.47,0
    .goto 118,67.05,61.47,40,0
    .goto 118,69.34,60.62,40,0
    >>Interact with |cRXP_FRIENDLY_Vicious Geists|r
    .complete 13288,2 --Vicious Geist (15)
    .target Vicious Geist
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13288 >>Turn in That's Abominable!
    .turnin 13294 >>Turn in Against the Giants
    .accept 13295 >>Accept Basic Chemistry
    .accept 13315 >>Accept Sneak Preview
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Boltwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13291 >>Turn in Borrowed Technology
    .unitscan Chief Engineer Boltwrench
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,61.55,63.96
    >>Thassarian aboard the Skybreaker wants you to use Pustulant Spinal Fluid on a plague cauldron at Mord'rethar.
    .complete 13295,1 --Plague Cauldron
    .target Plague Cauldron
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,54.00,44.00
    >>Thassarian, aboard the Skybreaker, wants you to fly down to the gate of desolation, visiting the south, central, north, and northwest regions of the gate.
    .complete 13315,1 --South Gate KC Bunny
    .target South Gate KC Bunny
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,54.00,40.00
    >>Thassarian, aboard the Skybreaker, wants you to fly down to the gate of desolation, visiting the south, central, north, and northwest regions of the gate.
    .complete 13315,2 --Central Gate KC Bunny
    .target Central Gate KC Bunny
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,51.00,33.00
    >>Thassarian, aboard the Skybreaker, wants you to fly down to the gate of desolation, visiting the south, central, north, and northwest regions of the gate.
    .complete 13315,4 --Northwest Gate KC Bunny
    .target Northwest Gate KC Bunny
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,54.00,34.00
    >>Thassarian, aboard the Skybreaker, wants you to fly down to the gate of desolation, visiting the south, central, north, and northwest regions of the gate.
    .complete 13315,3 --North Gate KC Bunny
    .target North Gate KC Bunny
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13315 >>Turn in Sneak Preview
    .accept 13318 >>Accept Drag and Drop
    .accept 13319 >>Accept Chain of Command
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,54.30,46.10
    >>Kill |cRXP_ENEMY_Bitter Initiate|r and loot |cRXP_LOOT_Orb of Illusion|r
    >>Kill |cRXP_ENEMY_Overseer Faedris|r
    .collect 44246,1,13318,1 --Orb of Illusion (1)
    .complete 13319,1 --Overseer Faedris slain (1)
    .mob Bitter Initiate
    .mob Overseer Faedris
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,53.93,45.56
    >>Interact with |cRXP_FRIENDLY_Dark Subjugators|r
    .complete 13318,1 --Dark Subjugator (3)
    .target Dark Subjugator
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13318 >>Turn in Drag and Drop
    .accept 13320 >>Accept Cannot Reproduce
    .accept 13342 >>Accept Not a Bug
    .accept 13345 >>Accept Need More Info
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,48.94,33.20
    >>Kill |cRXP_ENEMY_Dark Sample KC Bunny|r
    >>Kill |cRXP_ENEMY_Green Sample KC Bunny|r
    >>Kill |cRXP_ENEMY_Blue Sample KC Bunny|r
    >>Kill |cRXP_ENEMY_Overseer Savryn|r
    .complete 13320,3 --Dark Sample KC Bunny slain (1)
    .complete 13320,2 --Green Sample KC Bunny slain (1)
    .complete 13320,1 --Blue Sample KC Bunny slain (1)
    .complete 13319,4 --Overseer Savryn slain (1)
    .mob Dark Sample KC Bunny
    .mob Green Sample KC Bunny
    .mob Blue Sample KC Bunny
    .mob Overseer Savryn
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,50.88,30.23,0
    .goto 118,50.88,30.23,40,0
    .goto 118,53.28,30.34,40,0
    .goto 118,55.93,29.10,40,0
    >>Kill |cRXP_ENEMY_Cult Researcher|r and loot |cRXP_LOOT_Cult of the Damned Research - Page 2|r
    >>Kill |cRXP_ENEMY_Cult Researcher|r and loot |cRXP_LOOT_Cult of the Damned Research - Page 1|r
    >>Kill |cRXP_ENEMY_Cult Researcher|r and loot |cRXP_LOOT_Cult of the Damned Research - Page 3|r
    >>Kill |cRXP_ENEMY_Overseer Veraj|r
    >>Kill |cRXP_ENEMY_Enslaved Minion|r and loot |cRXP_LOOT_Dark Matter|r
    >>Kill |cRXP_ENEMY_Overseer Jhaeqon|r
    .collect 44460,1,13345,1 --Cult of the Damned Research - Page 2 (1)
    .collect 44459,1,13345,1 --Cult of the Damned Research - Page 1 (1)
    .collect 44461,1,13345,1 --Cult of the Damned Research - Page 3 (1)
    .complete 13319,3 --Overseer Veraj slain (1)
    .collect 44434,1,13342,1 --Dark Matter (1)
    .complete 13319,2 --Overseer Jhaeqon slain (1)
    .mob Cult Researcher
    .mob Overseer Veraj
    .mob Enslaved Minion
    .mob Overseer Jhaeqon
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,53.83,33.63
    >>Kill |cRXP_ENEMY_Dark Messenger|r
    .complete 13342,1 --Dark Messenger slain (1)
    .mob Dark Messenger
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Boltwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13320 >>Turn in Cannot Reproduce
    .accept 13321 >>Accept Retest Now
    .unitscan Chief Engineer Boltwrench
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13342 >>Turn in Not a Bug
    .turnin 13319 >>Turn in Chain of Command
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Knight-Captain Drosche|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13341 >>Accept Joining the Assault
    .unitscan Knight-Captain Drosche
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,53.93,45.56
    >>Kill |cRXP_ENEMY_Dark Subjugators|r, |cRXP_ENEMY_Void Summoners|r, |cRXP_ENEMY_Shadow Channelers|r and |cRXP_ENEMY_Cult Taskmasters|r. Loot them for |cRXP_LOOT_Tainted Essence|r
    .collect 44301,1,13321,1 --Tainted Essence (1)
    .mob Dark Subjugator
    .mob Void Summoner
    .mob Shadow Channeler
    .mob Cult Taskmaster
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,62.56,51.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ground Commander Koup|r
    .turnin 13341 >>Turn in Joining the Assault
    .target Ground Commander Koup
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13295 >>Turn in Basic Chemistry
    .accept 13386 >>Accept Exploiting an Opening
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,63.59,52.34
    >>Chief Engineer Boltwrench aboard the Skybreaker wants you to throw a Writhing Mass into a cauldron at Aldur'thar.
    .complete 13321,1 --Writhing Mass KC Bunny (1)
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Boltwrench|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13321 >>Turn in Retest Now
    .accept 13296 >>Accept Get to Ymirheim!
    .unitscan Chief Engineer Boltwrench
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,56.99,62.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frazzle Geargrinder|r
    .turnin 13296 >>Turn in Get to Ymirheim!
    .target Frazzle Geargrinder
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,51.75,86.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kendall|r
    .turnin 13386 >>Turn in Exploiting an Opening
    .accept 13387 >>Accept Securing the Perimeter
    .target Captain Kendall
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,52.67,87.16,0
    .goto 118,52.67,87.16,40,0
    .goto 118,55.28,88.99,40,0
    >>Kill |cRXP_ENEMY_Hulking Horrors|r
    .complete 13387,1 --Hulking Horror slain (10)
    .mob Hulking Horror
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,51.75,86.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Kendall|r
    .turnin 13387 >>Turn in Securing the Perimeter
    .accept 13388 >>Accept Set it Off!
    .target Captain Kendall
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,54.37,86.30
    >>Click the |cRXP_PICK_Saronite Bomb Stack|r
    .turnin 13388 >>Turn in Set it Off!
    .accept 13389 >>Accept A Short Fuse
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,53.98,87.28
    >>Click the |cRXP_PICK_Pulsing Crystal|r
    .turnin 13389 >>Turn in A Short Fuse
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,53.80,86.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .accept 13390 >>Accept A Voice in the Dark
    .turnin 13390 >>Turn in A Voice in the Dark
    .accept 13391 >>Accept Time to Hide
    .target Matthias Lehner
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,57.99,85.47
    >>Kill |cRXP_ENEMY_Faceless Lurkers|r. Loot them for |cRXP_LOOT_Faceless One's Blood|r
    .complete 13391,1 --Faceless One's Blood (3)
    .mob Faceless Lurker
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,53.80,86.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .turnin 13391 >>Turn in Time to Hide
    .accept 13392 >>Accept Return to the Surface
    .target Matthias Lehner
step
    #completewith next
    .zone 80 >>Travel to Moonglade
    .zoneskip 80
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 80,36.18,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Remulos|r
    .turnin 13073 >>Turn in The Keeper's Favor
    .accept 13074 >>Accept Hope Within the Emerald Nightmare
    .target Keeper Remulos
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 80,34.31,39.60,0
    .goto 80,34.31,39.60,40,0
    .goto 80,32.66,41.31,40,0
    >>Pick up |cRXP_PICK_Emerald Acorn|r from the ground
    .complete 13074,1 --Emerald Acorn (3)
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 80,36.18,41.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Remulos|r
    .turnin 13074 >>Turn in Hope Within the Emerald Nightmare
    .accept 13075 >>Accept The Boon of Remulos
    .target Keeper Remulos
step << Druid
    .goto 80,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .turnin 28289 >>Turn in Moonglade Calls
    .target Loganaar
    .isOnQuest 28289
step << NightElf Druid/Worgen Druid
    .goto 80,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .turnin 27273 >>Turn in An Invitation from Moonglade
    .target Loganaar
    .isOnQuest 27273
step << NightElf Druid/Worgen Druid
    .goto 80,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .accept 27356 >>Accept The Circle's Future
    .target Loganaar
step << NightElf Druid/Worgen Druid
    .goto 80,53.34,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narianna|r
    .turnin 27356 >>Turn in The Circle's Future
    .target Narianna
    .isQuestComplete 27356
step
    #completewith next
    .zone 118 >>Leave Moonglade for Icecrown
    .zoneskip 118
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13392 >>Turn in Return to the Surface
    .accept 13393 >>Accept Field Repairs
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,64.31,52.95,0
    .goto 118,64.31,52.95,40,0
    .goto 118,66.83,52.02,40,0
    .goto 118,66.88,54.58,40,0
    >>Kill |cRXP_ENEMY_Scavenging Geists|r. Loot them for |cRXP_LOOT_Demolisher Parts|r
    .complete 13393,1 --Demolisher Parts (5)
    .mob Scavenging Geist
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,68.04,51.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrecked Demolisher|r
    .turnin 13393 >>Turn in Field Repairs
    .target Wrecked Demolisher
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,68.02,51.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .accept 13394 >>Accept Do Your Worst
    .target Matthias Lehner
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,65.13,46.53,0
    .goto 118,65.13,46.53,40,0
    .goto 118,63.28,44.00,40,0
    .goto 118,65.32,42.34,40,0
    >>Kill |cRXP_ENEMY_Bone Giants|r
    >>Kill |cRXP_ENEMY_Frostskull Magus|r
    >>Kill |cRXP_ENEMY_Decomposed Ghouls|r
    .complete 13394,3 --Bone Giant slain (2)
    .complete 13394,2 --Frostskull Magus slain (8)
    .complete 13394,1 --Decomposed Ghoul slain (150)
    .mob Bone Giant
    .mob Frostskull Magus
    .mob Decomposed Ghoul
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,64.52,43.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .turnin 13394 >>Turn in Do Your Worst
    .accept 13395 >>Accept Army of the Damned
    .target Matthias Lehner
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,65.23,44.14
    >>Kill |cRXP_ENEMY_Lordaeron Footsoldiers|r, |cRXP_ENEMY_Lordaeron Captains|r and |cRXP_ENEMY_Ghoulish Minions|r
    .complete 13395,1 --Lordaeron Footsoldier (8)
    .mob Lordaeron Footsoldier
    .mob Lordaeron Captain
    .mob Ghoulish Minion
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,64.52,43.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .turnin 13395 >>Turn in Army of the Damned
    .accept 13396 >>Accept Futility
    .target Matthias Lehner
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13396 >>Turn in Futility
    .accept 13397 >>Accept Sindragosa's Fall
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,68.28,37.72,0
    .goto 118,68.28,37.72,40,0
    .goto 118,69.84,40.06,40,0
    >>Kill |cRXP_ENEMY_Cultist Corrupters|r
    >>Kill |cRXP_ENEMY_Vrykul Necrolords|r
    .complete 13397,2 --Cultist Corrupter slain (8)
    .complete 13397,3 --Vrykul Necrolord slain (3)
    .mob Cultist Corrupter
    .mob Vrykul Necrolord
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,71.60,37.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .accept 13398 >>Accept Where Dragons Fell
    .target Matthias Lehner
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,71.08,39.55,0
    .goto 118,71.08,39.55,40,0
    .goto 118,67.91,37.55,40,0
    >>Kill |cRXP_ENEMY_Frostbrood Whelps|r. Loot them for |cRXP_LOOT_Whelp Bone Dust|r
    .complete 13398,1 --Whelp Bone Dust (6)
    .mob Frostbrood Whelp
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,71.60,37.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .turnin 13398 >>Turn in Where Dragons Fell
    .accept 13399 >>Accept Time for Answers
    .target Matthias Lehner
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,79.84,30.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Bridenbrad|r
    .turnin 13075 >>Turn in The Boon of Remulos
    .accept 13076 >>Accept Time Yet Remains
    .target Crusader Bridenbrad
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,73.61,43.04,0
    .goto 118,73.61,43.04,40,0
    .goto 118,71.81,43.65,40,0
    >>Kill |cRXP_ENEMY_Wyrm Reanimators|r
    .complete 13397,1 --Wyrm Reanimator slain (5)
    .mob Wyrm Reanimator
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13397 >>Turn in Sindragosa's Fall
    .accept 13298 >>Accept Coprous the Defiled
    .unitscan Thassarian
step
    .goto 118,51.94,57.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blast Thunderbomb|r
    .target Blast Thunderbomb
    .home >>Set your Hearthstone to Blast Thunderbomb's inn
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,49.20,73.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .turnin 13399 >>Turn in Time for Answers
    .accept 13400 >>Accept The Hunter and the Prince
    .target Matthias Lehner
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,49.27,74.10
    >>Kill |cRXP_ENEMY_Illidan Stormrages|r
    .complete 13400,1 --Illidan Stormrage (8)
    .mob Illidan Stormrage
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,49.20,73.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matthias Lehner|r
    .turnin 13400 >>Turn in The Hunter and the Prince
    .accept 13401 >>Accept Knowledge is a Terrible Burden
    .target Matthias Lehner
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,60.77,62.16
    >>Kill |cRXP_ENEMY_Coprous the Defiled|r
    .complete 13298,1 --Coprous the Defiled slain (1)
    .mob Coprous the Defiled
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13298 >>Turn in Coprous the Defiled
    .turnin 13401 >>Turn in Knowledge is a Terrible Burden
    .accept 13402 >>Accept Tirion's Help
    .unitscan Thassarian
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13345 >>Turn in Need More Info
    .unitscan Thassarian
    .isQuestComplete 13345
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,79.79,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13076 >>Turn in Time Yet Remains
    .turnin 13402 >>Turn in Tirion's Help
    .accept 13077 >>Accept The Touch of an Aspect
    .accept 13403 >>Accept Tirion's Gambit
    .target Highlord Tirion Fordring
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,47.39,76.16,0
    .goto 118,47.39,76.16,40,0
    .goto 118,45.15,78.59,40,0
    >>Kill |cRXP_ENEMY_Cultist Acolyte|r and loot |cRXP_LOOT_Cultist Acolyte's Hood|r
    .collect 44784,1,13403,1 --Cultist Acolyte's Hood (1)
    .mob Cultist Acolyte
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,42.90,78.71
    >>Kill |cRXP_ENEMY_Tirion's Gambit Event Credit|r
    .complete 13403,1 --Tirion's Gambit Event Credit slain (1)
    .mob Tirion's Gambit Event Credit
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,79.79,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13403 >>Turn in Tirion's Gambit
    .target Highlord Tirion Fordring
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13155 >>Turn in Vereth the Cunning
    .target Vereth the Cunning
    .isOnQuest 13155
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .accept 13143 >>Accept New Recruit
    .target Vereth the Cunning
    .isQuestTurnedIn 13155 --any of: Vereth the Cunning
    .xp <77,1
step
    #loop
    .goto 118,55.69,72.52,0
    .goto 118,55.69,72.52,40,0
    .goto 118,55.94,75.47,40,0
    .goto 118,58.12,68.71,40,0
    >>Kill |cRXP_ENEMY_Lithe Stalkers|r
    .complete 13143,1 --Lithe Stalker slain (8)
    .mob Lithe Stalker
    .isOnQuest 13143
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13143 >>Turn in New Recruit
    .target Vereth the Cunning
    .isOnQuest 13143
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .accept 13145 >>Accept The Vile Hold
    .target Vereth the Cunning
    .isQuestTurnedIn 13143 --any of: New Recruit
    .xp <77,1
step
    .goto 118,57.85,74.37
    >>Open the |cRXP_PICK_Malykriss Furnace|r. Loot it for |cRXP_LOOT_Smelted Metal Bar|r
    .complete 13138,1 --Smelted Metal Bar (1)
    .isOnQuest 13138
step
    #loop
    .goto 118,58.64,73.98,0
    .goto 118,58.64,73.98,40,0
    .goto 118,57.93,70.77,40,0
    >>Kill |cRXP_ENEMY_Skeletal Runesmiths|r. Loot them for |cRXP_LOOT_Runed Saronite Plate|r
    .complete 13140,1 --Runed Saronite Plate (5)
    .mob Skeletal Runesmith
    .isOnQuest 13140
step
    .goto 118,59.02,74.49
    >>Kill |cRXP_ENEMY_Malykriss Runeworks Bunny|r
    .complete 13145,4 --Malykriss Runeworks Bunny slain (1)
    .mob Malykriss Runeworks Bunny
    .isOnQuest 13145
step
    .goto 118,56.17,79.62
    >>Kill |cRXP_ENEMY_Malykriss Altar of Sacrifice Bunny|r
    .complete 13145,1 --Malykriss Altar of Sacrifice Bunny slain (1)
    .mob Malykriss Altar of Sacrifice Bunny
    .isOnQuest 13145
step
    .goto 118,35.50,66.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Olakin Sainrith|r
    .turnin 13140 >>Turn in The Runesmiths of Malykriss
    .target Crusader Olakin Sainrith
    .isOnQuest 13140
step
    .goto 118,35.50,66.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Olakin Sainrith|r
    .turnin 13138 >>Turn in I'm Smelting... Smelting!
    .target Crusader Olakin Sainrith
    .isOnQuest 13138
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .accept 13152 >>Accept A Visit to the Doctor
    .target Darkrider Arly
    .isQuestTurnedIn 13134 --Spill Their Blood
    .isQuestTurnedIn 13138 --I'm Smelting... Smelting!
    .isQuestTurnedIn 13140 --The Runesmiths of Malykriss
    .xp <77,1
step
    .goto 118,35.50,66.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Olakin Sainrith|r
    .accept 13211 >>Accept By Fire Be Purged
    .target Crusader Olakin Sainrith
    .isQuestTurnedIn 13134 --Spill Their Blood
    .isQuestTurnedIn 13138 --I'm Smelting... Smelting!
    .isQuestTurnedIn 13140 --The Runesmiths of Malykriss
    .xp <77,1
step
    .goto 118,36.04,66.85
    >>Kill |cRXP_ENEMY_Festering Corpses|r
    .complete 13211,1 --Festering Corpse slain (7)
    .mob Festering Corpse
    .isOnQuest 13211
step
    .goto 118,35.91,67.05
    >>Interact with |cRXP_FRIENDLY_"Patches"|r
    .complete 13152,1 --"Patches"
    .target "Patches"
    .isOnQuest 13152
step
    .goto 118,35.82,67.16
    >>Kill |cRXP_ENEMY_Doctor Sabnok|r
    .complete 13152,2 --Doctor Sabnok slain (1)
    .mob Doctor Sabnok
    .isOnQuest 13152
step
    .goto 118,35.50,66.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Olakin Sainrith|r
    .turnin 13211 >>Turn in By Fire Be Purged
    .target Crusader Olakin Sainrith
    .isOnQuest 13211
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .turnin 13152 >>Turn in A Visit to the Doctor
    .target Darkrider Arly
    .isOnQuest 13152
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .accept 13144 >>Accept Killing Two Scourge With One Skeleton
    .target Darkrider Arly
    .isQuestTurnedIn 13152 --A Visit to the Doctor
    .isQuestTurnedIn 13211 --By Fire Be Purged
    .xp <77,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13346 >>Accept No Rest For The Wicked
    .unitscan Thassarian
    .isQuestTurnedIn 13345 --any of: Need More Info
    .xp <77,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,52.82,30.66
    >>Pick up |cRXP_PICK_Alumeth's Heart|r from the ground
    .collect 44477,1,13346,1 --Alumeth's Heart (1)
    .isOnQuest 13346
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,52.83,29.77
    >>Pick up |cRXP_PICK_Alumeth's Scepter|r from the ground
    .collect 44478,1,13346,1 --Alumeth's Scepter (1)
    .isOnQuest 13346
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,52.99,28.95
    >>Pick up |cRXP_PICK_Alumeth's Robes|r from the ground
    .collect 44479,1,13346,1 --Alumeth's Robes (1)
    .isOnQuest 13346
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,50.49,30.00
    >>Pick up |cRXP_PICK_Alumeth's Skull|r from the ground
    .collect 44476,1,13346,1 --Alumeth's Skull (1)
    .isOnQuest 13346
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,51.93,28.89
    >>Kill |cRXP_ENEMY_Alumeth the Ascended|r
    .complete 13346,1 --Alumeth the Ascended slain (1)
    .mob Alumeth the Ascended
    .isOnQuest 13346
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13346 >>Turn in No Rest For The Wicked
    .unitscan Thassarian
    .isOnQuest 13346
step << Human Priest/Human Shaman/Human Druid/Dwarf Priest/Dwarf Shaman/Dwarf Druid/NightElf Priest/NightElf Shaman/NightElf Druid/Gnome Priest/Gnome Shaman/Gnome Druid/Draenei Priest/Draenei Shaman/Draenei Druid/Worgen Priest/Worgen Shaman/Worgen Druid/Pandaren Priest/Pandaren Shaman/Pandaren Druid
    .goto 118,69.65,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Justicar Mariel Trueheart|r
    .turnin 24795 >>Turn in A Victory For The Silver Covenant
    .target Justicar Mariel Trueheart
    .isOnQuest 24795
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,74.12,31.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caladis Brightspear|r
    .turnin 24454 >>Turn in Return To Caladis Brightspear
    .target Caladis Brightspear
    .isOnQuest 24454
step
    .goto 118,79.84,30.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Bridenbrad|r
    .turnin 13079 >>Turn in The Boon of Alexstrasza
    .target Crusader Bridenbrad
    .isOnQuest 13079
step
    .goto 118,79.84,30.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Bridenbrad|r
    .turnin 13082 >>Turn in The Boon of A'dal
    .target Crusader Bridenbrad
    .isOnQuest 13082
step
    .goto 118,79.84,30.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crusader Bridenbrad|r
    .accept 13080 >>Accept Hope Yet Remains
    .target Crusader Bridenbrad
    .isQuestTurnedIn 13079 --any of: The Boon of Alexstrasza
    .xp <77,1
step
    .goto 118,79.78,30.83
    >>Click the |cRXP_PICK_Bridenbrad's Possessions|r
    .accept 13083 >>Accept Light Within the Darkness
    .isQuestTurnedIn 13082 --any of: The Boon of A'dal
    .xp <77,1
step
    #completewith next
    .hs >>Hearth to Blast Thunderbomb's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 118,54.49,59.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspeaker R'khem|r
    .accept 13308 >>Accept Mind Tricks
    .target Darkspeaker R'khem
    .isQuestTurnedIn 13224,13225 --any of: Orgrim's Hammer, The Skybreaker
    .xp <77,1
step
    .goto 118,55.12,59.37
    >>Kill |cRXP_ENEMY_Foreman Thaldrin|r and loot |cRXP_LOOT_Foreman's Key|r
    .complete 13308,1 --Foreman's Key (1)
    .mob Foreman Thaldrin
    .isOnQuest 13308
step
    .goto 118,54.49,59.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkspeaker R'khem|r
    .turnin 13308 >>Turn in Mind Tricks
    .target Darkspeaker R'khem
    .isOnQuest 13308
step
    .goto 118,60.58,68.75
    >>Kill |cRXP_ENEMY_Malykriss Icy Lookout Bunny|r
    .complete 13145,3 --Malykriss Icy Lookout Bunny slain (1)
    .mob Malykriss Icy Lookout Bunny
    .isOnQuest 13145
step
    .goto 118,58.09,70.92
    >>Kill |cRXP_ENEMY_Malykriss Blood Forge Bunny|r
    .complete 13145,2 --Malykriss Blood Forge Bunny slain (1)
    .mob Malykriss Blood Forge Bunny
    .isOnQuest 13145
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13145 >>Turn in The Vile Hold
    .target Vereth the Cunning
    .isOnQuest 13145
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .accept 13146 >>Accept Generosity Abounds
    .accept 13147 >>Accept Matchmaker
    .accept 13160 >>Accept Stunning View
    .target Vereth the Cunning
    .isQuestTurnedIn 13145 --any of: The Vile Hold
    .xp <77,1
step
    .goto 118,57.41,75.84
    >>Kill |cRXP_ENEMY_Scourge Bombs|r
    .complete 13146,1 --Scourge Bomb slain (8)
    .mob Scourge Bomb
    .isOnQuest 13146
step
    #loop
    .goto 118,58.71,76.34,0
    .goto 118,58.71,76.34,40,0
    .goto 118,59.65,72.76,40,0
    >>Kill |cRXP_ENEMY_Iceskin Sentries|r
    .complete 13160,1 --Iceskin Sentry slain (12)
    .mob Iceskin Sentry
    .isOnQuest 13160
step
    #loop
    .goto 118,57.44,75.38,0
    .goto 118,57.44,75.38,40,0
    .goto 118,59.49,73.84,40,0
    >>Kill |cRXP_ENEMY_Umbral Brutes|r
    .complete 13147,1 --Umbral Brute slain (8)
    .mob Umbral Brute
    .isOnQuest 13147
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13146 >>Turn in Generosity Abounds
    .target Vereth the Cunning
    .isOnQuest 13146
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13160 >>Turn in Stunning View
    .target Vereth the Cunning
    .isOnQuest 13160
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13147 >>Turn in Matchmaker
    .target Vereth the Cunning
    .isOnQuest 13147
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .accept 13163 >>Accept The Rider of Blood
    .accept 13162 >>Accept The Rider of Frost
    .accept 13161 >>Accept The Rider of the Unholy
    .target Vereth the Cunning
    .isQuestTurnedIn 13160 --any of: Stunning View
    .xp <77,1
step
    .goto 118,56.17,80.31
    >>Kill |cRXP_ENEMY_Rokir|r
    .complete 13161,1 --Rokir slain (1)
    .mob Rokir
    .isOnQuest 13161
step
    .goto 118,59.11,71.99
    >>Kill |cRXP_ENEMY_Baelok|r
    .complete 13163,1 --Baelok slain (1)
    .mob Baelok
    .isOnQuest 13163
step
    .goto 118,61.88,68.58
    >>Kill |cRXP_ENEMY_Sapph|r
    .complete 13162,1 --Sapph slain (1)
    .mob Sapph
    .isOnQuest 13162
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13163 >>Turn in The Rider of Blood
    .target Vereth the Cunning
    .isOnQuest 13163
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13161 >>Turn in The Rider of the Unholy
    .target Vereth the Cunning
    .isOnQuest 13161
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13162 >>Turn in The Rider of Frost
    .target Vereth the Cunning
    .isOnQuest 13162
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .accept 13164 >>Accept The Fate of Bloodbane
    .target Vereth the Cunning
    .isQuestTurnedIn 13161 --The Rider of the Unholy
    .isQuestTurnedIn 13162 --The Rider of Frost
    .isQuestTurnedIn 13163 --The Rider of Blood
    .xp <77,1
step
    .goto 118,54.44,86.13
    >>Kill |cRXP_ENEMY_Orbaz Bloodbane|r
    .complete 13164,1 --Orbaz Bloodbane slain (1)
    .mob Orbaz Bloodbane
    .isOnQuest 13164
step
    .goto 118,31.04,70.26
    >>Kill |cRXP_ENEMY_Chained Abominations|r and |cRXP_ENEMY_Burning Skeletons|r
    .complete 13144,1 --Chained Abomination (3)
    .mob Chained Abomination
    .mob Burning Skeleton
    .isOnQuest 13144
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .turnin 13144 >>Turn in Killing Two Scourge With One Skeleton
    .target Darkrider Arly
    .isOnQuest 13144
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .accept 13212 >>Accept He's Gone to Pieces
    .target Darkrider Arly
    .isQuestTurnedIn 13144 --any of: Killing Two Scourge With One Skeleton
    .xp <77,1
step
    #loop
    .goto 118,36.40,66.80,0
    .goto 118,36.40,66.80,40,0
    .goto 118,37.00,71.20,40,0
    .goto 118,32.00,70.00,40,0
    >>Kill |cRXP_ENEMY_Corpulent Horror|r and loot |cRXP_LOOT_Olakin's Right Arm|r
    .complete 13212,4 --Olakin's Right Arm (1)
    .mob Corpulent Horror
    .isOnQuest 13212
step
    #loop
    .goto 118,36.40,66.80,0
    .goto 118,36.40,66.80,40,0
    .goto 118,37.00,71.20,40,0
    .goto 118,32.00,70.00,40,0
    >>Kill |cRXP_ENEMY_Corpulent Horror|r and loot |cRXP_LOOT_Olakin's Torso|r
    .complete 13212,1 --Olakin's Torso (1)
    .mob Corpulent Horror
    .isOnQuest 13212
step
    #loop
    .goto 118,36.40,66.80,0
    .goto 118,36.40,66.80,40,0
    .goto 118,37.00,71.20,40,0
    .goto 118,32.00,70.00,40,0
    >>Kill |cRXP_ENEMY_Corpulent Horror|r and loot |cRXP_LOOT_Olakin's Left Arm|r
    .complete 13212,3 --Olakin's Left Arm (1)
    .mob Corpulent Horror
    .isOnQuest 13212
step
    #loop
    .goto 118,36.40,66.80,0
    .goto 118,36.40,66.80,40,0
    .goto 118,37.00,71.20,40,0
    .goto 118,32.00,70.00,40,0
    >>Kill |cRXP_ENEMY_Corpulent Horror|r and loot |cRXP_LOOT_Olakin's Legs|r
    .complete 13212,2 --Olakin's Legs (1)
    .mob Corpulent Horror
    .isOnQuest 13212
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .turnin 13212 >>Turn in He's Gone to Pieces
    .target Darkrider Arly
    .isOnQuest 13212
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .accept 13220 >>Accept Putting Olakin Back Together Again
    .target Darkrider Arly
    .isQuestTurnedIn 13212 --any of: He's Gone to Pieces
    .xp <77,1
step
    .goto 118,34.70,66.00
    >>Pick up |cRXP_PICK_Spool of Thread|r from the ground
    .collect 43567,1,13220,1 --Spool of Thread (1)
    .isOnQuest 13220
step
    .goto 118,36.60,67.60
    >>Pick up |cRXP_PICK_The Doctor's Cleaver|r from the ground
    .collect 43568,1,13220,1 --The Doctor's Cleaver (1)
    .isOnQuest 13220
step
    .goto 118,35.60,66.73
    >>Kill |cRXP_ENEMY_Crusader Olakin Sainrith|r
    .complete 13220,1 --Crusader Olakin Sainrith slain (1)
    .mob Crusader Olakin Sainrith
    .isOnQuest 13220
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .turnin 13220 >>Turn in Putting Olakin Back Together Again
    .target Darkrider Arly
    .isOnQuest 13220
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .accept 13235 >>Accept The Flesh Giant Champion
    .target Darkrider Arly
    .isQuestTurnedIn 13220 --any of: Putting Olakin Back Together Again
    .xp <77,1
step
    .goto 118,29.80,61.60
    >>Kill |cRXP_ENEMY_Morbidus|r
    .complete 13235,1 --Morbidus slain (1)
    .mob Morbidus
    .isOnQuest 13235
step
    .goto 118,35.39,66.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkrider Arly|r
    .turnin 13235 >>Turn in The Flesh Giant Champion
    .target Darkrider Arly
    .isOnQuest 13235
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13337 >>Accept The Ironwall Rampart
    .unitscan Thassarian
    .isQuestTurnedIn 13332 --Raise the Barricades
    .isQuestTurnedIn 13346 --No Rest For The Wicked
    .xp <77,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Captain Justin Bartlett|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13314 >>Accept Get the Message
    .unitscan High Captain Justin Bartlett
    .isQuestTurnedIn 13332 --any of: Raise the Barricades
    .xp <77,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13334 >>Accept Bloodspattered Banners
    .unitscan Thassarian
    .isQuestTurnedIn 13332 --any of: Raise the Barricades
    .xp <77,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,51.29,38.06,0
    .goto 118,51.29,38.06,40,0
    .goto 118,49.32,43.60,40,0
    .goto 118,46.79,39.70,40,0
    >>Kill |cRXP_ENEMY_Scourge Converters|r
    .complete 13334,3 --Scourge Converter slain (5)
    .mob Scourge Converter
    .isOnQuest 13334
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,45.40,46.00
    >>Kill |cRXP_ENEMY_Grimkor the Wicked|r
    .complete 13337,1 --Grimkor the Wicked slain (1)
    .mob Grimkor the Wicked
    .isOnQuest 13337
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,42.33,50.36,0
    .goto 118,42.33,50.36,40,0
    .goto 118,43.86,53.38,40,0
    >>Kill |cRXP_ENEMY_Orgrim's Hammer Scouts|r. Loot them for |cRXP_LOOT_Orgrim's Hammer Dispatch|r
    .complete 13314,1 --Orgrim's Hammer Dispatch (6)
    .mob Orgrim's Hammer Scout
    .isOnQuest 13314
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,41.33,49.54,0
    .goto 118,41.33,49.54,40,0
    .goto 118,39.79,52.03,40,0
    .goto 118,46.39,48.66,40,0
    >>Kill |cRXP_ENEMY_Scourge Banner-Bearers|r
    .complete 13334,1 --Scourge Banner-Bearer slain (5)
    .mob Scourge Banner-Bearer
    .isOnQuest 13334
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,44.65,52.15,0
    .goto 118,44.65,52.15,40,0
    .goto 118,44.10,55.36,40,0
    .goto 118,46.66,50.00,40,0
    >>Kill |cRXP_ENEMY_Converted Heros|r
    .complete 13334,2 --Converted Hero slain (20)
    .mob Converted Hero
    .isOnQuest 13334
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13337 >>Turn in The Ironwall Rampart
    .unitscan Thassarian
    .isOnQuest 13337
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13334 >>Turn in Bloodspattered Banners
    .unitscan Thassarian
    .isOnQuest 13334
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13335 >>Accept Before the Gate of Horror
    .unitscan Thassarian
    .isQuestTurnedIn 13334 --Bloodspattered Banners
    .isQuestTurnedIn 13337 --The Ironwall Rampart
    .xp <77,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,46.97,62.41,0
    .goto 118,46.97,62.41,40,0
    .goto 118,44.78,59.19,40,0
    >>Interact with |cRXP_FRIENDLY_Skeletal Reavers|r
    .complete 13335,1 --Skeletal Reaver (6)
    .target Skeletal Reaver
    .isOnQuest 13335
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Captain Justin Bartlett|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13314 >>Turn in Get the Message
    .unitscan High Captain Justin Bartlett
    .isOnQuest 13314
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Absalan the Pious|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13221 >>Turn in I'm Not Dead Yet!
    .unitscan Absalan the Pious
    .isOnQuest 13221
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13335 >>Turn in Before the Gate of Horror
    .unitscan Thassarian
    .isOnQuest 13335
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 13338 >>Accept The Guardians of Corp'rethar
    .accept 13339 >>Accept Shatter the Shards
    .unitscan Thassarian
    .isQuestTurnedIn 13335 --any of: Before the Gate of Horror
    .xp <77,1
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,49.81,66.73
    >>Open the |cRXP_PICK_Shard of Despair|r. Loot it for |cRXP_LOOT_Broken Shard of Despair|r
    .complete 13339,2 --Broken Shard of Despair (1)
    .isOnQuest 13339
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,47.82,68.12
    >>Open the |cRXP_PICK_Shard of Horror|r. Loot it for |cRXP_LOOT_Broken Shard of Horror|r
    .complete 13339,1 --Broken Shard of Horror (1)
    .isOnQuest 13339
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    .goto 118,45.83,69.51
    >>Open the |cRXP_PICK_Shard of Suffering|r. Loot it for |cRXP_LOOT_Broken Shard of Suffering|r
    .complete 13339,3 --Broken Shard of Suffering (1)
    .isOnQuest 13339
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,45.67,69.62,0
    .goto 118,45.67,69.62,40,0
    .goto 118,41.41,69.14,40,0
    .goto 118,50.03,66.57,40,0
    >>Kill |cRXP_ENEMY_Harbinger of Horrors|r
    .complete 13338,1 --Harbinger of Horror slain (5)
    .mob Harbinger of Horror
    .isOnQuest 13338
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,44.60,69.24,0
    .goto 118,44.60,69.24,40,0
    .goto 118,42.86,68.94,40,0
    >>Kill |cRXP_ENEMY_Corp'rethar Guardians|r
    .complete 13338,2 --Corp'rethar Guardian slain (5)
    .mob Corp'rethar Guardian
    .isOnQuest 13338
step
    .goto 118,54.15,71.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereth the Cunning|r
    .turnin 13164 >>Turn in The Fate of Bloodbane
    .target Vereth the Cunning
    .isOnQuest 13164
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13338 >>Turn in The Guardians of Corp'rethar
    .unitscan Thassarian
    .isOnQuest 13338
step << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    #loop
    .goto 118,63.81,56.68,0
    .goto 118,63.81,56.68,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,55.97,37.88,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13339 >>Turn in Shatter the Shards
    .unitscan Thassarian
    .isOnQuest 13339
step
    .goto 118,79.79,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13080 >>Turn in Hope Yet Remains
    .target Highlord Tirion Fordring
    .isOnQuest 13080
step
    .goto 118,79.79,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 13083 >>Turn in Light Within the Darkness
    .target Highlord Tirion Fordring
    .isOnQuest 13083
step
    .goto 118,79.79,71.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .accept 13081 >>Accept The Will of the Naaru
    .target Highlord Tirion Fordring
    .isQuestTurnedIn 13080 --any of: Hope Yet Remains
    .xp <77,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 80 >>Travel to Moonglade
    .zoneskip 80
    .isQuestComplete 27726
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 80,45.47,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Windsong|r
    .turnin 27726 >>Turn in Hero's Call: Mount Hyjal!
    .target Emissary Windsong
    .isQuestComplete 27726
step
    +|cRXP_WARN_That is all of Icecrown for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dragonblight|r: The Touch of an Aspect << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
    >>|cRXP_FRIENDLY_Shattrath City|r: The Will of the Naaru
    >>|cRXP_FRIENDLY_Shadowfang Keep - Lower Observatory (fake ID for Shadowfang Keep), Elsewhere and back here|r: The Circle's Future << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Need More Info << Warrior/Paladin/Hunter/Rogue/Priest/Shaman/Mage/Warlock/Druid
step
    +|cRXP_WARN_Suggested next zones at level 81|r: |cRXP_FRIENDLY_Deepholm|r (about 1.2 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Icecrown is planned from level 84.|r Load its guide for level 84 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 79 - 85 Icecrown
#subweight -79
#name 84-85 Icecrown
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step << NightElf Druid/Worgen Druid
    .goto 80,53.34,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narianna|r
    .turnin 27356 >>Turn in The Circle's Future
    .target Narianna
    .isQuestComplete 27356
step
    .goto 80,45.47,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Windsong|r
    .accept 25316 >>Accept As Hyjal Burns
    .target Emissary Windsong
step
    #completewith next
    .zone 118 >>Leave Moonglade for Icecrown
    .zoneskip 118
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,52.77,30.04
    >>Kill |cRXP_ENEMY_Cult Researcher|r and loot |cRXP_LOOT_Cult of the Damned Research - Page 3|r
    .collect 44461,1,13345,1 --Cult of the Damned Research - Page 3 (1)
    .mob Cult Researcher
    .isOnQuest 13345
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,52.77,30.04
    >>Kill |cRXP_ENEMY_Cult Researcher|r and loot |cRXP_LOOT_Cult of the Damned Research - Page 2|r
    .collect 44460,1,13345,1 --Cult of the Damned Research - Page 2 (1)
    .mob Cult Researcher
    .isOnQuest 13345
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,52.77,30.04
    >>Kill |cRXP_ENEMY_Cult Researcher|r and loot |cRXP_LOOT_Cult of the Damned Research - Page 1|r
    .collect 44459,1,13345,1 --Cult of the Damned Research - Page 1 (1)
    .mob Cult Researcher
    .isOnQuest 13345
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 118,55.97,37.88,0
    .goto 118,55.97,37.88,40,0
    .goto 118,57.65,38.03,40,0
    .goto 118,56.33,42.68,40,0
    .goto 118,59.20,41.94,40,0
    .goto 118,60.65,45.44,40,0
    .goto 118,62.09,48.88,40,0
    .goto 118,60.79,52.59,40,0
    .goto 118,61.70,55.18,40,0
    .goto 118,63.81,56.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 13345 >>Turn in Need More Info
    .unitscan Thassarian
    .isQuestComplete 13345
step << Human Warrior/Human Paladin/Human Hunter/Human Rogue/Human DeathKnight/Human Mage/Human Warlock/Dwarf Warrior/Dwarf Paladin/Dwarf Hunter/Dwarf Rogue/Dwarf DeathKnight/Dwarf Mage/Dwarf Warlock/NightElf Warrior/NightElf Paladin/NightElf Hunter/NightElf Rogue/NightElf DeathKnight/NightElf Mage/NightElf Warlock/Gnome Warrior/Gnome Paladin/Gnome Hunter/Gnome Rogue/Gnome DeathKnight/Gnome Mage/Gnome Warlock/Draenei Warrior/Draenei Paladin/Draenei Hunter/Draenei Rogue/Draenei DeathKnight/Draenei Mage/Draenei Warlock/Worgen Warrior/Worgen Paladin/Worgen Hunter/Worgen Rogue/Worgen DeathKnight/Worgen Mage/Worgen Warlock/Pandaren Warrior/Pandaren Paladin/Pandaren Hunter/Pandaren Rogue/Pandaren DeathKnight/Pandaren Mage/Pandaren Warlock
    .goto 118,74.12,31.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caladis Brightspear|r
    .accept 24796 >>Accept A Victory For The Silver Covenant
    .target Caladis Brightspear
    .isQuestTurnedIn 24553 --any of: The Purification of Quel'Delar
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,74.12,31.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caladis Brightspear|r
    .accept 24522 >>Accept Journey To The Sunwell
    .target Caladis Brightspear
    .isQuestTurnedIn 24480 --any of: The Halls Of Reflection
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,74.12,31.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caladis Brightspear|r
    .accept 24476 >>Accept Tempering The Blade
    .target Caladis Brightspear
    .isQuestTurnedIn 24461 --any of: Reforging The Sword
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,74.12,31.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caladis Brightspear|r
    .accept 14444 >>Accept What The Dragons Know
    .target Caladis Brightspear
    .isQuestTurnedIn 14443 --any of: The Battered Hilt
    .xp <80,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 118,74.12,31.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caladis Brightspear|r
    .turnin 24476 >>Turn in Tempering The Blade
    .target Caladis Brightspear
    .isQuestComplete 24476
step
    +|cRXP_WARN_End of the Icecrown route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: What The Dragons Know << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: A Victory For The Silver Covenant << Human Warrior/Human Paladin/Human Hunter/Human Rogue/Human DeathKnight/Human Mage/Human Warlock/Dwarf Warrior/Dwarf Paladin/Dwarf Hunter/Dwarf Rogue/Dwarf DeathKnight/Dwarf Mage/Dwarf Warlock/NightElf Warrior/NightElf Paladin/NightElf Hunter/NightElf Rogue/NightElf DeathKnight/NightElf Mage/NightElf Warlock/Gnome Warrior/Gnome Paladin/Gnome Hunter/Gnome Rogue/Gnome DeathKnight/Gnome Mage/Gnome Warlock/Draenei Warrior/Draenei Paladin/Draenei Hunter/Draenei Rogue/Draenei DeathKnight/Draenei Mage/Draenei Warlock/Worgen Warrior/Worgen Paladin/Worgen Hunter/Worgen Rogue/Worgen DeathKnight/Worgen Mage/Worgen Warlock/Pandaren Warrior/Pandaren Paladin/Pandaren Hunter/Pandaren Rogue/Pandaren DeathKnight/Pandaren Mage/Pandaren Warlock
    >>|cRXP_FRIENDLY_Isle of Quel'Danas|r: Journey To The Sunwell << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Mount Hyjal|r: As Hyjal Burns
step
    +|cRXP_WARN_Suggested next zones at level 84|r: |cRXP_FRIENDLY_Deepholm|r (about 0.6 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
