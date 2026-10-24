-- 10-17 Azshara: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 10, 13, 16).
-- Split into 3 guides, listed under "10 - 17 Azshara" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Azshara.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 17 Azshara
#subweight -10
#name 10-11 Azshara
--RouteBuilder:next
#next Zone Routes (Alliance)\10-13 Darkshore: around Ranger Glynda Nal'Shea;Zone Routes (Alliance)\11-15 Loch Modan: around Captain Rugelfuss

step
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .accept 14128 >>Accept Return of the Highborne?
    .target Ag'tor Bloodfist
    .isQuestTurnedIn 14127 --any of: Return of the Highborne?
    .xp <8,1
step
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .accept 14118 >>Accept Venison for the Troops
    .accept 14117 >>Accept The Eyes of Ashenvale
    .target Ag'tor Bloodfist
step
    #loop
    .goto 76,26.09,74.40,0
    .goto 76,26.09,74.40,40,0
    .goto 76,24.30,75.16,40,0
    .goto 76,28.33,73.75,40,0
    >>Kill |cRXP_ENEMY_Weakened Mosshoof Stags|r. Loot them for |cRXP_LOOT_Slab of Venison|r
    >>Kill |cRXP_ENEMY_Talrendis Scouts|r
    .complete 14118,1 --Slab of Venison (15)
    .complete 14117,1 --Talrendis Scout slain (8)
    .mob Weakened Mosshoof Stag
    .mob Talrendis Scout
step
    .goto 76,26.82,76.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r
    .turnin 14117 >>Turn in The Eyes of Ashenvale
    .turnin 14118 >>Turn in Venison for the Troops
    .target Ag'tor Bloodfist
step
    .goto 76,27.00,77.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Labor Captain Grabbit|r
    .accept 14162 >>Accept Report to Horzak
    .target Labor Captain Grabbit
    .isQuestTurnedIn 14155 --any of: Arborcide
    .xp <9,1
step
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malynea Skyreaver|r
    .turnin 14128 >>Turn in Return of the Highborne?
    .target Malynea Skyreaver
    .isOnQuest 14128
step
    .goto 76,29.15,66.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horzak Zignibble|r
    .turnin 14162 >>Turn in Report to Horzak
    .target Horzak Zignibble
    .isOnQuest 14162
step
    +|cRXP_WARN_Suggested next zones at level 10|r: |cRXP_FRIENDLY_Darkshore|r (about 1.1 levels of quests, starting around Ranger Glynda Nal'Shea), |cRXP_FRIENDLY_Loch Modan|r (about 0.5 levels of quests, starting around Captain Rugelfuss). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Azshara is planned from level 13.|r Load its guide for level 13 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 17 Azshara
#subweight -10
#name 13-14 Azshara
--RouteBuilder:next
#next Zone Routes (Alliance)\13-15 Darkshore: around Keeper Karithus;Zone Routes (Alliance)\11-15 Loch Modan: around Captain Rugelfuss

step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twistex Happytongs|r
    .accept 14322 >>Accept Bad Science! Bad!
    .target Twistex Happytongs
step
    #loop
    .goto 76,45.17,76.61,0
    .goto 76,45.17,76.61,40,0
    .goto 76,44.65,79.49,40,0
    .goto 76,42.81,80.27,40,0
    >>Kill |cRXP_ENEMY_Static-Charged Hippogryphs|r
    .complete 14322,1 --Static-Charged Hippogryph slain (8)
    .mob Static-Charged Hippogryph
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Twistex Happytongs|r
    .turnin 14322 >>Turn in Bad Science! Bad!
    .accept 14442 >>Accept My Favorite Subject
    .target Twistex Happytongs
step
    .goto 76,42.23,76.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Subject Nine|r
    .turnin 14442 >>Turn in My Favorite Subject
    .target Subject Nine
step
    .goto 76,29.72,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Custer Clubnik|r
    .accept 14424 >>Accept Need More Science
    .target Custer Clubnik
    .isQuestTurnedIn 14423 --any of: Dozercism
    .xp <11,1
step
    .goto 76,39.14,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruckus|r
    .accept 24437 >>Accept First Come, First Served
    .target Ruckus
step
    .goto 76,43.87,59.92
    >>Plant Ruckus' Territorial Claim Flag next to the prime real estate locations along the Shattered Strand.
    .complete 24437,1 --Real Estate Bunny (Pagoda)
    .target Real Estate Bunny (Pagoda)
step
    .goto 76,43.60,43.43
    >>Plant Ruckus' Territorial Claim Flag next to the prime real estate locations along the Shattered Strand.
    .complete 24437,2 --Real Estate Bunny (Tower)
    .target Real Estate Bunny (Tower)
step
    .goto 76,45.46,38.51
    >>Plant Ruckus' Territorial Claim Flag next to the prime real estate locations along the Shattered Strand.
    .complete 24437,3 --Real Estate Bunny (Vista)
    .target Real Estate Bunny (Vista)
step
    .goto 76,39.14,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruckus|r
    .turnin 24437 >>Turn in First Come, First Served
    .target Ruckus
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Assistant Greely|r
    .turnin 14424 >>Turn in Need More Science
    .target Assistant Greely
    .isOnQuest 14424
step
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobart Grapplehammer|r
    .accept 24458 >>Accept A Hello to Arms
    .target Hobart Grapplehammer
    .isQuestTurnedIn 14388 --any of: Azsharite Experiment Number Two
    .xp <13,1
step
    .goto 76,60.55,50.88
    >>Deliver the Armed Azsharite Core to Bleenik Fizzlefuse at Bilgewater Harbor. Speak with Friz Groundspin for a free airlift.
    .complete 24458,1 --Bleenik Fizzlefuse
    .target Bleenik Fizzlefuse
    .isOnQuest 24458
step
    .goto 76,60.55,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bleenik Fizzlefuse|r
    .turnin 24458 >>Turn in A Hello to Arms
    .target Bleenik Fizzlefuse
    .isOnQuest 24458
step
    +|cRXP_WARN_Suggested next zones at level 13|r: |cRXP_FRIENDLY_Darkshore|r (about 1.0 levels of quests, starting around Keeper Karithus), |cRXP_FRIENDLY_Loch Modan|r (about 0.6 levels of quests, starting around Captain Rugelfuss). Completing this step loads the guide for Darkshore --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Azshara is planned from level 16.|r Load its guide for level 16 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 10 - 17 Azshara
#subweight -10
#name 16-17 Azshara: around Haggrum Bloodfist
--RouteBuilder:next
#next Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step
    .goto 76,42.41,23.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .accept 14431 >>Accept The Blackmaw Scar
    .target Haggrum Bloodfist
step
    #loop
    .goto 76,38.26,27.33,0
    .goto 76,38.26,27.33,40,0
    .goto 76,37.39,32.77,40,0
    >>Kill |cRXP_ENEMY_Talrendis Biologists|r
    >>Kill |cRXP_ENEMY_Talrendis Biologist|r and loot |cRXP_LOOT_Blackmaw Intelligence|r
    .complete 14431,1 --Talrendis Biologist slain (8)
    .complete 14431,2 --Blackmaw Intelligence (1)
    .mob Talrendis Biologist
step
    .goto 76,42.41,23.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14431 >>Turn in The Blackmaw Scar
    .accept 14433 >>Accept Diplomacy by Another Means
    .accept 14432 >>Accept A Pale Brew
    .target Haggrum Bloodfist
step
    #loop
    .goto 76,34.18,32.11,0
    .goto 76,34.18,32.11,40,0
    .goto 76,31.41,30.78,40,0
    >>Kill |cRXP_ENEMY_Blackmaw Shamans|r, |cRXP_ENEMY_Blackmaw Warriors|r and |cRXP_ENEMY_Blackmaw Pathfinders|r. Loot them for |cRXP_LOOT_Briaroot Brew|r. It can also be picked up from |cRXP_PICK_Briaroot Brew|r on the ground
    >>Kill |cRXP_ENEMY_Talrendis Ambassador|r and loot |cRXP_LOOT_Ambassador's Robes|r
    .complete 14432,1 --Briaroot Brew (10)
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Blackmaw Shaman
    .mob Blackmaw Warrior
    .mob Blackmaw Pathfinder
    .mob Talrendis Ambassador
step
    .goto 76,29.81,38.56
    >>Open the |cRXP_PICK_Important Documents|r. Loot it for |cRXP_LOOT_Blackmaw Meeting Agenda|r
    .complete 14433,1 --Blackmaw Meeting Agenda (1)
step
    .goto 76,42.41,23.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14433 >>Turn in Diplomacy by Another Means
    .turnin 14432 >>Turn in A Pale Brew
    .accept 14435 >>Accept The Blackmaw Doublecross
    .target Haggrum Bloodfist
step
    #loop
    .goto 76,33.58,31.72,0
    .goto 76,33.58,31.72,40,0
    .goto 76,31.49,30.43,40,0
    >>Kill |cRXP_ENEMY_Blackmaw Shamans|r
    >>Kill |cRXP_ENEMY_Blackmaw Warriors|r
    >>Kill |cRXP_ENEMY_Ungarl|r
    .complete 14435,3 --Blackmaw Shaman slain (4)
    .complete 14435,2 --Blackmaw Warrior slain (4)
    .complete 14435,1 --Ungarl slain (1)
    .mob Blackmaw Shaman
    .mob Blackmaw Warrior
    .mob Ungarl
step
    .goto 76,42.41,23.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haggrum Bloodfist|r
    .turnin 14435 >>Turn in The Blackmaw Doublecross
    .target Haggrum Bloodfist
step
    +|cRXP_WARN_End of the Azshara route.|r
step
    +|cRXP_WARN_Suggested next zones at level 16|r: |cRXP_FRIENDLY_Darkshore|r (about 0.9 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Darkshore --RouteBuilder:next
]])
