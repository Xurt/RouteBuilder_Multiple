-- 30-35 Desolace: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 2 guides, listed under "30 - 36 Desolace" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Desolace.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 30 - 36 Desolace
#subweight -30
#name 30-32 Desolace: around Sorrem
#next Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah

step
    .goto 66,54.77,8.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furien|r
    .turnin 26134 >>Turn in Nothing Left for You Here
    .target Furien
    .isOnQuest 26134
step
    .goto 66,54.77,8.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furien|r
    .accept 14184 >>Accept My Time Has Passed
    .target Furien
step
    .goto 66,54.24,9.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Officer Jankie|r
    .turnin 25938 >>Turn in Help for Desolace
    .target Officer Jankie
    .isOnQuest 25938
step
    .goto 66,44.62,29.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerelia|r
    .turnin 14184 >>Turn in My Time Has Passed
    .accept 14188 >>Accept Avenge Furien! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Cerelia
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,44.91,29.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorrem|r
    .turnin 14188 >>Turn in Avenge Furien!
    .accept 14189 >>Accept Translation
    .target Sorrem
step
    .goto 66,60.98,29.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bizby|r
    .accept 14251 >>Accept New Beginnings
    .accept 14252 >>Accept Good Gold For Bad Tail
    .accept 14253 >>Accept Fletch Me Some Plumage!
    .target Bizby
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,69.30,29.27
    >>Click the |cRXP_PICK_Ancient Tablets|r
    .turnin 14189 >>Turn in Translation
    .accept 14191 >>Accept Furien's Footsteps
step
    #loop
    .goto 66,67.73,25.53,0
    .goto 66,67.73,25.53,40,0
    .goto 66,70.05,19.12,40,0
    >>Kill |cRXP_ENEMY_Scorpashi Snappers|r. Loot them for |cRXP_LOOT_Scorpion Stinger|r
    .complete 14251,1 --Scorpion Stinger (15)
    .mob Scorpashi Snapper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,77.00,18.08
    >>Click the |cRXP_PICK_Cup of Elune|r
    .complete 14191,3 --Cup of Elune
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along9
    >>As you go: Click the |cRXP_PICK_Elune's Brazier|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14191,2 --Elune's Brazier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along9
    .goto 66,78.75,23.16
    >>Click the |cRXP_PICK_Elune's Brazier|r
    .accept 14213 >>Accept Ten Pounds of Flesh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Hatefury Rogues|r, |cRXP_ENEMY_Hatefury Tricksters|r, |cRXP_ENEMY_Hatefury Felsworns|r and |cRXP_ENEMY_Hatefury Betrayers|r. Loot them for |cRXP_LOOT_Satyr Flesh|r. |cRXP_WARN_Anything left is finished later|r
    .collect 48857,1,14213,1 --Satyr Flesh (1)
    .mob Hatefury Rogue
    .mob Hatefury Trickster
    .mob Hatefury Felsworn
    .mob Hatefury Betrayer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,78.75,23.16
    >>Click the |cRXP_PICK_Elune's Brazier|r
    .complete 14191,2 --Elune's Brazier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,75.88,26.61
    >>Click the |cRXP_PICK_Elune's Handmaiden|r
    .complete 14191,1 --Elune's Handmaiden
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along12
    .goto 66,75.88,26.61
    >>Click the |cRXP_PICK_Elune's Handmaiden|r
    .accept 14219 >>Accept To the Hilt!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,69.30,29.27
    >>Click the |cRXP_PICK_Ancient Tablets|r
    .turnin 14191 >>Turn in Furien's Footsteps
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along17
    >>As you go: Kill |cRXP_ENEMY_Hatefury Rogues|r, |cRXP_ENEMY_Hatefury Tricksters|r, |cRXP_ENEMY_Hatefury Felsworns|r and |cRXP_ENEMY_Hatefury Betrayers|r. Loot them for |cRXP_LOOT_Satyr Saber|r. It can also be picked up from |cRXP_PICK_Weapon Rack|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .collect 48943,1,14219,1 --Satyr Saber (1)
    .mob Hatefury Rogue
    .mob Hatefury Trickster
    .mob Hatefury Felsworn
    .mob Hatefury Betrayer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,75.20,23.35,0
    .goto 66,75.20,23.35,40,0
    .goto 66,76.75,25.63,40,0
    .goto 66,79.26,21.23,40,0
    .goto 66,79.30,15.80,40,0
    >>Kill |cRXP_ENEMY_Hatefury Rogues|r, |cRXP_ENEMY_Hatefury Tricksters|r, |cRXP_ENEMY_Hatefury Felsworns|r and |cRXP_ENEMY_Hatefury Betrayers|r. Loot them for |cRXP_LOOT_Satyr Flesh|r
    .collect 48857,1,14213,1 --Satyr Flesh (1)
    .mob Hatefury Rogue
    .mob Hatefury Trickster
    .mob Hatefury Felsworn
    .mob Hatefury Betrayer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,77.04,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cup of Elune Bunny|r
    .accept 14360 >>Accept Nothing a Couple of Melons Won't Fix
    .target Cup of Elune Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,78.04,20.73
    >>Pick up |cRXP_PICK_Melonfruit|r from the ground
    .collect 48106,1,14360,1 --Melonfruit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along17
    .goto 66,77.00,18.08
    >>Click the |cRXP_PICK_Cup of Elune|r
    .complete 14360,1 --Cup of Elune
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,78.95,20.17,0
    .goto 66,78.95,20.17,40,0
    .goto 66,79.30,15.80,40,0
    .goto 66,78.33,25.64,40,0
    >>Kill |cRXP_ENEMY_Hatefury Rogues|r, |cRXP_ENEMY_Hatefury Tricksters|r, |cRXP_ENEMY_Hatefury Felsworns|r and |cRXP_ENEMY_Hatefury Betrayers|r. Loot them for |cRXP_LOOT_Satyr Saber|r. It can also be picked up from |cRXP_PICK_Weapon Rack|r on the ground
    .collect 48943,1,14219,1 --Satyr Saber (1)
    .mob Hatefury Rogue
    .mob Hatefury Trickster
    .mob Hatefury Felsworn
    .mob Hatefury Betrayer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,78.75,23.16
    >>Click the |cRXP_PICK_Elune's Brazier|r
    .complete 14213,1 --Elune's Brazier
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,78.75,23.16
    >>Click the |cRXP_PICK_Elune's Brazier|r
    .turnin 14213 >>Turn in Ten Pounds of Flesh
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,75.88,26.61
    >>Click the |cRXP_PICK_Elune's Handmaiden|r
    .complete 14219,1 --Elune's Handmaiden
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,75.88,26.61
    >>Click the |cRXP_PICK_Elune's Handmaiden|r
    .turnin 14219 >>Turn in To the Hilt!
step
    .goto 66,70.38,32.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Embassador Thunk|r
    .accept 14247 >>Accept Stubborn Lands
    .accept 14246 >>Accept Early Adoption
    .target Cenarion Embassador Thunk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,69.30,29.27
    >>Click the |cRXP_PICK_Ancient Tablets|r
    .turnin 14360 >>Turn in Nothing a Couple of Melons Won't Fix
step
    .goto 66,70.29,22.61
    >>Click the |cRXP_PICK_Swoop Nest|r
    .complete 14246,1 --Swoop Nest
step
    .goto 66,69.32,21.19
    >>Click the |cRXP_PICK_Smouldering Stone|r
    .turnin 14247 >>Turn in Stubborn Lands
    .accept 14254 >>Accept Heavy Metal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,74.31,12.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elune Palace Bunny|r
    .accept 14195 >>Accept All Becoming Clearer
    .target Elune Palace Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,74.31,12.63
    >>Furien's Journal has directed you to find the ruined Palace of Elune in northern Sargeron.
    .complete 14195,1 --Elune Palace Bunny
    .target Elune Palace Bunny
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,74.87,13.29
    >>Click the |cRXP_PICK_Ancient Vortex Runestone|r
    .turnin 14195 >>Turn in All Becoming Clearer
    .accept 14196 >>Accept Firestarter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,74.87,13.29
    >>You are to create a Raging Vortex by defeating 7 Disciples of Elune in the presence of your firestorm.
    .complete 14196,1 --Seething Vortex (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,74.87,13.29
    >>Click the |cRXP_PICK_Ancient Vortex Runestone|r
    .turnin 14196 >>Turn in Firestarter
step
    .goto 66,65.34,20.05
    >>Pick up |cRXP_PICK_Element 116|r from the ground
    .complete 14254,1 --Element 116 (1)
step
    #loop
    .goto 66,59.94,14.28,0
    .goto 66,59.94,14.28,40,0
    .goto 66,58.67,18.95,40,0
    .goto 66,55.07,15.60,40,0
    >>Kill |cRXP_ENEMY_Gritjaw Basilisks|r. Loot them for |cRXP_LOOT_Aged Basilisk Tail|r
    .complete 14252,1 --Aged Basilisk Tail (15)
    .mob Gritjaw Basilisk
step
    .goto 66,60.98,29.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bizby|r
    .turnin 14252 >>Turn in Good Gold For Bad Tail
    .turnin 14254 >>Turn in Heavy Metal
    .turnin 14251 >>Turn in New Beginnings
    .target Bizby
step
    .goto 66,62.42,39.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .accept 5501 >>Accept Bone Collector
    .target Bibbly F'utzbuckle
step
    .goto 66,58.78,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thressa Amberglen|r
    .accept 14304 >>Accept Blood Theory
    .target Thressa Amberglen
step
    .goto 66,58.02,45.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brell Farglenn|r
    .target Brell Farglenn
    .home >>Set your Hearthstone to Brell Farglenn's inn
step
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .accept 14307 >>Accept Stubborn Winds
    .target Karnum Marshweaver
step
    .goto 66,58.59,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Ferrah|r
    .accept 14306 >>Accept Pulling Weeds
    .accept 14305 >>Accept A Time to Reap
    .target Botanist Ferrah
step
    #completewith Along40
    >>As you go: Pick up |cRXP_PICK_Aloe Thistle|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 14305,1 --Aloe Thistle (10)
step
    #label Along40
    #loop
    .goto 66,54.20,58.94,0
    .goto 66,54.20,58.94,40,0
    .goto 66,50.79,58.70,40,0
    >>Loot the |cRXP_PICK_Kodo Bones|r for |cRXP_LOOT_Kodo Bone|r
    .complete 5501,1 --Kodo Bone (10)
step
    #loop
    .goto 66,54.42,62.35,0
    .goto 66,54.42,62.35,40,0
    .goto 66,60.74,58.13,40,0
    .goto 66,64.16,57.16,40,0
    .goto 66,62.85,55.28,40,0
    >>Kill |cRXP_ENEMY_Uprooted Lashers|r
    >>Pick up |cRXP_PICK_Aloe Thistle|r from the ground
    .complete 14306,1 --Uprooted Lasher slain (7)
    .complete 14305,1 --Aloe Thistle (10)
    .mob Uprooted Lasher
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
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28549 >>Accept Warchief's Command: Southern Barrens!
    .accept 28494 >>Accept Warchief's Command: Northern Barrens!
    .accept 28548 >>Accept Warchief's Command: Desolace!
    .accept 28496 >>Accept Warchief's Command: Azshara!
    .accept 28493 >>Accept Warchief's Command: Ashenvale!
    .accept 28532 >>Accept Warchief's Command: Stonetalon Mountains!
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
    .zone 66 >>Leave Thunder Bluff for Desolace
    .zoneskip 66
step
    #completewith next
    .hs >>Hearth to Brell Farglenn's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 66,58.59,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Ferrah|r
    .turnin 14306 >>Turn in Pulling Weeds
    .turnin 14305 >>Turn in A Time to Reap
    .accept 14311 >>Accept Taking Part
    .target Botanist Ferrah
step
    #loop
    .goto 66,53.50,44.17,0
    .goto 66,53.50,44.17,40,0
    .goto 66,52.07,44.57,40,0
    .goto 66,51.32,45.86,40,0
    .goto 66,51.02,47.58,40,0
    .goto 66,51.34,49.20,40,0
    .goto 66,52.18,50.71,40,0
    >>Use the Cenarion Seeds next to 5 of the Fertile Mounds around the Cenarion Wildlands.
    .complete 14311,1 --Fertile Mound Bunny
    .target Fertile Mound Bunny
step
    .goto 66,62.42,39.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >>Turn in Bone Collector
    .target Bibbly F'utzbuckle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,54.77,8.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furien|r
    .turnin 28548 >>Turn in Warchief's Command: Desolace!
    .target Furien
step
    #loop
    .goto 66,52.11,4.39,0
    .goto 66,52.11,4.39,40,0
    .goto 66,50.24,4.53,40,0
    >>Kill |cRXP_ENEMY_Dread Swoops|r. Loot them for |cRXP_LOOT_Dread Swoop Feather|r
    .complete 14253,1 --Dread Swoop Feather (25)
    .mob Dread Swoop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,44.62,29.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerelia|r
    .accept 14255 >>Accept Ethel Rethor
    .target Cerelia
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,44.91,29.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorrem|r
    .accept 14223 >>Accept Peace of Mind
    .target Sorrem
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,53.49,33.00
    >>Kill |cRXP_ENEMY_Kohor|r
    .complete 14223,1 --Kohor slain (1)
    .mob Kohor
step
    #loop
    .goto 66,49.31,39.33,0
    .goto 66,49.31,39.33,40,0
    .goto 66,47.08,41.01,40,0
    .goto 66,44.25,43.30,40,0
    >>Kill |cRXP_ENEMY_Whirlwind Stormwalkers|r
    .complete 14307,1 --Whirlwind Stormwalker slain (5)
    .mob Whirlwind Stormwalker
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,44.91,29.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorrem|r
    .turnin 14223 >>Turn in Peace of Mind
    .accept 14225 >>Accept You'll Know It When You See It
    .target Sorrem
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 30 - 36 Desolace
#subweight -30
#name 32-36 Desolace: around Cenarion Researcher Korrah
--RouteBuilder:next
#next Zone Routes (Horde)\35-39 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Horde)\35-37 Dustwallow Marsh: around "Swamp Eye" Jarl;Zone Routes (Horde)\36-38 Feralas: around Orhan Ogreblade

step
    .goto 66,38.80,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Researcher Korrah|r
    .accept 14256 >>Accept The Emerging Threat
    .target Cenarion Researcher Korrah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,38.80,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Researcher Korrah|r
    .turnin 14255 >>Turn in Ethel Rethor
    .target Cenarion Researcher Korrah
    .isOnQuest 14255
step
    .goto 66,39.07,27.43
    >>Naga Forces Scouted
    .complete 14256,1 --Naga Forces Scouted
step
    .goto 66,38.80,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Researcher Korrah|r
    .turnin 14256 >>Turn in The Emerging Threat
    .accept 14257 >>Accept Slitherblade Slaughter
    .target Cenarion Researcher Korrah
step
    #loop
    .goto 66,37.19,25.98,0
    .goto 66,37.19,25.98,40,0
    .goto 66,39.40,22.31,40,0
    .goto 66,41.08,27.21,40,0
    .goto 66,38.02,34.25,40,0
    >>Kill |cRXP_ENEMY_Slitherblade Nagas|r. Loot them for |cRXP_LOOT_Slitherblade Bones|r
    >>Kill |cRXP_ENEMY_Slitherblade Warriors|r. Loot them for |cRXP_LOOT_Slitherblade Fin|r
    >>Kill |cRXP_ENEMY_Slitherblade Sorceress|r. Loot them for |cRXP_LOOT_Slitherblade Scale|r
    .complete 14257,1 --Slitherblade Bones (10)
    .complete 14257,3 --Slitherblade Fin (4)
    .complete 14257,2 --Slitherblade Scale (30)
    .mob Slitherblade Naga
    .mob Slitherblade Warrior
    .mob Slitherblade Sorceress
step
    .goto 66,38.80,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Researcher Korrah|r
    .turnin 14257 >>Turn in Slitherblade Slaughter
    .accept 14260 >>Accept Going Deep
    .target Cenarion Researcher Korrah
step
    .goto 66,38.80,26.95
    >>Use the Slitherblade Charm.
    .complete 14260,1 --Slitherblade Charm Credit [INTERNAL] [DO NOT LOCALIZE] (1)
step
    .goto 66,30.94,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valishj|r
    .turnin 14260 >>Turn in Going Deep
    .accept 14264 >>Accept Wetter Than Wet
    .target Valishj
step
    #loop
    .goto 66,34.68,22.78,0
    .goto 66,34.68,22.78,40,0
    .goto 66,31.82,20.72,40,0
    >>Interact with |cRXP_FRIENDLY_Servant of Neptulons|r
    .complete 14264,1 --Servant of Neptulon (5)
    .target Servant of Neptulon
step
    .goto 66,30.94,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valishj|r
    .turnin 14264 >>Turn in Wetter Than Wet
    .accept 14268 >>Accept Deep Impact
    .target Valishj
step
    .goto 66,38.80,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Researcher Korrah|r
    .turnin 14268 >>Turn in Deep Impact
    .accept 14282 >>Accept Mystery Solved
    .turnin 14282 >>Turn in Mystery Solved
    .accept 14292 >>Accept The Enemy of Our Enemy
    .target Cenarion Researcher Korrah
step
    .goto 66,29.09,8.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Hydronis|r
    .turnin 14292 >>Turn in The Enemy of Our Enemy
    .accept 14284 >>Accept A Revenant's Vengeance
    .target Lord Hydronis
step
    .goto 66,28.35,5.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valishj|r
    .complete 14284,1 --Valishj
    .target Valishj
step
    .goto 66,29.09,8.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Hydronis|r
    .turnin 14284 >>Turn in A Revenant's Vengeance
    .accept 14301 >>Accept Return and Report
    .target Lord Hydronis
step
    .goto 66,38.80,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Researcher Korrah|r
    .turnin 14301 >>Turn in Return and Report
    .accept 14302 >>Accept Official Assessment
    .target Cenarion Researcher Korrah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.95,28.99
    >>Open the |cRXP_PICK_Demonic Chest|r. Loot it for |cRXP_LOOT_Ancient Summoning Ritual|r
    .complete 14225,1 --Ancient Summoning Ritual (1)
    .isOnQuest 14225
step
    #completewith next
    .hs >>Hearth to Brell Farglenn's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 66,58.59,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Ferrah|r
    .turnin 14311 >>Turn in Taking Part
    .target Botanist Ferrah
    .isOnQuest 14311
step
    .goto 66,58.45,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren Darkwind|r
    .accept 14312 >>Accept An Introduction Is In Order
    .target Garren Darkwind
    .isQuestTurnedIn 14311 --any of: Taking Part
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14312 >>Turn in An Introduction Is In Order
    .target Khan Leh'Prah
    .isOnQuest 14312
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .accept 14314 >>Accept Breakout!
    .target Khan Leh'Prah
    .isQuestTurnedIn 14312 --any of: An Introduction Is In Order
step
    .goto 66,58.45,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren Darkwind|r
    .accept 14316 >>Accept Cenarion Property
    .target Garren Darkwind
    .isQuestTurnedIn 14312 --any of: An Introduction Is In Order
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .accept 14338 >>Accept Ghost Walker Post
    .target Karnum Marshweaver
    .isQuestTurnedIn 14311 --any of: Taking Part
step
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .turnin 14307 >>Turn in Stubborn Winds
    .target Karnum Marshweaver
    .isOnQuest 14307
step
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .turnin 14302 >>Turn in Official Assessment
    .target Karnum Marshweaver
step
    #loop
    .goto 66,53.51,43.85,0
    .goto 66,53.51,43.85,40,0
    .goto 66,51.39,44.36,40,0
    .goto 66,50.92,50.95,40,0
    .goto 66,52.53,48.92,40,0
    >>Kill |cRXP_ENEMY_Blood-filled Leeches|r. Loot them for |cRXP_LOOT_Blood-Filled Leech|r
    .complete 14304,1 --Blood-Filled Leech (10)
    .mob Blood-filled Leech
    .isOnQuest 14304
step
    .goto 66,52.57,54.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .turnin 1432 >>Turn in Alliance Relations
    .target Takata Steelblade
    .isOnQuest 1432
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.57,54.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .accept 1433 >>Accept Alliance Relations
    .target Takata Steelblade
    .isQuestTurnedIn 1432 --any of: Alliance Relations
    .xp <30,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.57,54.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .accept 1434 >>Accept Befouled by Satyr
    .target Takata Steelblade
    .isQuestTurnedIn 1432 --any of: Alliance Relations
    .xp <25,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.25,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .turnin 14338 >>Turn in Ghost Walker Post
    .target Maurin Bonesplitter
    .isOnQuest 14338
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.25,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .accept 14339 >>Accept Delivery Device
    .target Maurin Bonesplitter
    .isQuestTurnedIn 14338 --any of: Ghost Walker Post
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.25,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .turnin 1433 >>Turn in Alliance Relations
    .target Maurin Bonesplitter
    .isOnQuest 1433
step
    .goto 66,55.41,55.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .accept 14341 >>Accept Smeed's Harnesses
    .target Nataka Longhorn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,56.19,59.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .accept 14342 >>Accept Infernal Encroachment
    .accept 5581 >>Accept Portals of the Legion
    .target Felgur Twocuts
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,55.41,62.07,0
    .goto 66,55.41,62.07,40,0
    .goto 66,52.86,59.95,40,0
    .goto 66,48.29,60.20,40,0
    >>Kill |cRXP_ENEMY_Dying Kodos|r. Loot them for |cRXP_LOOT_Hollow Kodo Horn|r
    .complete 14339,1 --Hollow Kodo Horn (3)
    .mob Dying Kodo
    .isOnQuest 14339
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,53.59,79.84,0
    .goto 66,53.59,79.84,40,0
    .goto 66,50.91,81.31,40,0
    >>Kill |cRXP_ENEMY_Demon Portal Guardians|r
    >>Kill |cRXP_ENEMY_Lesser Infernals|r
    .complete 5581,1 --Demon Portal Guardian slain (8)
    .complete 14342,1 --Lesser Infernal slain (10)
    .mob Demon Portal Guardian
    .mob Lesser Infernal
step
    .goto 66,60.86,61.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 14341 >>Turn in Smeed's Harnesses
    .accept 5561 >>Accept Kodo Roundup
    .target Smeed Scrabblescrew
step
    .goto 66,72.40,58.22
    >>Kill |cRXP_ENEMY_Aged Kodos|r and |cRXP_ENEMY_Ancient Kodos|r
    .complete 5561,1 --Aged Kodo (3)
    .mob Aged Kodo
    .mob Ancient Kodo
step
    .goto 66,71.45,55.92
    >>Kill |cRXP_ENEMY_Magram Warden|r
    .complete 14314,1 --Magram Warden slain (1)
    .mob Magram Warden
    .isOnQuest 14314
step
    .goto 66,70.39,49.28
    >>Pick up |cRXP_PICK_Cenarion Supply Crate|r from the ground
    .complete 14316,1 --Cenarion Supply Crate (7)
    .isOnQuest 14316
step
    .goto 66,60.86,61.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5561 >>Turn in Kodo Roundup
    .target Smeed Scrabblescrew
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,56.19,59.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felgur Twocuts|r
    .turnin 14342 >>Turn in Infernal Encroachment
    .turnin 5581 >>Turn in Portals of the Legion
    .target Felgur Twocuts
step
    .goto 66,33.95,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melizza Brimbuzzle|r
    .accept 6132 >>Accept Get Me Out of Here!
    .target Melizza Brimbuzzle
step
    .goto 66,40.15,61.58
    >>Melizza Brimbuzzle escorted to safety
    .complete 6132,1 --Melizza Brimbuzzle escorted to safety
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,22.64,71.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'Lahii|r
    .accept 14334 >>Accept Blubbergut
    .target Mai'Lahii
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,22.45,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinar'Zillen|r
    .accept 5421 >>Accept Fish in a Bucket
    .target Jinar'Zillen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,22.40,75.12,0
    .goto 66,22.40,75.12,40,0
    .goto 66,18.88,77.19,40,0
    .goto 66,20.37,70.07,40,0
    >>Kill |cRXP_ENEMY_Drysnap Crawlers|r and |cRXP_ENEMY_Drysnap Pincers|r. Loot them for |cRXP_LOOT_Shellfish|r. It can also be picked up from |cRXP_PICK_Shellfish Trap|r on the ground
    .complete 5421,1 --Shellfish (5)
    .mob Drysnap Crawler
    .mob Drysnap Pincer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,22.45,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinar'Zillen|r
    .turnin 5421 >>Turn in Fish in a Bucket
    .target Jinar'Zillen
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,24.38,78.62
    >>Kill |cRXP_ENEMY_Blubbergut|r
    .complete 14334,1 --Blubbergut slain (1)
    .mob Blubbergut
step
    #completewith next
    .hs >>Hearth to Brell Farglenn's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 66,58.78,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thressa Amberglen|r
    .turnin 14304 >>Turn in Blood Theory
    .target Thressa Amberglen
    .isOnQuest 14304
step
    .goto 66,58.78,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thressa Amberglen|r
    .accept 14309 >>Accept Calming the Kodo
    .target Thressa Amberglen
    .isQuestTurnedIn 14304 --any of: Blood Theory
step
    .goto 66,58.45,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren Darkwind|r
    .turnin 14316 >>Turn in Cenarion Property
    .target Garren Darkwind
    .isOnQuest 14316
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14314 >>Turn in Breakout!
    .target Khan Leh'Prah
    .isOnQuest 14314
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .accept 14318 >>Accept Delicate Negotiations
    .target Khan Leh'Prah
    .isQuestTurnedIn 14314 --Breakout!
    .isQuestTurnedIn 14316 --Cenarion Property
step
    .goto 66,64.08,57.53
    >>Use the Kodo Concoction near 5 Enraged Kodos.
    .complete 14309,1 --Enraged Kodo (5)
    .target Enraged Kodo
    .isOnQuest 14309
step
    .goto 66,71.07,45.48
    >>Kill |cRXP_ENEMY_Spear of the Kolkar Khan|r
    .complete 14318,1 --Spear of the Kolkar Khan slain (1)
    .mob Spear of the Kolkar Khan
    .isOnQuest 14318
step
    .goto 66,73.34,41.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Kammah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14318 >>Turn in Delicate Negotiations
    .unitscan Khan Kammah
    .isOnQuest 14318
step
    .goto 66,73.34,41.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Kammah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14325 >>Accept Will Work For Food
    .unitscan Khan Kammah
    .isQuestTurnedIn 14318 --any of: Delicate Negotiations
step
    #loop
    .goto 66,66.48,49.41,0
    .goto 66,66.48,49.41,40,0
    .goto 66,63.34,48.87,40,0
    .goto 66,62.08,44.85,40,0
    >>Kill |cRXP_ENEMY_Revitalized Basilisks|r. Loot them for |cRXP_LOOT_Basilisk Flank|r
    .complete 14325,1 --Basilisk Flank (5)
    .mob Revitalized Basilisk
    .isOnQuest 14325
step
    .goto 66,73.34,41.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Kammah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14325 >>Turn in Will Work For Food
    .unitscan Khan Kammah
    .isOnQuest 14325
step
    .goto 66,73.34,41.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Kammah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14327 >>Accept My Word is My Bond
    .unitscan Khan Kammah
    .isQuestTurnedIn 14325 --any of: Will Work For Food
step
    .goto 66,70.38,32.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Embassador Thunk|r
    .turnin 14246 >>Turn in Early Adoption
    .target Cenarion Embassador Thunk
    .isOnQuest 14246
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,68.31,10.19,0
    .goto 66,68.31,10.19,40,0
    .goto 66,67.42,10.16,40,0
    .goto 66,66.34,11.57,40,0
    .goto 66,66.76,9.60,40,0
    .goto 66,66.26,9.94,40,0
    .goto 66,64.99,7.80,40,0
    .goto 66,64.26,9.03,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nijel's Point Defender|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14198 >>Accept Rider on the Storm
    .unitscan Nijel's Point Defender
    .isQuestTurnedIn 14196 --any of: Firestarter
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,67.28,10.29,0
    .goto 66,67.28,10.29,40,0
    .goto 66,64.60,8.57,40,0
    >>Kill |cRXP_ENEMY_Nijel's Point Defenders|r
    .complete 14198,1 --Nijel's Point Defender slain (40)
    .mob Nijel's Point Defender
    .isOnQuest 14198
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,68.07,9.89,0
    .goto 66,68.07,9.89,40,0
    .goto 66,66.50,11.96,40,0
    >>Kill |cRXP_ENEMY_Nijel's Point Merchants|r
    .complete 14198,2 --Nijel's Point Merchant slain (15)
    .mob Nijel's Point Merchant
    .isOnQuest 14198
step
    .goto 66,60.98,29.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bizby|r
    .turnin 14253 >>Turn in Fletch Me Some Plumage!
    .target Bizby
    .isOnQuest 14253
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,44.91,29.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorrem|r
    .turnin 14225 >>Turn in You'll Know It When You See It
    .target Sorrem
    .isOnQuest 14225
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,44.91,29.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorrem|r
    .accept 14227 >>Accept Putting Their Heads Together
    .target Sorrem
    .isQuestTurnedIn 14225 --any of: You'll Know It When You See It
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,44.62,29.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerelia|r
    .turnin 14198 >>Turn in Rider on the Storm
    .target Cerelia
    .isOnQuest 14198
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,53.68,29.52,0
    .goto 66,53.68,29.52,40,0
    .goto 66,54.73,27.09,40,0
    >>Open the |cRXP_PICK_Bleached Skullpile|r. Loot it for |cRXP_LOOT_Bleached Skull|r
    .collect 48953,1,14227,1 --Bleached Skull (1)
    .isOnQuest 14227
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,54.93,26.69
    >>Kill |cRXP_ENEMY_Nazargen|r
    .complete 14227,1 --Nazargen slain (1)
    .mob Nazargen
    .isOnQuest 14227
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,44.91,29.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorrem|r
    .turnin 14227 >>Turn in Putting Their Heads Together
    .target Sorrem
    .isOnQuest 14227
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.25,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .turnin 14339 >>Turn in Delivery Device
    .target Maurin Bonesplitter
    .isOnQuest 14339
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.25,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maurin Bonesplitter|r
    .accept 14343 >>Accept Maurin's Concoction
    .target Maurin Bonesplitter
    .isQuestTurnedIn 14339 --any of: Delivery Device
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .accept 14337 >>Accept Shadowprey Village
    .target Karnum Marshweaver
    .isQuestTurnedIn 14325 --any of: Will Work For Food
step
    .goto 66,58.78,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thressa Amberglen|r
    .turnin 14309 >>Turn in Calming the Kodo while you are here
    .isQuestComplete 14309
    .target Thressa Amberglen
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14327 >>Turn in My Word is My Bond while you are here
    .isQuestComplete 14327
    .target Khan Leh'Prah
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .turnin 14343 >>Turn in Maurin's Concoction
    .target Karnum Marshweaver
    .isOnQuest 14343
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,73.11,22.08,0
    .goto 66,73.11,22.08,40,0
    .goto 66,75.88,26.24,40,0
    >>Kill |cRXP_ENEMY_Hatefury Felsworns|r
    .complete 1434,2 --Hatefury Felsworn slain (7)
    .mob Hatefury Felsworn
    .isOnQuest 1434
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,77.57,24.72,0
    .goto 66,77.57,24.72,40,0
    .goto 66,74.54,21.81,40,0
    >>Kill |cRXP_ENEMY_Hatefury Betrayers|r
    .complete 1434,3 --Hatefury Betrayer slain (7)
    .mob Hatefury Betrayer
    .isOnQuest 1434
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,79.43,18.84
    >>Kill |cRXP_ENEMY_Hatefury Rogues|r
    .complete 1434,1 --Hatefury Rogue slain (7)
    .mob Hatefury Rogue
    .isOnQuest 1434
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,80.22,16.34,0
    .goto 66,80.22,16.34,40,0
    .goto 66,77.26,16.58,40,0
    .goto 66,74.55,18.88,40,0
    >>Kill |cRXP_ENEMY_Hatefury Hellcallers|r
    .complete 1434,4 --Hatefury Hellcaller slain (7)
    .mob Hatefury Hellcaller
    .isOnQuest 1434
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .accept 14346 >>Accept Cleansing Our Crevasse
    .target Karnum Marshweaver
    .isQuestTurnedIn 14343,14379 --any of: Maurin's Concoction, Rock Lobstrock!
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,57.60,47.70
    >>Kill |cRXP_ENEMY_Grimfeather|r
    .complete 14346,1 --Grimfeather slain (1)
    .mob Grimfeather
    .isOnQuest 14346
step
    .goto 66,58.78,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thressa Amberglen|r
    .turnin 14309 >>Turn in Calming the Kodo
    .target Thressa Amberglen
    .isOnQuest 14309
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14327 >>Turn in My Word is My Bond
    .target Khan Leh'Prah
    .isOnQuest 14327
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .accept 14328 >>Accept Three Princes
    .target Khan Leh'Prah
    .isQuestTurnedIn 14327 --any of: My Word is My Bond
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.57,54.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .turnin 1434 >>Turn in Befouled by Satyr
    .target Takata Steelblade
    .isOnQuest 1434
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,52.57,54.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .accept 1436 >>Accept Alliance Relations
    .target Takata Steelblade
    .isQuestTurnedIn 1434 --Befouled by Satyr
    .xp <30,1
step
    .goto 66,47.83,61.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .turnin 6132 >>Turn in Get Me Out of Here!
    .target Hornizz Brimbuzzle
step
    .goto 66,41.81,82.48
    >>Kill |cRXP_ENEMY_Rhoho|r
    .complete 14328,1 --Rhoho slain (1)
    .mob Rhoho
    .isOnQuest 14328
step
    .goto 66,35.50,81.44
    >>Kill |cRXP_ENEMY_Sherik|r
    .complete 14328,2 --Sherik slain (1)
    .mob Sherik
    .isOnQuest 14328
step
    .goto 66,35.62,92.35
    >>Kill |cRXP_ENEMY_Jorreth|r
    .complete 14328,3 --Jorreth slain (1)
    .mob Jorreth
    .isOnQuest 14328
step
    .goto 66,40.51,95.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Shodo|r
    .turnin 14328 >>Turn in Three Princes
    .target Khan Shodo
    .isOnQuest 14328
step
    .goto 66,40.51,95.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Shodo|r
    .accept 14329 >>Accept Not So Fast!
    .target Khan Shodo
    .isQuestTurnedIn 14328 --any of: Three Princes
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,22.64,71.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'Lahii|r
    .turnin 14337 >>Turn in Shadowprey Village
    .target Mai'Lahii
    .isOnQuest 14337
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,22.64,71.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'Lahii|r
    .turnin 14334 >>Turn in Blubbergut
    .target Mai'Lahii
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,25.82,68.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .accept 14335 >>Accept Chipping In
    .target Taiga Wisemane
step
    .goto 66,27.22,63.35
    >>Click the |cRXP_PICK_Broken Relic|r
    .accept 14333 >>Accept While You're Here
    .isQuestTurnedIn 14328 --any of: Three Princes
step
    #completewith Drop14330x1
    >>|cRXP_LOOT_Maraudine Prisoner Manifest|r can drop from |cRXP_ENEMY_Maraudine Mauler|r. Use it to start the quest if you get one
    .collect 38567,1,14330 --Maraudine Prisoner Manifest (1)
    .accept 14330 >>Accept Behind Closed Doors
    .use 38567
step
    #label Drop14330x1
    #loop
    .goto 66,30.72,59.37,0
    .goto 66,30.72,59.37,40,0
    .goto 66,30.49,57.09,40,0
    >>Kill |cRXP_ENEMY_Maraudine Maulers|r
    .complete 14329,1 --Maraudine Mauler slain (10)
    .mob Maraudine Mauler
    .isOnQuest 14329
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,34.70,45.56
    >>Interact with |cRXP_FRIENDLY_Sea Giants|r
    .complete 14346,3 --Sea Giant (3)
    .target Sea Giant
    .isOnQuest 14346
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,37.53,42.54,0
    .goto 66,37.53,42.54,40,0
    .goto 66,36.01,39.03,40,0
    .goto 66,32.50,40.38,40,0
    >>Interact with |cRXP_FRIENDLY_Slitherblade Sirens|r
    .complete 14346,2 --Slitherblade Siren (10)
    .target Slitherblade Siren
    .isOnQuest 14346
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 66,36.86,40.50,0
    .goto 66,36.86,40.50,40,0
    .goto 66,33.97,38.74,40,0
    .goto 66,34.73,44.51,40,0
    >>Interact with |cRXP_FRIENDLY_Slitherblade Invaders|r
    .complete 14346,4 --Slitherblade Invader (10)
    .target Slitherblade Invader
    .isOnQuest 14346
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,33.70,35.48
    >>Kill |cRXP_ENEMY_Drysnap Crawlers|r
    .complete 14335,2 --Drysnap Crawler slain (5)
    .mob Drysnap Crawler
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,31.84,25.97
    >>Kill |cRXP_ENEMY_Drysnap Pincers|r
    .complete 14335,1 --Drysnap Pincer slain (5)
    .mob Drysnap Pincer
step
    .goto 66,28.45,58.85
    >>Pick up |cRXP_PICK_Defiled Relic|r from the ground
    .collect 49194,1,14333,1 --Defiled Relic (1)
    .isOnQuest 14333
step
    .goto 66,27.29,62.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kherrah|r
    .turnin 14330 >>Turn in Behind Closed Doors
    .target Kherrah
    .isOnQuest 14330
step
    .goto 66,27.29,62.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kherrah|r
    .accept 14332 >>Accept Time For Change
    .target Kherrah
    .isQuestTurnedIn 14330 --any of: Behind Closed Doors
    .xp <30,1
step
    .goto 66,27.22,63.35
    >>You are to scour the Valley of Spears to find 6 Defiled Relics.
    .complete 14333,1 --Defiled Relic Bunny (1)
    .isOnQuest 14333
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,25.82,68.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga Wisemane|r
    .turnin 14335 >>Turn in Chipping In
    .target Taiga Wisemane
step
    .goto 66,40.51,95.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Shodo|r
    .turnin 14333 >>Turn in While You're Here
    .target Khan Shodo
    .isOnQuest 14333
step
    .goto 66,40.51,95.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Shodo|r
    .turnin 14329 >>Turn in Not So Fast!
    .target Khan Shodo
    .isOnQuest 14329
step
    .goto 66,72.28,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14332 >>Turn in Time For Change
    .target Khan Leh'Prah
    .isOnQuest 14332
step
    .goto 66,72.28,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .accept 14393 >>Accept Into the Fray!
    .target Khan Leh'Prah
    .isQuestTurnedIn 14332 --any of: Time For Change
    .xp <31,1
step
    #loop
    .goto 66,69.55,73.35,0
    .goto 66,69.55,73.35,40,0
    .goto 66,70.94,76.02,40,0
    >>Kill |cRXP_ENEMY_Burning Blade Warlocks|r
    .complete 14393,1 --Burning Blade Warlock slain (15)
    .mob Burning Blade Warlock
    .isOnQuest 14393
step
    .goto 66,69.06,76.43
    >>Kill |cRXP_ENEMY_Priestess Than'darissa|r
    .complete 14393,3 --Priestess Than'darissa slain (1)
    .mob Priestess Than'darissa
    .isOnQuest 14393
step
    #loop
    .goto 66,69.45,74.86,0
    .goto 66,69.45,74.86,40,0
    .goto 66,70.93,73.79,40,0
    >>Kill |cRXP_ENEMY_Doomguard Invaders|r
    .complete 14393,2 --Doomguard Invader slain (3)
    .mob Doomguard Invader
    .isOnQuest 14393
step
    .goto 66,72.28,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14393 >>Turn in Into the Fray!
    .target Khan Leh'Prah
    .isOnQuest 14393
step
    .goto 66,72.28,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .accept 14394 >>Accept Death to Agogridon
    .target Khan Leh'Prah
    .isQuestTurnedIn 14393 --any of: Into the Fray!
    .xp <31,1
step
    .goto 66,82.03,80.55
    >>Kill |cRXP_ENEMY_Agogridon|r
    .complete 14394,1 --Agogridon slain (1)
    .mob Agogridon
    .isOnQuest 14394
step
    .goto 66,82.34,80.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14394 >>Turn in Death to Agogridon
    .target Khan Leh'Prah
    .isOnQuest 14394
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,73.38,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Shodo|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26589 >>Accept The Wilds of Feralas
    .unitscan Khan Shodo
    .isQuestTurnedIn 14381 --Cleansing Our Crevasse
    .isQuestTurnedIn 14394 --Death to Agogridon
    .xp <31,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Brell Farglenn's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .turnin 14346 >>Turn in Cleansing Our Crevasse
    .target Karnum Marshweaver
    .isOnQuest 14346
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
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .turnin 27258 >>Turn in The Black Shield
    .target Mosarn
    .isOnQuest 27258
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,54.01,80.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mosarn|r
    .accept 27292 >>Accept Return to Krog
    .target Mosarn
    .isQuestTurnedIn 27258 --any of: The Black Shield
    .xp <34,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 88,42.22,57.77
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28554 >>Accept Warchief's Command: Dustwallow Marsh!
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
    +|cRXP_WARN_That is all of Desolace for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Warchief's Command: Stonetalon Mountains! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Azshara|r: Warchief's Command: Azshara! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Warchief's Command: Dustwallow Marsh!, Return to Krog << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: The Wilds of Feralas << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    >>|cRXP_FRIENDLY_Orgrimmar|r: Alliance Relations << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Silverpine Forest|r: Until Death Do Us Part << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Southern Barrens|r: Warchief's Command: Southern Barrens! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Warchief's Command: Northern Barrens!, Warchief's Command: Ashenvale! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_End of the Desolace route.|r
step
    +|cRXP_WARN_Suggested next zones at level 35|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.7 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.6 levels of quests, starting around "Swamp Eye" Jarl), |cRXP_FRIENDLY_Feralas|r (about 0.8 levels of quests, starting around Orhan Ogreblade). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
]])
