-- 14-26 Redridge Mountains: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 5 parts (from level 14, 17, 20, 23, 26).
-- Split into 5 guides, listed under "14 - 27 Redridge Mountains" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Redridge Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 14 - 27 Redridge Mountains
#subweight -14
#name 14-15 Redridge Mountains: around Verner Osgood
--RouteBuilder:next
#next Zone Routes (Alliance)\10-15 Darkshore: around Thundris Windweaver;Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\10-13 Westfall: around Farmer Saldean

step
    .goto 1433/0,-2207.32,-9351.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Accept Hilary's Necklace
    .target Shawn
step
    .goto 1433/0,-1902.32,-9609.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >>Accept Encroaching Gnolls
    .target Guard Parker
step
    #loop
    .goto 1433/0,-2046.25,-9345.29,0
    .goto 1433/0,-2046.25,-9345.29,40,0
    .goto 1433/0,-2133.08,-9358.32,40,0
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto 1433/0,-2237.93,-9443.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >>Turn in Encroaching Gnolls
    .accept 246 >>Accept Assessing the Threat
    .target Deputy Feldon
step
    .goto 1433/0,-2234.89,-9435.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Warlock
    .goto 1433/0,-2234.89,-9435.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step
    .goto 1433/0,-2205.58,-9351.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Turn in Hilary's Necklace
    .target Hilary
step
    .goto 1433/0,-2268.54,-9279.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 345 >>Turn in Ink Supplies
    .target Foreman Oslow
    .isOnQuest 345
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 119 >>Turn in Return to Verner
    .target Verner Osgood
    .isOnQuest 119
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 1097 >>Accept Elmore's Task
    .target Verner Osgood
step
    .goto 1433/0,-2221.87,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 146 >>Turn in Messenger to Darkshire
    .target Magistrate Solomon
    .isOnQuest 146
step
    .goto 1433/0,-2221.87,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 144 >>Turn in Messenger to Westfall
    .target Magistrate Solomon
    .isOnQuest 144
step
    .goto 1433/0,-2221.87,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 121 >>Turn in Messenger to Stormwind
    .target Magistrate Solomon
    .isOnQuest 121
step
    .goto 1433/0,-2148.71,-9216.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Accept A Free Lunch
    .target Darcy
step
    .goto 1433/0,-2145.67,-9211.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Daniels|r
    .accept 116 >>Accept Dry Times
    .target Barkeep Daniels
step << Warrior
    .goto 1433/0,-2147.84,-9222.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorus Barleybrew|r
    .turnin 10371 >>Turn in Yorus Barleybrew
    .target Yorus Barleybrew
    .isOnQuest 10371
step << Warrior
    .goto 1433/0,-2147.84,-9222.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorus Barleybrew|r
    .turnin 1698 >>Turn in Yorus Barleybrew
    .target Yorus Barleybrew
    .isOnQuest 1698
step
    .goto 1433/0,-2145.67,-9231.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r
    .turnin 65 >>Turn in The Defias Brotherhood
    .target Wiley the Black
    .isOnQuest 65
step
    .goto 1433/0,-2221.87,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .accept 120 >>Accept Messenger to Stormwind
    .target Magistrate Solomon
    .xp <14,1
step
    .goto 1433/0,-1902.97,-9500.51
    >>Kill |cRXP_ENEMY_Redridge Mongrels|r
    .complete 246,1 --Redridge Mongrel slain (10)
    .mob Redridge Mongrel
step
    .goto 1433/0,-1902.32,-9609.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .turnin 129 >>Turn in A Free Lunch
    .target Guard Parker
step
    .xp 14 >>Grind to level 14 (Visit the Herbalist needs it)
step
    .goto 1433/0,-1902.32,-9609.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 130 >>Accept Visit the Herbalist
    .target Guard Parker
step
    #loop
    .goto 1433/0,-2186.05,-9724.79,0
    .goto 1433/0,-2186.05,-9724.79,40,0
    .goto 1433/0,-2271.58,-9766.35,40,0
    >>Kill |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,2 --Redridge Poacher slain (6)
    .mob Redridge Poacher
step
    .goto 1433/0,-2237.93,-9443.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 246 >>Turn in Assessing the Threat
    .target Deputy Feldon
step
    .goto 1433/0,-2045.38,-9245.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Turn in Visit the Herbalist
    .accept 131 >>Accept Delivering Daffodils
    .target Martie Jainrose
step
    .goto 1433/0,-2148.71,-9216.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Turn in Delivering Daffodils
    .target Darcy
step
    .goto 1433/0,-2221.87,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .accept 143 >>Accept Messenger to Westfall
    .target Magistrate Solomon
    .isQuestTurnedIn 121 --any of: Messenger to Stormwind
    .xp <14,1
step
    .goto 1433/0,-2221.87,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .accept 120 >>Accept Messenger to Stormwind
    .target Magistrate Solomon
step
    .goto 1433/0,-2145.67,-9211.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Daniels|r
    .turnin 116 >>Turn in Dry Times
    .target Barkeep Daniels
    .isQuestComplete 116
step
    .goto 1433/0,-2145.67,-9231.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r
    .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
    .isQuestTurnedIn 65 --any of: The Defias Brotherhood
    .xp <14,1
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 118 >>Accept The Price of Shoes
    .target Verner Osgood
step << !Human
    .goto 1433/0,-2234.89,-9435.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step << Rogue
    .goto 1433/0,-2179.97,-9328.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Turn in Redridge Rendezvous
    .target Lucius
    .isOnQuest 2281
step
    .goto 1433/0,-3404.97,-9253.06
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .turnin 94 >>Turn in A Watchful Eye
    .isOnQuest 94
step
    +|cRXP_WARN_That is all of Redridge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elwynn Forest|r: The Price of Shoes
    >>|cRXP_FRIENDLY_Stormwind City|r: Messenger to Stormwind, Elmore's Task
    >>|cRXP_FRIENDLY_Westfall|r: Messenger to Westfall, The Defias Brotherhood
    >>|cRXP_FRIENDLY_Westfall, Stormwind City, Duskwood, Elwynn Forest and back here|r: Dry Times
step
    +|cRXP_WARN_Suggested next zones at level 14|r: |cRXP_FRIENDLY_Darkshore|r (about 1.8 levels of quests, starting around Thundris Windweaver), |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.6 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Westfall|r (about 1.0 levels of quests, starting around Farmer Saldean; 2 quests from here hand in there). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Redridge Mountains is planned from level 17.|r Load its guide for level 17 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 14 - 27 Redridge Mountains
#subweight -14
#name 17-18 Redridge Mountains: around Foreman Oslow
--RouteBuilder:next
#next Zone Routes (Alliance)\14-18 Bloodmyst Isle: around Vindicator Boros;Zone Routes (Alliance)\17-19 Darkshore: around Terenthis;Zone Routes (Alliance)\14-15 Loch Modan

step
    .goto 1433/0,-2268.54,-9279.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .accept 125 >>Accept The Lost Tools
    .target Foreman Oslow
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 122 >>Accept Underbelly Scales
    .target Verner Osgood
    .isQuestTurnedIn 119 --any of: Return to Verner
    .xp <14,1
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 124 >>Accept A Baying of Gnolls
    .target Verner Osgood
    .isQuestTurnedIn 119 --any of: Return to Verner
    .xp <15,1
step
    .goto 1433/0,-2172.59,-9261.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >>Accept Selling Fish
    .target Dockmaster Baren
step
    .goto 1433/0,-2145.67,-9211.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Daniels|r
    .turnin 116 >>Turn in Dry Times
    .target Barkeep Daniels
    .isQuestComplete 116
step
    .goto 1433/0,-2063.18,-9209.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >>Accept Redridge Goulash
    .target Chef Breanna
step
    #loop
    .goto 1433/0,-1972.65,-9206.73,0
    .goto 1433/0,-1972.65,-9206.73,40,0
    .goto 1433/0,-1935.75,-9332.26,40,0
    >>Kill |cRXP_ENEMY_Bellygrubs|r and |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snout|r
    .complete 92,1 --Great Goretusk Snout (5)
    .mob Bellygrub
    .mob Great Goretusk
step
    .goto 1433/0,-2057.75,-9535.84
    >>Kill |cRXP_ENEMY_Tarantulas|r, |cRXP_ENEMY_Greater Tarantulas|r and |cRXP_ENEMY_Chatters|r. Loot them for |cRXP_LOOT_Crisp Spider Meat|r
    .complete 92,3 --Crisp Spider Meat (1)
    .mob Tarantula
    .mob Greater Tarantula
    .mob Chatter
step
    #completewith Along8
    >>As you go: Kill |cRXP_ENEMY_Murloc Flesheaters|r, |cRXP_ENEMY_Murloc Nightcrawlers|r, |cRXP_ENEMY_Murloc Tidecallers|r and |cRXP_ENEMY_Murloc Minor Tidecallers|r. Loot them for |cRXP_LOOT_Spotted Sunfish|r. |cRXP_WARN_Anything left is finished later|r
    .complete 127,1 --Spotted Sunfish (10)
    .mob Murloc Flesheater
    .mob Murloc Nightcrawler
    .mob Murloc Tidecaller
    .mob Murloc Minor Tidecaller
step
    #label Along8
    .goto 1433/0,-2472.16,-9366.43
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    .complete 125,1 --Oslow's Toolbox (1)
step << Rogue
    .goto 1433/0,-2179.97,-9328.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .accept 2282 >>Accept Alther's Mill
    .target Lucius
    .isQuestTurnedIn 2281 --any of: Redridge Rendezvous
    .xp <16,1
step
    #loop
    .goto 1433/0,-2686.86,-9390.18,0
    .goto 1433/0,-2686.86,-9390.18,40,0
    .goto 1433/0,-2806.25,-9339.64,40,0
    .goto 1433/0,-2860.09,-9459.24,40,0
    >>Kill |cRXP_ENEMY_Murloc Flesheaters|r, |cRXP_ENEMY_Murloc Nightcrawlers|r, |cRXP_ENEMY_Murloc Tidecallers|r and |cRXP_ENEMY_Murloc Minor Tidecallers|r. Loot them for |cRXP_LOOT_Spotted Sunfish|r
    .complete 127,1 --Spotted Sunfish (10)
    .mob Murloc Flesheater
    .mob Murloc Nightcrawler
    .mob Murloc Tidecaller
    .mob Murloc Minor Tidecaller
step
    #loop
    .goto 1433/0,-2814.29,-9225.40,0
    .goto 1433/0,-2814.29,-9225.40,40,0
    .goto 1433/0,-2750.46,-9158.22,40,0
    >>Kill |cRXP_ENEMY_Dire Condor|r and loot |cRXP_LOOT_Tough Condor Meat|r
    .complete 92,2 --Tough Condor Meat (1)
    .mob Dire Condor
step
    #loop
    .goto 1433/0,-2606.54,-9060.63,0
    .goto 1433/0,-2606.54,-9060.63,40,0
    .goto 1433/0,-2493.00,-9023.71,40,0
    >>Kill |cRXP_ENEMY_Black Dragon Whelps|r and |cRXP_ENEMY_Snarlflares|r. Loot them for |cRXP_LOOT_Underbelly Whelp Scale|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
    .mob Snarlflare
    .isOnQuest 122
step
    .goto 1433/0,-2429.18,-9030.22
    >>Kill |cRXP_ENEMY_Redridge Brutes|r
    .complete 124,1 --Redridge Brute slain (10)
    .mob Redridge Brute
    .isOnQuest 124
step
    .goto 1433/0,-2268.54,-9279.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 125 >>Turn in The Lost Tools
    .accept 89 >>Accept The Everstill Bridge
    .target Foreman Oslow
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 122 >>Turn in Underbelly Scales
    .target Verner Osgood
    .isOnQuest 122
step
    .goto 1433/0,-2172.59,-9261.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Turn in Selling Fish while you are here
    .isQuestComplete 127
    .target Dockmaster Baren
step << Rogue
    .goto 1433/0,-2700.53,-9222.07
    >>Open the |cRXP_PICK_Lucius's Lockbox|r. Loot it for |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery (1)
    .isOnQuest 2282
step
    .goto 1433/0,-2172.59,-9261.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >>Turn in Selling Fish
    .target Dockmaster Baren
step
    .goto 1433/0,-2063.18,-9209.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
    .turnin 92 >>Turn in Redridge Goulash
    .target Chef Breanna
step
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Redridge Brutes|r, |cRXP_ENEMY_Redridge Mystics|r, |cRXP_ENEMY_Redridge Bashers|r and |cRXP_ENEMY_Redridge Drudgers|r. Loot them for |cRXP_LOOT_Iron Pike|r. Kill |cRXP_ENEMY_Redridge Brutes|r, |cRXP_ENEMY_Redridge Mystics|r, |cRXP_ENEMY_Redridge Bashers|r and |cRXP_ENEMY_Redridge Drudgers|r. Loot them for |cRXP_LOOT_Iron Rivet|r. |cRXP_WARN_Anything left is finished later|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Drudger
step
    #label Along19
    #loop
    .goto 1433/0,-2010.21,-9052.09,0
    .goto 1433/0,-2010.21,-9052.09,40,0
    .goto 1433/0,-2089.88,-9006.62,40,0
    >>Kill |cRXP_ENEMY_Redridge Mystics|r
    .complete 124,2 --Redridge Mystic slain (8)
    .mob Redridge Mystic
    .isOnQuest 124
step
    #loop
    .goto 1433/0,-2153.27,-9091.33,0
    .goto 1433/0,-2153.27,-9091.33,40,0
    .goto 1433/0,-2185.40,-8977.52,40,0
    .goto 1433/0,-2319.55,-8939.15,40,0
    >>Kill |cRXP_ENEMY_Redridge Brutes|r, |cRXP_ENEMY_Redridge Mystics|r, |cRXP_ENEMY_Redridge Bashers|r and |cRXP_ENEMY_Redridge Drudgers|r. Loot them for |cRXP_LOOT_Iron Pike|r
    >>Kill |cRXP_ENEMY_Redridge Brutes|r, |cRXP_ENEMY_Redridge Mystics|r, |cRXP_ENEMY_Redridge Bashers|r and |cRXP_ENEMY_Redridge Drudgers|r. Loot them for |cRXP_LOOT_Iron Rivet|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Drudger
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 124 >>Turn in A Baying of Gnolls
    .target Verner Osgood
    .isOnQuest 124
step
    .goto 1433/0,-2268.54,-9279.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .turnin 89 >>Turn in The Everstill Bridge
    .target Foreman Oslow
step << Rogue
    .goto 1433/0,-2179.97,-9332.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arantir|r
    .accept 2358 >>Accept Horns of Nez'ra
    .target Arantir
step << Rogue
    #loop
    .goto 1433/0,-2442.86,-9164.01,0
    .goto 1433/0,-2442.86,-9164.01,40,0
    .goto 1433/0,-2513.63,-9156.63,40,0
    >>Kill |cRXP_ENEMY_Gath'Ilzoggs|r, |cRXP_ENEMY_Blackrock Champions|r, |cRXP_ENEMY_Blackrock Shadowcasters|r and |cRXP_ENEMY_Blackrock Renegades|r. Loot them for |cRXP_LOOT_Horns of Nez'ra|r
    .complete 2358,1 --Horns of Nez'ra (1)
    .mob Gath'Ilzogg
    .mob Blackrock Champion
    .mob Blackrock Shadowcaster
    .mob Blackrock Renegade
step << Rogue
    .goto 1433/0,-2179.97,-9332.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arantir|r
    .turnin 2358 >>Turn in Horns of Nez'ra
    .target Arantir
step << Rogue
    .goto 1433/0,-2179.97,-9328.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >>Turn in Alther's Mill
    .target Lucius
    .isOnQuest 2282
step
    +|cRXP_WARN_Suggested next zones at level 17|r: |cRXP_FRIENDLY_Bloodmyst Isle|r (about 1.6 levels of quests, starting around Vindicator Boros), |cRXP_FRIENDLY_Darkshore|r (about 0.9 levels of quests, starting around Terenthis), |cRXP_FRIENDLY_Loch Modan|r (about 0.5 levels of quests). Completing this step loads the guide for Bloodmyst Isle --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Redridge Mountains is planned from level 20.|r Load its guide for level 20 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 14 - 27 Redridge Mountains
#subweight -14
#name 20-21 Redridge Mountains: around Marshal Marris
--RouteBuilder:next
#next Zone Routes (Alliance)\20-21 Duskwood: around Elaine Carevin;Zone Routes (Alliance)\17-19 Darkshore: around Terenthis

step
    .goto 1433/0,-2298.06,-9284.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >>Accept Blackrock Menace
    .target Marshal Marris
step
    .goto 1433/0,-2221.87,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .accept 145 >>Accept Messenger to Darkshire
    .target Magistrate Solomon
    .isQuestTurnedIn 144 --any of: Messenger to Westfall
    .xp <18,1
step
    .goto 1433/0,-2145.67,-9211.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Daniels|r
    .turnin 116 >>Turn in Dry Times
    .target Barkeep Daniels
    .isQuestComplete 116
step
    .goto 1433/0,-2172.59,-9261.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 150 >>Accept Murloc Poachers
    .target Dockmaster Baren
step << Warrior
    .goto 1433/0,-2147.84,-9222.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorus Barleybrew|r
    .accept 1699 >>Accept The Rethban Gauntlet
    .target Yorus Barleybrew
    .xp <20,1
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 126 >>Accept Howling in the Hills
    .target Verner Osgood
    .isQuestTurnedIn 124 --any of: A Baying of Gnolls
    .xp <15,1
step
    #loop
    .goto 1433/0,-2400.53,-9361.80,0
    .goto 1433/0,-2400.53,-9361.80,40,0
    .goto 1433/0,-2451.11,-9285.93,40,0
    .goto 1433/0,-2582.01,-9320.39,40,0
    >>Kill |cRXP_ENEMY_Murloc Flesheaters|r, |cRXP_ENEMY_Murloc Nightcrawlers|r, |cRXP_ENEMY_Murloc Tidecallers|r and |cRXP_ENEMY_Murloc Minor Tidecallers|r. Loot them for |cRXP_LOOT_Murloc Fin|r
    .complete 150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Nightcrawler
    .mob Murloc Tidecaller
    .mob Murloc Minor Tidecaller
step
    #loop
    .goto 1433/0,-2898.08,-9203.40,0
    .goto 1433/0,-2898.08,-9203.40,40,0
    .goto 1433/0,-2953.00,-9297.51,40,0
    >>Kill |cRXP_ENEMY_Blackrock Champions|r, |cRXP_ENEMY_Blackrock Shadowcasters|r, |cRXP_ENEMY_Blackrock Renegades|r and |cRXP_ENEMY_Blackrock Grunts|r. Loot them for |cRXP_LOOT_Battleworn Axe|r
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Champion
    .mob Blackrock Shadowcaster
    .mob Blackrock Renegade
    .mob Blackrock Grunt
step
    .goto 1433/0,-2298.06,-9284.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >>Turn in Blackrock Menace
    .target Marshal Marris
step
    .goto 1433/0,-2268.54,-9279.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .accept 347 >>Accept Rethban Ore
    .target Foreman Oslow
    .isQuestTurnedIn 345 --any of: Ink Supplies
    .xp <20,1
step
    .goto 1433/0,-2171.07,-8884.56
    >>Kill |cRXP_ENEMY_Yowler|r and loot |cRXP_LOOT_Yowler's Paw|r
    .complete 126,1 --Yowler's Paw (1)
    .mob Yowler
    .isOnQuest 126
step
    #loop
    .goto 1433/0,-1986.11,-8891.08,0
    .goto 1433/0,-1986.11,-8891.08,40,0
    .goto 1433/0,-1947.26,-8820.86,40,0
    >>Kill |cRXP_ENEMY_Redridge Drudgers|r. Loot them for |cRXP_LOOT_Rethban Ore|r. It can also be picked up from |cRXP_PICK_Tin Vein|r on the ground
    .complete 347,1 --Rethban Ore (5)
    .mob Redridge Drudger
    .isOnQuest 347
step
    .goto 1433/0,-2172.59,-9261.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 150 >>Turn in Murloc Poachers
    .target Dockmaster Baren
step << Warrior
    .xp 20 >>Grind to level 20 (The Rethban Gauntlet needs it)
step << Warrior
    .goto 1433/0,-2147.84,-9222.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorus Barleybrew|r
    .accept 1699 >>Accept The Rethban Gauntlet
    .target Yorus Barleybrew
step << Warrior
    .goto 1433/0,-1988.07,-8940.60
    >>Enter the Rethban Caverns
    .complete 1699,1 --Enter the Rethban Caverns
step << Warrior
    .goto 1433/0,-2147.84,-9222.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorus Barleybrew|r
    .turnin 1699 >>Turn in The Rethban Gauntlet
    .accept 1702 >>Accept The Shieldsmith
    .target Yorus Barleybrew
step
    .goto 1433/0,-2243.14,-9259.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 126 >>Turn in Howling in the Hills
    .target Verner Osgood
    .isOnQuest 126
step
    .goto 1433/0,-2298.06,-9284.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 115 >>Accept Shadow Magic
    .target Marshal Marris
step
    .goto 1433/0,-3404.97,-9253.06
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .accept 248 >>Accept Looking Further
    .isQuestTurnedIn 94 --any of: A Watchful Eye
    .xp <20,1
step
    .goto 1433/0,-3059.81,-9380.04
    >>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for |cRXP_LOOT_Midnight Orb|r
    .complete 115,1 --Midnight Orb (3)
    .mob Blackrock Shadowcaster
step
    .goto 1433/0,-2943.89,-9296.64
    >>Click the |cRXP_PICK_An Empty Jar|r
    .turnin 248 >>Turn in Looking Further
    .isOnQuest 248
step
    .goto 1433/0,-2298.06,-9284.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 115 >>Turn in Shadow Magic
    .target Marshal Marris
step
    +|cRXP_WARN_That is all of Redridge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Duskwood|r: Messenger to Darkshire
    >>|cRXP_FRIENDLY_Elwynn Forest|r: Rethban Ore
    >>|cRXP_FRIENDLY_Stormwind City|r: The Shieldsmith << Warrior
step
    +|cRXP_WARN_Suggested next zones at level 20|r: |cRXP_FRIENDLY_Duskwood|r (about 0.7 levels of quests, starting around Elaine Carevin; 1 quest from here hands in there), |cRXP_FRIENDLY_Darkshore|r (about 0.7 levels of quests, starting around Terenthis). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Redridge Mountains is planned from level 23.|r Load its guide for level 23 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 14 - 27 Redridge Mountains
#subweight -14
#name 23-24 Redridge Mountains
--RouteBuilder:next
#next Zone Routes (Alliance)\20-21 Duskwood: around Elaine Carevin

step
    .goto 1433/0,-2216.00,-9215.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >>Accept Solomon's Law
    .target Bailiff Conacher
step
    .goto 1433/0,-2145.67,-9211.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Daniels|r
    .turnin 116 >>Turn in Dry Times
    .target Barkeep Daniels
    .isQuestComplete 116
step
    .goto 1433/0,-2045.38,-9245.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 34 >>Accept An Unwelcome Guest
    .target Martie Jainrose
step
    .goto 1433/0,-1911.22,-9288.97
    >>Kill |cRXP_ENEMY_Bellygrub|r and loot |cRXP_LOOT_Bellygrub's Tusk|r
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 1433/0,-2045.38,-9245.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    .goto 1433/0,-2255.51,-9412.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >>Accept Blackrock Bounty
    .target Guard Howe
step
    .goto 1433/0,-2298.06,-9284.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 19 >>Accept Tharil'zun
    .target Marshal Marris
    .isQuestTurnedIn 20 --any of: Blackrock Menace
step
    #completewith Drop178x1
    >>|cRXP_LOOT_Glowing Shadowhide Pendant|r can drop from |cRXP_ENEMY_Shadowhide Darkweaver|r, |cRXP_ENEMY_Shadowhide Slayer|r, |cRXP_ENEMY_Shadowhide Brute|r. Use it to start the quest if you get one
    .collect 1962,1,178 --Glowing Shadowhide Pendant (1)
    .accept 178 >>Accept Theocritus' Retrieval
    .use 1962
step
    #label Drop178x1
    #loop
    .goto 1433/0,-3139.69,-9159.52,0
    .goto 1433/0,-3139.69,-9159.52,40,0
    .goto 1433/0,-3218.93,-9107.11,40,0
    .goto 1433/0,-3306.41,-9134.33,40,0
    >>Kill |cRXP_ENEMY_Shadowhide Darkweavers|r, |cRXP_ENEMY_Shadowhide Slayers|r, |cRXP_ENEMY_Shadowhide Brutes|r and |cRXP_ENEMY_Shadowhide Gnolls|r. Loot them for |cRXP_LOOT_Shadowhide Pendant|r
    .complete 91,1 --Shadowhide Pendant (10)
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
    .mob Shadowhide Brute
    .mob Shadowhide Gnoll
step
    .goto 1433/0,-3078.48,-9435.21
    >>Kill |cRXP_ENEMY_Tharil'zun|r and loot |cRXP_LOOT_Tharil'zun's Head|r
    .complete 19,1 --Tharil'zun's Head (1)
    .mob Tharil'zun
    .isOnQuest 19
step
    #loop
    .goto 1433/0,-2318.25,-8672.30,0
    .goto 1433/0,-2318.25,-8672.30,40,0
    .goto 1433/0,-2193.65,-8775.97,40,0
    >>Kill |cRXP_ENEMY_Blackrock Champions|r
    .complete 128,1 --Blackrock Champion slain (15)
    .mob Blackrock Champion
step
    .goto 1433/0,-2187.13,-8756.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Keeshan|r
    .accept 219 >>Accept Missing In Action
    .target Corporal Keeshan
step
    .goto 1433/0,-2295.02,-9280.14
    >>Escort Corporal Keeshan back to Redridge
    .complete 219,1 --Escort Corporal Keeshan back to Redridge
step
    .goto 1433/0,-2298.06,-9284.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 19 >>Turn in Tharil'zun while you are here
    .isQuestComplete 19
    .target Marshal Marris
step
    .goto 1433/0,-2298.06,-9284.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 219 >>Turn in Missing In Action
    .target Marshal Marris
step
    .goto 1433/0,-2298.06,-9284.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 19 >>Turn in Tharil'zun
    .target Marshal Marris
    .isOnQuest 19
step
    .goto 1433/0,-2216.00,-9215.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .turnin 91 >>Turn in Solomon's Law
    .target Bailiff Conacher
step
    .goto 1433/0,-2255.51,-9412.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .turnin 128 >>Turn in Blackrock Bounty
    .target Guard Howe
step
    +|cRXP_WARN_That is all of Redridge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elwynn Forest|r: Theocritus' Retrieval
step
    +|cRXP_WARN_Suggested next zones at level 23|r: |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Elaine Carevin; 1 quest from here hands in there). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Redridge Mountains is planned from level 26.|r Load its guide for level 26 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 14 - 27 Redridge Mountains
#subweight -14
#name 26-27 Redridge Mountains
--RouteBuilder:next
#next Zone Routes (Alliance)\24-25 Duskwood: around Clerk Daltry

step
    .goto 1433/0,-2151.53,-9247.41
    >>Click the |cRXP_PICK_Wanted: Lieutenant Fangore|r
    .accept 180 >>Accept Wanted: Lieutenant Fangore
step
    .goto 1433/0,-2145.67,-9211.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Daniels|r
    .turnin 116 >>Turn in Dry Times
    .target Barkeep Daniels
    .isQuestComplete 116
step
    .goto 1433/0,-2213.83,-9243.36
    >>Click the |cRXP_PICK_Wanted: Gath'Ilzogg|r
    .accept 169 >>Accept Wanted: Gath'Ilzogg
step
    .goto 1433/0,-3311.41,-9111.60
    >>Kill |cRXP_ENEMY_Lieutenant Fangore|r and loot |cRXP_LOOT_Fangore's Paw|r
    .complete 180,1 --Fangore's Paw (1)
    .mob Lieutenant Fangore
step
    .goto 1433/0,-3404.97,-9253.06
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .accept 249 >>Accept Morganth
    .isQuestTurnedIn 248 --any of: Looking Further
    .xp <20,1
step
    .goto 1433/0,-3309.89,-9291.57
    >>Kill |cRXP_ENEMY_Morganth|r and loot |cRXP_LOOT_Pendant of Shadow|r
    .complete 249,1 --Pendant of Shadow (1)
    .mob Morganth
    .isOnQuest 249
step
    .goto 1433/0,-3081.95,-9382.79
    >>Kill |cRXP_ENEMY_Gath'Ilzogg|r and loot |cRXP_LOOT_Head of Gath'Ilzogg|r
    .complete 169,1 --Head of Gath'Ilzogg (1)
    .mob Gath'Ilzogg
step
    .goto 1433/0,-2221.87,-9218.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 180 >>Turn in Wanted: Lieutenant Fangore
    .turnin 169 >>Turn in Wanted: Gath'Ilzogg
    .target Magistrate Solomon
step
    +|cRXP_WARN_End of the Redridge Mountains route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elwynn Forest|r: Morganth
step
    +|cRXP_WARN_Suggested next zones at level 26|r: |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Clerk Daltry). Completing this step loads the guide for Duskwood --RouteBuilder:next
]])
