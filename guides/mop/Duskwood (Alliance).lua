-- 21-25 Duskwood: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 21, 28).
-- Split into 3 guides, listed under "21 - 29 Duskwood" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Duskwood.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 21 - 29 Duskwood
#subweight -21
#name 21-23 Duskwood: around Tobias Mistmantle
#next Zone Routes (Alliance)\23-26 Duskwood: around Apprentice Fess

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,79.08,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .accept 26666 >>Accept The Legend of Stalvan
    .target Tobias Mistmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .accept 26653 >>Accept Supplies from Darkshire
    .target Abercrombie
step
    .goto 47,77.48,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia|r
    .fp Darkshire >>Get the Darkshire Flight Path
    .target Felicia Maline
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,75.81,45.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 26653 >>Turn in Supplies from Darkshire
    .accept 26652 >>Accept Ghost Hair Thread
    .target Madame Eva
step
    .goto 47,73.01,44.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avette Fellwood|r
    .target Avette Fellwood
    .home >>Set your Hearthstone to Avette Fellwood's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.89,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .accept 26620 >>Accept Seasoned Wolf Kabobs
    .accept 26623 >>Accept Dusky Crab Cakes
    .target Chef Grual
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,72.45,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 26666 >>Turn in The Legend of Stalvan
    .accept 26667 >>Accept The Stolen Letters
    .target Clerk Daltry
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.52,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 28564 >>Turn in Hero's Call: Duskwood!
    .target Commander Althea Ebonlocke
    .isOnQuest 28564
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.52,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 26728 >>Turn in Hero's Call: Duskwood!
    .target Commander Althea Ebonlocke
    .isOnQuest 26728
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.52,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 26618 >>Accept Wolves at Our Heels
    .target Commander Althea Ebonlocke
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,75.33,48.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 26688 >>Accept Worgen in the Woods
    .target Calor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,63.84,40.28,0
    .goto 47,63.84,40.28,40,0
    .goto 47,62.05,43.83,40,0
    .goto 47,60.86,41.61,40,0
    >>Open the |cRXP_PICK_Pile of Scraps|r. Loot it for |cRXP_LOOT_A Slashed Bundle of Letters|r
    >>Kill |cRXP_ENEMY_Nightbane Worgens|r
    .complete 26667,1 --A Slashed Bundle of Letters (1)
    .complete 26688,1 --Nightbane Worgen slain (7)
    .mob Nightbane Worgen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,62.81,25.58
    >>Kill |cRXP_ENEMY_Venom Web Spiders|r. Loot them for |cRXP_LOOT_Dusky Lump|r
    .complete 26623,1 --Dusky Lump (6)
    .mob Venom Web Spider
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Lupos|r and |cRXP_ENEMY_Dire Wolfs|r. Loot them for |cRXP_LOOT_Wolf Skirt Steak|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26620,1 --Wolf Skirt Steak (5)
    .mob Lupos
    .mob Dire Wolf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along12
    #loop
    .goto 47,43.48,18.04,0
    .goto 47,43.48,18.04,40,0
    .goto 47,41.36,18.05,40,0
    .goto 47,38.61,18.91,40,0
    >>Kill |cRXP_ENEMY_Dire Wolfs|r
    .complete 26618,1 --Dire Wolf slain (12)
    .mob Dire Wolf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,67.43,16.19,0
    .goto 47,67.43,16.19,40,0
    .goto 47,73.21,16.56,40,0
    .goto 47,72.83,20.49,40,0
    >>Kill |cRXP_ENEMY_Lupos|r and |cRXP_ENEMY_Dire Wolfs|r. Loot them for |cRXP_LOOT_Wolf Skirt Steak|r
    .complete 26620,1 --Wolf Skirt Steak (5)
    .mob Lupos
    .mob Dire Wolf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Avette Fellwood's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.89,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 26623 >>Turn in Dusky Crab Cakes
    .turnin 26620 >>Turn in Seasoned Wolf Kabobs
    .target Chef Grual
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,72.45,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 26667 >>Turn in The Stolen Letters
    .accept 26669 >>Accept In A Dark Corner
    .target Clerk Daltry
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.52,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 26618 >>Turn in Wolves at Our Heels
    .accept 26627 >>Accept The Hermit
    .accept 26645 >>Accept The Night Watch
    .target Commander Althea Ebonlocke
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,75.33,48.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 26688 >>Turn in Worgen in the Woods
    .accept 26689 >>Accept The Rotting Orchard
    .target Calor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,79.53,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 26683 >>Accept Look To The Stars
    .target Viktori Prism'Antras
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Rotting Horrors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26645,1 --Rotting Horror slain (8)
    .mob Rotting Horror
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along19
    .goto 47,82.02,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 26652 >>Turn in Ghost Hair Thread
    .turnin 26683 >>Turn in Look To The Stars
    .accept 26654 >>Accept Return the Comb
    .accept 26684 >>Accept The Insane Ghoul
    .target Blind Mary
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,81.29,57.81,0
    .goto 47,81.29,57.81,40,0
    .goto 47,81.03,60.65,40,0
    >>Kill |cRXP_ENEMY_Rotting Horrors|r
    .complete 26645,1 --Rotting Horror slain (8)
    .mob Rotting Horror
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,75.81,45.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 26654 >>Turn in Return the Comb
    .accept 26655 >>Accept Deliver the Thread
    .target Madame Eva
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26627 >>Turn in The Hermit
    .turnin 26655 >>Turn in Deliver the Thread
    .accept 26660 >>Accept Zombie Juice
    .target Abercrombie
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,74.08,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 26660 >>Turn in Zombie Juice
    .accept 26661 >>Accept Gather Rot Blossoms
    .target Tavernkeep Smitts
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.52,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 26645 >>Turn in The Night Watch
    .accept 26686 >>Accept Bones That Walk
    .target Commander Althea Ebonlocke
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,79.67,69.26,0
    .goto 47,79.67,69.26,40,0
    .goto 47,79.56,72.62,40,0
    >>Kill |cRXP_ENEMY_Insane Ghoul|r and loot |cRXP_LOOT_Mary's Looking Glass|r
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r
    >>Kill |cRXP_ENEMY_Skeletal Mages|r
    >>Pick up |cRXP_PICK_Rot Blossom|r from the ground
    .complete 26684,1 --Mary's Looking Glass (1)
    .complete 26686,1 --Skeletal Warrior slain (5)
    .complete 26686,2 --Skeletal Mage slain (5)
    .complete 26661,1 --Rot Blossom (5)
    .mob Insane Ghoul
    .mob Skeletal Warrior
    .mob Skeletal Mage
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,66.10,76.35,0
    .goto 47,66.10,76.35,40,0
    .goto 47,62.71,74.86,40,0
    >>Open the |cRXP_PICK_Pile of Scraps|r. Loot it for |cRXP_LOOT_A Torn Journal|r
    >>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 26669,1 --A Torn Journal (1)
    .complete 26689,1 --Nightbane Shadow Weaver slain (10)
    .mob Nightbane Shadow Weaver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.52,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 26686 >>Turn in Bones That Walk
    .target Commander Althea Ebonlocke
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,72.45,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 26669 >>Turn in In A Dark Corner
    .accept 26670 >>Accept Roland's Doom
    .target Clerk Daltry
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,74.08,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 26661 >>Turn in Gather Rot Blossoms
    .accept 26676 >>Accept Juice Delivery
    .target Tavernkeep Smitts
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,75.33,48.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 26689 >>Turn in The Rotting Orchard
    .accept 26690 >>Accept Vile and Tainted
    .target Calor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,79.53,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 26684 >>Turn in The Insane Ghoul
    .target Viktori Prism'Antras
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26676 >>Turn in Juice Delivery
    .accept 26680 >>Accept Ogre Thieves
    .target Abercrombie
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along33
    >>As you go: Kill |cRXP_ENEMY_Nightbane Tainted Ones|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26690,2 --Nightbane Tainted One slain (8)
    .mob Nightbane Tainted One
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along33
    .goto 47,73.63,79.21
    >>Open the |cRXP_PICK_Muddy Journal Page|r. Loot it for |cRXP_LOOT_Muddy Journal Pages|r
    .complete 26670,1 --Muddy Journal Pages (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,74.23,78.14,0
    .goto 47,74.23,78.14,40,0
    .goto 47,73.08,74.18,40,0
    .goto 47,72.43,67.37,40,0
    .goto 47,73.72,68.60,40,0
    >>Kill |cRXP_ENEMY_Nightbane Vile Fangs|r
    >>Kill |cRXP_ENEMY_Nightbane Tainted Ones|r
    .complete 26690,1 --Nightbane Vile Fang slain (8)
    .complete 26690,2 --Nightbane Tainted One slain (8)
    .mob Nightbane Vile Fang
    .mob Nightbane Tainted One
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,72.45,46.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 26670 >>Turn in Roland's Doom
    .accept 26671 >>Accept The Fate of Stalvan Mistmantle
    .target Clerk Daltry
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,75.33,48.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 26690 >>Turn in Vile and Tainted
    .accept 26691 >>Accept Worgen in the Woods
    .target Calor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,75.39,49.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 26691 >>Turn in Worgen in the Woods
    .target Jonathan Carevin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,79.08,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .turnin 26671 >>Turn in The Fate of Stalvan Mistmantle
    .accept 26672 >>Accept Clawing at the Truth
    .target Tobias Mistmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,75.81,45.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 26672 >>Turn in Clawing at the Truth
    .accept 26674 >>Accept Mistmantle's Revenge
    .target Madame Eva
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,77.23,36.39
    >>Kill |cRXP_ENEMY_Stalvan Mistmantle|r
    .complete 26674,1 --Stalvan Mistmantle slain (1)
    .mob Stalvan Mistmantle
step
    .goto 47,79.08,44.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .turnin 26674 >>Turn in Mistmantle's Revenge << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26785 >>Accept Part of the Pack
    .target Tobias Mistmantle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,45.12,67.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Dodds|r
    .accept 25235 >>Accept Vulgar Vul'Gol
    .target Watcher Dodds
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 21 - 29 Duskwood
#subweight -21
#name 23-26 Duskwood: around Apprentice Fess
--RouteBuilder:next
#next Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\26-31 Arathi Highlands

step
    .goto 47,44.92,67.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Fess|r
    .turnin 26785 >>Turn in Part of the Pack
    .target Apprentice Fess
    .isOnQuest 26785
step
    .goto 47,44.92,67.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Fess|r
    .accept 26707 >>Accept A Deadly Vine
    .accept 26717 >>Accept The Yorgen Worgen << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Apprentice Fess
step
    #loop
    .goto 47,48.52,71.81,0
    .goto 47,48.52,71.81,40,0
    .goto 47,48.70,76.02,40,0
    .goto 47,52.01,73.83,40,0
    >>Click the |cRXP_PICK_Mound of Loose Dirt|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Corpseweeds|r and |cRXP_ENEMY_Carved Ones|r. Loot them for |cRXP_LOOT_Corpseweed|r
    .complete 26717,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Mound of Loose Dirt
    .complete 26707,1 --Corpseweed (5)
    .mob Corpseweed
    .mob Carved One
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,33.52,75.33
    >>Pick up |cRXP_PICK_Abercrombie's Crate|r from the ground
    .complete 26680,1 --Abercrombie's Crate (1)
    .isOnQuest 26680
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,34.97,72.41,0
    .goto 47,34.97,72.41,40,0
    .goto 47,32.34,70.45,40,0
    >>Kill |cRXP_ENEMY_Splinter Fist Warriors|r, |cRXP_ENEMY_Splinter Fist Ogres|r, |cRXP_ENEMY_Splinter Fist Fire Weavers|r and |cRXP_ENEMY_Splinter Fist Taskmasters|r
    .complete 25235,1 --Splinter Fist Warrior (15)
    .mob Splinter Fist Warrior
    .mob Splinter Fist Ogre
    .mob Splinter Fist Fire Weaver
    .mob Splinter Fist Taskmaster
    .isOnQuest 25235
step
    .goto 47,44.92,67.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Fess|r
    .turnin 26707 >>Turn in A Deadly Vine
    .turnin 26717 >>Turn in The Yorgen Worgen << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26719 >>Accept Delivery to Master Harris << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Apprentice Fess
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,45.12,67.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Dodds|r
    .turnin 25235 >>Turn in Vulgar Vul'Gol
    .target Watcher Dodds
    .isOnQuest 25235
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.03,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .accept 26777 >>Accept Soothing Spirits
    .target Sister Elsington
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.62,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .accept 26721 >>Accept The Jitters-Bugs
    .target Jitters
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.32,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver Harris|r
    .turnin 26719 >>Turn in Delivery to Master Harris
    .accept 26720 >>Accept A Curse We Cannot Lift
    .target Oliver Harris
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.03,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .accept 26838 >>Accept Rebels Without a Clue
    .target Sister Elsington
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,21.55,72.73
    >>Interact with |cRXP_FRIENDLY_Lurking Worgen|r
    .complete 26720,1 --Lurking Worgen
    .target Lurking Worgen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,21.85,70.68,0
    .goto 47,21.85,70.68,40,0
    .goto 47,23.19,69.97,40,0
    .goto 47,21.53,66.86,40,0
    >>Interact with |cRXP_FRIENDLY_Forlorn Spirits|r
    .complete 26777,1 --Forlorn Spirit (5)
    .target Forlorn Spirit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.32,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver Harris|r
    .turnin 26720 >>Turn in A Curse We Cannot Lift
    .accept 26760 >>Accept Cry For The Moon
    .target Oliver Harris
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.03,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .turnin 26777 >>Turn in Soothing Spirits
    .target Sister Elsington
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.03,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .accept 26838 >>Accept Rebels Without a Clue
    .target Sister Elsington
    .xp <24,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.57,57.26
    >>Watch Oliver Harris and Jitters attempt to cure the Lurking Worgen.
    .complete 26760,1 --Lurking Worgen
    .target Lurking Worgen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.32,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oliver Harris|r
    .turnin 26760 >>Turn in Cry For The Moon
    .target Oliver Harris
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.35,58.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 26723 >>Accept The Fate of Morbent Fel
    .target Sven Yorgen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.03,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .accept 26778 >>Accept The Cries of the Dead
    .target Sister Elsington
step
    .goto 47,21.08,56.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John Shelby|r
    .target John Shelby
    .fp Raven Hill>>Get the Raven Hill Flight Path
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,31.63,42.80,0
    .goto 47,31.63,42.80,40,0
    .goto 47,33.08,44.53,40,0
    .goto 47,34.50,27.79,40,0
    .goto 47,31.71,28.45,40,0
    .goto 47,31.19,34.75,40,0
    >>Kill |cRXP_ENEMY_Black Widows|r. Loot them for |cRXP_LOOT_Widow Venom Sac|r
    .complete 26721,1 --Widow Venom Sac (8)
    .mob Black Widow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along63
    >>As you go: Kill |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Bone Chewers|r, |cRXP_ENEMY_Brain Eaters|r and |cRXP_ENEMY_Plague Spreaders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26778,1 --Flesh Eater (20)
    .mob Flesh Eater
    .mob Bone Chewer
    .mob Brain Eater
    .mob Plague Spreader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,17.73,29.08
    >>Click the |cRXP_PICK_A Weathered Grave|r
    .accept 26793 >>Accept The Weathered Grave
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along63
    .goto 47,16.97,33.42
    >>Click the |cRXP_PICK_Bloodsoaked Hat|r
    .complete 26723,1 --Bloodsoaked Hat
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Avette Fellwood's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,72.60,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 26793 >>Turn in The Weathered Grave
    .accept 26794 >>Accept Morgan Ladimore
    .target Sirra Von'Indi
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.52,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 26794 >>Turn in Morgan Ladimore
    .accept 26795 >>Accept Mor'Ladim
    .target Commander Althea Ebonlocke
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26680 >>Turn in Ogre Thieves
    .target Abercrombie
    .isOnQuest 26680
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .accept 26677 >>Accept Ghoulish Effigy
    .target Abercrombie
    .isQuestTurnedIn 26680 --any of: Ogre Thieves
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,80.55,33.94,0
    .goto 47,80.55,33.94,40,0
    .goto 47,78.48,34.98,40,0
    .goto 47,75.99,34.87,40,0
    >>Kill |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Bone Chewers|r, |cRXP_ENEMY_Plague Spreaders|r and |cRXP_ENEMY_Rotted Ones|r. Loot them for |cRXP_LOOT_Ghoul Rib|r
    .complete 26677,1 --Ghoul Rib (7)
    .mob Flesh Eater
    .mob Bone Chewer
    .mob Plague Spreader
    .mob Rotted One
    .isOnQuest 26677
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 26677 >>Turn in Ghoulish Effigy
    .target Abercrombie
    .isOnQuest 26677
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,87.43,35.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .accept 26681 >>Accept Note to the Mayor
    .target Abercrombie
    .isQuestTurnedIn 26677 --any of: Ghoulish Effigy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,71.93,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 26681 >>Turn in Note to the Mayor
    .target Lord Ello Ebonlocke
    .isOnQuest 26681
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,71.93,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .accept 26727 >>Accept The Embalmer's Revenge
    .target Lord Ello Ebonlocke
    .isQuestTurnedIn 26681 --any of: Note to the Mayor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,74.17,46.47
    >>Kill |cRXP_ENEMY_Stitches|r
    .complete 26727,1 --Stitches slain (1)
    .mob Stitches
    .isOnQuest 26727
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,71.93,46.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 26727 >>Turn in The Embalmer's Revenge
    .target Lord Ello Ebonlocke
    .isOnQuest 26727
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.35,58.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 26723 >>Turn in The Fate of Morbent Fel
    .accept 26724 >>Accept The Lurking Lich
    .target Sven Yorgen
step
    .goto 47,18.62,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 26721 >>Turn in The Jitters-Bugs << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 26787 >>Accept Bear In Mind
    .target Jitters
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.03,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .turnin 26724 >>Turn in The Lurking Lich
    .accept 26725 >>Accept Guided by the Light
    .target Sister Elsington
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,23.45,35.41
    >>Click the |cRXP_PICK_Lightforged Rod|r
    .turnin 26725 >>Turn in Guided by the Light
    .accept 26753 >>Accept The Halls of the Dead
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.37,27.46
    >>Click the |cRXP_PICK_Lightforged Arch|r
    .turnin 26753 >>Turn in The Halls of the Dead
    .accept 26722 >>Accept Buried Below
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.01,25.36
    >>Click the |cRXP_PICK_Lightforged Crest|r
    .turnin 26722 >>Turn in Buried Below
    .accept 26754 >>Accept Morbent's Bane
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 47,16.24,32.45,0
    .goto 47,16.24,32.45,40,0
    .goto 47,16.93,35.00,40,0
    .goto 47,17.10,37.78,40,0
    .goto 47,13.99,35.69,40,0
    >>Kill |cRXP_ENEMY_Weakened Morbent Fel|r and |cRXP_ENEMY_Morbent Fel|r
    >>Kill |cRXP_ENEMY_Mor'Ladim|r and loot |cRXP_LOOT_Mor'Ladim's Skull|r
    >>Kill |cRXP_ENEMY_Flesh Eaters|r, |cRXP_ENEMY_Bone Chewers|r, |cRXP_ENEMY_Brain Eaters|r and |cRXP_ENEMY_Plague Spreaders|r
    .complete 26754,1 --Weakened Morbent Fel (1)
    .complete 26795,1 --Mor'Ladim's Skull (1)
    .complete 26778,1 --Flesh Eater (20)
    .mob Weakened Morbent Fel
    .mob Morbent Fel
    .mob Mor'Ladim
    .mob Flesh Eater
    .mob Bone Chewer
    .mob Brain Eater
    .mob Plague Spreader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.03,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .turnin 26778 >>Turn in The Cries of the Dead
    .target Sister Elsington
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.35,58.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 26754 >>Turn in Morbent's Bane while you are here
    .isQuestComplete 26754
    .target Sven Yorgen
step
    .goto 47,9.82,52.30
    >>Kill |cRXP_ENEMY_Coalpelt Bears|r. Loot them for |cRXP_LOOT_Black Bear Brain|r
    .complete 26787,1 --Black Bear Brain (8)
    .mob Coalpelt Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,18.35,58.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 26754 >>Turn in Morbent's Bane
    .target Sven Yorgen
step
    .goto 47,18.62,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 26787 >>Turn in Bear In Mind
    .target Jitters
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,20.03,57.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Elsington|r
    .accept 26838 >>Accept Rebels Without a Clue
    .target Sister Elsington
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Avette Fellwood's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,73.52,46.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 26795 >>Turn in Mor'Ladim
    .accept 26796 >>Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,74.02,47.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    .turnin 26796 >>Turn in The Daughter Who Lived
    .accept 26797 >>Accept A Daughter's Love
    .target Watcher Ladimore
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,17.73,29.08
    >>Click the |cRXP_PICK_A Weathered Grave|r
    .turnin 26797 >>Turn in A Daughter's Love
step
    +|cRXP_WARN_That is all of Duskwood for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Rebels Without a Clue << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 25|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.4 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.7 levels of quests, starting around Skuerto). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Duskwood is planned from level 28.|r Load its guide for level 28 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 21 - 29 Duskwood
#subweight -21
#name 28-29 Duskwood
--RouteBuilder:next
#next Zone Routes (Alliance)\25-30 Northern Stranglethorn;Zone Routes (Alliance)\26-31 Arathi Highlands

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,79.53,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 26685 >>Accept Classy Glass
    .target Viktori Prism'Antras
    .isQuestTurnedIn 26684 --any of: The Insane Ghoul
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,37.87,84.35
    >>Kill |cRXP_ENEMY_Zzarc' Vul|r and loot |cRXP_LOOT_Ogre's Monocle|r
    .complete 26685,1 --Ogre's Monocle (1)
    .mob Zzarc' Vul
    .isOnQuest 26685
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 47,79.53,47.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 26685 >>Turn in Classy Glass
    .target Viktori Prism'Antras
    .isOnQuest 26685
step
    +|cRXP_WARN_End of the Duskwood route.|r
step
    +|cRXP_WARN_Suggested next zones at level 28|r: |cRXP_FRIENDLY_Northern Stranglethorn|r (about 1.2 levels of quests, starting around Hemet Nesingwary Jr.), |cRXP_FRIENDLY_Arathi Highlands|r (about 1.0 levels of quests, starting around Skuerto). Completing this step loads the guide for Northern Stranglethorn --RouteBuilder:next
]])
