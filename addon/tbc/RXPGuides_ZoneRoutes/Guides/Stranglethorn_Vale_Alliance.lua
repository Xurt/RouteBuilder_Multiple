-- 30-50 Stranglethorn Vale: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's The Burning Crusade data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 5 parts (from level 30, 34, 38, 42, 45).
-- Split into 5 guides, listed under "30 - 46 Stranglethorn Vale" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/tbc/Stranglethorn Vale.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 46 Stranglethorn Vale
#subweight -30
#name 30-32 Stranglethorn Vale: around Krazek
--RouteBuilder:next
#next Zone Routes (Alliance)\28-29 Duskwood: around Sirra Von'Indi

step
    .goto 1434/0,474.29,-14320.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .turnin 1040 >>Turn in Passage to Booty Bay
    .target Caravaneer Ruzzgot
    .isOnQuest 1040
step
    .goto 1434/0,474.29,-14320.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caravaneer Ruzzgot|r
    .accept 1041 >>Accept The Caravan Road
    .target Caravaneer Ruzzgot
    .isQuestTurnedIn 1040 --any of: Passage to Booty Bay
    .xp <25,1
step
    .goto 1434/0,539.37,-14298.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .turnin 1180 >>Turn in Goblin Sponsorship
    .target Wharfmaster Lozgil
    .isOnQuest 1180
step
    .goto 1434/0,539.37,-14298.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r
    .accept 1181 >>Accept Goblin Sponsorship
    .target Wharfmaster Lozgil
    .isQuestTurnedIn 1180 --any of: Goblin Sponsorship
    .xp <29,1
step << Warrior/Shaman
    .goto 1434/0,412.39,-14378.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarena Cromwind|r
    .vendor >>|cRXP_BUY_Buy a|r |T135158:0|t[|cRXP_FRIENDLY_Big Stick|r] |cRXP_BUY_or a|r |T135144:0|t[|cRXP_FRIENDLY_Staff of Protection|r] |cRXP_BUY_from her if one of them is available|r
    .money <5.3896
    .target Zarena Cromwind
step
    .goto 1434/0,134.16,-12412.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nerrist|r
    .target Nerrist
    .home >>Set your Hearthstone to Nerrist's inn
step
    .goto 1434/0,497.90,-14449.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
    .accept 189 >>Accept Bloodscalp Ears
    .target Kebok
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 198 >>Accept Supplies to Private Thorsen
    .accept 201 >>Accept Investigate the Camp
    .target Krazek
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 1118 >>Turn in Back to Booty Bay
    .target Crank Fizzlebub
    .isOnQuest 1118
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 1122 >>Turn in Report Back to Fizzlebub
    .target Crank Fizzlebub
    .isOnQuest 1122
step
    .goto 1434/0,483.22,-14438.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 1181 >>Turn in Goblin Sponsorship
    .target Baron Revilgaz
    .isOnQuest 1181
step
    .goto 1434/0,448.12,-14447.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 2874 >>Turn in Deliver to MacKinley
    .target "Sea Wolf" MacKinley
    .isOnQuest 2874
step
    .goto 1434/0,415.58,-14469.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 575 >>Accept Supply and Demand
    .target Drizzlik
step
    .goto 1434/0,464.08,-14477.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .fp Booty Bay >> Get the Booty Bay flight path
    .fly Rebel Camp>> Fly to the Rebel Camp
    .target Gyll
step
    .goto 1434/0,411.11,-14416.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 2767 >>Turn in Rescue OOX-22/FE!
    .target Oglethorpe Obnoticus
    .isQuestComplete 2767
step
    .goto 1434/0,411.11,-14416.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 648 >>Turn in Rescue OOX-17/TN!
    .target Oglethorpe Obnoticus
    .isQuestComplete 648
step
    .goto 1434/0,411.11,-14416.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 836 >>Turn in Rescue OOX-09/HL!
    .target Oglethorpe Obnoticus
    .isQuestComplete 836
step
    #loop
    .goto 1434/0,-332.30,-11524.82,0
    .goto 1434/0,-332.30,-11524.82,40,0
    .goto 1434/0,-290.83,-11476.75,40,0
    .goto 1434/0,-286.36,-11395.50,40,0
    .goto 1434/0,-216.80,-11372.95,40,0
    .goto 1434/0,-223.82,-11331.68,40,0
    .goto 1434/0,-202.77,-11313.82,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Thorsen|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 198 >>Turn in Supplies to Private Thorsen
    .accept 215 >>Accept Jungle Secrets
    .unitscan Private Thorsen
step
    .goto 1434/0,-205.32,-11310.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 203 >>Accept The Second Rebellion
    .accept 204 >>Accept Bad Medicine
    .target Sergeant Yohwa
step
    .goto 1434/0,-206.59,-11296.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 215 >>Turn in Jungle Secrets while you are here
    .isQuestComplete 215
    .target Lieutenant Doren
step
    .goto 1434/0,-219.17,-11340.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nizzle|r
    .fp Rebel >> Get the Rebel Camp flight path
    .target Nizzle
step
    .goto 1434/0,-54.72,-11616.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 583 >>Accept Welcome to the Jungle
    .target Barnil Stonepot
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 583 >>Turn in Welcome to the Jungle while you are here
    .isQuestComplete 583
    .target Hemet Nesingwary Jr.
step
    .goto 1434/0,-59.19,-11629.05
    >>Locate the hunters' camp
    .complete 201,1 --Locate the hunters' camp
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 583 >>Turn in Welcome to the Jungle
    .target Hemet Nesingwary Jr.
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 5762 >>Turn in Hemet Nesingwary Jr.
    .target Hemet Nesingwary Jr.
    .isOnQuest 5762
step
    .goto 1434/0,-52.17,-11620.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .accept 185 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    .goto 1434/0,-47.70,-11617.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 190 >>Accept Panther Mastery
    .target Sir S. J. Erlgadin
step
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for |cRXP_LOOT_Large River Crocolisk Skin|r. |cRXP_WARN_Anything left is finished later|r
    .complete 575,1 --Large River Crocolisk Skin (2)
    .mob River Crocolisk
step
    #loop
    .goto 1434/0,115.02,-11585.66,0
    .goto 1434/0,115.02,-11585.66,40,0
    .goto 1434/0,217.12,-11526.10,40,0
    >>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --Young Stranglethorn Tiger slain (10)
    .mob Young Stranglethorn Tiger
step
    #label Along24
    #loop
    .goto 1434/0,-445.25,-11711.16,0
    .goto 1434/0,-445.25,-11711.16,40,0
    .goto 1434/0,-463.76,-11600.12,40,0
    >>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --Young Panther slain (10)
    .mob Young Panther
step
    .goto 1434/0,-52.17,-11620.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 185 >>Turn in Tiger Mastery
    .accept 186 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    .goto 1434/0,-47.70,-11617.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 190 >>Turn in Panther Mastery
    .accept 191 >>Accept Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto 1434/0,-206.59,-11296.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 215 >>Turn in Jungle Secrets
    .accept 200 >>Accept Bookie Herod
    .target Lieutenant Doren
step
    .goto 1434/0,-565.86,-11567.37
    >>Click the |cRXP_PICK_Bookie Herod's Records|r
    .turnin 200 >>Turn in Bookie Herod
    .accept 328 >>Accept The Hidden Key
step
    #completewith Drop635x1
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x1
    #loop
    .goto 1434/0,-595.21,-11579.70,0
    .goto 1434/0,-595.21,-11579.70,40,0
    .goto 1434/0,-641.16,-11535.03,40,0
    .goto 1434/0,-669.87,-11648.19,40,0
    >>Open the |cRXP_PICK_Kurzen Supplies|r. Loot it for |cRXP_LOOT_Venom Fern Extract|r
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r, |cRXP_ENEMY_Kurzen Medicine Mans|r, |cRXP_ENEMY_Kurzen Headshrinkers|r and |cRXP_ENEMY_Kurzen Witch Doctors|r. Loot them for |cRXP_LOOT_Jungle Remedy|r
    .complete 204,2 --Venom Fern Extract (1)
    .complete 203,1 --Kurzen Jungle Fighter slain (15)
    .complete 204,1 --Jungle Remedy (7)
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
    .mob Kurzen Headshrinker
    .mob Kurzen Witch Doctor
step
    #loop
    .goto 1434/0,-719.65,-11820.49,0
    .goto 1434/0,-719.65,-11820.49,40,0
    .goto 1434/0,-740.07,-11917.48,40,0
    >>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
    .complete 186,1 --Stranglethorn Tiger slain (10)
    .mob Stranglethorn Tiger
step
    #loop
    .goto 1434/0,-249.99,-11650.32,0
    .goto 1434/0,-249.99,-11650.32,40,0
    .goto 1434/0,-130.66,-11615.86,40,0
    .goto 1434/0,-53.44,-11513.34,40,0
    >>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for |cRXP_LOOT_Large River Crocolisk Skin|r
    .complete 575,1 --Large River Crocolisk Skin (2)
    .mob River Crocolisk
step
    .goto 1434/0,-52.17,-11620.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 186 >>Turn in Tiger Mastery
    .target Ajeck Rouack
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 194 >>Accept Raptor Mastery
    .target Hemet Nesingwary Jr.
step
    #loop
    .goto 1434/0,268.17,-11679.25,0
    .goto 1434/0,268.17,-11679.25,40,0
    .goto 1434/0,268.17,-11577.15,40,0
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 --Panther slain (10)
    .mob Panther
step
    #loop
    .goto 1434/0,447.48,-11777.95,0
    .goto 1434/0,447.48,-11777.95,40,0
    .goto 1434/0,513.85,-11917.91,40,0
    .goto 1434/0,678.49,-11856.22,40,0
    >>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
    .complete 194,1 --Stranglethorn Raptor slain (10)
    .mob Stranglethorn Raptor
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 201 >>Turn in Investigate the Camp
    .target Krazek
step
    .goto 1434/0,415.58,-14469.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 575 >>Turn in Supply and Demand
    .target Drizzlik
step
    .goto 1434/0,-205.32,-11310.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .turnin 203 >>Turn in The Second Rebellion
    .turnin 204 >>Turn in Bad Medicine
    .target Sergeant Yohwa
step
    .goto 1434/0,-47.70,-11617.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 191 >>Turn in Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 194 >>Turn in Raptor Mastery
    .target Hemet Nesingwary Jr.
step
    .goto 1434/0,-945.54,-11490.36
    >>Click the |cRXP_PICK_Bookie Herod's Strongbox|r
    .turnin 328 >>Turn in The Hidden Key
    .accept 329 >>Accept The Spy Revealed!
step
    #completewith Drop635x2
    >>|cRXP_LOOT_Pendant of Myzrael|r can drop from |cRXP_ENEMY_Bloodscalp Warrior|r, |cRXP_ENEMY_Bloodscalp Scout|r, |cRXP_ENEMY_Bloodscalp Hunter|r. Use it to start the quest if you get one
    .collect 4614,1,635 --Pendant of Myzrael (1)
    .accept 635 >>Accept Crystal in the Mountains
    .use 4614
step
    #label Drop635x2
    #loop
    .goto 1434/0,567.45,-11707.75,0
    .goto 1434/0,567.45,-11707.75,40,0
    .goto 1434/0,596.81,-11576.72,40,0
    >>Kill |cRXP_ENEMY_Bloodscalp Warriors|r, |cRXP_ENEMY_Bloodscalp Scouts|r, |cRXP_ENEMY_Bloodscalp Hunters|r and |cRXP_ENEMY_Bloodscalp Berserkers|r. Loot them for |cRXP_LOOT_Bloodscalp Ear|r
    .complete 189,1 --Bloodscalp Ear (15)
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Berserker
step
    .goto 1434/0,-206.59,-11296.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 329 >>Turn in The Spy Revealed!
    .accept 330 >>Accept Patrol Schedules
    .target Lieutenant Doren
step << Hunter
    .goto 1434/0,-204.04,-11296.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Bluth|r
    .vendor >> |cRXP_BUY_Restock on |r |T132382:0|t[Razor Arrows] |cRXP_BUY_if needed|r
    .target Corporal Bluth
step
    .goto 1434/0,-182.35,-11312.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 330 >>Turn in Patrol Schedules
    .accept 331 >>Accept Report to Doren
    .target Corporal Sethman
step
    .goto 1434/0,-206.59,-11296.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 331 >>Turn in Report to Doren
    .target Lieutenant Doren
step
    .goto 1434/0,497.90,-14449.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
    .turnin 189 >>Turn in Bloodscalp Ears
    .target Kebok
step << Mage
    .train 49359,3
    .zoneskip Dustwallow Marsh
step
    .goto 1434/0,480.03,-14467.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .turnin 603 >>Turn in Ansirem's Key
    .target Catelyn the Blade
    .isOnQuest 603
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 1117 >>Accept Rumors for Kravel
    .target Krazek
    .isQuestTurnedIn 1116 --any of: Dream Dust in the Swamp
    .xp <30,1
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 1115 >>Turn in The Rumormonger
    .target Krazek
    .isOnQuest 1115
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 1116 >>Accept Dream Dust in the Swamp
    .target Krazek
    .isQuestTurnedIn 1115 --any of: The Rumormonger
    .xp <30,1
step
    .goto 1434/0,487.05,-14444.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 669 >>Turn in Sunken Treasure
    .target Fleet Master Seahorn
    .isOnQuest 669
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 1116 >>Turn in Dream Dust in the Swamp
    .target Krazek
    .isQuestComplete 1116
step << Warlock
    .goto 1434/0,89.50,-14919.22
    >>Open the |cRXP_PICK_Solid Chest|r. Loot it for |cRXP_LOOT_Gold Bar|r
    .complete 4781,1 --Gold Bar (1)
    .isOnQuest 4781
step << Warlock
    .goto 1434/0,388.78,-14439.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xizk Goodstitch|r
    .turnin 4781 >>Turn in Components for the Enchanted Gold Bloodrobe
    .target Xizk Goodstitch
    .isOnQuest 4781
step
    .goto 1434/0,-54.72,-11616.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 338 >>Accept The Green Hills of Stranglethorn
    .target Barnil Stonepot
step
    .goto 1434/0,-54.72,-11616.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 338 >>Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
    .isQuestComplete 338
step
    +|cRXP_WARN_That is all of Stranglethorn Vale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Crystal in the Mountains
    >>|cRXP_FRIENDLY_Duskwood|r: The Caravan Road
    >>|cRXP_FRIENDLY_Thousand Needles|r: Rumors for Kravel
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Green Hills of Stranglethorn
step
    +|cRXP_WARN_Suggested next zones at level 31|r: |cRXP_FRIENDLY_Duskwood|r (about 0.6 levels of quests, starting around Sirra Von'Indi). Completing this step loads the guide for Duskwood --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Stranglethorn Vale is planned from level 34.|r Load its guide for level 34 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 46 Stranglethorn Vale
#subweight -30
#name 34-35 Stranglethorn Vale: around Krazek
--RouteBuilder:next
#next Zone Routes (Alliance)\35-37 Dustwallow Marsh: around Captain Garran Vimes;Zone Routes (Alliance)\35-36 Badlands: around Prospector Ryedol

step << Warlock
    .goto 1434/0,388.78,-14439.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xizk Goodstitch|r
    .accept 4782 >>Accept Components for the Enchanted Gold Bloodrobe
    .target Xizk Goodstitch
    .isQuestTurnedIn 4781 --any of: Components for the Enchanted Gold Bloodrobe
    .xp <31,1
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 605 >>Accept Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto 1434/0,211.38,-12434.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Thulbek|r
    .target Innkeeper Thulbek
    .home >>Set your Hearthstone to Innkeeper Thulbek's inn
step
    .goto 1434/0,497.90,-14449.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
    .accept 213 >>Accept Hostile Takeover
    .target Kebok
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 616 >>Accept The Haunted Isle
    .target Krazek
step
    .goto 1434/0,483.22,-14438.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 616 >>Turn in The Haunted Isle
    .accept 578 >>Accept The Stone of the Tides
    .target Baron Revilgaz
step
    .goto 1434/0,-187.45,-11309.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .accept 210 >>Accept Krazek's Cookery
    .target Corporal Kaleb
step
    #loop
    .goto 1434/0,-616.91,-11916.63,0
    .goto 1434/0,-616.91,-11916.63,40,0
    .goto 1434/0,-525.66,-11979.59,40,0
    .goto 1434/0,-573.52,-12153.59,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Geologists|r. Loot them for |cRXP_LOOT_Tumbled Crystal|r
    .complete 213,1 --Tumbled Crystal (8)
    .mob Venture Co. Geologist
step
    .goto 1434/0,-52.17,-11620.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .accept 187 >>Accept Tiger Mastery
    .target Ajeck Rouack
    .isQuestTurnedIn 186 --any of: Tiger Mastery
step
    #loop
    .goto 1434/0,81.20,-11947.69,0
    .goto 1434/0,81.20,-11947.69,40,0
    .goto 1434/0,173.09,-11976.62,40,0
    >>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
    .complete 187,1 --Elder Stranglethorn Tiger slain (10)
    .mob Elder Stranglethorn Tiger
    .isOnQuest 187
step
    #loop
    .goto 1434/0,492.15,-11957.90,0
    .goto 1434/0,492.15,-11957.90,40,0
    .goto 1434/0,647.22,-11891.53,40,0
    .goto 1434/0,707.84,-11891.11,40,0
    >>Kill |cRXP_ENEMY_Stone Maw Basilisks|r, |cRXP_ENEMY_Crystal Spine Basilisks|r, |cRXP_ENEMY_Cold Eye Basilisks|r and |cRXP_ENEMY_Thrashtail Basilisks|r. Loot them for |cRXP_LOOT_Singing Crystal Shard|r
    .complete 605,1 --Singing Crystal Shard (10)
    .mob Stone Maw Basilisk
    .mob Crystal Spine Basilisk
    .mob Cold Eye Basilisk
    .mob Thrashtail Basilisk
step
    .goto 1434/0,845.04,-12103.82
    >>Locate the haunted island
    .complete 578,1 --Locate the haunted island
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 605 >>Turn in Singing Blue Shards
    .target Crank Fizzlebub
step
    .goto 1434/0,497.90,-14449.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
    .turnin 213 >>Turn in Hostile Takeover
    .target Kebok
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 210 >>Turn in Krazek's Cookery
    .target Krazek
step
    .goto 1434/0,483.22,-14438.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 578 >>Turn in The Stone of the Tides
    .accept 601 >>Accept Water Elementals
    .target Baron Revilgaz
step
    .goto 1434/0,415.58,-14469.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 577 >>Accept Some Assembly Required
    .target Drizzlik
    .isQuestTurnedIn 575 --any of: Supply and Demand
step
    .goto 1434/0,-205.32,-11310.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 574 >>Accept Special Forces
    .target Sergeant Yohwa
    .isQuestTurnedIn 203 --The Second Rebellion
    .isQuestTurnedIn 204 --Bad Medicine
step
    .goto 1434/0,-193.19,-11320.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 207 >>Accept Kurzen's Mystery
    .target Brother Nimetz
    .isQuestTurnedIn 203 --The Second Rebellion
    .isQuestTurnedIn 204 --Bad Medicine
step
    .goto 1434/0,-52.17,-11620.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 187 >>Turn in Tiger Mastery
    .target Ajeck Rouack
    .isOnQuest 187
step
    .goto 1434/0,-52.17,-11620.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .accept 188 >>Accept Tiger Mastery
    .target Ajeck Rouack
    .isQuestTurnedIn 187 --any of: Tiger Mastery
step
    .goto 1434/0,-47.70,-11617.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 192 >>Accept Panther Mastery
    .target Sir S. J. Erlgadin
    .isQuestTurnedIn 191 --any of: Panther Mastery
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 195 >>Accept Raptor Mastery
    .target Hemet Nesingwary Jr.
    .isQuestTurnedIn 194 --any of: Raptor Mastery
step
    #loop
    .goto 1434/0,-610.53,-11507.81,0
    .goto 1434/0,-610.53,-11507.81,40,0
    .goto 1434/0,-730.49,-11500.57,40,0
    .goto 1434/0,-864.50,-11472.07,40,0
    >>Kill |cRXP_ENEMY_Kurzen Commandos|r
    .complete 574,1 --Kurzen Commando slain (10)
    .mob Kurzen Commando
    .isOnQuest 574
step
    #loop
    .goto 1434/0,-735.60,-11464.84,0
    .goto 1434/0,-735.60,-11464.84,40,0
    .goto 1434/0,-849.82,-11475.48,40,0
    >>Kill |cRXP_ENEMY_Kurzen Headshrinkers|r
    .complete 574,2 --Kurzen Headshrinker slain (6)
    .mob Kurzen Headshrinker
    .isOnQuest 574
step
    #loop
    .goto 1434/0,-720.28,-12282.92,0
    .goto 1434/0,-720.28,-12282.92,40,0
    .goto 1434/0,-779.63,-12348.86,40,0
    >>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
    .complete 192,1 --Shadowmaw Panther slain (10)
    .mob Shadowmaw Panther
    .isOnQuest 192
step
    #loop
    .goto 1434/0,-344.43,-12326.73,0
    .goto 1434/0,-344.43,-12326.73,40,0
    .goto 1434/0,-378.89,-12112.32,40,0
    .goto 1434/0,-422.28,-12050.21,40,0
    .goto 1434/0,-454.82,-11845.59,40,0
    .goto 1434/0,-315.08,-11913.23,40,0
    >>Kill |cRXP_ENEMY_Snapjaw Crocolisks|r. Loot them for |cRXP_LOOT_Snapjaw Crocolisk Skin|r
    .complete 577,1 --Snapjaw Crocolisk Skin (5)
    .mob Snapjaw Crocolisk
    .isOnQuest 577
step
    #loop
    .goto 1434/0,53.76,-12252.29,0
    .goto 1434/0,53.76,-12252.29,40,0
    .goto 1434/0,175.00,-12180.82,40,0
    .goto 1434/0,255.41,-12156.57,40,0
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    .complete 195,1 --Lashtail Raptor slain (10)
    .mob Lashtail Raptor
    .isOnQuest 195
step
    .goto 1434/0,165.43,-11908.55
    >>Kill |cRXP_ENEMY_Sin'Dall|r and loot |cRXP_LOOT_Paw of Sin'Dall|r
    .complete 188,1 --Paw of Sin'Dall (1)
    .mob Sin'Dall
    .isOnQuest 188
step
    .goto 1434/0,339.64,-11983.00
    >>Open the |cRXP_PICK_Moon Over the Vale|r. Loot it for |cRXP_LOOT_The First Troll Legend|r
    .complete 207,1 --The First Troll Legend (1)
    .isOnQuest 207
step
    .goto 1434/0,644.66,-11548.65
    >>Open the |cRXP_PICK_The Emperor's Tomb|r. Loot it for |cRXP_LOOT_The Fourth Troll Legend|r
    .complete 207,4 --The Fourth Troll Legend (1)
    .isOnQuest 207
step
    .goto 1434/0,756.34,-11680.10
    >>Open the |cRXP_PICK_Fall of Gurubashi|r. Loot it for |cRXP_LOOT_The Third Troll Legend|r
    .complete 207,3 --The Third Troll Legend (1)
    .isOnQuest 207
step
    #loop
    .goto 1434/0,855.88,-12179.97,0
    .goto 1434/0,855.88,-12179.97,40,0
    .goto 1434/0,919.70,-12185.50,40,0
    >>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for |cRXP_LOOT_Water Elemental Bracers|r
    .complete 601,1 --Water Elemental Bracers (6)
    .mob Lesser Water Elemental
step
    .goto 1434/0,637.01,-12148.48
    >>Open the |cRXP_PICK_Gri'lek the Wanderer|r. Loot it for |cRXP_LOOT_The Second Troll Legend|r
    .complete 207,2 --The Second Troll Legend (1)
    .isOnQuest 207
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 195 >>Turn in Raptor Mastery
    .target Hemet Nesingwary Jr.
    .isOnQuest 195
step
    .goto 1434/0,-52.17,-11620.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 188 >>Turn in Tiger Mastery
    .target Ajeck Rouack
    .isOnQuest 188
step
    .goto 1434/0,-47.70,-11617.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 192 >>Turn in Panther Mastery
    .target Sir S. J. Erlgadin
    .isOnQuest 192
step
    .goto 1434/0,-193.19,-11320.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 207 >>Turn in Kurzen's Mystery
    .target Brother Nimetz
    .isOnQuest 207
step
    .goto 1434/0,-206.59,-11296.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 574 >>Turn in Special Forces
    .target Lieutenant Doren
    .isOnQuest 574
step
    .goto 1434/0,483.22,-14438.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 601 >>Turn in Water Elementals
    .accept 602 >>Accept Magical Analysis
    .target Baron Revilgaz
step
    .goto 1434/0,415.58,-14469.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 577 >>Turn in Some Assembly Required
    .target Drizzlik
    .isOnQuest 577
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 627 >>Accept Favor for Krazek
    .target Krazek
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 627 >>Turn in Favor for Krazek
    .target Krazek
    .isQuestComplete 627
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 622 >>Accept Return to Corporal Kaleb
    .target Krazek
    .isQuestTurnedIn 627 --any of: Favor for Krazek
    .xp <32,1
step
    .goto 1434/0,-187.45,-11309.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .turnin 622 >>Turn in Return to Corporal Kaleb
    .target Corporal Kaleb
    .isOnQuest 622
step
    .goto 1434/0,-54.72,-11616.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 338 >>Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
    .isQuestComplete 338
step
    +|cRXP_WARN_That is all of Stranglethorn Vale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Alterac Mountains|r: Magical Analysis
    >>|cRXP_FRIENDLY_The Barrens|r: Components for the Enchanted Gold Bloodrobe << Warlock
    >>|cRXP_FRIENDLY_Arathi Highlands and back here|r: Favor for Krazek
step
    +|cRXP_WARN_Suggested next zones at level 35|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 2.2 levels of quests, starting around Captain Garran Vimes), |cRXP_FRIENDLY_Badlands|r (about 0.5 levels of quests, starting around Prospector Ryedol). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Stranglethorn Vale is planned from level 38.|r Load its guide for level 38 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 46 Stranglethorn Vale
#subweight -30
#name 38-40 Stranglethorn Vale: around Fleet Master Seahorn
--RouteBuilder:next
#next Zone Routes (Alliance)\37-39 Dustwallow Marsh: around "Swamp Eye" Jarl;Zone Routes (Alliance)\38-39 Arathi Highlands: around Skuerto

step
    .goto 1434/0,419.41,-14331.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Yance|r
    .target Kelsey Yance
    .home >>Set your Hearthstone to Kelsey Yance's inn
step
    .goto 1434/0,487.05,-14444.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .accept 670 >>Accept Sunken Treasure
    .target Fleet Master Seahorn
    .isQuestTurnedIn 669 --any of: Sunken Treasure
    .xp <35,1
step
    .goto 1434/0,483.22,-14438.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 1182 >>Accept Goblin Sponsorship
    .target Baron Revilgaz
    .isQuestTurnedIn 1181 --any of: Goblin Sponsorship
    .xp <29,1
step
    .goto 1434/0,-500.13,-11949.39
    >>Kill |cRXP_ENEMY_Foreman Cozzle|r and loot |cRXP_LOOT_Cozzle's Key|r
    .collect 5851,1,1182,1 --Cozzle's Key (1)
    .mob Foreman Cozzle
    .isOnQuest 1182
step
    .goto 1434/0,-544.16,-12033.62
    >>Open the |cRXP_PICK_Cozzle's Footlocker|r. Loot it for |cRXP_LOOT_Fuel Regulator Blueprints|r
    .complete 1182,1 --Fuel Regulator Blueprints (1)
    .isOnQuest 1182
step
    #completewith next
    .hs >>Hearth to Kelsey Yance's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1434/0,483.22,-14438.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 1182 >>Turn in Goblin Sponsorship
    .target Baron Revilgaz
    .isOnQuest 1182
step
    .goto 1434/0,483.22,-14438.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 1183 >>Accept Goblin Sponsorship
    .target Baron Revilgaz
    .isQuestTurnedIn 1182 --any of: Goblin Sponsorship
    .xp <29,1
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 196 >>Accept Raptor Mastery
    .target Hemet Nesingwary Jr.
    .isQuestTurnedIn 195 --any of: Raptor Mastery
step
    .goto 1434/0,-47.70,-11617.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 193 >>Accept Panther Mastery
    .target Sir S. J. Erlgadin
    .isQuestTurnedIn 192 --any of: Panther Mastery
step
    .goto 1434/0,-193.19,-11320.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 205 >>Accept Troll Witchery
    .target Brother Nimetz
    .isQuestTurnedIn 207 --any of: Kurzen's Mystery
step
    .goto 1434/0,-206.59,-11296.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .accept 202 >>Accept Colonel Kurzen
    .target Lieutenant Doren
    .isQuestTurnedIn 574 --any of: Special Forces
step
    #completewith next
    .hs >>Hearth to Kelsey Yance's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1434/0,415.58,-14469.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 628 >>Accept Excelsior
    .target Drizzlik
    .isQuestTurnedIn 577 --any of: Some Assembly Required
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 600 >>Accept Venture Company Mining
    .target Crank Fizzlebub
    .isQuestTurnedIn 605 --any of: Singing Blue Shards
step
    .goto 1434/0,480.03,-14467.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .accept 610 >>Accept "Pretty Boy" Duncan
    .target Catelyn the Blade
    .isQuestTurnedIn 603 --any of: Ansirem's Key
    .xp <32,1
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 627 >>Turn in Favor for Krazek
    .target Krazek
    .isQuestComplete 627
step
    .goto 1434/0,448.12,-14447.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 606 >>Accept Scaring Shaky
    .target "Sea Wolf" MacKinley
step
    .goto 1434/0,427.70,-14411.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .accept 595 >>Accept The Bloodsail Buccaneers
    .target First Mate Crazz
step
    #loop
    .goto 1434/0,113.11,-13981.60,0
    .goto 1434/0,113.11,-13981.60,40,0
    .goto 1434/0,82.48,-13875.25,40,0
    .goto 1434/0,178.20,-13713.59,40,0
    >>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for |cRXP_LOOT_Mistvale Giblets|r
    .complete 606,1 --Mistvale Giblets (5)
    .mob Elder Mistvale Gorilla
step
    .goto 1434/0,480.03,-14126.25
    >>Click the |cRXP_PICK_Bloodsail Correspondence|r
    .turnin 595 >>Turn in The Bloodsail Buccaneers
    .accept 597 >>Accept The Bloodsail Buccaneers
step
    .goto 1434/0,473.01,-14121.99
    >>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r and loot |cRXP_LOOT_Catelyn's Blade|r
    .complete 610,1 --Catelyn's Blade (1)
    .mob "Pretty Boy" Duncan
    .isOnQuest 610
step
    .goto 1434/0,504.28,-14299.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
    .turnin 606 >>Turn in Scaring Shaky
    .accept 607 >>Accept Return to MacKinley
    .target "Shaky" Phillipe
step
    .goto 1434/0,427.70,-14411.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .turnin 597 >>Turn in The Bloodsail Buccaneers
    .accept 599 >>Accept The Bloodsail Buccaneers
    .target First Mate Crazz
step
    .goto 1434/0,448.12,-14447.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 607 >>Turn in Return to MacKinley
    .target "Sea Wolf" MacKinley
step
    .goto 1434/0,480.03,-14467.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .turnin 610 >>Turn in "Pretty Boy" Duncan
    .target Catelyn the Blade
    .isOnQuest 610
step
    .goto 1434/0,480.03,-14467.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .accept 611 >>Accept The Curse of the Tides
    .target Catelyn the Blade
    .isQuestTurnedIn 610 --any of: "Pretty Boy" Duncan
    .xp <32,1
step
    .goto 1434/0,487.05,-14444.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 599 >>Turn in The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .goto 1434/0,497.90,-14449.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
    .accept 209 >>Accept Skullsplitter Tusks
    .target Kebok
    .isQuestTurnedIn 189 --any of: Bloodscalp Ears
step
    #loop
    .goto 1434/0,376.01,-13047.39,0
    .goto 1434/0,376.01,-13047.39,40,0
    .goto 1434/0,478.11,-13014.21,40,0
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r
    .complete 196,1 --Jungle Stalker slain (10)
    .mob Jungle Stalker
    .isOnQuest 196
step
    #loop
    .goto 1434/0,-436.96,-12992.94,0
    .goto 1434/0,-436.96,-12992.94,40,0
    .goto 1434/0,-444.61,-13090.36,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Strip Miners|r, |cRXP_ENEMY_Venture Co. Foremans|r, |cRXP_ENEMY_Venture Co. Surveyors|r and |cRXP_ENEMY_Venture Co. Tinkerers|r. Loot them for |cRXP_LOOT_Singing Blue Crystal|r
    .complete 600,1 --Singing Blue Crystal (10)
    .mob Venture Co. Strip Miner
    .mob Venture Co. Foreman
    .mob Venture Co. Surveyor
    .mob Venture Co. Tinkerer
    .isOnQuest 600
step
    #loop
    .goto 1434/0,-592.02,-12873.39,0
    .goto 1434/0,-592.02,-12873.39,40,0
    .goto 1434/0,-689.02,-12988.68,40,0
    .goto 1434/0,-813.45,-12841.91,40,0
    .goto 1434/0,-478.44,-12704.93,40,0
    >>Kill |cRXP_ENEMY_Skullsplitter Warriors|r, |cRXP_ENEMY_Skullsplitter Hunters|r, |cRXP_ENEMY_Skullsplitter Witch Doctors|r and |cRXP_ENEMY_Skullsplitter Spiritchasers|r. Loot them for |cRXP_LOOT_Skullsplitter Tusk|r
    .complete 209,1 --Skullsplitter Tusk (18)
    .mob Skullsplitter Warrior
    .mob Skullsplitter Hunter
    .mob Skullsplitter Witch Doctor
    .mob Skullsplitter Spiritchaser
    .isOnQuest 209
step
    #loop
    .goto 1434/0,-784.74,-12847.44,0
    .goto 1434/0,-784.74,-12847.44,40,0
    .goto 1434/0,-875.35,-12907.43,40,0
    .goto 1434/0,-649.45,-12948.69,40,0
    >>Kill |cRXP_ENEMY_Skullsplitter Witch Doctors|r and |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for |cRXP_LOOT_Skullsplitter Fetish|r
    .complete 205,1 --Skullsplitter Fetish (4)
    .mob Skullsplitter Witch Doctor
    .mob Skullsplitter Mystic
    .isOnQuest 205
step
    .goto 1434/0,-893.22,-12019.58
    >>Kill |cRXP_ENEMY_Bhag'thera|r and loot |cRXP_LOOT_Fang of Bhag'thera|r
    .complete 193,1 --Fang of Bhag'thera (1)
    .mob Bhag'thera
    .isOnQuest 193
step
    .goto 1434/0,-914.91,-11510.36
    >>Kill |cRXP_ENEMY_Kurzen Elites|r
    .complete 202,1 --Kurzen Elite slain (6)
    .mob Kurzen Elite
    .isOnQuest 202
step
    #loop
    .goto 1434/0,-914.27,-11412.51,0
    .goto 1434/0,-914.27,-11412.51,40,0
    .goto 1434/0,-925.12,-11343.17,40,0
    >>Kill |cRXP_ENEMY_Kurzen Subchiefs|r
    .complete 202,2 --Kurzen Subchief slain (4)
    .mob Kurzen Subchief
    .isOnQuest 202
step
    .goto 1434/0,-965.96,-11336.79
    >>Kill |cRXP_ENEMY_Colonel Kurzen|r and loot |cRXP_LOOT_Kurzen's Head|r
    .complete 202,3 --Kurzen's Head (1)
    .mob Colonel Kurzen
    .isOnQuest 202
step
    .goto 1434/0,-193.19,-11320.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 205 >>Turn in Troll Witchery
    .target Brother Nimetz
    .isOnQuest 205
step
    .goto 1434/0,-206.59,-11296.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 202 >>Turn in Colonel Kurzen
    .target Lieutenant Doren
    .isOnQuest 202
step
    .goto 1434/0,-47.70,-11617.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 193 >>Turn in Panther Mastery
    .target Sir S. J. Erlgadin
    .isOnQuest 193
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 196 >>Turn in Raptor Mastery
    .target Hemet Nesingwary Jr.
    .isOnQuest 196
step
    .goto 1434/0,603.19,-11986.40
    >>Kill |cRXP_ENEMY_Elder Saltwater Crocolisk|r and loot |cRXP_LOOT_Elder Crocolisk Skin|r
    .complete 628,1 --Elder Crocolisk Skin (1)
    .mob Elder Saltwater Crocolisk
    .isOnQuest 628
step
    .goto 1434/0,627.44,-12171.88
    >>Kill |cRXP_ENEMY_Gazban|r and loot |cRXP_LOOT_Stone of the Tides|r
    .complete 611,1 --Stone of the Tides (1)
    .mob Gazban
    .isOnQuest 611
step
    #completewith next
    .hs >>Hearth to Kelsey Yance's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 600 >>Turn in Venture Company Mining
    .target Crank Fizzlebub
    .isOnQuest 600
step
    .goto 1434/0,497.90,-14449.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kebok|r
    .turnin 209 >>Turn in Skullsplitter Tusks
    .target Kebok
    .isOnQuest 209
step
    .goto 1434/0,483.22,-14438.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 611 >>Turn in The Curse of the Tides
    .target Baron Revilgaz
    .isOnQuest 611
step
    .goto 1434/0,415.58,-14469.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 628 >>Turn in Excelsior
    .target Drizzlik
    .isOnQuest 628
step
    .goto 1434/0,503.00,-14459.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .accept 587 >>Accept Up to Snuff
    .target Deeg
step
    .goto 1434/0,487.05,-14444.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .accept 604 >>Accept The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .goto 1434/0,396.43,-14397.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .accept 576 >>Accept Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto 1434/0,737.19,-14236.00
    >>Kill |cRXP_ENEMY_Mok'rash|r and loot |cRXP_LOOT_Monogrammed Sash|r. Use it to start the quest
    .collect 3985,1,8552 --Monogrammed Sash (1)
    .accept 8552 >>Accept The Monogrammed Sash
    .use 3985
    .mob Mok'rash
step
    .goto 1434/0,517.68,-14300.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8552 >>Turn in The Monogrammed Sash
    .accept 8553 >>Accept The Captain's Cutlass
    .target Captain Hecklebury Smotts
step
    .goto 1434/0,519.59,-14301.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprogger|r
    .turnin 8553 >>Turn in The Captain's Cutlass
    .target Sprogger
step
    #completewith Along53
    >>As you go: Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r. |cRXP_WARN_Anything left is finished later|r
    .complete 576,1 --Dizzy's Eye (1)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step
    #completewith Along51
    >>As you go: Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Snuff|r. |cRXP_WARN_Anything left is finished later|r
    .complete 587,1 --Snuff (15)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step
    #label Along51
    .goto 1434/0,485.13,-14715.45
    >>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
    >>Pick up |cRXP_PICK_Bloodsail Charts|r from the ground
    >>Pick up |cRXP_PICK_Bloodsail Orders|r from the ground
    .complete 604,1 --Bloodsail Swashbuckler slain (10)
    .complete 604,2 --Bloodsail Charts (1)
    .complete 604,3 --Bloodsail Orders (1)
    .mob Bloodsail Swashbuckler
step
    .goto 1434/0,487.05,-14444.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 604 >>Turn in The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    #label Along53
    #loop
    .goto 1434/0,419.41,-14674.18,0
    .goto 1434/0,419.41,-14674.18,40,0
    .goto 1434/0,503.64,-14698.86,40,0
    >>Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Snuff|r
    .complete 587,1 --Snuff (15)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step
    .goto 1434/0,503.00,-14459.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .turnin 587 >>Turn in Up to Snuff
    .target Deeg
step
    .goto 1434/0,314.12,-14623.56
    >>Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r
    .complete 576,1 --Dizzy's Eye (1)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step
    .goto 1434/0,396.43,-14397.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .turnin 576 >>Turn in Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto 1434/0,-54.72,-11616.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 338 >>Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
    .isQuestComplete 338
step
    +|cRXP_WARN_That is all of Stranglethorn Vale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Sunken Treasure
    >>|cRXP_FRIENDLY_Thousand Needles|r: Goblin Sponsorship
step
    +|cRXP_WARN_Suggested next zones at level 39|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.6 levels of quests, starting around "Swamp Eye" Jarl), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.6 levels of quests, starting around Skuerto). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Stranglethorn Vale is planned from level 42.|r Load its guide for level 42 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 46 Stranglethorn Vale
#subweight -30
#name 42-43 Stranglethorn Vale: around "Sea Wolf" MacKinley

step
    .goto 1434/0,419.41,-14331.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Yance|r
    .target Kelsey Yance
    .home >>Set your Hearthstone to Kelsey Yance's inn
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 621 >>Accept Zanzil's Secret
    .target Crank Fizzlebub
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 627 >>Turn in Favor for Krazek
    .target Krazek
    .isQuestComplete 627
step
    .goto 1434/0,448.12,-14447.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 609 >>Accept Voodoo Dues
    .target "Sea Wolf" MacKinley
    .isQuestTurnedIn 607 --any of: Return to MacKinley
step
    .goto 1434/0,513.21,-14418.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
    .accept 617 >>Accept Akiris by the Bundle
    .target Privateer Bloads
step
    #loop
    .goto 1434/0,621.05,-13878.23,0
    .goto 1434/0,621.05,-13878.23,40,0
    .goto 1434/0,633.18,-13700.83,40,0
    .goto 1434/0,536.18,-13720.82,40,0
    >>Kill |cRXP_ENEMY_Naga Explorer|r and loot |cRXP_LOOT_Akiris Reed|r
    .complete 617,1 --Akiris Reed (1)
    .mob Naga Explorer
step
    #completewith Along8
    >>As you go: Kill |cRXP_ENEMY_Zanzil Zombies|r, |cRXP_ENEMY_Zanzil Hunters|r, |cRXP_ENEMY_Zanzil Witch Doctors|r and |cRXP_ENEMY_Zanzil Nagas|r. Loot them for |cRXP_LOOT_Zanzil's Mixture|r. |cRXP_WARN_Anything left is finished later|r
    .complete 621,1 --Zanzil's Mixture (1)
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Witch Doctor
    .mob Zanzil Naga
step
    .goto 1434/0,-331.67,-13646.38
    >>Kill |cRXP_ENEMY_Chucky "Ten Thumbs"|r and loot |cRXP_LOOT_Chucky's Huge Ring|r
    .complete 609,3 --Chucky's Huge Ring (1)
    .mob Chucky "Ten Thumbs"
    .isOnQuest 609
step
    .goto 1434/0,-29.20,-13349.86
    >>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r and loot |cRXP_LOOT_Maury's Clubbed Foot|r
    .complete 609,1 --Maury's Clubbed Foot (1)
    .mob Maury "Club Foot" Wilkins
    .isOnQuest 609
step
    #label Along8
    .goto 1434/0,-7.50,-13374.11
    >>Kill |cRXP_ENEMY_Jon-Jon the Crow|r and loot |cRXP_LOOT_Jon-Jon's Golden Spyglass|r
    .complete 609,2 --Jon-Jon's Golden Spyglass (1)
    .mob Jon-Jon the Crow
    .isOnQuest 609
step
    #loop
    .goto 1434/0,-269.13,-13651.06,0
    .goto 1434/0,-269.13,-13651.06,40,0
    .goto 1434/0,-331.67,-13646.38,40,0
    .goto 1434/0,-415.90,-13594.05,40,0
    >>Kill |cRXP_ENEMY_Zanzil Zombies|r, |cRXP_ENEMY_Zanzil Hunters|r, |cRXP_ENEMY_Zanzil Witch Doctors|r and |cRXP_ENEMY_Zanzil Nagas|r. Loot them for |cRXP_LOOT_Zanzil's Mixture|r
    .complete 621,1 --Zanzil's Mixture (1)
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Witch Doctor
    .mob Zanzil Naga
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 197 >>Accept Raptor Mastery
    .target Hemet Nesingwary Jr.
    .isQuestTurnedIn 196 --any of: Raptor Mastery
step
    #completewith next
    .hs >>Hearth to Kelsey Yance's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 621 >>Turn in Zanzil's Secret
    .target Crank Fizzlebub
step
    .goto 1434/0,490.24,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 1119 >>Accept Zanzil's Mixture and a Fool's Stout
    .target Crank Fizzlebub
    .isQuestTurnedIn 1118 --Back to Booty Bay
    .xp <35,1
step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 2864 >>Accept Tran'rek
    .target Krazek
step
    .goto 1434/0,513.21,-14418.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
    .turnin 617 >>Turn in Akiris by the Bundle
    .accept 623 >>Accept Akiris by the Bundle
    .target Privateer Bloads
step
    .goto 1434/0,448.12,-14447.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 609 >>Turn in Voodoo Dues
    .target "Sea Wolf" MacKinley
    .isOnQuest 609
step
    .goto 1434/0,448.12,-14447.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 2872 >>Accept Stoley's Debt
    .target "Sea Wolf" MacKinley
step
    .goto 1434/0,448.12,-14447.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 613 >>Accept Cracking Maury's Foot
    .target "Sea Wolf" MacKinley
    .isQuestTurnedIn 609 --any of: Voodoo Dues
step
    .goto 1434/0,458.97,-14433.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .accept 348 >>Accept Stranglethorn Fever
    .target Fin Fizracket
step
    .goto 1434/0,517.68,-14300.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .accept 8551 >>Accept The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 1434/0,519.59,-14301.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprogger|r
    .accept 8554 >>Accept Facing Negolash
    .target Sprogger
    .isQuestTurnedIn 8553 --any of: The Captain's Cutlass
step
    .goto 1434/0,487.05,-14444.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .accept 608 >>Accept The Bloodsail Buccaneers
    .target Fleet Master Seahorn
    .isQuestTurnedIn 604 --any of: The Bloodsail Buccaneers
step
    .goto 1434/0,349.85,-14924.75
    >>Kill |cRXP_ENEMY_Captain Keelhaul|r
    .complete 608,2 --Captain Keelhaul slain (1)
    .mob Captain Keelhaul
    .isOnQuest 608
step
    .goto 1434/0,269.45,-15024.30
    >>Kill |cRXP_ENEMY_Fleet Master Firallon|r
    .complete 608,3 --Fleet Master Firallon slain (1)
    .mob Fleet Master Firallon
    .isOnQuest 608
step
    .goto 1434/0,123.32,-14920.92
    >>Kill |cRXP_ENEMY_Captain Stillwater|r
    .complete 608,1 --Captain Stillwater slain (1)
    .mob Captain Stillwater
    .isOnQuest 608
step
    .goto 1434/0,150.12,-14638.87
    >>Kill |cRXP_ENEMY_Negolash|r and loot |cRXP_LOOT_Smotts' Cutlass|r
    .complete 8554,1 --Smotts' Cutlass (1)
    .mob Negolash
    .isOnQuest 8554
step
    .goto 1434/0,-237.86,-14596.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .accept 630 >>Accept Message in a Bottle
    .target Princess Poobah
    .isQuestTurnedIn 594 --any of: Message in a Bottle
    .xp <42,1
step
    .goto 1434/0,-392.29,-14738.00
    >>Kill |cRXP_ENEMY_King Mukla|r and loot |cRXP_LOOT_Shackle Key|r
    .complete 630,1 --Shackle Key (1)
    .mob King Mukla
    .isOnQuest 630
step
    .goto 1434/0,-237.86,-14596.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 630 >>Turn in Message in a Bottle
    .target Princess Poobah
    .isOnQuest 630
step
    .goto 1434/0,-137.04,-14135.18
    >>Kill |cRXP_ENEMY_Gorlash|r and loot |cRXP_LOOT_Smotts' Chest|r
    .complete 8551,1 --Smotts' Chest (1)
    .mob Gorlash
step
    .goto 1434/0,517.68,-14300.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8554 >>Turn in Facing Negolash
    .target Captain Hecklebury Smotts
    .isOnQuest 8554
step
    .goto 1434/0,517.68,-14300.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 8551 >>Turn in The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 1434/0,-15.79,-13758.69
    >>Kill |cRXP_ENEMY_Mokk the Savage|r and loot |cRXP_LOOT_Heart of Mokk|r
    .complete 348,1 --Heart of Mokk (1)
    .mob Mokk the Savage
step
    .goto 1434/0,210.74,-12921.47
    >>Kill |cRXP_ENEMY_Tethis|r and loot |cRXP_LOOT_Talon of Tethis|r
    .complete 197,1 --Talon of Tethis (1)
    .mob Tethis
    .isOnQuest 197
step
    #loop
    .goto 1434/0,-981.92,-12348.43,0
    .goto 1434/0,-981.92,-12348.43,40,0
    .goto 1434/0,-1082.10,-12333.54,40,0
    >>Kill |cRXP_ENEMY_Mosh'Ogg Maulers|r, |cRXP_ENEMY_Mosh'Ogg Shamans|r, |cRXP_ENEMY_Mosh'Ogg Lords|r and |cRXP_ENEMY_Mosh'Ogg Warmongers|r. Loot them for |cRXP_LOOT_Maury's Key|r
    .complete 613,1 --Maury's Key (1)
    .mob Mosh'Ogg Mauler
    .mob Mosh'Ogg Shaman
    .mob Mosh'Ogg Lord
    .mob Mosh'Ogg Warmonger
    .isOnQuest 613
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 197 >>Turn in Raptor Mastery
    .target Hemet Nesingwary Jr.
    .isOnQuest 197
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 208 >>Accept Big Game Hunter
    .target Hemet Nesingwary Jr.
    .isQuestTurnedIn 188 --Tiger Mastery
    .isQuestTurnedIn 193 --Panther Mastery
    .isQuestTurnedIn 197 --Raptor Mastery
step
    .goto 1434/0,-54.72,-11616.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 338 >>Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
    .isQuestComplete 338
step
    .goto 1434/0,-217.44,-12682.38
    >>Kill |cRXP_ENEMY_King Bangalash|r and loot |cRXP_LOOT_Head of Bangalash|r
    .complete 208,1 --Head of Bangalash (1)
    .mob King Bangalash
    .isOnQuest 208
step
    .goto 1434/0,-54.72,-11628.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 208 >>Turn in Big Game Hunter
    .target Hemet Nesingwary Jr.
    .isOnQuest 208
step
    .goto 1434/0,487.05,-14444.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 608 >>Turn in The Bloodsail Buccaneers
    .target Fleet Master Seahorn
    .isOnQuest 608
step
    .goto 1434/0,448.12,-14447.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 613 >>Turn in Cracking Maury's Foot
    .target "Sea Wolf" MacKinley
    .isOnQuest 613
step
    .goto 1434/0,458.97,-14433.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .turnin 348 >>Turn in Stranglethorn Fever
    .target Fin Fizracket
step
    .goto 1434/0,488.96,-14463.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
    .accept 580 >>Accept Whiskey Slim's Lost Grog
    .target Whiskey Slim
step
    .goto 1434/0,488.96,-14463.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
    .turnin 580 >>Turn in Whiskey Slim's Lost Grog
    .target Whiskey Slim
    .isQuestComplete 580
step
    .goto 1434/0,411.11,-14416.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .accept 3721 >>Accept An OOX of Your Own
    .target Oglethorpe Obnoticus
    .isQuestTurnedIn 648 --Rescue OOX-17/TN!
    .isQuestTurnedIn 836 --Rescue OOX-09/HL!
    .isQuestTurnedIn 2767 --Rescue OOX-22/FE!
    .xp <40,1
step
    .goto 1434/0,411.11,-14416.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 3721 >>Turn in An OOX of Your Own
    .target Oglethorpe Obnoticus
    .isOnQuest 3721
step
    +|cRXP_WARN_That is all of Stranglethorn Vale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Akiris by the Bundle
    >>|cRXP_FRIENDLY_Tanaris|r: Tran'rek, Stoley's Debt
    >>|cRXP_FRIENDLY_Thousand Needles|r: Zanzil's Mixture and a Fool's Stout
    >>|cRXP_FRIENDLY_The Hinterlands and back here|r: Whiskey Slim's Lost Grog
step
    +|cRXP_WARN_The rest of Stranglethorn Vale is planned from level 45.|r Load its guide for level 45 then
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 46 Stranglethorn Vale
#subweight -30
#name 45-46 Stranglethorn Vale

step
    .goto 1434/0,501.09,-14453.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 627 >>Turn in Favor for Krazek
    .target Krazek
    .isQuestComplete 627
step
    .goto 1434/0,488.96,-14463.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r
    .turnin 580 >>Turn in Whiskey Slim's Lost Grog
    .target Whiskey Slim
    .isQuestComplete 580
step
    .goto 1434/0,-193.19,-11320.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 206 >>Accept Mai'Zoth
    .target Brother Nimetz
    .isQuestTurnedIn 202 --Colonel Kurzen
    .isQuestTurnedIn 205 --Troll Witchery
step
    .goto 1434/0,-1156.76,-12342.90
    >>Kill |cRXP_ENEMY_Mai'Zoth|r and loot |cRXP_LOOT_Mind's Eye|r
    .complete 206,1 --Mind's Eye (1)
    .mob Mai'Zoth
    .isOnQuest 206
step
    .goto 1434/0,-54.72,-11616.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 338 >>Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
    .isQuestComplete 338
step
    .goto 1434/0,-193.19,-11320.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 206 >>Turn in Mai'Zoth
    .target Brother Nimetz
    .isOnQuest 206
step
    +|cRXP_WARN_End of the Stranglethorn Vale route.|r
]])
