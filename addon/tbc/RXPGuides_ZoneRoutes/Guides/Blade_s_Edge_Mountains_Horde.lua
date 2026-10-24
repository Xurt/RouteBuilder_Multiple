-- 65-68 Blade's Edge Mountains: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 65, 68).
-- Split into 2 guides, listed under "65 - 69 Blade's Edge Mountains" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Blade's Edge Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 65 - 69 Blade's Edge Mountains
#subweight -65
#name 65-66 Blade's Edge Mountains: around Rexxar
--RouteBuilder:next
#next Zone Routes (Horde)\62-64 Terokkar Forest: around Tooki;Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel

step
    .goto 1949,52.96,96.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grunt Grahk|r
    .accept 10928 >>Accept Killing the Crawlers
    .target Grunt Grahk
step
    #loop
    .goto 1949,52.35,86.68,0
    .goto 1949,52.35,86.68,40,0
    .goto 1949,51.79,82.94,40,0
    >>Kill |cRXP_ENEMY_Cavern Crawlers|r
    .complete 10928,1 --Cavern Crawler slain (6)
    .mob Cavern Crawler
step
    .goto 1949,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10928 >>Turn in Killing the Crawlers
    .accept 10503 >>Accept The Bladespire Threat
    .target Tor'chunk Twoclaws
step
    .goto 1949,51.92,57.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekthar|r
    .turnin 9795 >>Turn in The Ogre Threat
    .target Nekthar
    .isOnQuest 9795
step
    .goto 1949,51.94,57.78
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10489 >>Accept Felling an Ancient Tree
step
    .goto 1949,52.37,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'drek|r
    .accept 10486 >>Accept The Encroaching Wilderness
    .target Gor'drek
step
    .goto 1949,53.37,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gholah|r
    .target Gholah
    .home >>Set your Hearthstone to Gholah's inn
step
    .goto 1949,52.05,54.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Unoke|r
    .fp Thunderlord Stronghold >> Get the Thunderlord Stronghold flight path
    .target Unoke Tenderhoof
step
    #loop
    .goto 1949,54.12,70.91,0
    .goto 1949,54.12,70.91,40,0
    .goto 1949,50.62,70.71,40,0
    >>Kill |cRXP_ENEMY_Bladewing Bloodletters|r
    .complete 10486,1 --Bladewing Bloodletter slain (12)
    .mob Bladewing Bloodletter
step
    .goto 1949,52.37,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'drek|r
    .turnin 10486 >>Turn in The Encroaching Wilderness
    .accept 10487 >>Accept Dust from the Drakes
    .target Gor'drek
step
    #completewith Along10
    >>As you go: Kill |cRXP_ENEMY_Bladespire Shamans|r, |cRXP_ENEMY_Bladespire Cooks|r, |cRXP_ENEMY_Korgaahs|r and |cRXP_ENEMY_Mugdorgs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10503,2 --Bladespire Ogres killed (8)
    .mob Bladespire Shaman
    .mob Bladespire Cook
    .mob Korgaah
    .mob Mugdorg
step
    #completewith Along9
    >>As you go: Kill |cRXP_ENEMY_Bladespire Raptors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10503,1 --Bladespire Raptor slain (10)
    .mob Bladespire Raptor
step
    #label Along9
    .goto 1949,41.54,52.66
    >>Pick up |cRXP_PICK_Thunderlord Clan Arrow|r from the ground
    .complete 10524,1 --Thunderlord Clan Arrow (1)
step
    #label Along10
    .goto 1949,40.18,58.34
    >>Pick up |cRXP_PICK_Thunderlord Clan Drum|r from the ground
    .complete 10524,2 --Thunderlord Clan Drum (1)
step
    #completewith Drop10524x1
    >>|cRXP_LOOT_Thunderlord Clan Artifact|r can drop from |cRXP_ENEMY_Bladespire Brute|r, |cRXP_ENEMY_Bladespire Shaman|r, |cRXP_ENEMY_Bladespire Cook|r. Use it to start the quest if you get one
    .collect 30431,1,10524 --Thunderlord Clan Artifact (1)
    .accept 10524 >>Accept Thunderlord Clan Artifacts
    .use 30431
step
    #label Drop10524x1
    #loop
    .goto 1949,38.78,52.26,0
    .goto 1949,38.78,52.26,40,0
    .goto 1949,42.28,52.41,40,0
    .goto 1949,42.82,47.94,40,0
    >>Pick up |cRXP_PICK_Thunderlord Clan Tablet|r from the ground
    >>Kill |cRXP_ENEMY_Bladespire Raptors|r
    >>Kill |cRXP_ENEMY_Bladespire Shamans|r, |cRXP_ENEMY_Bladespire Cooks|r, |cRXP_ENEMY_Korgaahs|r and |cRXP_ENEMY_Mugdorgs|r
    .complete 10524,3 --Thunderlord Clan Tablet (1)
    .complete 10503,1 --Bladespire Raptor slain (10)
    .complete 10503,2 --Bladespire Ogres killed (8)
    .mob Bladespire Raptor
    .mob Bladespire Shaman
    .mob Bladespire Cook
    .mob Korgaah
    .mob Mugdorg
step
    .goto 1949,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10503 >>Turn in The Bladespire Threat
    .accept 10505 >>Accept The Bloodmaul Ogres
    .target Tor'chunk Twoclaws
step
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Fey Drake|r and loot |cRXP_LOOT_Dust of the Fey Drake|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10487,1 --Dust of the Fey Drake (1)
    .mob Fey Drake
step
    #label Along13
    .goto 1949,37.50,79.00
    >>Kill |cRXP_ENEMY_Stronglimb Deeproot|r and loot |cRXP_LOOT_Stronglimb Deeproot's Trunk|r
    .complete 10489,1 --Stronglimb Deeproot's Trunk (1)
    .mob Stronglimb Deeproot
step
    #loop
    .goto 1949,37.66,72.69,0
    .goto 1949,37.66,72.69,40,0
    .goto 1949,40.51,68.04,40,0
    >>Kill |cRXP_ENEMY_Fey Drake|r and loot |cRXP_LOOT_Dust of the Fey Drake|r
    .complete 10487,1 --Dust of the Fey Drake (1)
    .mob Fey Drake
step
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Bloodmaul Skirmishers|r, |cRXP_ENEMY_Bloodmaul Geomancers|r, |cRXP_ENEMY_Bloodmaul Lookouts|r and |cRXP_ENEMY_Bloodmaul Brewmasters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10505,1 --Bloodmaul Ogres killed (8)
    .mob Bloodmaul Skirmisher
    .mob Bloodmaul Geomancer
    .mob Bloodmaul Lookout
    .mob Bloodmaul Brewmaster
step
    .goto 1949,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .accept 10542 >>Accept They Stole Me Hookah and Me Brews!
    .target T'chali the Witch Doctor
step
    #label Along16
    .goto 1949,42.10,81.24
    >>Pick up |cRXP_PICK_T'chali's Hookah|r from the ground
    .complete 10542,1 --T'chali's Hookah (1)
step
    #loop
    .goto 1949,43.42,77.59,0
    .goto 1949,43.42,77.59,40,0
    .goto 1949,46.96,78.41,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Brewmasters|r. Loot them for |cRXP_LOOT_Bloodmaul Brutebane Brew|r. It can also be picked up from |cRXP_PICK_Bloodmaul Brew Keg|r on the ground
    >>Kill |cRXP_ENEMY_Bloodmaul Skirmishers|r, |cRXP_ENEMY_Bloodmaul Geomancers|r, |cRXP_ENEMY_Bloodmaul Lookouts|r and |cRXP_ENEMY_Bloodmaul Brewmasters|r
    .complete 10542,2 --Bloodmaul Brutebane Brew (10)
    .complete 10505,1 --Bloodmaul Ogres killed (8)
    .mob Bloodmaul Brewmaster
    .mob Bloodmaul Skirmisher
    .mob Bloodmaul Geomancer
    .mob Bloodmaul Lookout
step
    .goto 1949,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .turnin 10542 >>Turn in They Stole Me Hookah and Me Brews!
    .accept 10545 >>Accept Bladespire Kegger
    .target T'chali the Witch Doctor
step
    #completewith Drop10524x2
    >>|cRXP_LOOT_Thunderlord Clan Artifact|r can drop from |cRXP_ENEMY_Bladespire Brute|r, |cRXP_ENEMY_Bladespire Shaman|r, |cRXP_ENEMY_Bladespire Cook|r. Use it to start the quest if you get one
    .collect 30431,1,10524 --Thunderlord Clan Artifact (1)
    .accept 10524 >>Accept Thunderlord Clan Artifacts
    .use 30431
step
    #label Drop10524x2
    #loop
    .goto 1949,38.78,52.26,0
    .goto 1949,38.78,52.26,40,0
    .goto 1949,39.43,48.82,40,0
    .goto 1949,43.49,48.19,40,0
    >>Kill |cRXP_ENEMY_Bladespire Shamans|r, |cRXP_ENEMY_Bladespire Cooks|r, |cRXP_ENEMY_Korgaahs|r and |cRXP_ENEMY_Mugdorgs|r
    .complete 10545,1 --Bladespire Shaman (8)
    .mob Bladespire Shaman
    .mob Bladespire Cook
    .mob Korgaah
    .mob Mugdorg
step
    .goto 1949,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .turnin 10545 >>Turn in Bladespire Kegger
    .accept 10543 >>Accept Grimnok and Korgaah, I Am For You!
    .target T'chali the Witch Doctor
step
    .goto 1949,45.45,80.39
    >>Kill |cRXP_ENEMY_Grimnok Battleborn|r
    .complete 10543,1 --Grimnok Battleborn slain (1)
    .mob Grimnok Battleborn
step
    .goto 1949,43.41,47.05
    >>Kill |cRXP_ENEMY_Korgaah|r
    .complete 10543,2 --Korgaah slain (1)
    .mob Korgaah
step
    .goto 1949,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .turnin 10543 >>Turn in Grimnok and Korgaah, I Am For You!
    .accept 10544 >>Accept A Curse Upon Both of Your Clans!
    .target T'chali the Witch Doctor
step
    .goto 1949,46.60,79.20
    >>Kill |cRXP_ENEMY_Bloodmaul Evil Spirit|r
    .complete 10544,2 --Bloodmaul Outpost building cursed (1)
    .mob Bloodmaul Evil Spirit
step
    #loop
    .goto 1949,42.00,57.60,0
    .goto 1949,42.00,57.60,40,0
    .goto 1949,39.20,57.40,40,0
    >>Kill |cRXP_ENEMY_Bladespire Evil Spirits|r
    .complete 10544,1 --Bladespire Hold building cursed (8)
    .mob Bladespire Evil Spirit
step
    .goto 1949,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .turnin 10544 >>Turn in A Curse Upon Both of Your Clans!
    .target T'chali the Witch Doctor
step
    .goto 1949,52.37,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'drek|r
    .turnin 10487 >>Turn in Dust from the Drakes
    .accept 10488 >>Accept Protecting Our Own
    .target Gor'drek
step
    .goto 1949,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10489 >>Turn in Felling an Ancient Tree
    .turnin 10505 >>Turn in The Bloodmaul Ogres
    .target Tor'chunk Twoclaws
step
    #loop
    .goto 1949,49.92,60.37,0
    .goto 1949,49.92,60.37,40,0
    .goto 1949,51.04,63.59,40,0
    .goto 1949,51.15,65.26,40,0
    .goto 1949,50.94,67.66,40,0
    .goto 1949,50.00,69.74,40,0
    >>Interact with |cRXP_FRIENDLY_Thunderlord Dire Wolf|r
    .complete 10488,1 --Thunderlord Dire Wolf
    .target Thunderlord Dire Wolf
step
    .goto 1949,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .accept 10565 >>Accept The Stones of Vekh'nir
    .target Dertrok
step
    .goto 1949,76.09,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Varah|r
    .accept 10860 >>Accept Mok'Nathal Treats
    .target Matron Varah
step
    .goto 1949,75.87,61.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taerek|r
    .accept 10617 >>Accept Silkwing Cocoons
    .target Taerek
step
    .goto 1949,75.84,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silmara|r
    .accept 10618 >>Accept The Softest Wings
    .target Silmara
step
    #loop
    .goto 1949,72.63,65.91,0
    .goto 1949,72.63,65.91,40,0
    .goto 1949,73.38,69.54,40,0
    .goto 1949,75.01,68.65,40,0
    >>Kill |cRXP_ENEMY_Silkwing Larvas|r. Loot them for |cRXP_LOOT_Silkwing Cocoon|r
    >>Kill |cRXP_ENEMY_Mature Silkwings|r. Loot them for |cRXP_LOOT_Iridescent Wing|r
    .complete 10617,1 --Silkwing Cocoon (8)
    .complete 10618,1 --Iridescent Wing (12)
    .mob Silkwing Larva
    .mob Mature Silkwing
step
    .goto 1949,75.87,61.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taerek|r
    .turnin 10617 >>Turn in Silkwing Cocoons
    .target Taerek
step
    .goto 1949,75.84,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silmara|r
    .turnin 10618 >>Turn in The Softest Wings
    .target Silmara
step
    #loop
    .goto 1949,77.38,73.59,0
    .goto 1949,77.38,73.59,40,0
    .goto 1949,77.34,75.85,40,0
    >>Kill |cRXP_ENEMY_Vekh'nir Keeneyes|r, |cRXP_ENEMY_Vekh'nir Stormcallers|r, |cRXP_ENEMY_Vekh'nir Dreadhawks|r and |cRXP_ENEMY_Vekh'nir Matriarches|r. Loot them for |cRXP_LOOT_Vekh'nir Crystal|r
    .collect 30561,1,10565,1 --Vekh'nir Crystal (1)
    .mob Vekh'nir Keeneye
    .mob Vekh'nir Stormcaller
    .mob Vekh'nir Dreadhawk
    .mob Vekh'nir Matriarch
step
    #completewith next
    .hs >>Hearth to Gholah's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1949,52.37,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'drek|r
    .turnin 10488 >>Turn in Protecting Our Own
    .target Gor'drek
step
    .goto 1949,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 10983 >>Turn in Mog'dorg the Wizened
    .target Mog'dorg the Wizened
    .isOnQuest 10983
step
    .goto 1949,62.56,38.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faradrella|r
    .accept 10753 >>Accept Culling the Wild
    .target Faradrella
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10682 >>Accept A Time for Negotiation...
    .target Tree Warden Chawn
step
    .goto 1949,60.36,34.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Nuaar|r
    .complete 10682,1 --Overseer Nuaar
    .target Overseer Nuaar
step
    .goto 1949,61.68,39.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fhyn|r
    .fp Evergrove >> Get the Evergrove flight path
    .target Fhyn Leafshadow
    .subzoneskip 3951,1
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10682 >>Turn in A Time for Negotiation... while you are here
    .isQuestComplete 10682
    .target Tree Warden Chawn
step
    .goto 1949,61.25,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r
    .accept 10770 >>Accept Little Embers
    .accept 10771 >>Accept From the Ashes
    .target Mosswood the Ancient
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10682 >>Turn in A Time for Negotiation...
    .accept 10713 >>Accept ...and a Time for Action
    .target Tree Warden Chawn
step
    .goto 1949,61.94,39.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
    .accept 10717 >>Accept Poaching from Poachers
    .target Samia Inkling
step
    #completewith Drop10719x1
    >>|cRXP_LOOT_Meeting Note|r can drop from |cRXP_ENEMY_Wyrmcult Poacher|r, |cRXP_ENEMY_Wyrmcult Hewer|r. Use it to start the quest if you get one
    .collect 31120,1,10719 --Meeting Note (1)
    .accept 10719 >>Accept Did You Get The Note?
    .use 31120
step
    #loop
    .goto 1949,59.71,37.36,0
    .goto 1949,59.71,37.36,40,0
    .goto 1949,58.25,38.50,40,0
    .goto 1949,61.41,33.81,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Poachers|r. Loot them for |cRXP_LOOT_Wyrmcult Net|r
    >>Kill |cRXP_ENEMY_Wyrmcult Hewers|r
    .complete 10717,1 --Wyrmcult Net (5)
    .complete 10713,1 --Wyrmcult Hewer slain (10)
    .mob Wyrmcult Poacher
    .mob Wyrmcult Hewer
step
    .goto 1949,63.61,34.11,50,0
    .goto 1949,63.61,34.11,50,0
    .goto 1949,65.32,34.83,50,0
    .goto 1949,65.52,31.59,50,0
    .goto 1949,65.32,29.29,50,0
    .goto 1949,63.99,31.39,50,0
    .goto 1949,63.61,34.11,50,0
    .xp 66 >>Grind to level 66
step
    #label Drop10719x1
    #loop
    .goto 1949,59.71,37.36,0
    .goto 1949,59.71,37.36,40,0
    .goto 1949,58.25,38.50,40,0
    .goto 1949,61.41,33.81,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Zealots|r, |cRXP_ENEMY_Wyrmcult Acolytes|r, |cRXP_ENEMY_Wyrmcult Blesseds|r and |cRXP_ENEMY_Wyrmcult Scouts|r. Loot them for |cRXP_LOOT_Costume Scraps|r
    .collect 31121,1,10722,1 --Costume Scraps (1)
    .mob Wyrmcult Zealot
    .mob Wyrmcult Acolyte
    .mob Wyrmcult Blessed
    .mob Wyrmcult Scout
    .isOnQuest 10722
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10713 >>Turn in ...and a Time for Action
    .target Tree Warden Chawn
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10719 >>Turn in Did You Get The Note?
    .target Tree Warden Chawn
    .isOnQuest 10719
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10894 >>Accept Wyrmskull Watcher
    .target Tree Warden Chawn
    .isQuestTurnedIn 10719 --any of: Did You Get The Note?
    .xp <65,1
step
    .goto 1949,61.94,39.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
    .turnin 10717 >>Turn in Poaching from Poachers
    .accept 10747 >>Accept Whelps of the Wyrmcult
    .target Samia Inkling
step
    #completewith Drop10524x3
    >>|cRXP_LOOT_Thunderlord Clan Artifact|r can drop from |cRXP_ENEMY_Bladespire Brute|r, |cRXP_ENEMY_Bladespire Shaman|r, |cRXP_ENEMY_Bladespire Cook|r. Use it to start the quest if you get one
    .collect 30431,1,10524 --Thunderlord Clan Artifact (1)
    .accept 10524 >>Accept Thunderlord Clan Artifacts
    .use 30431
step
    #completewith Along52
    >>As you go: Kill |cRXP_ENEMY_Scalewing Serpents|r and |cRXP_ENEMY_Felsworn Scalewings|r. Loot them for |cRXP_LOOT_Serpent Flesh|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10860,2 --Serpent Flesh (3)
    .mob Scalewing Serpent
    .mob Felsworn Scalewing
step
    #label Along52
    #loop
    .goto 1949,64.04,50.38,0
    .goto 1949,64.04,50.38,40,0
    .goto 1949,61.82,53.41,40,0
    >>Kill |cRXP_ENEMY_Bladespire Raptors|r, |cRXP_ENEMY_Bladespire Ravagers|r, |cRXP_ENEMY_Daggermaw Lashtails|r and |cRXP_ENEMY_Felsworn Daggermaws|r. Loot them for |cRXP_LOOT_Raptor Ribs|r
    .complete 10860,1 --Raptor Ribs (3)
    .mob Bladespire Raptor
    .mob Bladespire Ravager
    .mob Daggermaw Lashtail
    .mob Felsworn Daggermaw
step
    #label Drop10524x3
    #loop
    .goto 1949,66.92,55.13,0
    .goto 1949,66.92,55.13,40,0
    .goto 1949,68.13,61.77,40,0
    .goto 1949,68.77,67.14,40,0
    >>Kill |cRXP_ENEMY_Scalewing Serpents|r and |cRXP_ENEMY_Felsworn Scalewings|r. Loot them for |cRXP_LOOT_Serpent Flesh|r
    .complete 10860,2 --Serpent Flesh (3)
    .mob Scalewing Serpent
    .mob Felsworn Scalewing
step
    .goto 1949,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .turnin 10524 >>Turn in Thunderlord Clan Artifacts
    .target Rokgah Bloodgrip
    .isOnQuest 10524
step
    .goto 1949,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .accept 10525 >>Accept Vision Guide
    .target Rokgah Bloodgrip
    .isQuestTurnedIn 10524 --any of: Thunderlord Clan Artifacts
    .xp <65,1
step
    .goto 1949,52.76,58.89
    >>Final Thunderlord artifact discovered
    .complete 10525,1 --Final Thunderlord artifact discovered
    .isOnQuest 10525
step
    .goto 1949,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .turnin 10525 >>Turn in Vision Guide
    .target Rokgah Bloodgrip
    .isOnQuest 10525
step
    .goto 1949,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .accept 10526 >>Accept The Thunderspike
    .target Rokgah Bloodgrip
    .isQuestTurnedIn 10525 --any of: Vision Guide
    .xp <65,1
step
    .goto 1949,39.75,85.53
    >>Kill |cRXP_ENEMY_Gor Grimgut|r and loot |cRXP_LOOT_The Thunderspike|r
    .complete 10526,1 --The Thunderspike (1)
    .mob Gor Grimgut
    .isOnQuest 10526
step
    .goto 1949,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .turnin 10526 >>Turn in The Thunderspike
    .target Rokgah Bloodgrip
    .isOnQuest 10526
step
    .goto 1949,52.75,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garm Wolfbrother|r
    .accept 10718 >>Accept The Spirits Have Voices
    .target Garm Wolfbrother
    .isQuestTurnedIn 10526 --any of: The Thunderspike
    .xp <65,1
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10718 >>Turn in The Spirits Have Voices
    .target Rexxar
    .isOnQuest 10718
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10614 >>Accept Whispers on the Wind
    .target Rexxar
    .isQuestTurnedIn 10718 --any of: The Spirits Have Voices
    .xp <65,1
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10614 >>Turn in Whispers on the Wind
    .target Leoroxx
    .isOnQuest 10614
step
    .goto 1949,76.09,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Varah|r
    .turnin 10860 >>Turn in Mok'Nathal Treats while you are here
    .isQuestComplete 10860
    .target Matron Varah
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10709 >>Accept Reunion
    .target Leoroxx
    .isQuestTurnedIn 10614 --any of: Whispers on the Wind
    .xp <65,1
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10709 >>Turn in Reunion
    .target Rexxar
    .isOnQuest 10709
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10714 >>Accept On Spirit's Wings
    .target Rexxar
    .isQuestTurnedIn 10709 --any of: Reunion
    .xp <65,1
step
    .goto 1949,57.91,31.30
    >>Kill |cRXP_ENEMY_Bloodmaul Taskmasters|r and |cRXP_ENEMY_Bloodmaul Soothsayers|r
    .complete 10714,1 --Bloodmaul Taskmaster (8)
    .mob Bloodmaul Taskmaster
    .mob Bloodmaul Soothsayer
    .isOnQuest 10714
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10714 >>Turn in On Spirit's Wings
    .target Rexxar
    .isOnQuest 10714
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10783 >>Accept Baron Sablemane
    .target Rexxar
    .isQuestTurnedIn 10714 --any of: On Spirit's Wings
    .xp <65,1
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10783 >>Turn in Baron Sablemane
    .target Baron Sablemane
    .isOnQuest 10783
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .accept 10715 >>Accept Into the Churning Gulch
    .target Baron Sablemane
    .isQuestTurnedIn 10783 --any of: Baron Sablemane
    .xp <65,1
step
    #loop
    .goto 1949,48.29,43.71,0
    .goto 1949,48.29,43.71,40,0
    .goto 1949,45.13,45.18,40,0
    >>Kill |cRXP_ENEMY_Greater Crust Bursters|r and |cRXP_ENEMY_Young Crust Bursters|r. Loot them for |cRXP_LOOT_Crust Burster Venom Gland|r
    .complete 10715,1 --Crust Burster Venom Gland (7)
    .mob Greater Crust Burster
    .mob Young Crust Burster
    .isOnQuest 10715
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10715 >>Turn in Into the Churning Gulch
    .target Baron Sablemane
    .isOnQuest 10715
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .accept 10749 >>Accept Baron Sablemane's Poison
    .target Baron Sablemane
    .isQuestTurnedIn 10715 --any of: Into the Churning Gulch
    .xp <65,1
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10749 >>Turn in Baron Sablemane's Poison
    .target Rexxar
    .isOnQuest 10749
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10720 >>Accept The Smallest Creatures
    .target Rexxar
    .isQuestTurnedIn 10749 --any of: Baron Sablemane's Poison
    .xp <65,1
step
    .goto 1949,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .accept 10784 >>Accept Crush the Bloodmaul Camp
    .target Tor'chunk Twoclaws
    .isQuestTurnedIn 10749 --any of: Baron Sablemane's Poison
    .xp <65,1
step
    .goto 1949,76.09,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Varah|r
    .turnin 10860 >>Turn in Mok'Nathal Treats
    .target Matron Varah
step
    .goto 1949,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .turnin 10565 >>Turn in The Stones of Vekh'nir
    .target Dertrok
    .isQuestComplete 10565
step
    .goto 1949,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .accept 10566 >>Accept Trial and Error
    .target Dertrok
    .isQuestTurnedIn 10565 --any of: The Stones of Vekh'nir
    .xp <64,1
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10846 >>Accept Understanding the Mok'Nathal
    .target Leoroxx
    .isQuestTurnedIn 10565 --any of: The Stones of Vekh'nir
    .xp <65,1
step
    .goto 1949,70.08,72.18
    >>Kill |cRXP_ENEMY_Vekh|r
    .complete 10846,1 --Vekh slain (1)
    .mob Vekh
    .isOnQuest 10846
step
    #loop
    .goto 1949,70.39,73.34,0
    .goto 1949,70.39,73.34,40,0
    .goto 1949,72.06,74.13,40,0
    >>Kill |cRXP_ENEMY_Vekh'nir Keeneyes|r, |cRXP_ENEMY_Vekh'nir Stormcallers|r, |cRXP_ENEMY_Vekh'nir Dreadhawks|r and |cRXP_ENEMY_Vekh'nir Matriarches|r. Loot them for |cRXP_LOOT_Infused Vekh'nir Crystal|r
    .collect 30655,1,10566,1 --Infused Vekh'nir Crystal (1)
    .mob Vekh'nir Keeneye
    .mob Vekh'nir Stormcaller
    .mob Vekh'nir Dreadhawk
    .mob Vekh'nir Matriarch
    .isOnQuest 10566
step
    #loop
    .goto 1949,69.68,72.45,0
    .goto 1949,69.68,72.45,40,0
    .goto 1949,70.66,72.12,40,0
    .goto 1949,70.82,73.18,40,0
    .goto 1949,72.96,73.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dullgrom Dredger|r
    .complete 10566,1 --Dullgrom Dredger
    .target Dullgrom Dredger
    .isOnQuest 10566
step
    #loop
    .goto 1949,69.68,72.45,0
    .goto 1949,69.68,72.45,40,0
    .goto 1949,70.66,72.12,40,0
    .goto 1949,70.82,73.18,40,0
    .goto 1949,72.96,73.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dullgrom Dredger|r
    .complete 10566,2 --Dullgrom Dredger
    .target Dullgrom Dredger
    .isOnQuest 10566
step
    #loop
    .goto 1949,69.68,72.45,0
    .goto 1949,69.68,72.45,40,0
    .goto 1949,70.66,72.12,40,0
    .goto 1949,70.82,73.18,40,0
    .goto 1949,72.96,73.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dullgrom Dredger|r
    .complete 10566,3 --Dullgrom Dredger
    .target Dullgrom Dredger
    .isOnQuest 10566
step
    #loop
    .goto 1949,69.68,72.45,0
    .goto 1949,69.68,72.45,40,0
    .goto 1949,70.66,72.12,40,0
    .goto 1949,70.82,73.18,40,0
    .goto 1949,72.96,73.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dullgrom Dredger|r
    .complete 10566,4 --Dullgrom Dredger
    .target Dullgrom Dredger
    .isOnQuest 10566
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10846 >>Turn in Understanding the Mok'Nathal
    .target Leoroxx
    .isOnQuest 10846
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10843 >>Accept Since Time Forgotten...
    .target Leoroxx
    .isQuestTurnedIn 10846 --any of: Understanding the Mok'Nathal
    .xp <65,1
step
    .goto 1949,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .accept 10851 >>Accept The Totems of My Enemy
    .target Spiritcaller Dohgar
    .isQuestTurnedIn 10846 --any of: Understanding the Mok'Nathal
    .xp <65,1
step
    .goto 1949,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .turnin 10566 >>Turn in Trial and Error
    .target Dertrok
    .isOnQuest 10566
step
    .goto 1949,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .accept 10615 >>Accept Ruuan Weald
    .target Dertrok
    .isQuestTurnedIn 10566 --any of: Trial and Error
    .xp <64,1
step
    .goto 1949,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .turnin 10615 >>Turn in Ruuan Weald
    .target Timeon
    .isOnQuest 10615
step
    .goto 1949,57.14,54.49
    >>Kill |cRXP_ENEMY_Gnosh Brognat|r
    .complete 10843,1 --Gnosh Brognat slain (1)
    .mob Gnosh Brognat
    .isOnQuest 10843
step
    #loop
    .goto 1949,59.13,56.09,0
    .goto 1949,59.13,56.09,40,0
    .goto 1949,58.06,60.79,40,0
    >>Kill |cRXP_ENEMY_Bladespire Crushers|r and |cRXP_ENEMY_Bladespire Mystics|r. Loot them for |cRXP_LOOT_Bladespire Totem|r
    .complete 10851,1 --Bladespire Totem (5)
    .mob Bladespire Crusher
    .mob Bladespire Mystic
    .isOnQuest 10851
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10843 >>Turn in Since Time Forgotten...
    .target Leoroxx
    .isOnQuest 10843
step
    .goto 1949,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .turnin 10851 >>Turn in The Totems of My Enemy
    .target Spiritcaller Dohgar
    .isOnQuest 10851
step
    .goto 1949,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .accept 10853 >>Accept Spirit Calling
    .target Spiritcaller Dohgar
    .isQuestTurnedIn 10851 --any of: The Totems of My Enemy
    .xp <65,1
step
    #completewith Drop10810x1
    >>|cRXP_LOOT_Damaged Mask|r can drop from |cRXP_ENEMY_Fel Corrupter|r. Use it to start the quest if you get one
    .collect 31384,1,10810 --Damaged Mask (1)
    .accept 10810 >>Accept Damaged Mask
    .use 31384
step
    .goto 1949,69.09,33.13
    >>Kill |cRXP_ENEMY_Fel Corrupters|r
    .complete 10753,3 --Fel Corrupter slain (2)
    .mob Fel Corrupter
step
    #label Drop10810x1
    #loop
    .goto 1949,72.39,33.75,0
    .goto 1949,72.39,33.75,40,0
    .goto 1949,73.09,28.98,40,0
    >>Kill |cRXP_ENEMY_Felsworn Scalewings|r
    >>Kill |cRXP_ENEMY_Felsworn Daggermaws|r
    .complete 10753,1 --Felsworn Scalewing slain (4)
    .complete 10753,2 --Felsworn Daggermaw slain (4)
    .mob Felsworn Scalewing
    .mob Felsworn Daggermaw
step
    #loop
    .goto 1949,71.66,22.35,0
    .goto 1949,71.66,22.35,40,0
    .goto 1949,71.59,18.47,40,0
    >>Click the |cRXP_PICK_Fertile Volcanic Soil|r
    >>Kill |cRXP_ENEMY_Scorch Imps|r
    .complete 10771,1 --Southern Volcanic Soil
    .complete 10771,2 --Central Volcanic Soil
    .complete 10771,3 --Northern Volcanic Soil
    .complete 10770,1 --Scorch Imp slain (8)
    .mob Scorch Imp
step
    .goto 1949,62.65,40.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
    .turnin 10810 >>Turn in Damaged Mask
    .target O'Mally Zapnabber
    .isOnQuest 10810
step
    .goto 1949,62.65,40.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
    .accept 10812 >>Accept Mystery Mask
    .target O'Mally Zapnabber
    .isQuestTurnedIn 10810 --any of: Damaged Mask
    .xp <65,1
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10812 >>Turn in Mystery Mask
    .target Wildlord Antelarion
    .isOnQuest 10812
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .accept 10819 >>Accept Felsworn Gas Mask
    .target Wildlord Antelarion
    .isQuestTurnedIn 10812 --any of: Mystery Mask
    .xp <65,1
step
    .goto 1949,61.25,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r
    .turnin 10770 >>Turn in Little Embers
    .turnin 10771 >>Turn in From the Ashes
    .target Mosswood the Ancient
step
    .goto 1949,62.56,38.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faradrella|r
    .turnin 10753 >>Turn in Culling the Wild
    .target Faradrella
step
    .goto 1949,55.35,28.19
    >>Click the |cRXP_PICK_Ripe Moonshine Keg|r
    .complete 10720,2 --Ripe Moonshine Keg
    .isOnQuest 10720
step
    .goto 1949,55.28,25.99
    >>Click the |cRXP_PICK_Green Spot Grog Keg|r
    .complete 10720,1 --Green Spot Grog Keg
    .isOnQuest 10720
step
    .goto 1949,55.97,23.09
    >>Click the |cRXP_PICK_Fermented Seed Beer Keg|r
    .complete 10720,3 --Fermented Seed Beer Keg
    .isOnQuest 10720
step
    #loop
    .goto 1949,56.13,23.65,0
    .goto 1949,56.13,23.65,40,0
    .goto 1949,56.93,28.33,40,0
    .goto 1949,54.87,31.71,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Maulers|r
    .complete 10784,1 --Bloodmaul Mauler slain (10)
    .mob Bloodmaul Mauler
    .isOnQuest 10784
step
    #loop
    .goto 1949,55.62,25.68,0
    .goto 1949,55.62,25.68,40,0
    .goto 1949,56.38,21.97,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Warlocks|r
    .complete 10784,2 --Bloodmaul Warlock slain (5)
    .mob Bloodmaul Warlock
    .isOnQuest 10784
step
    #completewith next
    .hs >>Hearth to Gholah's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10720 >>Turn in The Smallest Creatures
    .target Rexxar
    .isOnQuest 10720
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10721 >>Accept A Boaring Time for Grulloc
    .target Rexxar
    .isQuestTurnedIn 10720 --any of: The Smallest Creatures
    .xp <65,1
step
    .goto 1949,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10784 >>Turn in Crush the Bloodmaul Camp
    .target Tor'chunk Twoclaws
    .isOnQuest 10784
step
    .goto 1949,60.89,47.78
    >>Pick up |cRXP_PICK_Grulloc's Sack|r from the ground
    .complete 10721,1 --Grulloc's Sack (1)
    .isOnQuest 10721
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10721 >>Turn in A Boaring Time for Grulloc
    .target Baron Sablemane
    .isOnQuest 10721
step
    .goto 1949,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .accept 10785 >>Accept It's a Trap!
    .target Baron Sablemane
    .isQuestTurnedIn 10721 --any of: A Boaring Time for Grulloc
    .xp <65,1
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10785 >>Turn in It's a Trap!
    .target Rexxar
    .isOnQuest 10785
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10723 >>Accept Gorgrom the Dragon-Eater
    .target Rexxar
    .isQuestTurnedIn 10785 --any of: It's a Trap!
    .xp <65,1
step
    .goto 1949,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .accept 10786 >>Accept Slaughter at Boulder'mok
    .target Tor'chunk Twoclaws
    .isQuestTurnedIn 10785 --any of: It's a Trap!
    .xp <65,1
step
    .goto 1949,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .turnin 10894 >>Turn in Wyrmskull Watcher
    .target Watcher Moonshade
    .isOnQuest 10894
step
    .goto 1949,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .accept 10893 >>Accept Longtail is the Lynchpin
    .target Watcher Moonshade
    .isQuestTurnedIn 10894 --any of: Wyrmskull Watcher
    .xp <65,1
step
    .goto 1949,45.19,32.49
    >>Kill |cRXP_ENEMY_Draaca Longtail|r
    .complete 10893,1 --Draaca Longtail slain (1)
    .mob Draaca Longtail
    .isOnQuest 10893
step
    .goto 1949,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .turnin 10893 >>Turn in Longtail is the Lynchpin
    .target Watcher Moonshade
    .isOnQuest 10893
step
    .goto 1949,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .accept 10722 >>Accept Meeting at the Blackwing Coven
    .target Watcher Moonshade
    .isQuestTurnedIn 10893 --any of: Longtail is the Lynchpin
    .xp <65,1
step
    #loop
    .goto 1949,31.51,22.08,0
    .goto 1949,31.51,22.08,40,0
    .goto 1949,29.91,22.95,40,0
    >>Kill |cRXP_ENEMY_Boulder'mok Brutes|r, |cRXP_ENEMY_Boulder'mok Shamans|r and |cRXP_ENEMY_Boulder'mok Chieftains|r. Loot them for |cRXP_LOOT_Grisly Totem|r
    .collect 31754,1,10723,1 --Grisly Totem (1)
    .mob Boulder'mok Brute
    .mob Boulder'mok Shaman
    .mob Boulder'mok Chieftain
    .isOnQuest 10723
step
    .goto 1949,30.65,22.10
    >>Interact with |cRXP_FRIENDLY_Gorgrom the Dragon-Eater|r
    .complete 10723,1 --Gorgrom the Dragon-Eater
    .target Gorgrom the Dragon-Eater
    .isOnQuest 10723
step
    #loop
    .goto 1949,31.51,22.08,0
    .goto 1949,31.51,22.08,40,0
    .goto 1949,29.82,22.90,40,0
    >>Kill |cRXP_ENEMY_Boulder'mok Brutes|r
    .complete 10786,1 --Boulder'mok Brute slain (5)
    .mob Boulder'mok Brute
    .isOnQuest 10786
step
    .goto 1949,30.07,22.25
    >>Kill |cRXP_ENEMY_Boulder'mok Shamans|r
    .complete 10786,2 --Boulder'mok Shaman slain (3)
    .mob Boulder'mok Shaman
    .isOnQuest 10786
step
    #completewith Drop10719x2
    >>|cRXP_LOOT_Meeting Note|r can drop from |cRXP_ENEMY_Wyrmcult Poacher|r, |cRXP_ENEMY_Wyrmcult Hewer|r. Use it to start the quest if you get one
    .collect 31120,1,10719 --Meeting Note (1)
    .accept 10719 >>Accept Did You Get The Note?
    .use 31120
step
    #label Drop10719x2
    .goto 1949,32.65,37.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kolphis Darkscale|r
    .complete 10722,1 --Kolphis Darkscale
    .target Kolphis Darkscale
    .isOnQuest 10722
step
    #loop
    .goto 1949,32.72,35.44,0
    .goto 1949,32.72,35.44,40,0
    .goto 1949,34.05,33.93,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Blackwhelps|r. Loot them for |cRXP_LOOT_Wyrmcult Blackwhelp|r
    .complete 10747,1 --Wyrmcult Blackwhelp (10)
    .mob Wyrmcult Blackwhelp
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10722 >>Turn in Meeting at the Blackwing Coven
    .target Tree Warden Chawn
    .isOnQuest 10722
step
    .goto 1949,61.94,39.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
    .turnin 10747 >>Turn in Whelps of the Wyrmcult
    .target Samia Inkling
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10723 >>Turn in Gorgrom the Dragon-Eater
    .target Rexxar
    .isOnQuest 10723
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10724 >>Accept Prisoner of the Bladespire
    .target Rexxar
    .isQuestTurnedIn 10723 --any of: Gorgrom the Dragon-Eater
    .xp <65,1
step
    .goto 1949,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10786 >>Turn in Slaughter at Boulder'mok
    .target Tor'chunk Twoclaws
    .isOnQuest 10786
step
    #loop
    .goto 1949,64.36,77.11,0
    .goto 1949,64.36,77.11,40,0
    .goto 1949,67.08,76.26,40,0
    >>Kill |cRXP_ENEMY_Lesser Nether Drakes|r. Loot them for |cRXP_LOOT_Lesser Nether Drake Spirit|r
    .complete 10853,1 --Lesser Nether Drake Spirit (8)
    .mob Lesser Nether Drake
    .isOnQuest 10853
step
    .goto 1949,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .turnin 10853 >>Turn in Spirit Calling
    .target Spiritcaller Dohgar
    .isOnQuest 10853
step
    .goto 1949,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .accept 10859 >>Accept Gather the Orbs
    .target Spiritcaller Dohgar
    .isQuestTurnedIn 10853 --any of: Spirit Calling
    .xp <65,1
step
    .goto 1949,66.85,42.00
    >>Spiritcaller Dohgar has asked you to use the Orb Collecting Totem to collect 15 Razaani Light Orbs. Return to him at Mok'Nathal Village in the Blade's Edge Mountains after you have done so.
    .complete 10859,1 --Razaani Light Orb (15)
    .target Razaani Light Orb
    .isOnQuest 10859
step
    .goto 1949,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .turnin 10859 >>Turn in Gather the Orbs
    .target Spiritcaller Dohgar
    .isOnQuest 10859
step
    .goto 1949,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .accept 10865 >>Accept Inform Leoroxx!
    .target Spiritcaller Dohgar
    .isQuestTurnedIn 10859 --any of: Gather the Orbs
    .xp <65,1
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10865 >>Turn in Inform Leoroxx!
    .target Leoroxx
    .isOnQuest 10865
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10867 >>Accept There Can Be Only One Response
    .target Leoroxx
    .isQuestTurnedIn 10865 --any of: Inform Leoroxx!
    .xp <65,1
step
    .goto 1949,66.39,44.08
    >>Pick up |cRXP_PICK_Collection of Souls|r from the ground
    .complete 10867,1 --Collection of Souls (1)
    .isOnQuest 10867
step
    .goto 1949,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .turnin 10867 >>Turn in There Can Be Only One Response
    .target Spiritcaller Dohgar
    .isOnQuest 10867
step
    .goto 1949,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .turnin 10819 >>Turn in Felsworn Gas Mask
    .isOnQuest 10819
step
    #loop
    .goto 1949,67.17,25.98,0
    .goto 1949,67.17,25.98,40,0
    .goto 1949,64.85,23.98,40,0
    .goto 1949,65.89,20.51,40,0
    >>Kill |cRXP_ENEMY_Bladespire Battlemages|r, |cRXP_ENEMY_Bladespire Enforcers|r and |cRXP_ENEMY_Bladespire Chefs|r. Loot them for |cRXP_LOOT_Wyvern Cage Key|r
    .collect 31755,1,10724,1 --Wyvern Cage Key (1)
    .mob Bladespire Battlemage
    .mob Bladespire Enforcer
    .mob Bladespire Chef
    .isOnQuest 10724
step
    .goto 1949,65.74,20.25
    >>Kill Bladespire ogres to get the Wyvern Cage Key. Once you have it, go to the Wyvern Cage and use Spirit's Whistle to summon Spirit, who will unlock the cage. After Leokk is free, return to Rexxar at Thunderlord Village in the Blade's Edge Mountains.
    .complete 10724,1 --Leokk
    .target Leokk
    .isOnQuest 10724
step
    #completewith next
    .hs >>Hearth to Gholah's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10724 >>Turn in Prisoner of the Bladespire
    .target Rexxar
    .isOnQuest 10724
step
    +|cRXP_WARN_That is all of Blade's Edge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Stones of Vekh'nir
step
    +|cRXP_WARN_Suggested next zones at level 65|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.7 levels of quests, starting around Tooki), |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.7 levels of quests, starting around Nazgrel). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Blade's Edge Mountains is planned from level 68.|r Load its guide for level 68 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 65 - 69 Blade's Edge Mountains
#subweight -65
#name 68-69 Blade's Edge Mountains
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\69-70 Shadowmoon Valley

step
    #loop
    .goto 1949,70.39,73.34,0
    .goto 1949,70.39,73.34,40,0
    .goto 1949,72.06,74.13,40,0
    >>Kill |cRXP_ENEMY_Vekh'nir Keeneyes|r, |cRXP_ENEMY_Vekh'nir Stormcallers|r, |cRXP_ENEMY_Vekh'nir Dreadhawks|r and |cRXP_ENEMY_Vekh'nir Matriarches|r. Loot them for |cRXP_LOOT_Vekh'nir Crystal|r
    .collect 30561,1,10565,1 --Vekh'nir Crystal (1)
    .mob Vekh'nir Keeneye
    .mob Vekh'nir Stormcaller
    .mob Vekh'nir Dreadhawk
    .mob Vekh'nir Matriarch
    .isOnQuest 10565
step
    .goto 1949,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .turnin 10565 >>Turn in The Stones of Vekh'nir
    .target Dertrok
    .isQuestComplete 10565
step
    .goto 1949,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .accept 10567 >>Accept Creating the Pendant
    .target Timeon
step
    #loop
    .goto 1949,65.07,33.80,0
    .goto 1949,65.07,33.80,40,0
    .goto 1949,64.67,30.92,40,0
    >>Kill |cRXP_ENEMY_Ruuan'ok Cloudgazers|r, |cRXP_ENEMY_Ruuan'ok Skyfuries|r, |cRXP_ENEMY_Ruuan'ok Ravenguards|r and |cRXP_ENEMY_Ruuan'ok Matriarches|r. Loot them for |cRXP_LOOT_Ruuan'ok Claw|r
    .collect 30704,1,10567,1 --Ruuan'ok Claw (1)
    .mob Ruuan'ok Cloudgazer
    .mob Ruuan'ok Skyfury
    .mob Ruuan'ok Ravenguard
    .mob Ruuan'ok Matriarch
step
    .goto 1949,64.47,33.14
    >>Kill |cRXP_ENEMY_Harbinger of the Raven|r and loot |cRXP_LOOT_Harbinger's Pendant|r
    .complete 10567,1 --Harbinger's Pendant (1)
    .mob Harbinger of the Raven
step
    .goto 1949,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .turnin 10567 >>Turn in Creating the Pendant
    .accept 10607 >>Accept Whispers of the Raven God
    .target Timeon
step
    .goto 1949,53.20,54.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Orok|r
    .accept 11036 >>Accept Out of This World Produce!
    .target Old Orok
step
    .goto 1949,51.95,54.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agadai|r
    .accept 11047 >>Accept The Apprentice's Request
    .target Agadai
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10845 >>Accept Slay the Brood Mother
    .target Leoroxx
    .isQuestTurnedIn 10843 --any of: Since Time Forgotten...
    .xp <65,1
step
    .goto 1949,40.17,23.03
    >>Click the |cRXP_PICK_The Fourth Prophecy|r
    >>Click the |cRXP_PICK_The Third Prophecy|r
    .complete 10607,4 --The Fourth Prophecy
    .complete 10607,3 --The Third Prophecy
step
    .goto 1949,39.02,17.25
    >>Click the |cRXP_PICK_The First Prophecy|r
    .complete 10607,1 --The First Prophecy
step
    .goto 1949,42.47,21.64
    >>Click the |cRXP_PICK_The Second Prophecy|r
    .complete 10607,2 --The Second Prophecy
step
    .goto 1949,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .turnin 10607 >>Turn in Whispers of the Raven God
    .target Timeon
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10748 >>Accept Maxnar Must Die!
    .target Tree Warden Chawn
    .isQuestTurnedIn 10722 --any of: Meeting at the Blackwing Coven
    .xp <65,1
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10829 >>Accept Treebole Must Know
    .target Tree Warden Chawn
    .isQuestTurnedIn 10825 --any of: The Truth Unorbed
    .xp <66,1
step
    .goto 1949,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .turnin 10829 >>Turn in Treebole Must Know
    .target Treebole
    .isOnQuest 10829
step
    .goto 1949,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .accept 10830 >>Accept Exorcising the Trees
    .target Treebole
    .isQuestTurnedIn 10829 --any of: Treebole Must Know
    .xp <66,1
step
    .goto 1949,39.41,27.43
    >>Pick up |cRXP_PICK_Grishnath Orb|r from the ground
    .collect 31495,1,10830,1 --Grishnath Orb (1)
    .isOnQuest 10830
step
    #loop
    .goto 1949,33.99,24.25,0
    .goto 1949,33.99,24.25,40,0
    .goto 1949,35.78,18.49,40,0
    >>Kill |cRXP_ENEMY_Dire Raven|r and loot |cRXP_LOOT_Dire Pinfeather|r
    .collect 31517,1,10830,1 --Dire Pinfeather (1)
    .mob Dire Raven
    .isOnQuest 10830
step
    #loop
    .goto 1949,34.30,17.66,0
    .goto 1949,34.30,17.66,40,0
    .goto 1949,33.77,22.92,40,0
    >>Kill |cRXP_ENEMY_Koi-Koi Spirits|r
    .complete 10830,1 --Leafbeard Exorcised (5)
    .mob Koi-Koi Spirit
    .isOnQuest 10830
step
    .goto 1949,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .turnin 10830 >>Turn in Exorcising the Trees
    .target Treebole
    .isOnQuest 10830
step
    .goto 1949,33.90,35.32
    >>Kill |cRXP_ENEMY_Maxnar the Ashmaw|r
    .complete 10748,1 --Maxnar the Ashmaw slain (1)
    .mob Maxnar the Ashmaw
    .isOnQuest 10748
step
    .goto 1949,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10748 >>Turn in Maxnar Must Die!
    .target Tree Warden Chawn
    .isOnQuest 10748
step
    .goto 1949,65.37,78.13
    >>Kill |cRXP_ENEMY_Dreadwing|r
    .complete 10845,1 --Dreadwing slain (1)
    .mob Dreadwing
    .isOnQuest 10845
step
    .goto 1949,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10845 >>Turn in Slay the Brood Mother
    .target Leoroxx
    .isOnQuest 10845
step
    .goto 1949,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .accept 10820 >>Accept Deceive thy Enemy
    .isQuestTurnedIn 10819 --any of: Felsworn Gas Mask
    .xp <65,1
step
    .goto 1949,74.77,40.47
    >>Kill |cRXP_ENEMY_Doomforge Attendants|r
    .complete 10820,1 --Doomforge Attendant slain (4)
    .mob Doomforge Attendant
    .isOnQuest 10820
step
    .goto 1949,75.48,40.00
    >>Kill |cRXP_ENEMY_Doomforge Engineers|r
    .complete 10820,2 --Doomforge Engineer slain (4)
    .mob Doomforge Engineer
    .isOnQuest 10820
step
    .goto 1949,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .turnin 10820 >>Turn in Deceive thy Enemy
    .isOnQuest 10820
step
    .goto 1949,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .accept 10821 >>Accept You're Fired!
    .isQuestTurnedIn 10820 --any of: Deceive thy Enemy
    .xp <65,1
step
    #loop
    .goto 1949,74.01,38.54,0
    .goto 1949,74.01,38.54,40,0
    .goto 1949,72.91,41.97,40,0
    >>Kill |cRXP_ENEMY_Anger Guard|r and loot |cRXP_LOOT_Camp Anger Key|r
    .collect 31536,1,10821,1 --Camp Anger Key (1)
    .mob Anger Guard
    .isOnQuest 10821
step
    .goto 1949,73.27,40.03
    >>Kill Doomcryer and report back to Wildlord Antelarion in Evergrove.
    .complete 10821,1 --Doomcryer (1)
    .isOnQuest 10821
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10821 >>Turn in You're Fired!
    .target Wildlord Antelarion
    .isOnQuest 10821
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .accept 10910 >>Accept Death's Door
    .target Wildlord Antelarion
    .isQuestTurnedIn 10821 --any of: You're Fired!
    .xp <65,1
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10910 >>Turn in Death's Door
    .unitscan Evergrove Druid
    .isOnQuest 10910
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10904 >>Accept Harvesting the Fel Ammunition
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10910 --any of: Death's Door
    .xp <65,1
step
    #loop
    .goto 1949,63.21,64.91,0
    .goto 1949,63.21,64.91,40,0
    .goto 1949,61.92,61.06,40,0
    .goto 1949,59.47,60.29,40,0
    >>Kill |cRXP_ENEMY_Deathforge Over-Smiths|r, |cRXP_ENEMY_Deathforge Technicians|r, |cRXP_ENEMY_Death's Watches|r and |cRXP_ENEMY_Death's Mights|r. Loot them for |cRXP_LOOT_Fel Cannonball|r
    .complete 10904,1 --Fel Cannonball (5)
    .mob Deathforge Over-Smith
    .mob Deathforge Technician
    .mob Death's Watch
    .mob Death's Might
    .isOnQuest 10904
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10904 >>Turn in Harvesting the Fel Ammunition
    .unitscan Evergrove Druid
    .isOnQuest 10904
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10911 >>Accept Fire At Will!
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10904 --any of: Harvesting the Fel Ammunition
    .xp <65,1
step
    .goto 1949,65.08,67.18
    >>Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use them to destroy both the South Warp-Gate and the North Warp-Gate. Then, use the Druid Signal to call out to an Evergrove Druid to report your success.
    .complete 10911,1 --Death's Door South Warp-Gate
    .target Death's Door South Warp-Gate
    .isOnQuest 10911
step
    .goto 1949,62.08,61.38
    >>Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use them to destroy both the South Warp-Gate and the North Warp-Gate. Then, use the Druid Signal to call out to an Evergrove Druid to report your success.
    .complete 10911,2 --Death's Door North Warp-Gate
    .target Death's Door North Warp-Gate
    .isOnQuest 10911
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10911 >>Turn in Fire At Will!
    .unitscan Evergrove Druid
    .isOnQuest 10911
step
    .goto 1949,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10912 >>Accept The Hound-Master
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10911 --any of: Fire At Will!
    .xp <65,1
step
    .goto 1949,63.04,60.41
    >>Kill |cRXP_ENEMY_Baelmon the Hound-Master|r
    .complete 10912,1 --Baelmon the Hound-Master slain (1)
    .mob Baelmon the Hound-Master
    .isOnQuest 10912
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10742 >>Accept Showdown
    .target Rexxar
    .isQuestTurnedIn 10724 --any of: Prisoner of the Bladespire
    .xp <65,1
step
    .goto 1949,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10912 >>Turn in The Hound-Master
    .target Wildlord Antelarion
    .isOnQuest 10912
step
    .goto 1949,63.79,19.43
    >>Kill |cRXP_ENEMY_Goc|r
    .complete 10742,1 --Goc slain (1)
    .mob Goc
    .isOnQuest 10742
step
    .goto 1949,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10742 >>Turn in Showdown
    .target Rexxar
    .isOnQuest 10742
step
    +|cRXP_WARN_That is all of Blade's Edge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Netherstorm|r: Out of This World Produce!
    >>|cRXP_FRIENDLY_Shadowmoon Valley|r: The Apprentice's Request
step
    +|cRXP_WARN_End of the Blade's Edge Mountains route.|r
step
    +|cRXP_WARN_Suggested next zones at level 68|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.3 levels of quests, starting around Image of Archmage Vargoth; 1 quest from here hands in there), |cRXP_FRIENDLY_Shadowmoon Valley|r (about 0.7 levels of quests, starting around Blood Guard Gulmok; 1 quest from here hands in there). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
