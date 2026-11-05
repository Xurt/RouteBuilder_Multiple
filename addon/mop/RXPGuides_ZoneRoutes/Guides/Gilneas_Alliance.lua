-- 5-11 Gilneas: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Gilneas.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 5-11 Gilneas

step
    .goto 179,38.37,63.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerard Walthorn|r
    .target Gerard Walthorn
    .home >>Set your Hearthstone to Gerard Walthorn's inn
step << Worgen Hunter
    .goto 179,68.10,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .turnin 14275 >>Turn in Someone's Keeping Track of You
    .target Huntsman Blake
    .isOnQuest 14275
step << Worgen Hunter
    .goto 179,68.10,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .accept 14276 >>Accept Steady Shot
    .target Huntsman Blake
    .isQuestTurnedIn 14275 --any of: Someone's Keeping Track of You
step << Worgen Hunter
    .goto 179,68.10,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .accept 14290 >>Accept Safety in Numbers
    .target Huntsman Blake
    .isQuestTurnedIn 14276 --any of: Steady Shot
step << Worgen Hunter
    .goto 179,68.10,54.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .turnin 14276 >>Turn in Steady Shot
    .target Huntsman Blake
    .isQuestComplete 14276
step << Worgen Rogue
    .goto 179,68.07,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .turnin 14269 >>Turn in Someone's Looking for You
    .target Loren the Fence
    .isOnQuest 14269
step << Worgen Rogue
    .goto 179,68.07,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .accept 14272 >>Accept Eviscerate
    .target Loren the Fence
    .isQuestTurnedIn 14269 --any of: Someone's Looking for You
step << Worgen Rogue
    .goto 179,68.07,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .accept 14285 >>Accept Safety in Numbers
    .target Loren the Fence
    .isQuestTurnedIn 14272 --any of: Eviscerate
step << Worgen Rogue
    .goto 179,68.07,55.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .turnin 14272 >>Turn in Eviscerate
    .target Loren the Fence
    .isQuestComplete 14272
step << Worgen Warlock
    .goto 179,68.08,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .turnin 14273 >>Turn in Shady Associates
    .target Vitus Darkwalker
    .isOnQuest 14273
step << Worgen Warlock
    .goto 179,68.08,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .accept 14274 >>Accept Corruption
    .target Vitus Darkwalker
    .isQuestTurnedIn 14273 --any of: Shady Associates
step << Worgen Warlock
    .goto 179,68.08,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .accept 14287 >>Accept Safety in Numbers
    .target Vitus Darkwalker
    .isQuestTurnedIn 14274 --any of: Corruption
step << Worgen Warlock
    .goto 179,68.08,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .turnin 14274 >>Turn in Corruption
    .target Vitus Darkwalker
    .isQuestComplete 14274
step << Worgen
    .goto 179,36.45,61.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .accept 14375 >>Accept Last Chance at Humanity
    .turnin 14375 >>Turn in Last Chance at Humanity
    .target King Genn Greymane
step << Worgen
    .goto 179,36.51,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 14313 >>Accept Among Humans Again
    .target Lord Godfrey
step << Worgen
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 14313 >>Turn in Among Humans Again
    .accept 14320 >>Accept In Need of Ingredients
    .target Krennan Aranas
step
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Train your class spells
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Train your class spells
    .target Sergeant Cleese
step
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samantha Buckley|r
    .collect 2901,1 >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    .target Samantha Buckley
    .train 2575,3
    .subzoneskip 4786,1
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .trainer >> Train your class spells
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Myriam Spellwaker
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Train your class spells
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .trainer >> Train your class spells
    .target Loren the Fence
step << Worgen
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Mining Veins provides XP. Only gather resources in your direct path|r
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3
step << Worgen Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Train your class spells
    .target Huntsman Blake
step << Worgen Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Train your class spells
    .target Sergeant Cleese
step << Worgen
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samantha Buckley|r
    .collect 2901,1 >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    .target Samantha Buckley
    .train 2575,3
    .subzoneskip 4786,1
step << Worgen Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .trainer >> Train your class spells
    .target Sister Almyra
step << Worgen Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Worgen Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Myriam Spellwaker
step << Worgen Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Train your class spells
    .target Vitus Darkwalker
step << Worgen Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .trainer >> Train your class spells
    .target Loren the Fence
step << Worgen
    .goto 179,32.77,66.40
    >>Click the |cRXP_PICK_Crate of Mandrake Essence|r
    .turnin 14320 >>Turn in In Need of Ingredients
step << Worgen
    .goto 179,32.77,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slain Watchman|r
    .accept 14321 >>Accept Invasion
    .target Slain Watchman
step << Worgen
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14321 >>Turn in Invasion
    .accept 14336 >>Accept Kill or Be Killed
    .target Gwen Armstead
step << Worgen
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14336 >>Turn in Kill or Be Killed
    .accept 14347 >>Accept Hold the Line
    .accept 14348 >>Accept You Can't Take 'Em Alone
    .target Prince Liam Greymane
step << Worgen
    #loop
    .goto 179,36.15,67.81,0
    .goto 179,36.15,67.81,40,0
    .goto 179,37.40,69.47,40,0
    .goto 179,33.97,68.06,40,0
    >>Kill |cRXP_ENEMY_Forsaken Invaders|r
    >>Pick up |cRXP_PICK_Black Gunpowder Keg|r from the ground
    .complete 14347,1 --Forsaken Invader slain (10)
    .collect 49202,1,14348,1 --Black Gunpowder Keg (1)
    .mob Forsaken Invader
step << Worgen
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14347 >>Turn in Hold the Line while you are here
    .isQuestComplete 14347
    .target Prince Liam Greymane
step << Worgen
    .goto 179,33.44,70.54
    >>Kill |cRXP_ENEMY_Horrid Abominations|r
    .complete 14348,1 --Horrid Abomination slain (4)
    .mob Horrid Abomination
step << Worgen
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14347 >>Turn in Hold the Line
    .turnin 14348 >>Turn in You Can't Take 'Em Alone
    .accept 14366 >>Accept Holding Steady
    .target Prince Liam Greymane
step << Worgen
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14366 >>Turn in Holding Steady
    .accept 14367 >>Accept The Allens' Storm Cellar
    .target Gwen Armstead
step << Worgen
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14367 >>Turn in The Allens' Storm Cellar
    .accept 14369 >>Accept Unleash the Beast
    .accept 14382 >>Accept Two By Sea
    .target Lord Godfrey
step << Worgen
    .goto 179,28.93,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melinda Hammond|r
    .accept 14368 >>Accept Save the Children!
    .target Melinda Hammond
step << Worgen
    #completewith Along26
    >>As you go: Kill |cRXP_ENEMY_Forsaken Footsoldiers|r and |cRXP_ENEMY_Forsaken Sailors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14369,1 --Forsaken Footsoldier (8)
    .mob Forsaken Footsoldier
    .mob Forsaken Sailor
step << Worgen
    #label Along26
    .goto 179,27.89,66.65
    >>Interact with |cRXP_FRIENDLY_Ashley|r
    .complete 14368,2 --Ashley
    .target Ashley
step << Worgen
    #loop
    .goto 179,29.24,70.38,0
    .goto 179,29.24,70.38,40,0
    .goto 179,24.29,69.05,40,0
    .goto 179,24.30,73.36,40,0
    >>Kill |cRXP_ENEMY_Forsaken Footsoldiers|r and |cRXP_ENEMY_Forsaken Sailors|r
    >>Kill |cRXP_ENEMY_Captain Anson|r
    .complete 14369,1 --Forsaken Footsoldier (8)
    .complete 14382,1 --Captain Anson slain (1)
    .mob Forsaken Footsoldier
    .mob Forsaken Sailor
    .mob Captain Anson
step << Worgen
    .goto 179,26.85,79.32
    >>Kill |cRXP_ENEMY_Captain Morris|r
    .complete 14382,2 --Captain Morris slain (1)
    .mob Captain Morris
step << Worgen
    .goto 179,29.59,69.31
    >>Interact with |cRXP_FRIENDLY_Cynthia|r
    .complete 14368,1 --Cynthia
    .target Cynthia
step << Worgen
    .goto 179,28.57,66.82
    >>Interact with |cRXP_FRIENDLY_James|r
    .complete 14368,3 --James
    .target James
step << Worgen
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14369 >>Turn in Unleash the Beast while you are here
    .isQuestComplete 14369
    .target Lord Godfrey
step << Worgen
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14382 >>Turn in Two By Sea while you are here
    .isQuestComplete 14382
    .target Lord Godfrey
step << Worgen
    .goto 179,28.93,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melinda Hammond|r
    .turnin 14368 >>Turn in Save the Children!
    .target Melinda Hammond
step << Worgen
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14369 >>Turn in Unleash the Beast
    .turnin 14382 >>Turn in Two By Sea
    .accept 14386 >>Accept Leader of the Pack
    .target Lord Godfrey
step << Worgen
    .goto 179,23.47,67.52
    >>Kill |cRXP_ENEMY_Dark Ranger Thyala|r
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .mob Dark Ranger Thyala
step << Worgen
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14386 >>Turn in Leader of the Pack
    .accept 14396 >>Accept As the Land Shatters
    .target Lord Godfrey
step << Worgen
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14396 >>Turn in As the Land Shatters
    .accept 14395 >>Accept Gasping for Breath
    .target Prince Liam Greymane
step << Worgen
    #loop
    .goto 179,27.89,66.67,0
    .goto 179,27.89,66.67,40,0
    .goto 179,25.40,68.80,40,0
    >>Interact with |cRXP_FRIENDLY_Drowning Watchmans|r
    .complete 14395,1 --Drowning Watchman (4)
    .target Drowning Watchman
step << Worgen
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14395 >>Turn in Gasping for Breath
    .accept 14397 >>Accept Evacuation
    .target Prince Liam Greymane
step << Worgen
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14397 >>Turn in Evacuation
    .accept 14398 >>Accept Grandma Wahl
    .accept 14403 >>Accept The Hayward Brothers
    .accept 14406 >>Accept The Crowley Orchard
    .target Gwen Armstead
step << Worgen
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14406 >>Turn in The Crowley Orchard
    .accept 14416 >>Accept The Hungry Ettin
    .target Lorna Crowley
step << Worgen
    #loop
    .goto 179,40.24,77.10,0
    .goto 179,40.24,77.10,40,0
    .goto 179,39.04,81.82,40,0
    >>Kill |cRXP_ENEMY_Mountain Horses|r
    .complete 14416,1 --Mountain Horse slain (5)
    .mob Mountain Horse
step << Worgen
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14416 >>Turn in The Hungry Ettin
    .target Lorna Crowley
step << Worgen
    .goto 179,32.52,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r
    .turnin 14398 >>Turn in Grandma Wahl
    .accept 14399 >>Accept Grandma's Lost It Alright
    .target Grandma Wahl
step << Worgen
    .goto 179,33.95,77.37
    >>Pick up |cRXP_PICK_Linen-Wrapped Book|r from the ground
    .complete 14399,1 --Linen-Wrapped Book (1)
step << Worgen
    .goto 179,32.52,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r
    .turnin 14399 >>Turn in Grandma's Lost It Alright
    .accept 14400 >>Accept I Can't Wear This
    .target Grandma Wahl
step << Worgen
    .goto 179,32.03,75.45
    >>Pick up |cRXP_PICK_Grandma's Good Clothes|r from the ground
    .complete 14400,1 --Grandma's Good Clothes (1)
step << Worgen
    .goto 179,32.52,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r
    .turnin 14400 >>Turn in I Can't Wear This
    .accept 14401 >>Accept Grandma's Cat
    .target Grandma Wahl
step << Worgen
    .goto 179,35.26,75.12
    >>Kill |cRXP_ENEMY_Chances|r and |cRXP_ENEMY_Lucius the Cruels|r. Loot them for |cRXP_LOOT_Chance the Cat|r
    .complete 14401,1 --Chance the Cat (1)
    .mob Chance
    .mob Lucius the Cruel
step << Worgen
    .goto 179,32.52,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r
    .turnin 14401 >>Turn in Grandma's Cat
    .target Grandma Wahl
step << Worgen
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14403 >>Turn in The Hayward Brothers
    .accept 14404 >>Accept Not Quite Shipshape
    .accept 14412 >>Accept Washed Up
    .target Sebastian Hayward
step << Worgen
    #loop
    .goto 179,37.49,85.94,0
    .goto 179,37.49,85.94,40,0
    .goto 179,36.10,86.45,40,0
    >>Kill |cRXP_ENEMY_Forsaken Castaways|r
    >>Open the |cRXP_PICK_Barrel of Coal Tar|r. Loot it for |cRXP_LOOT_Coal Tar|r
    >>Pick up |cRXP_PICK_Shipwright's Tools|r from the ground
    >>Pick up |cRXP_PICK_Planks of Wood|r from the ground
    .complete 14412,1 --Forsaken Castaway slain (6)
    .complete 14404,3 --Coal Tar (1)
    .complete 14404,1 --Shipwright's Tools (1)
    .complete 14404,2 --Planks of Wood (1)
    .mob Forsaken Castaway
step << Worgen
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14404 >>Turn in Not Quite Shipshape
    .turnin 14412 >>Turn in Washed Up
    .target Sebastian Hayward
step
    .hs >> Hearth to Duskhaven
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Worgen Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Worgen
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14465 >>Accept To Greymane Manor
    .target Gwen Armstead
step << Worgen
    #completewith next
    .zone 181 >>Travel to Greymane Manor - Main Floor
    .zoneskip 181
step << Worgen
    .goto 181,62.12,49.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Mia Greymane|r
    .turnin 14465 >>Turn in To Greymane Manor
    .accept 14466 >>Accept The King's Observatory
    .target Queen Mia Greymane
step << Worgen
    #completewith next
    .zone 179 >>Leave Greymane Manor - Main Floor for Gilneas
    .zoneskip 179
step << Worgen
    .goto 179,32.52,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl|r
    .accept 14402 >>Accept Ready to Go
    .target Grandma Wahl
step << Worgen
    #completewith next
    .zone 182 >>Travel to Greymane Manor - Upper Floor
    .zoneskip 182
step << Worgen
    .goto 182,41.91,20.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14466 >>Turn in The King's Observatory
    .accept 14467 >>Accept Alas, Gilneas!
    .turnin 14467 >>Turn in Alas, Gilneas!
    .accept 24438 >>Accept Exodus
    .target King Genn Greymane
step << Worgen
    #completewith next
    .zone 179 >>Leave Greymane Manor - Upper Floor for Gilneas
    .zoneskip 179
step << Worgen
    #completewith next
    .hs >>Hearth to Gerard Walthorn's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Worgen
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14402 >>Turn in Ready to Go
    .target Gwen Armstead
step << Worgen
    .goto 179,28.90,54.21
    >>Kill |cRXP_ENEMY_Stagecoach Carriage|r
    .complete 24438,1 --Stagecoach Carriage slain (1)
    .mob Stagecoach Carriage
step << Worgen
    .goto 179,51.81,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24438 >>Turn in Exodus
    .accept 24468 >>Accept Stranded at the Marsh
    .target Prince Liam Greymane
step << Worgen
    #loop
    .goto 179,52.00,73.74,0
    .goto 179,52.00,73.74,40,0
    .goto 179,52.28,68.64,40,0
    >>Interact with |cRXP_FRIENDLY_Crash Survivors|r
    .complete 24468,1 --Crash Survivor (5)
    .target Crash Survivor
step << Worgen
    .goto 179,51.81,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24468 >>Turn in Stranded at the Marsh
    .accept 24472 >>Accept Introductions Are in Order
    .target Prince Liam Greymane
step << Worgen
    #loop
    .goto 179,48.98,83.69,0
    .goto 179,48.98,83.69,40,0
    .goto 179,47.21,86.33,40,0
    .goto 179,51.42,86.08,40,0
    >>Kill |cRXP_ENEMY_Ogre Minions|r
    >>Pick up |cRXP_PICK_Koroth's Banner|r from the ground
    .complete 24472,1 --Ogre Minion slain (4)
    .complete 24472,2 --Koroth's Banner (1)
    .mob Ogre Minion
step << Worgen
    .goto 179,51.81,80.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 24472 >>Turn in Introductions Are in Order
    .accept 24483 >>Accept Stormglen
    .target Prince Liam Greymane
step << Mage
    .goto 179,59.073,92.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Myriam Spellwaker
step << Worgen Mage
    .goto 179,59.073,92.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .trainer >> Train your class spells
    .target Myriam Spellwaker
step << Worgen
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 24483 >>Turn in Stormglen
    .accept 24484 >>Accept Pest Control
    .target Gwen Armstead
step << Worgen
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 24495 >>Accept Pieces of the Past
    .target Lorna Crowley
step << Priest
    .goto 179,60.482,91.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r upstairs
    .trainer >> Train your class spells
    .target Sister Almyra
step << Druid
    .goto 179,60.002,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Warrior
    .goto 179,59.500,91.003
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Train your class spells
    .target Sergeant Cleese
step << Rogue
    .goto 179,60.255,90.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .trainer >> Train your class spells
    .target Loren the Fence
step << Hunter
    .goto 179,60.468,90.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Train your class spells
    .target Huntsman Blake
step << Warlock
    .goto 179,61.723,91.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Train your class spells
    .target Vitus Darkwalker
step << Worgen Priest
    .goto 179,60.482,91.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r upstairs
    .trainer >> Train your class spells
    .target Sister Almyra
step << Worgen Druid
    .goto 179,60.002,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .trainer >> Train your class spells
    .target Celestine of the Harvest
step << Worgen Warrior
    .goto 179,59.500,91.003
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .trainer >> Train your class spells
    .target Sergeant Cleese
step << Worgen Rogue
    .goto 179,60.255,90.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    .trainer >> Train your class spells
    .target Loren the Fence
step << Worgen Hunter
    .goto 179,60.468,90.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .trainer >> Train your class spells
    .target Huntsman Blake
step << Worgen Warlock
    .goto 179,61.723,91.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .trainer >> Train your class spells
    .target Vitus Darkwalker
step << Worgen
    #loop
    .goto 179,62.79,90.83,0
    .goto 179,62.79,90.83,40,0
    .goto 179,67.07,91.10,40,0
    .goto 179,66.63,85.39,40,0
    >>Kill |cRXP_ENEMY_Vilebrood Skitterers|r. Loot them for |cRXP_LOOT_Old Journal Page|r. It can also be picked up from |cRXP_PICK_Old Journal Page|r on the ground
    >>Kill |cRXP_ENEMY_Vilebrood Skitterers|r
    .complete 24495,1 --Old Journal Page (6)
    .complete 24484,1 --Vilebrood Skitterer slain (6)
    .mob Vilebrood Skitterer
step << Worgen
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24495 >>Turn in Pieces of the Past
    .target Lorna Crowley
step << Worgen
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 24484 >>Turn in Pest Control
    .accept 24501 >>Accept Queen-Sized Troubles
    .target Gwen Armstead
step << Worgen
    .goto 179,68.36,81.65
    >>Kill |cRXP_ENEMY_Rygna|r
    .complete 24501,1 --Rygna slain (1)
    .mob Rygna
step << Worgen
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 24501 >>Turn in Queen-Sized Troubles
    .target Gwen Armstead
step << Worgen
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 24578 >>Accept The Blackwald
    .target Lorna Crowley
step << Worgen
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belysra Starbreeze|r
    .turnin 24578 >>Turn in The Blackwald
    .accept 24616 >>Accept Losing Your Tail
    .target Belysra Starbreeze
step << Worgen
    .goto 179,63.41,80.69
    >>Kill |cRXP_ENEMY_Dark Scout|r
    .complete 24616,1 --Dark Scout slain (1)
    .mob Dark Scout
step << Worgen
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belysra Starbreeze|r
    .turnin 24616 >>Turn in Losing Your Tail
    .accept 24617 >>Accept Tal'doren, the Wild Home
    .target Belysra Starbreeze
step << Worgen
    .goto 179,68.72,73.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24617 >>Turn in Tal'doren, the Wild Home
    .accept 24627 >>Accept At Our Doorstep
    .target Lord Darius Crowley
step << Worgen
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .accept 24628 >>Accept Preparations
    .target Vassandra Stormclaw
step << Worgen
    #completewith Along76
    >>As you go: Pick up |cRXP_PICK_Moonleaf|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 24628,1 --Moonleaf (6)
step << Worgen
    #label Along76
    #loop
    .goto 179,63.44,74.30,0
    .goto 179,63.44,74.30,40,0
    .goto 179,63.34,70.89,40,0
    >>Kill |cRXP_ENEMY_Howling Banshees|r
    .complete 24627,1 --Howling Banshee slain (6)
    .mob Howling Banshee
step << Worgen
    #loop
    .goto 179,61.24,79.36,0
    .goto 179,61.24,79.36,40,0
    .goto 179,59.39,77.01,40,0
    .goto 179,58.91,80.64,40,0
    >>Pick up |cRXP_PICK_Moonleaf|r from the ground
    .complete 24628,1 --Moonleaf (6)
step << Worgen
    .goto 179,68.72,73.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24627 >>Turn in At Our Doorstep
    .accept 24646 >>Accept Take Back What's Ours
    .target Lord Darius Crowley
step << Worgen
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw|r
    .turnin 24628 >>Turn in Preparations
    .target Vassandra Stormclaw
step << Worgen
    .goto 179,57.51,75.57
    >>Open the |cRXP_PICK_Worn Coffer|r. Loot it for |cRXP_LOOT_Mysterious Artifact|r
    .complete 24646,1 --Mysterious Artifact (1)
step << Worgen
    .goto 179,68.72,73.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24646 >>Turn in Take Back What's Ours
    .accept 24593 >>Accept Neither Human Nor Beast
    .target Lord Darius Crowley
step << Worgen
    .goto 179,69.25,73.10
    >>Click the |cRXP_PICK_Well of Fury|r
    >>Click the |cRXP_PICK_Well of Tranquility|r
    >>Click the |cRXP_PICK_Well of Balance|r
    .complete 24593,1 --Well of Fury
    .complete 24593,2 --Well of Tranquility
    .complete 24593,3 --Well of Balance
step << Worgen
    .goto 179,68.72,73.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24593 >>Turn in Neither Human Nor Beast
    .accept 24673 >>Accept Return to Stormglen
    .target Lord Darius Crowley
step << Worgen
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 24673 >>Turn in Return to Stormglen
    .accept 24672 >>Accept Onwards and Upwards
    .target Gwen Armstead
step << Worgen
    .goto 179,72.72,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24672 >>Turn in Onwards and Upwards
    .accept 24592 >>Accept Betrayal at Tempest's Reach
    .target Krennan Aranas
step << Worgen
    .goto 179,78.11,66.11
    >>Kill |cRXP_ENEMY_Lord Walden|r
    .complete 24592,2 --Lord Walden slain (1)
    .mob Lord Walden
step << Worgen
    .goto 179,84.71,74.58
    >>Kill |cRXP_ENEMY_Baron Ashbury|r
    .complete 24592,1 --Baron Ashbury slain (1)
    .mob Baron Ashbury
step << Worgen
    .goto 179,78.27,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 24592 >>Turn in Betrayal at Tempest's Reach
    .accept 24677 >>Accept Flank the Forsaken
    .target King Genn Greymane
step << Worgen
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24677 >>Turn in Flank the Forsaken
    .accept 24575 >>Accept Liberation Day
    .target Lorna Crowley
step << Worgen
    .goto 179,70.65,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magda Whitewall|r
    .accept 24675 >>Accept Last Meal
    .target Magda Whitewall
step << Worgen
    .goto 179,71.25,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcus|r
    .accept 24674 >>Accept Slaves to No One
    .target Marcus
step << Worgen
    .goto 179,72.96,42.72
    >>Kill |cRXP_ENEMY_Brown Stags|r. Loot them for |cRXP_LOOT_Side of Stag Meat|r
    .complete 24675,1 --Side of Stag Meat (10)
    .mob Brown Stag
step << Worgen
    .goto 179,75.97,32.26
    >>Kill |cRXP_ENEMY_Forsaken Slavedriver|r and loot |cRXP_LOOT_Slaver's Key|r
    .collect 49881,1,24575,1 --Slaver's Key (1)
    .mob Forsaken Slavedriver
step << Worgen
    .goto 179,75.72,31.14
    >>Interact with |cRXP_FRIENDLY_Enslaved Villagers|r
    .complete 24575,1 --Enslaved Villager (5)
    .target Enslaved Villager
step << Worgen
    #completewith next
    .zone 180 >>Travel to Emberstone Mine
    .zoneskip 180
step << Worgen
    .goto 180,54.23,81.18
    >>Kill |cRXP_ENEMY_Brothogg the Slavemaster|r
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
    .mob Brothogg the Slavemaster
step << Worgen
    #completewith next
    .zone 179 >>Leave Emberstone Mine for Gilneas
    .zoneskip 179
step << Worgen
    .goto 179,70.65,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magda Whitewall|r
    .turnin 24675 >>Turn in Last Meal
    .target Magda Whitewall
step << Worgen
    .goto 179,71.25,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcus|r
    .turnin 24674 >>Turn in Slaves to No One
    .target Marcus
step << Worgen
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24575 >>Turn in Liberation Day
    .accept 24676 >>Accept Push Them Out
    .target Lorna Crowley
step << Worgen
    #loop
    .goto 179,72.87,29.94,0
    .goto 179,72.87,29.94,40,0
    .goto 179,74.13,27.47,40,0
    >>Kill |cRXP_ENEMY_Forsaken Infantries|r
    >>Kill |cRXP_ENEMY_Executor Cornell|r
    >>Kill |cRXP_ENEMY_Valnov the Mad|r
    .complete 24676,1 --Forsaken Infantry slain (4)
    .complete 24676,2 --Executor Cornell slain (1)
    .complete 24676,3 --Valnov the Mad slain (1)
    .mob Forsaken Infantry
    .mob Executor Cornell
    .mob Valnov the Mad
step << Worgen
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24676 >>Turn in Push Them Out
    .accept 24904 >>Accept The Battle for Gilneas City
    .target Lorna Crowley
step << Worgen
    .goto 179,58.80,53.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24904 >>Turn in The Battle for Gilneas City
    .target Lorna Crowley
    .isQuestComplete 24904
step << Worgen
    .goto 179,58.80,53.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 24902 >>Accept The Hunt For Sylvanas
    .target Lorna Crowley
    .isQuestTurnedIn 24904 --any of: The Battle for Gilneas City
    .xp <5,1
step << Worgen
    .goto 179,58.80,53.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 24903 >>Accept Vengeance or Survival
    .target Lorna Crowley
    .isQuestTurnedIn 24902 --any of: The Hunt For Sylvanas
    .xp <5,1
step << Worgen
    .goto 179,57.03,52.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 24903 >>Turn in Vengeance or Survival
    .target King Genn Greymane
    .isOnQuest 24903
step << Worgen
    .goto 179,57.03,52.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .accept 24920 >>Accept Slowing the Inevitable
    .target King Genn Greymane
    .isQuestTurnedIn 24903 --any of: Vengeance or Survival
    .xp <5,1
step << Worgen
    #loop
    .goto 179,59.52,35.44,0
    .goto 179,59.52,35.44,40,0
    .goto 179,62.11,31.64,40,0
    .goto 179,57.55,27.58,40,0
    >>Kill |cRXP_ENEMY_Forsaken Plaguesmiths|r and |cRXP_ENEMY_Forsaken Invaders|r
    .complete 24920,2 --Forsaken Plaguesmith (40)
    .mob Forsaken Plaguesmith
    .mob Forsaken Invader
    .isOnQuest 24920
step << Worgen
    #loop
    .goto 179,59.66,34.86,0
    .goto 179,59.66,34.86,40,0
    .goto 179,57.78,33.93,40,0
    .goto 179,54.71,35.77,40,0
    >>Kill |cRXP_ENEMY_Forsaken Catapults|r
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .isOnQuest 24920
step << Worgen
    .goto 179,57.03,52.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 24920 >>Turn in Slowing the Inevitable
    .target King Genn Greymane
    .isOnQuest 24920
step << Worgen
    .goto 179,57.03,52.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .accept 24678 >>Accept Knee-Deep
    .target King Genn Greymane
    .isQuestTurnedIn 24920 --any of: Slowing the Inevitable
    .xp <5,1
step << Worgen
    .goto 179,58.80,53.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24902 >>Turn in The Hunt For Sylvanas
    .target Lorna Crowley
    .isQuestComplete 24902
step << Worgen
    .goto 179,49.84,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24678 >>Turn in Knee-Deep
    .target Krennan Aranas
    .isOnQuest 24678
step << Worgen
    .goto 179,49.84,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .accept 24602 >>Accept Laid to Rest
    .target Krennan Aranas
    .isQuestTurnedIn 24678 --any of: Knee-Deep
    .xp <5,1
step << Worgen
    #loop
    .goto 179,48.08,54.10,0
    .goto 179,48.08,54.10,40,0
    .goto 179,46.80,53.32,40,0
    >>Loot the |cRXP_PICK_Disturbed Soils|r for |cRXP_LOOT_Unearthed Memento|r
    .complete 24602,1 --Unearthed Memento (5)
    .isOnQuest 24602
step << Worgen
    .goto 179,49.84,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24602 >>Turn in Laid to Rest
    .target Krennan Aranas
    .isOnQuest 24602
step << Worgen
    .goto 179,49.84,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .accept 24679 >>Accept Patriarch's Blessing
    .target Krennan Aranas
    .isQuestTurnedIn 24602 --any of: Laid to Rest
    .xp <5,1
step << Worgen
    .goto 179,48.87,53.10
    >>Click the |cRXP_PICK_Aderic's Tomb|r
    .complete 24679,1 --Aderic's Tomb
    .isOnQuest 24679
step << Worgen
    .goto 179,49.84,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24679 >>Turn in Patriarch's Blessing
    .target Krennan Aranas
    .isOnQuest 24679
step << Worgen
    .goto 179,49.84,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas|r
    .accept 24680 >>Accept Keel Harbor
    .target Krennan Aranas
    .isQuestTurnedIn 24679 --any of: Patriarch's Blessing
    .xp <5,1
step << Worgen
    .goto 179,41.94,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24680 >>Turn in Keel Harbor
    .target Lord Darius Crowley
    .isOnQuest 24680
step << Worgen
    .goto 179,41.94,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .accept 24681 >>Accept They Have Allies, But So Do We
    .target Lord Darius Crowley
    .isQuestTurnedIn 24680 --any of: Keel Harbor
    .xp <5,1
step << Worgen
    #loop
    .goto 179,29.04,34.69,0
    .goto 179,29.04,34.69,40,0
    .goto 179,27.78,38.44,40,0
    .goto 179,28.18,29.57,40,0
    >>Kill |cRXP_ENEMY_Orc Raiders|r
    .complete 24681,1 --Orc Raider slain (40)
    .mob Orc Raider
    .isOnQuest 24681
step << Worgen
    .goto 179,28.16,29.13
    >>Kill |cRXP_ENEMY_Wolfmaw Outriders|r
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .mob Wolfmaw Outrider
    .isOnQuest 24681
step << Worgen
    #loop
    .goto 179,27.67,27.29,0
    .goto 179,27.67,27.29,40,0
    .goto 179,26.57,31.45,40,0
    .goto 179,29.26,21.20,40,0
    >>Kill |cRXP_ENEMY_Orcish War Machines|r
    .complete 24681,3 --Orcish War Machine slain (4)
    .mob Orcish War Machine
    .isOnQuest 24681
step << Worgen
    .goto 179,41.94,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24681 >>Turn in They Have Allies, But So Do We
    .target Lord Darius Crowley
    .isOnQuest 24681
step
    +|cRXP_WARN_End of the Gilneas route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Gilneas City|r: Safety in Numbers << Worgen Rogue
    >>|cRXP_FRIENDLY_Gilneas City|r: Safety in Numbers << Worgen Warlock
    >>|cRXP_FRIENDLY_Gilneas City|r: Safety in Numbers << Worgen Hunter
    >>|cRXP_FRIENDLY_Gilneas City and back here|r: The Battle for Gilneas City << Worgen
]])
