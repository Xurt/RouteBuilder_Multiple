-- 30-35 Southern Barrens: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 2 guides, listed under "30 - 35 Southern Barrens" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Southern Barrens.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 35 Southern Barrens
#subweight -30
#name 30-32 Southern Barrens: around Thomas Paxton
#next Zone Routes (Alliance)\32-35 Southern Barrens: around General Hawthorne

step << Dwarf
    .goto 199,37.65,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holgom|r
    .accept 24512 >>Accept Warriors' Redemption
    .target Holgom
step << Dwarf
    .goto 199,37.61,14.04
    >>Pick up |cRXP_PICK_Confiscated Arms|r from the ground
    .collect 49769,1,24512,1 --Confiscated Arms (1)
step << Dwarf
    .goto 199,37.11,14.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonetalon Prisoner|r
    .complete 24512,1 --Stonetalon Prisoner (5)
    .target Stonetalon Prisoner
step << Dwarf
    .goto 199,37.65,16.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holgom|r
    .turnin 24512 >>Turn in Warriors' Redemption
    .target Holgom
step
    .goto 199,31.41,13.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nura Pathfinder|r
    .turnin 26069 >>Turn in Nura Pathfinder
    .target Nura Pathfinder
    .isOnQuest 26069
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,29.88,8.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Walpole|r
    .accept 24863 >>Accept Breaking the Siege
    .accept 24862 >>Accept Running the Gauntlet
    .target Commander Walpole
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along6
    >>As you go: Pick up |cRXP_PICK_Stonetalon Supplies|r from the ground. Kill |cRXP_ENEMY_Hunter Hill Scouts|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24863,1 --Stonetalon Supplies (10)
    .complete 24862,1 --Hunter Hill Scout slain (8)
    .mob Hunter Hill Scout
step
    #label Along6
    .goto 199,29.88,8.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Walpole|r
    .turnin 25852 >>Turn in All's Clear
    .target Commander Walpole
    .isOnQuest 25852
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,31.23,10.35,0
    .goto 199,31.23,10.35,40,0
    .goto 199,32.04,8.52,40,0
    .goto 199,34.08,10.00,40,0
    >>Pick up |cRXP_PICK_Stonetalon Supplies|r from the ground
    >>Kill |cRXP_ENEMY_Hunter Hill Scouts|r
    .complete 24863,1 --Stonetalon Supplies (10)
    .complete 24862,1 --Hunter Hill Scout slain (8)
    .mob Hunter Hill Scout
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .turnin 6341 >>Turn in To Darnassus
    .target Sister Aquinne
    .isOnQuest 6341
step << NightElf
    .goto 89,36.07,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Aquinne|r
    .accept 6342 >>Accept An Unexpected Gift
    .target Sister Aquinne
    .isQuestTurnedIn 6341 --any of: To Darnassus
    .xp <5,1
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .turnin 6342 >>Turn in An Unexpected Gift
    .target Leora
    .isOnQuest 6342
step << NightElf
    .goto 89,36.61,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leora|r
    .accept 6343 >>Accept Return to Nyoma
    .target Leora
    .isQuestTurnedIn 6342 --any of: An Unexpected Gift
    .xp <5,1
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .turnin 28517 >>Turn in The Howling Oak
    .target Genn Greymane
    .isOnQuest 28517
step << Worgen
    .goto 89,48.12,14.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane|r
    .accept 26385 >>Accept Breaking Waves of Change
    .target Genn Greymane
    .isQuestTurnedIn 28517 --any of: The Howling Oak
    .xp <8,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 89,43.91,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r
    .accept 26383 >>Accept Breaking Waves of Change
    .target Sentinel Cordressa Briarbow
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 27225 >>Accept A Summons from Ander Germaine
    .target Arias'ta Bladesinger
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 27266 >>Accept Wulf Calls
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 27267 >>Accept Make Contact with SI:7
    .target Erion Shadewhisper
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Priestess Alathea
step << NightElf Druid/Worgen Druid
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 27273 >>Accept An Invitation from Moonglade
    .target Mathrengyl Bearwalker
step
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27269 >>Accept The Temple of the Moon << NightElf Priest
    .accept 27274 >>Accept The Chief Surgeon << Gnome Priest
    .target Priestess Alathea
step << NightElf Priest
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 27269 >>Turn in The Temple of the Moon
    .accept 27362 >>Accept Favored of Elune
    .target Tyrande Whisperwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
step
    #completewith next
    .zone 199 >>Leave Darnassus for Southern Barrens
    .zoneskip 199
step
    .goto 199,71.06,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Lewis|r
    .accept 24921 >>Accept Report to Aubrey
    .target Dockmaster Lewis
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,71.06,49.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Lewis|r
    .turnin 28551 >>Turn in Hero's Call: Southern Barrens!
    .target Dockmaster Lewis
    .isOnQuest 28551
step
    .goto 199,69.26,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Aubrey|r
    .turnin 24921 >>Turn in Report to Aubrey
    .accept 24934 >>Accept Repel Boarders! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Admiral Aubrey
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,73.00,47.60
    >>Kill |cRXP_ENEMY_Rageroar Sea Dogs|r
    .complete 24934,1 --Rageroar Sea Dog slain (6)
    .mob Rageroar Sea Dog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,69.26,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Aubrey|r
    .accept 24938 >>Accept The Guns of Northwatch
    .target Admiral Aubrey
    .isQuestTurnedIn 24934 --any of: Repel Boarders!
    .xp <28,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,67.02,46.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
    .accept 24941 >>Accept Langridge Shot
    .target Thomas Paxton
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,67.68,46.62
    >>Open the |cRXP_PICK_Crate of Nails|r. Loot it for |cRXP_LOOT_Langridge Shot|r
    .complete 24941,1 --Langridge Shot (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,66.96,46.55
    >>Click the |cRXP_PICK_Paxton's Field Cannon|r
    .turnin 24941 >>Turn in Langridge Shot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,67.02,46.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
    .accept 24943 >>Accept Re-Take the Courtyard
    .target Thomas Paxton
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Rageroar Grunts|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24943,1 --Rageroar Grunt slain (10)
    .mob Rageroar Grunt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,66.92,46.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolliver Houndstooth|r
    .accept 24944 >>Accept Back in the Fight
    .target Tolliver Houndstooth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,64.85,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeffrey Long|r
    .accept 25000 >>Accept Teegan's People
    .target Jeffrey Long
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,67.07,45.35
    >>Interact with |cRXP_FRIENDLY_Wounded Defenders|r
    .complete 24944,1 --Wounded Defender (6)
    .target Wounded Defender
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,66.92,46.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolliver Houndstooth|r
    .turnin 24944 >>Turn in Back in the Fight while you are here
    .isQuestComplete 24944
    .target Tolliver Houndstooth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,68.63,44.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannoneer Smythe|r
    .turnin 24938 >>Turn in The Guns of Northwatch
    .target Cannoneer Smythe
    .isOnQuest 24938
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,68.63,44.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannoneer Smythe|r
    .accept 24939 >>Accept Run Out the Guns
    .target Cannoneer Smythe
    .isQuestTurnedIn 24938 --any of: The Guns of Northwatch
    .xp <28,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,69.41,44.46
    >>Kill |cRXP_ENEMY_Rageroar Rowboats|r
    .complete 24939,1 --Rageroar Rowboat slain (10)
    .mob Rageroar Rowboat
    .isOnQuest 24939
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along39
    .goto 199,68.63,44.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cannoneer Smythe|r
    .turnin 24939 >>Turn in Run Out the Guns
    .target Cannoneer Smythe
    .isOnQuest 24939
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,67.16,44.30,0
    .goto 199,67.16,44.30,40,0
    .goto 199,68.66,40.09,40,0
    .goto 199,67.68,37.43,40,0
    >>Kill |cRXP_ENEMY_Rageroar Grunts|r
    .complete 24943,1 --Rageroar Grunt slain (10)
    .mob Rageroar Grunt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,66.92,46.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolliver Houndstooth|r
    .turnin 24944 >>Turn in Back in the Fight
    .accept 24956 >>Accept Silencing Rageroar
    .target Tolliver Houndstooth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,67.02,46.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
    .turnin 24943 >>Turn in Re-Take the Courtyard
    .accept 24948 >>Accept Lifting the Siege
    .target Thomas Paxton
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,68.05,41.10,0
    .goto 199,68.05,41.10,40,0
    .goto 199,67.49,36.61,40,0
    >>Kill |cRXP_ENEMY_Karga Rageroar|r and loot |cRXP_LOOT_Rageroar's Helm|r
    >>Kill |cRXP_ENEMY_Rageroar Blade Thrower|r
    >>Kill |cRXP_ENEMY_Rageroar Lieutenants|r
    >>Kill |cRXP_ENEMY_Rageroar Catapults|r
    .complete 24956,2 --Rageroar's Helm (1)
    .complete 24948,2 --Rageroar Blade Thrower slain (1)
    .complete 24956,1 --Rageroar Lieutenant slain (4)
    .complete 24948,1 --Rageroar Catapult slain (3)
    .mob Karga Rageroar
    .mob Rageroar Blade Thrower
    .mob Rageroar Lieutenant
    .mob Rageroar Catapult
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,66.92,46.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tolliver Houndstooth|r
    .turnin 24956 >>Turn in Silencing Rageroar
    .target Tolliver Houndstooth
step
    .goto 199,67.02,46.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Paxton|r
    .turnin 24948 >>Turn in Lifting the Siege << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25036 >>Accept Teegan's Troubles
    .target Thomas Paxton
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Terrortooth Runners|r and |cRXP_ENEMY_Terrortooth Scytheclaws|r. Loot them for |cRXP_LOOT_Terrortooth Hide|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25000,1 --Terrortooth Hide (8)
    .mob Terrortooth Runner
    .mob Terrortooth Scytheclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along46
    .goto 199,61.84,42.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangled Body|r
    .accept 25002 >>Accept Scavenged
    .target Mangled Body
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,63.22,41.21,0
    .goto 199,63.22,41.21,40,0
    .goto 199,61.55,44.74,40,0
    >>Pick up |cRXP_PICK_Northwatch Supply Crate|r from the ground
    >>Kill |cRXP_ENEMY_Terrortooth Runners|r and |cRXP_ENEMY_Terrortooth Scytheclaws|r. Loot them for |cRXP_LOOT_Terrortooth Hide|r
    .complete 25002,1 --Northwatch Supply Crate (10)
    .complete 25000,1 --Terrortooth Hide (8)
    .mob Terrortooth Runner
    .mob Terrortooth Scytheclaw
step
    .goto 199,56.11,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teegan|r
    .turnin 25002 >>Turn in Scavenged << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 25036 >>Turn in Teegan's Troubles
    .accept 25015 >>Accept Make 'em Squeal << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25022 >>Accept A Failure to Communicate << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Corporal Teegan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along50
    >>As you go: Kill |cRXP_ENEMY_Bristleback Thornweaver|r, |cRXP_ENEMY_Bristleback Bladewarden|r, |cRXP_ENEMY_Deviate Thornweaver|r and |cRXP_ENEMY_Bristleback Quilboar Quest Counter|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25015,2 --Bristleback Thornweaver (1)
    .mob Bristleback Thornweaver
    .mob Bristleback Bladewarden
    .mob Deviate Thornweaver
    .mob Bristleback Quilboar Quest Counter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,56.00,42.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goucho|r
    .turnin 25000 >>Turn in Teegan's People
    .accept 25008 >>Accept Filthy Animals
    .target Goucho
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along55
    >>As you go: Kill |cRXP_ENEMY_Hecklefang Scavengers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25008,1 --Hecklefang Scavenger slain (6)
    .mob Hecklefang Scavenger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along50
    >>As you go: Kill |cRXP_ENEMY_Deviate Thornweaver|r and loot |cRXP_LOOT_Bramblestaff|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25015,1 --Bramblestaff (1)
    .mob Deviate Thornweaver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along50
    .goto 199,53.12,46.67
    >>Rescue Ambassador Gaines from the quilboar in the Overgrowth.
    .complete 25022,1 --Ambassador Gaines
    .target Ambassador Gaines
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,53.34,47.47,0
    .goto 199,53.34,47.47,40,0
    .goto 199,55.63,44.94,40,0
    >>Kill |cRXP_ENEMY_Deviate Thornweaver|r and loot |cRXP_LOOT_Bramblestaff|r
    >>Kill |cRXP_ENEMY_Bristleback Thornweaver|r, |cRXP_ENEMY_Bristleback Bladewarden|r, |cRXP_ENEMY_Deviate Thornweaver|r and |cRXP_ENEMY_Bristleback Quilboar Quest Counter|r
    .complete 25015,1 --Bramblestaff (1)
    .complete 25015,2 --Bristleback Thornweaver (1)
    .mob Deviate Thornweaver
    .mob Bristleback Thornweaver
    .mob Bristleback Bladewarden
    .mob Bristleback Quilboar Quest Counter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,56.11,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teegan|r
    .turnin 25022 >>Turn in A Failure to Communicate
    .turnin 25015 >>Turn in Make 'em Squeal
    .accept 25027 >>Accept You Flicked a Fine Vine to Leaf Me
    .target Corporal Teegan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,56.19,42.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannah Bridgewater|r
    .accept 25028 >>Accept Trouble From the Ground Up
    .target Hannah Bridgewater
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along58
    >>As you go: Loot the |cRXP_PICK_Budding Flowers|r for |cRXP_LOOT_Unusual Flower Bud|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25028,1 --Unusual Flower Bud (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along54
    >>As you go: Kill |cRXP_ENEMY_Deviate Crones|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25027,2 --Deviate Crone slain (2)
    .mob Deviate Crone
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along54
    .goto 199,52.95,50.09
    >>Interact with |cRXP_FRIENDLY_Three-Tooth|r
    .complete 25027,1 --Three-Tooth
    .target Three-Tooth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along55
    .goto 199,53.00,49.97
    >>Kill |cRXP_ENEMY_Deviate Crones|r
    .complete 25027,2 --Deviate Crone slain (2)
    .mob Deviate Crone
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,56.17,41.17,0
    .goto 199,56.17,41.17,40,0
    .goto 199,58.20,40.49,40,0
    >>Kill |cRXP_ENEMY_Hecklefang Scavengers|r
    .complete 25008,1 --Hecklefang Scavenger slain (6)
    .mob Hecklefang Scavenger
step
    .goto 199,56.11,42.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Teegan|r
    .turnin 25027 >>Turn in You Flicked a Fine Vine to Leaf Me << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25034 >>Accept To the Front!
    .target Corporal Teegan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along58
    .goto 199,56.00,42.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Goucho|r
    .turnin 25008 >>Turn in Filthy Animals
    .target Goucho
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,50.91,37.11,0
    .goto 199,50.91,37.11,40,0
    .goto 199,48.16,37.09,40,0
    .goto 199,49.12,42.33,40,0
    >>Loot the |cRXP_PICK_Budding Flowers|r for |cRXP_LOOT_Unusual Flower Bud|r
    .complete 25028,1 --Unusual Flower Bud (10)
step
    .goto 199,50.41,40.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
    .turnin 25028 >>Turn in Trouble From the Ground Up << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 24565 >>Accept Biological Intervention
    .target Naralex
step
    #completewith Along61
    >>As you go: Kill |cRXP_ENEMY_Deviate Terrortooths|r. Kill |cRXP_ENEMY_Deviate Plainstriders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24565,1 --Deviate Terrortooth slain (5)
    .complete 24565,2 --Deviate Plainstrider slain (5)
    .mob Deviate Terrortooth
    .mob Deviate Plainstrider
step
    #label Along61
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .accept 24570 >>Accept Adder Subtraction
    .accept 24571 >>Accept Lashvine Seeds
    .target Muyoh
step
    #loop
    .goto 199,47.68,41.14,0
    .goto 199,47.68,41.14,40,0
    .goto 199,47.74,36.28,40,0
    .goto 199,50.92,35.61,40,0
    >>Kill |cRXP_ENEMY_Enervated Adders|r. Loot them for |cRXP_LOOT_Enervated Adder|r
    >>Kill |cRXP_ENEMY_Deviate Terrortooths|r
    >>Kill |cRXP_ENEMY_Deviate Plainstriders|r
    >>Kill |cRXP_ENEMY_Lashvines|r. Loot them for |cRXP_LOOT_Writhing Seed|r
    .complete 24570,1 --Enervated Adder (5)
    .complete 24565,1 --Deviate Terrortooth slain (5)
    .complete 24565,2 --Deviate Plainstrider slain (5)
    .complete 24571,1 --Writhing Seed (4)
    .mob Enervated Adder
    .mob Deviate Terrortooth
    .mob Deviate Plainstrider
    .mob Lashvine
step
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .turnin 24570 >>Turn in Adder Subtraction
    .turnin 24571 >>Turn in Lashvine Seeds
    .accept 24566 >>Accept Sowing a Solution
    .target Muyoh
step
    #completewith Along64
    >>As you go: Kill |cRXP_ENEMY_Deviate Terrortooths|r and |cRXP_ENEMY_Deviate Plainstriders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24566,1 --Deviate Terrortooth (6)
    .mob Deviate Terrortooth
    .mob Deviate Plainstrider
step
    #label Along64
    .goto 199,50.41,40.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naralex|r
    .turnin 24565 >>Turn in Biological Intervention
    .accept 24574 >>Accept To Harvest Chaos
    .target Naralex
step
    #loop
    .goto 199,48.76,38.87,0
    .goto 199,48.76,38.87,40,0
    .goto 199,52.24,38.43,40,0
    .goto 199,51.94,34.67,40,0
    >>Kill |cRXP_ENEMY_Deviate Terrortooths|r and |cRXP_ENEMY_Deviate Plainstriders|r
    >>Kill |cRXP_ENEMY_Outgrowths|r
    >>Kill |cRXP_ENEMY_Outgrowth|r and loot |cRXP_LOOT_Squirming Heart|r
    .complete 24566,1 --Deviate Terrortooth (6)
    .complete 24574,1 --Outgrowth slain (5)
    .complete 24574,2 --Squirming Heart (1)
    .mob Deviate Terrortooth
    .mob Deviate Plainstrider
    .mob Outgrowth
step
    .goto 199,50.30,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muyoh|r
    .turnin 24566 >>Turn in Sowing a Solution
    .target Muyoh
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
    .target Naralex
step
    .goto 199,39.48,20.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onatay|r
    .accept 24515 >>Accept Signals in the Sky
    .target Onatay
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,34.99,9.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice Mattingly|r
    .turnin 24862 >>Turn in Running the Gauntlet
    .turnin 24863 >>Turn in Breaking the Siege
    .accept 25186 >>Accept Futile Resistance
    .target Janice Mattingly
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,29.88,8.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Walpole|r
    .turnin 28550 >>Turn in Hero's Call: Southern Barrens!
    .target Commander Walpole
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,35.11,6.86
    >>Kill |cRXP_ENEMY_Kona Thunderwalk|r
    .complete 25186,1 --Kona Thunderwalk slain (1)
    .mob Kona Thunderwalk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,38.79,11.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Singleton|r
    .turnin 25186 >>Turn in Futile Resistance
    .target Commander Singleton
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
step
    .goto 199,44.18,33.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba Flathoof|r
    .turnin 24515 >>Turn in Signals in the Sky
    .target Makaba Flathoof
step
    .goto 199,44.50,33.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tawane|r
    .accept 24543 >>Accept A Family Divided
    .target Tawane
    .isQuestTurnedIn 24529 --any of: Bad to Worse
    .xp <30,1
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 35 Southern Barrens
#subweight -30
#name 32-35 Southern Barrens: around General Hawthorne
--RouteBuilder:next
#next Zone Routes (Alliance)\35-37 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Alliance)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts;Zone Routes (Alliance)\33-36 Desolace: around Karnum Marshweaver

step
    .goto 199,50.01,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
    .turnin 25034 >>Turn in To the Front!
    .target Ambassador Gaines
    .isOnQuest 25034
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,50.01,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
    .accept 25044 >>Accept Diplomacy By Another Means
    .target Ambassador Gaines
    .isQuestTurnedIn 25027 --any of: You Flicked a Fine Vine to Leaf Me
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.93,49.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
    .accept 25043 >>Accept Fields of Blood
    .accept 25045 >>Accept A Line in the Dirt
    .target General Hawthorne
step
    .goto 199,49.97,50.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donnach|r
    .target Donnach
    .home >>Set your Hearthstone to Donnach's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.79,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sam Trawley|r
    .accept 25041 >>Accept Lion's Pride
    .target Sam Trawley
step
    .goto 199,68.69,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horton Gimbleheart|r
    .turnin 25191 >>Turn in Survey the Destruction
    .target Horton Gimbleheart
    .isOnQuest 25191
step
    .goto 199,68.69,49.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horton Gimbleheart|r
    .accept 25197 >>Accept The Admiral Won't Back Down
    .target Horton Gimbleheart
    .isQuestTurnedIn 25191 --any of: Survey the Destruction
step
    .goto 199,69.26,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Aubrey|r
    .turnin 25197 >>Turn in The Admiral Won't Back Down
    .target Admiral Aubrey
    .isOnQuest 25197
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Donnach's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along89
    >>As you go: Kill |cRXP_ENEMY_Plains Prowlers|r and |cRXP_ENEMY_Plains Pridemanes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25041,1 --Plains Prowler (5)
    .mob Plains Prowler
    .mob Plains Pridemane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along87
    >>As you go: Kill |cRXP_ENEMY_Desolation Grunts|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25043,1 --Desolation Grunt slain (10)
    .mob Desolation Grunt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along87
    .goto 199,49.42,54.04
    >>Click the |cRXP_PICK_Field Banner|r
    >>Click the |cRXP_PICK_Alliance Field Banner|r
    .complete 25045,1 --Field Banner
    .complete 25045,2 --Alliance Field Banner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,42.99,41.60
    >>Kill |cRXP_ENEMY_Sabersnout|r
    .complete 25044,1 --Sabersnout slain (1)
    .mob Sabersnout
    .isOnQuest 25044
step
    #label Along89
    .goto 199,41.62,46.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirge Sternhorn|r
    .turnin 24543 >>Turn in A Family Divided
    .target Kirge Sternhorn
    .isOnQuest 24543
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,42.84,45.52,0
    .goto 199,42.84,45.52,40,0
    .goto 199,44.81,46.28,40,0
    .goto 199,46.91,45.53,40,0
    >>Kill |cRXP_ENEMY_Desolation Grunts|r
    >>Kill |cRXP_ENEMY_Plains Prowlers|r and |cRXP_ENEMY_Plains Pridemanes|r
    .complete 25043,1 --Desolation Grunt slain (10)
    .complete 25041,1 --Plains Prowler (5)
    .mob Desolation Grunt
    .mob Plains Prowler
    .mob Plains Pridemane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,50.01,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
    .turnin 25044 >>Turn in Diplomacy By Another Means
    .target Ambassador Gaines
    .isOnQuest 25044
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.93,49.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
    .turnin 25043 >>Turn in Fields of Blood
    .turnin 25045 >>Turn in A Line in the Dirt
    .target General Hawthorne
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.93,49.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
    .accept 25057 >>Accept Clap 'Em In Irons
    .target General Hawthorne
    .isQuestTurnedIn 25044 --Diplomacy By Another Means
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,50.01,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
    .accept 25059 >>Accept The Taurajo Briefs
    .target Ambassador Gaines
    .isQuestTurnedIn 25044 --Diplomacy By Another Means
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.79,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sam Trawley|r
    .turnin 25041 >>Turn in Lion's Pride
    .accept 25042 >>Accept Marching On Our Stomachs
    .target Sam Trawley
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along97
    >>As you go: Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for |cRXP_LOOT_Fresh Stormsnout Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25042,1 --Fresh Stormsnout Steak (4)
    .mob Stormsnout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,44.47,52.53
    >>Pick up |cRXP_PICK_Taurajo Intelligence|r from the ground
    .complete 25059,1 --Taurajo Intelligence (1)
    .isOnQuest 25059
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along97
    #loop
    .goto 199,43.97,51.18,0
    .goto 199,43.97,51.18,40,0
    .goto 199,45.60,52.26,40,0
    >>Interact with |cRXP_FRIENDLY_Taurajo Looters|r
    .complete 25057,1 --Taurajo Looter (5)
    .target Taurajo Looter
    .isOnQuest 25057
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,49.18,46.96,0
    .goto 199,49.18,46.96,40,0
    .goto 199,51.42,51.64,40,0
    .goto 199,50.59,55.71,40,0
    >>Kill |cRXP_ENEMY_Stormsnouts|r. Loot them for |cRXP_LOOT_Fresh Stormsnout Steak|r
    .complete 25042,1 --Fresh Stormsnout Steak (4)
    .mob Stormsnout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.93,49.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
    .turnin 25057 >>Turn in Clap 'Em In Irons while you are here
    .isQuestComplete 25057
    .target General Hawthorne
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,50.01,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
    .turnin 25059 >>Turn in The Taurajo Briefs while you are here
    .isQuestComplete 25059
    .target Ambassador Gaines
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.79,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sam Trawley|r
    .turnin 25042 >>Turn in Marching On Our Stomachs
    .target Sam Trawley
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.93,49.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
    .turnin 25057 >>Turn in Clap 'Em In Irons
    .target General Hawthorne
    .isOnQuest 25057
step
    .goto 199,49.93,49.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Hawthorne|r
    .accept 25074 >>Accept Meet Me at Triumph
    .target General Hawthorne
    .isQuestTurnedIn 25057 --any of: Clap 'Em In Irons
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,50.01,49.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Gaines|r
    .turnin 25059 >>Turn in The Taurajo Briefs
    .target Ambassador Gaines
    .isOnQuest 25059
step
    .goto 199,49.09,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Roberts|r
    .turnin 25074 >>Turn in Meet Me at Triumph
    .target Commander Roberts
    .isOnQuest 25074
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.09,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Roberts|r
    .accept 25081 >>Accept Claim the Battlescar
    .target Commander Roberts
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.49,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mizzy Pistonhammer|r
    .accept 25075 >>Accept Pick-a-Part
    .target Mizzy Pistonhammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.21,67.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logan Talonstrike|r
    .accept 25082 >>Accept Working the Bugs Out
    .target Logan Talonstrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,41.33,66.97
    >>Kill |cRXP_ENEMY_Silithid Swarmers|r
    .complete 25082,1 --Silithid Swarmer slain (10)
    .mob Silithid Swarmer
step
    .goto 199,41.64,69.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crawgol|r
    .accept 24667 >>Accept Firestone Point
    .target Crawgol
    .isQuestTurnedIn 24654 --any of: Silithissues
    .xp <32,1
step
    .goto 199,41.10,71.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomusa|r
    .accept 24632 >>Accept Tauren Vengeance
    .target Tomusa
    .isQuestTurnedIn 24631 --any of: Flightmare
    .xp <32,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,44.66,71.18,0
    .goto 199,44.66,71.18,40,0
    .goto 199,45.54,68.80,40,0
    >>Click the |cRXP_PICK_Battlescar Flagpole|r
    >>Pick up |cRXP_PICK_Siege Engine Scrap|r from the ground
    >>Kill |cRXP_ENEMY_Desolation Raiders|r
    .complete 25081,2 --Battlescar Flagpole
    .complete 25075,1 --Siege Engine Scrap (8)
    .complete 25081,1 --Desolation Raider slain (10)
    .mob Desolation Raider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,45.03,85.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn Redearth|r
    .accept 25084 >>Accept A Growing Threat
    .target Dorn Redearth
step
    .goto 199,45.09,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tauna Skychaser|r
    .turnin 24667 >>Turn in Firestone Point
    .target Tauna Skychaser
    .isOnQuest 24667
step
    .goto 199,45.09,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tauna Skychaser|r
    .accept 24824 >>Accept The Disturbed Earth
    .target Tauna Skychaser
step
    #completewith Along115
    >>As you go: Kill |cRXP_ENEMY_Disturbed Earth Elementals|r. Loot them for |cRXP_LOOT_Disturbed Earth Fragment|r. |cRXP_WARN_Anything left is finished later|r
    .complete 24824,1 --Disturbed Earth Fragment (4)
    .mob Disturbed Earth Elemental
step
    .goto 199,49.22,82.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann Stonespire|r
    .turnin 24632 >>Turn in Tauren Vengeance
    .target Gann Stonespire
    .isOnQuest 24632
step
    #label Along115
    .goto 199,49.23,82.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nato Raintree|r
    .accept 25292 >>Accept Next of Kin
    .target Nato Raintree
    .isQuestTurnedIn 24747 --any of: Sabotage!
    .xp <32,1
step
    .goto 199,49.21,67.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logan Talonstrike|r
    .turnin 25082 >>Turn in Working the Bugs Out << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 25086 >>Accept Firestone Point
    .target Logan Talonstrike
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.49,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mizzy Pistonhammer|r
    .turnin 25075 >>Turn in Pick-a-Part
    .accept 25079 >>Accept Powder Play
    .target Mizzy Pistonhammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along118
    >>As you go: Kill |cRXP_ENEMY_Sapper Specialist|r and loot |cRXP_LOOT_Keg of Blast-O Powder|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25079,1 --Keg of Blast-O Powder (1)
    .mob Sapper Specialist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along118
    .goto 199,49.09,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Roberts|r
    .turnin 25081 >>Turn in Claim the Battlescar
    .accept 25087 >>Accept Report to Twinbraid
    .target Commander Roberts
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,47.88,69.21,0
    .goto 199,47.88,69.21,40,0
    .goto 199,43.78,68.59,40,0
    >>Kill |cRXP_ENEMY_Sapper Specialist|r and loot |cRXP_LOOT_Keg of Blast-O Powder|r
    .complete 25079,1 --Keg of Blast-O Powder (1)
    .mob Sapper Specialist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.49,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mizzy Pistonhammer|r
    .turnin 25079 >>Turn in Powder Play
    .accept 25080 >>Accept Batteries Not Yet Included
    .target Mizzy Pistonhammer
step
    #loop
    .goto 199,48.13,73.32,0
    .goto 199,48.13,73.32,40,0
    .goto 199,47.05,76.98,40,0
    .goto 199,47.15,83.24,40,0
    .goto 199,47.86,80.55,40,0
    >>Kill |cRXP_ENEMY_Thunderhead|r and loot |cRXP_LOOT_Humming Electrogizard|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Disturbed Earth Elementals|r. Loot them for |cRXP_LOOT_Disturbed Earth Fragment|r
    .complete 25080,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Humming Electrogizard (1)
    .complete 24824,1 --Disturbed Earth Fragment (4)
    .mob Thunderhead << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Disturbed Earth Elemental
step
    .goto 199,45.09,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tauna Skychaser|r
    .turnin 24824 >>Turn in The Disturbed Earth
    .target Tauna Skychaser
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along125
    >>As you go: Kill |cRXP_ENEMY_Razormane Pathfinders|r, |cRXP_ENEMY_Razormane Warfrenzies|r, |cRXP_ENEMY_Razormane Seers|r and |cRXP_ENEMY_Razormane Mankrik Quest Credits|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25084,1 --Razormane Pathfinder (8)
    .mob Razormane Pathfinder
    .mob Razormane Warfrenzy
    .mob Razormane Seer
    .mob Razormane Mankrik Quest Credit
step
    .goto 199,45.03,85.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn Redearth|r
    .turnin 25086 >>Turn in Firestone Point
    .target Dorn Redearth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,43.52,78.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Twinbraid|r
    .turnin 25087 >>Turn in Report to Twinbraid
    .accept 25104 >>Accept Digsite Status
    .target General Twinbraid
step
    #label Along125
    .goto 199,43.46,78.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurlston Stonesthrow|r
    .accept 25102 >>Accept No Bull
    .target Hurlston Stonesthrow
step
    #completewith Drop24606x1
    >>|cRXP_LOOT_Carved Boar Idol|r can drop from |cRXP_ENEMY_Razormane Pathfinder|r, |cRXP_ENEMY_Razormane Warfrenzy|r, |cRXP_ENEMY_Razormane Seer|r. Use it to start the quest if you get one
    .collect 49932,1,24606 --Carved Boar Idol (1)
    .accept 24606 >>Accept Blood of the Barrens
    .use 49932
step
    #label Drop24606x1
    #loop
    .goto 199,42.80,85.16,0
    .goto 199,42.80,85.16,40,0
    .goto 199,44.57,88.00,40,0
    >>Kill |cRXP_ENEMY_Razormane Pathfinders|r, |cRXP_ENEMY_Razormane Warfrenzies|r and |cRXP_ENEMY_Razormane Seers|r. Loot them for |cRXP_LOOT_Blood Shard Trinket|r
    >>Kill |cRXP_ENEMY_Razormane Pathfinders|r, |cRXP_ENEMY_Razormane Warfrenzies|r, |cRXP_ENEMY_Razormane Seers|r and |cRXP_ENEMY_Razormane Mankrik Quest Credits|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 24606,1 --Blood Shard Trinket (6)
    .complete 25084,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Razormane Pathfinder (8)
    .mob Razormane Pathfinder
    .mob Razormane Warfrenzy
    .mob Razormane Seer
    .mob Razormane Mankrik Quest Credit << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    .goto 199,45.15,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahka|r
    .turnin 24606 >>Turn in Blood of the Barrens while you are here
    .isQuestComplete 24606
    .target Mahka
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,45.03,85.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn Redearth|r
    .turnin 25084 >>Turn in A Growing Threat
    .accept 25085 >>Accept Mangletooth
    .target Dorn Redearth
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,47.16,88.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marley Twinbraid|r
    .turnin 25104 >>Turn in Digsite Status
    .accept 25106 >>Accept Hands Off Me Dig!
    .accept 25108 >>Accept Feegly the Exiled
    .target Marley Twinbraid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,47.67,87.96
    >>Pick up |cRXP_PICK_Bael Modan Artifact|r from the ground
    >>Kill |cRXP_ENEMY_Excavation Raiders|r
    >>Pick up |cRXP_PICK_Twinbraid's Tools|r from the ground
    >>Kill |cRXP_ENEMY_Feegly the Exiled|r
    .complete 25106,2 --Bael Modan Artifact (5)
    .complete 25106,1 --Excavation Raider slain (8)
    .complete 25106,3 --Twinbraid's Tools (1)
    .complete 25108,1 --Feegly the Exiled slain (1)
    .mob Excavation Raider
    .mob Feegly the Exiled
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,47.16,88.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marley Twinbraid|r
    .turnin 25106 >>Turn in Hands Off Me Dig!
    .turnin 25108 >>Turn in Feegly the Exiled
    .accept 25120 >>Accept Marley's Final Flight
    .target Marley Twinbraid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,47.16,88.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marley Twinbraid|r
    .complete 25120,1 --Marley Twinbraid
    .target Marley Twinbraid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.25,86.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marley Twinbraid|r
    .turnin 25120 >>Turn in Marley's Final Flight
    .accept 25151 >>Accept He Needs Ale!
    .target Marley Twinbraid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along138
    >>As you go: Open the |cRXP_PICK_Keg of Ol' Barkerstout|r. Loot it for |cRXP_LOOT_Mug of Ol' Barkerstout|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25151,1 --Mug of Ol' Barkerstout (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.42,86.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bael'dun Survivor|r
    .accept 25153 >>Accept Bael'dun Rescue
    .target Bael'dun Survivor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.64,87.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wounded Bael'dun Officer|r
    .accept 25163 >>Accept Who Did This?
    .target Wounded Bael'dun Officer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,50.27,87.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weezil Slipshadow|r
    .turnin 25163 >>Turn in Who Did This?
    .accept 25174 >>Accept Twinbraid Needs to Know
    .target Weezil Slipshadow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along138
    .goto 199,50.29,86.50
    >>Interact with |cRXP_FRIENDLY_Burning Debris|r
    .complete 25153,1 --Burning Debris
    .target Burning Debris
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.42,86.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bael'dun Survivor|r
    .turnin 25153 >>Turn in Bael'dun Rescue while you are here
    .isQuestComplete 25153
    .target Bael'dun Survivor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,50.47,85.87
    >>Open the |cRXP_PICK_Keg of Ol' Barkerstout|r. Loot it for |cRXP_LOOT_Mug of Ol' Barkerstout|r
    .complete 25151,1 --Mug of Ol' Barkerstout (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.25,86.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marley Twinbraid|r
    .turnin 25151 >>Turn in He Needs Ale! while you are here
    .isQuestComplete 25151
    .target Marley Twinbraid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.42,86.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bael'dun Survivor|r
    .turnin 25153 >>Turn in Bael'dun Rescue
    .target Bael'dun Survivor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.25,86.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marley Twinbraid|r
    .turnin 25151 >>Turn in He Needs Ale!
    .accept 25175 >>Accept The Bad News
    .target Marley Twinbraid
step
    #loop
    .goto 199,46.41,80.06,0
    .goto 199,46.41,80.06,40,0
    .goto 199,49.63,79.35,40,0
    >>Kill |cRXP_ENEMY_Landquaker Kodos|r
    >>Kill |cRXP_ENEMY_Landquaker Bull|r
    .complete 25102,1 --Landquaker Kodo slain (4)
    .complete 25102,2 --Landquaker Bull slain (1)
    .mob Landquaker Kodo
    .mob Landquaker Bull
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,43.52,78.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Twinbraid|r
    .turnin 25174 >>Turn in Twinbraid Needs to Know
    .turnin 25175 >>Turn in The Bad News
    .accept 25182 >>Accept Kill 'em All!
    .accept 25183 >>Accept ...And Bury the Rest
    .target General Twinbraid
step
    .goto 199,43.46,78.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hurlston Stonesthrow|r
    .turnin 25102 >>Turn in No Bull
    .target Hurlston Stonesthrow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along145
    >>As you go: Kill |cRXP_ENEMY_Mangletooth|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25085,1 --Mangletooth slain (1)
    .mob Mangletooth
step
    #label Along145
    #loop
    .goto 199,40.41,83.25,0
    .goto 199,40.41,83.25,40,0
    .goto 199,38.13,81.77,40,0
    >>Loot the |cRXP_PICK_Boar Skulls|r for |cRXP_LOOT_Polished Boar Skull|r
    .complete 24653,1 --Polished Boar Skull (3)
    .isOnQuest 24653
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,37.72,81.55
    >>Kill |cRXP_ENEMY_Mangletooth|r
    .complete 25085,1 --Mangletooth slain (1)
    .mob Mangletooth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 199,40.65,79.40,0
    .goto 199,40.65,79.40,40,0
    .goto 199,39.98,75.72,40,0
    >>Click the |cRXP_PICK_Frazzlecraz Explosives|r
    >>Kill |cRXP_ENEMY_Frazzlecraz Miners|r
    .complete 25183,1 --Frazzlecraz Explosives
    .complete 25182,1 --Frazzlecraz Miner slain (10)
    .mob Frazzlecraz Miner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,40.40,77.81
    >>Click the |cRXP_PICK_Big Nasty Plunger|r
    .turnin 25183 >>Turn in ...And Bury the Rest
    .accept 25185 >>Accept The Deed Is Done
step
    .goto 199,43.52,78.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Twinbraid|r
    .turnin 25182 >>Turn in Kill 'em All! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .turnin 25185 >>Turn in The Deed Is Done << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26687 >>Accept Reinforcements From Theramore
    .target General Twinbraid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,45.03,85.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn Redearth|r
    .turnin 25085 >>Turn in Mangletooth
    .target Dorn Redearth
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Edirah
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 27265 >>Accept Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 27270 >>Accept An Audience with the Farseer
    .target Hobahken
step
    #completewith next
    .zone 199 >>Leave The Exodar for Southern Barrens
    .zoneskip 199
step
    .goto 199,45.15,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahka|r
    .turnin 24653 >>Turn in Echoes of Agamaggan
    .target Mahka
    .isOnQuest 24653
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9762 >>Accept The Unwritten Prophecy
    .target Prophet Velen
    .isQuestTurnedIn 9759 --any of: Ending Their World
    .xp <18,1
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9762 >>Turn in The Unwritten Prophecy
    .target Prophet Velen
    .isOnQuest 9762
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9698 >>Turn in Audience with the Prophet
    .target Prophet Velen
    .isOnQuest 9698
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9699 >>Accept Truth or Fiction
    .target Prophet Velen
    .isQuestTurnedIn 9698 --any of: Audience with the Prophet
    .xp <14,1
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Turn in On the Wings of a Hippogryph
    .target Nurguni
    .isOnQuest 9604
step << Draenei
    .goto 103,57.02,50.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nurguni|r
    .accept 9605 >>Accept Hippogryph Master Stephanos
    .target Nurguni
    .isQuestTurnedIn 9604 --any of: On the Wings of a Hippogryph
    .xp <5,1
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .turnin 9605 >>Turn in Hippogryph Master Stephanos
    .target Stephanos
    .isOnQuest 9605
step << Draenei
    .goto 103,54.49,36.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanos|r
    .accept 9606 >>Accept Return to Caregiver Chellan
    .target Stephanos
    .isQuestTurnedIn 9605 --any of: Hippogryph Master Stephanos
    .xp <5,1
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >>Turn in Coming of Age
    .target Torallius the Pack Handler
    .isOnQuest 9623
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,81.49,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .accept 9625 >>Accept Elekks Are Serious Business
    .target Torallius the Pack Handler
    .isQuestTurnedIn 9623 --any of: Coming of Age
    .xp <10,1
step
    #completewith next
    .zone 199 >>Leave The Exodar for Southern Barrens
    .zoneskip 199
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 199,49.49,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mizzy Pistonhammer|r
    .turnin 25080 >>Turn in Batteries Not Yet Included
    .target Mizzy Pistonhammer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
step
    +|cRXP_WARN_End of the Southern Barrens route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Repel Boarders!, Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Next of Kin, Reinforcements From Theramore
    >>|cRXP_FRIENDLY_Feralas|r: Hero's Call: Feralas! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7 << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
step
    +|cRXP_WARN_Suggested next zones at level 34|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.5 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.0 levels of quests, starting around Captain Hecklebury Smotts), |cRXP_FRIENDLY_Desolace|r (about 0.9 levels of quests, starting around Karnum Marshweaver). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
]])
