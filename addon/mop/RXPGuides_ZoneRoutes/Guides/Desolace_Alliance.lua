-- 30-35 Desolace: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Split into 2 guides, listed under "30 - 36 Desolace" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Desolace.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 36 Desolace
#subweight -30
#name 30-33 Desolace: around Cenarion Researcher Korrah
#next Zone Routes (Alliance)\33-36 Desolace: around Karnum Marshweaver

step
    .goto 66,54.77,8.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furien|r
    .turnin 26134 >>Turn in Nothing Left for You Here
    .target Furien
    .isOnQuest 26134
step
    .goto 66,54.24,9.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Officer Jankie|r
    .turnin 25938 >>Turn in Help for Desolace
    .target Officer Jankie
    .isOnQuest 25938
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
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
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
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
step
    #completewith next
    .zone 66 >>Leave Darnassus for Desolace
    .zoneskip 66
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,54.24,9.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Officer Jankie|r
    .turnin 28531 >>Turn in Hero's Call: Desolace!
    .accept 14384 >>Accept Rerouted!
    .target Officer Jankie
step
    .goto 66,54.77,8.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furien|r
    .accept 14184 >>Accept My Time Has Passed
    .target Furien
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.20,9.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1453 >>Turn in Reclaimers' Business in Desolace
    .target Kreldig Ungor
    .isOnQuest 1453
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.74,10.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
    .turnin 14384 >>Turn in Rerouted!
    .target Corporal Melkins
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.66,10.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Pentigast|r
    .accept 14387 >>Accept Lay of the Land
    .target Captain Pentigast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.44,11.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .turnin 14387 >>Turn in Lay of the Land
    .accept 14354 >>Accept Elune's Gifts
    .target Vahlarriel Demonslayer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,69.30,29.27
    >>Click the |cRXP_PICK_Ancient Tablets|r
    .accept 14193 >>Accept Nothing a Couple of Melons Won't Fix
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along24
    >>As you go: Click the |cRXP_PICK_Elune's Handmaiden|r. Pick up |cRXP_PICK_Melonfruit|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 14354,1 --Elune's Handmaiden
    .collect 48106,1,14193,1 --Melonfruit (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along24
    .goto 66,75.88,26.61
    >>Click the |cRXP_PICK_Elune's Handmaiden|r
    .accept 14357 >>Accept To the Hilt!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along28
    >>As you go: Kill |cRXP_ENEMY_Hatefury Rogues|r, |cRXP_ENEMY_Hatefury Tricksters|r, |cRXP_ENEMY_Hatefury Felsworns|r and |cRXP_ENEMY_Hatefury Betrayers|r. Loot them for |cRXP_LOOT_Satyr Saber|r. It can also be picked up from |cRXP_PICK_Weapon Rack|r on the ground. |cRXP_WARN_Anything left is finished later|r
    .collect 48943,1,14357,1 --Satyr Saber (1)
    .mob Hatefury Rogue
    .mob Hatefury Trickster
    .mob Hatefury Felsworn
    .mob Hatefury Betrayer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,75.88,26.61
    >>Click the |cRXP_PICK_Elune's Handmaiden|r
    >>Pick up |cRXP_PICK_Melonfruit|r from the ground
    .complete 14354,1 --Elune's Handmaiden
    .collect 48106,1,14193,1 --Melonfruit (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along26
    >>As you go: Click the |cRXP_PICK_Elune's Brazier|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14354,2 --Elune's Brazier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along26
    .goto 66,78.75,23.16
    >>Click the |cRXP_PICK_Elune's Brazier|r
    .accept 14358 >>Accept Ten Pounds of Flesh
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 66,79.26,21.23,0
    .goto 66,79.26,21.23,40,0
    .goto 66,78.33,25.64,40,0
    .goto 66,75.20,23.35,40,0
    .goto 66,79.30,15.80,40,0
    >>Click the |cRXP_PICK_Elune's Brazier|r
    >>Kill |cRXP_ENEMY_Hatefury Rogues|r, |cRXP_ENEMY_Hatefury Tricksters|r, |cRXP_ENEMY_Hatefury Felsworns|r and |cRXP_ENEMY_Hatefury Betrayers|r. Loot them for |cRXP_LOOT_Satyr Flesh|r
    >>Click the |cRXP_PICK_Cup of Elune|r
    .complete 14354,2 --Elune's Brazier
    .collect 48857,1,14358,1 --Satyr Flesh (1)
    .complete 14354,3 --Cup of Elune
    .mob Hatefury Rogue
    .mob Hatefury Trickster
    .mob Hatefury Felsworn
    .mob Hatefury Betrayer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along28
    .goto 66,77.00,18.08
    >>Click the |cRXP_PICK_Cup of Elune|r
    .complete 14193,1 --Cup of Elune
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 66,78.95,20.17,0
    .goto 66,78.95,20.17,40,0
    .goto 66,79.30,15.80,40,0
    .goto 66,78.33,25.64,40,0
    >>Kill |cRXP_ENEMY_Hatefury Rogues|r, |cRXP_ENEMY_Hatefury Tricksters|r, |cRXP_ENEMY_Hatefury Felsworns|r and |cRXP_ENEMY_Hatefury Betrayers|r. Loot them for |cRXP_LOOT_Satyr Saber|r. It can also be picked up from |cRXP_PICK_Weapon Rack|r on the ground
    .collect 48943,1,14357,1 --Satyr Saber (1)
    .mob Hatefury Rogue
    .mob Hatefury Trickster
    .mob Hatefury Felsworn
    .mob Hatefury Betrayer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,78.75,23.16
    >>Click the |cRXP_PICK_Elune's Brazier|r
    .complete 14358,1 --Elune's Brazier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,78.75,23.16
    >>Click the |cRXP_PICK_Elune's Brazier|r
    .turnin 14358 >>Turn in Ten Pounds of Flesh
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,75.88,26.61
    >>Click the |cRXP_PICK_Elune's Handmaiden|r
    .complete 14357,1 --Elune's Handmaiden
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,75.88,26.61
    >>Click the |cRXP_PICK_Elune's Handmaiden|r
    .turnin 14357 >>Turn in To the Hilt!
step
    .goto 66,70.38,32.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Embassador Thunk|r
    .accept 14247 >>Accept Stubborn Lands
    .accept 14246 >>Accept Early Adoption
    .target Cenarion Embassador Thunk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,69.30,29.27
    >>Click the |cRXP_PICK_Ancient Tablets|r
    .turnin 14193 >>Turn in Nothing a Couple of Melons Won't Fix
step
    .goto 66,60.98,29.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bizby|r
    .accept 14253 >>Accept Fletch Me Some Plumage!
    .accept 14251 >>Accept New Beginnings
    .accept 14252 >>Accept Good Gold For Bad Tail
    .target Bizby
step
    #completewith Along37
    >>As you go: Kill |cRXP_ENEMY_Scorpashi Snappers|r. Loot them for |cRXP_LOOT_Scorpion Stinger|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14251,1 --Scorpion Stinger (15)
    .mob Scorpashi Snapper
step
    #label Along37
    #loop
    .goto 66,58.67,18.95,0
    .goto 66,58.67,18.95,40,0
    .goto 66,59.94,14.28,40,0
    .goto 66,55.07,15.60,40,0
    >>Kill |cRXP_ENEMY_Gritjaw Basilisks|r. Loot them for |cRXP_LOOT_Aged Basilisk Tail|r
    .complete 14252,1 --Aged Basilisk Tail (15)
    .mob Gritjaw Basilisk
step
    #loop
    .goto 66,52.11,4.39,0
    .goto 66,52.11,4.39,40,0
    .goto 66,50.24,4.53,40,0
    >>Kill |cRXP_ENEMY_Dread Swoops|r. Loot them for |cRXP_LOOT_Dread Swoop Feather|r
    .complete 14253,1 --Dread Swoop Feather (25)
    .mob Dread Swoop
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.44,11.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahlarriel Demonslayer|r
    .turnin 14354 >>Turn in Elune's Gifts
    .target Vahlarriel Demonslayer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.66,10.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Pentigast|r
    .accept 14361 >>Accept Peace of Mind
    .target Captain Pentigast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.74,10.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Melkins|r
    .accept 14365 >>Accept Ethel Rethor
    .target Corporal Melkins
step
    #completewith Along43
    >>As you go: Kill |cRXP_ENEMY_Scorpashi Snappers|r. Loot them for |cRXP_LOOT_Scorpion Stinger|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14251,1 --Scorpion Stinger (15)
    .mob Scorpashi Snapper
step
    .goto 66,70.16,17.83
    >>Click the |cRXP_PICK_Swoop Nest|r
    .complete 14246,1 --Swoop Nest
step
    #label Along43
    .goto 66,69.32,21.19
    >>Click the |cRXP_PICK_Smouldering Stone|r
    .turnin 14247 >>Turn in Stubborn Lands
    .accept 14254 >>Accept Heavy Metal
step
    #loop
    .goto 66,70.05,19.12,0
    .goto 66,70.05,19.12,40,0
    .goto 66,67.73,25.53,40,0
    >>Kill |cRXP_ENEMY_Scorpashi Snappers|r. Loot them for |cRXP_LOOT_Scorpion Stinger|r
    .complete 14251,1 --Scorpion Stinger (15)
    .mob Scorpashi Snapper
step
    #loop
    .goto 66,62.28,24.07,0
    .goto 66,62.28,24.07,40,0
    .goto 66,63.32,30.58,40,0
    >>Pick up |cRXP_PICK_Element 116|r from the ground
    .complete 14254,1 --Element 116 (1)
step
    .goto 66,60.98,29.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bizby|r
    .turnin 14253 >>Turn in Fletch Me Some Plumage!
    .turnin 14254 >>Turn in Heavy Metal
    .turnin 14252 >>Turn in Good Gold For Bad Tail
    .turnin 14251 >>Turn in New Beginnings
    .target Bizby
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,53.49,33.00
    >>Kill |cRXP_ENEMY_Kohor|r
    .complete 14361,1 --Kohor slain (1)
    .mob Kohor
step
    .goto 66,44.62,29.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerelia|r
    .turnin 14184 >>Turn in My Time Has Passed
    .target Cerelia
step
    .goto 66,38.80,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Researcher Korrah|r
    .turnin 14365 >>Turn in Ethel Rethor << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 14256 >>Accept The Emerging Threat
    .target Cenarion Researcher Korrah
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
    >>Kill |cRXP_ENEMY_Slitherblade Sorceress|r. Loot them for |cRXP_LOOT_Slitherblade Scale|r
    >>Kill |cRXP_ENEMY_Slitherblade Warriors|r. Loot them for |cRXP_LOOT_Slitherblade Fin|r
    >>Kill |cRXP_ENEMY_Slitherblade Nagas|r. Loot them for |cRXP_LOOT_Slitherblade Bones|r
    .complete 14257,2 --Slitherblade Scale (30)
    .complete 14257,3 --Slitherblade Fin (4)
    .complete 14257,1 --Slitherblade Bones (10)
    .mob Slitherblade Sorceress
    .mob Slitherblade Warrior
    .mob Slitherblade Naga
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.20,9.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .accept 1454 >>Accept The Karnitol Shipwreck
    .target Kreldig Ungor
    .isQuestTurnedIn 1453 --Reclaimers' Business in Desolace
    .xp <27,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.66,10.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Pentigast|r
    .turnin 14361 >>Turn in Peace of Mind
    .accept 14363 >>Accept You'll Know It When You See It
    .target Captain Pentigast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,52.95,28.99
    >>Open the |cRXP_PICK_Demonic Chest|r. Loot it for |cRXP_LOOT_Ancient Summoning Ritual|r
    .complete 14363,1 --Ancient Summoning Ritual (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.66,10.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Pentigast|r
    .turnin 14363 >>Turn in You'll Know It When You See It
    .accept 14364 >>Accept Putting Their Heads Together
    .target Captain Pentigast
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 66,54.73,27.09,0
    .goto 66,54.73,27.09,40,0
    .goto 66,53.68,29.52,40,0
    >>Open the |cRXP_PICK_Bleached Skullpile|r. Loot it for |cRXP_LOOT_Bleached Skull|r
    .collect 48953,1,14364,1 --Bleached Skull (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,54.93,26.69
    >>Kill |cRXP_ENEMY_Nazargen|r
    .complete 14364,1 --Nazargen slain (1)
    .mob Nazargen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.66,10.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Pentigast|r
    .turnin 14364 >>Turn in Putting Their Heads Together
    .target Captain Pentigast
step
    .goto 66,70.38,32.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cenarion Embassador Thunk|r
    .turnin 14246 >>Turn in Early Adoption
    .target Cenarion Embassador Thunk
step
    .goto 66,62.42,39.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .accept 5501 >>Accept Bone Collector
    .target Bibbly F'utzbuckle
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 30 - 36 Desolace
#subweight -30
#name 33-36 Desolace: around Karnum Marshweaver
--RouteBuilder:next
#next Zone Routes (Alliance)\35-37 Western Plaguelands: around Field Agent Kaartish;Zone Routes (Alliance)\36-38 Dustwallow Marsh: around "Swamp Eye" Jarl;Zone Routes (Alliance)\36-38 Feralas: around Telaron Windflight

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
    .turnin 14302 >>Turn in Official Assessment
    .target Karnum Marshweaver
    .isOnQuest 14302
step
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .accept 14307 >>Accept Stubborn Winds
    .target Karnum Marshweaver
step
    .goto 66,58.59,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Ferrah|r
    .accept 14305 >>Accept A Time to Reap
    .accept 14306 >>Accept Pulling Weeds
    .target Botanist Ferrah
step
    #completewith Along77
    >>As you go: Pick up |cRXP_PICK_Aloe Thistle|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 14305,1 --Aloe Thistle (10)
step
    #label Along77
    #loop
    .goto 66,59.52,57.06,0
    .goto 66,59.52,57.06,40,0
    .goto 66,62.46,58.71,40,0
    >>Kill |cRXP_ENEMY_Uprooted Lashers|r
    .complete 14306,1 --Uprooted Lasher slain (7)
    .mob Uprooted Lasher
step
    #loop
    .goto 66,62.85,55.28,0
    .goto 66,62.85,55.28,40,0
    .goto 66,64.16,57.16,40,0
    .goto 66,55.15,63.09,40,0
    .goto 66,54.42,60.14,40,0
    >>Pick up |cRXP_PICK_Aloe Thistle|r from the ground
    .complete 14305,1 --Aloe Thistle (10)
step
    #loop
    .goto 66,54.20,58.94,0
    .goto 66,54.20,58.94,40,0
    .goto 66,50.79,58.70,40,0
    >>Loot the |cRXP_PICK_Kodo Bones|r for |cRXP_LOOT_Kodo Bone|r
    .complete 5501,1 --Kodo Bone (10)
    .isOnQuest 5501
step
    .goto 66,55.41,55.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nataka Longhorn|r
    .accept 14341 >>Accept Smeed's Harnesses
    .target Nataka Longhorn
step
    .goto 66,52.57,54.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takata Steelblade|r
    .turnin 1432 >>Turn in Alliance Relations
    .target Takata Steelblade
    .isOnQuest 1432
step
    #completewith Along82
    >>As you go: Kill |cRXP_ENEMY_Blood-filled Leeches|r. Loot them for |cRXP_LOOT_Blood-Filled Leech|r. |cRXP_WARN_Anything left is finished later|r
    .complete 14304,1 --Blood-Filled Leech (10)
    .mob Blood-filled Leech
step
    #label Along82
    #loop
    .goto 66,46.32,51.08,0
    .goto 66,46.32,51.08,40,0
    .goto 66,46.33,47.78,40,0
    >>Kill |cRXP_ENEMY_Whirlwind Stormwalkers|r
    .complete 14307,1 --Whirlwind Stormwalker slain (5)
    .mob Whirlwind Stormwalker
step
    #loop
    .goto 66,50.92,50.95,0
    .goto 66,50.92,50.95,40,0
    .goto 66,52.53,48.92,40,0
    .goto 66,53.51,43.85,40,0
    .goto 66,51.39,44.36,40,0
    >>Kill |cRXP_ENEMY_Blood-filled Leeches|r. Loot them for |cRXP_LOOT_Blood-Filled Leech|r
    .complete 14304,1 --Blood-Filled Leech (10)
    .mob Blood-filled Leech
step
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .turnin 14307 >>Turn in Stubborn Winds
    .target Karnum Marshweaver
step
    .goto 66,58.78,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thressa Amberglen|r
    .turnin 14304 >>Turn in Blood Theory
    .accept 14309 >>Accept Calming the Kodo
    .target Thressa Amberglen
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
    .goto 66,60.86,61.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 14341 >>Turn in Smeed's Harnesses
    .accept 5561 >>Accept Kodo Roundup
    .target Smeed Scrabblescrew
step
    .goto 66,64.08,57.53
    >>Use the Kodo Concoction near 5 Enraged Kodos.
    .complete 14309,1 --Enraged Kodo (5)
    .target Enraged Kodo
step
    .goto 66,58.59,48.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Botanist Ferrah|r
    .turnin 14311 >>Turn in Taking Part
    .target Botanist Ferrah
step
    .goto 66,58.45,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren Darkwind|r
    .accept 14312 >>Accept An Introduction Is In Order
    .target Garren Darkwind
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14312 >>Turn in An Introduction Is In Order
    .accept 14314 >>Accept Breakout!
    .target Khan Leh'Prah
step
    .goto 66,58.45,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren Darkwind|r
    .accept 14316 >>Accept Cenarion Property
    .target Garren Darkwind
step
    .goto 66,58.78,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thressa Amberglen|r
    .turnin 14309 >>Turn in Calming the Kodo
    .target Thressa Amberglen
step
    .goto 66,62.42,39.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r
    .turnin 5501 >>Turn in Bone Collector
    .target Bibbly F'utzbuckle
    .isOnQuest 5501
step
    .goto 66,70.39,49.28
    >>Pick up |cRXP_PICK_Cenarion Supply Crate|r from the ground
    .complete 14316,1 --Cenarion Supply Crate (7)
step
    .goto 66,72.40,58.22
    >>Kill |cRXP_ENEMY_Magram Warden|r
    >>Kill |cRXP_ENEMY_Aged Kodos|r and |cRXP_ENEMY_Ancient Kodos|r
    .complete 14314,1 --Magram Warden slain (1)
    .complete 5561,1 --Aged Kodo (3)
    .mob Magram Warden
    .mob Aged Kodo
    .mob Ancient Kodo
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
    .zone 66 >>Leave The Exodar for Desolace
    .zoneskip 66
step
    #completewith next
    .hs >>Hearth to Brell Farglenn's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 66,58.45,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garren Darkwind|r
    .turnin 14316 >>Turn in Cenarion Property
    .target Garren Darkwind
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14314 >>Turn in Breakout!
    .accept 14318 >>Accept Delicate Negotiations
    .target Khan Leh'Prah
step
    .goto 66,60.86,61.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smeed Scrabblescrew|r
    .turnin 5561 >>Turn in Kodo Roundup
    .target Smeed Scrabblescrew
step
    .goto 66,71.07,45.48
    >>Kill |cRXP_ENEMY_Spear of the Kolkar Khan|r
    .complete 14318,1 --Spear of the Kolkar Khan slain (1)
    .mob Spear of the Kolkar Khan
step
    .goto 66,73.34,41.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Kammah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14318 >>Turn in Delicate Negotiations
    .accept 14325 >>Accept Will Work For Food
    .unitscan Khan Kammah
step
    #loop
    .goto 66,66.48,49.41,0
    .goto 66,66.48,49.41,40,0
    .goto 66,63.34,48.87,40,0
    .goto 66,62.08,44.85,40,0
    >>Kill |cRXP_ENEMY_Revitalized Basilisks|r. Loot them for |cRXP_LOOT_Basilisk Flank|r
    .complete 14325,1 --Basilisk Flank (5)
    .mob Revitalized Basilisk
step
    .goto 66,73.34,41.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Kammah|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 14325 >>Turn in Will Work For Food
    .accept 14327 >>Accept My Word is My Bond
    .unitscan Khan Kammah
step
    .goto 66,58.29,50.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Leh'Prah|r
    .turnin 14327 >>Turn in My Word is My Bond
    .accept 14328 >>Accept Three Princes
    .target Khan Leh'Prah
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .accept 14372 >>Accept Thargad's Camp
    .target Karnum Marshweaver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,36.69,71.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thargad|r
    .turnin 14372 >>Turn in Thargad's Camp
    .accept 14373 >>Accept Infernal Encroachment
    .accept 14374 >>Accept Portals of the Legion
    .target Thargad
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 66,50.91,81.31,0
    .goto 66,50.91,81.31,40,0
    .goto 66,53.59,79.84,40,0
    >>Kill |cRXP_ENEMY_Demon Portal Guardians|r
    >>Kill |cRXP_ENEMY_Lesser Infernals|r
    .complete 14374,1 --Demon Portal Guardian slain (8)
    .complete 14373,1 --Lesser Infernal slain (10)
    .mob Demon Portal Guardian
    .mob Lesser Infernal
step
    .goto 66,41.81,82.48
    >>Kill |cRXP_ENEMY_Rhoho|r
    .complete 14328,1 --Rhoho slain (1)
    .mob Rhoho
step
    .goto 66,35.50,81.44
    >>Kill |cRXP_ENEMY_Sherik|r
    .complete 14328,2 --Sherik slain (1)
    .mob Sherik
step
    .goto 66,35.62,92.35
    >>Kill |cRXP_ENEMY_Jorreth|r
    .complete 14328,3 --Jorreth slain (1)
    .mob Jorreth
step
    .goto 66,40.51,95.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Shodo|r
    .turnin 14328 >>Turn in Three Princes
    .accept 14329 >>Accept Not So Fast!
    .target Khan Shodo
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,36.69,71.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thargad|r
    .turnin 14373 >>Turn in Infernal Encroachment
    .turnin 14374 >>Turn in Portals of the Legion
    .accept 14378 >>Accept Hunting Brendol
    .target Thargad
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,36.39,71.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumti|r
    .accept 14379 >>Accept Rock Lobstrock!
    .target Dumti
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 66,29.21,81.25,0
    .goto 66,29.21,81.25,40,0
    .goto 66,26.42,79.33,40,0
    .goto 66,23.99,82.04,40,0
    >>Kill |cRXP_ENEMY_Drysnap Crawlers|r and |cRXP_ENEMY_Drysnap Pincers|r. Loot them for |cRXP_LOOT_Tender Lobstrock Tail|r
    >>Kill |cRXP_ENEMY_Brendol|r and loot |cRXP_LOOT_Brendol's Satchel|r
    .complete 14379,1 --Tender Lobstrock Tail (7)
    .complete 14378,1 --Brendol's Satchel (1)
    .mob Drysnap Crawler
    .mob Drysnap Pincer
    .mob Brendol
step
    .goto 66,27.22,63.35
    >>Click the |cRXP_PICK_Broken Relic|r
    .accept 14333 >>Accept While You're Here
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
    .goto 66,29.82,57.78,40,0
    >>Kill |cRXP_ENEMY_Maraudine Maulers|r
    >>Pick up |cRXP_PICK_Defiled Relic|r from the ground
    .complete 14329,1 --Maraudine Mauler slain (10)
    .collect 49194,1,14333,1 --Defiled Relic (1)
    .mob Maraudine Mauler
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,36.39,71.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dumti|r
    .turnin 14379 >>Turn in Rock Lobstrock!
    .target Dumti
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,36.69,71.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thargad|r
    .turnin 14378 >>Turn in Hunting Brendol
    .accept 14380 >>Accept An Impactful Discovery
    .target Thargad
step
    .goto 66,40.51,95.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Shodo|r
    .turnin 14333 >>Turn in While You're Here
    .turnin 14329 >>Turn in Not So Fast!
    .target Khan Shodo
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
    .zone 66 >>Leave The Exodar for Desolace
    .zoneskip 66
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Brell Farglenn's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .turnin 14380 >>Turn in An Impactful Discovery
    .accept 14381 >>Accept Cleansing Our Crevasse
    .target Karnum Marshweaver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,57.60,47.70
    >>Kill |cRXP_ENEMY_Grimfeather|r
    .complete 14381,1 --Grimfeather slain (1)
    .mob Grimfeather
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 66,41.12,50.46,0
    .goto 66,41.12,50.46,40,0
    .goto 66,39.80,44.64,40,0
    .goto 66,36.50,46.43,40,0
    >>Interact with |cRXP_FRIENDLY_Slitherblade Sirens|r
    .complete 14381,2 --Slitherblade Siren (10)
    .target Slitherblade Siren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 66,39.26,45.85,0
    .goto 66,39.26,45.85,40,0
    .goto 66,39.79,43.32,40,0
    .goto 66,41.50,50.69,40,0
    >>Interact with |cRXP_FRIENDLY_Slitherblade Invaders|r
    .complete 14381,4 --Slitherblade Invader (10)
    .target Slitherblade Invader
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,36.11,30.45
    >>Click the |cRXP_PICK_Karnitol's Chest|r
    .turnin 1454 >>Turn in The Karnitol Shipwreck
    .isOnQuest 1454
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,36.11,30.45
    >>Click the |cRXP_PICK_Karnitol's Chest|r
    .accept 1455 >>Accept The Karnitol Shipwreck
    .isQuestTurnedIn 1454 --any of: The Karnitol Shipwreck
    .xp <27,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,34.70,45.56
    >>Interact with |cRXP_FRIENDLY_Sea Giants|r
    .complete 14381,3 --Sea Giant (3)
    .target Sea Giant
step
    .goto 66,33.95,53.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melizza Brimbuzzle|r
    .accept 6132 >>Accept Get Me Out of Here!
    .target Melizza Brimbuzzle
step
    .goto 66,40.15,61.58
    >>Melizza Brimbuzzle escorted to safety
    .complete 6132,1 --Melizza Brimbuzzle escorted to safety
step
    .goto 66,47.83,61.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hornizz Brimbuzzle|r
    .turnin 6132 >>Turn in Get Me Out of Here!
    .target Hornizz Brimbuzzle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,57.47,47.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karnum Marshweaver|r
    .turnin 14381 >>Turn in Cleansing Our Crevasse
    .target Karnum Marshweaver
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,73.38,73.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khan Shodo|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 14410 >>Accept The Wilds of Feralas
    .unitscan Khan Shodo
    .isQuestTurnedIn 14394 --Death to Agogridon
    .xp <31,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 66 >>Leave Darnassus for Desolace
    .zoneskip 66
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.20,9.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1455 >>Turn in The Karnitol Shipwreck
    .target Kreldig Ungor
    .isOnQuest 1455
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.20,9.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .accept 1456 >>Accept The Karnitol Shipwreck
    .target Kreldig Ungor
    .isQuestTurnedIn 1455 --any of: The Karnitol Shipwreck
    .xp <27,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 66,31.70,6.60,0
    .goto 66,31.70,6.60,40,0
    .goto 66,30.77,3.31,40,0
    >>Kill |cRXP_ENEMY_Slitherblade Tidehunters|r and |cRXP_ENEMY_Slitherblade Sea Witches|r. Loot them for |cRXP_LOOT_Karnitol's Satchel|r
    .complete 1456,1 --Karnitol's Satchel (1)
    .mob Slitherblade Tidehunter
    .mob Slitherblade Sea Witch
    .isOnQuest 1456
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 66,66.20,9.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreldig Ungor|r
    .turnin 1456 >>Turn in The Karnitol Shipwreck
    .target Kreldig Ungor
    .isOnQuest 1456
step << NightElf
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
step
    +|cRXP_WARN_That is all of Desolace for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: The Wilds of Feralas << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Southern Barrens|r: Hero's Call: Southern Barrens! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
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
    +|cRXP_WARN_End of the Desolace route.|r
step
    +|cRXP_WARN_Suggested next zones at level 35|r: |cRXP_FRIENDLY_Western Plaguelands|r (about 1.7 levels of quests, starting around Field Agent Kaartish), |cRXP_FRIENDLY_Dustwallow Marsh|r (about 1.6 levels of quests, starting around "Swamp Eye" Jarl), |cRXP_FRIENDLY_Feralas|r (about 0.7 levels of quests, starting around Telaron Windflight). Completing this step loads the guide for Western Plaguelands --RouteBuilder:next
]])
