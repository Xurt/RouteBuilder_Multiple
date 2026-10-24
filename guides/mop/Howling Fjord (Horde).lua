-- 70-72 Howling Fjord: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 70, 78).
-- Split into 2 guides, listed under "70 - 79 Howling Fjord" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Howling Fjord.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 70 - 79 Howling Fjord
#subweight -70
#name 70-72 Howling Fjord: around Lurielle
--RouteBuilder:next
#next Zone Routes (Horde)\68-70 Netherstorm: around Image of Archmage Vargoth;Zone Routes (Horde)\72-75 Dragonblight

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.55,28.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lysander|r
    .accept 11167 >>Accept The New Plague
    .target Apothecary Lysander
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,79.04,29.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adeline Chambers|r
    .accept 29609 >>Accept Friends in Dalaran
    .target Adeline Chambers
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,79.15,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pontius|r
    .accept 11227 >>Accept Let Them Eat Crow
    .target Pontius
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.61,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Anselm|r
    .accept 11270 >>Accept War is Hell
    .target High Executor Anselm
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Alliance Corpses|r, |cRXP_ENEMY_Forsaken Corpses|r, |cRXP_ENEMY_North Fleet Corpses|r and |cRXP_ENEMY_Fallen Combatants|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11270,1 --Alliance Corpse (10)
    .mob Alliance Corpse
    .mob Forsaken Corpse
    .mob North Fleet Corpse
    .mob Fallen Combatant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along4
    #loop
    .goto 117,75.11,31.61,0
    .goto 117,75.11,31.61,40,0
    .goto 117,74.33,34.49,40,0
    >>Kill |cRXP_ENEMY_Fjord Crow|r and loot |cRXP_LOOT_Crow Meat|r
    .collect 33238,1,11227,1 --Crow Meat (1)
    .mob Fjord Crow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,79.15,31.23
    >>Pontius, the kennel keeper at Vengeance Landing, wants you to use the Plaguehound Cage to summon a Hungry Plaguehound and feed it Crow Meat from Fjord Crows west of Vengeance Landing.
    .complete 11227,1 --Hungry Plaguehound Counter (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,79.15,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pontius|r
    .turnin 11227 >>Turn in Let Them Eat Crow while you are here
    .isQuestComplete 11227
    .target Pontius
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,74.79,31.60,0
    .goto 117,74.79,31.60,40,0
    .goto 117,75.07,33.92,40,0
    >>Kill |cRXP_ENEMY_Alliance Corpses|r, |cRXP_ENEMY_Forsaken Corpses|r, |cRXP_ENEMY_North Fleet Corpses|r and |cRXP_ENEMY_Fallen Combatants|r
    .complete 11270,1 --Alliance Corpse (10)
    .mob Alliance Corpse
    .mob Forsaken Corpse
    .mob North Fleet Corpse
    .mob Fallen Combatant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,80.92,35.53
    >>Loot the |cRXP_PICK_Plague Containers|r for |cRXP_LOOT_Intact Plague Container|r
    .complete 11167,1 --Intact Plague Container (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.61,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Anselm|r
    .turnin 11270 >>Turn in War is Hell
    .accept 11221 >>Accept Reports from the Field
    .target High Executor Anselm
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,79.15,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pontius|r
    .turnin 11227 >>Turn in Let Them Eat Crow
    .accept 11253 >>Accept Sniff Out the Enemy
    .target Pontius
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.55,28.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lysander|r
    .turnin 11167 >>Turn in The New Plague
    .accept 11168 >>Accept Spiking the Mix
    .target Apothecary Lysander
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,79.63,25.57,0
    .goto 117,79.63,25.57,40,0
    .goto 117,79.11,23.51,40,0
    >>Kill |cRXP_ENEMY_Giant Tidecrawlers|r. Loot them for |cRXP_LOOT_Giant Toxin Gland|r
    .complete 11168,1 --Giant Toxin Gland (3)
    .mob Giant Tidecrawler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,75.93,19.74
    >>Click the |cRXP_PICK_Dragonskin Scroll|r
    .turnin 11253 >>Turn in Sniff Out the Enemy
    .accept 11254 >>Accept The Dragonskin Map
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.55,28.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lysander|r
    .turnin 11168 >>Turn in Spiking the Mix
    .target Apothecary Lysander
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.61,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Anselm|r
    .turnin 11254 >>Turn in The Dragonskin Map
    .accept 11295 >>Accept The Offensive Begins
    .target High Executor Anselm
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.68,37.13
    >>Kill |cRXP_ENEMY_Deathstalker Razael|r
    >>Kill |cRXP_ENEMY_Dark Ranger Lyana|r
    .complete 11221,1 --Deathstalker Razael slain (1)
    .complete 11221,2 --Dark Ranger Lyana slain (1)
    .mob Deathstalker Razael
    .mob Dark Ranger Lyana
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.61,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Anselm|r
    .turnin 11221 >>Turn in Reports from the Field
    .accept 11229 >>Accept The Windrunner Fleet
    .target High Executor Anselm
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,84.66,36.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Harker|r
    .turnin 11229 >>Turn in The Windrunner Fleet
    .accept 11230 >>Accept Ambushed!
    .target Captain Harker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,84.02,36.69
    >>Kill |cRXP_ENEMY_North Fleet Marines|r
    .complete 11230,1 --North Fleet Marine slain (15)
    .mob North Fleet Marine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,84.66,36.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Harker|r
    .turnin 11230 >>Turn in Ambushed!
    .accept 11232 >>Accept Guide Our Sights
    .target Captain Harker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,80.32,38.17
    >>Kill |cRXP_ENEMY_Westguard Cannon Credit Trigger East|r
    >>Kill |cRXP_ENEMY_Westguard Cannon Credit Trigger West|r
    .complete 11232,1 --Westguard Cannon Credit Trigger East slain (1)
    .complete 11232,2 --Westguard Cannon Credit Trigger West slain (1)
    .mob Westguard Cannon Credit Trigger East
    .mob Westguard Cannon Credit Trigger West
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.68,37.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Lyana|r
    .turnin 11232 >>Turn in Guide Our Sights
    .accept 11233 >>Accept Landing the Killing Blow
    .target Dark Ranger Lyana
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,83.20,43.15
    >>Kill |cRXP_ENEMY_Lieutenant Celeyne|r
    .complete 11233,2 --Lieutenant Celeyne slain (1)
    .mob Lieutenant Celeyne
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,83.23,43.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Hanes|r
    .accept 11241 >>Accept Trail of Fire
    .target Apothecary Hanes
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.72,37.23
    >>Rescue Apothecary Hanes
    .complete 11241,1 --Rescue Apothecary Hanes
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,81.50,43.38
    >>Kill |cRXP_ENEMY_Captain Olster|r
    >>Kill |cRXP_ENEMY_Sergeant Lorric|r
    .complete 11233,1 --Captain Olster slain (1)
    .complete 11233,3 --Sergeant Lorric slain (1)
    .mob Captain Olster
    .mob Sergeant Lorric
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.68,37.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dark Ranger Lyana|r
    .turnin 11233 >>Turn in Landing the Killing Blow
    .accept 11234 >>Accept Report to Anselm
    .target Dark Ranger Lyana
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.61,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Executor Anselm|r
    .turnin 11234 >>Turn in Report to Anselm
    .target High Executor Anselm
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.55,28.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lysander|r
    .turnin 11241 >>Turn in Trail of Fire
    .target Apothecary Lysander
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,78.55,28.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Lysander|r
    .accept 11304 >>Accept New Agamand
    .target Apothecary Lysander
    .isQuestTurnedIn 11170 --any of: Test at Sea
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,71.47,39.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Nanik|r
    .accept 12566 >>Accept Help for Camp Winterhoof
    .target Longrunner Nanik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,71.11,39.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorth|r
    .turnin 11295 >>Turn in The Offensive Begins
    .accept 11282 >>Accept A Lesson in Fear
    .target Sergeant Gorth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,69.47,40.50
    >>Interact with |cRXP_FRIENDLY_Ulf the Bloodletter|r
    .complete 11282,2 --Ulf the Bloodletter
    .target Ulf the Bloodletter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,69.60,38.60
    >>Interact with |cRXP_FRIENDLY_Oric the Baleful|r
    .complete 11282,1 --Oric the Baleful
    .target Oric the Baleful
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,69.60,39.80
    >>Interact with |cRXP_FRIENDLY_Gunnar Thorvardsson|r
    .complete 11282,3 --Gunnar Thorvardsson
    .target Gunnar Thorvardsson
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,71.11,39.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorth|r
    .turnin 11282 >>Turn in A Lesson in Fear
    .accept 11283 >>Accept Baleheim Bodycount
    .accept 11285 >>Accept Baleheim Must Burn!
    .target Sergeant Gorth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along36
    >>As you go: Kill |cRXP_ENEMY_Winterskorn Spearmans|r, |cRXP_ENEMY_Winterskorn Bonegrinders|r, |cRXP_ENEMY_Winterskorn Skalds|r and |cRXP_ENEMY_Dragonflayer Huscarls|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11283,1 --Winterskorn Spearman (8)
    .mob Winterskorn Spearman
    .mob Winterskorn Bonegrinder
    .mob Winterskorn Skald
    .mob Dragonflayer Huscarl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along36
    .goto 117,65.97,39.89
    >>Kill |cRXP_ENEMY_Winterskorn Watchtower Credit|r
    >>Kill |cRXP_ENEMY_Winterskorn Bridge Credit|r
    >>Kill |cRXP_ENEMY_Winterskorn Dwelling Credit|r
    .complete 11285,2 --Winterskorn Watchtower Credit slain (1)
    .complete 11285,3 --Winterskorn Bridge Credit slain (1)
    .complete 11285,1 --Winterskorn Dwelling Credit slain (1)
    .mob Winterskorn Watchtower Credit
    .mob Winterskorn Bridge Credit
    .mob Winterskorn Dwelling Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,63.94,39.08,0
    .goto 117,63.94,39.08,40,0
    .goto 117,63.77,41.58,40,0
    >>Kill |cRXP_ENEMY_Winterskorn Barracks Credit|r
    >>Kill |cRXP_ENEMY_Winterskorn Spearmans|r, |cRXP_ENEMY_Winterskorn Bonegrinders|r, |cRXP_ENEMY_Winterskorn Skalds|r and |cRXP_ENEMY_Dragonflayer Huscarls|r
    .complete 11285,4 --Winterskorn Barracks Credit slain (1)
    .complete 11283,1 --Winterskorn Spearman (8)
    .mob Winterskorn Barracks Credit
    .mob Winterskorn Spearman
    .mob Winterskorn Bonegrinder
    .mob Winterskorn Skald
    .mob Dragonflayer Huscarl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,71.11,39.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorth|r
    .turnin 11285 >>Turn in Baleheim Must Burn!
    .turnin 11283 >>Turn in Baleheim Bodycount
    .accept 11303 >>Accept The Ambush
    .target Sergeant Gorth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,65.87,36.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydell|r
    .turnin 11303 >>Turn in The Ambush
    .accept 12481 >>Accept Adding Injury to Insult
    .target Lydell
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,64.04,39.79
    >>Read the Vrykul Insult to Bjorn Halgurdsson in Baleheim, then lead him back to Lydell's Ambush and help slay him.
    .complete 12481,1 --Bjorn Halgurdsson
    .target Bjorn Halgurdsson
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,64.04,39.79
    >>Read the Vrykul Insult to Bjorn Halgurdsson in Baleheim, then lead him back to Lydell's Ambush and help slay him.
    .complete 12481,2 --Bjorn Halgurdsson
    .target Bjorn Halgurdsson
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,65.87,36.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydell|r
    .turnin 12481 >>Turn in Adding Injury to Insult
    .target Lydell
step
    .goto HowlingFjord,53.2,28.1,60,0
    .goto HowlingFjord,51.2,29.1,60,0
    .goto HowlingFjord,50.3,26.5,60,0
    .goto HowlingFjord,52.0,26.0
    .xp 69 >> Grind |cRXP_ENEMY_Nymphs|r and |cRXP_ENEMY_Scarlet Ivys|r to Level 69. Alternatively, run Utgarde Keep
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .turnin 12566 >>Turn in Help for Camp Winterhoof
    .target Chieftain Ashtotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.38,11.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahota Whitefrost|r
    .accept 11271 >>Accept Hasty Preparations
    .target Ahota Whitefrost
step
    .goto 117,58.33,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helen Fairchild|r
    .target Helen Fairchild
    .home >>Set your Hearthstone to Helen Fairchild's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along60
    >>As you go: Pick up |cRXP_PICK_Spotted Hippogryph Down|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11271,1 --Spotted Hippogryph Down (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.32,11.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nokoma Snowseer|r
    .accept 11275 >>Accept Making the Horn
    .target Nokoma Snowseer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along47
    >>As you go: Kill |cRXP_ENEMY_Frosthorn Rams|r. Loot them for |cRXP_LOOT_Undamaged Ram Horn|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11275,1 --Undamaged Ram Horn (6)
    .mob Frosthorn Ram
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along47
    .goto 117,48.92,11.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Tamer Kagan|r
    .accept 11311 >>Accept Suppressing the Elements
    .target Wind Tamer Kagan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along48
    >>As you go: Kill |cRXP_ENEMY_Howling Cyclones|r and |cRXP_ENEMY_Iceshard Elementals|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11311,1 --Howling Cyclone (8)
    .mob Howling Cyclone
    .mob Iceshard Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along48
    #loop
    .goto 117,51.17,7.71,0
    .goto 117,51.17,7.71,40,0
    .goto 117,53.49,8.52,40,0
    >>Kill |cRXP_ENEMY_Frosthorn Rams|r. Loot them for |cRXP_LOOT_Undamaged Ram Horn|r
    .complete 11275,1 --Undamaged Ram Horn (6)
    .mob Frosthorn Ram
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.32,11.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nokoma Snowseer|r
    .turnin 11275 >>Turn in Making the Horn
    .accept 11281 >>Accept Mimicking Nature's Call
    .accept 11312 >>Accept The Frozen Glade
    .target Nokoma Snowseer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.23,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Pembe|r
    .accept 11350 >>Accept The Book of Runes
    .target Longrunner Pembe
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.08,10.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Edan|r
    .accept 11365 >>Accept March of the Giants
    .target Sage Edan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,52.33,4.72,0
    .goto 117,52.33,4.72,40,0
    .goto 117,55.72,4.65,40,0
    >>Kill |cRXP_ENEMY_Frostgore|r
    >>Kill |cRXP_ENEMY_Howling Cyclones|r and |cRXP_ENEMY_Iceshard Elementals|r
    .complete 11281,1 --Frostgore slain (1)
    .complete 11311,1 --Howling Cyclone (8)
    .mob Frostgore
    .mob Howling Cyclone
    .mob Iceshard Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.92,11.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Tamer Kagan|r
    .turnin 11311 >>Turn in Suppressing the Elements
    .target Wind Tamer Kagan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.32,11.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nokoma Snowseer|r
    .turnin 11281 >>Turn in Mimicking Nature's Call while you are here
    .isQuestComplete 11281
    .target Nokoma Snowseer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.43,10.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junat the Wanderer|r
    .accept 11297 >>Accept Keeping Watch on the Interlopers
    .target Junat the Wanderer
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11312 >>Turn in The Frozen Glade << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 11313 >>Accept Spirits of the Ice
    .target Lurielle
step
    #loop
    .goto 117,62.53,23.89,0
    .goto 117,62.53,23.89,40,0
    .goto 117,60.23,23.47,40,0
    >>Kill |cRXP_ENEMY_Ice Elementals|r. Loot them for |cRXP_LOOT_Icy Core|r
    .complete 11313,1 --Icy Core (15)
    .mob Ice Elemental
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11313 >>Turn in Spirits of the Ice
    .accept 11315 >>Accept Wild Vines
    .accept 11314 >>Accept The Fallen Sisters
    .target Lurielle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,67.25,23.90,0
    .goto 117,67.25,23.90,40,0
    .goto 117,68.44,28.21,40,0
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 3|r
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 2|r
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 1|r
    .collect 33780,1,11350,1 --Book of Runes - Chapter 3 (1)
    .collect 33779,1,11350,1 --Book of Runes - Chapter 2 (1)
    .collect 33778,1,11350,1 --Book of Runes - Chapter 1 (1)
    .mob Iron Rune Binder
    .mob Iron Rune Stonecaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,69.77,29.82,0
    .goto 117,69.77,29.82,40,0
    .goto 117,68.18,30.54,40,0
    .goto 117,71.95,23.22,40,0
    >>Interact with |cRXP_FRIENDLY_Stone Giants|r
    .complete 11365,1 --Stone Giant (4)
    .target Stone Giant
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along60
    .goto 117,49.32,11.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nokoma Snowseer|r
    .turnin 11281 >>Turn in Mimicking Nature's Call
    .target Nokoma Snowseer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .accept 11256 >>Accept Skorn Must Fall!
    .target Chieftain Ashtotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.08,10.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Edan|r
    .turnin 11365 >>Turn in March of the Giants
    .accept 11366 >>Accept The Lodestone
    .target Sage Edan
step
    #completewith Along63
    >>As you go: Kill |cRXP_ENEMY_Scarlet Ivies|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11315,1 --Scarlet Ivy slain (8)
    .mob Scarlet Ivy
step
    #label Along63
    #loop
    .goto 117,52.03,26.05,0
    .goto 117,52.03,26.05,40,0
    .goto 117,51.68,27.61,40,0
    >>Interact with |cRXP_FRIENDLY_Chill Nymphs|r
    .complete 11314,1 --Chill Nymph (7)
    .target Chill Nymph
step
    #loop
    .goto 117,51.80,27.60,0
    .goto 117,51.80,27.60,40,0
    .goto 117,51.20,28.80,40,0
    >>Kill |cRXP_ENEMY_Scarlet Ivies|r
    .complete 11315,1 --Scarlet Ivy slain (8)
    .mob Scarlet Ivy
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along71
    >>As you go: Pick up |cRXP_PICK_Spotted Hippogryph Down|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11271,1 --Spotted Hippogryph Down (1)
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11315 >>Turn in Wild Vines
    .turnin 11314 >>Turn in The Fallen Sisters
    .accept 11316 >>Accept Spawn of the Twisted Glade
    .accept 11319 >>Accept Seeds of the Blacksouled Keepers
    .target Lurielle
step
    #completewith Along66
    >>As you go: Kill |cRXP_ENEMY_Thornvine Creepers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11316,1 --Thornvine Creeper slain (10)
    .mob Thornvine Creeper
step
    #label Along66
    #loop
    .goto 117,54.40,17.97,0
    .goto 117,54.40,17.97,40,0
    .goto 117,53.37,16.72,40,0
    >>Interact with |cRXP_FRIENDLY_Spores|r
    .complete 11319,1 --Spore (8)
    .target Spore
step
    #loop
    .goto 117,54.73,17.19,0
    .goto 117,54.73,17.19,40,0
    .goto 117,52.53,16.78,40,0
    >>Kill |cRXP_ENEMY_Thornvine Creepers|r
    .complete 11316,1 --Thornvine Creeper slain (10)
    .mob Thornvine Creeper
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11316 >>Turn in Spawn of the Twisted Glade
    .turnin 11319 >>Turn in Seeds of the Blacksouled Keepers
    .accept 11428 >>Accept Keeper Witherleaf
    .target Lurielle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,71.70,17.60
    >>Kill |cRXP_ENEMY_Image of Megalith|r
    .complete 11366,1 --Image of Megalith slain (1)
    .mob Image of Megalith
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.08,10.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Edan|r
    .turnin 11366 >>Turn in The Lodestone
    .accept 11367 >>Accept Demolishing Megalith
    .target Sage Edan
step
    #label Along71
    .goto 117,53.82,17.97
    >>Kill |cRXP_ENEMY_Keeper Witherleaf|r
    .complete 11428,1 --Keeper Witherleaf slain (1)
    .mob Keeper Witherleaf
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,50.47,18.10,0
    .goto 117,50.47,18.10,40,0
    .goto 117,47.87,18.22,40,0
    .goto 117,47.47,21.58,40,0
    >>Pick up |cRXP_PICK_Spotted Hippogryph Down|r from the ground
    .complete 11271,1 --Spotted Hippogryph Down (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.38,11.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahota Whitefrost|r
    .turnin 11271 >>Turn in Hasty Preparations
    .target Ahota Whitefrost
step
    .goto 117,61.48,22.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurielle|r
    .turnin 11428 >>Turn in Keeper Witherleaf
    .target Lurielle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,66.54,9.54
    >>Kill |cRXP_ENEMY_Megalith|r
    .complete 11367,1 --Megalith slain (1)
    .mob Megalith
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,45.20,27.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winterhoof Brave|r
    .turnin 11256 >>Turn in Skorn Must Fall!
    .accept 11257 >>Accept Gruesome, But Necessary
    .accept 11258 >>Accept Burn Skorn, Burn!
    .accept 11259 >>Accept Towers of Certain Doom
    .target Winterhoof Brave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.16,10.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Ankha|r
    .accept 11260 >>Accept Stop the Ascension!
    .target Greatmother Ankha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.08,10.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Edan|r
    .turnin 11367 >>Turn in Demolishing Megalith while you are here
    .isQuestComplete 11367
    .target Sage Edan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along79
    >>As you go: Kill |cRXP_ENEMY_Winterskorn Tribesmans|r, |cRXP_ENEMY_Winterskorn Woodsmans|r, |cRXP_ENEMY_Winterskorn Shield-Maidens|r and |cRXP_ENEMY_Winterskorn Warriors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11257,1 --Winterskorn Tribesman (8)
    .mob Winterskorn Tribesman
    .mob Winterskorn Woodsman
    .mob Winterskorn Shield-Maiden
    .mob Winterskorn Warrior
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,43.16,36.14
    >>Kill |cRXP_ENEMY_Skorn Tower SW Bunny|r
    >>Kill |cRXP_ENEMY_Halfdan the Ice-Hearted|r
    .complete 11259,3 --Skorn Tower SW Bunny slain (1)
    .complete 11260,1 --Halfdan the Ice-Hearted slain (1)
    .mob Skorn Tower SW Bunny
    .mob Halfdan the Ice-Hearted
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along79
    .goto 117,47.10,36.80
    >>Kill |cRXP_ENEMY_Skorn Tower SE Bunny|r
    >>Kill |cRXP_ENEMY_Skorn Tower E Bunny|r
    .complete 11259,4 --Skorn Tower SE Bunny slain (1)
    .complete 11259,2 --Skorn Tower E Bunny slain (1)
    .mob Skorn Tower SE Bunny
    .mob Skorn Tower E Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,46.11,28.45,0
    .goto 117,46.11,28.45,40,0
    .goto 117,44.10,29.02,40,0
    >>Kill |cRXP_ENEMY_Skorn Barracks Bunny|r
    >>Kill |cRXP_ENEMY_Skorn Longhouse NE Bunny|r
    >>Kill |cRXP_ENEMY_Skorn Longhouse NW Bunny|r
    >>Kill |cRXP_ENEMY_Skorn Tower NW Bunny|r
    >>Kill |cRXP_ENEMY_Winterskorn Tribesmans|r, |cRXP_ENEMY_Winterskorn Woodsmans|r, |cRXP_ENEMY_Winterskorn Shield-Maidens|r and |cRXP_ENEMY_Winterskorn Warriors|r
    .complete 11258,3 --Skorn Barracks Bunny slain (1)
    .complete 11258,2 --Skorn Longhouse NE Bunny slain (1)
    .complete 11258,1 --Skorn Longhouse NW Bunny slain (1)
    .complete 11259,1 --Skorn Tower NW Bunny slain (1)
    .complete 11257,1 --Winterskorn Tribesman (8)
    .mob Skorn Barracks Bunny
    .mob Skorn Longhouse NE Bunny
    .mob Skorn Longhouse NW Bunny
    .mob Skorn Tower NW Bunny
    .mob Winterskorn Tribesman
    .mob Winterskorn Woodsman
    .mob Winterskorn Shield-Maiden
    .mob Winterskorn Warrior
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,45.20,27.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winterhoof Brave|r
    .turnin 11257 >>Turn in Gruesome, But Necessary
    .turnin 11258 >>Turn in Burn Skorn, Burn!
    .turnin 11259 >>Turn in Towers of Certain Doom
    .accept 11261 >>Accept The Conqueror of Skorn!
    .target Winterhoof Brave
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.16,10.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Ankha|r
    .turnin 11260 >>Turn in Stop the Ascension!
    .target Greatmother Ankha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.08,10.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Edan|r
    .turnin 11367 >>Turn in Demolishing Megalith
    .target Sage Edan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,31.16,24.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Mistwalker|r
    .accept 11286 >>Accept The Artifacts of Steel Gate
    .target Sage Mistwalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,30.91,26.84
    >>Pick up |cRXP_PICK_Steel Gate Artifact|r from the ground
    .complete 11286,1 --Steel Gate Artifact (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,31.16,24.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Mistwalker|r
    .turnin 11286 >>Turn in The Artifacts of Steel Gate
    .accept 11317 >>Accept The Cleansing
    .target Sage Mistwalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,26.43,24.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Malthus|r
    .turnin 11297 >>Turn in Keeping Watch on the Interlopers
    .accept 11298 >>Accept What's in That Brew?
    .target Apothecary Malthus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,26.24,24.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Anastasia|r
    .accept 11397 >>Accept And You Thought Murlocs Smelled Bad!
    .target Apothecary Anastasia
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,25.96,24.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Grick|r
    .accept 11301 >>Accept Brains! Brains! Brains!
    .target Apothecary Grick
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,61.10,2.00
    >>Kill |cRXP_ENEMY_Your Inner Turmoil|r
    .complete 11317,1 --Your Inner Turmoil slain (1)
    .mob Your Inner Turmoil
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,31.16,24.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Mistwalker|r
    .turnin 11317 >>Turn in The Cleansing
    .accept 11323 >>Accept In Worg's Clothing
    .target Sage Mistwalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,29.69,5.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulfang|r
    .turnin 11323 >>Turn in In Worg's Clothing
    .accept 11415 >>Accept Brother Betrayers
    .target Ulfang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,27.63,21.14
    >>Kill |cRXP_ENEMY_Bjomolf|r
    .complete 11415,1 --Bjomolf slain (1)
    .mob Bjomolf
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,34.04,28.94
    >>Kill |cRXP_ENEMY_Varg|r
    .complete 11415,2 --Varg slain (1)
    .mob Varg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.56,11.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celea Frozenmane|r
    .accept 11266 >>Accept Gjalerbron Attack Plans
    .target Celea Frozenmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.56,11.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celea Frozenmane|r
    .turnin 11266 >>Turn in Gjalerbron Attack Plans while you are here
    .isQuestComplete 11266
    .target Celea Frozenmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,29.69,5.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulfang|r
    .turnin 11415 >>Turn in Brother Betrayers
    .accept 11417 >>Accept Eyes of the Eagle
    .target Ulfang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,41.29,35.88
    >>Kill |cRXP_ENEMY_Talonshrike|r and loot |cRXP_LOOT_Eyes of the Eagle|r
    .complete 11417,1 --Eyes of the Eagle (1)
    .mob Talonshrike
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,37.15,38.57,0
    .goto 117,37.15,38.57,40,0
    .goto 117,34.25,38.38,40,0
    .goto 117,32.57,36.43,40,0
    >>Pick up |cRXP_PICK_Dwarven Keg|r from the ground
    >>Kill |cRXP_ENEMY_Deranged Explorers|r. Loot them for |cRXP_LOOT_Deranged Explorer Brain|r
    .complete 11298,1 --Dwarven Keg (5)
    .complete 11301,1 --Deranged Explorer Brain (12)
    .mob Deranged Explorer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,25.96,24.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Grick|r
    .turnin 11301 >>Turn in Brains! Brains! Brains!
    .target Apothecary Grick
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,26.43,24.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Malthus|r
    .turnin 11298 >>Turn in What's in That Brew?
    .target Apothecary Malthus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along103
    >>As you go: Kill |cRXP_ENEMY_Unstable Mur'ghouls|r, |cRXP_ENEMY_Mur'ghoul Flesheaters|r, |cRXP_ENEMY_Servitor Shades|r and |cRXP_ENEMY_Necroteches|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11397,1 --Unstable Mur'ghoul (8)
    .mob Unstable Mur'ghoul
    .mob Mur'ghoul Flesheater
    .mob Servitor Shade
    .mob Necrotech
step
    .goto 117,19.78,22.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Icefin|r
    .accept 11422 >>Accept Trident of the Son
    .target Old Icefin
step
    .goto 117,23.40,34.62
    >>Kill |cRXP_ENEMY_Rotgill|r and loot |cRXP_LOOT_Rotgill's Trident|r
    .complete 11422,1 --Rotgill's Trident (1)
    .mob Rotgill
step
    #label Along103
    .goto 117,19.78,22.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Icefin|r
    .turnin 11422 >>Turn in Trident of the Son
    .target Old Icefin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop11398x1
    >>|cRXP_LOOT_Scourge Device|r can drop from |cRXP_ENEMY_Unstable Mur'ghoul|r, |cRXP_ENEMY_Mur'ghoul Flesheater|r, |cRXP_ENEMY_Mur'ghoul Corrupter|r. Use it to start the quest if you get one
    .collect 33962,1,11398 --Scourge Device (1)
    .accept 11398 >>Accept It's a Scourge Device
    .use 33962
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop11398x1
    #loop
    .goto 117,21.60,23.54,0
    .goto 117,21.60,23.54,40,0
    .goto 117,22.47,18.82,40,0
    >>Kill |cRXP_ENEMY_Unstable Mur'ghouls|r, |cRXP_ENEMY_Mur'ghoul Flesheaters|r, |cRXP_ENEMY_Servitor Shades|r and |cRXP_ENEMY_Necroteches|r
    .complete 11397,1 --Unstable Mur'ghoul (8)
    .mob Unstable Mur'ghoul
    .mob Mur'ghoul Flesheater
    .mob Servitor Shade
    .mob Necrotech
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,26.24,24.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Anastasia|r
    .turnin 11398 >>Turn in It's a Scourge Device
    .target Apothecary Anastasia
    .isOnQuest 11398
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,26.24,24.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Anastasia|r
    .turnin 11397 >>Turn in And You Thought Murlocs Smelled Bad! while you are here
    .isQuestComplete 11397
    .target Apothecary Anastasia
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,26.24,24.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Anastasia|r
    .accept 11399 >>Accept Bring Down Those Shields
    .target Apothecary Anastasia
    .isQuestTurnedIn 11398 --any of: It's a Scourge Device
    .xp <69,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,21.75,22.47,0
    .goto 117,21.75,22.47,40,0
    .goto 117,22.51,17.61,40,0
    >>Kill |cRXP_ENEMY_Scourging Crystals|r
    .complete 11399,1 --Scourging Crystal slain (3)
    .mob Scourging Crystal
    .isOnQuest 11399
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,26.24,24.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Anastasia|r
    .turnin 11397 >>Turn in And You Thought Murlocs Smelled Bad!
    .target Apothecary Anastasia
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,26.24,24.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Anastasia|r
    .turnin 11399 >>Turn in Bring Down Those Shields
    .target Apothecary Anastasia
    .isOnQuest 11399
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.56,11.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celea Frozenmane|r
    .turnin 11266 >>Turn in Gjalerbron Attack Plans
    .accept 11267 >>Accept The Frost Wyrm and its Master
    .target Celea Frozenmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,29.69,5.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ulfang|r
    .turnin 11417 >>Turn in Eyes of the Eagle
    .accept 11324 >>Accept Alpha Worg
    .target Ulfang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,28.29,9.19
    >>Kill |cRXP_ENEMY_Garwal|r
    .complete 11324,1 --Garwal slain (1)
    .mob Garwal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,36.45,7.20
    >>Kill |cRXP_ENEMY_Wyrmcaller Vile|r
    >>Kill |cRXP_ENEMY_Wyrmcaller Vile|r and loot |cRXP_LOOT_Wyrmcaller's Horn|r
    >>Kill |cRXP_ENEMY_Glacion|r
    .complete 11267,1 --Wyrmcaller Vile slain (1)
    .complete 11267,3 --Wyrmcaller's Horn (1)
    .complete 11267,2 --Glacion slain (1)
    .mob Wyrmcaller Vile
    .mob Glacion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.56,11.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celea Frozenmane|r
    .turnin 11267 >>Turn in The Frost Wyrm and its Master
    .target Celea Frozenmane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,31.28,24.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Skycloud|r
    .accept 11296 >>Accept Rivenwood Captives
    .target Longrunner Skycloud
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,31.30,18.96,0
    .goto 117,31.30,18.96,40,0
    .goto 117,29.71,17.89,40,0
    >>Kill |cRXP_ENEMY_Freed Winterhoof Longrunners|r
    .complete 11296,1 --Freed Winterhoof Longrunner slain (7)
    .mob Freed Winterhoof Longrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,31.28,24.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Skycloud|r
    .turnin 11296 >>Turn in Rivenwood Captives
    .target Longrunner Skycloud
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,31.16,24.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Mistwalker|r
    .turnin 11324 >>Turn in Alpha Worg
    .target Sage Mistwalker
    .isQuestComplete 11324
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .accept 11504 >>Accept The Dead Rise!
    .target Orfus of Kamagua
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.07,66.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plaguebringer Tillinghast|r
    .accept 11279 >>Accept Green Eggs and Whelps
    .target Plaguebringer Tillinghast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.03,66.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cormath the Courier|r
    .accept 11411 >>Accept Camp Winterhoof
    .target Cormath the Courier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .turnin 11304 >>Turn in New Agamand
    .target Chief Plaguebringer Harris
    .isOnQuest 11304
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .accept 11305 >>Accept A Tailor-Made Formula
    .target Chief Plaguebringer Harris
    .isQuestTurnedIn 11304 --any of: New Agamand
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.69,65.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Hacksaw" Jenny|r
    .accept 11424 >>Accept Shield Hill
    .target "Hacksaw" Jenny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,46.80,68.09
    >>Kill |cRXP_ENEMY_Thorvald|r and loot |cRXP_LOOT_Dragonflayer Patriarch's Blood|r
    .complete 11305,1 --Dragonflayer Patriarch's Blood (1)
    .mob Thorvald
    .isOnQuest 11305
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .turnin 11305 >>Turn in A Tailor-Made Formula
    .target Chief Plaguebringer Harris
    .isOnQuest 11305
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .accept 11306 >>Accept Apply Heat and Stir
    .target Chief Plaguebringer Harris
    .isQuestTurnedIn 11305 --any of: A Tailor-Made Formula
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .turnin 11306 >>Turn in Apply Heat and Stir
    .target Chief Plaguebringer Harris
    .isOnQuest 11306
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .accept 11307 >>Accept Field Test
    .target Chief Plaguebringer Harris
    .isQuestTurnedIn 11306 --any of: Apply Heat and Stir
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,50.11,56.01,0
    .goto 117,50.11,56.01,40,0
    .goto 117,50.00,52.90,40,0
    >>Kill |cRXP_ENEMY_Plagued Dragonflayer Tribesmans|r, |cRXP_ENEMY_Plagued Dragonflayer Rune-Casters|r and |cRXP_ENEMY_Plagued Dragonflayer Handlers|r
    .complete 11307,1 --Plagued Dragonflayer Tribesman (8)
    .mob Plagued Dragonflayer Tribesman
    .mob Plagued Dragonflayer Rune-Caster
    .mob Plagued Dragonflayer Handler
    .isOnQuest 11307
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,40.68,52.18,0
    .goto 117,40.68,52.18,40,0
    .goto 117,40.10,49.55,40,0
    .goto 117,37.93,50.25,40,0
    >>Kill |cRXP_ENEMY_Plagued Proto-Whelps|r. Loot them for |cRXP_LOOT_Plagued Proto-Whelp Specimen|r
    .complete 11279,1 --Plagued Proto-Whelp Specimen (10)
    .mob Plagued Proto-Whelp
step
    #loop
    .goto 117,41.22,49.28,0
    .goto 117,41.22,49.28,40,0
    .goto 117,37.59,51.90,40,0
    .goto 117,37.09,47.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ember Clutch Ancient|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11182 >>Accept Root Causes
    .unitscan Ember Clutch Ancient
step
    #loop
    .goto 117,41.06,51.10,0
    .goto 117,41.06,51.10,40,0
    .goto 117,41.48,53.05,40,0
    >>Kill |cRXP_ENEMY_Skeld Drakeson|r
    >>Kill |cRXP_ENEMY_Dragonflayer Handlers|r
    .complete 11182,2 --Skeld Drakeson slain (1)
    .complete 11182,1 --Dragonflayer Handler slain (5)
    .mob Skeld Drakeson
    .mob Dragonflayer Handler
step
    #loop
    .goto 117,41.22,49.28,0
    .goto 117,41.22,49.28,40,0
    .goto 117,37.59,51.90,40,0
    .goto 117,37.09,47.75,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ember Clutch Ancient|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11182 >>Turn in Root Causes
    .unitscan Ember Clutch Ancient
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.07,66.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plaguebringer Tillinghast|r
    .turnin 11279 >>Turn in Green Eggs and Whelps
    .accept 11280 >>Accept Draconis Gastritis
    .target Plaguebringer Tillinghast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .turnin 11307 >>Turn in Field Test
    .target Chief Plaguebringer Harris
    .isOnQuest 11307
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .accept 11308 >>Accept Time for Cleanup
    .target Chief Plaguebringer Harris
    .isQuestTurnedIn 11307 --any of: Field Test
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.69,65.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Hacksaw" Jenny|r
    .turnin 11308 >>Turn in Time for Cleanup
    .target "Hacksaw" Jenny
    .isOnQuest 11308
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.69,65.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Hacksaw" Jenny|r
    .accept 11309 >>Accept Parts for the Job
    .target "Hacksaw" Jenny
    .isQuestTurnedIn 11308 --any of: Time for Cleanup
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,52.35,73.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Fresh Pound of Flesh|r from |cRXP_FRIENDLY_Anton|r
    .complete 11309,2 --Fresh Pound of Flesh (1)
    .target Anton
    .isOnQuest 11309
step
    #loop
    .goto 117,59.30,76.24,0
    .goto 117,59.30,76.24,40,0
    .goto 117,60.30,79.61,40,0
    >>Kill |cRXP_ENEMY_Risen Vrykul Ancestors|r. Loot them for |cRXP_LOOT_Ancient Vrykul Bone|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>Open the |cRXP_PICK_Mound of Debris|r. Loot it for |cRXP_LOOT_Fengir's Clue|r
    >>Open the |cRXP_PICK_Unlocked Chest|r. Loot it for |cRXP_LOOT_Rodin's Clue|r
    >>Open the |cRXP_PICK_Long Tail Feather|r. Loot it for |cRXP_LOOT_Isuldof's Clue|r
    >>Open the |cRXP_PICK_Cannonball|r. Loot it for |cRXP_LOOT_Windan's Clue|r
    .complete 11424,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Ancient Vrykul Bone (5)
    .complete 11504,1 --Fengir's Clue (1)
    .complete 11504,2 --Rodin's Clue (1)
    .complete 11504,3 --Isuldof's Clue (1)
    .complete 11504,4 --Windan's Clue (1)
    .mob Risen Vrykul Ancestor << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,67.45,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Areiel|r
    .accept 12482 >>Accept Against Nifflevar
    .target Ranger Captain Areiel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,67.35,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scribe Seguine|r
    .accept 11423 >>Accept The Enemy's Legacy
    .target Scribe Seguine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,67.67,53.93,0
    .goto 117,67.67,53.93,40,0
    .goto 117,68.94,52.62,40,0
    .goto 117,65.70,52.78,40,0
    >>Kill |cRXP_ENEMY_Dragonflayer Rune-Seer|r and loot |cRXP_LOOT_Saga of the Val'kyr|r. It can also be picked up from |cRXP_PICK_Saga of the Val'kyr|r on the ground
    >>Pick up |cRXP_PICK_Saga of the Winter Curse|r from the ground
    >>Kill |cRXP_ENEMY_Dragonflayer Rune-Seer|r and loot |cRXP_LOOT_Saga of the Twins|r. It can also be picked up from |cRXP_PICK_Saga of the Twins|r on the ground
    >>Kill |cRXP_ENEMY_Dragonflayer Warriors|r
    >>Kill |cRXP_ENEMY_Dragonflayer Rune-Seers|r
    >>Kill |cRXP_ENEMY_Dragonflayer Hunting Hounds|r
    .complete 11423,2 --Saga of the Val'kyr (1)
    .complete 11423,3 --Saga of the Winter Curse (1)
    .complete 11423,1 --Saga of the Twins (1)
    .complete 12482,1 --Dragonflayer Warrior slain (5)
    .complete 12482,2 --Dragonflayer Rune-Seer slain (4)
    .complete 12482,3 --Dragonflayer Hunting Hound slain (4)
    .mob Dragonflayer Rune-Seer
    .mob Dragonflayer Warrior
    .mob Dragonflayer Hunting Hound
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,67.35,60.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scribe Seguine|r
    .turnin 11423 >>Turn in The Enemy's Legacy
    .target Scribe Seguine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,67.45,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Captain Areiel|r
    .turnin 12482 >>Turn in Against Nifflevar
    .target Ranger Captain Areiel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,47.73,62.80,0
    .goto 117,47.73,62.80,40,0
    .goto 117,45.18,64.44,40,0
    .goto 117,48.86,71.41,40,0
    >>Kill |cRXP_ENEMY_Shoveltusks|r, |cRXP_ENEMY_Shoveltusk Stags|r and |cRXP_ENEMY_Shoveltusk Calfs|r. Loot them for |cRXP_LOOT_Shoveltusk Ligament|r
    .complete 11309,1 --Shoveltusk Ligament (6)
    .mob Shoveltusk
    .mob Shoveltusk Stag
    .mob Shoveltusk Calf
    .isOnQuest 11309
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.69,65.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Hacksaw" Jenny|r
    .turnin 11424 >>Turn in Shield Hill
    .target "Hacksaw" Jenny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.69,65.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Hacksaw" Jenny|r
    .turnin 11309 >>Turn in Parts for the Job
    .target "Hacksaw" Jenny
    .isOnQuest 11309
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.69,65.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Hacksaw" Jenny|r
    .accept 11310 >>Accept Warning: Some Assembly Required
    .target "Hacksaw" Jenny
    .isQuestTurnedIn 11309 --any of: Parts for the Job
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,50.11,56.01,0
    .goto 117,50.11,56.01,40,0
    .goto 117,50.00,52.90,40,0
    >>Kill |cRXP_ENEMY_Plagued Dragonflayer Tribesmans|r, |cRXP_ENEMY_Plagued Dragonflayer Rune-Casters|r and |cRXP_ENEMY_Plagued Dragonflayer Handlers|r
    .complete 11310,1 --Plagued Dragonflayer Tribesman (8)
    .mob Plagued Dragonflayer Tribesman
    .mob Plagued Dragonflayer Rune-Caster
    .mob Plagued Dragonflayer Handler
    .isOnQuest 11310
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,39.20,50.20
    >>Kill |cRXP_ENEMY_Draconis Gastritis Bunny|r
    .complete 11280,1 --Draconis Gastritis Bunny slain (1)
    .mob Draconis Gastritis Bunny
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11504 >>Turn in The Dead Rise!
    .accept 11507 >>Accept Elder Atuik and Kamagua
    .target Orfus of Kamagua
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11507 >>Turn in Elder Atuik and Kamagua
    .accept 11508 >>Accept Grezzix Spindlesnap
    .accept 11456 >>Accept Feeding the Survivors
    .target Elder Atuik
step
    #loop
    .goto 117,29.08,58.71,0
    .goto 117,29.08,58.71,40,0
    .goto 117,31.03,62.38,40,0
    .goto 117,32.63,65.87,40,0
    >>Kill |cRXP_ENEMY_Island Shoveltusk|r and loot |cRXP_LOOT_Island Shoveltusk Meat|r
    .complete 11456,1 --Island Shoveltusk Meat (1)
    .mob Island Shoveltusk
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11456 >>Turn in Feeding the Survivors
    .accept 11457 >>Accept Arming Kamagua
    .target Elder Atuik
step
    #loop
    .goto 117,26.01,53.02,0
    .goto 117,26.01,53.02,40,0
    .goto 117,27.84,54.39,40,0
    >>Kill |cRXP_ENEMY_Frostwing Chimaeras|r. Loot them for |cRXP_LOOT_Chimaera Horn|r
    .complete 11457,1 --Chimaera Horn (3)
    .mob Frostwing Chimaera
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11457 >>Turn in Arming Kamagua
    .accept 11458 >>Accept Avenge Iskaal
    .target Elder Atuik
step
    .goto 117,23.08,62.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezzix Spindlesnap|r
    .turnin 11508 >>Turn in Grezzix Spindlesnap
    .accept 11509 >>Accept Street "Cred"
    .target Grezzix Spindlesnap
step
    .goto 117,35.09,80.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Silvermoon" Harry|r
    .turnin 11509 >>Turn in Street "Cred"
    .accept 11510 >>Accept "Scoodles"
    .target "Silvermoon" Harry
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .accept 11434 >>Accept Forgotten Treasure
    .target Handsome Terry
step
    .goto 117,37.75,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scuttle Frostprow|r
    .accept 11469 >>Accept Swabbin' Soap
    .target Scuttle Frostprow
step
    .goto 117,37.76,84.63
    >>Pick up |cRXP_PICK_Eagle Figurine|r from the ground
    >>Pick up |cRXP_PICK_Amani Vase|r from the ground
    >>Kill |cRXP_ENEMY_"Scoodles"|r and loot |cRXP_LOOT_Sin'dorei Scrying Crystal|r
    .complete 11434,2 --Eagle Figurine (1)
    .complete 11434,1 --Amani Vase (1)
    .complete 11510,1 --Sin'dorei Scrying Crystal (1)
    .mob "Scoodles"
step
    .goto 117,35.09,80.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Silvermoon" Harry|r
    .turnin 11510 >>Turn in "Scoodles"
    .accept 11511 >>Accept The Staff of Storm's Fury
    .accept 11512 >>Accept The Frozen Heart of Isuldof
    .accept 11519 >>Accept The Lost Shield of the Aesirites
    .accept 11567 >>Accept The Ancient Armor of the Kvaldir
    .target "Silvermoon" Harry
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .turnin 11434 >>Turn in Forgotten Treasure
    .accept 11455 >>Accept The Fragrance of Money
    .target Handsome Terry
step
    #completewith Along170
    >>As you go: Kill |cRXP_ENEMY_Rabid Brown Bears|r. Loot them for |cRXP_LOOT_Bear Musk|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11455,1 --Bear Musk (4)
    .mob Rabid Brown Bear
step
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .accept 11464 >>Accept Gambling Debt
    .target Taruk
step
    .goto 117,35.09,80.94
    >>Kill |cRXP_ENEMY_"Silvermoon" Harry|r and loot |cRXP_LOOT_"Silvermoon" Harry's Debt|r
    .complete 11464,1 --"Silvermoon" Harry's Debt (1)
    .mob "Silvermoon" Harry
step
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .turnin 11464 >>Turn in Gambling Debt
    .accept 11466 >>Accept Jack Likes His Drink
    .target Taruk
step
    .goto 117,35.49,79.38
    >>Kill |cRXP_ENEMY_Jack Adams|r and loot |cRXP_LOOT_Jack Adams' Debt|r
    .complete 11466,1 --Jack Adams' Debt (1)
    .mob Jack Adams
step
    #label Along170
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .turnin 11466 >>Turn in Jack Likes His Drink
    .accept 11467 >>Accept Dead Man's Debt
    .target Taruk
step
    #loop
    .goto 117,34.96,78.25,0
    .goto 117,34.96,78.25,40,0
    .goto 117,32.31,76.75,40,0
    >>Kill |cRXP_ENEMY_Rabid Brown Bears|r. Loot them for |cRXP_LOOT_Bear Musk|r
    >>Kill |cRXP_ENEMY_Big Roy|r and loot |cRXP_LOOT_Big Roy's Blubber|r
    .complete 11455,1 --Bear Musk (4)
    .complete 11469,1 --Big Roy's Blubber (1)
    .mob Rabid Brown Bear
    .mob Big Roy
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .turnin 11455 >>Turn in The Fragrance of Money
    .accept 11473 >>Accept A Traitor Among Us
    .target Handsome Terry
step
    .goto 117,37.75,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scuttle Frostprow|r
    .turnin 11469 >>Turn in Swabbin' Soap while you are here
    .isQuestComplete 11469
    .target Scuttle Frostprow
step
    .goto 117,35.56,80.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeh'gehn|r
    .turnin 11473 >>Turn in A Traitor Among Us
    .accept 11459 >>Accept Zeh'gehn Sez
    .target Zeh'gehn
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .turnin 11459 >>Turn in Zeh'gehn Sez
    .accept 11476 >>Accept A Carver and a Croaker
    .target Handsome Terry
step
    .goto 117,35.82,80.57
    >>Kill |cRXP_ENEMY_Scalawag Frog|r and loot |cRXP_LOOT_Scalawag Frog|r
    .complete 11476,1 --Scalawag Frog (1)
    .mob Scalawag Frog
step
    .goto 117,35.09,80.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Shiny Knife|r from |cRXP_FRIENDLY_"Silvermoon" Harry|r
    .complete 11476,2 --Shiny Knife (1)
    .target "Silvermoon" Harry
step
    .goto 117,35.56,80.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeh'gehn|r
    .turnin 11476 >>Turn in A Carver and a Croaker
    .accept 11479 >>Accept "Crowleg" Dan
    .target Zeh'gehn
step
    .goto 117,35.95,83.60
    >>Kill |cRXP_ENEMY_"Crowleg" Dan|r
    .complete 11479,1 --"Crowleg" Dan slain (1)
    .mob "Crowleg" Dan
step
    .goto 117,35.60,80.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handsome Terry|r
    .turnin 11479 >>Turn in "Crowleg" Dan
    .accept 11480 >>Accept Meet Number Two
    .target Handsome Terry
step
    .goto 117,35.41,79.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Annie Bonn|r
    .turnin 11480 >>Turn in Meet Number Two
    .accept 11471 >>Accept The Jig is Up
    .target Annie Bonn
step
    .goto 117,37.75,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scuttle Frostprow|r
    .turnin 11469 >>Turn in Swabbin' Soap
    .target Scuttle Frostprow
step
    #loop
    .goto 117,33.64,69.96,0
    .goto 117,33.64,69.96,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,45.95,82.35,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11519 >>Turn in The Lost Shield of the Aesirites
    .accept 11527 >>Accept Mutiny on the Mercy
    .unitscan Captain Ellis
step
    .goto 117,40.50,75.50
    >>Kill |cRXP_ENEMY_Mutinous Sea Dog|r and loot |cRXP_LOOT_Barrel of Blasting Powder|r
    .complete 11527,1 --Barrel of Blasting Powder (1)
    .mob Mutinous Sea Dog
step
    #loop
    .goto 117,45.95,82.35,0
    .goto 117,45.95,82.35,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,33.64,69.96,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11527 >>Turn in Mutiny on the Mercy
    .unitscan Captain Ellis
step
    #loop
    .goto 117,34.54,63.79,0
    .goto 117,34.54,63.79,40,0
    .goto 117,32.50,60.10,40,0
    >>Kill |cRXP_ENEMY_Crazed Northsea Slavers|r
    >>Pick up |cRXP_PICK_The Staff of Storm's Fury|r from the ground
    >>Kill |cRXP_ENEMY_Black Conrad's Ghost|r and loot |cRXP_LOOT_Black Conrad's Treasure|r
    .complete 11458,1 --Crazed Northsea Slaver slain (8)
    .complete 11511,1 --The Staff of Storm's Fury (1)
    .complete 11467,1 --Black Conrad's Treasure (1)
    .mob Crazed Northsea Slaver
    .mob Black Conrad's Ghost
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11458 >>Turn in Avenge Iskaal
    .target Elder Atuik
step
    .goto 117,24.59,58.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anuniaq|r
    .accept 12118 >>Accept Travel to Moa'ki Harbor
    .target Anuniaq
step
    .goto 117,33.01,78.55
    >>Kill |cRXP_ENEMY_Hozzer|r and loot |cRXP_LOOT_Jonah Sterling's Spyglass|r
    >>Pick up |cRXP_PICK_The Frozen Heart of Isuldof|r from the ground
    .complete 11471,1 --Jonah Sterling's Spyglass (1)
    .complete 11512,1 --The Frozen Heart of Isuldof (1)
    .mob Hozzer
step
    .goto 117,36.32,80.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taruk|r
    .turnin 11467 >>Turn in Dead Man's Debt
    .target Taruk
step
    .goto 117,35.41,79.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Annie Bonn|r
    .turnin 11471 >>Turn in The Jig is Up
    .target Annie Bonn
step
    .goto 117,81.77,73.91
    >>Pick up |cRXP_PICK_The Ancient Armor of the Kvaldir|r from the ground
    .complete 11567,1 --The Ancient Armor of the Kvaldir (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .turnin 11411 >>Turn in Camp Winterhoof
    .target Chieftain Ashtotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.23,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Pembe|r
    .turnin 11350 >>Turn in The Book of Runes
    .target Longrunner Pembe
    .isQuestComplete 11350
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.23,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Pembe|r
    .accept 11351 >>Accept Mastering the Runes
    .target Longrunner Pembe
    .isQuestTurnedIn 11350 --any of: The Book of Runes
    .xp <69,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,73.30,24.89
    >>Pick up |cRXP_PICK_Iron Rune Carving Tools|r from the ground
    .complete 11351,1 --Iron Rune Carving Tools (1)
    .isOnQuest 11351
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.23,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Pembe|r
    .turnin 11351 >>Turn in Mastering the Runes
    .target Longrunner Pembe
    .isOnQuest 11351
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.23,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Pembe|r
    .accept 11352 >>Accept The Rune of Command
    .target Longrunner Pembe
    .isQuestTurnedIn 11351 --any of: Mastering the Runes
    .xp <69,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,71.85,24.56
    >>Kill |cRXP_ENEMY_Binder Murdis|r
    .complete 11352,2 --Binder Murdis slain (1)
    .mob Binder Murdis
    .isOnQuest 11352
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,71.95,23.22
    >>Interact with |cRXP_FRIENDLY_Stone Giant|r
    .complete 11352,1 --Stone Giant
    .target Stone Giant
    .isOnQuest 11352
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.23,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Pembe|r
    .turnin 11352 >>Turn in The Rune of Command
    .target Longrunner Pembe
    .isOnQuest 11352
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .turnin 11261 >>Turn in The Conqueror of Skorn!
    .target Chieftain Ashtotem
    .isQuestComplete 11261
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .accept 11263 >>Accept Dealing With Gjalerbron
    .target Chieftain Ashtotem
    .isQuestTurnedIn 11261 --any of: The Conqueror of Skorn!
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.16,10.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Ankha|r
    .accept 11265 >>Accept Of Keys and Cages
    .target Greatmother Ankha
    .isQuestTurnedIn 11261 --any of: The Conqueror of Skorn!
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,38.47,8.39,0
    .goto 117,38.47,8.39,40,0
    .goto 117,35.98,11.15,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Sleep-Watchers|r, |cRXP_ENEMY_Gjalerbron Rune-Casters|r and |cRXP_ENEMY_Gjalerbron Warriors|r. Loot them for |cRXP_LOOT_Large Gjalerbron Cage Key|r
    .collect 33290,1,11265,1 --Large Gjalerbron Cage Key (1)
    .mob Gjalerbron Sleep-Watcher
    .mob Gjalerbron Rune-Caster
    .mob Gjalerbron Warrior
    .isOnQuest 11265
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,35.98,11.15,0
    .goto 117,35.98,11.15,40,0
    .goto 117,38.47,8.39,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Sleep-Watchers|r, |cRXP_ENEMY_Gjalerbron Rune-Casters|r and |cRXP_ENEMY_Gjalerbron Warriors|r. Loot them for |cRXP_LOOT_Gjalerbron Cage Key|r
    .collect 33284,1,11265,1 --Gjalerbron Cage Key (1)
    .mob Gjalerbron Sleep-Watcher
    .mob Gjalerbron Rune-Caster
    .mob Gjalerbron Warrior
    .isOnQuest 11265
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,35.73,11.59,0
    .goto 117,35.73,11.59,40,0
    .goto 117,38.90,9.24,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Warriors|r
    .complete 11263,1 --Gjalerbron Warrior slain (15)
    .mob Gjalerbron Warrior
    .isOnQuest 11263
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,34.88,11.78,0
    .goto 117,34.88,11.78,40,0
    .goto 117,35.00,15.08,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Rune-Casters|r
    .complete 11263,2 --Gjalerbron Rune-Caster slain (8)
    .mob Gjalerbron Rune-Caster
    .isOnQuest 11263
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,35.98,11.15,0
    .goto 117,35.98,11.15,40,0
    .goto 117,33.05,10.05,40,0
    .goto 117,39.20,9.66,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Sleep-Watchers|r
    .complete 11263,3 --Gjalerbron Sleep-Watcher slain (8)
    .mob Gjalerbron Sleep-Watcher
    .isOnQuest 11263
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,35.03,10.43,0
    .goto 117,35.03,10.43,40,0
    .goto 117,36.38,13.20,40,0
    .goto 117,38.90,9.60,40,0
    >>Kill |cRXP_ENEMY_Gjalerbron Prisoners|r
    .complete 11265,1 --Gjalerbron Prisoner slain (10)
    .mob Gjalerbron Prisoner
    .isOnQuest 11265
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.16,10.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Ankha|r
    .turnin 11265 >>Turn in Of Keys and Cages
    .target Greatmother Ankha
    .isOnQuest 11265
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.16,10.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Ankha|r
    .accept 11268 >>Accept The Walking Dead
    .target Greatmother Ankha
    .isQuestTurnedIn 11265 --any of: Of Keys and Cages
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .turnin 11263 >>Turn in Dealing With Gjalerbron
    .target Chieftain Ashtotem
    .isOnQuest 11263
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.16,10.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Ankha|r
    .accept 11287 >>Accept Find Sage Mistwalker
    .target Greatmother Ankha
    .isQuestTurnedIn 11263 --any of: Dealing With Gjalerbron
    .xp <69,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,31.16,24.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Mistwalker|r
    .turnin 11287 >>Turn in Find Sage Mistwalker
    .target Sage Mistwalker
    .isOnQuest 11287
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .accept 11264 >>Accept Necro Overlord Mezhen
    .target Chieftain Ashtotem
    .isQuestTurnedIn 11263 --any of: Dealing With Gjalerbron
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.38,11.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahota Whitefrost|r
    .accept 11433 >>Accept Sleeping Giants
    .target Ahota Whitefrost
    .isQuestTurnedIn 11265 --any of: Of Keys and Cages
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,38.79,13.08
    >>Kill |cRXP_ENEMY_Necro Overlord Mezhen|r
    .complete 11264,1 --Necro Overlord Mezhen slain (1)
    .mob Necro Overlord Mezhen
    .isOnQuest 11264
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,38.79,13.08
    >>Kill |cRXP_ENEMY_Necro Overlord Mezhen|r and loot |cRXP_LOOT_Mezhen's Writings|r. Use it to start the quest
    .collect 34091,1,11453 --Mezhen's Writings (1)
    .accept 11453 >>Accept The Slumbering King
    .use 34091
    .mob Necro Overlord Mezhen
    .isQuestTurnedIn 11263 --any of: Dealing With Gjalerbron
    .xp <68,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,40.88,6.48
    >>Kill |cRXP_ENEMY_Queen Angerboda|r
    .complete 11453,1 --Queen Angerboda slain (1)
    .mob Queen Angerboda
    .isOnQuest 11453
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,40.38,7.02
    >>Kill |cRXP_ENEMY_Necrolord|r and loot |cRXP_LOOT_Awakening Rod|r
    .collect 34083,1,11433,1 --Awakening Rod (1)
    .mob Necrolord
    .isOnQuest 11433
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,39.97,8.58
    >>Kill |cRXP_ENEMY_Putrid Wights|r
    .complete 11268,3 --Putrid Wight slain (2)
    .mob Putrid Wight
    .isOnQuest 11268
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,36.82,15.98,0
    .goto 117,36.82,15.98,40,0
    .goto 117,33.38,10.61,40,0
    >>Kill |cRXP_ENEMY_Deathless Watchers|r
    .complete 11268,1 --Deathless Watcher slain (10)
    .mob Deathless Watcher
    .isOnQuest 11268
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,37.12,14.94,0
    .goto 117,37.12,14.94,40,0
    .goto 117,36.09,7.40,40,0
    .goto 117,33.58,9.13,40,0
    >>Kill |cRXP_ENEMY_Fearsome Horrors|r
    .complete 11268,2 --Fearsome Horror slain (4)
    .mob Fearsome Horror
    .isOnQuest 11268
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 117,38.19,13.21,0
    .goto 117,38.19,13.21,40,0
    .goto 117,36.93,7.64,40,0
    .goto 117,33.55,9.76,40,0
    >>Kill |cRXP_ENEMY_Dormant Vrykuls|r
    .complete 11433,1 --Dormant Vrykul slain (5)
    .mob Dormant Vrykul
    .isOnQuest 11433
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.16,10.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Ankha|r
    .turnin 11268 >>Turn in The Walking Dead
    .target Greatmother Ankha
    .isOnQuest 11268
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .turnin 11264 >>Turn in Necro Overlord Mezhen
    .target Chieftain Ashtotem
    .isOnQuest 11264
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .turnin 11453 >>Turn in The Slumbering King
    .target Chieftain Ashtotem
    .isOnQuest 11453
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.38,11.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahota Whitefrost|r
    .turnin 11433 >>Turn in Sleeping Giants
    .target Ahota Whitefrost
    .isOnQuest 11433
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11511 >>Turn in The Staff of Storm's Fury
    .turnin 11567 >>Turn in The Ancient Armor of the Kvaldir
    .turnin 11512 >>Turn in The Frozen Heart of Isuldof
    .target Orfus of Kamagua
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.07,66.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plaguebringer Tillinghast|r
    .turnin 11280 >>Turn in Draconis Gastritis
    .target Plaguebringer Tillinghast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.59,66.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Plaguebringer Harris|r
    .accept 12181 >>Accept Give it a Name
    .target Chief Plaguebringer Harris
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,53.69,65.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Hacksaw" Jenny|r
    .turnin 11310 >>Turn in Warning: Some Assembly Required
    .target "Hacksaw" Jenny
    .isOnQuest 11310
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,52.01,67.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Sarkhoff|r
    .turnin 12181 >>Turn in Give it a Name
    .accept 12182 >>Accept To Venomspite!
    .target Tobias Sarkhoff
step
    +|cRXP_WARN_That is all of Howling Fjord for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: Friends in Dalaran << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dragonblight|r: Travel to Moa'ki Harbor
    >>|cRXP_FRIENDLY_Dragonblight|r: To Venomspite! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Alpha Worg, The Book of Runes, The Conqueror of Skorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 71|r: |cRXP_FRIENDLY_Netherstorm|r (about 1.1 levels of quests, starting around Image of Archmage Vargoth), |cRXP_FRIENDLY_Dragonblight|r (about 0.7 levels of quests, starting around Aurastrasza; 1 quest from here hands in there). Completing this step loads the guide for Netherstorm --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Howling Fjord is planned from level 78.|r Load its guide for level 78 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 70 - 79 Howling Fjord
#subweight -70
#name 78-79 Howling Fjord
--RouteBuilder:next
#next Zone Routes (Horde)\76-78 Sholazar Basin;Zone Routes (Horde)\78-80 The Storm Peaks;Zone Routes (Horde)\79-81 Icecrown: around Highlord Tirion Fordring

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,64.71,28.43
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 3|r
    .collect 33780,1,11350,1 --Book of Runes - Chapter 3 (1)
    .mob Iron Rune Binder
    .mob Iron Rune Stonecaller
    .isOnQuest 11350
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,64.71,28.43
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 2|r
    .collect 33779,1,11350,1 --Book of Runes - Chapter 2 (1)
    .mob Iron Rune Binder
    .mob Iron Rune Stonecaller
    .isOnQuest 11350
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,64.71,28.43
    >>Kill |cRXP_ENEMY_Iron Rune Binders|r and |cRXP_ENEMY_Iron Rune Stonecallers|r. Loot them for |cRXP_LOOT_Book of Runes - Chapter 1|r
    .collect 33778,1,11350,1 --Book of Runes - Chapter 1 (1)
    .mob Iron Rune Binder
    .mob Iron Rune Stonecaller
    .isOnQuest 11350
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,49.23,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longrunner Pembe|r
    .turnin 11350 >>Turn in The Book of Runes
    .target Longrunner Pembe
    .isQuestComplete 11350
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,48.04,10.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Ashtotem|r
    .turnin 11261 >>Turn in The Conqueror of Skorn!
    .target Chieftain Ashtotem
    .isQuestComplete 11261
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,28.29,9.19
    >>Kill |cRXP_ENEMY_Garwal|r
    .complete 11324,1 --Garwal slain (1)
    .mob Garwal
    .isOnQuest 11324
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 117,31.16,24.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Mistwalker|r
    .turnin 11324 >>Turn in Alpha Worg
    .target Sage Mistwalker
    .isQuestComplete 11324
step
    #loop
    .goto 117,33.64,69.96,0
    .goto 117,33.64,69.96,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,45.95,82.35,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11529 >>Accept Sorlof's Booty
    .unitscan Captain Ellis
    .isQuestTurnedIn 11527 --any of: Mutiny on the Mercy
step
    .goto 117,42.65,74.56
    >>Kill |cRXP_ENEMY_Sorlof|r and loot |cRXP_LOOT_Sorlof's Booty|r. It can also be picked up from |cRXP_PICK_Sorlof's Booty|r on the ground
    .complete 11529,1 --Sorlof's Booty (1)
    .mob Sorlof
    .isOnQuest 11529
step
    #loop
    .goto 117,45.95,82.35,0
    .goto 117,45.95,82.35,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,33.64,69.96,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11529 >>Turn in Sorlof's Booty
    .unitscan Captain Ellis
    .isOnQuest 11529
step
    #loop
    .goto 117,33.64,69.96,0
    .goto 117,33.64,69.96,40,0
    .goto 117,33.48,71.32,40,0
    .goto 117,34.20,73.17,40,0
    .goto 117,38.62,70.72,40,0
    .goto 117,37.93,75.46,40,0
    .goto 117,38.34,78.53,40,0
    .goto 117,41.22,76.34,40,0
    .goto 117,41.52,82.19,40,0
    .goto 117,45.74,79.89,40,0
    .goto 117,45.95,82.35,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Ellis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11530 >>Accept The Shield of the Aesirites
    .unitscan Captain Ellis
    .isQuestTurnedIn 11529 --any of: Sorlof's Booty
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11530 >>Turn in The Shield of the Aesirites
    .target Orfus of Kamagua
    .isOnQuest 11530
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .accept 11568 >>Accept A Return to Resting
    .target Orfus of Kamagua
    .isQuestTurnedIn 11511 --The Staff of Storm's Fury
    .isQuestTurnedIn 11512 --The Frozen Heart of Isuldof
    .isQuestTurnedIn 11530 --The Shield of the Aesirites
    .isQuestTurnedIn 11567 --The Ancient Armor of the Kvaldir
step
    .goto 117,57.65,77.75
    >>Kill |cRXP_ENEMY_Fengir the Disgraced|r
    .complete 11568,1 --Fengir the Disgraced slain (1)
    .mob Fengir the Disgraced
    .isOnQuest 11568
step
    .goto 117,59.28,76.87
    >>Kill |cRXP_ENEMY_Rodin the Reckless|r
    .complete 11568,2 --Rodin the Reckless slain (1)
    .mob Rodin the Reckless
    .isOnQuest 11568
step
    .goto 117,59.71,79.39
    >>Kill |cRXP_ENEMY_Isuldof Iceheart|r
    .complete 11568,3 --Isuldof Iceheart slain (1)
    .mob Isuldof Iceheart
    .isOnQuest 11568
step
    .goto 117,61.95,80.04
    >>Kill |cRXP_ENEMY_Windan of the Kvaldir|r
    .complete 11568,4 --Windan of the Kvaldir slain (1)
    .mob Windan of the Kvaldir
    .isOnQuest 11568
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .turnin 11568 >>Turn in A Return to Resting
    .target Orfus of Kamagua
    .isOnQuest 11568
step
    .goto 117,40.29,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orfus of Kamagua|r
    .accept 11572 >>Accept Return to Atuik
    .target Orfus of Kamagua
    .isQuestTurnedIn 11568 --any of: A Return to Resting
step
    .goto 117,25.02,56.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Atuik|r
    .turnin 11572 >>Turn in Return to Atuik
    .target Elder Atuik
    .isOnQuest 11572
step
    +|cRXP_WARN_End of the Howling Fjord route.|r
step
    +|cRXP_WARN_Suggested next zones at level 78|r: |cRXP_FRIENDLY_Sholazar Basin|r (about 1.1 levels of quests, starting around Debaar), |cRXP_FRIENDLY_The Storm Peaks|r (about 0.9 levels of quests, starting around Ricket), |cRXP_FRIENDLY_Icecrown|r (about 0.8 levels of quests, starting around Highlord Tirion Fordring). Completing this step loads the guide for Sholazar Basin --RouteBuilder:next
]])
