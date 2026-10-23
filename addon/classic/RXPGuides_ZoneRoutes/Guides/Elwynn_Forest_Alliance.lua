-- 1-12 Elwynn Forest: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Classic Era data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 1, 12, 15).
-- Split into 4 guides, listed under "1 - 16 Elwynn Forest" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/classic/Elwynn Forest.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Elwynn Forest
#subweight -1
#name 1-5 Elwynn Forest: around Marshal McBride
#next Zone Routes (Alliance)\5-10 Elwynn Forest: around Marshal Dughan

step << Warlock
    .goto 1429/0,-195.49,-8926.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >>Accept The Stolen Tome
    .target Drusilla La Salle
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .train 348 >> Train |T135817:0|t[Immolate]
    .target Drusilla La Salle
step << Warlock
    .goto 1429/0,-432.89,-8957.07
    >>Open the |cRXP_PICK_Stolen Books|r. Loot it for |cRXP_LOOT_Powers of the Void|r
    .complete 1598,1 --Powers of the Void (1)
step << Warlock
    >>|cRXP_WARN_Remain inside the Tent so |cRXP_ENEMY_Defias Thugs|r can't hit you|r
    .hs >> Hearth to Northshire Valley
step << Warlock
    .goto 1429/0,-195.49,-8926.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >>Turn in The Stolen Tome
    .target Drusilla La Salle
step
    .goto 1429/0,-136.48,-8933.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >>Accept A Threat Within
    .target Deputy Willem
step << Human Mage
    #completewith next
    .goto 1429/0,-146.20,-8999.660,50,0
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Wolves|r. Loot them until you have 10 copper worth of vendor items, then sell them|r
    .mob Young Wolf
    .money >0.001
step << Warrior
    .goto 1429/0,-75.05,-8872.36,35,0
    >>Kill |cRXP_ENEMY_Young Wolves|r until you have 10c+ worth of vendor trash
    >>|cRXP_WARN_You will train|r |T132333:0|t[Battle Shout] |cRXP_WARN_which increases early leveling speeds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target +Brother Danil
    .goto 1429/0,-112.74,-8901.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r inside downstairs
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target +Llane Beshere
    .goto 1429/0,-208.40,-8918.35
step << Human Mage
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    .vendor >> Vendor Trash until you have 10+ copper
    .target Brother Danil
step
    .goto 1429/0,-162.52,-8902.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 783 >>Turn in A Threat Within
    .accept 7 >>Accept Kobold Camp Cleanup
    .target Marshal McBride
step << Human Mage
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Khelden Bremen
step
    .goto 1429/0,-136.48,-8933.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >>Accept Eagan Peltskinner
    .target Deputy Willem
step << Human Mage
    .goto 1429/0,-68.11,-8874.67
    .vendor >>Kill wolves until you have 50c worth of vendor trash. Vendor, then buy x10 water from Brother Danil.
    .collect 159,10
step << Human Mage
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 159,10,7,1
    .target Brother Danil
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 5261 >>Turn in Eagan Peltskinner
    .accept 33 >>Accept Wolves Across the Border
    .target Eagan Peltskinner
step
    #loop
    .goto 1429/0,-84.07,-8851.30,0
    .goto 1429/0,-84.07,-8851.30,40,0
    .goto 1429/0,-116.01,-8771.44,40,0
    .goto 1429/0,-220.48,-8773.53,40,0
    >>Kill |cRXP_ENEMY_Timber Wolfs|r and |cRXP_ENEMY_Young Wolfs|r. Loot them for |cRXP_LOOT_Tough Wolf Meat|r
    >>Kill |cRXP_ENEMY_Kobold Vermins|r
    .complete 33,1 --Tough Wolf Meat (8)
    .complete 7,1 --Kobold Vermin slain (10)
    .mob Timber Wolf
    .mob Young Wolf
    .mob Kobold Vermin
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .turnin 33 >>Turn in Wolves Across the Border
    .target Eagan Peltskinner
step
    .goto 1429/0,-51.38,-8882.38,0
    .goto 1429/0,-129.75,-8852.04,45,0
    .goto 1429/0,-120.27,-8872.34,45,0
    .goto 1429/0,-86.89,-8888.26,45,0
    .goto 1429/0,-75.02,-8907.96,45,0
    .goto 1429/0,-51.38,-8882.38,45,0
    .goto 1429/0,-71.65,-8865.28,45,0
    .goto 1429/0,-51.03,-8835.79,45,0
    .goto 1429/0,-57.56,-8819.43,45,0
    .xp 3+1060 >> Grind to 1060+/1400xp
step << !Priest !Mage !Warlock !Rogue
    .goto 1429/0,-119.86,-8898.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Vendor Trash
    .target Godric Rothgar
step << Rogue
    .goto 1429/0,-104.21,-8909.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janos Hammerknuckle|r
    .vendor 78 >>|cRXP_BUY_Buy a|r |T135650:0|t[Dirk] |cRXP_BUY_from him if you can afford it|r
    .collect 2139,1
    .target Janos Hammerknuckle
step << Human Mage
    .goto 1429/0,-116.70,-8900.13
    .vendor >>vendor trash, then buy x10 more water from Brother Danil
step << Human Mage
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    .vendor >>Vendor Trash
    .collect 159,10,15,1
    .target Brother Danil
step
    .goto 1429/0,-162.52,-8902.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 7 >>Turn in Kobold Camp Cleanup
    .accept 15 >>Accept Investigate Echo Ridge
    .accept 3100 >>Accept Simple Letter << Human Warrior
    .accept 3101 >>Accept Consecrated Letter << Human Paladin
    .accept 3102 >>Accept Encrypted Letter << Human Rogue
    .accept 3103 >>Accept Hallowed Letter << Human Priest
    .accept 3104 >>Accept Glyphic Letter << Human Mage
    .accept 3105 >>Accept Tainted Letter << Human Warlock
    .target Marshal McBride
step << Human Rogue
    .goto 1429/0,-210.76,-8863.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >>Turn in Encrypted Letter while you are here
    .isQuestComplete 3102
    .target Jorik Kerridan
step << Human Warrior
    .goto 1429/0,-208.33,-8918.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 3100 >>Turn in Simple Letter
    .target Llane Beshere
step << Warrior
    .goto 1429/0,-208.40,-8918.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r inside downstairs
    .trainer >> Train your class spells
    .target Llane Beshere
step << Human Paladin
    .goto 1429/0,-214.92,-8914.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >>Turn in Consecrated Letter
    .target Brother Sammuel
step << Paladin
    .goto 1429/0,-215.03,-8914.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .trainer >> Train your class spells
    .target Brother Sammuel
step << Human Priest
    .goto 1429/0,-193.41,-8853.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 3103 >>Turn in Hallowed Letter
    .target Priestess Anetta
step << Priest
    .goto 1429/0,-193.34,-8853.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r inside downstairs
    .trainer >> Train your class spells
    .target Priestess Anetta
step << Human Mage
    .goto 1429/0,-188.20,-8851.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >>Turn in Glyphic Letter
    .target Khelden Bremen
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside upstairs
    .goto 1429/0,-188.23,-8851.58
    .trainer >> Train your class spells
    .target Khelden Bremen
step << Human Mage
    >>Go upstairs
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-182.65,-8865.42,15,0
    .goto 1429/0,-188.23,-8851.58
    .target Khelden Bremen
    >>Talk to |cRXP_FRIENDLY_Khelden Bremen|r
    .trainer >> Train your class spells
step << Human Mage
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Khelden Bremen
step << Human Warlock
    .goto 1429/0,-195.49,-8926.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Turn in Tainted Letter
    .target Drusilla La Salle
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Drusilla La Salle
step
    #loop
    .goto 1429/0,-204.16,-8749.46,0
    .goto 1429/0,-204.16,-8749.46,40,0
    .goto 1429/0,-108.37,-8707.56,40,0
    >>Kill |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kobold Worker slain (10)
    .mob Kobold Worker
step
    .goto 1429/0,-167.10,-8825.37,0
    .goto 1429/0,-51.03,-8835.79,0
    .goto 1429/0,-129.75,-8852.04,0
    .goto 1429/0,-77.31,-8825.42,45,0
    .goto 1429/0,-57.56,-8819.43,45,0
    .goto 1429/0,-51.03,-8835.79,45,0
    .goto 1429/0,-71.65,-8865.28,45,0
    .goto 1429/0,-51.38,-8882.38,45,0
    .goto 1429/0,-75.02,-8907.96,45,0
    .goto 1429/0,-86.89,-8888.26,45,0
    .goto 1429/0,-120.27,-8872.34,45,0
    .goto 1429/0,-129.75,-8852.04,45,0
    .goto 1429/0,-167.10,-8825.37,45,0
    .goto 1429/0,-143.15,-8809.45,45,0
    .goto 1429/0,-100.60,-8810.70,45,0
    .goto 1429/0,-91.36,-8793.80,45,0
    .goto 1429/0,-77.69,-8796.77,45,0
    .xp 3+1110 >>Grind to 1110+/1400xp
step << Human Mage
    .goto 1429/0,-120.17,-8897.82
    .vendor >>vendor trash
step
    .goto 1429/0,-162.52,-8902.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 15 >>Turn in Investigate Echo Ridge
    .accept 21 >>Accept Skirmish at Echo Ridge
    .target Marshal McBride
step
    .goto 1429/0,-136.48,-8933.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 18 >>Accept Brotherhood of Thieves
    .target Deputy Willem
step
    #loop
    .goto 1429/0,-288.51,-9068.41,0
    .goto 1429/0,-288.51,-9068.41,40,0
    .goto 1429/0,-369.38,-9061.23,40,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for |cRXP_LOOT_Red Burlap Bandana|r
    .complete 18,1 --Red Burlap Bandana (12)
    .mob Defias Thug
step << Rogue
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 4 >> Grind to level 4
step
    .goto 1429/0,-136.48,-8933.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18 >>Turn in Brotherhood of Thieves
    .accept 3903 >>Accept Milly Osworth
    .accept 6 >>Accept Bounty on Garrick Padfoot
    .target Deputy Willem
step << Human Mage
    .goto 1429/0,-120.17,-8897.82
    .vendor >>vendor trash, repair
step << Human Mage
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 159,10,21,1
    .target Brother Danil
step
    #loop
    .goto 1429/0,-131.97,-8640.44,0
    .goto 1429/0,-131.97,-8640.44,40,0
    .goto 1429/0,-182.30,-8587.20,40,0
    >>Kill |cRXP_ENEMY_Kobold Laborers|r
    .complete 21,1 --Kobold Laborer slain (12)
    .mob Kobold Laborer
step
    .goto 1429/0,-223.95,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >>Turn in Milly Osworth
    .accept 3904 >>Accept Milly's Harvest
    .target Milly Osworth
step
    .goto 1429/0,-162.52,-8902.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 21 >>Turn in Skirmish at Echo Ridge while you are here
    .isQuestComplete 21
    .target Marshal McBride
step << Human Rogue
    .goto 1429/0,-210.76,-8863.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >>Turn in Encrypted Letter
    .target Jorik Kerridan
step << Rogue
    .goto 1429/0,-210.90,-8863.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .train 1784 >>Train |T132320:0|t[Stealth]
    .train 921 >>Train |T133644:0|t[Pick Pocket]
    .target Jorik Kerridan
step
    #loop
    .goto 1429/0,-336.40,-9068.64,0
    .goto 1429/0,-336.40,-9068.64,40,0
    .goto 1429/0,-461.01,-9056.37,40,0
    >>Pick up |cRXP_PICK_Milly's Harvest|r from the ground
    >>Kill |cRXP_ENEMY_Garrick Padfoot|r and loot |cRXP_LOOT_Garrick's Head|r
    .complete 3904,1 --Milly's Harvest (8)
    .complete 6,1 --Garrick's Head (1)
    .mob Garrick Padfoot
step
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 5+1735 >> Grind to 1735+/2800xp << Paladin/Warrior
    .xp 5+1625 >> Grind to 1625+/2800xp << !Paladin !Warrior !Priest !Mage
    .xp 5+1085 >> Grind to 1085+/2800xp << Mage
    .xp 5+975 >> Grind to 975+/2800xp << Priest
step
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 5+1205 >> Grind to 1205+/2800xp << Paladin/Warrior
    .xp 5+1040 >> Grind to 1040+/2800xp << !Paladin !Warrior !Priest
    .xp 5+875 >> Grind to 875+/2800xp << Priest
step
    .goto 1429/0,-223.95,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >>Turn in Milly's Harvest
    .accept 3905 >>Accept Grape Manifest
    .target Milly Osworth
step
    .goto 1429/0,-136.48,-8933.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6 >>Turn in Bounty on Garrick Padfoot
    .target Deputy Willem
step
    .goto 1429/0,-162.52,-8902.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 21 >>Turn in Skirmish at Echo Ridge
    .accept 54 >>Accept Report to Goldshire
    .target Marshal McBride
step
    .goto 1429/0,-181.60,-8902.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Neals|r
    .turnin 3905 >>Turn in Grape Manifest
    .target Brother Neals
step << Human Priest
    .goto 1429/0,-193.41,-8853.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .accept 5623 >>Accept In Favor of the Light
    .target Priestess Anetta
step
    .goto 1429/0,-45.90,-9044.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >>Accept Rest and Relaxation
    .target Falkhaan Isenstrider
step << Human Mage
    .goto 1429/0,88.08,-9464.89
    .vendor >> vendor trash, repair
step
    .goto 1429/0,16.23,-9462.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158 >>Turn in Rest and Relaxation while you are here
    .isQuestComplete 2158
    .target Innkeeper Farley
step << Human Priest
    .goto 1429/0,33.24,-9460.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .turnin 5623 >>Turn in In Favor of the Light while you are here
    .isQuestComplete 5623
    .target Priestess Josetta
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >>Turn in Report to Goldshire while you are here
    .isQuestComplete 54
    .target Marshal Dughan
step
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step
    .goto 1453/0,615.01,-8848.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina|r
    .accept 332 >>Accept Wine Shop Advert
    .target Renato Gallina
step
    .goto 1453/0,675.50,-8884.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzetta Gallina|r
    .turnin 332 >>Turn in Wine Shop Advert while you are here
    .isQuestComplete 332
    .target Suzetta Gallina
step
    .goto 1453/0,640.14,-8782.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harlan Bagley|r
    .accept 333 >>Accept Harlan Needs a Resupply
    .target Harlan Bagley
step
    .goto 1453/0,713.54,-8777.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rema Schneider|r
    .turnin 333 >>Turn in Harlan Needs a Resupply while you are here
    .isQuestComplete 333
    .target Rema Schneider
step << Human Priest/Dwarf Priest
    .goto 1453/0,862.35,-8512.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5637 >>Turn in Desperate Prayer
    .target High Priestess Laurena
    .isOnQuest 5637
step << Human Priest/Dwarf Priest
    .goto 1453/0,862.35,-8512.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5636 >>Turn in Desperate Prayer
    .target High Priestess Laurena
    .isOnQuest 5636
step << Human Priest/Dwarf Priest
    .goto 1453/0,862.35,-8512.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5639 >>Turn in Desperate Prayer
    .target High Priestess Laurena
    .isOnQuest 5639
step << Human Priest/Dwarf Priest
    .goto 1453/0,862.35,-8512.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5640 >>Turn in Desperate Prayer
    .target High Priestess Laurena
    .isOnQuest 5640
step
    .goto 1453/0,713.54,-8777.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rema Schneider|r
    .turnin 333 >>Turn in Harlan Needs a Resupply
    .accept 334 >>Accept Package for Thurman
    .target Rema Schneider
step
    .goto 1453/0,675.50,-8884.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzetta Gallina|r
    .turnin 332 >>Turn in Wine Shop Advert
    .target Suzetta Gallina
step
    .goto 1453/0,809.25,-8961.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Schneider|r
    .turnin 334 >>Turn in Package for Thurman
    .target Thurman Schneider
step << Warlock
    .goto 1453/0,1041.54,-8983.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1715 >>Turn in The Slaughtered Lamb
    .target Gakin the Darkbinder
    .isOnQuest 1715
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Elwynn Forest
#subweight -1
#name 5-10 Elwynn Forest: around Marshal Dughan
--RouteBuilder:next
#next Zone Routes (Alliance)\10-13 Westfall: around Farmer Saldean;Zone Routes (Alliance)\10-15 Darkshore: around Terenthis;Zone Routes (Alliance)\4-9 Dun Morogh: around Alamar Grimm

step
    #completewith next
    .zone 1429 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 1429
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >>Turn in Report to Goldshire
    .target Marshal Dughan
    .isOnQuest 54
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 62 >>Accept The Fargodeep Mine
    .target Marshal Dughan
step << Warrior/Rogue/Paladin
    .goto 1429/0,87.87,-9456.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_which increase your melee damage by 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Smith Argus
step << Warrior
    .goto 1429/0,94.01,-9464.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from her if you can afford it|r
    .collect 2488,1
    .target Corina Steele
step << Rogue
    .goto 1429/0,94.01,-9464.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from her if you can afford it|r
    .collect 2494,1
    .target Corina Steele
step << Paladin
    .goto 1429/0,94.01,-9464.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_WARN_Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from her if you can afford it|r
    .collect 2493,1
    .target Corina Steele
step
    .goto 1429/0,31.85,-9460.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >>Accept Kobold Candles
    .target William Pestle
step
    .goto 1429/0,16.23,-9462.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158 >>Turn in Rest and Relaxation
    .target Innkeeper Farley
    .isOnQuest 2158
step << Human Mage
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >> Go Upstairs. Train your class spells
step << Human Mage
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farley|r
    .vendor 295 >> Vendor Trash. |cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_down to 2 silver|r
    .target Innkeeper Farley
step << Human Mage
    .goto 1429/0,34.28,-9472.99
    >>Jump onto the Chandelier downstairs
    >>Talk to |cRXP_FRIENDLY_Zaldimar|r through the wall
    .trainer >> Train your class spells (Fireball R2, Fire Blast)
    .target Zaldimar Wefhellt
step
    .goto 1429/0,16.23,-9462.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .target Innkeeper Farley
    .home >>Set your Hearthstone to Innkeeper Farley's inn
step
    .xp 6 >> Grind to 6
step << Rogue
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor 151 >>|cRXP_BUY_Buy the|r |T135641:0|t[Balanced Throwing Daggers] |cRXP_BUY_from him if you can afford it|r
    .collect 2946,200
    .target Brog Hamfist
step << Warlock
    .goto 1429/0,-5.36,-9472.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Train your class spells
    .target Maximillian Crowe
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor 6374 >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_BUY_from her if you can afford it. If not you can buy it later|r
    .target Cylina Darkheart
    .money <0.0100
    .train 20397,1
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Train your class spells
step << Human Priest
    .goto 1429/0,33.24,-9460.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .turnin 5623 >>Turn in In Favor of the Light
    .target Priestess Josetta
    .isOnQuest 5623
step << Human Priest
    .goto 1429/0,33.24,-9460.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5624 >>Accept Garments of the Light
    .target Priestess Josetta
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .target Priestess Josetta
    .goto 1429/0,33.14,-9460.75
    .trainer >> Train your class spells
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    .goto 1429/0,12.52,-9479.85,9,0 << Warrior
    .goto 1429/0,29.35,-9456.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r upstairs
    .target Michelle Belle
    .train 3273 >> Train |T135966:0|t[First Aid]
step << Warrior/Rogue
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor 295 >> |cRXP_BUY_Buy|r |T133995:0|t[Dalaran Sharp] |cRXP_BUY_from him until you're down to 1 Silver|r << Warrior
    .vendor 295 >> |cRXP_BUY_Buy up to 20|r |T133995:0|t[Dalaran Sharp] |cRXP_BUY_from him|r << Rogue
    .collect 414,20
    .target Innkeeper Farley
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >>Accept Gold Dust Exchange
    .target Remy "Two Times"
step << Human Priest
    .goto 1429/0,-135.79,-9514.66
    >>Interact with |cRXP_FRIENDLY_Guard Roberts|r
    .complete 5624,1 --Guard Roberts
    .target Guard Roberts
step
    .goto 1429/0,338.33,-9889.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >>Accept Lost Necklace
    .target "Auntie" Bernice Stonefield
step
    .goto 1429/0,332.43,-9894.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >>Accept Princess Must Die!
    .target Ma Stonefield
step
    .goto 1429/0,38.45,-9923.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >>Turn in Lost Necklace
    .accept 86 >>Accept Pie for Billy
    .target Billy Maclure
step
    #completewith Along53
    >>As you go: Kill |cRXP_ENEMY_Stonetusk Boars|r, |cRXP_ENEMY_Longsnouts|r, |cRXP_ENEMY_Princess|r and |cRXP_ENEMY_Porcine Entourages|r. Loot them for |cRXP_LOOT_Chunk of Boar Meat|r. |cRXP_WARN_Anything left is finished later|r
    .complete 86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
    .mob Longsnout
    .mob Princess
    .mob Porcine Entourage
step
    .goto 1429/0,37.75,-10013.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >>Accept Young Lovers
    .target Maybell Maclure
step << Human Mage
    .goto 1429/0,63.78,-10008.82
    .vendor >>Vendor, buy as much milk as you can
step << Human Mage
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford from him|r
    .vendor 258 >>Vendor Trash
    .target Joshua Maclure
step
    #label Along53
    .goto 1429/0,499.72,-9930.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >>Turn in Young Lovers
    .accept 111 >>Accept Speak with Gramma
    .target Tommy Joe Stonefield
step
    #loop
    .goto 1429/0,427.53,-9926.65,0
    .goto 1429/0,427.53,-9926.65,40,0
    .goto 1429/0,412.60,-9824.81,40,0
    .goto 1429/0,362.97,-10008.59,40,0
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r, |cRXP_ENEMY_Longsnouts|r, |cRXP_ENEMY_Princess|r and |cRXP_ENEMY_Porcine Entourages|r. Loot them for |cRXP_LOOT_Chunk of Boar Meat|r
    .complete 86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
    .mob Longsnout
    .mob Princess
    .mob Porcine Entourage
step
    .goto 1429/0,322.71,-9880.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r
    .turnin 111 >>Turn in Speak with Gramma while you are here
    .isQuestComplete 111
    .target Gramma Stonefield
step
    .goto 1429/0,338.33,-9889.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 86 >>Turn in Pie for Billy
    .accept 84 >>Accept Back to Billy
    .target "Auntie" Bernice Stonefield
step
    #completewith Along56
    >>As you go: Kill |cRXP_ENEMY_Kobold Miners|r, |cRXP_ENEMY_Goldtooths|r, |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Geomancers|r. Loot them for |cRXP_LOOT_Large Candle|r. Kill |cRXP_ENEMY_Kobold Miners|r, |cRXP_ENEMY_Goldtooths|r, |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Geomancers|r. Loot them for |cRXP_LOOT_Gold Dust|r. |cRXP_WARN_Anything left is finished later|r
    .complete 60,1 --Large Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Miner
    .mob Goldtooth
    .mob Kobold Tunneler
    .mob Kobold Geomancer
step
    #label Along56
    .goto 1429/0,322.71,-9880.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r
    .turnin 111 >>Turn in Speak with Gramma
    .accept 107 >>Accept Note to William
    .target Gramma Stonefield
step
    #loop
    .goto 1429/0,240.80,-9804.67,0
    .goto 1429/0,240.80,-9804.67,40,0
    .goto 1429/0,179.71,-9852.12,40,0
    .goto 1429/0,111.68,-9789.40,40,0
    >>Kill |cRXP_ENEMY_Kobold Miners|r, |cRXP_ENEMY_Goldtooths|r, |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Geomancers|r. Loot them for |cRXP_LOOT_Large Candle|r
    >>Kill |cRXP_ENEMY_Kobold Miners|r, |cRXP_ENEMY_Goldtooths|r, |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Geomancers|r. Loot them for |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Large Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Miner
    .mob Goldtooth
    .mob Kobold Tunneler
    .mob Kobold Geomancer
step
    .goto 1429/0,38.45,-9923.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >>Turn in Back to Billy
    .accept 87 >>Accept Goldtooth
    .target Billy Maclure
step
    .goto 1429/0,127.65,-9843.56
    >>Scout through the Fargodeep Mine
    .complete 62,1 --Scout through the Fargodeep Mine
step
    .goto 1429/0,87.73,-9745.65
    >>Kill |cRXP_ENEMY_Goldtooth|r and loot |cRXP_LOOT_Bernice's Necklace|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step
    .goto 1429/0,223.09,-9916.24,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.24,35,0
    .goto 1429/0,259.54,-9865.08,35,0
    .goto 1429/0,215.81,-9830.60,35,0
    .xp 7+1800 >>Grind to 1800+/4500xp << !Priest
    .xp 7+1460 >>Grind to 1460+/4500xp << Priest
step
    .goto 1429/0,223.09,-9916.24,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.24,35,0
    .goto 1429/0,259.54,-9865.08,35,0
    .goto 1429/0,215.81,-9830.60,35,0
    .xp 7+1770 >>Grind to 1770+/4500xp << !Priest
    .xp 7+1260 >>Grind to 1260+/4500xp << Priest
step
    .goto 1429/0,338.33,-9889.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >>Turn in Goldtooth
    .target "Auntie" Bernice Stonefield
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 47 >>Turn in Gold Dust Exchange
    .accept 40 >>Accept A Fishy Peril
    .target Remy "Two Times"
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 62 >>Turn in The Fargodeep Mine
    .turnin 40 >>Turn in A Fishy Peril
    .accept 76 >>Accept The Jasperlode Mine
    .accept 35 >>Accept Further Concerns
    .target Marshal Dughan
step << Paladin
    .goto 1429/0,94.01,-9464.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor 54 >>|cRXP_BUY_Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from her if you can afford it|r
    .collect 2493,1
    .target Corina Steele
step
    .goto 1429/0,31.85,-9460.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >>Turn in Kobold Candles
    .turnin 107 >>Turn in Note to William
    .accept 61 >>Accept Shipment to Stormwind
    .accept 112 >>Accept Collecting Kelp
    .target William Pestle
step
    .xp 8 >> Grind to 8
step << Warlock
    .goto 1429/0,-5.36,-9472.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Train your class spells
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_BUY_from her if you can afford it. If not you can buy it later|r
    .target Cylina Darkheart
    .money <0.100
    .train 20270,1
step << Human Mage
    .money <0.1250
    .goto 1429/0,8.25,-9464.89
    .vendor >>Buy a 6 slot bag from Brog
step << Human Mage
    .goto 1429/0,16.20,-9462.65
    .vendor >>Buy level 5 Water up to 40
step << Human Mage
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Buy 35|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .vendor >>Vendor Trash
    .collect 1179,35,432,1
    .target Innkeeper Farley
step << Human Mage
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from him|r
    .target Brog Hamfist
    .money <0.05
step << Human Priest
    .goto 1429/0,33.24,-9460.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .turnin 5624 >>Turn in Garments of the Light
    .target Priestess Josetta
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Train your class spells
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto 1429/0,29.35,-9456.79
    .train 3273 >> Train |T135966:0|t[First Aid]
step
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> |cRXP_WARN_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_WARN_if needed|r
    .target Brog Hamfist
    .money <0.1250
step
    #loop
    .goto 1429/0,-395.75,-9484.10,0
    .goto 1429/0,-395.75,-9484.10,40,0
    .goto 1429/0,-451.98,-9413.74,40,0
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for |cRXP_LOOT_Crystal Kelp Frond|r
    .complete 112,1 --Crystal Kelp Frond (4)
    .mob Murloc
    .mob Murloc Streamrunner
step
    .goto 1429/0,-552.98,-9077.43
    >>Scout through the Jasperlode Mine
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto 1429/0,-1031.96,-9610.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >>Turn in Further Concerns
    .accept 37 >>Accept Find the Lost Guards
    .accept 52 >>Accept Protect the Frontier
    .target Guard Thomas
step
    .goto 1429/0,-986.49,-9336.20
    >>Click the |cRXP_PICK_A half-eaten body|r
    .turnin 37 >>Turn in Find the Lost Guards
    .accept 45 >>Accept Discover Rolf's Fate
step
    .goto 1429/0,-1289.15,-9469.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >>Accept A Bundle of Trouble
    .target Supervisor Raelen
step
    .goto 1429/0,-1355.20,-9469.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vendor trash
    .target Rallic Finn
    .subzoneskip 88,1
step
    #completewith Along71
    >>As you go: Pick up |cRXP_PICK_Bundle of Wood|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 5545,1 --Bundle of Wood (8)
step
    #label Along71
    .goto 1429/0,-1234.31,-9224.18
    >>Click the |cRXP_PICK_Rolf's corpse|r
    .turnin 45 >>Turn in Discover Rolf's Fate
    .accept 71 >>Accept Report to Thomas
step
    #completewith Along72
    >>As you go: Kill |cRXP_ENEMY_Young Forest Bears|r. |cRXP_WARN_Anything left is finished later|r
    .complete 52,2 --Young Forest Bear slain (5)
    .mob Young Forest Bear
step
    #label Along72
    #loop
    .goto 1429/0,-1285.33,-9364.90,0
    .goto 1429/0,-1285.33,-9364.90,40,0
    .goto 1429/0,-1374.88,-9339.44,40,0
    .goto 1429/0,-1128.45,-9369.07,40,0
    >>Pick up |cRXP_PICK_Bundle of Wood|r from the ground
    .complete 5545,1 --Bundle of Wood (8)
step
    .goto 1429/0,-1289.15,-9469.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >>Turn in A Bundle of Trouble
    .target Supervisor Raelen
step
    .goto 1429/0,-1222.51,-9531.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >>Accept Red Linen Goods
    .target Sara Timberlain
step
    #loop
    .goto 1429/0,-1146.15,-9709.78,0
    .goto 1429/0,-1146.15,-9709.78,40,0
    .goto 1429/0,-1107.97,-9697.97,40,0
    >>Kill |cRXP_ENEMY_Prowlers|r
    .complete 52,1 --Prowler slain (8)
    .mob Prowler
step
    #loop
    .goto 1429/0,-1498.09,-9545.90,0
    .goto 1429/0,-1498.09,-9545.90,40,0
    .goto 1429/0,-1491.15,-9425.55,40,0
    >>Kill |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,2 --Young Forest Bear slain (5)
    .mob Young Forest Bear
step
    .goto 1429/0,-1031.96,-9610.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 52 >>Turn in Protect the Frontier
    .turnin 71 >>Turn in Report to Thomas
    .accept 39 >>Accept Deliver Thomas' Report
    .target Guard Thomas
step
    #completewith Drop184x1
    >>|cRXP_LOOT_Westfall Deed|r can drop from |cRXP_ENEMY_Defias Bandit|r, |cRXP_ENEMY_Defias Rogue Wizard|r, |cRXP_ENEMY_Defias Ambusher|r. Use it to start the quest if you get one
    .collect 1972,1,184 --Westfall Deed (1)
    .accept 184 >>Accept Furlbrow's Deed
    .use 1972
step
    #label Drop184x1
    #loop
    .goto 1429/0,-939.63,-9715.10,0
    .goto 1429/0,-939.63,-9715.10,40,0
    .goto 1429/0,-834.47,-9738.48,40,0
    >>Kill |cRXP_ENEMY_Princess|r and loot |cRXP_LOOT_Brass Collar|r
    >>Kill |cRXP_ENEMY_Defias Bandits|r, |cRXP_ENEMY_Morgan the Collectors|r, |cRXP_ENEMY_Defias Rogue Wizards|r and |cRXP_ENEMY_Defias Ambushers|r. Loot them for |cRXP_LOOT_Red Linen Bandana|r
    .complete 88,1 --Brass Collar (1)
    .complete 83,1 --Red Linen Bandana (6)
    .mob Princess
    .mob Defias Bandit
    .mob Morgan the Collector
    .mob Defias Rogue Wizard
    .mob Defias Ambusher
step << Warlock/Warrior/Rogue
    .goto 1429/0,-877.85,-9778.98
    .xp 9+3510 >> Grind to 3510+/6500xp << Warlock
    .xp 9+3420 >> Grind to 3420+/6500xp << Warrior/Rogue
step << Warlock/Warrior/Rogue
    .goto 1429/0,-877.85,-9778.98
    .xp 9+2015 >> Grind to 2015+/6500xp << Warlock
    .xp 9+3050 >> Grind to 3050+/6500xp << Warrior/Rogue
step
    .goto 1429/0,-1222.51,-9531.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >>Turn in Red Linen Goods
    .target Sara Timberlain
step
    #completewith next
    .hs >>Hearth to Innkeeper Farley's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1429/0,31.85,-9460.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >>Turn in Collecting Kelp
    .accept 114 >>Accept The Escape
    .target William Pestle
step << Warrior/Rogue
    .goto 1429/0,29.35,-9456.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Michelle Belle
step << Rogue
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Only train|r |T132147:0|t[Dual Wield] |cRXP_WARN_and|r |T132307:0|t[Sprint]|cRXP_WARN_. Do not train other spells to save your money for later|r
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >>Turn in Deliver Thomas' Report
    .turnin 76 >>Turn in The Jasperlode Mine
    .accept 239 >>Accept Westbrook Garrison Needs Help!
    .accept 59 >>Accept Cloth and Leather Armor
    .target Marshal Dughan
step
    .goto 1429/0,-1031.96,-9610.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .accept 46 >>Accept Bounty on Murlocs
    .target Guard Thomas
step
    #loop
    .goto 1429/0,-1118.38,-9836.85,0
    .goto 1429/0,-1118.38,-9836.85,40,0
    .goto 1429/0,-1123.24,-9920.17,40,0
    >>Kill |cRXP_ENEMY_Murloc Foragers|r and |cRXP_ENEMY_Murloc Lurkers|r. Loot them for |cRXP_LOOT_Torn Murloc Fin|r
    .complete 46,1 --Torn Murloc Fin (8)
    .mob Murloc Forager
    .mob Murloc Lurker
step
    .goto 1429/0,-1031.96,-9610.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 46 >>Turn in Bounty on Murlocs
    .target Guard Thomas
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 109 >>Accept Report to Gryan Stoutmantle
    .target Marshal Dughan
step
    .goto 1429/0,94.01,-9464.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .vendor >> Vendor Trash
    .target Corina Steele
    .money >0.75
step << Warlock/Warrior
    .xp 10 >> Grind to 10
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
    .money <0.5
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r and |cRXP_FRIENDLY_Remen Marcot|r
    .trainer >> Train your class spells
    .goto 1429/0,-5.36,-9472.76
    .target +Maximillian Crowe
    .goto 1429/0,-8.58,-9473.41
    .target +Remen Marcot
step << Priest
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .trainer >> Train your class spells
    .target Priestess Josetta
    .xp <10,1
step << Mage
    .goto 1429/0,34.28,-9471.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Train your class spells
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Only train|r |T132147:0|t[Dual Wield] |cRXP_WARN_and|r |T132307:0|t[Sprint]|cRXP_WARN_. Do not train other spells to save your money for later|r
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Keryn Sylvius
step
    .goto 1429/0,37.75,-10013.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >>Turn in The Escape
    .target Maybell Maclure
step
    .goto 1429/0,332.43,-9894.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >>Turn in Princess Must Die!
    .target Ma Stonefield
step
    .goto 1429/0,694.43,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >>Turn in Westbrook Garrison Needs Help!
    .accept 11 >>Accept Riverpaw Gnoll Bounty
    .target Deputy Rainer
step
    .goto 1429/0,683.33,-9668.35
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 176 >>Accept Wanted:  "Hogger"
step
    #completewith Drop123x1
    >>|cRXP_LOOT_Gold Pickup Schedule|r can drop from |cRXP_ENEMY_Riverpaw Runt|r, |cRXP_ENEMY_Gruff Swiftbite|r, |cRXP_ENEMY_Hogger|r. Use it to start the quest if you get one
    .collect 1307,1,123 --Gold Pickup Schedule (1)
    .accept 123 >>Accept The Collector
    .use 1307
step
    #label Drop123x1
    #loop
    .goto 1429/0,645.84,-10033.82,0
    .goto 1429/0,645.84,-10033.82,40,0
    .goto 1429/0,573.65,-10127.10,40,0
    >>Kill |cRXP_ENEMY_Hogger|r and loot |cRXP_LOOT_Huge Gnoll Claw|r
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for |cRXP_LOOT_Painted Gnoll Armband|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .complete 11,1 --Painted Gnoll Armband (8)
    .mob Hogger
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    .goto 1429/0,694.43,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >>Turn in Riverpaw Gnoll Bounty
    .target Deputy Rainer
step
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step
    .goto 1453/0,625.49,-8857.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61 >>Turn in Shipment to Stormwind
    .target Morgan Pestle
step
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train 1h Swords and Staves << Warlock/Mage
    .trainer >>Train 1h Swords << Rogue
    .trainer >>Train Staves << Priest
    .trainer >>Train 2h Swords << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Warlock/Mage
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Train Staves
    .target Woo Ping
step << Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1
    .target Gunther Weller
    .money <0.2623
    .train 2983,1
step << Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1
    .target Gunther Weller
    .money <0.2023
    .train 2983,3
step << Rogue
    .goto StormwindClassic,57.547,57.076
    .goto 1453/0,660.24,-8814.57,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    >>|cRXP_WARN_Make sure you save 6s for training later|r
    .collect 851,1
    .target Gunther Weller
    .train 2983,1
    .money <0.06
step << Rogue
    .goto StormwindClassic,57.547,57.076
    .goto 1453/0,660.24,-8814.57,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1
    .target Gunther Weller
    .train 2983,3
step << Human Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 19834 >> Train your class spells
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Human Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 647 >> Train your class spells
    .target Arthur the Faithful
    .xp <14,1
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >> Train your class spells
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >> Train your class spells
    .target Ursula Deline
    .xp <14,1
step << Human Mage skip
    .goto 1453/0,861.95,-8990.47
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    >>Total Cost: 15s
    >>Remember you may want money for Healing Potions (3s each), Bronze Tube (8s each), and level 5 food (20c per 5)
    .target Jennea Cannon
step << Human Mage
    .goto 1453/0,635.44,-8863.81
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    >>|cRXP_WARN_NOTE: To do this, bind "Interact with Target" under Gameplay -> Controls in the Options menu|r
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
step
    #completewith next
    .zone 1429 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 1429
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >>Turn in Wanted:  "Hogger"
    .target Marshal Dughan
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 123 >>Turn in The Collector
    .target Marshal Dughan
    .isOnQuest 123
step
    .goto 1429/0,-1222.51,-9531.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >>Turn in Cloth and Leather Armor
    .target Sara Timberlain
step << Rogue
    .goto 1453/0,377.54,-8752.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    >>|cRXP_WARN_Only train|r |T132147:0|t[Dual Wield] |cRXP_WARN_and|r |T132307:0|t[Sprint]
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Osborne the Night Man
step << Rogue
    .goto 1453/0,377.54,-8752.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    .goto 1453/0,377.54,-8752.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    .train 1766 >> Train your class spells
    .target Osborne the Night Man
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto 1453/0,377.54,-8752.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
    .xp <14,1
step
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step << Human
    .goto 1453/0,382.04,-8702.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >>Turn in Continue to Stormwind
    .target Osric Strang
    .isOnQuest 6281
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 8092 >> Train your class spells
    .target High Priestess Laurena
    .isOnQuest 5635
step << Human Mage
    .goto 1453/0,638.26,-8342.22
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .money <0.08
step << Human Paladin
    .goto 1453/0,845.82,-8545.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 3681 >>Turn in Tome of Divinity
    .target Duthorian Rall
    .isOnQuest 3681
step
    #completewith next
    .zone 1429 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 1429
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 8092 >> Train your class spells
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Train your class spells
    .target High Priestess Laurena
    .train 13908,3
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaita Deepforge|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    >>|cRXP_WARN_You'll train|r |T134708:0|t[Mining] |cRXP_WARN_later|r
    .target Kaita Deepforge
    .train 2018,3
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path
    .target Dungar Longdrink
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 147 >>Accept Manhunt
    .target Marshal Dughan
    .isQuestTurnedIn 123 --any of: The Collector
    .xp <7,1
step
    .goto 1429/0,-932.00,-9806.29
    >>Kill |cRXP_ENEMY_Morgan the Collector|r and loot |cRXP_LOOT_The Collector's Ring|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
    .isOnQuest 147
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step
    .goto 1429/0,73.85,-9465.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 147 >>Turn in Manhunt
    .target Marshal Dughan
    .isOnQuest 147
step << Warrior
    .goto 1429/0,109.25,-9461.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >> Train your class spells
step
    +|cRXP_WARN_That is all of Elwynn Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Westfall|r: Furlbrow's Deed, Report to Gryan Stoutmantle
step
    +|cRXP_WARN_Suggested next zones at level 9|r: |cRXP_FRIENDLY_Westfall|r (about 1.6 levels of quests, starting around Farmer Saldean), |cRXP_FRIENDLY_Darkshore|r (about 1.5 levels of quests, starting around Terenthis), |cRXP_FRIENDLY_Dun Morogh|r (about 1.3 levels of quests, starting around Alamar Grimm). Completing this step loads the guide for Westfall --RouteBuilder:next
step << Warrior/Warlock/Human Mage/Gnome Mage/Rogue/NightElf Priest/Human Priest/Dwarf Priest/NightElf Druid/NightElf Hunter/Dwarf Hunter
    +|cRXP_WARN_The rest of Elwynn Forest is planned from level 12.|r Load its guide for level 12 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior/Warlock/Human Mage/Gnome Mage/Rogue/NightElf Priest/Human Priest/Dwarf Priest/NightElf Druid/NightElf Hunter/Dwarf Hunter
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Elwynn Forest
#subweight -1
#name 12-13 Elwynn Forest
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Terenthis;Zone Routes (Alliance)\10-13 Westfall: around Farmer Saldean;Zone Routes (Alliance)\10-12 Loch Modan: around Mountaineer Kadrell

step << Rogue
    .goto 1429/0,12.76,-9465.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .accept 2205 >>Accept Seek out SI: 7
    .target Keryn Sylvius
step << Human Mage/Gnome Mage
    .goto 1429/0,34.28,-9471.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .accept 1860 >>Accept Speak with Jennea
    .target Zaldimar Wefhellt
step << NightElf Priest
    .goto 1429/0,33.24,-9460.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5628 >>Accept Returning Home
    .target Priestess Josetta
step
    .goto 1429/0,16.23,-9462.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .target Innkeeper Farley
    .home >>Set your Hearthstone to Innkeeper Farley's inn
step << Warrior
    .goto 1429/0,109.25,-9461.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >>Accept A Warrior's Training
    .target Lyria Du Lac
step
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step << Warrior
    .goto 1453/0,382.72,-8612.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >>Turn in A Warrior's Training
    .target Harry Burlguard
step << Rogue
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2205 >>Turn in Seek out SI: 7
    .accept 2206 >>Accept Snatch and Grab
    .target Master Mathias Shaw
step
    #completewith next
    .zone 1429 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 1429
step << Rogue
    .goto 1429/0,-132.67,-9952.34
    >>Kill |cRXP_ENEMY_Defias Dockmaster|r and loot |cRXP_LOOT_Defias Shipping Schedule|r
    .complete 2206,1 --Defias Shipping Schedule (1)
    .mob Defias Dockmaster
step
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step << Rogue
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2206 >>Turn in Snatch and Grab
    .target Master Mathias Shaw
step << Human Priest/Dwarf Priest
    .goto 1453/0,862.35,-8512.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .accept 5634 >>Accept Desperate Prayer
    .target High Priestess Laurena
step << Human Priest/Dwarf Priest
    .goto 1453/0,862.35,-8512.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    >>|cRXP_WARN_The database has no objectives for Desperate Prayer. Skip this step if the quest is not finished|r
    .turnin 5634 >>Turn in Desperate Prayer
    .target High Priestess Laurena
    .isOnQuest 5634
step << Mage
    .goto 1453/0,638.26,-8342.22
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
step << Human Mage/Gnome Mage
    .goto 1453/0,861.81,-8989.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r
    .turnin 1860 >>Turn in Speak with Jennea
    .accept 1861 >>Accept Mirror Lake
    .target Jennea Cannon
step << Mage
    .goto 1453/0,861.95,-8990.47
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells (Fire Blast r2, Arcane Intellect r2, Arcane Explosion)
    >>Total Cost: 27s
    >>Remember you may want money for Potions (1-3s each) and Scrolls (50c-3s each)
    .target Jennea Cannon
step << Mage
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her (if they're up)|r
    .money <0.0120
    .target Charys Yserian
step << Mage
    .goto 1453/0,822.16,-8865.60
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    .money <0.0090
    .target Adair Gilroy
step << Mage
    .goto 1453/0,635.44,-8863.81
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .money <0.01
    .target Keldric Boucher
step
    #completewith next
    .zone 1429 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 1429
step << Human Mage/Gnome Mage
    .goto 1429/0,543.80,-9360.51
    >>Open the |cRXP_PICK_Mirror Lake Waterwall|r. Loot it for |cRXP_LOOT_Mirror Lake Water Sample|r
    .complete 1861,1 --Mirror Lake Water Sample (1)
step << Human Mage/Gnome Mage
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step << Human Mage/Gnome Mage
    .goto 1453/0,861.81,-8989.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea Cannon|r
    .turnin 1861 >>Turn in Mirror Lake
    .target Jennea Cannon
step << Human Mage/Gnome Mage
    #completewith next
    .zone 1429 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 1429
step << Warlock
    .goto 1429/0,-8.76,-9473.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remen Marcot|r
    .accept 1685 >>Accept Gakin's Summons
    .target Remen Marcot
step << Warlock
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step << Warlock
    .goto 1453/0,1041.54,-8983.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >>Turn in Gakin's Summons
    .accept 1688 >>Accept Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .zone 1429 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 1429
step << Warlock
    .goto 1429/0,-929.22,-9809.07
    >>Kill |cRXP_ENEMY_Surena Caledon|r and loot |cRXP_LOOT_Surena's Choker|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step << Warlock
    .goto 1453/0,1041.54,-8983.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >>Turn in Surena Caledon
    .accept 1689 >>Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    .goto 1453/0,1041.54,-8983.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1689 >>Turn in The Binding
    .target Gakin the Darkbinder
    .isQuestComplete 1689
step
    .goto 1453/0,552.63,-8415.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .accept 6076 >>Accept The Hunter's Path << Dwarf Hunter
    .accept 6073 >>Accept The Hunter's Path << NightElf Hunter
    .target Einris Brightspear
step << NightElf Druid
    .goto 1453/0,1095.45,-8741.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theridran|r
    .accept 5924 >>Accept Heeding the Call
    .target Theridran
step << Human
    .goto 1453/0,382.04,-8702.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osric Strang|r
    .accept 6261 >>Accept Dungar Longdrink
    .target Osric Strang
    .isQuestTurnedIn 6281 --any of: Continue to Stormwind
    .xp <10,1
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
    .goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Human
    .goto 1453/0,490.12,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .turnin 6261 >>Turn in Dungar Longdrink
    .target Dungar Longdrink
    .isOnQuest 6261
step << Human
    .goto 1453/0,490.12,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .accept 6285 >>Accept Return to Lewis
    .target Dungar Longdrink
    .isQuestTurnedIn 6261 --any of: Dungar Longdrink
    .xp <10,1
step << Warrior
    .goto 1453/0,389.17,-8604.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .accept 1640 >>Accept Beat Bartleby
    .target Bartleby
    .isQuestTurnedIn 1639,1678,1683 --any of: Bartleby the Drunk, Vejrek, Vorlus Vilehoof
    .xp <10,1
step << Warrior
    .goto 1453/0,389.17,-8604.50
    >>Kill |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Bartleby slain (1)
    .mob Bartleby
    .isOnQuest 1640
step << Warrior
    .goto 1453/0,389.17,-8604.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >>Turn in Beat Bartleby
    .target Bartleby
    .isOnQuest 1640
step << Warrior
    .goto 1453/0,389.17,-8604.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .accept 1665 >>Accept Bartleby's Mug
    .target Bartleby
    .isQuestTurnedIn 1640 --any of: Beat Bartleby
    .xp <10,1
step << Warrior
    .goto 1453/0,382.72,-8612.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >>Turn in Bartleby's Mug
    .target Harry Burlguard
    .isOnQuest 1665
step << Warrior
    .goto 1453/0,382.72,-8612.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .accept 1666 >>Accept Marshal Haggard
    .target Harry Burlguard
    .isQuestTurnedIn 1665 --any of: Bartleby's Mug
    .xp <10,1
step
    #completewith next
    .zone 1429 >>Leave Stormwind City for Elwynn Forest
    .zoneskip 1429
step << Warrior
    .goto 1429/0,-1401.26,-9545.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 1666 >>Turn in Marshal Haggard
    .target Marshal Haggard
    .isOnQuest 1666
step << Warrior
    .goto 1429/0,-1401.26,-9545.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
    .accept 1667 >>Accept Dead-tooth Jack
    .target Marshal Haggard
    .isQuestTurnedIn 1666 --any of: Marshal Haggard
    .xp <10,1
step << Warrior
    .goto 1429/0,-1566.12,-9768.80
    >>Kill |cRXP_ENEMY_Dead-Tooth Jack|r and loot |cRXP_LOOT_Dead-tooth's Key|r
    .collect 6783,1,1667,1 --Dead-tooth's Key (1)
    .mob Dead-Tooth Jack
    .isOnQuest 1667
step << Warrior
    .goto 1429/0,-1565.08,-9765.33
    >>Open the |cRXP_PICK_Dead-tooth's Strongbox|r. Loot it for |cRXP_LOOT_Marshal Haggard's Badge|r
    .complete 1667,1 --Marshal Haggard's Badge (1)
    .isOnQuest 1667
step << Warrior
    .goto 1429/0,-1401.26,-9545.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 1667 >>Turn in Dead-tooth Jack
    .target Marshal Haggard
    .isOnQuest 1667
step
    +|cRXP_WARN_That is all of Elwynn Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darnassus|r: Returning Home << NightElf Priest
    >>|cRXP_FRIENDLY_Darnassus|r: Heeding the Call << NightElf Druid
    >>|cRXP_FRIENDLY_Dun Morogh|r: The Hunter's Path << Dwarf Hunter
    >>|cRXP_FRIENDLY_Teldrassil|r: The Hunter's Path << NightElf Hunter
    >>|cRXP_FRIENDLY_Westfall|r: Return to Lewis << Human
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Binding << Warlock
step
    +|cRXP_WARN_Suggested next zones at level 12|r: |cRXP_FRIENDLY_Darkshore|r (about 2.3 levels of quests, starting around Terenthis), |cRXP_FRIENDLY_Westfall|r (about 1.1 levels of quests, starting around Farmer Saldean), |cRXP_FRIENDLY_Loch Modan|r (about 0.9 levels of quests, starting around Mountaineer Kadrell; 1 quest from here hands in there). Completing this step loads the guide for Darkshore --RouteBuilder:next
step << Human Paladin/Dwarf Paladin
    +|cRXP_WARN_The rest of Elwynn Forest is planned from level 15.|r Load its guide for level 15 then
]])

RXPGuides.RegisterGuide([[
#classic
<< Human Paladin/Dwarf Paladin
#version 1
#group Zone Routes (Alliance)
#subgroup 1 - 16 Elwynn Forest
#subweight -1
#name 15-16 Elwynn Forest
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Terenthis

step << Human Paladin
    .goto 1429/0,108.90,-9468.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .accept 2998 >>Accept Tome of Divinity
    .target Brother Wilhelm
step
    #completewith next
    .zone 1453 >>Travel to Stormwind City
    .zoneskip 1453
step << Human Paladin
    .goto 1453/0,845.82,-8545.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 2998 >>Turn in Tome of Divinity
    .target Duthorian Rall
step << Dwarf Paladin
    .goto 1453/0,881.44,-8577.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Grayson Shadowbreaker|r
    .accept 3000 >>Accept Tome of Divinity
    .target Lord Grayson Shadowbreaker
step << Human Priest/Dwarf Priest
    .goto 1453/0,862.35,-8512.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .turnin 5634 >>Turn in Desperate Prayer
    .target High Priestess Laurena
    .isOnQuest 5634
step << Warlock
    .goto 1453/0,1041.54,-8983.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1689 >>Turn in The Binding
    .target Gakin the Darkbinder
    .isQuestComplete 1689
step << Human Paladin
    .goto 1453/0,845.82,-8545.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1643 >>Accept The Tome of Divinity
    .target Duthorian Rall
    .isQuestTurnedIn 1642 --any of: The Tome of Divinity
    .xp <12,1
step << Human Paladin
    .goto 1453/0,613.66,-8832.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Turn in The Tome of Divinity
    .target Stephanie Turner
    .isOnQuest 1643
step
    +|cRXP_WARN_End of the Elwynn Forest route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ironforge|r: Tome of Divinity << Dwarf Paladin
step
    +|cRXP_WARN_Suggested next zones at level 15|r: |cRXP_FRIENDLY_Darkshore|r (about 1.7 levels of quests, starting around Terenthis). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
