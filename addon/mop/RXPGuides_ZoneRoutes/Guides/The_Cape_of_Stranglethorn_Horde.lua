-- 30-35 The Cape of Stranglethorn: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 3 parts (from level 30, 35, 58).
-- Split into 3 guides, listed under "30 - 59 The Cape of Stranglethorn" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/The Cape of Stranglethorn.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 30 - 59 The Cape of Stranglethorn
#subweight -30
#name 30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts
--RouteBuilder:next
#next Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah;Zone Routes (Horde)\26-31 Arathi Highlands;Zone Routes (Horde)\25-30 Northern Stranglethorn

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
    .accept 9621 >>Accept Envoy to the Horde
    .unitscan Lor'themar Theron
    .isQuestTurnedIn 9328 --any of: Hero of the Sin'dorei
    .xp <15,1
step << BloodElf
    .goto 110,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lor'themar Theron|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 9627 >>Turn in Allegiance to the Horde
    .unitscan Lor'themar Theron
    .isOnQuest 9627
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28572 >>Accept Warchief's Command: Arathi Highlands!
    .accept 28560 >>Accept Warchief's Command: Ghostlands!
    .accept 28571 >>Accept Warchief's Command: Hillsbrad Foothills!
    .accept 28688 >>Accept Warchief's Command: Northern Stranglethorn Vale!
    .accept 28574 >>Accept Warchief's Command: The Hinterlands!
    .accept 28704 >>Accept Warchief's Command: The Cape of Stranglethorn!
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
    .zone 210 >>Leave Silvermoon City for The Cape of Stranglethorn
    .zoneskip 210
step
    .goto 210,35.14,29.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hizzle|r
    .fp >>Get the Hardwrench Hideaway Flight Path
    .target Hizzle
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,34.69,29.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 26404 >>Turn in Above My Pay Grade
    .target Sassy Hardwrench
    .isOnQuest 26404
step
    .goto 210,34.69,29.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 28704 >>Turn in Warchief's Command: The Cape of Stranglethorn! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 26450 >>Accept If They're Just Going to Leave Them Lying Around... << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 26489 >>Accept It's You!! << Goblin
    .accept 26487 >>Accept Akiris by the Bundle << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Sassy Hardwrench
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,33.65,29.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flem Gizzix|r
    .accept 26433 >>Accept The Holy Water of Clarity
    .target Flem Gizzix
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along19
    >>As you go: Pick up |cRXP_PICK_Naga Icon|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 26450,1 --Naga Icon (6)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along19
    .goto 210,43.98,48.90
    >>Open the |cRXP_PICK_The Holy Spring|r. Loot it for |cRXP_LOOT_The Holy Water of Clarity|r
    .complete 26433,1 --The Holy Water of Clarity (1)
step
    #loop
    .goto 210,38.26,45.15,0
    .goto 210,38.26,45.15,40,0
    .goto 210,38.82,49.92,40,0
    .goto 210,41.87,48.72,40,0
    >>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for |cRXP_LOOT_Akiris Reed|r << Goblin
    >>Pick up |cRXP_PICK_Naga Icon|r from the ground << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .complete 26489,1 << Goblin --Akiris Reed (6)
    .complete 26487,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Akiris Reed (6)
    .complete 26450,1 << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren --Naga Icon (6)
    .mob Naga Explorer << Goblin
step
    .goto 210,34.69,29.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 26450 >>Turn in If They're Just Going to Leave Them Lying Around... << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 26487 >>Turn in Akiris by the Bundle << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 26489 >>Turn in It's You!! << Goblin
    .accept 26493 >>Accept There's Somebody Out There Who Wants It << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Sassy Hardwrench
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,33.65,29.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flem Gizzix|r
    .turnin 26433 >>Turn in The Holy Water of Clarity
    .accept 26434 >>Accept Primal Reagents of Power
    .target Flem Gizzix
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 210,49.54,13.70,0
    .goto 210,49.54,13.70,40,0
    .goto 210,50.23,12.43,40,0
    >>Kill |cRXP_ENEMY_Stranglethorn Tigress|r. Loot them for |cRXP_LOOT_Supple Tigress Fur|r
    >>Kill |cRXP_ENEMY_Elder Shadowmaw Panthers|r. Loot them for |cRXP_LOOT_Velvety Panther Fur|r
    .complete 26434,1 --Supple Tigress Fur (4)
    .complete 26434,2 --Velvety Panther Fur (4)
    .mob Stranglethorn Tigress
    .mob Elder Shadowmaw Panther
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 210,65.73,28.20,0
    .goto 210,65.73,28.20,40,0
    .goto 210,67.43,24.83,40,0
    >>Kill |cRXP_ENEMY_Thrashtail Basilisks|r and |cRXP_ENEMY_Ironjaw Basilisks|r. Loot them for |cRXP_LOOT_Sassy's Secret Ingredient|r
    .complete 26493,1 --Sassy's Secret Ingredient (1)
    .mob Thrashtail Basilisk
    .mob Ironjaw Basilisk
step
    .xp 30 >>Grind to level 30 (Gurubashi Challenge: Free-For-All Arena Combat needs it)
step
    .goto 210,46.22,28.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stone Guard Towhide|r
    .accept 26451 >>Accept Gurubashi Challenge: Free-For-All Arena Combat
    .target Stone Guard Towhide
step
    .goto 210,46.18,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurubashi Arena Challenger|r
    .complete 26451,1 --Gurubashi Arena Challenger
    .target Gurubashi Arena Challenger
step
    .goto 210,46.22,28.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stone Guard Towhide|r
    .turnin 26451 >>Turn in Gurubashi Challenge: Free-For-All Arena Combat
    .target Stone Guard Towhide
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,34.69,29.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sassy Hardwrench|r
    .turnin 26493 >>Turn in There's Somebody Out There Who Wants It
    .accept 26494 >>Accept Mixmaster Jasper
    .accept 26495 >>Accept Chabal
    .target Sassy Hardwrench
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,33.65,29.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flem Gizzix|r
    .turnin 26434 >>Turn in Primal Reagents of Power while you are here
    .isQuestComplete 26434
    .target Flem Gizzix
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,35.19,27.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mixmaster Jasper|r
    .turnin 26494 >>Turn in Mixmaster Jasper
    .accept 26533 >>Accept Zanzil's Secret
    .target Mixmaster Jasper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,34.55,27.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chabal|r
    .turnin 26495 >>Turn in Chabal
    .accept 26550 >>Accept Backdoor Dealings
    .target Chabal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,34.55,27.95
    >>Place the Gurubashi Incense in front of the Totem of Hir'eek, then listen to Zanzil's plot.
    .complete 26550,1 --Bat Totem Credit (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along32
    >>As you go: Kill |cRXP_ENEMY_Zanzil Zombies|r, |cRXP_ENEMY_Zanzil Hunters|r, |cRXP_ENEMY_Zanzil Witch Doctors|r and |cRXP_ENEMY_Zanzil Nagas|r. Loot them for |cRXP_LOOT_Zanzil's Mixture|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26533,1 --Zanzil's Mixture (1)
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Witch Doctor
    .mob Zanzil Naga
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along32
    .goto 210,61.13,43.34
    >>Kill |cRXP_ENEMY_Zanzil the Outcast|r
    .complete 26550,2 --Zanzil the Outcast slain (1)
    .mob Zanzil the Outcast
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,53.30,30.40
    >>Kill |cRXP_ENEMY_Zanzil Zombies|r, |cRXP_ENEMY_Zanzil Hunters|r, |cRXP_ENEMY_Zanzil Witch Doctors|r and |cRXP_ENEMY_Zanzil Nagas|r. Loot them for |cRXP_LOOT_Zanzil's Mixture|r
    .complete 26533,1 --Zanzil's Mixture (1)
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Witch Doctor
    .mob Zanzil Naga
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,35.19,27.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mixmaster Jasper|r
    .turnin 26533 >>Turn in Zanzil's Secret
    .accept 26534 >>Accept Let's See What You've Got, Zanzil
    .target Mixmaster Jasper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,34.55,27.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chabal|r
    .turnin 26550 >>Turn in Backdoor Dealings
    .accept 26551 >>Accept Eliminate the Outcast
    .target Chabal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,33.65,29.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flem Gizzix|r
    .turnin 26434 >>Turn in Primal Reagents of Power
    .accept 26435 >>Accept I'm A Huge Liar and a Fraud
    .target Flem Gizzix
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,35.73,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Bartholomew Softbeard|r
    .complete 26534,3 --Captain Bartholomew Softbeard
    .target Captain Bartholomew Softbeard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,35.86,30.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgus|r
    .complete 26534,2 --Orgus
    .target Orgus
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,35.87,30.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gmurgl|r
    .complete 26534,1 --Gmurgl
    .target Gmurgl
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,35.19,27.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mixmaster Jasper|r
    .turnin 26534 >>Turn in Let's See What You've Got, Zanzil
    .accept 26535 >>Accept Recipe for Disaster
    .target Mixmaster Jasper
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,61.21,44.29
    >>Click the |cRXP_PICK_Zanzil's Portal|r
    .complete 26551,1 --Zanzil's Portal
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,61.21,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 26551 >>Turn in Eliminate the Outcast
    .target ?
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,61.21,44.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 26552 >>Accept Through the Troll Hole
    .target !
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 210,62.14,41.76,0
    .goto 210,62.14,41.76,40,0
    .goto 210,59.46,48.72,40,0
    >>Kill |cRXP_ENEMY_Zanzil Witch Doctor|r and loot |cRXP_LOOT_Zanzil's Formulation|r
    >>Click the |cRXP_PICK_Zanzil's Portal|r
    .complete 26535,1 --Zanzil's Formulation (1)
    .complete 26552,1 --Zanzil's Portal
    .mob Zanzil Witch Doctor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,34.55,27.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chabal|r
    .turnin 26555 >>Turn in High Priest Venoxis
    .target Chabal
    .isQuestComplete 26555
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,35.19,27.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mixmaster Jasper|r
    .turnin 26535 >>Turn in Recipe for Disaster
    .target Mixmaster Jasper
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .accept 26599 >>Accept The Captain's Chest
    .target Captain Hecklebury Smotts
step
    .goto 210,42.81,68.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Yance|r
    .target Kelsey Yance
    .home >>Set your Hearthstone to Kelsey Yance's inn
step
    .goto 210,41.80,72.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .accept 26597 >>Accept Stranglethorn Fever
    .target Fin Fizracket
step
    .goto 210,42.08,73.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 26593 >>Accept Scaring Shaky
    .target "Sea Wolf" MacKinley
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,42.04,73.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garley Lightrider|r
    .turnin 26435 >>Turn in I'm A Huge Liar and a Fraud
    .target Garley Lightrider
step << Rogue Cata
    .goto 210/0,509.39999,-14450.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian Strom|r
    .trainer >>Train your class spells << cata
    .target Ian Strom
step
    .goto 210,40.60,73.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gringer|r upstairs
    .fp >>Get the Booty Bay Flight Path
    .target Gringer
    .subzoneskip 35,1
step << Rogue
    .goto 210/0,408.10001,-14437.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gringer|r
    .vendor >>|cRXP_WARN_Stock up on poisons if needed|r
    .target Sly Garret
step
    .goto 210,43.01,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 836 >>Turn in Rescue OOX-09/HL!
    .target Oglethorpe Obnoticus
    .isQuestComplete 836
step
    .goto 210,43.01,72.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oglethorpe Obnoticus|r
    .turnin 25476 >>Turn in Rescue OOX-22/FE!
    .target Oglethorpe Obnoticus
    .isQuestComplete 25476
step
    .goto 210,54.26,65.41
    >>Click the |cRXP_PICK_Half-Buried Bottle|r
    .accept 26603 >>Accept Message in a Bottle
step
    .goto 210,54.74,65.85
    >>Kill |cRXP_ENEMY_Gorlash|r and loot |cRXP_LOOT_Smotts' Chest|r
    .complete 26599,1 --Smotts' Chest (1)
    .mob Gorlash
step
    .goto 210,52.99,50.22
    >>Kill |cRXP_ENEMY_Mokk the Savage|r and loot |cRXP_LOOT_Heart of Mokk|r
    .complete 26597,1 --Heart of Mokk (1)
    .mob Mokk the Savage
step
    #loop
    .goto 210,51.23,54.57,0
    .goto 210,51.23,54.57,40,0
    .goto 210,49.01,56.31,40,0
    >>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for |cRXP_LOOT_Mistvale Giblets|r
    .complete 26593,1 --Mistvale Giblets (5)
    .mob Elder Mistvale Gorilla
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 26599 >>Turn in The Captain's Chest
    .accept 26600 >>Accept A Giant's Feast
    .target Captain Hecklebury Smotts
step
    .goto 210,40.50,67.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
    .turnin 26593 >>Turn in Scaring Shaky
    .accept 26594 >>Accept Return to MacKinley
    .target "Shaky" Phillipe
step
    .goto 210,42.81,68.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Crate of Grade-E Meat|r from |cRXP_FRIENDLY_Kelsey Yance|r
    .complete 26600,1 --Crate of Grade-E Meat (1)
    .target Kelsey Yance
step
    .goto 210,41.80,72.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin Fizracket|r
    .turnin 26597 >>Turn in Stranglethorn Fever
    .target Fin Fizracket
step
    .goto 210,42.08,73.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 26594 >>Turn in Return to MacKinley
    .accept 26595 >>Accept Kill-Collect
    .target "Sea Wolf" MacKinley
step
    .goto 210,41.03,73.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBuy |cRXP_LOOT_Crate of Pupellyverbos Port|r from |cRXP_FRIENDLY_Whiskey Slim|r
    .complete 26600,2 --Crate of Pupellyverbos Port (1)
    .target Whiskey Slim
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 26600 >>Turn in A Giant's Feast
    .accept 26602 >>Accept A Dish Best Served Huge
    .target Captain Hecklebury Smotts
step
    .goto 210,50.75,79.65
    >>Kill |cRXP_ENEMY_Negolash|r
    .complete 26602,1 --Negolash slain (1)
    .mob Negolash
step
    .goto 210,56.84,53.58
    >>Kill |cRXP_ENEMY_Freewheelin' Juntz Fitztittle|r and loot |cRXP_LOOT_Fitztittle's Ratcheting Torque Wrench|r
    >>Kill |cRXP_ENEMY_Ephram "Midriff" Moonfall|r and loot |cRXP_LOOT_Ephram's Jeweled Mirror|r
    .complete 26595,2 --Fitztittle's Ratcheting Torque Wrench (1)
    .complete 26595,3 --Ephram's Jeweled Mirror (1)
    .mob Freewheelin' Juntz Fitztittle
    .mob Ephram "Midriff" Moonfall
step
    .goto 210,59.60,49.18
    >>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r and loot |cRXP_LOOT_Maury's Clubbed Foot|r
    .complete 26595,1 --Maury's Clubbed Foot (1)
    .mob Maury "Club Foot" Wilkins
step
    #completewith next
    .hs >>Hearth to Kelsey Yance's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 210,42.08,73.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 26595 >>Turn in Kill-Collect
    .target "Sea Wolf" MacKinley
step
    .goto 210,42.59,72.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .accept 26609 >>Accept The Bloodsail Buccaneers
    .target First Mate Crazz
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 26602 >>Turn in A Dish Best Served Huge
    .accept 26601 >>Accept Mok'rash the Cleaver
    .target Captain Hecklebury Smotts
step
    .goto 210,34.78,65.49
    >>Kill |cRXP_ENEMY_Mok'rash the Cleaver|r
    .complete 26601,1 --Mok'rash the Cleaver slain (1)
    .mob Mok'rash the Cleaver
step
    .goto 210,41.26,61.17
    >>Click the |cRXP_PICK_Bloodsail Correspondence|r
    .turnin 26609 >>Turn in The Bloodsail Buccaneers
    .accept 26610 >>Accept Bloodsail Treachery
step
    .goto 210,41.33,61.23
    >>Kill |cRXP_ENEMY_"Good-Boy" Bruce|r and loot |cRXP_LOOT_Weather-Beaten Coin|r. Use it to start the quest
    .collect 59143,1,26617 --Weather-Beaten Coin (1)
    .accept 26617 >>Accept An Old Sea Dog
    .use 59143
    .mob "Good-Boy" Bruce
step
    .goto 210,40.32,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Hecklebury Smotts|r
    .turnin 26601 >>Turn in Mok'rash the Cleaver
    .target Captain Hecklebury Smotts
step
    .goto 210,42.59,72.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .turnin 26610 >>Turn in Bloodsail Treachery
    .accept 26611 >>Accept The Baron Must Be Told
    .target First Mate Crazz
step
    .goto 210,41.09,73.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 26617 >>Turn in An Old Sea Dog
    .target Fleet Master Seahorn
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26611 >>Turn in The Baron Must Be Told
    .accept 26612 >>Accept Details of the Attack
    .target Baron Revilgaz
step
    .goto 210,40.68,73.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .accept 26613 >>Accept Up to Snuff
    .target Deeg
step
    .goto 210,43.39,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .accept 26614 >>Accept Keep An Eye Out
    .target Dizzy One-Eye
step
    #completewith Along80
    >>As you go: Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Snuff|r. Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26613,1 --Snuff (1)
    .complete 26614,1 --Dizzy's Eye (1)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step
    #label Along80
    #loop
    .goto 210,41.95,82.44,0
    .goto 210,41.95,82.44,40,0
    .goto 210,40.76,82.99,40,0
    >>Pick up |cRXP_PICK_Bloodsail Orders|r from the ground
    >>Pick up |cRXP_PICK_Bloodsail Charts|r from the ground
    >>Kill |cRXP_ENEMY_Bloodsail Elder Magus|r
    >>Kill |cRXP_ENEMY_Bloodsail Sea Dogs|r
    .complete 26612,4 --Bloodsail Orders (1)
    .complete 26612,3 --Bloodsail Charts (1)
    .complete 26612,2 --Bloodsail Elder Magus slain (8)
    .complete 26612,1 --Bloodsail Sea Dog slain (8)
    .mob Bloodsail Elder Magus
    .mob Bloodsail Sea Dog
step
    #loop
    .goto 210,36.25,38.28,0
    .goto 210,36.25,38.28,40,0
    .goto 210,34.11,35.11,40,0
    >>Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Snuff|r
    >>Kill |cRXP_ENEMY_Bloodsail Raiders|r, |cRXP_ENEMY_Bloodsail Mages|r, |cRXP_ENEMY_Bloodsail Swashbucklers|r and |cRXP_ENEMY_Bloodsail Warlocks|r. Loot them for |cRXP_LOOT_Dizzy's Eye|r
    .complete 26613,1 --Snuff (1)
    .complete 26614,1 --Dizzy's Eye (1)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 224,46.18,34.88
    >>Kill |cRXP_ENEMY_Mosh'Ogg Witch Doctor|r and loot |cRXP_LOOT_Disfigured Mosh'Ogg Hand|r. Use it to start the quest
    .collect 58491,1,26407 --Disfigured Mosh'Ogg Hand (1)
    .accept 26407 >>Accept Mosh'Ogg Handiwork
    .use 58491
    .mob Mosh'Ogg Witch Doctor
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 210 >>Leave Stranglethorn Vale for The Cape of Stranglethorn
    .zoneskip 210
step
    .goto 210,59.46,79.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 26603 >>Turn in Message in a Bottle
    .accept 26604 >>Accept Protecting Her Royal Highness Poobah
    .target Princess Poobah
step
    #loop
    .goto 210,57.37,81.30,0
    .goto 210,57.37,81.30,40,0
    .goto 210,56.73,86.79,40,0
    >>Kill |cRXP_ENEMY_Jaguero Stalkers|r
    .complete 26604,1 --Jaguero Stalker slain (5)
    .mob Jaguero Stalker
step
    .goto 210,59.46,79.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 26604 >>Turn in Protecting Her Royal Highness Poobah
    .accept 26605 >>Accept Grubby Little Paws
    .target Princess Poobah
step
    #loop
    .goto 210,63.13,79.77,0
    .goto 210,63.13,79.77,40,0
    .goto 210,63.13,77.10,40,0
    .goto 210,62.21,73.29,40,0
    >>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Tiara|r
    >>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Scepter|r
    >>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Slippers|r
    >>Kill |cRXP_ENEMY_Skymane Gorillas|r and |cRXP_ENEMY_Skymane Bonobos|r. Loot them for |cRXP_LOOT_Poobah's Diary|r
    .complete 26605,1 --Poobah's Tiara (1)
    .complete 26605,2 --Poobah's Scepter (1)
    .complete 26605,3 --Poobah's Slippers (1)
    .complete 26605,4 --Poobah's Diary (1)
    .mob Skymane Gorilla
    .mob Skymane Bonobo
step
    .goto 210,59.46,79.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 26605 >>Turn in Grubby Little Paws
    .accept 26606 >>Accept Mukla's Demise
    .target Princess Poobah
step
    .goto 210,62.54,83.28
    >>Kill |cRXP_ENEMY_King Mukla|r and loot |cRXP_LOOT_Shackle Key|r
    .complete 26606,1 --Shackle Key (1)
    .mob King Mukla
step
    .goto 210,59.46,79.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Poobah|r
    .turnin 26606 >>Turn in Mukla's Demise
    .target Princess Poobah
step
    .goto 210,40.68,73.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .turnin 26613 >>Turn in Up to Snuff
    .target Deeg
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26612 >>Turn in Details of the Attack
    .accept 26624 >>Accept Getting In With the Bloodsail
    .target Baron Revilgaz
step
    .goto 210,43.39,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .turnin 26614 >>Turn in Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto 210,43.83,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yancey Grillsen|r
    .turnin 26624 >>Turn in Getting In With the Bloodsail
    .target Yancey Grillsen
step
    +|cRXP_WARN_That is all of The Cape of Stranglethorn for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Arathi Highlands|r: Warchief's Command: Arathi Highlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Eversong Woods|r: Skymistress Gloaming << BloodElf
    >>|cRXP_FRIENDLY_Ghostlands|r: Warchief's Command: Ghostlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Hillsbrad Foothills|r: Warchief's Command: Hillsbrad Foothills! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Northern Stranglethorn|r: Mosh'Ogg Handiwork, Warchief's Command: Northern Stranglethorn Vale!, Through the Troll Hole << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
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
    >>|cRXP_FRIENDLY_The Hinterlands|r: Warchief's Command: The Hinterlands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << BloodElf
    >>|cRXP_FRIENDLY_Undercity|r: Envoy to the Horde << Orc/Undead/Tauren/Troll/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 32|r: |cRXP_FRIENDLY_Desolace|r (about 1.5 levels of quests, starting around Cenarion Researcher Korrah), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.8 levels of quests, starting around Galen Trollbane), |cRXP_FRIENDLY_Northern Stranglethorn|r (about 0.8 levels of quests, starting around Hemet Nesingwary Jr.). Completing this step loads the guide for Desolace --RouteBuilder:next
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    +|cRXP_WARN_The rest of The Cape of Stranglethorn is planned from level 35.|r Load its guide for level 35 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
#version 1
#group Zone Routes (Horde)
#subgroup 30 - 59 The Cape of Stranglethorn
#subweight -30
#name 35-36 The Cape of Stranglethorn
--RouteBuilder:next
#next Zone Routes (Horde)\35-39 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Horde)\35-37 Dustwallow Marsh: around "Swamp Eye" Jarl;Zone Routes (Horde)\32-36 Desolace: around Cenarion Researcher Korrah

step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 210,38.81,69.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gim'hila|r
    .accept 26696 >>Accept The Call of Kalimdor
    .target Gim'hila
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .zone 110 >>Travel to Silvermoon City
    .zoneskip 110
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 110,62.10,60.51
    >>Click the |cRXP_PICK_Warchief's Command Board|r
    .accept 28575 >>Accept Warchief's Command: Western Plaguelands!
step
    +|cRXP_WARN_That is all of The Cape of Stranglethorn for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Barrens|r: The Call of Kalimdor << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_Western Plaguelands|r: Warchief's Command: Western Plaguelands! << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 35|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.7 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.6 levels of quests, starting around "Swamp Eye" Jarl), |cRXP_FRIENDLY_Desolace|r (about 1.2 levels of quests, starting around Cenarion Researcher Korrah). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
step
    +|cRXP_WARN_The rest of The Cape of Stranglethorn is planned from level 58.|r Load its guide for level 58 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#subgroup 30 - 59 The Cape of Stranglethorn
#subweight -30
#name 58-59 The Cape of Stranglethorn: around Captain Keelhaul
--RouteBuilder:next
#next Zone Routes (Horde)\55-56 Silithus;Zone Routes (Horde)\53-55 Un'Goro Crater: around Mor'vek

step
    .goto 210,43.83,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yancey Grillsen|r
    .accept 26629 >>Accept Seeing Where Your Loyalties Lie
    .target Yancey Grillsen
    .isQuestTurnedIn 26624 --any of: Getting In With the Bloodsail
step
    .goto 210,41.53,72.95
    >>Kill |cRXP_ENEMY_Fleet Master Seahorn|r and loot |cRXP_LOOT_Head of Fleet Master Seahorn|r
    .complete 26629,1 --Head of Fleet Master Seahorn (1)
    .mob Fleet Master Seahorn
    .isOnQuest 26629
step
    .goto 210,43.83,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yancey Grillsen|r
    .turnin 26629 >>Turn in Seeing Where Your Loyalties Lie
    .target Yancey Grillsen
    .isOnQuest 26629
step
    .goto 210,43.83,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yancey Grillsen|r
    .accept 26631 >>Accept Your First Day as a Pirate
    .target Yancey Grillsen
    .isQuestTurnedIn 26629 --any of: Seeing Where Your Loyalties Lie
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .turnin 26631 >>Turn in Your First Day as a Pirate
    .target Captain Keelhaul
    .isOnQuest 26631
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .accept 26633 >>Accept Swabbing Duty
    .target Captain Keelhaul
    .isQuestTurnedIn 26631 --any of: Your First Day as a Pirate
step
    .goto 210,44.67,92.92
    >>Pick up a Swabbie's Mop on the deck of the Riptide, then keep the deck clean for 2 minutes.
    .complete 26633,1 --Deck Stain
    .target Deck Stain
    .isOnQuest 26633
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .turnin 26633 >>Turn in Swabbing Duty
    .target Captain Keelhaul
    .isOnQuest 26633
step
    .goto 210,44.43,92.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Pretty Boy" Duncan|r
    .accept 26635 >>Accept Cannonball Swim
    .target "Pretty Boy" Duncan
    .isQuestTurnedIn 26631 --any of: Your First Day as a Pirate
step
    .goto 210,44.45,91.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garr Salthoof|r
    .accept 26634 >>Accept The Bane of Many A Pirate
    .target Garr Salthoof
    .isQuestTurnedIn 26631 --any of: Your First Day as a Pirate
step
    .goto 210,41.10,82.51
    >>Loot the |cRXP_PICK_Lime Crates|r for |cRXP_LOOT_Bushel of Limes|r
    .complete 26634,1 --Bushel of Limes (5)
    .isOnQuest 26634
step
    .goto 210,40.81,82.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cowardly Crosby|r
    .target Cowardly Crosby
    .home >>Set your Hearthstone to Cowardly Crosby's inn
step
    #loop
    .goto 210,47.59,94.95,0
    .goto 210,47.59,94.95,40,0
    .goto 210,50.52,95.29,40,0
    .goto 210,43.57,97.98,40,0
    >>Pick up |cRXP_PICK_Bloodsail Cannonball|r from the ground
    .complete 26635,1 --Bloodsail Cannonball (6)
    .isOnQuest 26635
step
    .goto 210,44.43,92.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Pretty Boy" Duncan|r
    .turnin 26635 >>Turn in Cannonball Swim
    .target "Pretty Boy" Duncan
    .isOnQuest 26635
step
    .goto 210,44.45,91.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garr Salthoof|r
    .turnin 26634 >>Turn in The Bane of Many A Pirate
    .target Garr Salthoof
    .isOnQuest 26634
step
    .goto 210,44.41,91.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelhaul|r
    .accept 26644 >>Accept Attracting Attention
    .target Captain Keelhaul
    .isQuestTurnedIn 26633 --Swabbing Duty
    .isQuestTurnedIn 26634 --The Bane of Many A Pirate
    .isQuestTurnedIn 26635 --Cannonball Swim
step
    .goto 210,46.70,95.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Firallon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26644 >>Turn in Attracting Attention
    .unitscan Fleet Master Firallon
    .isOnQuest 26644
step
    .goto 210,46.67,92.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Dead-Eye" Drederick McGumm|r
    .accept 26648 >>Accept Our Mortal Enemies
    .target "Dead-Eye" Drederick McGumm
    .isQuestTurnedIn 26644 --any of: Attracting Attention
step
    .goto 210,46.58,94.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironpatch|r
    .accept 26647 >>Accept Ol' Blasty
    .target Ironpatch
    .isQuestTurnedIn 26644 --any of: Attracting Attention
step
    .goto 210,48.76,93.12
    >>Kill |cRXP_ENEMY_Smilin' Timmy Sticks|r
    .complete 26647,1 --Smilin' Timmy Sticks slain (1)
    .mob Smilin' Timmy Sticks
    .isOnQuest 26647
step
    .goto 210,46.58,94.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironpatch|r
    .turnin 26647 >>Turn in Ol' Blasty
    .target Ironpatch
    .isOnQuest 26647
step
    .goto 210,46.58,94.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironpatch|r
    .accept 26649 >>Accept Drive-By Piracy
    .target Ironpatch
    .isQuestTurnedIn 26647 --any of: Ol' Blasty
step
    .goto 210,58.14,67.47
    >>Kill |cRXP_ENEMY_Venture Co. Oil Workers|r
    .complete 26649,1 --Venture Co. Oil Worker slain (75)
    .mob Venture Co. Oil Worker
    .isOnQuest 26649
step
    .goto 210,46.58,94.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ironpatch|r
    .turnin 26649 >>Turn in Drive-By Piracy
    .target Ironpatch
    .isOnQuest 26649
step
    #loop
    .goto 210,58.71,85.58,0
    .goto 210,58.71,85.58,40,0
    .goto 210,61.65,87.69,40,0
    .goto 210,63.22,81.91,40,0
    >>Kill |cRXP_ENEMY_Ninjas|r
    .complete 26648,1 --Ninja slain (15)
    .mob Ninja
    .isOnQuest 26648
step
    .goto 210,46.67,92.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Dead-Eye" Drederick McGumm|r
    .turnin 26648 >>Turn in Our Mortal Enemies
    .target "Dead-Eye" Drederick McGumm
    .isOnQuest 26648
step
    .goto 210,46.70,95.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Firallon|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26650 >>Accept The Damsel's Luck
    .unitscan Fleet Master Firallon
    .isQuestTurnedIn 26649 --any of: Drive-By Piracy
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .turnin 26650 >>Turn in The Damsel's Luck
    .isOnQuest 26650
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .accept 26662 >>Accept The Brashtide Crew
    .accept 26663 >>Accept Sinking From Within
    .accept 26664 >>Accept Making Mutiny
    .isQuestTurnedIn 26650 --any of: The Damsel's Luck
step
    .goto 210,51.27,91.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Long John Copper|r
    .complete 26662,1 --Long John Copper
    .target Long John Copper
    .isOnQuest 26662
step
    .goto 210,50.56,91.52
    >>Click the |cRXP_PICK_Grog Barrel|r
    .complete 26663,1 --Grog Barrel
    .isOnQuest 26663
step
    .goto 210,46.74,94.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Enormous Shawn Stooker|r
    .complete 26662,2 --Enormous Shawn Stooker
    .target Enormous Shawn Stooker
    .isOnQuest 26662
step
    .goto 210,46.82,93.74
    >>Click the |cRXP_PICK_Gunpowder Barrel|r
    .complete 26663,2 --Gunpowder Barrel
    .isOnQuest 26663
step
    .goto 210,44.45,93.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wailing Mary Smitts|r
    .complete 26662,3 --Wailing Mary Smitts
    .target Wailing Mary Smitts
    .isOnQuest 26662
step
    .goto 210,44.65,92.76
    >>Click the |cRXP_PICK_Cannonball Crate|r
    .complete 26663,3 --Cannonball Crate
    .isOnQuest 26663
step
    .goto 210,46.62,94.06
    >>Kill |cRXP_ENEMY_Bloodsail Corsairs|r
    .complete 26664,1 --Bloodsail Corsair slain (9)
    .mob Bloodsail Corsair
    .isOnQuest 26664
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .turnin 26663 >>Turn in Sinking From Within
    .isOnQuest 26663
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .turnin 26664 >>Turn in Making Mutiny
    .isOnQuest 26664
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .turnin 26662 >>Turn in The Brashtide Crew
    .isOnQuest 26662
step
    .goto 210,50.24,91.46
    >>Click the |cRXP_PICK_Captain Stillwater's Charts|r
    .accept 26665 >>Accept Call of Booty
    .isQuestTurnedIn 26662 --The Brashtide Crew
    .isQuestTurnedIn 26663 --Sinking From Within
    .isQuestTurnedIn 26664 --Making Mutiny
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26665 >>Turn in Call of Booty
    .target Baron Revilgaz
    .isOnQuest 26665
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 26678 >>Accept Doublerum
    .target Baron Revilgaz
    .isQuestTurnedIn 26665 --any of: Call of Booty
step
    .goto 210,40.63,73.23
    >>Click the |cRXP_PICK_Barrel of Doublerum|r
    .turnin 26678 >>Turn in Doublerum
    .isOnQuest 26678
step
    .goto 210,40.63,73.23
    >>Click the |cRXP_PICK_Barrel of Doublerum|r
    .accept 26679 >>Accept Return to Revilgaz
    .isQuestTurnedIn 26678 --any of: Doublerum
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26679 >>Turn in Return to Revilgaz
    .target Baron Revilgaz
    .isOnQuest 26679
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 26695 >>Accept Prepare for Takeoff
    .accept 26698 >>Accept Seeking Seahorn
    .target Baron Revilgaz
    .isQuestTurnedIn 26679 --any of: Return to Revilgaz
step
    .goto 210,41.09,73.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 26698 >>Turn in Seeking Seahorn
    .target Fleet Master Seahorn
    .isOnQuest 26698
step
    .goto 210,41.09,73.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .accept 26699 >>Accept Turning the Brashtide
    .accept 26700 >>Accept The Damsel's (Bad) Luck
    .target Fleet Master Seahorn
    .isQuestTurnedIn 26698 --any of: Seeking Seahorn
step
    .goto 210,42.56,69.12
    >>Pick up |cRXP_PICK_Narkk's Handbombs|r from the ground
    .complete 26695,1 --Narkk's Handbombs (1)
    .isOnQuest 26695
step
    #loop
    .goto 210,42.88,69.67,0
    .goto 210,42.88,69.67,40,0
    .goto 210,42.21,72.94,40,0
    >>Kill |cRXP_ENEMY_Brashtide Raiders|r
    .complete 26699,1 --Brashtide Raider slain (10)
    .mob Brashtide Raider
    .isOnQuest 26699
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26695 >>Turn in Prepare for Takeoff while you are here
    .isQuestComplete 26695
    .target Baron Revilgaz
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26699 >>Turn in Turning the Brashtide while you are here
    .isQuestComplete 26699
    .target Baron Revilgaz
step
    .goto 210,41.36,71.28
    >>Kill |cRXP_ENEMY_Bloodsail Corsairs|r
    .complete 26700,1 --Bloodsail Corsair slain (8)
    .mob Bloodsail Corsair
    .isOnQuest 26700
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26700 >>Turn in The Damsel's (Bad) Luck while you are here
    .isQuestComplete 26700
    .target Baron Revilgaz
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26695 >>Turn in Prepare for Takeoff
    .target Baron Revilgaz
    .isOnQuest 26695
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26699 >>Turn in Turning the Brashtide
    .target Baron Revilgaz
    .isOnQuest 26699
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26700 >>Turn in The Damsel's (Bad) Luck
    .target Baron Revilgaz
    .isOnQuest 26700
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 26697 >>Accept The Final Voyage of the Brashtide
    .target Baron Revilgaz
    .isQuestTurnedIn 26695 --any of: Prepare for Takeoff
step
    #loop
    .goto 210,37.70,68.73,0
    .goto 210,37.70,68.73,40,0
    .goto 210,39.04,66.48,40,0
    >>Kill |cRXP_ENEMY_Brashtide Attack Boats|r
    .complete 26697,2 --Brashtide Attack Boat slain (6)
    .mob Brashtide Attack Boat
    .isOnQuest 26697
step
    #loop
    .goto 210,38.68,66.68,0
    .goto 210,38.68,66.68,40,0
    .goto 210,37.67,68.66,40,0
    >>Kill |cRXP_ENEMY_Brashtide Crewmans|r
    .complete 26697,1 --Brashtide Crewman slain (8)
    .mob Brashtide Crewman
    .isOnQuest 26697
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26697 >>Turn in The Final Voyage of the Brashtide
    .target Baron Revilgaz
    .isOnQuest 26697
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 26703 >>Accept Bloodsail's End
    .target Baron Revilgaz
    .isQuestTurnedIn 26697 --The Final Voyage of the Brashtide
    .isQuestTurnedIn 26699 --Turning the Brashtide
    .isQuestTurnedIn 26700 --The Damsel's (Bad) Luck
step
    .goto 210,35.66,66.74
    >>Kill |cRXP_ENEMY_Fleet Master Firallon|r
    .complete 26703,1 --Fleet Master Firallon slain (1)
    .mob Fleet Master Firallon
    .isOnQuest 26703
step
    .goto 210,41.18,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 26703 >>Turn in Bloodsail's End
    .target Baron Revilgaz
    .isOnQuest 26703
step
    +|cRXP_WARN_End of the The Cape of Stranglethorn route.|r
step
    +|cRXP_WARN_Suggested next zones at level 58|r: |cRXP_FRIENDLY_Silithus|r (about 0.8 levels of quests, starting around Huum Wildmane), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.7 levels of quests, starting around Mor'vek). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
