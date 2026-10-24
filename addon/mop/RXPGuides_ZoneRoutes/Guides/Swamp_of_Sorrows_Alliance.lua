-- 52-55 Swamp of Sorrows: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 52, 57).
-- Split into 2 guides, listed under "52 - 58 Swamp of Sorrows" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Swamp of Sorrows.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 52 - 58 Swamp of Sorrows
#subweight -52
#name 52-55 Swamp of Sorrows: around Trade Baron Silversnap
--RouteBuilder:next
#next Zone Routes (Alliance)\52-55 Winterspring: around Jez Goodgrub;Zone Routes (Alliance)\55-56 Silithus;Zone Routes (Alliance)\53-55 Un'Goro Crater: around Garl Stormclaw

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .turnin 28569 >>Turn in The Bogpaddle Bullet
    .target Trade Baron Silversnap
    .isOnQuest 28569
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .turnin 28675 >>Turn in Hero's Call: Swamp of Sorrows!
    .target Trade Baron Silversnap
    .isOnQuest 28675
step
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .accept 27587 >>Accept Maliciously Delicious
    .target Trade Baron Silversnap
step
    .goto 51,70.40,37.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rebecca Blackman|r
    .target Rebecca Blackman
    .home >>Set your Hearthstone to Rebecca Blackman's inn
step
    .goto 51,72.032,12.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeezie|r
    .fp Bogpaddle>>Get the Bogpaddle Flight Path
    .target Skeezie
step
    .goto 51,69.90,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .accept 27840 >>Accept Draenethyst Crystals
    .target Holaaru
    .xp <52,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,69.90,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .accept 27860 >>Accept The Lost Ones
    .target Holaaru
    .xp <52,1
step
    .goto 51,73.64,9.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brono Goodgroove|r
    .accept 27592 >>Accept Drinks on the Rocks
    .target Brono Goodgroove
step
    #loop
    .goto 51,81.68,14.27,0
    .goto 51,81.68,14.27,40,0
    .goto 51,83.76,9.29,40,0
    .goto 51,82.58,4.22,40,0
    >>Kill |cRXP_ENEMY_Silt Crawler|r and loot |cRXP_LOOT_Stolen Silversnap Ice|r
    >>Kill |cRXP_ENEMY_Swampshore Makruras|r. Loot them for |cRXP_LOOT_Intact Swampshore Tail|r
    .complete 27592,1 --Stolen Silversnap Ice (1)
    .complete 27587,1 --Intact Swampshore Tail (6)
    .mob Silt Crawler
    .mob Swampshore Makrura
step
    .goto 51,73.64,9.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brono Goodgroove|r
    .turnin 27592 >>Turn in Drinks on the Rocks
    .target Brono Goodgroove
step
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .turnin 27587 >>Turn in Maliciously Delicious
    .accept 27536 >>Accept Mostly Harmless
    .accept 27656 >>Accept Croc-Out
    .target Trade Baron Silversnap
step
    .goto 51,74.24,12.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pierre Fishflay|r
    .accept 27663 >>Accept Tastes Like Strider
    .target Pierre Fishflay
step
    #loop
    .goto 51,83.57,27.28,0
    .goto 51,83.57,27.28,40,0
    .goto 51,83.64,30.53,40,0
    >>Kill |cRXP_ENEMY_Swampstriders|r. Loot them for |cRXP_LOOT_Jumbo Swampstrider Drumstick|r
    .complete 27663,1 --Jumbo Swampstrider Drumstick (9)
    .mob Swampstrider
step
    #loop
    .goto 51,77.16,21.96,0
    .goto 51,77.16,21.96,40,0
    .goto 51,79.78,15.16,40,0
    >>Loot the |cRXP_PICK_Stray Land Mines|r for |cRXP_LOOT_Disarmed Land Mine|r
    .complete 27536,1 --Disarmed Land Mine (8)
step
    #loop
    .goto 51,82.26,38.42,0
    .goto 51,82.26,38.42,40,0
    .goto 51,81.85,42.86,40,0
    >>Kill |cRXP_ENEMY_Sawtooth Crocolisks|r
    .complete 27656,1 --Sawtooth Crocolisk slain (8)
    .mob Sawtooth Crocolisk
step
    .goto 51,74.24,12.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pierre Fishflay|r
    .turnin 27663 >>Turn in Tastes Like Strider
    .target Pierre Fishflay
step
    .goto 51,73.16,14.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trade Baron Silversnap|r
    .turnin 27536 >>Turn in Mostly Harmless
    .turnin 27656 >>Turn in Croc-Out
    .accept 27597 >>Accept Crazy Larry
    .target Trade Baron Silversnap
step
    .goto 51,84.03,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazy Larry|r
    .turnin 27597 >>Turn in Crazy Larry
    .accept 27598 >>Accept Kill Gil
    .accept 27599 >>Accept Can't Take It With Them
    .target Crazy Larry
step
    #loop
    .goto 51,89.56,30.16,0
    .goto 51,89.56,30.16,40,0
    .goto 51,89.20,26.82,40,0
    .goto 51,92.99,29.98,40,0
    >>Kill |cRXP_ENEMY_Gilblin Stalkers|r
    >>Kill |cRXP_ENEMY_Deceased Bogpaddle Privateers|r. Loot them for |cRXP_LOOT_Steamwheedle Ditty Bag|r
    .complete 27598,1 --Gilblin Stalker slain (7)
    .complete 27599,1 --Steamwheedle Ditty Bag (6)
    .mob Gilblin Stalker
    .mob Deceased Bogpaddle Privateer
step
    .goto 51,84.03,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazy Larry|r
    .turnin 27598 >>Turn in Kill Gil
    .turnin 27599 >>Turn in Can't Take It With Them
    .accept 27600 >>Accept In With a Bang
    .target Crazy Larry
step
    .goto 51,98.84,27.16
    >>Pick up |cRXP_PICK_Thousand-Thread-Count Fuse|r from the ground
    >>Pick up |cRXP_PICK_Extra-Pure Blasting Powder|r from the ground
    >>Pick up |cRXP_PICK_Stack of Questionable Publications|r from the ground
    .complete 27600,1 --Thousand-Thread-Count Fuse (1)
    .complete 27600,2 --Extra-Pure Blasting Powder (1)
    .complete 27600,3 --Stack of Questionable Publications (1)
step
    .goto 51,84.03,40.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazy Larry|r
    .turnin 27600 >>Turn in In With a Bang
    .accept 27740 >>Accept Baba Bogbrew
    .target Crazy Larry
step
    .goto 51,69.07,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baba Bogbrew|r
    .turnin 27740 >>Turn in Baba Bogbrew
    .accept 27691 >>Accept Marshfin Madness
    .target Baba Bogbrew
step
    #loop
    .goto 51,85.41,81.41,0
    .goto 51,85.41,81.41,40,0
    .goto 51,86.42,76.30,40,0
    >>Kill |cRXP_ENEMY_Marshfin Murkdwellers|r
    .complete 27691,1 --Marshfin Murkdweller slain (8)
    .mob Marshfin Murkdweller
step
    .goto 51,69.07,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baba Bogbrew|r
    .turnin 27691 >>Turn in Marshfin Madness
    .accept 27757 >>Accept The Darkest Depths
    .target Baba Bogbrew
step
    .goto 51,63.11,86.17
    >>Kill |cRXP_ENEMY_Hr'nglth the Lost|r
    .complete 27757,1 --Hr'nglth the Lost slain (1)
    .mob Hr'nglth the Lost
step
    .goto 51,69.07,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baba Bogbrew|r
    .turnin 27757 >>Turn in The Darkest Depths
    .accept 27818 >>Accept Slithering Signs
    .target Baba Bogbrew
step
    #loop
    .goto 51,79.91,75.86,0
    .goto 51,79.91,75.86,40,0
    .goto 51,83.97,74.35,40,0
    >>Kill |cRXP_ENEMY_Stagalbog Serpents|r. Loot them for |cRXP_LOOT_Intact Stagalbog Serpent Heart|r
    .complete 27818,1 --Intact Stagalbog Serpent Heart (5)
    .mob Stagalbog Serpent
step
    .goto 51,69.07,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baba Bogbrew|r
    .turnin 27818 >>Turn in Slithering Signs
    .accept 27869 >>Accept The Dragon and the Temple
    .target Baba Bogbrew
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27869 >>Turn in The Dragon and the Temple
    .accept 27694 >>Accept Pool of Tears
    .target Lord Itharius
step
    #loop
    .goto 51,69.98,59.36,0
    .goto 51,69.98,59.36,40,0
    .goto 51,67.74,60.92,40,0
    .goto 51,66.12,54.35,40,0
    >>Pick up |cRXP_PICK_Atal'ai Artifact|r from the ground
    .complete 27694,1 --Atal'ai Artifact (5)
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27694 >>Turn in Pool of Tears
    .accept 27704 >>Accept Legends of the Sunken Temple
    .target Lord Itharius
step
    .goto 51,73.80,44.20
    >>Hall of Masks found
    .complete 27704,1 --Hall of Masks found
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27704 >>Turn in Legends of the Sunken Temple
    .accept 27705 >>Accept Step One: The Priestess
    .target Lord Itharius
step
    .goto 51,74.78,49.28
    >>Kill |cRXP_ENEMY_Priestess Udum'bra|r
    .complete 27705,1 --Priestess Udum'bra slain (1)
    .mob Priestess Udum'bra
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27705 >>Turn in Step One: The Priestess
    .accept 27768 >>Accept Step Two: The Bloodletter
    .target Lord Itharius
step
    .goto 51,77.57,46.03
    >>Kill |cRXP_ENEMY_Gomora the Bloodletter|r
    .complete 27768,1 --Gomora the Bloodletter slain (1)
    .mob Gomora the Bloodletter
step
    .goto 51,77.30,46.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_?|r
    .turnin 27768 >>Turn in Step Two: The Bloodletter
    .target ?
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .accept 27773 >>Accept Step Three: Prophet
    .target Lord Itharius
step
    .goto 51,76.62,41.53
    >>Kill |cRXP_ENEMY_Jammal'an the Prophet|r
    .complete 27773,1 --Jammal'an the Prophet slain (1)
    .mob Jammal'an the Prophet
step
    .goto 51,69.47,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Itharius|r
    .turnin 27773 >>Turn in Step Three: Prophet
    .accept 27914 >>Accept Blessing of the Green Dragonflight
    .turnin 27914 >>Turn in Blessing of the Green Dragonflight
    .accept 27915 >>Accept The Heart of the Temple
    .accept 27870 >>Accept To Marshtide Watch << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Lord Itharius
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,68.20,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joanna Blueheart|r
    .turnin 27870 >>Turn in To Marshtide Watch
    .accept 27821 >>Accept Orcs and Humans
    .accept 27822 >>Accept Lumbering Oafs
    .target Joanna Blueheart
step
    .goto 51,69.90,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .accept 27840 >>Accept Draenethyst Crystals
    .accept 27860 >>Accept The Lost Ones << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Holaaru
step << Alliance
    .goto 51,70.050,38.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paola Baldwin|r
    .target Paola Baldwin
    .fp Marshtide Watch >> Get the Marshtide Watch flight path
step
    #loop
    .goto 51,64.23,24.48,0
    .goto 51,64.23,24.48,40,0
    .goto 51,62.05,26.91,40,0
    .goto 51,60.64,29.60,40,0
    >>Loot the |cRXP_PICK_Draenethyst Crystals|r for |cRXP_LOOT_Draenethyst Crystal|r
    >>Kill |cRXP_ENEMY_Lost One Hunters|r, |cRXP_ENEMY_Lost One Muckdwellers|r, |cRXP_ENEMY_Lost One Seers|r and |cRXP_ENEMY_Lost One Proxy Kill Credits|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .complete 27840,1 --Draenethyst Crystal (5)
    .complete 27860,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Lost One Hunter (8)
    .mob Lost One Hunter << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Lost One Muckdweller << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Lost One Seer << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .mob Lost One Proxy Kill Credit << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 51,58.79,42.55,0
    .goto 51,58.79,42.55,40,0
    .goto 51,60.13,45.40,40,0
    .goto 51,56.74,46.21,40,0
    >>Kill |cRXP_ENEMY_Stonard Warriors|r
    .complete 27821,1 --Stonard Warrior slain (8)
    .mob Stonard Warrior
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 51,52.52,50.04,0
    .goto 51,52.52,50.04,40,0
    .goto 51,53.39,54.23,40,0
    >>Kill |cRXP_ENEMY_Stonard Peons|r
    .complete 27822,1 --Stonard Peon slain (5)
    .mob Stonard Peon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith next
    .hs >>Hearth to Rebecca Blackman's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,68.20,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joanna Blueheart|r
    .turnin 27821 >>Turn in Orcs and Humans
    .turnin 27822 >>Turn in Lumbering Oafs
    .accept 27795 >>Accept Tides of Darkness
    .accept 27843 >>Accept Reinforcements Denied
    .accept 27845 >>Accept Marking the Fallen
    .target Joanna Blueheart
step
    .goto 51,69.90,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holaaru|r
    .turnin 27840 >>Turn in Draenethyst Crystals
    .turnin 27860 >>Turn in The Lost Ones << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 27918 >>Accept The Harborage
    .target Holaaru
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 51,59.88,44.69,0
    .goto 51,59.88,44.69,40,0
    .goto 51,58.73,48.85,40,0
    .goto 51,57.24,43.65,40,0
    .goto 51,56.10,48.82,40,0
    .goto 51,54.86,46.95,40,0
    .goto 51,53.48,48.61,40,0
    >>Interact with |cRXP_FRIENDLY_Fallen Marshtide Footman|r
    .complete 27845,1 --Fallen Marshtide Footman
    .target Fallen Marshtide Footman
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 51,57.14,45.42,0
    .goto 51,57.14,45.42,40,0
    .goto 51,55.31,43.09,40,0
    >>Kill |cRXP_ENEMY_Stonard Ogres|r
    >>Kill |cRXP_ENEMY_Stonard Warlocks|r
    .complete 27795,1 --Stonard Ogre slain (6)
    .complete 27843,1 --Stonard Warlock slain (3)
    .mob Stonard Ogre
    .mob Stonard Warlock
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,68.20,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joanna Blueheart|r
    .turnin 27795 >>Turn in Tides of Darkness
    .turnin 27843 >>Turn in Reinforcements Denied
    .turnin 27845 >>Turn in Marking the Fallen
    .accept 27849 >>Accept Assault on Stonard
    .accept 27851 >>Accept Cutting Supply
    .target Joanna Blueheart
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along48
    >>As you go: Kill |cRXP_ENEMY_Stonard Defenders|r. Pick up |cRXP_PICK_Stonard Supplies|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 27849,1 --Stonard Defender slain (6)
    .complete 27851,1 --Stonard Supplies (1)
    .mob Stonard Defender
step
    #label Along48
    .goto 51,49.35,55.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dispatch Commander Ruag|r
    .accept 27906 >>Accept Neeka Bloodscar
    .target Dispatch Commander Ruag
    .isQuestTurnedIn 27857 --any of: We're Under Attack!
    .xp <53,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 51,48.88,56.59,0
    .goto 51,48.88,56.59,40,0
    .goto 51,46.59,56.55,40,0
    .goto 51,48.03,52.38,40,0
    >>Kill |cRXP_ENEMY_Stonard Defenders|r
    >>Pick up |cRXP_PICK_Stonard Supplies|r from the ground
    .complete 27849,1 --Stonard Defender slain (6)
    .complete 27851,1 --Stonard Supplies (1)
    .mob Stonard Defender
step
    .goto 51,26.86,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .turnin 27918 >>Turn in The Harborage
    .accept 27875 >>Accept Prayerblossom << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 27876 >>Accept Secrets of the Mire << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .target Anchorite Avuun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,37.63,46.06
    >>Kill |cRXP_ENEMY_Shifting Mireglob|r and loot |cRXP_LOOT_Invigorated Silt|r
    .complete 27876,1 --Invigorated Silt (1)
    .mob Shifting Mireglob
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,35.82,38.20
    >>Loot the |cRXP_PICK_Prayerblooms|r for |cRXP_LOOT_Prayerblossom|r
    .complete 27875,1 --Prayerblossom (10)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,26.86,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .turnin 27875 >>Turn in Prayerblossom
    .turnin 27876 >>Turn in Secrets of the Mire
    .accept 27902 >>Accept The Purespring
    .accept 27904 >>Accept Breath of Mist
    .target Anchorite Avuun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 51,17.75,34.93,0
    .goto 51,17.75,34.93,40,0
    .goto 51,16.09,33.89,40,0
    .goto 51,18.61,40.65,40,0
    >>Kill |cRXP_ENEMY_Misty Grells|r. Loot them for |cRXP_LOOT_Smoky Crystal|r
    .complete 27904,1 --Smoky Crystal (5)
    .mob Misty Grell
step
    .goto 51,21.21,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka Bloodscar|r
    .turnin 27906 >>Turn in Neeka Bloodscar
    .target Neeka Bloodscar
    .isOnQuest 27906
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 51,18.71,63.10,0
    .goto 51,18.71,63.10,40,0
    .goto 51,16.96,64.52,40,0
    >>Kill |cRXP_ENEMY_Purespring Elementals|r. Loot them for |cRXP_LOOT_Purespring Mote|r
    .complete 27902,1 --Purespring Mote (6)
    .mob Purespring Elemental
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,26.86,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .turnin 27902 >>Turn in The Purespring
    .turnin 27904 >>Turn in Breath of Mist
    .accept 24913 >>Accept Remember the Light
    .target Anchorite Avuun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,26.94,33.57
    >>Help Anchorite Avuun say farewell to Magtoor.
    .complete 24913,1 --Magtoor
    .target Magtoor
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,26.86,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .turnin 24913 >>Turn in Remember the Light
    .target Anchorite Avuun
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 51,68.20,36.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joanna Blueheart|r
    .turnin 27849 >>Turn in Assault on Stonard
    .turnin 27851 >>Turn in Cutting Supply
    .target Joanna Blueheart
step
    +|cRXP_WARN_That is all of Swamp of Sorrows for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_The Temple of Atal'Hakkar - (Dungeon/Raid)|r: The Heart of the Temple
step
    +|cRXP_WARN_Suggested next zones at level 54|r: |cRXP_FRIENDLY_Winterspring|r (about 1.3 levels of quests, starting around Jez Goodgrub), |cRXP_FRIENDLY_Silithus|r (about 1.0 levels of quests, starting around Huum Wildmane), |cRXP_FRIENDLY_Un'Goro Crater|r (about 0.8 levels of quests, starting around Garl Stormclaw). Completing this step loads the guide for Winterspring --RouteBuilder:next
step
    +|cRXP_WARN_The rest of Swamp of Sorrows is planned from level 57.|r Load its guide for level 57 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 52 - 58 Swamp of Sorrows
#subweight -52
#name 57-58 Swamp of Sorrows
--RouteBuilder:next
#next Zone Routes (Alliance)\55-56 Silithus

step
    .goto 51,26.86,33.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anchorite Avuun|r
    .accept 27919 >>Accept Onward to the Blasted Lands
    .target Anchorite Avuun
step
    +|cRXP_WARN_End of the Swamp of Sorrows route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Blasted Lands|r: Onward to the Blasted Lands
step
    +|cRXP_WARN_Suggested next zones at level 57|r: |cRXP_FRIENDLY_Silithus|r (about 0.9 levels of quests, starting around Huum Wildmane). Completing this step loads the guide for Silithus --RouteBuilder:next
]])
