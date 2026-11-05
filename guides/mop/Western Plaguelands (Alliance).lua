-- 35-40 Western Plaguelands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 2 guides, listed under "35 - 40 Western Plaguelands" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Western Plaguelands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 40 Western Plaguelands
#subweight -35
#name 35-37 Western Plaguelands: around Field Agent Kaartish
#next Zone Routes (Alliance)\37-40 Western Plaguelands: around Daria L'Rayne

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 28576 >>Turn in Hero's Call: Western Plaguelands!
    .target Thassarian
    .isOnQuest 28576
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 28505 >>Turn in The Battle for Andorhal
    .target Thassarian
    .isOnQuest 28505
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 28749 >>Turn in The Battle for Andorhal
    .target Thassarian
    .isOnQuest 28749
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .accept 27159 >>Accept Scourge First... Horde Later
    .target Thassarian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along5
    >>As you go: Kill |cRXP_ENEMY_Desiccated Magus|r, |cRXP_ENEMY_Desiccated Spearmans|r and |cRXP_ENEMY_Desiccated Scourges|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27159,1 --Desiccated Magus (8)
    .mob Desiccated Magus
    .mob Desiccated Spearman
    .mob Desiccated Scourge
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.01,70.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurid|r
    .accept 27160 >>Accept War Machines
    .target Lurid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along5
    .goto 22,41.26,70.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lang Loosegrip|r
    .accept 27161 >>Accept The Endless Flow
    .target Lang Loosegrip
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,42.48,69.47,0
    .goto 22,42.48,69.47,40,0
    .goto 22,42.73,65.75,40,0
    .goto 22,44.72,71.24,40,0
    >>Kill |cRXP_ENEMY_Opengut Behemoths|r
    >>Kill |cRXP_ENEMY_Stickbone Berserkers|r
    >>Click the |cRXP_PICK_Scourge Bone Animus|r
    >>Kill |cRXP_ENEMY_Desiccated Magus|r, |cRXP_ENEMY_Desiccated Spearmans|r and |cRXP_ENEMY_Desiccated Scourges|r
    .complete 27160,1 --Opengut Behemoth slain (6)
    .complete 27161,1 --Stickbone Berserker slain (5)
    .complete 27161,2 --Scourge Bone Animus
    .complete 27159,1 --Desiccated Magus (8)
    .mob Opengut Behemoth
    .mob Stickbone Berserker
    .mob Desiccated Magus
    .mob Desiccated Spearman
    .mob Desiccated Scourge
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.26,70.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lang Loosegrip|r
    .turnin 27161 >>Turn in The Endless Flow
    .accept 27164 >>Accept Araj the Summoner
    .target Lang Loosegrip
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.01,70.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurid|r
    .turnin 27160 >>Turn in War Machines
    .target Lurid
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 27159 >>Turn in Scourge First... Horde Later
    .accept 27162 >>Accept Scholomancer
    .accept 27163 >>Accept Brute Strength
    .target Thassarian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,42.70,84.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .accept 27158 >>Accept The Battle for Andorhal
    .target Commander Ashlam Valorfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,45.29,72.87,0
    .goto 22,45.29,72.87,40,0
    .goto 22,43.53,68.83,40,0
    >>Kill |cRXP_ENEMY_Darkmaster Gandling|r
    >>Open the |cRXP_PICK_Araj's Phylactery|r. Loot it for |cRXP_LOOT_Araj's Phylactery Shard|r
    >>Kill |cRXP_ENEMY_Rattlegore|r
    .complete 27162,1 --Darkmaster Gandling slain (1)
    .complete 27164,1 --Araj's Phylactery Shard (1)
    .complete 27163,1 --Rattlegore slain (1)
    .mob Darkmaster Gandling
    .mob Rattlegore
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 27162 >>Turn in Scholomancer
    .turnin 27158 >>Turn in The Battle for Andorhal
    .turnin 27163 >>Turn in Brute Strength
    .turnin 27164 >>Turn in Araj the Summoner
    .accept 27165 >>Accept Victory, For Now
    .target Thassarian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,42.70,84.11,0
    .goto 22,42.70,84.11,40,0
    .goto 22,39.83,69.74,40,0
    .goto 22,53.85,64.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Grant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27167 >>Accept A Mighty Hunger
    .unitscan Thurman Grant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,42.70,84.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 27165 >>Turn in Victory, For Now
    .accept 27166 >>Accept Go Fletch!
    .target Commander Ashlam Valorfist
step
    .goto 22,47.63,61.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joseph Henderson|r
    .target Joseph Henderson
    .home >>Set your Hearthstone to Joseph Henderson's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,37.35,81.01,0
    .goto 22,37.35,81.01,40,0
    .goto 22,35.54,78.56,40,0
    .goto 22,31.83,72.75,40,0
    .goto 22,34.01,77.15,40,0
    >>Pick up |cRXP_PICK_Brownfeather Quill|r from the ground
    >>Kill |cRXP_ENEMY_Shaggy Black Bear|r and loot |cRXP_LOOT_Side of Bear Meat|r
    .complete 27166,1 --Brownfeather Quill (9)
    .complete 27167,1 --Side of Bear Meat (1)
    .mob Shaggy Black Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,42.70,84.11,0
    .goto 22,42.70,84.11,40,0
    .goto 22,39.83,69.74,40,0
    .goto 22,53.85,64.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Grant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27167 >>Turn in A Mighty Hunger
    .unitscan Thurman Grant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,42.70,84.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 27166 >>Turn in Go Fletch!
    .accept 27169 >>Accept Uther's Blessing
    .target Commander Ashlam Valorfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,43.40,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .accept 27168 >>Accept Those That Couldn't Let Go
    .target High Priestess MacDonnell
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,52.14,83.57
    >>Click the |cRXP_PICK_Uther's Tomb Statue|r
    .complete 27169,1 --Uther's Tomb Statue
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,52.02,82.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priest Thel'danis|r
    .turnin 27169 >>Turn in Uther's Blessing
    .accept 27170 >>Accept The Abandoned Crypt
    .target High Priest Thel'danis
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,48.43,82.23,0
    .goto 22,48.43,82.23,40,0
    .goto 22,48.24,80.73,40,0
    .goto 22,50.22,80.60,40,0
    .goto 22,50.93,80.62,40,0
    .goto 22,50.61,79.30,40,0
    .goto 22,50.21,77.81,40,0
    .goto 22,50.23,75.43,40,0
    .goto 22,50.93,75.76,40,0
    >>Interact with |cRXP_FRIENDLY_Withdrawn Soul|r
    .complete 27168,1 --Withdrawn Soul
    .target Withdrawn Soul
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,53.76,80.43
    >>Click the |cRXP_PICK_Broken Weapons Crate|r
    .turnin 27170 >>Turn in The Abandoned Crypt
    .accept 27171 >>Accept Ambushed!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,54.02,79.92
    >>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Skeletal Sorcerers|r. Loot them for |cRXP_LOOT_Time-Worn Breastplate|r
    >>Kill |cRXP_ENEMY_Skeletal Flayers|r and |cRXP_ENEMY_Skeletal Sorcerers|r. Loot them for |cRXP_LOOT_Rusted Sword|r
    .complete 27171,1 --Time-Worn Breastplate (4)
    .complete 27171,2 --Rusted Sword (4)
    .mob Skeletal Flayer
    .mob Skeletal Sorcerer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,43.40,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess MacDonnell|r
    .turnin 27168 >>Turn in Those That Couldn't Let Go
    .target High Priestess MacDonnell
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,42.70,84.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 27171 >>Turn in Ambushed!
    .accept 27172 >>Accept The Writhing Haunt
    .target Commander Ashlam Valorfist
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,42.97,83.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .accept 27175 >>Accept The Menders' Stead
    .target Argent Officer Pureheart
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .turnin 27175 >>Turn in The Menders' Stead << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
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
    .fp Menders' Stead>>Get the The Menders' Stead Flight Path
    .target Marge Heffman
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
    #completewith Along33
    >>As you go: Kill |cRXP_ENEMY_Diseased Wolfs|r, |cRXP_ENEMY_Venom Mist Lurkers|r, |cRXP_ENEMY_Plague Lurkers|r and |cRXP_ENEMY_Hulking Plaguebears|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26953,1 --Diseased Wolf (8)
    .mob Diseased Wolf
    .mob Venom Mist Lurker
    .mob Plague Lurker
    .mob Hulking Plaguebear
step
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Diseased Wolfs|r. Loot them for |cRXP_LOOT_Diseased Wolf Sample|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26999,4 --Diseased Wolf Sample (4)
    .mob Diseased Wolf
step
    #label Along32
    #loop
    .goto 22,51.58,48.45,0
    .goto 22,51.58,48.45,40,0
    .goto 22,55.28,52.97,40,0
    .goto 22,56.95,51.87,40,0
    >>Kill |cRXP_ENEMY_Hulking Plaguebears|r. Loot them for |cRXP_LOOT_Hulking Plaguebear Sample|r
    .complete 26999,3 --Hulking Plaguebear Sample (4)
    .mob Hulking Plaguebear
step
    #label Along33
    #loop
    .goto 22,46.73,47.08,0
    .goto 22,46.73,47.08,40,0
    .goto 22,42.89,48.42,40,0
    .goto 22,41.19,48.85,40,0
    >>Kill |cRXP_ENEMY_Diseased Wolfs|r. Loot them for |cRXP_LOOT_Diseased Wolf Sample|r
    .complete 26999,4 --Diseased Wolf Sample (4)
    .mob Diseased Wolf
step
    #loop
    .goto 22,49.41,59.33,0
    .goto 22,49.41,59.33,40,0
    .goto 22,53.95,60.11,40,0
    .goto 22,59.44,59.33,40,0
    .goto 22,58.23,63.50,40,0
    >>Kill |cRXP_ENEMY_Plague Lurkers|r. Loot them for |cRXP_LOOT_Plague Lurker Sample|r
    >>Kill |cRXP_ENEMY_Venom Mist Lurkers|r. Loot them for |cRXP_LOOT_Venom Mist Lurker Sample|r
    >>Kill |cRXP_ENEMY_Diseased Wolfs|r, |cRXP_ENEMY_Venom Mist Lurkers|r, |cRXP_ENEMY_Plague Lurkers|r and |cRXP_ENEMY_Hulking Plaguebears|r
    .complete 26999,1 --Plague Lurker Sample (4)
    .complete 26999,2 --Venom Mist Lurker Sample (4)
    .complete 26953,1 --Diseased Wolf (8)
    .mob Plague Lurker
    .mob Venom Mist Lurker
    .mob Diseased Wolf
    .mob Hulking Plaguebear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,53.85,64.68,0
    .goto 22,53.85,64.68,40,0
    .goto 22,39.83,69.74,40,0
    .goto 22,42.70,84.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Grant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27172 >>Turn in The Writhing Haunt
    .accept 27173 >>Accept This Is Our Army
    .unitscan Thurman Grant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,53.62,66.29,0
    .goto 22,53.62,66.29,40,0
    .goto 22,52.62,66.81,40,0
    >>Kill |cRXP_ENEMY_Forsaken Outriders|r
    .complete 27173,1 --Forsaken Outrider slain (10)
    .mob Forsaken Outrider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,53.85,64.68,0
    .goto 22,53.85,64.68,40,0
    .goto 22,39.83,69.74,40,0
    .goto 22,42.70,84.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Grant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27173 >>Turn in This Is Our Army
    .accept 27174 >>Accept Combat Training
    .unitscan Thurman Grant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,54.07,65.78
    >>Kill |cRXP_ENEMY_Gory|r
    .complete 27174,1 --Gory slain (1)
    .mob Gory
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,53.85,64.68,0
    .goto 22,53.85,64.68,40,0
    .goto 22,39.83,69.74,40,0
    .goto 22,42.70,84.11,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Grant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27174 >>Turn in Combat Training
    .unitscan Thurman Grant
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
    #completewith Along47
    >>As you go: Kill |cRXP_ENEMY_Rabid Foxes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27013,1 --Rabid Fox slain (12)
    .mob Rabid Fox
step
    #label Along47
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
    #completewith Along51
    >>As you go: Kill |cRXP_ENEMY_Redpine Gnolls|r. Loot them for |cRXP_LOOT_Redpine Club|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27012,1 --Redpine Club (6)
    .mob Redpine Gnoll
step
    #label Along51
    #loop
    .goto 22,49.07,36.26,0
    .goto 22,49.07,36.26,40,0
    .goto 22,45.68,36.18,40,0
    >>Interact with |cRXP_FRIENDLY_Northridge Spiders|r
    .complete 27001,1 --Northridge Spider (10)
    .target Northridge Spider
step
    #loop
    .goto 22,48.03,41.78,0
    .goto 22,48.03,41.78,40,0
    .goto 22,50.93,43.55,40,0
    .goto 22,53.32,43.95,40,0
    >>Pick up |cRXP_PICK_Northridge Lumber|r from the ground
    >>Kill |cRXP_ENEMY_Redpine Gnolls|r. Loot them for |cRXP_LOOT_Redpine Club|r
    >>Kill |cRXP_ENEMY_Redpine Shamans|r. Loot them for |cRXP_LOOT_Redpine Stave|r
    .complete 27011,1 --Northridge Lumber (1)
    .complete 27012,1 --Redpine Club (6)
    .complete 27012,2 --Redpine Stave (6)
    .mob Redpine Gnoll
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
    .fp Hearthglen>>Get the Hearthglen Flight Path
    .target William Henderson
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 35 - 40 Western Plaguelands
#subweight -35
#name 37-40 Western Plaguelands: around Daria L'Rayne
--RouteBuilder:next
#next Zone Routes (Alliance)\40-42 Eastern Plaguelands: around Chromie;Zone Routes (Alliance)\38-41 Dustwallow Marsh: around Tabetha;Zone Routes (Alliance)\33-36 Desolace: around Karnum Marshweaver

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
    .isOnQuest 27002
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .accept 27151 >>Accept Taelan Fordring's Legacy
    .target Daria L'Rayne
    .isQuestTurnedIn 27002 --any of: An Audience with the Highlord
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
    .isOnQuest 27151
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .turnin 27151 >>Turn in Taelan Fordring's Legacy
    .target Daria L'Rayne
    .isOnQuest 27151
step
    .goto 22,43.21,15.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Myner|r
    .turnin 27157 >>Turn in Drudges... <Sigh> while you are here
    .isQuestComplete 27157
    .target Lieutenant Myner
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .accept 27152 >>Accept Unusual Behavior... Even For Gnolls
    .target Daria L'Rayne
    .isQuestTurnedIn 27151 --any of: Taelan Fordring's Legacy
step
    .goto 22,57.67,36.09
    >>Kill |cRXP_ENEMY_Moldfang|r
    .complete 27152,1 --Moldfang slain (1)
    .mob Moldfang
    .isOnQuest 27152
step
    .goto 22,57.50,35.60
    >>Gnoll camp investigated
    .complete 27152,2 --Gnoll camp investigated
    .isOnQuest 27152
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .turnin 27152 >>Turn in Unusual Behavior... Even For Gnolls
    .target Daria L'Rayne
    .isOnQuest 27152
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .accept 27153 >>Accept The Good People of Hearthglen
    .target Daria L'Rayne
    .isQuestTurnedIn 27152 --any of: Unusual Behavior... Even For Gnolls
step
    .goto 22,42.13,18.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Cleric Alphus|r
    .complete 27153,4 --High Cleric Alphus
    .target High Cleric Alphus
    .isOnQuest 27153
step
    .goto 22,43.72,17.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bree Ironstock|r
    .complete 27153,3 --Bree Ironstock
    .target Bree Ironstock
    .isOnQuest 27153
step
    .goto 22,44.81,12.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outfitter Mendelev|r
    .complete 27153,2 --Outfitter Mendelev
    .target Outfitter Mendelev
    .isOnQuest 27153
step
    .goto 22,44.38,13.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morris Vant|r
    .complete 27153,1 --Morris Vant
    .target Morris Vant
    .isOnQuest 27153
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .turnin 27153 >>Turn in The Good People of Hearthglen
    .target Daria L'Rayne
    .isOnQuest 27153
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .accept 27154 >>Accept Bagging Bisp
    .target Daria L'Rayne
    .isQuestTurnedIn 27153 --any of: The Good People of Hearthglen
step
    .goto 22,45.84,18.35
    >>Kill |cRXP_ENEMY_Magus Bisp|r
    .complete 27154,1 --Magus Bisp slain (1)
    .mob Magus Bisp
    .isOnQuest 27154
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .turnin 27154 >>Turn in Bagging Bisp
    .target Daria L'Rayne
    .isOnQuest 27154
step
    .goto 22,42.49,15.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria L'Rayne|r
    .accept 27155 >>Accept Turning Yourself In
    .target Daria L'Rayne
    .isQuestTurnedIn 27154 --any of: Bagging Bisp
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
    .isOnQuest 27155
step
    .goto 22,50.65,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Del Gahrron|r
    .turnin 26957 >>Turn in The Long Trip Home
    .accept 27017 >>Accept Memories from a Lost Past
    .target Del Gahrron
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,50.46,52.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnt Brightfalcon|r
    .accept 27197 >>Accept The Battle Resumes!
    .target Durnt Brightfalcon
    .isQuestTurnedIn 27174 --any of: Combat Training
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .accept 27053 >>Accept Gahrron's Withering Cauldron
    .target Field Agent Kaartish
    .isQuestTurnedIn 27002 --any of: An Audience with the Highlord
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 27197 >>Turn in The Battle Resumes!
    .target Thassarian
    .isOnQuest 27197
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .accept 27199 >>Accept Ashes to Ashes
    .target Thassarian
    .isQuestTurnedIn 27197 --any of: The Battle Resumes!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.26,70.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lang Loosegrip|r
    .accept 27198 >>Accept Supporting the Troops
    .target Lang Loosegrip
    .isQuestTurnedIn 27197 --any of: The Battle Resumes!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,45.92,69.85,0
    .goto 22,45.92,69.85,40,0
    .goto 22,46.36,67.07,40,0
    .goto 22,44.09,64.27,40,0
    >>Kill |cRXP_ENEMY_Deathguard War-Captains|r
    .complete 27199,1 --Deathguard War-Captain slain (3)
    .mob Deathguard War-Captain
    .isOnQuest 27199
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.92,65.51
    >>Kill |cRXP_ENEMY_Andorhal Deathguard|r
    .complete 27198,1 --Andorhal Deathguard slain (15)
    .mob Andorhal Deathguard
    .isOnQuest 27198
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.26,70.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lang Loosegrip|r
    .turnin 27198 >>Turn in Supporting the Troops
    .target Lang Loosegrip
    .isOnQuest 27198
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 27199 >>Turn in Ashes to Ashes
    .target Thassarian
    .isOnQuest 27199
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .accept 27205 >>Accept The Depravity of the Forsaken
    .target Thassarian
    .isQuestTurnedIn 27198 --Supporting the Troops
    .isQuestTurnedIn 27199 --Ashes to Ashes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 27205 >>Turn in The Depravity of the Forsaken
    .target Thassarian
    .isOnQuest 27205
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .accept 27201 >>Accept Val'kyr Incursion
    .target Thassarian
    .isQuestTurnedIn 27205 --any of: The Depravity of the Forsaken
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,42.70,84.11,0
    .goto 22,42.70,84.11,40,0
    .goto 22,39.83,69.74,40,0
    .goto 22,53.85,64.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Grant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27202 >>Accept Brother Against Brother
    .unitscan Thurman Grant
    .isQuestTurnedIn 27205 --any of: The Depravity of the Forsaken
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,42.32,72.76,0
    .goto 22,42.32,72.76,40,0
    .goto 22,43.78,67.56,40,0
    .goto 22,47.84,69.30,40,0
    >>Kill |cRXP_ENEMY_Lesser Val'kyrs|r
    .complete 27201,1 --Lesser Val'kyr slain (9)
    .mob Lesser Val'kyr
    .isOnQuest 27201
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,44.13,69.56,0
    .goto 22,44.13,69.56,40,0
    .goto 22,44.73,72.94,40,0
    >>Kill |cRXP_ENEMY_Forsaken Troopers|r
    .complete 27202,1 --Forsaken Trooper (20)
    .mob Forsaken Trooper
    .isOnQuest 27202
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 22,42.70,84.11,0
    .goto 22,42.70,84.11,40,0
    .goto 22,39.83,69.74,40,0
    .goto 22,53.85,64.68,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Grant|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27202 >>Turn in Brother Against Brother
    .unitscan Thurman Grant
    .isOnQuest 27202
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 27201 >>Turn in Val'kyr Incursion
    .target Thassarian
    .isOnQuest 27201
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .accept 27204 >>Accept Aradne
    .target Thassarian
    .isQuestTurnedIn 27201 --Val'kyr Incursion
    .isQuestTurnedIn 27202 --Brother Against Brother
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,40.40,72.20
    >>Kill |cRXP_ENEMY_Aradne|r
    .complete 27204,1 --Aradne slain (1)
    .mob Aradne
    .isOnQuest 27204
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 27204 >>Turn in Aradne
    .target Thassarian
    .isOnQuest 27204
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,41.06,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .accept 27206 >>Accept Alas, Andorhal
    .target Thassarian
    .isQuestTurnedIn 27204 --any of: Aradne
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 22,42.70,84.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Ashlam Valorfist|r
    .turnin 27206 >>Turn in Alas, Andorhal
    .target Commander Ashlam Valorfist
    .isOnQuest 27206
step
    .goto 22,42.97,83.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Pureheart|r
    .accept 27683 >>Accept Into the Woods
    .target Argent Officer Pureheart
step
    .goto 22,62.18,59.06
    >>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r and loot |cRXP_LOOT_Gahrron's Withering Cauldron Key|r
    .complete 27053,1 --Gahrron's Withering Cauldron Key (1)
    .mob Cauldron Lord Soulwrath
    .isOnQuest 27053
step
    .goto 22,62.54,58.47
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .turnin 27053 >>Turn in Gahrron's Withering Cauldron
    .isOnQuest 27053
step
    .goto 22,62.54,58.47
    >>Click the |cRXP_PICK_Scourge Cauldron|r
    .accept 27057 >>Accept Return to the Stead
    .isQuestTurnedIn 27053 --any of: Gahrron's Withering Cauldron
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
    .target Field Agent Kaartish
    .isOnQuest 27057
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .accept 27054 >>Accept Desperate Acts
    .target Field Agent Kaartish
    .isQuestTurnedIn 27057 --any of: Return to the Stead
step
    .goto 22,48.87,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adrine Towhide|r
    .accept 26955 >>Accept Zen'Kiki and the Cultists
    .target Adrine Towhide
    .isQuestTurnedIn 26954 --A Different Approach
    .isQuestTurnedIn 27057 --Return to the Stead
step
    .goto 22,66.05,47.70
    >>Kill |cRXP_ENEMY_Instructor Malicia|r and loot |cRXP_LOOT_Cult Orders|r
    .complete 27054,1 --Cult Orders (1)
    .mob Instructor Malicia
    .isOnQuest 27054
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .turnin 27054 >>Turn in Desperate Acts
    .target Field Agent Kaartish
    .isOnQuest 27054
step
    .goto 22,63.64,33.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krastinovian Disciple|r
    .accept 27055 >>Accept Students of Krastinov
    .target Krastinovian Disciple
    .isQuestTurnedIn 27054 --any of: Desperate Acts
step
    #loop
    .goto 22,64.98,47.89,0
    .goto 22,64.98,47.89,40,0
    .goto 22,67.58,46.85,40,0
    >>Bring Zen'Kiki to the Malicia Outpost in Western Plaguelands, then break 4 Captive Plaguebears out of their cages and allow Zen'Kiki to heal them.
    .complete 26955,1 --Captive Plaguebear (4)
    .target Captive Plaguebear
    .isOnQuest 26955
step
    .goto 22,63.68,34.23
    >>Kill |cRXP_ENEMY_Krastinovian Disciples|r
    .complete 27055,1 --Krastinovian Disciple slain (2)
    .mob Krastinovian Disciple
    .isOnQuest 27055
step
    #loop
    .goto 22,61.76,34.42,0
    .goto 22,61.76,34.42,40,0
    .goto 22,63.10,37.48,40,0
    >>Kill |cRXP_ENEMY_Flesh-Cobbled Brutes|r
    .complete 27055,2 --Flesh-Cobbled Brute slain (2)
    .mob Flesh-Cobbled Brute
    .isOnQuest 27055
step
    #loop
    .goto 22,64.72,35.58,0
    .goto 22,64.72,35.58,40,0
    .goto 22,62.06,32.93,40,0
    >>Kill |cRXP_ENEMY_Flesh-Cobbled Rippers|r
    .complete 27055,3 --Flesh-Cobbled Ripper slain (2)
    .mob Flesh-Cobbled Ripper
    .isOnQuest 27055
step
    #loop
    .goto 22,63.36,35.79,0
    .goto 22,63.36,35.79,40,0
    .goto 22,64.77,38.59,40,0
    .goto 22,66.22,40.94,40,0
    >>Kill |cRXP_ENEMY_Unholy Corpuscles|r
    .complete 27055,4 --Unholy Corpuscle slain (4)
    .mob Unholy Corpuscle
    .isOnQuest 27055
step
    .goto 22,49.27,54.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Field Agent Kaartish|r
    .turnin 27055 >>Turn in Students of Krastinov
    .target Field Agent Kaartish
    .isOnQuest 27055
step
    .goto 22,48.87,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adrine Towhide|r
    .turnin 26955 >>Turn in Zen'Kiki and the Cultists
    .target Adrine Towhide
    .isOnQuest 26955
step << !Mage
    .train 33391,1
    .goto 22,50.50,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marge Heffman|r
    .fly Ironforge >>Fly to Ironforge
    .target Marge Heffman
step << Mage
    .train 33391,1
step
    +|cRXP_WARN_End of the Western Plaguelands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Eastern Plaguelands|r: Into the Woods
step
    +|cRXP_WARN_Suggested next zones at level 39|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 2.8 levels of quests, starting around Chromie; 1 quest from here hands in there), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 0.9 levels of quests, starting around Tabetha), |cRXP_FRIENDLY_Desolace|r (about 0.5 levels of quests, starting around Karnum Marshweaver). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
]])
