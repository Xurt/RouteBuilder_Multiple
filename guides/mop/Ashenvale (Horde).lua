-- 21-26 Ashenvale: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 21, 28).
-- Split into 2 guides, listed under "21 - 29 Ashenvale" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Ashenvale.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 21 - 29 Ashenvale
#subweight -21
#name 21-26 Ashenvale: around Commander Grimfang
--RouteBuilder:next
#next Zone Routes (Horde)\25-30 Northern Stranglethorn;Zone Routes (Horde)\22-27 Hillsbrad Foothills: around Serge Hinott;Zone Routes (Horde)\26-31 Arathi Highlands

step
    .goto 63,26.68,36.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Onaeya|r
    .turnin 5713 >>Turn in One Shot.  One Kill.
    .target Sentinel Onaeya
    .isQuestComplete 5713
step
    .goto 63,59.44,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elestren|r
    .target Elestren
    .home >>Set your Hearthstone to Elestren's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,64.16,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorat|r
    .turnin 13618 >>Turn in Find Gorat!
    .target Gorat
    .isOnQuest 13618
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,64.16,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorat|r
    .accept 13619 >>Accept Final Report
    .target Gorat
    .isQuestTurnedIn 13618 --any of: Find Gorat!
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .turnin 13628 >>Turn in Got Wood?
    .target Gorka
    .isQuestComplete 13628
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .accept 13640 >>Accept Management Material
    .target Gorka
    .isQuestTurnedIn 13628 --any of: Got Wood?
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,70.81,81.69
    >>Pick up |cRXP_PICK_Freshly Cut Wood|r from the ground
    .complete 13640,1 --Freshly Cut Wood (5)
    .isOnQuest 13640
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .turnin 13640 >>Turn in Management Material
    .target Gorka
    .isOnQuest 13640
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .accept 13651 >>Accept Needs a Little Lubrication
    .target Gorka
    .isQuestTurnedIn 13640 --any of: Management Material
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,73.72,78.20,0
    .goto 63,73.72,78.20,40,0
    .goto 63,73.83,74.48,40,0
    .goto 63,72.52,71.72,40,0
    >>Kill |cRXP_ENEMY_Rotting Slimes|r. Loot them for |cRXP_LOOT_Natural Oil|r
    .complete 13651,1 --Natural Oil (5)
    .mob Rotting Slime
    .isOnQuest 13651
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .turnin 13651 >>Turn in Needs a Little Lubrication
    .target Gorka
    .isOnQuest 13651
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .accept 13653 >>Accept Crisis at Splintertree
    .target Gorka
    .isQuestTurnedIn 13651 --any of: Needs a Little Lubrication
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.81,61.32
    >>Splintertree Post Siege Broken
    .complete 13712,1 --Splintertree Post Siege Broken
    .isOnQuest 13712
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13712 >>Turn in To the Rescue!
    .target Kadrak
    .isOnQuest 13712
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .accept 13803 >>Accept Blood of the Weak
    .target Kadrak
    .isQuestTurnedIn 13712 --any of: To the Rescue!
    .xp <19,1
step
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fp >>Get the Splintertree Post Flight Path
    .target Vhulgra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.56,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >>Accept Ashenvale Outrunners
    .target Kuray'bin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .accept 26448 >>Accept Destroy the Legion
    .target Valusha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.19,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .turnin 13803 >>Turn in Blood of the Weak
    .target Durak
    .isOnQuest 13803
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.19,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .accept 13805 >>Accept Pierce Their Heart!
    .target Durak
    .isQuestTurnedIn 13803 --any of: Blood of the Weak
    .xp <19,1
step
    .goto 63,73.86,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .accept 13801 >>Accept Dead Elves Walking
    .target Pixel
    .isQuestTurnedIn 13803 --any of: Blood of the Weak
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.33,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .accept 13730 >>Accept Playing With Felfire
    .target Splintertree Demolisher
    .isQuestTurnedIn 13803 --any of: Blood of the Weak
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along21
    >>As you go: Kill |cRXP_ENEMY_Searing Infernals|r, |cRXP_ENEMY_Roaming Felguards|r and |cRXP_ENEMY_Mannoroc Lashers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26448,1 --Searing Infernal (15)
    .mob Searing Infernal
    .mob Roaming Felguard
    .mob Mannoroc Lasher
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along21
    #loop
    .goto 63,82.43,66.72,0
    .goto 63,82.43,66.72,40,0
    .goto 63,84.95,69.72,40,0
    .goto 63,82.05,71.86,40,0
    >>Draaka in Splintertree wants you to fill the Reinforced Canister with 7 Felfires from Felfire Hill.
    .complete 13730,1 --Fel Fire Bunny (7)
    .target Fel Fire Bunny
    .isOnQuest 13730
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop26447x1
    >>|cRXP_LOOT_Diabolical Plans|r can drop from |cRXP_ENEMY_Searing Infernal|r, |cRXP_ENEMY_Roaming Felguard|r, |cRXP_ENEMY_Mannoroc Lasher|r. Use it to start the quest if you get one
    .collect 23797,1,26447 --Diabolical Plans (1)
    .accept 26447 >>Accept Diabolical Plans
    .use 23797
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop26447x1
    #loop
    .goto 63,81.15,69.18,0
    .goto 63,81.15,69.18,40,0
    .goto 63,83.52,70.55,40,0
    >>Kill |cRXP_ENEMY_Searing Infernals|r, |cRXP_ENEMY_Roaming Felguards|r and |cRXP_ENEMY_Mannoroc Lashers|r
    .complete 26448,1 --Searing Infernal (15)
    .mob Searing Infernal
    .mob Roaming Felguard
    .mob Mannoroc Lasher
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along24
    >>As you go: Kill |cRXP_ENEMY_Ashenvale Outrunners|r. |cRXP_WARN_Anything left is finished later|r
    .complete 6503,1 --Ashenvale Outrunner slain (9)
    .mob Ashenvale Outrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,75.52,74.21
    >>Click the |cRXP_PICK_The Forest Heart|r
    .complete 13805,1 --The Forest Heart
    .isOnQuest 13805
step
    #label Along24
    #loop
    .goto 63,76.72,74.10,0
    .goto 63,76.72,74.10,40,0
    .goto 63,74.74,75.23,40,0
    >>Kill |cRXP_ENEMY_Severed Druids|r and |cRXP_ENEMY_Severed Keepers|r
    .complete 13801,1 --Severed Druid (15)
    .mob Severed Druid
    .mob Severed Keeper
    .isOnQuest 13801
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,73.33,73.81,0
    .goto 63,73.33,73.81,40,0
    .goto 63,72.95,70.30,40,0
    >>Kill |cRXP_ENEMY_Ashenvale Outrunners|r
    .complete 6503,1 --Ashenvale Outrunner slain (9)
    .mob Ashenvale Outrunner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,71.14,74.56
    >>Kill |cRXP_ENEMY_Sharptalon|r and loot |cRXP_LOOT_Sharptalon's Claw|r. Use it to start the quest
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>Accept Sharptalon's Claw
    .use 16305
    .mob Sharptalon
step
    .goto 63,73.86,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .turnin 13801 >>Turn in Dead Elves Walking
    .target Pixel
    .isOnQuest 13801
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Turn in Pierce Their Heart!
    .target Kadrak
    .isOnQuest 13805
step
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .accept 13848 >>Accept Bad News Bear-er
    .accept 13808 >>Accept Mission Improbable << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Kadrak
    .isQuestTurnedIn 13805 --any of: Pierce Their Heart!
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.33,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13730 >>Turn in Playing With Felfire
    .target Splintertree Demolisher
    .isOnQuest 13730
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.33,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .accept 13751 >>Accept Tell No One!
    .target Splintertree Demolisher
    .isQuestTurnedIn 13730 --any of: Playing With Felfire
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.56,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >>Turn in Ashenvale Outrunners
    .target Kuray'bin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Turn in Destroy the Legion
    .target Valusha
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 26447 >>Turn in Diabolical Plans
    .target Valusha
    .isOnQuest 26447
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .accept 26449 >>Accept Never Again!
    .target Valusha
    .isQuestTurnedIn 26447 --any of: Diabolical Plans
    .xp <19,1
step
    .goto 63,94.40,46.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kulg Gorespatter|r
    .turnin 24463 >>Turn in Probing into Ashenvale
    .target Kulg Gorespatter
    .isOnQuest 24463
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,94.40,46.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kulg Gorespatter|r
    .accept 13866 >>Accept To The Ramparts!
    .target Kulg Gorespatter
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 88,56.99,89.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sark Ragetotem|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Sark Ragetotem
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 88,57.30,89.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt Thunderhorn|r
    .accept 27278 >>Accept Grimshot's Call
    .target Holt Thunderhorn
step
    .goto 88,63.53,79.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aponi Brightmane|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Aponi Brightmane
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24550 >>Turn in Journey into Thunder Bluff
    .target Baine Bloodhoof
    .isOnQuest 24550
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 26397 >>Accept Walk With The Earth Mother
    .target Baine Bloodhoof
    .isQuestTurnedIn 24540 --any of: War Dance
    .xp <10,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .accept 24540 >>Accept War Dance
    .target Baine Bloodhoof
    .isQuestTurnedIn 24550 --any of: Journey into Thunder Bluff
    .xp <8,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24540 >>Turn in War Dance
    .target Baine Bloodhoof
    .isQuestComplete 24540
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .target Ahanu
    .isOnQuest 6362
step << Tauren
    .goto 88,45.77,55.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
    .isQuestTurnedIn 6362 --any of: Ride to Thunder Bluff
    .xp <5,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .target Tal
    .isOnQuest 6363
step << Tauren
    .goto 88,47.04,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .accept 6364 >>Accept Return to Varg
    .target Tal
    .isQuestTurnedIn 6363 --any of: Tal the Wind Rider Master
    .xp <5,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,27.20,24.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Accept Until Death Do Us Part
    .target Clarice Foster
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 88,22.76,14.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Shymm|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Archmage Shymm
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 88,25.24,13.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delano Morisett|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Delano Morisett
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 88,21.99,18.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kador Cloudsong|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Kador Cloudsong
step
    .goto 88,24.56,22.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malakai Cross|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Malakai Cross
step
    #completewith next
    .zone 63 >>Leave Thunder Bluff for Ashenvale
    .zoneskip 63
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.19,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .turnin 13751 >>Turn in Tell No One!
    .target Durak
    .isOnQuest 13751
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.19,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .accept 13797 >>Accept Dirty Deeds
    .target Durak
    .isQuestTurnedIn 13751 --any of: Tell No One!
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.92,57.59
    >>Loot the |cRXP_PICK_Fresh Rubbles|r for |cRXP_LOOT_Chunk of Ore|r
    .complete 13797,1 --Chunk of Ore (10)
    .isOnQuest 13797
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.19,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .turnin 13797 >>Turn in Dirty Deeds
    .target Durak
    .isOnQuest 13797
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.19,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .accept 13798 >>Accept Rain of Destruction
    .target Durak
    .isQuestTurnedIn 13797 --any of: Dirty Deeds
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.00,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raging Ancient|r
    .complete 13798,2 --Raging Ancient (30)
    .target Raging Ancient
    .isOnQuest 13798
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.24,64.18
    >>Kill |cRXP_ENEMY_Ashenvale Bowmans|r and |cRXP_ENEMY_Ashenvale Assailants|r
    .complete 13798,2 --Ashenvale Bowman (5)
    .mob Ashenvale Bowman
    .mob Ashenvale Assailant
    .isOnQuest 13798
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,72.19,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .turnin 13798 >>Turn in Rain of Destruction
    .target Durak
    .isOnQuest 13798
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.33,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .accept 13841 >>Accept All Apologies
    .target Splintertree Demolisher
    .isQuestTurnedIn 13798 --any of: Rain of Destruction
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,82.56,53.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smoldering Brazier Bunny|r
    .complete 13808,1 --Smoldering Brazier Bunny
    .target Smoldering Brazier Bunny
    .isOnQuest 13808
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,82.54,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krokk|r
    .turnin 13808 >>Turn in Mission Improbable
    .target Krokk
    .isOnQuest 13808
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,82.54,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krokk|r
    .accept 13815 >>Accept Making Stumps
    .accept 13865 >>Accept Wet Work
    .target Krokk
    .isQuestTurnedIn 13808 --any of: Mission Improbable
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,85.45,56.05
    >>Kill |cRXP_ENEMY_Protector Endolar|r
    .complete 13865,1 --Protector Endolar slain (1)
    .mob Protector Endolar
    .isOnQuest 13865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,85.75,57.96
    >>Kill |cRXP_ENEMY_Protector Arminon|r
    .complete 13865,3 --Protector Arminon slain (1)
    .mob Protector Arminon
    .isOnQuest 13865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,85.32,60.70
    >>Kill |cRXP_ENEMY_Protector Dorinar|r
    .complete 13865,2 --Protector Dorinar slain (1)
    .mob Protector Dorinar
    .isOnQuest 13865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,86.14,57.00,0
    .goto 63,86.14,57.00,40,0
    .goto 63,86.52,54.58,40,0
    >>Interact with |cRXP_FRIENDLY_Ashenvale Oaks|r
    .complete 13815,1 --Ashenvale Oak (6)
    .target Ashenvale Oak
    .isOnQuest 13815
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,85.98,57.12,0
    .goto 63,85.98,57.12,40,0
    .goto 63,84.58,61.49,40,0
    >>Kill |cRXP_ENEMY_Ashenvale Scouts|r
    .complete 13865,4 --Ashenvale Scout slain (12)
    .mob Ashenvale Scout
    .isOnQuest 13865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,89.74,76.71
    >>Kill |cRXP_ENEMY_Gorgannon|r and loot |cRXP_LOOT_Gorgannon's Flaming Blade|r
    .complete 26449,1 --Gorgannon's Flaming Blade (1)
    .mob Gorgannon
    .isOnQuest 26449
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,78.47,83.90
    >>Kill |cRXP_ENEMY_Diathorus the Seeker|r and loot |cRXP_LOOT_Seeker's Fel Spear|r
    .complete 26449,2 --Seeker's Fel Spear (1)
    .mob Diathorus the Seeker
    .isOnQuest 26449
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,82.54,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krokk|r
    .turnin 13815 >>Turn in Making Stumps
    .target Krokk
    .isOnQuest 13815
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,82.54,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krokk|r
    .turnin 13865 >>Turn in Wet Work
    .target Krokk
    .isOnQuest 13865
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,82.54,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krokk|r
    .accept 13870 >>Accept As Good as it Gets
    .target Krokk
    .isQuestTurnedIn 13815 --Making Stumps
    .isQuestTurnedIn 13865 --Wet Work
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Gorthak|r
    .turnin 13870 >>Turn in As Good as it Gets
    .target Overseer Gorthak
    .isOnQuest 13870
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Gorthak|r
    .accept 13871 >>Accept Security!
    .target Overseer Gorthak
    .isQuestTurnedIn 13870 --any of: As Good as it Gets
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,90.54,59.65
    >>Kill |cRXP_ENEMY_Kaldorei Assassin|r and loot |cRXP_LOOT_Kaldorei Assassin's Head|r
    .complete 13871,1 --Kaldorei Assassin's Head (1)
    .mob Kaldorei Assassin
    .isOnQuest 13871
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Gorthak|r
    .turnin 13871 >>Turn in Security!
    .target Overseer Gorthak
    .isOnQuest 13871
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,90.75,58.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guardian Menerin|r
    .accept 13873 >>Accept Sheelah's Last Wish
    .target Guardian Menerin
    .isQuestTurnedIn 13871 --any of: Security!
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guardian Gurtar|r
    .turnin 13873 >>Turn in Sheelah's Last Wish
    .target Guardian Gurtar
    .isOnQuest 13873
step
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guardian Gurtar|r
    .accept 13875 >>Accept Gurtar's Request
    .target Guardian Gurtar
    .isQuestTurnedIn 13871 --any of: Security!
    .xp <19,1
step
    .goto 63,73.33,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13875 >>Turn in Gurtar's Request
    .target Splintertree Demolisher
    .isOnQuest 13875
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 26449 >>Turn in Never Again!
    .target Valusha
    .isOnQuest 26449
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.77,61.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locke Okarr|r
    .accept 13806 >>Accept Demon Duty
    .target Locke Okarr
    .isQuestTurnedIn 26449 --any of: Never Again!
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.86,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Accept Satyr Horns
    .target Pixel
    .isQuestTurnedIn 26449 --any of: Never Again!
    .xp <19,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,80.98,49.50,0
    .goto 63,80.98,49.50,40,0
    .goto 63,78.52,46.21,40,0
    >>Click the |cRXP_PICK_Ritual Gem|r
    .complete 13806,1 --Ritual Gem
    .isOnQuest 13806
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,78.72,46.01,0
    .goto 63,78.72,46.01,40,0
    .goto 63,78.00,44.29,40,0
    .goto 63,81.13,49.17,40,0
    >>Kill |cRXP_ENEMY_Xavian Rogues|r, |cRXP_ENEMY_Xavian Betrayers|r, |cRXP_ENEMY_Xavian Felsworns|r and |cRXP_ENEMY_Xavian Hellcallers|r. Loot them for |cRXP_LOOT_Satyr Horns|r
    .complete 6441,1 --Satyr Horns (16)
    .mob Xavian Rogue
    .mob Xavian Betrayer
    .mob Xavian Felsworn
    .mob Xavian Hellcaller
    .isOnQuest 6441
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.86,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >>Turn in Satyr Horns
    .target Pixel
    .isOnQuest 6441
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.77,61.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locke Okarr|r
    .turnin 13806 >>Turn in Demon Duty
    .target Locke Okarr
    .isOnQuest 13806
step
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fp >>Get the Zoram'gar Outpost Flight Path
    .target Andruk
step
    .goto 63,26.88,22.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Shyela|r
    .turnin 26408 >>Turn in Ashes in Ashenvale
    .target Sentinel Shyela
    .isOnQuest 26408
step
    .goto 63,12.08,33.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13848 >>Turn in Bad News Bear-er
    .target Commander Grimfang
    .isOnQuest 13848
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,12.08,33.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .accept 13890 >>Accept Keep the Fires Burning
    .target Commander Grimfang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagrun Ragehammer|r
    .accept 13883 >>Accept Lousy Pieces of Ship
    .accept 26890 >>Accept The Essence of Aku'Mai
    .target Dagrun Ragehammer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .accept 6442 >>Accept Naga at the Zoram Strand
    .target Marukai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,12.76,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muglash|r
    .accept 6641 >>Accept Vorsha the Lasher
    .target Muglash
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along101
    >>As you go: Kill |cRXP_ENEMY_Wrathtail Myrmidons|r, |cRXP_ENEMY_Wrathtail Wave Riders|r, |cRXP_ENEMY_Wrathtail Sorceress|r and |cRXP_ENEMY_Wrathtail Priestess|r. Loot them for |cRXP_LOOT_Wrathtail Head|r. |cRXP_WARN_Anything left is finished later|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Myrmidon
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Priestess
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,9.59,27.58
    >>Defeat Vorsha the Lasher
    .complete 6641,1 --Defeat Vorsha the Lasher
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,8.70,33.27
    >>Pick up |cRXP_PICK_Sunken Scrap Metal|r from the ground
    .complete 13883,1 --Sunken Scrap Metal (10)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagrun Ragehammer|r
    .turnin 13883 >>Turn in Lousy Pieces of Ship
    .target Dagrun Ragehammer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,12.46,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >>Turn in Vorsha the Lasher while you are here
    .isQuestComplete 6641
    .target Warsong Runner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along101
    .goto 63,6.78,28.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zoram'gar Lighthouse Bunny|r
    .complete 13890,1 --Zoram'gar Lighthouse Bunny
    .target Zoram'gar Lighthouse Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,6.62,11.83,0
    .goto 63,6.62,11.83,40,0
    .goto 63,9.44,12.28,40,0
    .goto 63,12.33,13.03,40,0
    >>Kill |cRXP_ENEMY_Wrathtail Myrmidons|r, |cRXP_ENEMY_Wrathtail Wave Riders|r, |cRXP_ENEMY_Wrathtail Sorceress|r and |cRXP_ENEMY_Wrathtail Priestess|r. Loot them for |cRXP_LOOT_Wrathtail Head|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Myrmidon
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Priestess
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,12.08,33.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13890 >>Turn in Keep the Fires Burning
    .accept 13920 >>Accept Before You Go...
    .target Commander Grimfang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,12.46,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >>Turn in Vorsha the Lasher
    .target Warsong Runner
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Turn in Naga at the Zoram Strand
    .accept 13901 >>Accept Deep Despair
    .target Marukai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,22.39,34.39,0
    .goto 63,22.39,34.39,40,0
    .goto 63,22.86,29.92,40,0
    .goto 63,24.68,37.65,40,0
    >>Kill |cRXP_ENEMY_Wild Bucks|r. Loot them for |cRXP_LOOT_Venison Steak|r
    .complete 13920,1 --Venison Steak (5)
    .mob Wild Buck
step
    .goto 63,18.22,20.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .accept 26465 >>Accept The Ancient Statuettes
    .target Talen
step
    #loop
    .goto 63,14.49,21.49,0
    .goto 63,14.49,21.49,40,0
    .goto 63,14.67,16.28,40,0
    .goto 63,10.72,20.67,40,0
    >>Pick up |cRXP_PICK_Ancient Statuette|r from the ground
    .complete 26465,1 --Ancient Statuette (10)
step
    .goto 63,18.22,20.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .turnin 26465 >>Turn in The Ancient Statuettes
    .accept 26466 >>Accept Ruuzel
    .target Talen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,13.53,11.85
    >>Kill |cRXP_ENEMY_Blackfathom Tide Priestess|r
    >>Pick up |cRXP_PICK_Sapphire of Aku'Mai|r from the ground
    .complete 13901,1 --Blackfathom Tide Priestess slain (6)
    .complete 26890,1 --Sapphire of Aku'Mai (20)
    .mob Blackfathom Tide Priestess
step
    .goto 63,6.64,13.29
    >>Kill |cRXP_ENEMY_Ruuzel|r and loot |cRXP_LOOT_Ring of Zoram|r
    .complete 26466,1 --Ring of Zoram (1)
    .mob Ruuzel
step
    .goto 63,18.22,20.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
    .turnin 26466 >>Turn in Ruuzel
    .target Talen
step
    .goto 63,12.08,33.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13920 >>Turn in Before You Go... << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 13923 >>Accept To Hellscream's Watch
    .target Commander Grimfang
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .turnin 13901 >>Turn in Deep Despair
    .target Marukai
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagrun Ragehammer|r
    .turnin 26890 >>Turn in The Essence of Aku'Mai
    .target Dagrun Ragehammer
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thraka|r
    .fp >>Get the Hellscream's Watch Flight Path
    .target Thraka
step
    .goto 63,38.23,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    .turnin 13923 >>Turn in To Hellscream's Watch
    .accept 13936 >>Accept Tweedle's Dumb << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Captain Goggath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,37.77,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >>Accept Between a Rock and a Thistlefur
    .target Karang Amakkar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tweedle|r
    .turnin 13936 >>Turn in Tweedle's Dumb
    .accept 13942 >>Accept Set Us Up the Bomb
    .target Tweedle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.23,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    .accept 13943 >>Accept Breathing Room
    .target Captain Goggath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >>Accept Troll Charm
    .target Mitsuwa
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,39.55,47.51,0
    .goto 63,39.55,47.51,40,0
    .goto 63,35.95,45.96,40,0
    >>Kill |cRXP_ENEMY_Astranaar Officers|r
    >>Kill |cRXP_ENEMY_Astranaar Skirmishers|r
    >>Loot the |cRXP_PICK_Moon-kissed Clays|r for |cRXP_LOOT_Moon-Kissed Clay|r
    .complete 13943,2 --Astranaar Officer slain (3)
    .complete 13943,1 --Astranaar Skirmisher slain (10)
    .complete 13942,1 --Moon-Kissed Clay (10)
    .mob Astranaar Officer
    .mob Astranaar Skirmisher
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tweedle|r
    .turnin 13942 >>Turn in Set Us Up the Bomb while you are here
    .isQuestComplete 13942
    .target Tweedle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.23,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    .turnin 13943 >>Turn in Breathing Room while you are here
    .isQuestComplete 13943
    .target Captain Goggath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,39.94,33.71,0
    .goto 63,39.94,33.71,40,0
    .goto 63,42.05,34.16,40,0
    >>Loot the |cRXP_PICK_Troll Chests|r for |cRXP_LOOT_Troll Charm|r
    .complete 6462,1 --Troll Charm (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,41.53,34.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul Snowhoof|r
    .accept 6482 >>Accept Freedom to Ruul
    .target Ruul Snowhoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along124
    >>As you go: Kill |cRXP_ENEMY_Thistlefur Shamans|r, |cRXP_ENEMY_Thistlefur Pathfinders|r and |cRXP_ENEMY_Thistlefur Avengers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 216,1 --Thistlefur Shaman (15)
    .mob Thistlefur Shaman
    .mob Thistlefur Pathfinder
    .mob Thistlefur Avenger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along124
    .goto 63,38.55,37.49
    >>Escort Ruul from the Thistlefurs.
    .complete 6482,1 --Escort Ruul from the Thistlefurs.
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,38.95,36.21,0
    .goto 63,38.95,36.21,40,0
    .goto 63,37.10,34.69,40,0
    >>Kill |cRXP_ENEMY_Thistlefur Shamans|r, |cRXP_ENEMY_Thistlefur Pathfinders|r and |cRXP_ENEMY_Thistlefur Avengers|r
    .complete 216,1 --Thistlefur Shaman (15)
    .mob Thistlefur Shaman
    .mob Thistlefur Pathfinder
    .mob Thistlefur Avenger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.23,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    .turnin 13943 >>Turn in Breathing Room
    .target Captain Goggath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,37.77,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 216 >>Turn in Between a Rock and a Thistlefur
    .target Karang Amakkar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tweedle|r
    .turnin 13942 >>Turn in Set Us Up the Bomb
    .accept 13944 >>Accept Small Hands, Short Fuse
    .target Tweedle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along129
    >>As you go: Click the |cRXP_PICK_Broken-down Wagon|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13944,1 --Broken-down Wagon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along129
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >>Turn in Troll Charm
    .target Mitsuwa
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.44,44.21
    >>Click the |cRXP_PICK_Broken-down Wagon|r
    .complete 13944,1 --Broken-down Wagon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.23,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    .turnin 13944 >>Turn in Small Hands, Short Fuse
    .accept 13947 >>Accept Blastranaar!
    .target Captain Goggath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along132
    >>As you go: Kill |cRXP_ENEMY_Astranaar Throwers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13947,2 --Astranaar Thrower slain (10)
    .mob Astranaar Thrower
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along132
    #loop
    .goto 63,35.07,49.89,0
    .goto 63,35.07,49.89,40,0
    .goto 63,36.51,51.46,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astranaar Sentinel|r
    .complete 13947,1 --Astranaar Sentinel (20)
    .target Astranaar Sentinel
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,36.66,50.51,0
    .goto 63,36.66,50.51,40,0
    .goto 63,34.25,48.97,40,0
    >>Kill |cRXP_ENEMY_Astranaar Throwers|r
    .complete 13947,2 --Astranaar Thrower slain (10)
    .mob Astranaar Thrower
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.23,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    .turnin 13947 >>Turn in Blastranaar!
    .accept 13958 >>Accept Condition Critical!
    .target Captain Goggath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tweedle|r
    .accept 13974 >>Accept Tweedle's Tiny Package
    .target Tweedle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.77,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Broyk|r
    .accept 13879 >>Accept Thunder Peak
    .target Broyk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stikwad|r
    .turnin 13879 >>Turn in Thunder Peak
    .target Stikwad
step
    .goto 63,52.09,56.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arctanus|r
    .accept 13884 >>Accept Put Out The Fire
    .target Arctanus
step
    #completewith Along139
    >>As you go: Kill |cRXP_ENEMY_Lava Ragers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13884,1 --Lava Rager slain (10)
    .mob Lava Rager
step
    #label Along139
    .goto 63,52.33,56.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Core|r
    .accept 13880 >>Accept Hot Lava
    .target Core
step
    #loop
    .goto 63,52.20,53.58,0
    .goto 63,52.20,53.58,40,0
    .goto 63,51.03,49.31,40,0
    .goto 63,48.83,51.34,40,0
    >>Click the |cRXP_PICK_Lava Fissure|r
    >>Kill |cRXP_ENEMY_Lava Ragers|r
    .complete 13880,1 --Lava Fissure
    .complete 13884,1 --Lava Rager slain (10)
    .mob Lava Rager
step
    .goto 63,52.09,56.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arctanus|r
    .turnin 13884 >>Turn in Put Out The Fire
    .target Arctanus
step
    .goto 63,52.33,56.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Core|r
    .turnin 13880 >>Turn in Hot Lava
    .target Core
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,52.33,56.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Vortex|r
    .accept 13888 >>Accept Vortex
    .target The Vortex
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,48.14,39.22
    >>Kill |cRXP_ENEMY_Lord Magmathar|r
    .complete 13888,1 --Lord Magmathar slain (1)
    .mob Lord Magmathar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stikwad|r
    .turnin 13888 >>Turn in Vortex
    .target Stikwad
step
    .goto 63,49.75,65.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 2 >>Turn in Sharptalon's Claw << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 13967 >>Accept Thinning the... Herd?
    .target Senani Thunderheart
step
    .goto 63,49.29,65.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Tamer Shoshok|r
    .fp >>Get the Silverwind Refuge Flight Path
    .target Wind Tamer Shoshok
    .subzoneskip 420,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,49.96,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flooz|r
    .turnin 13974 >>Turn in Tweedle's Tiny Package
    .accept 13977 >>Accept Mass Production
    .target Flooz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tarkan|r
    .accept 25 >>Accept Simmer Down Now
    .target Captain Tarkan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along149
    >>As you go: Kill |cRXP_ENEMY_Befouled Water Elementals|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25,1 --Befouled Water Elemental slain (12)
    .mob Befouled Water Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along149
    .goto 63,49.44,67.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cromula|r
    .accept 26416 >>Accept Well, Come to the Jungle
    .target Cromula
step
    #loop
    .goto 63,53.97,62.46,0
    .goto 63,53.97,62.46,40,0
    .goto 63,56.87,64.78,40,0
    >>Kill |cRXP_ENEMY_Foulweald Warriors|r, |cRXP_ENEMY_Foulweald Pathfinders|r and |cRXP_ENEMY_Foulweald Totemics|r. Loot them for |cRXP_LOOT_Furbolg Ear|r
    .complete 13967,1 --Furbolg Ear (15)
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
    .mob Foulweald Totemic
step
    .goto 63,49.75,65.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 13967 >>Turn in Thinning the... Herd?
    .accept 6621 >>Accept King of the Foulweald << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Senani Thunderheart
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,56.38,63.51
    >>Open the |cRXP_PICK_Murgut's Totem Basket|r. Loot it for |cRXP_LOOT_Murgut's Totem|r
    .complete 6621,1 --Murgut's Totem (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,51.25,71.69,0
    .goto 63,51.25,71.69,40,0
    .goto 63,48.22,69.74,40,0
    .goto 63,46.24,70.25,40,0
    >>Kill |cRXP_ENEMY_Tideress|r
    >>Kill |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 25,2 --Tideress slain (1)
    .complete 25,1 --Befouled Water Elemental slain (12)
    .mob Tideress
    .mob Befouled Water Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,46.16,63.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Jinx|r
    .turnin 13977 >>Turn in Mass Production
    .accept 13980 >>Accept They're Out There!
    .accept 13983 >>Accept Building Your Own Coffin
    .target Foreman Jinx
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along156
    >>As you go: Pick up |cRXP_PICK_Locking Bolt|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 13983,3 --Locking Bolt (5)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along155
    >>As you go: Pick up |cRXP_PICK_Copper Plating|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 13983,2 --Copper Plating (3)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along155
    #loop
    .goto 63,43.01,70.11,0
    .goto 63,43.01,70.11,40,0
    .goto 63,39.84,65.68,40,0
    >>Pick up |cRXP_PICK_Bronze Cog|r from the ground
    .complete 13983,1 --Bronze Cog (3)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along156
    .goto 63,42.04,68.55
    >>Kill |cRXP_ENEMY_Ursangous|r and loot |cRXP_LOOT_Ursangous' Paw|r. Use it to start the quest
    .collect 16303,1,23 --Ursangous' Paw (1)
    .accept 23 >>Accept Ursangous's Paw
    .use 16303
    .mob Ursangous
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,40.82,71.86,0
    .goto 63,40.82,71.86,40,0
    .goto 63,37.29,68.47,40,0
    .goto 63,38.60,63.65,40,0
    >>Pick up |cRXP_PICK_Locking Bolt|r from the ground
    >>Pick up |cRXP_PICK_Copper Plating|r from the ground
    .complete 13983,3 --Locking Bolt (5)
    .complete 13983,2 --Copper Plating (3)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 63,44.06,63.35,0
    .goto 63,44.06,63.35,40,0
    .goto 63,46.19,63.84,40,0
    >>Kill |cRXP_ENEMY_Ashenvale Assassins|r
    .complete 13980,1 --Ashenvale Assassin slain (12)
    .mob Ashenvale Assassin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,46.16,63.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Jinx|r
    .turnin 13980 >>Turn in They're Out There!
    .turnin 13983 >>Turn in Building Your Own Coffin
    .target Foreman Jinx
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,49.75,65.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 6621 >>Turn in King of the Foulweald
    .target Senani Thunderheart
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tarkan|r
    .turnin 23 >>Turn in Ursangous's Paw while you are here
    .isQuestComplete 23
    .target Captain Tarkan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,48.92,69.56
    >>Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
    .complete 25,3 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost.
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tarkan|r
    .turnin 25 >>Turn in Simmer Down Now
    .turnin 23 >>Turn in Ursangous's Paw
    .target Captain Tarkan
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Tauren Druid/Troll Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade
    .target Sheal Runetotem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
step
    #completewith next
    .zone 63 >>Leave Thunder Bluff for Ashenvale
    .zoneskip 63
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Elestren's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,60.31,52.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thagg|r
    .turnin 13958 >>Turn in Condition Critical!
    .accept 13962 >>Accept Stalemate
    .target Thagg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,62.05,51.37
    >>Kill |cRXP_ENEMY_Keeper Ordanus|r
    .complete 13962,1 --Keeper Ordanus slain (1)
    .mob Keeper Ordanus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,60.31,52.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thagg|r
    .turnin 13962 >>Turn in Stalemate while you are here
    .isQuestComplete 13962
    .target Thagg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,61.16,51.56
    >>Kill |cRXP_ENEMY_Shadumbra|r and loot |cRXP_LOOT_Shadumbra's Head|r. Use it to start the quest
    .collect 16304,1,24 --Shadumbra's Head (1)
    .accept 24 >>Accept Shadumbra's Head
    .use 16304
    .mob Shadumbra
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,60.31,52.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thagg|r
    .turnin 13962 >>Turn in Stalemate
    .target Thagg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,38.23,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    .turnin 24 >>Turn in Shadumbra's Head
    .target Captain Goggath
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,49.88,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Aldo Rockrain|r
    .turnin 28532 >>Turn in Warchief's Command: Stonetalon Mountains!
    .target Blood Guard Aldo Rockrain
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torek|r
    .accept 6544 >>Accept Torek's Assault
    .target Torek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,64.69,75.35
    >>Take Silverwing Outpost.
    .complete 6544,1 --Take Silverwing Outpost.
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,73.03,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ertog Ragetusk|r
    .turnin 6544 >>Turn in Torek's Assault
    .target Ertog Ragetusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,74.11,60.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yama Snowhoof|r
    .turnin 6482 >>Turn in Freedom to Ruul
    .target Yama Snowhoof
step
    +|cRXP_WARN_That is all of Ashenvale for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: A Journey to Moonglade << Tauren Druid/Troll Druid
    >>|cRXP_FRIENDLY_Mulgore|r: Return to Varg << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: Walk With The Earth Mother << Tauren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Dreamseeker Calls << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grezz Ragefist << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Orgrimmar|r: Zevrost's Behest << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Out Master Pyreanor << BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: Follow the Sun << Tauren Paladin/BloodElf Paladin
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Seer's Call << Tauren Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek the Shadow-Walker << Troll Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Dark Cleric Cecille << Undead Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Journey to Orgrimmar << BloodElf Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: Seek Brother Silverhallow << Goblin Priest
    >>|cRXP_FRIENDLY_Orgrimmar|r: All Apologies, Well, Come to the Jungle << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, To The Ramparts!, Final Report, Crisis at Splintertree << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 25|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.4 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.8 levels of quests, starting around Serge Hinott), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.8 levels of quests, starting around Galen Trollbane). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Ashenvale is planned from level 28.|r Load its guide for level 28 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 21 - 29 Ashenvale
#subweight -21
#name 28-29 Ashenvale
--RouteBuilder:next
#next Zone Routes (Horde)\25-30 Northern Stranglethorn;Zone Routes (Horde)\26-31 Arathi Highlands;Zone Routes (Horde)\22-27 Hillsbrad Foothills: around Serge Hinott

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,49.88,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Aldo Rockrain|r
    .accept 25945 >>Accept We're Here to Do One Thing, Maybe Two...
    .target Blood Guard Aldo Rockrain
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 63,48.46,66.38
    >>Kill |cRXP_ENEMY_Krom'gar Wagon|r
    .complete 25945,1 --Krom'gar Wagon slain (1)
    .mob Krom'gar Wagon
step
    +|cRXP_WARN_End of the Ashenvale route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Stonetalon Mountains|r: We're Here to Do One Thing, Maybe Two... << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 28|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.2 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.1 levels of quests, starting around Galen Trollbane), |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.6 levels of quests, starting around Serge Hinott). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
