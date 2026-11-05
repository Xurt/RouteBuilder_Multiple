-- 78-80 The Storm Peaks: Zone Routes (Horde).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/The Storm Peaks.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Alliance" then return end

RXPGuides.RegisterGuide([[
#mop
<< Horde
#version 1
#group Zone Routes (Horde)
#name 78-80 The Storm Peaks
--RouteBuilder:next
#next Zone Routes (Horde)\76-78 Sholazar Basin

step
    .goto 120,41.02,86.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeer Sparksocket|r
    .turnin 12853 >>Turn in Luxurious Getaway!
    .target Jeer Sparksocket
    .isOnQuest 12853
step
    .goto IcecrownGlacier,87.80,78.07
    >>|cRXP_WARN_The first part of Icecrown is being done for a Trinket + Questline for later|r << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aedan|r
    .fp The Argent Vanguard >> Get the The Argent Vanguard flight path
    .target Aedan Moran
step
    .goto 120,41.02,86.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeer Sparksocket|r
    .accept 12818 >>Accept Clean Up
    .target Jeer Sparksocket
step
    #completewith Along3
    >>As you go: Pick up |cRXP_PICK_Charred Wreckage|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12818,1 --Charred Wreckage (1)
step
    .goto 120,41.15,86.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen Fizzlespark|r
    .accept 12843 >>Accept They Took Our Men!
    .accept 12844 >>Accept Equipment Recovery
    .target Gretchen Fizzlespark
step
    #label Along3
    .goto 120,40.93,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .accept 12827 >>Accept Reclaimed Rations
    .accept 12836 >>Accept Expression of Gratitude
    .target Ricket
step
    #completewith Along7
    >>As you go: Kill |cRXP_ENEMY_Savage Hill Scavengers|r, |cRXP_ENEMY_Savage Hill Mystics|r and |cRXP_ENEMY_Savage Hill Brutes|r. Loot them for |cRXP_LOOT_Dried Gnoll Rations|r. It can also be picked up from |cRXP_PICK_Dried Gnoll Rations|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12827,1 --Dried Gnoll Rations (16)
    .mob Savage Hill Scavenger
    .mob Savage Hill Mystic
    .mob Savage Hill Brute
step
    #loop
    .goto 120,38.71,85.81,0
    .goto 120,38.71,85.81,40,0
    .goto 120,39.13,87.61,40,0
    >>Pick up |cRXP_PICK_Charred Wreckage|r from the ground
    .complete 12818,1 --Charred Wreckage (1)
step
    .goto 120,41.02,86.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeer Sparksocket|r
    .turnin 12818 >>Turn in Clean Up
    .accept 12819 >>Accept Just Around the Corner
    .target Jeer Sparksocket
step
    .goto 120,35.09,87.79
    >>Pick up |cRXP_PICK_Sparksocket's Tools|r from the ground
    .complete 12819,1 --Sparksocket's Tools (1)
step
    #label Along7
    .goto 120,30.33,85.66
    >>Kill |cRXP_ENEMY_Gnarlhide|r
    .complete 12836,1 --Gnarlhide slain (1)
    .mob Gnarlhide
step
    #loop
    .goto 120,37.23,81.98,0
    .goto 120,37.23,81.98,40,0
    .goto 120,38.79,85.52,40,0
    >>Kill |cRXP_ENEMY_Savage Hill Scavengers|r, |cRXP_ENEMY_Savage Hill Mystics|r and |cRXP_ENEMY_Savage Hill Brutes|r. Loot them for |cRXP_LOOT_Dried Gnoll Rations|r. It can also be picked up from |cRXP_PICK_Dried Gnoll Rations|r on the ground
    .complete 12827,1 --Dried Gnoll Rations (16)
    .mob Savage Hill Scavenger
    .mob Savage Hill Mystic
    .mob Savage Hill Brute
step
    .goto 120,41.02,86.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeer Sparksocket|r
    .turnin 12819 >>Turn in Just Around the Corner
    .accept 12826 >>Accept Slightly Unstable
    .target Jeer Sparksocket
step
    .goto 120,40.93,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .turnin 12826 >>Turn in Slightly Unstable
    .turnin 12836 >>Turn in Expression of Gratitude
    .turnin 12827 >>Turn in Reclaimed Rations
    .accept 12820 >>Accept A Delicate Touch
    .accept 12828 >>Accept Ample Inspiration
    .target Ricket
step
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Ironwool Mammoths|r. Loot them for |cRXP_LOOT_Hearty Mammoth Meat|r. It can also be picked up from |cRXP_PICK_Mammoth Meat|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12828,1 --Hearty Mammoth Meat (8)
    .mob Ironwool Mammoth
step
    #loop
    .goto 120,43.29,80.90,0
    .goto 120,43.29,80.90,40,0
    .goto 120,45.12,81.32,40,0
    >>Kill |cRXP_ENEMY_Garm Invaders|r and |cRXP_ENEMY_Snowblind Followers|r
    .complete 12820,1 --Garm Invader (8)
    .mob Garm Invader
    .mob Snowblind Follower
step
    #label Along12
    .goto 120,41.67,80.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tore Rumblewrench|r
    .accept 12829 >>Accept Moving In
    .accept 12830 >>Accept Ore Repossession
    .target Tore Rumblewrench
step
    #completewith Along18
    >>As you go: Kill |cRXP_ENEMY_Sifreldar Storm Maidens|r and |cRXP_ENEMY_Sifreldar Runekeepers|r. Loot them for |cRXP_LOOT_Cold Iron Key|r. |cRXP_WARN_Anything left is finished later|r
    .collect 40641,1,12843,1 --Cold Iron Key (1)
    .mob Sifreldar Storm Maiden
    .mob Sifreldar Runekeeper
step
    #completewith Along18
    >>As you go: Pick up |cRXP_PICK_K3 Equipment|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12844,1 --K3 Equipment (3)
step
    #completewith Along17
    >>As you go: Kill |cRXP_ENEMY_Crystalweb Weavers|r, |cRXP_ENEMY_Icetip Crawlers|r and |cRXP_ENEMY_Crystalweb Spitters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12829,1 --Crystalweb Weaver (8)
    .mob Crystalweb Weaver
    .mob Icetip Crawler
    .mob Crystalweb Spitter
step
    .goto 120,42.31,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Injured Goblin Miner|r
    .accept 12831 >>Accept Only Partly Forgotten
    .target Injured Goblin Miner
step
    .goto 120,47.41,71.36
    >>Kill |cRXP_ENEMY_Icetip Crawler|r and loot |cRXP_LOOT_Icetip Venom Sac|r
    .complete 12831,1 --Icetip Venom Sac (1)
    .mob Icetip Crawler
step
    #loop
    .goto 120,43.77,75.72,0
    .goto 120,43.77,75.72,40,0
    .goto 120,40.74,74.23,40,0
    >>Kill |cRXP_ENEMY_Snowblind Digger|r and loot |cRXP_LOOT_Impure Saronite Ore|r
    .complete 12830,1 --Impure Saronite Ore (1)
    .mob Snowblind Digger
step
    .goto 120,42.31,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Injured Goblin Miner|r
    .turnin 12831 >>Turn in Only Partly Forgotten
    .accept 12832 >>Accept Bitter Departure
    .target Injured Goblin Miner
step
    #label Along17
    .goto 120,40.20,79.00
    >>Escort the Injured Goblin Miner to K3.
    .complete 12832,1 --Escort the Injured Goblin Miner to K3.
step
    .goto 120,41.67,80.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tore Rumblewrench|r
    .turnin 12830 >>Turn in Ore Repossession while you are here
    .isQuestComplete 12830
    .target Tore Rumblewrench
step
    #label Along18
    #loop
    .goto 120,40.71,75.28,0
    .goto 120,40.71,75.28,40,0
    .goto 120,44.16,74.65,40,0
    >>Kill |cRXP_ENEMY_Crystalweb Weavers|r, |cRXP_ENEMY_Icetip Crawlers|r and |cRXP_ENEMY_Crystalweb Spitters|r
    .complete 12829,1 --Crystalweb Weaver (8)
    .mob Crystalweb Weaver
    .mob Icetip Crawler
    .mob Crystalweb Spitter
step
    #completewith Along19
    >>As you go: Kill |cRXP_ENEMY_Ironwool Mammoths|r. Loot them for |cRXP_LOOT_Hearty Mammoth Meat|r. It can also be picked up from |cRXP_PICK_Mammoth Meat|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12828,1 --Hearty Mammoth Meat (8)
    .mob Ironwool Mammoth
step
    #label Along19
    .goto 120,41.67,80.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tore Rumblewrench|r
    .turnin 12829 >>Turn in Moving In
    .turnin 12830 >>Turn in Ore Repossession
    .target Tore Rumblewrench
step
    #loop
    .goto 120,42.73,80.51,0
    .goto 120,42.73,80.51,40,0
    .goto 120,38.01,83.34,40,0
    .goto 120,32.88,86.90,40,0
    .goto 120,36.66,85.02,40,0
    >>Kill |cRXP_ENEMY_Ironwool Mammoths|r. Loot them for |cRXP_LOOT_Hearty Mammoth Meat|r. It can also be picked up from |cRXP_PICK_Mammoth Meat|r on the ground
    .complete 12828,1 --Hearty Mammoth Meat (8)
    .mob Ironwool Mammoth
step
    .goto 120,40.93,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .turnin 12820 >>Turn in A Delicate Touch
    .turnin 12832 >>Turn in Bitter Departure
    .turnin 12828 >>Turn in Ample Inspiration
    .accept 12821 >>Accept Cell Block Tango
    .target Ricket
step
    .goto 120,45.12,82.38
    >>Pick up |cRXP_PICK_Transporter Power Cell|r from the ground
    .complete 12821,1 --Transporter Power Cell (1)
step
    .goto 120,50.70,81.90
    >>Garm Teleporter Activated
    .complete 12821,2 --Garm Teleporter Activated
step
    .goto 120,40.93,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .turnin 12821 >>Turn in Cell Block Tango
    .accept 12822 >>Accept Know No Fear
    .target Ricket
step
    #completewith Along27
    >>As you go: Kill |cRXP_ENEMY_Snowblind Devotees|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12822,2 --Snowblind Devotee (8)
    .mob Snowblind Devotee
step
    #completewith Along26
    >>As you go: Kill |cRXP_ENEMY_Garm Watchers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12822,1 --Garm Watcher (6)
    .mob Garm Watcher
step
    .goto 120,50.34,81.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gino|r
    .accept 12823 >>Accept A Flawless Plan
    .target Gino
step
    #label Along26
    .goto 120,50.34,81.75
    >>Gino at Garm's Rise wants you to plant the Hardpacked Explosive Bundle near Frostgut's Altar, kill Tormar Frostgut, and then escape the cave before it collapses on you.
    .complete 12823,1 --Cave Explosion Bunny (1)
step
    #label Along27
    #loop
    .goto 120,49.34,79.49,0
    .goto 120,49.34,79.49,40,0
    .goto 120,48.15,81.39,40,0
    >>Kill |cRXP_ENEMY_Tormar Frostgut|r
    >>Kill |cRXP_ENEMY_Garm Watchers|r
    .complete 12823,2 --Tormar Frostgut slain (1)
    .complete 12822,1 --Garm Watcher (6)
    .mob Tormar Frostgut
    .mob Garm Watcher
step
    .goto 120,50.34,81.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gino|r
    .turnin 12823 >>Turn in A Flawless Plan while you are here
    .isQuestComplete 12823
    .target Gino
step
    #loop
    .goto 120,49.41,79.01,0
    .goto 120,49.41,79.01,40,0
    .goto 120,45.68,82.26,40,0
    >>Kill |cRXP_ENEMY_Snowblind Devotees|r
    .complete 12822,2 --Snowblind Devotee (8)
    .mob Snowblind Devotee
step
    .goto 120,50.34,81.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gino|r
    .turnin 12823 >>Turn in A Flawless Plan
    .accept 12824 >>Accept Demolitionist Extraordinaire
    .target Gino
step
    .goto 120,40.93,85.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ricket|r
    .turnin 12822 >>Turn in Know No Fear
    .turnin 12824 >>Turn in Demolitionist Extraordinaire
    .accept 13060 >>Accept When All Else Fails << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .target Ricket
step
    #completewith Along32
    >>As you go: Pick up |cRXP_PICK_K3 Equipment|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 12844,1 --K3 Equipment (3)
step
    #loop
    .goto 120,40.54,72.39,0
    .goto 120,40.54,72.39,40,0
    .goto 120,40.95,70.29,40,0
    >>Kill |cRXP_ENEMY_Sifreldar Storm Maidens|r and |cRXP_ENEMY_Sifreldar Runekeepers|r. Loot them for |cRXP_LOOT_Cold Iron Key|r
    .collect 40641,1,12843,1 --Cold Iron Key (1)
    .mob Sifreldar Storm Maiden
    .mob Sifreldar Runekeeper
step
    #label Along32
    #loop
    .goto 120,41.02,71.42,0
    .goto 120,41.02,71.42,40,0
    .goto 120,41.77,74.33,40,0
    >>Kill |cRXP_ENEMY_Goblin Prisoners|r
    .complete 12843,1 --Goblin Prisoner slain (5)
    .mob Goblin Prisoner
step
    #loop
    .goto 120,40.67,72.91,0
    .goto 120,40.67,72.91,40,0
    .goto 120,41.32,68.28,40,0
    >>Pick up |cRXP_PICK_K3 Equipment|r from the ground
    .complete 12844,1 --K3 Equipment (3)
step
    .goto 120,41.15,86.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen Fizzlespark|r
    .turnin 12843 >>Turn in They Took Our Men!
    .turnin 12844 >>Turn in Equipment Recovery
    .accept 12846 >>Accept Leave No Goblin Behind
    .target Gretchen Fizzlespark
step
    .goto 120,48.86,65.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lodge-Matron Embla|r
    .target Lodge-Matron Embla
    .home >>Set your Hearthstone to Lodge-Matron Embla's inn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.31,49.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boktar Bloodfury|r
    .accept 12895 >>Accept The Missing Bronzebeard
    .target Boktar Bloodfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,36.97,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olut Alegut|r
    .turnin 13060 >>Turn in When All Else Fails
    .accept 12882 >>Accept Ancient Relics
    .target Olut Alegut
step
    .goto TheStormPeaks,36.19,49.39,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kabarg|r
    .fp Grom'arsh Crash-Site >> Get the Grom'arsh Crash-Site flight path
    .target Kabarg Windtamer
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,36.44,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodguard Lorga|r
    .accept 13000 >>Accept Emergency Measures
    .accept 13054 >>Accept The Missing Tracker
    .target Bloodguard Lorga
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,36.06,64.13
    >>Open the |cRXP_PICK_Disturbed Snow|r. Loot it for |cRXP_LOOT_Burlap-Wrapped Note|r
    .complete 12895,1 --Burlap-Wrapped Note (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.31,49.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boktar Bloodfury|r
    .turnin 12895 >>Turn in The Missing Bronzebeard
    .accept 12909 >>Accept The Nose Knows
    .target Boktar Bloodfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,40.78,51.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khaliisi|r
    .turnin 12909 >>Turn in The Nose Knows
    .accept 12910 >>Accept Sniffing Out the Perpetrator
    .target Khaliisi
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,36.40,64.20
    >>Kill |cRXP_ENEMY_Frosthound|r
    .complete 12910,1 --Frosthound slain (1)
    .mob Frosthound
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,48.56,60.82
    >>Kill |cRXP_ENEMY_Tracker Thulin|r
    .complete 12910,2 --Tracker Thulin slain (1)
    .mob Tracker Thulin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,30.10,73.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 12910 >>Turn in Sniffing Out the Perpetrator
    .accept 12913 >>Accept Speak Orcish, Man!
    .target Brann Bronzebeard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,48.52,54.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Val'zij|r
    .turnin 13054 >>Turn in The Missing Tracker
    .accept 13055 >>Accept Cave Medicine
    .target Tracker Val'zij
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Snowdrift Jormungars|r, |cRXP_ENEMY_Ravenous Jormungars|r and |cRXP_ENEMY_Infesting Jormungars|r. Loot them for |cRXP_LOOT_Toxin Gland|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13055,2 --Toxin Gland (1)
    .mob Snowdrift Jormungar
    .mob Ravenous Jormungar
    .mob Infesting Jormungar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along46
    >>As you go: Kill |cRXP_ENEMY_Cavedweller Worgs|r. Loot them for |cRXP_LOOT_Worg Fur|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13000,1 --Worg Fur (6)
    .mob Cavedweller Worg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along46
    #loop
    .goto 120,48.33,52.71,0
    .goto 120,48.33,52.71,40,0
    .goto 120,49.02,47.61,40,0
    >>Pick up |cRXP_PICK_Cave Mushroom|r from the ground
    .complete 13055,1 --Cave Mushroom (8)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,55.59,62.98
    >>Kill |cRXP_ENEMY_Snowdrift Jormungars|r, |cRXP_ENEMY_Ravenous Jormungars|r and |cRXP_ENEMY_Infesting Jormungars|r. Loot them for |cRXP_LOOT_Toxin Gland|r
    .complete 13055,2 --Toxin Gland (1)
    .mob Snowdrift Jormungar
    .mob Ravenous Jormungar
    .mob Infesting Jormungar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,48.52,54.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Val'zij|r
    .turnin 13055 >>Turn in Cave Medicine
    .accept 13056 >>Accept There's Always Time for Revenge
    .target Tracker Val'zij
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along49
    >>As you go: Kill |cRXP_ENEMY_Cavedweller Worgs|r. Loot them for |cRXP_LOOT_Worg Fur|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13000,1 --Worg Fur (6)
    .mob Cavedweller Worg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along49
    .goto 120,48.98,46.55
    >>Kill |cRXP_ENEMY_Gimorak|r
    .complete 13056,1 --Gimorak slain (1)
    .mob Gimorak
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,48.52,54.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tracker Val'zij|r
    .turnin 13056 >>Turn in There's Always Time for Revenge
    .target Tracker Val'zij
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,48.48,47.22
    >>Kill |cRXP_ENEMY_Cavedweller Worgs|r. Loot them for |cRXP_LOOT_Worg Fur|r
    .complete 13000,1 --Worg Fur (6)
    .mob Cavedweller Worg
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along67
    >>As you go: Kill |cRXP_ENEMY_Sifreldar Storm Maidens|r, |cRXP_ENEMY_Sifreldar Runekeepers|r, |cRXP_ENEMY_Stormforged Taskmasters|r and |cRXP_ENEMY_Stormforged Champions|r. Loot them for |cRXP_LOOT_Relic of Ulduar|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12882,1 --Relic of Ulduar (10)
    .mob Sifreldar Storm Maiden
    .mob Sifreldar Runekeeper
    .mob Stormforged Taskmaster
    .mob Stormforged Champion
step
    .goto 120,42.80,68.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira the Crone|r
    .turnin 12846 >>Turn in Leave No Goblin Behind
    .accept 12841 >>Accept The Crone's Bargain
    .target Lok'lira the Crone
step
    .goto 120,45.19,70.97
    >>Kill |cRXP_ENEMY_Overseer Syra|r and loot |cRXP_LOOT_Runes of the Yrkvinn|r
    .complete 12841,1 --Runes of the Yrkvinn (1)
    .mob Overseer Syra
step
    .goto 120,42.80,68.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira the Crone|r
    .turnin 12841 >>Turn in The Crone's Bargain
    .accept 12905 >>Accept Mildred the Cruel
    .target Lok'lira the Crone
step
    .goto 120,44.39,68.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred the Cruel|r
    .turnin 12905 >>Turn in Mildred the Cruel
    .accept 12906 >>Accept Discipline
    .target Mildred the Cruel
step
    #loop
    .goto 120,44.06,68.16,0
    .goto 120,44.06,68.16,40,0
    .goto 120,46.48,68.21,40,0
    >>Interact with |cRXP_FRIENDLY_Exhausted Vrykuls|r
    .complete 12906,1 --Exhausted Vrykul (6)
    .target Exhausted Vrykul
step
    .goto 120,44.39,68.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred the Cruel|r
    .turnin 12906 >>Turn in Discipline
    .accept 12907 >>Accept Examples to be Made
    .target Mildred the Cruel
step
    .goto 120,45.41,69.10
    >>Kill |cRXP_ENEMY_Garhal|r
    .complete 12907,1 --Garhal slain (1)
    .mob Garhal
step
    .goto 120,44.39,68.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mildred the Cruel|r
    .turnin 12907 >>Turn in Examples to be Made
    .accept 12908 >>Accept A Certain Prisoner
    .target Mildred the Cruel
step
    .goto 120,42.80,68.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira the Crone|r
    .turnin 12908 >>Turn in A Certain Prisoner
    .accept 12921 >>Accept A Change of Scenery
    .target Lok'lira the Crone
step
    .goto 120,47.47,69.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira the Crone|r
    .turnin 12921 >>Turn in A Change of Scenery
    .accept 12969 >>Accept Is That Your Goblin?
    .target Lok'lira the Crone
step
    .goto 120,48.25,69.77
    >>Kill |cRXP_ENEMY_Agnetta Tyrsdottar|r
    .complete 12969,1 --Agnetta Tyrsdottar slain (1)
    .mob Agnetta Tyrsdottar
step
    .goto 120,47.47,69.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira the Crone|r
    .turnin 12969 >>Turn in Is That Your Goblin?
    .accept 12970 >>Accept The Hyldsmeet
    .target Lok'lira the Crone
step
    .goto 120,47.47,69.08
    >>Listen to Lok'lira the Crone's proposal.
    .complete 12970,1 --Lok'lira the Crone's Conversation Credit (1)
step
    .goto 120,47.47,69.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira the Crone|r
    .turnin 12970 >>Turn in The Hyldsmeet
    .accept 12971 >>Accept Taking on All Challengers
    .target Lok'lira the Crone
step
    .goto 120,51.19,66.86
    >>Kill |cRXP_ENEMY_Victorious Challengers|r
    .complete 12971,1 --Victorious Challenger slain (6)
    .mob Victorious Challenger
step
    #label Along67
    .goto 120,47.47,69.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira the Crone|r
    .turnin 12971 >>Turn in Taking on All Challengers
    .accept 12972 >>Accept You'll Need a Bear
    .target Lok'lira the Crone
step
    .goto 120,53.14,65.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brijana|r
    .turnin 12972 >>Turn in You'll Need a Bear
    .accept 12851 >>Accept Bearly Hanging On
    .target Brijana
step
    #loop
    .goto 120,57.78,62.32,0
    .goto 120,57.78,62.32,40,0
    .goto 120,60.55,60.22,40,0
    .goto 120,62.76,60.93,40,0
    >>Kill |cRXP_ENEMY_Frostworgs|r
    >>Kill |cRXP_ENEMY_Niffelem Frost Giants|r
    .complete 12851,1 --Frostworg slain (7)
    .complete 12851,2 --Niffelem Frost Giant slain (15)
    .mob Frostworg
    .mob Niffelem Frost Giant
step
    .goto 120,53.14,65.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brijana|r
    .turnin 12851 >>Turn in Bearly Hanging On
    .accept 12856 >>Accept Cold Hearted
    .target Brijana
step
    #loop
    .goto 120,64.53,59.62,0
    .goto 120,64.53,59.62,40,0
    .goto 120,66.02,62.03,40,0
    >>Interact with |cRXP_FRIENDLY_Brunnhildar Prisoners|r
    .complete 12856,1 --Brunnhildar Prisoner (9)
    .target Brunnhildar Prisoner
step
    #loop
    .goto 120,65.73,60.13,0
    .goto 120,65.73,60.13,40,0
    .goto 120,63.09,62.88,40,0
    >>Brijana, just east of Brunnhildar Village, wants you to fly to Dun Niffelem, then free 3 Captured Proto-Drakes and rescue 9 Brunnhildar Prisoners.
    .complete 12856,2 --Captive Proto-Drake (3)
    .target Captive Proto-Drake
step
    .goto 120,53.14,65.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brijana|r
    .turnin 12856 >>Turn in Cold Hearted
    .accept 13063 >>Accept Deemed Worthy
    .target Brijana
step
    .goto 120,49.75,71.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid Bjornrittar|r
    .turnin 13063 >>Turn in Deemed Worthy
    .accept 12900 >>Accept Making a Harness
    .target Astrid Bjornrittar
step
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_Icemane Yetis|r. Loot them for |cRXP_LOOT_Icemane Yeti Hide|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12900,1 --Icemane Yeti Hide (3)
    .mob Icemane Yeti
step
    .goto 120,48.44,72.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyra Kvinnshal|r
    .accept 12925 >>Accept Aberrations
    .target Thyra Kvinnshal
step
    #label Along76
    .goto 120,48.32,72.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iva the Vengeful|r
    .accept 12942 >>Accept Off With Their Black Wings
    .accept 12968 >>Accept Yulda's Folly
    .target Iva the Vengeful
step
    #loop
    .goto 120,48.40,75.60,0
    .goto 120,48.40,75.60,40,0
    .goto 120,46.60,78.80,40,0
    .goto 120,45.20,74.00,40,0
    >>Kill |cRXP_ENEMY_Icemane Yetis|r. Loot them for |cRXP_LOOT_Icemane Yeti Hide|r
    .complete 12900,1 --Icemane Yeti Hide (3)
    .mob Icemane Yeti
step
    .goto 120,49.75,71.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid Bjornrittar|r
    .turnin 12900 >>Turn in Making a Harness
    .accept 12983 >>Accept The Last of Her Kind
    .accept 12989 >>Accept The Slithering Darkness
    .target Astrid Bjornrittar
step
    .goto 120,55.08,62.36
    >>Kill |cRXP_ENEMY_Ravenous Jormungars|r
    >>Kill |cRXP_ENEMY_Injured Icemaw Matriarch|r
    .complete 12989,1 --Ravenous Jormungar (8)
    .complete 12983,1 --Injured Icemaw Matriarch slain (1)
    .mob Ravenous Jormungar
    .mob Injured Icemaw Matriarch
step
    .goto 120,49.75,71.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid Bjornrittar|r
    .turnin 12983 >>Turn in The Last of Her Kind
    .turnin 12989 >>Turn in The Slithering Darkness
    .accept 12996 >>Accept The Warm-Up
    .target Astrid Bjornrittar
step
    .goto 120,50.74,67.31
    >>Kill |cRXP_ENEMY_Kirgaraak|r
    .complete 12996,1 --Kirgaraak slain (1)
    .mob Kirgaraak
step
    .goto 120,49.75,71.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid Bjornrittar|r
    .turnin 12996 >>Turn in The Warm-Up
    .accept 12997 >>Accept Into the Pit
    .target Astrid Bjornrittar
step
    .goto 120,49.02,68.24
    >>Kill |cRXP_ENEMY_Hyldsmeet Warbears|r
    .complete 12997,1 --Hyldsmeet Warbear slain (6)
    .mob Hyldsmeet Warbear
step
    .goto 120,49.75,71.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astrid Bjornrittar|r
    .turnin 12997 >>Turn in Into the Pit
    .accept 13061 >>Accept Prepare for Glory
    .target Astrid Bjornrittar
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along85
    >>As you go: Kill |cRXP_ENEMY_Sifreldar Storm Maidens|r, |cRXP_ENEMY_Sifreldar Runekeepers|r, |cRXP_ENEMY_Stormforged Taskmasters|r and |cRXP_ENEMY_Stormforged Champions|r. Loot them for |cRXP_LOOT_Relic of Ulduar|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12882,1 --Relic of Ulduar (10)
    .mob Sifreldar Storm Maiden
    .mob Sifreldar Runekeeper
    .mob Stormforged Taskmaster
    .mob Stormforged Champion
step
    #label Along85
    .goto 120,47.47,69.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lok'lira the Crone|r
    .turnin 13061 >>Turn in Prepare for Glory
    .accept 13062 >>Accept Lok'lira's Parting Gift
    .target Lok'lira the Crone
step
    .goto 120,50.88,65.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta the Arbiter|r
    .turnin 13062 >>Turn in Lok'lira's Parting Gift
    .accept 12886 >>Accept The Drakkensryd
    .target Gretta the Arbiter
step
    #loop
    .goto 120,32.65,55.17,0
    .goto 120,32.65,55.17,40,0
    .goto 120,31.72,59.96,40,0
    >>Kill |cRXP_ENEMY_Hyldsmeet Drakeriders|r
    .complete 12886,1 --Hyldsmeet Drakerider slain (10)
    .mob Hyldsmeet Drakerider
step
    .goto 120,33.42,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 12886 >>Turn in The Drakkensryd
    .accept 13064 >>Accept Sibling Rivalry
    .target Thorim
step
    .goto 120,33.42,57.90
    >>Thorim wants you to listen to his story.
    .complete 13064,1 --Thorim Talk KC Bunny (1)
step
    .goto 120,33.42,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 13064 >>Turn in Sibling Rivalry
    .accept 12915 >>Accept Mending Fences
    .target Thorim
step
    #completewith Along93
    >>As you go: Kill |cRXP_ENEMY_Nascent Val'kyrs|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12942,1 --Nascent Val'kyr slain (12)
    .mob Nascent Val'kyr
step
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Yulda the Stormspeaker|r. Kill |cRXP_ENEMY_Valkyrion Aspirant|r and loot |cRXP_LOOT_Vial of Frost Oil|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12968,1 --Yulda the Stormspeaker slain (1)
    .collect 41612,1,12925,1 --Vial of Frost Oil (1)
    .mob Yulda the Stormspeaker
    .mob Valkyrion Aspirant
step
    #label Along91
    .goto 120,24.05,61.71
    >>Click the |cRXP_PICK_Harpoon Crate|r
    .accept 12953 >>Accept Valkyrion Must Burn
step
    #loop
    .goto 120,23.61,60.24,0
    .goto 120,23.61,60.24,40,0
    .goto 120,27.24,62.24,40,0
    >>Kill |cRXP_ENEMY_Yulda the Stormspeaker|r
    >>Kill |cRXP_ENEMY_Dry Haystacks|r
    >>Kill |cRXP_ENEMY_Valkyrion Aspirant|r and loot |cRXP_LOOT_Vial of Frost Oil|r
    .complete 12968,1 --Yulda the Stormspeaker slain (1)
    .complete 12953,1 --Dry Haystack slain (6)
    .collect 41612,1,12925,1 --Vial of Frost Oil (1)
    .mob Yulda the Stormspeaker
    .mob Dry Haystack
    .mob Valkyrion Aspirant
step
    #label Along93
    .goto 120,23.13,57.79
    >>Click the |cRXP_PICK_Plagued Proto-Drake Egg|r
    .complete 12925,1 --Plagued Proto-Drake Egg
step
    #loop
    .goto 120,23.34,60.31,0
    .goto 120,23.34,60.31,40,0
    .goto 120,26.29,62.71,40,0
    >>Kill |cRXP_ENEMY_Nascent Val'kyrs|r
    .complete 12942,1 --Nascent Val'kyr slain (12)
    .mob Nascent Val'kyr
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.29,49.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moteha Windborn|r
    .turnin 12913 >>Turn in Speak Orcish, Man!
    .accept 12917 >>Accept Speaking with the Wind's Voice
    .target Moteha Windborn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,36.44,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodguard Lorga|r
    .turnin 13000 >>Turn in Emergency Measures
    .target Bloodguard Lorga
step
    #completewith Drop12922x1
    >>|cRXP_LOOT_Slag Covered Metal|r can drop from |cRXP_ENEMY_Stormforged Iron Giant|r. Use it to start the quest if you get one
    .collect 41556,1,12922 --Slag Covered Metal (1)
    .accept 12922 >>Accept The Refiner's Fire
    .use 41556
step
    #completewith Drop12922x1
    >>|cRXP_LOOT_Dark Armor Plate|r can drop from |cRXP_ENEMY_Stormforged War Golem|r. Use it to start the quest if you get one
    .collect 42203,1,12979 --Dark Armor Plate (1)
    .accept 12979 >>Accept Armor of Darkness
    .use 42203
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Drop12922x1
    #loop
    .goto 120,31.74,46.03,0
    .goto 120,31.74,46.03,40,0
    .goto 120,29.29,48.74,40,0
    .goto 120,26.61,42.20,40,0
    .goto 120,29.23,44.81,40,0
    >>Kill |cRXP_ENEMY_Stormrider|r and loot |cRXP_LOOT_Voice of the Wind|r
    >>Kill |cRXP_ENEMY_Sifreldar Storm Maidens|r, |cRXP_ENEMY_Sifreldar Runekeepers|r, |cRXP_ENEMY_Stormforged Taskmasters|r and |cRXP_ENEMY_Stormforged Champions|r. Loot them for |cRXP_LOOT_Relic of Ulduar|r
    .complete 12917,1 --Voice of the Wind (1)
    .complete 12882,1 --Relic of Ulduar (10)
    .mob Stormrider
    .mob Sifreldar Storm Maiden
    .mob Sifreldar Runekeeper
    .mob Stormforged Taskmaster
    .mob Stormforged Champion
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,36.97,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olut Alegut|r
    .turnin 12882 >>Turn in Ancient Relics
    .target Olut Alegut
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.29,49.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moteha Windborn|r
    .turnin 12917 >>Turn in Speaking with the Wind's Voice
    .target Moteha Windborn
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.31,49.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boktar Bloodfury|r
    .accept 12920 >>Accept Catching up with Brann
    .target Boktar Bloodfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,30.10,73.90
    >>Kill |cRXP_ENEMY_Brann Bronzebeard|r
    .complete 12920,1 --Brann Bronzebeard slain (1)
    .mob Brann Bronzebeard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.31,49.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boktar Bloodfury|r
    .turnin 12920 >>Turn in Catching up with Brann
    .accept 12926 >>Accept Pieces of the Puzzle
    .target Boktar Bloodfury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,30.10,73.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 12926 >>Turn in Pieces of the Puzzle
    .accept 12927 >>Accept Data Mining
    .target Brann Bronzebeard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith next
    .hs >>Hearth to Lodge-Matron Embla's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,48.56,60.82
    >>Kill |cRXP_ENEMY_Tracker Thulin|r and loot |cRXP_LOOT_Brann's Communicator|r
    .collect 40971,1,12927,1 --Brann's Communicator (1)
    .mob Tracker Thulin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 120,42.66,39.09,0
    .goto 120,42.66,39.09,40,0
    .goto 120,41.69,39.84,40,0
    .goto 120,41.52,43.48,40,0
    .goto 120,40.70,42.25,40,0
    .goto 120,40.16,40.85,40,0
    .goto 120,39.52,40.17,40,0
    .goto 120,38.76,42.93,40,0
    .goto 120,37.79,41.58,40,0
    .goto 120,36.16,41.76,40,0
    .goto 120,35.95,40.42,40,0
    >>Interact with |cRXP_FRIENDLY_Databank|r
    .complete 12927,1 --Databank
    .target Databank
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,30.10,73.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 12927 >>Turn in Data Mining
    .accept 13416 >>Accept The Library Console
    .target Brann Bronzebeard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.43,46.88
    >>Click the |cRXP_PICK_Inventor's Library Console|r
    .turnin 13416 >>Turn in The Library Console
    .accept 12928 >>Accept Norgannon's Shell
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,48.56,60.82
    >>Kill |cRXP_ENEMY_Tracker Thulin|r and loot |cRXP_LOOT_Brann's Communicator|r
    .collect 40971,1,12928,1 --Brann's Communicator (1)
    .mob Tracker Thulin
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.53,46.53
    >>Kill |cRXP_ENEMY_Archivist Mechaton|r and loot |cRXP_LOOT_Norgannon's Shell|r
    .complete 12928,1 --Norgannon's Shell (1)
    .mob Archivist Mechaton
step
    .goto TheStormPeaks,30.64,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Breck|r
    .fp Bouldercrag's Refuge >> Get the Bouldercrag's Refuge flight path
    .target Breck Rockbrow
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,30.10,73.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 12928 >>Turn in Norgannon's Shell
    .accept 12929 >>Accept The Earthen of Ulduar
    .accept 13273 >>Accept Going After the Core
    .target Brann Bronzebeard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12929 >>Turn in The Earthen of Ulduar
    .target Bouldercrag the Rockshaper
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .accept 12931 >>Accept Fighting Back
    .accept 12937 >>Accept Relief for the Fallen
    .target Bouldercrag the Rockshaper
    .isQuestTurnedIn 12930 --any of: Rare Earth
    .xp <77,1
step
    #loop
    .goto 120,29.10,36.86,0
    .goto 120,29.10,36.86,40,0
    .goto 120,27.53,39.18,40,0
    .goto 120,24.86,36.95,40,0
    >>Kill |cRXP_ENEMY_Fallen Earthen Defenders|r
    .complete 12937,1 --Fallen Earthen Defender slain (8)
    .mob Fallen Earthen Defender
    .isOnQuest 12937
step
    #loop
    .goto 120,26.94,37.78,0
    .goto 120,26.94,37.78,40,0
    .goto 120,28.84,36.59,40,0
    >>Kill |cRXP_ENEMY_Stormforged Reavers|r and |cRXP_ENEMY_Stormforged Raiders|r
    .complete 12931,1 --Stormforged Reaver (8)
    .mob Stormforged Reaver
    .mob Stormforged Raider
    .isOnQuest 12931
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12931 >>Turn in Fighting Back
    .target Bouldercrag the Rockshaper
    .isOnQuest 12931
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12937 >>Turn in Relief for the Fallen
    .target Bouldercrag the Rockshaper
    .isOnQuest 12937
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .accept 12957 >>Accept Slaves of the Stormforged
    .accept 12964 >>Accept The Dark Ore
    .target Bouldercrag the Rockshaper
    .isQuestTurnedIn 12931 --any of: Fighting Back
    .xp <77,1
step
    .goto 120,26.61,50.20
    >>Kill |cRXP_ENEMY_Stormforged Taskmasters|r
    .complete 12957,2 --Stormforged Taskmaster slain (3)
    .mob Stormforged Taskmaster
    .isOnQuest 12957
step
    .goto 120,26.40,50.84
    >>Loot the |cRXP_PICK_Ore Carts|r for |cRXP_LOOT_Dark Ore Sample|r
    .complete 12964,1 --Dark Ore Sample (5)
    .isOnQuest 12964
step
    .goto 120,26.12,51.24
    >>Kill |cRXP_ENEMY_Captive Mechagnomes|r
    .complete 12957,1 --Captive Mechagnome slain (6)
    .mob Captive Mechagnome
    .isOnQuest 12957
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12957 >>Turn in Slaves of the Stormforged
    .target Bouldercrag the Rockshaper
    .isOnQuest 12957
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12964 >>Turn in The Dark Ore
    .target Bouldercrag the Rockshaper
    .isOnQuest 12964
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .accept 12965 >>Accept The Gifts of Loken
    .target Bouldercrag the Rockshaper
    .isQuestTurnedIn 12957 --any of: Slaves of the Stormforged
    .xp <77,1
step
    .goto 120,31.28,38.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor Ironbane|r
    .accept 12978 >>Accept Facing the Storm
    .target Bruor Ironbane
    .isQuestTurnedIn 12957 --any of: Slaves of the Stormforged
    .xp <77,1
step
    .goto 120,26.17,47.72
    >>Click the |cRXP_PICK_Loken's Power|r
    .complete 12965,2 --Loken's Power
    .isOnQuest 12965
step
    .goto 120,24.55,48.44
    >>Click the |cRXP_PICK_Loken's Favor|r
    .complete 12965,3 --Loken's Favor
    .isOnQuest 12965
step
    .goto 120,24.01,42.64
    >>Click the |cRXP_PICK_Loken's Fury|r
    .complete 12965,1 --Loken's Fury
    .isOnQuest 12965
step
    #loop
    .goto 120,29.40,41.19,0
    .goto 120,29.40,41.19,40,0
    .goto 120,31.74,46.03,40,0
    >>Kill |cRXP_ENEMY_Stormforged War Golems|r. Loot them for |cRXP_LOOT_Dark Armor Sample|r
    .complete 12979,1 --Dark Armor Sample (4)
    .mob Stormforged War Golem
step
    #completewith Drop12979x2
    >>|cRXP_LOOT_Dark Armor Plate|r can drop from |cRXP_ENEMY_Stormforged War Golem|r. Use it to start the quest if you get one
    .collect 42203,1,12979 --Dark Armor Plate (1)
    .accept 12979 >>Accept Armor of Darkness
    .use 42203
step
    #label Drop12979x2
    #loop
    .goto 120,25.28,47.45,0
    .goto 120,25.28,47.45,40,0
    .goto 120,25.25,51.40,40,0
    .goto 120,24.80,43.08,40,0
    >>Kill |cRXP_ENEMY_Stormforged Champions|r, |cRXP_ENEMY_Stormforged Magus|r and |cRXP_ENEMY_Stormforged War Golems|r
    .complete 12978,1 --Stormforged Champion (8)
    .mob Stormforged Champion
    .mob Stormforged Magus
    .mob Stormforged War Golem
    .isOnQuest 12978
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12965 >>Turn in The Gifts of Loken
    .target Bouldercrag the Rockshaper
    .isOnQuest 12965
step
    .goto 120,31.28,38.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor Ironbane|r
    .turnin 12978 >>Turn in Facing the Storm
    .target Bruor Ironbane
    .isOnQuest 12978
step
    .goto 120,31.28,38.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor Ironbane|r
    .turnin 12979 >>Turn in Armor of Darkness
    .target Bruor Ironbane
    .isOnQuest 12979
step
    .goto 120,31.28,38.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor Ironbane|r
    .accept 12980 >>Accept The Armor's Secrets
    .target Bruor Ironbane
    .isQuestTurnedIn 12979 --any of: Armor of Darkness
    .xp <77,1
step
    .goto 120,32.04,40.72
    >>Kill |cRXP_ENEMY_Attendant Tock|r
    .complete 12980,1 --Attendant Tock slain (1)
    .mob Attendant Tock
    .isOnQuest 12980
step
    .goto 120,31.28,38.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor Ironbane|r
    .turnin 12980 >>Turn in The Armor's Secrets
    .target Bruor Ironbane
    .isOnQuest 12980
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .accept 12984 >>Accept Valduran the Stormborn
    .target Bouldercrag the Rockshaper
    .isQuestTurnedIn 12980 --any of: The Armor's Secrets
    .xp <77,1
step
    .goto 120,24.28,52.16
    >>Kill |cRXP_ENEMY_Valduran the Stormborn|r
    .complete 12984,1 --Valduran the Stormborn slain (1)
    .mob Valduran the Stormborn
    .isOnQuest 12984
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12984 >>Turn in Valduran the Stormborn
    .target Bouldercrag the Rockshaper
    .isOnQuest 12984
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .accept 12988 >>Accept Destroy the Forges!
    .target Bouldercrag the Rockshaper
    .isQuestTurnedIn 12984 --any of: Valduran the Stormborn
    .xp <77,1
step
    .goto 120,31.28,38.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor Ironbane|r
    .accept 12991 >>Accept Hit Them Where it Hurts
    .target Bruor Ironbane
    .isQuestTurnedIn 12984 --any of: Valduran the Stormborn
    .xp <77,1
step
    #loop
    .goto 120,30.76,43.68,0
    .goto 120,30.76,43.68,40,0
    .goto 120,29.51,45.41,40,0
    >>Kill |cRXP_ENEMY_Stormforged Artificers|r
    .complete 12991,1 --Stormforged Artificer slain (10)
    .mob Stormforged Artificer
    .isOnQuest 12991
step
    .goto 120,28.99,45.84
    >>Kill |cRXP_ENEMY_North Lightning Forge|r
    .complete 12988,1 --North Lightning Forge slain (1)
    .mob North Lightning Forge
    .isOnQuest 12988
step
    .goto 120,29.54,45.90
    >>Kill |cRXP_ENEMY_Central Lightning Forge|r
    .complete 12988,2 --Central Lightning Forge slain (1)
    .mob Central Lightning Forge
    .isOnQuest 12988
step
    .goto 120,30.25,46.15
    >>Kill |cRXP_ENEMY_South Lightning Forge|r
    .complete 12988,3 --South Lightning Forge slain (1)
    .mob South Lightning Forge
    .isOnQuest 12988
step
    .goto 120,31.28,38.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruor Ironbane|r
    .turnin 12991 >>Turn in Hit Them Where it Hurts
    .target Bruor Ironbane
    .isOnQuest 12991
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12988 >>Turn in Destroy the Forges!
    .target Bouldercrag the Rockshaper
    .isOnQuest 12988
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .accept 12993 >>Accept A Colossal Threat
    .target Bouldercrag the Rockshaper
    .isQuestTurnedIn 12988 --any of: Destroy the Forges!
    .xp <77,1
step
    .goto 120,28.88,44.05
    >>Pick up |cRXP_PICK_Colossus Attack Specs|r from the ground
    .complete 12993,1 --Colossus Attack Specs (1)
    .isOnQuest 12993
step
    .goto 120,29.90,45.81
    >>Pick up |cRXP_PICK_Colossus Defense Specs|r from the ground
    .complete 12993,2 --Colossus Defense Specs (1)
    .isOnQuest 12993
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12993 >>Turn in A Colossal Threat
    .target Bouldercrag the Rockshaper
    .isOnQuest 12993
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .accept 12998 >>Accept The Heart of the Storm
    .target Bouldercrag the Rockshaper
    .isQuestTurnedIn 12993 --any of: A Colossal Threat
    .xp <77,1
step
    .goto 120,36.13,60.93
    >>Click the |cRXP_PICK_The Heart of the Storm|r
    .complete 12998,1 --The Heart of the Storm
    .isOnQuest 12998
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 12998 >>Turn in The Heart of the Storm
    .target Bouldercrag the Rockshaper
    .isOnQuest 12998
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .accept 13007 >>Accept The Iron Colossus
    .target Bouldercrag the Rockshaper
    .isQuestTurnedIn 12998 --any of: The Heart of the Storm
    .xp <77,1
step
    .goto 120,27.51,45.32
    >>Kill |cRXP_ENEMY_Iron Colossus|r
    .complete 13007,1 --Iron Colossus slain (1)
    .mob Iron Colossus
    .isOnQuest 13007
step
    .goto 120,31.42,38.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bouldercrag the Rockshaper|r
    .turnin 13007 >>Turn in The Iron Colossus
    .target Bouldercrag the Rockshaper
    .isOnQuest 13007
step
    .goto 120,48.44,72.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyra Kvinnshal|r
    .turnin 12925 >>Turn in Aberrations
    .target Thyra Kvinnshal
step
    .goto 120,48.32,72.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iva the Vengeful|r
    .turnin 12942 >>Turn in Off With Their Black Wings
    .turnin 12953 >>Turn in Valkyrion Must Burn
    .turnin 12968 >>Turn in Yulda's Folly
    .target Iva the Vengeful
step
    #completewith Along159
    >>As you go: Pick up |cRXP_PICK_Granite Boulder|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .collect 41506,1,12915,1 --Granite Boulder (1)
step
    #completewith Along159
    >>As you go: Kill |cRXP_ENEMY_Stormforged Iron Giants|r. |cRXP_WARN_Anything left is finished later|r
    .complete 12915,2 --Stormforged Iron Giant slain (5)
    .mob Stormforged Iron Giant
step
    #label Along159
    #loop
    .goto 120,70.46,60.50,0
    .goto 120,70.46,60.50,40,0
    .goto 120,70.50,57.64,40,0
    >>Kill |cRXP_ENEMY_Seething Revenants|r. Loot them for |cRXP_LOOT_Furious Spark|r
    .complete 12922,1 --Furious Spark (10)
    .mob Seething Revenant
step
    #completewith Drop12922x2
    >>|cRXP_LOOT_Slag Covered Metal|r can drop from |cRXP_ENEMY_Stormforged Iron Giant|r. Use it to start the quest if you get one
    .collect 41556,1,12922 --Slag Covered Metal (1)
    .accept 12922 >>Accept The Refiner's Fire
    .use 41556
step
    #loop
    .goto 120,72.75,63.63,0
    .goto 120,72.75,63.63,40,0
    .goto 120,76.21,62.92,40,0
    >>Pick up |cRXP_PICK_Granite Boulder|r from the ground
    .collect 41506,1,12915,1 --Granite Boulder (1)
step
    .goto 120,76.15,63.91
    >>Kill |cRXP_ENEMY_Fjorn|r
    .complete 12915,1 --Fjorn slain (1)
    .mob Fjorn
step
    #label Drop12922x2
    #loop
    .goto 120,70.17,61.40,0
    .goto 120,70.17,61.40,40,0
    .goto 120,70.60,58.27,40,0
    >>Kill |cRXP_ENEMY_Stormforged Iron Giants|r
    .complete 12915,2 --Stormforged Iron Giant slain (5)
    .mob Stormforged Iron Giant
step
    .goto 120,77.15,62.86
    >>Click the |cRXP_PICK_Fjorn's Anvil|r
    .turnin 12922 >>Turn in The Refiner's Fire
    .isOnQuest 12922
step
    .goto 120,77.15,62.86
    >>Click the |cRXP_PICK_Fjorn's Anvil|r
    .accept 12956 >>Accept A Spark of Hope
    .isQuestTurnedIn 12922 --any of: The Refiner's Fire
    .xp <77,1
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,59.78,52.65
    >>Pick up |cRXP_PICK_Prospector Khrona's Notes|r from the ground
    >>Pick up |cRXP_PICK_Prospector Soren's Maps|r from the ground
    .complete 13273,1 --Prospector Khrona's Notes (1)
    .complete 13273,2 --Prospector Soren's Maps (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,30.10,73.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 13273 >>Turn in Going After the Core
    .accept 13274 >>Accept The Core's Keeper
    .target Brann Bronzebeard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,56.38,52.11
    >>Kill |cRXP_ENEMY_Athan|r and loot |cRXP_LOOT_Norgannon's Core|r
    .complete 13274,1 --Norgannon's Core (1)
    .mob Athan
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,30.10,73.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 13274 >>Turn in The Core's Keeper
    .accept 13285 >>Accept Forging the Keystone
    .target Brann Bronzebeard
step
    .goto 120,33.42,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 12915 >>Turn in Mending Fences
    .accept 12924 >>Accept Forging an Alliance
    .target Thorim
step
    .goto 120,33.42,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 12956 >>Turn in A Spark of Hope
    .target Thorim
    .isOnQuest 12956
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,45.40,49.40
    >>Kill |cRXP_ENEMY_Brann Bronzebeard|r
    .complete 13285,1 --Brann Bronzebeard slain (1)
    .mob Brann Bronzebeard
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,37.31,49.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boktar Bloodfury|r
    .turnin 13285 >>Turn in Forging the Keystone
    .accept 13426 >>Accept Xarantaur, the Witness
    .target Boktar Bloodfury
step
    .goto TheStormPeaks,62.64,60.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halvdan|r
    .fp Dun Niffelem >> Get the Dun Niffelem flight path
    .target Halvdan
step
    .goto 120,75.38,63.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r
    .accept 12967 >>Accept Battling the Elements
    .target Njormeld
    .isQuestTurnedIn 12966 --any of: You Can't Miss Him
    .xp <77,1
step
    .goto 120,77.00,62.20
    >>Kill |cRXP_ENEMY_Seething Revenants|r
    .complete 12967,1 --Seething Revenant slain (10)
    .mob Seething Revenant
    .isOnQuest 12967
step
    .goto 120,75.38,63.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r
    .turnin 12967 >>Turn in Battling the Elements
    .target Njormeld
    .isOnQuest 12967
step
    .goto 120,75.38,63.60
    >>You are to go to Dun Niffelem and ask King Jokkum to allow Thorim's armor to be reforged. After completing Jokkum's task, you are to speak with Njormeld in Dun Niffelem.
    .complete 12924,1 --Njormeld
    .target Njormeld
step
    .goto 120,63.21,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r
    .turnin 12924 >>Turn in Forging an Alliance
    .accept 13009 >>Accept A New Beginning
    .target Njormeld
step
    .goto 120,65.44,60.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Jokkum|r
    .accept 12975 >>Accept In Memoriam
    .target King Jokkum
step
    #loop
    .goto 120,71.71,50.75,0
    .goto 120,71.71,50.75,40,0
    .goto 120,73.14,48.45,40,0
    >>Pick up |cRXP_PICK_Horn Fragment|r from the ground
    .complete 12975,1 --Horn Fragment (8)
step
    .goto TheStormPeaks,65.41,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyeyoung|r
    .fp Camp Tunka'lo >> Get the Camp Tunka'lo flight path
    .target Hyeyoung Parka
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,65.77,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xarantaur|r
    .turnin 13426 >>Turn in Xarantaur, the Witness
    .accept 13034 >>Accept The Witness and the Hero
    .target Xarantaur
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,66.84,50.10
    >>Click the |cRXP_PICK_First History Scroll|r
    >>Click the |cRXP_PICK_Second History Scroll|r
    >>Click the |cRXP_PICK_Third History Scroll|r
    .complete 13034,1 --First History Scroll
    .complete 13034,2 --Second History Scroll
    .complete 13034,3 --Third History Scroll
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,65.77,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xarantaur|r
    .turnin 13034 >>Turn in The Witness and the Hero
    .accept 13037 >>Accept Memories of Stormhoof
    .target Xarantaur
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #completewith Along183
    >>As you go: Kill |cRXP_ENEMY_Chieftain Swiftspear|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13037,1 --Chieftain Swiftspear slain (1)
    .mob Chieftain Swiftspear
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #label Along183
    .goto 120,61.18,39.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chieftain Swiftspear|r
    .accept 13038 >>Accept Distortions in Time
    .target Chieftain Swiftspear
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,61.75,39.81
    >>Kill |cRXP_ENEMY_Plains Mammoths|r
    >>Kill |cRXP_ENEMY_Chieftain Swiftspear|r
    .complete 13038,1 --Plains Mammoth slain (8)
    .complete 13037,1 --Chieftain Swiftspear slain (1)
    .mob Plains Mammoth
    .mob Chieftain Swiftspear
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,65.77,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xarantaur|r
    .turnin 13037 >>Turn in Memories of Stormhoof
    .turnin 13038 >>Turn in Distortions in Time
    .accept 13048 >>Accept Where Time Went Wrong
    .accept 13049 >>Accept The Hero's Arms
    .target Xarantaur
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,65.77,51.42
    >>Use the Lorehammer on Taunka Relics to attune it to the time of Stormhoof. Once it has been attuned to 6 relics from the time of Stormhoof, return to Xarantaur at Camp Tunka'lo.
    .complete 13048,1 --Lorehammer attuned (1)
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,65.77,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xarantaur|r
    .turnin 13048 >>Turn in Where Time Went Wrong while you are here
    .isQuestComplete 13048
    .target Xarantaur
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    #loop
    .goto 120,65.12,42.75,0
    .goto 120,65.12,42.75,40,0
    .goto 120,67.05,42.60,40,0
    >>Kill |cRXP_ENEMY_Scion of Storm|r and loot |cRXP_LOOT_Stormhoof's Spear|r
    >>Kill |cRXP_ENEMY_Scion of Storm|r and loot |cRXP_LOOT_Stormhoof's Mail|r
    .complete 13049,1 --Stormhoof's Spear (1)
    .complete 13049,2 --Stormhoof's Mail (1)
    .mob Scion of Storm
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,65.77,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xarantaur|r
    .turnin 13048 >>Turn in Where Time Went Wrong
    .turnin 13049 >>Turn in The Hero's Arms
    .accept 13058 >>Accept Changing the Wind's Course
    .target Xarantaur
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,64.50,46.90
    >>Click the |cRXP_PICK_Horn of Elemental Fury|r
    .complete 13058,1 --Horn of Elemental Fury
step << Orc/Undead/Tauren/Troll/BloodElf/Goblin/Pandaren
    .goto 120,65.77,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xarantaur|r
    .turnin 13058 >>Turn in Changing the Wind's Course
    .target Xarantaur
step
    .goto 120,65.44,60.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Jokkum|r
    .turnin 12975 >>Turn in In Memoriam
    .accept 12976 >>Accept A Monument to the Fallen
    .target King Jokkum
step
    .goto 120,63.21,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Njormeld|r
    .turnin 12976 >>Turn in A Monument to the Fallen
    .target Njormeld
step
    .goto 120,33.42,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 13009 >>Turn in A New Beginning
    .accept 13050 >>Accept Veranus
    .target Thorim
step
    #loop
    .goto 120,45.52,67.16,0
    .goto 120,45.52,67.16,40,0
    .goto 120,52.36,73.26,40,0
    .goto 120,53.57,74.88,40,0
    .goto 120,52.36,75.08,40,0
    >>Pick up |cRXP_PICK_Small Proto-Drake Egg|r from the ground
    .complete 13050,1 --Small Proto-Drake Egg (5)
step
    .goto 120,33.42,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 13050 >>Turn in Veranus
    .accept 13051 >>Accept Territorial Trespass
    .target Thorim
step
    .goto 120,38.70,65.50
    >>Kill |cRXP_ENEMY_Veranus|r
    .complete 13051,1 --Veranus slain (1)
    .mob Veranus
step
    .goto 120,33.42,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 13051 >>Turn in Territorial Trespass
    .accept 13010 >>Accept Krolmir, Hammer of Storms
    .target Thorim
step
    .goto 120,65.44,60.15
    >>Kill |cRXP_ENEMY_King Jokkum|r
    .complete 13010,1 --King Jokkum slain (1)
    .mob King Jokkum
step
    .goto 120,33.42,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 13010 >>Turn in Krolmir, Hammer of Storms
    .target Thorim
step
    .goto 120,71.37,48.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .accept 13057 >>Accept The Terrace of the Makers
    .target Thorim
step
    .goto 120,56.30,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 13057 >>Turn in The Terrace of the Makers
    .accept 13005 >>Accept The Earthen Oath
    .accept 13035 >>Accept Loken's Lackeys
    .target Thorim
step
    .goto 120,48.72,45.65
    >>Kill |cRXP_ENEMY_Halefnir the Windborn|r
    .complete 13035,2 --Halefnir the Windborn slain (1)
    .mob Halefnir the Windborn
step
    #completewith Along205
    >>As you go: Kill |cRXP_ENEMY_Iron Dwarf Assailants|r. |cRXP_WARN_Anything left is finished later|r
    .complete 13005,2 --Iron Dwarf Assailant slain (20)
    .mob Iron Dwarf Assailant
step
    .goto 120,44.94,38.03
    >>Kill |cRXP_ENEMY_Duronn the Runewrought|r
    .complete 13035,3 --Duronn the Runewrought slain (1)
    .mob Duronn the Runewrought
step
    .goto 120,55.31,43.32
    >>Kill |cRXP_ENEMY_Eisenfaust|r
    .complete 13035,1 --Eisenfaust slain (1)
    .mob Eisenfaust
step
    #label Along205
    #loop
    .goto 120,52.24,51.80,0
    .goto 120,52.24,51.80,40,0
    .goto 120,49.37,49.88,40,0
    >>Kill |cRXP_ENEMY_Iron Sentinels|r
    .complete 13005,1 --Iron Sentinel slain (7)
    .mob Iron Sentinel
step
    #loop
    .goto 120,58.50,45.29,0
    .goto 120,58.50,45.29,40,0
    .goto 120,58.63,41.50,40,0
    >>Kill |cRXP_ENEMY_Iron Dwarf Assailants|r
    .complete 13005,2 --Iron Dwarf Assailant slain (20)
    .mob Iron Dwarf Assailant
step
    .goto 120,56.30,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorim|r
    .turnin 13005 >>Turn in The Earthen Oath
    .turnin 13035 >>Turn in Loken's Lackeys
    .accept 13047 >>Accept The Reckoning
    .target Thorim
step
    .goto TheStormPeaks,44.49,28.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shavalius|r
    .fp Ulduar >> Get the Ulduar flight path
    .target Shavalius the Fancy
step
    .goto 120,35.93,31.51
    >>Meet Thorim near the Temple of Wisdom. Report the outcome of the fight to King Jokkum in Dun Niffelem.
    .complete 13047,1 --Thorim
    .target Thorim
step
    .goto 120,65.44,60.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Jokkum|r
    .turnin 13047 >>Turn in The Reckoning
    .target King Jokkum
step
    #completewith next
    .zone 170 >>Travel to Hrothgar's Landing
    .zoneskip 170
step
    .goto 170,43.95,24.25
    >>Pick up |cRXP_PICK_Heart of the Mists|r from the ground
    .complete 24442,1 --Heart of the Mists (1)
step
    +|cRXP_WARN_End of the The Storm Peaks route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Icecrown|r: Battle Plans Of The Kvaldir
step
    +|cRXP_WARN_Suggested next zones at level 80|r: |cRXP_FRIENDLY_Sholazar Basin|r (about 0.6 levels of quests, starting around Debaar). Completing this step loads the guide for Sholazar Basin --RouteBuilder:next
]])
