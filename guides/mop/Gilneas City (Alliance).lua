-- 1-3 Gilneas City: Zone Routes (Alliance).
-- Made by RouteBuilder from QuestieDB's Mists of Pandaria data (local copy, 2026-10-23; QuestieDB is GPL-3.0).
-- One route for the whole faction. Steps marked << Class or << Race only show for those characters.
-- Steps that depend on quests from other zones hide themselves unless you have those quests.
-- Edit zones/mop/Gilneas City.json and re-run rather than editing this file, or your changes are lost on the next build.

if UnitFactionGroup("player") == "Horde" then return end

RXPGuides.RegisterGuide([[
#mop
<< Alliance
#version 1
#group Zone Routes (Alliance)
#name 1-3 Gilneas City

step
    .goto 202,71.03,55.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marie Allen|r
    .target Marie Allen
    .home >>Set your Hearthstone to Marie Allen's inn
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,59.13,23.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .accept 14078 >>Accept Lockdown!
    .target Prince Liam Greymane
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,54.62,16.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Walden|r
    .turnin 14078 >>Turn in Lockdown!
    .accept 14091 >>Accept Something's Amiss
    .target Lieutenant Walden
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,59.82,22.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14091 >>Turn in Something's Amiss
    .accept 14093 >>Accept All Hell Breaks Loose
    .accept 14098 >>Accept Evacuate the Merchant Square
    .target Prince Liam Greymane
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,59.56,26.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14094 >>Accept Salvage the Supplies
    .target Gwen Armstead
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    #loop
    .goto 202,62.28,26.30,0
    .goto 202,62.28,26.30,40,0
    .goto 202,62.16,29.05,40,0
    .goto 202,61.96,36.90,40,0
    >>Loot the |cRXP_PICK_Supply Crates|r for |cRXP_LOOT_Salvaged Supplies|r
    .complete 14094,1 --Salvaged Supplies (4)
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,59.56,26.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Turn in Salvage the Supplies
    .target Gwen Armstead
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    #loop
    .goto 202,63.02,33.06,0
    .goto 202,63.02,33.06,40,0
    .goto 202,62.74,35.38,40,0
    >>Kill |cRXP_ENEMY_Rampaging Worgens|r
    >>Click the |cRXP_PICK_Merchant Square Door|r
    .complete 14093,1 --Rampaging Worgen (6)
    .complete 14098,1 --Merchant Square Door
    .mob Rampaging Worgen
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,59.82,22.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane|r
    .turnin 14093 >>Turn in All Hell Breaks Loose
    .turnin 14098 >>Turn in Evacuate the Merchant Square
    .accept 14099 >>Accept Royal Orders
    .target Prince Liam Greymane
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    #completewith next
    .hs >>Hearth to Marie Allen's inn. |cRXP_WARN_Walk instead if you are already nearby|r
    .cooldown item,6948,>0,1
step
    .goto 202,70.77,55.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14099 >>Turn in Royal Orders << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .accept 14265 >>Accept Your Instructor << Worgen Warrior
    .target Gwen Armstead
step << Worgen Warrior
    .goto 202,67.55,64.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .turnin 14265 >>Turn in Your Instructor
    .accept 14266 >>Accept Charge
    .target Sergeant Cleese
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seargent Cleese|r
    .train 100 >>Train |T132337:0|t[Charge] << cata
    .target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    >>|cRXP_WARN_She is|r |T132320:0|t[Stealthed]
    .train 2098 >>Train |T132292:0|t[Eviscerate] << cata
    .target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .train 348 >>Train |T135817:0|t[Immolate] << cata
    .target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .train 56641 >>Train |T132213:0|t[Steady Shot] << cata
    .target Huntsman Blake
step << Worgen Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seargent Cleese|r
    .train 100 >>Train |T132337:0|t[Charge] << cata
    .target Sergeant Cleese
step << Worgen Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence|r
    >>|cRXP_WARN_She is|r |T132320:0|t[Stealthed]
    .train 2098 >>Train |T132292:0|t[Eviscerate] << cata
    .target Loren the Fence
step << Worgen Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker|r
    .train 348 >>Train |T135817:0|t[Immolate] << cata
    .target Vitus Darkwalker
step << Worgen Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake|r
    .train 56641 >>Train |T132213:0|t[Steady Shot] << cata
    .target Huntsman Blake
step << Worgen Warrior
    .goto 202,67.36,64.59
    >>Kill |cRXP_ENEMY_Bloodfang Worgen|r
    .complete 14266,1 --Bloodfang Worgen slain (1)
    .mob Bloodfang Worgen
step << Worgen Warrior
    .goto 202,67.55,64.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Cleese|r
    .turnin 14266 >>Turn in Charge
    .accept 14286 >>Accept Safety in Numbers
    .target Sergeant Cleese
step << Worgen Warrior
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14286 >>Turn in Safety in Numbers
    .target King Genn Greymane
step
    .goto 202,70.77,55.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14275 >>Accept Someone's Keeping Track of You << Worgen Hunter
    .accept 14269 >>Accept Someone's Looking for You << Worgen Rogue
    .accept 14278 >>Accept Seek the Sister << Worgen Priest
    .target Gwen Armstead
step << Worgen Priest
    .goto 202,70.42,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .turnin 14278 >>Turn in Seek the Sister
    .accept 14279 >>Accept Learning the Word
    .target Sister Almyra
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .train 2061 >>Train |T135907:0|t[Flash Heal] << cata
    .target Sister Almyra
step << Worgen Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .train 2061 >>Train |T135907:0|t[Flash Heal] << cata
    .target Sister Almyra
step << Worgen Priest
    .goto 202,67.36,64.59
    >>Kill |cRXP_ENEMY_Bloodfang Worgens|r
    .complete 14279,1 --Bloodfang Worgen slain (2)
    .mob Bloodfang Worgen
step << Worgen Priest
    .goto 202,70.42,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sister Almyra|r
    .turnin 14279 >>Turn in Learning the Word
    .accept 14289 >>Accept Safety in Numbers
    .target Sister Almyra
step << Worgen Priest
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14289 >>Turn in Safety in Numbers
    .target King Genn Greymane
step << Worgen Mage
    .goto 202,70.77,55.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14277 >>Accept Arcane Inquiries
    .target Gwen Armstead
step << Worgen Mage
    .goto 202,68.02,64.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .turnin 14277 >>Turn in Arcane Inquiries
    .accept 14281 >>Accept Frost Nova
    .target Myriam Spellwaker
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .train 5143 >>Train |T136096:0|t[Arcane Missiles] << cata
    .target Myriam Spellwaker
step << Worgen Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .train 5143 >>Train |T136096:0|t[Arcane Missiles] << cata
    .target Myriam Spellwaker
step << Worgen Mage
    .goto 202,67.36,64.59
    >>Kill |cRXP_ENEMY_Bloodfang Worgen|r
    .complete 14281,1 --Bloodfang Worgen slain (1)
    .mob Bloodfang Worgen
step << Worgen Mage
    .goto 202,68.02,64.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriam Spellwaker|r
    .turnin 14281 >>Turn in Frost Nova
    .accept 14288 >>Accept Safety in Numbers
    .target Myriam Spellwaker
step << Worgen Mage
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14288 >>Turn in Safety in Numbers
    .target King Genn Greymane
step
    .goto 202,70.77,55.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14273 >>Accept Shady Associates << Worgen Warlock
    .accept 14280 >>Accept The Winds Know Your Name... Apparently << Worgen Druid
    .target Gwen Armstead
step << Worgen Druid
    .goto 202,70.19,65.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .turnin 14280 >>Turn in The Winds Know Your Name... Apparently
    .accept 14283 >>Accept Moonfire
    .target Celestine of the Harvest
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .train 774 >>Train |T136081:0|t[Rejuvenation] << cata
    .target Celestine of the Harvest
step << Worgen Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .train 774 >>Train |T136081:0|t[Rejuvenation] << cata
    .target Celestine of the Harvest
step << Worgen Druid
    .goto 202,67.36,64.59
    >>Kill |cRXP_ENEMY_Bloodfang Worgen|r
    .complete 14283,1 --Bloodfang Worgen slain (1)
    .mob Bloodfang Worgen
step << Worgen Druid
    .goto 202,70.19,65.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest|r
    .turnin 14283 >>Turn in Moonfire
    .accept 14291 >>Accept Safety in Numbers
    .target Celestine of the Harvest
step << Worgen Druid
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14291 >>Turn in Safety in Numbers
    .target King Genn Greymane
step << Worgen Hunter
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14290 >>Turn in Safety in Numbers
    .target King Genn Greymane
    .isOnQuest 14290
step << Worgen Rogue
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14285 >>Turn in Safety in Numbers
    .target King Genn Greymane
    .isOnQuest 14285
step << Worgen Warlock
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14287 >>Turn in Safety in Numbers
    .target King Genn Greymane
    .isOnQuest 14287
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .accept 14157 >>Accept Old Divisions
    .target King Genn Greymane
    .isQuestTurnedIn 14285,14286,14287,14288,14289,14290,14291 --any of: Safety in Numbers, Safety in Numbers, Safety in Numbers, Safety in Numbers, Safety in Numbers, Safety in Numbers, Safety in Numbers
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,65.28,77.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 24930 >>Accept While You're At It
    .target Lord Godfrey
    .isQuestTurnedIn 14285,14286,14287,14288,14289,14290,14291 --any of: Safety in Numbers, Safety in Numbers, Safety in Numbers, Safety in Numbers, Safety in Numbers, Safety in Numbers, Safety in Numbers
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    #loop
    .goto 202,61.95,71.69,0
    .goto 202,61.95,71.69,40,0
    .goto 202,59.91,69.90,40,0
    >>Kill |cRXP_ENEMY_Bloodfang Worgens|r
    .complete 24930,1 --Bloodfang Worgen slain (5)
    .mob Bloodfang Worgen
    .isOnQuest 24930
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,57.93,75.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Broderick|r
    .turnin 14157 >>Turn in Old Divisions
    .target Captain Broderick
    .isOnQuest 14157
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,57.93,75.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Broderick|r
    .accept 28850 >>Accept The Prison Rooftop
    .target Captain Broderick
    .isQuestTurnedIn 14157 --any of: Old Divisions
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,55.22,62.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 28850 >>Turn in The Prison Rooftop
    .target Lord Darius Crowley
    .isOnQuest 28850
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,55.22,62.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .accept 14154 >>Accept By the Skin of His Teeth
    .target Lord Darius Crowley
    .isQuestTurnedIn 28850 --any of: The Prison Rooftop
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,55.10,62.70
    >>Survive while holding back the worgen for 2 minutes
    .complete 14154,1 --Survive while holding back the worgen for 2 minutes
    .isOnQuest 14154
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,55.22,62.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14154 >>Turn in By the Skin of His Teeth
    .target Lord Darius Crowley
    .isOnQuest 14154
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,55.22,62.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .accept 26129 >>Accept Brothers In Arms
    .target Lord Darius Crowley
    .isQuestTurnedIn 14154 --any of: By the Skin of His Teeth
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,65.28,77.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 24930 >>Turn in While You're At It
    .target Lord Godfrey
    .isOnQuest 24930
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 26129 >>Turn in Brothers In Arms
    .target King Genn Greymane
    .isOnQuest 26129
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,65.81,77.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .accept 14159 >>Accept The Rebel Lord's Arsenal
    .target King Genn Greymane
    .isQuestTurnedIn 24930 --While You're At It
    .isQuestTurnedIn 26129 --Brothers In Arms
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,56.77,85.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josiah Avery|r
    .turnin 14159 >>Turn in The Rebel Lord's Arsenal
    .target Josiah Avery
    .isOnQuest 14159
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,56.87,81.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 14204 >>Accept From the Shadows
    .target Lorna Crowley
    .isQuestTurnedIn 14159 --any of: The Rebel Lord's Arsenal
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,50.30,83.45
    >>Kill |cRXP_ENEMY_Bloodfang Lurkers|r
    .complete 14204,1 --Bloodfang Lurker slain (6)
    .mob Bloodfang Lurker
    .isOnQuest 14204
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,56.87,81.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14204 >>Turn in From the Shadows
    .target Lorna Crowley
    .isOnQuest 14204
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,56.87,81.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 14214 >>Accept Message to Greymane
    .target Lorna Crowley
    .isQuestTurnedIn 14204 --any of: From the Shadows
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,59.20,83.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14214 >>Turn in Message to Greymane
    .target King Genn Greymane
    .isOnQuest 14214
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,59.20,83.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .accept 14293 >>Accept Save Krennan Aranas
    .target King Genn Greymane
    .isQuestTurnedIn 14214 --any of: Message to Greymane
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,66.16,61.81
    >>Rescue Krennan Aranas.
    .complete 14293,1 --Krennan Aranas
    .target Krennan Aranas
    .isOnQuest 14293
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,55.60,80.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14293 >>Turn in Save Krennan Aranas
    .target Lord Godfrey
    .isOnQuest 14293
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,55.60,80.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 14294 >>Accept Time to Regroup
    .target Lord Godfrey
    .isQuestTurnedIn 14293 --any of: Save Krennan Aranas
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,30.37,73.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane|r
    .turnin 14294 >>Turn in Time to Regroup
    .target King Genn Greymane
    .isOnQuest 14294
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,31.11,72.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .accept 14212 >>Accept Sacrifices
    .target Lord Darius Crowley
    .isQuestTurnedIn 14294 --any of: Time to Regroup
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    #loop
    .goto 202,32.81,44.98,0
    .goto 202,32.81,44.98,40,0
    .goto 202,34.49,43.31,40,0
    .goto 202,36.48,39.44,40,0
    >>Interact with |cRXP_FRIENDLY_Bloodfang Stalkers|r
    .complete 14212,1 --Bloodfang Stalker (30)
    .target Bloodfang Stalker
    .isOnQuest 14212
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,40.55,39.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .turnin 14212 >>Turn in Sacrifices
    .target Tobias Mistmantle
    .isOnQuest 14212
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,40.55,39.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .accept 14218 >>Accept By Blood and Ash
    .target Tobias Mistmantle
    .isQuestTurnedIn 14212 --any of: Sacrifices
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    #loop
    .goto 202,38.03,36.12,0
    .goto 202,38.03,36.12,40,0
    .goto 202,35.64,31.39,40,0
    .goto 202,30.92,38.38,40,0
    .goto 202,34.17,44.09,40,0
    >>Kill |cRXP_ENEMY_Bloodfang Stalkers|r
    .complete 14218,1 --Bloodfang Stalker (80)
    .mob Bloodfang Stalker
    .isOnQuest 14218
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,40.55,39.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .turnin 14218 >>Turn in By Blood and Ash
    .target Tobias Mistmantle
    .isOnQuest 14218
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,40.55,39.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle|r
    .accept 14221 >>Accept Never Surrender, Sometimes Retreat
    .target Tobias Mistmantle
    .isQuestTurnedIn 14218 --any of: By Blood and Ash
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,48.90,52.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14221 >>Turn in Never Surrender, Sometimes Retreat
    .target Lord Darius Crowley
    .isOnQuest 14221
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,48.90,52.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .accept 14222 >>Accept Last Stand
    .target Lord Darius Crowley
    .isQuestTurnedIn 14221 --any of: Never Surrender, Sometimes Retreat
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    #loop
    .goto 202,47.83,47.18,0
    .goto 202,47.83,47.18,40,0
    .goto 202,44.68,47.90,40,0
    >>Kill |cRXP_ENEMY_Frenzied Stalkers|r
    .complete 14222,1 --Frenzied Stalker slain (8)
    .mob Frenzied Stalker
    .isOnQuest 14222
step << Worgen Warrior/Worgen Hunter/Worgen Rogue/Worgen Priest/Worgen Mage/Worgen Warlock/Worgen Druid
    .goto 202,48.90,52.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14222 >>Turn in Last Stand
    .target Lord Darius Crowley
    .isOnQuest 14222
step
    +|cRXP_WARN_End of the Gilneas City route.|r Quests still in your log lead on from here; pick your next zone by them
    >>|cRXP_FRIENDLY_Gilneas|r: Someone's Looking for You << Worgen Rogue
    >>|cRXP_FRIENDLY_Gilneas|r: Shady Associates << Worgen Warlock
    >>|cRXP_FRIENDLY_Gilneas|r: Someone's Keeping Track of You << Worgen Hunter
]])
