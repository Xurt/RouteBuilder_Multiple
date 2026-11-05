-- 35-46 Dustwallow Marsh: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 35, 40, 43).
-- Split into 3 guides, listed under "35 - 44 Dustwallow Marsh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Dustwallow Marsh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 44 Dustwallow Marsh
#subweight -35
#name 35-38 Dustwallow Marsh: around Krog
--RouteBuilder:next
#next Zone Routes (Horde)\37-39 Stranglethorn Vale: around Baron Revilgaz

step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .accept 11124 >>Accept Inspecting the Ruins
    .target Krog
step
    .goto 1445/1,-2538.97,-3701.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inspector Tarem|r
    .turnin 11124 >>Turn in Inspecting the Ruins
    .target Inspector Tarem
step
    .goto 1445/1,-2534.25,-3700.73
    >>Click the |cRXP_PICK_Suspicious Hoofprint|r
    .accept 1268 >>Accept Suspicious Hoofprints
step
    .goto 1445/1,-2541.07,-3721.73
    >>Click the |cRXP_PICK_Theramore Guard Badge|r
    .accept 1269 >>Accept Lieutenant Paval Reethe
step
    .goto 1445/1,-2530.57,-3735.03
    >>Click the |cRXP_PICK_Black Shield|r
    .accept 1251 >>Accept The Black Shield
step
    .goto 1445/1,-2820.37,-3372.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .accept 1177 >>Accept Hungry!
    .target Mudcrush Durtfeet
step
    .goto 1445/1,-2842.42,-3148.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shardi|r
    .fp Brackenwall >> Get the Brackenwall Village Flight Path
    .target Shardi
    .subzoneskip 496,1
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 1251 >>Turn in The Black Shield while you are here
    .isQuestComplete 1251
    .target Krog
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 1268 >>Turn in Suspicious Hoofprints while you are here
    .isQuestComplete 1268
    .target Krog
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 1269 >>Turn in Lieutenant Paval Reethe while you are here
    .isQuestComplete 1269
    .target Krog
step
    .goto 1445/1,-2823.52,-3106.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 1201 >>Accept Theramore Spies
    .target Nazeer Bloodpike
step
    .goto 1445/1,-2857.65,-3144.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balandar Brightstar|r
    .accept 9437 >>Accept Twilight of the Dawn Runner
    .target Balandar Brightstar
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 1268 >>Turn in Suspicious Hoofprints
    .turnin 1269 >>Turn in Lieutenant Paval Reethe
    .turnin 1251 >>Turn in The Black Shield
    .accept 1321 >>Accept The Black Shield
    .target Krog
step
    .goto 1445/1,-2925.37,-3191.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 11225 >>Accept The Hermit of Witch Hill
    .target Draz'Zilb
step
    .goto 1445/1,-2892.82,-3110.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Do'gol|r
    .turnin 1321 >>Turn in The Black Shield
    .accept 1322 >>Accept The Black Shield
    .target Do'gol
step
    .goto 1445/1,-3125.40,-3317.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogron|r
    .accept 1273 >>Accept Questioning Reethe
    .target Ogron
step
    .goto 1445/1,-3204.67,-3365.78
    >>Question Reethe with Ogron
    .complete 1273,1 --Question Reethe with Ogron
step
    #completewith Along13
    >>As you go: Open the |cRXP_PICK_Warped Crates|r. Loot it for |cRXP_LOOT_Dawn Runner Cargo|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9437,2 --Dawn Runner Cargo (1)
step
    #label Along13
    .goto 1445/1,-3423.07,-2889.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithania|r
    .complete 9437,1 --Ithania
    .target Ithania
step
    .goto 1445/1,-3422.02,-2893.98
    >>Open the |cRXP_PICK_Warped Crates|r. Loot it for |cRXP_LOOT_Dawn Runner Cargo|r
    .complete 9437,2 --Dawn Runner Cargo (1)
step
    .goto 1445/1,-3436.20,-2646.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
    .accept 1270 >>Accept Stinky's Escape
    .target "Stinky" Ignatz
step
    .goto 1445/1,-3540.67,-2893.63
    >>Help Stinky find Bogbean Leaves
    .complete 1270,1 --Help Stinky find Bogbean Leaves
step
    .goto 1445/1,-3885.60,-2940.53
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 1238 >>Accept The Lost Report
step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 11225 >>Turn in The Hermit of Witch Hill
    .accept 1218 >>Accept Marsh Frog Legs
    .target "Swamp Eye" Jarl
step
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Giant Marsh Frogs|r. Loot them for |cRXP_LOOT_Marsh Frog Leg|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1218,1 --Marsh Frog Leg (10)
    .mob Giant Marsh Frog
step
    #label Along19
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .accept 11180 >>Accept What's Haunting Witch Hill?
    .target Mordant Grimsby
step
    #completewith Drop635x1
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r, |cRXP_ENEMY_Mirefin Muckdweller|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x1
    #loop
    .goto 1445/1,-3911.85,-2921.63,0
    .goto 1445/1,-3911.85,-2921.63,40,0
    .goto 1445/1,-3991.65,-2892.58,40,0
    .goto 1445/1,-3873.00,-2824.33,40,0
    >>Kill |cRXP_ENEMY_Risen Spirits|r, |cRXP_ENEMY_Risen Husks|r and |cRXP_ENEMY_Restless Apparitions|r
    >>Kill |cRXP_ENEMY_Giant Marsh Frogs|r. Loot them for |cRXP_LOOT_Marsh Frog Leg|r
    .complete 11180,1 --Risen Spirit (8)
    .complete 1218,1 --Marsh Frog Leg (10)
    .mob Risen Spirit
    .mob Risen Husk
    .mob Restless Apparition
    .mob Giant Marsh Frog
step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1218 >>Turn in Marsh Frog Legs
    .accept 1206 >>Accept Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 11180 >>Turn in What's Haunting Witch Hill?
    .accept 11181 >>Accept The Witch's Bane
    .target Mordant Grimsby
step
    #loop
    .goto 1445/1,-3792.67,-2781.63,0
    .goto 1445/1,-3792.67,-2781.63,40,0
    .goto 1445/1,-3630.97,-2819.78,40,0
    .goto 1445/1,-3653.02,-2680.83,40,0
    >>Pick up |cRXP_PICK_Witchbane|r from the ground
    .complete 11181,1 --Witchbane (9)
step
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Recluses|r, |cRXP_ENEMY_Darkmist Silkspinners|r and |cRXP_ENEMY_Darkmist Widows|r. Loot them for |cRXP_LOOT_Acidic Venom Sac|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1322,1 --Acidic Venom Sac (5)
    .mob Darkmist Spider
    .mob Darkmist Recluse
    .mob Darkmist Silkspinner
    .mob Darkmist Widow
step
    #label Along24
    #loop
    .goto 1445/1,-2800.42,-2882.78,0
    .goto 1445/1,-2800.42,-2882.78,40,0
    .goto 1445/1,-2781.00,-2814.53,40,0
    .goto 1445/1,-2614.05,-2785.13,40,0
    >>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Hatchlings|r, |cRXP_ENEMY_Darkmist Recluses|r and |cRXP_ENEMY_Darkmist Silkspinners|r. Loot them for |cRXP_LOOT_Unpopped Darkmist Eye|r
    .complete 1206,1 --Unpopped Darkmist Eye (20)
    .mob Darkmist Spider
    .mob Darkmist Hatchling
    .mob Darkmist Recluse
    .mob Darkmist Silkspinner
step
    #completewith Drop635x2
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r, |cRXP_ENEMY_Mirefin Muckdweller|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x2
    #loop
    .goto 1445/1,-2972.62,-2927.93,0
    .goto 1445/1,-2972.62,-2927.93,40,0
    .goto 1445/1,-3019.35,-2818.03,40,0
    >>Kill |cRXP_ENEMY_Theramore Infiltrators|r
    .complete 1201,1 --Theramore Infiltrator slain (9)
    .mob Theramore Infiltrator
step
    #loop
    .goto 1445/1,-2804.62,-2842.18,0
    .goto 1445/1,-2804.62,-2842.18,40,0
    .goto 1445/1,-2814.60,-2786.18,40,0
    .goto 1445/1,-2629.27,-2801.58,40,0
    >>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Recluses|r, |cRXP_ENEMY_Darkmist Silkspinners|r and |cRXP_ENEMY_Darkmist Widows|r. Loot them for |cRXP_LOOT_Acidic Venom Sac|r
    .complete 1322,1 --Acidic Venom Sac (5)
    .mob Darkmist Spider
    .mob Darkmist Recluse
    .mob Darkmist Silkspinner
    .mob Darkmist Widow
step
    .goto 1445/1,-2823.52,-3106.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1201 >>Turn in Theramore Spies
    .turnin 1238 >>Turn in The Lost Report
    .accept 1202 >>Accept The Theramore Docks
    .target Nazeer Bloodpike
step
    .goto 1445/1,-2892.82,-3110.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Do'gol|r
    .turnin 1322 >>Turn in The Black Shield
    .accept 1323 >>Accept The Black Shield
    .target Do'gol
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 1323 >>Turn in The Black Shield
    .turnin 1273 >>Turn in Questioning Reethe
    .accept 1276 >>Accept The Black Shield
    .target Krog
step
    .goto 1445/1,-2857.65,-3144.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balandar Brightstar|r
    .turnin 9437 >>Turn in Twilight of the Dawn Runner
    .target Balandar Brightstar
step
    .goto 1445/1,-3885.60,-2940.53
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 1239 >>Accept The Severed Head
step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1206 >>Turn in Jarl Needs Eyes
    .accept 1203 >>Accept Jarl Needs a Blade
    .target "Swamp Eye" Jarl
step
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 11181 >>Turn in The Witch's Bane
    .accept 11183 >>Accept Cleansing Witch Hill
    .target Mordant Grimsby
step
    .goto 1445/1,-3871.95,-2967.48
    >>Kill |cRXP_ENEMY_Zelfrax|r
    .complete 11183,1 --Witch Hill Cleansed (1)
    .mob Zelfrax
step
    .goto 1445/1,-3892.95,-2948.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 11183 >>Turn in Cleansing Witch Hill
    .target Mordant Grimsby
step
    .goto 1445/1,-4730.32,-3824.98
    >>Open the |cRXP_PICK_Captain's Footlocker|r. Loot it for |cRXP_LOOT_Captain's Documents|r
    .complete 1202,1 --Captain's Documents (1)
step
    .goto 1445/1,-4008.45,-2724.23
    >>Kill |cRXP_ENEMY_Razorspine|r and loot |cRXP_LOOT_Razorspine's Sword|r
    .complete 1203,1 --Razorspine's Sword (1)
    .mob Razorspine
step
    #completewith Drop635x3
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Mirefin Murloc|r, |cRXP_ENEMY_Mirefin Warrior|r, |cRXP_ENEMY_Mirefin Muckdweller|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x3
    #loop
    .goto 1445/1,-4045.72,-2581.43,0
    .goto 1445/1,-4045.72,-2581.43,40,0
    .goto 1445/1,-3985.35,-2577.23,40,0
    .goto 1445/1,-3839.92,-2576.88,40,0
    >>Kill |cRXP_ENEMY_Mirefin Oracles|r, |cRXP_ENEMY_Mirefin Coastrunners|r, |cRXP_ENEMY_Mirefin Warriors|r and |cRXP_ENEMY_Mirefin Muckdwellers|r. Loot them for |cRXP_LOOT_Mirefin Head|r
    .complete 1177,1 --Mirefin Head (8)
    .mob Mirefin Oracle
    .mob Mirefin Coastrunner
    .mob Mirefin Warrior
    .mob Mirefin Muckdweller
step
    .goto 1445/1,-3885.60,-2952.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 1203 >>Turn in Jarl Needs a Blade
    .target "Swamp Eye" Jarl
step
    .goto 1445/1,-2823.52,-3106.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1202 >>Turn in The Theramore Docks
    .turnin 1239 >>Turn in The Severed Head
    .accept 1240 >>Accept The Troll Witchdoctor
    .target Nazeer Bloodpike
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 11204 >>Turn in Return to Krog
    .target Krog
    .isOnQuest 11204
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .accept 11200 >>Accept More than Coincidence
    .accept 11201 >>Accept The Grimtotem Plot
    .target Krog
    .isQuestTurnedIn 11204 --any of: Return to Krog
    .xp <33,1
step
    .goto 1445/1,-2911.72,-3165.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Little" Logok|r
    .target "Little" Logok
    .home >>Set your Hearthstone to "Little" Logok's inn
step
    #loop
    .goto 1445/1,-3097.05,-2434.78,0
    .goto 1445/1,-3097.05,-2434.78,40,0
    .goto 1445/1,-3204.15,-2460.33,40,0
    >>Pick up |cRXP_PICK_Blackhoof Armaments|r from the ground
    .complete 11200,1 --Blackhoof Armaments (7)
    .isOnQuest 11200
step
    #loop
    .goto 1445/1,-3201.52,-2437.58,0
    .goto 1445/1,-3201.52,-2437.58,40,0
    .goto 1445/1,-3128.02,-2402.93,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Elder|r and loot |cRXP_LOOT_Grimtotem Note|r
    .collect 33050,1,11201,1 --Grimtotem Note (1)
    .mob Grimtotem Elder
    .isOnQuest 11201
step
    #completewith next
    .hs >>Hearth to "Little" Logok's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 11200 >>Turn in More than Coincidence
    .target Krog
    .isOnQuest 11200
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .accept 11203 >>Accept Seek Out Tabetha
    .target Krog
    .isQuestTurnedIn 11200 --More than Coincidence
    .isQuestTurnedIn 11201 --The Grimtotem Plot
    .xp <35,1
step
    .goto 1445/1,-2820.37,-3372.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush Durtfeet|r
    .turnin 1177 >>Turn in Hungry!
    .target Mudcrush Durtfeet
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1953 >>Turn in Return to the Marsh
    .target Tabetha
    .isOnQuest 1953
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1951 >>Turn in Rituals of Power
    .target Tabetha
    .isQuestComplete 1951
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1947 >>Turn in Journey to the Marsh
    .target Tabetha
    .isOnQuest 1947
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1949 >>Accept Hidden Secrets
    .target Tabetha
    .isQuestTurnedIn 1947 --any of: Journey to the Marsh
    .xp <30,1
step << Warlock
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1799 >>Turn in Fragments of the Orb of Orahil
    .target Tabetha
    .isQuestComplete 1799
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 11203 >>Turn in Seek Out Tabetha
    .target Tabetha
    .isOnQuest 11203
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 2861 >>Turn in Tabetha's Task
    .target Tabetha
    .isOnQuest 2861
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 11205 >>Accept Raze Direhorn Post!
    .target Tabetha
    .isQuestTurnedIn 11203 --any of: Seek Out Tabetha
    .xp <35,1
step
    .goto 1445/1,-3392.62,-4036.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .accept 11169 >>Accept The Grimtotem Weapon
    .accept 11173 >>Accept The Reagent Thief
    .target Apprentice Garion
step
    .goto 1445/1,-3395.25,-4043.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .accept 11156 >>Accept Direhorn Raiders
    .accept 11172 >>Accept The Zeppelin Crash
    .target Apprentice Morlann
step
    .goto 1445/1,-3787.42,-4025.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 11172 >>Turn in The Zeppelin Crash
    .accept 11174 >>Accept Corrosion Prevention
    .accept 11207 >>Accept Secure the Cargo!
    .target Moxie Steelgrille
step
    #loop
    .goto 1445/1,-3754.87,-4087.13,0
    .goto 1445/1,-3754.87,-4087.13,40,0
    .goto 1445/1,-3695.02,-3945.03,40,0
    .goto 1445/1,-3846.75,-3922.28,40,0
    >>Kill |cRXP_ENEMY_Corrosive Swamp Oozes|r, |cRXP_ENEMY_Acidic Swamp Oozes|r and |cRXP_ENEMY_Bubbling Swamp Oozes|r
    >>Pick up |cRXP_PICK_Zeppelin Cargo|r from the ground
    .complete 11174,1 --Corrosive Swamp Ooze (10)
    .complete 11207,1 --Zeppelin Cargo (1)
    .mob Corrosive Swamp Ooze
    .mob Acidic Swamp Ooze
    .mob Bubbling Swamp Ooze
step
    .goto 1445/1,-3787.42,-4025.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 11174 >>Turn in Corrosion Prevention
    .turnin 11207 >>Turn in Secure the Cargo!
    .accept 11208 >>Accept Delivery for Drazzit
    .target Moxie Steelgrille
step
    #loop
    .goto 1445/1,-3879.30,-4222.23,0
    .goto 1445/1,-3879.30,-4222.23,40,0
    .goto 1445/1,-3946.50,-4217.33,40,0
    .goto 1445/1,-3810.00,-4280.33,40,0
    >>Kill |cRXP_ENEMY_Muckshell Razorclaws|r, |cRXP_ENEMY_Muckshell Clackers|r, |cRXP_ENEMY_Muckshell Scrabblers|r and |cRXP_ENEMY_Muckshell Snapclaws|r. Loot them for |cRXP_LOOT_Jeweled Pendant|r
    .complete 1261,1 --Jeweled Pendant (1)
    .mob Muckshell Razorclaw
    .mob Muckshell Clacker
    .mob Muckshell Scrabbler
    .mob Muckshell Snapclaw
    .isOnQuest 1261
step
    .goto 1445/1,-3454.05,-3663.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cylla|r
    .accept 11186 >>Accept Signs of Treachery?
    .target Apothecary Cylla
step
    .goto 1445/1,-3421.50,-3640.88
    >>Kill |cRXP_ENEMY_North Tent|r
    .complete 11205,1 --North Tent Burned (1)
    .mob North Tent
    .isOnQuest 11205
step
    .goto 1445/1,-3455.62,-3662.23
    >>Kill |cRXP_ENEMY_Northeast Tent|r
    .complete 11205,2 --Northeast Tent Burned (1)
    .mob Northeast Tent
    .isOnQuest 11205
step
    .goto 1445/1,-3470.32,-3701.08
    >>Kill |cRXP_ENEMY_East Tent|r
    .complete 11205,3 --East Tent Burned (1)
    .mob East Tent
    .isOnQuest 11205
step
    #loop
    .goto 1445/1,-3439.35,-3735.03,0
    .goto 1445/1,-3439.35,-3735.03,40,0
    .goto 1445/1,-3399.45,-3653.83,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Earthbinders|r and |cRXP_ENEMY_Grimtotem Destroyers|r
    .complete 11156,1 --Direhorn Grimtotems killed (8)
    .mob Grimtotem Earthbinder
    .mob Grimtotem Destroyer
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 11205 >>Turn in Raze Direhorn Post!
    .target Tabetha
    .isOnQuest 11205
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 11206 >>Accept Justice Dispensed
    .target Tabetha
    .isQuestTurnedIn 11205 --any of: Raze Direhorn Post!
    .xp <35,1
step
    .goto 1445/1,-3395.25,-4043.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .turnin 11156 >>Turn in Direhorn Raiders
    .target Apprentice Morlann
step
    .goto 1445/1,-3197.32,-4585.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11208 >>Turn in Delivery for Drazzit
    .target Drazzit Dripvalve
step
    .goto 1445/1,-3166.87,-4592.88
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 11184 >>Accept WANTED: Goreclaw the Ravenous
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 11158 >>Accept Bloodfen Feathers
    .target Brogg
step
    .goto 1445/1,-2663.92,-4331.43
    >>Kill |cRXP_ENEMY_Goreclaw the Ravenous|r
    .complete 11184,1 --Goreclaw the Ravenous slain (1)
    .mob Goreclaw the Ravenous
step
    .goto 1445/1,-2608.27,-4348.23
    >>Click the |cRXP_PICK_Musty Scroll|r
    .turnin 625 >>Turn in Cortello's Riddle
    .isOnQuest 625
step
    .goto 1445/1,-2608.27,-4348.23
    >>Click the |cRXP_PICK_Musty Scroll|r
    .accept 626 >>Accept Cortello's Riddle
    .isQuestTurnedIn 625 --any of: Cortello's Riddle
    .xp <35,1
step
    #loop
    .goto 1445/1,-2776.27,-4530.58,0
    .goto 1445/1,-2776.27,-4530.58,40,0
    .goto 1445/1,-2963.17,-4483.33,40,0
    >>Kill |cRXP_ENEMY_Bloodfen Razormaws|r, |cRXP_ENEMY_Bloodfen Lashtails|r and |cRXP_ENEMY_Goreclaw the Ravenous|r. Loot them for |cRXP_LOOT_Bloodfen Feather|r
    .complete 11158,1 --Bloodfen Feather (5)
    .mob Bloodfen Razormaw
    .mob Bloodfen Lashtail
    .mob Goreclaw the Ravenous
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11158 >>Turn in Bloodfen Feathers
    .accept 11160 >>Accept Banner of the Stonemaul
    .accept 11161 >>Accept The Essence of Enmity
    .target Brogg
step
    .goto 1445/1,-3197.32,-4585.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11184 >>Turn in WANTED: Goreclaw the Ravenous
    .target Drazzit Dripvalve
step
    #loop
    .goto 1445/1,-3054.00,-4329.33,0
    .goto 1445/1,-3054.00,-4329.33,40,0
    .goto 1445/1,-2961.07,-4388.83,40,0
    .goto 1445/1,-2907.00,-4448.33,40,0
    >>Open the |cRXP_PICK_Stonemaul Clan Banner|r. Loot it for |cRXP_LOOT_Stonemaul Banner|r
    >>Kill |cRXP_ENEMY_Firemane Scalebanes|r, |cRXP_ENEMY_Firemane Scouts|r and |cRXP_ENEMY_Firemane Ash Tails|r. Loot them for |cRXP_LOOT_Black Dragonkin Essence|r
    .complete 11160,1 --Stonemaul Banner (1)
    .complete 11161,1 --Black Dragonkin Essence (10)
    .mob Firemane Scalebane
    .mob Firemane Scout
    .mob Firemane Ash Tail
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11160 >>Turn in Banner of the Stonemaul
    .turnin 11161 >>Turn in The Essence of Enmity
    .target Brogg
step
    .goto 1445/1,-3949.65,-5103.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emberstrife|r
    .turnin 6570 >>Turn in Emberstrife
    .target Emberstrife
    .isOnQuest 6570
step
    #completewith next
    .hs >>Hearth to "Little" Logok's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1445/1,-2823.52,-3106.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 11186 >>Turn in Signs of Treachery?
    .target Nazeer Bloodpike
step
    .goto 1445/1,-2823.52,-3106.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .turnin 1261 >>Turn in Marg Speaks
    .target Nazeer Bloodpike
    .isOnQuest 1261
step
    .goto 1445/1,-2823.52,-3106.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 1262 >>Accept Report to Zor
    .target Nazeer Bloodpike
    .isQuestTurnedIn 1261 --any of: Marg Speaks
    .xp <30,1
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 11206 >>Turn in Justice Dispensed
    .target Krog
    .isOnQuest 11206
step
    .goto 1445/1,-2887.05,-3149.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krog|r
    .turnin 11201 >>Turn in The Grimtotem Plot
    .target Krog
    .isQuestComplete 11201
step
    #loop
    .goto 1445/1,-3118.05,-3724.53,0
    .goto 1445/1,-3118.05,-3724.53,40,0
    .goto 1445/1,-3073.42,-3855.43,40,0
    .goto 1445/1,-2955.30,-3917.73,40,0
    >>Kill |cRXP_ENEMY_Mottled Drywallow Crocolisks|r and |cRXP_ENEMY_Drywallow Daggermaws|r
    >>Kill |cRXP_ENEMY_Noxious Shredders|r and |cRXP_ENEMY_Darkfang Creepers|r. Loot them for |cRXP_LOOT_Marsh Venom|r
    .complete 11169,1 --Mottled Drywallow Crocolisk (10)
    .complete 11173,1 --Marsh Venom (1)
    .mob Mottled Drywallow Crocolisk
    .mob Drywallow Daggermaw
    .mob Noxious Shredder
    .mob Darkfang Creeper
step
    .goto 1445/1,-3392.62,-4036.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .turnin 11169 >>Turn in The Grimtotem Weapon
    .turnin 11173 >>Turn in The Reagent Thief
    .target Apprentice Garion
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1952 >>Accept Mage's Wand
    .target Tabetha
    .isQuestTurnedIn 1948 --Items of Power
    .isQuestTurnedIn 1951 --Rituals of Power
    .xp <30,1
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1952 >>Turn in Mage's Wand
    .target Tabetha
    .isOnQuest 1952
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1948 >>Accept Items of Power
    .target Tabetha
    .isQuestTurnedIn 1947 --any of: Journey to the Marsh
    .xp <30,1
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1954 >>Accept The Infernal Orb
    .target Tabetha
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1954 >>Turn in The Infernal Orb
    .target Tabetha
    .isQuestComplete 1954
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1948 >>Turn in Items of Power
    .target Tabetha
    .isQuestComplete 1948
step << Mage
    .goto 1445/1,-3289.72,-4306.23
    >>Open the |cRXP_PICK_Tin Vein|r. Loot it for |cRXP_LOOT_Jade|r
    .complete 1948,1 --Jade (1)
    .isOnQuest 1948
step
    +|cRXP_WARN_That is all of Dustwallow Marsh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Crystal in the Mountains
    >>|cRXP_FRIENDLY_Orgrimmar|r: Report to Zor
    >>|cRXP_FRIENDLY_Stranglethorn Vale|r: The Troll Witchdoctor
    >>|cRXP_FRIENDLY_The Barrens|r: Stinky's Escape
    >>|cRXP_FRIENDLY_The Hinterlands|r: Cortello's Riddle
    >>|cRXP_FRIENDLY_Thousand Needles|r: Hidden Secrets << Mage
    >>|cRXP_FRIENDLY_Thunder Bluff|r: The Black Shield
    >>|cRXP_FRIENDLY_Desolace and back here|r: The Infernal Orb << Mage
step
    +|cRXP_WARN_Suggested next zones at level 37|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.8 levels of quests, starting around Baron Revilgaz). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dustwallow Marsh is planned from level 40.|r Load its guide for level 40 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 44 Dustwallow Marsh
#subweight -35
#name 40-41 Dustwallow Marsh: around Draz'Zilb
--RouteBuilder:next
#next Zone Routes (Horde)\37-39 Stranglethorn Vale: around Baron Revilgaz

step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1954 >>Turn in The Infernal Orb
    .target Tabetha
    .isQuestComplete 1954
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1955 >>Accept The Exorcism
    .target Tabetha
    .isQuestTurnedIn 1954 --any of: The Infernal Orb
    .xp <35,1
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1957 >>Accept Mana Surges
    .target Tabetha
    .isQuestTurnedIn 1956 --any of: Power in Uldaman
    .xp <35,1
step << Mage
    .goto 1445/1,-3381.07,-4026.23
    >>Kill |cRXP_ENEMY_Mana Surges|r
    .complete 1957,1 --Mana Surge slain (12)
    .mob Mana Surge
    .isOnQuest 1957
step << Mage
    .goto 1445/1,-3378.97,-4027.28
    >>Kill |cRXP_ENEMY_Demon of the Orb|r
    .complete 1955,1 --Demon of the Orb slain (1)
    .mob Demon of the Orb
    .isOnQuest 1955
step << Mage
    .goto 1445/1,-3369.00,-4035.33
    >>Kill the Demon of the Orb
    .complete 1955,2 --Kill the Demon of the Orb
    .isOnQuest 1955
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1955 >>Turn in The Exorcism
    .target Tabetha
    .isOnQuest 1955
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1957 >>Turn in Mana Surges
    .target Tabetha
    .isOnQuest 1957
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1958 >>Accept Celestial Power
    .target Tabetha
    .isQuestTurnedIn 1957 --any of: Mana Surges
    .xp <35,1
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 1956 >>Accept Power in Uldaman
    .target Tabetha
    .isQuestTurnedIn 1955 --any of: The Exorcism
    .xp <35,1
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1958 >>Turn in Celestial Power
    .target Tabetha
    .isOnQuest 1958
step
    .goto 1445/1,-2880.22,-3132.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 1166 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step
    .goto 1445/1,-2911.72,-3165.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Little" Logok|r
    .target "Little" Logok
    .home >>Set your Hearthstone to "Little" Logok's inn
step
    .goto 1445/1,-2925.37,-3191.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 1169 >>Accept Identifying the Brood
    .target Draz'Zilb
step
    .goto 1445/1,-2936.92,-3131.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharg|r
    .accept 1168 >>Accept Army of the Black Dragon
    .target Tharg
step
    .goto 1445/1,-2823.52,-3106.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazeer Bloodpike|r
    .accept 11213 >>Accept Check Up on Tabetha
    .target Nazeer Bloodpike
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 11213 >>Turn in Check Up on Tabetha
    .accept 11211 >>Accept Help for Mudsprocket
    .accept 2846 >>Accept Tiara of the Deep
    .target Tabetha
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 2846 >>Turn in Tiara of the Deep
    .target Tabetha
    .isQuestComplete 2846
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1956 >>Turn in Power in Uldaman
    .target Tabetha
    .isQuestComplete 1956
step << Warlock
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 4961 >>Accept Cleansing of the Orb of Orahil
    .target Tabetha
    .isQuestTurnedIn 1799 --Fragments of the Orb of Orahil
    .isQuestTurnedIn 4962 --Shard of a Felhound
    .xp <35,1
step << Warlock
    .goto 1445/1,-3378.97,-4027.28
    >>Kill |cRXP_ENEMY_Demon of the Orb|r
    .complete 4961,1 --Demon of the Orb slain (1)
    .mob Demon of the Orb
    .isOnQuest 4961
step << Warlock
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 4961 >>Turn in Cleansing of the Orb of Orahil
    .target Tabetha
    .isOnQuest 4961
step << Warlock
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 4976 >>Accept Returning the Cleansed Orb
    .target Tabetha
    .isQuestTurnedIn 4961 --any of: Cleansing of the Orb of Orahil
    .xp <35,1
step
    .goto 1445/1,-3197.32,-4585.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11211 >>Turn in Help for Mudsprocket
    .target Drazzit Dripvalve
step
    .goto 1445/1,-3155.85,-4587.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .accept 11217 >>Accept Catch a Dragon by the Tail
    .target Gizzix Grimegurgle
step
    #completewith Along25
    >>As you go: Kill |cRXP_ENEMY_Firemane Scouts|r. Kill |cRXP_ENEMY_Firemane Ash Tails|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1168,1 --Firemane Scout slain (10)
    .complete 1168,2 --Firemane Ash Tail slain (10)
    .mob Firemane Scout
    .mob Firemane Ash Tail
step
    #label Along25
    .goto 1445/1,-3004.65,-4328.28
    >>Pick up |cRXP_PICK_Mok'Morokk's Grog|r from the ground
    .complete 1166,2 --Mok'Morokk's Grog (1)
step
    #loop
    .goto 1445/1,-3054.00,-4329.33,0
    .goto 1445/1,-3054.00,-4329.33,40,0
    .goto 1445/1,-2961.07,-4388.83,40,0
    .goto 1445/1,-2907.00,-4448.33,40,0
    >>Pick up |cRXP_PICK_Mok'Morokk's Strongbox|r from the ground
    >>Kill |cRXP_ENEMY_Firemane Scalebanes|r
    >>Kill |cRXP_ENEMY_Firemane Scouts|r
    >>Kill |cRXP_ENEMY_Firemane Ash Tails|r
    .complete 1166,3 --Mok'Morokk's Strongbox (1)
    .complete 1168,3 --Firemane Scalebane slain (5)
    .complete 1168,1 --Firemane Scout slain (10)
    .complete 1168,2 --Firemane Ash Tail slain (10)
    .mob Firemane Scalebane
    .mob Firemane Scout
    .mob Firemane Ash Tail
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 11159 >>Accept Spirits of Stonemaul Hold
    .target Brogg
    .isQuestTurnedIn 11161 --any of: The Essence of Enmity
step
    #completewith Along29
    >>As you go: Kill |cRXP_ENEMY_Searing Hatchlings|r and |cRXP_ENEMY_Searing Whelps|r. Loot them for |cRXP_LOOT_Searing Tongue|r. Kill |cRXP_ENEMY_Searing Hatchlings|r and |cRXP_ENEMY_Searing Whelps|r. Loot them for |cRXP_LOOT_Searing Heart|r. |cRXP_WARN_Anything left is finished later|r
    .complete 1169,1 --Searing Tongue (7)
    .complete 1169,2 --Searing Heart (7)
    .mob Searing Hatchling
    .mob Searing Whelp
step
    .goto 1445/1,-3312.82,-4344.73
    >>Pick up |cRXP_PICK_Mok'Morokk's Snuff|r from the ground
    .complete 1166,1 --Mok'Morokk's Snuff (1)
step
    #label Along29
    #loop
    .goto 1445/1,-3327.00,-4322.33,0
    .goto 1445/1,-3327.00,-4322.33,40,0
    .goto 1445/1,-3369.00,-4427.33,40,0
    >>Kill |cRXP_ENEMY_Stonemaul Spirits|r
    .complete 11159,1 --Stonemaul Spirits laid to rest (10)
    .mob Stonemaul Spirit
    .isOnQuest 11159
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11159 >>Turn in Spirits of Stonemaul Hold
    .target Brogg
    .isOnQuest 11159
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 11162 >>Accept Challenge to the Black Flight
    .target Brogg
    .isQuestTurnedIn 11159 --any of: Spirits of Stonemaul Hold
step
    #completewith Along32
    >>As you go: Pick up |cRXP_PICK_Wyrmtail|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11217,1 --Wyrmtail (8)
step
    #label Along32
    #loop
    .goto 1445/1,-3328.57,-4688.43,0
    .goto 1445/1,-3328.57,-4688.43,40,0
    .goto 1445/1,-3189.97,-4793.43,40,0
    .goto 1445/1,-3245.62,-4884.43,40,0
    .goto 1445/1,-3425.17,-4915.58,40,0
    >>Kill |cRXP_ENEMY_Searing Hatchlings|r and |cRXP_ENEMY_Searing Whelps|r. Loot them for |cRXP_LOOT_Searing Tongue|r
    >>Kill |cRXP_ENEMY_Searing Hatchlings|r and |cRXP_ENEMY_Searing Whelps|r. Loot them for |cRXP_LOOT_Searing Heart|r
    .complete 1169,1 --Searing Tongue (7)
    .complete 1169,2 --Searing Heart (7)
    .mob Searing Hatchling
    .mob Searing Whelp
step
    #loop
    .goto 1445/1,-3436.72,-4848.73,0
    .goto 1445/1,-3436.72,-4848.73,40,0
    .goto 1445/1,-3506.02,-4778.73,40,0
    .goto 1445/1,-3411.00,-4660.78,40,0
    >>Pick up |cRXP_PICK_Wyrmtail|r from the ground
    .complete 11217,1 --Wyrmtail (8)
step
    .goto 1445/1,-3715.50,-4700.33
    >>Kill |cRXP_ENEMY_Smolderwing|r
    .complete 11162,1 --Stonemaul Clan Avenged (1)
    .mob Smolderwing
    .isOnQuest 11162
step
    #completewith next
    .hs >>Hearth to "Little" Logok's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1445/1,-2880.22,-3132.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .turnin 1166 >>Turn in Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step
    .goto 1445/1,-2936.92,-3131.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharg|r
    .turnin 1168 >>Turn in Army of the Black Dragon
    .target Tharg
step
    .goto 1445/1,-2925.37,-3191.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1169 >>Turn in Identifying the Brood
    .accept 1170 >>Accept The Brood of Onyxia
    .target Draz'Zilb
step
    .goto 1445/1,-2880.22,-3132.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .turnin 1170 >>Turn in The Brood of Onyxia
    .accept 1171 >>Accept The Brood of Onyxia
    .target Overlord Mok'Morokk
step
    .goto 1445/1,-2925.37,-3191.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1171 >>Turn in The Brood of Onyxia
    .accept 1172 >>Accept The Brood of Onyxia
    .target Draz'Zilb
step
    .goto 1445/1,-3155.85,-4587.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .turnin 11217 >>Turn in Catch a Dragon by the Tail
    .target Gizzix Grimegurgle
step
    .goto 1445/1,-3172.65,-4622.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 11162 >>Turn in Challenge to the Black Flight
    .target Brogg
    .isOnQuest 11162
step
    .goto 1445/1,-3786.90,-4571.88
    >>Click the |cRXP_PICK_Egg of Onyxia|r
    .complete 1172,1 --Egg of Onyxia destroyed
step
    .goto 1445/1,-2925.37,-3191.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1172 >>Turn in The Brood of Onyxia
    .target Draz'Zilb
step
    +|cRXP_WARN_That is all of Dustwallow Marsh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Barrens|r: Returning the Cleansed Orb << Warlock
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Tiara of the Deep
step
    +|cRXP_WARN_Suggested next zones at level 40|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around Baron Revilgaz). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Dustwallow Marsh is planned from level 43.|r Load its guide for level 43 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 44 Dustwallow Marsh
#subweight -35
#name 43-44 Dustwallow Marsh
--RouteBuilder:next
#next Zone Routes (Horde)\41-43 Stranglethorn Vale: around "Sea Wolf" MacKinley;Zone Routes (Horde)\42-43 Feralas: around Hadoken Swiftstrider

step
    .goto 1445/1,-2880.22,-3132.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 1173 >>Accept Challenge Overlord Mok'Morokk
    .target Overlord Mok'Morokk
    .isQuestTurnedIn 1172 --any of: The Brood of Onyxia
step
    .goto 1445/1,-2886.52,-3133.38
    >>Drive Overlord Mok'Morokk from Brackenwall Village
    .complete 1173,1 --Drive Overlord Mok'Morokk from Brackenwall Village
    .isOnQuest 1173
step
    .goto 1445/1,-2925.37,-3191.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1173 >>Turn in Challenge Overlord Mok'Morokk
    .target Draz'Zilb
    .isOnQuest 1173
step << Mage
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1954 >>Turn in The Infernal Orb
    .target Tabetha
    .isQuestComplete 1954
step
    .goto 1445/1,-3393.15,-4031.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 2846 >>Turn in Tiara of the Deep
    .target Tabetha
    .isQuestComplete 2846
step
    +|cRXP_WARN_End of the Dustwallow Marsh route.|r
step
    +|cRXP_WARN_Suggested next zones at level 43|r: |cRXP_FRIENDLY_Stranglethorn Vale|r (about 0.7 levels of quests, starting around "Sea Wolf" MacKinley), |cRXP_FRIENDLY_Feralas|r (about 0.6 levels of quests, starting around Hadoken Swiftstrider). Completing this step loads the guide for Stranglethorn Vale --RouteBuilder:next
]])
