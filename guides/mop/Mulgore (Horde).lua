-- 5-12 Mulgore: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 5, 11).
-- Split into 2 guides, listed under "5 - 12 Mulgore" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Mulgore.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 5 - 12 Mulgore
#subweight -5
#name 5-9 Mulgore

step
    .hs >> Hearth to Camp Narache
    .cooldown item,6948,>0
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 56641 >> Train |T132213:0|t[Steady Shot] << Cata
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 100 >> Train |T132337:0|t[Charge] << Cata
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helaku|r
    .train 20271 >>Train |T135959:0|t[Judgement] << Cata
    .train 20154 >>Train |T135960:0|t[Seal of Righteousness] << Cata
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 774 >>Train |T136081:0|t[Rejuvenation] << Cata
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 73899 >>Train |T460956:0|t[Primal Strike] << Cata
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravenfeather|r
    .train 2061 >>Train |T135907:0|t[Flash Heal] << Cata
    .target Seer Ravenfeather
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,48.34,53.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahab Wheathoof|r
    .accept 11129 >>Accept Kyle's Gone Missing!
    .target Ahab Wheathoof
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 2973 >> Train your class spells
    .target Yaw Sharpmane
    .xp <6,1
step << Tauren
    .goto 7,46.06,58.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varg Windwhisper|r
    .accept 6361 >>Accept A Bundle of Hides
    .target Varg Windwhisper
step << Tauren
    .goto 7,46.06,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varg|r
    .vendor >> Vendor trash and repair << Paladin/Priest
    .target Varg Windwhisper
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 66c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[Ornate Blunderbuss] (3s 93c). You'll come back later if you don't have enough yet
    .target Kennah Hawkseye
step << Tauren
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tak|r
    .turnin 6361 >>Turn in A Bundle of Hides
    .accept 6362 >>Accept Ride to Thunder Bluff
    .target Tak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r
    .turnin 24215 >>Turn in Rite of the Winds
    .target Ahmo Thunderhorn
    .isOnQuest 24215
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r
    .accept 14438 >>Accept Sharing the Land
    .target Ahmo Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,48.79,58.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken Windtotem|r
    .accept 761 >>Accept Swoop Hunting
    .target Harken Windtotem
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarl|r
    .train 8042 >> Train your class spells
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsoomse|r
    .train 589 >> Train your class spells
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 8921 >> Train your class spells
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iopi|r
    .train 465 >> Train your class spells
    .target Sunwalker Iopi
step << Tauren
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .accept 20440 >>Accept Poison Water
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 34428 >> Train your class spells
    .target Krang Stonehoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,48.26,70.97
    >>Kill |cRXP_ENEMY_Palemane Tanners|r, |cRXP_ENEMY_Palemane Skinners|r and |cRXP_ENEMY_Palemane Poachers|r
    .complete 14438,1 --Palemane Tanner (15)
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
step << Tauren
    #loop
    .goto 7,49.77,65.50,0
    .goto 7,49.77,65.50,40,0
    .goto 7,52.42,62.21,40,0
    .goto 7,56.69,58.27,40,0
    .goto 7,53.72,58.39,40,0
    >>Kill |cRXP_ENEMY_Prairie Wolfs|r, |cRXP_ENEMY_Prairie Stalkers|r and |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |cRXP_LOOT_Prairie Wolf Paw|r
    >>Kill |cRXP_ENEMY_Adult Plainstriders|r, |cRXP_ENEMY_Elder Plainstriders|r and |cRXP_ENEMY_Mazzranaches|r. Loot them for |cRXP_LOOT_Plainstrider Talon|r
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Prairie Stalker
    .mob Prairie Wolf Alpha
    .mob Adult Plainstrider
    .mob Elder Plainstrider
    .mob Mazzranache
step << Tauren
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 20440 >>Turn in Poison Water
    .accept 24440 >>Accept Winterhoof Cleansing
    .target Mull Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r
    .turnin 14438 >>Turn in Sharing the Land
    .accept 14491 >>Accept The Restless Earth
    .accept 24459 >>Accept Morin Cloudstalker
    .target Ahmo Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.15,56.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r
    .accept 26188 >>Accept Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 2973 >> Train your class spells
    .target Yaw Sharpmane
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (6s 65c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.50,61.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r
    .accept 743 >>Accept Dangers of the Windfury
    .target Ruul Eagletalon
step << Tauren
    .goto 7,53.51,65.38
    >>Cleanse the Winterhoof Water Well
    .complete 24440,1 --Cleanse the Winterhoof Water Well
step << Tauren
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 24440 >>Turn in Winterhoof Cleansing
    .accept 24441 >>Accept Thunderhorn Totem
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 84939 >> Train your class spells
    .target Krang Stonehoof
    .xp <7,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarl|r
    .train 324 >> Train your class spells
    .target Tarl Cloudsong
    .xp <8,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >> Train your class spells
    .target Seer Alsoomse
    .xp <8,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 768 >> Train your class spells
    .target Gennia Runetotem
    .xp <8,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iopi|r
    .train 635 >> Train your class spells
    .target Sunwalker Iopi
    .xp <7,1
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
    .xp <8,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along21
    >>As you go: Kill |cRXP_ENEMY_Adult Plainstriders|r and |cRXP_ENEMY_Elder Plainstriders|r. Loot them for |cRXP_LOOT_Tender Strider Meat|r. |cRXP_WARN_Anything left is finished later|r
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,57.06,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r
    .turnin 24459 >>Turn in Morin Cloudstalker
    .accept 749 >>Accept The Ravaged Caravan
    .target Morin Cloudstalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,53.52,48.28
    >>Click the |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,57.06,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r
    .turnin 751 >>Turn in The Ravaged Caravan
    .accept 26179 >>Accept The Venture Co.
    .accept 26180 >>Accept Supervisor Fizsprocket
    .target Morin Cloudstalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 7,59.89,49.40,0
    .goto 7,59.89,49.40,40,0
    .goto 7,60.72,47.66,40,0
    >>Kill |cRXP_ENEMY_Supervisor Fizsprocket|r and loot |cRXP_LOOT_Fizsprocket's Clipboard|r
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r
    .complete 26180,1 --Fizsprocket's Clipboard (1)
    .complete 26179,1 --Venture Co. Worker slain (7)
    .mob Supervisor Fizsprocket
    .mob Venture Co. Worker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,57.06,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin Cloudstalker|r
    .turnin 26179 >>Turn in The Venture Co.
    .turnin 26180 >>Turn in Supervisor Fizsprocket
    .target Morin Cloudstalker
step
    #loop
    .goto 7,58.43,58.99,0
    .goto 7,58.43,58.99,40,0
    .goto 7,60.48,56.65,40,0
    .goto 7,58.02,54.56,40,0
    >>Kill |cRXP_ENEMY_Prairie Stalkers|r. Loot them for |cRXP_LOOT_Stalker Claws|r << Tauren
    >>Kill |cRXP_ENEMY_Flatland Cougars|r. Loot them for |cRXP_LOOT_Cougar Claws|r << Tauren
    >>Kill |cRXP_ENEMY_Flatland Cougar|r and loot |cRXP_LOOT_Flatland Cougar Femur|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 24441,1 << Tauren --Stalker Claws (6)
    .complete 24441,2 << Tauren --Cougar Claws (6)
    .complete 26188,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Flatland Cougar Femur (1)
    .mob Prairie Stalker << Tauren
    .mob Flatland Cougar << Tauren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along21
    #loop
    .goto 7,54.04,61.91,0
    .goto 7,54.04,61.91,40,0
    .goto 7,51.83,66.60,40,0
    .goto 7,51.09,67.45,40,0
    >>Kill |cRXP_ENEMY_Wiry Swoops|r, |cRXP_ENEMY_Swoops|r and |cRXP_ENEMY_Taloned Swoops|r. Loot them for |cRXP_LOOT_Trophy Swoop Quill|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,48.79,58.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken Windtotem|r
    .turnin 761 >>Turn in Swoop Hunting
    .target Harken Windtotem
step << Tauren
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 24441 >>Turn in Thunderhorn Totem
    .accept 24456 >>Accept Thunderhorn Cleansing
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 84939 >> Train your class spells
    .target Krang Stonehoof
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarl|r
    .train 324 >> Train your class spells
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >> Train your class spells
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 768 >> Train your class spells
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iopi|r
    .train 635 >> Train your class spells
    .target Sunwalker Iopi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.15,56.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur Raincaller|r
    .turnin 26188 >>Turn in Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
step << Tauren
    .goto 7,44.80,45.56
    >>Cleanse the Thunderhorn Water Well
    .complete 24456,1 --Cleanse the Thunderhorn Water Well
step << Tauren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .accept 6364 >>Accept Return to Varg
    .target Tal
step << Tauren
    #completewith next
    .zone 7 >>Leave Thunder Bluff for Mulgore
    .zoneskip 7
step
    .goto 7,47.65,54.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harn Longcast|r
    .target Harn Longcast
    .home >>Set your Hearthstone to Harn Longcast's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 7,62.17,69.50,0
    .goto 7,62.17,69.50,40,0
    .goto 7,64.43,69.28,40,0
    >>Kill |cRXP_ENEMY_Windfury Harpies|r and |cRXP_ENEMY_Windfury Wind Witches|r. Loot them for |cRXP_LOOT_Windfury Talon|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Harpy
    .mob Windfury Wind Witch
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Harn Longcast's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 7,45.13,51.51,0
    .goto 7,45.13,51.51,40,0
    .goto 7,43.07,53.65,40,0
    >>Kill |cRXP_ENEMY_Adult Plainstriders|r and |cRXP_ENEMY_Elder Plainstriders|r. Loot them for |cRXP_LOOT_Tender Strider Meat|r
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,32.86,48.98
    >>Interact with |cRXP_FRIENDLY_Agitated Earth Spirits|r
    .complete 14491,1 --Agitated Earth Spirit (6)
    .target Agitated Earth Spirit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,48.48,61.57
    >>Interact with |cRXP_FRIENDLY_Kyle the Frenzied|r
    .complete 11129,1 --Kyle the Frenzied
    .target Kyle the Frenzied
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.50,61.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r
    .turnin 743 >>Turn in Dangers of the Windfury while you are here
    .isQuestComplete 743
    .target Ruul Eagletalon
step << Tauren
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 24456 >>Turn in Thunderhorn Cleansing while you are here
    .isQuestComplete 24456
    .target Mull Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r
    .turnin 14491 >>Turn in The Restless Earth while you are here
    .isQuestComplete 14491
    .target Ahmo Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,48.34,53.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahab Wheathoof|r
    .turnin 11129 >>Turn in Kyle's Gone Missing!
    .target Ahab Wheathoof
step << Tauren
    .goto 7,46.06,58.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varg Windwhisper|r
    .turnin 6364 >>Turn in Return to Varg
    .target Varg Windwhisper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahmo Thunderhorn|r
    .turnin 14491 >>Turn in The Restless Earth
    .target Ahmo Thunderhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,47.50,61.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Eagletalon|r
    .turnin 743 >>Turn in Dangers of the Windfury
    .target Ruul Eagletalon
step << Tauren
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull Thunderhorn|r
    .turnin 24456 >>Turn in Thunderhorn Cleansing
    .accept 24457 >>Accept Rite of Vision
    .target Mull Thunderhorn
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 1978 >> Train your class spells
    .target Yaw Sharpmane
    .xp <10,1
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 71 >> Train your class spells
    .target Krang Stonehoof
    .xp <10,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarl|r
    .train 3599 >> Train your class spells
    .target Tarl Cloudsong
    .xp <10,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsoomse|r
    .train 8092 >> Train your class spells
    .target Seer Alsoomse
    .xp <10,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 5215 >> Train your class spells
    .target Gennia Runetotem
    .xp <10,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iopi|r
    .train 82242 >> Train your class spells
    .target Sunwalker Iopi
    .xp <10,1
step << Tauren
    .goto 7,47.89,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarlman Two-Moons|r
    .turnin 24457 >>Turn in Rite of Vision
    .accept 20441 >>Accept Rite of Vision
    .target Zarlman Two-Moons
step << Tauren
    .goto 7,47.80,57.02
    >>Click the |cRXP_PICK_Tribal Fire|r
    .complete 20441,1 --Tribal Fire
step << Tauren
    .goto 7,49.37,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Una Wildmane|r
    .turnin 20441 >>Turn in Rite of Vision
    .accept 24523 >>Accept Wildmane Totem
    .target Una Wildmane
step
    .goto 7,49.52,17.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Raintotem|r
    .accept 833 >>Accept A Sacred Burial << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 773 >>Accept Rite of Wisdom << Tauren
    .target Lorekeeper Raintotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,49.68,17.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn Whitecloud|r
    .accept 861 >>Accept The Hunter's Way
    .target Skorn Whitecloud
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,49.59,17.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn Eagletalon|r
    .accept 744 >>Accept Preparation for Ceremony
    .target Eyahn Eagletalon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 7,54.20,13.45,0
    .goto 7,54.20,13.45,40,0
    .goto 7,55.76,17.33,40,0
    .goto 7,52.07,8.80,40,0
    >>Kill |cRXP_ENEMY_Windfury Sorceress|r. Loot them for |cRXP_LOOT_Azure Feather|r
    >>Kill |cRXP_ENEMY_Windfury Matriarches|r. Loot them for |cRXP_LOOT_Bronze Feather|r
    .complete 744,1 --Azure Feather (6)
    .complete 744,2 --Bronze Feather (6)
    .mob Windfury Sorceress
    .mob Windfury Matriarch
step << Tauren
    .goto 7,60.79,22.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancestral Spirit|r
    .turnin 773 >>Turn in Rite of Wisdom
    .target Ancestral Spirit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 7,59.85,22.07,0
    .goto 7,59.85,22.07,40,0
    .goto 7,60.47,24.52,40,0
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper slain (8)
    .mob Bristleback Interloper
step
    #loop
    .goto 7,48.95,20.32,0
    .goto 7,48.95,20.32,40,0
    .goto 7,51.24,22.27,40,0
    .goto 7,51.76,16.20,40,0
    >>Kill |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |cRXP_LOOT_Prairie Alpha Tooth|r << Tauren
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r. Loot them for |cRXP_LOOT_Flatland Prowler Claw|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 24523,1 << Tauren --Prairie Alpha Tooth (4)
    .complete 861,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Flatland Prowler Claw (4)
    .mob Prairie Wolf Alpha << Tauren
    .mob Flatland Prowler << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Tauren
    .goto 7,49.37,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Una Wildmane|r
    .turnin 24523 >>Turn in Wildmane Totem
    .accept 24524 >>Accept Wildmane Cleansing
    .target Una Wildmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,49.52,17.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Raintotem|r
    .turnin 833 >>Turn in A Sacred Burial
    .target Lorekeeper Raintotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,49.68,17.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn Whitecloud|r
    .turnin 861 >>Turn in The Hunter's Way
    .target Skorn Whitecloud
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 7,49.59,17.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn Eagletalon|r
    .turnin 744 >>Turn in Preparation for Ceremony
    .target Eyahn Eagletalon
step << Tauren
    .goto 7,43.18,16.09
    >>Cleanse the Wildmane Well
    .complete 24524,1 --Cleanse the Wildmane Well
step << Tauren
    .goto 7,49.37,17.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Una Wildmane|r
    .turnin 24524 >>Turn in Wildmane Cleansing
    .accept 24550 >>Accept Journey into Thunder Bluff
    .target Una Wildmane
step << Tauren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24550 >>Turn in Journey into Thunder Bluff
    .accept 24540 >>Accept War Dance
    .target Baine Bloodhoof
step << Tauren
    #completewith next
    .zone 7 >>Leave Thunder Bluff for Mulgore
    .zoneskip 7
step << Tauren
    .goto 7,36.96,11.89
    >>Kill |cRXP_ENEMY_Orno Grimtotem|r
    .complete 24540,1 --Orno Grimtotem slain (1)
    .mob Orno Grimtotem
step << Tauren
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24540 >>Turn in War Dance
    .accept 26397 >>Accept Walk With The Earth Mother
    .target Baine Bloodhoof
step
    +|cRXP_WARN_That is all of Mulgore for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Orgrimmar|r: Walk With The Earth Mother << Tauren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Mulgore is planned from level 11.|r Load its guide for level 11 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 5 - 12 Mulgore
#subweight -5
#name 11-12 Mulgore
--RouteBuilder:next
#next Zone Routes (Horde)\10-14 Azshara: around Labor Captain Grabbit

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
step
    +|cRXP_WARN_End of the Mulgore route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 11|r: |cRXP_FRIENDLY_Azshara|r (about 0.6 levels of quests, starting around Labor Captain Grabbit). Completing this step loads the guide for Azshara --RouteBuilder:next
]])
