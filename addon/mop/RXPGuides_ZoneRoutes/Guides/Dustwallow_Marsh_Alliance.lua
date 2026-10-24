-- 36-40 Dustwallow Marsh: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 36, 83).
-- Split into 3 guides, listed under "36 - 84 Dustwallow Marsh" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Dustwallow Marsh.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 36 - 84 Dustwallow Marsh
#subweight -36
#name 36-38 Dustwallow Marsh: around "Swamp Eye" Jarl
#next Zone Routes (Alliance)\38-41 Dustwallow Marsh: around Tabetha

step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .accept 27183 >>Accept Marsh Frog Legs
    .target "Swamp Eye" Jarl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,55.44,25.92
    >>Click the |cRXP_PICK_Loose Dirt|r
    .accept 27246 >>Accept The Orc Report
step
    #loop
    .goto 70,55.93,25.41,0
    .goto 70,55.93,25.41,40,0
    .goto 70,54.48,22.04,40,0
    >>Kill |cRXP_ENEMY_Giant Marsh Frogs|r. Loot them for |cRXP_LOOT_Marsh Frog Leg|r
    .complete 27183,1 --Marsh Frog Leg (10)
    .mob Giant Marsh Frog
step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27183 >>Turn in Marsh Frog Legs while you are here
    .isQuestComplete 27183
    .target "Swamp Eye" Jarl
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .accept 27188 >>Accept What's Haunting Witch Hill?
    .target Mordant Grimsby
step
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Risen Spirits|r, |cRXP_ENEMY_Risen Husks|r and |cRXP_ENEMY_Restless Apparitions|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27188,1 --Risen Spirit (8)
    .mob Risen Spirit
    .mob Risen Husk
    .mob Restless Apparition
step
    #label Along4
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27183 >>Turn in Marsh Frog Legs
    .accept 27184 >>Accept Jarl Needs Eyes
    .target "Swamp Eye" Jarl
step
    #loop
    .goto 70,34.32,21.75,0
    .goto 70,34.32,21.75,40,0
    .goto 70,31.29,21.38,40,0
    >>Kill |cRXP_ENEMY_Darkmist Spiders|r, |cRXP_ENEMY_Darkmist Recluses|r, |cRXP_ENEMY_Darkmist Silkspinners|r and |cRXP_ENEMY_Darkmist Widows|r. Loot them for |cRXP_LOOT_Unpopped Darkmist Eye|r
    .complete 27184,1 --Unpopped Darkmist Eye (20)
    .mob Darkmist Spider
    .mob Darkmist Recluse
    .mob Darkmist Silkspinner
    .mob Darkmist Widow
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
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
    .zone 70 >>Leave Darnassus for Dustwallow Marsh
    .zoneskip 70
step
    .goto 70,64.07,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uma Bartulm|r
    .target Uma Bartulm
    .home >>Set your Hearthstone to Uma Bartulm's inn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,65.07,47.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Aden|r
    .turnin 27246 >>Turn in The Orc Report
    .accept 27247 >>Accept Captain Vimes
    .target Lieutenant Aden
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,66.15,46.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Byron|r
    .accept 27251 >>Accept They Call Him Smiling Jim
    .target Guard Byron
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,66.26,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 27241 >>Turn in Return to Jaina
    .target Lady Jaina Proudmoore
    .isOnQuest 27241
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.25,51.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Amelyn|r
    .accept 27216 >>Accept This Old Lighthouse
    .target Sergeant Amelyn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.36,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 28552 >>Turn in Hero's Call: Dustwallow Marsh!
    .accept 27210 >>Accept Traitors Among Us
    .target Calia Hastings
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.36,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 26702 >>Turn in Flight to Theramore
    .target Calia Hastings
    .isOnQuest 26702
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.27,48.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .accept 1204 >>Accept Mudrock Soup and Bugs
    .target Morgan Stern
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 27247 >>Turn in Captain Vimes
    .turnin 27251 >>Turn in They Call Him Smiling Jim
    .accept 27249 >>Accept Inspecting the Ruins
    .target Captain Garran Vimes
step
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 26687 >>Turn in Reinforcements From Theramore
    .target Captain Garran Vimes
    .isOnQuest 26687
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,65.32,40.27,0
    .goto 70,65.32,40.27,40,0
    .goto 70,63.68,36.69,40,0
    .goto 70,62.92,29.87,40,0
    .goto 70,65.36,29.69,40,0
    >>Kill |cRXP_ENEMY_Mudrock Spikeshells|r. Loot them for |cRXP_LOOT_Forked Mudrock Tongue|r
    .complete 1204,1 --Forked Mudrock Tongue (8)
    .mob Mudrock Spikeshell
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,59.67,41.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Wymor|r
    .accept 27234 >>Accept Defias in Dustwallow?
    .target Captain Wymor
step
    #completewith Along33
    >>As you go: Kill |cRXP_ENEMY_Risen Spirits|r, |cRXP_ENEMY_Risen Husks|r and |cRXP_ENEMY_Restless Apparitions|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27188,1 --Risen Spirit (8)
    .mob Risen Spirit
    .mob Risen Husk
    .mob Restless Apparition
step
    #label Along33
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27184 >>Turn in Jarl Needs Eyes
    .accept 27186 >>Accept Jarl Needs a Blade
    .accept 27191 >>Accept Hungry as an Ogre!
    .target "Swamp Eye" Jarl
step
    #loop
    .goto 70,54.57,15.53,0
    .goto 70,54.57,15.53,40,0
    .goto 70,58.06,15.91,40,0
    >>Kill |cRXP_ENEMY_Razorspine|r and loot |cRXP_LOOT_Razorspine's Sword|r
    >>Kill |cRXP_ENEMY_Mirefin Murlocs|r, |cRXP_ENEMY_Mirefin Warriors|r, |cRXP_ENEMY_Mirefin Muckdwellers|r and |cRXP_ENEMY_Mirefin Coastrunners|r. Loot them for |cRXP_LOOT_Mirefin Head|r
    .complete 27186,1 --Razorspine's Sword (1)
    .complete 27191,1 --Mirefin Head (8)
    .mob Razorspine
    .mob Mirefin Murloc
    .mob Mirefin Warrior
    .mob Mirefin Muckdweller
    .mob Mirefin Coastrunner
step
    #loop
    .goto 70,56.28,22.42,0
    .goto 70,56.28,22.42,40,0
    .goto 70,54.16,21.75,40,0
    .goto 70,52.82,23.75,40,0
    >>Kill |cRXP_ENEMY_Risen Spirits|r, |cRXP_ENEMY_Risen Husks|r and |cRXP_ENEMY_Restless Apparitions|r
    .complete 27188,1 --Risen Spirit (8)
    .mob Risen Spirit
    .mob Risen Husk
    .mob Restless Apparition
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 27188 >>Turn in What's Haunting Witch Hill?
    .accept 27189 >>Accept The Witch's Bane
    .target Mordant Grimsby
step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27186 >>Turn in Jarl Needs a Blade while you are here
    .isQuestComplete 27186
    .target "Swamp Eye" Jarl
step
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27191 >>Turn in Hungry as an Ogre! while you are here
    .isQuestComplete 27191
    .target "Swamp Eye" Jarl
step
    #loop
    .goto 70,55.00,25.70,0
    .goto 70,55.00,25.70,40,0
    .goto 70,57.24,26.22,40,0
    .goto 70,57.16,21.94,40,0
    >>Pick up |cRXP_PICK_Witchbane|r from the ground
    .complete 27189,1 --Witchbane (9)
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 27189 >>Turn in The Witch's Bane
    .accept 27190 >>Accept Cleansing Witch Hill
    .target Mordant Grimsby
step
    #completewith Along39
    >>As you go: Kill |cRXP_ENEMY_Zelfrax|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27190,1 --Zelfrax slain (1)
    .mob Zelfrax
step
    #label Along39
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27186 >>Turn in Jarl Needs a Blade
    .turnin 27191 >>Turn in Hungry as an Ogre!
    .target "Swamp Eye" Jarl
step
    .goto 70,55.18,26.69
    >>Kill |cRXP_ENEMY_Zelfrax|r
    .complete 27190,1 --Zelfrax slain (1)
    .mob Zelfrax
step
    .goto 70,55.58,26.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordant Grimsby|r
    .turnin 27190 >>Turn in Cleansing Witch Hill
    .target Mordant Grimsby
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Uma Bartulm's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,64.85,48.54,0
    .goto 70,64.85,48.54,40,0
    .goto 70,64.51,45.69,40,0
    .goto 70,67.22,50.99,40,0
    >>Interact with |cRXP_FRIENDLY_Deserter Agitators|r
    .complete 27210,1 --Deserter Agitator (5)
    .target Deserter Agitator
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.36,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 27210 >>Turn in Traitors Among Us while you are here
    .isQuestComplete 27210
    .target Calia Hastings
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.27,48.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1204 >>Turn in Mudrock Soup and Bugs
    .accept 1258 >>Accept ... and Bugs
    .target Morgan Stern
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.36,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 27210 >>Turn in Traitors Among Us
    .accept 27211 >>Accept Propaganda War
    .target Calia Hastings
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,67.94,58.72
    >>Pick up |cRXP_PICK_Deserter Propaganda|r from the ground
    .complete 27211,1 --Deserter Propaganda (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,65.91,53.97,0
    .goto 70,65.91,53.97,40,0
    .goto 70,64.34,51.97,40,0
    >>Kill |cRXP_ENEMY_Spiny Rock Crabs|r. Loot them for |cRXP_LOOT_Pristine Crawler Leg|r
    .complete 1258,1 --Pristine Crawler Leg (12)
    .mob Spiny Rock Crab
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .xp 37 >>Grind to level 37 (Mission to Mudsprocket needs it)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,65.07,47.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Aden|r
    .accept 27248 >>Accept Mission to Mudsprocket
    .target Lieutenant Aden
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,66.15,46.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Byron|r
    .accept 11212 >>Accept Tabetha's Farm
    .target Guard Byron
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.27,48.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1258 >>Turn in ... and Bugs
    .target Morgan Stern
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.36,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 27211 >>Turn in Propaganda War
    .accept 27212 >>Accept Discrediting the Deserters
    .target Calia Hastings
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,67.76,50.94,0
    .goto 70,67.76,50.94,40,0
    .goto 70,65.88,52.04,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theramore Guard|r
    .complete 27212,1 --Theramore Guard (6)
    .target Theramore Guard
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.36,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 27212 >>Turn in Discrediting the Deserters
    .accept 27213 >>Accept The End of the Deserters
    .target Calia Hastings
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,72.11,47.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Babs Fizzletorque|r
    .turnin 27216 >>Turn in This Old Lighthouse
    .accept 27217 >>Accept Thresher Oil
    .target Babs Fizzletorque
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,76.27,57.07
    >>Kill |cRXP_ENEMY_Gavis Greyshield|r
    .complete 27213,1 --Gavis Greyshield slain (1)
    .mob Gavis Greyshield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,73.16,53.76,0
    .goto 70,73.16,53.76,40,0
    .goto 70,72.25,51.21,40,0
    .goto 70,73.83,47.09,40,0
    >>Kill |cRXP_ENEMY_Young Murk Thresher|r and loot |cRXP_LOOT_Thresher Oil|r
    .complete 27217,1 --Thresher Oil (1)
    .mob Young Murk Thresher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,72.11,47.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Babs Fizzletorque|r
    .turnin 27217 >>Turn in Thresher Oil
    .accept 27218 >>Accept Dastardly Denizens of the Deep
    .target Babs Fizzletorque
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,69.24,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Dirty" Michael Crowe|r
    .turnin 27218 >>Turn in Dastardly Denizens of the Deep
    .accept 27219 >>Accept Is it Real?
    .target "Dirty" Michael Crowe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.36,51.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calia Hastings|r
    .turnin 27213 >>Turn in The End of the Deserters
    .target Calia Hastings
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.25,51.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Amelyn|r
    .accept 27215 >>Accept The Hermit of Swamplight Manor
    .target Sergeant Amelyn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,65.07,47.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Aden|r
    .accept 27214 >>Accept A Disturbing Development
    .target Lieutenant Aden
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,64.93,27.65
    >>Kill |cRXP_ENEMY_Garn Mathers|r and loot |cRXP_LOOT_Defias Orders|r
    .complete 27234,1 --Defias Orders (1)
    .mob Garn Mathers
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r
    .turnin 27215 >>Turn in The Hermit of Swamplight Manor
    .target "Swamp Eye" Jarl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.66,23.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Lukas|r
    .accept 27242 >>Accept Raptor Captor
    .target Sergeant Lukas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along64
    >>As you go: Kill |cRXP_ENEMY_Bloodfen Raptors|r and |cRXP_ENEMY_Bloodfen Screechers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27242,1 --Bloodfen Raptor (6)
    .mob Bloodfen Raptor
    .mob Bloodfen Screecher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along64
    .goto 70,46.88,17.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Stinky" Ignatz|r
    .accept 1222 >>Accept Stinky's Escape
    .target "Stinky" Ignatz
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,47.34,16.61,0
    .goto 70,47.34,16.61,40,0
    .goto 70,45.14,20.83,40,0
    >>Kill |cRXP_ENEMY_Bloodfen Raptors|r and |cRXP_ENEMY_Bloodfen Screechers|r
    .complete 27242,1 --Bloodfen Raptor (6)
    .mob Bloodfen Raptor
    .mob Bloodfen Screecher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,48.87,24.58
    >>Help Stinky find Bogbean Leaves
    .complete 1222,1 --Help Stinky find Bogbean Leaves
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.66,23.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Lukas|r
    .turnin 27242 >>Turn in Raptor Captor
    .accept 27243 >>Accept Unleash the Raptors
    .accept 27245 >>Accept Prisoners of the Grimtotems
    .target Sergeant Lukas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,44.30,16.88,0
    .goto 70,44.30,16.88,40,0
    .goto 70,42.67,14.21,40,0
    .goto 70,41.41,11.89,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Breakers|r, |cRXP_ENEMY_Grimtotem Spirit-Shifters|r and |cRXP_ENEMY_Grimtotem Elders|r. Loot them for |cRXP_LOOT_Grimtotem Key|r
    .collect 33061,1,27245,1 --Grimtotem Key (1)
    .mob Grimtotem Breaker
    .mob Grimtotem Spirit-Shifter
    .mob Grimtotem Elder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,41.50,11.78
    >>Place the Raptor Bait near the windmill in Blackhoof Village.
    .complete 27243,1 --Invis Raptor Credit
    .target Invis Raptor Credit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,40.89,12.43
    >>Collect Grimtotem Keys from the Grimtotem tauren in Blackhoof Village and use them to free 5 Theramore Prisoners.
    .complete 27245,1 --Theramore Prisoner (5)
    .target Theramore Prisoner
step
    .goto 70,35.49,30.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alto Stonespire|r
    .turnin 25292 >>Turn in Next of Kin
    .target Alto Stonespire
    .isOnQuest 25292
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,29.79,47.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inspector Tarem|r
    .turnin 27249 >>Turn in Inspecting the Ruins
    .target Inspector Tarem
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,29.70,47.64
    >>Click the |cRXP_PICK_Suspicious Hoofprint|r
    .accept 27262 >>Accept Suspicious Hoofprints
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,29.63,48.62
    >>Click the |cRXP_PICK_Black Shield|r
    .accept 27252 >>Accept The Black Shield
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,29.83,48.24
    >>Click the |cRXP_PICK_Theramore Guard Badge|r
    .accept 27263 >>Accept Lieutenant Paval Reethe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.66,23.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Lukas|r
    .turnin 27245 >>Turn in Prisoners of the Grimtotems
    .turnin 27243 >>Turn in Unleash the Raptors
    .target Sergeant Lukas
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,59.67,41.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Wymor|r
    .turnin 27214 >>Turn in A Disturbing Development
    .turnin 27234 >>Turn in Defias in Dustwallow?
    .accept 27235 >>Accept Renn McGill
    .target Captain Wymor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,58.76,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nat Pagle|r
    .turnin 27219 >>Turn in Is it Real?
    .accept 27220 >>Accept Nat's Bargain
    .target Nat Pagle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,55.41,62.88
    >>Kill |cRXP_ENEMY_Lurking Shark|r
    .complete 27220,1 --Lurking Shark slain (1)
    .mob Lurking Shark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,58.76,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nat Pagle|r
    .turnin 27220 >>Turn in Nat's Bargain
    .accept 27221 >>Accept Oh, It's Real
    .target Nat Pagle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,69.61,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Mills|r
    .turnin 27221 >>Turn in Oh, It's Real
    .accept 27222 >>Accept Take Down Tethyr!
    .target Major Mills
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.27,48.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1222 >>Turn in Stinky's Escape
    .target Morgan Stern
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 27252 >>Turn in The Black Shield
    .turnin 27262 >>Turn in Suspicious Hoofprints
    .turnin 27263 >>Turn in Lieutenant Paval Reethe
    .accept 27264 >>Accept Lieutenant Paval Reethe
    .accept 27284 >>Accept The Black Shield
    .target Captain Garran Vimes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.05,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adjutant Tesoran|r
    .turnin 27264 >>Turn in Lieutenant Paval Reethe
    .accept 27286 >>Accept Daelin's Men
    .target Adjutant Tesoran
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,64.75,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caz Twosprocket|r
    .turnin 27284 >>Turn in The Black Shield
    .accept 27285 >>Accept The Black Shield
    .target Caz Twosprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 27286 >>Turn in Daelin's Men
    .turnin 27285 >>Turn in The Black Shield
    .accept 27287 >>Accept The Deserters
    .target Captain Garran Vimes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,63.74,17.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renn McGill|r
    .turnin 27235 >>Turn in Renn McGill
    .accept 27236 >>Accept Secondhand Diving Gear
    .target Renn McGill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,62.33,18.88
    >>Pick up |cRXP_PICK_Tool Kit|r from the ground
    >>Pick up |cRXP_PICK_Damaged Diving Gear|r from the ground
    .complete 27236,2 --Tool Kit (1)
    .complete 27236,1 --Damaged Diving Gear (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,63.74,17.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renn McGill|r
    .turnin 27236 >>Turn in Secondhand Diving Gear
    .accept 27237 >>Accept Recover the Cargo!
    .target Renn McGill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,65.63,20.15,0
    .goto 70,65.63,20.15,40,0
    .goto 70,66.51,17.81,40,0
    >>Open the |cRXP_PICK_Shipwreck Debris|r. Loot it for |cRXP_LOOT_Salvaged Strongbox|r
    .complete 27237,1 --Salvaged Strongbox (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,63.74,17.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renn McGill|r
    .turnin 27237 >>Turn in Recover the Cargo!
    .accept 27238 >>Accept Jaina Must Know
    .target Renn McGill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Uma Bartulm's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,66.26,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 27238 >>Turn in Jaina Must Know
    .accept 27239 >>Accept Survey Alcaz Island
    .target Lady Jaina Proudmoore
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 36 - 84 Dustwallow Marsh
#subweight -36
#name 38-41 Dustwallow Marsh: around Tabetha
--RouteBuilder:next
#next Zone Routes (Alliance)\40-42 Eastern Plaguelands: around Chromie;Zone Routes (Alliance)\37-40 Western Plaguelands: around Daria L'Rayne

step
    .goto 70,46.10,57.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .accept 27340 >>Accept Direhorn Raiders
    .accept 27346 >>Accept The Zeppelin Crash
    .target Apprentice Morlann
step
    .goto 70,46.05,57.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .accept 27336 >>Accept The Grimtotem Weapon
    .accept 27339 >>Accept The Reagent Thief
    .target Apprentice Garion
step
    #completewith Along97
    >>As you go: Kill |cRXP_ENEMY_Noxious Shredders|r and |cRXP_ENEMY_Darkfang Creepers|r. Loot them for |cRXP_LOOT_Marsh Venom|r. |cRXP_WARN_Anything left is finished later|r
    .complete 27339,1 --Marsh Venom (1)
    .mob Noxious Shredder
    .mob Darkfang Creeper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 11212 >>Turn in Tabetha's Farm
    .target Tabetha
    .isOnQuest 11212
step
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 11211 >>Accept Help for Mudsprocket
    .target Tabetha
step
    #label Along97
    #loop
    .goto 70,42.65,55.87,0
    .goto 70,42.65,55.87,40,0
    .goto 70,42.32,48.89,40,0
    .goto 70,46.52,49.15,40,0
    .goto 70,49.00,50.80,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Earthbinders|r and |cRXP_ENEMY_Grimtotem Destroyers|r
    >>Kill |cRXP_ENEMY_Mottled Drywallow Crocolisks|r and |cRXP_ENEMY_Drywallow Daggermaws|r
    .complete 27340,1 --Grimtotem Earthbinder (8)
    .complete 27336,1 --Mottled Drywallow Crocolisk (10)
    .mob Grimtotem Earthbinder
    .mob Grimtotem Destroyer
    .mob Mottled Drywallow Crocolisk
    .mob Drywallow Daggermaw
step
    #loop
    .goto 70,43.64,53.89,0
    .goto 70,43.64,53.89,40,0
    .goto 70,40.74,53.54,40,0
    .goto 70,39.69,57.86,40,0
    >>Kill |cRXP_ENEMY_Noxious Shredders|r and |cRXP_ENEMY_Darkfang Creepers|r. Loot them for |cRXP_LOOT_Marsh Venom|r
    .complete 27339,1 --Marsh Venom (1)
    .mob Noxious Shredder
    .mob Darkfang Creeper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,36.09,54.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balos Jacken|r
    .turnin 27287 >>Turn in The Deserters
    .target Balos Jacken
    .isOnQuest 27287
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,36.09,54.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balos Jacken|r
    .accept 27288 >>Accept The Deserters
    .target Balos Jacken
    .isQuestTurnedIn 27287 --any of: The Deserters
step
    .goto 70,46.05,57.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Garion|r
    .turnin 27339 >>Turn in The Reagent Thief
    .turnin 27336 >>Turn in The Grimtotem Weapon
    .target Apprentice Garion
step
    .goto 70,46.10,57.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Morlann|r
    .turnin 27340 >>Turn in Direhorn Raiders
    .target Apprentice Morlann
step
    .goto 70,53.57,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 27346 >>Turn in The Zeppelin Crash
    .accept 27347 >>Accept Corrosion Prevention
    .target Moxie Steelgrille
step
    #loop
    .goto 70,52.82,57.79,0
    .goto 70,52.82,57.79,40,0
    .goto 70,53.98,53.69,40,0
    >>Kill |cRXP_ENEMY_Acidic Swamp Oozes|r and |cRXP_ENEMY_Bubbling Swamp Oozes|r
    .complete 27347,1 --Acidic Swamp Ooze (10)
    .mob Acidic Swamp Ooze
    .mob Bubbling Swamp Ooze
step
    .goto 70,53.57,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 27347 >>Turn in Corrosion Prevention
    .accept 27348 >>Accept Secure the Cargo!
    .target Moxie Steelgrille
step
    #loop
    .goto 70,53.97,55.74,0
    .goto 70,53.97,55.74,40,0
    .goto 70,52.59,58.22,40,0
    .goto 70,48.28,58.98,40,0
    >>Pick up |cRXP_PICK_Zeppelin Cargo|r from the ground
    .complete 27348,1 --Zeppelin Cargo (1)
step
    .goto 70,53.57,56.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moxie Steelgrille|r
    .turnin 27348 >>Turn in Secure the Cargo!
    .accept 11208 >>Accept Delivery for Drazzit
    .target Moxie Steelgrille
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,67.33,51.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cassa Crimsonwing|r
    .complete 27239,1 --Cassa Crimsonwing
    .target Cassa Crimsonwing
    .isOnQuest 27239
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,66.26,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 27239 >>Turn in Survey Alcaz Island while you are here
    .isQuestComplete 27239
    .target Lady Jaina Proudmoore
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 27288 >>Turn in The Deserters while you are here
    .isQuestComplete 27288
    .target Captain Garran Vimes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,70.14,52.79
    >>Kill |cRXP_ENEMY_Tethyr|r
    .complete 27222,1 --Tethyr slain (1)
    .mob Tethyr
    .isOnQuest 27222
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,69.61,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Major Mills|r
    .turnin 27222 >>Turn in Take Down Tethyr!
    .target Major Mills
    .isOnQuest 27222
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 27288 >>Turn in The Deserters
    .target Captain Garran Vimes
    .isOnQuest 27288
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .accept 27425 >>Accept A Grim Connection
    .target Captain Garran Vimes
    .isQuestTurnedIn 27262 --Suspicious Hoofprints
    .isQuestTurnedIn 27285 --The Black Shield
    .isQuestTurnedIn 27288 --The Deserters
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,66.26,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 27239 >>Turn in Survey Alcaz Island
    .target Lady Jaina Proudmoore
    .isOnQuest 27239
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,66.26,49.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .accept 27240 >>Accept Proof of Treachery
    .target Lady Jaina Proudmoore
    .isQuestTurnedIn 27239 --any of: Survey Alcaz Island
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.62,24.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .turnin 27425 >>Turn in A Grim Connection
    .target Captain Darill
    .isOnQuest 27425
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.62,24.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .accept 27426 >>Accept Confirming the Suspicion
    .accept 27427 >>Accept Arms of the Grimtotems
    .target Captain Darill
    .isQuestTurnedIn 27425 --any of: A Grim Connection
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,43.24,16.05,0
    .goto 70,43.24,16.05,40,0
    .goto 70,42.46,12.20,40,0
    >>Pick up |cRXP_PICK_Blackhoof Armaments|r from the ground
    .complete 27427,1 --Blackhoof Armaments (7)
    .isOnQuest 27427
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,42.30,13.89,0
    .goto 70,42.30,13.89,40,0
    .goto 70,42.06,11.01,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Elder|r and loot |cRXP_LOOT_Grimtotem Note|r
    .collect 33050,1,27426,1 --Grimtotem Note (1)
    .mob Grimtotem Elder
    .isOnQuest 27426
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.62,24.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .turnin 27427 >>Turn in Arms of the Grimtotems
    .target Captain Darill
    .isOnQuest 27427
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.62,24.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .turnin 27426 >>Turn in Confirming the Suspicion
    .target Captain Darill
    .isQuestComplete 27426
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.62,24.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .accept 27428 >>Accept Tabetha's Assistance
    .target Captain Darill
    .isQuestTurnedIn 27426 --Confirming the Suspicion
    .xp <36,1
    .isQuestTurnedIn 27427 --Arms of the Grimtotems
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .accept 27424 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 27428 >>Turn in Tabetha's Assistance
    .target Tabetha
    .isOnQuest 27428
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 27429 >>Accept Raze Direhorn Post!
    .target Tabetha
    .isQuestTurnedIn 27428 --any of: Tabetha's Assistance
    .xp <36,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,47.53,47.65
    >>Use Tabetha's Torch to burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post.
    .complete 27429,3 --East Tent
    .target East Tent
    .isOnQuest 27429
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,47.25,46.54
    >>Use Tabetha's Torch to burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post.
    .complete 27429,2 --Northeast Tent
    .target Northeast Tent
    .isOnQuest 27429
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.60,45.93
    >>Use Tabetha's Torch to burn the North Tent, East Tent, and the Northeast Tent at Direhorn Post.
    .complete 27429,1 --North Tent
    .target North Tent
    .isOnQuest 27429
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 27429 >>Turn in Raze Direhorn Post!
    .target Tabetha
    .isOnQuest 27429
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.02,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .accept 27430 >>Accept Justice for the Hyals
    .target Tabetha
    .isQuestTurnedIn 27429 --any of: Raze Direhorn Post!
    .xp <36,1
step
    .goto 70,44.53,66.04
    >>Pick up |cRXP_PICK_Mok'Morokk's Snuff|r from the ground
    .complete 27424,1 --Mok'Morokk's Snuff (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,42.33,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 27248 >>Turn in Mission to Mudsprocket
    .target Drazzit Dripvalve
    .isOnQuest 27248
step
    .goto 70,42.33,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 11208 >>Turn in Delivery for Drazzit
    .turnin 11211 >>Turn in Help for Mudsprocket
    .target Drazzit Dripvalve
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .accept 27407 >>Accept Bloodfen Feathers
    .target Brogg
step
    .goto 70,41.75,73.13
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 27412 >>Accept WANTED: Goreclaw the Ravenous
step
    .goto 70,41.54,72.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .accept 27413 >>Accept Catch a Dragon by the Tail
    .target Gizzix Grimegurgle
step
    .goto 70,38.66,65.57
    >>Pick up |cRXP_PICK_Mok'Morokk's Grog|r from the ground
    .complete 27424,2 --Mok'Morokk's Grog (1)
step
    #loop
    .goto 70,36.76,68.94,0
    .goto 70,36.76,68.94,40,0
    .goto 70,34.01,65.01,40,0
    .goto 70,32.35,65.34,40,0
    >>Kill |cRXP_ENEMY_Bloodfen Razormaws|r, |cRXP_ENEMY_Bloodfen Lashtails|r and |cRXP_ENEMY_Goreclaw the Ravenous|r. Loot them for |cRXP_LOOT_Bloodfen Feather|r
    >>Kill |cRXP_ENEMY_Goreclaw the Ravenous|r
    >>Pick up |cRXP_PICK_Mok'Morokk's Strongbox|r from the ground
    .complete 27407,1 --Bloodfen Feather (5)
    .complete 27412,1 --Goreclaw the Ravenous slain (1)
    .complete 27424,3 --Mok'Morokk's Strongbox (1)
    .mob Bloodfen Razormaw
    .mob Bloodfen Lashtail
    .mob Goreclaw the Ravenous
step
    .goto 70,42.33,72.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drazzit Dripvalve|r
    .turnin 27412 >>Turn in WANTED: Goreclaw the Ravenous
    .target Drazzit Dripvalve
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 27407 >>Turn in Bloodfen Feathers
    .accept 27408 >>Accept Banner of the Stonemaul
    .accept 27409 >>Accept The Essence of Enmity
    .target Brogg
step
    #loop
    .goto 70,37.43,68.51,0
    .goto 70,37.43,68.51,40,0
    .goto 70,38.99,65.82,40,0
    >>Open the |cRXP_PICK_Stonemaul Clan Banner|r. Loot it for |cRXP_LOOT_Stonemaul Banner|r
    >>Kill |cRXP_ENEMY_Firemane Scalebanes|r, |cRXP_ENEMY_Firemane Scouts|r and |cRXP_ENEMY_Firemane Ash Tails|r. Loot them for |cRXP_LOOT_Black Dragonkin Essence|r
    .complete 27408,1 --Stonemaul Banner (1)
    .complete 27409,1 --Black Dragonkin Essence (10)
    .mob Firemane Scalebane
    .mob Firemane Scout
    .mob Firemane Ash Tail
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 27408 >>Turn in Banner of the Stonemaul
    .turnin 27409 >>Turn in The Essence of Enmity
    .accept 27410 >>Accept Spirits of Stonemaul Hold
    .target Brogg
step
    #loop
    .goto 70,42.40,67.20,0
    .goto 70,42.40,67.20,40,0
    .goto 70,44.20,66.20,40,0
    .goto 70,46.00,67.20,40,0
    >>Kill |cRXP_ENEMY_Stonemaul Spirits|r
    .complete 27410,1 --Stonemaul Spirit slain (10)
    .mob Stonemaul Spirit
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 27410 >>Turn in Spirits of Stonemaul Hold
    .accept 27411 >>Accept Challenge to the Black Flight
    .target Brogg
step
    #loop
    .goto 70,43.29,75.99,0
    .goto 70,43.29,75.99,40,0
    .goto 70,46.11,81.55,40,0
    .goto 70,47.95,79.70,40,0
    >>Pick up |cRXP_PICK_Wyrmtail|r from the ground
    .complete 27413,1 --Wyrmtail (8)
step
    .goto 70,52.20,76.20
    >>Kill |cRXP_ENEMY_Smolderwing|r
    .complete 27411,1 --Smolderwing slain (1)
    .mob Smolderwing
step
    .goto 70,41.86,73.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brogg|r
    .turnin 27411 >>Turn in Challenge to the Black Flight
    .target Brogg
step
    .goto 70,41.54,72.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gizzix Grimegurgle|r
    .turnin 27413 >>Turn in Catch a Dragon by the Tail
    .target Gizzix Grimegurgle
step
    .goto 70,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Mok'Morokk|r
    .turnin 27424 >>Turn in Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
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
step
    #completewith next
    .zone 70 >>Leave The Exodar for Dustwallow Marsh
    .zoneskip 70
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Uma Bartulm's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 27430 >>Turn in Justice for the Hyals
    .target Captain Garran Vimes
    .isOnQuest 27430
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .accept 27291 >>Accept Peace at Last
    .target Captain Garran Vimes
    .isQuestTurnedIn 27430 --any of: Justice for the Hyals
    .xp <30,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,63.68,42.82
    >>Click the |cRXP_PICK_Hyal Family Monument|r
    .complete 27291,1 --Hyal Family Monument
    .isOnQuest 27291
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,68.21,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Garran Vimes|r
    .turnin 27291 >>Turn in Peace at Last
    .target Captain Garran Vimes
    .isOnQuest 27291
step
    #completewith next
    .zone 89 >>Travel to Darnassus
    .zoneskip 89
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
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
    #completewith next
    .zone 70 >>Leave Darnassus for Dustwallow Marsh
    .zoneskip 70
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,59.25,3.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fisher|r
    .turnin 24934 >>Turn in Repel Boarders!
    .target Captain Fisher
    .isQuestComplete 24934
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
step
    +|cRXP_WARN_That is all of Dustwallow Marsh for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Hero's Call: Feralas! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
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
    >>|cRXP_FRIENDLY_Stormwind City|r: Proof of Treachery << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
    >>|cRXP_FRIENDLY_Elsewhere and back here|r: Confirming the Suspicion << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 40|r: |cRXP_FRIENDLY_Eastern Plaguelands|r (about 2.7 levels of quests, starting around Chromie), |cRXP_FRIENDLY_Western Plaguelands|r (about 0.6 levels of quests, starting around Daria L'Rayne). Completing this step loads the guide for Eastern Plaguelands --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Dustwallow Marsh is planned from level 83.|r Load its guide for level 83 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 36 - 84 Dustwallow Marsh
#subweight -36
#name 83-84 Dustwallow Marsh
--RouteBuilder:next
#next Zone Routes (Alliance)\82-83 Deepholm

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,41.83,73.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
    .accept 25479 >>Accept To New Thalanaar
    .target Thyssiana
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,42.82,72.43
    >>Kill |cRXP_ENEMY_Dyslix Silvergrub|r and |cRXP_ENEMY_Seyala Nightwisp|r
    .complete 25479,1 --Dyslix Silvergrub (1)
    .mob Dyslix Silvergrub
    .mob Seyala Nightwisp
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 70,42.30,13.89,0
    .goto 70,42.30,13.89,40,0
    .goto 70,42.06,11.01,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Elder|r and loot |cRXP_LOOT_Grimtotem Note|r
    .collect 33050,1,27426,1 --Grimtotem Note (1)
    .mob Grimtotem Elder
    .isOnQuest 27426
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 70,46.62,24.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Darill|r
    .turnin 27426 >>Turn in Confirming the Suspicion
    .target Captain Darill
    .isQuestComplete 27426
step
    +|cRXP_WARN_End of the Dustwallow Marsh route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Feralas|r: To New Thalanaar << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 83|r: |cRXP_FRIENDLY_Deepholm|r (about 0.8 levels of quests, starting around Maruut Stonebinder). Completing this step loads the guide for Deepholm --RouteBuilder:next
]])
