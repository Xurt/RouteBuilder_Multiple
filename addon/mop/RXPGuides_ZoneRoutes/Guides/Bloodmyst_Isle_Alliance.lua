-- 13-21 Bloodmyst Isle: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 13, 22).
-- Split into 2 guides, listed under "13 - 23 Bloodmyst Isle" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Bloodmyst Isle.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 13 - 23 Bloodmyst Isle
#subweight -13
#name 13-20 Bloodmyst Isle
--RouteBuilder:next
#next Zone Routes (Alliance)\15-20 Darkshore: around Ranger Glynda Nal'Shea

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .accept 9629 >>Accept Catch and Release
    .target Morae
step
    .goto 106,53.42,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fazu|r
    .target Fazu
    .home >>Set your Hearthstone to Fazu's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9567 >>Accept Know Thine Enemy
    .target Vindicator Aalesia
    .xp <13,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9641 >>Accept Irradiated Crystal Shards
    .target Vindicator Boros
    .xp <13,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 106 >>Leave The Exodar for Bloodmyst Isle
    .zoneskip 106
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 9581 >>Accept Learning from the Crystals
    .target Harbinger Mikolaas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .accept 9693 >>Accept What Argus Means to Me
    .target Exarch Admetius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9693 >>Turn in What Argus Means to Me
    .accept 9694 >>Accept Blood Watch
    .target Vindicator Boros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,56.42,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .accept 9648 >>Accept Maatparm Mushroom Menagerie
    .target Maatparm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9641 >>Accept Irradiated Crystal Shards
    .target Vindicator Boros
    .xp <13,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9567 >>Accept Know Thine Enemy
    .target Vindicator Aalesia
    .xp <13,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,59.22,71.70,0
    .goto 106,59.22,71.70,40,0
    .goto 106,58.03,73.65,40,0
    >>Kill |cRXP_ENEMY_Stinkhorn Striker|r and loot |cRXP_LOOT_Aquatic Stinkhorn|r. It can also be picked up from |cRXP_PICK_Aquatic Stinkhorn|r on the ground
    .complete 9648,1 --Aquatic Stinkhorn (1)
    .mob Stinkhorn Striker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >>Accept The Kessel Run
    .target Kessel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,63.43,88.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aonar|r
    .accept 9624 >>Accept A Favorite Treat
    .target Aonar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,63.03,87.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .turnin 9625 >>Turn in Elekks Are Serious Business
    .target Vorkhan the Elekk Herder
    .isOnQuest 9625
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,63.03,87.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .accept 9634 >>Accept Alien Predators
    .target Vorkhan the Elekk Herder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,58.34,85.46,0
    .goto 106,58.34,85.46,40,0
    .goto 106,58.22,82.54,40,0
    >>Kill |cRXP_ENEMY_Bloodmyst Hatchlings|r
    >>Open the |cRXP_PICK_Impact Site Crystal|r. Loot it for |cRXP_LOOT_Impact Site Crystal Sample|r
    .complete 9634,1 --Bloodmyst Hatchling slain (10)
    .complete 9581,1 --Impact Site Crystal Sample (1)
    .mob Bloodmyst Hatchling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,60.82,87.51,0
    .goto 106,60.82,87.51,40,0
    .goto 106,63.93,79.88,40,0
    .goto 106,67.32,76.32,40,0
    .goto 106,67.98,87.13,40,0
    >>Pick up |cRXP_PICK_Sand Pear|r from the ground
    .complete 9624,1 --Sand Pear (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,63.03,87.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .turnin 9634 >>Turn in Alien Predators
    .target Vorkhan the Elekk Herder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,63.43,88.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aonar|r
    .turnin 9624 >>Turn in A Favorite Treat
    .target Aonar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >>Turn in The Kessel Run
    .target Kessel
    .isQuestComplete 9663
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9666 >>Accept Declaration of Power
    .target Kessel
    .isQuestTurnedIn 9663 --any of: The Kessel Run
    .xp <10,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.38,93.23
    >>Interact with |cRXP_FRIENDLY_Blacksilt Scouts|r
    .complete 9629,1 --Blacksilt Scout (6)
    .target Blacksilt Scout
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,47.71,94.34
    >>Kill |cRXP_ENEMY_Cruelfin|r and loot |cRXP_LOOT_Red Crystal Pendant|r. Use it to start the quest
    .collect 23870,1,9576 --Red Crystal Pendant (1)
    .accept 9576 >>Accept Cruelfin's Necklace
    .use 23870
    .mob Cruelfin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Fazu's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9581 >>Turn in Learning from the Crystals
    .accept 9620 >>Accept The Missing Survey Team
    .target Harbinger Mikolaas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 13 >>Grind to level 13 (Irradiated Crystal Shards needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .accept 9641 >>Accept Irradiated Crystal Shards
    .target Vindicator Boros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9567 >>Accept Know Thine Enemy
    .target Vindicator Aalesia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9629 >>Turn in Catch and Release
    .turnin 9576 >>Turn in Cruelfin's Necklace
    .accept 9574 >>Accept Victims of Corruption
    .target Morae
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,46.42,72.99
    >>Pick up |cRXP_PICK_Fel Cone Fungus|r from the ground
    .complete 9648,4 --Fel Cone Fungus (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,38.43,82.02
    >>Kill |cRXP_ENEMY_Tzerak|r and loot |cRXP_LOOT_Tzerak's Armor Plate|r. Use it to start the quest
    .collect 23900,1,9594 --Tzerak's Armor Plate (1)
    .accept 9594 >>Accept Signs of the Legion
    .use 23900
    .mob Tzerak
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,35.96,80.25,0
    .goto 106,35.96,80.25,40,0
    .goto 106,36.96,75.83,40,0
    .goto 106,38.93,74.60,40,0
    >>Kill |cRXP_ENEMY_Nazzivus Felsworns|r
    >>Kill |cRXP_ENEMY_Nazzivus Satyrs|r
    >>Kill |cRXP_ENEMY_Corrupted Treant|r and loot |cRXP_LOOT_Crystallized Bark|r
    .complete 9594,2 --Nazzivus Felsworn slain (8)
    .complete 9594,1 --Nazzivus Satyr slain (8)
    .complete 9574,1 --Crystallized Bark (1)
    .mob Nazzivus Felsworn
    .mob Nazzivus Satyr
    .mob Corrupted Treant
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,36.50,71.08
    >>Open the |cRXP_PICK_Nazzivus Monument Glyphs|r. Loot it for |cRXP_LOOT_Nazzivus Monument Glyph|r
    .complete 9567,1 --Nazzivus Monument Glyph (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >>Turn in Victims of Corruption
    .target Morae
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9594 >>Turn in Signs of the Legion
    .turnin 9567 >>Turn in Know Thine Enemy
    .target Vindicator Aalesia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.26,59.12
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 9646 >>Accept WANTED: Deathclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,56.32,54.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >>Accept Explorers' League, Is That Something for Gnomes?
    .target Prospector Nachlan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9643 >>Accept Constrictor Vines
    .target Tracker Lyceon
    .xp <14,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9580 >>Accept The Bear Necessities
    .target Tracker Lyceon
    .xp <14,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along33
    >>As you go: Pick up |cRXP_PICK_Ruinous Polyspore|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 9648,3 --Ruinous Polyspore (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along33
    .goto 106,61.25,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draenei Cartographer|r
    .turnin 9620 >>Turn in The Missing Survey Team
    .accept 9628 >>Accept Salvaging the Data
    .target Draenei Cartographer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,61.64,48.71,0
    .goto 106,61.64,48.71,40,0
    .goto 106,63.59,45.11,40,0
    .goto 106,63.81,39.91,40,0
    .goto 106,60.70,42.59,40,0
    >>Kill |cRXP_ENEMY_Wrathscale Marauders|r and |cRXP_ENEMY_Wrathscale Sorceress|r. Loot them for |cRXP_LOOT_Survey Data Crystal|r
    >>Pick up |cRXP_PICK_Ruinous Polyspore|r from the ground
    .complete 9628,1 --Survey Data Crystal (1)
    .complete 9648,3 --Ruinous Polyspore (1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 14 >>Grind to level 14 (The Bear Necessities needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .accept 9580 >>Accept The Bear Necessities
    .accept 9643 >>Accept Constrictor Vines
    .target Tracker Lyceon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9628 >>Turn in Salvaging the Data
    .accept 9584 >>Accept The Second Sample
    .target Harbinger Mikolaas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,49.18,48.21,0
    .goto 106,49.18,48.21,40,0
    .goto 106,47.50,43.92,40,0
    .goto 106,45.39,48.68,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Spies|r
    .complete 9694,1 --Sunhawk Spy slain (10)
    .mob Sunhawk Spy
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Infected Wildkins|r, |cRXP_ENEMY_Contaminated Wildkins|r, |cRXP_ENEMY_Irradiated Wildkins|r and |cRXP_ENEMY_Blacksilt Foragers|r. Loot them for |cRXP_LOOT_Irradiated Crystal Shard|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9641,1 --Irradiated Crystal Shard (10)
    .mob Infected Wildkin
    .mob Contaminated Wildkin
    .mob Irradiated Wildkin
    .mob Blacksilt Forager
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,47.02,36.14,0
    .goto 106,47.02,36.14,40,0
    .goto 106,45.14,32.88,40,0
    .goto 106,41.04,26.29,40,0
    .goto 106,44.23,28.80,40,0
    >>Kill |cRXP_ENEMY_Mutated Constrictors|r. Loot them for |cRXP_LOOT_Thorny Constrictor Vine|r
    >>Kill |cRXP_ENEMY_Elder Brown Bears|r. Loot them for |cRXP_LOOT_Elder Brown Bear Flank|r
    .complete 9643,1 --Thorny Constrictor Vine (6)
    .complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Mutated Constrictor
    .mob Elder Brown Bear
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along39
    .goto 106,42.15,21.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 10063 >>Turn in Explorers' League, Is That Something for Gnomes?
    .accept 9548 >>Accept Pilfered Equipment
    .target Clopper Wizbang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,42.75,20.65,0
    .goto 106,42.75,20.65,40,0
    .goto 106,46.88,20.60,40,0
    .goto 106,46.93,33.32,40,0
    .goto 106,44.18,25.64,40,0
    >>Kill |cRXP_ENEMY_Infected Wildkins|r, |cRXP_ENEMY_Contaminated Wildkins|r, |cRXP_ENEMY_Irradiated Wildkins|r and |cRXP_ENEMY_Blacksilt Foragers|r. Loot them for |cRXP_LOOT_Irradiated Crystal Shard|r
    >>Pick up |cRXP_PICK_Clopper's Equipment|r from the ground
    .complete 9641,1 --Irradiated Crystal Shard (10)
    .complete 9548,1 --Clopper's Equipment (1)
    .mob Infected Wildkin
    .mob Contaminated Wildkin
    .mob Irradiated Wildkin
    .mob Blacksilt Forager
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,42.15,21.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 9548 >>Turn in Pilfered Equipment
    .accept 9549 >>Accept Artifacts of the Blacksilt
    .target Clopper Wizbang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along42
    >>As you go: Kill |cRXP_ENEMY_Blacksilt Shorestrikers|r and |cRXP_ENEMY_Blacksilt Warriors|r. Loot them for |cRXP_LOOT_Crude Murloc Knife|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9549,2 --Crude Murloc Knife (1)
    .mob Blacksilt Shorestriker
    .mob Blacksilt Warrior
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along42
    #loop
    .goto 106,41.92,20.52,0
    .goto 106,41.92,20.52,40,0
    .goto 106,40.31,18.25,40,0
    .goto 106,46.28,19.86,40,0
    >>Kill |cRXP_ENEMY_Blacksilt Seers|r. Loot them for |cRXP_LOOT_Crude Murloc Idol|r
    .complete 9549,1 --Crude Murloc Idol (3)
    .mob Blacksilt Seer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,45.68,47.80
    >>Open the |cRXP_PICK_Altered Bloodmyst Crystal|r. Loot it for |cRXP_LOOT_Altered Crystal Sample|r
    .complete 9584,1 --Altered Crystal Sample (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9584 >>Turn in The Second Sample
    .accept 9585 >>Accept The Final Sample
    .target Harbinger Mikolaas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 15 >>Grind to level 15 (Searching for Galaen needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .accept 9578 >>Accept Searching for Galaen
    .target Morae
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .accept 9569 >>Accept Containing the Threat
    .target Vindicator Aalesia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9643 >>Turn in Constrictor Vines
    .turnin 9580 >>Turn in The Bear Necessities
    .accept 9647 >>Accept Culling the Flutterers
    .target Tracker Lyceon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9694 >>Turn in Blood Watch
    .turnin 9641 >>Turn in Irradiated Crystal Shards
    .accept 9779 >>Accept Intercepting the Message
    .target Vindicator Boros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,53.21,54.14,0
    .goto 106,53.21,54.14,40,0
    .goto 106,55.64,54.32,40,0
    .goto 106,54.72,54.79,40,0
    .goto 106,54.51,55.35,40,0
    .goto 106,54.88,56.82,40,0
    .goto 106,54.56,58.02,40,0
    .goto 106,54.88,59.27,40,0
    .goto 106,54.42,59.86,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Hermesius|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 9671 >>Accept Urgent Delivery
    .unitscan Messenger Hermesius
    .isQuestTurnedIn 9506 --any of: A Small Start
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,53.21,54.14,0
    .goto 106,53.21,54.14,40,0
    .goto 106,55.64,54.32,40,0
    .goto 106,54.72,54.79,40,0
    .goto 106,54.51,55.35,40,0
    .goto 106,54.88,56.82,40,0
    .goto 106,54.56,58.02,40,0
    .goto 106,54.88,59.27,40,0
    .goto 106,54.42,59.86,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messenger Hermesius|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9671 >>Turn in Urgent Delivery
    .unitscan Messenger Hermesius
    .isOnQuest 9671
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,54.66,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Paetheus|r
    .accept 9632 >>Accept Newfound Allies
    .target Anchorite Paetheus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 10064 >>Accept Talk to the Hand
    .target Harbinger Mikolaas
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,49.18,48.21,0
    .goto 106,49.18,48.21,40,0
    .goto 106,47.50,43.92,40,0
    .goto 106,45.39,48.68,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Spies|r, |cRXP_ENEMY_Sunhawk Reclaimers|r, |cRXP_ENEMY_Sunhawk Defenders|r and |cRXP_ENEMY_Sunhawk Pyromancers|r. Loot them for |cRXP_LOOT_Sunhawk Missive|r
    .complete 9779,1 --Sunhawk Missive (1)
    .mob Sunhawk Spy
    .mob Sunhawk Reclaimer
    .mob Sunhawk Defender
    .mob Sunhawk Pyromancer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,44.80,39.90,0
    .goto 106,44.80,39.90,40,0
    .goto 106,47.68,32.78,40,0
    >>Kill |cRXP_ENEMY_Royal Blue Flutterers|r
    .complete 9647,1 --Royal Blue Flutterer slain (10)
    .mob Royal Blue Flutterer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,68.77,68.16
    >>Interact with |cRXP_FRIENDLY_Lord Xiz|r
    .complete 9666,1 --Lord Xiz
    .target Lord Xiz
    .isOnQuest 9666
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,68.77,68.16
    >>Interact with |cRXP_FRIENDLY_Lord Xiz|r
    .complete 9666,2 --Lord Xiz
    .target Lord Xiz
    .isOnQuest 9666
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,68.26,80.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Stillpine|r
    .accept 9667 >>Accept Saving Princess Stillpine
    .target Princess Stillpine
    .isQuestTurnedIn 9559 --any of: Stillpine Hold
    .xp <10,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,64.20,76.40
    >>Kill |cRXP_ENEMY_High Chief Bristlelimb|r and loot |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --The High Chief's Key (1)
    .mob High Chief Bristlelimb
    .isOnQuest 9667
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,68.26,80.99
    >>Release Princess Stillpine from her cage and then speak with Stillpine Ambassador Frasaboo at Blood Watch.
    .complete 9667,1 --Princess Stillpine
    .target Princess Stillpine
    .isOnQuest 9667
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9666 >>Turn in Declaration of Power
    .target Kessel
    .isOnQuest 9666
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .accept 9668 >>Accept Report to Exarch Admetius
    .target Kessel
    .isQuestTurnedIn 9666 --any of: Declaration of Power
    .xp <10,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,58.24,55.93
    >>Pick up |cRXP_PICK_Blood Mushroom|r from the ground
    .complete 9648,2 --Blood Mushroom (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,56.42,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >>Turn in Maatparm Mushroom Menagerie
    .accept 9649 >>Accept Ysera's Tears
    .target Maatparm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.86,57.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Lyceon|r
    .turnin 9647 >>Turn in Culling the Flutterers
    .target Tracker Lyceon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.16,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stillpine Ambassador Frasaboo|r
    .turnin 9667 >>Turn in Saving Princess Stillpine
    .target Stillpine Ambassador Frasaboo
    .isOnQuest 9667
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9779 >>Turn in Intercepting the Message
    .accept 9696 >>Accept Translations...
    .target Vindicator Boros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,54.44,54.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Interrogator Elysia|r
    .turnin 9696 >>Turn in Translations...
    .accept 9698 >>Accept Audience with the Prophet
    .target Interrogator Elysia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,53.24,57.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >>Accept The Missing Expedition
    .target Achelus
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9668 >>Turn in Report to Exarch Admetius
    .target Exarch Admetius
    .isOnQuest 9668
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .accept 10064 >>Accept Talk to the Hand
    .target Harbinger Mikolaas
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .turnin 9698 >>Turn in Audience with the Prophet
    .accept 9699 >>Accept Truth or Fiction
    .target Prophet Velen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 106 >>Leave The Exodar for Bloodmyst Isle
    .zoneskip 106
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Fazu's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9699 >>Turn in Truth or Fiction
    .accept 9700 >>Accept I Shoot Magic Into the Darkness
    .target Vindicator Boros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,39.17,36.02,0
    .goto 106,39.17,36.02,40,0
    .goto 106,37.29,37.30,40,0
    .goto 106,35.79,37.26,40,0
    >>Kill |cRXP_ENEMY_Axxarien Hellcallers|r
    >>Pick up |cRXP_PICK_Corrupted Crystal|r from the ground
    >>Kill |cRXP_ENEMY_Axxarien Shadowstalkers|r
    .complete 9569,2 --Axxarien Hellcaller slain (5)
    .complete 9569,4 --Corrupted Crystal (5)
    .complete 9569,3 --Axxarien Shadowstalker slain (5)
    .mob Axxarien Hellcaller
    .mob Axxarien Shadowstalker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 16 >>Grind to level 16 (Cutting a Path needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.26,45.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jorli|r
    .accept 10065 >>Accept Cutting a Path
    .target Scout Jorli
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.24,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Loryi|r
    .accept 9741 >>Accept Critters of the Void
    .target Scout Loryi
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .accept 10066 >>Accept Oh, the Tangled Webs They Weave
    .target Vindicator Corin
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .accept 10067 >>Accept Fouled Water Spirits
    .target Vindicator Corin
    .xp <16,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,37.22,29.91
    >>Kill |cRXP_ENEMY_Deathclaw|r and loot |cRXP_LOOT_Deathclaw's Paw|r
    .complete 9646,1 --Deathclaw's Paw (1)
    .mob Deathclaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,37.30,23.77,0
    .goto 106,37.30,23.77,40,0
    .goto 106,40.02,21.11,40,0
    >>Kill |cRXP_ENEMY_Blacksilt Shorestrikers|r and |cRXP_ENEMY_Blacksilt Warriors|r. Loot them for |cRXP_LOOT_Crude Murloc Knife|r
    .complete 9549,2 --Crude Murloc Knife (1)
    .mob Blacksilt Shorestriker
    .mob Blacksilt Warrior
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,42.15,21.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clopper Wizbang|r
    .turnin 9549 >>Turn in Artifacts of the Blacksilt
    .target Clopper Wizbang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,42.15,21.22
    >>Kill |cRXP_ENEMY_Clopper Wizbang|r and loot |cRXP_LOOT_Weathered Treasure Map|r. Use it to start the quest
    .collect 23837,1,9550 --Weathered Treasure Map (1)
    .accept 9550 >>Accept A Map to Where?
    .use 23837
    .mob Clopper Wizbang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,51.22,23.22,0
    .goto 106,51.22,23.22,40,0
    .goto 106,52.88,19.93,40,0
    >>Kill |cRXP_ENEMY_Void Anomalies|r
    .complete 9700,1 --Void Anomaly slain (5)
    .mob Void Anomaly
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.92,22.32
    >>Sun Portal Site Confirmed
    .complete 9700,2 --Sun Portal Site Confirmed
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,61.16,41.89
    >>Click the |cRXP_PICK_Battered Ancient Book|r
    .turnin 9550 >>Turn in A Map to Where?
    .accept 9557 >>Accept Deciphering the Book
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.42,55.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Boros|r
    .turnin 9700 >>Turn in I Shoot Magic Into the Darkness
    .target Vindicator Boros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .accept 9703 >>Accept The Cryo-Core
    .target Vindicator Kuros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,54.66,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Paetheus|r
    .turnin 9557 >>Turn in Deciphering the Book
    .accept 9561 >>Accept Nolkai's Words
    .target Anchorite Paetheus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9646 >>Turn in WANTED: Deathclaw
    .accept 10064 >>Accept Talk to the Hand
    .target Harbinger Mikolaas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,53.24,57.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >>Accept The Missing Expedition
    .target Achelus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,39.43,61.98,0
    .goto 106,39.43,61.98,40,0
    .goto 106,38.01,57.66,40,0
    .goto 106,36.18,60.41,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Reclaimer|r and loot |cRXP_LOOT_Medical Supplies|r. It can also be picked up from |cRXP_PICK_Medical Supplies|r on the ground
    .complete 9703,1 --Medical Supplies (1)
    .mob Sunhawk Reclaimer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,37.50,61.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galaen's Corpse|r
    .turnin 9578 >>Turn in Searching for Galaen while you are here
    .isQuestComplete 9578
    .target Galaen's Corpse
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,37.53,61.51
    >>Click the |cRXP_PICK_Galaen's Journal|r
    .accept 9706 >>Accept Galaen's Journal - The Fate of Vindicator Saruan
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,37.50,61.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galaen's Corpse|r
    .turnin 9578 >>Turn in Searching for Galaen
    .accept 9579 >>Accept Galaen's Fate
    .target Galaen's Corpse
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,36.17,60.37,0
    .goto 106,36.17,60.37,40,0
    .goto 106,39.11,62.02,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Reclaimer|r and loot |cRXP_LOOT_Galaen's Amulet|r
    .complete 9579,1 --Galaen's Amulet (1)
    .mob Sunhawk Reclaimer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,33.42,57.18,0
    .goto 106,33.42,57.18,40,0
    .goto 106,32.67,54.68,40,0
    >>Kill |cRXP_ENEMY_Enraged Ravagers|r
    .complete 10065,1 --Enraged Ravager slain (10)
    .mob Enraged Ravager
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .accept 10066 >>Accept Oh, the Tangled Webs They Weave
    .accept 10067 >>Accept Fouled Water Spirits
    .target Vindicator Corin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.26,45.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jorli|r
    .turnin 10065 >>Turn in Cutting a Path
    .turnin 10064 >>Turn in Talk to the Hand
    .target Scout Jorli
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.24,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Loryi|r
    .accept 9741 >>Accept Critters of the Void
    .target Scout Loryi
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,29.88,37.34,0
    .goto 106,29.88,37.34,40,0
    .goto 106,28.21,34.59,40,0
    .goto 106,32.86,36.84,40,0
    >>Kill |cRXP_ENEMY_Fouled Water Spirits|r
    .complete 10067,1 --Fouled Water Spirit slain (6)
    .mob Fouled Water Spirit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,41.91,29.53
    >>Kill |cRXP_ENEMY_Zevrax|r
    .complete 9569,1 --Zevrax slain (1)
    .mob Zevrax
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,71.40,28.20,0
    .goto 106,71.40,28.20,40,0
    .goto 106,72.70,21.40,40,0
    >>Pick up |cRXP_PICK_Ysera's Tear|r from the ground
    .complete 9649,1 --Ysera's Tear (2)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .accept 9687 >>Accept Restoring Sanctity
    .target Prince Toreth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,61.17,49.64
    >>Click the |cRXP_PICK_Mound of Dirt|r
    .turnin 9561 >>Turn in Nolkai's Words
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,56.42,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maatparm|r
    .turnin 9649 >>Turn in Ysera's Tears
    .target Maatparm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.08,57.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aalesia|r
    .turnin 9569 >>Turn in Containing the Threat
    .target Vindicator Aalesia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,53.24,57.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >>Turn in Galaen's Fate
    .target Morae
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9706 >>Turn in Galaen's Journal - The Fate of Vindicator Saruan
    .turnin 9703 >>Turn in The Cryo-Core
    .accept 9711 >>Accept Matis the Cruel
    .target Vindicator Kuros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9748 >>Accept Don't Drink the Water
    .target Vindicator Aesom
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9753 >>Accept What We Know...
    .target Vindicator Aesom
    .xp <18,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,54.15,36.12,0
    .goto 106,54.15,36.12,40,0
    .goto 106,53.97,31.05,40,0
    >>Pick up |cRXP_PICK_Dragon Bone|r from the ground
    .complete 9687,1 --Dragon Bone (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,34.38,33.67
    >>Open the |cRXP_PICK_Bloodmyst Water Focus|r. Loot it for |cRXP_LOOT_Bloodmyst Water Sample|r
    .complete 9748,1 --Bloodmyst Water Sample (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10067 >>Turn in Fouled Water Spirits
    .target Vindicator Corin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,26.99,52.41
    >>Interact with |cRXP_FRIENDLY_Matis the Cruel|r
    .complete 9711,1 --Matis the Cruel
    .target Matis the Cruel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,18.64,63.43
    >>Kill |cRXP_ENEMY_Void Critters|r
    .complete 9741,1 --Void Critter slain (12)
    .mob Void Critter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Fazu's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9741 >>Turn in Critters of the Void
    .turnin 9748 >>Turn in Don't Drink the Water
    .accept 9746 >>Accept Limits of Physical Exhaustion
    .target Vindicator Aesom
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.64,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Kuros|r
    .turnin 9711 >>Turn in Matis the Cruel
    .target Vindicator Kuros
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9753 >>Accept What We Know...
    .target Vindicator Aesom
    .xp <18,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.85,60.91
    >>Kill |cRXP_ENEMY_Mutated Tanglers|r
    .complete 10066,1 --Mutated Tangler slain (8)
    .mob Mutated Tangler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,23.99,57.72,0
    .goto 106,23.99,57.72,40,0
    .goto 106,22.77,60.94,40,0
    .goto 106,20.63,62.55,40,0
    .goto 106,24.82,52.89,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Defenders|r
    >>Kill |cRXP_ENEMY_Sunhawk Pyromancers|r
    .complete 9746,2 --Sunhawk Defender slain (10)
    .complete 9746,1 --Sunhawk Pyromancer slain (10)
    .mob Sunhawk Defender
    .mob Sunhawk Pyromancer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 10066 >>Turn in Oh, the Tangled Webs They Weave
    .target Vindicator Corin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9746 >>Turn in Limits of Physical Exhaustion
    .target Vindicator Aesom
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 18 >>Grind to level 18 (What We Know... needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .accept 9740 >>Accept The Sun Gate
    .accept 9753 >>Accept What We Know...
    .target Vindicator Aesom
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9753 >>Turn in What We Know...
    .accept 9756 >>Accept What We Don't Know...
    .target Exarch Admetius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,54.31,54.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Sunhawk Agent|r
    .complete 9756,1 --Captured Sunhawk Agent
    .target Captured Sunhawk Agent
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9756 >>Turn in What We Don't Know...
    .accept 9760 >>Accept Vindicator's Rest
    .target Exarch Admetius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.82,46.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demolitionist Legoso|r
    .accept 9759 >>Accept Ending Their World
    .target Demolitionist Legoso
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 9760 >>Turn in Vindicator's Rest
    .accept 9761 >>Accept Clearing the Way
    .target Vindicator Corin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,22.51,41.60,0
    .goto 106,22.51,41.60,40,0
    .goto 106,18.17,37.87,40,0
    .goto 106,19.66,33.00,40,0
    >>Kill |cRXP_ENEMY_Myst Leechers|r
    >>Kill |cRXP_ENEMY_Myst Spinners|r
    >>Kill |cRXP_ENEMY_Zarakh|r
    .complete 9669,1 --Myst Leecher slain (8)
    .complete 9669,2 --Myst Spinner slain (8)
    .complete 9669,3 --Zarakh slain (1)
    .mob Myst Leecher
    .mob Myst Spinner
    .mob Zarakh
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along120
    >>As you go: Kill |cRXP_ENEMY_Sunhawk Agents|r. |cRXP_WARN_Anything left is finished later|r
    .complete 9761,1 --Sunhawk Agent slain (8)
    .mob Sunhawk Agent
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,16.50,48.24,0
    .goto 106,16.50,48.24,40,0
    .goto 106,13.78,54.45,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Saboteurs|r
    .complete 9761,2 --Sunhawk Saboteur slain (8)
    .mob Sunhawk Saboteur
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along120
    .goto 106,14.86,54.84
    >>Vector Coil Destroyed and Sironas Slain
    .complete 9759,1 --Vector Coil Destroyed and Sironas Slain
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,14.55,55.28,0
    .goto 106,14.55,55.28,40,0
    .goto 106,14.50,52.89,40,0
    .goto 106,16.91,59.56,40,0
    >>Kill |cRXP_ENEMY_Sunhawk Agents|r
    .complete 9761,1 --Sunhawk Agent slain (8)
    .mob Sunhawk Agent
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,18.74,63.95
    >>Click the |cRXP_PICK_Sun Gate|r
    .complete 9740,1 --Sun Gate
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,30.75,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Corin|r
    .turnin 9761 >>Turn in Clearing the Way
    .target Vindicator Corin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,24.88,34.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Cornelius|r
    .accept 9670 >>Accept They're Alive! Maybe...
    .target Researcher Cornelius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,22.11,40.02,0
    .goto 106,22.11,40.02,40,0
    .goto 106,18.57,36.94,40,0
    >>Kill |cRXP_ENEMY_Expedition Researchers|r and |cRXP_ENEMY_Webbed Creatures|r
    .complete 9670,1 --Expedition Researcher (5)
    .mob Expedition Researcher
    .mob Webbed Creature
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,24.88,34.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Cornelius|r
    .turnin 9670 >>Turn in They're Alive! Maybe...
    .target Researcher Cornelius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Fazu's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,53.24,57.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >>Turn in The Missing Expedition
    .target Achelus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.68,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exarch Admetius|r
    .turnin 9759 >>Turn in Ending Their World
    .target Exarch Admetius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9585 >>Turn in The Final Sample
    .target Harbinger Mikolaas
    .isQuestComplete 9585
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,55.55,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Aesom|r
    .turnin 9740 >>Turn in The Sun Gate
    .target Vindicator Aesom
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9687 >>Turn in Restoring Sanctity
    .accept 9688 >>Accept Into the Dream
    .target Prince Toreth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,70.91,29.91,0
    .goto 106,70.91,29.91,40,0
    .goto 106,71.70,27.11,40,0
    .goto 106,76.99,20.81,40,0
    >>Kill |cRXP_ENEMY_Veridian Whelps|r
    >>Kill |cRXP_ENEMY_Veridian Broodlings|r
    .complete 9688,1 --Veridian Whelp slain (5)
    .complete 9688,2 --Veridian Broodling slain (5)
    .mob Veridian Whelp
    .mob Veridian Broodling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9688 >>Turn in Into the Dream
    .accept 9689 >>Accept Razormaw
    .target Prince Toreth
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,72.81,20.83
    >>Kill |cRXP_ENEMY_Razormaw|r
    .complete 9689,1 --Razormaw slain (1)
    .mob Razormaw
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,74.47,33.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Toreth|r
    .turnin 9689 >>Turn in Razormaw
    .target Prince Toreth
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Draenei
    .goto 103,32.87,54.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prophet Velen|r
    .accept 9762 >>Accept The Unwritten Prophecy
    .turnin 9762 >>Turn in The Unwritten Prophecy
    .target Prophet Velen
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 103,55.36,47.23
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28492 >>Accept Hero's Call: Ashenvale!
step
    #completewith next
    .zone 106 >>Leave The Exodar for Bloodmyst Isle
    .zoneskip 106
step << Draenei
    .goto 106,55.85,59.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caregiver Topher Loaal|r
    .accept 9603 >>Accept Beds, Bandages, and Beyond
    .target Caregiver Topher Loaal
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9672 >>Accept The Bloodcurse Legacy
    .target Captain Edward Hanes
    .isQuestTurnedIn 9671 --any of: Urgent Delivery
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9672 >>Turn in The Bloodcurse Legacy
    .target Captain Edward Hanes
    .isOnQuest 9672
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9751 >>Turn in The Bloodcurse Legacy
    .target Captain Edward Hanes
    .isOnQuest 9751
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9674 >>Accept The Bloodcursed Naga
    .target Captain Edward Hanes
    .isQuestTurnedIn 9672,9751 --any of: The Bloodcurse Legacy, The Bloodcurse Legacy
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,81.35,21.57,0
    .goto 106,81.35,21.57,40,0
    .goto 106,81.59,25.06,40,0
    >>Kill |cRXP_ENEMY_Bloodcursed Nagas|r
    .complete 9674,1 --Bloodcursed Naga slain (10)
    .mob Bloodcursed Naga
    .isOnQuest 9674
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9674 >>Turn in The Bloodcursed Naga
    .target Captain Edward Hanes
    .isOnQuest 9674
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9682 >>Accept The Hopeless Ones...
    .target Captain Edward Hanes
    .isQuestTurnedIn 9674 --any of: The Bloodcursed Naga
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 106,83.11,21.18,0
    .goto 106,83.11,21.18,40,0
    .goto 106,86.06,16.46,40,0
    >>Kill |cRXP_ENEMY_Bloodcursed Voyagers|r. Loot them for |cRXP_LOOT_Bloodcursed Soul|r
    .complete 9682,1 --Bloodcursed Soul (4)
    .mob Bloodcursed Voyager
    .isOnQuest 9682
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9682 >>Turn in The Hopeless Ones...
    .target Captain Edward Hanes
    .isOnQuest 9682
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .accept 9683 >>Accept Ending the Bloodcurse
    .target Captain Edward Hanes
    .isQuestTurnedIn 9682 --any of: The Hopeless Ones...
    .xp <15,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,86.00,54.00
    >>Kill |cRXP_ENEMY_Atoph the Bloodcursed|r
    .complete 9683,1 --Atoph the Bloodcursed slain (1)
    .mob Atoph the Bloodcursed
    .isOnQuest 9683
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,79.15,22.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Edward Hanes|r
    .turnin 9683 >>Turn in Ending the Bloodcurse
    .target Captain Edward Hanes
    .isOnQuest 9683
step << Draenei
    .goto 106,57.68,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laando|r
    .accept 9604 >>Accept On the Wings of a Hippogryph
    .target Laando
    .isQuestTurnedIn 9603 --any of: Beds, Bandages, and Beyond
    .xp <5,1
step << Draenei
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
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
step
    +|cRXP_WARN_That is all of Bloodmyst Isle for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Beds, Bandages, and Beyond, Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Newfound Allies << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle and back here|r: The Kessel Run << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: The Final Sample << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 19|r: |cRXP_FRIENDLY_Darkshore|r (about 0.6 levels of quests, starting around Ranger Glynda Nal'Shea). Completing this step loads the guide for Darkshore --RouteBuilder:next
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior/Dwarf Paladin/Draenei Paladin/Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter/Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest/NightElf Priest/Dwarf Shaman/Draenei Shaman/Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage/Gnome Priest
    +|cRXP_WARN_The rest of Bloodmyst Isle is planned from level 22.|r Load its guide for level 22 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior/Dwarf Paladin/Draenei Paladin/Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter/Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest/NightElf Priest/Dwarf Shaman/Draenei Shaman/Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage/Gnome Priest
#version 1
#group Zone Routes (Alliance)
#subgroup 13 - 23 Bloodmyst Isle
#subweight -13
#name 22-23 Bloodmyst Isle
--RouteBuilder:next
#next Zone Routes (Alliance)\20-22 Hillsbrad Foothills: around Helcular

step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .accept 27225 >>Accept A Summons from Ander Germaine
    .target Behomat
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .target Edirah
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 103,47.59,88.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vord|r
    .accept 27266 >>Accept Wulf Calls
    .target Vord
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 103,38.48,50.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caedmos|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Caedmos
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
    .goto 103,38.48,50.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caedmos|r
    .accept 27269 >>Accept The Temple of the Moon << NightElf Priest
    .accept 27274 >>Accept The Chief Surgeon << Gnome Priest
    .target Caedmos
step
    #completewith next
    .zone 106 >>Leave The Exodar for Bloodmyst Isle
    .zoneskip 106
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,62.99,87.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >>Turn in The Kessel Run
    .target Kessel
    .isQuestComplete 9663
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 106,52.59,53.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Mikolaas|r
    .turnin 9585 >>Turn in The Final Sample
    .target Harbinger Mikolaas
    .isQuestComplete 9585
step
    +|cRXP_WARN_End of the Bloodmyst Isle route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Darnassus|r: The Temple of the Moon << NightElf Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
step
    +|cRXP_WARN_Suggested next zones at level 22|r: |cRXP_FRIENDLY_Hillsbrad Foothills|r (about 0.7 levels of quests, starting around Helcular). Completing this step loads the guide for Hillsbrad Foothills --RouteBuilder:next
]])
