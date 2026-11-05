-- 6-12 Durotar: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Durotar.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 6-12 Durotar

step << Orc Warrior/Orc Hunter/Orc Rogue/Orc Priest/Orc Shaman/Orc Mage/Orc Warlock/Orc Monk/Orc Druid/Undead Warrior/Undead Hunter/Undead Rogue/Undead Priest/Undead Shaman/Undead Mage/Undead Warlock/Undead Monk/Undead Druid/Tauren Warrior/Tauren Hunter/Tauren Rogue/Tauren Priest/Tauren Shaman/Tauren Mage/Tauren Warlock/Tauren Monk/Tauren Druid/Troll Warrior/Troll Hunter/Troll Rogue/Troll Priest/Troll Shaman/Troll Mage/Troll Warlock/Troll Monk/Troll Druid/BloodElf Warrior/BloodElf Hunter/BloodElf Rogue/BloodElf Priest/BloodElf Shaman/BloodElf Mage/BloodElf Warlock/BloodElf Monk/BloodElf Druid/Goblin Warrior/Goblin Hunter/Goblin Rogue/Goblin Priest/Goblin Shaman/Goblin Mage/Goblin Warlock/Goblin Monk/Goblin Druid/Pandaren Warrior/Pandaren Hunter/Pandaren Rogue/Pandaren Priest/Pandaren Shaman/Pandaren Mage/Pandaren Warlock/Pandaren Monk/Pandaren Druid
    .goto 1,55.95,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 25073 >>Turn in Sen'jin Village
    .target Master Gadrin
    .isOnQuest 25073
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.95,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 25133 >>Turn in Report to Sen'jin Village
    .target Master Gadrin
    .isOnQuest 25133
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.95,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
    .accept 25167 >>Accept Breaking the Chain
    .target Master Gadrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.70,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bom'bay|r
    .accept 25170 >>Accept Cleaning Up the Coastline
    .target Bom'bay
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,51.74,80.29,0
    .goto 1,51.74,80.29,40,0
    .goto 1,48.20,80.02,40,0
    >>Kill |cRXP_ENEMY_Northwatch Supply Crates|r
    >>Kill |cRXP_ENEMY_Northwatch Lugs|r
    .complete 25167,1 --Northwatch Supply Crate slain (3)
    .complete 25167,2 --Northwatch Lug (10)
    .mob Northwatch Supply Crate
    .mob Northwatch Lug
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,58.16,15.30,0
    .goto 1,58.16,15.30,40,0
    .goto 1,57.39,12.19,40,0
    .goto 1,57.72,8.32,40,0
    >>Kill |cRXP_ENEMY_Surf Crawlers|r, |cRXP_ENEMY_Mature Surf Crawlers|r and |cRXP_ENEMY_Encrusted Surf Crawlers|r. Loot them for |cRXP_LOOT_Crawler Mucus|r
    .complete 25170,1 --Crawler Mucus (5)
    .mob Surf Crawler
    .mob Mature Surf Crawler
    .mob Encrusted Surf Crawler
step << Goblin
    .goto 1,57.65,9.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Loyalist|r
    .turnin 25266 >>Turn in Warchief's Emissary
    .target Kor'kron Loyalist
    .isOnQuest 25266
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.70,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bom'bay|r
    .turnin 25170 >>Turn in Cleaning Up the Coastline
    .accept 25165 >>Accept Never Trust a Big Barb and a Smile
    .target Bom'bay
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.95,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 25167 >>Turn in Breaking the Chain
    .accept 25168 >>Accept Purge the Valley
    .target Master Gadrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.42,75.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar Prowltusk|r
    .accept 25169 >>Accept The War of Northwatch Aggression
    .target Lar Prowltusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,56.59,71.22,0
    .goto 1,56.59,71.22,40,0
    .goto 1,54.57,70.59,40,0
    >>Interact with |cRXP_FRIENDLY_Clattering Scorpids|r
    .complete 25165,1 --Clattering Scorpid (6)
    .target Clattering Scorpid
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_Northwatch Infantrymans|r, |cRXP_ENEMY_Northwatch Rangers|r and |cRXP_ENEMY_Northwatch Troops|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25168,1 --Northwatch Infantryman (12)
    .mob Northwatch Infantryman
    .mob Northwatch Ranger
    .mob Northwatch Troop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along11
    .goto 1,47.95,77.50
    >>Click the |cRXP_PICK_Attack Plan: Valley of Trials|r
    >>Click the |cRXP_PICK_Attack Plan: Sen'jin Village|r
    .complete 25169,1 --Attack Plan: Valley of Trials
    .complete 25169,2 --Attack Plan: Sen'jin Village
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,50.05,79.96,0
    .goto 1,50.05,79.96,40,0
    .goto 1,46.38,79.76,40,0
    >>Click the |cRXP_PICK_Attack Plan: Orgrimmar|r
    >>Kill |cRXP_ENEMY_Northwatch Infantrymans|r, |cRXP_ENEMY_Northwatch Rangers|r and |cRXP_ENEMY_Northwatch Troops|r
    .complete 25169,3 --Attack Plan: Orgrimmar
    .complete 25168,1 --Northwatch Infantryman (12)
    .mob Northwatch Infantryman
    .mob Northwatch Ranger
    .mob Northwatch Troop
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.70,75.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bom'bay|r
    .turnin 25165 >>Turn in Never Trust a Big Barb and a Smile
    .target Bom'bay
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.42,75.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar Prowltusk|r
    .turnin 25169 >>Turn in The War of Northwatch Aggression
    .target Lar Prowltusk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,55.95,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 25168 >>Turn in Purge the Valley
    .accept 25171 >>Accept Riding On
    .target Master Gadrin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 25171 >>Turn in Riding On
    .accept 25173 >>Accept From Bad to Worse
    .target Gar'Thok
step
    .goto 1,52.00,40.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .target Uhgar
    .home >>Set your Hearthstone to Uhgar's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,53.11,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gail Nozzywig|r
    .accept 25176 >>Accept Exploiting the Situation
    .target Gail Nozzywig
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,59.03,55.60,0
    .goto 1,59.03,55.60,40,0
    .goto 1,59.55,58.48,40,0
    .goto 1,57.33,57.88,40,0
    >>Kill |cRXP_ENEMY_Lieutenant Palliter|r
    >>Pick up |cRXP_PICK_Kul Tiras Treasure|r from the ground
    >>Kill |cRXP_ENEMY_Northwatch Marines|r
    >>Kill |cRXP_ENEMY_Northwatch Sharpshooters|r
    .complete 25173,3 --Lieutenant Palliter slain (1)
    .complete 25176,1 --Kul Tiras Treasure (6)
    .complete 25173,1 --Northwatch Marine slain (6)
    .complete 25173,2 --Northwatch Sharpshooter slain (6)
    .mob Lieutenant Palliter
    .mob Northwatch Marine
    .mob Northwatch Sharpshooter
step << Goblin
    #completewith next
    .zone 85 >>Travel to Orgrimmar
    .zoneskip 85
step << Goblin
    .goto 85,49.21,72.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .accept 26803 >>Accept Missing Reports
    .target Eitrigg
step << Goblin
    .goto 85,49.66,59.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .turnin 26803 >>Turn in Missing Reports
    .accept 26804 >>Accept Flight to Razor Hill
    .target Doras
step << Goblin
    #completewith next
    .zone 1 >>Leave Orgrimmar for Durotar
    .zoneskip 1
step
    .goto 1,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 25173 >>Turn in From Bad to Worse << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .turnin 26804 >>Turn in Flight to Razor Hill << Goblin
    .accept 25177 >>Accept Storming the Beaches << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .accept 26806 >>Accept Reports to Orgrimmar << Goblin
    .target Gar'Thok
step << Orc/Troll
    .goto 1,50.73,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimtak|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target Grimtak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,53.11,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gail Nozzywig|r
    .turnin 25176 >>Turn in Exploiting the Situation
    .accept 25178 >>Accept Shipwreck Searching
    .target Gail Nozzywig
step
    .goto 1,53.09,43.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burok|r
    .turnin 6365 >>Turn in Meats to Orgrimmar << Orc/Troll
    .turnin 26806 >>Turn in Reports to Orgrimmar << Goblin
    .accept 6384 >>Accept Ride to Orgrimmar << Orc/Troll
    .accept 26807 >>Accept Return to Eitrigg << Goblin
    .target Burok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .accept 25232 >>Accept The Burning Blade
    .target Orgnil Soulscar
    .xp <8,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along28
    >>As you go: Kill |cRXP_ENEMY_Foaming Sea Elementals|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25177,1 --Foaming Sea Elemental slain (11)
    .mob Foaming Sea Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along26
    >>As you go: Loot the |cRXP_PICK_Gnomish Toolboxes|r for |cRXP_LOOT_Gnomish Tools|r. |cRXP_WARN_Anything left is finished later|r
    .complete 25178,1 --Gnomish Tools (4)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along26
    #loop
    .goto 1,59.70,41.54,0
    .goto 1,59.70,41.54,40,0
    .goto 1,59.02,43.38,40,0
    .goto 1,57.91,45.13,40,0
    .goto 1,59.83,45.74,40,0
    .goto 1,58.97,46.60,40,0
    .goto 1,57.42,48.01,40,0
    .goto 1,57.10,48.47,40,0
    .goto 1,58.11,50.40,40,0
    .goto 1,58.40,51.75,40,0
    .goto 1,60.14,52.82,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Injured Razor Hill Grunt|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 25179 >>Accept Loss Reduction
    .unitscan Injured Razor Hill Grunt
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,57.32,49.57,0
    .goto 1,57.32,49.57,40,0
    .goto 1,58.41,45.08,40,0
    .goto 1,58.35,41.32,40,0
    >>Loot the |cRXP_PICK_Gnomish Toolboxes|r for |cRXP_LOOT_Gnomish Tools|r
    .complete 25178,1 --Gnomish Tools (4)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along28
    #loop
    .goto 1,58.97,46.60,0
    .goto 1,58.97,46.60,40,0
    .goto 1,59.02,43.38,40,0
    >>Interact with |cRXP_FRIENDLY_Injured Razor Hill Grunts|r
    .complete 25179,1 --Injured Razor Hill Grunt (4)
    .target Injured Razor Hill Grunt
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,59.76,45.29,0
    .goto 1,59.76,45.29,40,0
    .goto 1,60.43,42.60,40,0
    .goto 1,57.63,46.38,40,0
    >>Kill |cRXP_ENEMY_Foaming Sea Elementals|r
    .complete 25177,1 --Foaming Sea Elemental slain (11)
    .mob Foaming Sea Elemental
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,53.11,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gail Nozzywig|r
    .turnin 25178 >>Turn in Shipwreck Searching
    .accept 25227 >>Accept Thonk
    .target Gail Nozzywig
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 25177 >>Turn in Storming the Beaches
    .turnin 25179 >>Turn in Loss Reduction
    .target Gar'Thok
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .accept 25232 >>Accept The Burning Blade
    .target Orgnil Soulscar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,49.59,40.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonk|r
    .turnin 25227 >>Turn in Thonk
    .accept 25187 >>Accept Lost in the Floods
    .target Thonk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,49.53,40.33
    >>Use Thonk's Spyglass to search for survivors in Southfury Watershed.
    .complete 25187,1 --Durotar Telescope Quest KC 1
    .target Durotar Telescope Quest KC 1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,49.53,40.33
    >>Use Thonk's Spyglass to search for survivors in Southfury Watershed.
    .complete 25187,2 --Durotar Telescope Quest KC 2
    .target Durotar Telescope Quest KC 2
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,49.53,40.33
    >>Use Thonk's Spyglass to search for survivors in Southfury Watershed.
    .complete 25187,3 --Durotar Telescope Quest KC 3
    .target Durotar Telescope Quest KC 3
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,49.53,40.33
    >>Use Thonk's Spyglass to search for survivors in Southfury Watershed.
    .complete 25187,4 --Durotar Telescope Quest KC 4
    .target Durotar Telescope Quest KC 4
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,49.59,40.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonk|r
    .turnin 25187 >>Turn in Lost in the Floods
    .accept 25188 >>Accept Watershed Patrol
    .target Thonk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,35.85,41.38
    >>Search the Southfury Watershed and help the people you saw in the spyglass.
    .complete 25188,4 --Zen'Taji
    .target Zen'Taji
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,40.49,35.36
    >>Search the Southfury Watershed and help the people you saw in the spyglass.
    .complete 25188,1 --Grandmatron Tekla
    .target Grandmatron Tekla
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,43.38,30.63
    >>Search the Southfury Watershed and help the people you saw in the spyglass.
    .complete 25188,3 --Misha Tor'kren
    .target Misha Tor'kren
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,42.70,49.91
    >>Search the Southfury Watershed and help the people you saw in the spyglass.
    .complete 25188,2 --Raggaran
    .target Raggaran
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,49.59,40.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonk|r
    .turnin 25188 >>Turn in Watershed Patrol
    .target Thonk
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,52.90,27.78,0
    .goto 1,52.90,27.78,40,0
    .goto 1,52.03,25.32,40,0
    >>Kill |cRXP_ENEMY_Burning Blade Thugs|r, |cRXP_ENEMY_Burning Blade Neophytes|r and |cRXP_ENEMY_Burning Blade Cultists|r. Loot them for |cRXP_LOOT_Burning Blade Spellscroll|r
    .complete 25232,1 --Burning Blade Spellscroll (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,56.30,20.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vek'nag|r
    .accept 25256 >>Accept Sent for Help
    .target Vek'nag
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,58.84,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiketooth|r
    .turnin 25256 >>Turn in Sent for Help
    .accept 25257 >>Accept Ghislania
    .accept 25258 >>Accept Griswold Hanniston
    .accept 25259 >>Accept Gaur Icehorn
    .target Spiketooth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,59.68,22.59
    >>Kill |cRXP_ENEMY_Gaur Icehorn|r
    >>Kill |cRXP_ENEMY_Ghislania|r
    >>Kill |cRXP_ENEMY_Griswold Hanniston|r
    .complete 25259,1 --Gaur Icehorn slain (1)
    .complete 25257,1 --Ghislania slain (1)
    .complete 25258,1 --Griswold Hanniston slain (1)
    .mob Gaur Icehorn
    .mob Ghislania
    .mob Griswold Hanniston
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,58.84,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiketooth|r
    .turnin 25257 >>Turn in Ghislania
    .turnin 25258 >>Turn in Griswold Hanniston
    .turnin 25259 >>Turn in Gaur Icehorn
    .target Spiketooth
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Uhgar's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil Soulscar|r
    .turnin 25232 >>Turn in The Burning Blade
    .accept 25196 >>Accept The Dranosh'ar Blockade
    .target Orgnil Soulscar
step
    .goto 1,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step
    #loop
    .goto 1,47.17,29.67,0
    .goto 1,47.17,29.67,40,0
    .goto 1,48.53,31.99,40,0
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r for |cRXP_LOOT_Sack of Supplies|r
    .complete 834,1 --Sack of Supplies (5)
step
    .goto 1,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
step
    #loop
    .goto 1,50.72,25.97,0
    .goto 1,50.72,25.97,40,0
    .goto 1,53.35,23.76,40,0
    .goto 1,52.02,20.05,40,0
    >>Kill |cRXP_ENEMY_Dustwind Harpies|r, |cRXP_ENEMY_Dustwind Pillagers|r, |cRXP_ENEMY_Dustwind Savages|r and |cRXP_ENEMY_Dustwind Storm Witches|r
    .complete 835,1 --Dustwind Harpy (12)
    .mob Dustwind Harpy
    .mob Dustwind Pillager
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
step
    .goto 1,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
    .target Rezlak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor the Enforcer|r
    .turnin 25196 >>Turn in The Dranosh'ar Blockade
    .accept 25236 >>Accept Thunder Down Under
    .accept 25260 >>Accept Fizzled
    .target Gor the Enforcer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,44.90,14.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shin Stonepillar|r
    .accept 25205 >>Accept The Wolf and The Kodo
    .target Shin Stonepillar
step << Pandaren
    .goto 1,45.58,12.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 31450 >>Turn in A New Fate
    .target Ji Firepaw
    .isQuestComplete 31450
step << Pandaren
    .goto 1,45.58,12.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 31012 >>Accept Joining the Horde
    .target Ji Firepaw
    .isQuestTurnedIn 31450 --any of: A New Fate
    .xp <5,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,53.10,13.81
    >>Hear the moral of Shin Stonepillar's story.
    .complete 25205,1 --The Kodo
    .target The Kodo
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,44.90,14.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shin Stonepillar|r
    .turnin 25205 >>Turn in The Wolf and The Kodo
    .target Shin Stonepillar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor the Enforcer|r
    .accept 25206 >>Accept Ignoring the Warnings
    .target Gor the Enforcer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,40.07,16.76,0
    .goto 1,40.07,16.76,40,0
    .goto 1,37.53,18.23,40,0
    >>Kill |cRXP_ENEMY_Furious Earthguards|r and |cRXP_ENEMY_Teeming Waterguards|r
    .complete 25206,1 --Furious Earthguard (12)
    .mob Furious Earthguard
    .mob Teeming Waterguard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor the Enforcer|r
    .turnin 25206 >>Turn in Ignoring the Warnings
    .target Gor the Enforcer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,42.11,26.66
    >>Kill |cRXP_ENEMY_Fizzle Darkclaw|r and loot |cRXP_LOOT_Fizzle's Orb|r
    .complete 25260,1 --Fizzle's Orb (1)
    .mob Fizzle Darkclaw
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,41.92,23.93,0
    .goto 1,41.92,23.93,40,0
    .goto 1,39.01,26.24,40,0
    .goto 1,39.14,29.73,40,0
    >>Attach a Mageweave Tether to 8 Drowned Thunder Lizards in Thunder Ridge.
    .complete 25236,1 --Drowned Thunder Lizard (8)
    .target Drowned Thunder Lizard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor the Enforcer|r
    .turnin 25236 >>Turn in Thunder Down Under
    .turnin 25260 >>Turn in Fizzled
    .accept 25261 >>Accept Margoz
    .target Gor the Enforcer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 25261 >>Turn in Margoz
    .accept 25262 >>Accept Skull Rock
    .target Margoz
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 1,52.03,25.32,0
    .goto 1,52.03,25.32,40,0
    .goto 1,52.90,27.78,40,0
    >>Kill |cRXP_ENEMY_Burning Blade Thugs|r, |cRXP_ENEMY_Burning Blade Neophytes|r, |cRXP_ENEMY_Burning Blade Fanatics|r and |cRXP_ENEMY_Burning Blade Apprentices|r. Loot them for |cRXP_LOOT_Searing Collar|r
    .complete 25262,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 25262 >>Turn in Skull Rock
    .accept 25263 >>Accept Neeru Fireblade
    .target Margoz
step << Goblin
    .goto 1,57.65,9.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'kron Loyalist|r
    .accept 25267 >>Accept Message for Garrosh
    .target Kor'kron Loyalist
    .isQuestTurnedIn 25266 --any of: Warchief's Emissary
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 1,50.84,43.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin Pathseeker|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step
    #completewith next
    .zone 85 >>Travel to Orgrimmar
    .zoneskip 85
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 85,49.91,59.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 25263 >>Turn in Neeru Fireblade
    .target Neeru Fireblade
step << Tauren
    .goto 85,48.10,70.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .turnin 26397 >>Turn in Walk With The Earth Mother
    .target Garrosh Hellscream
    .isOnQuest 26397
step << Goblin
    .goto 85,49.21,72.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 26807 >>Turn in Return to Eitrigg while you are here
    .isQuestComplete 26807
    .target Eitrigg
step << Goblin
    .goto 85,48.10,70.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .turnin 25267 >>Turn in Message for Garrosh
    .target Garrosh Hellscream
    .isOnQuest 25267
step << Goblin
    .goto 85,48.10,70.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .accept 25275 >>Accept Report to the Labor Captain
    .target Garrosh Hellscream
    .isQuestTurnedIn 25267 --any of: Message for Garrosh
step << Pandaren
    .goto 85,48.10,70.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .turnin 31012 >>Turn in Joining the Horde
    .target Garrosh Hellscream
    .isOnQuest 31012
step << Pandaren
    .goto 85,48.10,70.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .accept 31013 >>Accept The Horde Way
    .target Garrosh Hellscream
    .isQuestTurnedIn 31012 --any of: Joining the Horde
    .xp <5,1
step
    .goto 85,47.63,71.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gotura Fourwinds|r
    .accept 26642 >>Accept Preserving the Barrens
    .target Gotura Fourwinds
step << Orc/Troll
    .goto 85,53.63,78.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
    .target Innkeeper Gryshka
step << Orc/Troll
    .goto 85,49.66,59.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Turn in Doras the Wind Rider Master
    .accept 6386 >>Accept Return to Razor Hill
    .target Doras
step
    #completewith next
    .zone 1 >>Leave Orgrimmar for Durotar
    .zoneskip 1
step << Orc/Troll
    .goto 1,50.73,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimtak|r
    .turnin 6386 >>Turn in Return to Razor Hill
    .target Grimtak
step
    #completewith next
    .zone 85 >>Travel to Orgrimmar
    .zoneskip 85
step << Goblin
    .goto 85,49.21,72.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 26807 >>Turn in Return to Eitrigg
    .target Eitrigg
step << Pandaren
    #loop
    .goto 85,48.20,70.60,0
    .goto 85,48.20,70.60,40,0
    .goto 85,48.40,71.80,40,0
    .goto 85,49.00,73.00,40,0
    .goto 85,49.80,75.20,40,0
    >>Walk with Garrosh Hellscream.
    .complete 31013,1 --Garrosh Hellscream
    .target Garrosh Hellscream
    .isOnQuest 31013
step << Pandaren
    .goto 85,70.62,31.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .turnin 31013 >>Turn in The Horde Way
    .target Garrosh Hellscream
    .isOnQuest 31013
step << Pandaren
    .goto 85,70.62,31.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .accept 31014 >>Accept Hellscream's Gift
    .target Garrosh Hellscream
    .isQuestTurnedIn 31013 --any of: The Horde Way
    .xp <5,1
step << Pandaren
    .goto 85,48.10,70.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r
    .turnin 31014 >>Turn in Hellscream's Gift
    .target Garrosh Hellscream
    .isQuestComplete 31014
step
    +|cRXP_WARN_End of the Durotar route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Azshara|r: Report to the Labor Captain << Goblin
    >>|cRXP_FRIENDLY_The Barrens|r: Conscript of the Horde << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    >>|cRXP_FRIENDLY_The Barrens|r: Preserving the Barrens
]])
