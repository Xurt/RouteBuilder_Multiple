-- 29-38 Hillsbrad Foothills: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 29, 32).
-- Split into 2 guides, listed under "29 - 33 Hillsbrad Foothills" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Hillsbrad Foothills.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 29 - 33 Hillsbrad Foothills
#subweight -29
#name 29-30 Hillsbrad Foothills: around Lieutenant Farren Orinelle
--RouteBuilder:next
#next Zone Routes (Alliance)\30-32 Stranglethorn Vale: around Krazek;Zone Routes (Alliance)\28-29 Duskwood: around Sirra Von'Indi;Zone Routes (Alliance)\27-29 Ashenvale: around Sentinel Melyria Frostshadow

step
    .goto 1424/0,-601.49,-853.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmeister Bilger|r
    .turnin 647 >>Turn in MacKreel's Moonshine
    .target Brewmeister Bilger
    .isOnQuest 647
step
    .goto 1424/0,-580.05,-845.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .accept 536 >>Accept Down the Coast
    .target Lieutenant Farren Orinelle
step
    .goto 1424/0,-551.57,-817.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 538 >>Turn in Southshore
    .target Loremaster Dibbs
    .isOnQuest 538
step << Hunter
    .goto 1424/0,-744.53,-747.73
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Moss Creeper|r to tame it|r
    .train 17264 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
step
    #loop
    .goto 1424/0,-478.61,-1015.89,0
    .goto 1424/0,-478.61,-1015.89,40,0
    .goto 1424/0,-352.21,-1047.89,40,0
    .goto 1424/0,-235.09,-1076.69,40,0
    >>Kill |cRXP_ENEMY_Torn Fin Tidehunters|r
    >>Kill |cRXP_ENEMY_Torn Fin Oracles|r
    .complete 536,1 --Torn Fin Tidehunter slain (10)
    .complete 536,2 --Torn Fin Oracle slain (10)
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle
step
    .goto 1424/0,-580.05,-845.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 536 >>Turn in Down the Coast
    .accept 559 >>Accept Farren's Proof
    .target Lieutenant Farren Orinelle
step
    #loop
    .goto 1424/0,-167.89,-1117.23,0
    .goto 1424/0,-167.89,-1117.23,40,0
    .goto 1424/0,-87.25,-1066.45,40,0
    .goto 1424/0,11.31,-1147.52,40,0
    >>Kill |cRXP_ENEMY_Torn Fin Muckdwellers|r, |cRXP_ENEMY_Torn Fin Coastrunners|r, |cRXP_ENEMY_Torn Fin Oracles|r and |cRXP_ENEMY_Torn Fin Tidehunters|r. Loot them for |cRXP_LOOT_Murloc Head|r
    .complete 559,1 --Murloc Head (10)
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Torn Fin Oracle
    .mob Torn Fin Tidehunter
step
    .goto 1424/0,-580.05,-845.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 559 >>Turn in Farren's Proof
    .accept 560 >>Accept Farren's Proof
    .target Lieutenant Farren Orinelle
step
    .goto 1424/0,-516.37,-852.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 560 >>Turn in Farren's Proof
    .accept 561 >>Accept Farren's Proof
    .target Marshal Redpath
step
    .goto 1424/0,-580.05,-845.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 561 >>Turn in Farren's Proof
    .accept 562 >>Accept Stormwind Ho!
    .target Lieutenant Farren Orinelle
step
    #loop
    .goto 1424/0,-620.69,-997.55,0
    .goto 1424/0,-620.69,-997.55,40,0
    .goto 1424/0,-781.01,-1014.40,40,0
    .goto 1424/0,-822.29,-1126.19,40,0
    >>Kill |cRXP_ENEMY_Daggerspine Shorehunters|r
    >>Kill |cRXP_ENEMY_Daggerspine Sirens|r
    .complete 562,1 --Daggerspine Shorehunter slain (10)
    .complete 562,2 --Daggerspine Siren slain (10)
    .mob Daggerspine Shorehunter
    .mob Daggerspine Siren
step
    .goto 1424/0,-580.05,-845.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farren Orinelle|r
    .turnin 562 >>Turn in Stormwind Ho!
    .accept 563 >>Accept Reassignment
    .target Lieutenant Farren Orinelle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .goto 1424/0,-512.15,-715.14
    .fp Southshore >>Get the Southshore Flight Path
    .target Darla Harris
step
    .hs >> Hearth to Menethil
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .zoneskip Hillsbrad Foothills
    .zoneskip Wetlands
step
    .goto 1424/0,-593.81,-851.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
    .accept 555 >>Accept Soothing Turtle Bisque
    .target Chef Jessen
step
    .goto 1424/0,-499.41,-773.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Soothing Spices|r from |cRXP_FRIENDLY_Micha Yance|r
    .complete 555,2 --Soothing Spices (1)
    .target Micha Yance
step
    #loop
    .goto 1424/0,-723.41,-750.93,0
    .goto 1424/0,-723.41,-750.93,40,0
    .goto 1424/0,-737.81,-679.25,40,0
    >>Kill |cRXP_ENEMY_Snapjaw|r and loot |cRXP_LOOT_Turtle Meat|r
    .complete 555,1 --Turtle Meat (1)
    .mob Snapjaw
step
    .goto 1424/0,-593.81,-851.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Jessen|r
    .turnin 555 >>Turn in Soothing Turtle Bisque
    .target Chef Jessen
step
    .goto 1424/0,-559.57,-859.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaysin Lanyda|r
    .target Jaysin Lanyda
    .home >>Set your Hearthstone to Jaysin Lanyda's inn
step
    .goto 1424/0,-565.01,-852.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huraan|r
    .accept 9435 >>Accept Missing Crystals
    .target Huraan
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .accept 505 >>Accept Syndicate Assassins
    .target Magistrate Henry Maleb
step
    .goto 1424/0,-551.57,-817.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 540 >>Accept Preserving Knowledge
    .target Loremaster Dibbs
    .isQuestTurnedIn 538 --any of: Southshore
    .xp <20,1
step
    .goto 1424/0,-551.57,-817.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 511 >>Turn in Encrypted Letter
    .target Loremaster Dibbs
    .isOnQuest 511
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 505 >>Turn in Syndicate Assassins
    .target Magistrate Henry Maleb
    .isQuestComplete 505
step
    .goto 1424/0,-711.57,-351.36
    >>Open the |cRXP_PICK_Unopened Crate|r. Loot it for |cRXP_LOOT_Shipment of Rare Crystals|r
    .complete 9435,1 --Shipment of Rare Crystals (1)
step
    .goto 1424/0,-565.01,-852.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huraan|r
    .turnin 9435 >>Turn in Missing Crystals
    .target Huraan
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 510 >>Turn in Foreboding Plans
    .target Magistrate Henry Maleb
    .isOnQuest 510
step
    .goto 1424/0,-544.53,-859.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
    .turnin 661 >>Turn in Hints of a New Plague?
    .target Phin Odelic
    .isOnQuest 661
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley|r
    .goto 1424/0,-546.61,-854.46
    .target Wesley
    .train 17265,1
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 525 >>Turn in Further Mysteries
    .target Magistrate Henry Maleb
    .isOnQuest 525
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .accept 512 >>Accept Noble Deaths
    .target Magistrate Henry Maleb
    .isQuestTurnedIn 510 --any of: Foreboding Plans
    .xp <27,1
step
    .goto 1424/0,-551.57,-817.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 542 >>Accept Return to Milton
    .target Loremaster Dibbs
    .isQuestTurnedIn 540 --any of: Preserving Knowledge
    .xp <20,1
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 512 >>Turn in Noble Deaths
    .target Magistrate Henry Maleb
    .isQuestComplete 512
step
    .goto 1424/0,-551.57,-817.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .turnin 540 >>Turn in Preserving Knowledge
    .target Loremaster Dibbs
    .isQuestComplete 540
step
    +|cRXP_WARN_That is all of Hillsbrad Foothills for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stormwind City|r: Reassignment, Return to Milton
    >>|cRXP_FRIENDLY_Alterac Mountains and back here|r: Syndicate Assassins
step
    +|cRXP_WARN_Suggested next zones at level 29|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.8 levels of quests, starting around Krazek), |cRXP_FRIENDLY_Duskwood|r (about 0.7 levels of quests, starting around Sirra Von'Indi), |cRXP_FRIENDLY_Ashenvale|r (about 0.6 levels of quests, starting around Sentinel Melyria Frostshadow). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Hillsbrad Foothills is planned from level 32.|r Load its guide for level 32 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 29 - 33 Hillsbrad Foothills
#subweight -29
#name 32-33 Hillsbrad Foothills: around Bartolo Ginsetti
--RouteBuilder:next
#next Zone Routes (Alliance)\30-32 Stranglethorn Vale: around Krazek;Zone Routes (Alliance)\28-29 Duskwood: around Sirra Von'Indi

step
    .goto 1424/0,-515.09,-784.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
    .accept 565 >>Accept Bartolo's Yeti Fur Cloak
    .target Bartolo Ginsetti
step
    #completewith Drop635x1
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Cave Yeti|r, |cRXP_ENEMY_Ferocious Yeti|r, |cRXP_ENEMY_Captain Ironhill|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x1
    .goto 1424/0,-499.41,-773.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Fine Thread|r from |cRXP_FRIENDLY_Micha Yance|r
    .complete 565,2 --Fine Thread (1)
    .target Micha Yance
step
    .goto 1424/0,-535.25,-835.41
    >>Kill |cRXP_ENEMY_Shadowy Assassin|r and loot |cRXP_LOOT_Assassin's Contract|r. Use it to start the quest
    .collect 3668,1,522 --Assassin's Contract (1)
    .accept 522 >>Accept Assassin's Contract
    .use 3668
    .mob Shadowy Assassin
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 522 >>Turn in Assassin's Contract while you are here
    .isQuestComplete 522
    .target Magistrate Henry Maleb
step
    .goto 1424/0,-544.53,-859.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phin Odelic|r
    .accept 659 >>Accept Hints of a New Plague?
    .target Phin Odelic
step
    .goto 1424/0,-516.37,-852.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .accept 500 >>Accept Crushridge Bounty
    .target Marshal Redpath
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 522 >>Turn in Assassin's Contract
    .target Magistrate Henry Maleb
step
    .goto 1424/0,-551.57,-817.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loremaster Dibbs|r
    .accept 514 >>Accept Letter to Stormpike
    .target Loremaster Dibbs
    .isQuestTurnedIn 511 --any of: Encrypted Letter
    .xp <30,1
step
    .goto 1424/0,-515.09,-784.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartolo Ginsetti|r
    .turnin 565 >>Turn in Bartolo's Yeti Fur Cloak
    .target Bartolo Ginsetti
    .isQuestComplete 565
step
    .goto 1424/0,-516.37,-852.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Redpath|r
    .turnin 500 >>Turn in Crushridge Bounty
    .target Marshal Redpath
    .isQuestComplete 500
step
    .goto 1424/0,-610.77,-793.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
    .accept 564 >>Accept Costly Menace
    .target Darren Malvew
step
    .goto 1424/0,-610.77,-793.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darren Malvew|r
    .turnin 564 >>Turn in Costly Menace
    .target Darren Malvew
    .isQuestComplete 564
step
    .goto 1424/0,-174.93,-125.23
    >>Kill |cRXP_ENEMY_Mountain Lions|r
    .complete 564,1 --Mountain Lion slain (8)
    .mob Mountain Lion
step
    #completewith Drop635x2
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Cave Yeti|r, |cRXP_ENEMY_Ferocious Yeti|r, |cRXP_ENEMY_Captain Ironhill|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x2
    #loop
    .goto 1424/0,-338.45,-212.91,0
    .goto 1424/0,-338.45,-212.91,40,0
    .goto 1424/0,-413.97,-280.96,40,0
    >>Open the |cRXP_PICK_Solid Chest|r. Loot it for |cRXP_LOOT_Bolt of Woolen Cloth|r
    >>Kill |cRXP_ENEMY_Cave Yetis|r and |cRXP_ENEMY_Ferocious Yetis|r. Loot them for |cRXP_LOOT_Yeti Fur|r
    .complete 565,1 --Bolt of Woolen Cloth (1)
    .complete 565,4 --Yeti Fur (1)
    .mob Cave Yeti
    .mob Ferocious Yeti
step
    .goto 1424/0,-473.81,-861.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Henry Maleb|r
    .turnin 505 >>Turn in Syndicate Assassins
    .target Magistrate Henry Maleb
    .isQuestComplete 505
step
    +|cRXP_WARN_End of the Hillsbrad Foothills route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Hints of a New Plague?, Crystal in the Mountains
    >>|cRXP_FRIENDLY_Ironforge|r: Letter to Stormpike
    >>|cRXP_FRIENDLY_Alterac Mountains and back here|r: Costly Menace, Crushridge Bounty
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Bartolo's Yeti Fur Cloak
step
    +|cRXP_WARN_Suggested next zones at level 32|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.6 levels of quests, starting around Krazek), |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Sirra Von'Indi). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
]])
