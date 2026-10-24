-- 2-5 Shadowglen: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- The zone covers more levels than one visit gives, so it is planned in 2 parts (from level 2, 6).
-- Split into 2 guides, listed under "2 - 7 Shadowglen" in RestedXP. Each leads on to the next; start at any of them: a step that needs a quest from an earlier one hides itself unless you did that quest.
-- Edit zones/mop/Shadowglen.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#subgroup 2 - 7 Shadowglen
#subweight -2
#name 2-4 Shadowglen

step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 460,45.65,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r
    .accept 28713 >>Accept The Balance of Nature
    .target Ilthalaine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 460,43.79,76.74,0
    .goto 460,43.79,76.74,40,0
    .goto 460,44.75,80.82,40,0
    >>Kill |cRXP_ENEMY_Mangy Nightsabers|r and |cRXP_ENEMY_Young Nightsabers|r
    .complete 28713,1 --Mangy Nightsaber (6)
    .mob Mangy Nightsaber
    .mob Young Nightsaber
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 460,45.65,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 28713 >>Turn in The Balance of Nature
    .accept 28734 >>Accept A Favor for Melithar
    .accept 28714 >>Accept Fel Moss Corruption
    .target Ilthalaine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 460,45.95,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .turnin 28734 >>Turn in A Favor for Melithar
    .accept 28715 >>Accept Demonic Thieves
    .target Melithar Staghelm
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    #loop
    .goto 460,37.15,79.88,0
    .goto 460,37.15,79.88,40,0
    .goto 460,35.93,78.79,40,0
    .goto 460,31.59,73.30,40,0
    >>Pick up |cRXP_PICK_Melithar's Stolen Bags|r from the ground
    >>Kill |cRXP_ENEMY_Grells|r and |cRXP_ENEMY_Grellkins|r. Loot them for |cRXP_LOOT_Fel Moss|r
    .complete 28715,1 --Melithar's Stolen Bags (5)
    .complete 28714,1 --Fel Moss (6)
    .mob Grell
    .mob Grellkin
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 460,45.65,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 28714 >>Turn in Fel Moss Corruption
    .target Ilthalaine
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 460,45.95,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .turnin 28715 >>Turn in Demonic Thieves
    .target Melithar Staghelm
step
    .goto 460,47.86,61.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khardan Proudblade|r
    .target Khardan Proudblade
    .home >>Set your Hearthstone to Khardan Proudblade's inn
step << NightElf Mage/Draenei Mage
    .goto 460,45.95,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 26841 >>Accept Forbidden Sigil
    .target Melithar Staghelm
step << NightElf Mage/Draenei Mage
    .goto 460,47.36,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26841 >>Turn in Forbidden Sigil
    .target Rhyanda
step << NightElf Warrior
    .goto 460,45.95,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 3116 >>Accept Simple Sigil
    .target Melithar Staghelm
step << NightElf Warrior
    .goto 460,49.21,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >>Turn in Simple Sigil
    .accept 26945 >>Accept Learning New Techniques
    .target Alyissia
step << NightElf Warrior
    #loop
    .goto 460,47.43,64.73,0
    .goto 460,47.43,64.73,40,0
    .goto 460,48.57,66.24,40,0
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26945,1 --Training Dummy slain (1)
    .mob Training Dummy
step << NightElf Warrior
    .goto 460,49.21,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .turnin 26945 >>Turn in Learning New Techniques
    .target Alyissia
step << NightElf Hunter
    .goto 460,45.95,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 3117 >>Accept Etched Sigil
    .target Melithar Staghelm
step << NightElf Hunter
    .goto 460,49.22,60.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >>Turn in Etched Sigil
    .accept 26947 >>Accept A Woodsman's Training
    .target Ayanna Everstride
step << NightElf Hunter
    #loop
    .goto 460,47.43,64.73,0
    .goto 460,47.43,64.73,40,0
    .goto 460,48.57,66.24,40,0
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26947,1 --Training Dummy slain (1)
    .mob Training Dummy
step << NightElf Hunter
    .goto 460,49.22,60.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 26947 >>Turn in A Woodsman's Training
    .target Ayanna Everstride
step << NightElf Rogue
    .goto 460,45.95,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 3118 >>Accept Encrypted Sigil
    .target Melithar Staghelm
step << NightElf Rogue
    .goto 460,49.22,53.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 3118 >>Turn in Encrypted Sigil
    .accept 26946 >>Accept A Rogue's Advantage
    .target Frahun Shadewhisper
step << NightElf Rogue
    #loop
    .goto 460,47.43,64.73,0
    .goto 460,47.43,64.73,40,0
    .goto 460,48.57,66.24,40,0
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26946,1 --Training Dummy slain (1)
    .mob Training Dummy
step << NightElf Rogue
    .goto 460,49.22,53.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .turnin 26946 >>Turn in A Rogue's Advantage
    .target Frahun Shadewhisper
step << NightElf Priest
    .goto 460,45.95,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 3119 >>Accept Hallowed Sigil
    .target Melithar Staghelm
step << NightElf Priest
    .goto 460,47.59,59.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .turnin 3119 >>Turn in Hallowed Sigil
    .accept 26949 >>Accept Learning the Word
    .target Shanda
step << NightElf Priest
    #loop
    .goto 460,47.62,59.84,0
    .goto 460,47.62,59.84,40,0
    .goto 460,47.80,65.24,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26949,1 --Training Dummy slain (8)
    .mob Training Dummy
step << NightElf Priest
    .goto 460,47.59,59.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shanda|r
    .turnin 26949 >>Turn in Learning the Word
    .target Shanda
step << NightElf Mage
    .goto 460,47.36,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhyanda|r
    .accept 26940 >>Accept Frost Nova
    .target Rhyanda
step << NightElf Mage
    #loop
    .goto 460,47.43,64.73,0
    .goto 460,47.43,64.73,40,0
    .goto 460,48.57,66.24,40,0
    >>Kill |cRXP_ENEMY_Training Dummy|r
    .complete 26940,1 --Training Dummy slain (1)
    .mob Training Dummy
step << NightElf Mage
    .goto 460,47.36,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26940 >>Turn in Frost Nova
    .target Rhyanda
step << NightElf Druid
    .goto 460,45.95,72.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melithar Staghelm|r
    .accept 3120 >>Accept Verdant Sigil
    .target Melithar Staghelm
step << NightElf Druid
    .goto 460,46.60,56.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 3120 >>Turn in Verdant Sigil
    .accept 26948 >>Accept Moonfire
    .target Mardant Strongoak
step << NightElf Druid
    #loop
    .goto 460,47.62,59.84,0
    .goto 460,47.62,59.84,40,0
    .goto 460,47.80,65.24,40,0
    >>Kill |cRXP_ENEMY_Training Dummies|r
    .complete 26948,1 --Training Dummy slain (8)
    .mob Training Dummy
step << NightElf Druid
    .goto 460,46.60,56.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 26948 >>Turn in Moonfire
    .target Mardant Strongoak
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,42.53,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28728 >>Turn in Signs of Things to Come
    .target Dentaria Silverglade
    .isOnQuest 28728
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren/NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    +|cRXP_WARN_The rest of Shadowglen is planned from level 6.|r Load its guide for level 6 then
]])

RXPGuides.RegisterGuide([[
#mop
<< Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren/NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
#version 1
#group Zone Routes (Alliance)
#subgroup 2 - 7 Shadowglen
#subweight -2
#name 6-7 Shadowglen

step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,49.21,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alyissia|r
    .accept 28723 >>Accept Priestess of the Moon
    .target Alyissia
    .isQuestTurnedIn 26940,26945,26946,26947,26948,26949,31169 --any of: Frost Nova, Learning New Techniques, A Rogue's Advantage, A Woodsman's Training, Moonfire, Learning the Word, The Art of the Monk
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,42.53,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28723 >>Turn in Priestess of the Moon
    .target Dentaria Silverglade
    .isOnQuest 28723
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,42.53,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .accept 28724 >>Accept Iverron's Antidote
    .target Dentaria Silverglade
    .isQuestTurnedIn 28723 --any of: Priestess of the Moon
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    #loop
    .goto 460,43.62,51.82,0
    .goto 460,43.62,51.82,40,0
    .goto 460,40.18,52.61,40,0
    .goto 460,47.14,48.71,40,0
    >>Pick up |cRXP_PICK_Moonpetal Lily|r from the ground
    .complete 28724,1 --Moonpetal Lily (7)
    .isOnQuest 28724
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,42.53,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28724 >>Turn in Iverron's Antidote
    .target Dentaria Silverglade
    .isOnQuest 28724
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,42.53,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .accept 28725 >>Accept The Woodland Protector
    .target Dentaria Silverglade
    .isQuestTurnedIn 28724 --any of: Iverron's Antidote
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,42.53,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .accept 28729 >>Accept Teldrassil: Crown of Azeroth
    .target Dentaria Silverglade
    .isQuestTurnedIn 28728 --any of: Signs of Things to Come
    .xp <3,1
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,50.30,33.49
    >>Open the |cRXP_PICK_Shadowglen Moonwell|r. Loot it for |cRXP_LOOT_Filled Crystal Phial|r
    .complete 28729,1 --Filled Crystal Phial (1)
    .isOnQuest 28729
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,42.53,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 28729 >>Turn in Teldrassil: Crown of Azeroth
    .target Dentaria Silverglade
    .isOnQuest 28729
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,42.53,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .accept 28730 >>Accept Precious Waters
    .target Dentaria Silverglade
    .isQuestTurnedIn 28729 --any of: Teldrassil: Crown of Azeroth
    .xp <3,1
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,47.20,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 28730 >>Turn in Precious Waters
    .target Tenaron Stormgrip
    .isOnQuest 28730
step << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    .goto 460,47.20,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .accept 28731 >>Accept Teldrassil: Passing Awareness
    .target Tenaron Stormgrip
    .isQuestTurnedIn 28730 --any of: Precious Waters
    .xp <3,1
step << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    .goto 460,54.56,84.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Accept Dolanaar Delivery
    .target Porthannius
step
    +|cRXP_WARN_End of the Shadowglen route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Shadowthread Cave|r: The Woodland Protector << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
    >>|cRXP_FRIENDLY_Teldrassil|r: Dolanaar Delivery << Human/Dwarf/NightElf/Gnome/Draenei/Worgen/Pandaren
    >>|cRXP_FRIENDLY_Teldrassil|r: Teldrassil: Passing Awareness << NightElf Warrior/NightElf Hunter/NightElf Rogue/NightElf Priest/NightElf Mage/NightElf Monk/NightElf Druid
]])
