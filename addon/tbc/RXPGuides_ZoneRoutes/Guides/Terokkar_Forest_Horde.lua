-- 62-70 Terokkar Forest: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 62, 66, 69).
-- Split into 3 guides, listed under "62 - 70 Terokkar Forest" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Terokkar Forest.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 62 - 70 Terokkar Forest
#subweight -62
#name 62-64 Terokkar Forest: around Tooki
--RouteBuilder:next
#next Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel

step
    .xp 62 >>Grind to level 62 (Surrender to the Horde needs it)
step
    .goto 1952,48.97,44.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokag|r
    .accept 10862 >>Accept Surrender to the Horde
    .target Rokag
step
    .goto 1952,50.13,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakoria|r
    .turnin 10105 >>Turn in News for Rakoria
    .target Rakoria
    .isOnQuest 10105
step
    .goto 1952,50.13,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakoria|r
    .accept 9993 >>Accept Olemba Seed Oil
    .target Rakoria
    .xp <62,1
step
    .goto 1952,49.81,45.28
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10034 >>Accept Wanted: Bonelashers Dead!
    .xp <62,1
step
    .goto 1952,50.04,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooki|r
    .accept 9960 >>Accept What's Wrong at Cenarion Thicket?
    .target Tooki
    .xp <62,1
step
    .goto 1952,50.18,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malukaz|r
    .accept 10018 >>Accept Vestments of the Wolf Spirit
    .target Malukaz
    .xp <62,1
step
    .goto 1952,48.97,44.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokag|r
    .accept 9987 >>Accept Stymying the Arakkoa
    .target Rokag
    .xp <62,1
step
    .goto 1952,48.94,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Faila|r
    .accept 10039 >>Accept Speak with Scout Neftis
    .target Advisor Faila
    .xp <62,1
step
    .goto 1952,48.77,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgatok|r
    .accept 10000 >>Accept An Unwelcome Presence
    .target Kurgatok
    .xp <62,1
step
    .goto 1952,48.77,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgatok|r
    .accept 10027 >>Accept Magical Disturbances
    .target Kurgatok
    .xp <62,1
step
    .goto 1952,37.45,51.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirrik the Awakened|r
    .accept 10908 >>Accept Speak with Rilak the Redeemed
    .target Kirrik the Awakened
step
    .goto 1952,37.86,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakotae|r
    .accept 10896 >>Accept The Infested Protectors
    .target Lakotae
    .xp <62,1
step
    .goto 1952,37.84,51.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mekeda|r
    .accept 10878 >>Accept Before Darkness Falls
    .target Mekeda
    .xp <62,1
step
    #completewith next
    .zone 1955 >>Travel to Shattrath City
    .zoneskip 1955
step
    .goto 1955,63.95,70.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias the Filth Gorger|r
    .turnin 10547 >>Turn in Of Thistleheads and Eggs...
    .target Tobias the Filth Gorger
    .isQuestComplete 10547
step << Druid/DK
    .goto 1955,64.05,41.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
    .fp Shattrath >> Get the Shattrath City flight path
    .target Nutral
step
    #loop
    .goto 1955,72.71,55.21,0
    .goto 1955,72.71,55.21,40,0
    .goto 1955,77.16,43.44,40,0
    .goto 1955,59.66,41.43,40,0
    .goto 1955,73.00,17.79,40,0
    .goto 1955,61.82,9.91,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggard War Veteran|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10210 >>Accept A'dal
    .unitscan Haggard War Veteran
step
    .goto 1955,54.75,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    .turnin 9829 >>Turn in Khadgar
    .target Khadgar
    .isOnQuest 9829
step
    .goto 1955,53.99,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10102 >>Turn in A Secret Revealed
    .target A'dal
    .isOnQuest 10102
step
    .goto 1955,53.99,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10280 >>Turn in Special Delivery to Shattrath City
    .target A'dal
    .isOnQuest 10280
step
    .goto 1955,53.99,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10781 >>Turn in Battle of the Crimson Watch
    .target A'dal
    .isQuestComplete 10781
step
    .goto 1955,53.99,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10948 >>Turn in The Hostage Soul
    .target A'dal
    .isOnQuest 10948
step
    .goto 1955,53.99,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 11052 >>Turn in Akama's Promise
    .target A'dal
    .isOnQuest 11052
step
    .goto 1955,53.99,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A'dal|r
    .turnin 10210 >>Turn in A'dal
    .target A'dal
step
    .goto 1955,54.75,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    .accept 10211 >>Accept City of Light
    .target Khadgar
step
    .goto 1955,50.45,42.93
    >>City of Light
    .complete 10211,1 --City of Light
step
    .goto 1955,49.08,42.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Nasuun|r
    .turnin 11517 >>Turn in Report to Nasuun
    .target Exarch Nasuun
    .isOnQuest 11517
step
    .goto 1955,49.08,42.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Nasuun|r
    .turnin 11534 >>Turn in Report to Nasuun
    .target Exarch Nasuun
    .isOnQuest 11534
step
    .goto 1955,52.54,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilak the Redeemed|r
    .turnin 10908 >>Turn in Speak with Rilak the Redeemed
    .turnin 10862 >>Turn in Surrender to the Horde
    .target Rilak the Redeemed
step
    .goto 1955,52.54,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilak the Redeemed|r
    .accept 10847 >>Accept The Eyes of Skettis
    .target Rilak the Redeemed
    .xp <62,1
step
    .goto 1955,63.95,15.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seth|r
    .accept 10037 >>Accept Rather Be Fishin'
    .target Seth
step
    #loop
    .goto 1955,52.29,16.83,0
    .goto 1955,52.29,16.83,40,0
    .goto 1955,52.08,17.78,40,0
    .goto 1955,50.67,18.61,40,0
    .goto 1955,48.72,18.51,40,0
    .goto 1955,46.28,19.25,40,0
    .goto 1955,45.84,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vekax|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 10917 >>Accept The Outcast's Plight
    .unitscan Vekax
step
    .goto 1955,52.54,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilak the Redeemed|r
    .accept 10847 >>Accept The Eyes of Skettis
    .target Rilak the Redeemed
step
    .goto 1955,54.75,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    .turnin 10211 >>Turn in City of Light
    .accept 10551 >>Accept Allegiance to the Aldor
    .target Khadgar
step << Mage
    .goto 1955,58.75,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
    .train 33690 >> Train |T135760:0|t[Teleport: Shattrath]
    .train 33691 >> Train |T135745:0|t[Portal: Shattrath]
    .target Iorioa
    .xp <65,1
step << Mage
    .goto 1955,58.75,47.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nutral|r
    .train 33690 >> Train |T135760:0|t[Teleport: Shattrath]
    .target Iorioa
    .xp <60,1
step
    .goto 1955,54.75,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    >>|cRXP_WARN_The database has no objectives for Allegiance to the Aldor. Skip this step if the quest is not finished|r
    .turnin 10551 >>Turn in Allegiance to the Aldor
    .target Khadgar
    .isOnQuest 10551
step
    .goto 1955,54.98,22.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Adyria|r
    .accept 10024 >>Accept Voren'thal's Visions
    .target Arcanist Adyria
step
    #completewith next
    .zone 1952 >>Leave Shattrath City for Terokkar Forest
    .zoneskip 1952
step
    .goto 1952,50.04,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooki|r
    .accept 9960 >>Accept What's Wrong at Cenarion Thicket?
    .target Tooki
step
    .goto 1952,48.74,46.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rungor|r
    .target Rungor
    .home >>Set your Hearthstone to Rungor's inn
step
    .goto 1952,48.77,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgatok|r
    .accept 10000 >>Accept An Unwelcome Presence
    .target Kurgatok
    .xp <62,1
step
    .goto 1952,48.77,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgatok|r
    .accept 10027 >>Accept Magical Disturbances
    .target Kurgatok
    .xp <62,1
step
    .goto 1952,48.97,44.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokag|r
    .accept 9987 >>Accept Stymying the Arakkoa
    .target Rokag
    .xp <62,1
step
    .goto 1952,48.94,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Faila|r
    .accept 10039 >>Accept Speak with Scout Neftis
    .target Advisor Faila
    .xp <62,1
step
    .goto 1952,49.81,45.28
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10034 >>Accept Wanted: Bonelashers Dead!
    .xp <62,1
step
    .goto 1952,50.18,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malukaz|r
    .accept 10018 >>Accept Vestments of the Wolf Spirit
    .target Malukaz
    .xp <62,1
step
    .goto 1952,50.13,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakoria|r
    .accept 9993 >>Accept Olemba Seed Oil
    .target Rakoria
    .xp <62,1
step
    .goto 1952,44.33,26.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Tavgren|r
    .turnin 9960 >>Turn in What's Wrong at Cenarion Thicket?
    .accept 9971 >>Accept Clues in the Thicket
    .accept 9968 >>Accept Strange Energy
    .target Earthbinder Tavgren
step
    #completewith Along28
    >>As you go: Click the |cRXP_PICK_Strange Object|r. Kill |cRXP_ENEMY_Vicious Teromoths|r. Loot them for |cRXP_LOOT_Vicious Teromoth Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9971,1 --Strange Object examined
    .complete 9968,2 --Vicious Teromoth Sample (4)
    .mob Vicious Teromoth
step
    .goto 1952,45.01,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Treelos|r
    .accept 9951 >>Accept It's Watching You!
    .target Warden Treelos
step
    .goto 1952,43.54,22.07
    >>Kill |cRXP_ENEMY_Naphthal'ar|r
    .complete 9951,1 --Naphthal'ar slain (1)
    .mob Naphthal'ar
step
    #label Along28
    .goto 1952,45.01,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Treelos|r
    .turnin 9951 >>Turn in It's Watching You!
    .target Warden Treelos
step
    #loop
    .goto 1952,45.51,23.08,0
    .goto 1952,45.51,23.08,40,0
    .goto 1952,42.95,24.40,40,0
    >>Click the |cRXP_PICK_Strange Object|r
    >>Kill |cRXP_ENEMY_Vicious Teromoths|r. Loot them for |cRXP_LOOT_Vicious Teromoth Sample|r
    .complete 9971,1 --Strange Object examined
    .complete 9968,2 --Vicious Teromoth Sample (4)
    .mob Vicious Teromoth
step
    #loop
    .goto 1952,45.14,28.37,0
    .goto 1952,45.14,28.37,40,0
    .goto 1952,44.15,33.74,40,0
    .goto 1952,48.15,32.84,40,0
    >>Kill |cRXP_ENEMY_Teromoths|r. Loot them for |cRXP_LOOT_Teromoth Sample|r
    .complete 9968,1 --Teromoth Sample (4)
    .mob Teromoth
step
    .goto 1952,44.33,26.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Tavgren|r
    .turnin 9971 >>Turn in Clues in the Thicket
    .turnin 9968 >>Turn in Strange Energy
    .accept 9978 >>Accept By Any Means Necessary
    .target Earthbinder Tavgren
step
    #loop
    .goto 1952,51.04,29.34,0
    .goto 1952,51.04,29.34,40,0
    .goto 1952,49.39,28.11,40,0
    .goto 1952,45.70,26.45,40,0
    .goto 1952,42.49,26.63,40,0
    .goto 1952,39.91,25.88,40,0
    .goto 1952,38.09,26.54,40,0
    .goto 1952,36.56,30.60,40,0
    .goto 1952,36.27,28.66,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Empoor|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9978 >>Turn in By Any Means Necessary
    .accept 9979 >>Accept Wind Trader Lathrai
    .unitscan Empoor
step
    #completewith Along33
    >>As you go: Pick up |cRXP_PICK_Eye of Veil Reskk|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10847,1 --Eye of Veil Reskk (1)
step
    #label Along33
    #loop
    .goto 1952,49.41,18.17,0
    .goto 1952,49.41,18.17,40,0
    .goto 1952,48.84,13.75,40,0
    >>Kill |cRXP_ENEMY_Shienor Talonites|r, |cRXP_ENEMY_Shienor Sorcerers|r, |cRXP_ENEMY_Shienor Wing Guards|r and |cRXP_ENEMY_Skithian Dreadhawks|r. Loot them for |cRXP_LOOT_Arakkoa Feather|r
    .complete 10917,1 --Arakkoa Feather (30)
    .mob Shienor Talonite
    .mob Shienor Sorcerer
    .mob Shienor Wing Guard
    .mob Skithian Dreadhawk
step
    #completewith next
    .hs >>Hearth to Rungor's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1952,49.71,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokasa|r
    .turnin 9796 >>Turn in News from Zangarmarsh
    .target Mokasa
    .isOnQuest 9796
step
    .goto 1952,48.94,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Faila|r
    .accept 10039 >>Accept Speak with Scout Neftis
    .target Advisor Faila
    .xp <62,1
step
    .goto 1952,48.97,44.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokag|r
    .accept 9987 >>Accept Stymying the Arakkoa
    .target Rokag
    .xp <62,1
step
    .goto 1952,49.81,45.28
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10034 >>Accept Wanted: Bonelashers Dead!
    .xp <62,1
step
    .goto 1952,48.77,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgatok|r
    .accept 10000 >>Accept An Unwelcome Presence
    .target Kurgatok
    .xp <62,1
step
    .goto 1952,48.77,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgatok|r
    .accept 10027 >>Accept Magical Disturbances
    .target Kurgatok
    .xp <62,1
step
    .goto 1952,50.18,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malukaz|r
    .accept 10018 >>Accept Vestments of the Wolf Spirit
    .target Malukaz
    .xp <62,1
step
    #completewith next
    .hs >>Hearth to Rungor's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1952,50.13,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakoria|r
    .accept 9993 >>Accept Olemba Seed Oil
    .target Rakoria
step
    .goto 1952,50.18,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malukaz|r
    .accept 10018 >>Accept Vestments of the Wolf Spirit
    .target Malukaz
step
    .goto 1952,48.77,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgatok|r
    .accept 10000 >>Accept An Unwelcome Presence
    .accept 10027 >>Accept Magical Disturbances
    .target Kurgatok
step
    .goto 1952,48.97,44.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokag|r
    .accept 9987 >>Accept Stymying the Arakkoa
    .target Rokag
step
    .goto 1952,48.94,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Faila|r
    .accept 10868 >>Accept Arakkoa War Path
    .accept 10039 >>Accept Speak with Scout Neftis
    .target Advisor Faila
step
    .goto 1952,49.20,43.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerna|r
    .fp Stonebreaker Hold >> Get the Stonebreaker Hold flight path
    .target Kerna
step << Hunter TBC
    .goto 1952,49.27,50.11
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Dreadfang Widow|r to tame it|r
    .train 27050 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 9)]
    .xp <64,1
    .zoneskip Terokkar Forest,1
step << Hunter TBC
    .goto 1952,49.32,44.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trag|r
    .target Trag
    .train 27050,3
    .xp <64,1
    .zoneskip Terokkar Forest,1
step
    .goto 1952,49.81,45.28
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10034 >>Accept Wanted: Bonelashers Dead!
    .xp <62,1
step
    #completewith Along42
    >>As you go: Loot the |cRXP_PICK_Olemba Cones|r for |cRXP_LOOT_Olemba Seed|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9993,1 --Olemba Seed (30)
step
    #completewith Along41
    >>As you go: Kill |cRXP_ENEMY_Timber Worgs|r and |cRXP_ENEMY_Timber Worg Alphas|r. Loot them for |cRXP_LOOT_Timber Worg Pelt|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10018,1 --Timber Worg Pelt (12)
    .mob Timber Worg
    .mob Timber Worg Alpha
step
    #loop
    .goto 1952,63.95,52.79,0
    .goto 1952,63.95,52.79,40,0
    .goto 1952,66.59,51.75,40,0
    >>Kill |cRXP_ENEMY_Warped Peons|r
    .complete 10000,1 --Warped Peon slain (12)
    .mob Warped Peon
step
    #completewith Along41
    >>As you go: Kill |cRXP_ENEMY_Dampscale Basilisks|r, |cRXP_ENEMY_Dampscale Devourers|r, |cRXP_ENEMY_Stonegazers|r and |cRXP_ENEMY_Ironspine Petrifiers|r. Loot them for |cRXP_LOOT_Dampscale Basilisk Eye|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10024,1 --Dampscale Basilisk Eye (8)
    .mob Dampscale Basilisk
    .mob Dampscale Devourer
    .mob Stonegazer
    .mob Ironspine Petrifier
step
    #label Along41
    .goto 1952,63.39,42.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowstalker Kaide|r
    .turnin 10000 >>Turn in An Unwelcome Presence
    .accept 10003 >>Accept The Firewing Liaison
    .accept 10008 >>Accept What Happens in Terokkar Stays in Terokkar
    .target Shadowstalker Kaide
step
    #label Along42
    #loop
    .goto 1952,66.61,47.54,0
    .goto 1952,66.61,47.54,40,0
    .goto 1952,69.71,49.76,40,0
    >>Kill |cRXP_ENEMY_Timber Worgs|r and |cRXP_ENEMY_Timber Worg Alphas|r. Loot them for |cRXP_LOOT_Timber Worg Pelt|r
    .complete 10018,1 --Timber Worg Pelt (12)
    .mob Timber Worg
    .mob Timber Worg Alpha
step
    #completewith Along43
    >>As you go: Kill |cRXP_ENEMY_Bonechewer Backbreakers|r. Kill |cRXP_ENEMY_Bonechewer Devastators|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10008,2 --Bonechewer Backbreaker slain (6)
    .complete 10008,1 --Bonechewer Devastator slain (10)
    .mob Bonechewer Backbreaker
    .mob Bonechewer Devastator
step
    #label Along43
    .goto 1952,67.92,53.56
    >>Click the |cRXP_PICK_Fel Orc Plans|r
    .accept 10013 >>Accept An Unseen Hand
step
    #loop
    .goto 1952,67.86,55.00,0
    .goto 1952,67.86,55.00,40,0
    .goto 1952,66.01,53.22,40,0
    >>Kill |cRXP_ENEMY_Lisaile Fireweaver|r
    >>Kill |cRXP_ENEMY_Bonechewer Backbreakers|r
    >>Kill |cRXP_ENEMY_Bonechewer Devastators|r
    .complete 10003,1 --Lisaile Fireweaver slain (1)
    .complete 10008,2 --Bonechewer Backbreaker slain (6)
    .complete 10008,1 --Bonechewer Devastator slain (10)
    .mob Lisaile Fireweaver
    .mob Bonechewer Backbreaker
    .mob Bonechewer Devastator
step
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Dampscale Basilisks|r, |cRXP_ENEMY_Dampscale Devourers|r, |cRXP_ENEMY_Stonegazers|r and |cRXP_ENEMY_Ironspine Petrifiers|r. Loot them for |cRXP_LOOT_Dampscale Basilisk Eye|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10024,1 --Dampscale Basilisk Eye (8)
    .mob Dampscale Basilisk
    .mob Dampscale Devourer
    .mob Stonegazer
    .mob Ironspine Petrifier
step
    .goto 1952,63.39,42.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowstalker Kaide|r
    .turnin 10003 >>Turn in The Firewing Liaison
    .turnin 10008 >>Turn in What Happens in Terokkar Stays in Terokkar
    .target Shadowstalker Kaide
step
    #completewith Along47
    >>As you go: Loot the |cRXP_PICK_Olemba Cones|r for |cRXP_LOOT_Olemba Seed|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9993,1 --Olemba Seed (30)
step
    #label Along46
    #loop
    .goto 1952,65.61,36.80,0
    .goto 1952,65.61,36.80,40,0
    .goto 1952,63.30,31.34,40,0
    >>Kill |cRXP_ENEMY_Warp Stalkers|r
    .complete 10027,1 --Warp Stalker slain (10)
    .mob Warp Stalker
step
    #completewith Along47
    >>As you go: Kill |cRXP_ENEMY_Shienor Talonites|r. Kill |cRXP_ENEMY_Shienor Sorcerers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10868,1 --Shienor Talonite slain (14)
    .complete 10868,2 --Shienor Sorcerer slain (6)
    .mob Shienor Talonite
    .mob Shienor Sorcerer
step
    #label Along47
    .goto 1952,57.89,23.15
    >>Kill |cRXP_ENEMY_Ayit|r
    >>Pick up |cRXP_PICK_Eye of Veil Shienor|r from the ground
    .complete 9987,2 --Ayit slain (1)
    .complete 10847,2 --Eye of Veil Shienor (1)
    .mob Ayit
step
    #loop
    .goto 1952,49.41,18.17,0
    .goto 1952,49.41,18.17,40,0
    .goto 1952,48.84,13.75,40,0
    >>Pick up |cRXP_PICK_Eye of Veil Reskk|r from the ground
    >>Kill |cRXP_ENEMY_Ashkaz|r
    >>Kill |cRXP_ENEMY_Shienor Talonites|r
    >>Kill |cRXP_ENEMY_Shienor Sorcerers|r
    .complete 10847,1 --Eye of Veil Reskk (1)
    .complete 9987,1 --Ashkaz slain (1)
    .complete 10868,1 --Shienor Talonite slain (14)
    .complete 10868,2 --Shienor Sorcerer slain (6)
    .mob Ashkaz
    .mob Shienor Talonite
    .mob Shienor Sorcerer
step
    #loop
    .goto 1952,57.15,23.92,0
    .goto 1952,57.15,23.92,40,0
    .goto 1952,60.54,28.31,40,0
    .goto 1952,63.15,29.04,40,0
    .goto 1952,68.80,38.25,40,0
    .goto 1952,70.63,40.81,40,0
    .goto 1952,61.37,40.51,40,0
    >>Loot the |cRXP_PICK_Olemba Cones|r for |cRXP_LOOT_Olemba Seed|r
    >>Kill |cRXP_ENEMY_Dampscale Basilisks|r, |cRXP_ENEMY_Dampscale Devourers|r, |cRXP_ENEMY_Stonegazers|r and |cRXP_ENEMY_Ironspine Petrifiers|r. Loot them for |cRXP_LOOT_Dampscale Basilisk Eye|r
    .complete 9993,1 --Olemba Seed (30)
    .complete 10024,1 --Dampscale Basilisk Eye (8)
    .mob Dampscale Basilisk
    .mob Dampscale Devourer
    .mob Stonegazer
    .mob Ironspine Petrifier
step
    #loop
    .goto 1952,40.92,12.37,0
    .goto 1952,40.92,12.37,40,0
    .goto 1952,39.35,9.66,40,0
    >>Kill |cRXP_ENEMY_Shimmerscale Eels|r. Loot them for |cRXP_LOOT_Pristine Shimmerscale Eel|r
    .complete 10037,1 --Pristine Shimmerscale Eel (8)
    .mob Shimmerscale Eel
step
    #completewith next
    .zone 1955 >>Travel to Shattrath City
    .zoneskip 1955
step
    .goto 1955,72.22,30.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Trader Lathrai|r
    .turnin 9979 >>Turn in Wind Trader Lathrai
    .accept 10112 >>Accept A Personal Favor
    .target Wind Trader Lathrai
step
    .goto 1955,64.48,15.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'nir|r
    .accept 10017 >>Accept Strained Supplies
    .target Sha'nir
step
    .goto 1955,63.95,15.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seth|r
    .turnin 10037 >>Turn in Rather Be Fishin'
    .target Seth
step
    .goto 1955,54.98,22.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arcanist Adyria|r
    .turnin 10024 >>Turn in Voren'thal's Visions
    .target Arcanist Adyria
step
    #loop
    .goto 1955,52.29,16.83,0
    .goto 1955,52.29,16.83,40,0
    .goto 1955,52.08,17.78,40,0
    .goto 1955,50.67,18.61,40,0
    .goto 1955,48.72,18.51,40,0
    .goto 1955,46.28,19.25,40,0
    .goto 1955,45.84,22.81,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vekax|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10917 >>Turn in The Outcast's Plight
    .unitscan Vekax
step
    .goto 1955,52.54,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilak the Redeemed|r
    .turnin 10847 >>Turn in The Eyes of Skettis
    .accept 10849 >>Accept Seek Out Kirrik
    .target Rilak the Redeemed
step
    #completewith next
    .zone 1952 >>Leave Shattrath City for Terokkar Forest
    .zoneskip 1952
step
    #completewith next
    .hs >>Hearth to Rungor's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1952,48.77,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgatok|r
    .turnin 10027 >>Turn in Magical Disturbances
    .target Kurgatok
step
    .goto 1952,50.18,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malukaz|r
    .turnin 10018 >>Turn in Vestments of the Wolf Spirit while you are here
    .isQuestComplete 10018
    .target Malukaz
step
    .goto 1952,48.97,44.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokag|r
    .turnin 10013 >>Turn in An Unseen Hand
    .target Rokag
step
    .goto 1952,48.94,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Faila|r
    .turnin 10868 >>Turn in Arakkoa War Path
    .target Advisor Faila
step
    .goto 1952,49.81,45.28
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 10034 >>Accept Wanted: Bonelashers Dead!
step
    .goto 1952,50.13,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakoria|r
    .turnin 9993 >>Turn in Olemba Seed Oil
    .accept 10201 >>Accept And Now, the Moment of Truth
    .target Rakoria
step
    .goto 1952,49.85,45.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grek|r
    .complete 10201,1 --Grek
    .target Grek
step
    .goto 1952,50.13,44.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakoria|r
    .turnin 10201 >>Turn in And Now, the Moment of Truth
    .target Rakoria
step
    .goto 1952,50.18,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malukaz|r
    .turnin 10018 >>Turn in Vestments of the Wolf Spirit
    .accept 10023 >>Accept Patriarch Ironjaw
    .target Malukaz
step
    .goto 1952,37.84,51.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mekeda|r
    .accept 10878 >>Accept Before Darkness Falls
    .target Mekeda
step
    .goto 1952,37.86,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakotae|r
    .accept 10896 >>Accept The Infested Protectors
    .target Lakotae
step
    .goto 1952,37.45,51.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirrik the Awakened|r
    .turnin 10849 >>Turn in Seek Out Kirrik
    .accept 10839 >>Accept Veil Skith: Darkstone of Terokk
    .target Kirrik the Awakened
step
    .goto 1952,37.74,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethan|r
    .accept 10852 >>Accept Missing Friends
    .target Ethan
step
    .goto 1952,39.03,43.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Neftis|r
    .turnin 10039 >>Turn in Speak with Scout Neftis
    .accept 10041 >>Accept Who Are They?
    .target Scout Neftis
step
    .goto 1952,40.31,39.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowy Advisor|r
    .complete 10041,3 --Shadowy Advisor
    .target Shadowy Advisor
step
    .goto 1952,39.03,39.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowy Initiate|r
    .complete 10041,1 --Shadowy Initiate
    .target Shadowy Initiate
step
    .goto 1952,41.00,40.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadowy Laborer|r
    .complete 10041,2 --Shadowy Laborer
    .target Shadowy Laborer
step
    .goto 1952,39.03,43.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Neftis|r
    .turnin 10041 >>Turn in Who Are They?
    .accept 10043 >>Accept Kill the Shadow Council!
    .target Scout Neftis
step
    #loop
    .goto 1952,40.23,41.07,0
    .goto 1952,40.23,41.07,40,0
    .goto 1952,37.52,40.94,40,0
    >>Kill |cRXP_ENEMY_Shadowmaster Grieve|r
    >>Kill |cRXP_ENEMY_Shadowy Executioners|r
    >>Kill |cRXP_ENEMY_Shadowy Summoners|r
    .complete 10043,3 --Shadowmaster Grieve slain (1)
    .complete 10043,1 --Shadowy Executioner slain (10)
    .complete 10043,2 --Shadowy Summoner slain (10)
    .mob Shadowmaster Grieve
    .mob Shadowy Executioner
    .mob Shadowy Summoner
step
    #loop
    .goto 1952,31.43,41.60,0
    .goto 1952,31.43,41.60,40,0
    .goto 1952,30.27,43.97,40,0
    >>Kill |cRXP_ENEMY_Urdak|r
    >>Click the |cRXP_PICK_Darkstone of Terokk|r
    >>Kill |cRXP_ENEMY_Skithian Dreadhawks|r and |cRXP_ENEMY_Skithian Windrippers|r. Loot them for |cRXP_LOOT_Veil Skith Prison Key|r
    >>Kill |cRXP_ENEMY_Skithian Dreadhawks|r and |cRXP_ENEMY_Skithian Windrippers|r. Loot them for |cRXP_LOOT_Lathrai's Stolen Goods|r
    .complete 9987,3 --Urdak slain (1)
    .complete 10839,1 --Darkstone of Terokk
    .collect 31655,1,10852,1 --Veil Skith Prison Key (1)
    .complete 10112,1 --Lathrai's Stolen Goods (1)
    .mob Urdak
    .mob Skithian Dreadhawk
    .mob Skithian Windripper
step
    .goto 1952,31.45,42.39
    >>Ethan wants you to find 12 of his missing friends in Veil Skith and then return to him at the Refugee Caravan.
    .complete 10852,1 --Captive Child
    .target Captive Child
step
    #completewith next
    .zone 1955 >>Travel to Shattrath City
    .zoneskip 1955
step
    .goto 1955,72.22,30.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Trader Lathrai|r
    .turnin 10112 >>Turn in A Personal Favor
    .accept 9990 >>Accept Investigate Tuurem
    .target Wind Trader Lathrai
step
    #completewith next
    .zone 1952 >>Leave Shattrath City for Terokkar Forest
    .zoneskip 1952
step
    .goto 1952,54.00,30.00
    >>Pick up |cRXP_PICK_Sealed Box|r from the ground
    .complete 9990,1 --Sealed Box (1)
step
    .goto 1952,44.33,26.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Tavgren|r
    .turnin 9990 >>Turn in Investigate Tuurem
    .accept 9995 >>Accept What Are These Things?
    .target Earthbinder Tavgren
step
    #loop
    .goto 1952,41.54,30.96,0
    .goto 1952,41.54,30.96,40,0
    .goto 1952,37.91,29.22,40,0
    >>Kill |cRXP_ENEMY_Dreadfang Lurkers|r and |cRXP_ENEMY_Dreadfang Widows|r. Loot them for |cRXP_LOOT_Dreadfang Venom Sac|r
    .complete 10017,1 --Dreadfang Venom Sac (8)
    .mob Dreadfang Lurker
    .mob Dreadfang Widow
step
    .goto 1952,48.94,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Faila|r
    .turnin 10043 >>Turn in Kill the Shadow Council!
    .target Advisor Faila
step
    .goto 1952,48.97,44.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rokag|r
    .turnin 9987 >>Turn in Stymying the Arakkoa
    .target Rokag
step
    .goto 1952,50.04,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooki|r
    .turnin 9995 >>Turn in What Are These Things?
    .accept 10448 >>Accept Report to Stonebreaker Camp
    .target Tooki
step
    .goto 1952,63.29,42.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Chawni|r
    .turnin 10448 >>Turn in Report to Stonebreaker Camp
    .accept 9997 >>Accept Attack on Firewing Point
    .target Sergeant Chawni
step
    .goto 1952,69.25,33.10
    >>Kill |cRXP_ENEMY_Ironjaw|r and loot |cRXP_LOOT_Ironjaw's Pelt|r
    .complete 10023,1 --Ironjaw's Pelt (1)
    .mob Ironjaw
step
    #completewith Along87
    >>As you go: Kill |cRXP_ENEMY_Firewing Defenders|r. Kill |cRXP_ENEMY_Firewing Bloodwarders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9997,1 --Firewing Defender slain (10)
    .complete 9997,2 --Firewing Bloodwarder slain (10)
    .mob Firewing Defender
    .mob Firewing Bloodwarder
step
    #completewith Along86
    >>As you go: Kill |cRXP_ENEMY_Firewing Warlocks|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9997,3 --Firewing Warlock slain (10)
    .mob Firewing Warlock
step
    #label Along86
    .goto 1952,73.93,35.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isla Starmane|r
    .accept 10052 >>Accept Escape from Firewing Point!
    .target Isla Starmane
step
    #label Along87
    .goto 1952,67.51,37.28
    >>Escort Isla Starmane to safety
    .complete 10052,1 --Escort Isla Starmane to safety
step
    #loop
    .goto 1952,70.23,37.14,0
    .goto 1952,70.23,37.14,40,0
    .goto 1952,72.51,38.89,40,0
    >>Kill |cRXP_ENEMY_Firewing Defenders|r
    >>Kill |cRXP_ENEMY_Firewing Bloodwarders|r
    >>Kill |cRXP_ENEMY_Firewing Warlocks|r
    .complete 9997,1 --Firewing Defender slain (10)
    .complete 9997,2 --Firewing Bloodwarder slain (10)
    .complete 9997,3 --Firewing Warlock slain (10)
    .mob Firewing Defender
    .mob Firewing Bloodwarder
    .mob Firewing Warlock
step
    .goto 1952,63.29,42.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Chawni|r
    .turnin 9997 >>Turn in Attack on Firewing Point
    .accept 10447 >>Accept The Final Code
    .target Sergeant Chawni
step
    .goto 1952,73.92,35.80
    >>Kill |cRXP_ENEMY_Sharth Voldoun|r and loot |cRXP_LOOT_The Final Code|r
    .collect 29912,1,10447,1 --The Final Code (1)
    .mob Sharth Voldoun
step
    .goto 1952,71.27,37.37
    >>Click the |cRXP_PICK_Mana Bomb|r
    .complete 10447,1 --Mana Bomb
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .turnin 10663 >>Turn in The Hermit Smith
    .target David Wayne
    .isOnQuest 10663
step
    #completewith next
    .hs >>Hearth to Rungor's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1952,48.94,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Advisor Faila|r
    .turnin 10052 >>Turn in Escape from Firewing Point!
    .target Advisor Faila
step
    .goto 1952,50.04,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooki|r
    .turnin 10447 >>Turn in The Final Code
    .accept 10006 >>Accept Letting Earthbinder Tavgren Know
    .target Tooki
step
    .goto 1952,50.18,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malukaz|r
    .turnin 10023 >>Turn in Patriarch Ironjaw
    .accept 10791 >>Accept Welcoming the Wolf Spirit
    .target Malukaz
step
    #completewith Drop10880x1
    >>|cRXP_LOOT_Cabal Orders|r can drop from |cRXP_ENEMY_Cabal Skirmisher|r, |cRXP_ENEMY_Cabal Spell-weaver|r, |cRXP_ENEMY_Cabal Initiate|r. Use it to start the quest if you get one
    .collect 31707,1,10880 --Cabal Orders (1)
    .accept 10880 >>Accept Cabal Orders
    .use 31707
step
    #label Drop10880x1
    #loop
    .goto 1952,40.96,58.40,0
    .goto 1952,40.96,58.40,40,0
    .goto 1952,39.59,58.60,40,0
    >>Kill |cRXP_ENEMY_Cabal Skirmishers|r
    >>Kill |cRXP_ENEMY_Cabal Spell-weavers|r
    >>Kill |cRXP_ENEMY_Cabal Initiates|r
    .complete 10878,1 --Cabal Skirmisher slain (8)
    .complete 10878,2 --Cabal Spell-weaver slain (4)
    .complete 10878,3 --Cabal Initiate slain (2)
    .mob Cabal Skirmisher
    .mob Cabal Spell-weaver
    .mob Cabal Initiate
step
    #loop
    .goto 1952,52.87,69.08,0
    .goto 1952,52.87,69.08,40,0
    .goto 1952,51.68,72.19,40,0
    >>Kill |cRXP_ENEMY_Wood Mites|r
    .complete 10896,1 --Wood Mite slain (25)
    .mob Wood Mite
step
    .goto 1952,37.84,51.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mekeda|r
    .turnin 10878 >>Turn in Before Darkness Falls
    .target Mekeda
step
    .goto 1952,37.84,51.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mekeda|r
    .turnin 10880 >>Turn in Cabal Orders
    .target Mekeda
    .isOnQuest 10880
step
    .goto 1952,37.84,51.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mekeda|r
    .accept 10881 >>Accept The Shadow Tomb
    .target Mekeda
    .isQuestTurnedIn 10880 --any of: Cabal Orders
    .xp <62,1
step
    .goto 1952,37.86,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakotae|r
    .turnin 10896 >>Turn in The Infested Protectors
    .target Lakotae
step
    .goto 1952,37.74,51.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ethan|r
    .turnin 10852 >>Turn in Missing Friends
    .target Ethan
step
    .goto 1952,37.45,51.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirrik the Awakened|r
    .turnin 10839 >>Turn in Veil Skith: Darkstone of Terokk
    .accept 10848 >>Accept Veil Rhaze: Unliving Evil
    .target Kirrik the Awakened
step
    .goto 1952,37.45,50.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Orglum|r
    .accept 10840 >>Accept The Tomb of Lights
    .accept 10842 >>Accept The Vengeful Harbinger
    .target High Priest Orglum
step
    #loop
    .goto 1952,28.83,52.39,0
    .goto 1952,28.83,52.39,40,0
    .goto 1952,26.98,54.72,40,0
    .goto 1952,26.69,58.28,40,0
    >>Kill |cRXP_ENEMY_Deathtalon Spirits|r
    >>Kill |cRXP_ENEMY_Screeching Spirits|r
    >>Kill |cRXP_ENEMY_Spirit Ravens|r
    .complete 10848,1 --Deathtalon Spirit slain (4)
    .complete 10848,2 --Screeching Spirit slain (4)
    .complete 10848,3 --Spirit Raven slain (2)
    .mob Deathtalon Spirit
    .mob Screeching Spirit
    .mob Spirit Raven
step
    .goto 1952,29.65,51.69
    >>Open the |cRXP_PICK_Cabal Chest|r. Loot it for |cRXP_LOOT_Gavel of K'alen|r
    .complete 10881,2 --Gavel of K'alen (1)
    .isOnQuest 10881
step
    .goto 1952,32.10,51.20
    >>Open the |cRXP_PICK_Cabal Chest|r. Loot it for |cRXP_LOOT_Drape of Arunen|r
    .complete 10881,1 --Drape of Arunen (1)
    .isOnQuest 10881
step
    .goto 1952,31.11,46.65
    >>Open the |cRXP_PICK_Cabal Chest|r. Loot it for |cRXP_LOOT_Scroll of Atalor|r
    .complete 10881,3 --Scroll of Atalor (1)
    .isOnQuest 10881
step
    .goto 1952,30.61,49.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akuno|r
    .accept 10887 >>Accept Escaping the Tomb
    .target Akuno
step
    .goto 1952,37.84,51.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mekeda|r
    .turnin 10887 >>Turn in Escaping the Tomb
    .target Mekeda
step
    .goto 1952,37.45,51.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirrik the Awakened|r
    .turnin 10848 >>Turn in Veil Rhaze: Unliving Evil while you are here
    .isQuestComplete 10848
    .target Kirrik the Awakened
step
    #loop
    .goto 1952,47.23,55.79,0
    .goto 1952,47.23,55.79,40,0
    .goto 1952,49.96,54.54,40,0
    >>Kill |cRXP_ENEMY_Vengeful Harbinger|r
    >>Kill |cRXP_ENEMY_Ethereal Nethermancers|r
    >>Kill |cRXP_ENEMY_Ethereal Plunderers|r
    .complete 10842,1 --Vengeful Harbinger slain (1)
    .complete 10840,1 --Ethereal Nethermancer slain (10)
    .complete 10840,2 --Ethereal Plunderer slain (10)
    .mob Vengeful Harbinger
    .mob Ethereal Nethermancer
    .mob Ethereal Plunderer
step
    .goto 1952,50.88,54.75
    >>Click the |cRXP_PICK_Draenei Ascendant|r
    .turnin 10842 >>Turn in The Vengeful Harbinger while you are here
    .isQuestComplete 10842
step
    #loop
    .goto 1952,44.52,56.18,0
    .goto 1952,44.52,56.18,40,0
    .goto 1952,43.12,50.69,40,0
    >>Kill |cRXP_ENEMY_Bonelashers|r
    .complete 10034,1 --Bonelasher slain (20)
    .mob Bonelasher
step
    .goto 1952,37.84,51.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mekeda|r
    .turnin 10881 >>Turn in The Shadow Tomb
    .target Mekeda
    .isOnQuest 10881
step
    .goto 1952,37.45,51.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirrik the Awakened|r
    .turnin 10848 >>Turn in Veil Rhaze: Unliving Evil
    .accept 10861 >>Accept Veil Lithic: Preemptive Strike
    .target Kirrik the Awakened
step
    .goto 1952,37.45,50.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Orglum|r
    .turnin 10840 >>Turn in The Tomb of Lights
    .target High Priest Orglum
step
    .goto 1952,37.05,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soolaveen|r
    .accept 10030 >>Accept Recover the Bones
    .target Soolaveen
    .xp <63,1
step
    .goto 1952,50.88,54.75
    >>Click the |cRXP_PICK_Draenei Ascendant|r
    .turnin 10842 >>Turn in The Vengeful Harbinger
step
    .goto 1952,37.05,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soolaveen|r
    .accept 10030 >>Accept Recover the Bones
    .target Soolaveen
step
    #completewith next
    .zone 1955 >>Travel to Shattrath City
    .zoneskip 1955
step
    .goto 1955,64.48,15.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'nir|r
    .turnin 10017 >>Turn in Strained Supplies
    .target Sha'nir
step
    #completewith next
    .zone 1952 >>Leave Shattrath City for Terokkar Forest
    .zoneskip 1952
step
    #completewith next
    .hs >>Hearth to Rungor's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1952,49.25,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mawg Grimshot|r
    .turnin 10034 >>Turn in Wanted: Bonelashers Dead!
    .target Mawg Grimshot
step
    .goto 1952,49.25,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mawg Grimshot|r
    .accept 10036 >>Accept Torgos!
    .target Mawg Grimshot
    .xp <63,1
step
    .goto 1952,50.18,46.44
    >>Interact with |cRXP_FRIENDLY_Malukaz|r
    .complete 10791,1 --Malukaz
    .target Malukaz
step
    .goto 1952,50.18,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malukaz|r
    .turnin 10791 >>Turn in Welcoming the Wolf Spirit
    .target Malukaz
step
    .goto 1952,49.25,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mawg Grimshot|r
    .accept 10036 >>Accept Torgos!
    .target Mawg Grimshot
step
    .goto 1952,43.18,51.56
    >>Kill |cRXP_ENEMY_Trachela|r and loot |cRXP_LOOT_Trachela's Carcass|r
    .collect 30618,1,10036,1 --Trachela's Carcass (1)
    .mob Trachela
step
    .goto 1952,27.05,55.66
    >>Kill |cRXP_ENEMY_Torgos|r and loot |cRXP_LOOT_Tail Feather of Torgos|r
    .complete 10036,1 --Tail Feather of Torgos (1)
    .mob Torgos
step
    .goto 1952,19.77,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrath|r
    .turnin 9888 >>Turn in The Impotent Leader
    .target Kilrath
    .isOnQuest 9888
step
    .goto 1952,31.44,75.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Navrin|r
    .accept 10873 >>Accept Taken in the Night
    .target Scout Navrin
step
    .goto 1952,31.00,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ra'vaj|r
    .accept 10913 >>Accept An Improper Burial
    .target Commander Ra'vaj
step
    .goto 1952,31.06,76.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oakun|r
    .accept 10877 >>Accept The Dread Relic
    .target Oakun
step
    .goto 1952,31.27,76.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Letoll|r
    .accept 10922 >>Accept Digging Through Bones
    .target Chief Archaeologist Letoll
step
    .goto 1952,30.12,70.90
    >>Protect the Explorers
    .complete 10922,1 --Protect the Explorers
step
    #loop
    .goto 1952,24.30,71.20,0
    .goto 1952,24.30,71.20,40,0
    .goto 1952,23.56,73.89,40,0
    >>Click the |cRXP_PICK_Cursed Egg|r
    >>Kill |cRXP_ENEMY_Malevolent Hatchlings|r
    .complete 10861,1 --Cursed Egg
    .complete 10861,2 --Malevolent Hatchling (3)
    .mob Malevolent Hatchling
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .turnin 10922 >>Turn in Digging Through Bones
    .accept 10929 >>Accept Fumping
    .target Dwarfowitz
step
    .goto 1952,31.90,76.30
    >>Kill |cRXP_ENEMY_Mature Bone Sifters|r. Loot them for |cRXP_LOOT_Mature Bone Sifter Carcass|r
    .complete 10929,1 --Mature Bone Sifter Carcass (8)
    .mob Mature Bone Sifter
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .turnin 10929 >>Turn in Fumping while you are here
    .isQuestComplete 10929
    .target Dwarfowitz
step
    #loop
    .goto 1952,33.11,74.71,0
    .goto 1952,33.11,74.71,40,0
    .goto 1952,35.51,76.37,40,0
    >>Commander Ra'vaj at the Sha'tari Outpost in the Bone Wastes of Terokkar Forest wants you to burn 8 Slain Auchenai Warriors and 8 Slain Sha'tar Vindicators.
    .complete 10913,1 --Slain Sha'tar Vindicator (8)
    .target Slain Sha'tar Vindicator
step
    #loop
    .goto 1952,35.51,76.37,0
    .goto 1952,35.51,76.37,40,0
    .goto 1952,33.11,74.71,40,0
    >>Commander Ra'vaj at the Sha'tari Outpost in the Bone Wastes of Terokkar Forest wants you to burn 8 Slain Auchenai Warriors and 8 Slain Sha'tar Vindicators.
    .complete 10913,2 --Slain Auchenai Warrior (8)
    .target Slain Auchenai Warrior
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .turnin 10929 >>Turn in Fumping
    .target Dwarfowitz
step
    .goto 1952,31.00,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ra'vaj|r
    .turnin 10913 >>Turn in An Improper Burial
    .accept 10914 >>Accept A Hero Is Needed
    .target Commander Ra'vaj
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .accept 10930 >>Accept The Big Bone Worm
    .target Dwarfowitz
    .xp <63,1
step
    #loop
    .goto 1952,35.91,73.88,0
    .goto 1952,35.91,73.88,40,0
    .goto 1952,34.12,68.53,40,0
    >>Kill |cRXP_ENEMY_Auchenai Initiates|r
    .complete 10914,1 --Auchenai Initiate slain (12)
    .mob Auchenai Initiate
step
    #loop
    .goto 1952,48.60,65.91,0
    .goto 1952,48.60,65.91,40,0
    .goto 1952,49.43,68.32,40,0
    >>Kill |cRXP_ENEMY_Auchenai Doomsayers|r
    .complete 10914,2 --Auchenai Doomsayer slain (5)
    .mob Auchenai Doomsayer
step
    .goto 1952,31.00,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ra'vaj|r
    .turnin 10914 >>Turn in A Hero Is Needed
    .accept 10915 >>Accept The Fallen Exarch
    .target Commander Ra'vaj
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .accept 10930 >>Accept The Big Bone Worm
    .target Dwarfowitz
    .xp <63,1
step
    .goto 1952,35.64,65.61
    >>Kill |cRXP_ENEMY_Reanimated Exarch|r
    .complete 10915,1 --Contents of the Auchenai Coffin destroyed (1)
    .mob Reanimated Exarch
step
    #completewith Along142
    >>As you go: Pick up |cRXP_PICK_Restless Bones|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10030,1 --Restless Bones (10)
step
    #label Along142
    .goto 1952,37.45,51.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirrik the Awakened|r
    .turnin 10861 >>Turn in Veil Lithic: Preemptive Strike
    .accept 10874 >>Accept Veil Shalas: Signal Fires
    .target Kirrik the Awakened
step
    .goto 1952,49.25,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mawg Grimshot|r
    .turnin 10036 >>Turn in Torgos!
    .target Mawg Grimshot
step
    .goto 1952,53.85,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skywing|r
    .accept 10898 >>Accept Skywing
    .target Skywing
step
    #completewith Along145
    >>As you go: Click the |cRXP_PICK_Violet Signal Fire|r. Click the |cRXP_PICK_Emerald Signal Fire|r. |cRXP_WARN_Anything left is finished later|r
    .complete 10874,3 --Violet Fire Extinguished
    .complete 10874,2 --Emerald Fire Extinguished
step
    #label Along145
    .goto 1952,55.66,69.49
    >>Escort Skywing
    .complete 10898,1 --Escort Skywing
step
    #loop
    .goto 1952,55.46,69.77,0
    .goto 1952,55.46,69.77,40,0
    .goto 1952,56.14,72.50,40,0
    >>Click the |cRXP_PICK_Violet Signal Fire|r
    >>Click the |cRXP_PICK_Emerald Signal Fire|r
    >>Click the |cRXP_PICK_Sapphire Signal Fire|r
    >>Click the |cRXP_PICK_Bloodstone Signal Fire|r
    .complete 10874,3 --Violet Fire Extinguished
    .complete 10874,2 --Emerald Fire Extinguished
    .complete 10874,1 --Sapphire Fire Extinguished
    .complete 10874,4 --Bloodstone Fire Extinguished
step
    #completewith Along147
    >>As you go: Pick up |cRXP_PICK_Restless Bones|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10030,1 --Restless Bones (10)
step
    #label Along147
    .goto 1952,49.71,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Haylen|r
    .accept 10920 >>Accept For the Fallen
    .target Vindicator Haylen
step
    #loop
    .goto 1952,52.66,78.53,0
    .goto 1952,52.66,78.53,40,0
    .goto 1952,50.78,81.64,40,0
    >>Kill |cRXP_ENEMY_Freed Sha'tar Warriors|r and |cRXP_ENEMY_Netherweb Victims|r
    .complete 10873,1 --Freed Sha'tar Warrior (6)
    .mob Freed Sha'tar Warrior
    .mob Netherweb Victim
step
    #loop
    .goto 1952,54.91,61.74,0
    .goto 1952,54.91,61.74,40,0
    .goto 1952,54.93,57.98,40,0
    >>Kill |cRXP_ENEMY_Dreadfang Widows|r
    .complete 10920,1 --Dreadfang Widow slain (20)
    .mob Dreadfang Widow
step
    #completewith Along153
    >>As you go: Pick up |cRXP_PICK_Restless Bones|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 10030,1 --Restless Bones (10)
step
    .goto 1952,49.71,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Haylen|r
    .turnin 10920 >>Turn in For the Fallen
    .accept 10921 >>Accept Terokkarantula
    .target Vindicator Haylen
step
    .goto 1952,54.27,81.82
    >>Kill |cRXP_ENEMY_Terokkarantula|r
    .complete 10921,1 --Terokkarantula slain (1)
    .mob Terokkarantula
step
    .goto 1952,49.71,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Haylen|r
    .turnin 10921 >>Turn in Terokkarantula
    .target Vindicator Haylen
step
    #label Along153
    .goto 1952,43.92,76.40
    >>Open the |cRXP_PICK_Massive Treasure Chest|r. Loot it for |cRXP_LOOT_Dread Relic|r
    .complete 10877,1 --Dread Relic (1)
step
    #loop
    .goto 1952,32.42,63.90,0
    .goto 1952,32.42,63.90,40,0
    .goto 1952,27.48,60.19,40,0
    .goto 1952,31.21,54.64,40,0
    >>Pick up |cRXP_PICK_Restless Bones|r from the ground
    .complete 10030,1 --Restless Bones (10)
step
    .goto 1952,35.15,66.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ramdor the Mad|r
    .turnin 10030 >>Turn in Recover the Bones
    .accept 10031 >>Accept Helping the Lost Find Their Way
    .target Ramdor the Mad
step
    #loop
    .goto 1952,31.40,64.82,0
    .goto 1952,31.40,64.82,40,0
    .goto 1952,31.01,70.92,40,0
    >>Kill |cRXP_ENEMY_Lost Spirits|r
    .complete 10031,1 --Lost Spirit slain (10)
    .mob Lost Spirit
step
    #loop
    .goto 1952,40.81,77.19,0
    .goto 1952,40.81,77.19,40,0
    .goto 1952,40.61,79.85,40,0
    >>Kill |cRXP_ENEMY_Broken Skeletons|r
    .complete 10031,2 --Broken Skeleton slain (10)
    .mob Broken Skeleton
step
    .goto 1952,31.44,75.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Navrin|r
    .turnin 10873 >>Turn in Taken in the Night
    .target Scout Navrin
step
    .goto 1952,31.00,76.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ra'vaj|r
    .turnin 10915 >>Turn in The Fallen Exarch
    .target Commander Ra'vaj
step
    .goto 1952,31.06,76.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oakun|r
    .turnin 10877 >>Turn in The Dread Relic
    .target Oakun
step
    .xp 63 >>Grind to level 63 (Evil Draws Near needs it)
step
    .goto 1952,31.06,76.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oakun|r
    .accept 10923 >>Accept Evil Draws Near
    .target Oakun
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .accept 10930 >>Accept The Big Bone Worm
    .target Dwarfowitz
    .xp <63,1
step
    #loop
    .goto 1952,48.59,67.01,0
    .goto 1952,48.59,67.01,40,0
    .goto 1952,49.60,67.70,40,0
    >>Kill |cRXP_ENEMY_Auchenai Death-Speakers|r and |cRXP_ENEMY_Auchenai Doomsayers|r. Loot them for |cRXP_LOOT_Doom Skull|r
    .collect 31812,1,10923,1 --Doom Skull (1)
    .mob Auchenai Death-Speaker
    .mob Auchenai Doomsayer
step
    .goto 1952,48.70,67.20
    >>Kill |cRXP_ENEMY_Teribus the Cursed|r
    .complete 10923,1 --Teribus the Cursed slain (1)
    .mob Teribus the Cursed
step
    .goto 1952,39.63,71.27
    >>Kill |cRXP_ENEMY_Levixus|r and loot |cRXP_LOOT_The Book of the Dead|r
    .complete 10253,1 --The Book of the Dead (1)
    .mob Levixus
    .isOnQuest 10253
step
    .goto 1952,31.06,76.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oakun|r
    .turnin 10923 >>Turn in Evil Draws Near
    .target Oakun
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .accept 10930 >>Accept The Big Bone Worm
    .target Dwarfowitz
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .turnin 10930 >>Turn in The Big Bone Worm
    .target Dwarfowitz
    .isQuestComplete 10930
step
    .goto 1952,35.15,66.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ramdor the Mad|r
    .turnin 10253 >>Turn in Levixus the Soul Caller
    .target Ramdor the Mad
    .isOnQuest 10253
step
    .goto 1952,37.05,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soolaveen|r
    .turnin 10031 >>Turn in Helping the Lost Find Their Way
    .target Soolaveen
step
    .goto 1952,37.45,51.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirrik the Awakened|r
    .turnin 10874 >>Turn in Veil Shalas: Signal Fires
    .accept 10889 >>Accept Return to Shattrath
    .target Kirrik the Awakened
step
    .goto 1952,44.33,26.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthbinder Tavgren|r
    .turnin 10006 >>Turn in Letting Earthbinder Tavgren Know
    .target Earthbinder Tavgren
step
    #completewith next
    .zone 1955 >>Travel to Shattrath City
    .zoneskip 1955
step
    .goto 1955,52.54,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilak the Redeemed|r
    .turnin 10889 >>Turn in Return to Shattrath
    .turnin 10898 >>Turn in Skywing
    .target Rilak the Redeemed
step
    .goto 1955,51.74,20.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Defender Grashna|r
    .accept 10879 >>Accept The Skettis Offensive
    .target Defender Grashna
step
    .goto 1955,51.62,20.69
    >>Attack thwarted
    .complete 10879,1 --Attack thwarted
step
    .goto 1955,52.54,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilak the Redeemed|r
    .turnin 10879 >>Turn in The Skettis Offensive
    .target Rilak the Redeemed
step
    .goto 1955,77.26,34.85
    >>Kill |cRXP_ENEMY_Sal'salabim|r
    .complete 10004,1 --Sal'salabim slain (1)
    .mob Sal'salabim
    .isOnQuest 10004
step
    .goto 1955,77.26,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sal'salabim|r
    .turnin 10004 >>Turn in Patience and Understanding
    .target Sal'salabim
    .isOnQuest 10004
step
    +|cRXP_WARN_That is all of Terokkar Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Big Bone Worm
step
    +|cRXP_WARN_Suggested next zones at level 63|r: |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.8 levels of quests, starting around Nazgrel). Completing this step loads the guide for Hellfire Peninsula --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Terokkar Forest is planned from level 66.|r Load its guide for level 66 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 62 - 70 Terokkar Forest
#subweight -62
#name 66-67 Terokkar Forest
--RouteBuilder:next
#next Zone Routes (Horde)\60-62 Hellfire Peninsula: around Nazgrel

step
    .goto 1952,44.07,64.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isfar|r
    .accept 10098 >>Accept Terokk's Legacy
    .target Isfar
step
    .goto 1952,49.71,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Haylen|r
    .accept 10926 >>Accept Return to Sha'tari Base Camp
    .target Vindicator Haylen
    .isQuestTurnedIn 10921 --any of: Terokkarantula
step
    .goto 1952,35.09,65.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ha'lei|r
    .accept 10227 >>Accept I See Dead Draenei
    .target Ha'lei
step
    .goto 1952,35.15,66.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ramdor the Mad|r
    .turnin 10227 >>Turn in I See Dead Draenei
    .accept 10228 >>Accept Ezekiel
    .target Ramdor the Mad
step
    .goto 1952,31.44,75.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Navrin|r
    .turnin 10926 >>Turn in Return to Sha'tari Base Camp
    .target Scout Navrin
    .isOnQuest 10926
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .turnin 10930 >>Turn in The Big Bone Worm
    .target Dwarfowitz
    .isQuestComplete 10930
step
    .goto 1952,19.77,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrath|r
    .accept 9889 >>Accept Don't Kill the Fat One
    .target Kilrath
    .isQuestTurnedIn 9888 --any of: The Impotent Leader
    .xp <64,1
step
    #loop
    .goto 1952,20.19,62.86,0
    .goto 1952,20.19,62.86,40,0
    .goto 1952,19.80,65.23,40,0
    >>Kill |cRXP_ENEMY_Boulderfist Invaders|r
    .complete 9889,1 --Boulderfist Invader slain (10)
    .mob Boulderfist Invader
    .isOnQuest 9889
step
    .goto 1952,20.06,63.24
    >>Kill |cRXP_ENEMY_Unkor the Ruthless|r
    .complete 9889,2 --Unkor the Ruthless slain (1)
    .mob Unkor the Ruthless
    .isOnQuest 9889
step
    .goto 1952,20.06,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Unkor the Ruthless|r
    .turnin 9889 >>Turn in Don't Kill the Fat One
    .target Unkor the Ruthless
    .isOnQuest 9889
step
    .goto 1952,20.06,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Unkor the Ruthless|r
    .accept 9890 >>Accept Success!
    .target Unkor the Ruthless
    .isQuestTurnedIn 9889 --any of: Don't Kill the Fat One
    .xp <64,1
step
    .goto 1952,19.77,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrath|r
    .turnin 9890 >>Turn in Success!
    .target Kilrath
    .isOnQuest 9890
step
    .goto 1952,19.77,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrath|r
    .accept 9891 >>Accept Because Kilrath is a Coward
    .target Kilrath
    .isQuestTurnedIn 9890 --any of: Success!
    .xp <64,1
step
    #completewith next
    .zone 1955 >>Travel to Shattrath City
    .zoneskip 1955
step
    .goto 1955,57.98,15.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oloraak|r
    .accept 10180 >>Accept Can't Stay Away
    .target Oloraak
step
    .goto 1955,54.75,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    .turnin 10551 >>Turn in Allegiance to the Aldor
    .target Khadgar
    .isOnQuest 10551
step
    #loop
    .goto 1955,60.86,51.22,0
    .goto 1955,60.86,51.22,40,0
    .goto 1955,53.67,57.02,40,0
    .goto 1955,61.15,39.01,40,0
    .goto 1955,58.13,34.57,40,0
    .goto 1955,54.63,32.79,40,0
    .goto 1955,50.45,34.40,40,0
    .goto 1955,47.04,38.76,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ezekiel|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 10228 >>Turn in Ezekiel
    .accept 10231 >>Accept What Book? I Don't See Any Book.
    .unitscan Ezekiel
step
    .goto 1955,43.63,29.76
    >>Kill |cRXP_ENEMY_"Dirty" Larry|r
    .complete 10231,1 --"Dirty" Larry slain (1)
    .mob "Dirty" Larry
step
    .goto 1955,43.63,29.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Dirty" Larry|r
    .turnin 10231 >>Turn in What Book? I Don't See Any Book.
    .accept 10251 >>Accept The Master's Grand Design?
    .target "Dirty" Larry
step
    #completewith next
    .zone 1952 >>Leave Shattrath City for Terokkar Forest
    .zoneskip 1952
step
    .goto 1952,44.07,64.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isfar|r
    .turnin 10180 >>Turn in Can't Stay Away
    .accept 10097 >>Accept Brother Against Brother
    .target Isfar
step
    .goto 1952,44.07,64.96
    >>Kill Darkweaver Syth in the Sethekk halls, then free Lakka from captivity. Return to Isfar outside the Sethekk Halls when you've completed the rescue.
    .complete 10097,2 --Free Lakka (1)
step
    .goto 1952,44.07,64.96
    >>Kill Darkweaver Syth in the Sethekk halls, then free Lakka from captivity. Return to Isfar outside the Sethekk Halls when you've completed the rescue.
    .complete 10097,1 --Darkweaver Syth (1)
step
    .goto 1952,44.07,64.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isfar|r
    .turnin 10097 >>Turn in Brother Against Brother
    .target Isfar
step
    .goto 1952,44.07,64.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isfar|r
    .turnin 10098 >>Turn in Terokk's Legacy
    .target Isfar
    .isQuestComplete 10098
step
    +|cRXP_WARN_That is all of Terokkar Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Nagrand|r: Because Kilrath is a Coward, The Master's Grand Design?
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Terokk's Legacy
step
    +|cRXP_WARN_Suggested next zones at level 66|r: |cRXP_FRIENDLY_Hellfire Peninsula|r (about 0.7 levels of quests, starting around Nazgrel). Completing this step loads the guide for Hellfire Peninsula --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Terokkar Forest is planned from level 69.|r Load its guide for level 69 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 62 - 70 Terokkar Forest
#subweight -62
#name 69-70 Terokkar Forest
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\69-70 Shadowmoon Valley

step
    .goto 1952,39.94,72.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spy Grik'tha|r
    .accept 10178 >>Accept Find Spy To'gun
    .target Spy Grik'tha
step
    .goto 1952,44.07,64.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Isfar|r
    .turnin 10098 >>Turn in Terokk's Legacy
    .target Isfar
    .isQuestComplete 10098
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .accept 10666 >>Accept The Lexicon Demonica
    .accept 10665 >>Accept Fresh From the Mechanar
    .target David Wayne
    .isQuestTurnedIn 10664 --any of: Additional Materials
    .xp <67,1
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .accept 10664 >>Accept Additional Materials
    .target David Wayne
    .isQuestTurnedIn 10662,10663 --any of: The Hermit Smith, The Hermit Smith
    .xp <67,1
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .accept 10667 >>Accept Underworld Loam
    .accept 10670 >>Accept Tear of the Earthmother
    .target David Wayne
    .isQuestTurnedIn 10665 --Fresh From the Mechanar
    .isQuestTurnedIn 10666 --The Lexicon Demonica
    .xp <67,1
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .turnin 10664 >>Turn in Additional Materials
    .target David Wayne
    .isQuestComplete 10664
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .turnin 10665 >>Turn in Fresh From the Mechanar
    .target David Wayne
    .isQuestComplete 10665
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .turnin 10666 >>Turn in The Lexicon Demonica
    .target David Wayne
    .isQuestComplete 10666
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .turnin 10667 >>Turn in Underworld Loam
    .target David Wayne
    .isQuestComplete 10667
step
    .goto 1952,77.58,38.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Wayne|r
    .turnin 10670 >>Turn in Tear of the Earthmother
    .target David Wayne
    .isQuestComplete 10670
step
    #completewith next
    .zone 1955 >>Travel to Shattrath City
    .zoneskip 1955
step
    .goto 1955,64.68,70.71
    >>Kill |cRXP_ENEMY_Fantei|r and loot |cRXP_LOOT_Demon Warding Totem|r
    .complete 10664,3 --Demon Warding Totem (1)
    .mob Fantei
    .isOnQuest 10664
step
    .goto 1955,64.68,70.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fantei|r
    .accept 11046 >>Accept Chief Apothecary Hildagard
    .target Fantei
step
    .goto 1955,63.95,70.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias the Filth Gorger|r
    .accept 10550 >>Accept The Bundle of Bloodthistle
    .target Tobias the Filth Gorger
    .isQuestTurnedIn 10547 --any of: Of Thistleheads and Eggs...
    .xp <68,1
step
    .goto 1955,50.24,45.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spymistress Mehlisah Highcrown|r
    .accept 10177 >>Accept Trouble at Auchindoun
    .target Spymistress Mehlisah Highcrown
step
    .goto 1955,54.75,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    .turnin 10551 >>Turn in Allegiance to the Aldor
    .target Khadgar
    .isOnQuest 10551
step
    .goto 1955,54.75,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    .accept 9832 >>Accept The Second and Third Fragments
    .target Khadgar
    .isQuestTurnedIn 9831 --any of: Entry Into Karazhan
    .xp <68,1
step
    .goto 1955,54.75,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khadgar|r
    .turnin 9832 >>Turn in The Second and Third Fragments
    .target Khadgar
    .isQuestComplete 9832
step
    .goto 1955,77.26,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sal'salabim|r
    .accept 10009 >>Accept Crackin' Some Skulls
    .target Sal'salabim
    .isQuestTurnedIn 10004 --any of: Patience and Understanding
    .xp <66,1
step
    .goto 1955,77.26,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sal'salabim|r
    .accept 10010 >>Accept It's Just That Easy?
    .target Sal'salabim
    .isQuestTurnedIn 10009 --any of: Crackin' Some Skulls
    .xp <66,1
step
    .goto 1955,77.26,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sal'salabim|r
    .turnin 10009 >>Turn in Crackin' Some Skulls
    .target Sal'salabim
    .isQuestComplete 10009
step
    .goto 1955,74.99,31.40
    >>Kill |cRXP_ENEMY_Raliq the Drunk|r and loot |cRXP_LOOT_Raliq's Debt|r
    .complete 10009,1 --Raliq's Debt (1)
    .mob Raliq the Drunk
    .isOnQuest 10009
step
    #completewith next
    .zone 1952 >>Leave Shattrath City for Terokkar Forest
    .zoneskip 1952
step
    .goto 1952,40.04,72.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Commander Mahfuun|r
    .turnin 10177 >>Turn in Trouble at Auchindoun
    .accept 10094 >>Accept The Codex of Blood
    .target Field Commander Mahfuun
step
    .goto 1952,30.98,76.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwarfowitz|r
    .turnin 10930 >>Turn in The Big Bone Worm
    .target Dwarfowitz
    .isQuestComplete 10930
step
    .goto 1952,27.26,57.70
    >>Kill |cRXP_ENEMY_Floon|r and loot |cRXP_LOOT_Floon's Debt|r
    .complete 10009,3 --Floon's Debt (1)
    .mob Floon
    .isOnQuest 10009
step
    .goto 1952,30.95,42.36
    >>Loot the |cRXP_PICK_Heavy Fel Iron Chests|r for |cRXP_LOOT_Heavy Knothide Leather|r
    .complete 10664,2 --Heavy Knothide Leather (4)
    .isOnQuest 10664
step
    +|cRXP_WARN_That is all of Terokkar Forest for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Nagrand|r: It's Just That Easy?
    >>|cRXP_FRIENDLY_Shadowmoon Valley|r: Chief Apothecary Hildagard, The Bundle of Bloodthistle
    >>|cRXP_FRIENDLY_another zone|r: The Codex of Blood, Find Spy To'gun
step
    +|cRXP_WARN_End of the Terokkar Forest route.|r
step
    +|cRXP_WARN_Suggested next zones at level 69|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.2 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Shadowmoon Valley|r (about 0.7 levels of quests, starting around Blood Guard Gulmok; 4 quests from here hand in there). Completing this step loads the guide for Netherstorm --RouteBuilder:next
]])
