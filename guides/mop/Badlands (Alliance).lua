-- 45-47 Badlands: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Badlands.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 45-47 Badlands
--RouteBuilder:next
#next Zone Routes (Alliance)\46-48 Felwood: around Totem of Ruumbo;Zone Routes (Alliance)\45-48 Tanaris: around Mazoga;Zone Routes (Alliance)\47-49 Searing Gorge: around Jack Rockleg

step
    .goto 15,92.64,38.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eddie Flofizzle|r
    .turnin 27762 >>Turn in Fuselight, Ho!
    .target Eddie Flofizzle
    .isOnQuest 27762
step
    .goto 15,92.64,38.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eddie Flofizzle|r
    .accept 27763 >>Accept To Fuselight Proper
    .target Eddie Flofizzle
step
    .goto 15,52.19,50.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ramah Goldenray|r
    .target Ramah Goldenray
    .home >>Set your Hearthstone to Ramah Goldenray's inn
step
    .goto 15,64.335,35.024
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mixi Sweetride|r
    .fp Fuselight >>Get the Fuselight Flight Path
    .target Mixi Sweetride
step
    .goto 15,65.08,38.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dolph Blastus|r
    .turnin 27763 >>Turn in To Fuselight Proper
    .accept 27774 >>Accept Easily Swayed
    .target Dolph Blastus
step
    .goto 15,64.27,38.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
    .accept 27775 >>Accept When the Going Gets Tough, Cheat
    .target Garyanne Fleezlebop
step
    #loop
    .goto 15,60.84,21.60,0
    .goto 15,60.84,21.60,40,0
    .goto 15,56.83,21.66,40,0
    .goto 15,55.88,24.22,40,0
    >>Kill |cRXP_ENEMY_Dustbelcher Instructor|r and loot |cRXP_LOOT_Instructor's Rod|r
    >>Kill |cRXP_ENEMY_Dustbelcher Instructors|r, |cRXP_ENEMY_Dustbelcher Initiates|r and |cRXP_ENEMY_Dustbelcher Trainees|r
    .complete 27775,1 --Instructor's Rod (1)
    .complete 27774,1 --Dustbelcher Instructor (8)
    .mob Dustbelcher Instructor
    .mob Dustbelcher Initiate
    .mob Dustbelcher Trainee
step
    .goto 15,64.27,38.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
    .turnin 27775 >>Turn in When the Going Gets Tough, Cheat
    .accept 27776 >>Accept It's Goat Time, Baby
    .target Garyanne Fleezlebop
step
    .goto 15,65.08,38.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dolph Blastus|r
    .turnin 27774 >>Turn in Easily Swayed
    .accept 27764 >>Accept A Strange Request
    .target Dolph Blastus
step
    #loop
    .goto 15,63.35,40.70,0
    .goto 15,63.35,40.70,40,0
    .goto 15,61.40,37.03,40,0
    .goto 15,65.51,33.67,40,0
    >>Interact with |cRXP_FRIENDLY_Billy Goats|r
    .complete 27776,1 --Billy Goat (12)
    .target Billy Goat
step
    .goto 15,64.27,38.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garyanne Fleezlebop|r
    .turnin 27776 >>Turn in It's Goat Time, Baby
    .target Garyanne Fleezlebop
step
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27764 >>Turn in A Strange Request
    .accept 27765 >>Accept First Sample: Wild Eggs
    .accept 27766 >>Accept Second Sample: Whelps
    .unitscan Rhea
step
    #loop
    .goto 15,71.04,53.64,0
    .goto 15,71.04,53.64,40,0
    .goto 15,73.04,48.47,40,0
    .goto 15,71.03,42.41,40,0
    .goto 15,67.55,45.70,40,0
    >>Pick up |cRXP_PICK_Wild Black Dragon Egg|r from the ground
    >>Kill |cRXP_ENEMY_Scalding Whelps|r. Loot them for |cRXP_LOOT_Scalding Whelp Corpse|r
    .complete 27765,1 --Wild Black Dragon Egg (6)
    .complete 27766,1 --Scalding Whelp Corpse (10)
    .mob Scalding Whelp
step
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27765 >>Turn in First Sample: Wild Eggs
    .turnin 27766 >>Turn in Second Sample: Whelps
    .accept 27770 >>Accept Lifting the Veil
    .unitscan Rhea
step
    .goto 15,65.80,56.70
    >>Witness the final piece of Rhea's studies.
    .complete 27770,1 --Nyxondra
    .target Nyxondra
step
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27770 >>Turn in Lifting the Veil
    .accept 27771 >>Accept Third Sample: Implanted Eggs
    .unitscan Rhea
step
    .goto 15,65.83,56.76
    >>Pick up |cRXP_PICK_Nyxondra's Egg|r from the ground
    .complete 27771,1 --Nyxondra's Egg (3)
step
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27771 >>Turn in Third Sample: Implanted Eggs
    .accept 27769 >>Accept Rhea Revealed
    .unitscan Rhea
step
    .goto 15,66.39,55.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
    .complete 27769,1 --Rhea
    .target Rhea
step
    .goto 15,66.52,55.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rheastrasza|r
    .turnin 27769 >>Turn in Rhea Revealed
    .accept 27772 >>Accept The Venerable Doctor Blam
    .target Rheastrasza
step
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27772 >>Turn in The Venerable Doctor Blam
    .accept 27789 >>Accept Troggish Troubles
    .unitscan Dr. Hieronymus Blam
step
    .goto 15,49.37,55.21
    >>Enter a Blam Turret, then survive four waves of trogg attacks.
    .complete 27789,1 --Blam Turret
    .target Blam Turret
step
    .goto 15,49.37,55.21
    >>Enter a Blam Turret, then survive four waves of trogg attacks.
    .complete 27789,2 --Blam Turret
    .target Blam Turret
step
    .goto 15,49.37,55.21
    >>Enter a Blam Turret, then survive four waves of trogg attacks.
    .complete 27789,3 --Blam Turret
    .target Blam Turret
step
    .goto 15,49.37,55.21
    >>Enter a Blam Turret, then survive four waves of trogg attacks.
    .complete 27789,4 --Blam Turret
    .target Blam Turret
step
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27789 >>Turn in Troggish Troubles
    .accept 27791 >>Accept Dustwind Dig << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .unitscan Dr. Hieronymus Blam
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,49.26,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lead Prospector Durdin|r
    .turnin 27791 >>Turn in Dustwind Dig
    .accept 27792 >>Accept All's Fair in Love, War, and Archaeology
    .target Lead Prospector Durdin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,49.49,36.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .accept 27823 >>Accept A Dwarf's Got Needs
    .target Sigrun Ironhew
step
    .goto 15,48.997,36.211
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nancy Skybrew|r
    .fp Dustwind Dig >>Get the Dustwind Dig flight path
    .target Nancy Skybrew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,45.96,30.32,0
    .goto 15,45.96,30.32,40,0
    .goto 15,48.35,28.18,40,0
    >>Kill |cRXP_ENEMY_Shadowforge Tunnelers|r and |cRXP_ENEMY_Shadowforge Darkweavers|r. Loot them for |cRXP_LOOT_Shadowstout|r
    .complete 27823,1 --Shadowstout (15)
    .mob Shadowforge Tunneler
    .mob Shadowforge Darkweaver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,49.49,36.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 27823 >>Turn in A Dwarf's Got Needs
    .accept 27824 >>Accept The Good Stuff
    .target Sigrun Ironhew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,40.07,25.08
    >>Open the |cRXP_PICK_Angor's Coffer|r. Loot it for |cRXP_LOOT_Engraved Tablets of Golganneth|r
    .complete 27824,1 --Engraved Tablets of Golganneth (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,49.49,36.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 27824 >>Turn in The Good Stuff
    .target Sigrun Ironhew
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,56.37,52.03,0
    .goto 15,56.37,52.03,40,0
    .goto 15,56.90,58.61,40,0
    .goto 15,54.34,60.79,40,0
    >>Kill |cRXP_ENEMY_Reliquary Excavator|r and loot |cRXP_LOOT_Broken Chalice|r
    >>Kill |cRXP_ENEMY_Reliquary Excavator|r and loot |cRXP_LOOT_Dusty Vase|r
    >>Kill |cRXP_ENEMY_Reliquary Excavator|r and loot |cRXP_LOOT_Earthen Hieroglyph|r
    >>Kill |cRXP_ENEMY_Reliquary Excavator|r and loot |cRXP_LOOT_Trogg Tool|r
    .complete 27792,1 --Broken Chalice (1)
    .complete 27792,2 --Dusty Vase (1)
    .complete 27792,3 --Earthen Hieroglyph (1)
    .complete 27792,4 --Trogg Tool (1)
    .mob Reliquary Excavator
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,49.26,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lead Prospector Durdin|r
    .turnin 27792 >>Turn in All's Fair in Love, War, and Archaeology
    .accept 27796 >>Accept The Warden's Pawn
    .accept 27797 >>Accept The Sentinel's Pawn
    .target Lead Prospector Durdin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,47.97,50.91
    >>Click the |cRXP_PICK_Marble Slab|r
    .turnin 27797 >>Turn in The Sentinel's Pawn
    .accept 27709 >>Accept The Sentinel's Game
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,47.88,53.22
    >>Complete the Sentinel's Game by connecting the two red statues.
    .complete 27709,1 --Sentinel's Pawn
    .target Sentinel's Pawn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,48.03,53.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27709 >>Turn in The Sentinel's Game
    .target ?
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,50.25,54.28
    >>Click the |cRXP_PICK_Stone Slab|r
    .turnin 27796 >>Turn in The Warden's Pawn
    .accept 27693 >>Accept The Warden's Game
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,50.25,54.27
    >>Complete the Warden's Game by teleporting the Warden's Pawns into inward-facing positions.
    .complete 27693,1 --Warden's Game Controller
    .target Warden's Game Controller
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,50.25,54.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27693 >>Turn in The Warden's Game
    .target ?
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,49.26,36.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lead Prospector Durdin|r
    .accept 27793 >>Accept Ancient Protectors
    .target Lead Prospector Durdin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,50.29,51.65
    >>Kill |cRXP_ENEMY_The Warden|r
    >>Kill |cRXP_ENEMY_The Sentinel|r
    .complete 27793,1 --The Warden slain (1)
    .complete 27793,2 --The Sentinel slain (1)
    .mob The Warden
    .mob The Sentinel
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,50.30,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27793 >>Turn in Ancient Protectors
    .target ?
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,50.30,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27912 >>Accept The Titans' Trove
    .target !
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,50.26,53.30
    >>Click the |cRXP_PICK_Trove of the Watchers|r
    .turnin 27912 >>Turn in The Titans' Trove
    .accept 27794 >>Accept Return to Blam
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27794 >>Turn in Return to Blam
    .accept 27826 >>Accept Into the Dragon's Mouth
    .unitscan Dr. Hieronymus Blam
step
    .goto 15,21.710,57.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jake Badlands|r
    .fp Dragon's Mouth >> Get the Dragon's Mouth flight path
    .target Jake Badlands
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27826 >>Turn in Into the Dragon's Mouth
    .accept 27827 >>Accept The Swift, the Fierce, and the Stout
    .unitscan Rhea
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric "The Swift"|r
    .turnin 27827 >>Turn in The Swift, the Fierce, and the Stout
    .accept 27828 >>Accept Eric, the Utility Dwarf
    .target Eric "The Swift"
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olaf|r
    .accept 27835 >>Accept Olaf, the Big Fella'
    .target Olaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.63,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
    .accept 27834 >>Accept Baelog, the Glass Cannon
    .target Baelog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.08
    >>Use Eric's Charge and Eric's Pocket Potion.
    .complete 27828,1 --Eric "The Swift"
    .target Eric "The Swift"
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.08
    >>Use Eric's Charge and Eric's Pocket Potion.
    .complete 27828,2 --Eric "The Swift"
    .target Eric "The Swift"
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric "The Swift"|r
    .turnin 27828 >>Turn in Eric, the Utility Dwarf while you are here
    .isQuestComplete 27828
    .target Eric "The Swift"
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.63,56.20
    >>Use Baelog's Valhalla Shot and Baelog's Warcry.
    .complete 27834,1 --Baelog
    .target Baelog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.63,56.20
    >>Use Baelog's Valhalla Shot and Baelog's Warcry.
    .complete 27834,2 --Baelog
    .target Baelog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.63,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
    .turnin 27834 >>Turn in Baelog, the Glass Cannon while you are here
    .isQuestComplete 27834
    .target Baelog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.30
    >>Use Olaf's Shield Wall and Olaf's Mighty Shout.
    .complete 27835,1 --Olaf
    .target Olaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.30
    >>Use Olaf's Shield Wall and Olaf's Mighty Shout.
    .complete 27835,2 --Olaf
    .target Olaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olaf|r
    .turnin 27835 >>Turn in Olaf, the Big Fella' while you are here
    .isQuestComplete 27835
    .target Olaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.63,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
    .turnin 27834 >>Turn in Baelog, the Glass Cannon
    .target Baelog
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olaf|r
    .turnin 27835 >>Turn in Olaf, the Big Fella'
    .target Olaf
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric "The Swift"|r
    .turnin 27828 >>Turn in Eric, the Utility Dwarf
    .target Eric "The Swift"
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.58,56.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric "The Swift"|r
    .accept 27829 >>Accept The Wrath of a Dragonflight
    .target Eric "The Swift"
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.80,57.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrance Storm|r
    .accept 27833 >>Accept Half-Ton Holdouts
    .target Terrance Storm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.86,55.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Victoria Dolen|r
    .accept 27825 >>Accept Survival of the Fattest
    .target Victoria Dolen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,13.39,63.18,0
    .goto 15,13.39,63.18,40,0
    .goto 15,13.39,66.57,40,0
    .goto 15,13.52,69.78,40,0
    >>Kill |cRXP_ENEMY_Dustbelcher Shamans|r and |cRXP_ENEMY_Dustbelcher Maulers|r
    .complete 27833,1 --Dustbelcher Shaman (8)
    .mob Dustbelcher Shaman
    .mob Dustbelcher Mauler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,13.35,74.33,0
    .goto 15,13.35,74.33,40,0
    .goto 15,11.87,75.68,40,0
    >>Open the |cRXP_PICK_Dustbelcher Chest|r. Loot it for |cRXP_LOOT_Dustbelcher Silk|r
    >>Pick up |cRXP_PICK_Dustbelcher Meat|r from the ground
    .complete 27825,2 --Dustbelcher Silk (1)
    .complete 27825,1 --Dustbelcher Meat (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.86,55.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Victoria Dolen|r
    .turnin 27825 >>Turn in Survival of the Fattest
    .target Victoria Dolen
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.80,57.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrance Storm|r
    .turnin 27833 >>Turn in Half-Ton Holdouts while you are here
    .isQuestComplete 27833
    .target Terrance Storm
step
    .goto 15,18.50,41.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aidan Summerwind|r
    .accept 28512 >>Accept To the Aid of the Thorium Brotherhood
    .accept 27927 >>Accept Down to the Scar
    .target Aidan Summerwind
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,20.80,57.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrance Storm|r
    .turnin 27833 >>Turn in Half-Ton Holdouts
    .target Terrance Storm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,30.94,42.12,0
    .goto 15,30.94,42.12,40,0
    .goto 15,32.69,39.21,40,0
    >>Kill |cRXP_ENEMY_Darkflight Soldiers|r
    .complete 27829,2 --Darkflight Soldier slain (4)
    .mob Darkflight Soldier
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,26.20,45.18
    >>Kill |cRXP_ENEMY_Kalaran the Annihilator|r
    .complete 27829,1 --Kalaran the Annihilator slain (1)
    .mob Kalaran the Annihilator
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27829 >>Turn in The Wrath of a Dragonflight
    .accept 27830 >>Accept Their Hunt Continues
    .unitscan Rhea
step
    .goto 15,26.21,62.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 27927 >>Turn in Down to the Scar
    .accept 27713 >>Accept The Day that Deathwing Came
    .target Theldurin the Lost
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,16.19,47.00,0
    .goto 15,16.19,47.00,40,0
    .goto 15,14.59,42.73,40,0
    >>Kill |cRXP_ENEMY_Darkflight Shadowspeakers|r and |cRXP_ENEMY_Darkflight Flameblades|r
    >>Kill |cRXP_ENEMY_Moldarr|r
    >>Kill |cRXP_ENEMY_General Jirakka|r
    .complete 27830,3 --Darkflight Shadowspeaker (8)
    .complete 27830,2 --Moldarr slain (1)
    .complete 27830,1 --General Jirakka slain (1)
    .mob Darkflight Shadowspeaker
    .mob Darkflight Flameblade
    .mob Moldarr
    .mob General Jirakka
step
    #loop
    .goto 15,35.12,50.44,0
    .goto 15,35.12,50.44,40,0
    .goto 15,36.63,49.16,40,0
    >>Kill |cRXP_ENEMY_Dang-Blasted Rock Elementals|r
    .complete 27713,1 --Dang-Blasted Rock Elemental slain (8)
    .mob Dang-Blasted Rock Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27830 >>Turn in Their Hunt Continues
    .accept 27831 >>Accept The Sorrow and the Fury
    .unitscan Rhea
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,11.52,39.56,0
    .goto 15,11.52,39.56,40,0
    .goto 15,9.23,38.59,40,0
    >>Kill |cRXP_ENEMY_Nyxondras|r
    >>Kill |cRXP_ENEMY_Nyxondra's Broodlings|r
    .complete 27831,1 --Nyxondra slain (12)
    .complete 27831,2 --Nyxondra's Broodling slain (12)
    .mob Nyxondra
    .mob Nyxondra's Broodling
step
    .goto 15,41.94,43.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathwing|r
    .complete 27713,2 --Deathwing
    .target Deathwing
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,66.39,55.49,0
    .goto 15,66.39,55.49,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,15.96,33.39,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27831 >>Turn in The Sorrow and the Fury
    .accept 27832 >>Accept The Hidden Clutch
    .unitscan Rhea
step
    .goto 15,26.21,62.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 27713 >>Turn in The Day that Deathwing Came
    .target Theldurin the Lost
step
    .goto 15,26.28,62.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .accept 27714 >>Accept The Day that Deathwing Came: The Real Story
    .target Lucien Tosselwrench
step
    .goto 15,26.49,62.30
    >>Listen to Lucien Tosselwrench's version of the story.
    .complete 27714,1 --Lucien Tosselwrench (10)
    .target Lucien Tosselwrench
step
    .goto 15,35.50,50.75
    >>Click the |cRXP_PICK_The Sun|r
    .complete 27714,3 --The Sun
step
    .goto 15,35.50,50.75
    >>Interact with |cRXP_FRIENDLY_Cloud|r
    .complete 27714,2 --Cloud
    .target Cloud
step
    .goto 15,26.28,62.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .turnin 27714 >>Turn in The Day that Deathwing Came: The Real Story
    .target Lucien Tosselwrench
step
    .goto 15,26.19,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
    .accept 27715 >>Accept The Day that Deathwing Came: What Really Happened
    .target Martek the Exiled
step
    .goto 15,26.43,62.33
    >>Kill |cRXP_ENEMY_Human Admirers|r, |cRXP_ENEMY_Orc Admirers|r, |cRXP_ENEMY_Blood Elf Admirers|r and |cRXP_ENEMY_Night Elf Admirers|r
    .complete 27715,4 --Human Admirer (8)
    .mob Human Admirer
    .mob Orc Admirer
    .mob Blood Elf Admirer
    .mob Night Elf Admirer
step
    .goto 15,41.56,44.15
    >>Listen to Martek the Exiled's version of the story.
    .complete 27715,1 --TDDC 3 Canyon Credit
    .target TDDC 3 Canyon Credit
step
    .goto 15,41.94,43.65
    >>Listen to Martek the Exiled's version of the story.
    .complete 27715,2 --Deathwing
    .target Deathwing
step
    .goto 15,41.94,43.65
    >>Listen to Martek the Exiled's version of the story.
    .complete 27715,3 --Deathwing
    .target Deathwing
step
    .goto 15,26.19,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
    .turnin 27715 >>Turn in The Day that Deathwing Came: What Really Happened
    .target Martek the Exiled
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 15,15.96,33.39,0
    .goto 15,15.96,33.39,40,0
    .goto 15,18.15,42.51,40,0
    .goto 15,21.16,57.77,40,0
    .goto 15,66.39,55.49,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 27832 >>Turn in The Hidden Clutch
    .accept 27858 >>Accept Rheastrasza's Gift
    .unitscan Rhea
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,15.96,33.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhea|r
    .complete 27858,1 --Rhea
    .target Rhea
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 15,15.96,33.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27858 >>Turn in Rheastrasza's Gift
    .target ?
step
    .goto 15,15.96,33.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_!|r
    .accept 27930 >>Accept Devastation
    .target !
step
    .goto 15,18.85,30.29
    >>Click the |cRXP_PICK_Rhea's Final Note|r
    .turnin 27930 >>Turn in Devastation
step
    .goto 15,46.82,56.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dr. Hieronymus Blam|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 27859 >>Accept The Egg Lives On
    .turnin 27859 >>Turn in The Egg Lives On
    .unitscan Dr. Hieronymus Blam
step
    +|cRXP_WARN_End of the Badlands route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Searing Gorge|r: To the Aid of the Thorium Brotherhood
step
    +|cRXP_WARN_Suggested next zones at level 47|r: |cRXP_FRIENDLY_Felwood|r (about 2.4 levels of quests, starting around Totem of Ruumbo), |cRXP_FRIENDLY_Tanaris|r (about 1.0 levels of quests, starting around Mazoga), |cRXP_FRIENDLY_Searing Gorge|r (about 0.8 levels of quests, starting around Jack Rockleg; 1 quest from here hands in there). Completing this step loads the guide for Felwood --RouteBuilder:next
]])
