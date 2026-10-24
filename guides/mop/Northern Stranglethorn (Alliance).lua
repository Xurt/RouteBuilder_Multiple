-- 25-30 Northern Stranglethorn: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Northern Stranglethorn.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 25-30 Northern Stranglethorn
--RouteBuilder:next
#next Zone Routes (Alliance)\30-33 Desolace: around Cenarion Researcher Korrah;Zone Routes (Alliance)\30-33 The Cape of Stranglethorn: around Captain Hecklebury Smotts;Zone Routes (Alliance)\26-31 Arathi Highlands

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.57,10.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 28699 >>Turn in Hero's Call: Northern Stranglethorn Vale!
    .target Lieutenant Doren
    .isOnQuest 28699
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.57,10.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 26838 >>Turn in Rebels Without a Clue
    .target Lieutenant Doren
    .isOnQuest 26838
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.57,10.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .accept 26735 >>Accept The Fate of Kurzen
    .target Lieutenant Doren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.10,10.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .accept 26740 >>Accept Krazek's Cookery
    .target Corporal Kaleb
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.25,11.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .accept 26732 >>Accept Bad Medicine
    .target Brother Nimetz
step
    .goto 50,44.24,22.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 583 >>Accept Welcome to the Jungle
    .target Barnil Stonepot
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 583 >>Turn in Welcome to the Jungle
    .accept 194 >>Accept Raptor Hunting
    .target Hemet Nesingwary Jr.
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 26343 >>Accept Supply and Demand
    .target Drizzlik
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,43.60,23.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 26740 >>Turn in Krazek's Cookery
    .accept 26763 >>Accept Venture Company Mining
    .target Krazek
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 190 >>Accept Panther Hunting
    .target Sir S. J. Erlgadin
step
    .goto 50,44.24,22.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .accept 26269 >>Accept The Green Hills of Stranglethorn
    .target Barnil Stonepot
step
    #completewith Along11
    >>As you go: Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for |cRXP_LOOT_Large River Crocolisk Skin|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26343,1 --Large River Crocolisk Skin (2)
    .mob River Crocolisk
step
    #label Along11
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .accept 185 >>Accept Tiger Hunting
    .target Ajeck Rouack
step
    #completewith Along13
    >>As you go: Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 185,1 --Young Stranglethorn Tiger slain (10)
    .mob Young Stranglethorn Tiger
step
    #completewith Along12
    >>As you go: Kill |cRXP_ENEMY_Vale Howler|r and loot |cRXP_LOOT_Green Hills of Stranglethorn - Page 14|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26269,1 --Green Hills of Stranglethorn - Page 14 (1)
    .mob Vale Howler
step
    #label Along12
    #loop
    .goto 50,45.75,21.78,0
    .goto 50,45.75,21.78,40,0
    .goto 50,42.09,21.94,40,0
    >>Kill |cRXP_ENEMY_River Crocolisks|r. Loot them for |cRXP_LOOT_Large River Crocolisk Skin|r
    .complete 26343,1 --Large River Crocolisk Skin (2)
    .mob River Crocolisk
step
    #label Along13
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26343 >>Turn in Supply and Demand
    .accept 26344 >>Accept Some Assembly Required
    .target Drizzlik
step
    #loop
    .goto 50,44.15,25.98,0
    .goto 50,44.15,25.98,40,0
    .goto 50,45.50,24.40,40,0
    .goto 50,41.35,23.20,40,0
    >>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --Young Stranglethorn Tiger slain (10)
    .mob Young Stranglethorn Tiger
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 185 >>Turn in Tiger Hunting
    .accept 186 >>Accept Tiger Stalking
    .target Ajeck Rouack
step
    #loop
    .goto 50,50.32,30.40,0
    .goto 50,50.32,30.40,40,0
    .goto 50,53.56,32.73,40,0
    .goto 50,52.74,39.25,40,0
    >>Kill |cRXP_ENEMY_Snapjaw Crocolisks|r. Loot them for |cRXP_LOOT_Snapjaw Crocolisk Skin|r
    .complete 26344,1 --Snapjaw Crocolisk Skin (5)
    .mob Snapjaw Crocolisk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,55.41,35.92,0
    .goto 50,55.41,35.92,40,0
    .goto 50,58.98,32.93,40,0
    .goto 50,59.91,36.72,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Geologists|r and |cRXP_ENEMY_Venture Co. Shredders|r. Loot them for |cRXP_LOOT_Tumbled Crystal|r
    .complete 26763,1 --Tumbled Crystal (5)
    .mob Venture Co. Geologist
    .mob Venture Co. Shredder
step
    #loop
    .goto 50,56.32,28.45,0
    .goto 50,56.32,28.45,40,0
    .goto 50,60.30,27.71,40,0
    >>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
    .complete 186,1 --Stranglethorn Tiger slain (10)
    .mob Stranglethorn Tiger
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 186 >>Turn in Tiger Stalking
    .accept 187 >>Accept Tiger Prowess
    .target Ajeck Rouack
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,43.60,23.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 26763 >>Turn in Venture Company Mining while you are here
    .isQuestComplete 26763
    .target Krazek
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26344 >>Turn in Some Assembly Required while you are here
    .isQuestComplete 26344
    .target Drizzlik
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,57.03,20.58,0
    .goto 50,57.03,20.58,40,0
    .goto 50,58.15,18.97,40,0
    >>Pick up |cRXP_PICK_Kurzen Compound Officers' Dossier|r from the ground
    >>Pick up |cRXP_PICK_Kurzen Compound Prison Records|r from the ground
    >>Kill |cRXP_ENEMY_Kurzen Jungle Fighters|r, |cRXP_ENEMY_Kurzen Medicine Mans|r, |cRXP_ENEMY_Kurzen Headshrinkers|r and |cRXP_ENEMY_Kurzen Witch Doctors|r. Loot them for |cRXP_LOOT_Jungle Remedy|r
    .complete 26735,2 --Kurzen Compound Officers' Dossier (1)
    .complete 26735,1 --Kurzen Compound Prison Records (1)
    .complete 26732,1 --Jungle Remedy (7)
    .mob Kurzen Jungle Fighter
    .mob Kurzen Medicine Man
    .mob Kurzen Headshrinker
    .mob Kurzen Witch Doctor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,46.98,10.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .accept 26738 >>Accept Just Hatched
    .target Corporal Sethman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,46.98,10.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 26738 >>Turn in Just Hatched while you are here
    .isQuestComplete 26738
    .target Corporal Sethman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.25,11.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 26732 >>Turn in Bad Medicine while you are here
    .isQuestComplete 26732
    .target Brother Nimetz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.57,10.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 26735 >>Turn in The Fate of Kurzen while you are here
    .isQuestComplete 26735
    .target Lieutenant Doren
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,49.95,12.74,0
    .goto 224,49.95,12.74,40,0
    .goto 224,52.29,14.95,40,0
    >>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --Young Panther slain (10)
    .mob Young Panther
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 190 >>Turn in Panther Hunting
    .accept 191 >>Accept Panther Stalking
    .target Sir S. J. Erlgadin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.57,10.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 26735 >>Turn in The Fate of Kurzen
    .accept 26736 >>Accept Spared from Madness
    .target Lieutenant Doren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,46.98,10.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 26738 >>Turn in Just Hatched
    .accept 26739 >>Accept I Think She's Hungry
    .target Corporal Sethman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.25,11.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 26732 >>Turn in Bad Medicine
    .accept 26733 >>Accept Control Sample
    .target Brother Nimetz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.41,20.30
    >>Kill |cRXP_ENEMY_Berrin Burnquills|r
    >>Kill |cRXP_ENEMY_Emerine Junis|r
    >>Kill |cRXP_ENEMY_Osborn Obnoticus|r
    .complete 26736,1 --Berrin Burnquill (8)
    .complete 26736,2 --Emerine Junis (8)
    .complete 26736,3 --Osborn Obnoticus (8)
    .mob Berrin Burnquill
    .mob Emerine Junis
    .mob Osborn Obnoticus
step
    #loop
    .goto 50,61.28,22.33,0
    .goto 50,61.28,22.33,40,0
    .goto 50,63.19,22.41,40,0
    >>Kill |cRXP_ENEMY_Vale Howler|r and loot |cRXP_LOOT_Green Hills of Stranglethorn - Page 14|r
    >>Kill |cRXP_ENEMY_Crystal Spine Basilisk|r and loot |cRXP_LOOT_Crystal Spine Basilisk Blood|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Crystal Spine Basilisks|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 26269,1 --Green Hills of Stranglethorn - Page 14 (1)
    .complete 26733,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Crystal Spine Basilisk Blood (1)
    .complete 26739,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Crystal Spine Basilisk slain (8)
    .mob Vale Howler
    .mob Crystal Spine Basilisk << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.25,11.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 26733 >>Turn in Control Sample
    .accept 26734 >>Accept The Source of the Madness
    .target Brother Nimetz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,46.98,10.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 26739 >>Turn in I Think She's Hungry
    .accept 26744 >>Accept Deep Roots
    .target Corporal Sethman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.57,10.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 26736 >>Turn in Spared from Madness
    .accept 26737 >>Accept Stopping Kurzen's Legacy
    .target Lieutenant Doren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along33
    >>As you go: Kill |cRXP_ENEMY_Kurzen Elites|r, |cRXP_ENEMY_Kurzen Headshrinkers|r, |cRXP_ENEMY_Kurzen Witch Doctors|r and |cRXP_ENEMY_Kurzen Subchiefs|r. Loot them for |cRXP_LOOT_Whispering Blue Stone|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26734,1 --Whispering Blue Stone (1)
    .mob Kurzen Elite
    .mob Kurzen Headshrinker
    .mob Kurzen Witch Doctor
    .mob Kurzen Subchief
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,62.46,14.07,0
    .goto 50,62.46,14.07,40,0
    .goto 50,63.73,16.73,40,0
    >>Kill |cRXP_ENEMY_Chief Anders|r
    >>Kill |cRXP_ENEMY_Chief Gaulus|r
    >>Kill |cRXP_ENEMY_Chief Miranda|r
    .complete 26737,1 --Chief Anders slain (1)
    .complete 26737,2 --Chief Gaulus slain (1)
    .complete 26737,3 --Chief Miranda slain (1)
    .mob Chief Anders
    .mob Chief Gaulus
    .mob Chief Miranda
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along33
    .goto 50,66.10,11.73
    >>Kill |cRXP_ENEMY_Chief Esquivel|r
    .complete 26737,4 --Chief Esquivel slain (1)
    .mob Chief Esquivel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,65.13,17.77,0
    .goto 50,65.13,17.77,40,0
    .goto 50,63.20,16.88,40,0
    >>Kill |cRXP_ENEMY_Kurzen Elites|r, |cRXP_ENEMY_Kurzen Headshrinkers|r, |cRXP_ENEMY_Kurzen Witch Doctors|r and |cRXP_ENEMY_Kurzen Subchiefs|r. Loot them for |cRXP_LOOT_Whispering Blue Stone|r
    .complete 26734,1 --Whispering Blue Stone (1)
    .mob Kurzen Elite
    .mob Kurzen Headshrinker
    .mob Kurzen Witch Doctor
    .mob Kurzen Subchief
step
    .hs >> Hearthstone to Darkshire
    .cooldown item,6948,>2
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.45,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berrin Burnquill|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26742 >>Accept Bloodscalp Insight
    .unitscan Berrin Burnquill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.25,11.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 26734 >>Turn in The Source of the Madness
    .target Brother Nimetz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.57,10.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 26737 >>Turn in Stopping Kurzen's Legacy
    .target Lieutenant Doren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.41,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emerine Junis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26729 >>Accept Water Elementals
    .unitscan Emerine Junis
step
    .goto 50,44.24,22.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    .turnin 26269 >>Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,43.60,23.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 26763 >>Turn in Venture Company Mining
    .accept 26765 >>Accept Return to Corporal Kaleb
    .target Krazek
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26344 >>Turn in Some Assembly Required
    .accept 26345 >>Accept Excelsior
    .target Drizzlik
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    .goto 224,42.68,23.32
    >>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
    .complete 187,1 --Elder Stranglethorn Tiger slain (5)
    .mob Elder Stranglethorn Tiger
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 187 >>Turn in Tiger Prowess
    .accept 188 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    .goto 50,38.52,32.54
    >>Kill |cRXP_ENEMY_Sin'Dall|r and loot |cRXP_LOOT_Paw of Sin'Dall|r
    .complete 188,1 --Paw of Sin'Dall (1)
    .mob Sin'Dall
step
    #loop
    .goto 50,32.86,29.12,0
    .goto 50,32.86,29.12,40,0
    .goto 50,32.66,26.37,40,0
    .goto 50,33.87,21.11,40,0
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 --Panther slain (10)
    .mob Panther
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 191 >>Turn in Panther Stalking
    .accept 192 >>Accept Panther Prowess
    .target Sir S. J. Erlgadin
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 188 >>Turn in Tiger Mastery while you are here
    .isQuestComplete 188
    .target Ajeck Rouack
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,38.09,19.37,0
    .goto 224,38.09,19.37,40,0
    .goto 224,35.81,20.17,40,0
    >>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
    .complete 194,1 --Stranglethorn Raptor slain (10)
    .mob Stranglethorn Raptor
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 194 >>Turn in Raptor Hunting
    .accept 195 >>Accept Raptor Stalking
    .target Hemet Nesingwary Jr.
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,22.61,41.45,0
    .goto 50,22.61,41.45,40,0
    .goto 50,20.18,41.38,40,0
    >>Kill |cRXP_ENEMY_Lesser Water Elementals|r. Loot them for |cRXP_LOOT_Water Elemental Bracers|r
    .complete 26729,1 --Water Elemental Bracers (6)
    .mob Lesser Water Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.41,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emerine Junis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26729 >>Turn in Water Elementals
    .accept 26730 >>Accept You Can Take the Murloc Out of the Ocean...
    .unitscan Emerine Junis
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along52
    >>As you go: Kill |cRXP_ENEMY_Bloodscalp Shaman|r and loot |cRXP_LOOT_Bloodscalp Totem|r. |cRXP_WARN_Anything left is finished later|r
    .complete 26742,1 --Bloodscalp Totem (1)
    .mob Bloodscalp Shaman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,33.67,36.87
    >>Pick up |cRXP_PICK_Bloodscalp Lore Tablet|r from the ground
    .complete 26744,1 --Bloodscalp Lore Tablet (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along52
    .goto 50,33.73,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lashtail Hatchling|r
    .accept 26745 >>Accept Favored Skull
    .target Lashtail Hatchling
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,34.54,35.32,0
    .goto 50,34.54,35.32,40,0
    .goto 50,35.67,37.85,40,0
    >>Kill |cRXP_ENEMY_Bloodscalp Shaman|r and loot |cRXP_LOOT_Bloodscalp Totem|r
    .complete 26742,1 --Bloodscalp Totem (1)
    .mob Bloodscalp Shaman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,40.94,35.09,0
    .goto 50,40.94,35.09,40,0
    .goto 50,41.23,39.03,40,0
    .goto 50,42.71,41.65,40,0
    >>Kill |cRXP_ENEMY_Murkgill Foragers|r, |cRXP_ENEMY_Murkgill Hunters|r, |cRXP_ENEMY_Murkgill Oracles|r and |cRXP_ENEMY_Murkgill Coldbringers|r. Loot them for |cRXP_LOOT_Sea Salt|r
    .complete 26730,1 --Sea Salt (1)
    .mob Murkgill Forager
    .mob Murkgill Hunter
    .mob Murkgill Oracle
    .mob Murkgill Coldbringer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.41,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emerine Junis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26730 >>Turn in You Can Take the Murloc Out of the Ocean...
    .accept 26731 >>Accept The Altar of Naias
    .unitscan Emerine Junis
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,46.67,29.45,0
    .goto 224,46.67,29.45,40,0
    .goto 224,45.60,30.81,40,0
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    .complete 195,1 --Lashtail Raptor slain (10)
    .mob Lashtail Raptor
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 195 >>Turn in Raptor Stalking
    .accept 196 >>Accept Raptor Prowess
    .target Hemet Nesingwary Jr.
step
    #completewith Along58
    >>As you go: Kill |cRXP_ENEMY_Shadowmaw Panthers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 192,1 --Shadowmaw Panther slain (5)
    .mob Shadowmaw Panther
step
    #label Along58
    #loop
    .goto 50,50.82,49.58,0
    .goto 50,50.82,49.58,40,0
    .goto 50,49.29,55.17,40,0
    >>Kill |cRXP_ENEMY_Elder Snapjaw Crocolisk|r and loot |cRXP_LOOT_Elder Crocolisk Skin|r
    .complete 26345,1 --Elder Crocolisk Skin (1)
    .mob Elder Snapjaw Crocolisk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.21,66.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Livingston Marshal|r
    .accept 26781 >>Accept The Mind's Eye
    .target Livingston Marshal
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.38,66.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wulfred Harrys|r
    .accept 26783 >>Accept The Mosh'Ogg Bounty
    .target Wulfred Harrys
step
    .goto 50,43.69,23.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaquilina Dramet|r
    .target Jaquilina Dramet
    .home >>Set your Hearthstone to Jaquilina Dramet's inn
step
    .goto 50,52.640,66.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Robert Rhodes|r
    .fp Fort Livingston >>Get the Fort Livingston Flight Path
    .target Robert Rhodes
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26345 >>Turn in Excelsior while you are here
    .isQuestComplete 26345
    .target Drizzlik
step
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step
    #loop
    .goto 224,53.32,31.43,0
    .goto 224,53.32,31.43,40,0
    .goto 224,53.34,34.86,40,0
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r
    .complete 196,1 --Jungle Stalker slain (10)
    .mob Jungle Stalker
step
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step
    #completewith next
    .hs >>Hearth to Jaquilina Dramet's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 196 >>Turn in Raptor Prowess
    .accept 197 >>Accept Raptor Mastery
    .target Hemet Nesingwary Jr.
step
    .goto 50,60.19,62.71
    >>Kill |cRXP_ENEMY_Tethis|r and loot |cRXP_LOOT_Talon of Tethis|r
    .complete 197,1 --Talon of Tethis (1)
    .mob Tethis
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,70.77,48.48
    >>Kill |cRXP_ENEMY_Mai'Zoth|r and loot |cRXP_LOOT_Mind's Eye|r
    .complete 26781,1 --Mind's Eye (1)
    .mob Mai'Zoth
step
    #loop
    .goto 50,63.26,48.16,0
    .goto 50,63.26,48.16,40,0
    .goto 50,66.58,44.06,40,0
    >>Kill |cRXP_ENEMY_Shadowmaw Panthers|r
    .complete 192,1 --Shadowmaw Panther slain (5)
    .mob Shadowmaw Panther
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 192 >>Turn in Panther Prowess
    .accept 193 >>Accept Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 197 >>Turn in Raptor Mastery while you are here
    .isQuestComplete 197
    .target Hemet Nesingwary Jr.
step
    .goto 50,66.70,43.37
    >>Kill |cRXP_ENEMY_Bhag'thera|r and loot |cRXP_LOOT_Fang of Bhag'thera|r
    .complete 193,1 --Fang of Bhag'thera (1)
    .mob Bhag'thera
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,46.98,10.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Sethman|r
    .turnin 26744 >>Turn in Deep Roots
    .target Corporal Sethman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.10,10.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .turnin 26765 >>Turn in Return to Corporal Kaleb
    .target Corporal Kaleb
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.37,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26745 >>Turn in Favored Skull
    .accept 26746 >>Accept A Nose for This Sort of Thing
    .unitscan Osborn Obnoticus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.45,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berrin Burnquill|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26742 >>Turn in Bloodscalp Insight
    .accept 26743 >>Accept Sacred to the Bloodscalp
    .unitscan Berrin Burnquill
step
    .goto 50,44.50,22.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r
    .turnin 188 >>Turn in Tiger Mastery
    .target Ajeck Rouack
step
    .goto 50,43.73,22.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 193 >>Turn in Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 197 >>Turn in Raptor Mastery
    .accept 208 >>Accept Big Game Hunter
    .target Hemet Nesingwary Jr.
step
    .goto 50,43.66,23.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 26345 >>Turn in Excelsior
    .target Drizzlik
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,41.23,29.42,0
    .goto 50,41.23,29.42,40,0
    .goto 50,39.46,30.25,40,0
    >>Kill |cRXP_ENEMY_Tkashi Fetishes|r. Loot them for |cRXP_LOOT_Tkashi Fetish|r
    >>Kill |cRXP_ENEMY_Bloodscalp Scavenger|r and loot |cRXP_LOOT_Icon of Tsul'Kalu|r
    >>Kill |cRXP_ENEMY_Bloodscalp Scavenger|r and loot |cRXP_LOOT_Icon of Mahamba|r
    >>Kill |cRXP_ENEMY_Bloodscalp Scavenger|r and loot |cRXP_LOOT_Icon of Pogeyan|r
    .complete 26746,1 --Tkashi Fetish (8)
    .complete 26743,1 --Icon of Tsul'Kalu (1)
    .complete 26743,2 --Icon of Mahamba (1)
    .complete 26743,3 --Icon of Pogeyan (1)
    .mob Tkashi Fetish
    .mob Bloodscalp Scavenger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.37,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26746 >>Turn in A Nose for This Sort of Thing
    .accept 26747 >>Accept A Physical Specimen
    .unitscan Osborn Obnoticus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.45,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Berrin Burnquill|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26743 >>Turn in Sacred to the Bloodscalp
    .unitscan Berrin Burnquill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.53,10.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .accept 26751 >>Accept Population Con-Troll
    .target Sergeant Yohwa
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,28.24,19.75,0
    .goto 50,28.24,19.75,40,0
    .goto 50,28.84,24.99,40,0
    .goto 50,26.30,24.54,40,0
    >>Kill |cRXP_ENEMY_Gan'zulah|r and loot |cRXP_LOOT_Gan'zulah's Body|r
    >>Kill |cRXP_ENEMY_Bloodscalp Mystics|r
    >>Kill |cRXP_ENEMY_Bloodscalp Scouts|r
    >>Kill |cRXP_ENEMY_Bloodscalp Hunters|r
    >>Kill |cRXP_ENEMY_Bloodscalp Beastmaster|r
    .complete 26747,1 --Gan'zulah's Body (1)
    .complete 26751,1 --Bloodscalp Mystic slain (7)
    .complete 26751,2 --Bloodscalp Scout slain (7)
    .complete 26751,3 --Bloodscalp Hunter slain (7)
    .complete 26751,4 --Bloodscalp Beastmaster slain (1)
    .mob Gan'zulah
    .mob Bloodscalp Mystic
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
    .mob Bloodscalp Beastmaster
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,19.25,40.74
    >>Kill |cRXP_ENEMY_Naias|r and loot |cRXP_LOOT_Heart of Naias|r
    .complete 26731,1 --Heart of Naias (1)
    .mob Naias
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.21,66.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Livingston Marshal|r
    .turnin 26781 >>Turn in The Mind's Eye
    .target Livingston Marshal
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.38,66.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wulfred Harrys|r
    .accept 26805 >>Accept To the Cape!
    .target Wulfred Harrys
    .xp <29,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.41,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emerine Junis|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26731 >>Turn in The Altar of Naias
    .unitscan Emerine Junis
step
    .goto 50,47.77,59.54
    >>Kill |cRXP_ENEMY_King Bangalash|r and loot |cRXP_LOOT_Head of Bangalash|r
    .complete 208,1 --Head of Bangalash (1)
    .mob King Bangalash
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,47.53,10.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Yohwa|r
    .turnin 26751 >>Turn in Population Con-Troll
    .target Sergeant Yohwa
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.37,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 26747 >>Turn in A Physical Specimen
    .unitscan Osborn Obnoticus
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,38.47,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodlord Mandokir|r
    .accept 26748 >>Accept Bloodlord Mandokir
    .turnin 26748 >>Turn in Bloodlord Mandokir
    .target Bloodlord Mandokir
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,56.37,20.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborn Obnoticus|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 26749 >>Accept Priestess Thaalia
    .unitscan Osborn Obnoticus
step
    .goto 50,44.02,23.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .turnin 208 >>Turn in Big Game Hunter
    .target Hemet Nesingwary Jr.
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.46,66.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
    .turnin 26749 >>Turn in Priestess Thaalia
    .accept 26772 >>Accept Mind Vision
    .target Priestess Thaalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 224 >>Travel to Stranglethorn Vale
    .zoneskip 224
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 224,53.34,34.86,0
    .goto 224,53.34,34.86,40,0
    .goto 224,53.32,31.43,40,0
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r. Loot them for |cRXP_LOOT_Jungle Stalker Feather|r
    .complete 26772,1 --Jungle Stalker Feather (5)
    .mob Jungle Stalker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 50 >>Leave Stranglethorn Vale for Northern Stranglethorn
    .zoneskip 50
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.46,66.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
    .turnin 26772 >>Turn in Mind Vision
    .accept 26773 >>Accept See Raptor
    .target Priestess Thaalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,89.42,45.16
    >>Mind Vision complete
    .complete 26773,1 --Mind Vision complete
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.46,66.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
    .turnin 26773 >>Turn in See Raptor
    .accept 26774 >>Accept Mind Control
    .target Priestess Thaalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.06,66.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kinnel|r
    .accept 26780 >>Accept Nighttime in the Jungle
    .target Kinnel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,52.66,66.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghaliri|r
    .accept 26779 >>Accept Zul'Mamwe Mambo
    .target Ghaliri
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 50,56.98,67.93,0
    .goto 50,56.98,67.93,40,0
    .goto 50,59.25,71.27,40,0
    .goto 50,62.46,73.30,40,0
    >>Click the |cRXP_PICK_Zul'Mamwe Brazier|r
    >>Kill |cRXP_ENEMY_Skullsplitter Hunters|r, |cRXP_ENEMY_Skullsplitter Witch Doctors|r, |cRXP_ENEMY_Skullsplitter Spiritchasers|r and |cRXP_ENEMY_Skullsplitter Headhunters|r
    >>Kill |cRXP_ENEMY_Braddok|r and loot |cRXP_LOOT_Braddok's Big Brain|r
    .complete 26780,1 --Zul'Mamwe Brazier
    .complete 26779,1 --Skullsplitter Hunter (8)
    .complete 26774,1 --Braddok's Big Brain (1)
    .mob Skullsplitter Hunter
    .mob Skullsplitter Witch Doctor
    .mob Skullsplitter Spiritchaser
    .mob Skullsplitter Headhunter
    .mob Braddok
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.06,66.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kinnel|r
    .turnin 26780 >>Turn in Nighttime in the Jungle
    .target Kinnel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,52.66,66.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghaliri|r
    .turnin 26779 >>Turn in Zul'Mamwe Mambo while you are here
    .isQuestComplete 26779
    .target Ghaliri
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.46,66.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
    .turnin 26774 >>Turn in Mind Control
    .accept 26775 >>Accept Be Raptor
    .target Priestess Thaalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,67.21,54.15
    >>Pick up |cRXP_PICK_Mosh'Ogg Bounty|r from the ground
    .complete 26783,1 --Mosh'Ogg Bounty (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,89.09,46.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tan'shang|r
    .complete 26775,1 --Tan'shang
    .target Tan'shang
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,86.92,44.66
    >>Speak with Priestess Thaalia, then help the Captured Lashtail Hatchling escape from Zul'Gurub.
    .complete 26775,2 --Tenjiyu
    .target Tenjiyu
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,82.82,37.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chiyu|r
    .complete 26775,3 --Chiyu
    .target Chiyu
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,73.35,32.92
    >>Speak with Priestess Thaalia, then help the Captured Lashtail Hatchling escape from Zul'Gurub.
    .complete 26775,4 --Shade of the Hexxer
    .target Shade of the Hexxer
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.46,66.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Thaalia|r
    .turnin 26775 >>Turn in Be Raptor
    .accept 26776 >>Accept Ghaliri
    .target Priestess Thaalia
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,52.66,66.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghaliri|r
    .turnin 26776 >>Turn in Ghaliri
    .turnin 26779 >>Turn in Zul'Mamwe Mambo
    .target Ghaliri
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 50,53.38,66.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wulfred Harrys|r
    .turnin 26783 >>Turn in The Mosh'Ogg Bounty
    .accept 26805 >>Accept To the Cape!
    .target Wulfred Harrys
step
    +|cRXP_WARN_End of the Northern Stranglethorn route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Cape of Stranglethorn|r: To the Cape! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 30|r: |cRXP_FRIENDLY_Desolace|r (about 2.1 levels of quests, starting around Cenarion Researcher Korrah), |cRXP_FRIENDLY_The Cape of Stranglethorn|r (about 1.3 levels of quests, starting around Captain Hecklebury Smotts), |cRXP_FRIENDLY_Arathi Highlands|r (about 0.9 levels of quests, starting around Skuerto). Completing this step loads the guide for Desolace --RouteBuilder:next
]])
