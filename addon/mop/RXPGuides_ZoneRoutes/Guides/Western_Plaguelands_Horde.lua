-- 35-40 Western Plaguelands: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 35, 41).
-- Split into 2 guides, listed under "35 - 42 Western Plaguelands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Western Plaguelands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 42 Western Plaguelands
#subweight -35
#name 35-39 Western Plaguelands: around Field Agent Kaartish
--RouteBuilder:next
#next Zone Routes (Horde)\37-40 Dustwallow Marsh: around Tabetha;Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 28750 >>Turn in The Battle for Andorhal
    .target Koltira Deathweaver
    .isOnQuest 28750
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 26920 >>Turn in The Battle for Andorhal
    .target Koltira Deathweaver
    .isOnQuest 26920
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 28508 >>Turn in The Battle for Andorhal
    .target Koltira Deathweaver
    .isOnQuest 28508
step
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9328 >>Turn in Hero of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9328
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9621 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9328 --any of: Hero of the Sin'dorei
    .xp <15,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
    .accept 28575 >>Accept Warchief's Command: Western Plaguelands!
step << Orc Warrior/Undead Warrior/Tauren Warrior/Troll Warrior/BloodElf Warrior/Goblin Warrior/Pandaren Warrior
    .goto 110,81.16,37.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alsudar the Bastion|r
    .accept 27281 >>Accept Grezz Ragefist
    .target Alsudar the Bastion
step << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    .goto 110,84.56,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zandine|r
    .accept 27278 >>Accept Grimshot's Call
    .target Zandine
step << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
    .goto 110,79.71,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zelanis|r
    .accept 27279 >>Accept The Shattered Hand
    .target Zelanis
step << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    .goto 110,59.17,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inethven|r
    .accept 27277 >>Accept An Audience with Ureda
    .target Inethven
step << Orc Warlock/Undead Warlock/Tauren Warlock/Troll Warlock/BloodElf Warlock/Goblin Warlock/Pandaren Warlock
    .goto 110,73.05,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zanien|r
    .accept 27282 >>Accept Zevrost's Behest
    .target Zanien
step << Orc Shaman/Undead Shaman/Tauren Shaman/Troll Shaman/BloodElf Shaman/Goblin Shaman/Pandaren Shaman
    .goto 110,71.71,55.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gez'li|r
    .accept 27280 >>Accept The Dreamseeker Calls
    .target Gez'li
step
    .goto 110,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Champion Bachi|r
    .accept 27298 >>Accept Seek Out Master Pyreanor << BloodElf Paladin
    .accept 27304 >>Accept Follow the Sun << Tauren Paladin/BloodElf Paladin
    .target Champion Bachi
step
    .goto 110,53.09,26.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aldrae|r
    .accept 27334 >>Accept Dark Cleric Cecille << Undead Priest
    .accept 27331 >>Accept The Seer's Call << Tauren Priest
    .accept 27332 >>Accept Seek the Shadow-Walker << Troll Priest
    .accept 27335 >>Accept Journey to Orgrimmar << BloodElf Priest
    .accept 28164 >>Accept Seek Brother Silverhallow << Goblin Priest
    .target Aldrae
step << Orc/Undead/Tauren/Troll/Goblin/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9811 >>Turn in Friend of the Sin'dorei
    .unitscan Lor'themar Theron
    .isOnQuest 9811
step << Orc/Undead/Tauren/Troll/Pandaren
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9812 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9811 --any of: Friend of the Sin'dorei
    .xp <15,1
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .turnin 9133 >>Turn in Fly to Silvermoon City
    .target Sathren Azuredawn
    .isOnQuest 9133
step << BloodElf
    .goto 110,53.93,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sathren Azuredawn|r
    .accept 9134 >>Accept Skymistress Gloaming
    .target Sathren Azuredawn
    .isQuestTurnedIn 9133 --any of: Fly to Silvermoon City
    .xp <5,1
step
    #completewith next
    .zone 22 >>Leave Silvermoon City for Western Plaguelands
    .zoneskip 22
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 28575 >>Turn in Warchief's Command: Western Plaguelands!
    .accept 26921 >>Accept Scourge First... Alliance Later
    .target Koltira Deathweaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along20
    >>As you go: Kill |cRXP_ENEMY_Desiccated Magus|r, |cRXP_ENEMY_Desiccated Spearmans|r and |cRXP_ENEMY_Desiccated Scourges|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26921,1 --Desiccated Magus (8)
    .mob Desiccated Magus
    .mob Desiccated Spearman
    .mob Desiccated Scourge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along20
    #loop
    .goto 22,49.04,63.71,0
    .goto 22,49.04,63.71,40,0
    .goto 22,47.58,65.56,40,0
    .goto 22,40.69,52.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay Ravensun|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26923 >>Accept War Machines
    .unitscan Lindsay Ravensun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.31,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jearl Donald|r
    .accept 26922 >>Accept The Endless Flow
    .target Jearl Donald
step << Horde
    .goto 22,46.51,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhonda Molver|r
    .fp >>Get the Andorhal Flight Path
    .target Rhonda Molver
    .subzoneskip 193,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,42.73,65.75,0
    .goto 22,42.73,65.75,40,0
    .goto 22,42.48,69.47,40,0
    .goto 22,44.72,71.24,40,0
    >>Kill |cRXP_ENEMY_Stickbone Berserkers|r
    >>Click the |cRXP_PICK_Scourge Bone Animus|r
    >>Kill |cRXP_ENEMY_Opengut Behemoths|r
    >>Kill |cRXP_ENEMY_Desiccated Magus|r, |cRXP_ENEMY_Desiccated Spearmans|r and |cRXP_ENEMY_Desiccated Scourges|r
    .complete 26922,1 --Stickbone Berserker slain (5)
    .complete 26922,2 --Scourge Bone Animus
    .complete 26923,1 --Opengut Behemoth slain (6)
    .complete 26921,1 --Desiccated Magus (8)
    .mob Stickbone Berserker
    .mob Opengut Behemoth
    .mob Desiccated Magus
    .mob Desiccated Spearman
    .mob Desiccated Scourge
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.31,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jearl Donald|r
    .turnin 26922 >>Turn in The Endless Flow
    .accept 26925 >>Accept Araj the Summoner
    .target Jearl Donald
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,49.04,63.71,0
    .goto 22,49.04,63.71,40,0
    .goto 22,47.58,65.56,40,0
    .goto 22,40.69,52.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay Ravensun|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26923 >>Turn in War Machines
    .unitscan Lindsay Ravensun
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 26921 >>Turn in Scourge First... Alliance Later
    .accept 26924 >>Accept Scholomancer
    .accept 27117 >>Accept Brute Strength
    .target Koltira Deathweaver
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,46.66,71.66
    >>Open the |cRXP_PICK_Araj's Phylactery|r. Loot it for |cRXP_LOOT_Araj's Phylactery Shard|r
    >>Kill |cRXP_ENEMY_The Ravenian|r
    >>Kill |cRXP_ENEMY_Darkmaster Gandling|r
    .complete 26925,1 --Araj's Phylactery Shard (1)
    .complete 27117,1 --The Ravenian slain (1)
    .complete 26924,1 --Darkmaster Gandling slain (1)
    .mob The Ravenian
    .mob Darkmaster Gandling
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 26924 >>Turn in Scholomancer
    .turnin 26925 >>Turn in Araj the Summoner
    .turnin 27117 >>Turn in Brute Strength
    .accept 26926 >>Accept Victory, For Now
    .target Koltira Deathweaver
step
    .goto 22,50.67,53.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chad Fillmore|r
    .target Chad Fillmore
    .home >>Set your Hearthstone to Chad Fillmore's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,49.04,63.71,0
    .goto 22,49.04,63.71,40,0
    .goto 22,47.58,65.56,40,0
    .goto 22,40.69,52.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay Ravensun|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26979 >>Turn in Strange New Faces
    .unitscan Lindsay Ravensun
    .isOnQuest 26979
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,40.69,52.00,0
    .goto 22,40.69,52.00,40,0
    .goto 22,47.58,65.56,40,0
    .goto 22,49.04,63.71,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay Ravensun|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26937 >>Accept When Death is Not Enough
    .unitscan Lindsay Ravensun
    .isQuestTurnedIn 26979 --any of: Strange New Faces
    .xp <34,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,38.05,55.18,0
    .goto 22,38.05,55.18,40,0
    .goto 22,37.01,57.05,40,0
    >>Kill |cRXP_ENEMY_Alliance Laborers|r
    .complete 26937,1 --Alliance Laborer slain (8)
    .mob Alliance Laborer
    .isOnQuest 26937
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,40.69,52.00,0
    .goto 22,40.69,52.00,40,0
    .goto 22,47.58,65.56,40,0
    .goto 22,49.04,63.71,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay Ravensun|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26937 >>Turn in When Death is Not Enough
    .unitscan Lindsay Ravensun
    .isOnQuest 26937
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,40.69,52.00,0
    .goto 22,40.69,52.00,40,0
    .goto 22,47.58,65.56,40,0
    .goto 22,49.04,63.71,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay Ravensun|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26938 >>Accept Combat Training
    .unitscan Lindsay Ravensun
    .isQuestTurnedIn 26937 --any of: When Death is Not Enough
    .xp <34,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,38.80,54.98
    >>Kill |cRXP_ENEMY_Opengut Behemoth|r
    .complete 26938,1 --Opengut Behemoth slain (1)
    .mob Opengut Behemoth
    .isOnQuest 26938
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,37.71,54.75,0
    .goto 22,37.71,54.75,40,0
    .goto 22,36.22,57.89,40,0
    >>Use your Enthralled Val'kyr's Call to Arms ability to mobilize 5 Forsaken Troopers on Felstone Field. Then slay the Opengut Abomination inside Felstone's barn.
    .complete 26938,2 --Forsaken Trooper (5)
    .target Forsaken Trooper
    .isOnQuest 26938
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,40.69,52.00,0
    .goto 22,40.69,52.00,40,0
    .goto 22,47.58,65.56,40,0
    .goto 22,49.04,63.71,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay Ravensun|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26938 >>Turn in Combat Training
    .unitscan Lindsay Ravensun
    .isOnQuest 26938
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .turnin 26952 >>Turn in The Menders' Stead
    .target Field Agent Kaartish
    .isOnQuest 26952
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .accept 26999 >>Accept A New Era for the Plaguelands
    .target Field Agent Kaartish
step
    .goto 22,48.87,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adrine Towhide|r
    .accept 26953 >>Accept Zen'Kiki, the Druid
    .target Adrine Towhide
step
    .goto 22,48.53,54.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selyria Groenveld|r
    .accept 26956 >>Accept I Ain't Sayin' You a Gourd-Digger...
    .target Selyria Groenveld
step
    .goto 22,50.50,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marge Heffman|r
    .fp >>Get the The Menders' Stead Flight Path
    .target Marge Heffman
    .subzoneskip 5367,1
step
    #loop
    .goto 22,46.99,53.01,0
    .goto 22,46.99,53.01,40,0
    .goto 22,44.86,53.07,40,0
    >>Click the |cRXP_PICK_Unhealthy-Looking Pumpkin|r
    >>Click the |cRXP_PICK_Rotten Apple|r
    >>Click the |cRXP_PICK_Bad Corn|r
    .complete 26956,3 --Unhealthy-Looking Pumpkin
    .complete 26956,2 --Rotten Apple
    .complete 26956,1 --Bad Corn
step
    .goto 22,48.53,54.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selyria Groenveld|r
    .turnin 26956 >>Turn in I Ain't Sayin' You a Gourd-Digger... while you are here
    .isQuestComplete 26956
    .target Selyria Groenveld
step
    #completewith Along44
    >>As you go: Kill |cRXP_ENEMY_Diseased Wolfs|r, |cRXP_ENEMY_Venom Mist Lurkers|r, |cRXP_ENEMY_Plague Lurkers|r and |cRXP_ENEMY_Hulking Plaguebears|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26953,1 --Diseased Wolf (8)
    .mob Diseased Wolf
    .mob Venom Mist Lurker
    .mob Plague Lurker
    .mob Hulking Plaguebear
step
    #completewith Along42
    >>As you go: Kill |cRXP_ENEMY_Diseased Wolfs|r. Loot them for |cRXP_LOOT_Diseased Wolf Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26999,4 --Diseased Wolf Sample (4)
    .mob Diseased Wolf
step
    #label Along42
    #loop
    .goto 22,57.27,53.88,0
    .goto 22,57.27,53.88,40,0
    .goto 22,59.44,50.77,40,0
    .goto 22,62.67,46.71,40,0
    .goto 22,65.41,44.95,40,0
    >>Kill |cRXP_ENEMY_Hulking Plaguebears|r. Loot them for |cRXP_LOOT_Hulking Plaguebear Sample|r
    .complete 26999,3 --Hulking Plaguebear Sample (4)
    .mob Hulking Plaguebear
step
    #loop
    .goto 22,56.54,52.93,0
    .goto 22,56.54,52.93,40,0
    .goto 22,52.74,51.80,40,0
    .goto 22,53.74,48.39,40,0
    >>Kill |cRXP_ENEMY_Diseased Wolfs|r. Loot them for |cRXP_LOOT_Diseased Wolf Sample|r
    .complete 26999,4 --Diseased Wolf Sample (4)
    .mob Diseased Wolf
step
    #label Along44
    #loop
    .goto 22,55.97,58.62,0
    .goto 22,55.97,58.62,40,0
    .goto 22,59.44,59.33,40,0
    .goto 22,58.23,63.50,40,0
    .goto 22,51.71,58.04,40,0
    >>Kill |cRXP_ENEMY_Plague Lurkers|r. Loot them for |cRXP_LOOT_Plague Lurker Sample|r
    >>Kill |cRXP_ENEMY_Venom Mist Lurkers|r. Loot them for |cRXP_LOOT_Venom Mist Lurker Sample|r
    .complete 26999,1 --Plague Lurker Sample (4)
    .complete 26999,2 --Venom Mist Lurker Sample (4)
    .mob Plague Lurker
    .mob Venom Mist Lurker
step
    #loop
    .goto 22,55.87,51.77,0
    .goto 22,55.87,51.77,40,0
    .goto 22,54.86,48.91,40,0
    .goto 22,53.39,50.59,40,0
    >>Kill |cRXP_ENEMY_Diseased Wolfs|r, |cRXP_ENEMY_Venom Mist Lurkers|r, |cRXP_ENEMY_Plague Lurkers|r and |cRXP_ENEMY_Hulking Plaguebears|r
    .complete 26953,1 --Diseased Wolf (8)
    .mob Diseased Wolf
    .mob Venom Mist Lurker
    .mob Plague Lurker
    .mob Hulking Plaguebear
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .turnin 26999 >>Turn in A New Era for the Plaguelands
    .accept 26935 >>Accept Northridge Lumber Mill
    .target Field Agent Kaartish
step
    .goto 22,48.87,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adrine Towhide|r
    .turnin 26953 >>Turn in Zen'Kiki, the Druid
    .accept 26954 >>Accept A Different Approach
    .target Adrine Towhide
step
    .goto 22,48.53,54.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selyria Groenveld|r
    .turnin 26956 >>Turn in I Ain't Sayin' You a Gourd-Digger...
    .target Selyria Groenveld
step
    .goto 22,54.28,53.84
    >>Kill |cRXP_ENEMY_Diseased Hawks|r
    .complete 26954,1 --Diseased Hawk slain (7)
    .mob Diseased Hawk
step
    .goto 22,48.87,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adrine Towhide|r
    .turnin 26954 >>Turn in A Different Approach
    .target Adrine Towhide
step
    .goto 22,48.13,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 26935 >>Turn in Northridge Lumber Mill
    .accept 27000 >>Accept Learning the Ropes
    .target Nathaniel Dumah
step
    .goto 22,48.42,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelly Dumah|r
    .accept 27013 >>Accept Too Close for Comfort
    .target Kelly Dumah
step
    #completewith Along53
    >>As you go: Kill |cRXP_ENEMY_Rabid Foxes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27013,1 --Rabid Fox slain (12)
    .mob Rabid Fox
step
    #label Along53
    #loop
    .goto 22,49.07,36.26,0
    .goto 22,49.07,36.26,40,0
    .goto 22,45.68,36.18,40,0
    >>Interact with |cRXP_FRIENDLY_Northridge Spiders|r
    .complete 27000,1 --Northridge Spider (25)
    .target Northridge Spider
step
    #loop
    .goto 22,50.57,34.57,0
    .goto 22,50.57,34.57,40,0
    .goto 22,48.46,29.40,40,0
    .goto 22,51.01,27.23,40,0
    >>Kill |cRXP_ENEMY_Rabid Foxes|r
    .complete 27013,1 --Rabid Fox slain (12)
    .mob Rabid Fox
step
    .goto 22,48.42,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelly Dumah|r
    .turnin 27013 >>Turn in Too Close for Comfort while you are here
    .isQuestComplete 27013
    .target Kelly Dumah
step
    .goto 22,48.13,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 27000 >>Turn in Learning the Ropes
    .accept 27001 >>Accept This Means WAR (Wild Arachnid Roundup)
    .target Nathaniel Dumah
step
    .goto 22,48.42,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelly Dumah|r
    .turnin 27013 >>Turn in Too Close for Comfort
    .accept 27011 >>Accept Redpine Thievery
    .accept 27012 >>Accept A Gnoll's Resolve
    .target Kelly Dumah
step
    #completewith Along58
    >>As you go: Kill |cRXP_ENEMY_Redpine Gnolls|r. Loot them for |cRXP_LOOT_Redpine Club|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27012,1 --Redpine Club (6)
    .mob Redpine Gnoll
step
    #loop
    .goto 22,49.07,36.26,0
    .goto 22,49.07,36.26,40,0
    .goto 22,45.68,36.18,40,0
    >>Interact with |cRXP_FRIENDLY_Northridge Spiders|r
    .complete 27001,1 --Northridge Spider (10)
    .target Northridge Spider
step
    #completewith Along59
    >>As you go: Kill |cRXP_ENEMY_Redpine Shamans|r. Loot them for |cRXP_LOOT_Redpine Stave|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27012,2 --Redpine Stave (6)
    .mob Redpine Shaman
step
    #label Along58
    #loop
    .goto 22,51.17,43.21,0
    .goto 22,51.17,43.21,40,0
    .goto 22,52.92,43.84,40,0
    >>Pick up |cRXP_PICK_Northridge Lumber|r from the ground
    .complete 27011,1 --Northridge Lumber (1)
step
    #label Along59
    #loop
    .goto 22,48.03,41.78,0
    .goto 22,48.03,41.78,40,0
    .goto 22,46.85,40.32,40,0
    >>Kill |cRXP_ENEMY_Redpine Gnolls|r. Loot them for |cRXP_LOOT_Redpine Club|r
    .complete 27012,1 --Redpine Club (6)
    .mob Redpine Gnoll
step
    #loop
    .goto 22,50.67,43.18,0
    .goto 22,50.67,43.18,40,0
    .goto 22,53.32,43.95,40,0
    >>Kill |cRXP_ENEMY_Redpine Shamans|r. Loot them for |cRXP_LOOT_Redpine Stave|r
    .complete 27012,2 --Redpine Stave (6)
    .mob Redpine Shaman
step
    .goto 22,48.13,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 27001 >>Turn in This Means WAR (Wild Arachnid Roundup)
    .accept 27002 >>Accept An Audience with the Highlord
    .target Nathaniel Dumah
step
    .goto 22,48.42,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelly Dumah|r
    .turnin 27011 >>Turn in Redpine Thievery
    .turnin 27012 >>Turn in A Gnoll's Resolve
    .target Kelly Dumah
step
    .goto 22,44.66,18.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Henderson|r
    .fp >>Get the Hearthglen Flight Path
    .target William Henderson
step
    .goto 22,42.65,14.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Del Gahrron|r
    .accept 26957 >>Accept The Long Trip Home
    .target Del Gahrron
step
    .goto 22,41.92,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 27002 >>Turn in An Audience with the Highlord
    .target Highlord Tirion Fordring
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .accept 27151 >>Accept Taelan Fordring's Legacy
    .target Daria L'Rayne
step
    .goto 22,43.21,15.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Myner|r
    .accept 27156 >>Accept It's About Time!
    .target Lieutenant Myner
step
    .goto 22,43.18,16.29
    >>Kill |cRXP_ENEMY_Hearthglen Trainees|r
    .complete 27156,1 --Hearthglen Trainee slain (7)
    .mob Hearthglen Trainee
step
    .goto 22,43.21,15.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Myner|r
    .turnin 27156 >>Turn in It's About Time!
    .accept 27157 >>Accept Drudges... <Sigh>
    .target Lieutenant Myner
step
    .goto 22,45.72,9.38
    >>Kill |cRXP_ENEMY_Shadril|r
    .complete 27157,1 --Shadril slain (1)
    .mob Shadril
step
    #loop
    .goto 22,52.97,22.45,0
    .goto 22,52.97,22.45,40,0
    .goto 22,55.09,23.61,40,0
    >>Kill |cRXP_ENEMY_Redpine Looters|r
    .complete 27151,1 --Redpine Looter slain (10)
    .mob Redpine Looter
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .turnin 27151 >>Turn in Taelan Fordring's Legacy
    .accept 27152 >>Accept Unusual Behavior... Even For Gnolls
    .target Daria L'Rayne
step
    .goto 22,43.21,15.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Myner|r
    .turnin 27157 >>Turn in Drudges... <Sigh> while you are here
    .isQuestComplete 27157
    .target Lieutenant Myner
step
    .goto 22,57.67,36.09
    >>Kill |cRXP_ENEMY_Moldfang|r
    .complete 27152,1 --Moldfang slain (1)
    .mob Moldfang
step
    .goto 22,57.50,35.60
    >>Gnoll camp investigated
    .complete 27152,2 --Gnoll camp investigated
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .turnin 27152 >>Turn in Unusual Behavior... Even For Gnolls
    .accept 27153 >>Accept The Good People of Hearthglen
    .target Daria L'Rayne
step
    .goto 22,42.13,18.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Cleric Alphus|r
    .complete 27153,4 --High Cleric Alphus
    .target High Cleric Alphus
step
    .goto 22,43.72,17.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bree Ironstock|r
    .complete 27153,3 --Bree Ironstock
    .target Bree Ironstock
step
    .goto 22,44.81,12.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outfitter Mendelev|r
    .complete 27153,2 --Outfitter Mendelev
    .target Outfitter Mendelev
step
    .goto 22,44.38,13.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morris Vant|r
    .complete 27153,1 --Morris Vant
    .target Morris Vant
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .turnin 27153 >>Turn in The Good People of Hearthglen
    .accept 27154 >>Accept Bagging Bisp
    .target Daria L'Rayne
step
    .goto 22,45.84,18.35
    >>Kill |cRXP_ENEMY_Magus Bisp|r
    .complete 27154,1 --Magus Bisp slain (1)
    .mob Magus Bisp
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .turnin 27154 >>Turn in Bagging Bisp
    .accept 27155 >>Accept Turning Yourself In
    .target Daria L'Rayne
step
    .goto 22,43.21,15.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Myner|r
    .turnin 27157 >>Turn in Drudges... <Sigh>
    .target Lieutenant Myner
step
    .goto 22,41.92,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Tirion Fordring|r
    .turnin 27155 >>Turn in Turning Yourself In
    .target Highlord Tirion Fordring
step
    .xp 38 >>Grind to level 38
step
    #completewith next
    .hs >>Hearth to Chad Fillmore's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 22,50.65,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Del Gahrron|r
    .turnin 26957 >>Turn in The Long Trip Home
    .accept 27017 >>Accept Memories from a Lost Past
    .target Del Gahrron
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .accept 27053 >>Accept Gahrron's Withering Cauldron
    .target Field Agent Kaartish
step
    .goto 22,62.18,59.06
    >>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r and loot |cRXP_LOOT_Gahrron's Withering Cauldron Key|r
    .complete 27053,1 --Gahrron's Withering Cauldron Key (1)
    .mob Cauldron Lord Soulwrath
step
    .goto 22,62.54,58.47
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .turnin 27053 >>Turn in Gahrron's Withering Cauldron
    .accept 27057 >>Accept Return to the Stead
step
    .goto 22,64.91,59.48
    >>Open the |cRXP_PICK_Child's Painting|r. Loot it for |cRXP_LOOT_Faded Finger Painting|r
    >>Open the |cRXP_PICK_Prayer Book|r. Loot it for |cRXP_LOOT_Gahrron Prayer Book|r
    .complete 27017,2 --Faded Finger Painting (1)
    .complete 27017,1 --Gahrron Prayer Book (1)
step
    .goto 22,50.65,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Del Gahrron|r
    .turnin 27017 >>Turn in Memories from a Lost Past
    .target Del Gahrron
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .turnin 27057 >>Turn in Return to the Stead
    .accept 27054 >>Accept Desperate Acts
    .target Field Agent Kaartish
step
    .goto 22,48.87,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adrine Towhide|r
    .accept 26955 >>Accept Zen'Kiki and the Cultists
    .target Adrine Towhide
step
    .goto 22,66.05,47.70
    >>Kill |cRXP_ENEMY_Instructor Malicia|r and loot |cRXP_LOOT_Cult Orders|r
    .complete 27054,1 --Cult Orders (1)
    .mob Instructor Malicia
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .turnin 27054 >>Turn in Desperate Acts
    .target Field Agent Kaartish
step
    .goto 22,63.64,33.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krastinovian Disciple|r
    .accept 27055 >>Accept Students of Krastinov
    .target Krastinovian Disciple
step
    #loop
    .goto 22,64.98,47.89,0
    .goto 22,64.98,47.89,40,0
    .goto 22,67.58,46.85,40,0
    >>Bring Zen'Kiki to the Malicia Outpost in Western Plaguelands, then break 4 Captive Plaguebears out of their cages and allow Zen'Kiki to heal them.
    .complete 26955,1 --Captive Plaguebear (4)
    .target Captive Plaguebear
step
    #loop
    .goto 22,66.22,40.94,0
    .goto 22,66.22,40.94,40,0
    .goto 22,63.68,34.23,40,0
    .goto 22,61.82,35.40,40,0
    >>Kill |cRXP_ENEMY_Krastinovian Disciples|r
    >>Kill |cRXP_ENEMY_Flesh-Cobbled Brutes|r
    >>Kill |cRXP_ENEMY_Flesh-Cobbled Rippers|r
    >>Kill |cRXP_ENEMY_Unholy Corpuscles|r
    .complete 27055,1 --Krastinovian Disciple slain (2)
    .complete 27055,2 --Flesh-Cobbled Brute slain (2)
    .complete 27055,3 --Flesh-Cobbled Ripper slain (2)
    .complete 27055,4 --Unholy Corpuscle slain (4)
    .mob Krastinovian Disciple
    .mob Flesh-Cobbled Brute
    .mob Flesh-Cobbled Ripper
    .mob Unholy Corpuscle
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .turnin 27055 >>Turn in Students of Krastinov
    .target Field Agent Kaartish
step
    .goto 22,48.87,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adrine Towhide|r
    .turnin 26955 >>Turn in Zen'Kiki and the Cultists
    .target Adrine Towhide
step
    .xp 40 >>Grind to level 40
step
    +|cRXP_WARN_That is all of Western Plaguelands for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Warchief's Command: Arathi Highlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Warchief's Command: Ghostlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Warchief's Command: Northern Stranglethorn Vale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Orgrimmar|r: An Audience with Ureda << Orc Mage/Undead Mage/Tauren Mage/Troll Mage/BloodElf Mage/Goblin Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Orgrimmar|r: Grimshot's Call << Orc Hunter/Undead Hunter/Tauren Hunter/Troll Hunter/BloodElf Hunter/Goblin Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Orgrimmar|r: The Shattered Hand << Orc Rogue/Undead Rogue/Tauren Rogue/Troll Rogue/BloodElf Rogue/Goblin Rogue/Pandaren Rogue
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
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: Warchief's Command: The Cape of Stranglethorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Hinterlands|r: Warchief's Command: The Hinterlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Tirisfal Glades|r: Victory, For Now << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 38|r: |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.0 levels of quests, starting around Tabetha), |cRXP_FRIENDLY_Desolace|r (about 0.9 levels of quests, starting around Cenarion Researcher Korrah). Completing this step loads the guide for Dustwallow Marsh --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Western Plaguelands is planned from level 41.|r Load its guide for level 41 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 35 - 42 Western Plaguelands
#subweight -35
#name 41-42 Western Plaguelands
--RouteBuilder:next
#next Zone Routes (Horde)\40-42 Eastern Plaguelands: around Chromie;Zone Routes (Horde)\37-40 Dustwallow Marsh: around Tabetha

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,49.25,53.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damion Steel|r
    .accept 27083 >>Accept The Battle Resumes!
    .target Damion Steel
    .isQuestTurnedIn 26938 --any of: Combat Training
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 27083 >>Turn in The Battle Resumes!
    .target Koltira Deathweaver
    .isOnQuest 27083
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .accept 27084 >>Accept The Farmers' Militia
    .accept 27086 >>Accept Ashes to Ashes
    .target Koltira Deathweaver
    .isQuestTurnedIn 27083 --any of: The Battle Resumes!
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.31,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jearl Donald|r
    .accept 27085 >>Accept Supporting the Troops
    .target Jearl Donald
    .isQuestTurnedIn 27083 --any of: The Battle Resumes!
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,48.32,66.39
    >>Kill |cRXP_ENEMY_Ebon Gargoyles|r
    .complete 27084,1 --Ebon Gargoyle slain (8)
    .mob Ebon Gargoyle
    .isOnQuest 27084
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,42.08,67.91,0
    .goto 22,42.08,67.91,40,0
    .goto 22,42.36,71.40,40,0
    >>Kill |cRXP_ENEMY_Andorhal Force-Commanders|r
    .complete 27086,1 --Andorhal Force-Commander slain (3)
    .mob Andorhal Force-Commander
    .isOnQuest 27086
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,41.07,69.41,0
    .goto 22,41.07,69.41,40,0
    .goto 22,44.07,67.97,40,0
    .goto 22,44.71,71.03,40,0
    >>Kill |cRXP_ENEMY_Andorhal Defenders|r
    .complete 27085,1 --Andorhal Defender slain (15)
    .mob Andorhal Defender
    .isOnQuest 27085
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.31,64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jearl Donald|r
    .turnin 27085 >>Turn in Supporting the Troops
    .target Jearl Donald
    .isOnQuest 27085
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 27084 >>Turn in The Farmers' Militia
    .target Koltira Deathweaver
    .isOnQuest 27084
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .turnin 27086 >>Turn in Ashes to Ashes
    .target Koltira Deathweaver
    .isOnQuest 27086
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,47.77,65.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koltira Deathweaver|r
    .accept 27087 >>Accept Lindsay Ravensun, Revealed
    .target Koltira Deathweaver
    .isQuestTurnedIn 27084 --The Farmers' Militia
    .isQuestTurnedIn 27085 --Supporting the Troops
    .isQuestTurnedIn 27086 --Ashes to Ashes
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,49.04,63.71,0
    .goto 22,49.04,63.71,40,0
    .goto 22,47.58,65.56,40,0
    .goto 22,40.69,52.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay Ravensun|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27087 >>Turn in Lindsay Ravensun, Revealed
    .unitscan Lindsay Ravensun
    .isOnQuest 27087
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,49.04,63.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27089 >>Accept Ace in the Hole
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27087 --any of: Lindsay Ravensun, Revealed
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 22,48.80,67.46,0
    .goto 22,48.80,67.46,40,0
    .goto 22,47.46,69.08,40,0
    >>Kill |cRXP_ENEMY_Frightened Provincial Minutemans|r
    .complete 27089,1 --Frightened Provincial Minuteman slain (8)
    .mob Frightened Provincial Minuteman
    .isOnQuest 27089
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,49.04,63.72
    >>With the Enthralled Val'kyr by your side, kill 5 Frightened Provincial Minutemen, then use your Call to Arms ability to turn them into Forsaken Troopers. Then find Thassarian in western Andorhal.
    .complete 27089,2 --Andorhal Charm Credit (1)
    .isOnQuest 27089
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .complete 27089,3 --Thassarian
    .target Thassarian
    .isOnQuest 27089
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,39.38,70.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurid|r
    .turnin 27089 >>Turn in Ace in the Hole
    .target Lurid
    .isOnQuest 27089
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,39.38,70.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurid|r
    .accept 27090 >>Accept Andorhal, Once and For All
    .target Lurid
    .isQuestTurnedIn 27089 --any of: Ace in the Hole
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,49.04,63.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27090 >>Turn in Andorhal, Once and For All
    .target Lady Sylvanas Windrunner
    .isOnQuest 27090
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,49.04,63.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .accept 27144 >>Accept The Reckoning
    .target Lady Sylvanas Windrunner
    .isQuestTurnedIn 27090 --any of: Andorhal, Once and For All
    .xp <38,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,49.04,63.72
    >>Stand by as Lady Sylvanas Windrunner speaks with Koltira Deathweaver.
    .complete 27144,1 --Lady Sylvanas Windrunner (1)
    .isOnQuest 27144
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 22,49.04,63.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Sylvanas Windrunner|r
    .turnin 27144 >>Turn in The Reckoning
    .target Lady Sylvanas Windrunner
    .isOnQuest 27144
step
    .goto 22,42.97,83.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .accept 27683 >>Accept Into the Woods
    .target Argent Officer Pureheart
step
    +|cRXP_WARN_End of the Western Plaguelands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Eastern Plaguelands|r: Into the Woods
step
    +|cRXP_WARN_Suggested next zones at level 41|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 2.6 levels of quests, starting around Chromie; 1 quest from here hands in there), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.6 levels of quests, starting around Tabetha). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
]])
