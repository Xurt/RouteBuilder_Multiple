-- 50-61 Blasted Lands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 50, 59, 62).
-- Split into 3 guides, listed under "50 - 63 Blasted Lands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Blasted Lands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 50 - 63 Blasted Lands
#subweight -50
#name 50-51 Blasted Lands: around Bloodmage Drazial
--RouteBuilder:next
#next Zone Routes (Alliance)\50-52 Un'Goro Crater: around Torwa Pathfinder

step
    .goto 1419/0,-2935.09,-10883.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
    .accept 2585 >>Accept The Decisive Striker
    .accept 2583 >>Accept A Boar's Vitality
    .accept 2581 >>Accept Snickerfang Jowls
    .target Bloodmage Drazial
step
    #completewith Along1
    >>As you go: Kill |cRXP_ENEMY_Scorpok Stingers|r and |cRXP_ENEMY_Clack the Reavers|r. Loot them for |cRXP_LOOT_Scorpok Pincer|r. |cRXP_WARN_Anything left is finished later|r
    .complete 2583,2 --Scorpok Pincer (2)
    .complete 2581,3 --Scorpok Pincer (1)
    .complete 2585,1 --Scorpok Pincer (3)
    .mob Scorpok Stinger
    .mob Clack the Reaver
step
    #label Along1
    .goto 1419/0,-2938.11,-10886.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .accept 2601 >>Accept The Basilisk's Bite
    .accept 2603 >>Accept Vulture's Vigor
    .target Bloodmage Lynnore
step
    #completewith Along2
    >>As you go: Kill |cRXP_ENEMY_Black Slayers|r and |cRXP_ENEMY_Bonepickers|r. Loot them for |cRXP_LOOT_Vulture Gizzard|r. |cRXP_WARN_Anything left is finished later|r
    .complete 2603,1 --Vulture Gizzard (10)
    .mob Black Slayer
    .mob Bonepicker
step
    #label Along2
    #loop
    .goto 1419/0,-2869.77,-10964.20,0
    .goto 1419/0,-2869.77,-10964.20,40,0
    .goto 1419/0,-2769.27,-10995.47,40,0
    .goto 1419/0,-2731.08,-11155.37,40,0
    .goto 1419/0,-2796.07,-11330.24,40,0
    >>Kill |cRXP_ENEMY_Scorpok Stingers|r and |cRXP_ENEMY_Clack the Reavers|r. Loot them for |cRXP_LOOT_Scorpok Pincer|r
    >>Kill |cRXP_ENEMY_Black Slayers|r and |cRXP_ENEMY_Bonepickers|r. Loot them for |cRXP_LOOT_Vulture Gizzard|r
    >>Kill |cRXP_ENEMY_Redstone Basilisks|r, |cRXP_ENEMY_Redstone Crystalhides|r and |cRXP_ENEMY_Deatheyes|r. Loot them for |cRXP_LOOT_Basilisk Brain|r
    >>Kill |cRXP_ENEMY_Starving Snickerfangs|r, |cRXP_ENEMY_Snickerfang Hyenas|r and |cRXP_ENEMY_Ravages|r. Loot them for |cRXP_LOOT_Snickerfang Jowl|r
    .complete 2583,2 --Scorpok Pincer (2)
    .complete 2581,3 --Scorpok Pincer (1)
    .complete 2585,1 --Scorpok Pincer (3)
    .complete 2601,2 --Vulture Gizzard (2)
    .complete 2585,2 --Vulture Gizzard (2)
    .complete 2601,1 --Basilisk Brain (10)
    .complete 2583,3 --Basilisk Brain (1)
    .complete 2581,1 --Snickerfang Jowl (3)
    .complete 2603,2 --Snickerfang Jowl (2)
    .mob Scorpok Stinger
    .mob Clack the Reaver
    .mob Black Slayer
    .mob Bonepicker
    .mob Redstone Basilisk
    .mob Redstone Crystalhide
    .mob Deatheye
    .mob Starving Snickerfang
    .mob Snickerfang Hyena
    .mob Ravage
step
    #loop
    .goto 1419/0,-2995.73,-11211.65,0
    .goto 1419/0,-2995.73,-11211.65,40,0
    .goto 1419/0,-3090.87,-11384.07,40,0
    .goto 1419/0,-3077.47,-11558.27,40,0
    .goto 1419/0,-3297.90,-11196.24,40,0
    .goto 1419/0,-3193.04,-11175.92,40,0
    >>Kill |cRXP_ENEMY_Ashmane Boars|r, |cRXP_ENEMY_Helboars|r and |cRXP_ENEMY_Grunters|r. Loot them for |cRXP_LOOT_Blasted Boar Lung|r
    >>Kill |cRXP_ENEMY_Black Slayers|r and |cRXP_ENEMY_Bonepickers|r. Loot them for |cRXP_LOOT_Vulture Gizzard|r
    .complete 2583,1 --Blasted Boar Lung (3)
    .complete 2585,3 --Blasted Boar Lung (1)
    .complete 2581,2 --Blasted Boar Lung (2)
    .complete 2603,1 --Vulture Gizzard (10)
    .mob Ashmane Boar
    .mob Helboar
    .mob Grunter
    .mob Black Slayer
    .mob Bonepicker
step
    .goto 1419/0,-2983.00,-11362.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .accept 2521 >>Accept To Serve Kum'isha
    .target Kum'isha the Collector
step
    #loop
    .goto 1419/0,-2859.72,-11085.69,0
    .goto 1419/0,-2859.72,-11085.69,40,0
    .goto 1419/0,-2869.77,-10964.20,40,0
    .goto 1419/0,-2769.27,-10995.47,40,0
    .goto 1419/0,-2731.08,-11155.37,40,0
    >>Kill |cRXP_ENEMY_Dreadmaul Ogres|r, |cRXP_ENEMY_Dreadmaul Ogre Mages|r, |cRXP_ENEMY_Dreadmaul Brutes|r and |cRXP_ENEMY_Dreadmaul Maulers|r. Loot them for |cRXP_LOOT_Flawless Draenethyst Sphere|r
    .complete 2521,1 --Flawless Draenethyst Sphere (1)
    .mob Dreadmaul Ogre
    .mob Dreadmaul Ogre Mage
    .mob Dreadmaul Brute
    .mob Dreadmaul Mauler
step
    .goto 1419/0,-2935.09,-10883.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Drazial|r
    .turnin 2585 >>Turn in The Decisive Striker
    .turnin 2583 >>Turn in A Boar's Vitality
    .turnin 2581 >>Turn in Snickerfang Jowls
    .target Bloodmage Drazial
step
    .goto 1419/0,-2938.11,-10886.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 2601 >>Turn in The Basilisk's Bite
    .turnin 2603 >>Turn in Vulture's Vigor
    .target Bloodmage Lynnore
step
    .goto 1419/0,-2983.00,-11362.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 2521 >>Turn in To Serve Kum'isha
    .accept 3501 >>Accept Everything Counts In Large Amounts
    .target Kum'isha the Collector
step
    #loop
    .goto 1419/0,-3037.27,-11401.93,0
    .goto 1419/0,-3037.27,-11401.93,40,0
    .goto 1419/0,-2963.57,-11428.73,40,0
    .goto 1419/0,-3064.07,-11531.47,40,0
    >>Kill |cRXP_ENEMY_Dreadmaul Ogres|r, |cRXP_ENEMY_Dreadmaul Ogre Mages|r, |cRXP_ENEMY_Dreadmaul Brutes|r and |cRXP_ENEMY_Dreadmaul Maulers|r. Loot them for |cRXP_LOOT_Imperfect Draenethyst Fragment|r
    .complete 3501,1 --Imperfect Draenethyst Fragment (1)
    .mob Dreadmaul Ogre
    .mob Dreadmaul Ogre Mage
    .mob Dreadmaul Brute
    .mob Dreadmaul Mauler
step
    .goto 1419/0,-2983.00,-11362.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kum'isha the Collector|r
    .turnin 3501 >>Turn in Everything Counts In Large Amounts
    .target Kum'isha the Collector
step
    .goto 1419/0,-3369.25,-10946.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bernie Heisten|r
    .target Bernie Heisten
    .home >>Set your Hearthstone to Bernie Heisten's inn
step
    .goto 1419/0,-3470.09,-11044.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .turnin 1395 >>Turn in Supplies for Nethergarde
    .target Quartermaster Lungertz
    .isOnQuest 1395
step
    .goto 1419/0,-3470.09,-11044.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lungertz|r
    .turnin 1425 >>Turn in Deliver the Shipment
    .target Quartermaster Lungertz
    .isOnQuest 1425
step
    .goto 1419/0,-3482.82,-11001.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .accept 2992 >>Accept The Divination
    .target Thadius Grimshade
    .isQuestTurnedIn 2991 --any of: Nekrum's Medallion
    .xp <42,1
step
    .goto 1419/0,-3482.82,-11001.50
    >>Wait until Grimshade performs the ritual of divination.
    .complete 2992,1 --Thadius Grimshade
    .target Thadius Grimshade
    .isOnQuest 2992
step
    .goto 1419/0,-3482.82,-11001.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .turnin 2992 >>Turn in The Divination
    .target Thadius Grimshade
    .isOnQuest 2992
step
    .goto 1419/0,-3482.82,-11001.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .accept 2993 >>Accept Return to the Hinterlands
    .target Thadius Grimshade
    .isQuestTurnedIn 2992 --any of: The Divination
    .xp <42,1
step
    .goto 1419/0,-3482.82,-11001.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .turnin 2990 >>Turn in Thadius Grimshade
    .target Thadius Grimshade
    .isOnQuest 2990
step
    .goto 1419/0,-3482.82,-11001.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .accept 2991 >>Accept Nekrum's Medallion
    .target Thadius Grimshade
    .isQuestTurnedIn 2990 --any of: Thadius Grimshade
    .xp <40,1
step
    .goto 1419/0,-3505.26,-10997.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Ardalan|r
    .accept 2783 >>Accept Petty Squabbles
    .target Ambassador Ardalan
step
    .goto 1419/0,-3507.94,-10994.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Mahar Ba|r
    .turnin 1364 >>Turn in Mazen's Behest
    .target Watcher Mahar Ba
    .isQuestComplete 1364
step
    .goto 1419/0,-3482.82,-11001.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thadius Grimshade|r
    .turnin 2991 >>Turn in Nekrum's Medallion
    .target Thadius Grimshade
    .isQuestComplete 2991
step
    .goto 1419/0,-3546.47,-11260.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Kirith|r
    .turnin 2721 >>Turn in Kirith
    .target Spirit of Kirith
    .isOnQuest 2721
step
    +|cRXP_WARN_That is all of Blasted Lands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Swamp of Sorrows|r: Petty Squabbles
    >>|cRXP_FRIENDLY_The Hinterlands|r: Return to the Hinterlands
step
    +|cRXP_WARN_Suggested next zones at level 50|r: |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Torwa Pathfinder). Completing this step loads the guide for Un'Goro Crater --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Blasted Lands is planned from level 59.|r Load its guide for level 59 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 50 - 63 Blasted Lands
#subweight -50
#name 59-60 Blasted Lands
--RouteBuilder:next
#next Zone Routes (Alliance)\58-61 Hellfire Peninsula: around Assistant Klatu

step
    .goto 1419/0,-3195.39,-11815.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watch Commander Relthorn Netherwane|r
    .accept 10119 >>Accept Through the Dark Portal
    .target Watch Commander Relthorn Netherwane
step
    .goto 1419/0,-3546.47,-11260.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spirit of Kirith|r
    .accept 2743 >>Accept The Cover of Darkness
    .target Spirit of Kirith
    .isQuestTurnedIn 2721 --any of: Kirith
    .xp <52,1
step
    +|cRXP_WARN_That is all of Blasted Lands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Hellfire Peninsula|r: Through the Dark Portal
    >>|cRXP_FRIENDLY_Swamp of Sorrows|r: The Cover of Darkness
step
    +|cRXP_WARN_Suggested next zones at level 59|r: |cRXP_FRIENDLY_Hellfire Peninsula|r (about 1.4 levels of quests, starting around Assistant Klatu; 1 quest from here hands in there). Completing this step loads the guide for Hellfire Peninsula --RouteBuilder:next
step << Warlock
    +|cRXP_WARN_The rest of Blasted Lands is planned from level 62.|r Load its guide for level 62 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Warlock
#version 1
#group Zone Routes (Alliance)
#subgroup 50 - 63 Blasted Lands
#subweight -50
#name 62-63 Blasted Lands
--RouteBuilder:next
#next Zone Routes (Alliance)\62-64 Terokkar Forest: around Jenai Starwhisper;Zone Routes (Alliance)\58-61 Hellfire Peninsula: around Assistant Klatu;Zone Routes (Alliance)\62-63 Zangarmarsh: around Ysiel Windsinger

step << Warlock
    .goto 1419/0,-2385.02,-11686.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .accept 7582 >>Accept The Prison's Casing
    .accept 7581 >>Accept The Prison's Bindings
    .target Daio the Decrepit
step << Warlock
    .goto 1419/0,-2385.02,-11686.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .turnin 7581 >>Turn in The Prison's Bindings
    .target Daio the Decrepit
    .isQuestComplete 7581
step << Warlock
    .goto 1419/0,-2385.02,-11686.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .turnin 7582 >>Turn in The Prison's Casing
    .target Daio the Decrepit
    .isQuestComplete 7582
step << Warlock
    .goto 1419/0,-2385.02,-11686.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .accept 7583 >>Accept Suppression
    .target Daio the Decrepit
    .isQuestTurnedIn 7581 --The Prison's Bindings
    .isQuestTurnedIn 7582 --The Prison's Casing
    .xp <60,1
step << Warlock
    .goto 1419/0,-2399.09,-11989.97
    >>Pick up |cRXP_PICK_Imprisoned Doomguard|r from the ground
    .complete 7583,1 --Imprisoned Doomguard (1)
    .isOnQuest 7583
step << Warlock
    .goto 1419/0,-2385.02,-11686.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daio the Decrepit|r
    .turnin 7583 >>Turn in Suppression
    .target Daio the Decrepit
    .isOnQuest 7583
step
    +|cRXP_WARN_End of the Blasted Lands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Prison's Bindings << Warlock
    >>|cRXP_FRIENDLY_Winterspring and back here|r: The Prison's Casing << Warlock
step
    +|cRXP_WARN_Suggested next zones at level 62|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.9 levels of quests, starting around Jenai Starwhisper), |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.6 levels of quests, starting around Assistant Klatu; 1 quest from here hands in there), |cRXP_FRIENDLY_Zangarmarsh|r (about 0.6 levels of quests, starting around Ysiel Windsinger). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
]])
