-- 1-5 Valley of Trials: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Valley of Trials.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 1-5 Valley of Trials

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,45.19,68.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .accept 25152 >>Accept Your Place In The World
    .target Kaltunk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25152 >>Turn in Your Place In The World
    .accept 25126 >>Accept Cutting Teeth
    .target Gornek
step
    .goto 461,43.30,65.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rarc|r
    .target Rarc
    .home >>Set your Hearthstone to Rarc's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 461,51.60,54.94,0
    .goto 461,51.60,54.94,40,0
    .goto 461,52.29,53.53,40,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 25126,1 --Mottled Boar slain (6)
    .mob Mottled Boar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25126 >>Turn in Cutting Teeth
    .accept 25172 >>Accept Invaders in Our Home
    .target Gornek
step << Orc Warrior
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 2383 >>Accept Simple Parchment
    .target Gornek
    .xp <2,1
step << Orc Hunter
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 3087 >>Accept Etched Parchment
    .target Gornek
    .xp <2,1
step << Orc Rogue
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 3088 >>Accept Encrypted Parchment
    .target Gornek
    .xp <2,1
step << Orc Shaman
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 3089 >>Accept Rune-Inscribed Parchment
    .target Gornek
    .xp <2,1
step << Orc Warlock
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 3090 >>Accept Tainted Parchment
    .target Gornek
    .xp <2,1
step << Orc Mage
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 25138 >>Accept Glyphic Parchment
    .target Gornek
    .xp <2,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 461,44.01,78.26,0
    .goto 461,44.01,78.26,40,0
    .goto 461,45.57,79.68,40,0
    .goto 461,49.12,80.07,40,0
    >>Kill |cRXP_ENEMY_Northwatch Scouts|r
    .complete 25172,1 --Northwatch Scout slain (7)
    .mob Northwatch Scout
step
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25172 >>Turn in Invaders in Our Home << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 25127 >>Accept Sting of the Scorpid << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 2383 >>Accept Simple Parchment << Orc Warrior
    .target Gornek
step << Orc Warrior
    .goto 461,43.57,71.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment
    .accept 25147 >>Accept Charge
    .target Frang
step << Orc Warrior
    .goto 461,44.74,71.12
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 25147,1 --Training Dummy slain (1)
    .mob Training Dummy
step << Orc Warrior
    .goto 461,43.57,71.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 25147 >>Turn in Charge
    .target Frang
step << Orc Hunter
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 3087 >>Accept Etched Parchment
    .target Gornek
step << Orc Hunter
    .goto 461,43.40,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karranisha|r
    .turnin 3087 >>Turn in Etched Parchment
    .accept 25139 >>Accept Steady Shot
    .target Karranisha
step << Orc Hunter
    #loop
    .goto 461,44.74,71.12,0
    .goto 461,44.74,71.12,40,0
    .goto 461,45.24,63.42,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 25139,1 --Training Dummy slain (5)
    .mob Training Dummy
step << Orc Hunter
    .goto 461,43.40,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karranisha|r
    .turnin 25139 >>Turn in Steady Shot
    .target Karranisha
step << Orc Rogue
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 3088 >>Accept Encrypted Parchment
    .target Gornek
step << Orc Rogue
    .goto 461,41.55,68.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3088 >>Turn in Encrypted Parchment
    .accept 25141 >>Accept Eviscerate
    .target Rwag
step << Orc Rogue
    .goto 461,44.74,71.12
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 25141,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Orc Rogue
    .goto 461,41.55,68.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 25141 >>Turn in Eviscerate
    .target Rwag
step << Orc Shaman
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 3089 >>Accept Rune-Inscribed Parchment
    .target Gornek
step << Orc Shaman
    .goto 461,41.65,69.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 3089 >>Turn in Rune-Inscribed Parchment
    .accept 25143 >>Accept Primal Strike
    .target Shikrik
step << Orc Shaman
    .goto 461,44.74,71.12
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 25143,1 --Training Dummy slain (3)
    .mob Training Dummy
step << Orc Shaman
    .goto 461,41.65,69.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 25143 >>Turn in Primal Strike
    .target Shikrik
step << Orc Mage
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 25138 >>Accept Glyphic Parchment
    .target Gornek
step << Orc Mage
    .goto 461,42.11,69.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acrypha|r
    .turnin 25138 >>Turn in Glyphic Parchment
    .accept 25149 >>Accept Frost Nova
    .target Acrypha
step << Orc Mage
    .goto 461,44.74,71.12
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 25149,1 --Training Dummy slain (2)
    .mob Training Dummy
step << Orc Mage
    .goto 461,42.11,69.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acrypha|r
    .turnin 25149 >>Turn in Frost Nova
    .target Acrypha
step << Orc Warlock
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .accept 3090 >>Accept Tainted Parchment
    .target Gornek
step << Orc Warlock
    .goto 461,41.62,65.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .accept 25145 >>Accept Corruption
    .target Nartok
step << Orc Warlock
    #loop
    .goto 461,44.73,63.04,0
    .goto 461,44.73,63.04,40,0
    .goto 461,44.74,71.12,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 25145,1 --Training Dummy slain (8)
    .mob Training Dummy
step << Orc Warlock
    .goto 461,41.62,65.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 25145 >>Turn in Corruption
    .target Nartok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,42.97,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .accept 25136 >>Accept Galgar's Cactus Apple Surprise
    .target Galgar
step
    .goto 461,46.13,63.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Thazz'ril|r
    .accept 25134 >>Accept Lazy Peons
    .target Foreman Thazz'ril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,34.62,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .accept 25129 >>Accept Sarkoth
    .target Hana'zua
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along33
    >>As you go: Kill |cRXP_ENEMY_Scorpid Workers|r and |cRXP_ENEMY_Sarkoths|r. Loot them for |cRXP_LOOT_Scorpid Worker Tail|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25127,1 --Scorpid Worker Tail (8)
    .mob Scorpid Worker
    .mob Sarkoth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along33
    .goto 461,34.48,62.13
    >>Kill |cRXP_ENEMY_Sarkoth|r and loot |cRXP_LOOT_Sarkoth's Mangled Claw|r
    .complete 25129,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,56.67,62.13
    >>Kill |cRXP_ENEMY_Scorpid Workers|r and |cRXP_ENEMY_Sarkoths|r. Loot them for |cRXP_LOOT_Scorpid Worker Tail|r
    .complete 25127,1 --Scorpid Worker Tail (8)
    .mob Scorpid Worker
    .mob Sarkoth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25127 >>Turn in Sting of the Scorpid
    .target Gornek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,41.70,70.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga Earthcaller|r
    .accept 25128 >>Accept Hana'zua
    .target Canaga Earthcaller
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,45.79,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha Fargaze|r
    .accept 25131 >>Accept Vile Familiars
    .target Zureetha Fargaze
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 461,47.54,28.35,0
    .goto 461,47.54,28.35,40,0
    .goto 461,49.84,23.26,40,0
    .goto 461,49.98,19.63,40,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 25131,1 --Vile Familiar slain (8)
    .mob Vile Familiar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,34.62,44.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .turnin 25128 >>Turn in Hana'zua
    .turnin 25129 >>Turn in Sarkoth
    .accept 25130 >>Accept Back to the Den
    .target Hana'zua
step
    #loop
    .goto 461,48.34,71.99,0
    .goto 461,48.34,71.99,40,0
    .goto 461,52.43,69.10,40,0
    .goto 461,53.95,56.77,40,0
    .goto 461,61.12,56.28,40,0
    .goto 461,61.21,69.95,40,0
    .goto 461,50.58,84.43,40,0
    >>Interact with |cRXP_FRIENDLY_Lazy Peons|r
    .complete 25134,1 --Lazy Peon (4)
    .target Lazy Peon
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Rarc's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,45.79,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha Fargaze|r
    .turnin 25131 >>Turn in Vile Familiars
    .accept 25132 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25130 >>Turn in Back to the Den while you are here
    .isQuestComplete 25130
    .target Gornek
step
    .goto 461,46.13,63.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Thazz'ril|r
    .turnin 25134 >>Turn in Lazy Peons
    .accept 25135 >>Accept Thazz'ril's Pick << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Foreman Thazz'ril
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,46.13,63.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Thazz'ril|r
    .turnin 25135 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
    .isQuestComplete 25135
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 461,54.53,46.97,0
    .goto 461,54.53,46.97,40,0
    .goto 461,56.05,45.90,40,0
    .goto 461,59.41,35.07,40,0
    .goto 461,59.04,35.80,40,0
    >>Pick up |cRXP_PICK_Cactus Apple|r from the ground
    .complete 25136,1 --Cactus Apple (6)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,42.97,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,44.93,66.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25130 >>Turn in Back to the Den
    .target Gornek
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,45.79,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha Fargaze|r
    .turnin 25132 >>Turn in Burning Blade Medallion
    .target Zureetha Fargaze
    .isQuestComplete 25132
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 461,45.79,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha Fargaze|r
    .accept 25133 >>Accept Report to Sen'jin Village
    .target Zureetha Fargaze
    .isQuestTurnedIn 25132 --any of: Burning Blade Medallion
step
    +|cRXP_WARN_End of the Valley of Trials route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Durotar|r: Report to Sen'jin Village << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Burning Blade Coven and back here|r: Thazz'ril's Pick, Burning Blade Medallion << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
]])
