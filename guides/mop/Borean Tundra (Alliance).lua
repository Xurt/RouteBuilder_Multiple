-- 71-74 Borean Tundra: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 71, 76).
-- Split into 2 guides, listed under "71 - 77 Borean Tundra" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Borean Tundra.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 71 - 77 Borean Tundra
#subweight -71
#name 71-74 Borean Tundra: around Elder Atkanok
--RouteBuilder:next
#next Zone Routes (Alliance)\72-74 Dragonblight: around Aurastrasza;Zone Routes (Alliance)\70-73 Howling Fjord: around Lurielle;Zone Routes (Alliance)\73-75 Grizzly Hills: around Drakuru

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.96,68.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tomas Riverwell|r
    .accept 29608 >>Accept Allies in Dalaran
    .target Tomas Riverwell
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.85,67.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Recruitment Officer Blythe|r
    .accept 11672 >>Accept Enlistment Day
    .target Recruitment Officer Blythe
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.67,72.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Arlos|r
    .turnin 11672 >>Turn in Enlistment Day
    .accept 11727 >>Accept A Time for Heroes
    .target General Arlos
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.36,69.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hammerhill|r
    .turnin 11727 >>Turn in A Time for Heroes
    .accept 11797 >>Accept The Siege
    .target Sergeant Hammerhill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along4
    >>As you go: Kill |cRXP_ENEMY_Crypt Crawlers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11797,1 --Crypt Crawler slain (6)
    .mob Crypt Crawler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along4
    .goto 114,55.00,68.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Hawthorn|r
    .accept 11789 >>Accept A Soldier in Need
    .target Medic Hawthorn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,54.39,67.35,0
    .goto 114,54.39,67.35,40,0
    .goto 114,54.37,64.28,40,0
    >>Kill |cRXP_ENEMY_Crypt Crawlers|r
    .complete 11797,1 --Crypt Crawler slain (6)
    .mob Crypt Crawler
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along8
    >>As you go: Open the |cRXP_PICK_First Aid Supplies|r. Loot it for |cRXP_LOOT_Hawthorn's Anti-Venom|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11789,1 --Hawthorn's Anti-Venom (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.36,69.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hammerhill|r
    .turnin 11797 >>Turn in The Siege
    .accept 11889 >>Accept Death From Above
    .target Sergeant Hammerhill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,54.96,70.52
    >>Kill |cRXP_ENEMY_Scourged Flamespitters|r
    .complete 11889,1 --Scourged Flamespitter slain (6)
    .mob Scourged Flamespitter
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along8
    .goto 114,56.36,69.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hammerhill|r
    .turnin 11889 >>Turn in Death From Above
    .accept 11897 >>Accept Plug the Sinkholes
    .target Sergeant Hammerhill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.50,69.28
    >>Open the |cRXP_PICK_First Aid Supplies|r. Loot it for |cRXP_LOOT_Hawthorn's Anti-Venom|r
    .complete 11789,1 --Hawthorn's Anti-Venom (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.79,69.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Cantlebree|r
    .accept 11791 >>Accept Notify Arlos
    .target Admiral Cantlebree
    .isQuestTurnedIn 11920 --any of: Cultists Among Us
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.67,72.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Arlos|r
    .turnin 11791 >>Turn in Notify Arlos
    .target General Arlos
    .isOnQuest 11791
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.71,72.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Counselor Talbot|r
    .accept 12141 >>Accept A Diplomatic Mission
    .target Counselor Talbot
    .isQuestTurnedIn 11791 --any of: Notify Arlos
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.60,72.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Vurenn|r
    .accept 11792 >>Accept Enemies of the Light
    .target Harbinger Vurenn
    .isQuestTurnedIn 11791 --any of: Notify Arlos
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,55.00,68.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Hawthorn|r
    .turnin 11789 >>Turn in A Soldier in Need
    .target Medic Hawthorn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,54.77,63.12
    >>Kill |cRXP_ENEMY_Northern Sinkhole Kill Credits|r
    .complete 11897,2 --Northern Sinkhole Kill Credit slain (8)
    .mob Northern Sinkhole Kill Credit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,54.16,62.30
    >>Kill |cRXP_ENEMY_Cultist Necrolyte|r and loot |cRXP_LOOT_Cultist Communique|r
    .complete 11792,1 --Cultist Communique (1)
    .mob Cultist Necrolyte
    .isOnQuest 11792
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,50.89,72.29
    >>Kill |cRXP_ENEMY_Southern Sinkhole Kill Credits|r
    .complete 11897,1 --Southern Sinkhole Kill Credit slain (8)
    .mob Southern Sinkhole Kill Credit
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .turnin 12141 >>Turn in A Diplomatic Mission
    .target Karuk
    .isOnQuest 12141
step
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .accept 11613 >>Accept Karuk's Oath
    .target Karuk
    .isQuestTurnedIn 12141 --any of: A Diplomatic Mission
    .xp <68,1
step
    .goto 114,44.10,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Tuskarr Prisoner|r
    .accept 12471 >>Accept Cruelty of the Kvaldir
    .target Captured Tuskarr Prisoner
step
    #loop
    .goto 114,44.01,78.55,0
    .goto 114,44.01,78.55,40,0
    .goto 114,47.49,78.00,40,0
    .goto 114,49.20,79.12,40,0
    >>Kill |cRXP_ENEMY_Skadir Longboatsmans|r
    .complete 11613,2 --Skadir Longboatsman slain (8)
    .mob Skadir Longboatsman
    .isOnQuest 11613
step
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .turnin 12471 >>Turn in Cruelty of the Kvaldir while you are here
    .isQuestComplete 12471
    .target Karuk
step
    #loop
    .goto 114,45.88,77.84,0
    .goto 114,45.88,77.84,40,0
    .goto 114,44.62,80.44,40,0
    .goto 114,47.98,78.64,40,0
    >>Kill |cRXP_ENEMY_Skadir Raiders|r
    .complete 11613,1 --Skadir Raider slain (6)
    .mob Skadir Raider
    .isOnQuest 11613
step
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .turnin 12471 >>Turn in Cruelty of the Kvaldir
    .target Karuk
step
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .turnin 11613 >>Turn in Karuk's Oath
    .target Karuk
    .isOnQuest 11613
step
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .accept 11619 >>Accept Gamel the Cruel
    .target Karuk
    .isQuestTurnedIn 11613 --any of: Karuk's Oath
    .xp <68,1
step
    .goto 114,46.42,78.23
    >>Kill |cRXP_ENEMY_Gamel the Cruel|r
    .complete 11619,1 --Gamel the Cruel slain (1)
    .mob Gamel the Cruel
    .isOnQuest 11619
step
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .turnin 11619 >>Turn in Gamel the Cruel
    .target Karuk
    .isOnQuest 11619
step
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .accept 11620 >>Accept A Father's Words
    .target Karuk
    .isQuestTurnedIn 11619 --any of: Gamel the Cruel
    .xp <68,1
step
    .goto 114,43.60,80.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r
    .turnin 11620 >>Turn in A Father's Words
    .target Veehja
    .isOnQuest 11620
step
    .goto 114,43.60,80.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r
    .accept 11625 >>Accept The Trident of Naz'jan
    .target Veehja
    .isQuestTurnedIn 11620 --any of: A Father's Words
    .xp <68,1
step
    .goto 114,54.94,88.57
    >>Kill |cRXP_ENEMY_Ragnar Drakkarlund|r and loot |cRXP_LOOT_Trident of Naz'jan|r
    .complete 11625,1 --Trident of Naz'jan (1)
    .mob Ragnar Drakkarlund
    .isOnQuest 11625
step
    .goto 114,43.60,80.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r
    .turnin 11625 >>Turn in The Trident of Naz'jan
    .target Veehja
    .isOnQuest 11625
step
    .goto 114,43.60,80.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veehja|r
    .accept 11626 >>Accept The Emissary
    .target Veehja
    .isQuestTurnedIn 11625 --any of: The Trident of Naz'jan
    .xp <68,1
step
    .goto 114,52.06,88.18
    >>Kill |cRXP_ENEMY_Leviroth|r
    .complete 11626,1 --Leviroth slain (1)
    .mob Leviroth
    .isOnQuest 11626
step
    .goto 114,47.13,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karuk|r
    .turnin 11626 >>Turn in The Emissary
    .target Karuk
    .isOnQuest 11626
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.60,72.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Vurenn|r
    .turnin 11792 >>Turn in Enemies of the Light
    .target Harbinger Vurenn
    .isOnQuest 11792
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.60,72.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harbinger Vurenn|r
    .accept 11793 >>Accept Further Investigation
    .target Harbinger Vurenn
    .isQuestTurnedIn 11792 --any of: Enemies of the Light
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.36,69.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Hammerhill|r
    .turnin 11897 >>Turn in Plug the Sinkholes
    .accept 11928 >>Accept Farshire
    .target Sergeant Hammerhill
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.77,69.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mark Hanes|r
    .accept 11927 >>Accept Word on the Street
    .target Mark Hanes
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.84,68.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Airman Skyhopper|r
    .accept 11707 >>Accept Distress Call
    .target Airman Skyhopper
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.41,67.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Midge|r
    .accept 11575 >>Accept Nick of Time
    .target Midge
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.75,68.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leryssa|r
    .turnin 11927 >>Turn in Word on the Street
    .accept 11599 >>Accept Thassarian, My Brother
    .target Leryssa
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.55,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Yaala|r
    .turnin 11793 >>Turn in Further Investigation
    .target Vindicator Yaala
    .isOnQuest 11793
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.55,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Yaala|r
    .accept 11794 >>Accept The Hunt is On
    .target Vindicator Yaala
    .isQuestTurnedIn 11793 --any of: Further Investigation
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.58,67.14
    >>Kill |cRXP_ENEMY_"Salty" John Thorpe|r
    .complete 11794,3 --"Salty" John Thorpe slain (1)
    .mob "Salty" John Thorpe
    .isOnQuest 11794
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,59.14,68.68
    >>Kill |cRXP_ENEMY_Tom Hegger|r
    .complete 11794,1 --Tom Hegger slain (1)
    .mob Tom Hegger
    .isOnQuest 11794
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.72,71.84
    >>Kill |cRXP_ENEMY_Guard Mitchells|r
    .complete 11794,2 --Guard Mitchells slain (1)
    .mob Guard Mitchells
    .isOnQuest 11794
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.21,62.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald Green|r
    .turnin 11928 >>Turn in Farshire
    .accept 11901 >>Accept Military?  What Military?
    .target Gerald Green
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.81,55.55
    >>Click the |cRXP_PICK_Plagued Grain|r
    .turnin 11901 >>Turn in Military?  What Military?
    .accept 11902 >>Accept Pernicious Evidence
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.05,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Allerton|r
    .turnin 11599 >>Turn in Thassarian, My Brother while you are here
    .isQuestComplete 11599
    .target William Allerton
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.21,62.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald Green|r
    .turnin 11902 >>Turn in Pernicious Evidence
    .accept 11903 >>Accept It's Time for Action
    .target Gerald Green
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along52
    >>As you go: Kill |cRXP_ENEMY_Plagued Scavengers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11903,1 --Plagued Scavenger slain (14)
    .mob Plagued Scavenger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.19,63.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah Hawning|r
    .accept 11908 >>Accept Reference Material
    .target Jeremiah Hawning
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along52
    .goto 114,58.28,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendy Darren|r
    .accept 11913 >>Accept Take No Chances
    .target Wendy Darren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,55.63,61.16,0
    .goto 114,55.63,61.16,40,0
    .goto 114,55.75,58.32,40,0
    >>Pick up |cRXP_PICK_Fields, Factories and Workshops|r from the ground
    >>Click the |cRXP_PICK_Farshire Grain|r
    >>Kill |cRXP_ENEMY_Plagued Scavengers|r
    .complete 11908,1 --Fields, Factories and Workshops (1)
    .complete 11913,1 --Farshire Grain
    .complete 11903,1 --Plagued Scavenger slain (14)
    .mob Plagued Scavenger
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.28,62.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendy Darren|r
    .turnin 11913 >>Turn in Take No Chances
    .target Wendy Darren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.21,62.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald Green|r
    .turnin 11903 >>Turn in It's Time for Action
    .accept 11904 >>Accept Fruits of Our Labor
    .target Gerald Green
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.19,63.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah Hawning|r
    .turnin 11908 >>Turn in Reference Material
    .accept 12035 >>Accept Repurposed Technology
    .target Jeremiah Hawning
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.04,60.93
    >>Interact with |cRXP_FRIENDLY_Harvest Collectors|r
    .complete 12035,1 --Harvest Collector (5)
    .target Harvest Collector
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.19,63.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah Hawning|r
    .turnin 12035 >>Turn in Repurposed Technology while you are here
    .isQuestComplete 12035
    .target Jeremiah Hawning
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.05,55.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Allerton|r
    .turnin 11599 >>Turn in Thassarian, My Brother
    .accept 11600 >>Accept The Late William Allerton
    .target William Allerton
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.97,53.30
    >>Kill |cRXP_ENEMY_Captain Jacobs|r and loot |cRXP_LOOT_Cart Release Key|r
    .collect 35705,1,11904,1 --Cart Release Key (1)
    .mob Captain Jacobs
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.19,54.64
    >>Click the |cRXP_PICK_Cart Release|r
    .complete 11904,1 --Cart Release
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.21,62.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald Green|r
    .turnin 11904 >>Turn in Fruits of Our Labor
    .accept 11962 >>Accept One Last Delivery
    .target Gerald Green
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.19,63.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah Hawning|r
    .turnin 12035 >>Turn in Repurposed Technology
    .target Jeremiah Hawning
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.32,66.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda Stoneforge|r
    .turnin 11962 >>Turn in One Last Delivery
    .accept 11963 >>Accept Weapons for Farshire
    .target Hilda Stoneforge
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.75,68.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Leryssa|r
    .turnin 11600 >>Turn in The Late William Allerton
    .accept 11601 >>Accept Lost and Found
    .target Leryssa
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.29,68.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Deacon|r
    .turnin 11601 >>Turn in Lost and Found
    .accept 11603 >>Accept In Wine, Truth
    .target James Deacon
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.55,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Yaala|r
    .turnin 11794 >>Turn in The Hunt is On
    .target Vindicator Yaala
    .isOnQuest 11794
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.21,62.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald Green|r
    .turnin 11963 >>Turn in Weapons for Farshire
    .accept 11965 >>Accept Call to Arms!
    .target Gerald Green
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.32,59.40
    >>Click the |cRXP_PICK_Bell Rope|r
    .complete 11965,1 --Bell Rope
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.21,62.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerald Green|r
    .turnin 11965 >>Turn in Call to Arms!
    .target Gerald Green
step
    .goto 114,54.30,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Etaruk|r
    .accept 11612 >>Accept Reclaiming the Quarry
    .target Etaruk
step
    #completewith Along71
    >>As you go: Kill |cRXP_ENEMY_Beryl Treasure Hunters|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11612,1 --Beryl Treasure Hunter slain (12)
    .mob Beryl Treasure Hunter
step
    #label Along71
    .goto 114,54.64,35.85
    >>Click the |cRXP_PICK_Elder Atkanok|r
    .accept 11605 >>Accept The Honored Ancestors
step
    #loop
    .goto 114,52.59,34.52,0
    .goto 114,52.59,34.52,40,0
    .goto 114,50.96,31.24,40,0
    >>Click the |cRXP_PICK_"Elder Kesuk"|r
    >>Click the |cRXP_PICK_"Elder Takret"|r
    >>Click the |cRXP_PICK_"Elder Sagani"|r
    >>Kill |cRXP_ENEMY_Beryl Treasure Hunters|r
    .complete 11605,1 --"Elder Kesuk"
    .complete 11605,3 --"Elder Takret"
    .complete 11605,2 --"Elder Sagani"
    .complete 11612,1 --Beryl Treasure Hunter slain (12)
    .mob Beryl Treasure Hunter
step
    .goto 114,54.64,35.85
    >>Click the |cRXP_PICK_Elder Atkanok|r
    .turnin 11605 >>Turn in The Honored Ancestors
    .accept 11607 >>Accept The Lost Spirits
step
    #completewith Along74
    >>As you go: Kill |cRXP_ENEMY_Beryl Hound|r and loot |cRXP_LOOT_Core of Malice|r. |cRXP_WARN_Anything left is finished later|r
    .collect 34711,1,11607,1 --Core of Malice (1)
    .mob Beryl Hound
step
    #label Along74
    .goto 114,54.30,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Etaruk|r
    .turnin 11612 >>Turn in Reclaiming the Quarry
    .accept 11617 >>Accept Hampering Their Escape
    .target Etaruk
step
    #completewith Along77
    >>As you go: Kill |cRXP_ENEMY_North Platform|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11617,2 --North Platform slain (1)
    .mob North Platform
step
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_Kaskala Shamans|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11607,2 --Kaskala Shaman slain (3)
    .mob Kaskala Shaman
step
    #loop
    .goto 114,51.93,35.01,0
    .goto 114,51.93,35.01,40,0
    .goto 114,51.27,31.61,40,0
    >>Kill |cRXP_ENEMY_Beryl Reclaimer|r and loot |cRXP_LOOT_Gnomish Grenade|r
    >>Kill |cRXP_ENEMY_Beryl Hound|r and loot |cRXP_LOOT_Core of Malice|r
    .collect 34772,1,11617,1 --Gnomish Grenade (1)
    .collect 34711,1,11607,1 --Core of Malice (1)
    .mob Beryl Reclaimer
    .mob Beryl Hound
step
    #completewith Along76
    >>As you go: Kill |cRXP_ENEMY_West Platform|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11617,3 --West Platform slain (1)
    .mob West Platform
step
    #label Along76
    .goto 114,51.69,31.46
    >>Kill |cRXP_ENEMY_Kaskala Craftsmans|r
    .complete 11607,1 --Kaskala Craftsman slain (8)
    .mob Kaskala Craftsman
step
    #label Along77
    .goto 114,51.37,31.52
    >>Kill |cRXP_ENEMY_Kaskala Shamans|r
    .complete 11607,2 --Kaskala Shaman slain (3)
    .mob Kaskala Shaman
step
    .goto 114,52.73,34.61
    >>Kill |cRXP_ENEMY_East Platform|r
    .complete 11617,1 --East Platform slain (1)
    .mob East Platform
step
    .goto 114,54.64,35.85
    >>Click the |cRXP_PICK_Elder Atkanok|r
    .turnin 11607 >>Turn in The Lost Spirits while you are here
    .isQuestComplete 11607
step
    .goto 114,50.95,34.04
    >>Kill |cRXP_ENEMY_West Platform|r
    >>Kill |cRXP_ENEMY_North Platform|r
    .complete 11617,3 --West Platform slain (1)
    .complete 11617,2 --North Platform slain (1)
    .mob West Platform
    .mob North Platform
step
    .goto 114,54.64,35.85
    >>Click the |cRXP_PICK_Elder Atkanok|r
    .turnin 11607 >>Turn in The Lost Spirits
    .accept 11609 >>Accept Picking Up the Pieces
step
    #completewith Along81
    >>As you go: Pick up |cRXP_PICK_Tuskarr Ritual Object|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11609,1 --Tuskarr Ritual Object (6)
step
    #label Along81
    .goto 114,54.30,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Etaruk|r
    .turnin 11617 >>Turn in Hampering Their Escape
    .accept 11623 >>Accept A Visit to the Curator
    .target Etaruk
step
    #loop
    .goto 114,52.11,34.21,0
    .goto 114,52.11,34.21,40,0
    .goto 114,50.56,31.26,40,0
    >>Kill |cRXP_ENEMY_Curator Insivius|r
    >>Pick up |cRXP_PICK_Tuskarr Ritual Object|r from the ground
    .complete 11623,1 --Curator Insivius slain (1)
    .complete 11609,1 --Tuskarr Ritual Object (6)
    .mob Curator Insivius
step
    .goto 114,54.64,35.85
    >>Click the |cRXP_PICK_Elder Atkanok|r
    .turnin 11609 >>Turn in Picking Up the Pieces
    .accept 11610 >>Accept Leading the Ancestors Home
step
    .goto 114,54.30,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Etaruk|r
    .turnin 11623 >>Turn in A Visit to the Curator
    .target Etaruk
step
    .goto 114,52.33,31.14
    >>Click the |cRXP_PICK_Elder Sagani|r
    >>Click the |cRXP_PICK_Elder Takret|r
    >>Click the |cRXP_PICK_Elder Kesuk|r
    .complete 11610,2 --Elder Sagani
    .complete 11610,3 --Elder Takret
    .complete 11610,1 --Elder Kesuk
step
    .goto 114,54.64,35.85
    >>Click the |cRXP_PICK_Elder Atkanok|r
    .turnin 11610 >>Turn in Leading the Ancestors Home
step
    .goto 114,57.05,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Lathorius|r
    .accept 11864 >>Accept A Mission Statement
    .turnin 11864 >>Turn in A Mission Statement
    .accept 11866 >>Accept Ears of Our Enemies
    .accept 11876 >>Accept Help Those That Cannot Help Themselves
    .target Arch Druid Lathorius
step
    #completewith Along91
    >>As you go: Kill |cRXP_ENEMY_Clam Master Ks|r, |cRXP_ENEMY_Loot Crazed Poachers|r, |cRXP_ENEMY_Loot Crazed Divers|r and |cRXP_ENEMY_Northsea Mercenaries|r. Loot them for |cRXP_LOOT_Nesingwary Lackey Ear|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11866,1 --Nesingwary Lackey Ear (15)
    .mob Clam Master K
    .mob Loot Crazed Poacher
    .mob Loot Crazed Diver
    .mob Northsea Mercenary
step
    .goto 114,56.80,44.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaza|r
    .accept 11865 >>Accept Unfit for Death
    .target Zaza
step
    #completewith Along89
    >>As you go: Kill |cRXP_ENEMY_Nesingwary Trappers|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11865,1 --Nesingwary Trapper slain (8)
    .mob Nesingwary Trapper
step
    #label Along89
    .goto 114,57.33,44.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Cenius|r
    .accept 11869 >>Accept Happy as a Clam
    .target Hierophant Cenius
step
    .goto 114,57.50,46.30
    >>Kill |cRXP_ENEMY_Nesingwary Trappers|r
    .complete 11865,1 --Nesingwary Trapper slain (8)
    .mob Nesingwary Trapper
step
    .goto 114,56.80,44.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaza|r
    .turnin 11865 >>Turn in Unfit for Death while you are here
    .isQuestComplete 11865
    .target Zaza
step
    #label Along91
    .goto 114,51.11,43.85
    >>Kill |cRXP_ENEMY_Loot Crazed Divers|r
    .complete 11869,1 --Loot Crazed Diver slain (10)
    .mob Loot Crazed Diver
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,45.27,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Donathan|r
    .turnin 11575 >>Turn in Nick of Time
    .target Librarian Donathan
step
    .goto 114,44.98,33.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Garren|r
    .accept 11576 >>Accept Monitoring the Rift: Cleftcliff Anomaly
    .target Librarian Garren
step
    .goto 114,46.75,32.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Rosen|r
    .target Apprentice Rosen
    .home >>Set your Hearthstone to Apprentice Rosen's inn
step
    #loop
    .goto 114,55.25,38.45,0
    .goto 114,55.25,38.45,40,0
    .goto 114,55.14,42.88,40,0
    >>Kill |cRXP_ENEMY_Trapped Mammoth Calfs|r
    .complete 11876,1 --Trapped Mammoth Calf slain (8)
    .mob Trapped Mammoth Calf
step
    #completewith Along102
    >>As you go: Kill |cRXP_ENEMY_Clam Master Ks|r, |cRXP_ENEMY_Loot Crazed Poachers|r, |cRXP_ENEMY_Loot Crazed Divers|r and |cRXP_ENEMY_Northsea Mercenaries|r. Loot them for |cRXP_LOOT_Nesingwary Lackey Ear|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11866,1 --Nesingwary Lackey Ear (15)
    .mob Clam Master K
    .mob Loot Crazed Poacher
    .mob Loot Crazed Diver
    .mob Northsea Mercenary
step
    .goto 114,57.33,44.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Cenius|r
    .turnin 11869 >>Turn in Happy as a Clam
    .accept 11870 >>Accept The Abandoned Reach
    .target Hierophant Cenius
step
    .goto 114,57.05,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Lathorius|r
    .turnin 11876 >>Turn in Help Those That Cannot Help Themselves
    .target Arch Druid Lathorius
step
    .goto 114,56.80,44.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaza|r
    .turnin 11865 >>Turn in Unfit for Death
    .accept 11868 >>Accept The Culler Cometh
    .target Zaza
step
    .goto 114,57.20,56.38
    >>Kill |cRXP_ENEMY_Karen "I Don't Caribou" the Culler|r
    .complete 11868,1 --Karen "I Don't Caribou" the Culler slain (1)
    .mob Karen "I Don't Caribou" the Culler
step
    .goto 114,57.80,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Liandra|r
    .turnin 11870 >>Turn in The Abandoned Reach
    .accept 11871 >>Accept Not On Our Watch
    .target Hierophant Liandra
step
    #loop
    .goto 114,58.94,56.99,0
    .goto 114,58.94,56.99,40,0
    .goto 114,59.98,59.17,40,0
    .goto 114,60.35,61.77,40,0
    >>Kill |cRXP_ENEMY_Northsea Thug|r and loot |cRXP_LOOT_Shipment of Animal Parts|r. It can also be picked up from |cRXP_PICK_Shipment of Animal Parts|r on the ground
    .complete 11871,1 --Shipment of Animal Parts (1)
    .mob Northsea Thug
step
    #label Along102
    .goto 114,57.80,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Liandra|r
    .turnin 11871 >>Turn in Not On Our Watch
    .accept 11872 >>Accept The Nefarious Clam Master...
    .target Hierophant Liandra
step
    #loop
    .goto 114,51.11,43.85,0
    .goto 114,51.11,43.85,40,0
    .goto 114,49.93,42.30,40,0
    >>Kill |cRXP_ENEMY_Clam Master Ks|r, |cRXP_ENEMY_Loot Crazed Poachers|r, |cRXP_ENEMY_Loot Crazed Divers|r and |cRXP_ENEMY_Northsea Mercenaries|r. Loot them for |cRXP_LOOT_Nesingwary Lackey Ear|r
    .complete 11866,1 --Nesingwary Lackey Ear (15)
    .mob Clam Master K
    .mob Loot Crazed Poacher
    .mob Loot Crazed Diver
    .mob Northsea Mercenary
step
    .goto 114,62.29,66.14
    >>Open the |cRXP_PICK_Wine Crate|r. Loot it for |cRXP_LOOT_Kul Tiras Wine|r << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>Kill |cRXP_ENEMY_Clam Master K|r
    .complete 11603,1 << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren --Kul Tiras Wine (1)
    .complete 11872,1 --Clam Master K slain (1)
    .mob Clam Master K
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.53,68.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Colburn|r
    .turnin 11603 >>Turn in In Wine, Truth
    .accept 11604 >>Accept A Deserter
    .target Old Man Colburn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.68,71.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Brau|r
    .turnin 11604 >>Turn in A Deserter
    .accept 11932 >>Accept Cowards and Fools
    .target Private Brau
step
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,44.88,49.95
    >>Click the |cRXP_PICK_Hero's Call Board|r
    .accept 28531 >>Accept Hero's Call: Desolace!
    .accept 28492 >>Accept Hero's Call: Ashenvale!
    .accept 28539 >>Accept Hero's Call: Stonetalon Mountains!
    .accept 28550 >>Accept Hero's Call: Southern Barrens!
    .accept 28511 >>Accept Hero's Call: Feralas!
    .accept 28552 >>Accept Hero's Call: Dustwallow Marsh!
    .accept 28503 >>Accept Hero's Call: Thousand Needles!
    .accept 28507 >>Accept Hero's Call: Tanaris!
    .accept 28543 >>Accept Hero's Call: Felwood!
    .accept 28525 >>Accept Hero's Call: Un'Goro Crater!
    .accept 28544 >>Accept Hero's Call: Winterspring!
    .accept 28528 >>Accept Hero's Call: Silithus!
    .accept 28708 >>Accept Hero's Call: Outland!
    .accept 28709 >>Accept Hero's Call: Northrend!
step << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    .goto 89,43.91,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Cordressa Briarbow|r
    .accept 26383 >>Accept Breaking Waves of Change
    .target Sentinel Cordressa Briarbow
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 89,56.54,46.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .accept 27225 >>Accept A Summons from Ander Germaine
    .accept 28258 >>Accept Meet with Ander Germaine
    .target Arias'ta Bladesinger
step << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.35,77.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Astarii Starseeker|r
    .accept 28285 >>Accept Meet with High Priestess Laurena
    .target Astarii Starseeker
step << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    .goto 89,43.49,25.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeen'ra Nightrunner|r
    .accept 27266 >>Accept Wulf Calls
    .accept 28260 >>Accept Meet with Wulf Hansreim
    .target Jeen'ra Nightrunner
step << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    .goto 89,39.91,39.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erion Shadewhisper|r
    .accept 27267 >>Accept Make Contact with SI:7
    .accept 28262 >>Accept Meet with Lord Tony Romano
    .target Erion Shadewhisper
step << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    .goto 89,43.40,79.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alathea|r
    .accept 27268 >>Accept Make Haste to the Cathedral
    .target Priestess Alathea
step
    .goto 89,40.50,27.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 27273 >>Accept An Invitation from Moonglade << NightElf Druid/Worgen Druid
    .accept 28289 >>Accept Moonglade Calls << Druid
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
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 89,43.01,78.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 14039 >>Turn in Home of the Kaldorei
    .target Tyrande Whisperwind
    .isOnQuest 14039
step
    #completewith next
    .zone 114 >>Leave Darnassus for Borean Tundra
    .zoneskip 114
step
    #completewith next
    .hs >>Hearth to Apprentice Rosen's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 114,45.27,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Donathan|r
    .accept 11590 >>Accept Abduction
    .target Librarian Donathan
    .isQuestTurnedIn 11587 --any of: Prison Break
    .xp <69,1
step
    #loop
    .goto 114,43.31,36.73,0
    .goto 114,43.31,36.73,40,0
    .goto 114,42.73,37.91,40,0
    .goto 114,40.94,38.30,40,0
    .goto 114,43.19,40.80,40,0
    .goto 114,42.64,41.34,40,0
    .goto 114,40.84,40.41,40,0
    >>Interact with |cRXP_FRIENDLY_Beryl Sorcerer|r
    .complete 11590,1 --Beryl Sorcerer
    .target Beryl Sorcerer
    .isOnQuest 11590
step
    .goto 114,45.27,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Donathan|r
    .turnin 11590 >>Turn in Abduction
    .target Librarian Donathan
    .isOnQuest 11590
step
    .goto 114,45.27,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Donathan|r
    .accept 11646 >>Accept The Borean Inquisition
    .target Librarian Donathan
    .isQuestTurnedIn 11590 --any of: Abduction
    .xp <69,1
step
    .goto 114,46.33,32.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Normantis|r
    .turnin 11646 >>Turn in The Borean Inquisition
    .target Librarian Normantis
    .isOnQuest 11646
step
    .goto 114,46.33,32.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Normantis|r
    .accept 11648 >>Accept The Art of Persuasion
    .target Librarian Normantis
    .isQuestTurnedIn 11646 --any of: The Borean Inquisition
    .xp <69,1
step
    .goto 114,46.32,32.92
    >>Kill |cRXP_ENEMY_Imprisoned Beryl Sorcerer|r
    .complete 11648,1 --Imprisoned Beryl Sorcerer slain (1)
    .mob Imprisoned Beryl Sorcerer
    .isOnQuest 11648
step
    .goto 114,46.33,32.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Normantis|r
    .turnin 11648 >>Turn in The Art of Persuasion
    .target Librarian Normantis
    .isOnQuest 11648
step
    .goto 114,46.33,32.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Normantis|r
    .accept 11663 >>Accept Sharing Intelligence
    .target Librarian Normantis
    .isQuestTurnedIn 11648 --any of: The Art of Persuasion
    .xp <69,1
step
    .goto 114,45.27,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Donathan|r
    .turnin 11663 >>Turn in Sharing Intelligence
    .target Librarian Donathan
    .isOnQuest 11663
step
    .goto 114,45.27,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Donathan|r
    .accept 11671 >>Accept A Race Against Time
    .target Librarian Donathan
    .isQuestTurnedIn 11663 --any of: Sharing Intelligence
    .xp <69,1
step
    .goto 114,34.29,42.16
    >>Kill |cRXP_ENEMY_Borean - Westrift Cleftcliff Anomaly|r
    .complete 11576,1 --Borean - Westrift Cleftcliff Anomaly slain (1)
    .mob Borean - Westrift Cleftcliff Anomaly
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    .goto 103,47.23,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edirah|r
    .accept 27271 >>Accept Journey to the Wizard's Sanctum
    .accept 28263 >>Accept Meet with Maginor Dumas
    .target Edirah
step << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    #completewith next
    .zone 114 >>Leave The Exodar for Borean Tundra
    .zoneskip 114
step
    .goto 114,41.94,38.91
    >>Open the |cRXP_PICK_Salrand's Lockbox|r. Loot it for |cRXP_LOOT_Salrand's Broken Key|r
    .complete 11671,1 --Salrand's Broken Key (1)
    .isOnQuest 11671
step
    .goto 114,44.98,33.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Garren|r
    .turnin 11576 >>Turn in Monitoring the Rift: Cleftcliff Anomaly
    .accept 11582 >>Accept Monitoring the Rift: Sundered Chasm
    .target Librarian Garren
step
    .goto 114,45.27,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Donathan|r
    .turnin 11671 >>Turn in A Race Against Time
    .target Librarian Donathan
    .isOnQuest 11671
step
    .goto 114,45.27,33.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Donathan|r
    .accept 11679 >>Accept Reforging the Key
    .target Librarian Donathan
    .isQuestTurnedIn 11671 --any of: A Race Against Time
    .xp <69,1
step
    .goto 114,45.33,34.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
    .turnin 11679 >>Turn in Reforging the Key
    .target Surristrasz
    .isOnQuest 11679
step
    .goto 114,45.33,34.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
    .accept 11680 >>Accept Taking Wing
    .target Surristrasz
    .isQuestTurnedIn 11679 --any of: Reforging the Key
    .xp <69,1
step
    .goto 114,46.38,37.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmage Anzim|r
    .turnin 11680 >>Turn in Taking Wing
    .target Warmage Anzim
    .isOnQuest 11680
step
    .goto 114,46.38,37.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmage Anzim|r
    .accept 11681 >>Accept Rescuing Evanor
    .target Warmage Anzim
    .isQuestTurnedIn 11680 --any of: Taking Wing
    .xp <69,1
step
    .goto 114,46.37,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Evanor|r
    .turnin 11681 >>Turn in Rescuing Evanor
    .target Archmage Evanor
    .isOnQuest 11681
step
    .goto 114,46.37,32.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Evanor|r
    .accept 11682 >>Accept Dragonspeak
    .target Archmage Evanor
    .isQuestTurnedIn 11681 --any of: Rescuing Evanor
    .xp <69,1
step
    .goto 114,43.86,28.64
    >>Kill |cRXP_ENEMY_Borean - Westrift Chasm Anomaly|r
    .complete 11582,1 --Borean - Westrift Chasm Anomaly slain (1)
    .mob Borean - Westrift Chasm Anomaly
step
    .goto 114,56.80,44.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaza|r
    .turnin 11868 >>Turn in The Culler Cometh
    .target Zaza
step
    .goto 114,57.33,44.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Cenius|r
    .turnin 11872 >>Turn in The Nefarious Clam Master... while you are here
    .isQuestComplete 11872
    .target Hierophant Cenius
step
    .goto 114,57.05,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Lathorius|r
    .turnin 11866 >>Turn in Ears of Our Enemies
    .target Arch Druid Lathorius
step
    .goto 114,56.85,44.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Killinger the Den Watcher|r
    .accept 11884 >>Accept Ned, Lord of Rhinos...
    .target Killinger the Den Watcher
step
    .goto 114,47.40,41.10
    >>Kill |cRXP_ENEMY_"Lunchbox"|r
    >>Kill |cRXP_ENEMY_Nedar, Lord of Rhinos|r
    .complete 11884,2 --"Lunchbox" slain (1)
    .complete 11884,1 --Nedar, Lord of Rhinos slain (8)
    .mob "Lunchbox"
    .mob Nedar, Lord of Rhinos
step
    .goto BoreanTundra,45.33,34.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
    .fp Amber Ledge >> Get the Amber Ledge flight path
    .target Surristrasz
step
    .goto 114,56.85,44.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Killinger the Den Watcher|r
    .turnin 11884 >>Turn in Ned, Lord of Rhinos...
    .target Killinger the Den Watcher
step
    .goto 114,57.05,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Lathorius|r
    .accept 11878 >>Accept Khu'nok Will Know
    .target Arch Druid Lathorius
step
    .goto 114,57.33,44.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hierophant Cenius|r
    .turnin 11872 >>Turn in The Nefarious Clam Master...
    .target Hierophant Cenius
step
    .goto 114,59.46,30.37
    >>Interact with |cRXP_FRIENDLY_Khu'nok the Behemoth|r
    .complete 11878,1 --Khu'nok the Behemoth
    .target Khu'nok the Behemoth
step
    .goto 114,59.46,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khu'nok the Behemoth|r
    .turnin 11878 >>Turn in Khu'nok Will Know
    .accept 11879 >>Accept Kaw the Mammoth Destroyer
    .target Khu'nok the Behemoth
step
    .goto 114,53.64,24.53
    >>Pick up |cRXP_PICK_Kaw's War Halberd|r from the ground
    .complete 11879,1 --Kaw's War Halberd (1)
step
    .goto BoreanTundra,56.56,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kara|r
    .fp Fizzcrank >> Get the Fizzcrank Airstrip Flight Path
    .target Kara Thricestar
step
    .goto 114,57.05,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Lathorius|r
    .turnin 11879 >>Turn in Kaw the Mammoth Destroyer
    .accept 11892 >>Accept The Assassination of Harold Lane
    .target Arch Druid Lathorius
step
    .goto 114,49.90,41.54
    >>Kill |cRXP_ENEMY_Harold Lane|r
    .complete 11892,1 --Harold Lane slain (1)
    .mob Harold Lane
step
    .goto 114,57.05,44.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arch Druid Lathorius|r
    .turnin 11892 >>Turn in The Assassination of Harold Lane
    .target Arch Druid Lathorius
step
    .goto 114,63.80,46.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ataika|r
    .turnin 11932 >>Turn in Cowards and Fools << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 12086 >>Accept The Son of Karkut << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 11949 >>Accept Not Without a Fight!
    .target Ataika
step
    #loop
    .goto 114,64.79,47.82,0
    .goto 114,64.79,47.82,40,0
    .goto 114,66.56,45.28,40,0
    >>Kill |cRXP_ENEMY_Kvaldir Raiders|r
    .complete 11949,1 --Kvaldir Raider slain (12)
    .mob Kvaldir Raider
step
    .goto 114,63.80,46.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ataika|r
    .turnin 11949 >>Turn in Not Without a Fight!
    .accept 11950 >>Accept Muahit's Wisdom
    .target Ataika
step
    .goto 114,67.21,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Muahit|r
    .turnin 11950 >>Turn in Muahit's Wisdom
    .accept 11961 >>Accept Spirits Watch Over Us
    .target Elder Muahit
step
    .goto 114,67.65,50.41
    >>Kill |cRXP_ENEMY_Iruk|r and loot |cRXP_LOOT_Issliruk's Totem|r
    .complete 11961,1 --Issliruk's Totem (1)
    .mob Iruk
step
    .goto 114,67.21,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Muahit|r
    .turnin 11961 >>Turn in Spirits Watch Over Us
    .accept 11968 >>Accept The Tides Turn
    .target Elder Muahit
step
    .goto 114,67.41,56.87
    >>Kill |cRXP_ENEMY_Heigarr the Horrible|r
    .complete 11968,1 --Heigarr the Horrible slain (1)
    .mob Heigarr the Horrible
step
    .goto 114,67.21,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Muahit|r
    .turnin 11968 >>Turn in The Tides Turn
    .target Elder Muahit
step
    .goto 114,67.26,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hotawa|r
    .accept 12117 >>Accept Travel to Moa'ki Harbor
    .target Hotawa
step << skip
    .goto BoreanTundra,78.5,51.5
    >>Travel to Unu'pe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilko|r
    .fp Unu'pe >> Get the Unu'pe flight path
    .target Bilko Driftspark
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,82.01,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Venn|r
    .turnin 12086 >>Turn in The Son of Karkut
    .accept 11944 >>Accept Surrounded!
    .target Corporal Venn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along171
    >>As you go: Kill |cRXP_ENEMY_Ziggurat Defenders|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11944,1 --Ziggurat Defender slain (7)
    .mob Ziggurat Defender
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along171
    .goto 114,82.17,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Casey|r
    .accept 12157 >>Accept The Lost Courier
    .target Private Casey
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,82.68,42.16,0
    .goto 114,82.68,42.16,40,0
    .goto 114,85.89,42.05,40,0
    >>Kill |cRXP_ENEMY_Ziggurat Defenders|r
    .complete 11944,1 --Ziggurat Defender slain (7)
    .mob Ziggurat Defender
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,82.01,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Venn|r
    .turnin 11944 >>Turn in Surrounded!
    .accept 12088 >>Accept Thassarian, the Death Knight
    .target Corporal Venn
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,84.80,41.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 12088 >>Turn in Thassarian, the Death Knight
    .accept 11956 >>Accept Finding the Phylactery
    .target Thassarian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,85.40,33.34
    >>Kill |cRXP_ENEMY_Phylactery Guardian|r and loot |cRXP_LOOT_Tanathal's Phylactery|r
    .complete 11956,1 --Tanathal's Phylactery (1)
    .mob Phylactery Guardian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,84.80,41.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 11956 >>Turn in Finding the Phylactery
    .accept 11938 >>Accept Buying Some Time
    .target Thassarian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,86.62,30.00,0
    .goto 114,86.62,30.00,40,0
    .goto 114,88.07,28.53,40,0
    .goto 114,84.69,27.23,40,0
    >>Kill |cRXP_ENEMY_En'kilah Necromancers|r, |cRXP_ENEMY_En'kilah Abominations|r, |cRXP_ENEMY_En'kilah Crypt Fiends|r and |cRXP_ENEMY_En'kilah Gargoyles|r
    .complete 11938,1 --En'kilah Necromancer (8)
    .mob En'kilah Necromancer
    .mob En'kilah Abomination
    .mob En'kilah Crypt Fiend
    .mob En'kilah Gargoyle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,84.80,41.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 11938 >>Turn in Buying Some Time
    .accept 11942 >>Accept Words of Power
    .target Thassarian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,89.38,28.86
    >>Kill |cRXP_ENEMY_High Priest Talet-Kha|r and loot |cRXP_LOOT_High Priest Talet-Kha's Scroll|r
    .complete 11942,3 --High Priest Talet-Kha's Scroll (1)
    .mob High Priest Talet-Kha
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,88.05,20.94
    >>Kill |cRXP_ENEMY_High Priest Andorath|r and loot |cRXP_LOOT_High Priest Andorath's Scroll|r
    .complete 11942,1 --High Priest Andorath's Scroll (1)
    .mob High Priest Andorath
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,83.89,20.46
    >>Kill |cRXP_ENEMY_High Priest Naferset|r and loot |cRXP_LOOT_High Priest Naferset's Scroll|r
    .complete 11942,2 --High Priest Naferset's Scroll (1)
    .mob High Priest Naferset
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,84.80,41.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 11942 >>Turn in Words of Power
    .accept 12019 >>Accept Last Rites
    .target Thassarian
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,86.77,30.13
    >>Kill |cRXP_ENEMY_Prince Valanar|r
    .complete 12019,1 --Prince Valanar slain (1)
    .mob Prince Valanar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,84.80,41.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thassarian|r
    .turnin 12019 >>Turn in Last Rites
    .target Thassarian
step
    #completewith next
    .hs >>Hearth to Apprentice Rosen's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 114,44.98,33.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Garren|r
    .turnin 11582 >>Turn in Monitoring the Rift: Sundered Chasm
    .accept 12728 >>Accept Monitoring the Rift: Winterfin Cavern
    .target Librarian Garren
step
    .goto 114,45.33,34.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
    .turnin 11682 >>Turn in Dragonspeak
    .target Surristrasz
    .isOnQuest 11682
step
    .goto 114,45.33,34.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surristrasz|r
    .accept 11733 >>Accept Traversing the Rift
    .target Surristrasz
    .isQuestTurnedIn 11682 --any of: Dragonspeak
    .xp <69,1
step
    .goto 114,32.94,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Berinand|r
    .turnin 11733 >>Turn in Traversing the Rift
    .target Archmage Berinand
    .isOnQuest 11733
step
    .goto 114,32.94,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Berinand|r
    .accept 11900 >>Accept Reading the Meters
    .accept 11910 >>Accept Secrets of the Ancients
    .target Archmage Berinand
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .accept 11918 >>Accept Basic Training
    .target Raelorasz
step
    .goto 114,33.49,34.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Serrah|r
    .accept 11912 >>Accept Nuts for Berries
    .target Librarian Serrah
step
    #completewith Along195
    >>As you go: Loot the |cRXP_PICK_Frostberry Bushes|r for |cRXP_LOOT_Frostberry|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11912,1 --Frostberry (10)
step
    .goto 114,28.25,35.04
    >>Click the |cRXP_PICK_Coldarra Geological Monitor|r
    .complete 11900,2 --Coldarra Geological Monitor
step
    .goto 114,22.36,24.21
    >>Click the |cRXP_PICK_Coldarra Geological Monitor|r
    .complete 11900,4 --Coldarra Geological Monitor
step
    .goto 114,31.72,20.57
    >>Click the |cRXP_PICK_Coldarra Geological Monitor|r
    .complete 11900,3 --Coldarra Geological Monitor
step
    #completewith Along195
    >>As you go: Kill |cRXP_ENEMY_Magic-bound Ancients|r. Loot them for |cRXP_LOOT_Magic-Bound Splinter|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11910,2 --Magic-Bound Splinter (3)
    .mob Magic-bound Ancient
step
    #label Along195
    #loop
    .goto 114,31.56,23.82,0
    .goto 114,31.56,23.82,40,0
    .goto 114,34.62,23.00,40,0
    .goto 114,32.34,28.34,40,0
    >>Kill |cRXP_ENEMY_Coldarra Spellweavers|r
    .complete 11918,1 --Coldarra Spellweaver slain (10)
    .mob Coldarra Spellweaver
step
    #loop
    .goto 114,32.86,22.81,0
    .goto 114,32.86,22.81,40,0
    .goto 114,29.30,20.15,40,0
    .goto 114,25.00,20.57,40,0
    .goto 114,21.41,26.69,40,0
    >>Loot the |cRXP_PICK_Frostberry Bushes|r for |cRXP_LOOT_Frostberry|r
    .complete 11912,1 --Frostberry (10)
step
    .goto 114,33.49,34.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Serrah|r
    .turnin 11912 >>Turn in Nuts for Berries
    .accept 11914 >>Accept Keep the Secret Safe
    .target Librarian Serrah
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11918 >>Turn in Basic Training
    .accept 11936 >>Accept Hatching a Plan
    .target Raelorasz
step
    #completewith Along199
    >>As you go: Kill |cRXP_ENEMY_Magic-bound Ancients|r. Loot them for |cRXP_LOOT_Magic-Bound Splinter|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11910,2 --Magic-Bound Splinter (3)
    .mob Magic-bound Ancient
step
    #label Along199
    #loop
    .goto 114,30.00,31.43,0
    .goto 114,30.00,31.43,40,0
    .goto 114,28.31,28.46,40,0
    >>Kill |cRXP_ENEMY_Coldarra Wyrmkin|r and loot |cRXP_LOOT_Frozen Axe|r
    >>Click the |cRXP_PICK_Coldarra Geological Monitor|r
    .collect 35586,1,11936,1 --Frozen Axe (1)
    .complete 11900,1 --Coldarra Geological Monitor
    .mob Coldarra Wyrmkin
step
    #completewith Along200
    >>As you go: Kill |cRXP_ENEMY_Arcane Serpents|r. Loot them for |cRXP_LOOT_Nexus Mana Essence|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11914,1 --Nexus Mana Essence (5)
    .mob Arcane Serpent
step
    #label Along200
    #loop
    .goto 114,28.47,28.81,0
    .goto 114,28.47,28.81,40,0
    .goto 114,25.79,27.74,40,0
    >>Click the |cRXP_PICK_Blue Dragon Egg|r
    .complete 11936,1 --Blue Dragon Egg
step
    #loop
    .goto 114,28.50,24.53,0
    .goto 114,28.50,24.53,40,0
    .goto 114,26.25,28.19,40,0
    >>Kill |cRXP_ENEMY_Arcane Serpents|r. Loot them for |cRXP_LOOT_Nexus Mana Essence|r
    .complete 11914,1 --Nexus Mana Essence (5)
    .mob Arcane Serpent
step
    .goto 114,23.18,27.30
    >>Kill |cRXP_ENEMY_Glacial Ancients|r. Loot them for |cRXP_LOOT_Glacial Splinter|r
    .complete 11910,1 --Glacial Splinter (3)
    .mob Glacial Ancient
step
    #loop
    .goto 114,31.41,24.43,0
    .goto 114,31.41,24.43,40,0
    .goto 114,34.88,28.76,40,0
    >>Kill |cRXP_ENEMY_Magic-bound Ancients|r. Loot them for |cRXP_LOOT_Magic-Bound Splinter|r
    .complete 11910,2 --Magic-Bound Splinter (3)
    .mob Magic-bound Ancient
step
    .goto 114,33.49,34.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Serrah|r
    .turnin 11914 >>Turn in Keep the Secret Safe
    .target Librarian Serrah
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11936 >>Turn in Hatching a Plan
    .accept 11919 >>Accept Drake Hunt
    .target Raelorasz
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .accept 11969 >>Accept Springing the Trap
    .target Raelorasz
    .isQuestTurnedIn 11967 --any of: Mustering the Reds
    .xp <69,1
step
    .goto 114,32.94,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Berinand|r
    .turnin 11900 >>Turn in Reading the Meters
    .turnin 11910 >>Turn in Secrets of the Ancients
    .target Archmage Berinand
step
    .goto 114,25.60,22.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r
    .complete 11969,1 --Keristrasza
    .target Keristrasza
    .isOnQuest 11969
step
    .goto 114,22.43,26.94
    >>Interact with |cRXP_FRIENDLY_Nexus Drake Hatchling|r
    .complete 11919,1 --Nexus Drake Hatchling
    .target Nexus Drake Hatchling
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11919 >>Turn in Drake Hunt
    .accept 11931 >>Accept Cracking the Code
    .target Raelorasz
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11969 >>Turn in Springing the Trap
    .target Raelorasz
    .isOnQuest 11969
step
    #completewith Drop11941x1
    >>|cRXP_LOOT_Scintillating Fragment|r can drop from |cRXP_ENEMY_Coldarra Spellbinder|r. Use it to start the quest if you get one
    .collect 35648,1,11941 --Scintillating Fragment (1)
    .accept 11941 >>Accept Puzzling...
    .use 35648
step
    #label Drop11941x1
    #loop
    .goto 114,34.09,29.99,0
    .goto 114,34.09,29.99,40,0
    .goto 114,32.58,27.62,40,0
    >>Kill |cRXP_ENEMY_Inquisitor Caleras|r and loot |cRXP_LOOT_Azure Codex|r
    >>Kill |cRXP_ENEMY_Coldarra Spellbinders|r. Loot them for |cRXP_LOOT_Shimmering Rune|r
    .complete 11931,2 --Azure Codex (1)
    .complete 11931,1 --Shimmering Rune (3)
    .mob Inquisitor Caleras
    .mob Coldarra Spellbinder
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11941 >>Turn in Puzzling...
    .target Raelorasz
    .isOnQuest 11941
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11931 >>Turn in Cracking the Code while you are here
    .isQuestComplete 11931
    .target Raelorasz
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .accept 11943 >>Accept The Cell
    .target Raelorasz
    .isQuestTurnedIn 11941 --any of: Puzzling...
    .xp <69,1
step
    .goto 114,24.13,29.60
    >>Kill |cRXP_ENEMY_Warbringer Goredrak|r and loot |cRXP_LOOT_Energy Core|r
    .complete 11943,1 --Energy Core (1)
    .mob Warbringer Goredrak
    .isOnQuest 11943
step
    .goto 114,27.32,20.40
    >>Kill |cRXP_ENEMY_General Cerulean|r and loot |cRXP_LOOT_Prison Casing|r
    .complete 11943,2 --Prison Casing (1)
    .mob General Cerulean
    .isOnQuest 11943
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11943 >>Turn in The Cell
    .target Raelorasz
    .isOnQuest 11943
step
    #loop
    .goto 114,33.40,34.00,0
    .goto 114,33.40,34.00,40,0
    .goto 114,30.80,33.20,40,0
    .goto 114,21.60,22.50,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11946 >>Accept Keristrasza
    .unitscan Keristrasza
    .isQuestTurnedIn 11943 --any of: The Cell
    .xp <69,1
step
    #loop
    .goto 114,21.60,22.50,0
    .goto 114,21.60,22.50,40,0
    .goto 114,30.80,33.20,40,0
    .goto 114,33.40,34.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11946 >>Turn in Keristrasza
    .unitscan Keristrasza
    .isOnQuest 11946
step
    #loop
    .goto 114,21.60,22.50,0
    .goto 114,21.60,22.50,40,0
    .goto 114,30.80,33.20,40,0
    .goto 114,33.40,34.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11951 >>Accept Bait and Switch
    .unitscan Keristrasza
    .isQuestTurnedIn 11946 --any of: Keristrasza
    .xp <69,1
step
    #loop
    .goto 114,27.94,20.99,0
    .goto 114,27.94,20.99,40,0
    .goto 114,29.75,23.17,40,0
    >>Loot the |cRXP_PICK_Crystallized Manas|r for |cRXP_LOOT_Crystallized Mana Shard|r
    .complete 11951,1 --Crystallized Mana Shard (10)
    .isOnQuest 11951
step
    #loop
    .goto 114,21.60,22.50,0
    .goto 114,21.60,22.50,40,0
    .goto 114,30.80,33.20,40,0
    .goto 114,33.40,34.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11951 >>Turn in Bait and Switch
    .unitscan Keristrasza
    .isOnQuest 11951
step
    #loop
    .goto 114,21.60,22.50,0
    .goto 114,21.60,22.50,40,0
    .goto 114,30.80,33.20,40,0
    .goto 114,33.40,34.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11957 >>Accept Saragosa's End
    .unitscan Keristrasza
    .isQuestTurnedIn 11951 --any of: Bait and Switch
    .xp <69,1
step
    .goto 114,21.90,22.50
    >>Kill |cRXP_ENEMY_Saragosa|r and loot |cRXP_LOOT_Saragosa's Corpse|r
    .complete 11957,1 --Saragosa's Corpse (1)
    .mob Saragosa
    .isOnQuest 11957
step
    #loop
    .goto 114,21.60,22.50,0
    .goto 114,21.60,22.50,40,0
    .goto 114,30.80,33.20,40,0
    .goto 114,33.40,34.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11957 >>Turn in Saragosa's End
    .unitscan Keristrasza
    .isOnQuest 11957
step
    #loop
    .goto 114,21.60,22.50,0
    .goto 114,21.60,22.50,40,0
    .goto 114,30.80,33.20,40,0
    .goto 114,33.40,34.00,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keristrasza|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11967 >>Accept Mustering the Reds
    .unitscan Keristrasza
    .isQuestTurnedIn 11957 --any of: Saragosa's End
    .xp <69,1
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11931 >>Turn in Cracking the Code
    .target Raelorasz
step
    .goto 114,33.31,34.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelorasz|r
    .turnin 11967 >>Turn in Mustering the Reds
    .target Raelorasz
    .isQuestComplete 11967
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.98,18.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank Fullthrottle|r
    .turnin 11707 >>Turn in Distress Call
    .accept 11708 >>Accept The Mechagnomes
    .target Fizzcrank Fullthrottle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.98,18.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank Fullthrottle|r
    .complete 11708,1 --Fizzcrank Fullthrottle (10)
    .target Fizzcrank Fullthrottle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.44,18.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Wingnut|r
    .turnin 11708 >>Turn in The Mechagnomes
    .accept 11712 >>Accept Re-Cursive
    .target Jinky Wingnut
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.51,18.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordle Cogspinner|r
    .accept 11704 >>Accept King Mrgl-Mrgl
    .accept 11710 >>Accept What's the Matter with the Transmatter?
    .target Mordle Cogspinner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along233
    >>As you go: Kill |cRXP_ENEMY_Fizzcrank Mechagnomes|r. Pick up |cRXP_PICK_Fizzcrank Spare Parts|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11712,1 --Fizzcrank Mechagnome (6)
    .complete 11710,1 --Fizzcrank Spare Parts (15)
    .mob Fizzcrank Mechagnome
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along233
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .accept 11645 >>Accept Dirty, Stinkin' Snobolds!
    .target Crafty Wobblesprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along235
    >>As you go: Pick up |cRXP_PICK_Crafty's Stuff|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11645,1 --Crafty's Stuff (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,55.57,12.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bonker Togglevolt|r
    .accept 11673 >>Accept Get Me Outa Here!
    .target Bonker Togglevolt
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along235
    .goto 114,53.84,13.85
    >>Bonker Togglevolt escorted to safety.
    .complete 11673,1 --Bonker Togglevolt escorted to safety.
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,54.09,13.88,0
    .goto 114,54.09,13.88,40,0
    .goto 114,54.96,11.21,40,0
    >>Pick up |cRXP_PICK_Crafty's Stuff|r from the ground
    .complete 11645,1 --Crafty's Stuff (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along238
    >>As you go: Pick up |cRXP_PICK_Fizzcrank Spare Parts|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11710,1 --Fizzcrank Spare Parts (15)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.98,18.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank Fullthrottle|r
    .turnin 11673 >>Turn in Get Me Outa Here!
    .target Fizzcrank Fullthrottle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along238
    >>As you go: Kill |cRXP_ENEMY_Fizzcrank Mechagnomes|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11712,1 --Fizzcrank Mechagnome (6)
    .mob Fizzcrank Mechagnome
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along238
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .turnin 11645 >>Turn in Dirty, Stinkin' Snobolds!
    .accept 11650 >>Accept Just a Few More Things...
    .target Crafty Wobblesprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along239
    >>As you go: Pick up |cRXP_PICK_Crafty's Tools|r from the ground. |cRXP_WARN_Anything left is finished later|r
    .complete 11650,1 --Crafty's Tools (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along239
    #loop
    .goto 114,64.58,22.58,0
    .goto 114,64.58,22.58,40,0
    .goto 114,65.11,27.31,40,0
    .goto 114,67.44,25.52,40,0
    >>Kill |cRXP_ENEMY_Fizzcrank Mechagnomes|r
    >>Pick up |cRXP_PICK_Fizzcrank Spare Parts|r from the ground
    .complete 11712,1 --Fizzcrank Mechagnome (6)
    .complete 11710,1 --Fizzcrank Spare Parts (15)
    .mob Fizzcrank Mechagnome
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .turnin 11729 >>Turn in The Ultrasonic Screwdriver
    .target Crafty Wobblesprocket
    .isOnQuest 11729
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .accept 11730 >>Accept Master and Servant
    .target Crafty Wobblesprocket
    .isQuestTurnedIn 11729 --any of: The Ultrasonic Screwdriver
    .xp <68,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.51,18.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mordle Cogspinner|r
    .turnin 11710 >>Turn in What's the Matter with the Transmatter?
    .accept 11692 >>Accept Check in With Bixie
    .target Mordle Cogspinner
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.44,18.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Wingnut|r
    .turnin 11712 >>Turn in Re-Cursive
    .accept 11788 >>Accept Lefty Loosey, Righty Tighty
    .target Jinky Wingnut
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,60.20,20.40
    >>Kill |cRXP_ENEMY_Twonky|r
    .complete 11788,1 --Twonky slain (1)
    .mob Twonky
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,63.60,22.40
    >>Kill |cRXP_ENEMY_Max Blasto|r
    >>Pick up |cRXP_PICK_Crafty's Tools|r from the ground
    .complete 11788,3 --Max Blasto slain (1)
    .complete 11650,1 --Crafty's Tools (1)
    .mob Max Blasto
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,65.50,17.60
    >>Kill |cRXP_ENEMY_ED-210|r
    .complete 11788,2 --ED-210 slain (1)
    .mob ED-210
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Drop11729x1
    >>|cRXP_LOOT_The Ultrasonic Screwdriver|r can drop from |cRXP_ENEMY_Scavenge-bot 004-A8|r, |cRXP_ENEMY_Sentry-bot 57-K|r, |cRXP_ENEMY_Defendo-tank 66D|r. Use it to start the quest if you get one
    .collect 34984,1,11729 --The Ultrasonic Screwdriver (1)
    .accept 11729 >>Accept The Ultrasonic Screwdriver
    .use 34984
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Drop11729x1
    #loop
    .goto 114,64.88,24.22,0
    .goto 114,64.88,24.22,40,0
    .goto 114,62.68,26.16,40,0
    .goto 114,67.55,26.50,40,0
    >>Kill |cRXP_ENEMY_Sentry-bot 57-Ks|r, |cRXP_ENEMY_Defendo-tank 66Ds|r and |cRXP_ENEMY_Scavenge-bot 004-A8s|r
    .complete 11730,1 --Sentry-bot 57-K (8)
    .mob Sentry-bot 57-K
    .mob Defendo-tank 66D
    .mob Scavenge-bot 004-A8
    .isOnQuest 11730
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,73.42,18.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixie Wrenchshanker|r
    .turnin 11692 >>Turn in Check in With Bixie
    .accept 11693 >>Accept Oh Great... Plagued Magnataur!
    .target Bixie Wrenchshanker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,76.98,24.48,0
    .goto 114,76.98,24.48,40,0
    .goto 114,79.48,26.04,40,0
    .goto 114,80.90,28.75,40,0
    >>Kill |cRXP_ENEMY_Aged Magnataurs|r and |cRXP_ENEMY_Plagued Magnataurs|r
    .complete 11693,1 --Aged Magnataur (10)
    .mob Aged Magnataur
    .mob Plagued Magnataur
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,73.42,18.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixie Wrenchshanker|r
    .turnin 11693 >>Turn in Oh Great... Plagued Magnataur!
    .accept 11694 >>Accept There's Something Going On In Those Caves
    .target Bixie Wrenchshanker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,78.30,17.97
    >>Click the |cRXP_PICK_Den of Dying Plague Cauldron|r
    .complete 11694,1 --Den of Dying Plague Cauldron
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,73.42,18.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixie Wrenchshanker|r
    .turnin 11694 >>Turn in There's Something Going On In Those Caves
    .accept 11697 >>Accept Rats, Tinky Went into the Necropolis!
    .accept 11698 >>Accept Might As Well Wipe Out the Scourge
    .target Bixie Wrenchshanker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #completewith Along255
    >>As you go: Kill |cRXP_ENEMY_Cult Plaguebringers|r, |cRXP_ENEMY_Doctor Razorgrins|r, |cRXP_ENEMY_Lich-Lord Chillwinters|r and |cRXP_ENEMY_Talramas Abominations|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11698,1 --Cult Plaguebringer (8)
    .mob Cult Plaguebringer
    .mob Doctor Razorgrin
    .mob Lich-Lord Chillwinter
    .mob Talramas Abomination
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,69.93,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinky Wickwhistle|r
    .turnin 11697 >>Turn in Rats, Tinky Went into the Necropolis!
    .accept 11699 >>Accept I'm Stuck in this Damned Cage... But Not For Long!
    .target Tinky Wickwhistle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,69.64,13.87,0
    .goto 114,69.64,13.87,40,0
    .goto 114,66.92,18.16,40,0
    .goto 114,70.37,20.25,40,0
    >>Kill |cRXP_ENEMY_Lich-Lord Chillwinter|r and loot |cRXP_LOOT_Piloting Scourgestone|r
    >>Kill |cRXP_ENEMY_Doctor Razorgrin|r and loot |cRXP_LOOT_Magical Gyroscope|r
    >>Kill |cRXP_ENEMY_Festering Ghoul|r and loot |cRXP_LOOT_Engine-Core Crystal|r
    .complete 11699,3 --Piloting Scourgestone (1)
    .complete 11699,2 --Magical Gyroscope (1)
    .complete 11699,1 --Engine-Core Crystal (1)
    .mob Lich-Lord Chillwinter
    .mob Doctor Razorgrin
    .mob Festering Ghoul
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #label Along255
    .goto 114,69.93,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinky Wickwhistle|r
    .turnin 11699 >>Turn in I'm Stuck in this Damned Cage... But Not For Long!
    .accept 11700 >>Accept Let Bixie Know
    .target Tinky Wickwhistle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,69.47,13.84,0
    .goto 114,69.47,13.84,40,0
    .goto 114,66.97,13.35,40,0
    .goto 114,67.79,18.85,40,0
    >>Kill |cRXP_ENEMY_Cult Plaguebringers|r, |cRXP_ENEMY_Doctor Razorgrins|r, |cRXP_ENEMY_Lich-Lord Chillwinters|r and |cRXP_ENEMY_Talramas Abominations|r
    .complete 11698,1 --Cult Plaguebringer (8)
    .mob Cult Plaguebringer
    .mob Doctor Razorgrin
    .mob Lich-Lord Chillwinter
    .mob Talramas Abomination
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,73.42,18.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixie Wrenchshanker|r
    .turnin 11698 >>Turn in Might As Well Wipe Out the Scourge
    .turnin 11700 >>Turn in Let Bixie Know
    .accept 11701 >>Accept Back to the Airstrip
    .target Bixie Wrenchshanker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.98,18.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank Fullthrottle|r
    .turnin 11701 >>Turn in Back to the Airstrip
    .accept 11725 >>Accept Finding Pilot Tailspin
    .target Fizzcrank Fullthrottle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .turnin 11730 >>Turn in Master and Servant
    .target Crafty Wobblesprocket
    .isOnQuest 11730
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,65.00,28.80
    >>Kill |cRXP_ENEMY_The Grinder|r
    .complete 11788,4 --The Grinder slain (1)
    .mob The Grinder
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,61.67,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy "Tailspin" Cogtoggle|r
    .turnin 11725 >>Turn in Finding Pilot Tailspin
    .accept 11726 >>Accept A Little Bit of Spice
    .target Iggy "Tailspin" Cogtoggle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,77.79,30.24,0
    .goto 114,77.79,30.24,40,0
    .goto 114,80.15,30.81,40,0
    .goto 114,80.33,35.15,40,0
    >>Kill |cRXP_ENEMY_Gorloc Waddlers|r, |cRXP_ENEMY_Gorloc Gibberers|r, |cRXP_ENEMY_Gorloc Steam Belchers|r and |cRXP_ENEMY_Gorloc Mud Splashers|r. Loot them for |cRXP_LOOT_Gorloc Spice Pouch|r
    .complete 11726,1 --Gorloc Spice Pouch (4)
    .mob Gorloc Waddler
    .mob Gorloc Gibberer
    .mob Gorloc Steam Belcher
    .mob Gorloc Mud Splasher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,81.53,42.51
    >>Kill |cRXP_ENEMY_Rocknar|r and loot |cRXP_LOOT_A Handful of Rocknar's Grit|r
    .complete 11650,3 --A Handful of Rocknar's Grit (1)
    .mob Rocknar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,61.67,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy "Tailspin" Cogtoggle|r
    .turnin 11726 >>Turn in A Little Bit of Spice
    .accept 11728 >>Accept Lupus Pupus
    .target Iggy "Tailspin" Cogtoggle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,61.70,35.23,0
    .goto 114,61.70,35.23,40,0
    .goto 114,63.34,36.14,40,0
    .goto 114,59.78,39.61,40,0
    >>Loot the |cRXP_PICK_Wolf Droppings|r for |cRXP_LOOT_Microfilm|r
    .complete 11728,1 --Microfilm (8)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,61.67,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy "Tailspin" Cogtoggle|r
    .turnin 11728 >>Turn in Lupus Pupus
    .accept 11795 >>Accept Emergency Protocol: Section 8.2, Paragraph C
    .target Iggy "Tailspin" Cogtoggle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,61.59,38.80,0
    .goto 114,61.59,38.80,40,0
    .goto 114,58.80,41.13,40,0
    >>Kill |cRXP_ENEMY_Fizzcrank Recon Pilots|r. Loot them for |cRXP_LOOT_Fizzcrank Pilot's Insignia|r
    .complete 11795,1 --Fizzcrank Pilot's Insignia (6)
    .mob Fizzcrank Recon Pilot
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,61.67,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy "Tailspin" Cogtoggle|r
    .turnin 11795 >>Turn in Emergency Protocol: Section 8.2, Paragraph C
    .accept 11796 >>Accept Emergency Protocol: Section 8.2, Paragraph D
    .target Iggy "Tailspin" Cogtoggle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,61.12,30.14
    >>Kill |cRXP_ENEMY_Northwest Crash|r
    .complete 11796,3 --Northwest Crash slain (1)
    .mob Northwest Crash
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,59.59,39.21
    >>Kill |cRXP_ENEMY_South Crash|r
    .complete 11796,2 --South Crash slain (1)
    .mob South Crash
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,63.38,37.00
    >>Kill |cRXP_ENEMY_East Crash|r
    .complete 11796,1 --East Crash slain (1)
    .mob East Crash
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,61.67,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iggy "Tailspin" Cogtoggle|r
    .turnin 11796 >>Turn in Emergency Protocol: Section 8.2, Paragraph D
    .accept 11873 >>Accept Give Fizzcrank the News
    .target Iggy "Tailspin" Cogtoggle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.98,18.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank Fullthrottle|r
    .turnin 11873 >>Turn in Give Fizzcrank the News
    .target Fizzcrank Fullthrottle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.44,18.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jinky Wingnut|r
    .turnin 11788 >>Turn in Lefty Loosey, Righty Tighty
    .accept 11798 >>Accept The Gearmaster
    .target Jinky Wingnut
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .turnin 11650 >>Turn in Just a Few More Things...
    .accept 11653 >>Accept Hah... You're Not So Big Now!
    .target Crafty Wobblesprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,56.62,12.07,0
    .goto 114,56.62,12.07,40,0
    .goto 114,58.32,10.82,40,0
    .goto 114,54.13,13.29,40,0
    >>Interact with |cRXP_FRIENDLY_Magmoth Crushers|r
    .complete 11653,2 --Magmoth Crusher (5)
    .target Magmoth Crusher
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,54.86,10.91
    >>Interact with |cRXP_FRIENDLY_Mate of Magmothregar|r
    .complete 11653,1 --Mate of Magmothregar
    .target Mate of Magmothregar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .turnin 11653 >>Turn in Hah... You're Not So Big Now!
    .accept 11658 >>Accept Plan B
    .target Crafty Wobblesprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,49.71,24.13,0
    .goto 114,49.71,24.13,40,0
    .goto 114,48.52,22.03,40,0
    >>Pick up |cRXP_PICK_Warsong Banner|r from the ground
    >>Kill |cRXP_ENEMY_Dead Caravan Guards|r and |cRXP_ENEMY_Dead Caravan Workers|r. Loot them for |cRXP_LOOT_Warsong Outfit|r
    .complete 11658,2 --Warsong Banner (1)
    .complete 11658,1 --Warsong Outfit (10)
    .mob Dead Caravan Guard
    .mob Dead Caravan Worker
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.06,20.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner Fizzletorque|r
    .accept 11713 >>Accept Scouting the Sinkholes
    .target Abner Fizzletorque
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .turnin 11658 >>Turn in Plan B
    .accept 11670 >>Accept It Was The Orcs, Honest!
    .target Crafty Wobblesprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,55.63,12.02
    >>Interact with |cRXP_FRIENDLY_Magmothregar|r
    .complete 11670,1 --Magmothregar
    .target Magmothregar
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.44,18.73
    >>Research the Gearmaster's Manual and return Mechazod's Head to Fizzcrank Fullthrottle.
    .complete 11798,1 --The Gearmaster's Manual Researched Kill Credit Bunny (1)
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .turnin 11670 >>Turn in It Was The Orcs, Honest! while you are here
    .isQuestComplete 11670
    .target Crafty Wobblesprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,64.57,23.20
    >>Kill |cRXP_ENEMY_Gearmaster Mechazod|r and loot |cRXP_LOOT_Mechazod's Head|r
    .complete 11798,2 --Mechazod's Head (1)
    .mob Gearmaster Mechazod
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,66.38,32.49
    >>Kill |cRXP_ENEMY_Northwest Sinkhole|r
    >>Kill |cRXP_ENEMY_Northeast Sinkhole|r
    .complete 11713,3 --Northwest Sinkhole slain (1)
    .complete 11713,2 --Northeast Sinkhole slain (1)
    .mob Northwest Sinkhole
    .mob Northeast Sinkhole
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,70.33,36.69
    >>Kill |cRXP_ENEMY_South Sinkhole|r
    .complete 11713,1 --South Sinkhole slain (1)
    .mob South Sinkhole
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,56.98,18.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzcrank Fullthrottle|r
    .turnin 11798 >>Turn in The Gearmaster
    .target Fizzcrank Fullthrottle
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.06,20.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner Fizzletorque|r
    .turnin 11713 >>Turn in Scouting the Sinkholes
    .accept 11715 >>Accept Fueling the Project
    .target Abner Fizzletorque
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.18,18.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crafty Wobblesprocket|r
    .turnin 11670 >>Turn in It Was The Orcs, Honest!
    .target Crafty Wobblesprocket
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,59.47,25.40,0
    .goto 114,59.47,25.40,40,0
    .goto 114,57.67,25.75,40,0
    >>Kill |cRXP_ENEMY_Oil Pools|r
    .complete 11715,1 --Oil Pool slain (8)
    .mob Oil Pool
step
    .goto 114,43.50,13.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
    .turnin 11704 >>Turn in King Mrgl-Mrgl << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .accept 11571 >>Accept Learning to Communicate
    .target King Mrgl-Mrgl
step
    .goto 114,42.56,16.21
    >>Kill |cRXP_ENEMY_Scalder|r and loot |cRXP_LOOT_The King's Filled Conch|r
    .complete 11571,1 --The King's Filled Conch (1)
    .mob Scalder
step
    .goto 114,43.50,13.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
    .turnin 11571 >>Turn in Learning to Communicate
    .accept 11559 >>Accept Winterfin Commerce
    .target King Mrgl-Mrgl
step
    #loop
    .goto 114,41.24,14.66,0
    .goto 114,41.24,14.66,40,0
    .goto 114,41.68,17.53,40,0
    .goto 114,38.33,15.82,40,0
    >>Kill |cRXP_ENEMY_Winterfin Shorestrikers|r, |cRXP_ENEMY_Winterfin Oracles|r and |cRXP_ENEMY_Winterfin Warriors|r. Loot them for |cRXP_LOOT_Winterfin Clam|r. It can also be picked up from |cRXP_PICK_Winterfin Clam|r on the ground
    .complete 11559,1 --Winterfin Clam (5)
    .mob Winterfin Shorestriker
    .mob Winterfin Oracle
    .mob Winterfin Warrior
step
    .goto 114,43.04,13.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahlurglgr|r
    .turnin 11559 >>Turn in Winterfin Commerce
    .target Ahlurglgr
step
    .goto 114,43.50,13.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
    .accept 11560 >>Accept Oh Noes, the Tadpoles!
    .target King Mrgl-Mrgl
step
    .goto 114,42.83,13.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brglmurgl|r
    .accept 11561 >>Accept Them!
    .target Brglmurgl
step
    #completewith Along313
    >>As you go: Kill |cRXP_ENEMY_Winterfin Shorestrikers|r, |cRXP_ENEMY_Winterfin Oracles|r and |cRXP_ENEMY_Winterfin Warriors|r. |cRXP_WARN_Anything left is finished later|r
    .complete 11561,1 --Winterfin Shorestriker (8)
    .mob Winterfin Shorestriker
    .mob Winterfin Oracle
    .mob Winterfin Warrior
step
    #loop
    .goto 114,40.37,18.77,0
    .goto 114,40.37,18.77,40,0
    .goto 114,37.64,16.31,40,0
    >>Kill |cRXP_ENEMY_Winterfin Tadpoles|r
    >>Kill |cRXP_ENEMY_Borean - Westrift Cavern Anomaly|r
    .complete 11560,1 --Winterfin Tadpole slain (20)
    .complete 12728,1 --Borean - Westrift Cavern Anomaly slain (1)
    .mob Winterfin Tadpole
    .mob Borean - Westrift Cavern Anomaly
step
    .goto 114,43.50,13.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
    .turnin 11560 >>Turn in Oh Noes, the Tadpoles!
    .accept 11562 >>Accept I'm Being Blackmailed By My Cleaner
    .target King Mrgl-Mrgl
step
    .goto 114,42.00,12.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mrmrglmr|r
    .turnin 11562 >>Turn in I'm Being Blackmailed By My Cleaner
    .accept 11563 >>Accept Grmmurggll Mrllggrl Glrggl!!!
    .target Mrmrglmr
step
    .goto 114,39.67,8.36
    >>Kill |cRXP_ENEMY_Glrggl|r and loot |cRXP_LOOT_Glrggl's Head|r
    .complete 11563,1 --Glrggl's Head (1)
    .mob Glrggl
step
    .goto 114,42.00,12.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mrmrglmr|r
    .turnin 11563 >>Turn in Grmmurggll Mrllggrl Glrggl!!!
    .target Mrmrglmr
step
    .goto 114,42.03,13.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cleaver Bmurglbrm|r
    .accept 11564 >>Accept Succulent Orca Stew
    .target Cleaver Bmurglbrm
step
    #loop
    .goto 114,40.69,14.17,0
    .goto 114,40.69,14.17,40,0
    .goto 114,42.58,15.50,40,0
    .goto 114,39.93,8.24,40,0
    >>Kill |cRXP_ENEMY_Glrggls|r and |cRXP_ENEMY_Glimmer Bay Orcas|r. Loot them for |cRXP_LOOT_Succulent Orca Blubber|r
    .complete 11564,1 --Succulent Orca Blubber (7)
    .mob Glrggl
    .mob Glimmer Bay Orca
step
    .goto 114,42.03,13.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cleaver Bmurglbrm|r
    .turnin 11564 >>Turn in Succulent Orca Stew while you are here
    .isQuestComplete 11564
    .target Cleaver Bmurglbrm
step
    .goto 114,42.00,12.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mrmrglmr|r
    .accept 11565 >>Accept The Spare Suit
    .target Mrmrglmr
step
    .goto 114,42.03,13.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cleaver Bmurglbrm|r
    .turnin 11564 >>Turn in Succulent Orca Stew
    .target Cleaver Bmurglbrm
step
    .goto 114,43.50,13.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
    .turnin 11565 >>Turn in The Spare Suit
    .accept 11566 >>Accept Surrender... Not!
    .target King Mrgl-Mrgl
step
    #loop
    .goto 114,39.90,19.06,0
    .goto 114,39.90,19.06,40,0
    .goto 114,39.77,20.34,40,0
    .goto 114,39.72,21.26,40,0
    .goto 114,38.30,21.90,40,0
    .goto 114,37.84,23.23,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glrglrglr|r. |cRXP_WARN_This NPC walks a patrol route|r
    .accept 11569 >>Accept Keymaster Urmgrgl
    .unitscan Glrglrglr
step
    .goto 114,39.17,22.61
    >>Kill |cRXP_ENEMY_Keymaster Urmgrgl|r and loot |cRXP_LOOT_Urmgrgl's Key|r
    .complete 11569,1 --Urmgrgl's Key (1)
    .mob Keymaster Urmgrgl
step
    .goto 114,37.54,27.53
    >>Kill |cRXP_ENEMY_Claximus|r and loot |cRXP_LOOT_Claw of Claximus|r
    .complete 11566,1 --Claw of Claximus (1)
    .mob Claximus
step
    #loop
    .goto 114,37.84,23.23,0
    .goto 114,37.84,23.23,40,0
    .goto 114,38.30,21.90,40,0
    .goto 114,39.72,21.26,40,0
    .goto 114,39.77,20.34,40,0
    .goto 114,39.90,19.06,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glrglrglr|r. |cRXP_WARN_This NPC walks a patrol route|r
    .turnin 11569 >>Turn in Keymaster Urmgrgl
    .unitscan Glrglrglr
step
    .goto 114,37.72,23.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lurgglbr|r
    .accept 11570 >>Accept Escape from the Winterfin Caverns
    .target Lurgglbr
step
    #label Along313
    .goto 114,41.35,16.29
    >>Escort Lurgglbr to safety
    .complete 11570,1 --Escort Lurgglbr to safety
step
    #loop
    .goto 114,40.87,15.72,0
    .goto 114,40.87,15.72,40,0
    .goto 114,42.40,17.06,40,0
    .goto 114,38.30,15.38,40,0
    >>Kill |cRXP_ENEMY_Winterfin Shorestrikers|r, |cRXP_ENEMY_Winterfin Oracles|r and |cRXP_ENEMY_Winterfin Warriors|r
    .complete 11561,1 --Winterfin Shorestriker (8)
    .mob Winterfin Shorestriker
    .mob Winterfin Oracle
    .mob Winterfin Warrior
step
    .goto 114,42.83,13.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brglmurgl|r
    .turnin 11561 >>Turn in Them!
    .target Brglmurgl
step
    .goto 114,43.50,13.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Mrgl-Mrgl|r
    .turnin 11566 >>Turn in Surrender... Not!
    .turnin 11570 >>Turn in Escape from the Winterfin Caverns
    .target King Mrgl-Mrgl
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.06,20.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner Fizzletorque|r
    .turnin 11715 >>Turn in Fueling the Project
    .accept 11718 >>Accept A Bot in Mammoth's Clothing
    .target Abner Fizzletorque
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 114,55.45,27.21,0
    .goto 114,55.45,27.21,40,0
    .goto 114,56.90,30.92,40,0
    .goto 114,58.71,34.64,40,0
    >>Kill |cRXP_ENEMY_Mammoth Calfs|r, |cRXP_ENEMY_Wooly Mammoths|r and |cRXP_ENEMY_Wooly Mammoth Bulls|r. Loot them for |cRXP_LOOT_Thick Mammoth Hide|r
    .complete 11718,1 --Thick Mammoth Hide (6)
    .mob Mammoth Calf
    .mob Wooly Mammoth
    .mob Wooly Mammoth Bull
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.85,67.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Recruitment Officer Blythe|r
    .turnin 28709 >>Turn in Hero's Call: Northrend!
    .target Recruitment Officer Blythe
step
    #completewith next
    .zone 103 >>Travel to The Exodar
    .zoneskip 103
step << Dwarf Paladin/Draenei Paladin
    .goto 103,38.94,84.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baatun|r
    .accept 28268 >>Accept Meet with Lord Grayson Shadowbreaker
    .accept 27265 >>Accept Lord Grayson Shadowbreaker
    .target Baatun
step << Dwarf Shaman/Draenei Shaman
    .goto 103,35.05,7.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hobahken|r
    .accept 28287 >>Accept Meet with Farseer Umbrua
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
step << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    .goto 103,55.59,82.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Turn in Behomat
    .target Behomat
    .isOnQuest 10350
step
    #completewith next
    .zone 114 >>Leave The Exodar for Borean Tundra
    .zoneskip 114
step
    #completewith next
    .hs >>Hearth to Apprentice Rosen's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 114,44.98,33.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Garren|r
    .turnin 12728 >>Turn in Monitoring the Rift: Winterfin Cavern
    .target Librarian Garren
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.06,20.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner Fizzletorque|r
    .turnin 11718 >>Turn in A Bot in Mammoth's Clothing
    .accept 11723 >>Accept Deploy the Shake-n-Quake!
    .target Abner Fizzletorque
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,70.29,37.42
    >>Kill |cRXP_ENEMY_Lord Kryxix|r
    .complete 11723,1 --Lord Kryxix slain (1)
    .mob Lord Kryxix
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,70.30,36.70
    >>Abner Fizzletorque at Fizzcrank Airstrip wants you to use the Shake-n-Quake 5000 to collapse the Nerubian tunnels and defeat Lord Kryxix.
    .complete 11723,2 --Shake-n-Quake 5000
    .target Shake-n-Quake 5000
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,57.06,20.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abner Fizzletorque|r
    .turnin 11723 >>Turn in Deploy the Shake-n-Quake!
    .target Abner Fizzletorque
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
    +|cRXP_WARN_That is all of Borean Tundra for now.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Ashenvale|r: Hero's Call: Ashenvale!, Hero's Call: Stonetalon Mountains! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Azuremyst Isle|r: Return to Caregiver Chellan << Draenei
    >>|cRXP_FRIENDLY_Bloodmyst Isle|r: Elekks Are Serious Business, Truth or Fiction << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: Allies in Dalaran << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Human/Dwarf/NightElf/Gnome/Draenei/Pandaren
    >>|cRXP_FRIENDLY_Darkshore|r: Breaking Waves of Change << Worgen
    >>|cRXP_FRIENDLY_Desolace|r: Hero's Call: Desolace! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dragonblight|r: Travel to Moa'ki Harbor
    >>|cRXP_FRIENDLY_Dragonblight|r: The Lost Courier << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Dustwallow Marsh|r: Hero's Call: Dustwallow Marsh! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Felwood|r: Hero's Call: Felwood! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Feralas|r: Hero's Call: Feralas!, Hero's Call: Thousand Needles! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Hellfire Peninsula|r: Hero's Call: Outland! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Moonglade|r: An Invitation from Moonglade << NightElf Druid/Worgen Druid
    >>|cRXP_FRIENDLY_Moonglade|r: Moonglade Calls << Druid
    >>|cRXP_FRIENDLY_Silithus|r: Hero's Call: Silithus! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Southern Barrens|r: Hero's Call: Southern Barrens! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Stormwind City|r: A Summons from Ander Germaine, Meet with Ander Germaine << Human Warrior/Dwarf Warrior/NightElf Warrior/Gnome Warrior/Draenei Warrior/Worgen Warrior/Pandaren Warrior
    >>|cRXP_FRIENDLY_Stormwind City|r: Lord Grayson Shadowbreaker, Meet with Lord Grayson Shadowbreaker << Dwarf Paladin/Draenei Paladin
    >>|cRXP_FRIENDLY_Stormwind City|r: Wulf Calls, Meet with Wulf Hansreim << Human Hunter/Dwarf Hunter/NightElf Hunter/Gnome Hunter/Draenei Hunter/Worgen Hunter/Pandaren Hunter
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Contact with SI:7, Meet with Lord Tony Romano << Human Rogue/Dwarf Rogue/NightElf Rogue/Gnome Rogue/Draenei Rogue/Worgen Rogue/Pandaren Rogue
    >>|cRXP_FRIENDLY_Stormwind City|r: Make Haste to the Cathedral << Human Priest/Dwarf Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: An Audience with the Farseer, Meet with Farseer Umbrua << Dwarf Shaman/Draenei Shaman
    >>|cRXP_FRIENDLY_Stormwind City|r: Journey to the Wizard's Sanctum, Meet with Maginor Dumas << Human Mage/Dwarf Mage/NightElf Mage/Gnome Mage/Draenei Mage/Worgen Mage/Pandaren Mage
    >>|cRXP_FRIENDLY_Stormwind City|r: The Chief Surgeon << Gnome Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Favored of Elune << NightElf Priest
    >>|cRXP_FRIENDLY_Stormwind City|r: Meet with High Priestess Laurena << Human Priest/Dwarf Priest/NightElf Priest/Gnome Priest/Draenei Priest/Worgen Priest/Pandaren Priest
    >>|cRXP_FRIENDLY_Tanaris|r: Hero's Call: Tanaris! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Teldrassil|r: Return to Nyoma << NightElf
    >>|cRXP_FRIENDLY_Un'Goro Crater|r: Hero's Call: Un'Goro Crater! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Winterspring|r: Hero's Call: Winterspring! << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 73|r: |cRXP_FRIENDLY_Dragonblight|r (about 0.7 levels of quests, starting around Aurastrasza; 1 quest from here hands in there), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for Dragonblight --RouteBuilder:next
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    +|cRXP_WARN_The rest of Borean Tundra is planned from level 76.|r Load its guide for level 76 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
#version 1
#group Zone Routes (Alliance)
#subgroup 71 - 77 Borean Tundra
#subweight -71
#name 76-77 Borean Tundra
--RouteBuilder:next
#next Zone Routes (Alliance)\76-78 Sholazar Basin;Zone Routes (Alliance)\70-73 Howling Fjord: around Lurielle;Zone Routes (Alliance)\73-75 Grizzly Hills: around Drakuru

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 114,58.58,68.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Dath'omere|r
    .accept 12794 >>Accept The Magical Kingdom of Dalaran
    .target Magister Dath'omere
step
    +|cRXP_WARN_End of the Borean Tundra route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Dalaran - (Dungeon/Raid)|r: The Magical Kingdom of Dalaran << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
step
    +|cRXP_WARN_Suggested next zones at level 76|r: |cRXP_FRIENDLY_Sholazar Basin|r (about 1.1 levels of quests, starting around Debaar), |cRXP_FRIENDLY_Howling Fjord|r (about 0.5 levels of quests, starting around Lurielle), |cRXP_FRIENDLY_Grizzly Hills|r (about 0.5 levels of quests, starting around Drakuru). Completing this step loads the guide for Sholazar Basin --RouteBuilder:next
]])
