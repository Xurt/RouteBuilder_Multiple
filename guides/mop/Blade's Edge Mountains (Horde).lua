-- 65-70 Blade's Edge Mountains: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 65, 68, 71).
-- Split into 3 guides, listed under "65 - 72 Blade's Edge Mountains" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Blade's Edge Mountains.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 65 - 72 Blade's Edge Mountains
#subweight -65
#name 65-66 Blade's Edge Mountains: around Tree Warden Chawn
--RouteBuilder:next
#next Zone Routes (Horde)\62-65 Terokkar Forest: around Earthbinder Tavgren;Zone Routes (Horde)\65-67 Nagrand: around Hemet Nesingwary

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.96,96.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grunt Grahk|r
    .accept 10928 >>Accept Killing the Crawlers
    .target Grunt Grahk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,52.35,86.68,0
    .goto 105,52.35,86.68,40,0
    .goto 105,51.79,82.94,40,0
    >>Kill |cRXP_ENEMY_Cavern Crawlers|r
    .complete 10928,1 --Cavern Crawler slain (6)
    .mob Cavern Crawler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10928 >>Turn in Killing the Crawlers
    .accept 10503 >>Accept The Bladespire Threat
    .target Tor'chunk Twoclaws
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.92,57.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekthar|r
    .turnin 9795 >>Turn in The Ogre Threat
    .target Nekthar
    .isOnQuest 9795
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.94,57.78
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10489 >>Accept Felling an Ancient Tree
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.37,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'drek|r
    .accept 10486 >>Accept The Encroaching Wilderness
    .target Gor'drek
step
    .goto 105,53.54,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor|r
    .target Lor
    .home >>Set your Hearthstone to Lor's inn
step
    .goto 105,52.05,54.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Unoke|r
    .fp Thunderlord Stronghold >> Get the Thunderlord Stronghold flight path
    .target Unoke Tenderhoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,54.12,70.91,0
    .goto 105,54.12,70.91,40,0
    .goto 105,50.62,70.71,40,0
    >>Kill |cRXP_ENEMY_Bladewing Bloodletters|r
    .complete 10486,1 --Bladewing Bloodletter slain (12)
    .mob Bladewing Bloodletter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.37,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'drek|r
    .turnin 10486 >>Turn in The Encroaching Wilderness
    .accept 10487 >>Accept Dust from the Drakes
    .target Gor'drek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along10
    >>As you go: Kill |cRXP_ENEMY_Bladespire Shamans|r, |cRXP_ENEMY_Bladespire Cooks|r, |cRXP_ENEMY_Korgaahs|r and |cRXP_ENEMY_Mugdorgs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10503,2 --Bladespire Shaman (8)
    .mob Bladespire Shaman
    .mob Bladespire Cook
    .mob Korgaah
    .mob Mugdorg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along9
    >>As you go: Kill |cRXP_ENEMY_Bladespire Raptors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10503,1 --Bladespire Raptor slain (10)
    .mob Bladespire Raptor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along9
    .goto 105,41.54,52.66
    >>Pick up |cRXP_PICK_Thunderlord Clan Arrow|r from the ground
    .complete 10524,1 --Thunderlord Clan Arrow (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along10
    .goto 105,40.18,58.34
    >>Pick up |cRXP_PICK_Thunderlord Clan Drum|r from the ground
    .complete 10524,2 --Thunderlord Clan Drum (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop10524x1
    >>|cRXP_LOOT_Thunderlord Clan Artifact|r can drop from |cRXP_ENEMY_Bladespire Brute|r, |cRXP_ENEMY_Bladespire Shaman|r, |cRXP_ENEMY_Bladespire Cook|r. Use it to start the quest if you get one
    .collect 30431,1,10524 --Thunderlord Clan Artifact (1)
    .accept 10524 >>Accept Thunderlord Clan Artifacts
    .use 30431
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop10524x1
    #loop
    .goto 105,38.78,52.26,0
    .goto 105,38.78,52.26,40,0
    .goto 105,42.28,52.41,40,0
    .goto 105,42.82,47.94,40,0
    >>Pick up |cRXP_PICK_Thunderlord Clan Tablet|r from the ground
    >>Kill |cRXP_ENEMY_Bladespire Raptors|r
    >>Kill |cRXP_ENEMY_Bladespire Shamans|r, |cRXP_ENEMY_Bladespire Cooks|r, |cRXP_ENEMY_Korgaahs|r and |cRXP_ENEMY_Mugdorgs|r
    .complete 10524,3 --Thunderlord Clan Tablet (1)
    .complete 10503,1 --Bladespire Raptor slain (10)
    .complete 10503,2 --Bladespire Shaman (8)
    .mob Bladespire Raptor
    .mob Bladespire Shaman
    .mob Bladespire Cook
    .mob Korgaah
    .mob Mugdorg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10503 >>Turn in The Bladespire Threat
    .accept 10505 >>Accept The Bloodmaul Ogres
    .target Tor'chunk Twoclaws
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Fey Drake|r and loot |cRXP_LOOT_Dust of the Fey Drake|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10487,1 --Dust of the Fey Drake (1)
    .mob Fey Drake
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along13
    .goto 105,37.50,79.00
    >>Kill |cRXP_ENEMY_Stronglimb Deeproot|r and loot |cRXP_LOOT_Stronglimb Deeproot's Trunk|r
    .complete 10489,1 --Stronglimb Deeproot's Trunk (1)
    .mob Stronglimb Deeproot
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,37.66,72.69,0
    .goto 105,37.66,72.69,40,0
    .goto 105,40.51,68.04,40,0
    >>Kill |cRXP_ENEMY_Fey Drake|r and loot |cRXP_LOOT_Dust of the Fey Drake|r
    .complete 10487,1 --Dust of the Fey Drake (1)
    .mob Fey Drake
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along16
    >>As you go: Kill |cRXP_ENEMY_Bloodmaul Skirmishers|r, |cRXP_ENEMY_Bloodmaul Geomancers|r, |cRXP_ENEMY_Bloodmaul Lookouts|r and |cRXP_ENEMY_Bloodmaul Brewmasters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10505,1 --Bloodmaul Skirmisher (8)
    .mob Bloodmaul Skirmisher
    .mob Bloodmaul Geomancer
    .mob Bloodmaul Lookout
    .mob Bloodmaul Brewmaster
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .accept 10542 >>Accept They Stole Me Hookah and Me Brews!
    .target T'chali the Witch Doctor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along16
    .goto 105,42.10,81.24
    >>Pick up |cRXP_PICK_T'chali's Hookah|r from the ground
    .complete 10542,1 --T'chali's Hookah (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,46.24,79.38,0
    .goto 105,46.24,79.38,40,0
    .goto 105,46.76,77.40,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Brewmasters|r. Loot them for |cRXP_LOOT_Bloodmaul Brutebane Brew|r. It can also be picked up from |cRXP_PICK_Bloodmaul Brew Keg|r on the ground
    >>Kill |cRXP_ENEMY_Bloodmaul Skirmishers|r, |cRXP_ENEMY_Bloodmaul Geomancers|r, |cRXP_ENEMY_Bloodmaul Lookouts|r and |cRXP_ENEMY_Bloodmaul Brewmasters|r
    .complete 10542,2 --Bloodmaul Brutebane Brew (10)
    .complete 10505,1 --Bloodmaul Skirmisher (8)
    .mob Bloodmaul Brewmaster
    .mob Bloodmaul Skirmisher
    .mob Bloodmaul Geomancer
    .mob Bloodmaul Lookout
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .turnin 10542 >>Turn in They Stole Me Hookah and Me Brews!
    .accept 10545 >>Accept Bladespire Kegger
    .target T'chali the Witch Doctor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop10524x2
    >>|cRXP_LOOT_Thunderlord Clan Artifact|r can drop from |cRXP_ENEMY_Bladespire Brute|r, |cRXP_ENEMY_Bladespire Shaman|r, |cRXP_ENEMY_Bladespire Cook|r. Use it to start the quest if you get one
    .collect 30431,1,10524 --Thunderlord Clan Artifact (1)
    .accept 10524 >>Accept Thunderlord Clan Artifacts
    .use 30431
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop10524x2
    #loop
    .goto 105,38.78,52.26,0
    .goto 105,38.78,52.26,40,0
    .goto 105,39.43,48.82,40,0
    .goto 105,43.49,48.19,40,0
    >>Kill |cRXP_ENEMY_Bladespire Shamans|r, |cRXP_ENEMY_Bladespire Cooks|r, |cRXP_ENEMY_Korgaahs|r and |cRXP_ENEMY_Mugdorgs|r
    .complete 10545,1 --Bladespire Shaman (8)
    .mob Bladespire Shaman
    .mob Bladespire Cook
    .mob Korgaah
    .mob Mugdorg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .turnin 10545 >>Turn in Bladespire Kegger
    .accept 10543 >>Accept Grimnok and Korgaah, I Am For You!
    .target T'chali the Witch Doctor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,45.45,80.39
    >>Kill |cRXP_ENEMY_Grimnok Battleborn|r
    .complete 10543,1 --Grimnok Battleborn slain (1)
    .mob Grimnok Battleborn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,43.41,47.05
    >>Kill |cRXP_ENEMY_Korgaah|r
    .complete 10543,2 --Korgaah slain (1)
    .mob Korgaah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .turnin 10543 >>Turn in Grimnok and Korgaah, I Am For You!
    .accept 10544 >>Accept A Curse Upon Both of Your Clans!
    .target T'chali the Witch Doctor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,46.60,79.20
    >>Kill |cRXP_ENEMY_Bloodmaul Evil Spirit|r
    .complete 10544,2 --Bloodmaul Evil Spirit slain (1)
    .mob Bloodmaul Evil Spirit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,42.00,57.60,0
    .goto 105,42.00,57.60,40,0
    .goto 105,39.20,57.40,40,0
    >>Kill |cRXP_ENEMY_Bladespire Evil Spirits|r
    .complete 10544,1 --Bladespire Evil Spirit slain (8)
    .mob Bladespire Evil Spirit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,44.97,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_T'chali the Witch Doctor|r
    .turnin 10544 >>Turn in A Curse Upon Both of Your Clans!
    .target T'chali the Witch Doctor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.37,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'drek|r
    .turnin 10487 >>Turn in Dust from the Drakes
    .accept 10488 >>Accept Protecting Our Own
    .target Gor'drek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10489 >>Turn in Felling an Ancient Tree
    .turnin 10505 >>Turn in The Bloodmaul Ogres
    .target Tor'chunk Twoclaws
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,49.92,60.37,0
    .goto 105,49.92,60.37,40,0
    .goto 105,51.04,63.59,40,0
    .goto 105,51.15,65.26,40,0
    .goto 105,50.94,67.66,40,0
    .goto 105,50.00,69.74,40,0
    >>Interact with |cRXP_FRIENDLY_Thunderlord Dire Wolf|r
    .complete 10488,1 --Thunderlord Dire Wolf
    .target Thunderlord Dire Wolf
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .accept 10565 >>Accept The Stones of Vekh'nir
    .target Dertrok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,76.09,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Varah|r
    .accept 10860 >>Accept Mok'Nathal Treats
    .target Matron Varah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.87,61.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taerek|r
    .accept 10617 >>Accept Silkwing Cocoons
    .target Taerek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.84,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silmara|r
    .accept 10618 >>Accept The Softest Wings
    .target Silmara
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,73.16,64.00,0
    .goto 105,73.16,64.00,40,0
    .goto 105,74.17,67.29,40,0
    .goto 105,75.25,71.03,40,0
    .goto 105,77.34,75.85,40,0
    >>Kill |cRXP_ENEMY_Vekh'nir Keeneyes|r, |cRXP_ENEMY_Vekh'nir Stormcallers|r, |cRXP_ENEMY_Vekh'nir Dreadhawks|r and |cRXP_ENEMY_Vekh'nir Matriarches|r. Loot them for |cRXP_LOOT_Vekh'nir Crystal|r
    >>Kill |cRXP_ENEMY_Silkwing Larvas|r. Loot them for |cRXP_LOOT_Silkwing Cocoon|r
    >>Kill |cRXP_ENEMY_Silkwings|r and |cRXP_ENEMY_Mature Silkwings|r. Loot them for |cRXP_LOOT_Iridescent Wing|r
    .collect 30561,1,10565,1 --Vekh'nir Crystal (1)
    .complete 10617,1 --Silkwing Cocoon (8)
    .complete 10618,1 --Iridescent Wing (12)
    .mob Vekh'nir Keeneye
    .mob Vekh'nir Stormcaller
    .mob Vekh'nir Dreadhawk
    .mob Vekh'nir Matriarch
    .mob Silkwing Larva
    .mob Silkwing
    .mob Mature Silkwing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.87,61.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taerek|r
    .turnin 10617 >>Turn in Silkwing Cocoons
    .target Taerek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.84,61.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silmara|r
    .turnin 10618 >>Turn in The Softest Wings
    .target Silmara
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Lor's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.37,57.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'drek|r
    .turnin 10488 >>Turn in Protecting Our Own
    .target Gor'drek
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 10983 >>Turn in Mog'dorg the Wizened
    .target Mog'dorg the Wizened
    .isOnQuest 10983
step
    .goto 105,62.56,38.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faradrella|r
    .accept 10753 >>Accept Culling the Wild
    .target Faradrella
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10682 >>Accept A Time for Negotiation...
    .target Tree Warden Chawn
step
    .goto 105,61.68,39.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fhyn|r
    .fp Evergrove >> Get the Evergrove flight path
    .target Fhyn Leafshadow
step
    .goto 105,61.25,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r
    .accept 10770 >>Accept Little Embers
    .accept 10771 >>Accept From the Ashes
    .target Mosswood the Ancient
step
    .goto 105,60.36,34.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Nuaar|r
    .complete 10682,1 --Overseer Nuaar
    .target Overseer Nuaar
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10682 >>Turn in A Time for Negotiation...
    .accept 10713 >>Accept ...and a Time for Action
    .target Tree Warden Chawn
step
    .goto 105,61.94,39.45
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
    .goto 105,59.71,37.36,0
    .goto 105,59.71,37.36,40,0
    .goto 105,58.25,38.50,40,0
    .goto 105,61.41,33.81,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Poachers|r. Loot them for |cRXP_LOOT_Wyrmcult Net|r
    >>Kill |cRXP_ENEMY_Wyrmcult Hewers|r
    .complete 10717,1 --Wyrmcult Net (5)
    .complete 10713,1 --Wyrmcult Hewer slain (10)
    .mob Wyrmcult Poacher
    .mob Wyrmcult Hewer
step
    #label Drop10719x1
    #loop
    .goto 105,59.71,37.36,0
    .goto 105,59.71,37.36,40,0
    .goto 105,58.25,38.50,40,0
    .goto 105,61.41,33.81,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Zealots|r, |cRXP_ENEMY_Wyrmcult Acolytes|r, |cRXP_ENEMY_Wyrmcult Blesseds|r and |cRXP_ENEMY_Wyrmcult Scouts|r. Loot them for |cRXP_LOOT_Costume Scraps|r
    .collect 31121,1,10722,1 --Costume Scraps (1)
    .mob Wyrmcult Zealot
    .mob Wyrmcult Acolyte
    .mob Wyrmcult Blessed
    .mob Wyrmcult Scout
    .isOnQuest 10722
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10713 >>Turn in ...and a Time for Action
    .target Tree Warden Chawn
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10719 >>Turn in Did You Get The Note?
    .target Tree Warden Chawn
    .isOnQuest 10719
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10894 >>Accept Wyrmskull Watcher
    .target Tree Warden Chawn
    .isQuestTurnedIn 10719 --any of: Did You Get The Note?
    .xp <65,1
step
    .goto 105,61.94,39.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
    .turnin 10717 >>Turn in Poaching from Poachers
    .accept 10747 >>Accept Whelps of the Wyrmcult
    .target Samia Inkling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop10524x3
    >>|cRXP_LOOT_Thunderlord Clan Artifact|r can drop from |cRXP_ENEMY_Bladespire Brute|r, |cRXP_ENEMY_Bladespire Shaman|r, |cRXP_ENEMY_Bladespire Cook|r. Use it to start the quest if you get one
    .collect 30431,1,10524 --Thunderlord Clan Artifact (1)
    .accept 10524 >>Accept Thunderlord Clan Artifacts
    .use 30431
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along51
    >>As you go: Kill |cRXP_ENEMY_Scalewing Serpents|r and |cRXP_ENEMY_Felsworn Scalewings|r. Loot them for |cRXP_LOOT_Serpent Flesh|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10860,2 --Serpent Flesh (3)
    .mob Scalewing Serpent
    .mob Felsworn Scalewing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along51
    #loop
    .goto 105,64.04,50.38,0
    .goto 105,64.04,50.38,40,0
    .goto 105,61.82,53.41,40,0
    >>Kill |cRXP_ENEMY_Bladespire Raptors|r, |cRXP_ENEMY_Bladespire Ravagers|r, |cRXP_ENEMY_Daggermaw Lashtails|r and |cRXP_ENEMY_Felsworn Daggermaws|r. Loot them for |cRXP_LOOT_Raptor Ribs|r
    .complete 10860,1 --Raptor Ribs (3)
    .mob Bladespire Raptor
    .mob Bladespire Ravager
    .mob Daggermaw Lashtail
    .mob Felsworn Daggermaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop10524x3
    #loop
    .goto 105,66.92,55.13,0
    .goto 105,66.92,55.13,40,0
    .goto 105,68.13,61.77,40,0
    .goto 105,68.77,67.14,40,0
    >>Kill |cRXP_ENEMY_Scalewing Serpents|r and |cRXP_ENEMY_Felsworn Scalewings|r. Loot them for |cRXP_LOOT_Serpent Flesh|r
    .complete 10860,2 --Serpent Flesh (3)
    .mob Scalewing Serpent
    .mob Felsworn Scalewing
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .turnin 10524 >>Turn in Thunderlord Clan Artifacts
    .target Rokgah Bloodgrip
    .isOnQuest 10524
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .accept 10525 >>Accept Vision Guide
    .target Rokgah Bloodgrip
    .isQuestTurnedIn 10524 --any of: Thunderlord Clan Artifacts
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.76,58.89
    >>Final Thunderlord artifact discovered
    .complete 10525,1 --Final Thunderlord artifact discovered
    .isOnQuest 10525
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .turnin 10525 >>Turn in Vision Guide
    .target Rokgah Bloodgrip
    .isOnQuest 10525
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .accept 10526 >>Accept The Thunderspike
    .target Rokgah Bloodgrip
    .isQuestTurnedIn 10525 --any of: Vision Guide
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,39.75,85.53
    >>Kill |cRXP_ENEMY_Gor Grimgut|r and loot |cRXP_LOOT_The Thunderspike|r
    .complete 10526,1 --The Thunderspike (1)
    .mob Gor Grimgut
    .isOnQuest 10526
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.80,58.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokgah Bloodgrip|r
    .turnin 10526 >>Turn in The Thunderspike
    .target Rokgah Bloodgrip
    .isOnQuest 10526
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,52.75,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garm Wolfbrother|r
    .accept 10718 >>Accept The Spirits Have Voices
    .target Garm Wolfbrother
    .isQuestTurnedIn 10526 --any of: The Thunderspike
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10718 >>Turn in The Spirits Have Voices
    .target Rexxar
    .isOnQuest 10718
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10614 >>Accept Whispers on the Wind
    .target Rexxar
    .isQuestTurnedIn 10718 --any of: The Spirits Have Voices
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10614 >>Turn in Whispers on the Wind
    .target Leoroxx
    .isOnQuest 10614
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,76.09,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Varah|r
    .turnin 10860 >>Turn in Mok'Nathal Treats while you are here
    .isQuestComplete 10860
    .target Matron Varah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10709 >>Accept Reunion
    .target Leoroxx
    .isQuestTurnedIn 10614 --any of: Whispers on the Wind
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10709 >>Turn in Reunion
    .target Rexxar
    .isOnQuest 10709
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10714 >>Accept On Spirit's Wings
    .target Rexxar
    .isQuestTurnedIn 10709 --any of: Reunion
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,57.91,31.30
    >>Kill |cRXP_ENEMY_Bloodmaul Taskmasters|r and |cRXP_ENEMY_Bloodmaul Soothsayers|r
    .complete 10714,1 --Bloodmaul Taskmaster (8)
    .mob Bloodmaul Taskmaster
    .mob Bloodmaul Soothsayer
    .isOnQuest 10714
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10714 >>Turn in On Spirit's Wings
    .target Rexxar
    .isOnQuest 10714
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10783 >>Accept Baron Sablemane
    .target Rexxar
    .isQuestTurnedIn 10714 --any of: On Spirit's Wings
    .xp <62,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10783 >>Turn in Baron Sablemane
    .target Baron Sablemane
    .isOnQuest 10783
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .accept 10715 >>Accept Into the Churning Gulch
    .target Baron Sablemane
    .isQuestTurnedIn 10783 --any of: Baron Sablemane
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,49.22,40.87,0
    .goto 105,49.22,40.87,40,0
    .goto 105,48.29,43.71,40,0
    .goto 105,45.13,45.18,40,0
    >>Kill |cRXP_ENEMY_Greater Crust Bursters|r and |cRXP_ENEMY_Young Crust Bursters|r. Loot them for |cRXP_LOOT_Crust Burster Venom Gland|r
    .complete 10715,1 --Crust Burster Venom Gland (7)
    .mob Greater Crust Burster
    .mob Young Crust Burster
    .isOnQuest 10715
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10715 >>Turn in Into the Churning Gulch
    .target Baron Sablemane
    .isOnQuest 10715
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .accept 10749 >>Accept Baron Sablemane's Poison
    .target Baron Sablemane
    .isQuestTurnedIn 10715 --any of: Into the Churning Gulch
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10749 >>Turn in Baron Sablemane's Poison
    .target Rexxar
    .isOnQuest 10749
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10720 >>Accept The Smallest Creatures
    .target Rexxar
    .isQuestTurnedIn 10749 --any of: Baron Sablemane's Poison
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .accept 10784 >>Accept Crush the Bloodmaul Camp
    .target Tor'chunk Twoclaws
    .isQuestTurnedIn 10749 --any of: Baron Sablemane's Poison
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,76.09,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Varah|r
    .turnin 10860 >>Turn in Mok'Nathal Treats
    .target Matron Varah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .turnin 10565 >>Turn in The Stones of Vekh'nir
    .target Dertrok
    .isQuestComplete 10565
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .accept 10566 >>Accept Trial and Error
    .target Dertrok
    .isQuestTurnedIn 10565 --any of: The Stones of Vekh'nir
    .xp <61,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10846 >>Accept Understanding the Mok'Nathal
    .target Leoroxx
    .isQuestTurnedIn 10565 --any of: The Stones of Vekh'nir
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,70.08,72.18
    >>Kill |cRXP_ENEMY_Vekh|r
    .complete 10846,1 --Vekh slain (1)
    .mob Vekh
    .isOnQuest 10846
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,70.39,73.34,0
    .goto 105,70.39,73.34,40,0
    .goto 105,72.06,74.13,40,0
    >>Kill |cRXP_ENEMY_Vekh'nir Keeneyes|r, |cRXP_ENEMY_Vekh'nir Stormcallers|r, |cRXP_ENEMY_Vekh'nir Dreadhawks|r and |cRXP_ENEMY_Vekh'nir Matriarches|r. Loot them for |cRXP_LOOT_Infused Vekh'nir Crystal|r
    .collect 30655,1,10566,1 --Infused Vekh'nir Crystal (1)
    .mob Vekh'nir Keeneye
    .mob Vekh'nir Stormcaller
    .mob Vekh'nir Dreadhawk
    .mob Vekh'nir Matriarch
    .isOnQuest 10566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,69.68,72.45,0
    .goto 105,69.68,72.45,40,0
    .goto 105,70.66,72.12,40,0
    .goto 105,70.82,73.18,40,0
    .goto 105,72.96,73.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dullgrom Dredger|r
    .complete 10566,1 --Dullgrom Dredger
    .target Dullgrom Dredger
    .isOnQuest 10566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,69.68,72.45,0
    .goto 105,69.68,72.45,40,0
    .goto 105,70.66,72.12,40,0
    .goto 105,70.82,73.18,40,0
    .goto 105,72.96,73.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dullgrom Dredger|r
    .complete 10566,2 --Dullgrom Dredger
    .target Dullgrom Dredger
    .isOnQuest 10566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,69.68,72.45,0
    .goto 105,69.68,72.45,40,0
    .goto 105,70.66,72.12,40,0
    .goto 105,70.82,73.18,40,0
    .goto 105,72.96,73.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dullgrom Dredger|r
    .complete 10566,3 --Dullgrom Dredger
    .target Dullgrom Dredger
    .isOnQuest 10566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,69.68,72.45,0
    .goto 105,69.68,72.45,40,0
    .goto 105,70.66,72.12,40,0
    .goto 105,70.82,73.18,40,0
    .goto 105,72.96,73.53,40,0
    >>Interact with |cRXP_FRIENDLY_Dullgrom Dredger|r
    .complete 10566,4 --Dullgrom Dredger
    .target Dullgrom Dredger
    .isOnQuest 10566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10846 >>Turn in Understanding the Mok'Nathal
    .target Leoroxx
    .isOnQuest 10846
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10843 >>Accept Since Time Forgotten...
    .target Leoroxx
    .isQuestTurnedIn 10846 --any of: Understanding the Mok'Nathal
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .accept 10851 >>Accept The Totems of My Enemy
    .target Spiritcaller Dohgar
    .isQuestTurnedIn 10846 --any of: Understanding the Mok'Nathal
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .turnin 10566 >>Turn in Trial and Error
    .target Dertrok
    .isOnQuest 10566
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .accept 10615 >>Accept Ruuan Weald
    .target Dertrok
    .isQuestTurnedIn 10566 --any of: Trial and Error
    .xp <61,1
step
    .goto 105,76.37,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxxor|r
    .fp Mok'Nathal Village >> Get the Mok'Nathal Village flight path
    .target Sky-Master Maxxor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .turnin 10615 >>Turn in Ruuan Weald
    .target Timeon
    .isOnQuest 10615
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,57.14,54.49
    >>Kill |cRXP_ENEMY_Gnosh Brognat|r
    .complete 10843,1 --Gnosh Brognat slain (1)
    .mob Gnosh Brognat
    .isOnQuest 10843
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,59.13,56.09,0
    .goto 105,59.13,56.09,40,0
    .goto 105,58.06,60.79,40,0
    >>Kill |cRXP_ENEMY_Bladespire Crushers|r and |cRXP_ENEMY_Bladespire Mystics|r. Loot them for |cRXP_LOOT_Bladespire Totem|r
    .complete 10851,1 --Bladespire Totem (5)
    .mob Bladespire Crusher
    .mob Bladespire Mystic
    .isOnQuest 10851
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10843 >>Turn in Since Time Forgotten...
    .target Leoroxx
    .isOnQuest 10843
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .turnin 10851 >>Turn in The Totems of My Enemy
    .target Spiritcaller Dohgar
    .isOnQuest 10851
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,74.91,60.47
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
    .goto 105,69.09,33.13
    >>Kill |cRXP_ENEMY_Fel Corrupters|r
    .complete 10753,3 --Fel Corrupter slain (2)
    .mob Fel Corrupter
step
    #label Drop10810x1
    #loop
    .goto 105,72.39,33.75,0
    .goto 105,72.39,33.75,40,0
    .goto 105,73.09,28.98,40,0
    >>Kill |cRXP_ENEMY_Felsworn Scalewings|r
    >>Kill |cRXP_ENEMY_Felsworn Daggermaws|r
    .complete 10753,1 --Felsworn Scalewing slain (4)
    .complete 10753,2 --Felsworn Daggermaw slain (4)
    .mob Felsworn Scalewing
    .mob Felsworn Daggermaw
step
    #loop
    .goto 105,71.66,22.35,0
    .goto 105,71.66,22.35,40,0
    .goto 105,71.59,18.47,40,0
    >>Click the |cRXP_PICK_Fertile Volcanic Soil|r
    >>Kill |cRXP_ENEMY_Scorch Imps|r
    .complete 10771,1 --Fertile Volcanic Soil
    .complete 10771,2 --Fertile Volcanic Soil
    .complete 10771,3 --Fertile Volcanic Soil
    .complete 10770,1 --Scorch Imp slain (8)
    .mob Scorch Imp
step
    .goto 105,62.65,40.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
    .turnin 10810 >>Turn in Damaged Mask
    .target O'Mally Zapnabber
    .isOnQuest 10810
step
    .goto 105,62.65,40.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_O'Mally Zapnabber|r
    .accept 10812 >>Accept Mystery Mask
    .target O'Mally Zapnabber
    .isQuestTurnedIn 10810 --any of: Damaged Mask
    .xp <65,1
step
    .goto 105,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10812 >>Turn in Mystery Mask
    .target Wildlord Antelarion
    .isOnQuest 10812
step
    .goto 105,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .accept 10819 >>Accept Felsworn Gas Mask
    .target Wildlord Antelarion
    .isQuestTurnedIn 10812 --any of: Mystery Mask
    .xp <65,1
step
    .goto 105,61.25,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosswood the Ancient|r
    .turnin 10770 >>Turn in Little Embers
    .turnin 10771 >>Turn in From the Ashes
    .target Mosswood the Ancient
step
    .goto 105,62.56,38.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faradrella|r
    .turnin 10753 >>Turn in Culling the Wild
    .target Faradrella
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,55.35,28.19
    >>Click the |cRXP_PICK_Ripe Moonshine Keg|r
    .complete 10720,2 --Ripe Moonshine Keg
    .isOnQuest 10720
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,55.28,25.99
    >>Click the |cRXP_PICK_Green Spot Grog Keg|r
    .complete 10720,1 --Green Spot Grog Keg
    .isOnQuest 10720
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,55.97,23.09
    >>Click the |cRXP_PICK_Fermented Seed Beer Keg|r
    .complete 10720,3 --Fermented Seed Beer Keg
    .isOnQuest 10720
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,56.13,23.65,0
    .goto 105,56.13,23.65,40,0
    .goto 105,56.93,28.33,40,0
    .goto 105,54.87,31.71,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Maulers|r
    .complete 10784,1 --Bloodmaul Mauler slain (10)
    .mob Bloodmaul Mauler
    .isOnQuest 10784
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,55.62,25.68,0
    .goto 105,55.62,25.68,40,0
    .goto 105,56.38,21.97,40,0
    >>Kill |cRXP_ENEMY_Bloodmaul Warlocks|r
    .complete 10784,2 --Bloodmaul Warlock slain (5)
    .mob Bloodmaul Warlock
    .isOnQuest 10784
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Lor's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10720 >>Turn in The Smallest Creatures
    .target Rexxar
    .isOnQuest 10720
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10721 >>Accept A Boaring Time for Grulloc
    .target Rexxar
    .isQuestTurnedIn 10720 --any of: The Smallest Creatures
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10784 >>Turn in Crush the Bloodmaul Camp
    .target Tor'chunk Twoclaws
    .isOnQuest 10784
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,60.89,47.63
    >>Pick up |cRXP_PICK_Grulloc's Sack|r from the ground
    .complete 10721,1 --Grulloc's Sack (1)
    .isOnQuest 10721
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .turnin 10721 >>Turn in A Boaring Time for Grulloc
    .target Baron Sablemane
    .isOnQuest 10721
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,53.25,41.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Sablemane|r
    .accept 10785 >>Accept It's a Trap!
    .target Baron Sablemane
    .isQuestTurnedIn 10721 --any of: A Boaring Time for Grulloc
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10785 >>Turn in It's a Trap!
    .target Rexxar
    .isOnQuest 10785
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10723 >>Accept Gorgrom the Dragon-Eater
    .target Rexxar
    .isQuestTurnedIn 10785 --any of: It's a Trap!
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .accept 10786 >>Accept Slaughter at Boulder'mok
    .target Tor'chunk Twoclaws
    .isQuestTurnedIn 10785 --any of: It's a Trap!
    .xp <65,1
step
    .goto 105,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .turnin 10894 >>Turn in Wyrmskull Watcher
    .target Watcher Moonshade
    .isOnQuest 10894
step
    .goto 105,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .accept 10893 >>Accept Longtail is the Lynchpin
    .target Watcher Moonshade
    .isQuestTurnedIn 10894 --any of: Wyrmskull Watcher
    .xp <65,1
step
    .goto 105,45.19,32.49
    >>Kill |cRXP_ENEMY_Draaca Longtail|r
    .complete 10893,1 --Draaca Longtail slain (1)
    .mob Draaca Longtail
    .isOnQuest 10893
step
    .goto 105,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .turnin 10893 >>Turn in Longtail is the Lynchpin
    .target Watcher Moonshade
    .isOnQuest 10893
step
    .goto 105,50.03,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Moonshade|r
    .accept 10722 >>Accept Meeting at the Blackwing Coven
    .target Watcher Moonshade
    .isQuestTurnedIn 10893 --any of: Longtail is the Lynchpin
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,31.51,22.08,0
    .goto 105,31.51,22.08,40,0
    .goto 105,29.91,22.95,40,0
    >>Kill |cRXP_ENEMY_Boulder'mok Brutes|r, |cRXP_ENEMY_Boulder'mok Shamans|r and |cRXP_ENEMY_Boulder'mok Chieftains|r. Loot them for |cRXP_LOOT_Grisly Totem|r
    .collect 31754,1,10723,1 --Grisly Totem (1)
    .mob Boulder'mok Brute
    .mob Boulder'mok Shaman
    .mob Boulder'mok Chieftain
    .isOnQuest 10723
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,30.65,22.10
    >>Interact with |cRXP_FRIENDLY_Gorgrom the Dragon-Eater|r
    .complete 10723,1 --Gorgrom the Dragon-Eater
    .target Gorgrom the Dragon-Eater
    .isOnQuest 10723
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,31.51,22.08,0
    .goto 105,31.51,22.08,40,0
    .goto 105,29.82,22.90,40,0
    >>Kill |cRXP_ENEMY_Boulder'mok Brutes|r
    .complete 10786,1 --Boulder'mok Brute slain (5)
    .mob Boulder'mok Brute
    .isOnQuest 10786
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,30.07,22.25
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
    .goto 105,32.65,37.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kolphis Darkscale|r
    .complete 10722,1 --Kolphis Darkscale
    .target Kolphis Darkscale
    .isOnQuest 10722
step
    #loop
    .goto 105,32.72,35.44,0
    .goto 105,32.72,35.44,40,0
    .goto 105,34.05,33.93,40,0
    >>Kill |cRXP_ENEMY_Wyrmcult Blackwhelps|r. Loot them for |cRXP_LOOT_Wyrmcult Blackwhelp|r
    .complete 10747,1 --Wyrmcult Blackwhelp (10)
    .mob Wyrmcult Blackwhelp
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10722 >>Turn in Meeting at the Blackwing Coven
    .target Tree Warden Chawn
    .isOnQuest 10722
step
    .goto 105,61.94,39.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samia Inkling|r
    .turnin 10747 >>Turn in Whelps of the Wyrmcult
    .target Samia Inkling
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10829 >>Accept Treebole Must Know
    .target Tree Warden Chawn
    .isQuestTurnedIn 10825 --any of: The Truth Unorbed
    .xp <65,1
step
    .goto 105,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .turnin 10829 >>Turn in Treebole Must Know
    .target Treebole
    .isOnQuest 10829
step
    .goto 105,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .accept 10830 >>Accept Exorcising the Trees
    .target Treebole
    .isQuestTurnedIn 10829 --any of: Treebole Must Know
    .xp <65,1
step
    .goto 105,39.41,27.43
    >>Pick up |cRXP_PICK_Grishnath Orb|r from the ground
    .collect 31495,1,10830,1 --Grishnath Orb (1)
    .isOnQuest 10830
step
    #loop
    .goto 105,33.99,24.25,0
    .goto 105,33.99,24.25,40,0
    .goto 105,35.78,18.49,40,0
    >>Kill |cRXP_ENEMY_Dire Raven|r and loot |cRXP_LOOT_Dire Pinfeather|r
    .collect 31517,1,10830,1 --Dire Pinfeather (1)
    .mob Dire Raven
    .isOnQuest 10830
step
    #loop
    .goto 105,34.30,17.66,0
    .goto 105,34.30,17.66,40,0
    .goto 105,33.77,22.92,40,0
    >>Kill |cRXP_ENEMY_Koi-Koi Spirits|r
    .complete 10830,1 --Koi-Koi Spirit slain (5)
    .mob Koi-Koi Spirit
    .isOnQuest 10830
step
    .goto 105,37.17,22.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treebole|r
    .turnin 10830 >>Turn in Exorcising the Trees
    .target Treebole
    .isOnQuest 10830
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10723 >>Turn in Gorgrom the Dragon-Eater
    .target Rexxar
    .isOnQuest 10723
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10724 >>Accept Prisoner of the Bladespire
    .target Rexxar
    .isQuestTurnedIn 10723 --any of: Gorgrom the Dragon-Eater
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.94,58.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'chunk Twoclaws|r
    .turnin 10786 >>Turn in Slaughter at Boulder'mok
    .target Tor'chunk Twoclaws
    .isOnQuest 10786
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,60.11,74.58,0
    .goto 105,60.11,74.58,40,0
    .goto 105,62.03,77.16,40,0
    .goto 105,66.20,75.86,40,0
    >>Kill |cRXP_ENEMY_Lesser Nether Drakes|r. Loot them for |cRXP_LOOT_Lesser Nether Drake Spirit|r
    .complete 10853,1 --Lesser Nether Drake Spirit (8)
    .mob Lesser Nether Drake
    .isOnQuest 10853
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .turnin 10853 >>Turn in Spirit Calling
    .target Spiritcaller Dohgar
    .isOnQuest 10853
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .accept 10859 >>Accept Gather the Orbs
    .target Spiritcaller Dohgar
    .isQuestTurnedIn 10853 --any of: Spirit Calling
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,66.85,42.00
    >>Use the Orb Collecting Totem to collect 15 Razaani Light Orbs.
    .complete 10859,1 --Razaani Light Orb (15)
    .target Razaani Light Orb
    .isOnQuest 10859
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .turnin 10859 >>Turn in Gather the Orbs
    .target Spiritcaller Dohgar
    .isOnQuest 10859
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .accept 10865 >>Accept Inform Leoroxx!
    .target Spiritcaller Dohgar
    .isQuestTurnedIn 10859 --any of: Gather the Orbs
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10865 >>Turn in Inform Leoroxx!
    .target Leoroxx
    .isOnQuest 10865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10867 >>Accept There Can Be Only One Response
    .target Leoroxx
    .isQuestTurnedIn 10865 --any of: Inform Leoroxx!
    .xp <65,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,66.39,44.08
    >>Pick up |cRXP_PICK_Collection of Souls|r from the ground
    .complete 10867,1 --Collection of Souls (1)
    .isOnQuest 10867
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,74.91,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritcaller Dohgar|r
    .turnin 10867 >>Turn in There Can Be Only One Response
    .target Spiritcaller Dohgar
    .isOnQuest 10867
step
    .goto 105,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .turnin 10819 >>Turn in Felsworn Gas Mask
    .isOnQuest 10819
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,67.17,25.98,0
    .goto 105,67.17,25.98,40,0
    .goto 105,64.85,23.98,40,0
    .goto 105,65.89,20.51,40,0
    >>Kill |cRXP_ENEMY_Bladespire Battlemages|r, |cRXP_ENEMY_Bladespire Enforcers|r and |cRXP_ENEMY_Bladespire Chefs|r. Loot them for |cRXP_LOOT_Wyvern Cage Key|r
    .collect 31755,1,10724,1 --Wyvern Cage Key (1)
    .mob Bladespire Battlemage
    .mob Bladespire Enforcer
    .mob Bladespire Chef
    .isOnQuest 10724
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,65.74,20.25
    >>Slay Bladespire ogres to get the Wyvern Cage Key. Once you have it, go to the Wyvern Cage and use Spirit's Whistle to summon Spirit, who will unlock the cage to free Leokk.
    .complete 10724,1 --Leokk
    .target Leokk
    .isOnQuest 10724
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Lor's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10724 >>Turn in Prisoner of the Bladespire
    .target Rexxar
    .isOnQuest 10724
step
    +|cRXP_WARN_That is all of Blade's Edge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Stones of Vekh'nir << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 65|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.8 levels of quests, starting around Earthbinder Tavgren), |cRXP_FRIENDLY_Nagrand|r (about 0.7 levels of quests, starting around Hemet Nesingwary). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Blade's Edge Mountains is planned from level 68.|r Load its guide for level 68 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 65 - 72 Blade's Edge Mountains
#subweight -65
#name 68-69 Blade's Edge Mountains
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\65-67 Nagrand: around Hemet Nesingwary

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,70.39,73.34,0
    .goto 105,70.39,73.34,40,0
    .goto 105,72.06,74.13,40,0
    >>Kill |cRXP_ENEMY_Vekh'nir Keeneyes|r, |cRXP_ENEMY_Vekh'nir Stormcallers|r, |cRXP_ENEMY_Vekh'nir Dreadhawks|r and |cRXP_ENEMY_Vekh'nir Matriarches|r. Loot them for |cRXP_LOOT_Vekh'nir Crystal|r
    .collect 30561,1,10565,1 --Vekh'nir Crystal (1)
    .mob Vekh'nir Keeneye
    .mob Vekh'nir Stormcaller
    .mob Vekh'nir Dreadhawk
    .mob Vekh'nir Matriarch
    .isOnQuest 10565
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .turnin 10565 >>Turn in The Stones of Vekh'nir
    .target Dertrok
    .isQuestComplete 10565
step
    .goto 105,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .accept 10567 >>Accept Creating the Pendant
    .target Timeon
step
    #loop
    .goto 105,65.07,33.80,0
    .goto 105,65.07,33.80,40,0
    .goto 105,64.67,30.92,40,0
    >>Kill |cRXP_ENEMY_Ruuan'ok Cloudgazers|r, |cRXP_ENEMY_Ruuan'ok Skyfuries|r, |cRXP_ENEMY_Ruuan'ok Ravenguards|r and |cRXP_ENEMY_Ruuan'ok Matriarches|r. Loot them for |cRXP_LOOT_Ruuan'ok Claw|r
    .collect 30704,1,10567,1 --Ruuan'ok Claw (1)
    .mob Ruuan'ok Cloudgazer
    .mob Ruuan'ok Skyfury
    .mob Ruuan'ok Ravenguard
    .mob Ruuan'ok Matriarch
step
    .goto 105,64.47,33.14
    >>Kill |cRXP_ENEMY_Harbinger of the Raven|r and loot |cRXP_LOOT_Harbinger's Pendant|r
    .complete 10567,1 --Harbinger's Pendant (1)
    .mob Harbinger of the Raven
step
    .goto 105,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .turnin 10567 >>Turn in Creating the Pendant
    .accept 10607 >>Accept Whispers of the Raven God
    .target Timeon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,53.20,54.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Orok|r
    .accept 11036 >>Accept Out of This World Produce!
    .target Old Orok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.95,54.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agadai|r
    .accept 11047 >>Accept The Apprentice's Request
    .target Agadai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .accept 10845 >>Accept Slay the Brood Mother
    .target Leoroxx
    .isQuestTurnedIn 10843 --any of: Since Time Forgotten...
    .xp <65,1
step
    .goto 105,40.17,23.03
    >>Click the |cRXP_PICK_The Fourth Prophecy|r
    >>Click the |cRXP_PICK_The Third Prophecy|r
    .complete 10607,4 --The Fourth Prophecy
    .complete 10607,3 --The Third Prophecy
step
    .goto 105,39.02,17.25
    >>Click the |cRXP_PICK_The First Prophecy|r
    .complete 10607,1 --The First Prophecy
step
    .goto 105,42.47,21.64
    >>Click the |cRXP_PICK_The Second Prophecy|r
    .complete 10607,2 --The Second Prophecy
step
    .goto 105,62.16,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Timeon|r
    .turnin 10607 >>Turn in Whispers of the Raven God
    .target Timeon
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .accept 10748 >>Accept Maxnar Must Die!
    .target Tree Warden Chawn
    .isQuestTurnedIn 10722 --any of: Meeting at the Blackwing Coven
    .xp <65,1
step
    .goto 105,33.90,35.32
    >>Kill |cRXP_ENEMY_Maxnar the Ashmaw|r
    .complete 10748,1 --Maxnar the Ashmaw slain (1)
    .mob Maxnar the Ashmaw
    .isOnQuest 10748
step
    .goto 105,61.98,39.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tree Warden Chawn|r
    .turnin 10748 >>Turn in Maxnar Must Die!
    .target Tree Warden Chawn
    .isOnQuest 10748
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,65.37,78.13
    >>Kill |cRXP_ENEMY_Dreadwing|r
    .complete 10845,1 --Dreadwing slain (1)
    .mob Dreadwing
    .isOnQuest 10845
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.29,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leoroxx|r
    .turnin 10845 >>Turn in Slay the Brood Mother
    .target Leoroxx
    .isOnQuest 10845
step
    .goto 105,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .accept 10820 >>Accept Deceive thy Enemy
    .isQuestTurnedIn 10819 --any of: Felsworn Gas Mask
    .xp <65,1
step
    .goto 105,74.77,40.47
    >>Kill |cRXP_ENEMY_Doomforge Attendants|r
    .complete 10820,1 --Doomforge Attendant slain (4)
    .mob Doomforge Attendant
    .isOnQuest 10820
step
    .goto 105,75.48,40.00
    >>Kill |cRXP_ENEMY_Doomforge Engineers|r
    .complete 10820,2 --Doomforge Engineer slain (4)
    .mob Doomforge Engineer
    .isOnQuest 10820
step
    .goto 105,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .turnin 10820 >>Turn in Deceive thy Enemy
    .isOnQuest 10820
step
    .goto 105,73.27,40.03
    >>Click the |cRXP_PICK_Legion Communicator|r
    .accept 10821 >>Accept You're Fired!
    .isQuestTurnedIn 10820 --any of: Deceive thy Enemy
    .xp <65,1
step
    #loop
    .goto 105,74.01,38.54,0
    .goto 105,74.01,38.54,40,0
    .goto 105,72.91,41.97,40,0
    >>Kill |cRXP_ENEMY_Anger Guard|r and loot |cRXP_LOOT_Camp Anger Key|r
    .collect 31536,1,10821,1 --Camp Anger Key (1)
    .mob Anger Guard
    .isOnQuest 10821
step
    .goto 105,74.06,42.27
    >>Kill |cRXP_ENEMY_Doomcryer|r
    .complete 10821,1 --Doomcryer slain (1)
    .mob Doomcryer
    .isOnQuest 10821
step
    .goto 105,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10821 >>Turn in You're Fired!
    .target Wildlord Antelarion
    .isOnQuest 10821
step
    .goto 105,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .accept 10910 >>Accept Death's Door
    .target Wildlord Antelarion
    .isQuestTurnedIn 10821 --any of: You're Fired!
    .xp <65,1
step
    .goto 105,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10910 >>Turn in Death's Door
    .unitscan Evergrove Druid
    .isOnQuest 10910
step
    .goto 105,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10904 >>Accept Harvesting the Fel Ammunition
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10910 --any of: Death's Door
    .xp <65,1
step
    #loop
    .goto 105,63.72,67.62,0
    .goto 105,63.72,67.62,40,0
    .goto 105,64.01,72.08,40,0
    >>Kill |cRXP_ENEMY_Deathforge Over-Smiths|r, |cRXP_ENEMY_Deathforge Technicians|r, |cRXP_ENEMY_Death's Watches|r and |cRXP_ENEMY_Death's Mights|r. Loot them for |cRXP_LOOT_Fel Cannonball|r
    .complete 10904,1 --Fel Cannonball (5)
    .mob Deathforge Over-Smith
    .mob Deathforge Technician
    .mob Death's Watch
    .mob Death's Might
    .isOnQuest 10904
step
    .goto 105,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10904 >>Turn in Harvesting the Fel Ammunition
    .unitscan Evergrove Druid
    .isOnQuest 10904
step
    .goto 105,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10911 >>Accept Fire At Will!
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10904 --any of: Harvesting the Fel Ammunition
    .xp <65,1
step
    .goto 105,65.08,67.18
    >>Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use the cannons to destroy both the South Warp-Gate and the North Warp-Gate.
    .complete 10911,1 --Death's Door South Warp-Gate
    .target Death's Door South Warp-Gate
    .isOnQuest 10911
step
    .goto 105,62.08,61.38
    >>Use the Naturalized Ammunition to take control of the Death's Door Fel Cannons. Use the cannons to destroy both the South Warp-Gate and the North Warp-Gate.
    .complete 10911,2 --Death's Door North Warp-Gate
    .target Death's Door North Warp-Gate
    .isOnQuest 10911
step
    .goto 105,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10911 >>Turn in Fire At Will!
    .unitscan Evergrove Druid
    .isOnQuest 10911
step
    .goto 105,61.40,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Evergrove Druid|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10912 >>Accept The Hound-Master
    .unitscan Evergrove Druid
    .isQuestTurnedIn 10911 --any of: Fire At Will!
    .xp <65,1
step
    .goto 105,63.04,60.41
    >>Kill |cRXP_ENEMY_Baelmon the Hound-Master|r
    .complete 10912,1 --Baelmon the Hound-Master slain (1)
    .mob Baelmon the Hound-Master
    .isOnQuest 10912
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .accept 10742 >>Accept Showdown
    .target Rexxar
    .isQuestTurnedIn 10724 --any of: Prisoner of the Bladespire
    .xp <65,1
step
    .goto 105,62.31,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wildlord Antelarion|r
    .turnin 10912 >>Turn in The Hound-Master
    .target Wildlord Antelarion
    .isOnQuest 10912
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,63.79,19.43
    >>Kill |cRXP_ENEMY_Goc|r
    .complete 10742,1 --Goc slain (1)
    .mob Goc
    .isOnQuest 10742
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,51.82,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rexxar|r
    .turnin 10742 >>Turn in Showdown
    .target Rexxar
    .isOnQuest 10742
step
    +|cRXP_WARN_That is all of Blade's Edge Mountains for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Netherstorm|r: Out of This World Produce! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Shadowmoon Valley|r: The Apprentice's Request << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 68|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.4 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Nagrand|r (about 0.5 levels of quests, starting around Hemet Nesingwary). Completing this step loads the guide for Netherstorm --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Blade's Edge Mountains is planned from level 71.|r Load its guide for level 71 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 65 - 72 Blade's Edge Mountains
#subweight -65
#name 71-72 Blade's Edge Mountains: around Chu'a'lor
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\72-75 Dragonblight;Zone Routes (Horde)\70-72 Howling Fjord: around Lurielle

step
    .goto 105,55.43,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chort|r
    .accept 10989 >>Accept Mog'dorg the Wizened
    .target Chort
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 10989 >>Turn in Mog'dorg the Wizened
    .accept 10997 >>Accept Even Gronn Have Standards
    .target Mog'dorg the Wizened
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .accept 11000 >>Accept Into the Soulgrinder
    .target Mog'dorg the Wizened
    .isQuestTurnedIn 10998 --any of: Grim(oire) Business
    .xp <70,1
step
    .goto 105,60.70,25.46
    >>Pick up |cRXP_PICK_Skulloc's Soul|r from the ground
    .complete 11000,1 --Skulloc's Soul (1)
    .isOnQuest 11000
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 11000 >>Turn in Into the Soulgrinder
    .target Mog'dorg the Wizened
    .isOnQuest 11000
step
    .goto 105,55.78,46.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bladespire Supplicant|r
    .accept 11022 >>Accept Speak with Mog'dorg
    .target Bladespire Supplicant
    .isQuestTurnedIn 11000 --any of: Into the Soulgrinder
    .xp <70,1
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 11022 >>Turn in Speak with Mog'dorg
    .target Mog'dorg the Wizened
    .isOnQuest 11022
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .accept 10996 >>Accept Maggoc's Treasure Chest
    .target Mog'dorg the Wizened
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .accept 10995 >>Accept Grulloc Has Two Skulls
    .target Mog'dorg the Wizened
    .isQuestTurnedIn 10983,11022,11057 --any of: Mog'dorg the Wizened, Speak with Mog'dorg, The Trouble Below
    .xp <70,1
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .accept 11009 >>Accept Ogre Heaven
    .target Mog'dorg the Wizened
    .isQuestTurnedIn 11000 --any of: Into the Soulgrinder
    .xp <70,1
step
    .goto 105,60.92,47.61
    >>Pick up |cRXP_PICK_Grulloc's Dragon Skull|r from the ground
    .complete 10995,1 --Grulloc's Dragon Skull (1)
    .isOnQuest 10995
step
    .goto 105,58.59,60.80
    >>Pick up |cRXP_PICK_Maggoc's Treasure Chest|r from the ground
    .complete 10996,1 --Maggoc's Treasure Chest (1)
step
    .goto 105,37.75,63.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cahill|r
    .target Cahill
    .home >>Set your Hearthstone to Cahill's inn
step
    .goto 105,28.76,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chu'a'lor|r
    .turnin 11009 >>Turn in Ogre Heaven
    .target Chu'a'lor
    .isOnQuest 11009
step
    .goto 105,28.76,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chu'a'lor|r
    .accept 11025 >>Accept The Crystals
    .target Chu'a'lor
step
    #loop
    .goto 105,29.77,53.74,0
    .goto 105,29.77,53.74,40,0
    .goto 105,32.74,56.14,40,0
    .goto 105,33.05,52.24,40,0
    >>Kill |cRXP_ENEMY_Hemathions|r, |cRXP_ENEMY_Abyssal Flamebringers|r, |cRXP_ENEMY_Wrath Hounds|r and |cRXP_ENEMY_Apexis Flayers|r. Loot them for |cRXP_LOOT_Apexis Shard|r. It can also be picked up from |cRXP_PICK_Apexis Shard Formation|r on the ground
    .complete 11025,1 --Apexis Shard (5)
    .mob Hemathion
    .mob Abyssal Flamebringer
    .mob Wrath Hound
    .mob Apexis Flayer
step
    .goto 105,28.76,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chu'a'lor|r
    .turnin 11025 >>Turn in The Crystals
    .accept 11058 >>Accept An Apexis Relic
    .target Chu'a'lor
step
    .goto 105,28.38,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torkus|r
    .accept 11030 >>Accept Our Boy Wants To Be A Skyguard Ranger
    .target Torkus
step
    .goto 105,27.67,68.09
    >>Click the |cRXP_PICK_Apexis Relic|r
    .complete 11058,1 --Apexis Relic
step
    .goto 105,29.47,81.06
    >>Open the |cRXP_PICK_Fel Crystalforge|r. Loot it for |cRXP_LOOT_Unstable Flask of the Beast|r
    .complete 11030,1 --Unstable Flask of the Beast (1)
step
    .goto 105,28.38,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torkus|r
    .turnin 11030 >>Turn in Our Boy Wants To Be A Skyguard Ranger
    .accept 11061 >>Accept A Father's Duty
    .target Torkus
step
    .goto 105,28.76,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chu'a'lor|r
    .turnin 11058 >>Turn in An Apexis Relic
    .accept 11062 >>Accept The Skyguard Outpost
    .target Chu'a'lor
step
    .goto 105,27.38,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Commander Keller|r
    .turnin 11062 >>Turn in The Skyguard Outpost
    .target Sky Commander Keller
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock
    .goto 105,27.56,52.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Sergeant Vanderlip|r
    .accept 11010 >>Accept Bombing Run
    .target Sky Sergeant Vanderlip
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock
    #loop
    .goto 105,33.36,44.84,0
    .goto 105,33.36,44.84,40,0
    .goto 105,33.16,39.38,40,0
    >>Click the |cRXP_PICK_Fel Cannonball Stack|r
    .complete 11010,1 --Fel Cannonball Stack
step << Druid
    .goto 105,27.56,52.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Sergeant Vanderlip|r
    .accept 11102 >>Accept Bombing Run
    .target Sky Sergeant Vanderlip
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock
    .goto 105,27.56,52.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Sergeant Vanderlip|r
    .turnin 11010 >>Turn in Bombing Run while you are here
    .isQuestComplete 11010
    .target Sky Sergeant Vanderlip
step << Druid
    #loop
    .goto 105,33.36,44.84,0
    .goto 105,33.36,44.84,40,0
    .goto 105,33.16,39.38,40,0
    >>Click the |cRXP_PICK_Fel Cannonball Stack|r
    .complete 11102,1 --Fel Cannonball Stack
step
    .goto 105,54.39,10.72
    >>Open the |cRXP_PICK_Bash'ir Crystalforge|r. Loot it for |cRXP_LOOT_Unstable Flask of the Sorcerer|r
    .complete 11061,1 --Unstable Flask of the Sorcerer (1)
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 10996 >>Turn in Maggoc's Treasure Chest
    .target Mog'dorg the Wizened
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 10995 >>Turn in Grulloc Has Two Skulls
    .target Mog'dorg the Wizened
    .isOnQuest 10995
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 10997 >>Turn in Even Gronn Have Standards
    .target Mog'dorg the Wizened
    .isQuestComplete 10997
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .accept 10998 >>Accept Grim(oire) Business
    .target Mog'dorg the Wizened
    .isQuestTurnedIn 10995 --Grulloc Has Two Skulls
    .isQuestTurnedIn 10997 --Even Gronn Have Standards
    .xp <70,1
step
    .goto 105,77.53,31.20
    >>Pick up |cRXP_PICK_Vim'gol's Vile Grimoire|r from the ground
    .complete 10998,1 --Vim'gol's Vile Grimoire (1)
    .isOnQuest 10998
step
    .goto 105,55.49,44.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mog'dorg the Wizened|r
    .turnin 10998 >>Turn in Grim(oire) Business
    .target Mog'dorg the Wizened
    .isOnQuest 10998
step
    .goto 105,28.76,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chu'a'lor|r
    .accept 11059 >>Accept Guardian of the Monument
    .target Chu'a'lor
step
    .goto 105,28.38,57.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torkus|r
    .turnin 11061 >>Turn in A Father's Duty
    .target Torkus
step
    .goto 105,28.48,58.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahk|r
    .accept 11079 >>Accept A Fel Whip For Gahk
    .target Gahk
step
    .goto 105,27.56,52.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Sergeant Vanderlip|r
    .turnin 11010 >>Turn in Bombing Run << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock
    .turnin 11102 >>Turn in Bombing Run << Druid
    .target Sky Sergeant Vanderlip
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .goto 105,27.38,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Commander Keller|r
    .accept 11119 >>Accept Assault on Bash'ir Landing!
    .target Sky Commander Keller
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .goto 105,27.90,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aether-tech Apprentice|r
    .turnin 11119 >>Turn in Assault on Bash'ir Landing!
    .target Aether-tech Apprentice
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .goto 105,27.95,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skyguard Khatie|r
    .accept 11065 >>Accept Wrangle Some Aether Rays!
    .target Skyguard Khatie
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    #loop
    .goto 105,29.59,47.66,0
    .goto 105,29.59,47.66,40,0
    .goto 105,30.95,55.28,40,0
    .goto 105,33.08,54.62,40,0
    >>Interact with |cRXP_FRIENDLY_Aether Rays|r
    .complete 11065,1 --Aether Ray (5)
    .target Aether Ray
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .goto 105,27.95,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skyguard Khatie|r
    .turnin 11065 >>Turn in Wrangle Some Aether Rays!
    .target Skyguard Khatie
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .goto 105,27.38,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Commander Keller|r
    .accept 11078 >>Accept To Rule The Skies
    .target Sky Commander Keller
step
    #loop
    .goto 105,28.80,46.51,0
    .goto 105,28.80,46.51,40,0
    .goto 105,33.41,51.84,40,0
    .goto 105,33.99,54.79,40,0
    >>Kill |cRXP_ENEMY_Rivendarks|r, |cRXP_ENEMY_Furywings|r, |cRXP_ENEMY_Insidions|r and |cRXP_ENEMY_Obsidias|r. Loot them for |cRXP_LOOT_Dragon Teeth|r << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    >>Kill |cRXP_ENEMY_Apexis Guardian|r and loot |cRXP_LOOT_Apexis Guardian's Head|r
    .complete 11078,1 << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid --Dragon Teeth (1)
    .complete 11059,1 --Apexis Guardian's Head (1)
    .mob Rivendark << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .mob Furywing << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .mob Insidion << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .mob Obsidia << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .mob Apexis Guardian
step
    #loop
    .goto 105,33.91,44.18,0
    .goto 105,33.91,44.18,40,0
    .goto 105,31.63,39.26,40,0
    .goto 105,35.59,36.70,40,0
    >>Kill |cRXP_ENEMY_Galvanoths|r, |cRXP_ENEMY_Braxxus|r, |cRXP_ENEMY_Mo'arg Incinerators|r and |cRXP_ENEMY_Zarcsins|r. Loot them for |cRXP_LOOT_Fel Whip|r
    .complete 11079,1 --Fel Whip (1)
    .mob Galvanoth
    .mob Braxxus
    .mob Mo'arg Incinerator
    .mob Zarcsin
step << Warrior/Paladin/Hunter/Rogue/Priest/DeathKnight/Shaman/Mage/Warlock/Druid
    .goto 105,27.38,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Commander Keller|r
    .turnin 11078 >>Turn in To Rule The Skies
    .target Sky Commander Keller
step
    .goto 105,28.76,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chu'a'lor|r
    .turnin 11059 >>Turn in Guardian of the Monument
    .target Chu'a'lor
step
    .goto 105,28.48,58.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gahk|r
    .turnin 11079 >>Turn in A Fel Whip For Gahk
    .target Gahk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 105,70.39,73.34,0
    .goto 105,70.39,73.34,40,0
    .goto 105,72.06,74.13,40,0
    >>Kill |cRXP_ENEMY_Vekh'nir Keeneyes|r, |cRXP_ENEMY_Vekh'nir Stormcallers|r, |cRXP_ENEMY_Vekh'nir Dreadhawks|r and |cRXP_ENEMY_Vekh'nir Matriarches|r. Loot them for |cRXP_LOOT_Vekh'nir Crystal|r
    .collect 30561,1,10565,1 --Vekh'nir Crystal (1)
    .mob Vekh'nir Keeneye
    .mob Vekh'nir Stormcaller
    .mob Vekh'nir Dreadhawk
    .mob Vekh'nir Matriarch
    .isOnQuest 10565
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 105,75.14,62.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dertrok|r
    .turnin 10565 >>Turn in The Stones of Vekh'nir
    .target Dertrok
    .isQuestComplete 10565
step
    +|cRXP_WARN_End of the Blade's Edge Mountains route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Terokkar Forest and back here|r: Even Gronn Have Standards
step
    +|cRXP_WARN_Suggested next zones at level 71|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.1 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Dragonblight|r (about 0.7 levels of quests, starting around Aurastrasza), |cRXP_FRIENDLY_Howling Fjord|r (about 0.6 levels of quests, starting around Lurielle). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
