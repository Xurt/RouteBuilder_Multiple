-- 10-21 Bloodmyst Isle: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 10, 14, 20).
-- Split into 3 guides, listed under "10 - 21 Bloodmyst Isle" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Bloodmyst Isle.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 21 Bloodmyst Isle
#subweight -10
#name 10-12 Bloodmyst Isle: around Morae
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver;Zone Routes (Alliance)\5-10 Azuremyst Isle: around Daedal;Zone Routes (Alliance)\5-10 Elwynn Forest: around Marshal Dughan

step
    .goto 1950,63.43,88.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aonar|r
    .accept 9624 >>Accept A Favorite Treat
    .target Aonar
step
    .goto 1950,63.03,87.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .turnin 9625 >>Turn in Elekks Are Serious Business
    .target Vorkhan the Elekk Herder
    .isOnQuest 9625
step
    .goto 1950,63.03,87.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .accept 9634 >>Accept Alien Predators
    .target Vorkhan the Elekk Herder
step
    #loop
    .goto 1950,58.34,85.46,0
    .goto 1950,58.34,85.46,40,0
    .goto 1950,58.22,82.54,40,0
    >>Kill |cRXP_ENEMY_Bloodmyst Hatchlings|r
    .complete 9634,1 --Bloodmyst Hatchling slain (10)
    .mob Bloodmyst Hatchling
step
    #loop
    .goto 1950,63.45,80.37,0
    .goto 1950,63.45,80.37,40,0
    .goto 1950,66.55,86.49,40,0
    .goto 1950,67.10,83.94,40,0
    .goto 1950,67.28,76.80,40,0
    >>Pick up |cRXP_PICK_Sand Pear|r from the ground
    .complete 9624,1 --Sand Pear (10)
step << Draenei
    .goto 1950,55.85,59.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .turnin 9606 >>Turn in Return to Topher Loaal
    .target Caregiver Topher Loaal
    .isOnQuest 9606
step << Draenei
    .goto 1950,55.85,59.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .accept 9603 >>Accept Beds, Bandages, and Beyond
    .target Caregiver Topher Loaal
step << Draenei
    .goto 1950,57.68,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .turnin 9603 >>Turn in Beds, Bandages, and Beyond
    .target Laando
step
    .goto 1950,57.68,53.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .target Laando
    .fp Blood Watch>> Get the Blood Watch flight path
    .subzoneskip 3584,1
step
    .goto 1950,57.50,86.50,0
    .goto 1950,63.50,83.80,0
    .goto 1950,72.70,80.90,0
    .goto 1950,60.10,91.60,60,0
    .goto 1950,57.50,86.50,60,0
    .goto 1950,59.70,85.80,60,0
    .goto 1950,63.50,83.80,60,0
    .goto 1950,67.70,87.60,60,0
    .goto 1950,72.70,80.90,60,0
    .xp 12+3880 >> Grind until you're 3880 xp into level 12 (3880+/9800)
step << Draenei
    .goto 1950,57.68,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .accept 9604 >>Accept On the Wings of a Hippogryph
    .target Laando
    .xp <10,1
step
    .goto 1950,63.43,88.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aonar|r
    .turnin 9624 >>Turn in A Favorite Treat
    .target Aonar
step
    .goto 1950,63.03,87.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .turnin 9634 >>Turn in Alien Predators
    .target Vorkhan the Elekk Herder
step << !Warrior
    .xp 16-3300 >> Grind until you are 3300xp away from level 16 (10300/13600)
step << Draenei
    .goto 1950,57.68,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .accept 9604 >>Accept On the Wings of a Hippogryph
    .target Laando
step
    .xp 17+12800 >> Grind until you're 12800 xp into level 17 (12800+/16400)
step << Hunter/Shaman/Mage
    .xp 20 >> Grind to level 20
step
    .goto 1950,68.26,80.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Stillpine|r
    .accept 9667 >>Accept Saving Princess Stillpine
    .target Princess Stillpine
    .isQuestTurnedIn 9559 --any of: Stillpine Hold
    .xp <10,1
step
    .goto 1950,64.20,76.40
    >>Kill |cRXP_ENEMY_High Chief Bristlelimb|r and loot |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --The High Chief's Key (1)
    .mob High Chief Bristlelimb
    .isOnQuest 9667
step
    .goto 1950,68.26,80.99
    >>Release Princess Stillpine from her cage and then speak with Stillpine Ambassador Frasaboo at Blood Watch.
    .complete 9667,1 --Princess Stillpine
    .target Princess Stillpine
    .isOnQuest 9667
step
    .goto 1950,55.16,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine Ambassador Frasaboo|r
    .turnin 9667 >>Turn in Saving Princess Stillpine
    .target Stillpine Ambassador Frasaboo
    .isOnQuest 9667
step << Draenei Shaman
    .goto 1950,32.30,16.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9501 >>Turn in Call of Water
    .target Aqueous
    .isOnQuest 9501
step
    .goto 1950,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >>Accept The Kessel Run
    .target Kessel
step
    .goto 1950,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >>Turn in The Kessel Run
    .target Kessel
    .isQuestComplete 9663
step
    .goto 1950,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9666 >>Accept Declaration of Power
    .target Kessel
    .isQuestTurnedIn 9663 --any of: The Kessel Run
    .xp <10,1
step
    .goto 1950,68.77,68.16
    >>Interact with |cRXP_FRIENDLY_Lord Xiz|r
    .complete 9666,1 --Lord Xiz
    .target Lord Xiz
    .isOnQuest 9666
step
    .goto 1950,68.77,68.16
    >>Interact with |cRXP_FRIENDLY_Lord Xiz|r
    .complete 9666,2 --Lord Xiz
    .target Lord Xiz
    .isOnQuest 9666
step
    .goto 1950,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9666 >>Turn in Declaration of Power
    .target Kessel
    .isOnQuest 9666
step
    .goto 1950,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9668 >>Accept Report to Exarch Admetius
    .target Kessel
    .isQuestTurnedIn 9666 --any of: Declaration of Power
    .xp <10,1
step
    .goto 1950,53.32,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beega|r
    .target Beega
    .vendor >> |cRXP_WARN_Vendor and Repair|r << !Hunter
    .vendor >> |cRXP_BUY_Buy a|r |T134410:0|t[Medium Quiver] |cRXP_WARN_and restock on|r |T132382:0|t[Sharp Arrows] << Hunter
    .collect 11362,1 << Hunter
    .subzoneskip 3584,1
step
    .goto 1950,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9668 >>Turn in Report to Exarch Admetius
    .target Exarch Admetius
    .isOnQuest 9668
step
    .goto 1950,48.10,47.60
    .xp 15-1200 >> Grind until you are 1200xp away from level 15 (11100/12300)
step
    .goto 1950,55.85,59.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >>Set your Hearthstone to Caregiver Topher Loaal's inn
step
    .goto 1950,56.42,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .accept 9648 >>Accept Maatparm Mushroom Menagerie
    .target Maatparm
step << Paladin
    .goto 1950,55.55,55.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    .goto 1950,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .accept 9693 >>Accept What Argus Means to Me
    .target Exarch Admetius
step
    .goto 1950,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >>Accept Learning from the Crystals
    .target Harbinger Mikolaas
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9693 >>Turn in What Argus Means to Me
    .accept 9694 >>Accept Blood Watch
    .target Vindicator Boros
step
    #loop
    .goto 1950,49.18,48.21,0
    .goto 1950,49.18,48.21,40,0
    .goto 1950,47.50,43.92,40,0
    .goto 1950,45.39,48.68,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Spies|r
    .complete 9694,1 --Sunhawk Spy slain (10)
    .mob Sunhawk Spy
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9694 >>Turn in Blood Watch
    .target Vindicator Boros
step
    .goto 1950,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .accept 9629 >>Accept Catch and Release
    .target Morae
step
    .goto 1950,38.43,82.02
    >>Kill |cRXP_ENEMY_Tzerak|r and loot |cRXP_LOOT_Tzerak's Armor Plate|r. Use it to start the quest
    .collect 23900,1,9594 --Tzerak's Armor Plate (1)
    .accept 9594 >>Accept Signs of the Legion
    .use 23900
    .mob Tzerak
step
    #loop
    .goto 1950,35.96,80.25,0
    .goto 1950,35.96,80.25,40,0
    .goto 1950,38.24,77.72,40,0
    .goto 1950,38.93,74.60,40,0
    >>Kill |cRXP_ENEMY_Nazzivus Satyrs|r
    >>Kill |cRXP_ENEMY_Nazzivus Felsworns|r
    .complete 9594,1 --Nazzivus Satyr slain (8)
    .complete 9594,2 --Nazzivus Felsworn slain (8)
    .mob Nazzivus Satyr
    .mob Nazzivus Felsworn
step
    .goto 1950,43.14,83.42
    >>Pick up |cRXP_PICK_Fel Cone Fungus|r from the ground
    .complete 9648,4 --Fel Cone Fungus (1)
step
    .goto 1950,47.71,94.34
    >>Kill |cRXP_ENEMY_Cruelfin|r and loot |cRXP_LOOT_Red Crystal Pendant|r. Use it to start the quest
    .collect 23870,1,9576 --Red Crystal Pendant (1)
    .accept 9576 >>Accept Cruelfin's Necklace
    .use 23870
    .mob Cruelfin
step
    .goto 1950,52.38,93.23
    >>Interact with |cRXP_FRIENDLY_Blacksilt Scouts|r
    .complete 9629,1 --Blacksilt Scout (6)
    .target Blacksilt Scout
step
    .goto 1950,58.16,83.40
    >>Open the |cRXP_PICK_Impact Site Crystal|r. Loot it for |cRXP_LOOT_Impact Site Crystal Sample|r
    .complete 9581,1 --Impact Site Crystal Sample (1)
step
    #loop
    .goto 1950,58.03,73.65,0
    .goto 1950,58.03,73.65,40,0
    .goto 1950,59.22,71.70,40,0
    >>Kill |cRXP_ENEMY_Stinkhorn Striker|r and loot |cRXP_LOOT_Aquatic Stinkhorn|r. It can also be picked up from |cRXP_PICK_Aquatic Stinkhorn|r on the ground
    .complete 9648,1 --Aquatic Stinkhorn (1)
    .mob Stinkhorn Striker
step
    .goto 1950,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >>Turn in Cruelfin's Necklace
    .turnin 9629 >>Turn in Catch and Release
    .accept 9574 >>Accept Victims of Corruption
    .target Morae
step
    .goto 1950,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9594 >>Turn in Signs of the Legion while you are here
    .isQuestComplete 9594
    .target Vindicator Aalesia
step
    #loop
    .goto 1950,51.10,72.00,0
    .goto 1950,51.10,72.00,40,0
    .goto 1950,51.02,73.47,40,0
    >>Kill |cRXP_ENEMY_Corrupted Treants|r. Loot them for |cRXP_LOOT_Crystallized Bark|r
    .complete 9574,1 --Crystallized Bark (6)
    .mob Corrupted Treant
step
    .goto 1950,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >>Turn in Victims of Corruption
    .target Morae
step
    .goto 1950,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9594 >>Turn in Signs of the Legion
    .target Vindicator Aalesia
step
    .goto 1950,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9581 >>Turn in Learning from the Crystals
    .accept 9620 >>Accept The Missing Survey Team
    .target Harbinger Mikolaas
step
    .goto 1950,61.25,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draenei Cartographer|r
    .turnin 9620 >>Turn in The Missing Survey Team
    .accept 9628 >>Accept Salvaging the Data
    .target Draenei Cartographer
step
    #loop
    .goto 1950,62.76,47.06,0
    .goto 1950,62.76,47.06,40,0
    .goto 1950,61.99,43.25,40,0
    .goto 1950,63.81,39.91,40,0
    .goto 1950,66.56,43.09,40,0
    >>Kill |cRXP_ENEMY_Wrathscale Marauders|r and |cRXP_ENEMY_Wrathscale Sorceress|r. Loot them for |cRXP_LOOT_Survey Data Crystal|r
    .complete 9628,1 --Survey Data Crystal (1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .goto 1950,66.72,69.26
    >>Pick up |cRXP_PICK_Ruinous Polyspore|r from the ground
    .complete 9648,3 --Ruinous Polyspore (1)
step
    .goto 1950,58.81,61.98
    >>Pick up |cRXP_PICK_Blood Mushroom|r from the ground
    .complete 9648,2 --Blood Mushroom (1)
step
    .goto 1950,56.42,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >>Turn in Maatparm Mushroom Menagerie
    .target Maatparm
step
    .goto 1950,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9628 >>Turn in Salvaging the Data
    .accept 9584 >>Accept The Second Sample
    .target Harbinger Mikolaas
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9699 >>Turn in Truth or Fiction
    .target Vindicator Boros
    .isOnQuest 9699
step
    .goto 1950,45.68,47.80
    >>Open the |cRXP_PICK_Altered Bloodmyst Crystal|r. Loot it for |cRXP_LOOT_Altered Crystal Sample|r
    .complete 9584,1 --Altered Crystal Sample (1)
step
    .goto 1950,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9584 >>Turn in The Second Sample
    .target Harbinger Mikolaas
step
    .goto 1950,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9751 >>Turn in The Bloodcurse Legacy
    .target Captain Edward Hanes
    .isOnQuest 9751
step
    +|cRXP_WARN_That is all of Bloodmyst Isle for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Exodar|r: On the Wings of a Hippogryph << Draenei
    >>|cRXP_FRIENDLY_Azuremyst Isle and back here|r: The Kessel Run
step
    +|cRXP_WARN_Suggested next zones at level 11|r: |cRXP_FRIENDLY_Darkshore|r (about 2.1 levels of quests, starting around Thundris Windweaver), |cRXP_FRIENDLY_Azuremyst Isle|r (about 1.3 levels of quests, starting around Daedal), |cRXP_FRIENDLY_Elwynn Forest|r (about 1.3 levels of quests, starting around Marshal Dughan). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Bloodmyst Isle is planned from level 14.|r Load its guide for level 14 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 21 Bloodmyst Isle
#subweight -10
#name 14-18 Bloodmyst Isle: around Vindicator Boros
--RouteBuilder:next
#next Zone Routes (Alliance)\17-19 Darkshore: around Terenthis

step
    .goto 1950,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >>Turn in The Kessel Run
    .target Kessel
    .isQuestComplete 9663
step
    #loop
    .goto 1950,54.42,59.86,0
    .goto 1950,54.42,59.86,40,0
    .goto 1950,54.88,59.27,40,0
    .goto 1950,54.56,58.02,40,0
    .goto 1950,54.88,56.82,40,0
    .goto 1950,54.51,55.35,40,0
    .goto 1950,54.72,54.79,40,0
    .goto 1950,55.64,54.32,40,0
    .goto 1950,53.21,54.14,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Hermesius|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9671 >>Accept Urgent Delivery
    .unitscan Messenger Hermesius
    .isQuestTurnedIn 9602 --any of: Deliver Them From Evil...
    .xp <15,1
step
    .goto 1950,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9643 >>Accept Constrictor Vines
    .target Tracker Lyceon
    .xp <14,1
step
    .goto 1950,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9580 >>Accept The Bear Necessities
    .target Tracker Lyceon
    .xp <14,1
step
    .goto 1950,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9674 >>Accept The Bloodcursed Naga
    .target Captain Edward Hanes
    .isQuestTurnedIn 9672,9751 --any of: The Bloodcurse Legacy, The Bloodcurse Legacy
    .xp <15,1
step
    #loop
    .goto 1950,82.09,16.62,0
    .goto 1950,82.09,16.62,40,0
    .goto 1950,79.83,12.10,40,0
    >>Kill |cRXP_ENEMY_Bloodcursed Nagas|r
    .complete 9674,1 --Bloodcursed Naga slain (10)
    .mob Bloodcursed Naga
    .isOnQuest 9674
step
    .goto 1950,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9674 >>Turn in The Bloodcursed Naga
    .target Captain Edward Hanes
    .isOnQuest 9674
step
    .goto 1950,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9682 >>Accept The Hopeless Ones...
    .target Captain Edward Hanes
    .isQuestTurnedIn 9674 --any of: The Bloodcursed Naga
    .xp <15,1
step
    #loop
    .goto 1950,87.09,17.96,0
    .goto 1950,87.09,17.96,40,0
    .goto 1950,88.16,21.20,40,0
    >>Kill |cRXP_ENEMY_Bloodcursed Voyagers|r. Loot them for |cRXP_LOOT_Bloodcursed Soul|r
    .complete 9682,1 --Bloodcursed Soul (4)
    .mob Bloodcursed Voyager
    .isOnQuest 9682
step
    .goto 1950,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9682 >>Turn in The Hopeless Ones...
    .target Captain Edward Hanes
    .isOnQuest 9682
step
    .goto 1950,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9683 >>Accept Ending the Bloodcurse
    .target Captain Edward Hanes
    .isQuestTurnedIn 9682 --any of: The Hopeless Ones...
    .xp <15,1
step
    .goto 1950,86.00,54.00
    >>Kill |cRXP_ENEMY_Atoph the Bloodcursed|r
    .complete 9683,1 --Atoph the Bloodcursed slain (1)
    .mob Atoph the Bloodcursed
    .isOnQuest 9683
step
    .goto 1950,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9683 >>Turn in Ending the Bloodcurse
    .target Captain Edward Hanes
    .isOnQuest 9683
step
    .goto 1950,55.26,59.12
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9646 >>Accept WANTED: Deathclaw
step
    .goto 1950,53.42,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fazu|r
    .target Fazu
    .home >>Set your Hearthstone to Fazu's inn
step
    .goto 1950,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9567 >>Accept Know Thine Enemy
    .target Vindicator Aalesia
step
    .goto 1950,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9580 >>Accept The Bear Necessities
    .accept 9643 >>Accept Constrictor Vines
    .target Tracker Lyceon
step
    .goto 1950,56.32,54.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >>Accept Explorers' League, Is That Something for Gnomes?
    .target Prospector Nachlan
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9641 >>Accept Irradiated Crystal Shards
    .target Vindicator Boros
step
    #loop
    .goto 1950,43.81,33.31,0
    .goto 1950,43.81,33.31,40,0
    .goto 1950,41.17,33.26,40,0
    .goto 1950,38.22,36.87,40,0
    .goto 1950,37.07,42.48,40,0
    >>Kill |cRXP_ENEMY_Infected Wildkins|r, |cRXP_ENEMY_Contaminated Wildkins|r, |cRXP_ENEMY_Irradiated Wildkins|r and |cRXP_ENEMY_Blacksilt Foragers|r. Loot them for |cRXP_LOOT_Irradiated Crystal Shard|r
    .complete 9641,1 --Irradiated Crystal Shard (10)
    .mob Infected Wildkin
    .mob Contaminated Wildkin
    .mob Irradiated Wildkin
    .mob Blacksilt Forager
step
    #completewith next
    .hs >>Hearth to Fazu's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9641 >>Turn in Irradiated Crystal Shards
    .target Vindicator Boros
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9779 >>Accept Intercepting the Message
    .target Vindicator Boros
    .isQuestTurnedIn 9694 --any of: Blood Watch
step
    .goto 1950,36.50,71.33
    >>Open the |cRXP_PICK_Nazzivus Monument Glyphs|r. Loot it for |cRXP_LOOT_Nazzivus Monument Glyph|r
    .complete 9567,1 --Nazzivus Monument Glyph (1)
step
    .goto 1950,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .accept 9578 >>Accept Searching for Galaen
    .target Morae
step
    .goto 1950,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9567 >>Turn in Know Thine Enemy
    .accept 9569 >>Accept Containing the Threat
    .target Vindicator Aalesia
step
    #loop
    .goto 1950,49.18,48.21,0
    .goto 1950,49.18,48.21,40,0
    .goto 1950,47.50,43.92,40,0
    .goto 1950,45.39,48.68,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Spies|r, |cRXP_ENEMY_Sunhawk Reclaimers|r, |cRXP_ENEMY_Sunhawk Defenders|r and |cRXP_ENEMY_Sunhawk Pyromancers|r. Loot them for |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Sunhawk Missive (1)
    .mob Sunhawk Spy
    .mob Sunhawk Reclaimer
    .mob Sunhawk Defender
    .mob Sunhawk Pyromancer
    .isOnQuest 9779
step
    .goto 1950,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .accept 9687 >>Accept Restoring Sanctity
    .target Prince Toreth
step
    .goto 1950,56.42,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .accept 9649 >>Accept Ysera's Tears
    .target Maatparm
    .isQuestTurnedIn 9648 --any of: Maatparm Mushroom Menagerie
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9779 >>Turn in Intercepting the Message
    .target Vindicator Boros
    .isOnQuest 9779
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9696 >>Accept Translations...
    .target Vindicator Boros
    .isQuestTurnedIn 9779 --any of: Intercepting the Message
step
    .goto 1950,54.44,54.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Interrogator Elysia|r
    .turnin 9696 >>Turn in Translations...
    .target Interrogator Elysia
    .isOnQuest 9696
step
    .goto 1950,54.44,54.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Interrogator Elysia|r
    .accept 9698 >>Accept Audience with the Prophet
    .target Interrogator Elysia
    .isQuestTurnedIn 9696 --any of: Translations...
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9700 >>Accept I Shoot Magic Into the Darkness
    .target Vindicator Boros
    .isQuestTurnedIn 9699 --any of: Truth or Fiction
    .xp <14,1
step
    .goto 1950,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9585 >>Accept The Final Sample
    .target Harbinger Mikolaas
    .isQuestTurnedIn 9584 --any of: The Second Sample
step
    .goto 1950,41.00,30.00
    >>Open the |cRXP_PICK_Axxarien Crystal|r. Loot it for |cRXP_LOOT_Axxarien Crystal Sample|r
    .complete 9585,1 --Axxarien Crystal Sample (1)
    .isOnQuest 9585
step
    #loop
    .goto 1950,41.91,29.53,0
    .goto 1950,41.91,29.53,40,0
    .goto 1950,41.86,34.35,40,0
    .goto 1950,40.18,35.09,40,0
    .goto 1950,37.29,37.30,40,0
    >>Kill |cRXP_ENEMY_Zevrax|r
    >>Kill |cRXP_ENEMY_Axxarien Shadowstalkers|r
    >>Kill |cRXP_ENEMY_Axxarien Hellcallers|r
    >>Pick up |cRXP_PICK_Corrupted Crystal|r from the ground
    .complete 9569,1 --Zevrax slain (1)
    .complete 9569,2 --Axxarien Shadowstalker slain (5)
    .complete 9569,3 --Axxarien Hellcaller slain (5)
    .complete 9569,4 --Corrupted Crystal (5)
    .mob Zevrax
    .mob Axxarien Shadowstalker
    .mob Axxarien Hellcaller
step
    .goto 1950,37.22,29.91
    >>Kill |cRXP_ENEMY_Deathclaw|r and loot |cRXP_LOOT_Deathclaw's Paw|r
    .complete 9646,1 --Deathclaw's Paw (1)
    .mob Deathclaw
step
    .goto 1950,42.15,21.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 10063 >>Turn in Explorers' League, Is That Something for Gnomes?
    .accept 9548 >>Accept Pilfered Equipment
    .accept 9549 >>Accept Artifacts of the Blacksilt
    .target Clopper Wizbang
step
    .goto 1950,42.15,21.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if he doesn't have one|r
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #loop
    .goto 1950,42.75,20.65,0
    .goto 1950,42.75,20.65,40,0
    .goto 1950,46.28,19.86,40,0
    .goto 1950,35.40,27.50,40,0
    .goto 1950,35.15,23.80,40,0
    .goto 1950,38.50,22.50,40,0
    >>Pick up |cRXP_PICK_Clopper's Equipment|r from the ground
    >>Kill |cRXP_ENEMY_Blacksilt Seers|r. Loot them for |cRXP_LOOT_Crude Murloc Idol|r
    >>Kill |cRXP_ENEMY_Blacksilt Shorestrikers|r and |cRXP_ENEMY_Blacksilt Warriors|r. Loot them for |cRXP_LOOT_Crude Murloc Knife|r
    .complete 9548,1 --Clopper's Equipment (1)
    .complete 9549,1 --Crude Murloc Idol (3)
    .complete 9549,2 --Crude Murloc Knife (6)
    .mob Blacksilt Seer
    .mob Blacksilt Shorestriker
    .mob Blacksilt Warrior
step
    .goto 1950,42.15,21.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 9548 >>Turn in Pilfered Equipment
    .turnin 9549 >>Turn in Artifacts of the Blacksilt
    .target Clopper Wizbang
step
    .goto 1950,42.15,21.22
    >>Kill |cRXP_ENEMY_Clopper Wizbang|r and loot |cRXP_LOOT_Weathered Treasure Map|r. Use it to start the quest
    .collect 23837,1,9550 --Weathered Treasure Map (1)
    .accept 9550 >>Accept A Map to Where?
    .use 23837
    .mob Clopper Wizbang
step
    #loop
    .goto 1950,51.22,23.22,0
    .goto 1950,51.22,23.22,40,0
    .goto 1950,52.88,19.93,40,0
    >>Kill |cRXP_ENEMY_Void Anomaly|r
    .complete 9700,2 --Void Anomaly slain (1)
    .mob Void Anomaly
    .isOnQuest 9700
step
    .goto 1950,52.92,22.32
    >>Sun Portal Site Confirmed
    .complete 9700,1 --Sun Portal Site Confirmed
    .isOnQuest 9700
step
    #loop
    .goto 1950,44.23,28.80,0
    .goto 1950,44.23,28.80,40,0
    .goto 1950,47.02,36.14,40,0
    .goto 1950,45.14,32.88,40,0
    .goto 1950,41.04,26.29,40,0
    >>Kill |cRXP_ENEMY_Mutated Constrictors|r. Loot them for |cRXP_LOOT_Thorny Constrictor Vine|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for |cRXP_LOOT_Elder Brown Bear Flank|r
    .complete 9643,1 --Thorny Constrictor Vine (6)
    .complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Mutated Constrictor
    .mob Elder Brown Bear
step
    #loop
    .goto 1950,53.97,31.05,0
    .goto 1950,53.97,31.05,40,0
    .goto 1950,54.15,36.12,40,0
    >>Pick up |cRXP_PICK_Dragon Bone|r from the ground
    .complete 9687,1 --Dragon Bone (8)
step
    .goto 1950,61.16,41.89
    >>Click the |cRXP_PICK_Battered Ancient Book|r
    .turnin 9550 >>Turn in A Map to Where?
    .accept 9557 >>Accept Deciphering the Book
step
    .goto 1950,54.66,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Paetheus|r
    .turnin 9557 >>Turn in Deciphering the Book
    .accept 9561 >>Accept Nolkai's Words
    .accept 9632 >>Accept Newfound Allies
    .target Anchorite Paetheus
step
    .goto 1950,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9585 >>Turn in The Final Sample
    .target Harbinger Mikolaas
    .isOnQuest 9585
step
    .goto 1950,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9646 >>Turn in WANTED: Deathclaw
    .accept 10064 >>Accept Talk to the Hand
    .target Harbinger Mikolaas
step
    .goto 1950,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9700 >>Turn in I Shoot Magic Into the Darkness
    .target Vindicator Boros
    .isOnQuest 9700
step
    .goto 1950,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .accept 9703 >>Accept The Cryo-Core
    .target Vindicator Kuros
    .isQuestTurnedIn 9700 --any of: I Shoot Magic Into the Darkness
    .xp <15,1
step
    .goto 1950,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9580 >>Turn in The Bear Necessities
    .turnin 9643 >>Turn in Constrictor Vines
    .accept 9647 >>Accept Culling the Flutterers
    .target Tracker Lyceon
step
    .goto 1950,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9569 >>Turn in Containing the Threat
    .target Vindicator Aalesia
step
    .goto 1950,53.24,57.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >>Accept The Missing Expedition
    .target Achelus
step
    .goto 1950,37.50,61.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galaen's Corpse|r
    .turnin 9578 >>Turn in Searching for Galaen
    .accept 9579 >>Accept Galaen's Fate
    .target Galaen's Corpse
step
    #completewith Along53
    >>As you go: Kill |cRXP_ENEMY_Sunhawk Reclaimer|r and loot |cRXP_LOOT_Galaen's Amulet|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9579,1 --Galaen's Amulet (1)
    .mob Sunhawk Reclaimer
step
    #label Along53
    .goto 1950,37.55,61.25
    >>Click the |cRXP_PICK_Galaen's Journal|r
    .accept 9706 >>Accept Galaen's Journal - The Fate of Vindicator Saruan
    .isQuestTurnedIn 9694 --any of: Blood Watch
step
    #loop
    .goto 1950,36.17,60.37,0
    .goto 1950,36.17,60.37,40,0
    .goto 1950,39.11,62.02,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Reclaimer|r and loot |cRXP_LOOT_Galaen's Amulet|r
    .complete 9579,1 --Galaen's Amulet (1)
    .mob Sunhawk Reclaimer
step
    #loop
    .goto 1950,39.43,61.98,0
    .goto 1950,39.43,61.98,40,0
    .goto 1950,38.01,57.66,40,0
    .goto 1950,36.18,60.41,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Reclaimers|r. Loot them for |cRXP_LOOT_Medical Supplies|r. It can also be picked up from |cRXP_PICK_Medical Supplies|r on the ground
    .complete 9703,1 --Medical Supplies (12)
    .mob Sunhawk Reclaimer
    .isOnQuest 9703
step
    #completewith next
    .hs >>Hearth to Fazu's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1950,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >>Turn in Galaen's Fate
    .target Morae
step
    .goto 1950,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9703 >>Turn in The Cryo-Core
    .target Vindicator Kuros
    .isOnQuest 9703
step
    .goto 1950,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9706 >>Turn in Galaen's Journal - The Fate of Vindicator Saruan
    .target Vindicator Kuros
    .isOnQuest 9706
step
    .goto 1950,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .accept 9711 >>Accept Matis the Cruel
    .target Vindicator Kuros
    .isQuestTurnedIn 9706 --any of: Galaen's Journal - The Fate of Vindicator Saruan
step
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9748 >>Accept Don't Drink the Water
    .target Vindicator Aesom
    .isQuestTurnedIn 9703 --any of: The Cryo-Core
    .xp <16,1
step
    .goto 1950,30.26,45.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jorli|r
    .turnin 10064 >>Turn in Talk to the Hand
    .accept 10065 >>Accept Cutting a Path
    .target Scout Jorli
step
    .goto 1950,30.24,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Loryi|r
    .accept 9741 >>Accept Critters of the Void
    .target Scout Loryi
step
    .goto 1950,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .accept 10066 >>Accept Oh, the Tangled Webs They Weave
    .accept 10067 >>Accept Fouled Water Spirits
    .target Vindicator Corin
step
    .goto 1950,26.99,52.41
    >>Interact with |cRXP_FRIENDLY_Matis the Cruel|r
    .complete 9711,1 --Matis the Cruel
    .target Matis the Cruel
    .isOnQuest 9711
step
    .goto 1950,18.64,63.43
    >>Kill |cRXP_ENEMY_Void Critters|r
    .complete 9741,1 --Void Critter slain (12)
    .mob Void Critter
step
    #loop
    .goto 1950,30.85,60.91,0
    .goto 1950,30.85,60.91,40,0
    .goto 1950,30.91,54.27,40,0
    .goto 1950,32.67,54.68,40,0
    >>Kill |cRXP_ENEMY_Enraged Ravagers|r
    >>Kill |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10065,1 --Enraged Ravager slain (10)
    .complete 10066,1 --Mutated Tangler slain (8)
    .mob Enraged Ravager
    .mob Mutated Tangler
step
    #loop
    .goto 1950,36.90,49.07,0
    .goto 1950,36.90,49.07,40,0
    .goto 1950,35.84,43.61,40,0
    >>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    .complete 9647,1 --Royal Blue Flutterer slain (10)
    .mob Royal Blue Flutterer
step
    .goto 1950,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >>Turn in Culling the Flutterers
    .target Tracker Lyceon
step
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9741 >>Turn in Critters of the Void while you are here
    .isQuestComplete 9741
    .target Vindicator Aesom
step
    .goto 1950,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9711 >>Turn in Matis the Cruel while you are here
    .isQuestComplete 9711
    .target Vindicator Kuros
step
    .goto 1950,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10066 >>Turn in Oh, the Tangled Webs They Weave
    .target Vindicator Corin
step
    .goto 1950,30.26,45.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jorli|r
    .turnin 10065 >>Turn in Cutting a Path
    .target Scout Jorli
step
    #loop
    .goto 1950,29.88,37.34,0
    .goto 1950,29.88,37.34,40,0
    .goto 1950,28.21,34.59,40,0
    .goto 1950,32.86,36.84,40,0
    >>Kill |cRXP_ENEMY_Fouled Water Spirits|r
    .complete 10067,1 --Fouled Water Spirit slain (6)
    .mob Fouled Water Spirit
step
    .goto 1950,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10067 >>Turn in Fouled Water Spirits
    .target Vindicator Corin
step
    .goto 1950,24.88,34.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Cornelius|r
    .accept 9670 >>Accept They're Alive! Maybe...
    .target Researcher Cornelius
step
    #loop
    .goto 1950,22.52,40.40,0
    .goto 1950,22.52,40.40,40,0
    .goto 1950,18.17,37.87,40,0
    .goto 1950,19.85,34.46,40,0
    >>Kill |cRXP_ENEMY_Myst Leechers|r
    >>Kill |cRXP_ENEMY_Myst Spinners|r
    >>Kill |cRXP_ENEMY_Zarakh|r
    >>Kill |cRXP_ENEMY_Expedition Researchers|r and |cRXP_ENEMY_Webbed Creatures|r
    .complete 9669,1 --Myst Leecher slain (8)
    .complete 9669,2 --Myst Spinner slain (8)
    .complete 9669,3 --Zarakh slain (1)
    .complete 9670,1 --Expedition Researcher (5)
    .mob Myst Leecher
    .mob Myst Spinner
    .mob Zarakh
    .mob Expedition Researcher
    .mob Webbed Creature
step
    .goto 1950,24.88,34.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Cornelius|r
    .turnin 9670 >>Turn in They're Alive! Maybe...
    .target Researcher Cornelius
step
    .goto 1950,34.38,33.67
    >>Open the |cRXP_PICK_Bloodmyst Water Focus|r. Loot it for |cRXP_LOOT_Bloodmyst Water Sample|r
    .complete 9748,1 --Bloodmyst Water Sample (1)
    .isOnQuest 9748
step
    #completewith next
    .hs >>Hearth to Fazu's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1950,53.24,57.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >>Turn in The Missing Expedition
    .target Achelus
step
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9741 >>Turn in Critters of the Void
    .target Vindicator Aesom
step
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9748 >>Turn in Don't Drink the Water
    .target Vindicator Aesom
    .isOnQuest 9748
step
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9746 >>Accept Limits of Physical Exhaustion
    .target Vindicator Aesom
    .isQuestTurnedIn 9748 --any of: Don't Drink the Water
    .xp <16,1
step << Paladin
    .goto 1950,55.55,55.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
step
    .goto 1950,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9711 >>Turn in Matis the Cruel
    .target Vindicator Kuros
    .isOnQuest 9711
step
    .goto 1950,61.17,49.64
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .turnin 9561 >>Turn in Nolkai's Words
step
    .goto 1950,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9687 >>Turn in Restoring Sanctity
    .accept 9688 >>Accept Into the Dream
    .target Prince Toreth
step
    #loop
    .goto 1950,72.63,24.93,0
    .goto 1950,72.63,24.93,40,0
    .goto 1950,72.64,22.48,40,0
    .goto 1950,76.99,20.81,40,0
    >>Kill |cRXP_ENEMY_Veridian Whelps|r
    >>Kill |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Veridian Whelp slain (5)
    .complete 9688,2 --Veridian Broodling slain (5)
    .mob Veridian Whelp
    .mob Veridian Broodling
step
    .goto 1950,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9688 >>Turn in Into the Dream
    .target Prince Toreth
step
    #loop
    .goto 1950,76.80,21.40,0
    .goto 1950,76.80,21.40,40,0
    .goto 1950,74.70,16.30,40,0
    >>Pick up |cRXP_PICK_Ysera's Tear|r from the ground
    .complete 9649,1 --Ysera's Tear (2)
    .isOnQuest 9649
step
    #loop
    .goto 1950,24.82,52.89,0
    .goto 1950,24.82,52.89,40,0
    .goto 1950,23.68,56.25,40,0
    .goto 1950,22.77,60.94,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Pyromancers|r
    .complete 9746,1 --Sunhawk Pyromancer slain (10)
    .mob Sunhawk Pyromancer
    .isOnQuest 9746
step
    #loop
    .goto 1950,24.87,57.08,0
    .goto 1950,24.87,57.08,40,0
    .goto 1950,23.85,59.38,40,0
    .goto 1950,20.63,62.55,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Defenders|r
    .complete 9746,2 --Sunhawk Defender slain (10)
    .mob Sunhawk Defender
    .isOnQuest 9746
step << Hunter/Shaman/Mage/Warlock
    .xp 20-2700
step << Hunter/Shaman/Mage/Warlock
    .xp 20-1350
step
    .goto 1950,56.42,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .turnin 9649 >>Turn in Ysera's Tears
    .target Maatparm
    .isOnQuest 9649
step
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9746 >>Turn in Limits of Physical Exhaustion
    .target Vindicator Aesom
    .isOnQuest 9746
step << Paladin
    .goto 1950,55.55,55.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .trainer >> Train your class spells
    .target Vindicator Aesom
    .xp <20,1
step
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9740 >>Accept The Sun Gate
    .target Vindicator Aesom
    .isQuestTurnedIn 9746 --any of: Limits of Physical Exhaustion
    .xp <16,1
step
    .goto 1950,18.74,63.95
    >>Click the |cRXP_PICK_Sun Gate|r
    .complete 9740,1 --The Sun Gate Destroyed
    .isOnQuest 9740
step
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9740 >>Turn in The Sun Gate
    .target Vindicator Aesom
    .isOnQuest 9740
step
    #loop
    .goto 1950,53.21,54.14,0
    .goto 1950,53.21,54.14,40,0
    .goto 1950,55.64,54.32,40,0
    .goto 1950,54.72,54.79,40,0
    .goto 1950,54.51,55.35,40,0
    .goto 1950,54.88,56.82,40,0
    .goto 1950,54.56,58.02,40,0
    .goto 1950,54.88,59.27,40,0
    .goto 1950,54.42,59.86,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Hermesius|r. |cRXP_WARN_This NPC walks a patrol route|r
    >>|cRXP_WARN_The database has no objectives for Urgent Delivery. Skip this step if the quest is not finished|r
    .turnin 9671 >>Turn in Urgent Delivery
    .unitscan Messenger Hermesius
    .isOnQuest 9671
step
    +|cRXP_WARN_That is all of Bloodmyst Isle for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Newfound Allies
    >>|cRXP_FRIENDLY_The Exodar|r: Audience with the Prophet
step
    +|cRXP_WARN_Suggested next zones at level 17|r: |cRXP_FRIENDLY_Darkshore|r (about 0.9 levels of quests, starting around Terenthis). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Bloodmyst Isle is planned from level 20.|r Load its guide for level 20 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 21 Bloodmyst Isle
#subweight -10
#name 20-21 Bloodmyst Isle
--RouteBuilder:next
#next Zone Routes (Alliance)\17-19 Darkshore: around Terenthis;Zone Routes (Alliance)\20-21 Duskwood: around Elaine Carevin

step << Draenei Shaman
    .goto 1950,32.30,16.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r
    .accept 9503 >>Accept Call of Water
    .target Aqueous
    .isQuestTurnedIn 9501 --any of: Call of Water
    .xp <20,1
step << Draenei Shaman
    #loop
    .goto 1950,28.21,34.59,0
    .goto 1950,28.21,34.59,40,0
    .goto 1950,29.88,37.34,40,0
    .goto 1950,32.86,36.84,40,0
    >>Kill |cRXP_ENEMY_Fouled Water Spirits|r. Loot them for |cRXP_LOOT_Foul Essence|r
    .complete 9503,1 --Foul Essence (6)
    .mob Fouled Water Spirit
    .isOnQuest 9503
step << Draenei Shaman
    .goto 1950,32.30,16.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9503 >>Turn in Call of Water
    .target Aqueous
    .isOnQuest 9503
step << Draenei Shaman
    .goto 1950,32.30,16.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r
    .accept 9504 >>Accept Call of Water
    .target Aqueous
    .isQuestTurnedIn 9503 --any of: Call of Water
    .xp <20,1
step << Draenei Shaman
    .goto 1950,32.30,16.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aqueous|r
    .turnin 9504 >>Turn in Call of Water
    .target Aqueous
    .isQuestComplete 9504
step << Draenei
    .goto 1950,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9753 >>Accept What We Know...
    .target Vindicator Aesom
step << Draenei
    .goto 1950,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9753 >>Turn in What We Know...
    .accept 9756 >>Accept What We Don't Know...
    .target Exarch Admetius
step << Draenei
    .goto 1950,54.31,54.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Sunhawk Agent|r
    .complete 9756,1 --Captured Sunhawk Agent
    .target Captured Sunhawk Agent
step << Draenei
    .goto 1950,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9756 >>Turn in What We Don't Know...
    .accept 9760 >>Accept Vindicator's Rest
    .target Exarch Admetius
step << Draenei
    .goto 1950,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 9760 >>Turn in Vindicator's Rest
    .accept 9761 >>Accept Clearing the Way
    .target Vindicator Corin
step << Draenei
    .goto 1950,30.82,46.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demolitionist Legoso|r
    .accept 9759 >>Accept Ending Their World
    .target Demolitionist Legoso
step << Draenei
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Sunhawk Saboteurs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9761,2 --Sunhawk Saboteur slain (8)
    .mob Sunhawk Saboteur
step << Draenei
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Sunhawk Agents|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9761,1 --Sunhawk Agent slain (8)
    .mob Sunhawk Agent
step << Draenei
    #label Along11
    .goto 1950,14.86,54.84
    >>Vector Coil Destroyed and Sironas Slain
    .complete 9759,1 --Vector Coil Destroyed and Sironas Slain
step << Draenei
    #label Along12
    #loop
    .goto 1950,14.55,55.28,0
    .goto 1950,14.55,55.28,40,0
    .goto 1950,14.50,52.89,40,0
    .goto 1950,16.91,59.56,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Agents|r
    .complete 9761,1 --Sunhawk Agent slain (8)
    .mob Sunhawk Agent
step << Draenei
    #loop
    .goto 1950,19.95,53.14,0
    .goto 1950,19.95,53.14,40,0
    .goto 1950,21.34,56.61,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Saboteurs|r
    .complete 9761,2 --Sunhawk Saboteur slain (8)
    .mob Sunhawk Saboteur
step << Draenei
    .goto 1950,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 9761 >>Turn in Clearing the Way
    .target Vindicator Corin
step << Draenei
    .goto 1950,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9759 >>Turn in Ending Their World
    .target Exarch Admetius
step
    .goto 1950,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >>Turn in The Kessel Run
    .target Kessel
    .isQuestComplete 9663
step
    .goto 1950,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .accept 9689 >>Accept Razormaw
    .target Prince Toreth
    .isQuestTurnedIn 9688 --any of: Into the Dream
step
    .goto 1950,72.81,20.83
    >>Kill |cRXP_ENEMY_Razormaw|r
    .complete 9689,1 --Razormaw slain (1)
    .mob Razormaw
    .isOnQuest 9689
step
    .goto 1950,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9689 >>Turn in Razormaw
    .target Prince Toreth
    .isOnQuest 9689
step
    +|cRXP_WARN_End of the Bloodmyst Isle route.|r
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_Darkshore|r (about 0.7 levels of quests, starting around Terenthis), |cRXP_FRIENDLY_Duskwood|r (about 0.5 levels of quests, starting around Elaine Carevin). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
