-- 30-35 Southern Barrens: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 30, 63).
-- Split into 3 guides, listed under "30 - 64 Southern Barrens" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Southern Barrens.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 30 - 64 Southern Barrens
#subweight -30
#name 30-32 Southern Barrens: around Makaba Flathoof
#next Zone Routes (Horde)\32-35 Southern Barrens: around Warlord Bloodhilt

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
step
    #completewith next
    .zone 199 >>Leave Thunder Bluff for Southern Barrens
    .zoneskip 199
step
    .goto 199,31.41,13.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nura Pathfinder|r
    .turnin 26069 >>Turn in Nura Pathfinder
    .target Nura Pathfinder
    .isOnQuest 26069
step
    .goto 199,29.88,8.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Walpole|r
    .turnin 25852 >>Turn in All's Clear
    .target Commander Walpole
    .isOnQuest 25852
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28548 >>Accept Warchief's Command: Desolace!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
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
    .zone 199 >>Leave Thunder Bluff for Southern Barrens
    .zoneskip 199
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,31.41,13.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nura Pathfinder|r
    .turnin 28549 >>Turn in Warchief's Command: Southern Barrens!
    .accept 24504 >>Accept Clear the High Road
    .target Nura Pathfinder
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,35.25,14.10
    >>Kill |cRXP_ENEMY_High Road Scouts|r
    .complete 24504,1 --High Road Scout slain (3)
    .mob High Road Scout
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.65,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holgom|r
    .accept 25284 >>Accept Feeding the Fear
    .target Holgom
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.45,16.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunawa Stillwind|r
    .turnin 24504 >>Turn in Clear the High Road while you are here
    .isQuestComplete 24504
    .target Tunawa Stillwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.26,14.20
    >>Kill |cRXP_ENEMY_Tower Wardens|r
    .complete 25284,1 --Tower Warden slain (5)
    .mob Tower Warden
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.65,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holgom|r
    .turnin 25284 >>Turn in Feeding the Fear while you are here
    .isQuestComplete 25284
    .target Holgom
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.12,13.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oltarg|r
    .accept 24513 >>Accept Eye for an Eye
    .target Oltarg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.23,13.93
    >>Kill |cRXP_ENEMY_Captain Peake|r and loot |cRXP_LOOT_Captain Peake's Eyeballs|r
    .complete 24513,1 --Captain Peake's Eyeballs (1)
    .mob Captain Peake
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.12,13.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oltarg|r
    .turnin 24513 >>Turn in Eye for an Eye
    .target Oltarg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.45,16.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunawa Stillwind|r
    .turnin 24504 >>Turn in Clear the High Road
    .accept 24505 >>Accept Holdout at Hunter's Hill
    .target Tunawa Stillwind
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,37.65,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holgom|r
    .turnin 25284 >>Turn in Feeding the Fear
    .target Holgom
step
    .goto 199,39.48,20.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onatay|r
    .turnin 24505 >>Turn in Holdout at Hunter's Hill << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 24515 >>Accept Signals in the Sky
    .accept 24514 >>Accept Raptor Scraps << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Onatay
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,39.63,19.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrok Gorehammer|r
    .accept 24517 >>Accept Put the Fear in Them
    .target Kilrok Gorehammer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop24518x1
    >>|cRXP_LOOT_Roadway Plans|r can drop from |cRXP_ENEMY_Honor's Stand Officer|r. Use it to start the quest if you get one
    .collect 49776,1,24518 --Roadway Plans (1)
    .accept 24518 >>Accept The Low Road
    .use 49776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop24518x1
    >>As you go: Kill |cRXP_ENEMY_Honor's Stand Footmans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24517,2 --Honor's Stand Footman slain (8)
    .mob Honor's Stand Footman
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop24518x1
    >>As you go: Kill |cRXP_ENEMY_Terrortooth Runners|r and |cRXP_ENEMY_Terrortooth Scytheclaws|r. Loot them for |cRXP_LOOT_Terrortooth Hide|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24514,1 --Terrortooth Hide (8)
    .mob Terrortooth Runner
    .mob Terrortooth Scytheclaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop24518x1
    .goto 199,40.00,15.82
    >>Kill |cRXP_ENEMY_Honor's Stand Officer|r
    .complete 24517,1 --Honor's Stand Officer slain (1)
    .mob Honor's Stand Officer
step
    .goto 199,39.06,11.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nibb Spindlegear|r
    .accept 25191 >>Accept Survey the Destruction
    .target Nibb Spindlegear
step
    .goto 199,39.06,11.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nibb Spindlegear|r
    .complete 25191,1 --Nibb Spindlegear
    .target Nibb Spindlegear
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Drop24518x2
    >>|cRXP_LOOT_Roadway Plans|r can drop from |cRXP_ENEMY_Honor's Stand Officer|r. Use it to start the quest if you get one
    .collect 49776,1,24518 --Roadway Plans (1)
    .accept 24518 >>Accept The Low Road
    .use 49776
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop24518x2
    .goto 199,39.50,14.68
    >>Kill |cRXP_ENEMY_Honor's Stand Footmans|r
    .complete 24517,2 --Honor's Stand Footman slain (8)
    .mob Honor's Stand Footman
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,39.63,19.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrok Gorehammer|r
    .turnin 24518 >>Turn in The Low Road
    .target Kilrok Gorehammer
    .isOnQuest 24518
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,39.63,19.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrok Gorehammer|r
    .accept 24519 >>Accept Stalling the Survey
    .target Kilrok Gorehammer
    .isQuestTurnedIn 24518 --any of: The Low Road
    .xp <29,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,39.63,19.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrok Gorehammer|r
    .turnin 24517 >>Turn in Put the Fear in Them
    .target Kilrok Gorehammer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,38.88,13.35
    >>Kill |cRXP_ENEMY_Henry Zykes|r
    .complete 24519,1 --Henry Zykes slain (1)
    .mob Henry Zykes
    .isOnQuest 24519
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,39.63,19.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kilrok Gorehammer|r
    .turnin 24519 >>Turn in Stalling the Survey
    .target Kilrok Gorehammer
    .isOnQuest 24519
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 199,61.41,44.89,0
    .goto 199,61.41,44.89,40,0
    .goto 199,63.76,41.16,40,0
    >>Kill |cRXP_ENEMY_Terrortooth Runners|r and |cRXP_ENEMY_Terrortooth Scytheclaws|r. Loot them for |cRXP_LOOT_Terrortooth Hide|r
    .complete 24514,1 --Terrortooth Hide (8)
    .mob Terrortooth Runner
    .mob Terrortooth Scytheclaw
step
    .goto 199,67.02,46.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
    .accept 25036 >>Accept Teegan's Troubles
    .target Thomas Paxton
    .isQuestTurnedIn 24948 --Lifting the Siege
    .isQuestTurnedIn 24956 --Silencing Rageroar
    .xp <29,1
step
    .goto 199,68.69,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horton Gimbleheart|r
    .turnin 25191 >>Turn in Survey the Destruction
    .accept 25197 >>Accept The Admiral Won't Back Down
    .target Horton Gimbleheart
step
    .goto 199,71.06,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Lewis|r
    .accept 24921 >>Accept Report to Aubrey
    .target Dockmaster Lewis
step
    .goto 199,69.26,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Aubrey|r
    .turnin 24921 >>Turn in Report to Aubrey
    .turnin 25197 >>Turn in The Admiral Won't Back Down
    .target Admiral Aubrey
step
    .goto 199,49.93,49.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
    .accept 25074 >>Accept Meet Me at Triumph
    .target General Hawthorne
    .isQuestTurnedIn 25057 --any of: Clap 'Em In Irons
    .xp <30,1
step
    .goto 199,49.40,49.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Winfred|r
    .target Quartermaster Winfred
    .home >>Set your Hearthstone to Quartermaster Winfred's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.44,33.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lane Tallgrass|r
    .accept 24539 >>Accept When Plants Attack
    .target Lane Tallgrass
step
    .goto 199,44.18,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 24515 >>Turn in Signals in the Sky while you are here
    .isQuestComplete 24515
    .target Makaba Flathoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 199,43.98,31.37,0
    .goto 199,43.98,31.37,40,0
    .goto 199,45.18,36.31,40,0
    .goto 199,46.82,35.60,40,0
    >>Kill |cRXP_ENEMY_Grasping Overgrowths|r
    .complete 24539,1 --Grasping Overgrowth slain (8)
    .mob Grasping Overgrowth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.44,33.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lane Tallgrass|r
    .turnin 24539 >>Turn in When Plants Attack while you are here
    .isQuestComplete 24539
    .target Lane Tallgrass
step
    .goto 199,44.18,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 24515 >>Turn in Signals in the Sky
    .accept 24525 >>Accept Keeping the Dogs at Bay << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 24529 >>Accept Bad to Worse << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Makaba Flathoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.44,33.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lane Tallgrass|r
    .turnin 24539 >>Turn in When Plants Attack
    .accept 24542 >>Accept A Curious Bloom
    .target Lane Tallgrass
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 199,45.66,30.23,0
    .goto 199,45.66,30.23,40,0
    .goto 199,43.78,28.65,40,0
    .goto 199,42.81,24.14,40,0
    >>Loot the |cRXP_PICK_Budding Flowers|r for |cRXP_LOOT_Unusual Flower Bud|r
    >>Kill |cRXP_ENEMY_Hecklefang Scavengers|r
    .complete 24542,1 --Unusual Flower Bud (10)
    .complete 24525,1 --Hecklefang Scavenger slain (6)
    .mob Hecklefang Scavenger
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,39.48,20.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onatay|r
    .turnin 24514 >>Turn in Raptor Scraps
    .target Onatay
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.18,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 24525 >>Turn in Keeping the Dogs at Bay
    .target Makaba Flathoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along45
    >>As you go: Kill |cRXP_ENEMY_Bristleback Thornweavers|r, |cRXP_ENEMY_Bristleback Bladewardens|r and |cRXP_ENEMY_Deviate Thornweavers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24529,2 --Bristleback Thornweaver (8)
    .mob Bristleback Thornweaver
    .mob Bristleback Bladewarden
    .mob Deviate Thornweaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along45
    .goto 199,41.97,37.14
    >>Rescue 5 caged Taurajo Refugees, and kill any combination of 8 Bristleback Thornweavers or Bladewardens.
    .complete 24529,1 --Taurajo Refugee (5)
    .target Taurajo Refugee
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 199,43.94,42.38,0
    .goto 199,43.94,42.38,40,0
    .goto 199,44.81,45.74,40,0
    >>Kill |cRXP_ENEMY_Bristleback Thornweavers|r, |cRXP_ENEMY_Bristleback Bladewardens|r and |cRXP_ENEMY_Deviate Thornweavers|r
    .complete 24529,2 --Bristleback Thornweaver (8)
    .mob Bristleback Thornweaver
    .mob Bristleback Bladewarden
    .mob Deviate Thornweaver
step
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .accept 24570 >>Accept Adder Subtraction
    .target Muyoh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,50.41,40.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
    .turnin 24542 >>Turn in A Curious Bloom
    .target Naralex
step
    #loop
    .goto 199,49.79,41.43,0
    .goto 199,49.79,41.43,40,0
    .goto 199,50.98,41.96,40,0
    .goto 199,50.93,39.44,40,0
    >>Kill |cRXP_ENEMY_Enervated Adders|r. Loot them for |cRXP_LOOT_Enervated Adder|r
    .complete 24570,1 --Enervated Adder (5)
    .mob Enervated Adder
step
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .turnin 24570 >>Turn in Adder Subtraction while you are here
    .isQuestComplete 24570
    .target Muyoh
step
    .goto 199,50.41,40.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
    .accept 24565 >>Accept Biological Intervention
    .target Naralex
step
    #completewith Along54
    >>As you go: Kill |cRXP_ENEMY_Deviate Terrortooths|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24565,1 --Deviate Terrortooth slain (5)
    .mob Deviate Terrortooth
step
    #completewith Along53
    >>As you go: Kill |cRXP_ENEMY_Deviate Plainstriders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24565,2 --Deviate Plainstrider slain (5)
    .mob Deviate Plainstrider
step
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .turnin 24570 >>Turn in Adder Subtraction
    .accept 24571 >>Accept Lashvine Seeds
    .target Muyoh
step
    #loop
    .goto 199,48.92,40.71,0
    .goto 199,48.92,40.71,40,0
    .goto 199,50.58,36.71,40,0
    >>Kill |cRXP_ENEMY_Lashvines|r. Loot them for |cRXP_LOOT_Writhing Seed|r
    .complete 24571,1 --Writhing Seed (4)
    .mob Lashvine
step
    #label Along53
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .turnin 24571 >>Turn in Lashvine Seeds
    .accept 24566 >>Accept Sowing a Solution
    .target Muyoh
step
    #label Along54
    #loop
    .goto 199,52.24,38.43,0
    .goto 199,52.24,38.43,40,0
    .goto 199,51.94,34.67,40,0
    >>Kill |cRXP_ENEMY_Deviate Terrortooths|r and |cRXP_ENEMY_Deviate Plainstriders|r
    >>Kill |cRXP_ENEMY_Deviate Plainstriders|r
    .complete 24566,1 --Deviate Terrortooth (6)
    .complete 24565,2 --Deviate Plainstrider slain (5)
    .mob Deviate Terrortooth
    .mob Deviate Plainstrider
step
    .goto 199,56.11,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teegan|r
    .turnin 25036 >>Turn in Teegan's Troubles
    .target Corporal Teegan
    .isOnQuest 25036
step
    .goto 199,56.11,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teegan|r
    .accept 25034 >>Accept To the Front!
    .target Corporal Teegan
    .isQuestTurnedIn 25027 --any of: You Flicked a Fine Vine to Leaf Me
    .xp <29,1
step
    #loop
    .goto 199,52.64,40.28,0
    .goto 199,52.64,40.28,40,0
    .goto 199,51.96,44.03,40,0
    >>Kill |cRXP_ENEMY_Deviate Terrortooths|r
    .complete 24565,1 --Deviate Terrortooth slain (5)
    .mob Deviate Terrortooth
step
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .turnin 24566 >>Turn in Sowing a Solution while you are here
    .isQuestComplete 24566
    .target Muyoh
step
    .goto 199,50.41,40.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
    .turnin 24565 >>Turn in Biological Intervention
    .accept 24574 >>Accept To Harvest Chaos
    .target Naralex
step
    #completewith Along62
    >>As you go: Kill |cRXP_ENEMY_Outgrowth|r and loot |cRXP_LOOT_Squirming Heart|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24574,2 --Squirming Heart (1)
    .mob Outgrowth
step
    #completewith Along59
    >>As you go: Kill |cRXP_ENEMY_Outgrowths|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24574,1 --Outgrowth slain (5)
    .mob Outgrowth
step
    #label Along59
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .turnin 24566 >>Turn in Sowing a Solution
    .target Muyoh
step
    #loop
    .goto 199,48.76,38.87,0
    .goto 199,48.76,38.87,40,0
    .goto 199,51.22,36.36,40,0
    >>Kill |cRXP_ENEMY_Outgrowths|r
    .complete 24574,1 --Outgrowth slain (5)
    .mob Outgrowth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.18,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 24529 >>Turn in Bad to Worse
    .accept 24534 >>Accept Speaking Their Language
    .target Makaba Flathoof
step
    #label Along62
    .goto 199,44.50,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tawane|r
    .accept 24543 >>Accept A Family Divided
    .target Tawane
step
    #loop
    .goto 199,44.86,35.84,0
    .goto 199,44.86,35.84,40,0
    .goto 199,42.08,34.39,40,0
    >>Kill |cRXP_ENEMY_Outgrowth|r and loot |cRXP_LOOT_Squirming Heart|r
    .complete 24574,2 --Squirming Heart (1)
    .mob Outgrowth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,42.99,41.60
    >>Kill |cRXP_ENEMY_Sabersnout|r
    .complete 24534,1 --Sabersnout slain (1)
    .mob Sabersnout
step
    .goto 199,41.62,46.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirge Sternhorn|r
    .turnin 24543 >>Turn in A Family Divided
    .accept 24546 >>Accept A Line in the Dirt << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Kirge Sternhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.73,46.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tatternack Steelforge|r
    .accept 24551 >>Accept Meet the New Boss
    .target Tatternack Steelforge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.52,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .accept 24552 >>Accept Lion's Pride
    .target Jorn Skyseer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along68
    >>As you go: Kill |cRXP_ENEMY_Plains Prowlers|r and |cRXP_ENEMY_Plains Pridemanes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24552,1 --Plains Prowler (5)
    .mob Plains Prowler
    .mob Plains Pridemane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along68
    #loop
    .goto 199,45.44,45.20,0
    .goto 199,45.44,45.20,40,0
    .goto 199,47.18,44.37,40,0
    .goto 199,49.42,54.04,40,0
    >>Click the |cRXP_PICK_Field Banner|r
    >>Click the |cRXP_PICK_Horde Field Banner|r
    >>Kill |cRXP_ENEMY_Northwatch Recons|r. Loot them for |cRXP_LOOT_Theramore Merit Badge|r
    .complete 24546,1 --Field Banner
    .complete 24546,2 --Horde Field Banner
    .complete 24551,1 --Theramore Merit Badge (10)
    .mob Northwatch Recon
step
    .goto 199,50.41,40.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
    .turnin 24574 >>Turn in To Harvest Chaos
    .accept 24601 >>Accept The Nightmare Scar
    .target Naralex
step
    .goto 199,48.18,38.89
    >>Kill |cRXP_ENEMY_Nightmare Mass|r
    .complete 24601,1 --Nightmare Mass slain (1)
    .mob Nightmare Mass
step
    .goto 199,50.41,40.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
    .turnin 24601 >>Turn in The Nightmare Scar
    .accept 24807 >>Accept Winnoa Pineforest << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Naralex
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.18,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 24534 >>Turn in Speaking Their Language
    .target Makaba Flathoof
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 199,42.84,45.52,0
    .goto 199,42.84,45.52,40,0
    .goto 199,46.85,47.64,40,0
    >>Kill |cRXP_ENEMY_Plains Prowlers|r and |cRXP_ENEMY_Plains Pridemanes|r
    .complete 24552,1 --Plains Prowler (5)
    .mob Plains Prowler
    .mob Plains Pridemane
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.62,46.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirge Sternhorn|r
    .turnin 24546 >>Turn in A Line in the Dirt
    .target Kirge Sternhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.49,46.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winnoa Pineforest|r
    .turnin 24807 >>Turn in Winnoa Pineforest
    .target Winnoa Pineforest
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.48,46.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24551 >>Turn in Meet the New Boss
    .accept 24569 >>Accept Siegebreaker
    .target Warlord Bloodhilt
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.52,47.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 24552 >>Turn in Lion's Pride
    .target Jorn Skyseer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 199,41.56,50.59,0
    .goto 199,41.56,50.59,40,0
    .goto 199,41.29,52.47,40,0
    >>Click the |cRXP_PICK_Northwatch Siege Engine|r
    .complete 24569,1 --Northwatch Siege Engine
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.48,46.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24569 >>Turn in Siegebreaker
    .accept 24572 >>Accept Taking Back Taurajo
    .target Warlord Bloodhilt
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 199,43.97,51.18,0
    .goto 199,43.97,51.18,40,0
    .goto 199,45.60,52.26,40,0
    >>Kill |cRXP_ENEMY_Taurajo Looters|r
    .complete 24572,1 --Taurajo Looter slain (8)
    .mob Taurajo Looter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.48,46.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24572 >>Turn in Taking Back Taurajo
    .accept 24577 >>Accept Desolation Hold Inspection
    .target Warlord Bloodhilt
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Gar'dul|r
    .complete 24577,1 --Warlord Gar'dul
    .target Warlord Gar'dul
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Gar'dul|r
    .turnin 24577 >>Turn in Desolation Hold Inspection
    .accept 24591 >>Accept Changing of the Gar'dul
    .target Warlord Gar'dul
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>Go to the top of the northern tower in Desolation Hold and help Warlord Bloodhilt "Relieve" Gar'dul of command.
    .complete 24591,2 --Warlord Gar'dul
    .target Warlord Gar'dul
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 32 >>Grind to level 32 (Silithissues needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crawgol|r
    .accept 24654 >>Accept Silithissues
    .target Crawgol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.33,66.97
    >>Kill |cRXP_ENEMY_Silithid Swarmers|r
    .complete 24654,1 --Silithid Swarmer slain (10)
    .mob Silithid Swarmer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crawgol|r
    .turnin 24654 >>Turn in Silithissues while you are here
    .isQuestComplete 24654
    .target Crawgol
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,40.72,69.24
    >>Go to the top of the northern tower in Desolation Hold and help Warlord Bloodhilt "Relieve" Gar'dul of command.
    .complete 24591,1 --Gar'dul Top of Tower Quest Credit
    .target Gar'dul Top of Tower Quest Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24591 >>Turn in Changing of the Gar'dul while you are here
    .isQuestComplete 24591
    .target Warlord Bloodhilt
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.10,71.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomusa|r
    .accept 24631 >>Accept Flightmare
    .target Tomusa
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24591 >>Turn in Changing of the Gar'dul
    .accept 24634 >>Accept Intelligence Warfare
    .accept 24618 >>Accept Claim the Battle Scar
    .target Warlord Bloodhilt
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crawgol|r
    .turnin 24654 >>Turn in Silithissues
    .target Crawgol
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 30 - 64 Southern Barrens
#subweight -30
#name 32-35 Southern Barrens: around Warlord Bloodhilt
--RouteBuilder:next
#next Zone Routes (Horde)\35-39 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah;Zone Routes (Horde)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts

step
    .goto 199,41.64,69.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crawgol|r
    .accept 24667 >>Accept Firestone Point
    .target Crawgol
    .isQuestTurnedIn 24654 --any of: Silithissues
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,42.61,70.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calder Gray|r
    .accept 24619 >>Accept Parts-is-Parts
    .target Calder Gray
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along93
    >>As you go: Loot the |cRXP_PICK_Mutilated Remains|r for |cRXP_LOOT_Severed Extremity|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24619,1 --Severed Extremity (15)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along93
    .goto 199,45.31,69.79
    >>Click the |cRXP_PICK_Battlescar Flagpole|r
    .complete 24618,2 --Battlescar Flagpole
    .isOnQuest 24618
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,46.54,68.87
    >>Loot the |cRXP_PICK_Mutilated Remains|r for |cRXP_LOOT_Severed Extremity|r
    .complete 24619,1 --Severed Extremity (15)
step
    .goto 199,49.09,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Roberts|r
    .turnin 25074 >>Turn in Meet Me at Triumph
    .target Commander Roberts
    .isOnQuest 25074
step
    .goto 199,49.21,67.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logan Talonstrike|r
    .accept 25086 >>Accept Firestone Point
    .target Logan Talonstrike
    .isQuestTurnedIn 25082 --any of: Working the Bugs Out
    .xp <32,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 199,45.53,70.79,0
    .goto 199,45.53,70.79,40,0
    .goto 199,44.90,72.91,40,0
    >>Kill |cRXP_ENEMY_Triumph Vanguards|r
    .complete 24618,1 --Triumph Vanguard slain (10)
    .mob Triumph Vanguard
    .isOnQuest 24618
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,42.61,70.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calder Gray|r
    .turnin 24619 >>Turn in Parts-is-Parts
    .accept 24620 >>Accept Hearts-is-Hearts
    .target Calder Gray
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24618 >>Turn in Claim the Battle Scar while you are here
    .isQuestComplete 24618
    .target Warlord Bloodhilt
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,42.21,69.50
    >>Kill |cRXP_ENEMY_Awkward Gangly Orcs|r. Loot them for |cRXP_LOOT_SI:7 Briefings|r
    .complete 24634,1 --SI:7 Briefings (7)
    .mob Awkward Gangly Orc
    .isOnQuest 24634
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24634 >>Turn in Intelligence Warfare
    .target Warlord Bloodhilt
    .isOnQuest 24634
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24618 >>Turn in Claim the Battle Scar
    .target Warlord Bloodhilt
    .isOnQuest 24618
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .accept 24637 >>Accept The Butcher of Taurajo
    .target Warlord Bloodhilt
    .isQuestTurnedIn 24634 --any of: Intelligence Warfare
step
    .goto 199,43.46,78.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurlston Stonesthrow|r
    .accept 25102 >>Accept No Bull
    .target Hurlston Stonesthrow
step
    #completewith Along104
    >>As you go: Kill |cRXP_ENEMY_Landquaker Kodos|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25102,1 --Landquaker Kodo slain (4)
    .mob Landquaker Kodo
step
    #label Along104
    .goto 199,43.52,78.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Twinbraid|r
    .accept 26687 >>Accept Reinforcements From Theramore
    .target General Twinbraid
    .isQuestTurnedIn 25182 --Kill 'em All!
    .isQuestTurnedIn 25185 --The Deed Is Done
    .xp <32,1
step
    #loop
    .goto 199,43.69,75.22,0
    .goto 199,43.69,75.22,40,0
    .goto 199,46.26,76.50,40,0
    >>Kill |cRXP_ENEMY_Landquaker Kodos|r
    >>Kill |cRXP_ENEMY_Landquaker Bull|r and loot |cRXP_LOOT_Enormous Kodo Heart|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 25102,1 --Landquaker Kodo slain (4)
    .complete 24620,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Enormous Kodo Heart (1)
    .mob Landquaker Kodo
    .mob Landquaker Bull << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,42.61,70.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calder Gray|r
    .turnin 24620 >>Turn in Hearts-is-Hearts
    .accept 24621 >>Accept Smarts-is-Smarts
    .target Calder Gray
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along107
    >>As you go: Kill |cRXP_ENEMY_Triumph Captain|r and loot |cRXP_LOOT_Fresh Brain|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24621,1 --Fresh Brain (1)
    .mob Triumph Captain
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along107
    .goto 199,46.42,71.83
    >>Kill |cRXP_ENEMY_Wildhammer Mercenaries|r
    .complete 24631,1 --Wildhammer Mercenary slain (5)
    .mob Wildhammer Mercenary
    .isOnQuest 24631
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,46.06,72.43
    >>Kill |cRXP_ENEMY_Triumph Captain|r and loot |cRXP_LOOT_Fresh Brain|r
    .complete 24621,1 --Fresh Brain (1)
    .mob Triumph Captain
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,42.61,70.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calder Gray|r
    .turnin 24621 >>Turn in Smarts-is-Smarts
    .target Calder Gray
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.10,71.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomusa|r
    .turnin 24631 >>Turn in Flightmare
    .target Tomusa
    .isOnQuest 24631
step
    .goto 199,41.10,71.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomusa|r
    .accept 24632 >>Accept Tauren Vengeance
    .target Tomusa
    .isQuestTurnedIn 24631 --any of: Flightmare
step
    .goto 199,45.09,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tauna Skychaser|r
    .turnin 24667 >>Turn in Firestone Point
    .target Tauna Skychaser
    .isOnQuest 24667
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,45.15,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahka|r
    .accept 24604 >>Accept Concern for Mankrik
    .target Mahka
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.51,88.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 24604 >>Turn in Concern for Mankrik
    .accept 24603 >>Accept Don't Stop Bereavin'
    .target Mankrik
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along115
    >>As you go: Kill |cRXP_ENEMY_Razormane Pathfinders|r, |cRXP_ENEMY_Razormane Warfrenzies|r, |cRXP_ENEMY_Razormane Seers|r and |cRXP_ENEMY_Razormane Mankrik Quest Credits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24603,1 --Razormane Pathfinder (8)
    .mob Razormane Pathfinder
    .mob Razormane Warfrenzy
    .mob Razormane Seer
    .mob Razormane Mankrik Quest Credit
step
    #label Along115
    .goto 199,45.03,85.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn Redearth|r
    .turnin 25086 >>Turn in Firestone Point
    .target Dorn Redearth
    .isOnQuest 25086
step
    .goto 199,45.09,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tauna Skychaser|r
    .accept 24824 >>Accept The Disturbed Earth
    .target Tauna Skychaser
step
    #loop
    .goto 199,47.51,84.02,0
    .goto 199,47.51,84.02,40,0
    .goto 199,47.86,80.55,40,0
    .goto 199,47.32,77.88,40,0
    >>Kill |cRXP_ENEMY_Disturbed Earth Elementals|r. Loot them for |cRXP_LOOT_Disturbed Earth Fragment|r
    .complete 24824,1 --Disturbed Earth Fragment (4)
    .mob Disturbed Earth Elemental
step
    .goto 199,49.22,82.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 24632 >>Turn in Tauren Vengeance
    .target Gann Stonespire
    .isOnQuest 24632
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,49.22,82.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann Stonespire|r
    .accept 24684 >>Accept A Weezil in the Henhouse
    .target Gann Stonespire
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,50.10,86.23
    >>Kill |cRXP_ENEMY_Bael'dun Soldiers|r, |cRXP_ENEMY_Bael'dun Riflemans|r and |cRXP_ENEMY_Bael'dun Officers|r
    .complete 24684,1 --Bael'dun Soldier (8)
    .mob Bael'dun Soldier
    .mob Bael'dun Rifleman
    .mob Bael'dun Officer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,50.74,86.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weezil Slipshadow|r
    .turnin 24684 >>Turn in A Weezil in the Henhouse
    .accept 24685 >>Accept Dwarf Fortress
    .target Weezil Slipshadow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,50.08,86.77
    >>Open the |cRXP_PICK_Bael'dun Fortress Schematics|r. Loot it for |cRXP_LOOT_Bael'Dun Fortress Schematics|r
    .complete 24685,1 --Bael'Dun Fortress Schematics (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,50.74,86.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weezil Slipshadow|r
    .turnin 24685 >>Turn in Dwarf Fortress
    .accept 24747 >>Accept Sabotage!
    .target Weezil Slipshadow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,50.69,85.96
    >>Interact with |cRXP_FRIENDLY_Dwarven Artillery Shell|r
    .complete 24747,1 --Dwarven Artillery Shell
    .target Dwarven Artillery Shell
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,49.84,86.84
    >>Sabotage a Dwarven Artillery Shell and then flee from Bael'Dun before it explodes.
    .complete 24747,2 --Bael'dun Escape Quest Credit
    .target Bael'dun Escape Quest Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,49.22,82.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 24747 >>Turn in Sabotage!
    .target Gann Stonespire
step
    .goto 199,49.23,82.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nato Raintree|r
    .accept 25292 >>Accept Next of Kin
    .target Nato Raintree
step
    .goto 199,45.09,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tauna Skychaser|r
    .turnin 24824 >>Turn in The Disturbed Earth
    .target Tauna Skychaser
step
    #completewith Drop24606x1
    >>|cRXP_LOOT_Carved Boar Idol|r can drop from |cRXP_ENEMY_Razormane Pathfinder|r, |cRXP_ENEMY_Razormane Warfrenzy|r, |cRXP_ENEMY_Razormane Seer|r. Use it to start the quest if you get one
    .collect 49932,1,24606 --Carved Boar Idol (1)
    .accept 24606 >>Accept Blood of the Barrens
    .use 49932
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop24606x1
    #loop
    .goto 199,44.57,88.00,0
    .goto 199,44.57,88.00,40,0
    .goto 199,42.80,85.16,40,0
    >>Kill |cRXP_ENEMY_Razormane Pathfinders|r, |cRXP_ENEMY_Razormane Warfrenzies|r, |cRXP_ENEMY_Razormane Seers|r and |cRXP_ENEMY_Razormane Mankrik Quest Credits|r
    .complete 24603,1 --Razormane Pathfinder (8)
    .mob Razormane Pathfinder
    .mob Razormane Warfrenzy
    .mob Razormane Seer
    .mob Razormane Mankrik Quest Credit
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.51,88.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 24603 >>Turn in Don't Stop Bereavin'
    .accept 24608 >>Accept Mangletooth
    .target Mankrik
step
    #loop
    .goto 199,43.32,80.82,0
    .goto 199,43.32,80.82,40,0
    .goto 199,41.18,82.19,40,0
    .goto 199,38.75,81.88,40,0
    >>Kill |cRXP_ENEMY_Razormane Pathfinders|r, |cRXP_ENEMY_Razormane Warfrenzies|r and |cRXP_ENEMY_Razormane Seers|r. Loot them for |cRXP_LOOT_Blood Shard Trinket|r
    >>Kill |cRXP_ENEMY_Mangletooth|r << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 24606,1 --Blood Shard Trinket (6)
    .complete 24608,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Mangletooth slain (1)
    .mob Razormane Pathfinder
    .mob Razormane Warfrenzy
    .mob Razormane Seer
    .mob Mangletooth << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.51,88.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .turnin 24608 >>Turn in Mangletooth
    .target Mankrik
step
    .goto 199,45.15,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahka|r
    .turnin 24606 >>Turn in Blood of the Barrens
    .target Mahka
    .isOnQuest 24606
step
    .goto 199,45.15,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahka|r
    .accept 24653 >>Accept Echoes of Agamaggan
    .target Mahka
    .isQuestTurnedIn 24606 --any of: Blood of the Barrens
    .xp <33,1
step
    #loop
    .goto 199,41.78,85.39,0
    .goto 199,41.78,85.39,40,0
    .goto 199,40.30,83.01,40,0
    >>Loot the |cRXP_PICK_Boar Skulls|r for |cRXP_LOOT_Polished Boar Skull|r
    .complete 24653,1 --Polished Boar Skull (3)
    .isOnQuest 24653
step
    .goto 199,45.15,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahka|r
    .turnin 24653 >>Turn in Echoes of Agamaggan
    .target Mahka
    .isOnQuest 24653
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,45.15,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahka|r
    .accept 24633 >>Accept Mahka's Plea
    .target Mahka
    .isQuestTurnedIn 24653 --any of: Echoes of Agamaggan
    .xp <33,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.51,88.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r
    .complete 24633,1 --Mankrik
    .target Mankrik
    .isOnQuest 24633
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,45.15,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahka|r
    .turnin 24633 >>Turn in Mahka's Plea
    .target Mahka
    .isOnQuest 24633
step
    .goto 199,46.70,84.91
    >>Kill |cRXP_ENEMY_Landquaker Bull|r
    .complete 25102,2 --Landquaker Bull slain (1)
    .mob Landquaker Bull
step
    .goto 199,43.46,78.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurlston Stonesthrow|r
    .turnin 25102 >>Turn in No Bull
    .target Hurlston Stonesthrow
step
    #completewith next
    .hs >>Hearth to Quartermaster Winfred's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 199,50.01,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
    .turnin 25034 >>Turn in To the Front!
    .target Ambassador Gaines
    .isOnQuest 25034
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,47.73,57.06
    >>Kill |cRXP_ENEMY_General Hawthorne|r
    .complete 24637,1 --General Hawthorne slain (1)
    .mob General Hawthorne
    .isOnQuest 24637
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.64,69.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Bloodhilt|r
    .turnin 24637 >>Turn in The Butcher of Taurajo
    .target Warlord Bloodhilt
    .isOnQuest 24637
step
    #completewith next
    .zone 88 >>Travel to Thunder Bluff
    .zoneskip 88
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .xp 34 >>Grind to level 34 (Warchief's Command: Feralas! needs it)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28510 >>Accept Warchief's Command: Feralas!
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
step << Tauren Druid/Troll Druid
    .goto 88,77.14,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheal Runetotem|r
    .accept 27283 >>Accept A Journey to Moonglade
    .target Sheal Runetotem
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
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24550 >>Turn in Journey into Thunder Bluff
    .target Baine Bloodhoof
    .isOnQuest 24550
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
    .accept 26397 >>Accept Walk With The Earth Mother
    .target Baine Bloodhoof
    .isQuestTurnedIn 24540 --any of: War Dance
    .xp <10,1
step << Tauren
    .goto 88,60.30,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine Bloodhoof|r
    .turnin 24540 >>Turn in War Dance
    .target Baine Bloodhoof
    .isQuestComplete 24540
step
    +|cRXP_WARN_That is all of Southern Barrens for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Desolace|r: Warchief's Command: Desolace! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Next of Kin, Reinforcements From Theramore
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Warchief's Command: Dustwallow Marsh! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Warchief's Command: Feralas! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 34|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.5 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Desolace|r (about 1.3 levels of quests, starting around Cenarion Researcher Korrah), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.0 levels of quests, starting around Captain Hecklebury Smotts). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of Southern Barrens is planned from level 63.|r Load its guide for level 63 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 30 - 64 Southern Barrens
#subweight -30
#name 63-64 Southern Barrens
--RouteBuilder:next
#next Zone Routes (Horde)\62-65 Terokkar Forest: around Earthbinder Tavgren

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.49,46.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winnoa Pineforest|r
    .accept 24573 >>Accept Honoring the Dead
    .target Winnoa Pineforest
    .isQuestTurnedIn 24569 --any of: Siegebreaker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.35,50.88
    >>Kill |cRXP_ENEMY_Krulmoo Fullmoon|r and |cRXP_ENEMY_Krulmoo's Spirit|r
    .complete 24573,1 --Krulmoo Fullmoon (1)
    .mob Krulmoo Fullmoon
    .mob Krulmoo's Spirit
    .isOnQuest 24573
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.54,52.20
    >>Kill |cRXP_ENEMY_Dranh|r and |cRXP_ENEMY_Dranh's Spirit|r
    .complete 24573,2 --Dranh (1)
    .mob Dranh
    .mob Dranh's Spirit
    .isOnQuest 24573
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,44.34,52.58
    >>Kill |cRXP_ENEMY_Yonada|r and |cRXP_ENEMY_Yonada's Spirit|r
    .complete 24573,3 --Yonada (1)
    .mob Yonada
    .mob Yonada's Spirit
    .isOnQuest 24573
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,43.69,52.34
    >>Kill |cRXP_ENEMY_Omusa Thunderhorn|r and |cRXP_ENEMY_Omusa's Spirit|r
    .complete 24573,4 --Omusa Thunderhorn (1)
    .mob Omusa Thunderhorn
    .mob Omusa's Spirit
    .isOnQuest 24573
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 199,41.49,46.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winnoa Pineforest|r
    .turnin 24573 >>Turn in Honoring the Dead
    .target Winnoa Pineforest
    .isOnQuest 24573
step
    +|cRXP_WARN_End of the Southern Barrens route.|r
step
    +|cRXP_WARN_Suggested next zones at level 63|r: |cRXP_FRIENDLY_Terokkar Forest|r (about 0.9 levels of quests, starting around Earthbinder Tavgren). Completing this step loads the guide for Terokkar Forest --RouteBuilder:next
]])
